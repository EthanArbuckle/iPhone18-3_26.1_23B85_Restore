void PPUtils::applyTranslation(const float *__X, float32x2_t *a2, float32x2_t *a3, float *a4)
{
  if (cblas_sasum(3, __X, 1) <= 0.01)
  {
    *a4 = 1.0;
    v14 = *a2;
    a3[1].i32[0] = a2[1].i32[0];
    *a3 = v14;
    return;
  }

  v8 = a2[1].f32[0] + a2[1].f32[0];
  v9 = vsub_f32(vadd_f32(*a2, *a2), *__X);
  v10 = __X[2];
  v11 = v8 - v10;
  v12 = fmaxf(fabsf(v9.f32[0]), fmaxf(fabsf(v9.f32[1]), vabds_f32(v8, v10)));
  if (v12 > 1.8447e19)
  {
    v13 = 360710144;
LABEL_7:
    v15 = *&v13;
    goto LABEL_8;
  }

  v15 = 1.0;
  if (v12 < 5.421e-20)
  {
    v13 = 1769996288;
    goto LABEL_7;
  }

LABEL_8:
  v16 = 1.0 / ((sqrtf((((v9.f32[1] * v15) * (v9.f32[1] * v15)) + ((v9.f32[0] * v15) * (v9.f32[0] * v15))) + ((v11 * v15) * (v11 * v15))) / v15) + 0.00001);
  *a3 = vmul_n_f32(v9, v16);
  a3[1].f32[0] = v11 * v16;
  v17 = v16 + v16;
  if ((v16 + v16) > 4.0)
  {
    v17 = 4.0;
  }

  *a4 = v17;
}

void PPUtils::applyRotation(const float *__X, uint64_t *a2, uint64_t a3)
{
  if (cblas_sasum(3, __X, 1) <= 0.01)
  {
    v11 = *a2;
    *(a3 + 8) = *(a2 + 2);
    *a3 = v11;
  }

  else
  {
    v6 = __X[1] * 0.017453;
    v7 = __X[2] * 0.017453;
    v8 = __sincosf_stret(*__X * 0.017453);
    v9 = __sincosf_stret(v6);
    v10 = __sincosf_stret(v7);
    __B[0] = v8.__cosval;
    __B[1] = v8.__sinval;
    __B[2] = 0.0;
    __B[3] = -v8.__sinval;
    __B[4] = v8.__cosval;
    v27 = xmmword_1DE097CE0;
    __A[0] = v9.__cosval;
    __A[1] = 0.0;
    __A[2] = -v9.__sinval;
    v21 = 0x3F80000000000000;
    v22 = 0;
    sinval = v9.__sinval;
    v24 = 0;
    cosval = v9.__cosval;
    v14 = xmmword_1DE09BBD0;
    v15 = v10.__cosval;
    v16 = v10.__sinval;
    v17 = 0;
    v18 = -v10.__sinval;
    v19 = v10.__cosval;
    vDSP_mmul(__A, 1, __B, 1, __C, 1, 3uLL, 3uLL, 3uLL);
    vDSP_mmul(&v14, 1, __C, 1, v12, 1, 3uLL, 3uLL, 3uLL);
    vDSP_mmul(v12, 1, a2, 1, a3, 1, 3uLL, 1uLL, 3uLL);
  }
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

void sub_1DDC1D0F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *PPUtils::IterativeGridScanningIndices::findNearestGridPointsSpherical(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  PPUtils::ContiguousArray2D<float>::ContiguousArray2D(v17, 3u, a2);
  PPUtils::IterativeGridScanningIndices::convertSphericalToUnitCartesianCoordinates(*(a1 + 32), *(a1 + 40), a2, v17[4], v17[5]);
  PPUtils::ContiguousArray2D<float>::ContiguousArray2D(v16, 3u, a4);
  PPUtils::IterativeGridScanningIndices::convertSphericalToUnitCartesianCoordinates(*(a3 + 32), *(a3 + 40), a4, v16[4], v16[5]);
  if (a4)
  {
    v10 = 0;
    do
    {
      if (a2)
      {
        v11 = 0;
        v12 = 0;
        v13 = 1.1755e-38;
        do
        {
          __C = 0.0;
          vDSP_dotpr((v17[1] + v11), a2, (v16[1] + 4 * v10), a4, &__C, 3uLL);
          v14 = __C;
          if (__C > v13)
          {
            *(a5 + 4 * v10) = v12;
            v13 = v14;
          }

          ++v12;
          v11 += 4;
        }

        while (a2 != v12);
      }

      ++v10;
    }

    while (v10 != a4);
  }

  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v16);
  return PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v17);
}

void sub_1DDC1D238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(va);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(va1);
  _Unwind_Resume(a1);
}

uint64_t PPUtils::ContiguousArray2D<std::complex<float>>::ContiguousArray2D(uint64_t a1, unsigned int a2, int a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  PPUtils::ContiguousArray2D<std::complex<float>>::resize(a1, a2, a3);
  return a1;
}

void sub_1DDC1D29C(_Unwind_Exception *exception_object)
{
  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PPUtils::ContiguousArray3D<std::complex<float>>::operator[](void *a1, unsigned int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[6] - a1[5]) >> 3) <= a2)
  {
    __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 120, "inIdx<mPtrs.size()");
  }

  return *(a1[8] + 8 * a2);
}

{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[6] - a1[5]) >> 3) <= a2)
  {
    __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 124, "inIdx<mPtrs.size()");
  }

  return *(a1[8] + 8 * a2);
}

void PPUtils::ContiguousArray2D<std::complex<float>>::resize(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  v6 = a3 * a2;
  std::vector<std::complex<float>>::resize((a1 + 8), a3 * a2);
  std::vector<std::complex<float>>::shrink_to_fit(a1 + 8);
  std::vector<std::complex<float> *,std::allocator<std::complex<float> *>>::resize((a1 + 32), a2);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48) - v8;
  if (v9 > (v7 - v8))
  {
    v10 = (v7 - v8) >> 3;
    if (v7 != v8)
    {
      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100]((v7 - v8) >> 3);
    }

    v11 = 0;
    if (v9 >> 3)
    {
      v12 = 8 * v10;
      v13 = *(a1 + 40) - v8;
      v14 = 8 * v10 - v13;
      memcpy((v12 - v13), v8, v13);
      v11 = *(a1 + 32);
      *(a1 + 32) = v14;
      *(a1 + 40) = v12;
      *(a1 + 48) = 0;
    }

    if (v11)
    {
      operator delete(v11);
    }
  }

  if (v6)
  {
    v15 = 0;
    v16 = 0;
    if (a2 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2;
    }

    v18 = 8 * v17;
    do
    {
      *(*(a1 + 32) + v16) = *(a1 + 8) + 8 * v15;
      v16 += 8;
      v15 += a3;
    }

    while (v18 != v16);
  }
}

void sub_1DDC1D494(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC1D444);
}

void std::vector<std::complex<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void std::vector<std::complex<float>>::shrink_to_fit(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = *(a1 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<std::complex<float> *,std::allocator<std::complex<float> *>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::exp[abi:ne200100]<float>(float a1, float a2)
{
  if (a2 == 0.0)
  {
    expf(a1);
    return;
  }

  if (fabsf(a1) == INFINITY)
  {
    if (a1 >= 0.0)
    {
      if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        return;
      }
    }

    else if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      a2 = 1.0;
    }
  }

  v2 = a2;
  expf(a1);
  __sincosf_stret(v2);
}

void PPUtils::sortWithIndices<float>::apply(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  qsort(0, 0, 8uLL, PPUtils::sortWithIndices<float>::qsortAscendingHelper);
}

void sub_1DDC1DA24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PPUtils::ContiguousArray3D<float>::ContiguousArray3D(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  PPUtils::ContiguousArray3D<float>::resize(a1, a2, a3);
  return a1;
}

void sub_1DDC1DA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[8];
  if (v5)
  {
    v2[9] = v5;
    operator delete(v5);
  }

  std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *v3;
  if (*v3)
  {
    v2[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t PPUtils::ContiguousArray3D<std::complex<float>>::ContiguousArray3D(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  PPUtils::ContiguousArray3D<std::complex<float>>::resize(a1, a2, a3, a4);
  return a1;
}

void sub_1DDC1DB2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[8];
  if (v5)
  {
    v2[9] = v5;
    operator delete(v5);
  }

  std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *v3;
  if (*v3)
  {
    v2[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void PPUtils::FractionalDelayForFIRfilters::~FractionalDelayForFIRfilters(vDSP_DFT_Interleaved_SetupStruct **this)
{
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](this + 18, 0);
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](this + 17, 0);
  v2 = this[13];
  if (v2)
  {
    this[14] = v2;
    operator delete(v2);
  }

  v3 = this[10];
  if (v3)
  {
    this[11] = v3;
    operator delete(v3);
  }

  v4 = this[7];
  if (v4)
  {
    this[8] = v4;
    operator delete(v4);
  }

  v5 = this[4];
  if (v5)
  {
    this[5] = v5;
    operator delete(v5);
  }

  v6 = this[1];
  if (v6)
  {
    this[2] = v6;
    operator delete(v6);
  }
}

uint64_t PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 40);
  std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
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

void std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](vDSP_DFT_Interleaved_SetupStruct **a1, vDSP_DFT_Interleaved_SetupStruct *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    vDSP_DFT_Interleaved_DestroySetup(v3);
  }
}

void PPUtils::ContiguousArray3D<std::complex<float>>::resize(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  v7 = a3 * a2 * a4;
  std::vector<std::complex<float>>::resize((a1 + 16), v7);
  std::vector<std::complex<float>>::shrink_to_fit(a1 + 16);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = 0xAAAAAAAAAAAAAAABLL * (&v9[-v8] >> 3);
  v11 = a2 - v10;
  if (a2 > v10)
  {
    v12 = *(a1 + 56);
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v9) >> 3) < v11)
    {
      v53 = a1 + 40;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= a2)
      {
        v14 = a2;
      }

      if (v13 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      std::allocator<std::vector<float *>>::allocate_at_least[abi:ne200100](v15);
    }

    bzero(*(a1 + 48), 24 * ((24 * v11 - 24) / 0x18) + 24);
    v16 = &v9[24 * ((24 * v11 - 24) / 0x18) + 24];
LABEL_17:
    *(a1 + 48) = v16;
    goto LABEL_19;
  }

  if (a2 < v10)
  {
    v16 = (v8 + 24 * a2);
    if (v9 != v16)
    {
      v17 = *(a1 + 48);
      do
      {
        v19 = *(v17 - 3);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v9 - 2) = v18;
          operator delete(v18);
        }

        v9 = v17;
      }

      while (v17 != v16);
    }

    goto LABEL_17;
  }

  v16 = *(a1 + 48);
LABEL_19:
  v20 = *(a1 + 40);
  v21 = *(a1 + 56) - v20;
  if (v21 > (v16 - v20))
  {
    v22 = (v16 - v20) >> 3;
    v53 = a1 + 40;
    if (v16 != v20)
    {
      std::allocator<std::vector<float *>>::allocate_at_least[abi:ne200100](0xAAAAAAAAAAAAAAABLL * v22);
    }

    v23 = 8 * v22;
    v49 = 0;
    v50 = 8 * v22;
    v51 = 8 * v22;
    v52 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v21 >> 3))
    {
      v24 = *(a1 + 48) - v20;
      v25 = v23 - v24;
      memcpy((v23 - v24), v20, v24);
      v26 = *(a1 + 40);
      *(a1 + 40) = v25;
      *(a1 + 48) = v23;
      v27 = *(a1 + 56);
      *(a1 + 56) = 0;
      v51 = v26;
      v52 = v27;
      v49 = v26;
      v50 = v26;
    }

    std::__split_buffer<std::vector<float *>>::~__split_buffer(&v49);
  }

  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v30 = &v29[-v28] >> 3;
  if (a2 <= v30)
  {
    if (a2 >= v30)
    {
      goto LABEL_37;
    }

    v29 = (v28 + 8 * a2);
  }

  else
  {
    v31 = a2 - v30;
    v32 = *(a1 + 80);
    if (v31 > (v32 - v29) >> 3)
    {
      v33 = v32 - v28;
      v34 = v33 >> 2;
      if (v33 >> 2 <= a2)
      {
        v34 = a2;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v34;
      }

      std::allocator<float **>::allocate_at_least[abi:ne200100](v35);
    }

    bzero(*(a1 + 72), 8 * v31);
    v29 += 8 * v31;
  }

  *(a1 + 72) = v29;
LABEL_37:
  v36 = *(a1 + 64);
  v37 = *(a1 + 80) - v36;
  v38 = v29 - v36;
  if (v37 > (v29 - v36))
  {
    v39 = v38 >> 3;
    if (v29 != v36)
    {
      std::allocator<float **>::allocate_at_least[abi:ne200100](v38 >> 3);
    }

    v40 = 0;
    if (v37 >> 3)
    {
      v41 = *(a1 + 72) - v36;
      v42 = (8 * v39 - v41);
      memcpy(v42, v36, v41);
      v40 = *(a1 + 64);
      *(a1 + 64) = v42;
      *(a1 + 72) = 8 * v39;
      *(a1 + 80) = 0;
    }

    if (v40)
    {
      operator delete(v40);
    }
  }

  if (v7)
  {
    v43 = 0;
    v44 = 0;
    if (a2 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = a2;
    }

    do
    {
      std::vector<std::complex<float> *,std::allocator<std::complex<float> *>>::resize((*(a1 + 40) + 24 * v44), a3);
      *(*(a1 + 64) + 8 * v44) = *(*(a1 + 40) + 24 * v44);
      if (a3)
      {
        v46 = 0;
        v47 = v43;
        do
        {
          *(*(*(a1 + 40) + 24 * v44) + v46) = *(a1 + 16) + 8 * v47;
          v46 += 8;
          v47 += a4;
        }

        while (8 * a3 != v46);
      }

      ++v44;
      v43 += a4 * a3;
    }

    while (v44 != v45);
  }
}

void sub_1DDC1E174(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC1E0C0);
}

void sub_1DDC1E184(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC1DF88);
}

void PPUtils::ContiguousArray3D<float>::resize(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = 2;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  v5 = 2 * a2 * a3;
  std::vector<float>::resize((a1 + 16), v5);
  std::vector<float>::shrink_to_fit((a1 + 16));
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = (a1 + 40);
  v9 = &v7[-v6];
  v10 = 0xAAAAAAAAAAAAAAABLL * (&v7[-v6] >> 3);
  if (v10 > 1)
  {
    if (v9 == 48)
    {
      v16 = *(a1 + 48);
      goto LABEL_18;
    }

    v16 = (v6 + 48);
    if (v7 != (v6 + 48))
    {
      v18 = *(a1 + 48);
      do
      {
        v20 = *(v18 - 3);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v7 - 2) = v19;
          operator delete(v19);
        }

        v7 = v18;
      }

      while (v18 != v16);
    }
  }

  else
  {
    v11 = 2 - v10;
    v12 = *(a1 + 56);
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v7) >> 3) < v11)
    {
      v47 = a1 + 40;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v6) >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= 2)
      {
        v14 = 2;
      }

      if (v13 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      std::allocator<std::vector<float *>>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = 24 * ((24 - v9) / 0x18uLL) + 24;
    bzero(*(a1 + 48), v17);
    v16 = &v7[v17];
  }

  *(a1 + 48) = v16;
LABEL_18:
  v21 = *(a1 + 40);
  v22 = *(a1 + 56) - v21;
  if (v22 > (v16 - v21))
  {
    v23 = (v16 - v21) >> 3;
    v47 = a1 + 40;
    if (v16 != v21)
    {
      std::allocator<std::vector<float *>>::allocate_at_least[abi:ne200100](0xAAAAAAAAAAAAAAABLL * v23);
    }

    v24 = 8 * v23;
    v43 = 0;
    v44 = 8 * v23;
    v45 = 8 * v23;
    v46 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v22 >> 3))
    {
      v25 = *(a1 + 48) - v21;
      v26 = v24 - v25;
      memcpy((v24 - v25), v21, v25);
      v27 = *(a1 + 40);
      *(a1 + 40) = v26;
      *(a1 + 48) = v24;
      v28 = *(a1 + 56);
      *(a1 + 56) = 0;
      v45 = v27;
      v46 = v28;
      v43 = v27;
      v44 = v27;
    }

    std::__split_buffer<std::vector<float *>>::~__split_buffer(&v43);
  }

  std::vector<float **>::resize((a1 + 64), 2uLL);
  v29 = *(a1 + 72);
  v30 = *(a1 + 64);
  v31 = *(a1 + 80) - v30;
  if (v31 > (v29 - v30))
  {
    v32 = (v29 - v30) >> 3;
    if (v29 != v30)
    {
      std::allocator<float **>::allocate_at_least[abi:ne200100]((v29 - v30) >> 3);
    }

    v33 = 0;
    if (v31 >> 3)
    {
      v34 = 8 * v32;
      v35 = *(a1 + 72) - v30;
      v36 = 8 * v32 - v35;
      memcpy((v34 - v35), v30, v35);
      v33 = *(a1 + 64);
      *(a1 + 64) = v36;
      *(a1 + 72) = v34;
      *(a1 + 80) = 0;
    }

    if (v33)
    {
      operator delete(v33);
    }
  }

  if (v5)
  {
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = v37;
      std::vector<float *>::resize((*v8 + 24 * v38), a2);
      *(*(a1 + 64) + 8 * v38) = *(*v8 + 24 * v38);
      if (a2)
      {
        v40 = 0;
        v41 = a3 * a2 * v38;
        do
        {
          *(*(*v8 + 24 * v38) + v40) = *(a1 + 16) + 4 * v41;
          v40 += 8;
          v41 += a3;
        }

        while (8 * a2 != v40);
      }

      v37 = 1;
      v38 = 1;
    }

    while ((v39 & 1) == 0);
  }
}

void sub_1DDC1E544(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC1E498);
}

void sub_1DDC1E554(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC1E40CLL);
}

void std::vector<float **>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<float **>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void std::allocator<float **>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<std::vector<float *>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t PPUtils::sortWithIndices<float>::qsortAscendingHelper(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

PPUtils::AliasingRobustComplexValuedFilterbank *PPUtils::AliasingRobustComplexValuedFilterbank::AliasingRobustComplexValuedFilterbank(PPUtils::AliasingRobustComplexValuedFilterbank *this, int a2, int a3, int a4, int a5, int a6)
{
  *(this + 1) = 0u;
  v9 = (this + 16);
  *(this + 56) = 0u;
  v10 = (this + 56);
  *(this + 2) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  if (a6)
  {
    HIDWORD(v12) = a4 - 32;
    LODWORD(v12) = a4 - 32;
    v11 = v12 >> 5;
    if (v11 >= 8 || ((0x8Bu >> v11) & 1) == 0)
    {
      __assert_rtn("AliasingRobustComplexValuedFilterbank", "AliasingRobustComplexValuedFilterbank.cpp", 172, "inEnableHybridMode ? (inHopSize==32 || inHopSize==64 || inHopSize==128 || inHopSize==256) : true");
    }

    v13 = 5;
  }

  else
  {
    v13 = 1;
  }

  *this = a2;
  *(this + 1) = a3;
  v14 = (v13 + a4);
  *(this + 2) = a4;
  *(this + 3) = v14;
  std::vector<float>::resize(this + 2, v14);
  v15 = *(this + 3);
  if (v15)
  {
    v16 = 0;
    while (a6)
    {
      if (v16)
      {
        v17 = *v9;
        if (v16 > 8)
        {
          v18 = (v16 - 4);
        }

        else
        {
          v18 = (v16 * 0.5) + 0.25;
        }

        v19 = v18 / (v15 - 5);
        goto LABEL_16;
      }

      **v9 = 0;
LABEL_17:
      if (v15 == ++v16)
      {
        goto LABEL_18;
      }
    }

    v19 = v16 / (v15 - 1);
    v17 = *v9;
LABEL_16:
    *&v17[v16] = v19;
    goto LABEL_17;
  }

LABEL_18:
  if (*this)
  {
    afSTFTinit(v9 + 3, *(this + 2), *this, *(this + 1), a5, a6);
    v20 = *(this + 1);
    v21 = *this <= v20 ? v20 : *this;
    *(this + 12) = v21;
    std::vector<DSPSplitComplex>::resize(v10, v21);
    std::vector<float>::resize(v9 + 8, (2 * *(this + 12) * *(this + 3)));
    v22 = *(this + 12);
    if (v22)
    {
      v23 = 0;
      v24 = *(this + 3);
      v25 = *(this + 10);
      v26 = (*(this + 7) + 8);
      do
      {
        *(v26 - 1) = v25 + 4 * v23;
        *v26 = v25 + 4 * (v24 + v23);
        v26 += 2;
        v23 += 2 * v24;
        --v22;
      }

      while (v22);
    }
  }

  v27 = *(this + 2);
  v28 = 2 * v27;
  v29 = 3 * v27;
  if (a6)
  {
    v30 = 3 * v27;
  }

  else
  {
    v30 = 0;
  }

  if (a5)
  {
    v29 = -v27;
  }

  v31 = v29 + 2 * v27 + v30;
  if (a5)
  {
    v28 = *(this + 2);
  }

  *(this + 26) = v31;
  *(this + 27) = v28 + 2 * v27;
  return this;
}

void sub_1DDC1E980(_Unwind_Exception *exception_object)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    v1[11] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[8] = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    v1[3] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void PPUtils::AliasingRobustComplexValuedFilterbank::applyForwardTransform(unsigned int *a1, void *a2, unsigned int a3, uint64_t a4)
{
  v4 = *a1;
  if (!*a1)
  {
    __assert_rtn("applyForwardTransform", "AliasingRobustComplexValuedFilterbank.cpp", 231, "mNumInputChannels>0");
  }

  v6 = a1[2];
  v7 = a3 / v6;
  if (v7 * v6 != a3)
  {
    __assert_rtn("applyForwardTransform", "AliasingRobustComplexValuedFilterbank.cpp", 232, "inBlockSize % mHopSize == 0");
  }

  if (v4 * a3 != ((a2[2] - a2[1]) >> 2))
  {
    __assert_rtn("applyForwardTransform", "AliasingRobustComplexValuedFilterbank.cpp", 233, "inBufferTimeDomain.size() == mNumInputChannels*inBlockSize");
  }

  if (v4 * v7 * a1[3] != ((*(a4 + 24) - *(a4 + 16)) >> 3))
  {
    __assert_rtn("applyForwardTransform", "AliasingRobustComplexValuedFilterbank.cpp", 234, "outBufferTimeFrequencyDomain.size() == mNumBands*mNumInputChannels*kNumHops");
  }

  if (v6 <= a3)
  {
    v10 = 0;
    do
    {
      afSTFTforwardWithFrameOffset(*(a1 + 5), a2[4], a1[2] * v10, *(a1 + 7));
      LODWORD(v11) = *a1;
      if (*a1)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          vDSP_ztoc((*(a1 + 7) + v12), 1, (*(a4 + 16) + 8 * (v7 * v13++) + 8 * v10), (2 * v7 * v11), a1[3]);
          v11 = *a1;
          v12 += 16;
        }

        while (v13 < v11);
      }

      ++v10;
    }

    while (v10 < v7);
  }
}

void PPUtils::AliasingRobustComplexValuedFilterbank::~AliasingRobustComplexValuedFilterbank(int **this)
{
  if (*this || *(this + 1))
  {
    afSTFTfree(this[5]);
  }

  v2 = this[10];
  if (v2)
  {
    this[11] = v2;
    operator delete(v2);
  }

  v3 = this[7];
  if (v3)
  {
    this[8] = v3;
    operator delete(v3);
  }

  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }
}

void std::vector<DSPSplitComplex>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<DSPSplitComplex>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void std::allocator<DSPSplitComplex>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void PPUtils::convertFIRsToTFs(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5)
{
  if (2 * a2 * a3 == ((*(a1 + 24) - *(a1 + 16)) >> 2))
  {
    if (2 * a2 * ((a4 >> 1) + 1) == ((*(a5 + 24) - *(a5 + 16)) >> 3))
    {
      PPUtils::RealToComplexDFT::RealToComplexDFT(v5, a4);
    }

    __assert_rtn("convertFIRsToTFs", "AliasingRobustComplexValuedFilterbank.cpp", 94, "outTFs.size()==kNumBins*inNumChannels*inNumFIRs");
  }

  __assert_rtn("convertFIRsToTFs", "AliasingRobustComplexValuedFilterbank.cpp", 93, "inFIRs.size()==inNumChannels*inNumFIRs*inFilterLength");
}

void sub_1DDC1EF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, vDSP_DFT_Interleaved_SetupStruct *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  PPUtils::RealToComplexDFT::~RealToComplexDFT(&a17);
  _Unwind_Resume(a1);
}

void PPUtils::RealToComplexDFT::RealToComplexDFT(PPUtils::RealToComplexDFT *this, unsigned int a2)
{
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = &PPUtils::kSupportedRealToComplexDFTSizes;
  v3 = 35;
  do
  {
    v4 = v3 >> 1;
    v5 = &v2[4 * (v3 >> 1)];
    v7 = *v5;
    v6 = v5 + 4;
    v3 += ~(v3 >> 1);
    if (v7 < a2)
    {
      v2 = v6;
    }

    else
    {
      v3 = v4;
    }
  }

  while (v3);
  if (v2 != &PPUtils::kMinusOne && *v2 <= a2)
  {
    *this = a2;
    *(this + 1) = (a2 >> 1) + 1;
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](this + 8, (a2 >> 1) + 1);
  }

  __assert_rtn("RealToComplexDFT", "AliasingRobustComplexValuedFilterbank.h", 225, "std::binary_search(kSupportedRealToComplexDFTSizes.begin(), kSupportedRealToComplexDFTSizes.end(), inDFTSize)");
}

void sub_1DDC1F0C8(_Unwind_Exception *a1)
{
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100]((v1 + 40), 0);
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](v2, 0);
  v4 = *(v1 + 8);
  if (v4)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::complex<float>>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](a2);
}

void sub_1DDC1F15C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void PPUtils::RealToComplexDFT::~RealToComplexDFT(vDSP_DFT_Interleaved_SetupStruct **this)
{
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](this + 4, 0);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

float PPUtils::RealToComplexDFT::forward(uint64_t a1, const DSPComplex *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    vDSP_DFT_Interleaved_Execute(v5, a2, *(a1 + 8));
    v9 = 1056964608;
    MEMORY[0x1E12BE940](*(a1 + 8), 1, &v9, a4, 1, (2 * *(a1 + 4)));
    result = *(a4 + 4);
    v8 = a4 + 8 * (*(a1 + 4) - 1);
    *v8 = result;
    *(v8 + 4) = 0;
    *(a4 + 4) = 0;
  }

  return result;
}

void PPUtils::findERBindices(float *a1, unint64_t a2, unsigned int a3, std::vector<unsigned int> *a4, float a5)
{
  if (!a3 || a2 < a3)
  {
    __assert_rtn("findERBindices", "AliasingRobustComplexValuedFilterbank.cpp", 133, "inNumBands>0 && inNumBands<=inNormalisedCentreFreqs.size()");
  }

  std::vector<float>::vector[abi:ne200100](&__src, 1uLL);
  *__src = (*a1 * a5) * 0.5;
  std::vector<unsigned int>::resize(a4, 1uLL);
  *a4->__begin_ = 0;
  v8 = __src;
  v9 = *__src;
  if (*__src < 16000.0)
  {
    v10 = 0;
    LODWORD(v11) = 0;
    do
    {
      v12 = v9 + (((v9 * 0.108) * 1.13) + 24.7);
      v13 = v51;
      if (v51 >= v52)
      {
        v15 = v51 - v8;
        v16 = (v51 - v8) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v18 = v52 - v8;
        if ((v52 - v8) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
        v20 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v20 = v17;
        }

        if (v20)
        {
          std::allocator<float>::allocate_at_least[abi:ne200100](&__src, v20);
        }

        *(4 * v16) = v12;
        v14 = 4 * v16 + 4;
        memcpy(0, v8, v15);
        v21 = __src;
        __src = 0;
        v51 = v14;
        v52 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v51 = v12;
        v14 = (v13 + 1);
      }

      v51 = v14;
      std::vector<float>::vector[abi:ne200100](__A, a3);
      v22 = 0;
      v11 = (v11 + 1);
      v23 = __src;
      v24 = __A[0];
      do
      {
        v24[v22] = fabsf(v23[v11] + ((a1[v22] * a5) * -0.5));
        ++v22;
      }

      while (a3 != v22);
      __C = 0.0;
      __I = 0;
      vDSP_minvi(v24, 1, &__C, &__I, a3);
      end = a4->__end_;
      value = a4->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a4->__begin_;
        v29 = end - a4->__begin_;
        v30 = v29 >> 2;
        v31 = (v29 >> 2) + 1;
        if (v31 >> 62)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v32 = value - begin;
        if (v32 >> 1 > v31)
        {
          v31 = v32 >> 1;
        }

        v19 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
        v33 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v33 = v31;
        }

        if (v33)
        {
          std::allocator<float>::allocate_at_least[abi:ne200100](a4, v33);
        }

        *(4 * v30) = __I;
        v27 = 4 * v30 + 4;
        memcpy(0, begin, v29);
        v34 = a4->__begin_;
        a4->__begin_ = 0;
        a4->__end_ = v27;
        a4->__end_cap_.__value_ = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *end = __I;
        v27 = (end + 4);
      }

      a4->__end_ = v27;
      v35 = a4->__begin_[v11];
      if (v35 == a4->__begin_[v10])
      {
        a4->__begin_[v11] = ++v35;
      }

      v8 = __src;
      *(__src + v11) = (a1[v35] * a5) * 0.5;
      if (__A[0])
      {
        __A[1] = __A[0];
        operator delete(__A[0]);
        v8 = __src;
      }

      v9 = *&v8[4 * v11];
      v10 = v11;
    }

    while (v9 < 16000.0);
  }

  v37 = a4->__end_;
  v36 = a4->__end_cap_.__value_;
  if (v37 >= v36)
  {
    v39 = a4->__begin_;
    v40 = v37 - a4->__begin_;
    v41 = (v40 >> 2) + 1;
    if (v41 >> 62)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v42 = v36 - v39;
    if (v42 >> 1 > v41)
    {
      v41 = v42 >> 1;
    }

    v19 = v42 >= 0x7FFFFFFFFFFFFFFCLL;
    v43 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v43 = v41;
    }

    if (v43)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a4, v43);
    }

    v44 = (4 * (v40 >> 2));
    *v44 = a3;
    v38 = v44 + 1;
    memcpy(0, v39, v40);
    v45 = a4->__begin_;
    a4->__begin_ = 0;
    a4->__end_ = v38;
    a4->__end_cap_.__value_ = 0;
    if (v45)
    {
      operator delete(v45);
    }
  }

  else
  {
    *v37 = a3;
    v38 = (v37 + 4);
  }

  a4->__end_ = v38;
  if (__src)
  {
    v51 = __src;
    operator delete(__src);
  }
}

void sub_1DDC1F65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<float>::allocate_at_least[abi:ne200100](this, v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void *std::unique_ptr<PPUtils::MoorePenrosePseudoInverseReal::Data>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[17];
    if (v3)
    {
      v2[18] = v3;
      operator delete(v3);
    }

    v4 = v2[14];
    if (v4)
    {
      v2[15] = v4;
      operator delete(v4);
    }

    v5 = v2[11];
    if (v5)
    {
      v2[12] = v5;
      operator delete(v5);
    }

    v6 = v2[8];
    if (v6)
    {
      v2[9] = v6;
      operator delete(v6);
    }

    v7 = v2[5];
    if (v7)
    {
      v2[6] = v7;
      operator delete(v7);
    }

    v8 = v2[2];
    if (v8)
    {
      v2[3] = v8;
      operator delete(v8);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t PPUtils::MoorePenrosePseudoInverseReal::compute(float ***this, const float *__A, int a3, int a4, float *a5)
{
  v5 = *this;
  if (**this < a3)
  {
    __assert_rtn("compute", "LinearAlgebraRoutines.cpp", 73, "inDim1<=pData->maxDim1");
  }

  if (*(v5 + 1) < a4)
  {
    __assert_rtn("compute", "LinearAlgebraRoutines.cpp", 74, "inDim2<=pData->maxDim2");
  }

  vDSP_mtrans(__A, 1, v5[2], 1, a4, a3);
  __jobvt = 83;
  __lda = a3;
  v18 = 0;
  __n = a4;
  sgesvd_(&__jobvt, &__jobvt, &__lda, &__n, (*this)[2], &__lda, (*this)[5], (*this)[8], &__lda, (*this)[11], &__n, (*this)[17], *this + 2, &v18);
  v10 = v18;
  if (v18)
  {
    bzero(a5, 4 * a4 * a3);
  }

  else
  {
    if (a4 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    if (v11 >= 1)
    {
      v12 = 0;
      for (i = 0; i != v11; ++i)
      {
        v14 = (*this)[5][i];
        if (v14 > 0.00001)
        {
          v14 = 1.0 / v14;
        }

        cblas_sscal(a3, v14, &(*this)[8][v12], 1);
        v12 += a3;
      }
    }

    cblas_sgemm(CblasColMajor, CblasTrans, CblasTrans, a4, a3, v11, 1.0, (*this)[11], a4, (*this)[8], a3, 0.0, (*this)[14], a4);
    vDSP_mtrans((*this)[14], 1, a5, 1, a4, a3);
    return v18;
  }

  return v10;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
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
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<int>::allocate_at_least[abi:ne200100](v10);
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

void std::allocator<int>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::unique_ptr<PPUtils::GeneralLinearSolverComplex::Data>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      v2[8] = v3;
      operator delete(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      v2[2] = v5;
      operator delete(v5);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::default_delete<PPUtils::CholeskyFactorisationComplex::Data>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

double PPUtils::CholeskyFactorisationComplex::compute(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  if (**a1 < 2)
  {
    __assert_rtn("compute", "LinearAlgebraRoutines.cpp", 292, "inDim<=pData->maxDim");
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = v7;
      if (v8 <= v6)
      {
        v11 = *(a2 + 8 * v6 + 16 * v8);
      }

      else
      {
        v11 = 0;
      }

      *(*(*a1 + 8) + 8 * v8 + 16 * v6) = v11;
      v7 = 1;
      v8 = 1;
    }

    while ((v10 & 1) == 0);
    v5 = 1;
    v6 = 1;
  }

  while ((v9 & 1) == 0);
  v12 = *a1;
  __uplo = 85;
  __lda = 2;
  __info = 0;
  cpotrf_(&__uplo, &__lda, *(v12 + 8), &__lda, &__info);
  if (__info)
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    v14 = 0;
    for (i = 0; ; i = 1)
    {
      v16 = &a3[i];
      if (v14)
      {
        break;
      }

      *v16 = *(*(*a1 + 8) + 8 * i);
      v16[1] = *(*(*a1 + 8) + 8 * i + 16);
      v14 = 1;
    }

    *v16 = 0.0;
    result = *(*(*a1 + 8) + 8 * i + 16);
    v16[1] = result;
  }

  return result;
}

void *std::unique_ptr<PPUtils::SingularValueDecompositionComplex::Data>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[17];
    if (v3)
    {
      v2[18] = v3;
      operator delete(v3);
    }

    v4 = v2[14];
    if (v4)
    {
      v2[15] = v4;
      operator delete(v4);
    }

    v5 = v2[11];
    if (v5)
    {
      v2[12] = v5;
      operator delete(v5);
    }

    v6 = v2[8];
    if (v6)
    {
      v2[9] = v6;
      operator delete(v6);
    }

    v7 = v2[5];
    if (v7)
    {
      v2[6] = v7;
      operator delete(v7);
    }

    v8 = v2[2];
    if (v8)
    {
      v2[3] = v8;
      operator delete(v8);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v12);
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

uint64_t std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if ((v8 + 1) > 0x492492492492492)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    v25 = a1;
    if (v11)
    {
      if (v11 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 56 * v8;
    v22 = 0;
    v23 = v12;
    v24 = (56 * v8);
    *v12 = *a2;
    v13 = 56 * v8;
    *(v13 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v12 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    *&v24 = v24 + 56;
    v14 = *a1;
    v15 = a1[1];
    v16 = v23 + *a1 - v15;
    if (*a1 != v15)
    {
      v17 = *a1;
      v18 = v23 + *a1 - v15;
      do
      {
        *v18 = *v17;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        *(v18 + 8) = 0;
        *(v18 + 8) = *(v17 + 1);
        *(v18 + 24) = v17[3];
        v17[1] = 0;
        v17[2] = 0;
        v17[3] = 0;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 48) = 0;
        *(v18 + 32) = *(v17 + 2);
        *(v18 + 48) = v17[6];
        v17[4] = 0;
        v17[5] = 0;
        v17[6] = 0;
        v17 += 7;
        v18 += 56;
      }

      while (v17 != v15);
      do
      {
        std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(v14);
        v14 += 7;
      }

      while (v14 != v15);
    }

    v19 = *a1;
    *a1 = v16;
    v20 = a1[2];
    v21 = v24;
    *(a1 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v22 = v19;
    v23 = v19;
    result = std::__split_buffer<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::~__split_buffer(&v22);
    v7 = v21;
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v5 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v5 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    v7 = v5 + 56;
    a1[1] = v5 + 56;
  }

  a1[1] = v7;
  return result;
}

void sub_1DDC203DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 16) = v7;
    operator delete(v7);
  }

  std::__split_buffer<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned int>>::clear[abi:ne200100](uint64_t *a1)
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

void std::allocator<std::vector<unsigned int>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDC20590(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *PPUtils::SphericalCoordinateTree::SphericalCoordinateTree(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned int>::vector[abi:ne200100](v31, a3);
  v6 = *(a2 + 32);
  if ((*(a2 + 40) - v6) <= 8)
  {
    __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 61, "inIdx<mPtrs.size()");
  }

  PPUtils::sortWithIndices<float>::apply(*(v6 + 8), a3);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v24 = 1;
  std::vector<unsigned int>::push_back[abi:ne200100](&v28, &v24);
  v7 = *(a2 + 32);
  if ((*(a2 + 40) - v7) <= 8)
  {
    __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 61, "inIdx<mPtrs.size()");
  }

  *&v24 = *(*(v7 + 8) + 4 * *v31[0]) * 0.017453;
  *v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::push_back[abi:ne200100](a1, &v24);
  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = 0;
    v10 = "inIdx<mPtrs.size()";
    v11 = "MultiDimensionalContiguousArrays.h";
    v12 = "operator[]";
    v13 = 4 * v8;
    while (1)
    {
      v14 = *(a2 + 32);
      if ((*(a2 + 40) - v14) < 9)
      {
        break;
      }

      v15 = *(v14 + 8);
      v16 = *(v15 + 4 * *(v31[0] + v9 + 4));
      if (vabds_f32(*(v15 + 4 * *(v31[0] + v9)), v16) <= 0.01)
      {
        ++*(v29 - 1);
      }

      else
      {
        *&v24 = v16 * 0.017453;
        if (fabsf(v16 * 0.017453) > 1.57089633)
        {
          v20 = 34;
          v12 = "SphericalCoordinateTree";
          v11 = "SphericalCoordinateTree.cpp";
          v10 = "!(newBranch.elevationRadians<-M_PI_2-0.0001f) && !(newBranch.elevationRadians>M_PI_2+0.0001f)";
LABEL_23:
          __assert_rtn(v12, v11, v20, v10);
        }

        std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::push_back[abi:ne200100](a1, &v24);
        LODWORD(v23[0]) = 1;
        std::vector<unsigned int>::push_back[abi:ne200100](&v28, v23);
      }

      v9 += 4;
      if (v13 == v9)
      {
        goto LABEL_11;
      }
    }

    v20 = 61;
    goto LABEL_23;
  }

LABEL_11:
  v18 = *a1;
  v17 = a1[1];
  memset(v23, 0, sizeof(v23));
  __p = v23;
  LOBYTE(v22) = 0;
  if (v17 != v18)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v17 - v18) >> 3)) < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<std::vector<unsigned int>>::allocate_at_least[abi:ne200100](0x6DB6DB6DB6DB6DB7 * ((v17 - v18) >> 3));
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  __p = v23;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v25[0])
  {
    operator delete(v25[0]);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  return a1;
}

void sub_1DDC20C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t PPUtils::SphericalCoordinateTree::getGridIndexCorrespondingToDirection(uint64_t *a1, float *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = hypotf(*a2, v3);
  v7 = atan2f(v5, v6);
  if (fabsf(v7) > 1.57089633)
  {
    __assert_rtn("getGridIndexCorrespondingToDirection", "SphericalCoordinateTree.cpp", 77, "!(elevationRadians<-M_PI_2-0.0001f) && !(elevationRadians>M_PI_2+0.0001f)");
  }

  v8 = atan2f(v3, v4);
  v9 = fmodf(v8, 6.2832);
  if (v9 < 0.0)
  {
    v9 = v9 + 6.2832;
  }

  v10 = *a1;
  v11 = a1[1] - *a1;
  v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3);
  if (v12 < 2)
  {
    v13 = 0;
  }

  else
  {
    if (v12 == 2)
    {
      LODWORD(v13) = 0;
    }

    else if (v12 == 3)
    {
      LODWORD(v13) = 1;
    }

    else
    {
      LODWORD(v13) = vcvts_n_f32_u64(v12, 1uLL) - 1;
    }

    v14 = vabds_f32(*(v10 + 56 * v13), v7);
    v15 = (v13 + 1);
    v16 = vabds_f32(*(v10 + 56 * v15), v7);
    if (v14 <= v16)
    {
      if (v11 != 112)
      {
        v19 = (v13 - 1);
        v20 = vabds_f32(*(v10 + 56 * v19), v7);
        if (v14 > v20 && (v19 & 0x80000000) == 0 && v20 <= v14)
        {
          v21 = (v10 + 56 * v19 - 56);
          while (1)
          {
            LODWORD(v13) = v19;
            i = v19-- < 1;
            if (i)
            {
              break;
            }

            v22 = *v21;
            v21 -= 14;
            v23 = vabds_f32(v22, v7);
            i = v23 <= v20;
            v20 = v23;
            if (!i)
            {
              goto LABEL_29;
            }
          }

          LODWORD(v13) = 0;
        }
      }
    }

    else
    {
      for (i = v12 > v15 && v16 <= v14; i; v16 = v18)
      {
        LODWORD(v13) = v15;
        v15 = (v15 + 1);
        if (v12 <= v15)
        {
          break;
        }

        v18 = vabds_f32(*(v10 + 56 * v15), v7);
        i = v18 <= v16;
      }
    }

LABEL_29:
    v13 = v13;
  }

  if (v13 == v12)
  {
    __assert_rtn("getGridIndexCorrespondingToDirection", "SphericalCoordinateTree.cpp", 121, "branchIndex != mSphericalCoordinateTree.size()");
  }

  v24 = (v10 + 56 * v13);
  v25 = v24[1];
  v26 = v24[2] - v25;
  v27 = v26 >> 2;
  if ((v26 >> 2) < 2)
  {
    v29 = 0;
  }

  else
  {
    v28 = v9 + -6.28318531;
    if (v26 >> 2 == 2)
    {
      LODWORD(v29) = 0;
    }

    else if (v27 == 3)
    {
      LODWORD(v29) = 1;
    }

    else
    {
      LODWORD(v29) = vcvts_n_f32_u64(v27, 1uLL) - 1;
    }

    v30 = vabds_f32(*(v25 + 4 * v29), v28);
    v31 = (v29 + 1);
    v32 = vabds_f32(*(v25 + 4 * v31), v28);
    if (v30 <= v32)
    {
      if (v26 != 8)
      {
        v35 = (v29 - 1);
        v36 = vabds_f32(*(v25 + 4 * v35), v28);
        if (v30 > v36 && (v35 & 0x80000000) == 0 && v36 <= v30)
        {
          v37 = v25 - 4;
          while (1)
          {
            v29 = v35;
            i = v35-- < 1;
            if (i)
            {
              break;
            }

            v38 = vabds_f32(*(v37 + 4 * v29), v28);
            i = v38 <= v36;
            v36 = v38;
            if (!i)
            {
              goto LABEL_56;
            }
          }

          LODWORD(v29) = 0;
        }
      }
    }

    else if (v27 > v31 && v32 <= v30)
    {
      do
      {
        LODWORD(v29) = v31;
        v31 = (v31 + 1);
        if (v27 <= v31)
        {
          break;
        }

        v34 = vabds_f32(*(v25 + 4 * v31), v28);
        i = v34 <= v32;
        v32 = v34;
      }

      while (i);
    }

LABEL_56:
    v29 = v29;
  }

  if (v29 == v27)
  {
    __assert_rtn("getGridIndexCorrespondingToDirection", "SphericalCoordinateTree.cpp", 164, "azimuthIndex != mSphericalCoordinateTree[branchIndex].azimuthRadians.size()");
  }

  return *(v24[4] + 4 * v29);
}

void PPUtils::loadHRIRs(IR::IRDataAttributes *a1)
{
  v1 = IR::IRDataAttributes::IRDataAttributes(&v2, a1);
  v4 = 1;
  v3 = 0;
  IR::IRDataLoader::instance(v1);
  operator new();
}

void sub_1DDC216F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36)
{
  *(v37 - 184) = &a36;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v37 - 184));
  *(v37 - 184) = v37 - 208;
  std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100]((v37 - 184));
  if (v36)
  {
    operator delete(v36);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  IR::IRDataAttributes::~IRDataAttributes(&a14);
  _Unwind_Resume(a1);
}

void IR::IRDataAttributes::~IRDataAttributes(IR::IRDataAttributes *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

IR::IRDataAttributes *IR::IRDataAttributes::IRDataAttributes(IR::IRDataAttributes *this, const IR::IRDataAttributes *a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *this = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v7;
  *(this + 24) = v6;
  *(this + 8) = v5;
  v8 = *(a2 + 8);
  if (v8)
  {
    CFRetain(*(a2 + 8));
  }

  *(this + 8) = v8;
  *(this + 72) = *(a2 + 72);
  v9 = *(a2 + 11);
  if (v9)
  {
    CFRetain(*(a2 + 11));
  }

  *(this + 11) = v9;
  v10 = *(a2 + 6);
  *(this + 105) = *(a2 + 105);
  *(this + 6) = v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    CFRetain(*(a2 + 16));
  }

  *(this + 16) = v11;
  v12 = *(a2 + 17);
  *(this + 36) = *(a2 + 36);
  *(this + 17) = v12;
  return this;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      do
      {
        v9 = v6;
        std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v9);
        v7 = *(v6 - 24);
        if (v7)
        {
          *(v6 - 16) = v7;
          operator delete(v7);
        }

        v8 = (v6 - 32);
        v6 -= 56;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDC21B6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void PPUtils::groupDelayOfFIRfilter(const void *a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  if (a2 >= a3)
  {
    v7 = a4 >> 1;
    v8 = (v7 + 1);
    if (a6 >= v8)
    {
      std::vector<float>::vector[abi:ne200100](&v26, (v7 + 1));
      v11 = 0;
      v12 = vcvts_n_f32_u32(a4, 1uLL);
      v13 = xmmword_1DE095150;
      v14 = xmmword_1DE095160;
      v15 = vdupq_n_s64(4uLL);
      v16 = vdupq_n_s64(v7);
      for (i = (v26 + 8); ; i += 4)
      {
        v18 = vmovn_s64(vcgeq_u64(v16, v14));
        if (vuzp1_s16(v18, *&v12).u8[0])
        {
          v19 = v11 * 3.14159265 / v12;
          *(i - 2) = v19;
        }

        if (vuzp1_s16(v18, *&v12).i8[2])
        {
          v20 = (v11 + 1) * 3.14159265 / v12;
          *(i - 1) = v20;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v16, *&v13))).i32[1])
        {
          v21 = (v11 + 2) * 3.14159265 / v12;
          *i = v21;
          v22 = (v11 + 3) * 3.14159265 / v12;
          i[1] = v22;
        }

        v11 += 4;
        v13 = vaddq_s64(v13, v15);
        v14 = vaddq_s64(v14, v15);
        if (((v8 + 3) & 0x1FFFFFFFCLL) == v11)
        {
          std::vector<float>::vector[abi:ne200100](&__dst, a4);
          if (a4 >= a3)
          {
            v23 = a3;
          }

          else
          {
            v23 = a4;
          }

          memcpy(__dst, a1, 4 * v23);
          PPUtils::RealToComplexDFT::RealToComplexDFT(v24, a4);
        }
      }
    }

    __assert_rtn("groupDelayOfFIRfilter", "LoadingAndPreprocessingHRTFs.cpp", 413, "outGroupDelay.size()>=kNumBins");
  }

  __assert_rtn("groupDelayOfFIRfilter", "LoadingAndPreprocessingHRTFs.cpp", 412, "inFilterLength<=inFIR.size()");
}

void sub_1DDC21FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, vDSP_DFT_Interleaved_SetupStruct *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  PPUtils::RealToComplexDFT::~RealToComplexDFT(&a19);
  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

PPUtils::FractionalDelayForFIRfilters *PPUtils::FractionalDelayForFIRfilters::FractionalDelayForFIRfilters(PPUtils::FractionalDelayForFIRfilters *this, int a2, vDSP_Length Length, float a4)
{
  *(this + 8) = 0u;
  v8 = (this + 8);
  *(this + 56) = 0u;
  v9 = (this + 56);
  *(this + 104) = 0u;
  v47 = (this + 104);
  *(this + 17) = 0;
  v10 = (this + 136);
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 116) = 0u;
  v11 = &PPUtils::kSupportedComplexToComplexDFTSizes;
  v12 = 35;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[4 * (v12 >> 1)];
    v16 = *v14;
    v15 = (v14 + 1);
    v12 += ~(v12 >> 1);
    if (v16 < Length)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &PPUtils::kMinusOne || *v11 > Length)
  {
    __assert_rtn("ComplexToComplexDFT", "AliasingRobustComplexValuedFilterbank.h", 310, "std::binary_search(kSupportedComplexToComplexDFTSizes.begin(), kSupportedComplexToComplexDFTSizes.end(), inDFTSize)");
  }

  *(this + 32) = Length;
  Setup = vDSP_DFT_Interleaved_CreateSetup(0, Length, vDSP_DFT_FORWARD, vDSP_DFT_Interleaved_ComplextoComplex);
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](v10, Setup);
  v18 = vDSP_DFT_Interleaved_CreateSetup(*(this + 18), Length, vDSP_DFT_INVERSE, vDSP_DFT_Interleaved_ComplextoComplex);
  std::unique_ptr<vDSP_DFT_Interleaved_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_Interleaved_SetupStruct*,&(vDSP_DFT_Interleaved_DestroySetup)>>::reset[abi:ne200100](this + 18, v18);
  v19 = Length >> 1;
  v20 = (v19 + 1);
  *this = a2;
  *(this + 1) = Length;
  std::vector<float>::resize(this + 10, v20);
  v21 = 0;
  v22 = vcvts_n_f32_u32(Length, 1uLL);
  v23 = xmmword_1DE095150;
  v24 = xmmword_1DE095160;
  v25 = vdupq_n_s64(4uLL);
  v26 = vdupq_n_s64(v19);
  v27 = (*(this + 10) + 8);
  do
  {
    v28 = vmovn_s64(vcgeq_u64(v26, v24));
    if (vuzp1_s16(v28, *&v22).u8[0])
    {
      v29 = v21 * 3.14159265 / v22;
      *(v27 - 2) = v29;
    }

    if (vuzp1_s16(v28, *&v22).i8[2])
    {
      v30 = (v21 + 1) * 3.14159265 / v22;
      *(v27 - 1) = v30;
    }

    if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v26, *&v23))).i32[1])
    {
      v31 = (v21 + 2) * 3.14159265 / v22;
      *v27 = v31;
      v32 = (v21 + 3) * 3.14159265 / v22;
      v27[1] = v32;
    }

    v21 += 4;
    v23 = vaddq_s64(v23, v25);
    v24 = vaddq_s64(v24, v25);
    v27 += 4;
  }

  while (((v20 + 3) & 0x1FFFFFFFCLL) != v21);
  std::vector<std::complex<float>>::resize(v47, Length);
  v46 = v9;
  v33 = *(this + 10);
  v34 = *v47;
  v35 = (*v47 + 4);
  v36 = (v19 + 1);
  do
  {
    v37 = *v33++;
    std::exp[abi:ne200100]<float>(0.0, -(v37 * a4));
    *(v35 - 1) = v38;
    *v35 = v39;
    v35 += 2;
    --v36;
  }

  while (v36);
  if (v20 < Length)
  {
    v40 = (~v19 + Length);
    v41 = (((4 * Length) & 0x3FFFFFFF8) + v34 + 12);
    v42 = v19 - 1;
    do
    {
      v43 = (v34 + 8 * v42);
      v44 = -v43[1];
      *(v41 - 1) = *v43;
      *v41 = v44;
      v41 += 2;
      --v42;
      --v40;
    }

    while (v40);
  }

  *(v34 + 8 * v19 + 4) = 0;
  std::vector<std::complex<float>>::resize(v8, Length);
  std::vector<std::complex<float>>::resize(this + 4, Length);
  std::vector<std::complex<float>>::resize(v46, Length);
  return this;
}

void sub_1DDC223C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  PPUtils::ComplexToComplexDFT::~ComplexToComplexDFT((v10 + 128));
  v14 = *a10;
  if (*a10)
  {
    *(v10 + 112) = v14;
    operator delete(v14);
  }

  v15 = *(v10 + 80);
  if (v15)
  {
    *(v10 + 88) = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    *(v10 + 64) = v16;
    operator delete(v16);
  }

  v17 = *(v10 + 32);
  if (v17)
  {
    *(v10 + 40) = v17;
    operator delete(v17);
  }

  v18 = *v11;
  if (*v11)
  {
    *(v10 + 16) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void PPUtils::FractionalDelayForFIRfilters::apply(unsigned int *a1, const float *a2, unint64_t a3, float *a4, unint64_t a5)
{
  if (a3 < *a1)
  {
    __assert_rtn("apply", "LoadingAndPreprocessingHRTFs.cpp", 485, "inFIR.size()>=mFilterLength");
  }

  v6 = a1[1];
  if (a5 < v6)
  {
    __assert_rtn("apply", "LoadingAndPreprocessingHRTFs.cpp", 486, "outFIR.size()>=mNFFT");
  }

  bzero(*(a1 + 1), 8 * v6);
  cblas_scopy(*a1, a2, 1, *(a1 + 1), 2);
  v9 = *(a1 + 17);
  if (v9)
  {
    vDSP_DFT_Interleaved_Execute(v9, *(a1 + 1), *(a1 + 4));
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 13);
  __E = *(a1 + 7);
  v13 = a1[1];
  MEMORY[0x1E12BE7F0](v10, 2, v11 + 1, 2, __E + 4, 2, v13);
  MEMORY[0x1E12BE780](v10 + 1, 2, v11, 2, __E + 4, 2, __E, 2, v13);
  cblas_scopy(v13, __E, 2, (__E + 4), 2);
  vDSP_vmmsb(v10, 2, v11, 2, v10 + 1, 2, v11 + 1, 2, __E, 2, v13);
  v14 = *(a1 + 18);
  if (v14)
  {
    v15 = *(a1 + 1);
    vDSP_DFT_Interleaved_Execute(v14, *(a1 + 7), v15);
    v16 = a1[32];
    v19 = 1.0 / v16;
    MEMORY[0x1E12BE940](v15, 1, &v19, v15, 1, 2 * v16);
  }

  v17 = a1[1];
  v18 = *(a1 + 1);

  cblas_scopy(v17, v18, 2, a4, 1);
}

void std::vector<std::vector<unsigned int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v17[4] = a1;
    if (v8)
    {
      std::allocator<std::vector<unsigned int>>::allocate_at_least[abi:ne200100](v8);
    }

    v10 = 24 * v5;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v10, v11);
    v12 = v10 + v11;
    v13 = *(a1 + 8) - *a1;
    v14 = v10 - v13;
    memcpy((v10 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    std::__split_buffer<std::vector<float *>>::~__split_buffer(v17);
  }
}

void AUSM::DynamicSpatializer::~DynamicSpatializer(AUSM::DynamicSpatializer *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

uint64_t DynamicERSpatializer::initialize(uint64_t result, float a2)
{
  *(result + 180) = 0;
  *(result + 184) = a2;
  if (*(result + 181) == 1)
  {
    DynamicERSpatializer::setupERSpatializer(&v2, a2, result);
  }

  *(result + 180) = 1;
  return result;
}

void sub_1DDC22A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void DynamicERSpatializer::setupERSpatializer(DynamicERSpatializer *this, float a2, uint64_t a3)
{
  *this = 0;
  v5 = *(a3 + 168);
  std::mutex::lock((v5 + 1560));
  IR::IRDataAttributes::IRDataAttributes(v9, (v5 + 64));
  std::mutex::unlock((v5 + 1560));
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, *(a3 + 160) + 128);
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    IR::IRDataAttributes::IRDataAttributes(v7, v6, 128, 1, 2, 4, a2);
    CFRelease(v6);
    operator new();
  }

  atomic_load((*(a3 + 160) + 220));
  IR::getPresetDataAttributes();
  operator new();
}

void sub_1DDC22D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, char a30)
{
  MEMORY[0x1E12BD160](v31, 0x10F1C40D3BBE8CCLL);
  IR::IRDataAttributes::~IRDataAttributes(&a10);
  v33 = *v30;
  applesauce::CF::URLRef::~URLRef(&a29);
  IR::IRDataAttributes::~IRDataAttributes(&a30);
  *v30 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t DynamicERSpatializer::setSpatializer(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v5 = v2;
  AUSM::DynamicSpatializer::setSpatializer(a1, &v5);
  result = v5;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

void sub_1DDC22F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(void *a1, uint64_t a2)
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

uint64_t IR::IRDataAttributes::IRDataAttributes(uint64_t a1, CFTypeRef cf, int a3, char a4, int a5, int a6, float a7)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v15 = cf;
  IR::IRDataAttributes::IRDataAttributes(a1, &v15, a3, a4, a5, a6, a7);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

void sub_1DDC23074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

void sub_1DDC23354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, Shoebox::ShoeboxRoom *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v30 = v19;
  v22 = *(v16 + 2448);
  if (v22)
  {
    *(v16 + 2456) = v22;
    operator delete(v22);
  }

  v23 = *v18;
  if (*v18)
  {
    *(v16 + 2432) = v23;
    operator delete(v23);
  }

  IR::IRDataAttributes::~IRDataAttributes((v16 + 2224));
  IR::IRDataAttributes::~IRDataAttributes((v16 + 2072));
  std::vector<std::unique_ptr<ERSpatializerFilterbank>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::vector<std::vector<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::unique_ptr<ERDecorrelationFilter>::reset[abi:ne200100]((v16 + 2008), 0);
  std::vector<std::unique_ptr<ERDiffusionFilter>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v24 = *(v16 + 1976);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::vector<std::unique_ptr<IR::IRProcessor>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::vector<std::shared_ptr<IR::DataLoaderSourceWithTruncation>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v25 = *v20;
  if (*v20)
  {
    *(v16 + 1904) = v25;
    operator delete(v25);
  }

  v26 = *(v16 + 1856);
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(v16 + 1832);
  if (v27)
  {
    *(v16 + 1840) = v27;
    operator delete(v27);
  }

  a16 = v30;
  std::vector<Shoebox::Reflection>::__destroy_vector::operator()[abi:ne200100](&a16);
  v28 = *(v16 + 1776);
  if (v28)
  {
    *(v16 + 1784) = v28;
    operator delete(v28);
  }

  v29 = *(v16 + 1600);
  if (v29)
  {
    *(v16 + 1608) = v29;
    operator delete(v29);
  }

  Shoebox::ShoeboxRoom::~ShoeboxRoom(a11);
  Spatializer::~Spatializer(v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__shared_ptr_emplace<SpatializerParams>::__on_zero_shared(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    a1[23] = v4;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<SpatializerParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592F310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t IR::IRDataAttributes::IRDataAttributes(uint64_t a1, const __CFURL **a2, int a3, char a4, int a5, int a6, float a7)
{
  *a1 = 0;
  *(a1 + 8) = a7;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 17) = 0;
  *(a1 + 20) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a6;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 200;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 200;
  *(a1 + 112) = 1;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *a2;
  if (v8)
  {
    applesauce::CF::get_absolute_path(&v11, v8);
    v9 = *a1;
    *a1 = v11;
    v11 = v9;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return a1;
}

void sub_1DDC23770(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(v3);
  applesauce::CF::URLRef::~URLRef(v1 + 11);
  applesauce::CF::URLRef::~URLRef(v2);
  applesauce::CF::URLRef::~URLRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::get_absolute_path(applesauce::CF *this, CFURLRef relativeURL)
{
  result = CFURLCopyAbsoluteURL(relativeURL);
  *this = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFURLGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_1DDC23824(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t DynamicERSpatializer::HRIRChanged(uint64_t this)
{
  if (*(this + 107) == 1)
  {
    DynamicERSpatializer::setupERSpatializer(&v1, *(this + 184), this);
  }

  return this;
}

void sub_1DDC23918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DynamicERSpatializer::DirectivityChanged(uint64_t this)
{
  if (*(this + 107) == 1)
  {
    DynamicERSpatializer::setupERSpatializer(&v1, *(this + 184), this);
  }

  return this;
}

void sub_1DDC239E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DynamicERSpatializer::setRoomPreset(DynamicERSpatializer *this, const applesauce::CF::DictionaryRef *a2)
{
  if (*(this + 107) == 1)
  {
    DynamicERSpatializer::setupERSpatializer(&v4, *(this + 46), this);
  }

  v2 = *(**(this + 6) + 112);

  return v2();
}

void sub_1DDC23AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void CircularModelDOA::UpdateKappa(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  if (*(a1 + 8) == v6 >> 2)
  {
    memcpy(*(a1 + 24), v4, v6);
    v7 = *(*a1 + 8);

    v7(a1, a2);
  }

  else
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v8 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*(a2 + 8) - *a2) >> 2;
      v10 = *(a1 + 8);
      v11 = 136315906;
      v12 = "CircularModels.cpp";
      v13 = 1024;
      v14 = 187;
      v15 = 2048;
      v16 = v9;
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CircularModels: Kappa not set. Input length (%lu) and internal length (%u) do not match.\n", &v11, 0x22u);
    }
  }
}

uint64_t CircularModelDOA::UpdateKappa(float **this, float a2)
{
  __A = a2;
  vDSP_vfill(&__A, this[3], 1, *(this + 2));
  v3.n128_f32[0] = __A;
  return (**this)(this, v3);
}

uint64_t VonMisesModelDOA::GetValue(uint64_t a1, void *a2, void *a3, float **a4)
{
  CircularModelDOA::innerProductTargetTimesSubbandDOA(a1, a2, a3, a4);
  MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 24), 1, *a4, 1, *(a1 + 8));
  vvexpf(*a4, *a4, (a1 + 72));
  result = MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 48), 1, *a4, 1, *(a1 + 8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 24);
    v9 = *a4;
    do
    {
      if (*v8 < 1.0e-15)
      {
        *v9 = *(a1 + 88);
      }

      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t CircularModelDOA::innerProductTargetTimesSubbandDOA(uint64_t a1, void *a2, void *a3, float **a4)
{
  vDSP_vclr(*a4, 1, *(a1 + 8));
  MEMORY[0x1E12BE940](*a2, 1, a1 + 92, *(a1 + 192), 1, *(a1 + 8));
  vvsincosf(*(a1 + 120), *(a1 + 96), *(a1 + 192), (a1 + 72));
  MEMORY[0x1E12BE940](*a3, 1, a1 + 92, *(a1 + 192), 1, *(a1 + 8));
  vvsincosf(*(a1 + 168), *(a1 + 144), *(a1 + 192), (a1 + 72));
  v8 = *(a1 + 92);
  v9 = cosf(*(a1 + 12) * v8);
  v13 = v9 * cosf(v8 * *(a1 + 16));
  MEMORY[0x1E12BE7F0](*(a1 + 96), 1, *(a1 + 144), 1, *(a1 + 192), 1, *(a1 + 8));
  MEMORY[0x1E12BE940](*(a1 + 192), 1, &v13, *(a1 + 192), 1, *(a1 + 8));
  MEMORY[0x1E12BE5D0](*(a1 + 192), 1, *a4, 1, *a4, 1, *(a1 + 8));
  v10 = *(a1 + 92);
  v11 = sinf(*(a1 + 12) * v10);
  v13 = v11 * cosf(v10 * *(a1 + 16));
  MEMORY[0x1E12BE7F0](*(a1 + 120), 1, *(a1 + 144), 1, *(a1 + 192), 1, *(a1 + 8));
  MEMORY[0x1E12BE940](*(a1 + 192), 1, &v13, *(a1 + 192), 1, *(a1 + 8));
  MEMORY[0x1E12BE5D0](*(a1 + 192), 1, *a4, 1, *a4, 1, *(a1 + 8));
  v13 = sinf(*(a1 + 16) * *(a1 + 92));
  MEMORY[0x1E12BE940](*(a1 + 168), 1, &v13, *(a1 + 192), 1, *(a1 + 8));
  return MEMORY[0x1E12BE5D0](*(a1 + 192), 1, *a4, 1, *a4, 1, *(a1 + 8));
}

void VonMisesModelDOA::~VonMisesModelDOA(VonMisesModelDOA *this)
{
  CircularModelDOA::~CircularModelDOA(this);

  JUMPOUT(0x1E12BD160);
}

void CircularModelDOA::~CircularModelDOA(CircularModelDOA *this)
{
  *this = &unk_1F592C2B8;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }
}

void VonMisesModelDOA::UpdateNormConst(uint64_t a1, const float **a2)
{
  vvsinhf(*(a1 + 48), *a2, (a1 + 72));
  MEMORY[0x1E12BE940](*(a1 + 48), 1, a1 + 84, *(a1 + 48), 1, *(a1 + 8));
  vDSP_svdiv((a1 + 76), *(a1 + 48), 1, *(a1 + 48), 1, *(a1 + 8));

  JUMPOUT(0x1E12BE7F0);
}

void VonMisesModelDOA::UpdateNormConst(VonMisesModelDOA *this, float a2)
{
  v3 = *(this + 21);
  __A = a2 / (sinhf(a2) * v3);
  vDSP_vfill(&__A, *(this + 6), 1, *(this + 2));
}

uint64_t ComplementVonMisesModelDOA::GetValue(uint64_t a1, void *a2, void *a3, float **a4)
{
  CircularModelDOA::innerProductTargetTimesSubbandDOA(a1, a2, a3, a4);
  vvexpf(*(a1 + 216), *(a1 + 24), (a1 + 72));
  MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 24), 1, *a4, 1, *(a1 + 8));
  vvexpf(*a4, *a4, (a1 + 72));
  MEMORY[0x1E12BE9A0](*a4, 1, *(a1 + 216), 1, *a4, 1, *(a1 + 8));
  result = MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 48), 1, *a4, 1, *(a1 + 8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 24);
    v9 = *a4;
    do
    {
      if (*v8 < 1.0e-15)
      {
        *v9 = *(a1 + 88);
      }

      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

void ComplementVonMisesModelDOA::~ComplementVonMisesModelDOA(ComplementVonMisesModelDOA *this)
{
  *this = &unk_1F592C348;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  CircularModelDOA::~CircularModelDOA(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592C348;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  CircularModelDOA::~CircularModelDOA(this);
}

void ComplementVonMisesModelDOA::UpdateNormConst(uint64_t a1, const float **a2)
{
  vvexpf(*(a1 + 216), *a2, (a1 + 72));
  MEMORY[0x1E12BE7F0](*(a1 + 216), 1, *a2, 1, *(a1 + 216), 1, *(a1 + 8));
  vvsinhf(*(a1 + 48), *a2, (a1 + 72));
  MEMORY[0x1E12BE9A0](*(a1 + 48), 1, *(a1 + 216), 1, *(a1 + 48), 1, *(a1 + 8));
  MEMORY[0x1E12BE940](*(a1 + 48), 1, a1 + 84, *(a1 + 48), 1, *(a1 + 8));
  vDSP_svdiv((a1 + 76), *(a1 + 48), 1, *(a1 + 48), 1, *(a1 + 8));

  JUMPOUT(0x1E12BE7F0);
}

void ComplementVonMisesModelDOA::UpdateNormConst(ComplementVonMisesModelDOA *this, float a2)
{
  v4 = *(this + 21);
  v5 = expf(a2);
  __A = a2 / (-(sinhf(a2) - (a2 * v5)) * v4);
  vDSP_vfill(&__A, *(this + 6), 1, *(this + 2));
}

uint64_t WatsonModelDOA::GetValue(uint64_t a1, void *a2, void *a3, float **a4)
{
  CircularModelDOA::innerProductTargetTimesSubbandDOA(a1, a2, a3, a4);
  MEMORY[0x1E12BE7F0](*a4, 1, *a4, 1, *a4, 1, *(a1 + 8));
  MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 24), 1, *a4, 1, *(a1 + 8));
  vvexpf(*a4, *a4, (a1 + 72));
  result = MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 48), 1, *a4, 1, *(a1 + 8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 24);
    v9 = *a4;
    do
    {
      if (*v8 < 1.0e-15)
      {
        *v9 = *(a1 + 88);
      }

      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

void WatsonModelDOA::~WatsonModelDOA(WatsonModelDOA *this)
{
  CircularModelDOA::~CircularModelDOA(this);

  JUMPOUT(0x1E12BD160);
}

void WatsonModelDOA::UpdateNormConst(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, float a6)
{
  vKummerFirstKind(*a2, a2[1], *(a1 + 48), *(a1 + 216), *(a1 + 220), a5, a6);
  MEMORY[0x1E12BE940](*(a1 + 48), 1, a1 + 84, *(a1 + 48), 1, *(a1 + 8));
  v7 = *(a1 + 48);
  v8 = *(a1 + 8);

  vDSP_svdiv((a1 + 76), v7, 1, v7, 1, v8);
}

void vKummerFirstKind(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, double a6, float a7)
{
  if (a2 != a1)
  {
    v11 = 0;
    v12 = (a2 - a1) >> 2;
    do
    {
      KummerFirstKind(a4, a5, *(a1 + 4 * v11), a7);
      *(a3 + 4 * v11++) = v13;
    }

    while (v12 > v11);
  }
}

void KummerFirstKind(float a1, float a2, float a3, float a4)
{
  v4 = a1;
  v5 = (a1 * a3) / a2;
  v6 = v5 + 1.0;
  if (fabsf(v5) > 0.000000001)
  {
    v7 = 1;
    do
    {
      v4 = v4 + 1.0;
      a2 = a2 + 1.0;
      v5 = (((v5 * a3) * v4) / a2) / (v7 + 1);
      v6 = v6 + v5;
      if (v7 > 0x62)
      {
        break;
      }

      ++v7;
    }

    while (fabsf(v5) > 0.000000001);
  }
}

float WatsonModelDOA::UpdateNormConst(WatsonModelDOA *this, float a2, double a3, double a4, float a5)
{
  KummerFirstKind(*(this + 54), *(this + 55), a2, a5);
  __A = *(this + 19) / (v6 * *(this + 21));
  vDSP_vfill(&__A, *(this + 6), 1, *(this + 2));
  return result;
}

uint64_t ComplementWatsonModelDOA::GetValue(uint64_t a1, void *a2, void *a3, float **a4)
{
  CircularModelDOA::innerProductTargetTimesSubbandDOA(a1, a2, a3, a4);
  vvexpf(*(a1 + 224), *(a1 + 24), (a1 + 72));
  MEMORY[0x1E12BE7F0](*a4, 1, *a4, 1, *a4, 1, *(a1 + 8));
  MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 24), 1, *a4, 1, *(a1 + 8));
  vvexpf(*a4, *a4, (a1 + 72));
  MEMORY[0x1E12BE9A0](*a4, 1, *(a1 + 224), 1, *a4, 1, *(a1 + 8));
  result = MEMORY[0x1E12BE7F0](*a4, 1, *(a1 + 48), 1, *a4, 1, *(a1 + 8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 24);
    v9 = *a4;
    do
    {
      if (*v8 < 1.0e-15)
      {
        *v9 = *(a1 + 88);
      }

      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

void ComplementWatsonModelDOA::~ComplementWatsonModelDOA(ComplementWatsonModelDOA *this)
{
  *this = &unk_1F592C390;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  CircularModelDOA::~CircularModelDOA(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592C390;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  CircularModelDOA::~CircularModelDOA(this);
}

void ComplementWatsonModelDOA::UpdateNormConst(uint64_t a1, uint64_t a2)
{
  vvexpf(*(a1 + 224), *a2, (a1 + 72));
  vKummerFirstKind(*a2, *(a2 + 8), *(a1 + 48), *(a1 + 216), *(a1 + 220), v4, v5);
  MEMORY[0x1E12BE9A0](*(a1 + 48), 1, *(a1 + 224), 1, *(a1 + 48), 1, *(a1 + 8));
  MEMORY[0x1E12BE940](*(a1 + 48), 1, a1 + 84, *(a1 + 48), 1, *(a1 + 8));
  v6 = *(a1 + 48);
  v7 = *(a1 + 8);

  vDSP_svdiv((a1 + 76), v6, 1, v6, 1, v7);
}

void ComplementWatsonModelDOA::UpdateNormConst(ComplementWatsonModelDOA *this, float a2, double a3, double a4, float a5)
{
  KummerFirstKind(*(this + 54), *(this + 55), a2, a5);
  v7 = *(this + 19);
  v8 = *(this + 21);
  __A = v7 / ((expf(a2) - v9) * v8);
  vDSP_vfill(&__A, *(this + 6), 1, *(this + 2));
}

void UniformModelDOA::~UniformModelDOA(UniformModelDOA *this)
{
  CircularModelDOA::~CircularModelDOA(this);

  JUMPOUT(0x1E12BD160);
}

void UniformModelDOA::UpdateNormConst(uint64_t a1)
{
  vDSP_vfill((a1 + 80), *(a1 + 24), 1, *(a1 + 8));
  v2 = *(a1 + 48);
  v3 = *(a1 + 8);

  vDSP_vfill((a1 + 76), v2, 1, v3);
}

void UniformModelDOA::UpdateNormConst(UniformModelDOA *this, float a2)
{
  vDSP_vfill(this + 20, *(this + 3), 1, *(this + 2));
  v3 = *(this + 6);
  v4 = *(this + 2);

  vDSP_vfill(this + 19, v3, 1, v4);
}

void CircularModelSV::UpdateKappa(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  if (*(a1 + 12) == v6 >> 2)
  {
    memcpy(*(a1 + 48), v4, v6);
    v7 = *(*a1 + 8);

    v7(a1, a2);
  }

  else
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v8 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*(a2 + 8) - *a2) >> 2;
      v10 = *(a1 + 12);
      v11 = 136315906;
      v12 = "CircularModels.cpp";
      v13 = 1024;
      v14 = 515;
      v15 = 2048;
      v16 = v9;
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CircularModels: Kappa not set. Input length (%lu) and internal length (%u) do not match.\n", &v11, 0x22u);
    }
  }
}

uint64_t CircularModelSV::UpdateKappa(float **this, float a2)
{
  __A = a2;
  vDSP_vfill(&__A, this[6], 1, *(this + 3));
  v3.n128_f32[0] = __A;
  return (**this)(this, v3);
}

uint64_t WatsonModelSV::GetValue(uint64_t a1, void *a2, void *a3)
{
  vDSP_vclr(*(a1 + 128), 1, (2 * *(a1 + 12)));
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  v8 = (*(a1 + 128) + 4 * v6);
  __D.realp = *(a1 + 128);
  __D.imagp = v8;
  if (v7)
  {
    v9 = 0;
    do
    {
      __N = *(a1 + 12);
      v11 = *(a1 + 16) + __N * v9;
      v12 = (*a2 + 4 * v11);
      __B.realp = (*a2 + 4 * __N * v9);
      __B.imagp = v12;
      v13 = *(a1 + 24);
      __A.realp = (v13 + 4 * __N * v9);
      __A.imagp = (v13 + 4 * v11);
      vDSP_zvcma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
      ++v9;
    }

    while (v9 < *(a1 + 8));
    v6 = *(a1 + 12);
  }

  vDSP_zvmags(&__D, 1, *(a1 + 152), 1, v6);
  MEMORY[0x1E12BE7F0](*(a1 + 152), 1, *(a1 + 48), 1, *(a1 + 152), 1, *(a1 + 12));
  return MEMORY[0x1E12BE5D0](*(a1 + 152), 1, *(a1 + 72), 1, *a3, 1, *(a1 + 12));
}

void WatsonModelSV::~WatsonModelSV(WatsonModelSV *this)
{
  CircularModelSV::~CircularModelSV(this);

  JUMPOUT(0x1E12BD160);
}

void CircularModelSV::~CircularModelSV(CircularModelSV *this)
{
  *this = &unk_1F5939B50;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }
}

void WatsonModelSV::UpdateNormConst(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, float a6)
{
  vKummerFirstKind(*a2, a2[1], *(a1 + 152), *(a1 + 96), *(a1 + 108), a5, a6);
  MEMORY[0x1E12BE940](*(a1 + 152), 1, a1 + 112, *(a1 + 72), 1, *(a1 + 12));
  vvlogf(*(a1 + 72), *(a1 + 72), (a1 + 104));
  MEMORY[0x1E12BE810](*(a1 + 72), 1, *(a1 + 72), 1, *(a1 + 12));

  JUMPOUT(0x1E12BE8A0);
}

void WatsonModelSV::UpdateNormConst(WatsonModelSV *this, float a2, double a3, double a4, float a5)
{
  KummerFirstKind(*(this + 24), *(this + 27), a2, a5);
  v6 = *(this + 30);
  __A = v6 - logf(v7 * *(this + 28));
  vDSP_vfill(&__A, *(this + 9), 1, *(this + 3));
}

void ComplementWatsonModelSV::GetValue(uint64_t a1, void *a2, float **a3)
{
  vDSP_vclr(*(a1 + 128), 1, (2 * *(a1 + 12)));
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  v8 = (*(a1 + 128) + 4 * v6);
  __D.realp = *(a1 + 128);
  __D.imagp = v8;
  if (v7)
  {
    v9 = 0;
    do
    {
      __N = *(a1 + 12);
      v11 = *(a1 + 16) + __N * v9;
      v12 = (*a2 + 4 * v11);
      __B.realp = (*a2 + 4 * __N * v9);
      __B.imagp = v12;
      v13 = *(a1 + 24);
      __A.realp = (v13 + 4 * __N * v9);
      __A.imagp = (v13 + 4 * v11);
      vDSP_zvcma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
      ++v9;
    }

    while (v9 < *(a1 + 8));
    v6 = *(a1 + 12);
  }

  vDSP_zvmags(&__D, 1, *(a1 + 152), 1, v6);
  MEMORY[0x1E12BE7F0](*(a1 + 152), 1, *(a1 + 48), 1, *(a1 + 152), 1, *(a1 + 12));
  vvexpf(*a3, *(a1 + 152), (a1 + 104));
  vvexpf(*(a1 + 152), *(a1 + 48), (a1 + 104));
  MEMORY[0x1E12BE9A0](*a3, 1, *(a1 + 152), 1, *a3, 1, *(a1 + 12));
  MEMORY[0x1E12BE7F0](*(a1 + 72), 1, *a3, 1, *a3, 1, *(a1 + 12));
  vvlogf(*a3, *a3, (a1 + 104));
}

void ComplementWatsonModelSV::~ComplementWatsonModelSV(ComplementWatsonModelSV *this)
{
  CircularModelSV::~CircularModelSV(this);

  JUMPOUT(0x1E12BD160);
}

void ComplementWatsonModelSV::UpdateNormConst(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, float a6)
{
  v6 = a1 + 96;
  vKummerFirstKind(*a2, a2[1], *(a1 + 152), *(a1 + 96), *(a1 + 108), a5, a6);
  vvexpf(*(v6 - 24), *(v6 - 48), (v6 + 8));
  MEMORY[0x1E12BE940](*(v6 - 24), 1, v6 + 20, *(v6 - 24), 1, *(v6 - 84));
  MEMORY[0x1E12BE940](*(v6 + 56), 1, v6 + 20, *(v6 + 56), 1, *(v6 - 84));
  MEMORY[0x1E12BE9A0](*(v6 + 56), 1, *(v6 - 24), 1, *(v6 - 24), 1, *(v6 - 84));
  v7 = *(v6 - 24);
  v8 = *(v6 - 84);

  vDSP_svdiv(v6, v7, 1, v7, 1, v8);
}

void ComplementWatsonModelSV::UpdateNormConst(ComplementWatsonModelSV *this, float a2, double a3, double a4, float a5)
{
  KummerFirstKind(*(this + 24), *(this + 27), a2, a5);
  v7 = *(this + 29);
  __A = 1.0 / ((v7 * expf(a2)) - (v7 * v8));
  vDSP_vfill(&__A, *(this + 9), 1, *(this + 3));
}

void SumMixWatsonModelSV::GetValue(uint64_t a1, void *a2, void *a3)
{
  vDSP_vclr(*(a1 + 128), 1, (2 * *(a1 + 12)));
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  __D.realp = *(a1 + 128);
  __D.imagp = &__D.realp[v6];
  if (v7)
  {
    v8 = 0;
    do
    {
      __N = *(a1 + 12);
      v10 = *(a1 + 16) + __N * v8;
      v11 = (*a2 + 4 * v10);
      __B.realp = (*a2 + 4 * __N * v8);
      __B.imagp = v11;
      v12 = *(a1 + 24);
      __A.realp = (v12 + 4 * __N * v8);
      __A.imagp = (v12 + 4 * v10);
      vDSP_zvcma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
      ++v8;
    }

    while (v8 < *(a1 + 8));
    v6 = *(a1 + 12);
  }

  vDSP_zvneg(&__D, 1, &__D, 1, v6);
  vDSP_vclr(*(a1 + 176), 1, (2 * *(a1 + 16)));
  if (*(a1 + 8))
  {
    v13 = 0;
    do
    {
      v14 = *(a1 + 12);
      v15 = *(a1 + 16) + v14 * v13;
      v16 = (*a2 + 4 * v15);
      __B.realp = (*a2 + 4 * v14 * v13);
      __B.imagp = v16;
      v17 = *(a1 + 24);
      __A.realp = (v17 + 4 * v14 * v13);
      __A.imagp = (v17 + 4 * v15);
      v18 = *(a1 + 176);
      v24.realp = (v18 + 4 * v14 * v13);
      v24.imagp = (v18 + 4 * v15);
      vDSP_zvma(&__D, 1, &__A, 1, &__B, 1, &v24, 1, v14);
      ++v13;
      v19 = *(a1 + 8);
    }

    while (v13 < v19);
    if (v19)
    {
      v20 = 0;
      do
      {
        v21 = *(a1 + 12);
        v22 = *(a1 + 176);
        v23 = (v22 + 4 * (*(a1 + 16) + v21 * v20));
        __B.realp = (v22 + 4 * v21 * v20);
        __B.imagp = v23;
        vDSP_zvmags(&__B, 1, *(a1 + 152), 1, v21);
        MEMORY[0x1E12BE7F0](*(a1 + 152), 1, *(a1 + 48), 1, *(a1 + 152), 1, *(a1 + 12));
        MEMORY[0x1E12BE5D0](*(a1 + 152), 1, *(a1 + 72), 1, *a3 + 4 * *(a1 + 12) * v20++, 1);
      }

      while (v20 < *(a1 + 8));
    }
  }
}

void SumMixWatsonModelSV::~SumMixWatsonModelSV(SumMixWatsonModelSV *this)
{
  *this = &unk_1F5939BE0;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  CircularModelSV::~CircularModelSV(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5939BE0;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  CircularModelSV::~CircularModelSV(this);
}

void SumMixWatsonModelSV::UpdateNormConst(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, float a6)
{
  vKummerFirstKind(*a2, a2[1], *(a1 + 152), *(a1 + 96), *(a1 + 108), a5, a6);
  MEMORY[0x1E12BE940](*(a1 + 152), 1, a1 + 112, *(a1 + 72), 1, *(a1 + 12));
  vvlogf(*(a1 + 72), *(a1 + 72), (a1 + 104));
  MEMORY[0x1E12BE810](*(a1 + 72), 1, *(a1 + 72), 1, *(a1 + 12));

  JUMPOUT(0x1E12BE8A0);
}

void SumMixWatsonModelSV::UpdateNormConst(SumMixWatsonModelSV *this, float a2, double a3, double a4, float a5)
{
  KummerFirstKind(*(this + 24), *(this + 27), a2, a5);
  v6 = *(this + 30);
  __A = v6 - logf(v7 * *(this + 28));
  vDSP_vfill(&__A, *(this + 9), 1, *(this + 3));
}

void UniformModelSV::~UniformModelSV(UniformModelSV *this)
{
  CircularModelSV::~CircularModelSV(this);

  JUMPOUT(0x1E12BD160);
}

void UniformModelSV::UpdateNormConst(uint64_t a1)
{
  vDSP_vfill((a1 + 100), *(a1 + 48), 1, *(a1 + 12));
  v2 = *(a1 + 72);
  v3 = *(a1 + 12);

  vDSP_vfill((a1 + 96), v2, 1, v3);
}

void UniformModelSV::UpdateNormConst(UniformModelSV *this, float a2)
{
  vDSP_vfill(this + 25, *(this + 6), 1, *(this + 3));
  v3 = *(this + 9);
  v4 = *(this + 3);

  vDSP_vfill(this + 24, v3, 1, v4);
}

uint64_t GaussLSModelSV::GetValue(uint64_t a1, void *a2, void *a3)
{
  vDSP_vclr(*(a1 + 128), 1, (2 * *(a1 + 12)));
  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  __D.realp = *(a1 + 128);
  realp = __D.realp;
  __D.imagp = &__D.realp[v7];
  if (v8)
  {
    v9 = 0;
    do
    {
      __N = *(a1 + 12);
      v11 = *(a1 + 16) + __N * v9;
      v12 = (*a2 + 4 * v11);
      __B.realp = (*a2 + 4 * __N * v9);
      __B.imagp = v12;
      v13 = *(a1 + 24);
      __A.realp = (v13 + 4 * __N * v9);
      __A.imagp = (v13 + 4 * v11);
      vDSP_zvcma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
      ++v9;
    }

    while (v9 < *(a1 + 8));
    realp = *(a1 + 128);
    LODWORD(v7) = *(a1 + 12);
  }

  MEMORY[0x1E12BE7F0](realp, 1, realp, 1, realp, 1, (2 * v7));
  MEMORY[0x1E12BE5D0](*(a1 + 128), 1, *(a1 + 128) + 4 * *(a1 + 12), 1, *(a1 + 128), 1);
  vDSP_vclr(*(a1 + 152), 1, *(a1 + 12));
  if ((*(a1 + 8) & 0x7FFFFFFF) != 0)
  {
    v14 = 0;
    do
    {
      v15 = *a2 + 4 * *(a1 + 12) * v14;
      MEMORY[0x1E12BE780](v15, 1, v15, 1, *(a1 + 152), 1, *(a1 + 152), 1, *(a1 + 12));
      ++v14;
    }

    while (v14 < 2 * *(a1 + 8));
  }

  MEMORY[0x1E12BE9A0](*(a1 + 128), 1, *(a1 + 152), 1, *(a1 + 152), 1, *(a1 + 12));
  MEMORY[0x1E12BE7F0](*(a1 + 48), 1, *(a1 + 152), 1, *(a1 + 152), 1, *(a1 + 12));
  return MEMORY[0x1E12BE810](*(a1 + 152), 1, *a3, 1, *(a1 + 12));
}

void GaussLSModelSV::~GaussLSModelSV(GaussLSModelSV *this)
{
  *this = &unk_1F5939C70;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  CircularModelSV::~CircularModelSV(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5939C70;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  CircularModelSV::~CircularModelSV(this);
}

void SumMixGaussLSModelSV::GetValue(uint64_t a1, void *a2, float **a3)
{
  vDSP_vclr(*a3, 1, *(a1 + 16));
  if (*(a1 + 8))
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 12);
      v8 = *(a1 + 16);
      __C.realp = *(a1 + 128);
      __C.imagp = &__C.realp[v7];
      v9 = *(a1 + 24);
      __A.realp = (v9 + 4 * v7 * v6);
      __A.imagp = (v9 + 4 * (v8 + v7 * v6));
      vDSP_zvconj(&__A, 1, &__C, 1, v7);
      vDSP_zvneg(&__C, 1, &__C, 1, *(a1 + 12));
      vDSP_vclr(*(a1 + 176), 1, (2 * *(a1 + 16)));
      if (*(a1 + 8))
      {
        v10 = 0;
        do
        {
          v11 = *(a1 + 12);
          v12 = *(a1 + 24);
          v13 = *(a1 + 16) + v11 * v10;
          __B.realp = (v12 + 4 * v11 * v10);
          __B.imagp = (v12 + 4 * v13);
          v14 = *(a1 + 176);
          __D.realp = (v14 + 4 * v11 * v10);
          __D.imagp = (v14 + 4 * v13);
          vDSP_zvmul(&__C, 1, &__B, 1, &__D, 1, v11, 1);
          ++v10;
        }

        while (v10 < *(a1 + 8));
      }

      v15 = *(a1 + 176) + 4 * *(a1 + 12) * v6;
      MEMORY[0x1E12BE8A0](v15, 1, a1 + 96, v15, 1);
      vDSP_vclr(*(a1 + 152), 1, *(a1 + 12));
      if (*(a1 + 8))
      {
        v16 = 0;
        do
        {
          v17 = *(a1 + 12);
          v18 = *(a1 + 176);
          v19 = (v18 + 4 * (*(a1 + 16) + v17 * v16));
          __B.realp = (v18 + 4 * v17 * v16);
          __B.imagp = v19;
          vDSP_zvmgsa(&__B, 1, *(a1 + 152), 1, *(a1 + 152), 1, v17);
          ++v16;
        }

        while (v16 < *(a1 + 8));
      }

      v39 = 2.2204e-16;
      vDSP_vthr(*(a1 + 152), 1, &v39, *(a1 + 152), 1, *(a1 + 12));
      vDSP_svdiv((a1 + 96), *(a1 + 152), 1, *(a1 + 152), 1, *(a1 + 12));
      if ((*(a1 + 8) & 0x7FFFFFFF) != 0)
      {
        v20 = 0;
        do
        {
          v21 = *(a1 + 176) + 4 * *(a1 + 12) * v20;
          MEMORY[0x1E12BE7F0](v21, 1, *(a1 + 152), 1, v21, 1);
          ++v20;
        }

        while (v20 < 2 * *(a1 + 8));
      }

      vDSP_vclr(*(a1 + 128), 1, (2 * *(a1 + 12)));
      v23 = *(a1 + 8);
      v22 = *(a1 + 12);
      v24 = (*(a1 + 128) + 4 * v22);
      __B.realp = *(a1 + 128);
      __B.imagp = v24;
      if (v23)
      {
        v25 = 0;
        do
        {
          __N = *(a1 + 12);
          v27 = *(a1 + 16) + __N * v25;
          v28 = (*a2 + 4 * v27);
          __D.realp = (*a2 + 4 * __N * v25);
          __D.imagp = v28;
          v29 = *(a1 + 176);
          v38.realp = (v29 + 4 * __N * v25);
          v38.imagp = (v29 + 4 * v27);
          vDSP_zvcma(&v38, 1, &__D, 1, &__B, 1, &__B, 1, __N);
          ++v25;
        }

        while (v25 < *(a1 + 8));
        v22 = *(a1 + 12);
      }

      vDSP_zvneg(&__B, 1, &__B, 1, v22);
      vDSP_zrvmul(&__B, 1, *(a1 + 152), 1, &__B, 1, *(a1 + 12));
      vDSP_vclr(*(a1 + 152), 1, *(a1 + 12));
      v31 = *(a1 + 8);
      v30 = *(a1 + 12);
      __D.realp = *(a1 + 200);
      __D.imagp = &__D.realp[v30];
      if (v31)
      {
        v32 = 0;
        do
        {
          v33 = *(a1 + 12);
          v34 = *(a1 + 16) + v33 * v32;
          v35 = (*a2 + 4 * v34);
          v38.realp = (*a2 + 4 * v33 * v32);
          v38.imagp = v35;
          v36 = *(a1 + 176);
          v37.realp = (v36 + 4 * v33 * v32);
          v37.imagp = (v36 + 4 * v34);
          vDSP_zvma(&__B, 1, &v37, 1, &v38, 1, &__D, 1, v33);
          vDSP_zvmgsa(&__D, 1, *(a1 + 152), 1, *(a1 + 152), 1, *(a1 + 12));
          ++v32;
        }

        while (v32 < *(a1 + 8));
        v30 = *(a1 + 12);
      }

      MEMORY[0x1E12BE7F0](*(a1 + 48), 1, *(a1 + 152), 1, *(a1 + 152), 1, v30);
      MEMORY[0x1E12BE810](*(a1 + 152), 1, &(*a3)[*(a1 + 12) * v6++], 1);
    }

    while (v6 < *(a1 + 8));
  }
}

void SumMixGaussLSModelSV::~SumMixGaussLSModelSV(SumMixGaussLSModelSV *this)
{
  *this = &unk_1F5939CB8;
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

  CircularModelSV::~CircularModelSV(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5939CB8;
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

  CircularModelSV::~CircularModelSV(this);
}

float SumMixGaussLSModelSV::UpdateNormConst(float **this, float a2)
{
  __A = -a2;
  vDSP_vfill(&__A, this[9], 1, *(this + 3));
  return result;
}

uint64_t complementaryModelType(unsigned int a1)
{
  if (a1 >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unknown input parameter!");
  }

  return dword_1DE09F68C[a1];
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

void CircularModelDOA::SetTargetDOA(CircularModelDOA *this, float a2, float a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  *(this + 3) = a2;
  if (fabsf(a3) <= 90.0)
  {
    *(this + 4) = a3;
    goto LABEL_11;
  }

  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v7 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 4);
    v11 = 136315906;
    v12 = "CircularModels.cpp";
    v13 = 1024;
    v14 = 143;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CircularModels: Target elevation not set to (%f), it remains at the current value (%f). Elevation should be in range [-90, 90].\n", &v11, 0x26u);
  }

LABEL_11:
  if (a4 >= 0.0)
  {
    *(this + 5) = a4;
    return;
  }

  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v9 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(this + 5);
    v11 = 136315906;
    v12 = "CircularModels.cpp";
    v13 = 1024;
    v14 = 159;
    v15 = 2048;
    v16 = a4;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CircularModels: Target distance not set to (%f), it remains at the current value (%f). Distance must be nonnegative.\n", &v11, 0x26u);
  }
}

void CircularModelSV::SetTargetSV(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  v8 = a1 + 24;
  v7 = *(a1 + 24);
  if (v6 == *(v8 + 8) - v7)
  {

    memcpy(v7, v4, v6);
  }

  else
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v9 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (*(a2 + 8) - *a2) >> 2;
      v11 = (*(a1 + 32) - *(a1 + 24)) >> 2;
      v12 = 136315906;
      v13 = "CircularModels.cpp";
      v14 = 1024;
      v15 = 487;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CircularModels: TargetSV not set. Input length (%lu) and internal length (%lu) do not match.\n", &v12, 0x26u);
    }
  }
}

uint64_t AUNeuralNetVADV2::ValidFormat(AUNeuralNetVADV2 *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 32 && a4->mFormatID == 1819304813)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2)
  {
    v6 = a4->mChannelsPerFrame >= 2;
  }

  else
  {
    if (a2 != 1)
    {
      return result;
    }

    v6 = a4->mChannelsPerFrame >= 3;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t AUNeuralNetVADV2::SupportedNumChannels(AUNeuralNetVADV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUNeuralNetVADV2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

uint64_t AUNeuralNetVADV2::CopyClumpName(AUNeuralNetVADV2 *this, int a2, int a3, unsigned int a4, const __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if ((a3 - 1) > 1)
  {
    return 4294956418;
  }

  result = 0;
  *a5 = kAUNeuralNetVADV2ClumpNamesPtr[a3];
  return result;
}

uint64_t AUNeuralNetVADV2::GetParameterValueStrings(AUNeuralNetVADV2 *this, int a2, int a3, const __CFArray **a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 9)
  {
    v8 = xmmword_1E8669390;
    v9 = *off_1E86693A0;
    v6 = CFArrayCreate(0, &v8, 4, 0);
  }

  else
  {
    if (a3 == 10)
    {
      values = 0;
      v11 = 0;
      v12 = 0;
      *(&v8 + 1) = 0;
      *&v9 = 0;
      *&v8 = &v8 + 8;
      operator new();
    }

    *&v8 = @"Parameter Name Unimplemented";
    v6 = CFArrayCreate(0, &v8, 1, 0);
  }

  v7 = v6;
  result = 0;
  *a4 = v7;
  return result;
}

void std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*a1);
    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(a1[1]);

    operator delete(a1);
  }
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

uint64_t AUNeuralNetVADV2::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v4 = ausdk::AUBase::RestoreState(this, a2);
  if (!v4)
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(a2, @"auversion");
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) && valuePtr == 67072)
      {
        *(this + 688) = 1;
      }
    }
  }

  return v4;
}

uint64_t AUNeuralNetVADV2::SaveState(AUNeuralNetVADV2 *this, ausdk **a2)
{
  ausdk::AUBase::SaveState(this, a2);
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      valuePtr = 67072;
      v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v3, @"auversion", v4);
      CFRelease(v4);
    }
  }

  return 0;
}

uint64_t AUNeuralNetVADV2::GetParameterInfo(AUNeuralNetVADV2 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  if (a3 > 0xF)
  {
    return 4294956418;
  }

  v6 = off_1E8669468[a3];
  v7 = dword_1DE09F6A8[a3];
  v8 = dword_1DE09F6E8[a3];
  v9 = flt_1DE09F728[a3];
  v10 = flt_1DE09F768[a3];
  v11 = flt_1DE09F7A8[a3];
  v12 = dword_1DE09F7E8[a3];
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

uint64_t AUNeuralNetVADV2::GetParameterList(AUNeuralNetVADV2 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09BC70;
    *(a3 + 3) = xmmword_1DE09BC80;
  }

  result = 0;
  *a4 = 16;
  return result;
}

ausdk::AUInputElement *AUNeuralNetVADV2::Render(AUNeuralNetVADV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (Element && *(Element + 172))
  {
    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
    if (v10)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
    }

    if (result)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v12)
  {
    goto LABEL_15;
  }

  v15[0] = ausdk::AUIOElement::PrepareBuffer(v12, a4);
  if (v11)
  {
    return 0;
  }

  v13 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v13)
  {
LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v13 + 144))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v14 = *(v13 + 152) + 48;
  return (*(*this + 184))(this, a2, a4, 1, &v14, 1, v15);
}

uint64_t ausdk::AUScope::GetElement(ausdk::AUScope *this, unsigned int a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    return (*(*v3 + 32))();
  }

  v6 = this + 16;
  v5 = *(this + 2);
  if (a2 >= ((*(v6 + 1) - v5) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v5 + 8 * a2);
  }
}

void ausdk::Throw(ausdk *this)
{
  v1 = this;
  v4 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "throwing %d", v3, 8u);
  }

  exception = __cxa_allocate_exception(0x18uLL);
  ausdk::AUException::AUException(exception, v1);
}

ausdk *ausdk::AUIOElement::PrepareBuffer(ausdk::AUIOElement *this, unsigned int a2)
{
  if (*(this + 168) != 1)
  {
    ausdk::Throw(0xFFFFD59DLL);
  }

  result = ausdk::AUBufferList::PrepareBufferOrError((this + 144), this + 2, a2);
  if ((v3 & 1) == 0)
  {
    ausdk::Throw(result);
  }

  return result;
}

std::runtime_error *ausdk::AUException::AUException(std::runtime_error *this, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v10, "OSStatus ");
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v10, p_p, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(this, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  this->__vftable = &unk_1F593AD78;
  LODWORD(this[1].__vftable) = a2;
  return this;
}

void sub_1DDC271B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ausdk::AUException::~AUException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t ausdk::AUBase::RenderBus(ausdk::AUBase *this, unsigned int *a2, const AudioTimeStamp *a3)
{
  if (a3->mSampleTime == *(this + 34))
  {
    return 0;
  }

  v3 = *&a3->mSampleTime;
  v4 = *&a3->mRateScalar;
  v5 = *&a3->mSMPTETime.mHours;
  *(this + 19) = *&a3->mSMPTETime.mSubframes;
  *(this + 20) = v5;
  *(this + 17) = v3;
  *(this + 18) = v4;
  return (*(*this + 208))(this, a2);
}

uint64_t AUNeuralNetVADV2::ProcessMultipleBufferLists(AUNeuralNetVADV2 *this, unsigned int *a2, unsigned int a3, unsigned int a4, AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  *(&v109.mBytesPerFrame + 1) = *MEMORY[0x1E69E9840];
  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  if (*(this + 688) == 1)
  {
    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v12 & 1) == 0)
    {
      goto LABEL_83;
    }

    Parameter = ausdk::AUElement::GetParameter(v11, 7u);
    v14 = exp(Parameter * 0.115129255);
    *(this + 186) = v14;
    v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v16 & 1) == 0)
    {
      goto LABEL_83;
    }

    *(this + 190) = ausdk::AUElement::GetParameter(v15, 9u);
    v17 = *(this + 92);
    v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v19 & 1) == 0)
    {
      goto LABEL_83;
    }

    *(v17 + 24) = ausdk::AUElement::GetParameter(v18, 8u);
    v20 = *(this + 92);
    v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v22 & 1) == 0)
    {
      goto LABEL_83;
    }

    *(v20 + 12) = ausdk::AUElement::GetParameter(v21, 0xDu);
    v23 = *(this + 92);
    v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v25 & 1) == 0)
    {
      goto LABEL_83;
    }

    *(v23 + 36) = ausdk::AUElement::GetParameter(v24, 0xAu);
    v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v27 & 1) == 0)
    {
      goto LABEL_83;
    }

    v28 = ausdk::AUElement::GetParameter(v26, 0xAu);
    if (v28 == 2)
    {
      v37 = *(this + 87);
      v38 = *(this + 84);
      v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_83;
      }

      v41 = ausdk::AUElement::GetParameter(v39, 0xEu);
      v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_83;
      }

      v44 = v37;
      v45 = v44 / v38;
      v46 = ausdk::AUElement::GetParameter(v42, 0xFu);
      v47 = *(this + 92);
      v48 = expf(-1.0 / (v45 * v41));
      v49 = expf(-1.0 / (v45 * v46));
      *(v47 + 28) = v48;
      *(v47 + 32) = v49;
    }

    else if (v28 == 1)
    {
      v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_83;
      }

      v31 = ausdk::AUElement::GetParameter(v29, 0xBu);
      v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_83;
      }

      v34 = ausdk::AUElement::GetParameter(v32, 0xCu);
      v35 = *(this + 92);
      *(v35 + 16) = v31;
      *(v35 + 20) = v34;
    }

    *(this + 688) = 0;
  }

  v50 = *a5;
  if (*a5)
  {
    if (*(this + 156))
    {
      v51 = *(this + 79);
      if (v50->mNumberBuffers != *(v51 + 48))
      {
        CAAssertRtn();
        goto LABEL_85;
      }

      if (!v50->mNumberBuffers)
      {
        goto LABEL_28;
      }

      v52 = 0;
      p_mData = &v50->mBuffers[0].mData;
      v54 = (v51 + 64);
      do
      {
        v55 = *(v54 - 1);
        if (v55 != *(p_mData - 1))
        {
          CAAssertRtn();
          goto LABEL_83;
        }

        v57 = *v54;
        v54 += 2;
        v56 = v57;
        v58 = *p_mData;
        p_mData += 2;
        memcpy(v56, v58, v55);
        ++v52;
      }

      while (v52 < *(v51 + 48));
      if (*(this + 156))
      {
        v51 = *(this + 79);
LABEL_28:
        v59 = (v51 + 48);
        *a5 = v59;
        LOBYTE(v109.mSampleRate) = 0;
        Element = ausdk::AUScope::GetElement((this + 80), 0);
        if (Element)
        {
          AudioDSP::Utility::DetectNonFinites(0, v59, (Element + 80), &v109, v61);
          if (LOBYTE(v109.mSampleRate) == 1)
          {
            mNumberBuffers = (*a5)->mNumberBuffers;
            if (mNumberBuffers)
            {
              v64 = 0;
              v65 = 0;
              mBuffers = (*a5)->mBuffers;
              do
              {
                v67 = &mBuffers[v64];
                mDataByteSize = v67->mDataByteSize;
                if (mDataByteSize >= 4)
                {
                  v69 = mDataByteSize >> 2;
                  mData = v67->mData;
                  do
                  {
                    if ((*mData & 0x7FFFFFFFu) >= 0x7F800000)
                    {
                      *mData = 0;
                      ++v65;
                    }

                    ++mData;
                    --v69;
                  }

                  while (v69);
                }

                ++v64;
              }

              while (v64 != mNumberBuffers);
              v71 = v65;
            }

            else
            {
              v71 = 0;
            }

            v73 = _os_log_pack_size();
            message = caulk::deferred_logger::create_message(*(this + 97), v73 + 88, 16);
            if (message)
            {
              v75 = message;
              v76 = _os_log_pack_fill();
              *v76 = 134217984;
              *(v76 + 4) = v71;
              caulk::concurrent::messenger::enqueue(*(*(this + 97) + 16), v75);
            }
          }

          if (*(this + 713) != 1 || (*(this + 689) & 1) != 0)
          {
            AUNeuralNetVADV2::ProcessFuncCore(this, a3, *a5, v62);
            goto LABEL_50;
          }

          v82 = *(this + 179);
          if (v82 != 2)
          {
            if (v82 == 1)
            {
              BlockProcessor::Process(*(this + 90), a3, a5, a7);
            }

            goto LABEL_50;
          }

          BlockProcessorLowDelay::Process(*(this + 91), a3, a5, a7);
          v102 = *(this + 91);
          v103 = v102[22];
          v105 = v102[3];
          v104 = v102[4];
          v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v107)
          {
            v108 = 0.0;
            if (v103 + v104 >= v105)
            {
              v108 = 1.0;
            }

            ausdk::AUElement::SetParameter(v106, 1u, v108);
LABEL_50:
            v77 = *(this + 92);
            v78 = *(this + 189);
            v79 = *(v77 + 36);
            if (v79)
            {
              if (v79 == 1)
              {
                v78 = ((*(v77 + 16) + ((1.0 - *(v77 + 16)) * *(v77 + 4))) / ((1.0 - *(v77 + 20)) + (*(v77 + 20) * *(v77 + 4)))) * v78;
                goto LABEL_62;
              }

              if (v79 == 2)
              {
                v80 = *(v77 + 4);
                if (v80 >= v78)
                {
                  v81 = *(v77 + 32);
                }

                else
                {
                  v81 = *(v77 + 28);
                }

                v78 = ((1.0 - v81) * v78) + (v81 * v80);
                goto LABEL_62;
              }

              v78 = *(v77 + 4);
            }

            else
            {
LABEL_62:
              *(v77 + 4) = v78;
            }

            *v77 = v78 >= *(v77 + 24);
            v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v84)
            {
              ausdk::AUElement::SetParameter(v83, 6u, *(*(this + 92) + 4));
              LOBYTE(v85) = **(this + 92);
              v86 = v85;
              *(&v109.mSampleRate + 1) = v85;
              v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v88)
              {
                ausdk::AUElement::SetParameter(v87, 3u, v86);
                v89 = *(this + 92);
                if (*v89)
                {
                  v90 = 0;
                  v91 = 1;
                  goto LABEL_71;
                }

                v92 = *(v89 + 8);
                if (*(v89 + 1) == 1)
                {
                  *(v89 + 8) = ++v92;
                }

                v91 = 0;
                if (v92 > *(v89 + 12))
                {
                  v90 = 1;
LABEL_71:
                  *(v89 + 8) = 0;
                  *(v89 + 1) = v91;
                  v91 = v90;
                }

                *(v89 + 2) = v91;
                v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v95)
                {
                  LOBYTE(v94) = *(*(this + 92) + 1);
                  ausdk::AUElement::SetParameter(v93, 5u, v94);
                  v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v98)
                  {
                    LOBYTE(v97) = *(*(this + 92) + 2);
                    ausdk::AUElement::SetParameter(v96, 4u, v97);
                    v99 = *a5;
                    if ((*a5)->mNumberBuffers)
                    {
                      v100 = 0;
                      v101 = 16;
                      do
                      {
                        MEMORY[0x1E12BE940](*(&v99->mNumberBuffers + v101), 1, &v109.mSampleRate + 1, *(&(*a7)->mNumberBuffers + v101), 1, *(this + 173));
                        ++v100;
                        v99 = *a5;
                        v101 += 16;
                      }

                      while (v100 < (*a5)->mNumberBuffers);
                    }

                    return 0;
                  }
                }
              }
            }
          }

LABEL_83:
          abort();
        }

LABEL_85:
        ausdk::Throw(0xFFFFD583);
      }
    }

    ausdk::Throw(0xFFFFFFFFLL);
  }

  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v72 = getAUNeuralNetVADV2Log(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *(&v109.mSampleRate + 1) = 134217984;
    *(&v109.mSampleRate + 5) = this;
    _os_log_error_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_ERROR, "[%p] input not connected", &v109.mSampleRate + 1, 0xCu);
  }

  return 4294956420;
}

uint64_t ausdk::AUScope::GetElementOrError<ausdk::AUElement>(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    result = (*(*v3 + 32))(v3);
    if (!result)
    {
      return 4294956419;
    }
  }

  else
  {
    v6 = a1 + 16;
    v5 = *(a1 + 16);
    if (a2 >= ((*(v6 + 8) - v5) >> 3))
    {
      return 4294956419;
    }

    result = *(v5 + 8 * a2);
    if (!result)
    {
      return 4294956419;
    }
  }

  return result;
}

void ausdk::AUElement::SetParameter(ausdk::AUElement *this, unsigned int a2, float a3)
{
  ausdk::AUElement::SetParameterOrError(&v3, this, a3, a2, 0);
  if ((v4 & 1) == 0)
  {
    ausdk::Throw(v3);
  }
}

uint64_t AUNeuralNetVADV2::ProcessFuncCore(AUNeuralNetVADV2 *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*(this + 689) & 1) != 0 || (*(this + 560) & 1) == 0)
  {
    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v10)
    {
      ausdk::AUElement::SetParameter(v9, 2u, 1.0);
      v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v12)
      {
        ausdk::AUElement::SetParameter(v11, 6u, 1.0);
        v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v14)
        {
          ausdk::AUElement::SetParameter(v13, 3u, 1.0);
          v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v16)
          {
            ausdk::AUElement::SetParameter(v15, 5u, 1.0);
            v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v18)
            {
              v19 = 1.0;
              v20 = 4;
LABEL_14:
              ausdk::AUElement::SetParameter(v17, v20, v19);
              return 0;
            }
          }
        }
      }
    }

LABEL_39:
    abort();
  }

  if (*(this + 147) == a2)
  {
    v6 = 0;
    for (i = (a3 + 2); ; i += 2)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (v6 >= *(Element + 108))
      {
        break;
      }

      memcpy((*(this + 81) + 4 * (*(this + 147) * v6++)), *i, *(i - 1));
    }

    if (*(this + 186) != 1.0)
    {
      MEMORY[0x1E12BE940](*(this + 81), 1, this + 744, *(this + 81), 1, (*(this + 82) - *(this + 81)) >> 2);
    }

    v23 = (*(**(this + 66) + 72))(*(this + 66), this + 648);
    v24 = *(this + 190);
    if (v24 > 1)
    {
      if (v24 != 2)
      {
LABEL_26:
        *(this + 189) = (*v23)[*(this + 143) * *(this + 148) - 1];
        goto LABEL_29;
      }

      vDSP_meanv(*v23, 1, this + 189, (*(this + 143) * *(this + 148)));
    }

    else
    {
      if (v24)
      {
        if (v24 == 1)
        {
          vDSP_maxv(*v23, 1, this + 189, (*(this + 143) * *(this + 148)));
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      vDSP_minv(*v23, 1, this + 189, (*(this + 143) * *(this + 148)));
    }

LABEL_29:
    v25 = *(this + 189);
    if ((LODWORD(v25) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v25 = 0.0;
    }

    *(this + 189) = v25;
    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v26)
    {
      v19 = *(this + 189);
      v20 = 2;
      goto LABEL_14;
    }

    goto LABEL_39;
  }

  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v22 = getAUNeuralNetVADV2Log(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v27 = *(this + 147);
    caulk::string_from_4cc(&__p, a2);
    v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 134218498;
    v31 = this;
    v32 = 1024;
    v33 = v27;
    v34 = 2080;
    v35 = v28;
    _os_log_error_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "[%p] NeuralNet expects input block size %u, and we received %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 4294956422;
}

std::string *caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = bswap32(__val);
  v5 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    return std::to_string(retstr, __val);
  }

  v6 = 39;
  v4 = 39;
  return std::string::basic_string[abi:ne200100]<0>(retstr, &v4);
}

void sub_1DDC27E78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

os_log_t ___Z22getAUNeuralNetVADV2Logv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUNeuralNetVADV2");
  getAUNeuralNetVADV2Log(void)::gLog = result;
  return result;
}

float ausdk::AUElement::GetParameter(ausdk::AUElement *this, unsigned int a2)
{
  ausdk::AUElement::GetParameterOrError(&v3, this, a2);
  if ((v4 & 1) == 0)
  {
    ausdk::Throw(LODWORD(v3));
  }

  return v3;
}

uint64_t AUNeuralNetVADV2::SetParameter(AUNeuralNetVADV2 *this, unsigned int a2, int a3, float a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956418;
  }

  AUNeuralNetVADV2::GetParameterInfo(this, 0, a2, &v10);
  if ((v10.flags & 0x80000000) != 0)
  {
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v8, a2, a4);
    *(this + 688) = 1;
  }

  return 0;
}

uint64_t AUNeuralNetVADV2::SetProperty(AUNeuralNetVADV2 *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, int a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 <= 3699)
  {
    if (a2 == 21)
    {
      if (a6 == 4)
      {
        result = 0;
        *(this + 689) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if (a2 == 3697)
    {
      if ((*(this + 17) & 1) == 0)
      {
        result = 4294956445;
        if (!a5 || a6 != 8)
        {
          return result;
        }

        applesauce::CF::DictionaryRef::from_get(__p, *a5);
        v16 = *(this + 85);
        *(this + 85) = *__p;
        *__p = v16;
        applesauce::CF::DictionaryRef::~DictionaryRef(__p);
        *(this + 712) = 1;
        if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
        }

        v17 = getAUNeuralNetVADV2Log(void)::gLog;
        result = os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        *__p = 134217984;
        *&__p[4] = this;
        v18 = "[%p] Finished loading model plist";
        goto LABEL_59;
      }

      return 4294956447;
    }

    if (a2 != 3698)
    {
      return 4294956417;
    }

    if (*(this + 17))
    {
      return 4294956447;
    }

    if (a6 != 4)
    {
      return 4294956445;
    }

    v12 = *a5;
    if (*a5 <= 2u)
    {
      result = 0;
      *(this + 179) = v12;
      return result;
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v19 = getAUNeuralNetVADV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    *__p = 134218240;
    *&__p[4] = this;
    v25 = 1024;
    v26 = v12;
    v20 = "[%p] Received invalid block processor type value %u";
    v21 = v19;
    v22 = 18;
LABEL_62:
    _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, v20, __p, v22);
    return 4294956445;
  }

  if (a2 > 103799)
  {
    if (a2 != 103800)
    {
      if (a2 == 103801)
      {
        if (a6 == 4)
        {
          v13 = *a5;
          if ((*(this + 765) & 1) == 0)
          {
            *(this + 765) = 1;
          }

          result = 0;
          *(this + 764) = v13 != 0;
          return result;
        }

        return 4294956445;
      }

      return 4294956417;
    }

    if (a5 && a6 == 8)
    {
      if ((*(this + 17) & 1) == 0)
      {
        applesauce::CF::DictionaryRef::from_get(__p, *a5);
        v14 = *(this + 96);
        *(this + 96) = *__p;
        *__p = v14;
        applesauce::CF::DictionaryRef::~DictionaryRef(__p);
        return 0;
      }

      return 4294956447;
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v15 = getAUNeuralNetVADV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    *__p = 134217984;
    *&__p[4] = this;
    v20 = "[%p] The NeuralNetBNNSData_CF passed to SetProperty is not CFDictionaryRef type or it's null.";
    v21 = v15;
    v22 = 12;
    goto LABEL_62;
  }

  if (a2 == 3700)
  {
    return 4294956431;
  }

  if (a2 != 40000)
  {
    return 4294956417;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  if (a6 != 8)
  {
    return 4294956445;
  }

  if (!a5)
  {
    v23 = *(this + 84);
    *(this + 84) = 0;
    *__p = v23;
    applesauce::CF::StringRef::~StringRef(__p);
    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v17 = getAUNeuralNetVADV2Log(void)::gLog;
    result = os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *__p = 134217984;
    *&__p[4] = this;
    v18 = "[%p] ModelNetPathBaseOverride is set to null and thus removed";
LABEL_59:
    _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_INFO, v18, __p, 0xCu);
    return 0;
  }

  v8 = *a5;
  applesauce::CF::details::Retain<__CFString const*>(*a5);
  applesauce::CF::StringRef::StringRef(__p, v8);
  v9 = *(this + 84);
  *(this + 84) = *__p;
  *__p = v9;
  applesauce::CF::StringRef::~StringRef(__p);
  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v10 = getAUNeuralNetVADV2Log(void)::gLog;
  result = os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO);
  if (result)
  {
    applesauce::CF::convert_to<std::string,0>(__p, *(this + 84));
    if (v27 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    *buf = 134218242;
    v29 = this;
    v30 = 2080;
    v31 = v11;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_INFO, "[%p] ModelNetPathBase is overriden to %s", buf, 0x16u);
    if (v27 < 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  return result;
}

CFTypeRef applesauce::CF::details::Retain<__CFString const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

applesauce::CF::StringRef *applesauce::CF::StringRef::StringRef(applesauce::CF::StringRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_1DDC28534(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

_BYTE *applesauce::CF::convert_to<std::string,0>(_BYTE *a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DDC286C8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

_BYTE *applesauce::CF::details::CFString_get_value<true>(_BYTE *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(theString);
    maxBufLen = 0;
    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v7 = maxBufLen;
    if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (maxBufLen >= 0x17)
    {
      operator new();
    }

    a1[23] = maxBufLen;
    if (v7)
    {
      bzero(a1, v7);
    }

    a1[v7] = 0;
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v12.location = 0;
    v12.length = Length;
    return CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
  }
}

void sub_1DDC2886C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUNeuralNetVADV2::GetProperty(AUNeuralNetVADV2 *this, int a2, int a3, unsigned int a4, void *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 39999)
  {
    switch(a2)
    {
      case 40000:
        v9 = *(this + 84);
        if (v9)
        {
          CFRetain(*(this + 84));
        }

        break;
      case 103800:
        v9 = *(this + 96);
        if (v9)
        {
          CFRetain(*(this + 96));
        }

        break;
      case 103801:
        if (*(this + 765) == 1)
        {
          v8 = *(this + 764);
        }

        else
        {
          v8 = 0;
        }

        result = 0;
        goto LABEL_23;
      default:
        return result;
    }

    goto LABEL_20;
  }

  if (a2 != 21)
  {
    if (a2 != 3697)
    {
      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v8 = *(this + 376);
      goto LABEL_23;
    }

    v9 = *(this + 85);
    if (v9)
    {
      CFRetain(*(this + 85));
    }

LABEL_20:
    result = 0;
    *a5 = v9;
    return result;
  }

  result = 0;
  v8 = *(this + 689);
LABEL_23:
  *a5 = v8;
  return result;
}

uint64_t AUNeuralNetVADV2::GetPropertyInfo(AUNeuralNetVADV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (!a3)
  {
    v7 = 4;
    v8 = 1;
    v6 = 4294956417;
    if (a2 <= 3699)
    {
      if (a2 == 21)
      {
LABEL_17:
        v6 = 0;
        *a6 = v8;
        *a5 = v7;
        return v6;
      }

      if (a2 != 3697)
      {
        if (a2 != 3698)
        {
          return v6;
        }

        goto LABEL_16;
      }
    }

    else if (a2 > 103799)
    {
      if (a2 != 103800)
      {
        if (a2 != 103801)
        {
          return v6;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (a2 == 3700)
      {
LABEL_16:
        v8 = (*(this + 17) & 1) == 0;
        goto LABEL_17;
      }

      if (a2 != 40000)
      {
        return v6;
      }
    }

    v7 = 8;
    goto LABEL_16;
  }

  return 4294956417;
}

void AUNeuralNetVADV2::Cleanup(AUNeuralNetVADV2 *this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v2 = getAUNeuralNetVADV2Log(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v3 = 134217984;
    v4 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] AUNeuralNetVADV2: Resetting state variables. Cleanup() started.\n", &v3, 0xCu);
  }

  if (*(this + 712) == 1)
  {
    (*(**(this + 66) + 48))(*(this + 66));
  }
}

uint64_t AUNeuralNetVADV2::Initialize(AUNeuralNetVADV2 *this)
{
  v109 = *MEMORY[0x1E69E9840];
  *(this + 173) = *(this + 84);
  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v2 = getAUNeuralNetVADV2Log(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(this + 173);
    LODWORD(v106.mSampleRate) = 134218240;
    *(&v106.mSampleRate + 4) = this;
    LOWORD(v106.mFormatFlags) = 1024;
    *(&v106.mFormatFlags + 2) = v23;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%p] AU block size %u", &v106, 0x12u);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 96);
  *&v106.mSampleRate = *(Element + 80);
  *&v106.mBytesPerPacket = v4;
  *&v106.mBitsPerChannel = *(Element + 112);
  v5 = HIDWORD(v4);
  *(this + 176) = HIDWORD(v4);
  *(this + 87) = *&v106.mSampleRate;
  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v6 = getAUNeuralNetVADV2Log(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    buf = v106;
    CA::StreamDescription::AsString(&v107, &buf, v106.mSampleRate, *&v106.mBytesPerPacket);
    v24 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
    *v104 = 134218242;
    *&v104[4] = this;
    *&v104[12] = 2080;
    *&v104[14] = v24;
    _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "[%p] input format: %s", v104, 0x16u);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 176) >= 2u)
  {
    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v7 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v8 = bswap32(v5);
      *(&buf.mSampleRate + 1) = v8;
      if ((v8 - 32) > 0x5E || ((v8 >> 8) - 32) > 0x5E || ((v8 << 8 >> 24) - 32) > 0x5E || ((v8 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v107, v5);
      }

      else
      {
        strcpy(&buf.mSampleRate + 5, "'");
        LOBYTE(buf.mSampleRate) = 39;
        std::string::basic_string[abi:ne200100]<0>(&v107, &buf);
      }

      v58 = SHIBYTE(v107.__r_.__value_.__r.__words[2]);
      v59 = v107.__r_.__value_.__r.__words[0];
      std::to_string(v104, 1u);
      v60 = &v107;
      if (v58 < 0)
      {
        v60 = v59;
      }

      if (v104[23] >= 0)
      {
        v61 = v104;
      }

      else
      {
        v61 = *v104;
      }

      LODWORD(buf.mSampleRate) = 134218498;
      *(&buf.mSampleRate + 4) = this;
      LOWORD(buf.mFormatFlags) = 2080;
      *(&buf.mFormatFlags + 2) = v60;
      HIWORD(buf.mFramesPerPacket) = 2080;
      *&buf.mBytesPerFrame = v61;
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "[%p] input format has %s channels, which is more than the max number of %s", &buf, 0x20u);
      if ((v104[23] & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v17 = *v104;
      goto LABEL_139;
    }

    return 4294956421;
  }

  v9 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v9)
  {
    ausdk::Throw(0xFFFFD583);
  }

  *v104 = *(v9 + 80);
  *&v104[12] = *(v9 + 92);
  v10 = *(v9 + 108);
  v11 = *(v9 + 112);
  *(this + 177) = v10;
  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v12 = getAUNeuralNetVADV2Log(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *&buf.mSampleRate = *v104;
    *&buf.mFormatFlags = *&v104[12];
    buf.mChannelsPerFrame = v10;
    *&buf.mBitsPerChannel = v11;
    CA::StreamDescription::AsString(&v107, &buf, *&v104[12], v13);
    v57 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
    LODWORD(v103.__r_.__value_.__l.__data_) = 134218242;
    *(v103.__r_.__value_.__r.__words + 4) = this;
    WORD2(v103.__r_.__value_.__r.__words[1]) = 2080;
    *(&v103.__r_.__value_.__r.__words[1] + 6) = v57;
    _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "[%p] output format: %s", &v103, 0x16u);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 177) < 2u)
  {
    ausdk::AUBufferList::Allocate((this + 624), &v106, *(this + 173));
    v18 = ausdk::AUBufferList::PrepareBufferOrError((this + 624), &v106, *(this + 173));
    if ((v19 & 1) == 0)
    {
      ausdk::Throw(v18);
    }

    if (*(this + 712) != 1)
    {
      goto LABEL_214;
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v20 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.mSampleRate) = 134217984;
      *(&buf.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_INFO, "[%p] Creating NeuralNet model", &buf, 0xCu);
    }

    v21 = *(this + 85);
    if (v21)
    {
      CFRetain(*(this + 85));
      CFRetain(v21);
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (*(this + 84) || *(this + 96) || (MutableCopy = v21, *(this + 765) == 1))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v22);
      if (*(this + 84))
      {
        if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
        }

        v26 = getAUNeuralNetVADV2Log(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
        {
          v27 = *(this + 84);
          if (!v27)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          applesauce::CF::convert_to<std::string,0>(&v107, v27);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v107;
          }

          else
          {
            v28 = v107.__r_.__value_.__r.__words[0];
          }

          LODWORD(v103.__r_.__value_.__l.__data_) = 134218242;
          *(v103.__r_.__value_.__r.__words + 4) = this;
          WORD2(v103.__r_.__value_.__r.__words[1]) = 2080;
          *(&v103.__r_.__value_.__r.__words[1] + 6) = v28;
          _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_INFO, "[%p] override 'ModelNetPathBaseOverride' to %s", &v103, 0x16u);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }
        }

        CFDictionarySetValue(MutableCopy, @"ModelNetPathBase", *(this + 84));
      }

      if (*(this + 96))
      {
        if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
        }

        v29 = getAUNeuralNetVADV2Log(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
        {
          LODWORD(v107.__r_.__value_.__l.__data_) = 134217984;
          *(v107.__r_.__value_.__r.__words + 4) = this;
          _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_INFO, "[%p] set 'mModelNetBNNSData'", &v107, 0xCu);
        }

        CFDictionarySetValue(MutableCopy, @"bnnsdict", *(this + 96));
      }

      if (*(this + 765) == 1)
      {
        if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
        }

        v30 = getAUNeuralNetVADV2Log(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
        {
          if ((*(this + 765) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v31 = "false";
          if (*(this + 764))
          {
            v31 = "true";
          }

          LODWORD(v107.__r_.__value_.__l.__data_) = 134218242;
          *(v107.__r_.__value_.__r.__words + 4) = this;
          WORD2(v107.__r_.__value_.__r.__words[1]) = 2080;
          *(&v107.__r_.__value_.__r.__words[1] + 6) = v31;
          _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_INFO, "[%p] set 'mEnableImplementationCache' to %s", &v107, 0x16u);
        }

        if ((*(this + 765) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v32 = MEMORY[0x1E695E4D0];
        if (!*(this + 764))
        {
          v32 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(MutableCopy, @"CacheImplementation", *v32);
      }

      v107.__r_.__value_.__r.__words[0] = MutableCopy;
      if (MutableCopy)
      {
        v33 = CFGetTypeID(MutableCopy);
        if (v33 != CFDictionaryGetTypeID())
        {
          v96 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v96, "Could not construct");
        }
      }

      v107.__r_.__value_.__r.__words[0] = v21;
      if (v21)
      {
        CFRelease(v21);
      }
    }

    v34.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (AUNeuralNetVADV2LogScope(void)::once != -1)
    {
      dispatch_once(&AUNeuralNetVADV2LogScope(void)::once, &__block_literal_global_56);
    }

    NeuralNet::NeuralNet(&v107, MutableCopy, AUNeuralNetVADV2LogScope(void)::scope);
    v35.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v36 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
    {
      LODWORD(v103.__r_.__value_.__l.__data_) = 134218240;
      *(v103.__r_.__value_.__r.__words + 4) = this;
      WORD2(v103.__r_.__value_.__r.__words[1]) = 2048;
      *(&v103.__r_.__value_.__r.__words[1] + 6) = (v35.__d_.__rep_ - v34.__d_.__rep_) / 1000000;
      _os_log_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_INFO, "[%p] created NeuralNet instance in %lld milliseconds", &v103, 0x16u);
    }

    *&buf.mSampleRate = v107;
    *&buf.mBytesPerFrame = v108;
    v107.__r_.__value_.__r.__words[0] = 0;
    v108 = 0;
    LOBYTE(buf.mBitsPerChannel) = 1;
    NeuralNet::~NeuralNet(&v107);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    std::__optional_storage_base<NeuralNet,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<NeuralNet,false>>((this + 528), &buf);
    if (LOBYTE(buf.mBitsPerChannel) == 1)
    {
      NeuralNet::~NeuralNet(&buf);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if ((*(this + 560) & 1) == 0)
    {
      return 4294956421;
    }

    v37 = *(this + 85);
    Value = CFDictionaryGetValue(v37, @"SampleRate");
    if (!CFNumberGetValue(Value, kCFNumberFloat64Type, this + 576))
    {
      v97 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve sample rate. err = %d", &buf, 4294900555);
      std::runtime_error::runtime_error(v97, &buf);
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v39 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v40 = *(this + 72);
      LODWORD(buf.mSampleRate) = 134218240;
      *(&buf.mSampleRate + 4) = this;
      LOWORD(buf.mFormatFlags) = 2048;
      *(&buf.mFormatFlags + 2) = v40;
      _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved sample rate %g Hz.", &buf, 0x16u);
    }

    v41 = CFDictionaryGetValue(v37, @"NumberOfInputChannels");
    if (!CFNumberGetValue(v41, kCFNumberIntType, this + 568))
    {
      v98 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve number of input channels. err = %d", &buf, 4294900555);
      std::runtime_error::runtime_error(v98, &buf);
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v42 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v43 = *(this + 142);
      LODWORD(buf.mSampleRate) = 134218240;
      *(&buf.mSampleRate + 4) = this;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = v43;
      _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved number of input channels %u.", &buf, 0x12u);
    }

    v44 = CFDictionaryGetValue(v37, @"NumberOfOutputChannels");
    if (!CFNumberGetValue(v44, kCFNumberIntType, this + 572))
    {
      v99 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve number of output channels. err = %d", &buf, 4294900555);
      std::runtime_error::runtime_error(v99, &buf);
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v45 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v46 = *(this + 143);
      LODWORD(buf.mSampleRate) = 134218240;
      *(&buf.mSampleRate + 4) = this;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = v46;
      _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved number of output channels %u.", &buf, 0x12u);
    }

    v47 = CFDictionaryGetValue(v37, @"LookaheadSize");
    if (!CFNumberGetValue(v47, kCFNumberIntType, this + 584))
    {
      v100 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve lookahead size. err = %d", &buf, 4294900555);
      std::runtime_error::runtime_error(v100, &buf);
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v48 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v49 = *(this + 146);
      LODWORD(buf.mSampleRate) = 134218240;
      *(&buf.mSampleRate + 4) = this;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = v49;
      _os_log_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved lookahead size %u.", &buf, 0x12u);
    }

    v50 = CFDictionaryGetValue(v37, @"BlockSize");
    v51 = (this + 588);
    if (!CFNumberGetValue(v50, kCFNumberIntType, this + 588))
    {
      v101 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("Failed to retrieve block size. err = %d", &buf, 4294900555);
      std::runtime_error::runtime_error(v101, &buf);
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v52 = getAUNeuralNetVADV2Log(void)::gLog;
    if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
    {
      v53 = *(this + 147);
      LODWORD(buf.mSampleRate) = 134218240;
      *(&buf.mSampleRate + 4) = this;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = v53;
      _os_log_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_INFO, "[%p] Successfully retrieved block size %u.", &buf, 0x12u);
    }

    v54 = CFDictionaryGetValue(v37, @"TaskID");
    v55 = v54;
    if (v54)
    {
      CFRetain(v54);
      v107.__r_.__value_.__r.__words[0] = v55;
      applesauce::CF::convert_to<std::string,0>(&buf, v55);
      v56 = (this + 600);
      if (*(this + 623) < 0)
      {
        operator delete(*v56);
      }

      *v56 = *&buf.mSampleRate;
      *(this + 77) = *&buf.mBytesPerPacket;
    }

    else
    {
      v107.__r_.__value_.__r.__words[0] = 0;
      if (*(this + 623) < 0)
      {
        *(this + 76) = 3;
        v63 = *(this + 75);
      }

      else
      {
        v63 = (this + 600);
        *(this + 623) = 3;
      }

      *v63 = 4271950;
      if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
      }

      v64 = getAUNeuralNetVADV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
      {
LABEL_152:
        v65 = getAUNeuralNetVADV2Log(void)::gLog;
        if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
        {
          v66 = (this + 600);
          if (*(this + 623) < 0)
          {
            v66 = *v66;
          }

          LODWORD(buf.mSampleRate) = 134218242;
          *(&buf.mSampleRate + 4) = this;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = v66;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "[%p] TaskID set to (%s).", &buf, 0x16u);
        }

        if (v55)
        {
          CFRelease(v55);
        }

        *(this + 148) = (*(**(this + 66) + 32))(*(this + 66)) / *(this + 143);
        if ((*(this + 560) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if ((*(**(this + 66) + 24))() == *v51 * *(this + 142))
        {
          if ((*(**(this + 66) + 32))(*(this + 66)) == *(this + 148) * *(this + 143))
          {
            mSampleRate = v106.mSampleRate;
            if (v106.mSampleRate != *(this + 72))
            {
              if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
              }

              v68 = getAUNeuralNetVADV2Log(void)::gLog;
              if (!os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_173;
              }

              v69 = *(this + 72);
              LODWORD(buf.mSampleRate) = 134218496;
              *(&buf.mSampleRate + 4) = this;
              LOWORD(buf.mFormatFlags) = 2048;
              *(&buf.mFormatFlags + 2) = mSampleRate;
              HIWORD(buf.mFramesPerPacket) = 2048;
              *&buf.mBytesPerFrame = v69;
              v70 = "[%p] Current input sample rate (%g Hz) not matching NeuralNet sample rate (%g).";
              v71 = v68;
              v72 = 32;
LABEL_207:
              _os_log_error_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_ERROR, v70, &buf, v72);
              if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
              }

LABEL_173:
              v77 = getAUNeuralNetVADV2Log(void)::gLog;
              if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.mSampleRate) = 134218240;
                *(&buf.mSampleRate + 4) = this;
                LOWORD(buf.mFormatFlags) = 1024;
                *(&buf.mFormatFlags + 2) = -10875;
                _os_log_error_impl(&dword_1DDB85000, v77, OS_LOG_TYPE_ERROR, "[%p] Could not create NeuralNet model using the plist, exception %d", &buf, 0x12u);
              }

              return 4294956421;
            }

            if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
            }

            v78 = getAUNeuralNetVADV2Log(void)::gLog;
            if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
            {
              v93 = *(this + 142);
              v94 = *(this + 143);
              v95 = *(this + 147);
              LODWORD(buf.mSampleRate) = 134218752;
              *(&buf.mSampleRate + 4) = this;
              LOWORD(buf.mFormatFlags) = 1024;
              *(&buf.mFormatFlags + 2) = v93;
              HIWORD(buf.mBytesPerPacket) = 1024;
              buf.mFramesPerPacket = v94;
              LOWORD(buf.mBytesPerFrame) = 1024;
              *(&buf.mBytesPerFrame + 2) = v95;
              _os_log_debug_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_DEBUG, "[%p] NeuralNet is initialized with %u input channels, %u output channels, block size %u.", &buf, 0x1Eu);
            }

            if (*(this + 173) == *v51)
            {
              *(this + 713) = 0;
              if (*(this + 90))
              {
                std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 90, 0);
              }

              if (*(this + 91))
              {
                std::unique_ptr<BlockProcessorLowDelay>::reset[abi:ne200100](this + 91, 0);
              }
            }

            else
            {
              if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
              }

              v80 = getAUNeuralNetVADV2Log(void)::gLog;
              if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
              {
                caulk::string_from_4cc(&v107, *(this + 173));
                v81 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
                v82 = *(this + 147);
                LODWORD(buf.mSampleRate) = 134218498;
                *(&buf.mSampleRate + 4) = this;
                LOWORD(buf.mFormatFlags) = 2080;
                *(&buf.mFormatFlags + 2) = v81;
                HIWORD(buf.mFramesPerPacket) = 1024;
                buf.mBytesPerFrame = v82;
                _os_log_impl(&dword_1DDB85000, v80, OS_LOG_TYPE_INFO, "[%p] AU's block size %s not matching the NeuralNet's block size %u. Will use a reblocker", &buf, 0x1Cu);
                if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v107.__r_.__value_.__l.__data_);
                }
              }

              v83 = *(this + 179);
              if (*(this + 173) > *(this + 147) && v83 == 2)
              {
                *(this + 179) = 1;
                if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
                }

                v84 = getAUNeuralNetVADV2Log(void)::gLog;
                if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_INFO))
                {
                  caulk::string_from_4cc(&v107, *(this + 173));
                  v85 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
                  v86 = *(this + 147);
                  LODWORD(buf.mSampleRate) = 134218498;
                  *(&buf.mSampleRate + 4) = this;
                  LOWORD(buf.mFormatFlags) = 2080;
                  *(&buf.mFormatFlags + 2) = v85;
                  HIWORD(buf.mFramesPerPacket) = 1024;
                  buf.mBytesPerFrame = v86;
                  _os_log_impl(&dword_1DDB85000, v84, OS_LOG_TYPE_INFO, "[%p] Low Delay block processor not supported for process block size (%s) > Model block size (%u)", &buf, 0x1Cu);
                  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v107.__r_.__value_.__l.__data_);
                  }
                }
              }

              else
              {
                if (v83 == 2)
                {
                  v107.__r_.__value_.__r.__words[0] = this + 704;
                  v103.__r_.__value_.__r.__words[0] = this + 708;
                  std::make_unique[abi:ne200100]<BlockProcessorLowDelay,int,unsigned int *,int,unsigned int *,unsigned int &,unsigned int &,int (&)(void *,unsigned int,AudioBufferList const**,AudioBufferList**),AUNeuralNetVADV2 *,0>();
                }

                if (v83 == 1)
                {
                  v107.__r_.__value_.__r.__words[0] = this + 704;
                  v103.__r_.__value_.__r.__words[0] = this + 708;
                  std::make_unique[abi:ne200100]<BlockProcessor,int,unsigned int *,int,unsigned int *,unsigned int &,int (&)(void *,unsigned int,AudioBufferList const**,AudioBufferList**),AUNeuralNetVADV2 *,0>();
                }
              }

              v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v91 & 1) == 0)
              {
                abort();
              }

              ausdk::AUElement::SetParameter(v90, 0, *(this + 179));
            }

            v92 = (*(this + 147) * *(this + 176));
            LODWORD(buf.mSampleRate) = 0;
            std::vector<float>::assign(this + 81, v92, &buf, v79);
LABEL_214:
            operator new();
          }

          if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
          }

          v73 = getAUNeuralNetVADV2Log(void)::gLog;
          if (!os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_173;
          }

          v87 = (*(**(this + 66) + 32))(*(this + 66));
          v88 = *(this + 143);
          v89 = *(this + 148);
          LODWORD(buf.mSampleRate) = 134218752;
          *(&buf.mSampleRate + 4) = this;
          LOWORD(buf.mFormatFlags) = 2048;
          *(&buf.mFormatFlags + 2) = v87;
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = v88;
          LOWORD(buf.mChannelsPerFrame) = 1024;
          *(&buf.mChannelsPerFrame + 2) = v89;
          v70 = "[%p] NeuralNet output size (%zu) not matching configured number of output channels (%u) times number of outputs per block (%u).";
        }

        else
        {
          if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
          }

          v73 = getAUNeuralNetVADV2Log(void)::gLog;
          if (!os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_173;
          }

          v74 = (*(**(this + 66) + 24))(*(this + 66));
          v75 = *(this + 142);
          v76 = *(this + 147);
          LODWORD(buf.mSampleRate) = 134218752;
          *(&buf.mSampleRate + 4) = this;
          LOWORD(buf.mFormatFlags) = 2048;
          *(&buf.mFormatFlags + 2) = v74;
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = v75;
          LOWORD(buf.mChannelsPerFrame) = 1024;
          *(&buf.mChannelsPerFrame + 2) = v76;
          v70 = "[%p] NeuralNet input size (%zu) not matching configured number of input channels (%u) times block size (%u).";
        }

        v71 = v73;
        v72 = 34;
        goto LABEL_207;
      }

      LODWORD(buf.mSampleRate) = 134217984;
      *(&buf.mSampleRate + 4) = this;
      _os_log_impl(&dword_1DDB85000, v64, OS_LOG_TYPE_INFO, "[%p] TaskID not available in the plist.", &buf, 0xCu);
    }

    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    goto LABEL_152;
  }

  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  v14 = getAUNeuralNetVADV2Log(void)::gLog;
  if (os_log_type_enabled(getAUNeuralNetVADV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    caulk::string_from_4cc(&v107, v10);
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v107;
    }

    else
    {
      v15 = v107.__r_.__value_.__r.__words[0];
    }

    caulk::string_from_4cc(&v103, 1u);
    if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v103;
    }

    else
    {
      v16 = v103.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.mSampleRate) = 134218498;
    *(&buf.mSampleRate + 4) = this;
    LOWORD(buf.mFormatFlags) = 2080;
    *(&buf.mFormatFlags + 2) = v15;
    HIWORD(buf.mFramesPerPacket) = 2080;
    *&buf.mBytesPerFrame = v16;
    _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "[%p] output format has %s channels, which is more than the max number of %s", &buf, 0x20u);
    if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_140;
    }

    v17 = v103.__r_.__value_.__r.__words[0];
LABEL_139:
    operator delete(v17);
LABEL_140:
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }
  }

  return 4294956421;
}

void sub_1DDC2A4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t buf, int a25, __int16 a26, uint64_t a27, char a28, char a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v32);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a15);
  v38 = __cxa_begin_catch(exception_object);
  if (a2 == 2)
  {
    v39 = v38;
    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v40 = *(v34 + 3648);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = (*(*v39 + 16))(v39);
      *(v35 - 160) = 134218242;
      *(v33 + 52) = v31;
      *(v35 - 148) = 2080;
      *(v33 + 62) = v41;
      v42 = "[%p] NeuralNet initialization using plist in AUNeuralNet failed with runtime_error %s.";
      v43 = (v35 - 160);
      v44 = v40;
      v45 = 22;
LABEL_12:
      _os_log_error_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_ERROR, v42, v43, v45);
    }
  }

  else
  {
    if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
    }

    v46 = *(v34 + 3648);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *(v35 - 160) = 134217984;
      *(v33 + 52) = v31;
      v42 = "[%p] NeuralNet initialization using plist in AUNeuralNet failed with an unknown exception.";
      v43 = (v35 - 160);
      v44 = v46;
      v45 = 12;
      goto LABEL_12;
    }
  }

  __cxa_end_catch();
  LOBYTE(buf) = 0;
  LOBYTE(a30) = 0;
  JUMPOUT(0x1DDC2927CLL);
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    return;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v53 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v53;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      return;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v58.__r_.__value_.__s + 23) = 4;
    LODWORD(v58.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v58.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v56, v13, *&v14, &v58, *(a2 + 3));
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v58, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v56;
        }

        else
        {
          v31 = v56.__r_.__value_.__r.__words[0];
        }

        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v56.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v58, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v58.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v58, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v58;
        }

        else
        {
          v29 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v58.__r_.__value_.__l.__size_;
        }

        std::string::append(&v56, v29, v30);
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v56, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v58, *(a2 + 5));
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v56;
      }

      else
      {
        v31 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = "";
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = "";
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v58.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v40 = ", deinterleaved";
        }

        else
        {
          v40 = "";
        }

        v37 = "";
        v41 = "";
        goto LABEL_106;
      }
    }

    v36 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v39 = " signed";
      if ((v20 & 4) == 0)
      {
        v39 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v39;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v36 = 1;
      v37 = "";
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v37 = " big-endian";
      }

      else
      {
        v37 = " little-endian";
      }

      v38 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v38 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v38;
      }
    }

    v42 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v43 = 1;
    }

    else
    {
      v43 = *(a2 + 7);
    }

    if (v43)
    {
      v43 = 8 * (v21 / v43);
    }

    if (v43 == *(a2 + 8))
    {
      v58.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v44 = "";
      }

      else
      {
        v44 = "un";
      }

      snprintf(&v58, 0x20uLL, "%spacked in %u bytes", v44, v36);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v45 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v42 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v45 = 1;
    }

    else
    {
      v45 = v42;
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

LABEL_128:
    v46 = *(a2 + 8);
    v47 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v47 = " low-aligned";
    }

    if ((v46 & 7) == 0 && v45 == v46)
    {
      v41 = "";
    }

    else
    {
      v41 = v47;
    }

    if (v22)
    {
      v40 = ", deinterleaved";
    }

    else
    {
      v40 = "";
    }

    if (v58.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v55, __str, v37, v27, v26, v23, &v58, v41, v40);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v56;
      }

      else
      {
        v49 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v56.__r_.__value_.__l.__size_;
      }

      v51 = std::string::insert(&v55, 0, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v51->__r_.__value_.__l + 2);
      *this = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v55.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v41)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v54 = ", deinterleaved";
  }

  else
  {
    v54 = ", interleaved";
  }

  if (v9 == 1)
  {
    v54 = "";
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_1E8669408 + v12), v54);
}

void sub_1DDC2AF9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__optional_storage_base<NeuralNet,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<NeuralNet,false>>(NeuralNet *this, uint64_t *a2)
{
  if (*(this + 32) == *(a2 + 32))
  {
    if (*(this + 32))
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *this;
      *this = v4;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      result = *(a2 + 1);
      *(this + 8) = result;
      v7 = *(this + 3);
      *(this + 3) = a2[3];
      a2[3] = v7;
    }
  }

  else if (*(this + 32))
  {
    NeuralNet::~NeuralNet(this);
    *(this + 32) = 0;
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    *this = v8;
    result = *(a2 + 1);
    *(this + 8) = result;
    *(this + 3) = a2[3];
    a2[3] = 0;
    *(this + 32) = 1;
  }

  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
}

uint64_t *std::unique_ptr<BlockProcessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    BlockBuffer::~BlockBuffer((v2 + 24));
    BlockBuffer::~BlockBuffer(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<BlockProcessorLowDelay>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    BlockBuffer::~BlockBuffer((v2 + 48));
    BlockBuffer::~BlockBuffer((v2 + 24));
    BlockBuffer::~BlockBuffer(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void AUNeuralNetVADV2::~AUNeuralNetVADV2(AUNeuralNetVADV2 *this)
{
  AUNeuralNetVADV2::~AUNeuralNetVADV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591B4B0;
  std::unique_ptr<caulk::concurrent::messenger>::~unique_ptr[abi:ne200100](this + 99);
  v2 = *(this + 98);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 92);
  *(this + 92) = 0;
  if (v4)
  {
    MEMORY[0x1E12BD160](v4, 0x1000C405EC8D984);
  }

  std::unique_ptr<BlockProcessorLowDelay>::reset[abi:ne200100](this + 91, 0);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 90, 0);
  v5 = *(this + 85);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 84);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 81);
  if (v7)
  {
    *(this + 82) = v7;
    operator delete(v7);
  }

  if (*(this + 79))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 79) = 0;
  }

  *(this + 80) = 0;
  *(this + 156) = 0;
  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  if (*(this + 560) == 1)
  {
    NeuralNet::~NeuralNet((this + 528));
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t *std::unique_ptr<caulk::concurrent::messenger>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E12BC1E0]();
    MEMORY[0x1E12BD160](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t VPEchoGateBaseV3::Process(VPEchoGateBaseV3 *this, float a2, float a3, DSPSplitComplex *a4, DSPSplitComplex *a5, DSPSplitComplex *a6, const float *a7, const float *a8, const float *a9, const float *a10, const float *a11, float *a12)
{
  if (a4 && a5 && a6)
  {
    return (*(*this + 56))(this, a2, a3);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t VPEchoGateBaseV3::Initialize(VPEchoGateBaseV3 *this, int a2, const AudioStreamBasicDescription *a3)
{
  (*(*this + 48))(this);
  *(this + 2) = a2;
  v6 = *&a3->mBitsPerChannel;
  v7 = *&a3->mBytesPerPacket;
  *(this + 1) = *&a3->mSampleRate;
  *(this + 2) = v7;
  *(this + 6) = v6;
  return 0;
}

uint64_t VPEchoGateV3::ProcessBypass(VPEchoGateV3 *this, DSPSplitComplex *a2, float *a3)
{
  *(this + 736) = 1;
  if (a2 && a3)
  {
    v6 = *(this + 30);
    v7 = *(this + 72);
    v8 = &v6[4 * v7];
    memcpy(v6, a2->realp, v7);
    memcpy(v8, a2->imagp, *(this + 72));
    v10.realp = v6;
    v10.imagp = v8;
    if (*(this + 736) == 1)
    {
      if (*(this + 56))
      {
        memcpy(a3, v6, 4 * *(this + 17));
        memcpy(&a3[*(this + 17)], v8, 4 * *(this + 17));
      }

      else
      {
        MultiRadixRealFFT::RealOutOfPlaceInverseTransform(this + 31, &v10, *(this + 12));
        MEMORY[0x1E12BE7F0](*(this + 12), 1, *(this + 35), 1, *(this + 12), 1, *(this + 16));
        MEMORY[0x1E12BE5D0](*(this + 12), 1, *(this + 27), 1, *(this + 27), 1, *(this + 16));
        memcpy(a3, *(this + 27), 4 * *(this + 17));
        memmove(*(this + 27), (*(this + 27) + 4 * *(this + 17)), 4 * (*(this + 16) - *(this + 17)));
        bzero((*(this + 27) + 4 * (*(this + 16) - *(this + 17))), 4 * *(this + 17));
      }
    }
  }

  else
  {
    *(this + 736) = 0;
  }

  return 0;
}

uint64_t VPEchoGateV3::Initialize(VPEchoGateV3 *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4, char a5)
{
  v44 = *MEMORY[0x1E69E9840];
  (*(*this + 48))(this);
  (*(*this + 48))(this);
  *(this + 2) = a2;
  v9 = *&a4->mBitsPerChannel;
  v10 = *&a4->mBytesPerPacket;
  *(this + 1) = *&a4->mSampleRate;
  *(this + 2) = v10;
  *(this + 6) = v9;
  *(this + 56) = a5;
  v11 = (2 * a2);
  *(this + 16) = v11;
  *(this + 17) = a2;
  *(this + 15) = v11;
  *(this + 72) = a2 & 0x7FFFFFFF;
  EchoGateV3::myAllocABL((this + 16), v11, this + 80, v12);
  EchoGateV3::myAllocABL((this + 16), *(this + 15), this + 104, v13);
  EchoGateV3::myAllocABL((this + 16), *(this + 72), this + 128, v14);
  EchoGateV3::myAllocABL((this + 16), *(this + 72), this + 152, v15);
  EchoGateV3::myAllocABL((this + 16), *(this + 72), this + 176, v16);
  EchoGateV3::myAllocABL((this + 16), *(this + 16), this + 200, v17);
  v18 = (8 * *(this + 15));
  v19 = malloc_type_malloc(v18, 0x9CE3F651uLL);
  v20 = v19;
  if (!v19 && v18 || (bzero(v19, v18), *(this + 28) = v20, v21 = malloc_type_malloc(v18, 0x660FB190uLL), v22 = v21, v18) && !v21 || (bzero(v21, v18), *(this + 29) = v22, v23 = malloc_type_malloc(v18, 0x39BCF819uLL), v24 = v23, v18) && !v23 || (bzero(v23, v18), *(this + 30) = v24, v25 = *(this + 2), *(this + 18) = v25, v26 = *(this + 15), v27 = malloc_type_malloc(4 * v26, 0xAA637C48uLL), v28 = v27, v26) && !v27)
  {
    exception = __cxa_allocate_exception(8uLL);
    v35 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v27, 4 * v26);
  *(this + 35) = v28;
  CreateMagicalWindow(v28, *(this + 16));
  v29 = MultiRadixRealFFT::Initialize((this + 248), *(this + 15));
  if (!v29)
  {
    operator new[]();
  }

  v30 = v29;
  if (VPEchoGateV3LogScope(void)::once != -1)
  {
    dispatch_once(&VPEchoGateV3LogScope(void)::once, &__block_literal_global_139);
  }

  if (VPEchoGateV3LogScope(void)::scope)
  {
    v31 = *VPEchoGateV3LogScope(void)::scope;
    if (!*VPEchoGateV3LogScope(void)::scope)
    {
      return v30;
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = *(this + 15);
    *buf = 136315906;
    v37 = "vpEchoGateV3.cpp";
    v38 = 1024;
    v39 = 420;
    v40 = 1024;
    v41 = v30;
    v42 = 1024;
    v43 = v32;
    _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d _vp: gate: err %d initializing res fft to %d", buf, 0x1Eu);
  }

  return v30;
}

void EchoGateV3::myAllocABL(EchoGateV3 *this, const AudioStreamBasicDescription *a2, uint64_t a3, AudioBufferList *a4)
{
  v5 = a2;
  v7 = *(a3 + 16);
  if (v7)
  {
    free(v7);
    *(a3 + 16) = 0;
  }

  *a3 = 1;
  v8 = (*(this + 6) * v5);
  *(a3 + 8) = *(this + 7);
  *(a3 + 12) = v8;
  v9 = malloc_type_malloc(v8, 0xE42E8ECuLL);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
  }

  v11 = v9;
  bzero(v9, v8);
  *(a3 + 16) = v11;
}

uint64_t VPEchoGateV3::ProcessInternal(VPEchoGateV3 *this, float a2, float a3, DSPSplitComplex *a4, DSPSplitComplex *a5, DSPSplitComplex *a6, const float *a7, const float *a8, const float *a9, const float *a10, const float *a11, float *a12)
{
  v405 = *MEMORY[0x1E69E9840];
  v395 = *(this + 15);
  *(this + 79) = a2;
  v389 = (this + 320);
  v391 = (this + 1212);
  *(this + 80) = a3;
  *(this + 736) = a12 != 0;
  *(this + 737) = a8 != 0;
  v16 = *(this + 72);
  v18 = *(this + 28);
  v17 = *(this + 29);
  v19 = &v18[v16];
  v404.realp = v18;
  v404.imagp = v19;
  v20 = &v17[v16];
  v402.realp = v17;
  v402.imagp = v20;
  v21 = *(this + 30);
  v22 = &v21[v16];
  __A.realp = v21;
  __A.imagp = v22;
  MEMORY[0x1E12BE940](a4->realp, 1, &v395, v18, 1);
  MEMORY[0x1E12BE940](a4->imagp, 1, &v395, v19, 1, *(this + 72));
  MEMORY[0x1E12BE940](a6->realp, 1, &v395, v17, 1, *(this + 72));
  MEMORY[0x1E12BE940](a6->imagp, 1, &v395, v20, 1, *(this + 72));
  MEMORY[0x1E12BE940](a5->realp, 1, &v395, v21, 1, *(this + 72));
  MEMORY[0x1E12BE940](a5->imagp, 1, &v395, v22, 1, *(this + 72));
  if (*(this + 1440) == 1)
  {
    v23 = *(this + 179);
    if (v23)
    {
      v24 = a7;
      if (!a7)
      {
        v24 = v18;
      }

      v366 = v24;
      v23(*(this + 177), this + 312, this + 316, v389, v21, v22, v17, v20);
    }
  }

  __src = *(this + 1160);
  v394 = __src;
  __B = 0;
  v397 = 0.0;
  ++*(this + 348);
  v25 = v391[46];
  v26 = *(this + 397);
  if (*(this + 1492) == 1)
  {
    if (*(this + 1493) == 1)
    {
      v370 = 0;
      v25 = *(this + 1592);
      v26 = *(this + 400);
    }

    else
    {
      v375 = v391[46];
      __C[0] = 0.0;
      vDSP_svesq(*(this + 181), 1, __C, *(this + 369));
      v27 = log10((__C[0] / *(this + 369)) + 0.01) * 10.0;
      v28 = v27 - *(this + 372);
      if (v28 <= 0.0)
      {
        v25 = v375;
      }

      else
      {
        v29 = powf(fminf(v28 / *(this + 370), 1.0), *(this + 371));
        v25 = vmla_n_f32(v375, vsub_f32(*(this + 1592), v375), v29);
        v26 = v26 + (v29 * (*(this + 400) - v26));
      }

      v370 = v28 > 0.0;
    }
  }

  else
  {
    v370 = 0;
  }

  *(this + 302) = *(this + 394) + 0.0;
  *(this + 301) = v26 + 0.0;
  v376 = v25;
  *v391 = vadd_f32(v25, 0);
  v30 = *(this + 407);
  *(this + 78) = v30;
  v381 = *(this + 79);
  v31 = *(this + 351);
  v32 = *(this + 352);
  v387 = *(this + 349);
  v388 = *(this + 350);
  __C[0] = v387;
  __C[1] = v388;
  v372 = v31;
  __C[2] = v31;
  __C[3] = v32;
  if (*(this + 1440) == 1)
  {
    v33 = *(this + 178);
    if (v33)
    {
      v33(*(this + 177), __C, 16, 0);
    }
  }

  *__A.imagp = 0.0;
  *v402.imagp = 0.0;
  *v404.imagp = 0.0;
  v34 = *(this + 24);
  v35 = *(this + 18);
  v36 = *(this + 21);
  vDSP_zvmags(&__A, 1, v34, 1, *(this + 72));
  vDSP_zvmags(&v402, 1, v35, 1, *(this + 72));
  vDSP_zvmags(&v404, 1, v36, 1, *(this + 72));
  *(&__B + 1) = 1.0 / *(this + 73);
  MEMORY[0x1E12BE940](v34, 1, &__B + 4, v34, 1, *(this + 72));
  MEMORY[0x1E12BE940](v35, 1, &__B + 4, v35, 1, *(this + 72));
  MEMORY[0x1E12BE940](v36, 1, &__B + 4, v36, 1, *(this + 72));
  if (*(this + 737) == 1)
  {
    MEMORY[0x1E12BE990](a8, 1, *(this + 145), 1, *(this + 214));
  }

  *(this + 296) = 0;
  v37 = &unk_1DE096000;
  if (*(this + 411) == 0.0)
  {
    *(this + 94) = vdup_n_s32(0x3C23D70Au);
    goto LABEL_74;
  }

  v38 = *(this + 115);
  MEMORY[0x1E12BE7F0](*(this + 96), 1, v35, 1, *(this + 146), 1, *(this + 130));
  v39 = *(this + 130);
  if (*(this + 737) == 1)
  {
    if (v39 >= 1)
    {
      v40 = 0;
      v41 = *(this + 145);
      do
      {
        v42 = *(v41 + v40 * 4);
        if (v42 <= 0.0)
        {
          *&v38[v40 * 4] = 0;
          v43 = *(this + 146);
          v44 = 0.0;
        }

        else
        {
          v43 = v38;
          v44 = v34[v40] / v42;
        }

        *&v43[v40 * 4] = v44;
        ++v40;
      }

      while (v39 != v40);
    }
  }

  else
  {
    memcpy(v38, v34, 4 * v39);
    LODWORD(v39) = *(this + 130);
  }

  MEMORY[0x1E12BE7F0](*(this + 96), 1, v38, 1, v38, 1, v39);
  v45 = *(this + 130);
  v46 = v45 / 2;
  v399 = 0;
  if (v45 <= 1)
  {
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
  }

  else
  {
    VPEchoGateV3::GatecrossCorrSpec(v38, *(this + 97), *(this + 146), *(this + 98), *(this + 147), &v399 + 1, &v399, (v45 / 2), v366);
    v48 = *(&v399 + 1);
    v47 = *&v399;
    v49 = *(&v399 + 1) / (*&v399 + 1.0e-15);
    v45 = *(this + 130);
  }

  v401 = 0.0;
  v400 = 0.0;
  VPEchoGateV3::GatecrossCorrSpec(&v38[4 * v46], (*(this + 97) + 4 * v46), (*(this + 146) + 4 * v46), (*(this + 98) + 4 * v46), (*(this + 147) + 4 * v46), &v401, &v400, (v45 - v46), v366);
  v50 = (v401 + v48) / ((v400 + v47) + 1.0e-15);
  if (v50 <= (v401 / (v400 + 1.0e-15)))
  {
    v50 = v401 / (v400 + 1.0e-15);
  }

  if (v49 > v50)
  {
    v50 = v49;
  }

  *(this + 296) = 0;
  if (*(this + 415) == 1.0)
  {
    v51 = v50 < 0.0 || v50 > 0.8;
    if (v51)
    {
      *(this + 296) = 1;
      v52 = 0.0;
LABEL_44:
      *(this + 300) = v52 + *(this + 76);
      goto LABEL_46;
    }

    v52 = *(this + 300);
    if (v52 < 1200.0)
    {
      goto LABEL_44;
    }
  }

  LOBYTE(v51) = 0;
LABEL_46:
  if (v50 >= 0.0 || (*(this + 121) < 3000.0 ? (v53 = 1) : (v53 = v51), v54 = 0.5, (v53 & 1) == 0))
  {
    if (v50 >= -0.1)
    {
      v54 = 0.001;
      if (v50 >= 0.001)
      {
        v54 = 0.5;
        if (v50 <= 0.5)
        {
          goto LABEL_58;
        }

        if (*(this + 121) < 3000.0)
        {
          LOBYTE(v51) = 1;
        }

        if (!v51)
        {
LABEL_58:
          v54 = v50;
          if (v50 > 0.1)
          {
            v54 = 0.1;
          }
        }
      }
    }

    else
    {
      v54 = 0.1;
    }
  }

  if (v50 <= 0.0)
  {
    v55 = *(this + 185);
    v56 = *(this + 186);
    v57 = *(this + 187);
  }

  else
  {
    v55 = (*(this + 137) * *(this + 185)) + (*(this + 136) * v54);
    v56 = (*(this + 139) * *(this + 186)) + (*(this + 138) * v54);
    v57 = (*(this + 141) * *(this + 187)) + (*(this + 140) * v54);
  }

  if (v55 < 0.001)
  {
    v55 = 0.001;
  }

  *(this + 185) = v55;
  if (v56 < 0.001)
  {
    v56 = 0.001;
  }

  *(this + 186) = v56;
  if (v57 < 0.001)
  {
    v57 = 0.001;
  }

  *(this + 187) = v57;
  if (v56 <= v55)
  {
    v56 = v55;
  }

  if (v57 <= v56)
  {
    v57 = v56;
  }

  *(this + 188) = v57;
  *(this + 189) = v55;
  VPEchoGateV3::GatesmoothPowerSpectrum(*(this + 97), v38, *(this + 130), *(this + 190));
  VPEchoGateV3::GatesmoothPowerSpectrum(*(this + 98), *(this + 146), *(this + 130), *(this + 190));
LABEL_74:
  if (*(this + 415) != 0.0)
  {
    v58 = 0.0;
    if (*(this + 298) != *(this + 297) || (v58 = *(this + 299), v58 < 1200.0))
    {
      v58 = v58 + *(this + 76);
      *(this + 299) = v58;
    }

    if (*(this + 300) < 1000.0 && v58 < 1000.0 && *(this + 408) * *"" < (*(this + 121) + *(this + 121)))
    {
      *(this + 121) = 0;
    }
  }

  vDSP_sve(&v35[*(this + 129)], 1, this + 146, *(this + 130) - *(this + 129));
  vDSP_sve(&v36[*(this + 129)], 1, this + 122, *(this + 130) - *(this + 129));
  v59 = *(this + 143);
  *(this + 146) = *(this + 146) / v59;
  *(this + 122) = *(this + 122) / v59;
  if (*(this + 410) == 1 && *(this + 18) > 8000.0 && (v401 = 0.0, v400 = 0.0, vDSP_sve(&v35[*(this + 130)], 1, &v401, *(this + 131) - *(this + 130)), vDSP_sve(&v36[*(this + 130)], 1, &v400, *(this + 131) - *(this + 130)), v60 = *(this + 146), v59 = *(this + 143), v61 = *(this + 144), v62 = (v401 + (v60 * v59)) / v61, v62 > v60) && (v63 = *(this + 122), v64 = (v400 + (v63 * v59)) / v61, v64 > v63))
  {
    *(this + 146) = v62;
    *(this + 122) = v64;
    v65 = *(this + 131);
    v386 = 1;
    v59 = v61;
    v66 = v65;
  }

  else
  {
    v386 = 0;
    v66 = *(this + 130);
    v65 = *(this + 128);
    v61 = *(this + 142);
  }

  if (*(this + 737) == 1)
  {
    MEMORY[0x1E12BE7F0](v35, 1, *(this + 145), 1, v35, 1, v66);
    if (*(this + 234))
    {
      MEMORY[0x1E12BE7F0](a11, 1, *(this + 145), 1, *(this + 118), 1, v66);
    }
  }

  vDSP_sve(&v35[*(this + 129)], 1, this + 157, v66 - *(this + 129));
  v384 = *(this + 157) / v59;
  *(this + 157) = v384;
  v67 = *(this + 129);
  v68 = v65 - v67;
  if (*(this + 411) == 0.0)
  {
    v71 = &v34[v67];
    v72 = v68;
    v73 = (this + 580);
  }

  else
  {
    v69 = *(this + 234);
    if (v69 == 4 || v69 == 2)
    {
      memcpy(*(this + 146), *(this + 118), 4 * *(this + 2));
      v68 = v68;
    }

    else
    {
      v70 = &v35[v67];
      if (v69)
      {
        v68 = v68;
        MEMORY[0x1E12BE940](v70, 1, this + 756, *(this + 146) + 4 * v67, 1, v68);
        if ((*(this + 234) | 2) == 3)
        {
          vDSP_vmax((*(this + 146) + 4 * *(this + 129)), 1, (*(this + 118) + 4 * *(this + 129)), 1, (*(this + 146) + 4 * *(this + 129)), 1, v68);
        }
      }

      else
      {
        MEMORY[0x1E12BE940](v70, 1, this + 756, *(this + 146) + 4 * v67, 1, v65 - v67);
      }
    }

    LODWORD(__B) = 0;
    v74 = *(this + 129);
    v75 = (*(this + 145) + 4 * v74);
    MEMORY[0x1E12BE9A0](*(this + 146) + 4 * v74, 1, &v34[v74], 1, v75, 1, v68);
    vDSP_vthr(v75, 1, &__B, v75, 1, v68);
    v73 = (this + 580);
    v71 = v75;
    v72 = v68;
  }

  vDSP_sve(v71, 1, v73, v72);
  v76 = *(this + 145) / v61;
  *(this + 145) = v76;
  v77 = *(this + 146);
  *(this + 199) = v77;
  v78 = *(this + 157);
  v79 = &xmmword_1DE09E000;
  v373 = v32;
  if (*(this + 411) == 0.0)
  {
    v85 = *(this + 136);
    v86 = *(this + 137);
    v87 = (v86 * *(this + 148)) + (v85 * v76);
    v88 = v86 * *(this + 159);
    v89 = 0.0;
  }

  else
  {
    v80 = v76 + v32 * -2.0 * v78;
    if (v80 >= 0.0)
    {
      v81 = v76 + v32 * -2.0 * v78;
    }

    else
    {
      v81 = 0.0;
    }

    v82 = *(this + 188);
    v401 = 0.0;
    v400 = 0.0;
    v83 = *(this + 115);
    v84 = *(this + 234);
    if (v84 == 4 || v84 == 2)
    {
      memcpy(*(this + 146), *(this + 118), 4 * *(this + 2));
    }

    else if (v84)
    {
      MEMORY[0x1E12BE940](v35, 1, this + 752, *(this + 146), 1, *(this + 214));
      if ((*(this + 234) | 2) == 3)
      {
        vDSP_vmax((*(this + 146) + 4 * *(this + 129)), 1, (*(this + 118) + 4 * *(this + 129)), 1, (*(this + 146) + 4 * *(this + 129)), 1, *(this + 214));
      }
    }

    else
    {
      MEMORY[0x1E12BE940](v35, 1, this + 752, *(this + 146), 1, *(this + 214));
    }

    vDSP_vmin(*(this + 146), 1, v34, 1, *(this + 146), 1, *(this + 214));
    v90 = *(this + 214);
    if (v90 >= 1)
    {
      v91 = *(this + 146);
      v92 = v34;
      v93 = v83;
      v94 = *(this + 214);
      do
      {
        v95 = *v92++;
        v96 = v95;
        v97 = *v91++;
        v98 = v96 - v97;
        if (v96 <= v97)
        {
          v99 = 0.0;
        }

        else
        {
          v99 = v98;
        }

        *v93++ = v99;
        --v94;
      }

      while (v94);
    }

    VPEchoGateV3::Gate_spread_energy(*(this + 147), v83, *(this + 106), *(this + 116), v90, *(this + 241), *(this + 242));
    v100 = *(this + 203);
    if (v100 + 1 < *(this + 204))
    {
      v101 = v100 + 1;
    }

    else
    {
      v101 = 0;
    }

    *(this + 203) = v101;
    v102 = *(this + 214);
    v103 = v101 * v102;
    memcpy((*(this + 109) + 4 * v101 * v102), *(this + 147), 4 * v102);
    v104 = *(this + 214);
    v105 = *(this + 147);
    if (v104 >= 1)
    {
      v106 = (*(this + 110) + 4 * v103);
      v107 = *(this + 147);
      v108 = *(this + 214);
      do
      {
        v109 = *v107++;
        *v106++ = log10f(v109 + 1.0e-15);
        --v108;
      }

      while (v108);
    }

    VPEchoGateV3::Gate_spread_energy((*(this + 145) + 4 * *(this + 208)), (v105 + 4 * *(this + 208)), *(this + 106), *(this + 116), (v104 - *(this + 208)), *(this + 241), *(this + 242));
    MEMORY[0x1E12BE940](*(this + 145) + 4 * *(this + 209), 1, this + 952, *(this + 147) + 4 * *(this + 209), 1, *(this + 214) - *(this + 209));
    VPEchoGateV3::Gate_spread_energy((*(this + 145) + 4 * *(this + 209)), (*(this + 147) + 4 * *(this + 209)), *(this + 106), *(this + 116), (*(this + 214) - *(this + 209)), *(this + 241), *(this + 242));
    MEMORY[0x1E12BE940](*(this + 145) + 4 * *(this + 210), 1, this + 956, *(this + 147) + 4 * *(this + 210), 1, *(this + 214) - *(this + 210));
    v110 = *(this + 203);
    v111 = *(this + 214) * v110;
    memcpy(*(this + 115), (*(this + 110) + 4 * v111), 4 * v66);
    memcpy(*(this + 116), (*(this + 109) + 4 * v111), 4 * v66);
    v112 = *(this + 204);
    if (v112 > 1)
    {
      for (i = 1; i < v112; ++i)
      {
        if (v110 + 1 < v112)
        {
          ++v110;
        }

        else
        {
          v110 = 0;
        }

        v114 = *(this + 214) * v110;
        MEMORY[0x1E12BE5D0](*(this + 110) + 4 * v114, 1, *(this + 115), 1, *(this + 115), 1, v66);
        MEMORY[0x1E12BE5D0](*(this + 109) + 4 * v114, 1, *(this + 116), 1, *(this + 116), 1, v66);
        v112 = *(this + 204);
      }
    }

    MEMORY[0x1E12BE940](*(this + 115), 1, this + 824, *(this + 115), 1, *(this + 214));
    MEMORY[0x1E12BE940](*(this + 116), 1, this + 824, *(this + 116), 1, *(this + 214));
    v115 = *(this + 145);
    v116 = *(this + 129);
    if (v116 < 1)
    {
      LODWORD(v116) = 0;
      v117 = *(this + 145);
    }

    else
    {
      memset_pattern16(*(this + 145), &unk_1DE095DF0, 4 * v116);
      v117 = &v115[4 * (v116 - 1) + 4];
    }

    v379 = v30;
    if (v116 >= v66)
    {
      v79 = &xmmword_1DE09E000;
    }

    else
    {
      v118 = v66 - v116;
      v119 = (*(this + 115) + 4 * v116);
      v120 = (*(this + 116) + 4 * v116);
      do
      {
        v121 = *(this + 202);
        v122 = *v120++;
        v123 = log10f(v122 + 1.0e-15);
        v124 = *v119++;
        v125 = v121 * (v123 - v124);
        if (v125 < 0.0)
        {
          v125 = 0.0;
        }

        if (v125 > 1.0)
        {
          v125 = 1.0;
        }

        v401 = v125;
        *v117++ = v125;
        --v118;
      }

      while (v118);
      LODWORD(v116) = v66;
      v79 = &xmmword_1DE09E000;
    }

    v126 = *(this + 214);
    if (v116 < v126)
    {
      memset_pattern16(v117, &unk_1DE095DF0, 4 * (v126 + ~v116) + 4);
    }

    v127 = *(this + 115);
    if (*(this + 75) < 0.015)
    {
      MEMORY[0x1E12BE5D0](v115, 1, *(this + 111), 1, *(this + 115), 1, v66);
      v401 = 0.5;
      MEMORY[0x1E12BE940](v127, 1, &v401, v127, 1, v66);
      v126 = *(this + 214);
      if (v126 > v66)
      {
        v128 = v126 - v66;
        v129 = &v127[4 * v66];
        v130 = &v115[4 * v66];
        do
        {
          v131 = *v130;
          v130 += 4;
          *v129 = v131;
          v129 += 4;
          --v128;
        }

        while (v128);
      }

      v127 = *(this + 111);
    }

    v132 = v32 + v82;
    memcpy(v127, v115, 4 * v126);
    v133 = *(this + 113);
    v134 = *(this + 129);
    if (v134 < 1)
    {
      v140 = 0;
      v137 = *(this + 113);
      v37 = &unk_1DE096000;
      v138 = (this + 752);
    }

    else
    {
      v135 = *(this + 147);
      v136 = *(this + 129);
      v137 = *(this + 113);
      v37 = &unk_1DE096000;
      v138 = (this + 752);
      do
      {
        v139 = *v135++;
        *v137++ = v139 * 0.0316;
        --v136;
      }

      while (v136);
      v140 = v134;
    }

    v141 = *(this + 214);
    if (v140 < v141)
    {
      v142 = (*(this + 115) + 4 * v134);
      v143 = v141 - v140;
      v144 = (*(this + 147) + 4 * v140);
      do
      {
        v145 = *v142++;
        v146 = (1.0 - v145) * *(this + 414);
        v147 = llroundf(v146 + (v145 * *(this + 413)));
        v401 = v146 + (v145 * *(this + 413));
        if (v147 >= 25)
        {
          v147 = 25;
        }

        v148 = *v144++;
        *v137++ = *(this + (v147 & ~(v147 >> 31)) + 263) * v148;
        --v143;
      }

      while (v143);
    }

    v149 = (v78 * v132);
    v150 = *(this + 145);
    v401 = 0.8;
    v400 = 0.2;
    MEMORY[0x1E12BE940](v133, 1, &v401, v150, 1, v66);
    MEMORY[0x1E12BE940](*(this + 112), 1, &v400, *(this + 112), 1, v66);
    MEMORY[0x1E12BE5D0](v150, 1, *(this + 112), 1, v150, 1, v66);
    vDSP_vmin(*(this + 113), 1, v150, 1, v150, 1, v66);
    memcpy(*(this + 112), *(this + 113), 4 * *(this + 214));
    v151 = *(this + 129);
    v152 = 0.0;
    if (v66 > v151)
    {
      v153 = *(this + 146);
      v154 = v37[364];
      v155 = *(this + 129);
      do
      {
        v156 = *(v153 + 4 * v155);
        v157 = v150[v155];
        if (v156 > v157)
        {
          v158 = v157 * 3.0;
          v159 = (v156 - v157) * 0.25;
          v160 = (v156 + (v157 * -3.0)) + (v157 * 0.5);
          if (v156 <= v158)
          {
            v161 = v159;
          }

          else
          {
            v161 = v160;
          }

          v400 = v161;
          v162 = v154 + ((*(this + 240) * 4.0) * *(v153 + 4 * v155));
          v401 = ((*(*(this + 147) + 4 * v155) / v162) * (*(*(this + 147) + 4 * v155) / v162)) + 1.0;
          v152 = v152 + (v161 / v401);
        }

        ++v155;
      }

      while (v66 != v155);
    }

    v163 = v37[364];
    v164 = (((v152 * (1.0 / *v138)) / v59) + ((v66 - v151) * v163)) / *(this + 157);
    if (v164 > 1.0)
    {
      v164 = 1.0;
    }

    v165 = log10f(v164) * 10.0;
    v166 = -20.0;
    if (v165 >= -20.0)
    {
      v166 = v165;
      if (v165 > 0.0)
      {
        v166 = 0.0;
      }
    }

    v167 = (*(this + 137) * *(this + 215)) + (*(this + 136) * v166);
    if (v167 > 0.0)
    {
      v167 = 0.0;
    }

    v168 = (*(this + 139) * *(this + 216)) + (*(this + 138) * v166);
    if (v168 > 0.0)
    {
      v168 = 0.0;
    }

    v169 = (*(this + 141) * *(this + 217)) + (*(this + 140) * v166);
    if (v169 > 0.0)
    {
      v169 = 0.0;
    }

    *(this + 215) = v167;
    *(this + 216) = v168;
    *(this + 217) = v169;
    if (v167 >= v169)
    {
      v169 = v167;
    }

    if (v169 >= v168)
    {
      v170 = v169;
    }

    else
    {
      v170 = v168;
    }

    v171 = *(this + 114);
    v172 = *(this + 205);
    if (v172 <= 1)
    {
      *v171 = v170;
    }

    else
    {
      v173 = 4 * v172 - 8;
      v174 = v172 + 1;
      do
      {
        *(v171 + v173 + 4) = *(v171 + v173);
        v173 -= 4;
        --v174;
      }

      while (v174 > 2);
      *v171 = v170;
      v175 = v171 + 1;
      v176 = v172 - 1;
      do
      {
        v177 = *v175++;
        v178 = v177;
        if (v170 < v177)
        {
          v170 = v178;
        }

        --v176;
      }

      while (v176);
    }

    v179 = (v81 + 1.0e-20) / (v149 + 1.0e-20);
    v85 = *(this + 136);
    v86 = *(this + 137);
    v88 = v86 * *(this + 159);
    v377 = *(this + 157);
    v76 = *(this + 145);
    v87 = (v86 * *(this + 148)) + (v85 * v76);
    if ((log10f((v87 + v163) / ((v88 + (v85 * v377)) + v163)) * 10.0) <= (*(this + 303) + 3.0))
    {
      v182 = -20.0;
      if (v170 >= -20.0)
      {
        v182 = v170;
      }

      v89 = 0.0;
      v181 = 0.0 - roundf(v182);
      if (v181 >= 0.0)
      {
        v89 = v181;
      }

      if (v89 > 25.0)
      {
        v89 = 25.0;
      }
    }

    else
    {
      v180 = -10.0;
      if (v170 >= -10.0)
      {
        v180 = v170;
      }

      v89 = 0.0;
      v181 = 0.0 - roundf(v180);
    }

    v392 = 0.0;
    if (v181 < 0.0)
    {
      v181 = 0.0;
    }

    if (v181 > 25.0)
    {
      v181 = 25.0;
    }

    v30 = v379;
    if (v179 <= 6.0 || *v138 >= *(v79 + 706))
    {
      v77 = *(this + 199);
      v78 = v377;
      goto LABEL_212;
    }

    v78 = v377 * *(this + v89 + 263);
    *(this + 157) = v78;
    v77 = *(this + 199) * *(this + v181 + 263);
  }

  v392 = v89;
LABEL_212:
  v374 = v30 + v381;
  v183 = *(this + 146);
  v184 = *(this + 122);
  *(this + 145) = v87;
  v185 = (v86 * *(this + 149)) + (v85 * v183);
  *(this + 146) = v185;
  v186 = (v86 * *(this + 150)) + (v85 * v184);
  *(this + 122) = v186;
  v187 = *(this + 140);
  v188 = *(this + 141);
  v189 = (v188 * *(this + 154)) + (v187 * v76);
  *(this + 151) = v189;
  v190 = (v188 * *(this + 155)) + (v187 * v183);
  *(this + 152) = v190;
  v191 = (v188 * *(this + 156)) + (v187 * v184);
  *(this + 123) = v191;
  *(this + 148) = v87;
  *(this + 149) = v185;
  *(this + 150) = v186;
  *(this + 154) = v189;
  *(this + 155) = v190;
  *(this + 156) = v191;
  v192 = v88 + (v85 * v78);
  *(this + 157) = v192;
  v193 = (v188 * *(this + 160)) + (v187 * v78);
  *(this + 158) = v193;
  v194 = (v86 * *(this + 200)) + (v85 * v77);
  *(this + 199) = v194;
  v195 = (v188 * *(this + 201)) + (v187 * v77);
  *(this + 198) = v195;
  *(this + 159) = v192;
  *(this + 160) = v193;
  *(this + 200) = v194;
  *(this + 201) = v195;
  memmove(this + 328, this + 324, 0x4CuLL);
  v196 = (this + 480);
  v197 = 20;
  v198 = this + 480;
  do
  {
    v199 = *(v198 - 1);
    v198 -= 4;
    *v196 = v199;
    --v197;
    v196 = v198;
  }

  while (v197 > 1);
  *(this + 81) = *(this + 122);
  *(this + 101) = *(this + 123);
  v200 = *(this + 80);
  *&v201 = 0.0;
  if (v200 > 0.0)
  {
    if (v200 <= 1000000000.0)
    {
      goto LABEL_218;
    }

    *&v201 = 2000.0;
  }

  *v389 = *&v201;
  v200 = *&v201;
LABEL_218:
  v202 = v200 * *(this + 77);
  if (v202 > 19.0)
  {
    v202 = 19.0;
  }

  v203 = llroundf(v202);
  v204 = v203 & ~(v203 >> 31);
  if (v203 <= 1)
  {
    v205 = 1;
  }

  else
  {
    v205 = v203;
  }

  v206 = v205 - 1;
  if (v203 <= 18)
  {
    v207 = v206;
  }

  else
  {
    v204 = 19;
    v207 = 19;
  }

  *&__B = v207 + 0.5;
  v208 = (v204 + 0.5) - v202;
  if (v208 > 1.0)
  {
    v208 = 1.0;
  }

  if (v208 < 0.0)
  {
    v208 = 0.0;
  }

  v209 = 1.0 - v208;
  v210 = (*(this + v207 + 81) * v208) + v209 * *(this + v204 + 81);
  *(this + 147) = v210;
  v211 = (*(this + v207 + 101) * v208) + v209 * *(this + v204 + 101);
  v212 = v37[364];
  v382 = log10f(*(this + 145) + v212) * 10.0;
  *(this + 145) = v382;
  v380 = log10f(*(this + 146) + v212) * 10.0;
  *(this + 146) = v380;
  v378 = log10f(v210 + v212) * 10.0;
  *(this + 147) = v378;
  v213 = log10f(*(this + 151) + v212) * 10.0;
  *(this + 151) = v213;
  v214 = log10f(*(this + 152) + v212) * 10.0;
  *(this + 152) = v214;
  v215 = log10f(v211 + v212) * 10.0;
  *(this + 153) = v215;
  v216 = log10f(*(this + 157) + v212) * 10.0;
  *(this + 157) = v216;
  v217 = log10f(*(this + 158) + v212) * 10.0;
  *(this + 158) = v217;
  v218 = log10f(*(this + 199) + v212) * 10.0;
  *(this + 199) = v218;
  v219 = log10f(*(this + 198) + v212) * 10.0;
  *(this + 198) = v219;
  v390 = v213;
  if (v382 >= v213)
  {
    v220 = v382;
  }

  else
  {
    v220 = v213;
  }

  if (v380 >= v214)
  {
    v221 = v380;
  }

  else
  {
    v221 = v214;
  }

  if (v378 >= v215)
  {
    v222 = v378;
  }

  else
  {
    v222 = v215;
  }

  v383 = v217;
  if (v216 >= v217)
  {
    v223 = v216;
  }

  else
  {
    v223 = v217;
  }

  if (v218 < v219)
  {
    v218 = v219;
  }

  *(&__B + 1) = v223;
  v224 = *(this + 401);
  v225 = v223;
  if (v221 > v224)
  {
    v226 = *(this + 403);
    v227 = v221 - v224;
    v228 = v222 - v226;
    v229 = v222 <= v226 || v228 <= v227;
    v225 = v223;
    if (!v229)
    {
      v296 = v223 + v228;
      v225 = v223 + 6.0;
      *&__B = v223 + 6.0;
      if (v296 <= (v223 + 6.0))
      {
        *(&__B + 1) = v296;
        v225 = v296;
      }

      else
      {
        *(&__B + 1) = v223 + 6.0;
      }
    }
  }

  if (v392 > 0.0)
  {
    v230 = v225 - v223;
    if (v230 > 0.0)
    {
      if (v230 > 6.0)
      {
        v230 = 6.0;
      }

      v231 = ((v384 * *(this + 189)) / *(this + v230 + 263)) - (v384 * *(this + 189));
      v232 = 0.0;
      if (v231 > 0.0)
      {
        v233 = __exp10f(v220 * 0.1) - v231;
        if (v233 < 0.0)
        {
          v233 = 0.0;
        }

        v232 = v220 + (log10f(v233 + v212) * -10.0);
      }

      if (v232 < (v392 * 0.75))
      {
        v232 = v392 * 0.75;
      }

      v220 = v220 - v232;
      v390 = v390 - v232;
      *(this + 151) = v390;
    }
  }

  v234 = *(this + 304);
  *(this + 181) = v234;
  *(this + 182) = -1023279104;
  if (*(this + 409) == 1.0)
  {
    v235 = *(this + 302);
    if (v235 < -85.0 && v373 < 5.0 && v234 > -10.0)
    {
      v236 = (v225 + v374) + -20.0;
      v237 = v234;
      if (v236 < ((v220 + v374) + -6.0))
      {
        v238 = -10.0;
        if (v236 < -95.0 || (v238 = -6.0, (v235 + -4.5) > v225) || (v238 = -4.0, (v235 + -3.0) > v225) || (v238 = -3.0, v237 = v234, (v235 + -1.5) > v225))
        {
          v237 = v234 + v238;
          *(this + 181) = v234 + v238;
          *(this + 182) = -1024458752;
        }
      }

      if ((v220 + v374) < -90.0)
      {
        *(this + 182) = -1025769472;
      }

      if (v234 >= -5.0 && (v239 = -10.0, v237 < -10.0) || (v239 = -15.0, v237 < -15.0))
      {
        *(this + 181) = v239;
      }
    }
  }

  vDSP_sve(v34, 1, this + 161, *(this + 72));
  v240 = *(this + 161);
  v241 = (*(this + 137) * *(this + 162)) + (*(this + 136) * v240);
  *(this + 162) = v241;
  v242 = (*(this + 141) * *(this + 163)) + (*(this + 140) * v240);
  *(this + 163) = v242;
  if (v241 >= v242)
  {
    v242 = v241;
  }

  *(this + 164) = v242;
  v243 = *(this + 176);
  v244 = *(this + 177);
  if (v243 >= v244)
  {
    v248 = *(this + 86);
    v249 = (v244 - 1);
    if (v244 == 1)
    {
      v249 = 0;
    }

    else
    {
      memmove(*(this + 86), v248 + 1, 4 * (v244 - 1));
      v241 = *(this + 162);
    }

    v248[v249] = v241;
    v247 = (this + 660);
    v245 = v248;
    v246 = v244;
  }

  else
  {
    v245 = *(this + 86);
    v245[v243] = v241;
    v246 = (v243 + 1);
    v247 = (this + 660);
  }

  vDSP_minv(v245, 1, v247, v246);
  v250 = *(this + 176);
  v251 = *(this + 178);
  if (v250 >= v251)
  {
    v255 = *(this + 87);
    v256 = (v251 - 1);
    if (v251 == 1)
    {
      v256 = 0;
    }

    else
    {
      memmove(*(this + 87), v255 + 1, 4 * (v251 - 1));
    }

    v255[v256] = *(this + 162);
    v254 = (this + 664);
    v252 = v255;
    v253 = v251;
  }

  else
  {
    v252 = *(this + 87);
    v252[v250] = *(this + 162);
    v253 = (v250 + 1);
    v254 = (this + 664);
  }

  vDSP_minv(v252, 1, v254, v253);
  v257 = *(this + 176);
  if (v257 < *(this + 177) || v257 < *(this + 178))
  {
    *(this + 176) = v257 + 1;
  }

  v258 = *(this + 165) + 1.0e-15;
  v259 = log10f(v258) * 10.0;
  v260 = *(this + 166) + 1.0e-15;
  v261 = log10f(v260) * 10.0;
  v262 = *(this + 162) + 1.0e-15;
  v263 = log10f(v262) * 10.0;
  v264 = v259 - v263;
  *(this + 167) = v259 - v263;
  v265 = v261 - v263;
  *(this + 168) = v265;
  if (v259 >= -70.0)
  {
    if (v259 >= -50.0)
    {
      goto LABEL_299;
    }

    v264 = (v264 + -15.0) + ((v259 + 60.0) * 1.5);
  }

  else
  {
    v264 = v264 + -30.0;
  }

  *(this + 167) = v264;
LABEL_299:
  if (v261 < -70.0)
  {
    v265 = v265 + -30.0;
LABEL_303:
    *(this + 168) = v265;
    goto LABEL_304;
  }

  if (v261 < -50.0)
  {
    v265 = (v265 + -15.0) + ((v261 + 60.0) * 1.5);
    goto LABEL_303;
  }

LABEL_304:
  *&v266 = -70.0;
  if (v264 < -70.0 || (*&v266 = 0.0, v264 > 0.0))
  {
    *(this + 167) = *&v266;
    v264 = *&v266;
  }

  *&v267 = -70.0;
  if (v265 < -70.0 || (*&v267 = 0.0, v265 > 0.0))
  {
    *(this + 168) = *&v267;
    v265 = *&v267;
  }

  v268 = *(this + 405);
  v269 = *(this + 121);
  v270 = 0.0;
  v271 = v268;
  v272 = 0.0;
  if (v269 <= 7000.0)
  {
    v275 = v269 + *(this + 76);
    *(this + 121) = v275;
    v276 = *(this + 408);
    v271 = v268;
    v272 = 0.0;
    if (v276 > 0.0)
    {
      v271 = v268;
      v272 = 0.0;
      if (v276 <= 1.0)
      {
        v277 = v275;
        v278 = v276;
        if (v276 * *"" <= v275)
        {
          if (v278 * 3000.0 <= v277)
          {
            v229 = v278 * 5000.0 <= v277;
            v271 = v268;
            v272 = 0.0;
            if (!v229)
            {
              v271 = 5.0;
              v272 = 5.0;
            }
          }

          else
          {
            v272 = 10.0;
            v271 = 3.0;
          }
        }

        else
        {
          v272 = 20.0;
          v271 = 1.0;
          if (*(this + 415) == 1.0)
          {
            v271 = 0.5;
          }
        }
      }
    }
  }

  if (v271 <= v268)
  {
    v273 = v271;
  }

  else
  {
    v273 = v268;
  }

  v274 = *(this + 147);
  if (v274 >= -100.0)
  {
    if (v274 >= -90.0)
    {
      v270 = v373;
    }

    else
    {
      *(&__B + 1) = (v274 + 100.0) * 0.1;
      v270 = v373 * *(&__B + 1);
    }
  }

  v279 = (v220 - v225) + -3.0;
  if (!v386)
  {
    v279 = v220 - v225;
  }

  *(this + 180) = 1120403456;
  v281 = v279 < 30.0 && v274 > -100.0;
  v282 = (v274 > -85.0 || v281) && v384 > 5.0e-10;
  v283 = *(this + 303);
  if (v282 == 1 && v270 > v273 && ((v279 - v392) < (v283 + 6.0) || v268 <= 20.0))
  {
    v265 = v265 - v272;
    *(this + 179) = 0;
    v286 = v374;
    goto LABEL_352;
  }

  v284 = v390 - v383;
  if (v279 > v283 && v218 < *(this + 402))
  {
    *(this + 179) = 2;
LABEL_349:
    v290 = (v284 - v376.f32[0]) + -6.0;
    *(this + 180) = v290;
    v287 = 0.0;
    if (v290 < 0.0)
    {
      *(this + 180) = 0;
    }

    goto LABEL_374;
  }

  if (v279 <= *(this + 181))
  {
    v288 = *(this + 301);
    *(this + 179) = 0;
    v286 = v374;
    if (v279 <= v288)
    {
      v265 = -70.0;
    }

    else
    {
      v289 = (v284 - v376.f32[0]) + -6.0;
      *(this + 180) = v289;
      if (v289 < 0.0)
      {
        *(this + 180) = 0;
      }
    }

    goto LABEL_352;
  }

  v285 = *(this + 302);
  v286 = v374;
  if (v220 >= v285)
  {
    *(this + 170) = 0;
    *(this + 179) = 2;
    if (v279 <= *(this + 304))
    {
      v298.i32[0] = *(this + 402);
      v298.f32[1] = v390 - v383;
      v299.i32[1] = v376.i32[1];
      v299.i32[0] = *(this + 152);
      v300 = vsub_f32(v298, v299);
      __asm { FMOV            V1.2S, #-6.0 }

      v306 = vadd_f32(v300, _D1);
      v307 = vdup_n_s32(0xC3960000);
      v308 = vbsl_s8(vcgt_f32(v307, v306), v307, v306);
      *(this + 180) = v308.i32[0];
      v287 = 0.0;
      if (*v308.i32 > *&v308.i32[1])
      {
        *(this + 180) = v308.i32[1];
      }

      goto LABEL_374;
    }

    goto LABEL_349;
  }

  if (v225 < -85.0 && v225 < v285 && *(this + 409) == 1.0)
  {
    *(this + 179) = 2;
    v287 = 0.0;
LABEL_374:
    v294 = v372;
    goto LABEL_375;
  }

  v297 = *(this + 179);
  v287 = 0.0;
  v294 = v372;
  if (v297 != 2)
  {
    v265 = v264 + 0.0;
    v294 = v372;
    if (v297)
    {
LABEL_361:
      v287 = -70.0;
      if (v265 >= -70.0)
      {
        if (v265 <= 0.0)
        {
          v287 = v265;
        }

        else
        {
          v287 = 0.0;
        }
      }

      goto LABEL_375;
    }

LABEL_352:
    v291 = -5.0;
    if (v286 >= -5.0)
    {
      v291 = v286;
      if (v286 > 20.0)
      {
        v291 = 20.0;
      }
    }

    v292 = *(this + 182) - v291;
    v293 = v220 + v265;
    if ((((v225 + v265) - v392) + -25.0) > (v220 + v265))
    {
      v293 = ((v225 + v265) - v392) + -25.0;
    }

    v294 = 0.0;
    if (v293 < v292)
    {
      v295 = v292 - v293;
      if (v295 > 100.0)
      {
        v295 = 100.0;
      }

      v265 = v265 + v295;
      *(this + 170) = v265;
    }

    goto LABEL_361;
  }

LABEL_375:
  v309 = *(this + 169);
  v310 = *(this + 75);
  v311 = (v287 - v309) / v310;
  v312 = 5000.0;
  if (v311 <= 5000.0)
  {
    v312 = v311;
    if (v311 < -5000.0)
    {
      v312 = -5000.0;
    }
  }

  v313 = v309 + (v312 * v310);
  v314 = &unk_1DE095000;
  v315 = &unk_1DE09A000;
  if (v313 <= v309)
  {
    v316 = v309 * 0.7 + v313 * 0.3;
    *(this + 170) = v316;
    *(this + 347) = 0;
  }

  else
  {
    if ((*(this + 1532) & 2) != 0 && v294 < *(this + 393))
    {
      v316 = (v309 * *(this + 343)) + (*(this + 344) * v313);
    }

    else
    {
      v316 = v309 * 0.2 + v313 * 0.8;
    }

    *(this + 170) = v316;
    v317 = (v309 - v316) + *(this + 347);
    if (v317 < -20.0)
    {
      v317 = -20.0;
    }

    *(this + 347) = v317;
  }

  *(this + 169) = v316;
  *(this + 351) = v294;
  v318 = *(v79 + 706);
  v319 = __exp10f(v316 * v318);
  v397 = v319;
  if (*(this + 375))
  {
    v320 = *(this + 374);
    if (v319 < v320)
    {
      v320 = v319;
    }

    v319 = fmaxf(v320, 0.0);
    v397 = v319;
    v321 = log10f(v319) * 20.0;
    *(this + 169) = v321;
    *(this + 170) = v321;
  }

  *(this + 183) = v319;
  if (*(this + 736) == 1)
  {
    if (!*(this + 382))
    {
      v397 = 1.0;
    }

    realp = v394.realp;
    MEMORY[0x1E12BE940](__A.realp, 1, &v397, v394.realp, 1, *(this + 72));
    imagp = v394.imagp;
    MEMORY[0x1E12BE940](__A.imagp, 1, &v397, v394.imagp, 1, *(this + 72));
    *(this + 1380) = 0;
    v324 = v370;
    if ((*(this + 1532) & 1) == 0)
    {
      v324 = 1;
    }

    if ((v324 & 1) == 0)
    {
      v401 = 0.0;
      v400 = 0.0;
      if (v372 >= *(this + 393))
      {
        v325 = 1;
      }

      else
      {
        v325 = v282;
      }

      if ((v325 & 1) == 0)
      {
        v400 = 9.3132e-10;
        MEMORY[0x1E12BE940](a9, 1, &v400, *(this + 153), 1, *(this + 72));
        MEMORY[0x1E12BE7F0](*(this + 153), 1, a10, 1, *(this + 153), 1, *(this + 72));
        v326 = *(this + 386);
        v327 = *(this + 342);
        v328 = 1360;
        if (v326 > v327)
        {
          v328 = 1352;
        }

        v329 = 1364;
        if (v326 > v327)
        {
          v329 = 1356;
        }

        v330 = *(this + v328);
        LODWORD(v399) = *(this + v329);
        *(&v399 + 1) = v330;
        *(this + 342) = (v326 * *&v399) + (v330 * v327);
        MEMORY[0x1E12BE940](*(this + 153), 1, &v399, *(this + 153), 1, *(this + 72));
        MEMORY[0x1E12BE8F0](*(this + 159), 1, &v399 + 4, *(this + 153), 1, *(this + 159), 1, *(this + 72));
      }

      vDSP_meanv(a7, 1, &v401, *(this + 72));
      v331 = *(this + 342);
      if (v331 <= *(this + 392) || v331 >= *(this + 390))
      {
        v332 = *(this + 331) + 1;
        *(this + 331) = v332;
        v333 = *(this + 332);
        v334 = v332 < v333;
      }

      else
      {
        v332 = *(this + 331);
        v333 = *(this + 332);
        v334 = 1;
      }

      if (v332 > v333)
      {
        *(this + 331) = v333;
      }

      if (v294 > *(this + 393))
      {
        *(this + 330) = 0;
        goto LABEL_444;
      }

      v336 = (v401 * v397) < *(this + 387) && *(this + 384) > 0.0;
      if (v336 && v334)
      {
        *(this + 330) = 1065353216;
LABEL_424:
        v338 = __exp10f((*(this + 347) + fminf(*(this + 391) - v331, 0.0)) * v318);
        v339 = *(this + 72);
        if (v339)
        {
          v340 = 0;
          v341 = *(this + 385) * v338;
          v342 = *(this + 156);
          v343 = *(this + 159);
          v344 = *(this + 1348);
          v393 = v343;
          do
          {
            v342[2 * v340] = v341 * sqrtf(*(v343 + 4 * v340));
            if (v344)
            {
              *(this + 1348) = 0;
              v345 = *(this + 336);
            }

            else
            {
              v346 = *(this + 333);
              do
              {
                v347 = v346 / 0xADC8;
                v348 = 48271 * (v346 % 0xADC8);
                v347 *= 3399;
                _CF = v348 >= v347;
                v349 = v348 - v347;
                if (_CF)
                {
                  v350 = 0;
                }

                else
                {
                  v350 = 0x7FFFFFFF;
                }

                v351 = v350 + v349;
                v352 = (vcvts_n_f32_u32(v351 - 1, 0x1FuLL) * 2.0) + -1.0;
                v353 = v351 / 0xADC8;
                v354 = 48271 * (v351 % 0xADC8);
                v353 *= 3399;
                _CF = v354 >= v353;
                v355 = v354 - v353;
                if (_CF)
                {
                  v356 = 0;
                }

                else
                {
                  v356 = 0x7FFFFFFF;
                }

                v346 = v356 + v355;
                v357 = (vcvts_n_f32_u32(v346 - 1, 0x1FuLL) * 2.0) + -1.0;
                v358 = (v357 * v357) + (v352 * v352);
              }

              while (v358 > 1.0 || v358 == 0.0);
              *(this + 333) = v346;
              v359 = sqrtf((logf((v357 * v357) + (v352 * v352)) * -2.0) / v358);
              *(this + 336) = v357 * v359;
              *(this + 1348) = 1;
              v345 = v352 * v359;
              v343 = v393;
            }

            v344 ^= 1u;
            v342[2 * v340++ + 1] = *(this + 334) + (v345 * *(this + 335));
          }

          while (v340 != v339);
          v314 = &unk_1DE095000;
          v315 = &unk_1DE09A000;
        }

        else
        {
          v339 = 0;
          v342 = *(this + 156);
        }

        vDSP_rect(v342, 2, v342, 2, v339);
        *(&v399 + 1) = *(this + 15);
        MEMORY[0x1E12BE940](*(this + 156), 1, &v399 + 4, *(this + 156), 1, (2 * *(this + 72)));
        MEMORY[0x1E12BE5D0](realp, 1, *(this + 156), 2, realp, 1, *(this + 72));
        MEMORY[0x1E12BE5D0](imagp, 1, *(this + 156) + 4, 2, imagp, 1, *(this + 72));
        goto LABEL_444;
      }

      v337 = *(this + 343) * *(this + 330);
      *(this + 330) = v337;
      if (v337 > 0.1)
      {
        goto LABEL_424;
      }
    }
  }

LABEL_444:
  v360 = v387 + *(this + 180);
  v361 = v315[82];
  v362 = v314[60];
  if (v360 >= v388)
  {
    v363 = v360 * v362 + v388 * v361;
  }

  else
  {
    v363 = v360 * v361 + v388 * v362;
  }

  v364 = v363;
  if (v364 > 0.0)
  {
    v364 = 0.0;
  }

  if (v364 < *(this + 406))
  {
    v364 = *(this + 406);
  }

  *(this + 350) = v364;
  *(this + 297) = *(this + 298);
  if (*(this + 736) == 1)
  {
    if (*(this + 56))
    {
      memcpy(a12, __src.realp, 4 * *(this + 17));
      memcpy(&a12[*(this + 17)], __src.imagp, 4 * *(this + 17));
    }

    else
    {
      MultiRadixRealFFT::RealOutOfPlaceInverseTransform(this + 31, &v394, *(this + 12));
      MEMORY[0x1E12BE7F0](*(this + 12), 1, *(this + 35), 1, *(this + 12), 1, *(this + 16));
      __C[0] = 1.0 / *(this + 15);
      MEMORY[0x1E12BE940](*(this + 12), 1, __C, *(this + 12), 1, *(this + 16));
      MEMORY[0x1E12BE5D0](*(this + 12), 1, *(this + 27), 1, *(this + 27), 1, *(this + 16));
      memcpy(a12, *(this + 27), 4 * *(this + 17));
      memmove(*(this + 27), (*(this + 27) + 4 * *(this + 17)), 4 * (*(this + 16) - *(this + 17)));
      bzero((*(this + 27) + 4 * (*(this + 16) - *(this + 17))), 4 * *(this + 17));
    }
  }

  return 0;
}