void ProgramKey<(_AGCStreamToken)19,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

BOOL AGX::EndOfTileProgramKey::isPrecompiledToPipelineCache(AGX::EndOfTileProgramKey *this)
{
  v1 = *(this + 72);
  v2 = *(this + 40);
  v3 = *(this + 56);
  v4 = vorrq_s8(vorrq_s8(v2, v1), vorrq_s8(v3, *(this + 88)));
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = *(this + 14);
  v6 = *(this + 60);
  v7 = *(this + 61);
  v8 = *(this + 62);
  if (!(v6 | v5 | v7 | v8 | (v4.i32[0] | *(this + 26)) | v4.i32[1]))
  {
    return 1;
  }

  v9 = v3 >> 32;
  v10 = DWORD1(v3);
  v11.i64[0] = v1 >> 32;
  v11.i64[1] = *(this + 5) >> 32;
  v12 = HIDWORD(v2.i64[1]);
  *&v1 = *(this + 3) >> 32;
  v13 = *(this + 92);
  v14.i64[0] = v9;
  v14.i64[1] = *(this + 4) >> 32;
  v15 = vorrq_s8(vorrq_s8(vextq_s8(vuzp1q_s32(v2, v2), v1, 8uLL), v11), vorrq_s8(v14, v13));
  *v15.i8 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  v16 = (v15.i32[0] | v2.i32[1] | v15.i32[1]) & 0x2000000;
  if ((v15.i8[0] | v2.i8[4]) | v15.i8[4])
  {
    ++v16;
  }

  v17 = vorrq_s8(vorrq_s8(vextq_s8(v14, v11, 4uLL), vextq_s8(v11, v13, 4uLL)), vtrn2q_s32(v13, vuzp1q_s32(v13, v2)));
  *v17.i8 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
  return (v5 | v6 | v7 | v8 | v17.i32[0] | DWORD1(v1) | v12 | v17.i32[1] | HIDWORD(*(this + 5)) | v16 ^ *(this + 40) | v10) == 0x200000000000000;
}

void AGX::EndOfTileProgramKey::serialize(AGX::EndOfTileProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v15 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v15);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFA7)
  {
    v9 = begin + v8 + 88;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0x16uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x45;
  *(v10 + 4) = *(this + 40);
  v11 = *(this + 56);
  v12 = *(this + 72);
  v13 = *(this + 88);
  *(v10 + 68) = *(this + 104);
  *(v10 + 52) = v13;
  *(v10 + 36) = v12;
  *(v10 + 20) = v11;
  v16 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v16);
  v14 = *(this + 2);
  *a2 = v14;
  *a3 = *(this + 3) - v14;
}

double AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2A23F7990;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferCompilerConfigGen3(v5, a1);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void ProgramKey<(_AGCStreamToken)13,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

BOOL AGX::BackgroundObjectProgramKey::isPrecompiledToPipelineCache(AGX::BackgroundObjectProgramKey *this)
{
  v2 = *(this + 18);
  result = 1;
  v4 = v2 & 0x10000000 | (((3 - __clz(1 << ((v2 >> 10) & 3) << 24)) & 3) << 10) | 0x400000;
  v5 = *(this + 56);
  v6 = *(this + 40);
  v7 = *(this + 10);
  v8 = vorrq_s8(v6, v5);
  v9 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  if (v7 != 0x10000000000 || *&v9 != 0 || v4 != v2)
  {
    return !(v9.i32[0] | v9.i32[1] | v2) && v7 == 0;
  }

  return result;
}

void AGX::BackgroundObjectProgramKey::serialize(AGX::BackgroundObjectProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v18 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v18);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFEFLL)
  {
    v9 = begin + v8 + 16;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 4uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x44;
  *(v10 + 4) = *(this + 10);
  v11 = *(this + 2);
  v12 = *(this + 3) - v11;
  if (v12 > 0xFFFFFFFFFFFFFFCFLL)
  {
    v13 = *(this + 3) + 48;
    *(this + 3) = v13;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0xCuLL);
    v11 = *(this + 2);
    v13 = *(this + 3);
  }

  v14 = v11 + v12;
  *v14 = ((v13 - v11) >> 2 << 8) | 0x42;
  v15 = *(this + 40);
  v16 = *(this + 56);
  *(v14 + 36) = *(this + 9);
  *(v14 + 20) = v16;
  *(v14 + 4) = v15;
  v19 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v19);
  v17 = *(this + 2);
  *a2 = v17;
  *a3 = *(this + 3) - v17;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateUserIntersectionProgramKey@<X0>(uint64_t a1@<X8>)
{
  result = AGX::UserIntersectionProgramKey::UserIntersectionProgramKey(a1, 1, 1, 0, 0, 0);
  *(result + 40) &= 0xFF9BFFFF;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 512;
  *a1 = &unk_2A23F6AC0;
}

{
  *(a1 + 8) = 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 512;
  *a1 = &unk_2A23F6AC0;
}

{
  *(a1 + 8) = 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 512;
  *a1 = &unk_2A23F6AC0;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateComputeProgramKey@<D0>(int *a1@<X1>, NSObject *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AGX::Impl::ComputeProgramKey::ComputeProgramKey(a5);
  *a5 = &unk_2A23F7D80;
  *(a5 + 144) = 0;
  if (!a1)
  {
    if (atomic_load_explicit(&AGX::defaultComputeDescriptor(void)::once, memory_order_acquire) != -1)
    {
      buffer_ptr = &v39;
      size_ptr = &buffer_ptr;
      std::__call_once(&AGX::defaultComputeDescriptor(void)::once, &size_ptr, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultComputeDescriptor(void)::$_0 &&>>);
    }

    a1 = AGX::defaultComputeDescriptor(void)::_desc;
  }

  v10 = (a1 - *a1);
  v11 = *v10;
  if (v11 < 0xD)
  {
    v18 = 0;
  }

  else
  {
    v12 = v10[6];
    if (!v10[6] || (v13 = *(a1 + v12), v14 = (a1 + v12 + v13), (v15 = *v14) == 0))
    {
      *(a5 + 40) = 0;
      goto LABEL_20;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (v15 >= 0x1F)
    {
      v15 = 31;
    }

    v19 = 4 * v15;
    v20 = a1 + v12 + v13;
    do
    {
      v21 = *&v20[v16 + 4];
      v22 = &v20[v16 + v21 - *(&v14[v16 / 4 + 1] + v21)];
      if (*(v22 + 2) >= 5u)
      {
        v23 = *(v22 + 4);
        if (v23)
        {
          if (v20[v16 + 4 + v21 + v23] == 1)
          {
            v18 |= 1 << v17;
          }
        }
      }

      ++v17;
      v16 += 4;
    }

    while (v19 != v16);
  }

  *(a5 + 40) = v18;
  if (v11 <= 6)
  {
    LODWORD(v24) = 0;
    goto LABEL_22;
  }

LABEL_20:
  v24 = v10[3];
  if (v24)
  {
    LODWORD(v24) = *(a1 + v24);
  }

LABEL_22:
  *(a5 + 48) = v24;
  v25 = (a1 - *a1);
  if (*v25 < 5u)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v26 = v25[2];
    if (v26)
    {
      LODWORD(v26) = *(a1 + v26) != 0;
    }
  }

  v27 = *(a5 + 56) & 0xFFFFFFFE | v26;
  *(a5 + 56) = v27;
  v28 = (a1 - *a1);
  if (*v28 < 0x15u)
  {
    LODWORD(v29) = 0;
  }

  else
  {
    v29 = v28[10];
    if (v29)
    {
      LODWORD(v29) = 2 * (*(a1 + v29) != 0);
    }
  }

  v30 = v29 | v27 & 0xFFFFFFFD;
  *(a5 + 56) = v30;
  v31 = (a1 - *a1);
  v32 = *v31;
  if (v32 <= 0xE)
  {
    LODWORD(v34) = 0;
    *(a5 + 88) = 0;
  }

  else
  {
    v33 = v31[7];
    if (v31[7])
    {
      LOBYTE(v33) = *(a1 + v33) != 0;
    }

    *(a5 + 88) = v33;
    if (v32 < 0x11)
    {
      LODWORD(v34) = 0;
    }

    else
    {
      v34 = v31[8];
      if (v34)
      {
        LODWORD(v34) = 32 * (*(a1 + v34) != 0);
      }
    }
  }

  *(a5 + 56) = v34 | v30 & 0xFFFFFFDF;
  v35 = (a1 - *a1);
  if (*v35 < 0x11u)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    v36 = v35[8];
    if (v36)
    {
      LODWORD(v36) = (*(a1 + v36) != 0) << 9;
    }
  }

  *(a5 + 52) = *(a5 + 52) & 0xFFFFFDFF | v36;
  *(a5 + 52) = vand_s8(*(a5 + 52), 0xFFFFFFFEFFFFFF7FLL);
  if (a2)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v37 = dispatch_data_create_map(a2, &buffer_ptr, &size_ptr);
    std::string::append((a5 + 64), buffer_ptr, size_ptr);
    dispatch_release(v37);
  }

  if (a5 + 96 != a3)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a5 + 96), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 5);
  }

  if (a5 + 120 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a5 + 120), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 5);
  }

  result = vand_s8(*(a5 + 52), 0xFFFFC73B8BFFFEFFLL);
  *(a5 + 52) = result;
  return result;
}

AGX::Impl::ComputeProgramKey *AGX::Impl::ComputeProgramKey::ComputeProgramKey(AGX::Impl::ComputeProgramKey *this)
{
  *(this + 2) = 6;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_2A23FA818;
  *(this + 87) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(this + 12, 0);
  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(this + 15, 0);
  return this;
}

void sub_29CC87A88(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 96);
  if (v4)
  {
    *(v1 + 104) = v4;
    operator delete(v4);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = v2;
  v5 = *(v1 + 16);
  if (v5)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void AGX::ComputeProgramKey::~ComputeProgramKey(AGX::ComputeProgramKey *this)
{
  *this = &unk_2A23FA818;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  *this = &unk_2A23F7D40;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

void ProgramKey<(_AGCStreamToken)6,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::Impl::ComputeProgramKey::serialize(AGX::Impl::ComputeProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v13 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v13);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFDFLL)
  {
    v9 = begin + v8 + 32;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 8uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x4E;
  v11 = *(this + 40);
  *(v10 + 20) = *(this + 7);
  *(v10 + 4) = v11;
  v14 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v14);
  v12 = *(this + 2);
  *a2 = v12;
  *a3 = *(this + 3) - v12;
}

char *AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, int a9)
{
  v253[4] = *MEMORY[0x29EDCA608];
  AGX::FragmentProgramKey::FragmentProgramKey(a8, 0, 0, 0);
  v214 = 0;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  *size_ptr = 0u;
  v215 = 67305985;
  v216 = 1541;
  v217 = 7;
  v218 = 0x100000000;
  v219 = 0;
  v220 = 0;
  v221 = 0;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0;
  if (a1)
  {
    v230 = 3;
    v231[8] = 0x706050403020100;
    v248 = 0;
    v249 = 255;
    v250 = 0;
    LOBYTE(v251) = 0;
    v252 = 0;
    memset_pattern16(__b, &unk_29D2F27B0, 0x40uLL);
    memset_pattern16(v231, &unk_29D2F27B0, 0x40uLL);
    *(&v253[1] + 3) = 0;
    *(v253 + 3) = 0;
    *(&v253[2] + 3) = 0;
    v232 = 2;
    *v233 = LODWORD(v253[0]);
    *&v233[11] = 0u;
    v234 = 2;
    *v235 = LODWORD(v253[0]);
    *&v235[11] = 0u;
    v236 = 2;
    *&v237[11] = 0u;
    *v237 = LODWORD(v253[0]);
    v238 = 2;
    *v239 = LODWORD(v253[0]);
    *&v239[11] = 0u;
    v240 = 2;
    *&v241[11] = 0u;
    *v241 = LODWORD(v253[0]);
    v242 = 2;
    *&v243[11] = 0u;
    *v243 = LODWORD(v253[0]);
    v244 = 2;
    *&v245[11] = 0u;
    *v245 = LODWORD(v253[0]);
    v246 = 2;
    *v247 = LODWORD(v253[0]);
    *&v247[11] = 0u;
    v15 = (a1 - *a1);
    v16 = *v15;
    if (v16 < 0x17)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15[11];
      if (v15[11])
      {
        v17 = (v17 + a1 + *(v17 + a1));
      }
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 255;
    while (1)
    {
      if (v17 && *v17 > v22)
      {
        v24 = &v17[v20 + 1] + v17[v20 + 1];
      }

      else
      {
        v24 = 0;
      }

      if (__b[v22] == 263)
      {
        if (v24 && (v26 = (v24 - *v24), *v26 >= 5u))
        {
          v27 = v26[2];
          if (v27)
          {
            v27 = *&v27[v24];
          }
        }

        else
        {
          v27 = 0;
        }

        __b[v22] = v27;
      }

      LODWORD(v28) = v233[v19 - 1];
      if (v28 == 2)
      {
        if (v24 && (v29 = (v24 - *v24), *v29 >= 9u))
        {
          v28 = v29[4];
          if (v28)
          {
            v30 = *(v24 + v28);
            if (v30 == 2)
            {
              LODWORD(v28) = 2;
            }

            else
            {
              LODWORD(v28) = v30 == 1;
            }
          }
        }

        else
        {
          LODWORD(v28) = 0;
        }

        v233[v19 - 1] = v28;
      }

      if (v28 != 1)
      {
        goto LABEL_82;
      }

      if (v24)
      {
        break;
      }

      v32 = 1 << v22;
      if (((1 << v22) & v23) == 0)
      {
        goto LABEL_12;
      }

      LOBYTE(v24) = 0;
LABEL_11:
      v21 = v21 & ~(15 << (v20 * 4)) | ((v24 & 0xF) << (v20 * 4));
      v248 = v21;
      v25 = v23 & ~v32;
      v23 = v25;
      LOBYTE(v249) = v25;
LABEL_12:
      ++v22;
      ++v20;
      v19 += 28;
      if (v20 == 8)
      {
        if (v16 >= 0x39)
        {
          if (v15[28] && *(a1 + v15[28]))
          {
            v62 = *(a1 + v15[28]);
            v63 = v62 == 1;
            if (v62 == 1)
            {
              v64 = 2;
            }

            else
            {
              v64 = 3;
            }

            v230 = v64;
            if (!v63)
            {
              memset_pattern16(v231, &unk_29D2F27B0, 0x40uLL);
            }
          }

          else
          {
            v230 = 0;
          }

LABEL_106:
          if (v15[18] && *(a1 + v15[18]))
          {
            v66 = 1;
            if (v16 >= 0x27)
            {
              if (v15[19])
              {
                v67 = *(a1 + v15[19]);
                if (v67 > 0xF)
                {
                  v66 = 0;
                }

                else
                {
                  v66 = dword_29D2FEC28[v67];
                }
              }

              else
              {
                v66 = 1;
              }
            }

            v251 = v66;
            v252 = 1;
          }

          goto LABEL_115;
        }

        v230 = 0;
        if (v16 >= 0x25)
        {
          goto LABEL_106;
        }

        if (v16 < 0xD)
        {
          LOBYTE(v65) = 1;
          HIBYTE(v249) = 1;
          goto LABEL_129;
        }

LABEL_115:
        v68 = v15[6];
        if (v15[6])
        {
          v69 = *(a1 + v68);
        }

        else
        {
          v69 = 1;
        }

        HIBYTE(v249) = v69;
        if (v16 >= 0xF && v15[7])
        {
          v70 = v15[7];
          v71 = *(a1 + v70);
          if (v71)
          {
            v65 = *(a1 + v70);
          }

          else
          {
            LOBYTE(v65) = 1;
          }

          if (v71 || !v68)
          {
LABEL_129:
            v250 = v65;
            AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initialize(size_ptr, __b, a6, a9);
            AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(size_ptr, 0);
            v72 = v210;
            *(a8 + 112) = *size_ptr;
            *(a8 + 128) = v72;
            *(a8 + 144) = v211;
            goto LABEL_130;
          }
        }

        else if (!v68)
        {
          LOBYTE(v65) = 1;
          goto LABEL_129;
        }

        v65 = *(a1 + v68);
        goto LABEL_129;
      }
    }

    v31 = __b + v19;
    if (*&v233[v19 + 3])
    {
      if (*(v31 + 38))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v33 = (v24 - *v24);
      if (*v33 >= 0x15u && (v34 = v33[10]) != 0)
      {
        v35 = *(v24 + v34);
        if (v35 > 0x13)
        {
          v36 = 0;
        }

        else
        {
          v36 = dword_29D2F7668[v35];
        }
      }

      else
      {
        v36 = 2;
      }

      *(v31 + 37) = v36;
      if (*(v31 + 38))
      {
LABEL_52:
        v41 = __b + v19;
        if (*&v233[v19 + 11])
        {
          if (*(v41 + 40))
          {
            goto LABEL_67;
          }
        }

        else
        {
          v42 = (v24 - *v24);
          if (*v42 >= 0x13u && (v43 = v42[9]) != 0)
          {
            v44 = *(v24 + v43);
            if (v44 > 0x13)
            {
              v45 = 0;
            }

            else
            {
              v45 = dword_29D2F7668[v44];
            }
          }

          else
          {
            v45 = 2;
          }

          *(v41 + 39) = v45;
          if (*(v41 + 40))
          {
LABEL_67:
            v50 = __b + v19;
            if (*&v233[v19 + 19])
            {
              if (*(v50 + 42))
              {
LABEL_82:
                v32 = 1 << v22;
                if (((1 << v22) & v23) == 0)
                {
                  goto LABEL_12;
                }

                if (v24)
                {
                  v59 = (v24 - *v24);
                  if (*v59 >= 7u && (v60 = v59[3]) != 0)
                  {
                    v61 = *(v24 + v60);
                    LODWORD(v24) = __rbit32(v61) >> 28;
                    if ((v61 & 0x10) != 0)
                    {
                      goto LABEL_12;
                    }
                  }

                  else
                  {
                    LOBYTE(v24) = 15;
                  }
                }

                goto LABEL_11;
              }
            }

            else
            {
              v51 = (v24 - *v24);
              if (*v51 >= 0xDu && (v52 = v51[6]) != 0)
              {
                v53 = *(v24 + v52);
                if (v53 > 5)
                {
                  v54 = 0;
                }

                else
                {
                  v54 = dword_29D2F76B8[v53];
                }
              }

              else
              {
                v54 = 3;
              }

              *(v50 + 41) = v54;
              if (*(v50 + 42))
              {
                goto LABEL_82;
              }
            }

            v55 = (v24 - *v24);
            if (*v55 >= 0xBu && (v56 = v55[5]) != 0)
            {
              v57 = *(v24 + v56);
              if (v57 > 5)
              {
                v58 = 0;
              }

              else
              {
                v58 = dword_29D2F76B8[v57];
              }
            }

            else
            {
              v58 = 3;
            }

            *(v50 + 42) = v58;
            goto LABEL_82;
          }
        }

        v46 = (v24 - *v24);
        if (*v46 >= 0xFu && (v47 = v46[7]) != 0)
        {
          v48 = *(v24 + v47);
          if (v48 > 0x13)
          {
            v49 = 0;
          }

          else
          {
            v49 = dword_29D2F7668[v48];
          }
        }

        else
        {
          v49 = 1;
        }

        *(v41 + 40) = v49;
        goto LABEL_67;
      }
    }

    v37 = (v24 - *v24);
    if (*v37 >= 0x11u && (v38 = v37[8]) != 0)
    {
      v39 = *(v24 + v38);
      if (v39 > 0x13)
      {
        v40 = 0;
      }

      else
      {
        v40 = dword_29D2F7668[v39];
      }
    }

    else
    {
      v40 = 1;
    }

    *(v31 + 38) = v40;
    goto LABEL_52;
  }

  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(size_ptr, 0);
  v18 = v210;
  *(a8 + 112) = *size_ptr;
  *(a8 + 128) = v18;
  *(a8 + 144) = v211;
  if (atomic_load_explicit(&AGX::defaultFragmentDescriptor(void)::once, memory_order_acquire) != -1)
  {
    __b[0] = &v208;
    v253[0] = __b;
    std::__call_once(&AGX::defaultFragmentDescriptor(void)::once, v253, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultFragmentDescriptor(void)::$_0 &&>>);
  }

  a1 = AGX::defaultFragmentDescriptor(void)::_desc;
LABEL_130:
  *(a8 + 108) = ((a6 & 3) << 14) | ((a9 & 1) << 16) | *(a8 + 108) & 0xFFFE3FFF;
  if ((a7 == 7 || a7 == 2) && (*(a8 + 144) & 0xF00) != 0)
  {
    if (*(a8 + 144))
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_9981);
      }

      LOBYTE(a7) = 1;
    }

    else
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_17);
      }

      LOBYTE(a7) = 0;
    }
  }

  v73 = *a1;
  v74 = *(a1 - v73);
  if (v74 < 0x17)
  {
LABEL_242:
    v127 = *(a8 + 40);
    goto LABEL_243;
  }

  v75 = *(a1 - v73 + 22);
  if (!*(a1 - v73 + 22))
  {
    v126 = -v73;
    if (v74 < 0x25)
    {
      goto LABEL_242;
    }

    goto LABEL_236;
  }

  v76 = 0;
  v77 = a1 + v75;
  v78 = *(a1 + v75);
  v79 = a6 - 1;
  v80 = &v77[v78];
  for (i = 64; i != 96; i += 4)
  {
    if (v76 < *&v77[v78])
    {
      v83 = *&v80[i - 60];
      v84 = &v80[i + v83];
      v85 = v83 - *(v84 - 15);
      v86 = &v80[i + v85];
      v87 = *(v86 - 30);
      if (v87 >= 5)
      {
        v88 = *(v86 - 28);
        if (v88)
        {
          if (*&v80[i - 60 + v83 + v88])
          {
            if (v87 >= 9 && *&v80[i - 52 + v85])
            {
              v89 = v80[i - 60 + v83 + *&v80[i - 52 + v85]];
              v90 = v89 == 1;
              if (v89 == 2)
              {
                v90 = 2;
              }

              if (v79 < 2)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v90 = 0;
              if (v79 < 2)
              {
                goto LABEL_157;
              }
            }

            if (v90 != 1)
            {
              goto LABEL_182;
            }

            if (v87 < 0x15)
            {
              if (v87 < 0x11)
              {
                if (v87 < 0xF)
                {
                  if (v87 < 0xD)
                  {
                    if (v87 < 0xB)
                    {
LABEL_181:
                      v90 = 1;
LABEL_182:
                      if ((v90 - 1) >= 2)
                      {
                        v91 = *(a8 + i) & 0xF7FFFFFE | ((v90 == 2) << 27);
                      }

                      else
                      {
                        v91 = (*(a8 + i) & 0xF7FFFFFE | ((v90 == 2) << 27)) + 1;
                      }

                      *(a8 + i) = v91;
                      if (v90 == 1)
                      {
                        v92 = &v80[i + v83 - *(v84 - 15)];
                        if (*(v92 - 60) >= 0x15u && (v93 = *(v92 - 40)) != 0)
                        {
                          v94 = v80[i - 60 + v83 + v93];
                          if (v94 > 0x13)
                          {
                            v95 = 0;
                          }

                          else
                          {
                            v95 = dword_29D2FEC88[v94];
                          }
                        }

                        else
                        {
                          v95 = 4;
                        }

                        v96 = v95 | v91 & 0xFFFFFFC1;
                        *(a8 + i) = v96;
                        v97 = v83 - *(v84 - 15);
                        if (*&v80[i - 60 + v97] >= 0x11u && *&v80[i - 44 + v97])
                        {
                          v98 = v80[i - 60 + v83 + *&v80[i - 44 + v97]];
                          if (v98 > 0x13)
                          {
                            v99 = 0;
                          }

                          else
                          {
                            v99 = dword_29D2FECD8[v98];
                          }
                        }

                        else
                        {
                          v99 = 64;
                        }

                        v100 = v99 | v96 & 0xFFFFF83F;
                        *(a8 + i) = v100;
                        v101 = &v80[i + v83 - *(v84 - 15)];
                        if (*(v101 - 60) >= 0x13u && (v102 = *(v101 - 42)) != 0)
                        {
                          v103 = v80[i - 60 + v83 + v102];
                          if (v103 > 0x13)
                          {
                            v104 = 0;
                          }

                          else
                          {
                            v104 = dword_29D2FED28[v103];
                          }
                        }

                        else
                        {
                          v104 = 4096;
                        }

                        v105 = v104 | v100 & 0xFFFF07FF;
                        *(a8 + i) = v105;
                        v106 = v83 - *(v84 - 15);
                        if (*&v80[i - 60 + v106] >= 0xFu && *&v80[i - 46 + v106])
                        {
                          v107 = v80[i - 60 + v83 + *&v80[i - 46 + v106]];
                          if (v107 > 0x13)
                          {
                            v108 = 0;
                          }

                          else
                          {
                            v108 = dword_29D2FED78[v107];
                          }
                        }

                        else
                        {
                          v108 = 0x10000;
                        }

                        v109 = v108 | v105 & 0xFFE0FFFF;
                        *(a8 + i) = v109;
                        v110 = &v80[i + v83 - *(v84 - 15)];
                        if (*(v110 - 60) >= 0xDu && (v111 = *(v110 - 48)) != 0)
                        {
                          v112 = v80[i - 60 + v83 + v111];
                          if (v112 > 5)
                          {
                            v113 = 0;
                          }

                          else
                          {
                            v113 = dword_29D2FEDC8[v112];
                          }
                        }

                        else
                        {
                          v113 = 6291456;
                        }

                        v114 = v113 | v109 & 0xFF1FFFFF;
                        *(a8 + i) = v114;
                        v115 = v83 - *(v84 - 15);
                        if (*&v80[i - 60 + v115] >= 0xBu && *&v80[i - 50 + v115])
                        {
                          v116 = v80[i - 60 + v83 + *&v80[i - 50 + v115]];
                          if (v116 > 5)
                          {
                            v117 = 0;
                          }

                          else
                          {
                            v117 = dword_29D2FEDE0[v116];
                          }
                        }

                        else
                        {
                          v117 = 50331648;
                        }

                        *(a8 + i) = v117 | v114 & 0xF8FFFFFF;
                      }

                      v118 = &v80[i + v83 - *(v84 - 15)];
                      if (*(v118 - 60) >= 7u && (v119 = *(v118 - 54)) != 0)
                      {
                        v120 = v80[i - 60 + v83 + v119];
                        if (a6 == 1)
                        {
                          goto LABEL_143;
                        }
                      }

                      else
                      {
                        v120 = 15;
                        if (a6 == 1)
                        {
                          goto LABEL_143;
                        }
                      }

                      if ((v120 & 0x10) == 0)
                      {
                        v121 = __rbit32(v120);
                        v122 = v121 >> 28;
                        v123 = *(a8 + 48) & 0xFFFFFFFFFF000000 | (*(a8 + 48) | ((8 * v121) >> 31) & (1 << v76)) & 0xFF0000FF | *(a8 + 48) & 0xFF00 | (*(a8 + 48) | ((8 * v121) >> 31) & (1 << v76)) & 0xFF00 | (256 << v76) & ((4 * v121) >> 31) & 0xFF00FFFF | *(a8 + 48) & 0xFF0000 | (*(a8 + 48) | ((8 * v121) >> 31) & (1 << v76)) & 0xFF0000 | (256 << v76) & ((4 * v121) >> 31) & 0xFF0000 | (0x10000 << v76) & ((2 * v121) >> 31);
                        if (v122 < 0)
                        {
                          v124 = 0x1000000 << v76;
                        }

                        else
                        {
                          v124 = 0;
                        }

                        v82 = v123 & 0xFFFFFFFF00FFFFFFLL | v123 & 0xFF000000 | v124;
                        goto LABEL_144;
                      }

LABEL_143:
                      v82 = (*(a8 + 48) & 0xFFFFFF00FFFFFFFFLL) + ((BYTE4(*(a8 + 48)) | (1 << v76)) << 32);
LABEL_144:
                      *(a8 + 48) = v82;
                      goto LABEL_145;
                    }

LABEL_179:
                    if (!*&v80[i - 50 + v85] || v80[i - 60 + v83 + *&v80[i - 50 + v85]] <= 4u)
                    {
                      goto LABEL_181;
                    }

LABEL_157:
                    v90 = 2;
                    goto LABEL_182;
                  }

LABEL_175:
                  if (*&v80[i - 48 + v85] && v80[i - 60 + v83 + *&v80[i - 48 + v85]] >= 5u)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_179;
                }

LABEL_171:
                if (*&v80[i - 46 + v85] && v80[i - 60 + v83 + *&v80[i - 46 + v85]] >= 0x13u)
                {
                  goto LABEL_157;
                }

                goto LABEL_175;
              }
            }

            else if (*&v80[i - 40 + v85] && v80[i - 60 + v83 + *&v80[i - 40 + v85]] >= 0x13u)
            {
              goto LABEL_157;
            }

            if (*&v80[i - 44 + v85] && v80[i - 60 + v83 + *&v80[i - 44 + v85]] > 0x12u || v87 >= 0x13 && *&v80[i - 42 + v85] && v80[i - 60 + v83 + *&v80[i - 42 + v85]] >= 0x13u)
            {
              goto LABEL_157;
            }

            goto LABEL_171;
          }
        }
      }
    }

LABEL_145:
    ++v76;
  }

  v125 = *a1;
  v126 = -v125;
  if (*(a1 - v125) < 0x25u)
  {
    goto LABEL_242;
  }

LABEL_236:
  if (!*(a1 + v126 + 36))
  {
    goto LABEL_242;
  }

  v127 = *(a8 + 40);
  if (*(a1 + *(a1 + v126 + 36)))
  {
    v128 = v127 | 0x20;
    *(a8 + 40) = v128;
    v129 = (a1 - *a1);
    if (*v129 >= 0x27u && (v130 = v129[19]) != 0)
    {
      v131 = *(a1 + v130);
      if (v131 > 0xF)
      {
        v132 = 0;
      }

      else
      {
        v132 = dword_29D2FEDF8[v131];
      }
    }

    else
    {
      v132 = 64;
    }

    v133 = v132 | v128 & 0xFFFFF83F;
    goto LABEL_244;
  }

LABEL_243:
  v133 = v127 & 0xFFFFFFDF;
LABEL_244:
  *(a8 + 40) = v133;
  v134 = (a1 - *a1);
  if (*v134 >= 0x29u && (v135 = v134[20]) != 0 && *(a1 + v135))
  {
    v136 = v133 | 0x800;
    *(a8 + 40) = v136;
    v137 = (a1 - *a1);
    if (*v137 >= 0x2Bu && (v138 = v137[21]) != 0)
    {
      v139 = *(a1 + v138);
      if (v139 > 7)
      {
        v140 = 0;
      }

      else
      {
        v140 = dword_29D2FEE38[v139];
      }
    }

    else
    {
      v140 = 4096;
    }

    v141 = v140 | v136 & 0xFFFF0FFF;
  }

  else
  {
    v141 = v133 & 0xFFFFF7FF;
  }

  *(a8 + 40) = v141;
  v142 = (a1 - *a1);
  if (*v142 < 0x2Du)
  {
    LODWORD(v143) = 0;
  }

  else
  {
    v143 = v142[22];
    if (v143)
    {
      LODWORD(v143) = (*(a1 + v143) != 0) << 16;
    }
  }

  v144 = v141 & 0xFFFEFFFF | v143;
  *(a8 + 40) = v144;
  v145 = (a1 - *a1);
  if (*v145 < 0x35u)
  {
    LODWORD(v146) = 0;
  }

  else
  {
    v146 = v145[26];
    if (v146)
    {
      LODWORD(v146) = *(a1 + v146);
    }
  }

  *(a8 + 96) = v146;
  v147 = v144 & 0xFFFBFFFF | (4 * v143);
  *(a8 + 40) = v147;
  v148 = (a1 - *a1);
  if (*v148 < 0x2Fu)
  {
    LODWORD(v149) = 0;
  }

  else
  {
    v149 = v148[23];
    if (v149)
    {
      LODWORD(v149) = 16 * (*(a1 + v149) != 0);
    }
  }

  v150 = v149 | v147 & 0xFFFFFFEF;
  *(a8 + 40) = v150;
  v151 = (a1 - *a1);
  v152 = *v151;
  if (v152 >= 0x11)
  {
    if (v151[8])
    {
      v153 = *(a1 + v151[8]);
    }

    else
    {
      v153 = -1;
    }

    goto LABEL_270;
  }

  v153 = -1;
  if (v152 >= 9)
  {
LABEL_270:
    v154 = v151[4];
    if (v154)
    {
      LODWORD(v154) = *(a1 + v154) != 0;
    }
  }

  else
  {
    LODWORD(v154) = 0;
  }

  v155 = v154 | v150 & 0xFFFFFFFE;
  *(a8 + 40) = v155;
  v156 = (a1 - *a1);
  if (*v156 < 0xBu)
  {
    LODWORD(v157) = 0;
  }

  else
  {
    v157 = v156[5];
    if (v157)
    {
      LODWORD(v157) = 2 * (*(a1 + v157) != 0);
    }
  }

  v158 = v157 | v155 & 0xFFFFFFFD;
  *(a8 + 40) = v158;
  v159 = (a1 - *a1);
  v160 = *v159;
  if (v160 < 0x31)
  {
    if (v160 < 0x13)
    {
      LODWORD(v163) = 0;
LABEL_288:
      if (v153 == -1)
      {
        v164 = v163;
      }

      else
      {
        v164 = 1;
      }

      if (v164)
      {
        v165 = 4;
      }

      else
      {
        v165 = 0;
      }

      v166 = v165 | v158 & 0xFFFFFFFB;
      goto LABEL_295;
    }

LABEL_285:
    v163 = v159[9];
    if (v163)
    {
      LODWORD(v163) = *(a1 + v163) != 1.0;
    }

    goto LABEL_288;
  }

  if (!v159[24] || !*(a1 + v159[24]))
  {
    goto LABEL_285;
  }

  if (v159[10] && *(a1 + v159[10]))
  {
    v161 = v159[9];
    if (v161 && *(a1 + v161) == 0.0)
    {
LABEL_283:
      LODWORD(v162) = 0;
      goto LABEL_350;
    }

LABEL_349:
    LODWORD(v162) = 4;
  }

  else
  {
    v162 = v159[9];
    if (v162)
    {
      if (*(a1 + v162) == 1.0)
      {
        goto LABEL_283;
      }

      goto LABEL_349;
    }
  }

LABEL_350:
  v201 = v158 & 0xFFFFFFFB;
  if (v153 == -1)
  {
    v202 = v162;
  }

  else
  {
    v202 = 4;
  }

  v203 = v202 | v201;
  *(a8 + 40) = v203;
  v204 = (a1 - *a1);
  if (*v204 < 0x15u)
  {
    LODWORD(v205) = 0;
  }

  else
  {
    v205 = v204[10];
    if (v205)
    {
      LODWORD(v205) = 8 * (*(a1 + v205) != 0);
    }
  }

  v166 = v205 | v203 & 0xFFFFFFF7;
LABEL_295:
  *(a8 + 40) = v166;
  v167 = *(a8 + 108);
  *(a8 + 108) = v167 & 0xFFFFFFFE;
  v168 = (a1 - *a1);
  if (*v168 < 0x31u)
  {
    LODWORD(v169) = 0;
  }

  else
  {
    v169 = v168[24];
    if (v169)
    {
      LODWORD(v169) = 2 * (*(a1 + v169) != 0);
    }
  }

  v170 = v169 | v167 & 0xFFFFFFFC;
  *(a8 + 108) = v170;
  v171 = (a1 - *a1);
  v172 = *v171;
  if (v172 <= 0x1C)
  {
    *(a8 + 56) = 0;
LABEL_318:
    LODWORD(v186) = 0;
    *(a8 + 224) = 0;
    goto LABEL_319;
  }

  v173 = v171[14];
  if (v171[14] && (v174 = *(a1 + v173), v175 = (a1 + v173 + v174), (v176 = *v175) != 0))
  {
    v177 = 0;
    v178 = 0;
    v179 = 0;
    if (v176 >= 0x1F)
    {
      v176 = 31;
    }

    v180 = 4 * v176;
    v181 = a1 + v173 + v174;
    do
    {
      v182 = *&v181[v177 + 4];
      v183 = &v181[v177 + v182 - *(&v175[v177 / 4 + 1] + v182)];
      if (*(v183 + 2) >= 5u)
      {
        v184 = *(v183 + 4);
        if (v184)
        {
          if (v181[v177 + 4 + v182 + v184] == 1)
          {
            v179 |= 1 << v178;
          }
        }
      }

      ++v178;
      v177 += 4;
    }

    while (v180 != v177);
  }

  else
  {
    v179 = 0;
  }

  *(a8 + 56) = v179;
  if (v172 <= 0x1E)
  {
    goto LABEL_318;
  }

  v185 = v171[15];
  if (v171[15])
  {
    LOBYTE(v185) = *(a1 + v185) != 0;
  }

  *(a8 + 224) = v185;
  if (v172 < 0x33)
  {
    LODWORD(v186) = 0;
  }

  else
  {
    v186 = v171[25];
    if (v186)
    {
      LODWORD(v186) = 4 * (*(a1 + v186) != 0);
    }
  }

LABEL_319:
  v187 = v186 | v170 & 0xFFFFFFFA;
  *(a8 + 108) = v187;
  v188 = (a1 - *a1);
  if (*v188 < 0x23u)
  {
    LODWORD(v189) = 0;
  }

  else
  {
    v189 = v188[17];
    if (v189)
    {
      v190 = *(a1 + v189);
      if (v190 == 2)
      {
        LODWORD(v189) = 32;
      }

      else
      {
        LODWORD(v189) = 16 * (v190 == 1);
      }
    }
  }

  v191 = v189 | v187 & 0xFFFFFECE;
  *(a8 + 108) = v191;
  v192 = (a1 - *a1);
  if (*v192 < 0x21u)
  {
    LODWORD(v193) = 0;
  }

  else
  {
    v193 = v192[16];
    if (v193)
    {
      LODWORD(v193) = *(a1 + v193);
      if (v193)
      {
        *(a8 + 100) |= 0x200u;
        LODWORD(v193) = 64;
      }
    }
  }

  v194 = v193 | v191 & 0xFFFFFDBF;
  *(a8 + 108) = v194;
  v195 = v166 & 0xFF8FFFFF | ((a7 & 7) << 20);
  *(a8 + 40) = v195;
  v196 = (a1 - *a1);
  if (*v196 >= 0x39u)
  {
    v197 = v196[28];
    if (v197)
    {
      if (*(a1 + v197) == 1)
      {
        *(a8 + 104) = -1;
      }
    }
  }

  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) = v195 & 0xFFFFFFEF;
  if (a2)
  {
    v198 = 256;
  }

  else
  {
    v198 = 0;
  }

  *(a8 + 108) = v194 & 0xFFFFFCFF | v198;
  if (a3)
  {
    __b[0] = 0;
    size_ptr[0] = 0;
    map = dispatch_data_create_map(a3, __b, size_ptr);
    std::string::append((a8 + 200), __b[0], size_ptr[0]);
    dispatch_release(map);
  }

  if (a8 + 232 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 232), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 5);
  }

  result = (a8 + 256);
  if (a8 + 256 != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 5);
  }

  *(a8 + 100) &= 0x8BFFFEFF;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t AGX::FragmentProgramKey::FragmentProgramKey(uint64_t a1, NSObject *a2, void *a3, void *a4)
{
  *(a1 + 8) = 4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A23FA788;
  *(a1 + 104) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1985229328;
  v8 = (a1 + 232);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl((a1 + 232), 0);
  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl((a1 + 256), 0);
  *a1 = &unk_2A23F7CF0;
  *(a1 + 280) = 0;
  if (a2)
  {
    __s = 0;
    size_ptr = 0;
    v9 = dispatch_data_create_map(a2, &__s, &size_ptr);
    std::string::append((a1 + 200), __s, size_ptr);
    dispatch_release(v9);
  }

  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(&__s, a4);
  if (v8 != &__s)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v8, __s, v12, (v12 - __s) >> 5);
  }

  if (__s)
  {
    v12 = __s;
    operator delete(__s);
  }

  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(&__s, a3);
  if ((a1 + 256) != &__s)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a1 + 256), __s, v12, (v12 - __s) >> 5);
  }

  if (__s)
  {
    v12 = __s;
    operator delete(__s);
  }

  return a1;
}

void sub_29CC89318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v10);
  _Unwind_Resume(a1);
}

void sub_29CC89350(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 240) = v5;
    operator delete(v5);
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  AGX::FragmentProgramVaryings::~FragmentProgramVaryings((v1 + 152));
  *v1 = v3;
  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void AGX::Impl::FragmentProgramKey::~FragmentProgramKey(AGX::Impl::FragmentProgramKey *this)
{
  *this = &unk_2A23FA788;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  if ((*(this + 223) & 0x80000000) == 0)
  {
    if ((*(this + 199) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(this + 22));
    if ((*(this + 175) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  operator delete(*(this + 25));
  if (*(this + 199) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((*(this + 175) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  operator delete(*(this + 19));
LABEL_8:
  *this = &unk_2A23FA890;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(this);

  JUMPOUT(0x29ED520D0);
}

void ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::FragmentProgramKey::~FragmentProgramKey(AGX::FragmentProgramKey *this)
{
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(this);

  JUMPOUT(0x29ED520D0);
}

void AGX::Impl::FragmentProgramKey::serialize(AGX::Impl::FragmentProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = this + 16;
  *(this + 3) = *(this + 2);
  v35 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v35);
  v7 = *v6;
  v8 = *(v6 + 1) - *v6;
  if (v8 > 0xFFFFFFFFFFFFFFAFLL)
  {
    v9 = v7 + v8 + 80;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0x14uLL);
    v7 = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = v7 + v8;
  *v10 = ((v9 - v7) >> 2 << 8) | 0x3F;
  *(v10 + 4) = *(v6 + 24);
  v11 = *(v6 + 40);
  v12 = *(v6 + 56);
  v13 = *(v6 + 72);
  *(v10 + 68) = *(v6 + 11);
  *(v10 + 52) = v13;
  *(v10 + 36) = v12;
  *(v10 + 20) = v11;
  v14 = *(this + 2);
  v15 = *(this + 3) - v14;
  if (v15 > 0xFFFFFFFFFFFFFFCFLL)
  {
    v16 = *(this + 3) + 48;
    *(this + 3) = v16;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0xCuLL);
    v14 = *(this + 2);
    v16 = *(this + 3);
  }

  v17 = v14 + v15;
  *v17 = ((v16 - v14) >> 2 << 8) | 0x42;
  v18 = *(this + 7);
  v19 = *(this + 8);
  *(v17 + 36) = *(this + 18);
  *(v17 + 20) = v19;
  *(v17 + 4) = v18;
  v20 = (this + 152);
  v21 = *(this + 175);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v21 = *(this + 20);
    if (!v21)
    {
      goto LABEL_17;
    }

    v20 = *v20;
  }

  else if (!*(this + 175))
  {
    goto LABEL_17;
  }

  v22 = *(this + 2);
  v23 = *(this + 3);
  v24 = v23 - v22;
  v25 = (v23 - v22) >> 2;
  v26 = (((v21 + 3) >> 2) + 2) & 0x7FFFFFFFFFFFFFFELL;
  if (v25 >= v25 + v26)
  {
    if (v25 > v25 + v26)
    {
      v23 = v22 + 4 * (v25 + v26);
      *(this + 3) = v23;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(v6, v26);
    v22 = *(this + 2);
    v23 = *(this + 3);
  }

  *(v22 + v24) = ((v23 - v22) >> 2 << 8) | 0x4B;
  memcpy((v22 + v24 + 4), v20, v21);
LABEL_17:
  v27 = (this + 176);
  v28 = *(this + 199);
  if ((v28 & 0x8000000000000000) != 0)
  {
    v28 = *(this + 23);
    if (!v28)
    {
      goto LABEL_27;
    }

    v27 = *v27;
  }

  else if (!*(this + 199))
  {
    goto LABEL_27;
  }

  v29 = *(this + 2);
  v30 = *(this + 3);
  v31 = v30 - v29;
  v32 = (v30 - v29) >> 2;
  v33 = (((v28 + 3) >> 2) + 2) & 0x7FFFFFFFFFFFFFFELL;
  if (v32 >= v32 + v33)
  {
    if (v32 > v32 + v33)
    {
      v30 = v29 + 4 * (v32 + v33);
      *(this + 3) = v30;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(v6, v33);
    v29 = *(this + 2);
    v30 = *(this + 3);
  }

  *(v29 + v31) = ((v30 - v29) >> 2 << 8) | 0x4C;
  memcpy((v29 + v31 + 4), v27, v28);
LABEL_27:
  v36 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v36);
  v34 = *(this + 2);
  *a2 = v34;
  *a3 = *(this + 3) - v34;
}

uint64_t AGX::Impl::FragmentProgramKey::legalizeStateForTargetOS(_DWORD *a1, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x1000A0011000E00) == 0 || (*a2 & v2) >= (v2 & 0x1000A0011000E00))
  {
    return 1;
  }

  v3 = a1[28];
  if ((v3 & 0x1F) == 0x16)
  {
    a1[28] = v3 & 0xFFFFFFE0 | 0xF;
  }

  else if ((v3 & 0x1F) == 0x17)
  {
    goto LABEL_35;
  }

  v4 = a1[29];
  if ((v4 & 0x1F) == 0x16)
  {
    a1[29] = v4 & 0xFFFFFFE0 | 0xF;
  }

  else if ((v4 & 0x1F) == 0x17)
  {
    goto LABEL_35;
  }

  v5 = a1[30];
  if ((v5 & 0x1F) == 0x16)
  {
    a1[30] = v5 & 0xFFFFFFE0 | 0xF;
  }

  else if ((v5 & 0x1F) == 0x17)
  {
    goto LABEL_35;
  }

  v6 = a1[31];
  if ((v6 & 0x1F) == 0x16)
  {
    a1[31] = v6 & 0xFFFFFFE0 | 0xF;
  }

  else if ((v6 & 0x1F) == 0x17)
  {
    goto LABEL_35;
  }

  v7 = a1[32];
  if ((v7 & 0x1F) == 0x16)
  {
    a1[32] = v7 & 0xFFFFFFE0 | 0xF;
  }

  else if ((v7 & 0x1F) == 0x17)
  {
    goto LABEL_35;
  }

  v8 = a1[33];
  if ((v8 & 0x1F) == 0x16)
  {
    a1[33] = v8 & 0xFFFFFFE0 | 0xF;
  }

  else if ((v8 & 0x1F) == 0x17)
  {
    goto LABEL_35;
  }

  v9 = a1[34];
  if ((v9 & 0x1F) == 0x16)
  {
    a1[34] = v9 & 0xFFFFFFE0 | 0xF;
  }

  else if ((v9 & 0x1F) == 0x17)
  {
    goto LABEL_35;
  }

  v10 = a1[35];
  if ((v10 & 0x1F) == 0x16)
  {
    a1[35] = v10 & 0xFFFFFFE0 | 0xF;
    return 1;
  }

  if ((v10 & 0x1F) != 0x17)
  {
    return 1;
  }

LABEL_35:
  std::__throw_bad_optional_access[abi:nn200100]();
  return AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey();
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *a2, *(a2 + 8));
  }

  else
  {
    v51 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v52 = *(a2 + 24);
  }

  v16 = *(a2 + 48);
  v53 = v16;
  v17 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v51;
  }

  v18 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v52;
  }

  v56 = v16;
  AGX::MeshProgramKey::MeshProgramKey(a8, 0, a3, a4, &v54, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v54.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    operator delete(v51.__r_.__value_.__l.__data_);
    if (a1)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_21:
  operator delete(v52.__r_.__value_.__l.__data_);
  if (v17 < 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  if (a1)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (atomic_load_explicit(&AGX::defaultMeshDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v54.__r_.__value_.__r.__words[0] = &v57;
    size_ptr[0] = &v54;
    std::__call_once(&AGX::defaultMeshDescriptor(void)::once, size_ptr, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultMeshDescriptor(void)::$_0 &&>>);
  }

  a1 = AGX::defaultMeshDescriptor(void)::_desc;
LABEL_26:
  v19 = (a1 - *a1);
  v20 = *v19;
  if (v20 <= 0x12)
  {
    LODWORD(v33) = 0;
    *(a8 + 40) = 0;
  }

  else
  {
    v21 = v19[9];
    if (v19[9] && (v22 = *(a1 + v21), v23 = (a1 + v21 + v22), (v24 = *v23) != 0))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      if (v24 >= 0x1F)
      {
        v24 = 31;
      }

      v28 = 4 * v24;
      v29 = a1 + v21 + v22;
      do
      {
        v30 = *&v29[v25 + 4];
        v31 = &v29[v25 + v30 - *(&v23[v25 / 4 + 1] + v30)];
        if (*(v31 + 2) >= 5u)
        {
          v32 = *(v31 + 4);
          if (v32)
          {
            if (v29[v25 + 4 + v30 + v32] == 1)
            {
              v27 |= 1 << v26;
            }
          }
        }

        ++v26;
        v25 += 4;
      }

      while (v28 != v25);
    }

    else
    {
      v27 = 0;
    }

    *(a8 + 40) = v27;
    if (v20 < 0x15)
    {
      LODWORD(v33) = 0;
    }

    else
    {
      v33 = v19[10];
      if (v33)
      {
        LODWORD(v33) = *(a1 + v33) & 1;
      }
    }
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFE | v33;
  v34 = (a1 - *a1);
  if (*v34 >= 0xFu && (v35 = v34[7]) != 0)
  {
    v36 = *(a1 + v35) & 0xF;
  }

  else
  {
    v36 = 1;
  }

  v37 = *(a8 + 56) & 0xFFFFFFF0 | v36;
  *(a8 + 56) = v37;
  v38 = (a1 - *a1);
  if (*v38 < 0x1Du)
  {
    LODWORD(v39) = 0;
  }

  else
  {
    v39 = v38[14];
    if (v39)
    {
      LODWORD(v39) = 32 * (*(a1 + v39) != 0);
    }
  }

  *(a8 + 56) = v39 | v37 & 0xFFFFFFDF;
  v40 = (a1 - *a1);
  if (*v40 < 0x17u)
  {
    LODWORD(v41) = 0;
  }

  else
  {
    v41 = v40[11];
    if (v41)
    {
      LODWORD(v41) = (*(a1 + v41) != 0) << 9;
    }
  }

  v42 = *(a8 + 52) & 0xFFFFFDFF | v41;
  *(a8 + 52) = v42;
  v43 = (a1 - *a1);
  if (*v43 < 7u)
  {
    LODWORD(v44) = 0;
  }

  else
  {
    v44 = v43[3];
    if (v44)
    {
      LODWORD(v44) = *(a1 + v44);
    }
  }

  *(a8 + 60) = v44;
  v45 = (a1 - *a1);
  if (*v45 < 9u)
  {
    LODWORD(v46) = 0;
  }

  else
  {
    v46 = v45[4];
    if (v46)
    {
      LODWORD(v46) = *(a1 + v46);
    }
  }

  *(a8 + 64) = v46;
  *(a8 + 52) = v42 & 0xFFFFFF7F;
  if (a5)
  {
    v54.__r_.__value_.__r.__words[0] = 0;
    size_ptr[0] = 0;
    map = dispatch_data_create_map(a5, &v54.__r_.__value_.__l.__data_, size_ptr);
    std::string::append((a8 + 72), v54.__r_.__value_.__l.__data_, size_ptr[0]);
    dispatch_release(map);
  }

  if (a8 + 104 != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 5);
  }

  if (a8 + 128 != a7)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 128), *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 5);
  }

  if (a9)
  {
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v48;
  result = vand_s8(*(a8 + 52), 0xFFFFF1FF8BFFFEFFLL);
  *(a8 + 52) = result;
  return result;
}

void sub_29CC89DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(va1);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(va);
  _Unwind_Resume(a1);
}

uint64_t AGX::MeshProgramKey::MeshProgramKey(uint64_t a1, NSObject *a2, int a3, int a4, uint64_t a5, void *a6, void *a7, int a8)
{
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a5, *(a5 + 8));
  }

  else
  {
    v24 = *a5;
  }

  if (*(a5 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    v25 = *(a5 + 24);
  }

  v14 = *(a5 + 48);
  v26 = v14;
  *(a1 + 8) = 10;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A23F7C20;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 84) = 0u;
  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl((a1 + 104), 0);
  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl((a1 + 128), 0);
  *(a1 + 152) = v24;
  *(a1 + 176) = v25;
  *(a1 + 200) = v14;
  if (a3)
  {
    v15 = 128;
  }

  else
  {
    v15 = 0;
  }

  if (a4)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 56) = v16 | v15 | (16 * v14) | *(a1 + 56) & 0xFFFFFE6F;
  *a1 = &unk_2A23F7CA8;
  *(a1 + 208) = 0;
  if (a2)
  {
    buffer_ptr = 0;
    size_ptr = 0;
    v17 = dispatch_data_create_map(a2, &buffer_ptr, &size_ptr);
    std::string::append((a1 + 72), buffer_ptr, size_ptr);
    dispatch_release(v17);
  }

  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(&buffer_ptr, a7);
  if ((a1 + 104) != &buffer_ptr)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a1 + 104), buffer_ptr, v23, (v23 - buffer_ptr) >> 5);
  }

  if (buffer_ptr)
  {
    v23 = buffer_ptr;
    operator delete(buffer_ptr);
  }

  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(&buffer_ptr, a6);
  if ((a1 + 128) != &buffer_ptr)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a1 + 128), buffer_ptr, v23, (v23 - buffer_ptr) >> 5);
  }

  if (buffer_ptr)
  {
    v23 = buffer_ptr;
    operator delete(buffer_ptr);
  }

  if (a8)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 96) = *(a1 + 96) & 0xFFFFFFFD | v18;
  return a1;
}

void sub_29CC8A0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::MeshProgramKey::~MeshProgramKey(v13);
  _Unwind_Resume(a1);
}

void sub_29CC8A0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v11 = *v8;
  if (*v8)
  {
    *(v7 + 112) = v11;
    operator delete(v11);
  }

  if (*(v7 + 95) < 0)
  {
    operator delete(*v9);
  }

  *v7 = a2;
  v12 = *(v7 + 16);
  if (v12)
  {
    *(v7 + 24) = v12;
    operator delete(v12);
  }

  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(va);
  _Unwind_Resume(a1);
}

void AGX::FragmentProgramVaryings::~FragmentProgramVaryings(void **this)
{
  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*this);
    return;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_5;
  }
}

void AGX::MeshProgramKey::~MeshProgramKey(void **this)
{
  *this = &unk_2A23FA740;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
    if ((*(this + 175) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 175) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[19]);
LABEL_3:
  *this = &unk_2A23F7C20;
  v2 = this[16];
  if (v2)
  {
    this[17] = v2;
    operator delete(v2);
  }

  v3 = this[13];
  if (v3)
  {
    this[14] = v3;
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_2A23F7C68;
  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }
}

void ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCMeshContextStateAGP,(_AGCStreamToken)10>::serialize(uint64_t a1, void *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v13 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v13);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFD7)
  {
    v9 = begin + v8 + 40;
    *(a1 + 24) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0xAuLL);
    begin = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x3E;
  v11 = *(a1 + 40);
  *(v10 + 20) = *(a1 + 56);
  *(v10 + 4) = v11;
  (*(*a1 + 48))(a1);
  v14 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v14);
  v12 = *(a1 + 16);
  *a2 = v12;
  *a3 = *(a1 + 24) - v12;
}

char *AGX::Impl::MeshProgramKey::addToSerializeStream(char *this)
{
  v1 = this;
  v2 = this + 152;
  v3 = this[175];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(this + 20);
    if (!v3)
    {
      goto LABEL_11;
    }

    v2 = *v2;
  }

  else if (!this[175])
  {
    goto LABEL_11;
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  v4 = (this + 16);
  v7 = v6 - v5;
  v8 = (v6 - v5) >> 2;
  v9 = (((v3 + 3) >> 2) + 2) & 0x7FFFFFFFFFFFFFFELL;
  if (v8 >= v8 + v9)
  {
    if (v8 > v8 + v9)
    {
      v6 = v5 + 4 * (v8 + v9);
      *(v1 + 24) = v6;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(v4, v9);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
  }

  *(v5 + v7) = ((v6 - v5) >> 2 << 8) | 0x4B;
  this = memcpy((v5 + v7 + 4), v2, v3);
LABEL_11:
  v10 = (v1 + 176);
  v11 = *(v1 + 199);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = *(v1 + 184);
    if (!v11)
    {
      return this;
    }

    v10 = *v10;
  }

  else if (!*(v1 + 199))
  {
    return this;
  }

  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v13 - v12;
  v15 = (v13 - v12) >> 2;
  v16 = (((v11 + 3) >> 2) + 2) & 0x7FFFFFFFFFFFFFFELL;
  if (v15 >= v15 + v16)
  {
    if (v15 > v15 + v16)
    {
      v13 = v12 + 4 * (v15 + v16);
      *(v1 + 24) = v13;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((v1 + 16), v16);
    v12 = *(v1 + 16);
    v13 = *(v1 + 24);
  }

  *(v12 + v14) = ((v13 - v12) >> 2 << 8) | 0x4C;

  return memcpy((v12 + v14 + 4), v10, v11);
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateObjectProgramKey@<D0>(int *a1@<X1>, int a2@<W2>, int a3@<W3>, NSObject *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  AGX::ObjectProgramKey::ObjectProgramKey(a7, 0, 0, 0, a2, a3);
  if (!a1)
  {
    if (atomic_load_explicit(&AGX::defaultObjectDescriptor(void)::once, memory_order_acquire) != -1)
    {
      buffer_ptr = &v42;
      size_ptr = &buffer_ptr;
      std::__call_once(&AGX::defaultObjectDescriptor(void)::once, &size_ptr, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultObjectDescriptor(void)::$_0 &&>>);
    }

    a1 = AGX::defaultObjectDescriptor(void)::_desc;
  }

  v12 = (a1 - *a1);
  v13 = *v12;
  if (v13 <= 0x12)
  {
    LODWORD(v26) = 0;
    *(a7 + 40) = 0;
  }

  else
  {
    v14 = v12[9];
    if (v12[9] && (v15 = *(a1 + v14), v16 = (a1 + v14 + v15), (v17 = *v16) != 0))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (v17 >= 0x1F)
      {
        v17 = 31;
      }

      v21 = 4 * v17;
      v22 = a1 + v14 + v15;
      do
      {
        v23 = *&v22[v18 + 4];
        v24 = &v22[v18 + v23 - *(&v16[v18 / 4 + 1] + v23)];
        if (*(v24 + 2) >= 5u)
        {
          v25 = *(v24 + 4);
          if (v25)
          {
            if (v22[v18 + 4 + v23 + v25] == 1)
            {
              v20 |= 1 << v19;
            }
          }
        }

        ++v19;
        v18 += 4;
      }

      while (v21 != v18);
    }

    else
    {
      v20 = 0;
    }

    *(a7 + 40) = v20;
    if (v13 < 0x15)
    {
      LODWORD(v26) = 0;
    }

    else
    {
      v26 = v12[10];
      if (v26)
      {
        LODWORD(v26) = *(a1 + v26) & 1;
      }
    }
  }

  *(a7 + 96) = *(a7 + 96) & 0xFFFFFFFE | v26;
  v27 = (a1 - *a1);
  if (*v27 >= 0xFu && (v28 = v27[7]) != 0)
  {
    v29 = 8 * (*(a1 + v28) & 0xF);
  }

  else
  {
    v29 = 8;
  }

  v30 = *(a7 + 56) & 0xFFFFFF87 | v29;
  *(a7 + 56) = v30;
  v31 = (a1 - *a1);
  if (*v31 < 0x1Bu)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    v32 = v31[13];
    if (v32)
    {
      LODWORD(v32) = *(a1 + v32) != 0;
    }
  }

  *(a7 + 56) = v32 | v30 & 0xFFFFFFFE;
  v33 = (a1 - *a1);
  if (*v33 < 0x17u)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = v33[11];
    if (v34)
    {
      LODWORD(v34) = (*(a1 + v34) != 0) << 9;
    }
  }

  v35 = *(a7 + 52) & 0xFFFFFDFF | v34;
  *(a7 + 52) = v35;
  v36 = (a1 - *a1);
  if (*v36 < 7u)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v37 = v36[3];
    if (v37)
    {
      LODWORD(v37) = *(a1 + v37);
    }
  }

  *(a7 + 60) = v37;
  v38 = (a1 - *a1);
  if (*v38 < 9u)
  {
    LODWORD(v39) = 0;
  }

  else
  {
    v39 = v38[4];
    if (v39)
    {
      LODWORD(v39) = *(a1 + v39);
    }
  }

  *(a7 + 64) = v39;
  *(a7 + 52) = v35 & 0xFFFFFF7F;
  if (a4)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v40 = dispatch_data_create_map(a4, &buffer_ptr, &size_ptr);
    std::string::append((a7 + 72), buffer_ptr, size_ptr);
    dispatch_release(v40);
  }

  if (a7 + 104 != a5)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 104), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 5);
  }

  if (a7 + 128 != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 128), *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 5);
  }

  result = vand_s8(*(a7 + 52), 0xFFFFFC7F8BFFFEFFLL);
  *(a7 + 52) = result;
  return result;
}

uint64_t AGX::ObjectProgramKey::ObjectProgramKey(uint64_t a1, NSObject *a2, void *a3, void *a4, int a5, int a6)
{
  *(a1 + 8) = 9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A23F7B50;
  *(a1 + 72) = 0u;
  v12 = (a1 + 72);
  *(a1 + 40) = 0u;
  v13 = (a1 + 104);
  *(a1 + 56) = 0u;
  *(a1 + 84) = 0u;
  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl((a1 + 104), 0);
  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl((a1 + 128), 0);
  if (a5)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  if (a6)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 56) = v15 | v14 | *(a1 + 56) & 0xFFFFFFF9;
  *a1 = &unk_2A23F7BD8;
  *(a1 + 152) = 0;
  if (a2)
  {
    __s = 0;
    size_ptr = 0;
    v16 = dispatch_data_create_map(a2, &__s, &size_ptr);
    std::string::append(v12, __s, size_ptr);
    dispatch_release(v16);
  }

  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(&__s, a4);
  if (v13 != &__s)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v13, __s, v19, (v19 - __s) >> 5);
  }

  if (__s)
  {
    v19 = __s;
    operator delete(__s);
  }

  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(&__s, a3);
  if ((a1 + 128) != &__s)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a1 + 128), __s, v19, (v19 - __s) >> 5);
  }

  if (__s)
  {
    v19 = __s;
    operator delete(__s);
  }

  return a1;
}

void sub_29CC8AAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ObjectProgramKey::~ObjectProgramKey(v10);
  _Unwind_Resume(a1);
}

void sub_29CC8AAF8(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v6;
    operator delete(v6);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v4;
  v7 = *(v1 + 16);
  if (v7)
  {
    *(v1 + 24) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void AGX::ObjectProgramKey::~ObjectProgramKey(AGX::ObjectProgramKey *this)
{
  *this = &unk_2A23F7B50;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_2A23F7B98;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

void ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::serialize(uint64_t a1, void *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v13 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v13);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFD7)
  {
    v9 = begin + v8 + 40;
    *(a1 + 24) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0xAuLL);
    begin = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x3D;
  v11 = *(a1 + 40);
  *(v10 + 20) = *(a1 + 56);
  *(v10 + 4) = v11;
  (*(*a1 + 48))(a1);
  v14 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v14);
  v12 = *(a1 + 16);
  *a2 = v12;
  *a3 = *(a1 + 24) - v12;
}

char *AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, *a2, *(a2 + 8));
  }

  else
  {
    v61 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
  }

  v63 = *(a2 + 48);
  AGX::VertexProgramKey::VertexProgramKey(a7, &v61, 0, 0, 0, 0);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v61.__r_.__value_.__l.__data_);
    if (a1)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (a1)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (atomic_load_explicit(&AGX::defaultVertexDescriptor(void)::once, memory_order_acquire) != -1)
  {
    buffer_ptr = &v64;
    size_ptr = &buffer_ptr;
    std::__call_once(&AGX::defaultVertexDescriptor(void)::once, &size_ptr, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultVertexDescriptor(void)::$_0 &&>>);
  }

  a1 = AGX::defaultVertexDescriptor(void)::_desc;
LABEL_16:
  v14 = *(a7 + 56) | 0xFFLL;
  *(a7 + 56) = v14;
  *(a7 + 48) = 0;
  v15 = (a1 - *a1);
  if (*v15 < 0x15u)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15[10];
    if (v16)
    {
      v16 = (*(a1 + v16) & 3) << 10;
    }
  }

  v17 = v16 | v14 & 0xFFFFFFFFFFFFF3FFLL;
  *(a7 + 56) = v17;
  v18 = (a1 - *a1);
  if (*v18 < 0x19u)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[12];
    if (v19)
    {
      v19 = (*(a1 + v19) & 3) << 8;
    }
  }

  v20 = v19 | v17 & 0xFFFFFFFFFFFFFCFFLL;
  *(a7 + 56) = v20;
  v21 = (a1 - *a1);
  v22 = *v21;
  if (v22 <= 0x1E)
  {
    LODWORD(v35) = 0;
    *(a7 + 40) = 0;
  }

  else
  {
    v23 = v21[15];
    if (v21[15] && (v24 = *(a1 + v23), v25 = (a1 + v23 + v24), (v26 = *v25) != 0))
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v26 >= 0x1F)
      {
        v26 = 31;
      }

      v30 = 4 * v26;
      v31 = a1 + v23 + v24;
      do
      {
        v32 = *&v31[v27 + 4];
        v33 = &v31[v27 + v32 - *(&v25[v27 / 4 + 1] + v32)];
        if (*(v33 + 2) >= 5u)
        {
          v34 = *(v33 + 4);
          if (v34)
          {
            if (v31[v27 + 4 + v32 + v34] == 1)
            {
              v29 |= 1 << v28;
            }
          }
        }

        ++v28;
        v27 += 4;
      }

      while (v30 != v27);
    }

    else
    {
      v29 = 0;
    }

    *(a7 + 40) = v29;
    if (v22 < 0x21)
    {
      LODWORD(v35) = 0;
    }

    else
    {
      v35 = v21[16];
      if (v35)
      {
        LODWORD(v35) = *(a1 + v35) & 1;
      }
    }
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFE | v35;
  v36 = (a1 - *a1);
  if (*v36 < 0x1Du)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36[14];
    if (v37)
    {
      v37 = (*(a1 + v37) & 3) << 12;
    }
  }

  v38 = v37 | v20 & 0xFFFFFFFFFFFFCFFFLL;
  *(a7 + 56) = v38;
  v39 = (a1 - *a1);
  if (*v39 >= 0x1Bu && (v40 = v39[13]) != 0)
  {
    v41 = (*(a1 + v40) & 0xFLL) << 14;
  }

  else
  {
    v41 = 0x4000;
  }

  v42 = v41 | v38 & 0xFFFFFFFFFFFC3FFFLL;
  *(a7 + 56) = v42;
  v43 = (a1 - *a1);
  if (*v43 < 0x2Bu)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43[21];
    if (v44)
    {
      v44 = (*(a1 + v44) != 0) << 19;
    }
  }

  v45 = v44 | v42 & 0xFFFFFFFFFFF7FFFFLL;
  *(a7 + 56) = v45;
  v46 = (a1 - *a1);
  v47 = *v46;
  if (v47 < 9)
  {
    goto LABEL_61;
  }

  if (!v46[4])
  {
    if (v47 >= 0xB)
    {
      goto LABEL_59;
    }

LABEL_61:
    v48 = 0;
    goto LABEL_62;
  }

  v48 = 0;
  if (v47 >= 0xB && *(a1 + v46[4]))
  {
LABEL_59:
    v49 = v46[5];
    if (v49)
    {
      v48 = (*(a1 + v49) == 1) << 20;
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_62:
  v50 = v48 | v45 & 0xFFFFFFFFFFEFFFFFLL;
  *(a7 + 56) = v50;
  v51 = (a1 - *a1);
  if (*v51 < 0x11u)
  {
    v52 = 0;
  }

  else
  {
    v52 = v51[8];
    if (v52)
    {
      v52 = (*(a1 + v52) & 1) << 22;
    }
  }

  v53 = v52 | v50 & 0xFFFFFFFFFFBFFFFFLL;
  *(a7 + 56) = v53;
  v54 = (a1 - *a1);
  if (*v54 < 0x23u)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54[17];
    if (v55)
    {
      v55 = (*(a1 + v55) != 0) << 25;
    }
  }

  *(a7 + 56) = v55 | v53 & 0xFFFFFFFFFDFFFFFFLL;
  v56 = (a1 - *a1);
  if (*v56 < 0x23u)
  {
    LODWORD(v57) = 0;
  }

  else
  {
    v57 = v56[17];
    if (v57)
    {
      LODWORD(v57) = (*(a1 + v57) != 0) << 9;
    }
  }

  *(a7 + 52) = *(a7 + 52) & 0xFFFFFD7F | v57;
  if (a3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v58 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
    std::string::append((a7 + 64), buffer_ptr, size_ptr);
    dispatch_release(v58);
  }

  if (a7 + 96 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 5);
  }

  result = (a7 + 120);
  if (a7 + 120 != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 5);
  }

  if (a6)
  {
    v60 = 2;
  }

  else
  {
    v60 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v60;
  *(a7 + 52) &= 0x8BFFFEFF;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

uint64_t AGX::VertexProgramKey::VertexProgramKey(uint64_t a1, uint64_t a2, NSObject *a3, void *a4, void *a5, int a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 8));
  }

  else
  {
    v18 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v19 = *(a2 + 24);
  }

  v20 = *(a2 + 48);
  v12 = v20;
  *(a1 + 8) = 3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A23F7A80;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl((a1 + 96), 0);
  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl((a1 + 120), 0);
  *(a1 + 144) = v18;
  *(a1 + 168) = v19;
  *(a1 + 192) = v12;
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFFFFFFBFFFFLL | ((v12 & 1) << 18);
  *a1 = &unk_2A23F7B08;
  if (a3)
  {
    buffer_ptr = 0;
    size_ptr = 0;
    v13 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
    std::string::append((a1 + 64), buffer_ptr, size_ptr);
    dispatch_release(v13);
  }

  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(&buffer_ptr, a5);
  if ((a1 + 96) != &buffer_ptr)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a1 + 96), buffer_ptr, v17, (v17 - buffer_ptr) >> 5);
  }

  if (buffer_ptr)
  {
    v17 = buffer_ptr;
    operator delete(buffer_ptr);
  }

  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(&buffer_ptr, a4);
  if ((a1 + 120) != &buffer_ptr)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a1 + 120), buffer_ptr, v17, (v17 - buffer_ptr) >> 5);
  }

  if (buffer_ptr)
  {
    v17 = buffer_ptr;
    operator delete(buffer_ptr);
  }

  if (a6)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 88) = *(a1 + 88) & 0xFFFFFFFD | v14;
  return a1;
}

void sub_29CC8B570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::VertexProgramKey::~VertexProgramKey(v11);
  _Unwind_Resume(a1);
}

void sub_29CC8B5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v9 = *v6;
  if (*v6)
  {
    *(v5 + 104) = v9;
    operator delete(v9);
  }

  if (*(v5 + 87) < 0)
  {
    operator delete(*(v5 + 64));
  }

  *v5 = v7;
  v10 = *(v5 + 16);
  if (v10)
  {
    *(v5 + 24) = v10;
    operator delete(v10);
  }

  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(va);
  _Unwind_Resume(a1);
}

void AGX::VertexProgramKey::~VertexProgramKey(void **this)
{
  *this = &unk_2A23FA6F8;
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
    if ((*(this + 167) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 167) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[18]);
LABEL_3:
  *this = &unk_2A23F7A80;
  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    this[13] = v3;
    operator delete(v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_2A23F7AC8;
  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }
}

void ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::serialize(uint64_t a1, void *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v13 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v13);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFDFLL)
  {
    v9 = begin + v8 + 32;
    *(a1 + 24) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 8uLL);
    begin = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x3C;
  v11 = *(a1 + 40);
  *(v10 + 20) = *(a1 + 56);
  *(v10 + 4) = v11;
  (*(*a1 + 48))(a1);
  v14 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v14);
  v12 = *(a1 + 16);
  *a2 = v12;
  *a3 = *(a1 + 24) - v12;
}

char *AGX::Impl::VertexProgramKey::addToSerializeStream(char *this)
{
  v1 = this;
  v2 = this + 144;
  v3 = this[167];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(this + 19);
    if (!v3)
    {
      goto LABEL_11;
    }

    v2 = *v2;
  }

  else if (!this[167])
  {
    goto LABEL_11;
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  v4 = (this + 16);
  v7 = v6 - v5;
  v8 = (v6 - v5) >> 2;
  v9 = (((v3 + 3) >> 2) + 2) & 0x7FFFFFFFFFFFFFFELL;
  if (v8 >= v8 + v9)
  {
    if (v8 > v8 + v9)
    {
      v6 = v5 + 4 * (v8 + v9);
      *(v1 + 24) = v6;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(v4, v9);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
  }

  *(v5 + v7) = ((v6 - v5) >> 2 << 8) | 0x4B;
  this = memcpy((v5 + v7 + 4), v2, v3);
LABEL_11:
  v10 = (v1 + 168);
  v11 = *(v1 + 191);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = *(v1 + 176);
    if (!v11)
    {
      return this;
    }

    v10 = *v10;
  }

  else if (!*(v1 + 191))
  {
    return this;
  }

  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v13 - v12;
  v15 = (v13 - v12) >> 2;
  v16 = (((v11 + 3) >> 2) + 2) & 0x7FFFFFFFFFFFFFFELL;
  if (v15 >= v15 + v16)
  {
    if (v15 > v15 + v16)
    {
      v13 = v12 + 4 * (v15 + v16);
      *(v1 + 24) = v13;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((v1 + 16), v16);
    v12 = *(v1 + 16);
    v13 = *(v1 + 24);
  }

  *(v12 + v14) = ((v13 - v12) >> 2 << 8) | 0x4C;

  return memcpy((v12 + v14 + 4), v10, v11);
}

id __copy_helper_block_e8_88c83_ZTS19RetainedObjCPointerIP7NSArrayIPU28objcproto17MTLDynamicLibrary11objc_objectEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

unint64_t AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionPipelineSets<true>(void *a1, void *a2, uint64_t *a3, void *a4, int a5)
{
  v21 = a2;
  v20 = a5;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = [a2 requiresRaytracingEmulation];
  if ((result & 1) == 0)
  {
    v9 = (a3[1] - *a3) >> 3;
    if (v9 > (a1[2] - *a1) >> 4)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = *a3;
    v18[0] = &v19;
    v18[1] = a1;
    v18[2] = &v21;
    v18[3] = &v20;
    v19 = v10;
    v11 = [a4 functions];
    [a4 functionResourceIndices];
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionPipelineSets<true>(AGXG18PFamilyDevice *,std::vector<AGX::HAL300::IntersectionProgramVariantSet *> const&,MTLLinkedFunctions *,unsigned int)::{lambda(NSArray<objc_object  {objcproto11MTLFunction}*> *,unsigned long long *)#1}::operator()(v18, v11);
    v12 = [a4 privateFunctions];
    [a4 privateFunctionResourceIndices];
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionPipelineSets<true>(AGXG18PFamilyDevice *,std::vector<AGX::HAL300::IntersectionProgramVariantSet *> const&,MTLLinkedFunctions *,unsigned int)::{lambda(NSArray<objc_object  {objcproto11MTLFunction}*> *,unsigned long long *)#1}::operator()(v18, v12);
    for (i = 0; ; ++i)
    {
      result = [objc_msgSend(a4 "binaryFunctions")];
      if (i >= result)
      {
        break;
      }

      v14 = [objc_msgSend(a4 "binaryFunctions")];
      if ([v14 functionType] == 6)
      {
        v15 = [v14 vendorPrivate];
        if ([a4 binaryFunctionResourceIndices])
        {
          [a4 binaryFunctionResourceIndices];
        }

        AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getOrCreatePipelineSet(&v17, v15 + 8);
        std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::push_back[abi:nn200100](a1, &v17);
        v16 = *(&v17 + 1);
        if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }
      }
    }
  }

  return result;
}

void **std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

id AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createPerformanceStatisticsDictionary(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v46 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 13) - *(a1 + 12);
  if (v6)
  {
    v44 = a3;
    v45 = a2;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v8 = (MEMORY[0x2A1C7C4A8])();
    v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x2A1C7C4A8](v8);
    v12 = &v43 - v11;
    v13 = 0;
    v14 = 0;
    if (v7 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v7;
    }

    do
    {
      *&v12[8 * v14] = [MEMORY[0x29EDBA0F8] stringWithCString:?];
      *&v10[8 * v14] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(*(a1 + 15) + 4 * v14)];
      ++v14;
      v13 += 24;
    }

    while (v15 != v14);
    v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v12 count:v7];
    v3 = v44;
    v4 = v45;
  }

  else
  {
    v16 = [MEMORY[0x29EDB8DC0] dictionary];
  }

  v17 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  LODWORD(v18) = a1[2];
  v19 = [MEMORY[0x29EDBA070] numberWithFloat:v18];
  [v17 setObject:v19 forKey:*MEMORY[0x29EDBB3F8]];
  v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*a1];
  [v17 setObject:v20 forKey:*MEMORY[0x29EDBB458]];
  v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[1]];
  [v17 setObject:v21 forKey:*MEMORY[0x29EDBB448]];
  v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[3]];
  [v17 setObject:v22 forKey:*MEMORY[0x29EDBB498]];
  v23 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[4]];
  [v17 setObject:v23 forKey:*MEMORY[0x29EDBB3E8]];
  v24 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[5]];
  [v17 setObject:v24 forKey:*MEMORY[0x29EDBB478]];
  v25 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[6]];
  [v17 setObject:v25 forKey:*MEMORY[0x29EDBB480]];
  v26 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[7]];
  [v17 setObject:v26 forKey:*MEMORY[0x29EDBB490]];
  v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[8]];
  [v17 setObject:v27 forKey:*MEMORY[0x29EDBB408]];
  v28 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[9]];
  [v17 setObject:v28 forKey:*MEMORY[0x29EDBB410]];
  v29 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[10]];
  [v17 setObject:v29 forKey:*MEMORY[0x29EDBB418]];
  v30 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[11]];
  [v17 setObject:v30 forKey:*MEMORY[0x29EDBB3F0]];
  v31 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[12]];
  [v17 setObject:v31 forKey:*MEMORY[0x29EDBB460]];
  v32 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[13]];
  [v17 setObject:v32 forKey:*MEMORY[0x29EDBB468]];
  v33 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[19]];
  [v17 setObject:v33 forKey:*MEMORY[0x29EDBB450]];
  v34 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[20]];
  [v17 setObject:v34 forKey:*MEMORY[0x29EDBB470]];
  v35 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[14]];
  [v17 setObject:v35 forKey:*MEMORY[0x29EDBB4A8]];
  v36 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[21]];
  [v17 setObject:v36 forKey:*MEMORY[0x29EDBB488]];
  v37 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[15]];
  [v17 setObject:v37 forKey:*MEMORY[0x29EDBB420]];
  v38 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[16]];
  [v17 setObject:v38 forKey:*MEMORY[0x29EDBB428]];
  v39 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[17]];
  [v17 setObject:v39 forKey:*MEMORY[0x29EDBB438]];
  v40 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1[18]];
  [v17 setObject:v40 forKey:*MEMORY[0x29EDBB440]];
  v41 = a1 + 36;
  if ((*(a1 + 167) & 0x80000000) == 0)
  {
    if (!*(a1 + 167))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*(a1 + 19))
  {
    v41 = *v41;
LABEL_13:
    [v17 setObject:objc_msgSend(MEMORY[0x29EDBA0F8] forKey:{"stringWithCString:", v41), @"Remarks"}];
  }

LABEL_14:
  [v17 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", a1[22]), @"Constant calculation temporary register count"}];
  [v17 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", *(a1 + 92)), @"Constant calculation phase present"}];
  [v17 setObject:v3 forKey:v4];
  [v17 setObject:v16 forKey:@"Telemetry Statistics"];
  return v17;
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setConstantSamplerIdentifiersOnReflection<MTLRenderPipelineReflection>(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  if (a1 && a2)
  {
    v5 = a3;
    if (a3)
    {
      operator new();
    }

    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [a4 setConstantSamplerDescriptorsFromBitmasks:0 stride:16 count:{v5, a4}];
    [a4 setConstantSamplerUniqueIdentifiers:v6];
  }
}

void sub_29CC8C498(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v1;
    *v1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x29ED520D0](v1, 0x10A0C408EF24B1CLL);
    return v2;
  }

  return result;
}

unint64_t AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionPipelineSets<true>(AGXG18PFamilyDevice *,std::vector<AGX::HAL300::IntersectionProgramVariantSet *> const&,MTLLinkedFunctions *,unsigned int)::{lambda(NSArray<objc_object  {objcproto11MTLFunction}*> *,unsigned long long *)#1}::operator()(void **a1, void *a2)
{
  result = [a2 count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      if ([objc_msgSend(a2 objectAtIndexedSubscript:{i), "functionType"}] == 6)
      {
        **a1 += 8;
        operator new();
      }

      result = [a2 count];
    }
  }

  return result;
}

void sub_29CC8C6C4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = v10 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v14, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  a1[1] = v5;
}

uint64_t AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(AGXG18PFamilyDevice *,objc_object  {objcproto11MTLFunction}*,MTLLinkedFunctions *,NSArray<objc_object  {objcproto17MTLDynamicLibrary}*> *,NSError **)const::{lambda(MTLLinkedFunctions **<objc_object  {objcproto11MTLFunction}>)#1}::operator()(void ***a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *a1;
        v9 = [*(*a1)[2] loadDynamicLibrariesForFunction:*(*(&v11 + 1) + 8 * v7) insertLibraries:***a1 error:*(*a1)[1]];
        if ([v9 count])
        {
          v10 = 0;
          do
          {
            if (([*v8[3] containsObject:{objc_msgSend(v9, "objectAtIndexedSubscript:", v10)}] & 1) == 0)
            {
              [*v8[3] addObject:{objc_msgSend(v9, "objectAtIndexedSubscript:", v10)}];
            }

            ++v10;
          }

          while ([v9 count] > v10);
        }

        ++v7;
      }

      while (v7 != v5);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

id AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline_impl(uint64_t a1, void *a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6, void **a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = mach_absolute_time();
  if (_MTLCompilePerformanceStatisticsEnabled())
  {
    v17 = a5 | 0x400000;
  }

  else
  {
    v17 = a5;
  }

  if (!a7)
  {
    if (a2)
    {
      v48 = 0;
      if ([a2 validateWithDevice:a3 error:&v48])
      {
        goto LABEL_10;
      }

      v33 = [v48 localizedDescription];
      if (a10)
      {
        v32 = v33;
        v30 = MEMORY[0x29EDB8DC0];
        v31 = *MEMORY[0x29EDB9ED8];
        goto LABEL_27;
      }
    }

    else if (a10)
    {
      v30 = MEMORY[0x29EDB8DC0];
      v31 = *MEMORY[0x29EDB9ED8];
      v32 = @"pipeline descriptor is nil";
LABEL_27:
      v34 = [v30 dictionaryWithObject:v32 forKey:v31];
      v35 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v34];
      (*(a10 + 16))(a10, 0, 0, v35);
    }

    return 0;
  }

  *a7 = 0;
  if (!a2)
  {
    v19 = MEMORY[0x29EDB8DC0];
    v20 = *MEMORY[0x29EDB9ED8];
    v18 = @"pipeline descriptor is nil";
    goto LABEL_19;
  }

  v48 = 0;
  if (![a2 validateWithDevice:a3 error:&v48])
  {
    v18 = [v48 localizedDescription];
    v19 = MEMORY[0x29EDB8DC0];
    v20 = *MEMORY[0x29EDB9ED8];
LABEL_19:
    v26 = [v19 dictionaryWithObject:v18 forKey:v20];
    v27 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v26];
    if (a10)
    {
      v28 = v27;
      (*(a10 + 16))(a10, 0, 0, v27);

      v27 = *a7;
    }

    else
    {
      *a7 = v27;
    }

    v29 = v27;
    return 0;
  }

LABEL_10:
  v38 = a8;
  if (a10)
  {
    a2 = [a2 copy];
  }

  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v59, a3, [a2 computeFunction], objc_msgSend(a2, "linkedFunctions"), objc_msgSend(a2, "preloadedLibraries"), a7);
  v21 = v59;
  if (v59)
  {
    v22 = [a2 newSerializedComputeData];
    v23 = [a2 computeFunction];
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v24 = *(a1 + 16);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createComputePipeline_implEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP28MTLComputePipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectSD_SG_E_block_invoke;
    block[3] = &unk_29F3416A0;
    block[4] = v23;
    block[5] = &v55;
    dispatch_sync(v24, block);
    v48 = 0;
    v49 = &v48;
    v50 = 0x3052000000;
    v51 = __Block_byref_object_copy__1933;
    v52 = __Block_byref_object_dispose__1934;
    v53 = 0;
    v37 = v56[3];
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 3321888768;
    v41[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createComputePipeline_implEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP28MTLComputePipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectSD_SG_E_block_invoke_2;
    v41[3] = &unk_2A23F6B38;
    v41[11] = a1;
    v41[4] = a2;
    v41[5] = a3;
    v41[9] = &v48;
    v41[6] = v23;
    v47 = a10 != 0;
    v43 = v17;
    v44 = v16;
    v42 = v21;
    v41[10] = &v55;
    v41[7] = v22;
    v41[8] = a10;
    v45 = a6;
    v46 = a7;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgramVariant(a1, a2, a3, v17, a4, v38, v21, v37, v22, a10 != 0, a9, v41);
    if (v22)
    {
      dispatch_release(v22);
    }

    if (a10)
    {
    }

    v25 = v49[5];

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v55, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_29CC8D188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v38 - 128), 8);

  _Unwind_Resume(a1);
}

AGXG18PFamilyComputeProgram *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createComputePipeline_implEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP28MTLComputePipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectSD_SG_E_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) vendorPrivate];
  v3 = v2;
  if (!v2)
  {
    v3 = objc_alloc_init(AGXG18PFamilyComputeOrFragmentOrTileProgram);
    [*(a1 + 32) setVendorPrivate:v3];

    result = v3->_compute;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = objc_alloc_init(AGXG18PFamilyComputeProgram);
    v3->_compute = result;
    goto LABEL_3;
  }

  result = *(v2 + 8);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*(*(a1 + 40) + 8) + 24) = &result->_impl;
  return result;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createComputePipeline_implEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP28MTLComputePipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectSD_SG_E_block_invoke_2(uint64_t a1, int8x16_t *a2, uint64_t a3, void *a4, unint64_t a5, __CFString *a6)
{
  v240 = *MEMORY[0x29EDCA608];
  v216 = 0;
  v217 = a6;
  v191 = *(a1 + 88);
  v6 = 0x2A179C000uLL;
  v196 = a1;
  if (a2)
  {
    if ([*(a1 + 32) supportIndirectCommandBuffers] && a2[84].i8[12] == 1)
    {
      atomic_store(1u, (*(*(v196 + 40) + 848) + 17020));
    }

    if ([*(v196 + 32) supportIndirectCommandBuffers] && a2[80].i32[2])
    {
      atomic_store(1u, (*(*(v196 + 40) + 848) + 17024));
    }

    *(*(*(v196 + 72) + 8) + 40) = [[AGXG18PFamilyComputePipeline alloc] initWithDevice:*(v196 + 40) pipelineStateDescriptor:*(v196 + 32)];
    v7 = [*(v196 + 32) maxCallStackDepth];
    v8 = *(*(*(v196 + 72) + 8) + 40) + 112;
    *(v8 + 16) = a2;
    *(v8 + 456) = a2[254].i32[0];
    *(v8 + 168) = a2[80].i32[3];
    v9 = a2[81].i32[1];
    *(v8 + 176) = v9;
    v10 = a2[83].i32[0];
    *(v8 + 188) = v10;
    *(v8 + 192) = v7;
    *(v8 + 360) = a2[174].i64[1];
    v11 = a2[81].i32[2] - v9;
    *(v8 + 196) = v11;
    *(v8 + 172) = v9 + v11 * v7;
    v12 = a2[83].i32[1];
    *(v8 + 204) = v12 - v10;
    *(v8 + 184) = v10 + v12 * v7;
    v13 = AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v8 + 220), &a2[73]);
    *(v8 + 340) = a2[80].i32[2];
    *(v8 + 344) = a2[84].i8[10];
    *(v8 + 345) = a2[84].i16[6];
    *(v8 + 348) = a2[84].i8[6];
    *(v8 + 384) = a2[84].i32[0];
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionPipelineSets<true>(buf, *(v196 + 40), a2[37].i64, [*(v196 + 32) linkedFunctions], objc_msgSend(*(v196 + 32), "maxCallStackDepth"));
    v14 = (*(*(*(v196 + 72) + 8) + 40) + 696);
    if (v14 != buf)
    {
      std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::__assign_with_size[abi:nn200100]<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*,std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*>(v14, *buf, *&buf[8], (*&buf[8] - *buf) >> 4);
    }

    v15 = *buf;
    if (*buf)
    {
      v16 = *&buf[8];
      v17 = *buf;
      if (*&buf[8] != *buf)
      {
        do
        {
          v18 = *(v16 - 8);
          if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }

          v16 -= 16;
        }

        while (v16 != v15);
        v17 = *buf;
      }

      *&buf[8] = v15;
      operator delete(v17);
    }

    v19 = *(*(*(v196 + 72) + 8) + 40);
    *(v19 + 136) = [*(v196 + 32) supportIndirectCommandBuffers];
    v20 = [*(v196 + 32) linkedFunctions];
    v21 = [v20 functions];
    v22 = [v20 privateFunctions];
    v23 = [v20 binaryFunctions];
    if ([*(v196 + 48) relocations])
    {
      v24 = [objc_msgSend(*(v196 + 48) "relocations")] != 0;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2[22].i64[1] != a2[23].i64[0] || a2[24].i64[0] != a2[24].i64[1];
    if (v21)
    {
      v25 = 1;
    }

    if (v22)
    {
      v25 = 1;
    }

    if (v23)
    {
      v25 = 1;
    }

    if (v25 || v24)
    {
      v199 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      [v199 addObjectsFromArray:*(v196 + 96)];
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v26 = [v23 countByEnumeratingWithState:&v212 objects:v235 count:16];
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = *v213;
      v28 = 1;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v213 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v212 + 1) + 8 * i);
          if ([v30 vendorPrivate] && (objc_msgSend(v30, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v31 = [v30 vendorPrivate];
            [v31 setRelocations:{objc_msgSend(v30, "relocations")}];
            [v199 addObject:v31];
          }

          else if (![v30 vendorPrivate] || (objc_msgSend(v30, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v28 = 0;
          }
        }

        v26 = [v23 countByEnumeratingWithState:&v212 objects:v235 count:16];
      }

      while (v26);
      if (v28)
      {
LABEL_47:
        v32 = *(*(*(v196 + 72) + 8) + 40);
        [*(v196 + 48) relocations];
        LOBYTE(v231) = 0;
        BYTE8(v232) = 0;
        __p = 0uLL;
        *&v228 = 0;
        v223 = 0uLL;
        *&v224 = 0;
        if (((*(v32 + 704) - *(v32 + 696)) >> 1) <= 0x2AAAAAAAAAAAAA9)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v197 = 0;
    }

    else
    {
      v197 = 1;
    }

    v33 = *(*(*(v196 + 72) + 8) + 40);
    v34 = *(v196 + 32);
    obj = *(v196 + 40);
    v35 = (v33 + 112);
    if ([v34 maxAccelerationStructureTraversalDepth])
    {
      *(v33 + 336) = ([v34 maxAccelerationStructureTraversalDepth] + 7) & 0xFFFFFFF8;
    }

    AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(v33 + 112);
    AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTable(v33 + 112);
    AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(*(v33 + 128));
    v36 = *(v33 + 128);
    if ((*(v36 + 2407) & 5) != 0)
    {
      *(v33 + 137) = 1;
    }

    *(v33 + 224) = obj;
    AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(v36, v33 + 232);
    if (*(v33 + 136) == 1)
    {
      v37 = obj[106];
      AGX::Heap<true>::allocateImpl(buf, v37 + 6832, 112, 0);
      *(v33 + 152) = *buf;
      *(v33 + 168) = *&buf[16];
      *(v33 + 177) = *&buf[25];
      v38 = *(v33 + 160);
      *(v33 + 144) = *(v33 + 152) + 0x1000000000;
      v39 = *(v33 + 128);
      {
        AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
      }

      if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
      {
        v40 = 0x80000;
      }

      else
      {
        v40 = 0;
      }

      *(v38 + 12) = v40;
      *(v38 + 16) = 4;
      *(v38 + 24) = 0x40000000;
      *(v38 + 28) = 0;
      *(v38 + 44) = 0;
      *(v38 + 36) = 0;
      v41 = *(v39 + 3272);
      *(v38 + 12) = v40 & 0xFFFF8007 | (8 * (*(v41 + 324) & 0xFFF));
      *(v38 + 16) = (8 * (*(v41 + 320) & 0x3FFFF)) | 4;
      v42 = *(v39 + 3264);
      memset(buf, 0, 32);
      *&buf[36] = 1;
      *&buf[40] = v42 & 0xFFFFFFFFFFFFLL;
      *&buf[28] = 0x300000008;
      AGXIotoInstruction_B_1::emit(buf, v38);
      *(v38 + 68) = 4 * *(v39 + 3912);
      *(v38 + 72) = (*(v39 + 4084) + 3) >> 2;
      v48 = *(v33 + 232);
      if (v48)
      {
        v48 = *(v48 + 56);
      }

      *(v38 + 88) = v48;
      v49 = *(v33 + 248);
      if (v49)
      {
        v49 = *(v49 + 56);
      }

      *(v38 + 96) = v49;
      v50 = *v35;
      if (*v35)
      {
        v50 = *(v50 + 56);
      }

      *(v38 + 104) = v50;
      *(v38 + 80) = *(v39 + 2796) * (*(v39 + 4068) >> 5);
      *(v38 + 76) = *(v39 + 2792);
      v51 = *(v33 + 128);
      v52 = v51[1021] + 3;
      if ((v52 & 0x3FFFFC) != 0)
      {
        v53 = (v52 << 10) & 0xFFFFF000;
      }

      else
      {
        v53 = 0;
      }

      if (v51[979])
      {
        v54 = 0x8000;
      }

      else
      {
        v55 = v51[1015];
        if (*(v33 + 472))
        {
          v55 += *(v33 + 568) * *(v33 + 472) + (v51[1017] >> 5) * *(v33 + 476);
        }

        if (v55 >= 0x8000)
        {
          v54 = 0x8000;
        }

        else
        {
          v54 = v55;
        }
      }

      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(*(v37 + 16576), *(v33 + 320) + *(v33 + 284), v51[327], *(v33 + 296), v54, v53, 0, v43, v44, v45, v46, v47);
      if (*(v33 + 457) == 1)
      {
        atomic_store(1u, (v37 + 17020));
      }

      if (*(v33 + 452))
      {
        atomic_store(1u, (v37 + 17024));
      }

      AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(buf, (obj[106] + 11808), [v34 resourceIndex]);
      v56 = *(v33 + 200);
      *(v33 + 200) = *buf;
      *buf = v56;
      v57 = *(v33 + 204);
      *(v33 + 204) = *&buf[4];
      *&buf[4] = v57;
      v58 = *(v33 + 208);
      *(v33 + 208) = *&buf[8];
      *&buf[8] = v58;
      v59 = *(v33 + 216);
      *(v33 + 216) = buf[16];
      buf[16] = v59;
      if (*buf && (v59 & 1) == 0)
      {
        os_unfair_lock_lock(v58 + 188);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*&buf[8] + 696, *buf, *buf + *&buf[4] - 1);
        os_unfair_lock_unlock(v58 + 188);
      }

      v60 = *(v33 + 144);
      v61 = *(v33 + 208);
      os_unfair_lock_lock(v61 + 188);
      v62 = *(v33 + 208);
      v63 = *(v33 + 200);
      os_unfair_lock_assert_owner(v62 + 188);
      *(*(*&v62[6 * v62[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *MEMORY[0x29EDC5638] + 24) + 8 * v63) = v60;
      os_unfair_lock_unlock(v61 + 188);
    }

    if (*(v33 + 457) == 1)
    {
      atomic_fetch_or(obj + 108, 0x1000uLL);
    }

    if (*(v33 + 452))
    {
      atomic_fetch_or(obj + 108, 0x200000uLL);
    }

    if ([v33 label])
    {
      {
        {
          v65 = [objc_msgSend(v33 "label")];
          v66 = *(v33 + 128);
          v67 = *(v66 + 2800);
          v68 = *(v66 + 1416);
          v69 = (v66 + 2888);
          if (*(v66 + 2911) < 0)
          {
            v69 = *v69;
          }

          *buf = 136446978;
          *&buf[4] = v65;
          *&buf[12] = 1026;
          *&buf[14] = v67;
          *&buf[18] = 2050;
          *&buf[20] = v68;
          *&buf[28] = 2082;
          *&buf[30] = v69;
          _os_signpost_emit_with_name_impl(&dword_29CA13000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ComputePipelineLabel", "Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s", buf, 0x26u);
        }
      }
    }

    v70 = [v34 linkedFunctions];
    v201 = *(v33 + 128);
    v219 = 0;
    v220 = 0;
    v221 = 0;
    v71 = *(v33 + 696);
    v72 = *(v33 + 704);
    if (v72 != v71)
    {
      if (((v72 - v71) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    prime = vcvtps_u32_f32(([objc_msgSend(v70 "binaryFunctions")] + objc_msgSend(objc_msgSend(v70, "functions"), "count")) / *(v33 + 608));
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v74 = *(v33 + 584);
    if (prime > *&v74)
    {
      goto LABEL_103;
    }

    if (prime < *&v74)
    {
      v75 = vcvtps_u32_f32(*(v33 + 600) / *(v33 + 608));
      if (*&v74 < 3uLL || (v76 = vcnt_s8(v74), v76.i16[0] = vaddlv_u8(v76), v76.u32[0] > 1uLL))
      {
        v75 = std::__next_prime(v75);
      }

      else
      {
        v77 = 1 << -__clz(v75 - 1);
        if (v75 >= 2)
        {
          v75 = v77;
        }
      }

      if (prime <= v75)
      {
        prime = v75;
      }

      if (prime < *&v74)
      {
LABEL_103:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(v33 + 576, prime);
      }
    }

    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v78 = [v70 functions];
    v79 = [v78 countByEnumeratingWithState:&v231 objects:buf count:16];
    v200 = v70;
    if (v79)
    {
      v203 = v78;
      v80 = 0;
      v81 = *v232;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v232 != v81)
          {
            objc_enumerationMutation(v203);
          }

          v236 = *(*(&v231 + 1) + 8 * j);
          v83 = [v236 name];
          v84 = [v83 UTF8String];
          v85 = strlen(v84);
          if (v85 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v86 = v85;
          if (v85 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v238) = v85;
          if (v85)
          {
            memmove(&__dst, v84, v85);
          }

          __dst.i8[v86] = 0;
          v87 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::find<std::string>((v33 + 616), &__dst);
          v88 = v87;
          if (SHIBYTE(v238) < 0)
          {
            operator delete(__dst.i64[0]);
            if (!v88)
            {
LABEL_130:
              *&__p = [v83 UTF8String];
              std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__construct_node<char const*,objc_object  {objcproto11MTLFunction}&>();
            }
          }

          else if (!v87)
          {
            goto LABEL_130;
          }

          v89 = v236;
          if ([v236 functionType] == 6)
          {
            v90 = [obj requiresRaytracingEmulation];
          }

          else
          {
            v90 = 0;
          }

          if (([v89 functionType] == 5) | v90 & 1)
          {
            VisibleFunctionOffset = VisibleFunctionsMap::getVisibleFunctionOffset(v201 + 512, [v83 cStringUsingEncoding:4]);
            if (VisibleFunctionOffset != -1)
            {
              v92 = [v89 functionType];
              if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((v33 + 576), v89))
              {
                __dst.i64[0] = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v92 == 5) name:v83 device:obj handle:VisibleFunctionOffset dylib:0];
                std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((v33 + 576), v89);
              }
            }
          }

          else if ([v89 functionType] == 6 && !std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((v33 + 576), v89))
          {
            v93 = *(v219 + 2 * v80);
            if (*(v93 + 25) == 1)
            {
              v94 = *(v93 + 32) & 0xFFFFFFF | 0x80000000;
              v95 = 1;
            }

            else
            {
              v95 = 0;
              v94 = v80;
            }

            __dst.i64[0] = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v95 name:v83 device:obj handle:v94 dylib:0];
            std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((v33 + 576), v89);
            ++v80;
          }
        }

        v79 = [v203 countByEnumeratingWithState:&v231 objects:buf count:16];
      }

      while (v79);
    }

    else
    {
      v80 = 0;
    }

    __p = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v96 = [v200 privateFunctions];
    v97 = [v96 countByEnumeratingWithState:&__p objects:&__dst count:16];
    if (v97)
    {
      v98 = *v228;
      do
      {
        for (k = 0; k != v97; ++k)
        {
          if (*v228 != v98)
          {
            objc_enumerationMutation(v96);
          }

          if ([*(*(&__p + 1) + 8 * k) functionType] == 6)
          {
            v80 += [obj requiresRaytracingEmulation] ^ 1;
          }
        }

        v97 = [v96 countByEnumeratingWithState:&__p objects:&__dst count:16];
      }

      while (v97);
    }

    v100 = [v200 binaryFunctions];
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    v101 = [v100 countByEnumeratingWithState:&v223 objects:&v236 count:16];
    if (v101)
    {
      v102 = *v224;
      v204 = v100;
      do
      {
        for (m = 0; m != v101; ++m)
        {
          if (*v224 != v102)
          {
            objc_enumerationMutation(v204);
          }

          v104 = *(*(&v223 + 1) + 8 * m);
          *&v218 = v104;
          v105 = [v104 name];
          if ([v104 vendorPrivate] && (objc_msgSend(v104, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(v35 + 58, v104))
            {
              v112 = *(v219 + 2 * v80);
              if (*(v112 + 25) == 1)
              {
                v113 = *(v112 + 32) & 0xFFFFFFF | 0x80000000;
                v114 = 1;
              }

              else
              {
                v114 = 0;
                v113 = v80;
              }

              v222 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v114 name:v105 device:obj handle:v113 dylib:0];
              std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>();
            }
          }

          else
          {
            v106 = [v104 vendorPrivate];
            v107 = v106;
            if (v106)
            {
              v108 = *(v106 + 56);
              v109 = [v104 name];
              v110 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(v108 + 120, [v109 cStringUsingEncoding:4], *(*(v107 + 56) + 744));
              if (v110 != -1)
              {
                v111 = [v104 functionType];
                if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(v35 + 58, v104))
                {
                  v222 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v111 == 5) name:v109 device:obj handle:v110 dylib:v107];
                  std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>();
                }
              }
            }
          }
        }

        v101 = [v204 countByEnumeratingWithState:&v223 objects:&v236 count:16];
      }

      while (v101);
    }

    v115 = v219;
    if (v219)
    {
      v116 = v220;
      if (v220 != v219)
      {
        do
        {
          v117 = *(v116 - 1);
          if (v117 && !atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v117->__on_zero_shared)(v117);
            std::__shared_weak_count::__release_weak(v117);
          }

          v116 -= 16;
        }

        while (v116 != v115);
        v115 = v219;
      }

      operator delete(v115);
    }

    AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(v35, obj[106]);
    a1 = v196;
    v6 = 0x2A179C000uLL;
    if ((v197 & 1) == 0)
    {
      v119 = *(*(*(v196 + 72) + 8) + 40);
      goto LABEL_190;
    }
  }

  v118 = (a1 + 72);
  v119 = *(*(*(a1 + 72) + 8) + 40);
  if (!v119)
  {
LABEL_191:

    *(*(*v118 + 8) + 40) = 0;
    if (!v217)
    {
      v217 = @"Internal error during compute pipeline creation";
    }

    v121 = *(v196 + 64);
    v122 = *(v196 + 128);
    if (v121 | v122)
    {
      if (a5 > 3)
      {
        v123 = 5;
      }

      else
      {
        v123 = qword_29D2F40D8[a5];
      }

      v131 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:? forKey:?];
      v132 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v123 userInfo:v131];
      v133 = v132;
      if (v121)
      {
        (*(v121 + 16))(v121, 0, 0, v132);
      }

      else if (v122)
      {
        *v122 = v132;
      }

      v134 = *(v196 + 128);
      if (v134)
      {
        v135 = *v134;
      }
    }

    goto LABEL_287;
  }

  v120 = 261092;
  if (a2[84].i8[7])
  {
    v120 = 4177472;
  }

  if (v120 < (v119[80] + v119[71]))
  {
    v217 = @"Compute pipeline exceeds available stack space";
    a1 = v196;
LABEL_190:
    v118 = (a1 + 72);
    goto LABEL_191;
  }

  v124 = *(v196 + 104);
  if (v124)
  {
    if (!a4 || (v124 & 0x400000) == 0)
    {
LABEL_226:
      if (!*(v196 + 64) && !*(v196 + 120))
      {
        v136 = 0;
        obja = 0;
        v172 = 0;
LABEL_275:
        if (*(v196 + 107))
        {
          v208[0] = MEMORY[0x29EDCA5F8];
          v208[1] = 3221225472;
          v209 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createComputePipeline_implEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP28MTLComputePipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectSD_SG_E_block_invoke_3;
          v210 = &unk_29F3415E0;
          v211 = *v118;
          if (a2[258].i64[1])
          {
            v183 = [objc_alloc(MEMORY[0x29EDBB598]) initWithData:a2[258].i64[1] linkedDynamicLibraries:v172];
            v209(v208, v183);
          }

          else
          {
            v183 = 0;
            ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createComputePipeline_implEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP28MTLComputePipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectSD_SG_E_block_invoke_3(v208, 0);
          }
        }

        goto LABEL_281;
      }

      v146 = *(*(*(v196 + 80) + 8) + 24);
      os_unfair_lock_lock((v146 + 1144));
      v147 = *(v146 + 1104);
      v148 = *(v146 + 1112);
      v149 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v147, *(v146 + 1112), a3);
      if (!v149)
      {
        if (v148 == 4)
        {
          operator new();
        }

        v150 = &v147[4 * v148];
        v151 = *(a3 + 16);
        *v150 = *a3;
        v150[1] = v151;
        v152 = *(v146 + 1112);
        v153 = *(v146 + 1104) + 24 * v152;
        *(v146 + 1112) = v152 + 1;
        v149 = v153 + 128;
      }

      v154 = *(v149 + 16);
      if (v154)
      {
        dispatch_retain(*(v149 + 16));
      }

      v205 = v154;
      os_unfair_lock_unlock((v146 + 1144));
      obja = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      [obja addObjectsFromArray:*(v196 + 96)];
      v155 = v216;
      if (v216)
      {
        v156 = objc_autoreleasePoolPush();
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZN3AGX13DynamicLoaderINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20DynamicLibraryFilter33newFilteredLinkedDynamicLibrariesEP7NSArrayIPU28objcproto17MTLDynamicLibrary11objc_objectE_block_invoke;
        *&buf[24] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
        *&buf[32] = v155;
        v202 = [obja filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x29EDBA0A8], "predicateWithBlock:", buf)}];
        objc_autoreleasePoolPop(v156);
      }

      else
      {
        v202 = obja;
      }

      if (!v205)
      {
        v136 = 0;
LABEL_274:
        v172 = v202;
        goto LABEL_275;
      }

      v157 = objc_alloc(MEMORY[0x29EDBB578]);
      v158 = *(v196 + 56);
      v159 = [*(v196 + 48) device];
      v160 = *(*(*(*(v196 + 72) + 8) + 40) + 128);
      v161 = (*(*(*(*(v196 + 72) + 8) + 40) + 320) + *(*(*(*(v196 + 72) + 8) + 40) + 284) != 0) | (16 * (*(v160 + 1308) != 0));
      v162 = 2;
      if (!*(v160 + 4073))
      {
        v162 = 0;
      }

      v163 = 4;
      if (!*(v160 + 4076))
      {
        v163 = 0;
      }

      v164 = v162 | v163;
      v165 = *(v160 + 4077) == 0;
      v166 = 8;
      if (v165)
      {
        v166 = 0;
      }

      v136 = [v157 initWithSerializedData:v205 dynamicLibraries:v202 serializedStageInputDescriptor:v158 device:v159 options:*(v196 + 104) | 3 flags:v161 | v164 | v166];
      v167 = *(v196 + 104);
      if ((v167 & 0x40000) == 0)
      {
LABEL_266:
        if (a2)
        {
          if ((v167 & 0x200000) != 0)
          {
            v179 = a2[132].i64[1];
            if (v179)
            {
              if (a2[134].i64[0])
              {
                v180 = a2[133].i64[0] - v179;
                v181 = (v180 >> 4);
                if ((v180 & 0xFFFFFFFF0) != 0)
                {
                  operator new();
                }

                v182 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
                [v136 setConstantSamplerDescriptorsFromBitmasks:0 stride:16 count:v181];
                [v136 setConstantSamplerUniqueIdentifiers:v182];

                v6 = 0x2A179C000uLL;
              }
            }
          }
        }

        [*(*(*v118 + 8) + 40) setReflectionData:v205];
        dispatch_release(v205);
        goto LABEL_274;
      }

      v168 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:35];
      v169 = a2[150];
      *buf = v169;
      v170 = v169.u64[1];
      if (v169.i64[0])
      {
        __src = v136;
        if (v169.i64[1])
        {
          v171 = 127;
        }

        else
        {
          v170 = v169.i64[0];
          v171 = 63;
        }
      }

      else
      {
        if (!v169.i64[1])
        {
LABEL_262:
          PerformanceStatisticsDictionary = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createPerformanceStatisticsDictionary(&a2[139], @"ComputeBufferPrefetch", v168);
          v178 = PerformanceStatisticsDictionary;
          if (a4 && PerformanceStatisticsDictionary)
          {
            [PerformanceStatisticsDictionary setObject:a4 forKey:*MEMORY[0x29EDBB400]];
          }

          [v136 setPerformanceStatistics:v178];

          v167 = *(v196 + 104);
          goto LABEL_266;
        }

        __src = v136;
        v171 = 127;
      }

      v173 = 0;
      v174 = (v171 ^ __clz(v170)) + 1;
      __dst = vorrq_s8(a2[131], vbicq_s8(v169, a2[152]));
      do
      {
        v175 = v173 > 0x3F;
        if ((*(buf | (8 * v175)) & (1 << v173)) != 0)
        {
          if ((*(&__dst | (8 * v175)) & (1 << v173)) != 0)
          {
            v176 = @"promoted";
          }

          else
          {
            v176 = @"not promoted";
          }
        }

        else
        {
          v176 = @"unused";
        }

        [v168 addObject:v176];
        ++v173;
      }

      while (v174 != v173);
      v6 = 0x2A179C000;
      v136 = __src;
      goto LABEL_262;
    }

    if ((*(v196 + 136) & 1) == 0)
    {
      v125 = mach_absolute_time() - *(v196 + 112);
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      v126 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v125 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0];
      [a4 setObject:v126 forKey:*MEMORY[0x29EDBB3B0]];
    }

    v127 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:35];
    v128 = a2[150];
    *buf = v128;
    v129 = v128.u64[1];
    if (v128.i64[0])
    {
      if (v128.i64[1])
      {
        v130 = 127;
      }

      else
      {
        v129 = v128.i64[0];
        v130 = 63;
      }
    }

    else
    {
      if (!v128.i64[1])
      {
LABEL_225:
        v141 = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createPerformanceStatisticsDictionary(&a2[139], @"ComputeBufferPrefetch", v127);
        v142 = MEMORY[0x29EDBB448];
        v143 = [v141 objectForKey:*MEMORY[0x29EDBB448]];
        v144 = MEMORY[0x29EDBB458];
        v145 = [v141 objectForKey:*MEMORY[0x29EDBB458]];
        [a4 setObject:v143 forKey:*v142];
        [a4 setObject:v145 forKey:*v144];

        _MTLAddCompilePipelinePerformanceStatistics();
        goto LABEL_226;
      }

      v130 = 127;
    }

    v137 = 0;
    v138 = (v130 ^ __clz(v129)) + 1;
    __dst = vorrq_s8(a2[131], vbicq_s8(v128, a2[152]));
    do
    {
      v139 = v137 > 0x3F;
      if ((*(buf | (8 * v139)) & (1 << v137)) != 0)
      {
        if ((*(&__dst | (8 * v139)) & (1 << v137)) != 0)
        {
          v140 = @"promoted";
        }

        else
        {
          v140 = @"not promoted";
        }
      }

      else
      {
        v140 = @"unused";
      }

      [v127 addObject:v140];
      ++v137;
    }

    while (v138 != v137);
    v6 = 0x2A179C000uLL;
    goto LABEL_225;
  }

  v136 = 0;
LABEL_281:
  if ([*(v196 + 32) supportIndirectCommandBuffers])
  {
    v184.n128_f64[0] = AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v191 + 268), (*(*(*v118 + 8) + 40) + *(v6 + 1248) + 220));
  }

  v185 = *(v196 + 64);
  if (v185)
  {
    (*(v185 + 16))(v185, *(*(*v118 + 8) + 40), v136, 0, v184);

    *(*(*v118 + 8) + 40) = 0;
  }

  else if (*(v196 + 120))
  {
    v186 = v136;
    **(v196 + 120) = v136;
  }

LABEL_287:
  v187 = v216;
  if (v216)
  {
    v188 = *(v216 + 16);
    if (v188)
    {
      do
      {
        v189 = *v188;
        operator delete(v188);
        v188 = v189;
      }

      while (v189);
    }

    v190 = *v187;
    *v187 = 0;
    if (v190)
    {
      operator delete(v190);
    }

    MEMORY[0x29ED520D0](v187, 0x10A0C408EF24B1CLL);
  }
}

void sub_29CC90094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  os_unfair_lock_unlock(v45 + 286);
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](&a45);
  _Unwind_Resume(a1);
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgramVariant(id **a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, NSObject *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v173 = *MEMORY[0x29EDCA608];
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x3052000000;
  v116[3] = __Block_byref_object_copy__1933;
  v116[4] = __Block_byref_object_dispose__1934;
  v116[5] = 0;
  v16 = [a2 computeFunction];
  {
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLComputePipelineDescriptor>(MTLComputePipelineDescriptor const*)::enable_pipeline_script = 0;
  }

  v93 = a8;
  if (AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLComputePipelineDescriptor>(MTLComputePipelineDescriptor const*)::enable_pipeline_script == 1)
  {
    [a2 newPipelineScript];
    operator new();
  }

  v17 = [a2 linkedFunctions];
  AGX::Impl::ComputeProgramKey::ComputeProgramKey(v105);
  v105[0] = &unk_2A23F7D80;
  v115 = 0;
  if (a9)
  {
    *&buffer_ptr = 0;
    size_ptr[0] = 0;
    map = dispatch_data_create_map(a9, &buffer_ptr, size_ptr);
    std::string::append(&v111, buffer_ptr, size_ptr[0]);
    dispatch_release(map);
  }

  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(&buffer_ptr, a7);
  std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v113, buffer_ptr, *(&buffer_ptr + 1), (*(&buffer_ptr + 1) - buffer_ptr) >> 5);
  if (buffer_ptr)
  {
    *(&buffer_ptr + 1) = buffer_ptr;
    operator delete(buffer_ptr);
  }

  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(&buffer_ptr, v17);
  std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v114, buffer_ptr, *(&buffer_ptr + 1), (*(&buffer_ptr + 1) - buffer_ptr) >> 5);
  if (buffer_ptr)
  {
    *(&buffer_ptr + 1) = buffer_ptr;
    operator delete(buffer_ptr);
  }

  v19 = [a2 driverCompilerOptions];
  v20 = [objc_msgSend(objc_msgSend(a2 "linkedFunctions")];
  v21 = [a2 supportAddingBinaryFunctions];
  if ([objc_msgSend(v19 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v110.i32[0] = v110.i32[0] & 0xFFFFFFFB | v22;
  v23 = [objc_msgSend(v19 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}];
  v110.i32[0] = v110.i32[0] & 0xFC0003FF | (v23 << 10);
  if ([objc_msgSend(v19 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v24 = 0x8000000;
  }

  else
  {
    v24 = 0;
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v21;
  }

  if (v25)
  {
    v26 = 512;
  }

  else
  {
    v26 = 0;
  }

  v110.i32[0] = v24 | v110.i32[0] & 0xF7FFFDFF | v26;
  v27 = [a2 buffers];
  v28 = 0;
  for (i = 0; i != 31; ++i)
  {
    v30 = [objc_msgSend(v27 _descriptorAtIndex:{i), "mutability"}];
    v31 = 1 << i;
    if (v30 != 1)
    {
      v31 = 0;
    }

    v28 |= v31;
  }

  v108 = v28;
  v112 = [a2 supportIndirectCommandBuffers];
  v109 = [a2 maxTotalThreadsPerThreadgroup];
  v32 = [a2 threadGroupSizeIsMultipleOfThreadExecutionWidth];
  v110.i32[1] = v110.i32[1] & 0xFFFFFFFE | v32;
  if ([a2 needsCustomBorderColorSamplers])
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  v110.i32[1] = v110.i32[1] & 0xFFFFFFFD | v33;
  v34 = [a2 textureWriteRoundingMode];
  v35 = 8 * (v34 == 1);
  if (v34 == 2)
  {
    v35 = 16;
  }

  v110.i32[1] = v35 | v110.i32[1] & 0xFFFFFFE7;
  v36 = [objc_msgSend(objc_msgSend(a2 "linkedFunctions")];
  v37 = [a2 supportAddingBinaryFunctions];
  if (v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = v37;
  }

  if (v38)
  {
    v39 = 32;
  }

  else
  {
    v39 = 0;
  }

  v110.i32[1] = v110.i32[1] & 0xFFFFFDDF | v39;
  v110 = vand_s8(v110, 0xFFFFFFFEFFFFFF7FLL);
  [a2 supportIndirectCommandBuffers];
  v40 = a3[106];
  v41 = *(v40 + 16456);
  v42 = (v110.i32[0] & 0x8BFFFEFF | (*(v40 + 16608) << 26) & 0xBFFFFFFF | (((v41 >> 1) & 1) << 30)) ^ 0x40000000;
  v43 = (v41 >> 14) & 0x80 | (v41 >> 8) & 0x40 | v110.i32[1] & 0xFFFFC73B;
  v110 = __PAIR64__(v43, v42);
  v115 = a4 & 0xC0040000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v44 = 1;
    v42 = v110.i32[0];
    v43 = v110.u32[1];
  }

  else
  {
    v44 = 0;
  }

  v110.i32[0] = (a4 >> 21) & 8 | v44 | v42 & 0xFFFFFFF4;
  v110.i32[1] = v43 & 0xFFFFFEFF | (((a4 >> 21) & 1) << 8);
  ReflectionKey::initGPUCompilerSPIOptionsHash(&buffer_ptr, [a2 gpuCompilerSPIOptions]);
  v159 = buffer_ptr;
  v160 = v162;
  os_unfair_lock_lock((v93 + 1144));
  v45 = *(v93 + 1104);
  v46 = *(v93 + 1112);
  v47 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v45, *(v93 + 1112), &v159);
  if (!v47)
  {
    if (v46 == 4)
    {
      operator new();
    }

    v48 = &v45[4 * v46];
    v49 = v160;
    *v48 = v159;
    v48[1] = v49;
    v50 = *(v93 + 1112);
    v51 = *(v93 + 1104) + 24 * v50;
    *(v93 + 1112) = v50 + 1;
    v47 = (v51 + 128);
  }

  v52 = a4 & 0x330000 | 3;
  if ((v52 & ~v47[1]) != 0)
  {
    v53 = *v47 | v52;
    *v47 = v53;
  }

  else
  {
    v53 = 0;
  }

  os_unfair_lock_unlock((v93 + 1144));
  v89 = v53 | a4 & 0xFFFFFFFFFFCCFFFCLL;
  if (a5 || v53 & 0x400000004 | a4 & 0x400000004 || a6)
  {
    operator new();
  }

  os_unfair_lock_lock((v93 + 1144));
  v54 = VectorMap<AGX::ComputeProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>,4u>::operator[](v93, v105);
  if (!*v54)
  {
    v56 = dispatch_group_create();
    *v54 = v56;
LABEL_59:
    dispatch_group_enter(v56);
    os_unfair_lock_unlock((v93 + 1144));
    v57 = [objc_msgSend(a2 "pipelineLibrary")];
    v58 = [a2 pipelineLibrary];
    if ([v58 pipelineCache] && (objc_msgSend(v58, "disableRunTimeCompilation") & 1) != 0 || (v59 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v59)
    {
      LOBYTE(v60) = 1;
    }

    else
    {
      v60 = (a4 >> 34) & 1;
    }

    v87 = v60;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v88 = v54;
    v61 = objc_opt_new();
    [v61 setUseAIRNTInterfaces:*(a1 + 24)];
    [v61 setSync:a10 ^ 1u];
    [v61 setFunction:v16];
    [v61 setFrameworkData:a9];
    [v61 setPipelineCache:v57];
    [v61 setDestinationBinaryArchive:0];
    [v61 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v61 setPipelineOptions:a4 | 3];
    if ((a4 & 0x330003) == 0)
    {
      [v61 setPipelineOptions:{objc_msgSend(v61, "pipelineOptions") | 0x8000}];
    }

    v62 = [a2 newPipelineScript];
    if (v62)
    {
      [v61 setAirScript:v62];
      dispatch_release(v62);
    }

    [v61 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v63 = [a2 linkedFunctions];
    [v61 setVisibleFunctions:{objc_msgSend(v63, "functions")}];
    [v61 setVisibleFunctionGroups:{objc_msgSend(v63, "groups")}];
    [v61 setPrivateVisibleFunctions:{objc_msgSend(v63, "privateFunctions")}];
    LOBYTE(size_ptr[0]) = 0;
    size_ptr[1] = 0;
    *&v98 = 0;
    *&v99 = 0;
    v101 = 0uLL;
    *(&v103 + 1) = 0;
    v64 = [a2 maxCallStackDepth];
    v65 = [a2 linkedFunctions];
    v66 = [a2 supportIndirectCommandBuffers];
    v67 = [a2 supportAddingBinaryFunctions];
    v68 = [a2 gpuCompilerSPIOptions];
    v69 = [a3 requiresRaytracingEmulation];
    BYTE8(v99) = v69;
    *&v100 = v64;
    *(&v100 + 1) = v65;
    *&v102 = a4;
    *(&v102 + 1) = a7;
    *&v103 = a3;
    LOBYTE(v104) = v66;
    BYTE1(v104) = v67;
    *(&v104 + 1) = v68;
    *&v99 = a11;
    v143[0] = MEMORY[0x29EDCA5F8];
    v143[1] = 3321888768;
    v143[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke;
    v143[3] = &unk_2A23F6B70;
    v143[7] = v116;
    v143[4] = v16;
    v156 = a10;
    v143[8] = a1;
    v143[9] = v88;
    AGX::Impl::ComputeProgramKey::ComputeProgramKey(&v144, v105);
    v158 = v160;
    v144 = &unk_2A23F7D80;
    v153 = v115;
    v154 = v93;
    v155 = v89;
    v157 = v159;
    v143[5] = a3;
    v143[6] = a2;
    v95[0] = MEMORY[0x29EDCA5F8];
    v95[1] = 3221225472;
    v95[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2157;
    v95[3] = &unk_29F341608;
    v95[4] = v143;
    v95[5] = v88;
    v96 = v87;
    if ((v69 & 1) == 0 && AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v65))
    {
      v165 = v101;
      v166 = v102;
      v167 = v103;
      v168 = v104;
      buffer_ptr = *size_ptr;
      v162 = v98;
      v163 = v99;
      v164 = v100;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::ComputeProgramKey,true>(a1, v105, v61, &buffer_ptr, v95);
    }

    else
    {
      v117[0] = MEMORY[0x29EDCA5F8];
      v117[1] = 3221225472;
      v117[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileFunction_ImplINS_17ComputeProgramKeyEEEvRKT_P29MTLCompileFunctionRequestDataRKNS5_21DriverRequestDataImplILb1EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplILb1EEEE_block_invoke;
      v117[3] = &unk_29F341710;
      v117[4] = v95;
      v70 = *a1;
      v118[0] = MEMORY[0x29EDCA5F8];
      v118[1] = 3221225472;
      v118[2] = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
      v118[3] = &unk_29F342280;
      v118[4] = v117;
      v71 = v70[3];
      if (v71 && *(v71 + 120) == 1)
      {
        v72 = [objc_msgSend(v61 "binaryArchives")];
        v73 = 0x200000000000;
        if (!v72)
        {
          v73 = 1;
        }

        atomic_fetch_or(v71, v73);
        v74 = v70[3];
        v75 = [v61 destinationBinaryArchive];
        v76 = 0x400000000000;
        if (!v75)
        {
          v76 = 1;
        }

        atomic_fetch_or(v74, v76);
      }

      if ([v61 destinationBinaryArchive])
      {
        {
          AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
        }

        if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
        {
          [v61 setUseAIRNTInterfaces:0];
        }
      }

      buffer = 0;
      size = 0;
      (*(v105[0] + 2))(v105, &buffer, &size);
      v77 = dispatch_data_create(buffer, size, 0, 0);
      [v61 setDriverKeyData:v77];
      if ([v61 airScript])
      {
        v78 = [v61 airScript];
        v169 = 0uLL;
        *&v170 = 0;
        *&v169 = dispatch_data_create_map(v78, &v169 + 1, &v170);
        ProgramKey<(_AGCStreamToken)6,(AGX::DriverShaderCompilationMode)0>::getFunctionId(v105, &buffer_ptr, (*(&v169 + 1) + **(&v169 + 1)));
        dispatch_release(v169);
        v169 = buffer_ptr;
        v170 = v162;
        [v61 setVendorPluginFunctionId:&v169];
      }

      *&buffer_ptr = MEMORY[0x29EDCA5F8];
      *(&buffer_ptr + 1) = 3221225472;
      *&v162 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
      *(&v162 + 1) = &unk_29F3422D0;
      *(&v163 + 1) = v118;
      *&v163 = v61;
      if ([v61 function])
      {
        v79 = mach_absolute_time();
        v80 = *v70;
        *&v169 = MEMORY[0x29EDCA5F8];
        *(&v169 + 1) = 3221225472;
        *&v170 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
        *(&v170 + 1) = &unk_29F342320;
        p_buffer_ptr = &buffer_ptr;
        v172 = v79;
        [v80 compileFunctionRequest:v61 compilerTask:a11 completionHandler:&v169];
      }

      else
      {
        if ([v61 frameworkData] || objc_msgSend(v61, "pipelineOptions"))
        {
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
        }

        *&v169 = MEMORY[0x29EDCA5F8];
        *(&v169 + 1) = 3221225472;
        *&v170 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
        *(&v170 + 1) = &unk_29F3422F8;
        p_buffer_ptr = &buffer_ptr;
        v82 = [objc_msgSend(v61 "binaryArchives")];
        v83 = *v70;
        v84 = [v61 driverKeyData];
        if (v82)
        {
          [v83 compileRequest:v84 binaryArchives:objc_msgSend(v61 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v61 completionHandler:{"pipelineCache"), objc_msgSend(v61, "sync"), &v169}];
        }

        else
        {
          [v83 compileRequest:v84 pipelineCache:objc_msgSend(v61 sync:"pipelineCache") completionHandler:{objc_msgSend(v61, "sync"), &v169}];
        }
      }

      dispatch_release(v77);
    }

    v144 = &unk_2A23FA818;
    if (__p)
    {
      v152 = __p;
      operator delete(__p);
    }

    if (v149)
    {
      v150 = v149;
      operator delete(v149);
    }

    if (v148 < 0)
    {
      operator delete(v147);
    }

    v144 = &unk_2A23F7D40;
    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }

    v54 = v88;
    goto LABEL_108;
  }

  if (*(v54 + 40) == 1)
  {
    v55 = *(v54 + 8);
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    *(v54 + 8) = 0;
    *(v54 + 16) = 0;

    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 40) = 0;
    v56 = *v54;
    goto LABEL_59;
  }

  if ((v53 & 0x330003) != 0)
  {
    dispatch_group_enter(*v54);
  }

  os_unfair_lock_unlock((v93 + 1144));
  if ((v53 & 0x330003) != 0)
  {
    v81 = *a1;
    v140[0] = MEMORY[0x29EDCA5F8];
    v140[1] = 3221225472;
    v140[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2;
    v140[3] = &unk_29F341630;
    v141 = v159;
    v142 = v160;
    v140[5] = v93;
    v140[4] = a3;
    v140[6] = v53 | a4 & 0xFFFFFFFFFFCCFFFCLL;
    v140[7] = v54;
    [*v81 reflectionWithFunction:v16 options:v53 & 0x330003 sync:a10 ^ 1u completionHandler:v140];
  }

LABEL_108:
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3321888768;
  v122 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_3;
  v123 = &unk_2A23F6BA8;
  v126 = v93;
  v127 = v54;
  AGX::Impl::ComputeProgramKey::ComputeProgramKey(&v128, v105);
  v138 = v159;
  v128 = &unk_2A23F7D80;
  v137 = v115;
  v139 = v160;
  v124 = a12;
  v125 = v116;
  v85 = *v54;
  if (a10)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v85, global_queue, block);
  }

  else
  {
    dispatch_group_wait(v85, 0xFFFFFFFFFFFFFFFFLL);
    v122(block);
  }

  v128 = &unk_2A23FA818;
  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v132 < 0)
  {
    operator delete(v131);
  }

  v128 = &unk_2A23F7D40;
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  v105[0] = &unk_2A23FA818;
  if (v114[0])
  {
    v114[1] = v114[0];
    operator delete(v114[0]);
  }

  if (v113[0])
  {
    v113[1] = v113[0];
    operator delete(v113[0]);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  v105[0] = &unk_2A23F7D40;
  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  _Block_object_dispose(v116, 8);
}

void sub_29CC91628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v63 = v62;
  os_unfair_lock_unlock(v63 + 286);
  AGX::ComputeProgramKey::~ComputeProgramKey(&a43);
  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, _BYTE *a6)
{
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(MEMORY[0x29EDB8E00]);
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillCompilePerformanceStatisticsDictionary(*a3, *(a3 + 8), *(*(*(a1 + 56) + 8) + 40), *(a3 + 56), [*(a1 + 32) name], *(a1 + 248));
  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    v12 = [v11 objectForKey:*MEMORY[0x29EDBB378]];
    if (v12)
    {
      [v12 unsignedLongLongValue];
    }
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  *a4 = *(a3 + 40);
  *a5 = *(a3 + 48);
  *a6 = 0;
  v13 = *a4;
  if (!*a4)
  {
    v14 = a2 + 33;
    if (a2[33])
    {
      v15 = a2[34] == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = 33;
    if (v15)
    {
      v16 = 103;
      v14 = a2 + 103;
    }

    if (!a2[v16] || !v14[1] || (*a4 = 2, *a5 = @"Internal error during function compilation", *a6 = 1, (v13 = *a4) == 0))
    {
      if (*(a1 + 168) == 1 && (AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::isShaderExecuteIndirectCompatible(a2, 1) & 1) == 0)
      {
        *a4 = 2;
        *a5 = @"Compute function cannot be used with indirect command buffers";
        *a6 = 1;
        v13 = *a4;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  AGX::Program<AGX::HAL300::ComputeProgramVariant,AGX::ComputeProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 232), *(a1 + 240), *(a3 + 16), a1 + 249, v13);
  [*(a1 + 48) needsCustomBorderColorSamplers];
  v17 = [*(a1 + 48) profileControl];
  if (v17)
  {
    v18 = v17;
    [v17 uscCliqueTraceLevel];
    [v18 uscEmitPosition];
    [v18 uscEmitThreadControlFlow];
  }

  if (!*a4)
  {
    operator new();
  }

  return 0;
}

void sub_29CC91E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  if (*(v7 - 137) < 0)
  {
    operator delete(*(v7 - 160));
  }

  MEMORY[0x29ED520D0](v6, 0x10F3C4078B88C53);
  _Unwind_Resume(a1);
}

AGX::Impl::ComputeProgramKey *AGX::Impl::ComputeProgramKey::ComputeProgramKey(AGX::Impl::ComputeProgramKey *this, const AGX::Impl::ComputeProgramKey *a2)
{
  *this = &unk_2A23F7D40;
  *(this + 2) = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *this = &unk_2A23FA818;
  v6 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v6;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v7;
  }

  v8 = *(a2 + 88);
  *(this + 12) = 0;
  *(this + 88) = v8;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v10 = *(a2 + 12);
  v9 = *(a2 + 13);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_14;
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_14:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return this;
}

void sub_29CC9203C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = v2;
  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2157(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (v7 + 592);
  if (v7)
  {
    v9 = v8 == a4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    std::vector<AGX::HAL300::IntersectionProgramVariantSet *>::__assign_with_size[abi:nn200100]<AGX::HAL300::IntersectionProgramVariantSet **,AGX::HAL300::IntersectionProgramVariantSet **>(v8, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  }

  v10 = *(a1 + 40);
  v11 = *(a3 + 32);
  v12 = *(a1 + 48);
  *(v10 + 8) = v7;
  *(v10 + 16) = 0;

  *(v10 + 24) = [0 copy];
  if (*(v10 + 8))
  {

    *(v10 + 32) = v11;
  }

  else
  {
    *(v10 + 40) = v12 & 1;
  }

  dispatch_group_leave(*v10);
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::ComputeProgramKey,true>(void *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, _OWORD *a4, uint64_t a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v8 = a4[3];
  v39 = a4[4];
  v9 = a4[6];
  v40 = a4[5];
  v41 = v9;
  v42 = a4[7];
  v10 = a4[1];
  v35 = *a4;
  v11 = a4[2];
  v36 = v10;
  v37 = v11;
  v30 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_17ComputeProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke;
  v31 = &unk_29F341658;
  v33 = a5;
  v34 = a1;
  v38 = v8;
  v32 = a3;
  if (*a4 == 1)
  {
    v12 = [a3 airScript];
    v50 = 0uLL;
    *&v51 = 0;
    *&v50 = dispatch_data_create_map(v12, &v50 + 1, &v51);
    ProgramKey<(_AGCStreamToken)6,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
    dispatch_release(v50);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCReplyArray>(a4, &v54, &v28);
  }

  else
  {
    v13 = *a1;
    v14 = *(a4 + 4);
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 3221225472;
    v45 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v46 = &unk_29F342280;
    v47 = &v28;
    v15 = *(v13 + 24);
    if (v15 && *(v15 + 120) == 1)
    {
      v16 = [objc_msgSend(a3 binaryArchives];
      v17 = 0x200000000000;
      if (!v16)
      {
        v17 = 1;
      }

      atomic_fetch_or(v15, v17);
      v18 = *(v13 + 24);
      v19 = [a3 destinationBinaryArchive];
      v20 = 0x400000000000;
      if (!v19)
      {
        v20 = 1;
      }

      atomic_fetch_or(v18, v20);
    }

    if ([a3 destinationBinaryArchive])
    {
      {
        AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
      }

      if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
      {
        [a3 setUseAIRNTInterfaces:0];
      }
    }

    v48 = 0;
    v49 = 0;
    ((*a2)[2])(a2, &v49, &v48);
    v21 = dispatch_data_create(v49, v48, 0, 0);
    [a3 setDriverKeyData:v21];
    if ([a3 airScript])
    {
      v22 = [a3 airScript];
      v50 = 0uLL;
      *&v51 = 0;
      *&v50 = dispatch_data_create_map(v22, &v50 + 1, &v51);
      ProgramKey<(_AGCStreamToken)6,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
      dispatch_release(v50);
      v50 = v54;
      v51 = v55;
      [a3 setVendorPluginFunctionId:&v50];
    }

    *&v54 = MEMORY[0x29EDCA5F8];
    *(&v54 + 1) = 3221225472;
    *&v55 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v55 + 1) = &unk_29F3422D0;
    v56 = a3;
    v57 = &v43;
    if ([a3 function])
    {
      v23 = mach_absolute_time();
      v24 = *v13;
      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v51 + 1) = &unk_29F342320;
      v52 = &v54;
      v53 = v23;
      [v24 compileFunctionRequest:a3 compilerTask:v14 completionHandler:&v50];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v51 + 1) = &unk_29F3422F8;
      v52 = &v54;
      v25 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v26 = *v13;
      v27 = [a3 driverKeyData];
      if (v25)
      {
        [v26 compileRequest:v27 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), &v50}];
      }

      else
      {
        [v26 compileRequest:v27 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), &v50}];
      }
    }

    dispatch_release(v21);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::ComputeProgramVariant,AGX::ComputeProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createComputeProgramVariantEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_14ComputeProgramEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_21ComputeProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_3(void *a1)
{
  memset(v11, 0, 26);
  v2 = a1[7];
  if (*(v2 + 41) != 1)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (*(v2 + 8))
  {
    v3 = a1[6];
    os_unfair_lock_lock(v3 + 286);
    v4 = VectorMap<AGX::ComputeProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>,4u>::operator[](v3, (a1 + 8));
    if (*v4)
    {
      os_unfair_lock_unlock(v3 + 286);
      dispatch_group_wait(*v4, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v7 = dispatch_group_create();
      *v4 = v7;
      dispatch_group_enter(v7);
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);
      *(v4 + 8) = *(v2 + 8);
      *(v4 + 16) = v8;

      *(v4 + 24) = [v9 copy];
      if (*(v4 + 8))
      {

        *(v4 + 32) = 0;
      }

      else
      {
        *(v4 + 40) = 0;
      }

      dispatch_group_leave(*v4);
      *(v2 + 8) = 0;
      os_unfair_lock_unlock(v3 + 286);
    }

    v5 = 0;
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }
  }

  dispatch_release(v6);
LABEL_14:
  v10 = *(v2 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MEMORY[0x29ED520D0](v2, 0x10A0C405D73F519);
LABEL_17:
  (*(a1[4] + 16))();
}

void sub_29CC92890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  os_unfair_lock_unlock(v9 + 286);
  AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>::~ProgramVariantEntry(&a9);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_64c29_ZTSN3AGX17ComputeProgramKeyE(uint64_t a1)
{
  *(a1 + 64) = &unk_2A23FA818;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 64) = &unk_2A23F7D40;
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;

    operator delete(v4);
  }
}

AGX::Impl::ComputeProgramKey *__copy_helper_block_e8_64c29_ZTSN3AGX17ComputeProgramKeyE(uint64_t a1, uint64_t a2)
{
  result = AGX::Impl::ComputeProgramKey::ComputeProgramKey((a1 + 64), (a2 + 64));
  *(a1 + 64) = &unk_2A23F7D80;
  *(a1 + 208) = *(a2 + 208);
  return result;
}

uint64_t AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>::~ProgramVariantEntry(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t VectorMap<AGX::ComputeProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 816);
  v5 = *(a1 + 808);
  if (v4 && ((v6 = *(a2 + 87), v6 >= 0) ? (v7 = *(a2 + 87)) : (v7 = *(a2 + 72)), v6 >= 0 ? (v8 = (a2 + 64)) : (v8 = *(a2 + 64)), *(a2 + 104) == *(a2 + 96) && *(a2 + 128) == *(a2 + 120)))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 52);
    v12 = *(a2 + 56);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v58 = *(a2 + 88);
    v15 = 152 * v4;
    v57 = *(a2 + 144);
    while (1)
    {
      v16 = v5 + v9;
      if (v12 == *(v5 + v9 + 56) && v11 == *(v16 + 52) && v13 == *(v16 + 40))
      {
        v17 = v5 + v9;
        if (v14 == *(v5 + v9 + 48))
        {
          v18 = *(v17 + 87);
          v19 = *(v17 + 72);
          if ((v18 & 0x80u) == 0)
          {
            v19 = v18;
          }

          if (v7 == v19)
          {
            v20 = (v18 & 0x80u) == 0 ? (v5 + v9 + 64) : *(v5 + v9 + 64);
            v59 = v4;
            v61 = v13;
            v63 = v8;
            v21 = memcmp(v8, v20, v7);
            v13 = v61;
            v8 = v63;
            v4 = v59;
            if (!v21 && v58 == *(v5 + v9 + 88) && v57 == *(v5 + v9 + 144))
            {
              break;
            }
          }
        }
      }

      ++v10;
      v9 += 152;
      if (v15 == v9)
      {
        goto LABEL_26;
      }
    }

    v22 = v5 + 48 * v10;
  }

  else
  {
LABEL_26:
    v23 = *(v5 + 800);
    if (v23 && ((v24 = *(a2 + 87), v24 >= 0) ? (v25 = *(a2 + 87)) : (v25 = *(a2 + 72)), v24 >= 0 ? (v26 = (a2 + 64)) : (v26 = *(a2 + 64)), *(a2 + 104) == *(a2 + 96) && *(a2 + 128) == *(a2 + 120)))
    {
      v27 = *(a2 + 52);
      v28 = *(a2 + 56);
      v29 = *(a2 + 40);
      v30 = *(a2 + 48);
      v62 = *(a2 + 88);
      v60 = *(a2 + 144);
      v64 = v26;
      while (1)
      {
        if (v28 == *(v23 + 56) && v27 == *(v23 + 52) && v29 == *(v23 + 40) && v30 == *(v23 + 48))
        {
          v31 = *(v23 + 87);
          v32 = v31;
          if ((v31 & 0x80u) != 0)
          {
            v31 = *(v23 + 72);
          }

          if (v25 == v31)
          {
            v33 = v32 >= 0 ? (v23 + 64) : *(v23 + 64);
            v34 = v4;
            v35 = memcmp(v26, v33, v25);
            v4 = v34;
            v26 = v64;
            if (!v35 && v62 == *(v23 + 88) && v60 == *(v23 + 144))
            {
              v51 = 0;
              goto LABEL_100;
            }
          }
        }

        if (v28 == *(v23 + 208) && v27 == *(v23 + 204) && v29 == *(v23 + 192) && v30 == *(v23 + 200))
        {
          v36 = *(v23 + 239);
          v37 = v36;
          if ((v36 & 0x80u) != 0)
          {
            v36 = *(v23 + 224);
          }

          if (v25 == v36)
          {
            v38 = v37 >= 0 ? (v23 + 216) : *(v23 + 216);
            v39 = v4;
            v40 = memcmp(v26, v38, v25);
            v4 = v39;
            v26 = v64;
            if (!v40 && v62 == *(v23 + 240) && v60 == *(v23 + 296))
            {
              v51 = 1;
              goto LABEL_100;
            }
          }
        }

        if (v28 == *(v23 + 360) && v27 == *(v23 + 356) && v29 == *(v23 + 344) && v30 == *(v23 + 352))
        {
          v41 = *(v23 + 391);
          v42 = v41;
          if ((v41 & 0x80u) != 0)
          {
            v41 = *(v23 + 376);
          }

          if (v25 == v41)
          {
            v43 = v42 >= 0 ? (v23 + 368) : *(v23 + 368);
            v44 = v4;
            v45 = memcmp(v26, v43, v25);
            v4 = v44;
            v26 = v64;
            if (!v45 && v62 == *(v23 + 392) && v60 == *(v23 + 448))
            {
              break;
            }
          }
        }

        if (v28 == *(v23 + 512) && v27 == *(v23 + 508) && v29 == *(v23 + 496) && v30 == *(v23 + 504))
        {
          v46 = *(v23 + 543);
          v47 = v46;
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(v23 + 528);
          }

          if (v25 == v46)
          {
            v48 = v47 >= 0 ? (v23 + 520) : *(v23 + 520);
            v49 = v4;
            v50 = memcmp(v26, v48, v25);
            v4 = v49;
            v26 = v64;
            if (!v50 && v62 == *(v23 + 544) && v60 == *(v23 + 600))
            {
              v51 = 3;
              goto LABEL_100;
            }
          }
        }

        v23 = *(v23 + 800);
        if (!v23)
        {
          goto LABEL_90;
        }
      }

      v51 = 2;
LABEL_100:
      v22 = v23 + 48 * v51;
    }

    else
    {
LABEL_90:
      if (v4 == 4)
      {
        operator new();
      }

      v52 = v5 + 152 * v4;
      *(v52 + 8) = *(a2 + 8);
      if (v52 == a2)
      {
        v54 = *(a2 + 40);
        *(v52 + 56) = *(a2 + 56);
        *(v52 + 40) = v54;
        std::string::operator=((v52 + 64), (a2 + 64));
        *(v52 + 88) = *(a2 + 88);
      }

      else
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v52 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
        v53 = *(a2 + 40);
        *(v52 + 56) = *(a2 + 56);
        *(v52 + 40) = v53;
        std::string::operator=((v52 + 64), (a2 + 64));
        *(v52 + 88) = *(a2 + 88);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v52 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 5);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v52 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 5);
      }

      *(v52 + 144) = *(a2 + 144);
      v55 = *(a1 + 816);
      v22 = *(a1 + 808) + 48 * v55;
      *(a1 + 816) = v55 + 1;
    }
  }

  return v22 + 608;
}

void AGX::Program<AGX::HAL300::ComputeProgramVariant,AGX::ComputeProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a2 & 0x330003;
  if ((*&a2 & 0x330003) == 0)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 1144));
  v10 = *(a1 + 1104);
  v11 = *(a1 + 1112);
  v12 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v10, *(a1 + 1112), a4);
  if (!v12)
  {
    if (v11 == 4)
    {
      operator new();
    }

    v14 = &v10[4 * v11];
    v15 = *(a4 + 16);
    *v14 = *a4;
    v14[1] = v15;
    v16 = *(a1 + 1112);
    v17 = *(a1 + 1104) + 24 * v16;
    *(a1 + 1112) = v16 + 1;
    v12 = v17 + 128;
    v13 = *(v17 + 136);
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    if ((v5 & ~v13) != 0)
    {
      if (a3)
      {
        v18 = v12;
        dispatch_retain(a3);
        v12 = v18;
      }

      if (*(v12 + 16))
      {
        v19 = v12;
        dispatch_release(*(v12 + 16));
        v12 = v19;
      }

      *(v12 + 8) = v5;
      *(v12 + 16) = a3;
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 8);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  *v12 = v13;
LABEL_15:

  os_unfair_lock_unlock((a1 + 1144));
}

void sub_29CC93290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *ProgramKey<(_AGCStreamToken)6,(AGX::DriverShaderCompilationMode)0>::getFunctionId(void (***a1)(void, CC_SHA256_CTX *), unsigned __int8 *a2, AGX *a3)
{
  CC_SHA256_Init(&c);
  (**a1)(a1, &c);
  *len = 0;
  data = 0;
  if (a3 && AGX::GetSerializedVertexFormat(a3, &data, len, v6, v7))
  {
    v8 = data;
    CC_SHA256_Update(&c, data, len[0]);
    free(v8);
  }

  CC_SHA256_Final(a2, &c);
  return a2;
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CC9363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_17ComputeProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke(uint64_t a1, void *a2, int8x16_t *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 48);
  v7 = a3[2];
  v20[0] = vextq_s8(a3[1], a3[1], 8uLL);
  v20[1] = v7;
  v21 = a3[3].i64[0];
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(&v25, v6, a2, v20, *(a1 + 112), a1 + 120);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  v9 = a3[3];
  *v24 = a3[2];
  *&v24[16] = v9;
  AGCDeserializedReply::AGCDeserializedReply(v20);
  if (!*&v24[8])
  {
    v10 = [*(a1 + 32) function];
    if (!AGCReplyArray::getDeserializedReplyWithName<AGCDeserializedReply>(a2, [objc_msgSend(v10 "name")], v20))
    {
      v11 = *MEMORY[0x29EDCA610];
      v12 = [objc_msgSend(v10 "name")];
      AGCReplyArray::getDebugStringAvailableNames(buf, a2);
      if (buf[23] >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      fprintf(v11, "AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", "agxa_user_shader_factory_template.hpp", 182, "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke", v12, v13);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v16;
        v31 = 2080;
        v32 = v17;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        v14 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&v24[8] = 2;
      *&v24[16] = @"Internal error during function compilation.";
    }
  }

  memset(buf, 0, 24);
  if (v27 == 1)
  {
    *buf = v25;
    *&buf[16] = v26;
    v26 = 0;
    v25 = 0uLL;
  }

  else
  {
    if (v27)
    {
      v18 = std::__throw_bad_variant_access[abi:nn200100]();
      AGCDeserializedReply::~AGCDeserializedReply(v20);
      if (v27 == -1)
      {
        _Unwind_Resume(v18);
      }

      (off_2A23F59F0[v27])(v20, &v25);
      _Unwind_Resume(v18);
    }

    *&v24[8] = v25;
  }

  (*(*(a1 + 40) + 16))();
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v20);
  if (v27 != -1)
  {
    (off_2A23F59F0[v27])(v20, &v25);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_17ComputeProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(uint64_t a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v1 = *(a1 + 96);
  v12[0] = 0;
  v12[1] = 0;
  *v7 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = v12;
  if (v1 || !*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1;
    v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &size_ptr);
    AGCReplyArray::deserialize(v7, buffer_ptr);
    a1 = v3;
  }

  (*(*(a1 + 88) + 16))(*(a1 + 88), v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    free(v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v12[0]);
  if (__p[1])
  {
    *&v9 = __p[1];
    operator delete(__p[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_29CC93D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_80c29_ZTSN3AGX17ComputeProgramKeyE(uint64_t a1)
{
  *(a1 + 80) = &unk_2A23FA818;
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  *(a1 + 80) = &unk_2A23F7D40;
  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;

    operator delete(v4);
  }
}

AGX::Impl::ComputeProgramKey *__copy_helper_block_e8_80c29_ZTSN3AGX17ComputeProgramKeyE(uint64_t a1, uint64_t a2)
{
  result = AGX::Impl::ComputeProgramKey::ComputeProgramKey((a1 + 80), (a2 + 80));
  *(a1 + 80) = &unk_2A23F7D80;
  *(a1 + 224) = *(a2 + 224);
  return result;
}

double ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createFastIntegerDivideBufferIfNeededEP19AGXG18PFamilyDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createFastIntegerDivideBufferIfNeeded(AGXG18PFamilyDevice *)::fast_integer_divide_buffer_status = 1;
  v2 = [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initUntrackedInternalBufferWithDevice:*(a1 + 32) length:0x2000 options:0];
  *(v1 + 17072) = v2;
  v3 = [v2 contents];
  *v3 = 0xFFFFFFFFLL;
  v4 = v3 + 5;
  for (i = 3; i != 1025; i += 2)
  {
    v6 = __clz(i - 2);
    v7 = __clz(i - 1);
    *(v4 - 3) = (i - 2 + (1 << (v6 ^ 0x3F))) / (i - 1) - 1;
    *(v4 - 2) = v6 ^ 0x1F;
    *(v4 - 1) = (i - 1 + (1 << (v7 ^ 0x3F))) / i - 1;
    *v4 = v7 ^ 0x1F;
    v4 += 4;
  }

  *&result = 0x97FFFFFFFLL;
  v3[1023] = 0x97FFFFFFFLL;
  return result;
}

id __copy_helper_block_e8_96c83_ZTS19RetainedObjCPointerIP7NSArrayIPU28objcproto17MTLDynamicLibrary11objc_objectEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

double AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge(unsigned int *a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = a1[1];
  if (*a1 > *a2)
  {
    v3 = *a1;
  }

  *a1 = v3;
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = *(a2 + 1);
  v9 = v7 & 0xFF000000;
  v10 = BYTE2(v7);
  if (BYTE2(v7) <= BYTE2(v8))
  {
    v10 = BYTE2(v8);
  }

  v11 = v6;
  if (v6 <= *(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  if (v11 < v4)
  {
    v4 = v11;
  }

  v12 = v4 | (v10 << 16);
  v13 = WORD2(v6);
  if (WORD2(v6) <= WORD2(v8))
  {
    v13 = WORD2(*(a2 + 1));
  }

  v14 = (-v3 & (v3 + v13 - 1));
  v15 = HIWORD(v8);
  if (HIWORD(v6) > v15)
  {
    v15 = HIWORD(v6);
  }

  v16 = v9 | (v15 << 48) | v12 | (v14 << 32);
  *v5 = v16;
  if (v16 != v6)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v5, 4);
    v18 = v16 & 0xFFFFFFFF00FFFFFFLL;
    v27 = v18 | 0x1000000;
    v19 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(&v27, 12);
    v20 = 1610612736;
    v21 = (16773120 - SectionEnd) / (v19 - SectionEnd);
    if (v21 >= 0x60)
    {
      v22 = 96;
    }

    else
    {
      v22 = (16773120 - SectionEnd) / (v19 - SectionEnd);
    }

    v23 = v22 << 24;
    if (v21 >= 0x20)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v19 != SectionEnd)
    {
      v20 = v24;
    }

    *(a1 + 1) = v18 | v20;
    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *&v26 = -1;
    *(&v26 + 1) = -1;
    *(a1 + 3) = 0u;
    *(a1 + 4) = v26;
    *(a1 + 5) = v26;
    *(a1 + 6) = v26;
    *(a1 + 14) = -1;
  }

  return result;
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(uint64_t a1, int a2)
{
  SectionEnd = 0;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 2);
        v4 = 0x40000;
      }

      else
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 3);
        v4 = 0x20000;
      }
    }

    else if (a2 == 1)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 7);
      v4 = 24576;
    }

    else
    {
      v4 = 0;
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 1);
        v4 = 0x2000;
      }
    }
  }

  else if (a2 <= 9)
  {
    if (a2 == 5)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 4);
      v4 = 8 * *a1 * ((*a1 >> 19) & 0x1FE0);
    }

    else
    {
      v4 = 0;
      if (a2 == 6)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 10);
        v5 = BYTE2(*a1);
        if (v5 > 1)
        {
          ++v5;
        }

        v4 = (HIWORD(*a1) & 0xFF00) * v5;
      }
    }
  }

  else if (a2 == 10)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 5);
    v4 = ((*a1 >> 19) & 0x1FE0) * HIWORD(*a1);
  }

  else if (a2 == 11)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 6);
    v4 = 32 * *(a1 + 3) * *(a1 + 4);
  }

  else
  {
    v4 = 0;
    if (a2 == 12)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 11);
      v4 = 0;
    }
  }

  return (v4 + SectionEnd);
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28[11] = *MEMORY[0x29EDCA608];
  mach_absolute_time();
  _MTLCompilePerformanceStatisticsEnabled();
  if (!a7)
  {
    if (!a2)
    {
      if (a10)
      {
        v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"pipeline descriptor is nil" forKey:*MEMORY[0x29EDB9ED8]];
        v21 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v20];
        (*(a10 + 16))(a10, 0, 0, v21);
      }

      return 0;
    }

    v28[0] = 0;
    if (![a2 validateWithDevice:a3 error:v28])
    {
      v22 = [v28[0] localizedDescription];
      if (a10)
      {
        v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v22 forKey:*MEMORY[0x29EDB9ED8]];
        v24 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v23];
        (*(a10 + 16))(a10, 0, 0, v24);
      }

      return 0;
    }

LABEL_8:
    if (a10)
    {
      [a2 copy];
    }

    v28[6] = 0;
    operator new();
  }

  *a7 = 0;
  if (a2)
  {
    v28[0] = 0;
    if (![a2 validateWithDevice:a3 error:v28])
    {
      v13 = [v28[0] localizedDescription];
      v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v13 forKey:*MEMORY[0x29EDB9ED8]];
      v15 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v14];
      v16 = v15;
      if (a10)
      {
        (*(a10 + 16))(a10, 0, 0, v15);

        v16 = *a7;
      }

      else
      {
        *a7 = v15;
      }

      v27 = v16;
      return 0;
    }

    goto LABEL_8;
  }

  v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"pipeline descriptor is nil" forKey:*MEMORY[0x29EDB9ED8]];
  v18 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v17];
  if (a10)
  {
    v19 = v18;
    (*(a10 + 16))(a10, 0, 0, v18);

    v18 = *a7;
  }

  else
  {
    *a7 = v18;
  }

  v25 = v18;
  return 0;
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateRenderPipelineDescriptorInfo<MTLRenderPipelineDescriptor>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, char *a5, uint64_t a6)
{
  *a2 = [a3 fragmentFunction];
  a2[1] = [a3 vertexFunction];
  a2[3] = [a3 objectFunction];
  v12 = [a3 meshFunction];
  a2[2] = v12;
  if (v12)
  {
    v13 = [a3 newSerializedMeshDataWithFlags:540 options:0 error:a6];
    v14 = a2[10];
    if (v14 != v13)
    {
      if (v14)
      {
        dispatch_release(v14);
      }

      a2[10] = v13;
    }

    if (!v13)
    {
      return 0;
    }

    v15 = [a3 newSerializedObjectDataWithFlags:540 options:0 error:a6];
    v16 = a2[11];
    if (v16 != v15)
    {
      if (v16)
      {
        dispatch_release(v16);
      }

      a2[11] = v15;
    }

    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    v17 = [a3 newSerializedVertexDataWithFlags:540 options:a4 error:a6];
    v18 = a2[9];
    if (v18 != v17)
    {
      if (v18)
      {
        dispatch_release(v18);
      }

      a2[9] = v17;
    }

    if (!v17)
    {
      return 0;
    }
  }

  v19 = [a3 newSerializedFragmentDataWithFlags:540 options:a4];
  v20 = a2[8];
  if (v20 != v19)
  {
    if (v20)
    {
      dispatch_release(v20);
    }

    a2[8] = v19;
  }

  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v30, a5, *a2, [a3 fragmentLinkedFunctions], objc_msgSend(a3, "fragmentPreloadedLibraries"), a6);
  v21 = a2[12];
  a2[12] = v30;

  if (a2[12])
  {
    v22 = a2[1];
    if (!v22 || (AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v30, a5, v22, [a3 vertexLinkedFunctions], objc_msgSend(a3, "vertexPreloadedLibraries"), a6), v23 = a2[13], a2[13] = v30, v23, a2[13]))
    {
      v24 = a2[2];
      if (!v24 || (AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v30, a5, v24, [a3 meshLinkedFunctions], objc_msgSend(a3, "meshPreloadedLibraries"), a6), v25 = a2[14], a2[14] = v30, v25, a2[14]) && (AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v30, a5, a2[3], objc_msgSend(a3, "objectLinkedFunctions"), objc_msgSend(a3, "objectPreloadedLibraries"), a6), v26 = a2[15], a2[15] = v30, v26, a2[15]))
      {
        v27 = *(a1 + 16);
        v29[0] = MEMORY[0x29EDCA5F8];
        v29[1] = 3221225472;
        v29[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36populateRenderPipelineDescriptorInfoI27MTLRenderPipelineDescriptorEEbRNS5_28RenderPipelineDescriptorInfoEPT_mP19AGXG18PFamilyDeviceRP7NSError_block_invoke;
        v29[3] = &__block_descriptor_40_e5_v8__0l;
        v29[4] = a2;
        dispatch_sync(v27, v29);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RenderPipelineDescriptorInfo::~RenderPipelineDescriptorInfo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    dispatch_release(v5);
  }

  return a1;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createRenderPipeline_implI27MTLRenderPipelineDescriptorEEP27AGXG18PFamilyRenderPipelinePT_P19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSH_SK_E_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (v8)
  {
    v10 = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RenderPipelineDescriptorInfo::~RenderPipelineDescriptorInfo(v8);
    MEMORY[0x29ED520D0](v10, 0xA0C402B819244);
  }

  *(*(*(a1 + 56) + 8) + 40) = a2;
  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    v12 = v11 + 30;
    isa = v11[31].isa;
    if (isa && v12->isa && *(isa + 4104) == 1)
    {
      ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::clone();
    }

    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::finalize<MTLRenderPipelineDescriptor>(v12, *(a1 + 32), v11, *(a1 + 40));
  }

  if (([*(a1 + 32) requiresRaytracingEmulation] & 1) == 0 && a2 && !a4 && objc_msgSend(*(a1 + 40), "supportIndirectCommandBuffers"))
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v9 + 28), (*(*(*(a1 + 56) + 8) + 40) + 3408));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v9 + 148), (*(*(*(a1 + 56) + 8) + 40) + 3528));
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, a2, a3, a4);

    *(*(*(a1 + 56) + 8) + 40) = 0;
  }

  if (*(a1 + 80))
  {
    **(a1 + 80) = a4;
  }

  if (*(a1 + 88))
  {
    **(a1 + 88) = a3;
  }
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createGeometryStageAndLinkPipeline<MTLRenderPipelineDescriptor,false>(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, void *a5, MTLRenderPipelineDescriptor *a6, unint64_t a7, unsigned __int8 a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, std::string::size_type *a13, uint64_t a14, std::string::size_type a15, uint64_t a16)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a2[2])
  {
    v16 = a2[14];
    v17 = a2[6];
    v18 = a2[10];
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke;
    v29[3] = &unk_29F3417B0;
    v29[4] = a6;
    v29[5] = a5;
    v29[10] = a1;
    v29[11] = a7;
    v29[12] = a13;
    v29[13] = a2;
    v30 = a8;
    v29[6] = a12;
    v29[7] = a15;
    v19 = *a4;
    v32 = a4[1];
    v31 = v19;
    v33 = a9;
    v29[14] = a3;
    v29[15] = a10;
    v29[8] = a11;
    v29[9] = a16;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramVariant<MTLRenderPipelineDescriptor>(a1, a6, a5, a7, a12, a13, a14, v16, v17, a3, v18, a8, a15, v29);
  }

  else
  {
    v20 = a2[13];
    v21 = a2[5];
    v22 = a2[9];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v23 = a4[1];
    v25 = *a4;
    v24[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_3;
    v24[3] = &unk_29F3417D8;
    v24[8] = a1;
    v24[9] = a2;
    v26 = v23;
    v24[4] = a5;
    v24[5] = a6;
    v24[10] = a3;
    v24[11] = a7;
    v27 = a8;
    v28 = a9;
    v24[12] = a10;
    v24[6] = a11;
    v24[7] = a16;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createVertexProgramVariant(a1, a6, a5, a7, a12, a13, v20, v21, a3, v22, a14, a8, a15, v24);
  }
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramAnalysis<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, os_unfair_lock_s *a5, NSObject *a6, int a7)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  AGX::MeshProgramKey::MeshProgramKey(v42, a6, 1, 0, v49, 0, 0, 0);
  AGX::MeshProgramKey::initCommon<MTLRenderPipelineDescriptor>(v42, a2);
  v14 = v43 & 0xFFFFFF7F;
  v43 &= ~0x80u;
  v44 = a4 & 0xC00C0000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v15 = 1;
    v14 = v43;
  }

  else
  {
    v15 = 0;
  }

  v43 = v15 | (a4 >> 21) & 8 | v14 & 0xFFFFFFF4;
  LOBYTE(v49[0]) = 0;
  VariantEntry = AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a5, v42, v49, 0, 0);
  v33 = a3;
  v17 = [a2 meshFunction];
  if (LOBYTE(v49[0]) == 1)
  {
    v18 = v17;
    v19 = [objc_msgSend(a2 "pipelineLibrary")];
    v20 = [a2 pipelineLibrary];
    if ([v20 pipelineCache] && (objc_msgSend(v20, "disableRunTimeCompilation") & 1) != 0 || (v21 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v21)
    {
      LOBYTE(v22) = 1;
    }

    else
    {
      v22 = (a4 >> 34) & 1;
    }

    v32 = v22;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v23 = objc_opt_new();
    [v23 setUseAIRNTInterfaces:*(a1 + 24)];
    [v23 setSync:a7 ^ 1u];
    [v23 setFunction:v18];
    [v23 setFrameworkData:a6];
    [v23 setPipelineCache:v19];
    [v23 setDestinationBinaryArchive:0];
    [v23 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v23 setPipelineOptions:0];
    v24 = [a2 newPipelineScript];
    if (v24)
    {
      [v23 setAirScript:v24];
      dispatch_release(v24);
    }

    [v23 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v25 = [a2 meshLinkedFunctions];
    [v23 setVisibleFunctions:{objc_msgSend(v25, "functions")}];
    [v23 setVisibleFunctionGroups:{objc_msgSend(v25, "groups")}];
    [v23 setPrivateVisibleFunctions:{objc_msgSend(v25, "privateFunctions")}];
    v26 = *a1;
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 3221225472;
    v39[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createMeshProgramAnalysisI27MTLRenderPipelineDescriptorEEPKNS_21VertexProgramVaryingsEPT_P19AGXG18PFamilyDevicemPNS1_11MeshProgramEPU27objcproto16OS_dispatch_data8NSObjectb_block_invoke;
    v39[3] = &unk_29F3418A0;
    v39[6] = a1;
    v39[7] = VariantEntry;
    v40 = 1;
    v39[8] = a5;
    v39[9] = 0;
    v39[4] = v33;
    v39[5] = &v45;
    v41 = v32;
    AGX::Compiler::compileProgram<AGX::MeshProgramKey,AGCDeserializedReply>(v26, v42, v23, 0, v39);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  v35 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createMeshProgramAnalysisI27MTLRenderPipelineDescriptorEEPKNS_21VertexProgramVaryingsEPT_P19AGXG18PFamilyDevicemPNS1_11MeshProgramEPU27objcproto16OS_dispatch_data8NSObjectb_block_invoke_2;
  v36 = &unk_29F3418C8;
  v37 = &v45;
  v38 = VariantEntry;
  v27 = *VariantEntry;
  if (a7)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v27, global_queue, block);
  }

  else
  {
    dispatch_group_wait(*VariantEntry, 0xFFFFFFFFFFFFFFFFLL);
    v35(block);
  }

  v29 = v46[3];
  if (v29)
  {
    v30 = v29 + 3976;
  }

  else
  {
    v30 = 0;
  }

  AGX::MeshProgramKey::~MeshProgramKey(v42);
  _Block_object_dispose(&v45, 8);
  return v30;
}

void sub_29CC95780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  AGX::MeshProgramKey::~MeshProgramKey(&a30);
  _Block_object_dispose((v30 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createVertexProgramAnalysis(uint64_t a1, MTLRenderPipelineDescriptor *a2, uint64_t a3, unint64_t a4, os_unfair_lock_s *a5, uint64_t a6)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v12 = [(MTLRenderPipelineDescriptor *)a2 vertexFunction];
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  AGX::VertexProgramKey::VertexProgramKey(v25, v32, 0, 0, 0, 0);
  AGX::VertexProgramKey::initCommon(v25, a2);
  v26 &= ~0x80u;
  v27 |= 0x200000uLL;
  v32[0] = 0;
  VariantEntry = AGX::Program<AGX::HAL300::VertexProgramVariant,AGX::VertexProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a5, v25, v32, 0, 0);
  if (v32[0] == 1)
  {
    v14 = [-[MTLRenderPipelineDescriptor pipelineLibrary](a2 "pipelineLibrary")];
    v15 = [(MTLRenderPipelineDescriptor *)a2 pipelineLibrary];
    if ([v15 pipelineCache] && (objc_msgSend(v15, "disableRunTimeCompilation") & 1) != 0 || (v16 = -[NSArray count](-[MTLRenderPipelineDescriptor binaryArchives](a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v16)
    {
      LOBYTE(v17) = 1;
    }

    else
    {
      v17 = (a4 >> 34) & 1;
    }

    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v18 = objc_opt_new();
    [v18 setUseAIRNTInterfaces:*(a1 + 24)];
    [v18 setSync:1];
    [v18 setFunction:v12];
    [v18 setFrameworkData:a6];
    [v18 setPipelineOptions:0];
    [v18 setPipelineCache:v14];
    [v18 setGpuCompilerSPIOptions:{-[MTLRenderPipelineDescriptor gpuCompilerSPIOptions](a2, "gpuCompilerSPIOptions")}];
    v19 = *a1;
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createVertexProgramAnalysisEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemPNS1_13VertexProgramEPU27objcproto16OS_dispatch_data8NSObject_block_invoke;
    v23[3] = &unk_29F3418F0;
    v23[6] = a1;
    v23[7] = VariantEntry;
    v23[4] = a3;
    v23[5] = &v28;
    v24 = v17;
    AGX::Compiler::compileProgram<AGX::VertexProgramKey,AGCDeserializedReply>(v19, v25, v18, 0, v23);
  }

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createVertexProgramAnalysisEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemPNS1_13VertexProgramEPU27objcproto16OS_dispatch_data8NSObject_block_invoke_2;
  v22[3] = &unk_29F3418C8;
  v22[4] = &v28;
  v22[5] = VariantEntry;
  dispatch_group_wait(*VariantEntry, 0xFFFFFFFFFFFFFFFFLL);
  ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createVertexProgramAnalysisEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemPNS1_13VertexProgramEPU27objcproto16OS_dispatch_data8NSObject_block_invoke_2(v22);
  v20 = v29[3];
  AGX::VertexProgramKey::~VertexProgramKey(v25);
  _Block_object_dispose(&v28, 8);
  return v20;
}

void sub_29CC95AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AGX::VertexProgramKey::~VertexProgramKey(va);
  _Block_object_dispose((v17 - 192), 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createRenderPipeline_implI27MTLRenderPipelineDescriptorEEP27AGXG18PFamilyRenderPipelinePT_P19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSH_SK_E_block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v7 = a3[1];
    v12[0] = *a3;
    v12[1] = v7;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createGeometryStageAndLinkPipeline<MTLRenderPipelineDescriptor,false>(*(a1 + 72), *(a1 + 80), a2, v12, *(a1 + 32), *(a1 + 40), *(a1 + 88), *(a1 + 112), *(a1 + 113), *(a1 + 96), a4, *(a1 + 48), *(a1 + 104), a7, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v8 = *(a1 + 64);
    if (v8)
    {
      if (a5 > 3)
      {
        v9 = 5;
      }

      else
      {
        v9 = qword_29D2F40D8[a5];
      }

      v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v11 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v9 userInfo:v10];
      (*(v8 + 16))(v8, 0, 0);
    }
  }
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createFragmentProgramVariant<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, os_unfair_lock_s *a8, __int128 *a9, NSObject *a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v226 = *MEMORY[0x29EDCA608];
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x3052000000;
  v142[3] = __Block_byref_object_copy__1933;
  v142[4] = __Block_byref_object_dispose__1934;
  v142[5] = 0;
  v127 = [a2 fragmentFunction];
  if ([a2 openGLModeEnabled])
  {
    v14 = a10;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3[106] + 6200);
  if (getStatelessPSOBoundsOnceToken != -1)
  {
    dispatch_once(&getStatelessPSOBoundsOnceToken, &__block_literal_global_2137);
  }

  v16 = 0;
  add = atomic_fetch_add(&requestID, 1uLL);
  if (add < maxStateless && add >= minStateless)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (add >= minPridOverride && add < maxPridOverride)
  {
    v16 = *(a3[106] + 6208);
  }

  v20 = 0;
  if (add >= minLBRT && add < maxLBRT)
  {
    v20 = *(a3[106] + 6204);
  }

  {
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*)::enable_pipeline_script = 0;
  }

  if (AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*)::enable_pipeline_script)
  {
    [a2 newPipelineScript];
    operator new();
  }

  AGX::FragmentProgramKey::FragmentProgramKey(&v143, v14, [a2 fragmentLinkedFunctions], a7);
  v182 = 0;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v183 = 67305985;
  v184 = 1541;
  v185 = 7;
  v186 = 0x100000000;
  v187 = 0;
  v189 = 0;
  v188 = 0;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0;
  if (a2)
  {
    LODWORD(v200[0]) = 3;
    v201 = 0x706050403020100;
    v218 = 0;
    v219 = 255;
    v220 = 0;
    v221 = 0;
    v222 = 0;
    memset_pattern16(&__b, &unk_29D2F27B0, 0x40uLL);
    memset_pattern16(v200 + 8, &unk_29D2F27B0, 0x40uLL);
    v224 = 0;
    *&v223[3] = 0;
    v225 = 0;
    v202 = 2;
    *v203 = *v223;
    *&v203[11] = 0u;
    v204 = 2;
    *v205 = *v223;
    *&v205[11] = 0u;
    v206 = 2;
    *&v207[11] = 0u;
    *v207 = *v223;
    v208 = 2;
    *v209 = *v223;
    *&v209[11] = 0u;
    v210 = 2;
    *&v211[11] = 0u;
    *v211 = *v223;
    v212 = 2;
    *&v213[11] = 0u;
    *v213 = *v223;
    v214 = 2;
    *&v215[11] = 0u;
    *v215 = *v223;
    v216 = 2;
    *v217 = *v223;
    *&v217[11] = 0u;
    AGX::SpecializableRenderPipelineState::specialize<MTLRenderPipelineDescriptor>(&__b, a2);
    AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initialize(&v177, &__b, v19, v20);
  }

  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&v177, 0);
  v150 = v177;
  v151 = v178;
  v152 = v179;
  HIDWORD(v149) = ((v19 & 3) << 14) | ((v20 & 1) << 16) | HIDWORD(v149) & 0xFFFE3FFF;
  v136 = [a2 _descriptorPrivate];
  v21 = [a2 driverCompilerOptions];
  v22 = [objc_msgSend(objc_msgSend(a2 "fragmentLinkedFunctions")];
  v23 = [a2 supportAddingFragmentBinaryFunctions];
  if ([objc_msgSend(v21 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  DWORD1(v149) = DWORD1(v149) & 0xFFFFFFFB | v24;
  v25 = [objc_msgSend(v21 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}];
  DWORD1(v149) = DWORD1(v149) & 0xFC0003FF | (v25 << 10);
  if ([objc_msgSend(v21 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v26 = 0x8000000;
  }

  else
  {
    v26 = 0;
  }

  if (v22)
  {
    v27 = 1;
  }

  else
  {
    v27 = v23;
  }

  if (v27)
  {
    v28 = 512;
  }

  else
  {
    v28 = 0;
  }

  DWORD1(v149) = v26 | DWORD1(v149) & 0xF7FFFDFF | v28;
  if ((v16 == 7 || v16 == 2) && (v152 & 0xF00) != 0)
  {
    if (v152)
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_10021);
      }

      LOBYTE(v16) = 1;
    }

    else
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_4);
      }

      LOBYTE(v16) = 0;
    }
  }

  v29 = 0;
  v30 = *v136;
  do
  {
    v32 = [objc_msgSend(v30 _descriptorAtIndex:{v29), "_descriptorPrivate"}];
    if (v32 && *v32 >> 42)
    {
      if ((v19 - 1) >= 2)
      {
        v33 = (*v32 & 3) == 1;
        if ((*v32 & 3) == 2)
        {
          v33 = 2;
        }

        if ((*v32 & 3) == 1)
        {
          v34 = vdupq_n_s64(*v32);
          v33 = 2;
          if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(vandq_s8(v34, xmmword_29D2F1650), xmmword_29D2F1670), vcgtq_u64(vandq_s8(v34, xmmword_29D2F1660), xmmword_29D2F1680)))) & 1) == 0 && (*v32 & 0x1C) <= 0x13)
          {
            if ((*v32 & 0xE0) < 0xA0)
            {
              v33 = 1;
            }

            else
            {
              v33 = 2;
            }
          }
        }
      }

      else
      {
        v33 = 2;
      }

      v35 = *(&v147 + v29) & 0xF7FFFFFE | ((v33 == 2) << 27);
      if ((v33 - 1) < 2u)
      {
        ++v35;
      }

      *(&v147 + v29) = v35;
      if (v33 == 1)
      {
        v36 = (*v32 >> 8) & 0x1F;
        if (v36 > 0x13)
        {
          v37 = 0;
        }

        else
        {
          v37 = dword_29D2FEC88[v36];
        }

        v38 = v37 | v35 & 0xFFFFFFC1;
        *(&v147 + v29) = v38;
        v39 = (*v32 >> 18) & 0x1F;
        if (v39 > 0x13)
        {
          v40 = 0;
        }

        else
        {
          v40 = dword_29D2FECD8[v39];
        }

        v41 = v40 | v38 & 0xFFFFF83F;
        *(&v147 + v29) = v41;
        v42 = (*v32 >> 13) & 0x1F;
        if (v42 > 0x13)
        {
          v43 = 0;
        }

        else
        {
          v43 = dword_29D2FED28[v42];
        }

        v44 = v43 | v41 & 0xFFFF07FF;
        *(&v147 + v29) = v44;
        v45 = (*v32 >> 23) & 0x1F;
        if (v45 > 0x13)
        {
          v46 = 0;
        }

        else
        {
          v46 = dword_29D2FED78[v45];
        }

        v47 = v46 | v44 & 0xFFE0FFFF;
        *(&v147 + v29) = v47;
        v48 = (*v32 >> 2) & 7;
        if (v48 > 5)
        {
          v49 = 0;
        }

        else
        {
          v49 = dword_29D2FEDC8[v48];
        }

        v50 = v49 | v47 & 0xFF1FFFFF;
        *(&v147 + v29) = v50;
        v51 = *v32 >> 5;
        if (v51 > 5)
        {
          v52 = 0;
        }

        else
        {
          v52 = dword_29D2FEDE0[v51];
        }

        *(&v147 + v29) = v52 | v50 & 0xF8FFFFFF;
      }

      if (v19 == 1 || (*v32 & 0x1000000000) != 0)
      {
        v31 = (v146 & 0xFFFFFF00FFFFFFFFLL) + ((BYTE4(v146) | (1 << v29)) << 32);
      }

      else
      {
        v53 = __rbit32(HIDWORD(*v32));
        v54 = v53 >> 28;
        v55 = v146 & 0xFFFFFFFFFF000000 | (v146 | ((8 * v53) >> 31) & (1 << v29)) & 0xFF0000FF | v146 & 0xFF00 | ((8 * v53) >> 31) & (1 << v29) & 0xFF00 | (256 << v29) & ((4 * v53) >> 31) & 0xFF00FFFF | v146 & 0xFF0000 | ((8 * v53) >> 31) & (1 << v29) & 0xFF0000 | (256 << v29) & ((4 * v53) >> 31) & 0xFF0000 | (0x10000 << v29) & ((2 * v53) >> 31);
        if (v54 < 0)
        {
          v56 = 0x1000000 << v29;
        }

        else
        {
          v56 = 0;
        }

        v31 = v55 & 0xFFFFFFFF00FFFFFFLL | v55 & 0xFF000000 | v56;
      }

      *&v146 = v31;
    }

    ++v29;
  }

  while (v29 != 8);
  v57 = [a2 isLogicOperationEnabled];
  if (v57)
  {
    v58 = 32;
  }

  else
  {
    v58 = 0;
  }

  DWORD2(v145) = DWORD2(v145) & 0xFFFFFFDF | v58;
  if (v57)
  {
    v59 = [a2 logicOperation];
    if (v59 > 0xF)
    {
      v60 = 0;
    }

    else
    {
      v60 = dword_29D2FEDF8[v59];
    }

    DWORD2(v145) = DWORD2(v145) & 0xFFFFF83F | v60;
  }

  v61 = [a2 isAlphaTestEnabled];
  if (v61)
  {
    v62 = 2048;
  }

  else
  {
    v62 = 0;
  }

  DWORD2(v145) = DWORD2(v145) & 0xFFFFF7FF | v62;
  if (v61)
  {
    v63 = [a2 alphaTestFunction];
    if (v63 > 7)
    {
      v64 = 0;
    }

    else
    {
      v64 = dword_29D2FEE38[v63];
    }

    DWORD2(v145) = DWORD2(v145) & 0xFFFF0FFF | v64;
  }

  if ([a2 isPointSmoothEnabled])
  {
    v65 = 0x10000;
  }

  else
  {
    v65 = 0;
  }

  LODWORD(v149) = *(v136 + 236);
  DWORD2(v145) = DWORD2(v145) & 0xFFFAFFFF | ((HIWORD(v65) & 1) << 18) | v65;
  if ([a2 isDepthStencilWriteDisabled])
  {
    v66 = 16;
  }

  else
  {
    v66 = 0;
  }

  v67 = DWORD2(v145) & 0xFFFFFFEC | v66;
  v68 = *(v136 + 192);
  if ((*(v136 + 224) & 3) != 0)
  {
    ++v67;
  }

  DWORD2(v145) = v67 | (2 * ((*(v136 + 224) & 0xCLL) != 0));
  if ([a2 openGLModeEnabled])
  {
    v69 = [a2 sampleCoverageInvert];
    [a2 sampleCoverage];
    v71 = 1.0;
    if (v69)
    {
      v71 = 0.0;
    }

    v72 = 4 * (v70 != v71);
    if (v68 != -1)
    {
      v72 = 4;
    }

    DWORD2(v145) = DWORD2(v145) & 0xFFFFFFFB | v72;
    if ([a2 sampleCoverageInvert])
    {
      v73 = 8;
    }

    else
    {
      v73 = 0;
    }

    v74 = DWORD2(v145) & 0xFFFFFFF7 | v73;
  }

  else
  {
    [a2 sampleCoverage];
    if (v68 == -1 && v75 == 1.0)
    {
      v77 = 0;
    }

    else
    {
      v77 = 4;
    }

    v74 = v77 | DWORD2(v145) & 0xFFFFFFFB;
  }

  DWORD2(v145) = v74;
  HIDWORD(v149) &= ~1u;
  if ([a2 openGLModeEnabled])
  {
    v78 = 2;
  }

  else
  {
    v78 = 0;
  }

  HIDWORD(v149) = HIDWORD(v149) & 0xFFFFFFFD | v78;
  v79 = [a2 fragmentBuffers];
  v80 = 0;
  for (i = 0; i != 31; ++i)
  {
    v82 = [objc_msgSend(v79 _descriptorAtIndex:{i), "mutability"}];
    v83 = 1 << i;
    if (v82 != 1)
    {
      v83 = 0;
    }

    v80 |= v83;
  }

  *(&v146 + 1) = v80;
  v157 = *(v136 + 152);
  if ([a2 needsCustomBorderColorSamplers])
  {
    v84 = 4;
  }

  else
  {
    v84 = 0;
  }

  v85 = HIDWORD(v149) & 0xFFFFFECB | v84;
  v86 = *(v136 + 176);
  if (v86 == 2)
  {
    v87 = 32;
  }

  else
  {
    v87 = 16 * (v86 == 1);
  }

  HIDWORD(v149) = v87 | v85 | ((*(v136 + 288) != 0) << 8);
  if ([a2 supportAddingFragmentBinaryFunctions])
  {
    v88 = DWORD1(v149);
  }

  else
  {
    v89 = [objc_msgSend(objc_msgSend(a2 "fragmentLinkedFunctions")];
    v88 = DWORD1(v149);
    if (!v89)
    {
      v91 = 0;
      v90 = WORD2(v149) & 0x200;
      goto LABEL_146;
    }
  }

  v90 = 512;
  v91 = 64;
LABEL_146:
  v92 = v90 | v88 & 0xFFFFFD7F;
  HIDWORD(v149) = HIDWORD(v149) & 0xFFFFFDBF | v91;
  v93 = *(v136 + 680);
  if (v93 > 3 || v93 == 1)
  {
    DWORD2(v149) = -1;
  }

  DWORD1(v149) = v92;
  DWORD2(v145) = DWORD2(v145) & 0xFF8FFFEF | ((v16 & 7) << 20);
  [a2 supportIndirectCommandBuffers];
  v94 = a3[106];
  v95 = *(v94 + 16456);
  v96 = (DWORD1(v149) & 0x8BFFFEFF | (*(v94 + 16608) << 26) & 0xBFFFFFFF | (((v95 >> 1) & 1) << 30)) ^ 0x40000000;
  v97 = HIDWORD(v149) & 0xFFFFC7F7 | (v95 >> 7) & 8;
  DWORD1(v149) = v96;
  HIDWORD(v149) = v97;
  v158 = a4 & 0xC0040000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v98 = 1;
    v96 = DWORD1(v149);
    v97 = HIDWORD(v149);
  }

  else
  {
    v98 = 0;
  }

  DWORD1(v149) = (a4 >> 21) & 8 | v98 | v96 & 0xFFFFFFF4;
  HIDWORD(v149) = v97 & 0xFFFFFF7F | (((a4 >> 21) & 1) << 7);
  if (a9)
  {
    if (*(a9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__b, *a9, *(a9 + 1));
    }

    else
    {
      __b = *a9;
      *v198 = *(a9 + 2);
    }

    if (*(a9 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v198[8], *(a9 + 3), *(a9 + 4));
    }

    else
    {
      *&v198[8] = *(a9 + 24);
      *&v198[24] = *(a9 + 5);
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(__p);
    }

    __p = __b;
    v154 = *v198;
    v198[7] = 0;
    LOBYTE(__b) = 0;
    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    v155 = *&v198[8];
    v156 = *&v198[24];
    v198[31] = 0;
  }

  AGX::Impl::FragmentProgramKey::FragmentProgramKey(v140, &v143);
  v140[0] = &unk_2A23F7CF0;
  v141 = v158;
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(&v143);
  ReflectionKey::initGPUCompilerSPIOptionsHash(&__b, [a2 gpuCompilerSPIOptions]);
  v177 = __b;
  v178 = *v198;
  CompileOptions = AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(a8, a4 | 3, &v177);
  v223[0] = 0;
  VariantEntry = AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a8, v140, v223, CompileOptions, (a5 | a6) != 0);
  v101 = VariantEntry;
  v102 = a13;
  v103 = a11;
  v104 = &xmmword_29D2F2000;
  if (v223[0] == 1)
  {
    v105 = [objc_msgSend(a2 "pipelineLibrary")];
    v106 = [a2 pipelineLibrary];
    if ([v106 pipelineCache] && (objc_msgSend(v106, "disableRunTimeCompilation") & 1) != 0 || (v107 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v107)
    {
      LOBYTE(v108) = 1;
    }

    else
    {
      v108 = (a4 >> 34) & 1;
    }

    if (a6)
    {
      v110 = 1;
    }

    else
    {
      v110 = v108;
    }

    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v132 = v110;
    v137 = CompileOptions;
    v111 = [a2 openGLModeEnabled];
    v112 = objc_opt_new();
    v113 = v112;
    if (v111)
    {
      v114 = 0;
    }

    else
    {
      v114 = *(a1 + 24);
    }

    [v112 setUseAIRNTInterfaces:v114 & 1];
    [v113 setSync:a11 ^ 1u];
    [v113 setFunction:v127];
    [v113 setFrameworkData:a10];
    [v113 setPipelineCache:v105];
    [v113 setDestinationBinaryArchive:a5];
    [v113 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v113 setPipelineOptions:a4 | 3];
    if ((a4 & 0x330003) == 0)
    {
      [v113 setPipelineOptions:{objc_msgSend(v113, "pipelineOptions") | 0x8000}];
    }

    v115 = [a2 newPipelineScript];
    if (v115)
    {
      [v113 setAirScript:v115];
      dispatch_release(v115);
    }

    [v113 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v116 = [a2 fragmentLinkedFunctions];
    [v113 setVisibleFunctions:{objc_msgSend(v116, "functions")}];
    [v113 setVisibleFunctionGroups:{objc_msgSend(v116, "groups")}];
    [v113 setPrivateVisibleFunctions:{objc_msgSend(v116, "privateFunctions")}];
    LOBYTE(v143) = 0;
    *&v144 = 0;
    *(&v143 + 1) = 0;
    *&v145 = 0;
    v147 = 0uLL;
    *(&v149 + 1) = 0;
    v117 = [a2 maxFragmentCallStackDepth];
    v118 = [a2 fragmentLinkedFunctions];
    v119 = [a2 supportIndirectCommandBuffers];
    v120 = [a2 supportAddingFragmentBinaryFunctions];
    v121 = [a2 gpuCompilerSPIOptions];
    v122 = [a3 requiresRaytracingEmulation];
    BYTE8(v145) = v122;
    *&v146 = v117;
    *(&v146 + 1) = v118;
    *&v148 = a4;
    *(&v148 + 1) = a7;
    *&v149 = a3;
    LOBYTE(v150) = v119;
    BYTE1(v150) = v120;
    *(&v150 + 1) = v121;
    if (a6)
    {
      v123 = *a6;
      v124 = *(a6 + 16);
      LOBYTE(v143) = 1;
      *(&v143 + 1) = v123;
      *&v144 = v124;
      *(&v144 + 1) = 2;
    }

    *&v145 = a12;
    v172[0] = MEMORY[0x29EDCA5F8];
    v104 = &xmmword_29D2F2000;
    v172[1] = 3321888768;
    v172[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2;
    v172[3] = &unk_2A23F6DF8;
    v172[7] = v142;
    v172[4] = v127;
    v103 = a11;
    v174 = a11;
    v172[8] = a1;
    v172[9] = v101;
    AGX::Impl::FragmentProgramKey::FragmentProgramKey(v173, v140);
    v173[0] = &unk_2A23F7CF0;
    v173[35] = v141;
    v173[36] = a8;
    v173[37] = v137;
    v175 = v177;
    v176 = v178;
    v172[5] = a3;
    v172[6] = a2;
    v138[0] = MEMORY[0x29EDCA5F8];
    v138[1] = 3221225472;
    v138[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_3;
    v138[3] = &unk_29F341608;
    v138[4] = v172;
    v138[5] = v101;
    v139 = v132;
    v102 = a13;
    if ((v122 & 1) == 0 && AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v118))
    {
      v200[0] = v147;
      v200[1] = v148;
      v200[2] = v149;
      v200[3] = v150;
      __b = v143;
      *v198 = v144;
      *&v198[16] = v145;
      v199 = v146;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::FragmentProgramKey,true>(a1, v140, v113, &__b, v138);
    }

    else
    {
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::FragmentProgramKey>(a1, v140, v113, &v143, v138);
    }

    AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v173);
  }

  else if ((CompileOptions & 0x330003) != 0)
  {
    v109 = *a1;
    v169[0] = MEMORY[0x29EDCA5F8];
    v169[1] = 3221225472;
    v169[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_4;
    v169[3] = &unk_29F341630;
    v170 = v177;
    v171 = v178;
    v169[5] = a8;
    v169[4] = a3;
    v169[6] = CompileOptions;
    v169[7] = VariantEntry;
    [*v109 reflectionWithFunction:v127 options:CompileOptions & 0x330003 sync:a11 ^ 1u completionHandler:v169];
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = *(v104 + 282);
  v160 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_5;
  v161 = &unk_2A23F6E30;
  v164 = v101;
  v165 = a8;
  AGX::Impl::FragmentProgramKey::FragmentProgramKey(v166, v140);
  v166[0] = &unk_2A23F7CF0;
  v166[35] = v141;
  v167 = v177;
  v168 = v178;
  v162 = v102;
  v163 = v142;
  v125 = *v101;
  if (v103)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v125, global_queue, block);
  }

  else
  {
    dispatch_group_wait(*v101, 0xFFFFFFFFFFFFFFFFLL);
    v160(block);
  }

  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v166);
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v140);
  _Block_object_dispose(v142, 8);
}

void sub_29CC97320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x7E0];
  if (STACK[0x7E0])
  {
    STACK[0x7E8] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x348];
  if (STACK[0x348])
  {
    STACK[0x350] = v74;
    operator delete(v74);
  }

  std::unique_ptr<AGX::PipelineScript>::~unique_ptr[abi:nn200100](&STACK[0x700]);
  _Block_object_dispose(&a72, 8);
  _Unwind_Resume(a1);
}

unint64_t AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 & 0x330003;
  if ((a2 & 0x330003) != 0)
  {
    os_unfair_lock_lock((a1 + 1688));
    v7 = *(a1 + 1648);
    v8 = *(a1 + 1656);
    v9 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v7, *(a1 + 1656), a3);
    if (!v9)
    {
      if (v8 == 4)
      {
        operator new();
      }

      v10 = &v7[4 * v8];
      v11 = *(a3 + 16);
      *v10 = *a3;
      v10[1] = v11;
      v12 = *(a1 + 1656);
      v13 = *(a1 + 1648) + 24 * v12;
      *(a1 + 1656) = v12 + 1;
      v9 = (v13 + 128);
    }

    if ((v4 & ~v9[1]) != 0)
    {
      v14 = *v9 | v4;
      *v9 = v14;
    }

    else
    {
      v14 = 0;
    }

    os_unfair_lock_unlock((a1 + 1688));
  }

  else
  {
    v14 = 0;
  }

  return v14 | a2 & 0xFFFFFFFFFFCCFFFCLL;
}

uint64_t AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(os_unfair_lock_s *a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5)
{
  *a3 = 0;
  if ((a4 & 0x400000004) != 0 || a5)
  {
    operator new();
  }

  v7 = a4;
  os_unfair_lock_lock(a1 + 422);
  v9 = VectorMap<AGX::FragmentProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::FragmentProgramVariant>,4u>::operator[](a1, a2);
  if (!*v9)
  {
    v11 = dispatch_group_create();
    *v9 = v11;
LABEL_10:
    dispatch_group_enter(v11);
    *a3 = 1;
    goto LABEL_13;
  }

  if (*(v9 + 40) == 1)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(v9 + 8) = 0;
    *(v9 + 16) = 0;

    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    v11 = *v9;
    goto LABEL_10;
  }

  if ((*&v7 & 0x330003) != 0)
  {
    dispatch_group_enter(*v9);
  }

LABEL_13:
  os_unfair_lock_unlock(a1 + 422);
  return v9;
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, _BYTE *a6)
{
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(MEMORY[0x29EDB8E00]);
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillCompilePerformanceStatisticsDictionary(*a3, *(a3 + 8), *(*(*(a1 + 56) + 8) + 40), *(a3 + 56), [*(a1 + 32) name], *(a1 + 384));
  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    v12 = [v11 objectForKey:*MEMORY[0x29EDBB378]];
    if (v12)
    {
      [v12 unsignedLongLongValue];
    }
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  *a4 = *(a3 + 40);
  *a5 = *(a3 + 48);
  *a6 = 0;
  v13 = *a4;
  if (!*a4)
  {
    if (*(a1 + 304) == 1 && (AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::isShaderExecuteIndirectCompatible(a2, 0) & 1) == 0)
    {
      *a4 = 2;
      *a5 = @"Fragment shader cannot be used with indirect command buffers";
      *a6 = 1;
      v13 = *a4;
    }

    else
    {
      v13 = 0;
    }
  }

  AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 368), *(a1 + 376), *(a3 + 16), a1 + 385, v13);
  if (!*a4)
  {
    [*(a1 + 48) needsCustomBorderColorSamplers];
    v14 = [*(a1 + 48) profileControl];
    if (v14)
    {
      v15 = v14;
      [v14 uscCliqueTraceLevel];
      [v15 uscEmitPosition];
      [v15 uscEmitThreadControlFlow];
    }

    operator new();
  }

  return 0;
}

void sub_29CC97BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  if (*(v7 - 137) < 0)
  {
    operator delete(*(v7 - 160));
  }

  MEMORY[0x29ED520D0](v6, 0x10F3C400360FEC6);
  _Unwind_Resume(a1);
}

AGX::Impl::FragmentProgramKey *AGX::Impl::FragmentProgramKey::FragmentProgramKey(AGX::Impl::FragmentProgramKey *this, const AGX::Impl::FragmentProgramKey *a2)
{
  *this = &unk_2A23FA890;
  *(this + 2) = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *this = &unk_2A23FA788;
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 56) = v7;
  *(this + 40) = v6;
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  *(this + 120) = v10;
  *(this + 104) = v9;
  *(this + 88) = v8;
  if ((*(a2 + 175) & 0x80000000) == 0)
  {
    v11 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v11;
    if ((*(a2 + 199) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
    if ((*(a2 + 223) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  if (*(a2 + 199) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v12 = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 11) = v12;
  if ((*(a2 + 223) & 0x80000000) == 0)
  {
LABEL_7:
    v13 = *(a2 + 200);
    *(this + 27) = *(a2 + 27);
    *(this + 200) = v13;
    goto LABEL_11;
  }

LABEL_10:
  std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
LABEL_11:
  v14 = *(a2 + 224);
  *(this + 29) = 0;
  *(this + 224) = v14;
  *(this + 30) = 0;
  *(this + 31) = 0;
  v16 = *(a2 + 29);
  v15 = *(a2 + 30);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_18;
  }

  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  v18 = *(a2 + 32);
  v17 = *(a2 + 33);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_18:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return this;
}

void sub_29CC97E58(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 240) = v5;
    operator delete(v5);
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  AGX::FragmentProgramVaryings::~FragmentProgramVaryings((v1 + 152));
  *v1 = v2;
  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (v7 + 592);
  if (v7)
  {
    v9 = v8 == a4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    std::vector<AGX::HAL300::IntersectionProgramVariantSet *>::__assign_with_size[abi:nn200100]<AGX::HAL300::IntersectionProgramVariantSet **,AGX::HAL300::IntersectionProgramVariantSet **>(v8, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  }

  v10 = *(a1 + 40);
  v11 = *(a3 + 32);
  v12 = *(a1 + 48);
  *(v10 + 8) = v7;
  *(v10 + 16) = 0;

  *(v10 + 24) = [0 copy];
  if (*(v10 + 8))
  {

    *(v10 + 32) = v11;
  }

  else
  {
    *(v10 + 40) = v12 & 1;
  }

  dispatch_group_leave(*v10);
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::FragmentProgramKey,true>(void *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, _OWORD *a4, uint64_t a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v8 = a4[3];
  v39 = a4[4];
  v9 = a4[6];
  v40 = a4[5];
  v41 = v9;
  v42 = a4[7];
  v10 = a4[1];
  v35 = *a4;
  v11 = a4[2];
  v36 = v10;
  v37 = v11;
  v30 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_18FragmentProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke;
  v31 = &unk_29F341658;
  v33 = a5;
  v34 = a1;
  v38 = v8;
  v32 = a3;
  if (*a4 == 1)
  {
    v12 = [a3 airScript];
    v50 = 0uLL;
    *&v51 = 0;
    *&v50 = dispatch_data_create_map(v12, &v50 + 1, &v51);
    ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
    dispatch_release(v50);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCReplyArray>(a4, &v54, &v28);
  }

  else
  {
    v13 = *a1;
    v14 = *(a4 + 4);
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 3221225472;
    v45 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v46 = &unk_29F342280;
    v47 = &v28;
    v15 = *(v13 + 24);
    if (v15 && *(v15 + 120) == 1)
    {
      v16 = [objc_msgSend(a3 binaryArchives];
      v17 = 0x200000000000;
      if (!v16)
      {
        v17 = 1;
      }

      atomic_fetch_or(v15, v17);
      v18 = *(v13 + 24);
      v19 = [a3 destinationBinaryArchive];
      v20 = 0x400000000000;
      if (!v19)
      {
        v20 = 1;
      }

      atomic_fetch_or(v18, v20);
    }

    if ([a3 destinationBinaryArchive])
    {
      {
        AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
      }

      if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
      {
        [a3 setUseAIRNTInterfaces:0];
      }
    }

    v48 = 0;
    v49 = 0;
    ((*a2)[2])(a2, &v49, &v48);
    v21 = dispatch_data_create(v49, v48, 0, 0);
    [a3 setDriverKeyData:v21];
    if ([a3 airScript])
    {
      v22 = [a3 airScript];
      v50 = 0uLL;
      *&v51 = 0;
      *&v50 = dispatch_data_create_map(v22, &v50 + 1, &v51);
      ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
      dispatch_release(v50);
      v50 = v54;
      v51 = v55;
      [a3 setVendorPluginFunctionId:&v50];
    }

    *&v54 = MEMORY[0x29EDCA5F8];
    *(&v54 + 1) = 3221225472;
    *&v55 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v55 + 1) = &unk_29F3422D0;
    v56 = a3;
    v57 = &v43;
    if ([a3 function])
    {
      v23 = mach_absolute_time();
      v24 = *v13;
      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v51 + 1) = &unk_29F342320;
      v52 = &v54;
      v53 = v23;
      [v24 compileFunctionRequest:a3 compilerTask:v14 completionHandler:&v50];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v51 + 1) = &unk_29F3422F8;
      v52 = &v54;
      v25 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v26 = *v13;
      v27 = [a3 driverKeyData];
      if (v25)
      {
        [v26 compileRequest:v27 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), &v50}];
      }

      else
      {
        [v26 compileRequest:v27 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), &v50}];
      }
    }

    dispatch_release(v21);
  }
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::FragmentProgramKey>(uint64_t *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v24 = MEMORY[0x29EDCA5F8];
  v25 = 3221225472;
  v26 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileFunction_ImplINS_18FragmentProgramKeyEEEvRKT_P29MTLCompileFunctionRequestDataRKNS5_21DriverRequestDataImplILb1EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplILb1EEEE_block_invoke;
  v27 = &unk_29F341710;
  v28 = a5;
  if (*a4 == 1)
  {
    v8 = [a3 airScript];
    object[0] = 0;
    object[1] = 0;
    *&v37 = 0;
    object[0] = dispatch_data_create_map(v8, &object[1], &v37);
    ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v40, (object[1] + object[1]->isa));
    dispatch_release(object[0]);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCDeserializedReply>(a4, &v40, &v24);
  }

  else
  {
    v9 = *a1;
    v10 = *(a4 + 32);
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 3221225472;
    v31 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v32 = &unk_29F342280;
    v33 = &v24;
    v11 = *(v9 + 24);
    if (v11 && *(v11 + 120) == 1)
    {
      v12 = [objc_msgSend(a3 binaryArchives];
      v13 = 0x200000000000;
      if (!v12)
      {
        v13 = 1;
      }

      atomic_fetch_or(v11, v13);
      v14 = *(v9 + 24);
      v15 = [a3 destinationBinaryArchive];
      v16 = 0x400000000000;
      if (!v15)
      {
        v16 = 1;
      }

      atomic_fetch_or(v14, v16);
    }

    if ([a3 destinationBinaryArchive])
    {
      {
        AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
      }

      if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
      {
        [a3 setUseAIRNTInterfaces:0];
      }
    }

    v34 = 0;
    v35 = 0;
    ((*a2)[2])(a2, &v35, &v34);
    v17 = dispatch_data_create(v35, v34, 0, 0);
    [a3 setDriverKeyData:v17];
    if ([a3 airScript])
    {
      v18 = [a3 airScript];
      object[0] = 0;
      object[1] = 0;
      *&v37 = 0;
      object[0] = dispatch_data_create_map(v18, &object[1], &v37);
      ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v40, (object[1] + object[1]->isa));
      dispatch_release(object[0]);
      *object = v40;
      v37 = v41;
      [a3 setVendorPluginFunctionId:object];
    }

    *&v40 = MEMORY[0x29EDCA5F8];
    *(&v40 + 1) = 3221225472;
    *&v41 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v41 + 1) = &unk_29F3422D0;
    v42 = a3;
    v43 = &v29;
    if ([a3 function])
    {
      v19 = mach_absolute_time();
      v20 = *v9;
      object[0] = MEMORY[0x29EDCA5F8];
      object[1] = 3221225472;
      *&v37 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v37 + 1) = &unk_29F342320;
      v38 = &v40;
      v39 = v19;
      [v20 compileFunctionRequest:a3 compilerTask:v10 completionHandler:object];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      object[0] = MEMORY[0x29EDCA5F8];
      object[1] = 3221225472;
      *&v37 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v37 + 1) = &unk_29F3422F8;
      v38 = &v40;
      v21 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v22 = *v9;
      v23 = [a3 driverKeyData];
      if (v21)
      {
        [v22 compileRequest:v23 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), object}];
      }

      else
      {
        [v22 compileRequest:v23 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), object}];
      }
    }

    dispatch_release(v17);
  }
}