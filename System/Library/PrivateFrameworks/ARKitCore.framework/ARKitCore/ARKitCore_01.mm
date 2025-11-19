void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
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

void sub_1C24E46F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C24E4768(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<short>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<short>::allocate_at_least[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZL13_ARLogGeneralv_block_invoke_12()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C24E489C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v7, v11);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(a1, v9);
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

BOOL operator==(float32x2_t *a1, float32x2_t *a2)
{
  v2 = vsub_f32(*a1, *a2);
  if (fabsf(sqrtf(vaddv_f32(vmul_f32(v2, v2)))) >= 0.00000011921)
  {
    return 0;
  }

  v3 = vsub_f32(a1[1], a2[1]);
  return fabsf(sqrtf(vaddv_f32(vmul_f32(v3, v3)))) < 0.00000011921;
}

void sub_1C24E60D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C24E6264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

__n128 std::vector<ARPatch>::__move_assign(uint64_t a1, __n128 *a2)
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

uint64_t std::vector<ARPatch>::__init_with_size[abi:ne200100]<ARPatch*,ARPatch*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C24E6384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C24E6CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v45 = *(v43 - 240);
  if (v45)
  {
    *(v43 - 232) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

void *std::vector<__ARC3DShapeVertex>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::allocator<__ARC3DShapeVertex>::allocate_at_least[abi:ne200100](result, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void *std::vector<short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](result, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void std::vector<short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      std::allocator<short>::allocate_at_least[abi:ne200100](a1, v13);
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

void sub_1C24E7458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C24E7610(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<short>::__assign_with_size[abi:ne200100]<short const*,short const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v8 <= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<short>::__vallocate[abi:ne200100](v7, v11);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 1)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v9[v19];
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
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 2;
        *v16 = v17;
        v16 += 2;
        v15 += 2;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v7[1] = v18;
  return result;
}

void std::allocator<__ARC3DShapeVertex>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_15()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL15_ARLogTechniquev_block_invoke_13()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

void ___ZL13_ARLogGeneralv_block_invoke_13()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C24E78BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C24E7A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v23 = *(v21 - 80);
  if (v23)
  {
    *(v21 - 72) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(result, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void sub_1C24E7FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a27)
  {
    operator delete(a27);
  }

  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void std::vector<float>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](this, __n);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }
}

void std::vector<unsigned long long>::resize(void *a1, unint64_t a2)
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
    std::vector<unsigned long long>::__append(a1, a2 - v2);
  }
}

void sub_1C24E81E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *(v14 - 48);
  if (v16)
  {
    *(v14 - 40) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C24E883C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 80);
  if (v24)
  {
    *(v22 - 72) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C24E89FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 64);
  if (v20)
  {
    *(v18 - 56) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C24E8E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, void *a47)
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

  std::__tree<std::array<unsigned char,16ul>>::destroy(&a46, a47);

  _Unwind_Resume(a1);
}

void sub_1C24E8FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  +[(ARPointCloud *)&a12];
  _Unwind_Resume(a1);
}

void sub_1C24E9374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 96);
  if (v23)
  {
    *(v21 - 88) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 48);
  if (v24)
  {
    *(v21 - 40) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2)
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v10);
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

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1C24E9B20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C24E9B9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16__treeINS_12__value_typeIyDv4_fEENS_19__map_value_compareIyS3_NS_4lessIyEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIyJNS_4pairIyS2_EEEEENSC_INS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(uint64_t a1, unint64_t *a2)
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

void *std::deque<std::pair<int,int>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<std::pair<int,int>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void sub_1C24EA290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
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
    std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(a1, &v10);
}

void sub_1C24EA9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(void *result, void *a2)
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

      std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](result, v11);
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

const void **std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_front<std::pair<int,int> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *> &>::emplace_back<std::pair<int,int> *>(void *result, void *a2)
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

      std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](result[4], v11);
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

const void **std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *> &>::emplace_front<std::pair<int,int> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

id _ARLogGeneral_16()
{
  if (_ARLogGeneral_onceToken_17 != -1)
  {
    _ARLogGeneral_cold_1_16();
  }

  v1 = _ARLogGeneral_logObj_17;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_29()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_28 = result;
  return result;
}

void std::vector<simd_float4x4>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<simd_float4x4>::__append(a1, a2 - v2);
  }
}

void sub_1C24EC170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

uint64_t std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<simd_float4x4>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C24ED09C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<simd_float4x4>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::allocator<simd_float4x4>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<simd_float4x4>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ARSRT>::__init_with_size[abi:ne200100]<ARSRT const*,ARSRT const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ARSRT>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C24ED1A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ARSRT>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<ARSRT>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<ARSRT>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<simd_float4x4>::__append(uint64_t a1, unint64_t a2)
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<simd_float4x4>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
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

void *std::vector<simd_float4x4>::__assign_with_size[abi:ne200100]<simd_float4x4*,simd_float4x4*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 6)
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

    if (!(a4 >> 58))
    {
      v10 = v8 >> 5;
      if (v8 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<simd_float4x4>::__vallocate[abi:ne200100](v7, v11);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 6)
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

void *std::vector<ARSRT>::__assign_with_size[abi:ne200100]<ARSRT*,ARSRT*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x2AAAAAAAAAAAAAALL)
      {
        v12 = 0x555555555555555;
      }

      else
      {
        v12 = v11;
      }

      std::vector<ARSRT>::__vallocate[abi:ne200100](v7, v12);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 4) >= a4)
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
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

double simd_matrix3x3(float32x4_t a1)
{
  _S4 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S3, S5, V0.S[2] }

  _S6 = a1.i32[3];
  __asm { FMLA            S3, S6, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  __asm
  {
    FMLA            S2, S4, V0.S[1]
    FMLA            S2, S6, V0.S[3]
    FMLA            S2, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
  }

  *(&_D3 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm { FMLS            S5, S4, V0.S[1] }

  return _D3;
}

id ARFilterFaceTrackingPayload(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (ARFilterFaceTrackingPayload::onceToken != -1)
    {
      ARFilterFaceTrackingPayload_cold_1();
    }

    v15 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = [v1 allKeys];
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = *v17;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v17 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v16 + 1) + 8 * i);
          v7 = objc_autoreleasePoolPush();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([ARFilterFaceTrackingPayload::approvedListNoFurtherFiltering containsObject:v6])
            {
              goto LABEL_17;
            }

            if (![ARFilterFaceTrackingPayload::approvedList containsObject:v6])
            {
              goto LABEL_19;
            }

            v8 = [v1 objectForKeyedSubscript:v6];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v10 = [v1 objectForKeyedSubscript:v6];
              v11 = ARFilterFaceTrackingPayload(v10);
              [v15 setObject:v11 forKeyedSubscript:v6];
              goto LABEL_16;
            }

            v12 = [v1 objectForKeyedSubscript:v6];
            objc_opt_class();
            v13 = objc_opt_isKindOfClass();

            if ((v13 & 1) == 0)
            {
LABEL_17:
              v10 = [v1 objectForKeyedSubscript:v6];
              [v15 setObject:v10 forKeyedSubscript:v6];
            }

            else
            {
              v10 = [v1 objectForKeyedSubscript:v6];
              v11 = _ARFilterFaceTrackingPayloadArray(v10);
              [v15 setObject:v11 forKeyedSubscript:v6];
LABEL_16:
            }
          }

LABEL_19:
          objc_autoreleasePoolPop(v7);
        }

        v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v3);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __ARFilterFaceTrackingPayload_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E698C0C0], *MEMORY[0x1E698C098], *MEMORY[0x1E698C0B0], *MEMORY[0x1E698BF78], *MEMORY[0x1E698BF80], *MEMORY[0x1E698C090], *MEMORY[0x1E698C0A0], *MEMORY[0x1E698C0C8], *MEMORY[0x1E698C048], *MEMORY[0x1E698C060], *MEMORY[0x1E698C040], *MEMORY[0x1E698C060], *MEMORY[0x1E698C050], *MEMORY[0x1E698C058], *MEMORY[0x1E698BF90], *MEMORY[0x1E698BF98], *MEMORY[0x1E698BFA0], *MEMORY[0x1E698BFA8], *MEMORY[0x1E698BF88], *MEMORY[0x1E698BFB0], *MEMORY[0x1E698C038], *MEMORY[0x1E698C0B8], 0}];
  v2 = ARFilterFaceTrackingPayload::approvedList;
  ARFilterFaceTrackingPayload::approvedList = v1;

  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [v3 initWithObjects:{*MEMORY[0x1E698C028], *MEMORY[0x1E698BFE0], *MEMORY[0x1E698BFD0], 0}];
  v5 = ARFilterFaceTrackingPayload::approvedListNoFurtherFiltering;
  ARFilterFaceTrackingPayload::approvedListNoFurtherFiltering = v4;
}

id _ARFilterFaceTrackingPayloadArray(NSArray *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = ARFilterFaceTrackingPayload(v7);
          [v2 addObject:v9];
LABEL_10:

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = _ARFilterFaceTrackingPayloadArray(v7);
          [v2 addObject:v9];
          goto LABEL_10;
        }

        [v2 addObject:{v7, v11}];
LABEL_12:
        objc_autoreleasePoolPop(v8);
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v2;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
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

    if (!(a4 >> 62))
    {
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

      std::vector<unsigned int>::__vallocate[abi:ne200100](v7, v11);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
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

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C24F1018(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_16()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_14()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_17()
{
  if (_ARLogGeneral_onceToken_18[0] != -1)
  {
    _ARLogGeneral_cold_1_17();
  }

  v1 = _ARLogGeneral_logObj_18;

  return v1;
}

id _ARLogGeneral_18()
{
  if (_ARLogGeneral_onceToken_19 != -1)
  {
    _ARLogGeneral_cold_1_18();
  }

  v1 = _ARLogGeneral_logObj_19;

  return v1;
}

__CFString *ARMLDepthDataSourceDescription(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Estimated Depth";
  }

  if (a1 == 2)
  {
    return @"Apple Depth";
  }

  else
  {
    return v1;
  }
}

ARPlaneAnchor *ARCreatePlaneAnchorFromCV3DPlane(const CV3DPlaneDetectionPlane *a1, NSUUID *a2, simd_float4x4 a3, simd_float4x4 a4, char a5, int a6, __int16 a7)
{
  v71 = a4.columns[2];
  v74 = a4.columns[3];
  v77 = a4.columns[1];
  v80 = a4.columns[0];
  CV3DPlaneDetectionPlaneTransformationToWorld();
  v12 = 0;
  v83 = v13;
  v84 = v14;
  v85 = v15;
  v86 = v16;
  do
  {
    *(&v87 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, COERCE_FLOAT(*(&v83 + v12))), v77, v83.n128_u64[v12 / 8], 1), v71, *(&v83 + v12), 2), v74, *(&v83 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v75 = v88;
  v78 = v87;
  v72 = v89;
  v68 = v90;
  v17 = CV3DPlaneDetectionPlaneExtentOrientedBoundingBox();
  Orientation = CV3DPlaneDetectionPlaneGetOrientation();
  v19 = *MEMORY[0x1E69C6C88];
  v20 = 0.0;
  if (Orientation == v19 && v17 != 0)
  {
    v87 = v83;
    v88 = v84;
    if ((atomic_load_explicit(&qword_1EBF41CE8, memory_order_acquire) & 1) == 0)
    {
      ARCreatePlaneAnchorFromCV3DPlane();
    }

    v22 = 0;
    v23 = *&_MergedGlobals_1;
    do
    {
      v24 = v22 + 1;
      v25 = vsub_f32(*&v87.f32[2 * v22], *&v87.f32[2 * ((v22 + 1) & 3)]);
      v26 = vmul_f32(v25, v25);
      *v26.i32 = sqrtf(*&v26.i32[1] + (v25.f32[0] * v25.f32[0]));
      v27 = vdiv_f32(v25, vdup_lane_s32(v26, 0));
      if (v27.f32[0] >= v23)
      {
        v82 = v27.f32[1];
        v28 = acosf(fminf(fmaxf(v27.f32[0], -1.0), 1.0));
        if (v82 >= 0.0)
        {
          v20 = v28;
        }

        else
        {
          v20 = -v28;
        }
      }

      v22 = v24;
    }

    while (v24 != 4);
  }

  if (a6)
  {
    v29 = __sincosf_stret(v20 * 0.5);
    v30 = vmulq_n_f32(xmmword_1C25C86A0, v29.__sinval);
    v30.i32[3] = LODWORD(v29.__cosval);
    v31.n128_f64[0] = simd_matrix4x4(v30);
    v32 = 0;
    v83 = v31;
    v84 = v33;
    v85 = v34;
    v86 = v35;
    do
    {
      *(&v87 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v83 + v32))), v75, v83.n128_u64[v32 / 8], 1), v72, *(&v83 + v32), 2), v68, *(&v83 + v32), 3);
      v32 += 16;
    }

    while (v32 != 64);
    v36 = *v87.i64;
    v37 = *v88.i64;
    v38 = *v89.i64;
    v39 = *v90.i64;
  }

  else
  {
    v37 = *v75.i64;
    v36 = *v78.i64;
    v38 = *v72.i64;
    v39 = *v68.i64;
  }

  [ARPlaneData transformAnchorToPlaneAnchorConvention:v36, v37, v38, v39];
  v40 = 0;
  v67 = v42;
  v69 = v41;
  v83 = v41;
  v84 = v42;
  v65 = v44;
  v66 = v43;
  v85 = v43;
  v86 = v44;
  do
  {
    *(&v87 + v40) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3.columns[0], COERCE_FLOAT(*(&v83 + v40))), a3.columns[1], v83.n128_u64[v40 / 8], 1), a3.columns[2], *(&v83 + v40), 2), a3.columns[3], *(&v83 + v40), 3);
    v40 += 16;
  }

  while (v40 != 64);
  v79 = v88;
  v81 = v87;
  v73 = v90;
  v76 = v89;
  v45 = CV3DPlaneDetectionPlaneGetOrientation();
  v46 = v45 != v19;
  if (v45 != v19 || (a7 & 0x100) != 0)
  {
    goto LABEL_24;
  }

  v92 = __invert_f4(a3);
  v55 = AREulerAnglesFromMatrix(v92.columns[0], v92.columns[1], v92.columns[2]);
  v56 = *(&v55 + 1);
  if (v56 > 2.35619449)
  {
    goto LABEL_31;
  }

  if (v56 <= 0.785398163)
  {
    if (v56 < -2.35619449)
    {
LABEL_31:
      v47 = 180;
      goto LABEL_34;
    }

    if (v56 >= -0.785398163)
    {
LABEL_24:
      v47 = 0;
      goto LABEL_25;
    }

    v47 = -90;
  }

  else
  {
    v47 = 90;
  }

LABEL_34:
  v57 = v47 * 3.14159265 / 180.0;
  v58 = __sincosf_stret(v57 * 0.5);
  v59 = vmulq_n_f32(xmmword_1C25C8BC0, v58.__sinval);
  v59.i32[3] = LODWORD(v58.__cosval);
  v60.n128_f64[0] = simd_matrix4x4(v59);
  v61 = 0;
  v83 = v60;
  v84 = v62;
  v85 = v63;
  v86 = v64;
  do
  {
    *(&v87 + v61) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, COERCE_FLOAT(*(&v83 + v61))), v79, v83.n128_u64[v61 / 8], 1), v76, *(&v83 + v61), 2), v73, *(&v83 + v61), 3);
    v61 += 16;
  }

  while (v61 != 64);
  v79.i64[0] = v88.i64[0];
  v81.i64[0] = v87.i64[0];
  v73.i64[0] = v90.i64[0];
  v76.i64[0] = v89.i64[0];
LABEL_25:
  v48 = [[ARPlaneAnchor alloc] initWithIdentifier:a2 transform:v46 alignment:*v81.i64, *v79.i64, *v76.i64, *v73.i64];
  [(ARPlaneAnchor *)v48 setWorldAlignmentRotation:v47];
  CV3DPlaneDetectionPlaneUncertaintyAlongNormal();
  *&v49 = v49;
  [(ARPlaneAnchor *)v48 setUncertaintyAlongNormal:v49];
  _updateExtentsForPlaneAnchor(v48, a1, v20, a6, (a7 & 0x200) != 0);
  setSemantics(v48, a5, a1);
  if ([(ARPlaneAnchor *)v48 alignment]== ARPlaneAnchorAlignmentHorizontal)
  {
    v51 = AREulerAnglesFromMatrix(v69, v67, v66);
    *&v51 = *(&v51 + 1) * 0.318309886 * 180.0;
    v50 = *&v51;
  }

  [(NSUUID *)a2 ar_integerValue:v50];
  v52 = [(ARPlaneAnchor *)v48 planeExtent];
  [v52 width];
  v53 = [(ARPlaneAnchor *)v48 planeExtent];
  [v53 height];
  kdebug_trace();

  return v48;
}

void _updateExtentsForPlaneAnchor(ARPlaneAnchor *a1, const CV3DPlaneDetectionPlane *a2, float a3, int a4, int a5)
{
  v8 = a1;
  v9 = [(ARPlaneAnchor *)v8 worldAlignmentRotation];
  if (CV3DPlaneDetectionPlaneExtentOrientedBoundingBox() && CV3DPlaneDetectionPlaneGetOrientation() == *MEMORY[0x1E69C6C88])
  {
    CV3DPlaneDetectionPlaneExtentOrientedBoundingBox();
    v10 = __sincosf_stret(a3 * -0.5);
    v11 = vmulq_n_f32(xmmword_1C25C86A0, v10.__sinval);
    v11.i32[3] = LODWORD(v10.__cosval);
    *v12.i64 = simd_matrix4x4(v11);
    v16 = 0;
    v17 = 0x80000000800000;
    v18 = vneg_f32(0x80000000800000);
    do
    {
      v19 = vadd_f32(v15, *&vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*&v134[v16])), v13, *&v134[v16], 1), 0, v14));
      v18 = vminnm_f32(v18, v19);
      v17 = vmaxnm_f32(v17, v19);
      v16 += 8;
    }

    while (v16 != 32);
    *v13.f32 = vsub_f32(v17, v18);
    v20 = 0uLL;
    v21 = vtrn2q_s32(v13, 0);
    v21.i32[2] = v13.i32[0];
    v124 = v21;
    if (v9)
    {
      v131 = v13;
      v22 = -v9 * 3.14159265 / 180.0;
      v23 = __sincosf_stret(v22 * 0.5);
      v24 = vmulq_n_f32(xmmword_1C25C8BC0, v23.__sinval);
      v24.i32[3] = LODWORD(v23.__cosval);
      *v25.i64 = simd_matrix4x4(v24);
      v29 = 0;
      v135 = xmmword_1C25C9070;
      v136 = xmmword_1C25C9080;
      v137 = xmmword_1C25C8BC0;
      v138 = xmmword_1C25C8560;
      do
      {
        *(&v139 + v29) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v135 + v29))), v26, *(&v135 + v29), 1), v27, *(&v135 + v29), 2), v28, *(&v135 + v29), 3);
        v29 += 16;
      }

      while (v29 != 64);
      v31 = v139;
      v30 = v140;
      v33 = v141;
      v32 = v142;
      if (v9 == 90 || v9 == -90)
      {
        v34 = vzip1q_s32(v131, v142);
        v34.i32[1] = 0;
        v124 = v34;
      }

      v20 = 0uLL;
    }

    else
    {
      v32 = xmmword_1C25C8560;
      v33 = xmmword_1C25C8BC0;
      v30 = xmmword_1C25C9080;
      v31 = xmmword_1C25C9070;
    }

    v41 = vadd_f32(v18, v17);
    v40 = vaddq_f32(v32, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v31, 0.5 * v41.f32[0]), v30, vmuls_lane_f32(0.5, v41, 1)), v20, v33));
  }

  else
  {
    CV3DPlaneDetectionPlaneExtentAlignedBoundingBox();
    v35 = CV3DPlaneDetectionAlignedBoundingBoxMin();
    v36 = CV3DPlaneDetectionAlignedBoundingBoxMax();
    v37 = v36[1];
    v38.i32[0] = *(v35 + 4);
    v39 = (v37 + *v38.i32) * 0.5;
    v38.i64[0] = v38.u32[0];
    v38.i32[3] = 0;
    *v38.i32 = v37 - *v38.i32;
    *&v38.i32[2] = *v36 - *v35;
    v124 = v38;
    v40 = vaddq_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_1C25C9070, (*v36 + *v35) * 0.5), xmmword_1C25C9080, v39), 0), xmmword_1C25C8560);
  }

  v123 = vdivq_f32(v40, vdupq_laneq_s32(v40, 3));
  if (a4)
  {
    [(ARPlaneAnchor *)v8 setCenter:*v123.i64];
    v42 = [(ARPlaneAnchor *)v8 planeExtent];
    [v42 setRotationOnYAxis:0.0];
  }

  else
  {
    v43 = __sincosf_stret(a3 * 0.5);
    v44 = vmulq_n_f32(xmmword_1C25C8BC0, v43.__sinval);
    v44.i32[3] = LODWORD(v43.__cosval);
    *v45.i64 = simd_matrix4x4(v44);
    v49 = vaddq_f32(v48, vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v45, v123.f32[0]), 0, v46), v47, v123, 2));
    [(ARPlaneAnchor *)v8 setCenter:COERCE_DOUBLE(vdivq_f32(v49, vdupq_laneq_s32(v49, 3)).u32[0])];
    v42 = [(ARPlaneAnchor *)v8 planeExtent];
    *&v50 = a3;
    [v42 setRotationOnYAxis:v50];
  }

  [(ARPlaneAnchor *)v8 setExtent:*v124.i64];
  v51 = [(ARPlaneAnchor *)v8 planeExtent];
  [v51 setWidth:*v124.i64];

  v52 = [(ARPlaneAnchor *)v8 planeExtent];
  [v52 setHeight:{COERCE_DOUBLE(__PAIR64__(v124.u32[1], v124.u32[2]))}];

  if (!a4)
  {
    a3 = 0.0;
  }

  v53 = [(ARAnchor *)v8 identifier];
  [v53 ar_integerValue];
  kdebug_trace();

  v54 = [(ARPlaneAnchor *)v8 worldAlignmentRotation];
  v55 = __sincosf_stret(a3 * -0.5);
  v56 = vmulq_n_f32(xmmword_1C25C86A0, v55.__sinval);
  v56.i32[3] = LODWORD(v55.__cosval);
  *&v57 = simd_matrix4x4(v56);
  v58 = 0;
  v117 = v59;
  v119 = v57;
  v135 = v57;
  v136 = v59;
  v121 = v61;
  v122 = v60;
  v137 = v60;
  v138 = v61;
  do
  {
    *(&v139 + v58) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C9070, COERCE_FLOAT(*(&v135 + v58))), xmmword_1C25C9080, *(&v135 + v58), 1), xmmword_1C25C8BC0, *(&v135 + v58), 2), xmmword_1C25C8560, *(&v135 + v58), 3);
    v58 += 16;
  }

  while (v58 != 64);
  v129 = v142;
  v132 = v141;
  v125 = v140;
  v127 = v139;
  if (v54)
  {
    v62 = -v54 * 3.14159265 / 180.0;
    v63 = __sincosf_stret(v62 * 0.5);
    v64 = vmulq_n_f32(xmmword_1C25C8BC0, v63.__sinval);
    v64.i32[3] = LODWORD(v63.__cosval);
    *v65.i64 = simd_matrix4x4(v64);
    v69 = 0;
    v135 = v127;
    v136 = v125;
    v137 = v132;
    v138 = v129;
    do
    {
      *(&v139 + v69) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(&v135 + v69))), v66, *(&v135 + v69), 1), v67, *(&v135 + v69), 2), v68, *(&v135 + v69), 3);
      v69 += 16;
    }

    while (v69 != 64);
    v125 = v140;
    v127 = v139;
    v129 = v142;
    v132 = v141;
  }

  if (CV3DPlaneDetectionPlaneConvexHull2D() && (v70 = CV3DPlaneDetectionConvexHullPointsNum(), v70 >= 3))
  {
    v139 = 0uLL;
    v140.i64[0] = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v139, v70);
    v72 = CV3DPlaneDetectionConvexHullPointsRawPtr();
    v73 = *(&v139 + 1);
    v74 = (v72 + 4);
    do
    {
      v75 = vaddq_f32(v129, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v127, *(v74 - 1)), v125, *v74), 0, v132));
      v76 = vdivq_f32(v75, vdupq_laneq_s32(v75, 3));
      if (v73 >= v140.i64[0])
      {
        v77 = (v73 - v139) >> 4;
        if ((v77 + 1) >> 60)
        {
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
        }

        v78 = (v140.i64[0] - v139) >> 3;
        if (v78 <= v77 + 1)
        {
          v78 = v77 + 1;
        }

        if (v140.i64[0] - v139 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v79 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = v78;
        }

        if (v79)
        {
          _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(&v139, v79);
        }

        *(16 * v77) = v76;
        v73 = (16 * v77 + 16);
        v80 = (16 * v77 - (*(&v139 + 1) - v139));
        memcpy(v80, v139, *(&v139 + 1) - v139);
        v81 = v139;
        *&v139 = v80;
        *(&v139 + 1) = v73;
        v140.i64[0] = 0;
        if (v81)
        {
          operator delete(v81);
        }
      }

      else
      {
        *v73++ = v76;
      }

      *(&v139 + 1) = v73;
      v74 += 2;
      --v70;
    }

    while (v70);
    v71 = [[ARPlaneGeometry alloc] initWithBoundaryVertices:&v139 center:*v123.i64 extent:*v124.i64];
    if (v139)
    {
      *(&v139 + 1) = v139;
      operator delete(v139);
    }
  }

  else
  {
    v71 = 0;
  }

  [(ARPlaneAnchor *)v8 setGeometry:v71, v117, v119];
  v82 = [(ARAnchor *)v8 identifier];
  [v82 ar_integerValue];
  [(ARPlaneGeometry *)v71 vertexCount];
  [(ARPlaneGeometry *)v71 triangleCount];
  kdebug_trace();

  if (a5)
  {
    v83 = [(ARPlaneAnchor *)v8 worldAlignmentRotation];
    v84 = CV3DPlaneDetectionExtentGridLength();
    if (v84)
    {
      v85 = 0;
      v135 = v120;
      v136 = v118;
      v137 = v122;
      v138 = v121;
      do
      {
        *(&v139 + v85) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C9070, COERCE_FLOAT(*(&v135 + v85))), xmmword_1C25C9080, *(&v135 + v85), 1), xmmword_1C25C8BC0, *(&v135 + v85), 2), xmmword_1C25C8560, *(&v135 + v85), 3);
        v85 += 16;
      }

      while (v85 != 64);
      v130 = v142;
      v133 = v141;
      v126 = v140;
      v128 = v139;
      if (v83)
      {
        v86 = -v83 * 3.14159265 / 180.0;
        v87 = __sincosf_stret(v86 * 0.5);
        v88 = vmulq_n_f32(xmmword_1C25C8BC0, v87.__sinval);
        v88.i32[3] = LODWORD(v87.__cosval);
        *v89.i64 = simd_matrix4x4(v88);
        v93 = 0;
        v135 = v128;
        v136 = v126;
        v137 = v133;
        v138 = v130;
        do
        {
          *(&v139 + v93) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(*(&v135 + v93))), v90, *(&v135 + v93), 1), v91, *(&v135 + v93), 2), v92, *(&v135 + v93), 3);
          v93 += 16;
        }

        while (v93 != 64);
        v126 = v140;
        v128 = v139;
        v130 = v142;
        v133 = v141;
      }

      v139 = 0uLL;
      v140.i64[0] = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v139, v84);
      v94 = 0;
      v95 = -a3;
      do
      {
        CV3DPlaneDetectionExtentGridAtIndex();
        v96 = CV3DPlaneDetectionAlignedBoundingBoxMin();
        v97 = CV3DPlaneDetectionAlignedBoundingBoxMax();
        v98 = vadd_f32(*v96, *v97);
        v99 = vaddq_f32(v130, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v128, 0.5 * v98.f32[0]), v126, vmuls_lane_f32(0.5, v98, 1)), 0, v133));
        v100 = vdivq_f32(v99, vdupq_laneq_s32(v99, 3));
        v101 = COERCE_DOUBLE(vsub_f32(*v97, *v96));
        v102 = COERCE_DOUBLE(vrev64_s32(*&v101));
        if (v83 == -90)
        {
          v102 = v101;
        }

        if (v83 == 90)
        {
          v103 = v101;
        }

        else
        {
          v103 = v102;
        }

        v104 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
        v105 = *(&v139 + 1);
        if (*(&v139 + 1) >= v140.i64[0])
        {
          v107 = (*(&v139 + 1) - v139) >> 4;
          v108 = v107 + 1;
          if ((v107 + 1) >> 60)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v109 = v140.i64[0] - v139;
          if ((v140.i64[0] - v139) >> 3 > v108)
          {
            v108 = v109 >> 3;
          }

          if (v109 >= 0x7FFFFFFFFFFFFFF0)
          {
            v110 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v110 = v108;
          }

          if (v110)
          {
            _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(&v139, v110);
          }

          v111 = 16 * v107;
          *v111 = v104;
          *(v111 + 8) = v103;
          v106 = 16 * v107 + 16;
          v112 = 16 * v107 - (*(&v139 + 1) - v139);
          memcpy((v111 - (*(&v139 + 1) - v139)), v139, *(&v139 + 1) - v139);
          v113 = v139;
          *&v139 = v112;
          *(&v139 + 1) = v106;
          v140.i64[0] = 0;
          if (v113)
          {
            operator delete(v113);
          }
        }

        else
        {
          **(&v139 + 1) = v104;
          *(v105 + 8) = v103;
          v106 = v105 + 16;
        }

        *(&v139 + 1) = v106;
        ++v94;
      }

      while (v84 != v94);
      v114 = [ARPatchGrid alloc];
      HIDWORD(v115) = DWORD1(v139);
      v135 = v139;
      *&v136 = v140.i64[0];
      v140.i64[0] = 0;
      v139 = 0uLL;
      *&v115 = v95;
      v116 = [(ARPatchGrid *)v114 initWithPatchesVector:&v135 pivotAngle:v115];
      if (v135)
      {
        *(&v135 + 1) = v135;
        operator delete(v135);
      }

      if (v139)
      {
        *(&v139 + 1) = v139;
        operator delete(v139);
      }
    }

    else
    {
      v116 = 0;
    }

    [(ARPlaneAnchor *)v8 setGridExtent:v116];
  }
}

void sub_1C24F7E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  v32 = *(v30 - 256);
  if (v32)
  {
    *(v30 - 248) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 192);
  if (v33)
  {
    *(v30 - 184) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void setSemantics(ARPlaneAnchor *a1, char a2, const CV3DPlaneDetectionPlane *a3)
{
  v4 = a1;
  v5 = objc_opt_new();
  if (CV3DPlaneDetectionGetSemanticLabel())
  {
    if (v5)
    {
      NumSemanticLabels = CV3DPlaneDetectionGetNumSemanticLabels();
      if (NumSemanticLabels)
      {
        for (i = 0; i != NumSemanticLabels; ++i)
        {
          CV3DPlaneDetectionGetSemanticProbability();
          v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
          [v5 addObject:v8];
        }
      }
    }
  }

  setSemanticsFromCV3D(0, v5, a2, v4);
}

ARPlaneAnchor *ARUpdatePlaneAnchorFromCV3DPlane(ARPlaneAnchor *a1, const CV3DPlaneDetectionPlane *a2, simd_float4x4 a3, simd_float4x4 a4, char a5, int a6, __int16 a7)
{
  v67 = a4.columns[2];
  v70 = a4.columns[3];
  v73 = a4.columns[1];
  v80 = a4.columns[0];
  CV3DPlaneDetectionPlaneTransformationToWorld();
  v12 = 0;
  v84 = v13;
  v85 = v14;
  v86 = v15;
  v87 = v16;
  do
  {
    *(&v88 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, COERCE_FLOAT(*(&v84 + v12))), v73, v84.n128_u64[v12 / 8], 1), v67, *(&v84 + v12), 2), v70, *(&v84 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v71 = v89;
  v74 = v88;
  v65 = v91;
  v68 = v90;
  v17 = CV3DPlaneDetectionPlaneExtentOrientedBoundingBox();
  v18 = 0.0;
  if (CV3DPlaneDetectionPlaneGetOrientation() == *MEMORY[0x1E69C6C88] && v17 != 0)
  {
    v88 = v84;
    v89 = v85;
    if ((atomic_load_explicit(&qword_1EBF41CE8, memory_order_acquire) & 1) == 0)
    {
      ARCreatePlaneAnchorFromCV3DPlane();
    }

    v20 = 0;
    v21 = *&_MergedGlobals_1;
    do
    {
      v22 = v20 + 1;
      v23 = vsub_f32(*&v88.f32[2 * v20], *&v88.f32[2 * ((v20 + 1) & 3)]);
      v24 = vmul_f32(v23, v23);
      *v24.i32 = sqrtf(*&v24.i32[1] + (v23.f32[0] * v23.f32[0]));
      v25 = vdiv_f32(v23, vdup_lane_s32(v24, 0));
      if (v25.f32[0] >= v21)
      {
        v82 = v25.f32[1];
        v26 = acosf(fminf(fmaxf(v25.f32[0], -1.0), 1.0));
        if (v82 >= 0.0)
        {
          v18 = v26;
        }

        else
        {
          v18 = -v26;
        }
      }

      v20 = v22;
    }

    while (v22 != 4);
  }

  if (a6)
  {
    v27 = __sincosf_stret(v18 * 0.5);
    v28 = vmulq_n_f32(xmmword_1C25C86A0, v27.__sinval);
    v28.i32[3] = LODWORD(v27.__cosval);
    v29.n128_f64[0] = simd_matrix4x4(v28);
    v30 = 0;
    v84 = v29;
    v85 = v31;
    v86 = v32;
    v87 = v33;
    do
    {
      *(&v88 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(&v84 + v30))), v71, v84.n128_u64[v30 / 8], 1), v68, *(&v84 + v30), 2), v65, *(&v84 + v30), 3);
      v30 += 16;
    }

    while (v30 != 64);
    v34 = *v88.i64;
    v35 = *v89.i64;
    v36 = *v90.i64;
    v37 = *v91.i64;
  }

  else
  {
    v35 = *v71.i64;
    v34 = *v74.i64;
    v37 = *v65.i64;
    v36 = *v68.i64;
  }

  [ARPlaneData transformAnchorToPlaneAnchorConvention:v34, v35, v36, v37, *&v65];
  v38 = 0;
  v72 = v40;
  v75 = v39;
  v84 = v39;
  v85 = v40;
  v66 = v42;
  v69 = v41;
  v86 = v41;
  v87 = v42;
  do
  {
    *(&v88 + v38) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3.columns[0], COERCE_FLOAT(*(&v84 + v38))), a3.columns[1], v84.n128_u64[v38 / 8], 1), a3.columns[2], *(&v84 + v38), 2), a3.columns[3], *(&v84 + v38), 3);
    v38 += 16;
  }

  while (v38 != 64);
  v79 = v89;
  v81 = v88;
  v77 = v91;
  v78 = v90;
  v43 = [(ARPlaneAnchor *)a1 copy];
  [(ARAnchor *)v43 setTransform:*v81.i64, *v79.i64, *v78.i64, *v77.i64];
  CV3DPlaneDetectionPlaneUncertaintyAlongNormal();
  *&v44 = v44;
  [(ARPlaneAnchor *)v43 setUncertaintyAlongNormal:v44];
  if ([(ARPlaneAnchor *)v43 worldAlignmentRotation])
  {
    v45 = [(ARPlaneAnchor *)v43 worldAlignmentRotation]* 3.14159265 / 180.0;
    v46 = __sincosf_stret(v45 * 0.5);
    v47 = vmulq_n_f32(xmmword_1C25C8BC0, v46.__sinval);
    v47.i32[3] = LODWORD(v46.__cosval);
    v48.n128_f64[0] = simd_matrix4x4(v47);
    v49 = 0;
    v84 = v48;
    v85 = v50;
    v86 = v51;
    v87 = v52;
    do
    {
      *(&v88 + v49) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, COERCE_FLOAT(*(&v84 + v49))), v79, v84.n128_u64[v49 / 8], 1), v78, *(&v84 + v49), 2), v77, *(&v84 + v49), 3);
      v49 += 16;
    }

    while (v49 != 64);
    [(ARAnchor *)v43 setTransform:*v88.i64, *v89.i64, *v90.i64, *v91.i64];
  }

  _updateExtentsForPlaneAnchor(v43, a2, v18, a6, (a7 & 0x200) != 0);
  setSemantics(v43, a5, a2);
  if ([(ARPlaneAnchor *)v43 alignment]== ARPlaneAnchorAlignmentHorizontal)
  {
    v54 = AREulerAnglesFromMatrix(v75, v72, v69);
    v83 = *(&v54 + 1);
    [(ARAnchor *)a1 referenceTransform];
    AREulerAnglesFromMatrix(v55, v56, v57);
    v58 = v83 * 0.318309886 * 180.0;
    v60 = v58 + v59 * -0.318309886 * 180.0;
    v53 = v60;
  }

  v61 = [(ARAnchor *)v43 identifier:v53];
  [v61 ar_integerValue];
  v62 = [(ARPlaneAnchor *)v43 planeExtent];
  [v62 width];
  v63 = [(ARPlaneAnchor *)v43 planeExtent];
  [v63 height];
  kdebug_trace();

  return v43;
}

void setSemanticsFromCV3D(unsigned int a1, void *a2, char a3, void *a4)
{
  v21 = a2;
  v7 = a4;
  v8 = v21;
  v9 = v7;
  if ((a3 & 1) == 0)
  {
    v10 = [v21 count];
    v8 = v21;
    if (!v10)
    {
      v20 = 1;
      goto LABEL_15;
    }
  }

  if (![v8 count])
  {
    v20 = 0;
LABEL_15:
    [v9 setClassificationStatus:v20];
    [v9 setClassification:0];
    [v9 setPossibleClassifications:MEMORY[0x1E695E0F8]];
    goto LABEL_16;
  }

  v11 = objc_opt_new();
  for (i = 0; [v21 count] > i; ++i)
  {
    v13 = [v21 objectAtIndex:i];
    [v13 doubleValue];
    v15 = v14;

    if (v15 > 2.22044605e-16)
    {
      v16 = ARPlaneClassificationForSceneUnderstandingLabel(i);
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      [v11 setObject:v17 forKeyedSubscript:v18];
    }
  }

  if (a1)
  {
    [v9 setClassification:ARPlaneClassificationForSceneUnderstandingLabel(a1)];
    [v9 setClassificationStatus:3];
    v19 = NSStringFromSceneUnderstandingLabel(a1);
    [v9 setClassificationLabel:v19];
  }

  else
  {
    [v9 setClassification:0];
    [v9 setClassificationStatus:2];
  }

  [v9 setPossibleClassifications:v11];

LABEL_16:
}

void ___ZL13_ARLogGeneralv_block_invoke_15()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_19()
{
  if (_ARLogGeneral_onceToken_20 != -1)
  {
    _ARLogGeneral_cold_1_19();
  }

  v1 = _ARLogGeneral_logObj_20;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_30()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_29 = result;
  return result;
}

void std::vector<unsigned char>::resize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
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
    _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_17()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_16()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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

void _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
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

void _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v9);
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

char *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

char *_ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, v15);
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
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

char *_ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v15);
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
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_1C24FE878(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C24FF338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ARSpatialMappingResultData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C24FF470(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C24FF53C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_18()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_17()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_20()
{
  if (_ARLogGeneral_onceToken_21[0] != -1)
  {
    _ARLogGeneral_cold_1_20();
  }

  v1 = _ARLogGeneral_logObj_21;

  return v1;
}

id _ARLogGeneral_21()
{
  if (_ARLogGeneral_onceToken_22 != -1)
  {
    _ARLogGeneral_cold_1_21();
  }

  v1 = _ARLogGeneral_logObj_22;

  return v1;
}

uint64_t ARCaptureLensFromMakerNotesDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    if (ARShouldUseLogTypeError_onceToken_30 != -1)
    {
      ARCaptureLensFromMakerNotesDictionary_cold_1();
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_30;
    v8 = _ARLogGeneral_21();
    v4 = v8;
    if (v7 == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v24 = 0;
      v9 = "Could not retrieve MakerNotes dictionary from metadata.";
      v10 = &v24;
      v11 = v4;
      v12 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v9 = "Error: Could not retrieve MakerNotes dictionary from metadata.";
      v10 = buf;
      v11 = v4;
      v12 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v11, v12, v9, v10, 2u);
    goto LABEL_22;
  }

  v3 = [v1 valueForKey:*MEMORY[0x1E6990A60]];
  v4 = v3;
  if (!v3)
  {
    if (ARShouldUseLogTypeError_onceToken_30 != -1)
    {
      ARCaptureLensFromMakerNotesDictionary_cold_1();
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_30;
    v14 = _ARLogGeneral_21();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = 0;
        v16 = "Could not retrieve lens information from MakerNotes dictionary.";
        v17 = &v22;
        v18 = v15;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v18, v19, v16, v17, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = 0;
      v16 = "Error: Could not retrieve lens information from MakerNotes dictionary.";
      v17 = &v21;
      v18 = v15;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v5 = [v3 integerValue]- 2;
  if (v5 > 4)
  {
LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v6 = qword_1C25C9178[v5];
LABEL_23:

  return v6;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_31()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_30 = result;
  return result;
}

id _ARLogGeneral_22()
{
  if (_ARLogGeneral_onceToken_23 != -1)
  {
    _ARLogGeneral_cold_1_22();
  }

  v1 = _ARLogGeneral_logObj_23;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_32()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_31 = result;
  return result;
}

BOOL _isPointCloudBlackened(void *a1)
{
  v1 = a1;
  if ([v1 pointCount] < 1)
  {
    v4 = 1;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = [v1 spotIdentifiers];
      v4 = *(v3 + v2) == 0;
      if (*(v3 + v2))
      {
        break;
      }

      ++v2;
    }

    while ([v1 pointCount] > v2);
  }

  return v4;
}

id _ARLogGeneral_23()
{
  if (_ARLogGeneral_onceToken_24 != -1)
  {
    _ARLogGeneral_cold_1_23();
  }

  v1 = _ARLogGeneral_logObj_24;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_33()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_32 = result;
  return result;
}

id ARSensorDataTypesToString(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (!a1)
  {
    v4 = @"None";
LABEL_20:
    [v3 addObject:v4];
    goto LABEL_21;
  }

  if (a1)
  {
    [v2 addObject:@"ColorImage"];
    if ((a1 & 2) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"Accelerometer"];
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"Gyroscope"];
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 addObject:@"DeviceOrientation"];
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 addObject:@"FaceMetaData"];
  if ((a1 & 0x20) == 0)
  {
LABEL_8:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    [v3 addObject:@"Location"];
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_17:
  [v3 addObject:@"Depth"];
  if ((a1 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((a1 & 0x400) != 0)
  {
LABEL_19:
    v4 = @"Magnetometer";
    goto LABEL_20;
  }

LABEL_21:
  v5 = [v3 componentsJoinedByString:@" | "];

  return v5;
}

id ARDictionaryFromAnchors(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 identifier];
        [v2 setObject:v8 forKey:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

id ARAnchorsForPoseGraphUpdates(void *a1)
{
  v1 = MEMORY[0x1E696AE18];
  v2 = a1;
  v3 = [v1 predicateWithBlock:&__block_literal_global_75];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

id ARAnchorsForPublicDelegate(void *a1)
{
  v1 = MEMORY[0x1E696AE18];
  v2 = a1;
  v3 = [v1 predicateWithBlock:&__block_literal_global_53];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

__CFString *ARTrackingStateToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E817D438[a1];
  }
}

__CFString *ARTrackingStateReasonToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E817D450[a1];
  }
}

id NSStringFromARCollaborationData(void *a1)
{
  v1 = MEMORY[0x1E696AD60];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v1 stringWithFormat:@"<%@: %p", v4, v2];

  v6 = [v2 priority];
  v7 = @"optional";
  if (!v6)
  {
    v7 = @"critical";
  }

  [v5 appendFormat:@" priority=%@", v7];
  [v5 appendFormat:@" version=%ti", objc_msgSend(v2, "version")];
  [v2 timestamp];
  [v5 appendFormat:@" timestamp=%f", v8];
  v9 = [v2 vioData];
  [v5 appendFormat:@" vioData=%tu", objc_msgSend(v9, "length")];

  v10 = NSStringFromSLAMCMDataType([v2 vioDataType]);
  [v5 appendFormat:@" vioDataType=%@", v10];

  [v5 appendFormat:@" vioSessionID=%llX", objc_msgSend(v2, "vioSessionID")];
  v11 = [v2 anchors];
  [v5 appendFormat:@" anchors=%tu", objc_msgSend(v11, "count")];

  v12 = [v2 recipientIdentifiers];

  [v5 appendFormat:@" recipients=%@", v12];
  [v5 appendString:@">"];

  return v5;
}

void sub_1C250D4CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZL26ARFaceAnchorInitializeMapsv_block_invoke()
{
  if (+[ARFaceTrackingInternalTechnique isSupported])
  {
    v12 = 0;
    CVAFaceTrackingCopySemantics();
    v0 = objc_opt_new();
    v1 = objc_opt_new();
    v2 = [0 objectForKeyedSubscript:*MEMORY[0x1E698BFC0]];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZL26ARFaceAnchorInitializeMapsv_block_invoke_2;
    v9[3] = &unk_1E817D648;
    v3 = v0;
    v10 = v3;
    v4 = v1;
    v11 = v4;
    [v2 enumerateObjectsUsingBlock:v9];
    v5 = _blendShapeLocationToIndexMap;
    _blendShapeLocationToIndexMap = v3;
    v6 = v3;

    v7 = _indexToBlendShapeLocationMap;
    _indexToBlendShapeLocationMap = v4;
    v8 = v4;
  }
}

void ___ZL26ARFaceAnchorInitializeMapsv_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

void ___ZL13_ARLogGeneralv_block_invoke_18()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

__CFString *NSStringFromARWorldMappingStatus(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817D668[a1];
  }
}

__CFString *NSStringFromARAltitudeSource(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"???";
  }

  else
  {
    return off_1E817D688[a1];
  }
}

id _ARLogGeneral_24()
{
  if (_ARLogGeneral_onceToken_26 != -1)
  {
    _ARLogGeneral_cold_1_24();
  }

  v1 = _ARLogGeneral_logObj_26;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_34()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_33 = result;
  return result;
}

__CFString *NSStringFromARGeoTrackingState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E817D6A8[a1];
  }
}

__CFString *NSStringFromARGeoTrackingAccuracy(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E817D6C8[a1];
  }
}

__CFString *NSStringFromARGeoTrackingStateReason(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E817D6E8[a1];
  }
}

__CFString *NSStringFromARGeoTrackingInternalFailureReason(uint64_t a1)
{
  if (a1 > 63)
  {
    if (a1 <= 511)
    {
      switch(a1)
      {
        case 64:
          return @"Invalid VIO Pose";
        case 128:
          return @"Phone Angle";
        case 256:
          return @"VL Bad Image";
      }
    }

    else if (a1 > 2047)
    {
      if (a1 == 2048)
      {
        return @"VL Unrecognized Error";
      }

      if (a1 == 4096)
      {
        return @"Waiting For Availability Check";
      }
    }

    else
    {
      if (a1 == 512)
      {
        return @"VL Unavailable At Location";
      }

      if (a1 == 1024)
      {
        return @"Waiting For Location";
      }
    }
  }

  else if (a1 <= 3)
  {
    switch(a1)
    {
      case 0:
        return @"None";
      case 1:
        return @"VL Unsupported";
      case 2:
        return @"VL Map Data Not Loaded";
    }
  }

  else if (a1 > 15)
  {
    if (a1 == 16)
    {
      return @"VL Rejected Pose";
    }

    if (a1 == 32)
    {
      return @"VL Bad Input";
    }
  }

  else
  {
    if (a1 == 4)
    {
      return @"VL Map Data Pending";
    }

    if (a1 == 8)
    {
      return @"VL Pose Estimation Failed";
    }
  }

  return @"Unknown";
}

void sub_1C2515F30(_Unwind_Exception *a1)
{
  std::__tree<std::array<unsigned char,16ul>>::destroy(v3 - 216, *(v3 - 208));

  _Unwind_Resume(a1);
}

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(uint64_t a1, unint64_t *a2)
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

void *std::set<unsigned long long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<unsigned long long>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<unsigned long long>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

__n128 ARMinimumCornerForVertexSource(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 buffer];
    v5 = [v4 contents];

    *&v6 = *v5;
    v8 = *(v5 + 8);
    v7 = (v5 + 8);
    v9 = v8;
    do
    {
      *&v6 = vbsl_s8(vcgt_f32(*(v7 - 2), *&v6), *&v6, *(v7 - 2));
      v10 = *v7;
      v7 += 3;
      v11 = v10;
      if (v9 >= v10)
      {
        v9 = v11;
      }

      --v3;
    }

    while (v3);
    *(&v6 + 2) = v9;
    v13 = v6;
  }

  else
  {
    v13 = 0u;
  }

  return v13;
}

void ARConvertVisionSourceToWorldSource(void *a1, int a2, simd_float4 a3, simd_float4 a4, simd_float4 a5, simd_float4 a6)
{
  v20.columns[2] = a5;
  v20.columns[3] = a6;
  v20.columns[0] = a3;
  v20.columns[1] = a4;
  v25 = a1;
  v7 = [v25 buffer];
  v8 = [v7 contents];

  v32 = __invert_f4(v20);
  v20.columns[2] = v32.columns[1];
  v20.columns[3] = v32.columns[0];
  v20.columns[0] = v32.columns[3];
  v20.columns[1] = v32.columns[2];
  *v9.i64 = ARVisionToRenderingCoordinateTransform();
  v13 = 0;
  v26[0] = v20.columns[3];
  v26[1] = v20.columns[2];
  v26[2] = v20.columns[1];
  v26[3] = v20.columns[0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  do
  {
    *(&v27 + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v26[v13])), v10, *&v26[v13], 1), v11, v26[v13], 2), v12, v26[v13], 3);
    ++v13;
  }

  while (v13 != 4);
  v23 = v28;
  v24 = v27;
  v21 = v30;
  v22 = v29;
  v14 = [v25 count];
  if (v14)
  {
    v16 = 0;
    v15.i32[0] = 1.0;
    if (a2)
    {
      *v15.i32 = 0.0;
    }

    v17 = vdupq_lane_s32(v15, 0);
    v18 = (v8 + 8);
    do
    {
      v19 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v24, *(v18 - 2)), v23, *(v18 - 1)), v22, *v18), v17, v21);
      if ((a2 & 1) == 0)
      {
        v19 = vdivq_f32(v19, vdupq_laneq_s32(v19, 3));
      }

      *(v18 - 1) = v19.i64[0];
      *v18 = v19.f32[2];
      v16 += 3;
      v18 += 3;
    }

    while (v16 < 3 * v14);
  }
}

char **cv3d::recon::mesh_util::TriMesh<float,unsigned int>::operator=(char **a1, char **a2)
{
  if (a1 != a2)
  {
    std::vector<cva::Matrix<float,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
    std::vector<cva::Matrix<float,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(a1 + 3, a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 2));
    std::vector<cva::Matrix<float,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(a1 + 6, a2[6], a2[7], 0xAAAAAAAAAAAAAAABLL * ((a2[7] - a2[6]) >> 2));
    std::vector<cva::Matrix<float,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(a1 + 9, a2[9], a2[10], 0xAAAAAAAAAAAAAAABLL * ((a2[10] - a2[9]) >> 2));
    std::vector<cva::Matrix<unsigned int,2u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<unsigned int,2u,1u,false>*,cva::Matrix<unsigned int,2u,1u,false>*>(a1 + 12, a2[12], a2[13], (a2[13] - a2[12]) >> 3);
    std::vector<cva::Matrix<unsigned int,2u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<unsigned int,2u,1u,false>*,cva::Matrix<unsigned int,2u,1u,false>*>(a1 + 15, a2[15], a2[16], (a2[16] - a2[15]) >> 3);
    std::vector<cva::Matrix<float,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(a1 + 18, a2[18], a2[19], 0xAAAAAAAAAAAAAAABLL * ((a2[19] - a2[18]) >> 2));
  }

  return a1;
}

char *std::vector<cva::Matrix<float,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<cva::Matrix<float,3u,1u,false>>::__vallocate[abi:ne200100](a1, v11);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      if (v5 != result)
      {
        v19 = *v5;
        *(result + 2) = *(v5 + 2);
        *result = v19;
      }

      v5 += 12;
      result += 12;
    }

    a1[1] = result;
  }

  else
  {
    if (v12 != result)
    {
      v14 = &a2[v13];
      do
      {
        if (v5 != result)
        {
          v15 = *v5;
          *(result + 2) = *(v5 + 2);
          *result = v15;
        }

        v5 += 12;
        result += 12;
        v13 -= 12;
      }

      while (v13);
      v12 = a1[1];
      v5 = v14;
    }

    v16 = v12;
    if (v5 != a3)
    {
      v16 = v12;
      v17 = v12;
      do
      {
        v18 = *v5;
        *(v17 + 2) = *(v5 + 2);
        *v17 = v18;
        v17 += 12;
        v5 += 12;
        v16 += 12;
      }

      while (v5 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void std::vector<cva::Matrix<float,3u,1u,false>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::allocator<cva::Matrix<float,3u,1u,false>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<cva::Matrix<float,3u,1u,false>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<cva::Matrix<unsigned int,2u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<unsigned int,2u,1u,false>*,cva::Matrix<unsigned int,2u,1u,false>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, v10);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      if (v5 != result)
      {
        *result = *v5;
      }

      v5 += 8;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    if (v11 != result)
    {
      v13 = &a2[v12];
      do
      {
        if (v5 != result)
        {
          *result = *v5;
        }

        v5 += 8;
        result += 8;
        v12 -= 8;
      }

      while (v12);
      v11 = a1[1];
      v5 = v13;
    }

    v14 = v11;
    if (v5 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v5;
        v5 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v5 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void *cv3d::recon::mesh_util::TriMesh<float,unsigned int>::TriMesh(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<cva::Matrix<float,3u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<cva::Matrix<float,3u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>((a1 + 3), a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 2));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<cva::Matrix<float,3u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>((a1 + 6), a2[6], a2[7], 0xAAAAAAAAAAAAAAABLL * ((a2[7] - a2[6]) >> 2));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<cva::Matrix<unsigned int,3u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<unsigned int,3u,1u,false>*,cva::Matrix<unsigned int,3u,1u,false>*>((a1 + 9), a2[9], a2[10], 0xAAAAAAAAAAAAAAABLL * ((a2[10] - a2[9]) >> 2));
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  std::vector<cva::Matrix<unsigned int,2u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<unsigned int,2u,1u,false>*,cva::Matrix<unsigned int,2u,1u,false>*>((a1 + 12), a2[12], a2[13], (a2[13] - a2[12]) >> 3);
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  std::vector<cva::Matrix<float,2u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<float,2u,1u,false>*,cva::Matrix<float,2u,1u,false>*>((a1 + 15), a2[15], a2[16], (a2[16] - a2[15]) >> 3);
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  std::vector<cva::Matrix<unsigned int,3u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<unsigned int,3u,1u,false>*,cva::Matrix<unsigned int,3u,1u,false>*>((a1 + 18), a2[18], a2[19], 0xAAAAAAAAAAAAAAABLL * ((a2[19] - a2[18]) >> 2));
  return a1;
}

void sub_1C2518F1C(_Unwind_Exception *exception_object)
{
  v8 = *v6;
  if (*v6)
  {
    *(v1 + 128) = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v12;
    operator delete(v12);
  }

  v13 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cva::Matrix<float,3u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<float,3u,1u,false>*,cva::Matrix<float,3u,1u,false>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<cva::Matrix<float,3u,1u,false>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2519014(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cva::Matrix<unsigned int,3u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<unsigned int,3u,1u,false>*,cva::Matrix<unsigned int,3u,1u,false>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<cva::Matrix<float,3u,1u,false>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2519094(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cva::Matrix<unsigned int,2u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<unsigned int,2u,1u,false>*,cva::Matrix<unsigned int,2u,1u,false>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C2519108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cva::Matrix<float,2u,1u,false>>::__init_with_size[abi:ne200100]<cva::Matrix<float,2u,1u,false>*,cva::Matrix<float,2u,1u,false>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C251917C(_Unwind_Exception *exception_object)
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
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
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

uint64_t cv3d::recon::mesh_util::TriMesh<float,unsigned int>::~TriMesh(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

__CFString *NSStringFromARPlaneClassification(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"None";
  }

  else
  {
    return off_1E817D730[a1 - 1];
  }
}

__CFString *NSStringFromARPlaneClassificationStatus(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unavailable";
  }

  else
  {
    return off_1E817D768[a1 - 1];
  }
}

__CFString *NSStringFromARPlaneAlignment(uint64_t a1)
{
  v1 = @"vertical";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"horizontal";
  }
}

id ARCreateOBJStringForPlaneAnchors(void *a1, void *a2, float a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [MEMORY[0x1E696AD60] string];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v78;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v78 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v77 + 1) + 8 * i);
        v15 = [v14 geometry];
        v11 += [v15 vertexCount];

        v16 = [v14 geometry];
        v10 += [v16 triangleCount];
      }

      v9 = [v7 countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v9);

    if (v11)
    {
      v17 = v10 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      [v6 appendString:@"#\n"];
      v18 = MEMORY[0x1E696AEC0];
      v19 = [MEMORY[0x1E696AAE8] mainBundle];
      v20 = [v19 bundleIdentifier];
      v21 = ARVersionStringForIdentifier(v20);
      v22 = ARVersionStringForIdentifier(@"com.apple.ARKit");
      ARVersionStringForIdentifier(@"com.apple.AppleCV3D");
      v23 = v66 = v7;
      v24 = [v18 stringWithFormat:@"# ARKit plane geometry mesh exported from ARExamples %@, ARKit %@, AppleCV3D %@\n", v21, v22, v23];
      [v6 appendString:v24];

      [v6 appendString:@"#\n"];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"# Vertex count: %d\n", v11];
      [v6 appendString:v25];

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"# Face count: %d\n", (2 * v10)];
      [v6 appendString:v26];

      [v6 appendString:@"#\n"];
      [v6 appendString:@"# Real world scale is 1 unit = 1 m\n"];
      [v6 appendString:@"# Each vertex is followed by four RGBA color values in range [0.0 - 1.0] (not in spec)\n"];
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v66;
      v69 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v69)
      {
        v27 = 1;
        v68 = *v73;
        v28 = a3;
        do
        {
          v29 = 0;
          do
          {
            if (*v73 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v70 = v29;
            v30 = *(*(&v72 + 1) + 8 * v29);
            [v6 appendString:@"\n"];
            v31 = MEMORY[0x1E696AEC0];
            v32 = [v30 identifier];
            v33 = [v32 UUIDString];
            v34 = [v31 stringWithFormat:@"o plane_anchor_%@\n", v33];
            [v6 appendString:v34];

            [v6 appendString:@"\n"];
            v35 = [v30 geometry];
            v36 = [v35 vertices];
            v37 = [v35 vertexCount];
            v38 = ARCV3DColorComponentsForARKitSemantics([v30 classification]);
            v71 = v37;
            if (v37)
            {
              v39 = v38.n128_f32[0];
              v40 = v38.n128_f32[1];
              v41 = v38.n128_f32[2];
              v42 = v37;
              do
              {
                v43 = *v36++;
                [v30 transform];
                v48 = vaddq_f32(v47, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, v43.f32[0]), v45, *v43.f32, 1), v46, v43, 2));
                v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v %.03f %.03f %.03f %.03f %.03f %.03f %.03f\n", v48.f32[0], v48.f32[1], v48.f32[2], *&v39, *&v40, *&v41, *&v28];
                [v6 appendString:v49];

                --v42;
              }

              while (v42);
            }

            [v6 appendString:{@"\n", v38.n128_f64[0]}];
            v50 = [v35 triangleIndices];
            v51 = [v35 triangleCount];
            if (v51)
            {
              v52 = v51;
              v53 = (v50 + 4);
              do
              {
                v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f %d %d %d\n", (v27 + *(v53 - 2)), (v27 + *(v53 - 1)), (v27 + *v53)];
                [v6 appendString:v54];

                v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f %d %d %d\n", (v27 + *v53), (v27 + *(v53 - 1)), (v27 + *(v53 - 2))];
                [v6 appendString:v55];

                v53 += 3;
                --v52;
              }

              while (v52);
            }

            v27 += v71;

            v29 = v70 + 1;
          }

          while (v70 + 1 != v69);
          v69 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
        }

        while (v69);
      }

      [v6 appendString:@"\n"];
      [v6 appendString:@"# EOF\n"];
      v7 = v66;
      goto LABEL_37;
    }
  }

  else
  {
  }

  if (ARShouldUseLogTypeError_onceToken_34 != -1)
  {
    ARCreateOBJStringForPlaneAnchors_cold_1();
  }

  v56 = ARShouldUseLogTypeError_internalOSVersion_34;
  v57 = _ARLogGeneral_25();
  v58 = v57;
  if (v56 == 1)
  {
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v59 = "No mesh to save.";
    v60 = v58;
    v61 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v59 = "Error: No mesh to save.";
    v60 = v58;
    v61 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v60, v61, v59, buf, 2u);
LABEL_35:

  if (a2)
  {
    v62 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E696A250];
    v82 = *MEMORY[0x1E696A578];
    v83 = @"There is no plane geometry mesh to save.";
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    *a2 = [v62 errorWithDomain:v63 code:-1 userInfo:v64];
  }

LABEL_37:

  return v6;
}

id _ARLogGeneral_25()
{
  if (_ARLogGeneral_onceToken_27 != -1)
  {
    _ARLogGeneral_cold_1_25();
  }

  v1 = _ARLogGeneral_logObj_27;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_35()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_34 = result;
  return result;
}

uint64_t ARPowerUsageForThermalState(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t ARPowerUsageForPowerPressureLevel(int a1)
{
  v1 = a1 == 20;
  if (a1 == 30)
  {
    v1 = 2;
  }

  if (a1 == 40)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

id _ARLogGeneral_26()
{
  if (_ARLogGeneral_onceToken_28 != -1)
  {
    _ARLogGeneral_cold_1_26();
  }

  v1 = _ARLogGeneral_logObj_28;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_36()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_35 = result;
  return result;
}

id _ARLogGeneral_27()
{
  if (_ARLogGeneral_onceToken_29 != -1)
  {
    _ARLogGeneral_cold_1_27();
  }

  v1 = _ARLogGeneral_logObj_29;

  return v1;
}

ARSkeletonJointName ARSkeletonJointNameForRecognizedPointKey(VNRecognizedPointKey recognizedPointKey)
{
  v1 = recognizedPointKey;
  v2 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
  v3 = [v2 jointNames];
  v4 = [v3 containsObject:v1];

  if (v4)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void anonymous namespace::populateJointnameToIndex(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8[0] = [*(*(&v9 + 1) + 8 * v7) UTF8String];
        v8[1] = strlen(v8[0]);
        v13 = v8;
        std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view&&>,std::tuple<>>(a2, v8)[4] = v5;
        ++v7;
        v5 = (v5 + 1);
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:{16, v8[0]}];
    }

    while (v4);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::find<std::string_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::~__hash_table(uint64_t a1)
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

id _ARLogSensor_10()
{
  if (_ARLogSensor_onceToken_14 != -1)
  {
    _ARLogSensor_cold_1_10();
  }

  v1 = _ARLogSensor_logObj_14;

  return v1;
}

id _ARLogGeneral_28()
{
  if (_ARLogGeneral_onceToken_30 != -1)
  {
    _ARLogGeneral_cold_1_28();
  }

  v1 = _ARLogGeneral_logObj_30;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_37()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_36 = result;
  return result;
}

id _ARLogGeneral_29()
{
  if (_ARLogGeneral_onceToken_31 != -1)
  {
    _ARLogGeneral_cold_1_29();
  }

  v1 = _ARLogGeneral_logObj_31;

  return v1;
}

void sub_1C2528A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void (*)(uint64_t *));
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v14(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_38()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_37 = result;
  return result;
}

id _ARLogGeneral_30()
{
  if (_ARLogGeneral_onceToken_32 != -1)
  {
    _ARLogGeneral_cold_1_30();
  }

  v1 = _ARLogGeneral_logObj_32;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_39()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_38 = result;
  return result;
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = v3 - v6;
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

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_1C252C3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ARCubemapCompletion;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C252D5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_19()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL15_ARLogTechniquev_block_invoke_14()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

void ___ZL13_ARLogGeneralv_block_invoke_19()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

float AREarthMoversDistance(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v3 = (a1 + 4);
  v4 = (a2 + 4);
  v36 = 0;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = v3;
    do
    {
      v8 = 0;
      v9 = v6;
      v10 = v7;
      do
      {
        v11 = *v9;
        if (*v10 > 0.0 || v11 > 0.0)
        {
          *v33 = *v10;
          std::vector<double>::push_back[abi:ne200100](&v43, v33);
          *&v12 = v8 + v8;
          *(&v12 + 1) = v5;
          *(&v12 + 2) = v2;
          v31 = v12;
          v33[0] = v12;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&v40, v33);
          *v33 = v11;
          std::vector<double>::push_back[abi:ne200100](&v37, v33);
          v33[0] = v31;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&v34, v33);
        }

        ++v8;
        v10 += 64;
        v9 += 64;
      }

      while (v8 != 4);
      ++v5;
      v7 += 8;
      v6 += 8;
    }

    while (v5 != 8);
    ++v2;
    ++v3;
    ++v4;
  }

  while (v2 != 8);
  v14 = v43;
  v13 = v44;
  std::vector<double>::vector[abi:ne200100](__p, (v38 - v37) >> 3);
  std::vector<std::vector<double>>::vector[abi:ne200100](v33, (v13 - v14) >> 3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v44 == v43)
  {
    goto LABEL_23;
  }

  v15 = 0;
  v16 = (v44 - v43) >> 3;
  v18 = v37;
  v17 = v38;
  v19 = (v38 - v37) >> 3;
  v20 = v40;
  v21 = v34;
  v22 = *&v33[0];
  if (v19 <= 1)
  {
    v19 = 1;
  }

  if (v16 <= 1)
  {
    v16 = 1;
  }

  do
  {
    if (v17 != v18)
    {
      v23 = *(v22 + 24 * v15);
      v24 = v21;
      v25 = v19;
      do
      {
        v26 = *v24++;
        v27 = vsubq_f32(v20[v15], v26);
        v28 = vmulq_f32(v27, v27);
        *v23++ = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
        --v25;
      }

      while (v25);
    }

    ++v15;
  }

  while (v15 != v16);
  if (v38 == v37)
  {
LABEL_23:
    v29 = INFINITY;
  }

  else
  {
    v29 = emd_hat_gd_metric<double,(FLOW_TYPE_T)0>::operator()(-1.0, __p, &v43, &v37, v33);
  }

  __p[0] = v33;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v29;
}

void sub_1C252E92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  v30 = *(v27 - 120);
  if (v30)
  {
    *(v27 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

double emd_hat_gd_metric<double,(FLOW_TYPE_T)0>::operator()(double a1, uint64_t a2, uint64_t *a3, uint64_t *a4, double ***a5)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v23, *a3, a3[1], (a3[1] - *a3) >> 3);
  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  v9 = v23;
  if (v24 != v23)
  {
    v10 = 0;
    v11 = (v24 - v23) >> 3;
    v12 = __p;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v13 = v23;
    do
    {
      v14 = *v13;
      v15 = *v12;
      if (*v13 >= *v12)
      {
        *v13 = v14 - v15;
        v16 = v12;
      }

      else
      {
        v16 = &v9[8 * v10];
        *v12 = v15 - v14;
      }

      *v16 = 0.0;
      ++v10;
      ++v12;
      ++v13;
      --v11;
    }

    while (v11);
  }

  v17 = emd_hat_impl<double,(FLOW_TYPE_T)0>::operator()(a1, &v19, a3, a4, &v23, &__p, a5);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v17;
}

void sub_1C252EBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

float ARCubemapSimilarity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  v9 = v7;
  v10 = v9;
  v11 = INFINITY;
  if (v8 && v9)
  {
    v12 = objc_opt_new();
    v13 = v12;
    memset(__src, 0, 512);
    if (v12)
    {
      [v12 colorHistogramForCubemap:v8];
      memset(v17, 0, 512);
      [v13 colorHistogramForCubemap:v10];
    }

    else
    {
      bzero(__src, 0x404uLL);
      bzero(v17, 0x404uLL);
    }

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v15, v17, sizeof(v15));
    v11 = AREarthMoversDistance(__dst, v15);
  }

  return v11;
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1C252EEBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<double>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::vector<double>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<std::vector<double>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C252F098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<double>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<double>>::clear[abi:ne200100](uint64_t *a1)
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

double emd_hat_impl<double,(FLOW_TYPE_T)0>::operator()(double a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, double ***a7)
{
  v13 = a5[1] - *a5;
  std::vector<long long>::vector[abi:ne200100](v52, (v13 >> 3));
  std::vector<long long>::vector[abi:ne200100](v51, (v13 >> 3));
  std::vector<long long>::vector[abi:ne200100](v50, (v13 >> 3));
  std::vector<long long>::vector[abi:ne200100](v49, (v13 >> 3));
  std::vector<long long>::vector[abi:ne200100](__p, (v13 >> 3));
  std::vector<std::vector<long long>>::vector[abi:ne200100](v48, (v13 >> 3));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::vector<long long>::vector[abi:ne200100](v46, (v13 >> 3));
  std::vector<std::vector<long long>>::vector[abi:ne200100](__p, (v13 >> 3));
  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  v14 = *a7;
  v15 = ***a7;
  if ((v13 >> 3) <= 0)
  {
    v25 = 0.0;
    v26 = INFINITY;
    v18 = 0.0;
    v19 = 0.0;
    v36 = 1000000.0 / v15;
  }

  else
  {
    v16 = 0;
    v17 = (v13 >> 3) & 0x7FFFFFFF;
    v18 = 0.0;
    v19 = 0.0;
    do
    {
      v18 = v18 + *(*a3 + 8 * v16);
      v19 = v19 + *(*a4 + 8 * v16);
      v20 = v14[3 * v16];
      v21 = (v13 >> 3) & 0x7FFFFFFF;
      do
      {
        v22 = *v20++;
        v23 = v22;
        if (v22 > v15)
        {
          v15 = v23;
        }

        --v21;
      }

      while (v21);
      ++v16;
    }

    while (v16 != v17);
    v24 = 0;
    if (v18 >= v19)
    {
      v25 = v18;
    }

    else
    {
      v25 = v19;
    }

    v26 = 1000000.0 / v25;
    v27 = *a3;
    v28 = v52[0];
    v29 = *a4;
    v30 = v51[0];
    v31 = *a5;
    v32 = v50[0];
    v33 = *a6;
    v34 = v49[0];
    v35 = v48[0];
    v36 = 1000000.0 / v15;
    do
    {
      v28[v24] = vcvtmd_s64_f64(*(v27 + 8 * v24) * v26 + 0.5);
      v30[v24] = vcvtmd_s64_f64(*(v29 + 8 * v24) * v26 + 0.5);
      v32[v24] = vcvtmd_s64_f64(*(v31 + 8 * v24) * v26 + 0.5);
      v34[v24] = vcvtmd_s64_f64(*(v33 + 8 * v24) * v26 + 0.5);
      v37 = v14[3 * v24];
      v38 = *(v35 + 24 * v24);
      v39 = (v13 >> 3) & 0x7FFFFFFF;
      do
      {
        v40 = *v37++;
        *v38++ = vcvtmd_s64_f64(v40 * v36 + 0.5);
        --v39;
      }

      while (v39);
      ++v24;
    }

    while (v24 != v17);
  }

  v41 = emd_hat_impl_integral_types<long long,(FLOW_TYPE_T)0>::operator()(&v53, v52, v51, v50, v49, v48, 0);
  v46[0] = __p;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](v46);
  __p[0] = v48;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v19 >= v18)
  {
    v42 = v18;
  }

  else
  {
    v42 = v19;
  }

  v43 = v25 - v42;
  if (a1 == -1.0)
  {
    v44 = v15;
  }

  else
  {
    v44 = a1;
  }

  return v41 / v26 / v36 + v43 * v44;
}

void sub_1C252F464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a12 = &a15;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1C252F580(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<long long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<long long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::vector<long long>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<std::vector<long long>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C252F75C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t emd_hat_impl_integral_types<long long,(FLOW_TYPE_T)0>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char **a5, uint64_t *a6, uint64_t a7)
{
  v7 = a4[1] - *a4;
  v8 = v7 >> 3;
  if ((a5[1] - *a5) >> 3 != (v7 >> 3))
  {
    emd_hat_impl_integral_types<long long,(FLOW_TYPE_T)0>::operator()();
  }

  v99 = 0;
  v100 = 0;
  v101 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  memset(v95, 0, sizeof(v95));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long>*,std::vector<long long>*>(v95, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  v12 = (v7 >> 3) & 0x7FFFFFFF;
  if (v8 < 1)
  {
    v17 = 0;
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = *a4;
    v15 = (v7 >> 3) & 0x7FFFFFFF;
    do
    {
      v16 = *v14;
      v14 += 8;
      v13 += v16;
      --v15;
    }

    while (v15);
    v17 = 0;
    v18 = *a5;
    v19 = v12;
    do
    {
      v20 = *v18;
      v18 += 8;
      v17 += v20;
      --v19;
    }

    while (v19);
    if (v17 > v13)
    {
      if (&v99 != a5)
      {
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v99, *a5, a5[1], (a5[1] - *a5) >> 3);
      }

      if (&v96 != a4)
      {
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v96, *a4, a4[1], (a4[1] - *a4) >> 3);
      }

      v21 = 0;
      v22 = *a6;
      v23 = v95[0];
      v24 = v17 - v13;
      do
      {
        v25 = *(v23 + 24 * v21);
        v26 = v12;
        v27 = v22;
        do
        {
          v28 = *v27;
          v27 += 3;
          *v25++ = *(v28 + 8 * v21);
          --v26;
        }

        while (v26);
        ++v21;
      }

      while (v21 != v12);
      goto LABEL_23;
    }
  }

  if (&v99 != a4)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v99, *a4, a4[1], (a4[1] - *a4) >> 3);
  }

  if (&v96 != a5)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v96, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  v24 = v13 - v17;
LABEL_23:
  v29 = 2 * v8;
  std::vector<long long>::vector[abi:ne200100](&v93, 2 * v8 + 2);
  v91 = (2 * v8) | 1;
  v92 = 2 * v8;
  v30 = v93;
  if (v8 >= 1)
  {
    v31 = v99;
    v32 = v12;
    v33 = v93;
    do
    {
      v34 = *v31++;
      *v33++ = v34;
      --v32;
    }

    while (v32);
  }

  if (v29 <= v8)
  {
    v36 = v29;
  }

  else
  {
    v35 = v96;
    v36 = v29;
    v37 = &v30[v8];
    v38 = v29 - v8;
    do
    {
      v39 = *v35++;
      *v37++ = v39;
      --v38;
    }

    while (v38);
  }

  v30[v36] = -v24;
  v30[((2 * v8) | 1)] = 0;
  if (v8 < 1)
  {
    v41 = 0;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = *(v95[0] + 24 * v40);
      v43 = v12;
      do
      {
        v45 = *v42++;
        v44 = v45;
        if (v45 < 0)
        {
          __assert_rtn("operator()", "emd_hat_impl.hpp", 154, "C[i][j]>=0");
        }

        if (v44 > v41)
        {
          v41 = v44;
        }

        --v43;
      }

      while (v43);
      ++v40;
    }

    while (v40 != v12);
  }

  v90[0] = 0;
  v90[1] = 0;
  v89 = v90;
  v88[0] = 0;
  v88[1] = 0;
  v87 = v88;
  std::vector<std::list<edge<long long>>>::vector[abi:ne200100](&v85, (v94 - v30) >> 3);
  v72 = v24;
  if (v8 > 0)
  {
    v46 = 0;
    do
    {
      if (v93[v46])
      {
        v47 = 0;
        v48 = v12;
        do
        {
          if (v93[v48] && *(*(v95[0] + 24 * v46) + 8 * v47) != v41)
          {
            operator new();
          }

          ++v47;
          ++v48;
        }

        while (v12 != v47);
      }

      ++v46;
    }

    while (v46 != v12);
    v49 = 0;
    LODWORD(v75) = 0;
    v29 = 2 * v8;
    do
    {
      if (v93[v49])
      {
        v50 = 0;
        v51 = v12;
        do
        {
          if (v93[v51] && *(*(v95[0] + 24 * v75) + 8 * v50) != v41)
          {
            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v89, &v75);
            LODWORD(v83[0]) = v51;
            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v87, v83);
          }

          ++v50;
          ++v51;
        }

        while (v12 != v50);
        v49 = v75;
      }

      LODWORD(v75) = ++v49;
    }

    while (v49 < v8);
  }

  if (v29 > v8)
  {
    v52 = &v93[v8];
    v53 = v36 - v8;
    do
    {
      *v52 = -*v52;
      ++v52;
      --v53;
    }

    while (v53);
  }

  if (v8 >= 1)
  {
    operator new();
  }

  if (v91 >= 1)
  {
    operator new();
  }

  v84 = -1;
  std::vector<int>::vector[abi:ne200100](v83, (v94 - v93) >> 3);
  memset(&v82, 0, sizeof(v82));
  std::vector<float>::reserve(&v82, (v94 - v93) >> 3);
  LODWORD(v75) = 0;
  *(v83[0] + v92) = 0;
  std::vector<int>::push_back[abi:ne200100](&v82.__begin_, &v92);
  *(v83[0] + v91) = 1;
  std::vector<int>::push_back[abi:ne200100](&v82.__begin_, &v91);
  std::vector<long long>::vector[abi:ne200100](&v80, 2uLL);
  v54 = v93;
  v55 = v80;
  if (v94 != v93)
  {
    v56 = 0;
    v57 = (v94 - v93) >> 3;
    v58 = v83[0];
    if (v57 <= 1)
    {
      v57 = 1;
    }

    do
    {
      v59 = *v58++;
      if (v59 != -1)
      {
        v55[v56++] = *v54;
      }

      ++v54;
      --v57;
    }

    while (v57);
  }

  std::vector<std::list<edge<long long>>>::vector[abi:ne200100](v79, (v81 - v55) >> 3);
  v60 = v86;
  if (v86 != v85)
  {
    v61 = 0;
    do
    {
      if (*(v83[0] + v61) != -1)
      {
        v62 = v85 + 24 * v61;
        v63 = *(v62 + 8);
        if (v63 != v62)
        {
          do
          {
            if (*(v83[0] + *(v63 + 16)) != -1)
            {
              operator new();
            }

            v63 = *(v63 + 8);
          }

          while (v63 != v85 + 24 * v61);
          v60 = v86;
        }
      }

      ++v61;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v60 - v85) >> 3) > v61);
  }

  v64 = v80;
  v65 = (v81 - v80) >> 3;
  if (v81 != v80)
  {
    v66 = 0;
    v67 = v65 <= 1 ? 1 : (v81 - v80) >> 3;
    do
    {
      v68 = *v64++;
      v66 += v68;
      --v67;
    }

    while (v67);
    if (v66)
    {
      __assert_rtn("operator()", "emd_hat_impl.hpp", 277, "DEBUG_sum_bb==0");
    }
  }

  __p = 0;
  v77 = 0;
  v78 = 0;
  std::vector<std::list<edge0<long long>>>::vector[abi:ne200100](v74, v65);
  v69 = min_cost_flow<long long>::operator()(&v75, &v80, v79, v74);
  v102 = v74;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](&v102);
  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  v75 = v79;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](&v75);
  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v82.__begin_)
  {
    v82.__end_ = v82.__begin_;
    operator delete(v82.__begin_);
  }

  if (v83[0])
  {
    v83[1] = v83[0];
    operator delete(v83[0]);
  }

  v75 = &v85;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](&v75);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v87, v88[0]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v89, v90[0]);
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  v75 = v95;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v75);
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  v70 = a7;
  if (a7 == -1)
  {
    v70 = v41;
  }

  return v70 * v72 + v69;
}

void sub_1C253018C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, void *a41)
{
  *(v42 - 96) = v41;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100]((v42 - 96));
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  a20 = &a24;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  a20 = &a37;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&a40, a41);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v42 - 224, *(v42 - 216));
  v44 = *(v42 - 192);
  if (v44)
  {
    *(v42 - 184) = v44;
    operator delete(v44);
  }

  a20 = (v42 - 168);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a20);
  v45 = *(v42 - 144);
  if (v45)
  {
    *(v42 - 136) = v45;
    operator delete(v45);
  }

  v46 = *(v42 - 120);
  if (v46)
  {
    *(v42 - 112) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
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
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, v12);
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

uint64_t min_cost_flow<long long>::operator()(int *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v4 = a2[1] - *a2;
  v5 = a3[1] - *a3;
  if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) != v4 >> 3)
  {
    min_cost_flow<long long>::operator()();
  }

  if (a4[1] - *a4 != v5)
  {
    min_cost_flow<long long>::operator()();
  }

  *a1 = v4 >> 3;
  std::vector<float>::resize((a1 + 2), (v4 >> 3));
  v9 = *a1;
  if (*a1 > 0)
  {
    v10 = 0;
    do
    {
      if (*(*a3 + 24 * v10 + 8) != *a3 + 24 * v10)
      {
        operator new();
      }

      ++v10;
    }

    while (v10 < v9);
  }

  std::vector<std::list<edge1<long long>>>::vector[abi:ne200100](v44, v9);
  v11 = *a1;
  if (*a1 > 0)
  {
    v12 = 0;
    do
    {
      if (*(*a3 + 24 * v12 + 8) != *a3 + 24 * v12)
      {
        operator new();
      }

      ++v12;
    }

    while (v12 < v11);
  }

  std::vector<std::list<edge2<long long>>>::vector[abi:ne200100](v43, v11);
  v13 = *a1;
  if (*a1 >= 1)
  {
    v14 = 0;
    do
    {
      if (*(*a3 + 24 * v14 + 8) != *a3 + 24 * v14)
      {
        operator new();
      }

      ++v14;
    }

    while (v14 < v13);
  }

  std::vector<long long>::vector[abi:ne200100](v42, v13);
  std::vector<int>::vector[abi:ne200100](__p, *a1);
  v15 = *a1;
  if (v15 < 1)
  {
LABEL_46:
    v34 = 0;
  }

  else
  {
    while (1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        if (*(*a2 + 8 * v16) > 0 && v18 < *(*a2 + 8 * v16))
        {
          v18 = *(*a2 + 8 * v16);
          v17 = v16;
        }

        ++v16;
      }

      while (v15 != v16);
      if (!v18)
      {
        break;
      }

      v40 = 0;
      min_cost_flow<long long>::compute_shortest_path(a1, v42, __p, v17, v44, v43, a2, &v40);
      v19 = v40;
      v20 = __p[0];
      v21 = v43[0];
      v22 = v40;
      do
      {
        v23 = *(__p[0] + v22);
        if (v23 == v22)
        {
          __assert_rtn("operator()", "min_cost_flow.hpp", 167, "from!=to");
        }

        v24 = &v43[0][3 * v23];
        while (1)
        {
          v24 = v24[1];
          if (v24 == &v43[0][3 * v23])
          {
            break;
          }

          if (*(v24 + 4) == v22)
          {
            if (v24[4] < v18)
            {
              v18 = v24[4];
            }

            break;
          }
        }

        v22 = *(__p[0] + v22);
      }

      while (v23 != v17);
      v25 = *a4;
      v26 = *a2;
      do
      {
        v27 = v20[v19];
        if (v27 == v19)
        {
          __assert_rtn("operator()", "min_cost_flow.hpp", 187, "from!=to");
        }

        v28 = v19;
        v19 = v20[v19];
        v29 = v25 + 24 * v27 + 8;
        do
        {
          v30 = *v29;
          v31 = *(*v29 + 16);
          v29 = *v29 + 8;
        }

        while (v31 != v28);
        *(v30 + 32) += v18;
        v32 = &v21[3 * v28];
        while (1)
        {
          v32 = v32[1];
          if (v32 == &v21[3 * v28])
          {
            break;
          }

          if (*(v32 + 4) == v27)
          {
            v32[4] = v32[4] + v18;
            break;
          }
        }

        v33 = &v21[3 * v27];
        while (1)
        {
          v33 = v33[1];
          if (v33 == &v21[3 * v27])
          {
            break;
          }

          if (*(v33 + 4) == v28)
          {
            v33[4] = v33[4] - v18;
            break;
          }
        }

        *(v26 + 8 * v28) += v18;
        *(v26 + 8 * v27) -= v18;
      }

      while (v27 != v17);
      v15 = *a1;
      if (v15 <= 0)
      {
        goto LABEL_46;
      }
    }

    v35 = 0;
    v34 = 0;
    do
    {
      v36 = *a4 + 24 * v35;
      for (i = *(v36 + 8); i != v36; i = i[1])
      {
        v34 += i[4] * i[3];
      }

      ++v35;
    }

    while (v35 != v15);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  v42[0] = v43;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](v42);
  v43[0] = v44;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](v43);
  return v34;
}

void sub_1C2530930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char **__p, char **a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  __p = &a19;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a19 = &a22;
  std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long>*,std::vector<long long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<long long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2530A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<long long>>,std::vector<long long>*,std::vector<long long>*,std::vector<long long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void *std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v7, v11);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
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

void *std::vector<std::list<edge<long long>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::list<edge<long long>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::list<edge<long long>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::list<edge<long long>>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<std::list<edge<long long>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::list<edge<long long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__list_imp<edge<long long>>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__list_imp<edge<long long>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
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

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C2531070(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::list<edge0<long long>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::list<edge<long long>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void min_cost_flow<long long>::compute_shortest_path(int *a1, uint64_t *a2, void *a3, int a4, uint64_t *a5, uint64_t *a6, void *a7, int *a8)
{
  std::vector<edge3<long long>>::vector[abi:ne200100](&v62, *a1);
  v14 = v62;
  *v62 = a4;
  v16 = a1 + 2;
  v15 = *(a1 + 1);
  *(v15 + 4 * a4) = 0;
  v14[1] = 0;
  if (a4 < 1)
  {
    v20 = 1;
  }

  else
  {
    v17 = 0;
    v18 = v14 + 3;
    do
    {
      *(v18 - 2) = v17;
      v19 = v17 + 1;
      *(v15 + 4 * v17) = v17 + 1;
      *v18 = 0x7FFFFFFFFFFFFFFFLL;
      v18 += 2;
      v17 = v19;
    }

    while (a4 != v19);
    v20 = v19 + 1;
  }

  LODWORD(v21) = a4 + 1;
  v22 = *a1;
  if (a4 + 1 < v22)
  {
    v21 = v21;
    v23 = &v14[2 * v20 + 1];
    do
    {
      *(v23 - 2) = v21;
      *(v15 + 4 * v21) = v20;
      *v23 = 0x7FFFFFFFFFFFFFFFLL;
      v23 += 2;
      ++v21;
      v22 = *a1;
      LODWORD(v20) = v20 + 1;
    }

    while (v21 < v22);
  }

  std::vector<int>::vector[abi:ne200100](__p, v22);
  v24 = v62;
  while (1)
  {
    v25 = *v24;
    *(*a2 + 8 * v25) = v24[1];
    v26 = __p[0];
    *(__p[0] + v25) = 1;
    if ((*(*a7 + 8 * v25) & 0x8000000000000000) != 0)
    {
      break;
    }

    min_cost_flow<long long>::heap_remove_first(a1, &v62, a1 + 1);
    v27 = *a5;
    v28 = *a5 + 24 * v25;
    v29 = *(v28 + 8);
    while (v29 != v28)
    {
      v30 = *(v29 + 24);
      if (v30 < 0)
      {
        __assert_rtn("compute_shortest_path", "min_cost_flow.hpp", 318, "it->_reduced_cost>=0");
      }

      v31 = *(v29 + 16);
      v32 = *(*v16 + 4 * v31);
      if (v32 < (v63 - v62) >> 4)
      {
        v33 = *(*a2 + 8 * v25) + v30;
        if (v33 < *(v62 + 2 * v32 + 1))
        {
          min_cost_flow<long long>::heap_decrease_key(a1, &v62, a1 + 1, *(v29 + 16), v33);
          *(*a3 + 4 * v31) = v25;
          v27 = *a5;
        }
      }

      v29 = *(v29 + 8);
      v28 = v27 + 24 * v25;
    }

    v34 = *a6;
    v35 = *a6 + 24 * v25;
    v36 = *(v35 + 8);
    while (v36 != v35)
    {
      if (*(v36 + 32) >= 1)
      {
        v37 = *(v36 + 24);
        if (v37 < 0)
        {
          __assert_rtn("compute_shortest_path", "min_cost_flow.hpp", 329, "it->_reduced_cost>=0");
        }

        v38 = *(v36 + 16);
        v39 = *(*v16 + 4 * v38);
        if (v39 < (v63 - v62) >> 4)
        {
          v40 = *(*a2 + 8 * v25) + v37;
          if (v40 < *(v62 + 2 * v39 + 1))
          {
            min_cost_flow<long long>::heap_decrease_key(a1, &v62, a1 + 1, *(v36 + 16), v40);
            *(*a3 + 4 * v38) = v25;
            v34 = *a6;
          }
        }
      }

      v36 = *(v36 + 8);
      v35 = v34 + 24 * v25;
    }

    v24 = v62;
    if (v62 == v63)
    {
      v26 = __p[0];
      v41 = a8;
      goto LABEL_29;
    }
  }

  v41 = a8;
  *a8 = v25;
LABEL_29:
  v42 = *a1;
  if (v42 >= 1)
  {
    v43 = 0;
    v44 = *a5;
    do
    {
      v45 = v44 + 24 * v43;
      v46 = *(v45 + 8);
      if (v46 != v45)
      {
        v47 = v26[v43];
        v48 = *a2;
        v49 = *v41;
        do
        {
          if (v47)
          {
            *(v46 + 24) += *(v48 + 8 * v43) - *(v48 + 8 * v49);
          }

          v50 = *(v46 + 16);
          if (v26[v50])
          {
            *(v46 + 24) += *(v48 + 8 * v49) - *(v48 + 8 * v50);
          }

          v46 = *(v46 + 8);
        }

        while (v46 != v45);
      }

      ++v43;
    }

    while (v43 != v42);
    v51 = 0;
    v52 = *a6;
    do
    {
      v53 = v52 + 24 * v51;
      v54 = *(v53 + 8);
      if (v54 != v53)
      {
        v55 = v26[v51];
        v56 = *a2;
        v57 = *v41;
        do
        {
          if (v55)
          {
            *(v54 + 24) += *(v56 + 8 * v51) - *(v56 + 8 * v57);
          }

          v58 = *(v54 + 16);
          if (v26[v58])
          {
            *(v54 + 24) += *(v56 + 8 * v57) - *(v56 + 8 * v58);
          }

          v54 = *(v54 + 8);
        }

        while (v54 != v53);
      }

      ++v51;
    }

    while (v51 != v42);
  }

  if (v26)
  {
    __p[1] = v26;
    operator delete(v26);
    v24 = v62;
  }

  if (v24)
  {
    v63 = v24;
    operator delete(v24);
  }
}

void sub_1C253151C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::list<edge1<long long>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::list<edge<long long>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::list<edge2<long long>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::list<edge<long long>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C25316C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 min_cost_flow<long long>::heap_remove_first(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = ((a2[1] - *a2) >> 4) - 1;
  v4 = **a2;
  **a2 = *(*a2 + 16 * v3);
  *(*a2 + 16 * v3) = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  *(*a3 + 4 * *(*a2 + 16 * v3)) = v3;
  *(v7 + 4 * *v5) = 0;
  a2[1] = v6 - 16;
  min_cost_flow<long long>::heapify(a1, a2, a3, 0);
  return result;
}

__n128 min_cost_flow<long long>::heap_decrease_key(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = *(*a3 + 4 * a4);
  v6 = *a2;
  *(*a2 + 16 * v5 + 8) = a5;
  if (v5 >= 1)
  {
    do
    {
      v7 = v5 - 1;
      v8 = (v5 - 1) >> 1;
      v9 = v6 + 16 * v8;
      if (*(v9 + 8) <= *(v6 + 16 * v5 + 8))
      {
        break;
      }

      result = *(v6 + 16 * v5);
      *(v6 + 16 * v5) = *v9;
      *(*a2 + 16 * v8) = result;
      v6 = *a2;
      v11 = *a3;
      *(*a3 + 4 * *(*a2 + 16 * v8)) = v8;
      *(v11 + 4 * *(v6 + 16 * v5)) = v5;
      LODWORD(v5) = v7 >> 1;
    }

    while (v7 > 1);
  }

  return result;
}

void *std::vector<edge3<long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<edge3<long long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C2531820(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<edge3<long long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<edge3<long long>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<edge3<long long>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void min_cost_flow<long long>::heapify(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = *a2;
  while (1)
  {
    v5 = (2 * a4) | 1;
    v6 = (a2[1] - v4) >> 4;
    if (v6 <= v5 || *(v4 + 16 * v5 + 8) >= *(v4 + 16 * a4 + 8))
    {
      v5 = a4;
    }

    v7 = 2 * a4 + 2;
    if (v6 > v7)
    {
      if (*(v4 + 16 * v7 + 8) >= *(v4 + 16 * v5 + 8))
      {
        v5 = v5;
      }

      else
      {
        v5 = v7;
      }
    }

    if (v5 == a4)
    {
      break;
    }

    v8 = *(v4 + 16 * a4);
    *(v4 + 16 * a4) = *(v4 + 16 * v5);
    *(*a2 + 16 * v5) = v8;
    v4 = *a2;
    v9 = *a3;
    *(*a3 + 4 * *(*a2 + 16 * v5)) = v5;
    *(v9 + 4 * *(v4 + 16 * a4)) = a4;
    a4 = v5;
  }
}

void MakeMatrix3x4f(float a1@<S0>, float a2@<S1>, float a3@<S2>, float a4@<S3>, float a5@<S4>, float a6@<S5>, float a7@<S6>, float a8@<S7>, float *a9@<X8>, float a10, float a11, float a12, float a13)
{
  *a9 = a1;
  a9[1] = a5;
  a9[2] = a10;
  a9[3] = a2;
  a9[4] = a6;
  a9[5] = a11;
  a9[6] = a3;
  a9[7] = a7;
  a9[8] = a12;
  a9[9] = a4;
  a9[10] = a8;
  a9[11] = a13;
}

int32x2_t round@<D0>(float32x2_t *a1@<X0>, int32x2_t *a2@<X8>)
{
  result = vcvt_s32_f32(vrnda_f32(*a1));
  *a2 = result;
  return result;
}

{
  v2 = llroundf(a1[1].f32[0]);
  result = vcvt_s32_f32(vrnda_f32(*a1));
  *a2 = result;
  a2[1].i32[0] = v2;
  return result;
}

double convert@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 convert@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = a1->n128_u64[0];
  *(a2 + 8) = result.n128_u32[2];
  return result;
}

__n128 convert@<Q0>(const simd_float3x3 *a1@<X0>, uint64_t a2@<X8>)
{
  result = a1->columns[0];
  v2 = a1->columns[2];
  result.n128_u32[3] = a1->columns[1];
  v4 = vextq_s8(vextq_s8(a1->columns[1], a1->columns[1], 0xCuLL), v2, 8uLL);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2.i32[2];
  return result;
}

__n128 convert@<Q0>(const simd_float4x4 *a1@<X0>, simd_float4 *a2@<X8>)
{
  result = a1->columns[0];
  v3 = a1->columns[1];
  v4 = a1->columns[2];
  v5 = a1->columns[3];
  *a2 = a1->columns[0];
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

double homogenize@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 1065353216;
  return result;
}

float homogenize@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  *(a2 + 12) = 1065353216;
  return result;
}

double homogenize(uint64_t a1)
{
  __asm { FMOV            V0.4S, #1.0 }

  return *a1;
}

float32x2_t dehomogenize@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  v2 = &a1[1];
  v3 = vld1_dup_f32(v2);
  result = vdiv_f32(*a1, v3);
  *a2 = result;
  return result;
}

float32x2_t dehomogenize@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>, double a3@<D0>)
{
  LODWORD(a3) = a1[1].i32[1];
  v3 = a1[1].f32[0] / *&a3;
  result = vdiv_f32(*a1, vdup_lane_s32(*&a3, 0));
  *a2 = result;
  a2[1].f32[0] = v3;
  return result;
}

float32x2_t dehomogenize(float32x2_t *a1)
{
  return vdiv_f32(*a1, vdup_laneq_s32(*a1->f32, 2));
}

{
  return vdiv_f32(*a1, vdup_laneq_s32(*a1->f32, 3));
}

id _ARLogGeneral_31()
{
  if (_ARLogGeneral_onceToken_33 != -1)
  {
    _ARLogGeneral_cold_1_31();
  }

  v1 = _ARLogGeneral_logObj_33;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_40()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_39 = result;
  return result;
}

id _ARLogGeneral_32()
{
  if (_ARLogGeneral_onceToken_34 != -1)
  {
    _ARLogGeneral_cold_1_32();
  }

  v1 = _ARLogGeneral_logObj_34;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_41()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_40 = result;
  return result;
}

id _ARLogGeneral_33()
{
  if (_ARLogGeneral_onceToken_35 != -1)
  {
    _ARLogGeneral_cold_1_33();
  }

  v1 = _ARLogGeneral_logObj_35;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_42()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_41 = result;
  return result;
}

id _ARLogGeneral_34()
{
  if (_ARLogGeneral_onceToken_36 != -1)
  {
    _ARLogGeneral_cold_1_34();
  }

  v1 = _ARLogGeneral_logObj_36;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_43()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_42 = result;
  return result;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_20()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_20()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

double cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(float32x4_t *a1, uint64_t a2)
{
  if (*(a2 + 8) == a1)
  {
    v11[0] = 0uLL;
    cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(v11, a2);
    v8.i64[0] = *&v11[0];
    *a1 = v11[0];
  }

  else
  {
    v4 = *a2;
    memset(v11, 0, sizeof(v11));
    cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(v11, v4);
    v5 = 0uLL;
    v6 = 0;
    v7 = *(a2 + 8);
    do
    {
      v8 = v11[v6];
      v9 = *v7++;
      v5 = vmlaq_n_f32(v5, v8, v9);
      ++v6;
    }

    while (v6 != 4);
    *a1 = v5;
  }

  return *v8.i64;
}

uint64_t cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v11 = 0;
    v10 = 0;
    result = cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v10);
    *v2 = v10;
    *(v2 + 8) = v11;
  }

  else
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = 0;
      v7 = 0.0;
      v8 = v4;
      do
      {
        v9 = *v8++;
        v7 = v7 + (*(v3 + v6) * v9);
        v6 += 12;
      }

      while (v6 != 36);
      *(result + 4 * i) = v7;
      v3 += 4;
    }
  }

  return result;
}

void cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == a1)
  {
    DWORD2(v12[0]) = 0;
    *&v12[0] = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(v12, a2);
    *a1 = *&v12[0];
    *(a1 + 8) = DWORD2(v12[0]);
  }

  else
  {
    v4 = *a2;
    memset(v12, 0, sizeof(v12));
    v5 = v12;
    cva::assign<false,false,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>(v12, v4);
    v6 = 0;
    v7 = *(a2 + 8);
    do
    {
      v8 = 0;
      v9 = 0.0;
      v10 = v7;
      do
      {
        v11 = *v10++;
        v9 = v9 + (*(v5 + v8) * v11);
        v8 += 12;
      }

      while (v8 != 48);
      *(a1 + 4 * v6++) = v9;
      v5 = (v5 + 4);
    }

    while (v6 != 3);
  }
}

double cva::assign<false,false,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>(_OWORD *a1, void *a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    cva::assign<false,false,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>(&v13);
    v12 = v14;
    *a1 = v13;
    a1[1] = v12;
    result = *&v15;
    a1[2] = v15;
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      v6 = 0;
      v7 = v3;
      do
      {
        v8 = 0;
        result = 0.0;
        v10 = &v4[i];
        do
        {
          v11 = *v10++;
          *&result = *&result + (*(v7 + v8) * v11);
          v8 += 12;
        }

        while (v8 != 48);
        *(a1 + 3 * i + v6++) = LODWORD(result);
        v7 = (v7 + 4);
      }

      while (v6 != 3);
    }
  }

  return result;
}

double cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(_OWORD *a1, void *a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(&v13);
    v10 = v14;
    *a1 = v13;
    a1[1] = v10;
    v7.i64[0] = v15;
    v11 = v16;
    a1[2] = v15;
    a1[3] = v11;
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      v6 = 0;
      v7 = 0uLL;
      v8 = &v4[i];
      do
      {
        v9 = *v8++;
        v7 = vmlaq_n_f32(v7, v3[v6++], v9);
      }

      while (v6 != 4);
      a1[i] = v7;
    }
  }

  return *v7.i64;
}

float homographySquareTo@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  v4 = a1 + 12;
  v5 = a1 + 24;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v6 = a1 + 36;
  v15 = a1;
  v16 = a1 + 12;
  v13 = a1 + 24;
  v14 = a1 + 36;
  v17 = &v15;
  v18 = &v13;
  v11 = a2;
  v12 = 3;
  if (a1 == a2 || v4 == a2 || v5 == a2 || v6 == a2)
  {
    v20 = 0;
    v19 = 0;
    cva::detail::assignNoAlias<cva::Matrix<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(&v19, &v17);
    for (i = 0; i != 12; i += 4)
    {
      *(a2 + i) = *(&v19 + i);
    }
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(&v11, &v17);
  }

  v15 = a1;
  v16 = v6;
  v13 = v4;
  v14 = v5;
  v17 = &v15;
  v18 = &v13;
  v11 = a2 + 12;
  v12 = 0x300000003;
  if (a1 == a2 || v6 == a2 || v4 == a2 || v5 == a2)
  {
    v20 = 0;
    v19 = 0;
    cva::detail::assignNoAlias<cva::Matrix<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(&v19, &v17);
    for (j = 0; j != 12; j += 4)
    {
      *(a2 + 12 + j) = *(&v19 + j);
    }
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(&v11, &v17);
  }

  v15 = a1;
  v16 = v5;
  v13 = v4;
  v14 = v6;
  v17 = &v15;
  v18 = &v13;
  v11 = a2 + 24;
  v12 = 0x600000003;
  if (a1 != a2 && v5 != a2 && v4 != a2 && v6 != a2)
  {
    return cva::detail::assignNoAlias<cva::MatrixRef<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(&v11, &v17);
  }

  v20 = 0;
  v19 = 0;
  cva::detail::assignNoAlias<cva::Matrix<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(&v19, &v17);
  for (k = 0; k != 12; k += 4)
  {
    result = *(&v19 + k);
    *(a2 + 24 + k) = result;
  }

  return result;
}

BOOL hartleyNormalize(uint64_t a1, _OWORD *a2, float32x2_t *a3)
{
  v3 = *(a1 + 8);
  v4 = a1 + 12;
  v5.i64[0] = *a1;
  v5.i64[1] = *(a1 + 12);
  v3.i32[1] = *(a1 + 20);
  v6 = vdivq_f32(v5, vzip1q_s32(v3, v3));
  v7 = a1 + 24;
  v3.i64[0] = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = a1 + 36;
  v3.i64[1] = *(a1 + 36);
  v8.i32[1] = *(a1 + 44);
  v10 = vdivq_f32(v3, vzip1q_s32(v8, v8));
  v11 = vextq_s8(v6, v6, 8uLL).u64[0];
  v12 = vextq_s8(v10, v10, 8uLL).u64[0];
  __asm { FMOV            V5.2S, #0.25 }

  v18 = vmul_f32(vadd_f32(vadd_f32(vadd_f32(*v6.i8, v11), *v10.i8), v12), _D5);
  v19 = vsub_f32(vzip1_s32(*v6.i8, v11), vdup_lane_s32(v18, 0));
  *v6.i8 = vsub_f32(vzip2_s32(*v6.i8, v11), vdup_lane_s32(v18, 1));
  *v10.i8 = vsub_f32(*v10.i8, v18);
  *v6.i32 = vaddv_f32(vsqrt_f32(vadd_f32(vmul_f32(v19, v19), vmul_f32(*v6.i8, *v6.i8)))) + sqrtf(vaddv_f32(vmul_f32(*v10.i8, *v10.i8)));
  *v10.i8 = vsub_f32(v12, v18);
  v20 = vmul_f32(*v10.i8, *v10.i8);
  v20.f32[0] = (*v6.i32 + sqrtf(vaddv_f32(v20))) / 1.4142;
  if (v20.f32[0] >= 0.00000011921)
  {
    a3->f32[0] = 1.0 / v20.f32[0];
    a3[1] = 0;
    a3->i32[1] = 0;
    a3[2].f32[0] = 1.0 / v20.f32[0];
    a3[2].i32[1] = 0;
    a3[3] = vdiv_f32(vneg_f32(v18), vdup_lane_s32(v20, 0));
    a3[4].i32[0] = 1065353216;
    v29[0] = a3;
    v29[1] = a1;
    *v30 = 0;
    *&v30[8] = 0;
    v25 = v20.i32[0];
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(v30, v29);
    v28[0] = a3;
    v28[1] = v4;
    *&v30[12] = 0;
    *&v30[20] = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v30[12], v28);
    v27[0] = a3;
    v27[1] = v7;
    *&v30[24] = 0;
    LODWORD(v31) = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v30[24], v27);
    v26[0] = a3;
    v26[1] = v9;
    *(&v31 + 4) = 0;
    HIDWORD(v31) = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v31 + 4, v26);
    v20.i32[0] = v25;
    v23 = *&v30[16];
    *a2 = *v30;
    a2[1] = v23;
    a2[2] = v31;
  }

  return v20.f32[0] >= 0.00000011921;
}

BOOL computeHomography(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  result = hartleyNormalize(a1, v23, v26);
  if (result)
  {
    result = hartleyNormalize(a2, v22, v24);
    if (result)
    {
      homographySquareTo(v23, &v21);
      homographySquareTo(v22, v14);
      if (fabsf((v21.columns[0].f32[2] * ((*&v21.columns[1].i32[3] * *&v21.columns[0].i32[3]) - (v21.columns[1].f32[0] * v21.columns[1].f32[2]))) + ((v21.columns[0].f32[0] * ((v21.columns[2].f32[0] * v21.columns[1].f32[0]) - (v21.columns[1].f32[1] * *&v21.columns[1].i32[3]))) - (v21.columns[0].f32[1] * ((v21.columns[2].f32[0] * *&v21.columns[0].i32[3]) - (v21.columns[1].f32[1] * v21.columns[1].f32[2]))))) >= 1.1755e-38 && fabsf((v14[2] * ((v19 * v15) - (v16 * v18))) + ((v14[0] * ((v20 * v16) - (v17 * v19))) - (v14[1] * ((v20 * v15) - (v17 * v18))))) >= 1.1755e-38)
      {
        v6.columns[2].i64[0] = *(&v24[1] + 1);
        v6.columns[2].i32[2] = v25;
        v6.columns[0] = v24[0];
        v6.columns[1] = *(v24 + 12);
        v28 = __invert_f3(v6);
        v28.columns[0].i32[3] = v28.columns[1].i32[0];
        v9[0] = v28.columns[0];
        v9[1] = vextq_s8(vextq_s8(v28.columns[1], v28.columns[1], 0xCuLL), v28.columns[2], 8uLL);
        v10 = v28.columns[2].i32[2];
        v11[0] = v9;
        v11[1] = v14;
        v28.columns[2].i64[0] = v21.columns[1].i64[1];
        v28.columns[2].i32[2] = v21.columns[2].i32[0];
        v28.columns[0] = v21.columns[0];
        v28.columns[1] = *(v21.columns + 12);
        v29 = __invert_f3(v28);
        v29.columns[0].i32[3] = v29.columns[1].i32[0];
        v7[0] = v29.columns[0];
        v7[1] = vextq_s8(vextq_s8(v29.columns[1], v29.columns[1], 0xCuLL), v29.columns[2], 8uLL);
        v8 = v29.columns[2].i32[2];
        v12[0] = v11;
        v12[1] = v7;
        v13[0] = v12;
        v13[1] = v26;
        cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::MatrixMultExpr<cva::MatrixMultExpr<cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>(a3, v13);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

float cva::detail::assignNoAlias<cva::Matrix<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a2;
  v18 = 0;
  v19 = 0;
  v4 = v3[1];
  v5 = *(*v3 + 2);
  *&v6 = **v3;
  v25 = DWORD1(v6);
  v7 = *(v4 + 4);
  v26 = v5;
  v27 = __PAIR64__(HIDWORD(v7), v6);
  LODWORD(v28) = *v4;
  HIDWORD(v28) = v7;
  v21 = v5;
  *(&v6 + 1) = v7;
  v22 = v6;
  v23 = v28;
  do
  {
    *(&v18 + v2) = (*&v24[v2 + 4] * *(&v27 + v2 + 4)) - (*&v20[v2 + 4] * *(&v22 + v2 + 8));
    v2 += 4;
  }

  while (v2 != 12);
  v8 = 0;
  v9 = *(a2 + 8);
  memset(v17, 0, 12);
  v10 = v9[1];
  v11 = *(*v9 + 2);
  *&v12 = **v9;
  v25 = DWORD1(v12);
  v13 = *(v10 + 4);
  v26 = v11;
  v27 = __PAIR64__(HIDWORD(v13), v12);
  LODWORD(v28) = *v10;
  HIDWORD(v28) = v13;
  v21 = v11;
  *(&v12 + 1) = v13;
  v22 = v12;
  v23 = v28;
  do
  {
    *(v17 + v8) = (*&v24[v8 + 4] * *(&v27 + v8 + 4)) - (*&v20[v8 + 4] * *(&v22 + v8 + 8));
    v8 += 4;
  }

  while (v8 != 12);
  v14 = 0;
  *&v15 = v18;
  v25 = HIDWORD(v18);
  v26 = v19;
  v27 = __PAIR64__(v17[1], v18);
  v28 = v17[0];
  v21 = v19;
  *(&v15 + 1) = *(v17 + 4);
  v22 = v15;
  v23 = v17[0];
  do
  {
    result = (*&v24[v14 + 4] * *(&v27 + v14 + 4)) - (*&v20[v14 + 4] * *(&v22 + v14 + 8));
    *(a1 + v14) = result;
    v14 += 4;
  }

  while (v14 != 12);
  return result;
}

float cva::detail::assignNoAlias<cva::MatrixRef<float,3u,1u,false>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>,cva::MatrixCrossProdExpr<cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,1u,false>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a2;
  v19 = 0;
  v20 = 0;
  v4 = v3[1];
  v5 = *(*v3 + 2);
  *&v6 = **v3;
  v26 = DWORD1(v6);
  v7 = *(v4 + 4);
  v27 = v5;
  v28 = __PAIR64__(HIDWORD(v7), v6);
  LODWORD(v29) = *v4;
  HIDWORD(v29) = v7;
  v22 = v5;
  *(&v6 + 1) = v7;
  v23 = v6;
  v24 = v29;
  do
  {
    *(&v19 + v2) = (*&v25[v2 + 4] * *(&v28 + v2 + 4)) - (*&v21[v2 + 4] * *(&v23 + v2 + 8));
    v2 += 4;
  }

  while (v2 != 12);
  v8 = 0;
  v9 = *(a2 + 8);
  memset(v18, 0, 12);
  v10 = v9[1];
  v11 = *(*v9 + 2);
  *&v12 = **v9;
  v26 = DWORD1(v12);
  v13 = *(v10 + 4);
  v27 = v11;
  v28 = __PAIR64__(HIDWORD(v13), v12);
  LODWORD(v29) = *v10;
  HIDWORD(v29) = v13;
  v22 = v11;
  *(&v12 + 1) = v13;
  v23 = v12;
  v24 = v29;
  do
  {
    *(v18 + v8) = (*&v25[v8 + 4] * *(&v28 + v8 + 4)) - (*&v21[v8 + 4] * *(&v23 + v8 + 8));
    v8 += 4;
  }

  while (v8 != 12);
  v14 = 0;
  *&v15 = v19;
  v26 = HIDWORD(v19);
  v27 = v20;
  v28 = __PAIR64__(v18[1], v19);
  v29 = v18[0];
  v22 = v20;
  *(&v15 + 1) = *(v18 + 4);
  v23 = v15;
  v24 = v18[0];
  v16 = *a1;
  do
  {
    result = (*&v25[v14 + 4] * *(&v28 + v14 + 4)) - (*&v21[v14 + 4] * *(&v23 + v14 + 8));
    *(v16 + v14) = result;
    v14 += 4;
  }

  while (v14 != 12);
  return result;
}

double cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::MatrixMultExpr<cva::MatrixMultExpr<cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>(uint64_t a1, uint64_t *a2)
{
  if (a2[1] == a1)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::MatrixMultExpr<cva::MatrixMultExpr<cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>(&v14, a2);
    result = *&v14;
    v13 = v15;
    *a1 = v14;
    *(a1 + 16) = v13;
    *(a1 + 32) = v16;
  }

  else
  {
    v4 = *a2;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>(&v14, v4);
    v5 = 0;
    v6 = a2[1];
    do
    {
      v7 = 0;
      v8 = &v14;
      do
      {
        v9 = 0;
        result = 0.0;
        v11 = (v6 + 12 * v5);
        do
        {
          v12 = *v11++;
          *&result = *&result + (*(v8 + v9) * v12);
          v9 += 12;
        }

        while (v9 != 36);
        *(a1 + 12 * v5 + 4 * v7++) = LODWORD(result);
        v8 = (v8 + 4);
      }

      while (v7 != 3);
      ++v5;
    }

    while (v5 != 3);
  }

  return result;
}

double cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == a1)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>,cva::Matrix<float,3u,3u,false>>(&v14, a2);
    result = *&v14;
    v13 = v15;
    *a1 = v14;
    *(a1 + 16) = v13;
    *(a1 + 32) = v16;
  }

  else
  {
    v4 = *a2;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>(&v14, v4);
    v5 = 0;
    v6 = *(a2 + 8);
    do
    {
      v7 = 0;
      v8 = &v14;
      do
      {
        v9 = 0;
        result = 0.0;
        v11 = (v6 + 12 * v5);
        do
        {
          v12 = *v11++;
          *&result = *&result + (*(v8 + v9) * v12);
          v9 += 12;
        }

        while (v9 != 36);
        *(a1 + 12 * v5 + 4 * v7++) = LODWORD(result);
        v8 = (v8 + 4);
      }

      while (v7 != 3);
      ++v5;
    }

    while (v5 != 3);
  }

  return result;
}

double cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    cva::assign<false,false,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,3u,false>>(&v13);
    result = *&v13;
    v12 = v14;
    *a1 = v13;
    *(a1 + 16) = v12;
    *(a1 + 32) = v15;
  }

  else
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = 0;
      v7 = v3;
      do
      {
        v8 = 0;
        result = 0.0;
        v10 = (v4 + 12 * i);
        do
        {
          v11 = *v10++;
          *&result = *&result + (*(v7 + v8) * v11);
          v8 += 12;
        }

        while (v8 != 36);
        *(a1 + 12 * i + 4 * v6++) = LODWORD(result);
        v7 += 4;
      }

      while (v6 != 3);
    }
  }

  return result;
}

void sub_1C2537E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, uint64_t a27, char a28, void *a29, uint64_t a30, char a31, void *a32, uint64_t a33, char a34, void *a35, uint64_t a36, char a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ARTexturedPlane::~ARTexturedPlane(&a41);
  ARTexturedPlane::~ARTexturedPlane(&a69);
  ARTexturedPlane::~ARTexturedPlane(&STACK[0x2C0]);
  ARTexturedPlane::~ARTexturedPlane(&STACK[0x720]);
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(a21, *(a21 + 8));
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::destroy(&a25, a26);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&a28, a29);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&a31, a32);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&a34, a35);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&a37, a38);
  _Unwind_Resume(a1);
}

uint64_t std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 48;
}