uint64_t DspLib::balanceMatrix(DspLib *this, double *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  __lda = a2;
  *__ilo = 0xFFFFFFFEFFFFFFFFLL;
  __job = 83;
  MEMORY[0x1EEE9AC00](this);
  HIDWORD(v5) = 0;
  dgebal_(&__job, &__lda, v3, &__lda, __ilo, &__ilo[1], (&v5 - v2), &v5 + 1);
  return *__ilo;
}

uint64_t DspLib::partitionRealRootToEnd(DspLib *this, DSPDoubleSplitComplex a2)
{
  v2 = a2.imagp - 1;
  if (a2.imagp - 1 < 0)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = 8 * a2.imagp - 8;
  v7 = (a2.realp + v6);
  v8 = (this + v6);
  do
  {
    if (a2.realp[v2] == 0.0)
    {
      if (v2 < a2.imagp - result - 1)
      {
        v9 = result + v4;
        v10 = v8;
        v11 = v7;
        do
        {
          *v10 = vextq_s8(*v10, *v10, 8uLL);
          v10 = (v10 + 8);
          *v11 = vextq_s8(*v11, *v11, 8uLL);
          v11 = (v11 + 8);
        }

        while (!__CFADD__(v9++, 1));
      }

      ++result;
    }

    v7 = (v7 - 8);
    --v4;
    v8 = (v8 - 8);
  }

  while (v2-- > 0);
  return result;
}

void std::vector<DspLib::Biquad::SDomainSection>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      do
      {
        *v4 = xmmword_1DE095670;
        *(v4 + 16) = 0;
        v4 += 24;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<DspLib::Biquad::SDomainSection>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * v6 + 24 * a2;
    v13 = v11;
    do
    {
      *v13 = xmmword_1DE095670;
      *(v13 + 16) = 0;
      v13 += 24;
    }

    while (v13 != v12);
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

DspLib::PeakPowerGuard::Algorithm *DspLib::PeakPowerGuard::Algorithm::Algorithm(DspLib::PeakPowerGuard::Algorithm *this)
{
  v2 = (this + 260);
  v3 = DspLib::AlgorithmBase::AlgorithmBase(this, &_ZGRN6DspLib14PeakPowerGuard10ParametersL8kDefaultE_, 0x2FuLL, &_ZGRN6DspLib14PeakPowerGuard10ParametersL8kMinimumE_, 47, &_ZGRN6DspLib14PeakPowerGuard10ParametersL8kMaximumE_, 47);
  *v3 = &unk_1F5919900;
  *(v3 + 240) = 1;
  *(v3 + 252) = 0;
  *(v3 + 244) = 0;
  *v2 = xmmword_1DE095F80;
  *(v3 + 276) = 1065353216;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = xmmword_1DE095F90;
  *(v3 + 320) = 1065353216;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0;
  *(v3 + 336) = 0;
  *(v3 + 360) = DspLib::AudioMeter::Parameters::kDefault;
  *(v3 + 376) = *algn_1DE095D84;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((v3 + 488), 0, 0);
  *(this + 134) = 0;
  *(this + 68) = 0;
  *(this + 552) = DspLib::AudioMeter::Parameters::kDefault;
  *(this + 568) = *algn_1DE095D84;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 680), 0, 0);
  *(this + 182) = 0;
  *(this + 92) = 0;
  *(this + 744) = DspLib::AudioMeter::Parameters::kDefault;
  *(this + 760) = *algn_1DE095D84;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 872), 0, 0);
  *(this + 230) = 0;
  *(this + 116) = 0;
  *(this + 936) = DspLib::AudioMeter::Parameters::kDefault;
  *(this + 952) = *algn_1DE095D84;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 1064), 0, 0);
  *(this + 278) = 0;
  *(this + 140) = 0;
  *(this + 1128) = DspLib::AudioMeter::Parameters::kDefault;
  *(this + 1144) = *algn_1DE095D84;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 1256), 0, 0);
  *(this + 326) = 0;
  *(this + 164) = 0;
  *(this + 1320) = DspLib::AudioMeter::Parameters::kDefault;
  *(this + 1336) = *algn_1DE095D84;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 1384) = 0u;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 1432) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 1448), 0, 0);
  *(this + 374) = 0;
  *(this + 188) = 0;
  *(this + 1512) = DspLib::AudioMeter::Parameters::kDefault;
  *(this + 1528) = *algn_1DE095D84;
  *(this + 1544) = 0u;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 1592) = 0u;
  *(this + 1608) = 0u;
  *(this + 1624) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 1640), 0, 0);
  *(this + 422) = 0;
  *(this + 106) = 0u;
  *(this + 107) = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 108) = _Q0;
  *(this + 109) = _Q0;
  *(this + 440) = 1065353216;
  *(this + 111) = _Q0;
  *(this + 224) = 0;
  *(this + 450) = 0;
  *(this + 113) = 0u;
  *(this + 114) = 0u;
  *(this + 115) = _Q0;
  *(this + 116) = _Q0;
  *(this + 468) = 1065353216;
  *(this + 118) = _Q0;
  *(this + 267) = 0;
  *(this + 536) = 0;
  *(this + 2113) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  *(this + 1992) = 0u;
  *(this + 2008) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 269) = 1;
  *(this + 540) = 1;
  *(this + 282) = 0;
  *(this + 140) = 0u;
  *(this + 2168) = 0u;
  *(this + 2184) = 0u;
  *(this + 2200) = 0u;
  *(this + 2216) = 0u;
  *(this + 558) = 0;
  *(v2 + 2004) = xmmword_1DE095FA0;
  *(v2 + 2020) = xmmword_1DE095FA0;
  *(this + 574) = 1;
  *(this + 144) = 0u;
  *(this + 145) = 0u;
  *(this + 146) = 0u;
  *(this + 147) = 0u;
  *(this + 592) = 0;
  *(this + 2968) = 0u;
  *(this + 2984) = 0u;
  *(this + 2936) = 0u;
  *(this + 2952) = 0u;
  *(this + 2904) = 0u;
  *(this + 2920) = 0u;
  *(this + 2792) = 0;
  *(this + 2760) = 0u;
  *(this + 2776) = 0u;
  *(this + 2728) = 0u;
  *(this + 2744) = 0u;
  *(this + 2696) = 0u;
  *(this + 2712) = 0u;
  *(this + 2664) = 0u;
  *(this + 2680) = 0u;
  *(this + 2632) = 0u;
  *(this + 2648) = 0u;
  *(this + 2600) = 0u;
  *(this + 2616) = 0u;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 2536) = 0u;
  *(this + 2552) = 0u;
  *(this + 2504) = 0u;
  *(this + 2520) = 0u;
  *(this + 2472) = 0u;
  *(this + 2488) = 0u;
  *(this + 2440) = 0u;
  *(this + 2456) = 0u;
  *(this + 2408) = 0u;
  *(this + 2424) = 0u;
  *(this + 2376) = 0u;
  *(this + 2392) = 0u;
  *(this + 2896) = 0;
  *(this + 180) = 0u;
  *(this + 179) = 0u;
  *(this + 178) = 0u;
  *(this + 177) = 0u;
  *(this + 176) = 0u;
  *(this + 175) = 0u;
  return this;
}

void sub_1DDBB9408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v8 = v6[202];
  if (v8)
  {
    v6[203] = v8;
    operator delete(v8);
  }

  v9 = v6[199];
  if (v9)
  {
    v6[200] = v9;
    operator delete(v9);
  }

  v10 = v6[196];
  if (v10)
  {
    v6[197] = v10;
    operator delete(v10);
  }

  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](va);
  DspLib::AudioMeter::Algorithm::~Algorithm((v6 + 164));
  DspLib::AudioMeter::Algorithm::~Algorithm((v6 + 140));
  DspLib::AudioMeter::Algorithm::~Algorithm((v6 + 116));
  DspLib::AudioMeter::Algorithm::~Algorithm((v6 + 92));
  DspLib::AudioMeter::Algorithm::~Algorithm((v6 + 68));
  DspLib::AudioMeter::Algorithm::~Algorithm((v6 + 44));
  DspLib::AlgorithmBase::~AlgorithmBase(v6);
  _Unwind_Resume(a1);
}

void sub_1DDBB9598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v6 = v5[82];
  if (v6)
  {
    v5[83] = v6;
    operator delete(v6);
  }

  v7 = v5[79];
  if (v7)
  {
    v5[80] = v7;
    operator delete(v7);
  }

  v8 = v5[76];
  if (v8)
  {
    v5[77] = v8;
    operator delete(v8);
  }

  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x1DDBB9580);
}

void sub_1DDBB95DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v6 = v5[58];
  if (v6)
  {
    v5[59] = v6;
    operator delete(v6);
  }

  v7 = v5[55];
  if (v7)
  {
    v5[56] = v7;
    operator delete(v7);
  }

  v8 = v5[52];
  if (v8)
  {
    v5[53] = v8;
    operator delete(v8);
  }

  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x1DDBB9588);
}

void DspLib::AudioMeter::Algorithm::~Algorithm(DspLib::AudioMeter::Algorithm *this)
{
  DspLib::ChannelBuffer::~ChannelBuffer((this + 136));
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = (this + 40);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t DspLib::PeakPowerGuard::Algorithm::initialize(DspLib::PeakPowerGuard::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    *(this + 8) = 1;
    std::vector<std::vector<float>>::resize(this + 276, 1uLL);
    std::vector<std::vector<float>>::resize(this + 293, 1uLL);
    for (i = 1928; i != 2000; i += 24)
    {
      v6 = (*(*this + 232))(this);
      std::vector<float>::resize((this + i), v6);
    }

    do
    {
      v7 = (*(*this + 232))(this);
      std::vector<float>::resize((this + i), v7);
      i += 24;
    }

    while (i != 2096);
    v8 = (*(*this + 232))(this);
    DspLib::FIR::initialize((this + 2400), *(this + 301), *(this + 304), v8);
    v9 = (*(*this + 64))(this);
    std::vector<DspLib::CircularDelay>::resize(this + 346, v9);
    v10 = (*(*this + 48))(this);
    DspLib::Biquad::ParametricFilter::initialize((this + 2792), 1uLL, v10, 1uLL);
    v11 = (*(*this + 48))(this);
    DspLib::Biquad::ParametricFilter::initialize((this + 2896), 1uLL, v11, 1uLL);
    (*(*this + 160))(this);
    (*(*this + 168))(this);
  }

  return v4;
}

void DspLib::PeakPowerGuard::Algorithm::uninitialize(DspLib::PeakPowerGuard::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  DspLib::AudioMeter::Algorithm::uninitialize((this + 352));
  DspLib::AudioMeter::Algorithm::uninitialize((this + 544));
  DspLib::AudioMeter::Algorithm::uninitialize((this + 736));
  DspLib::AudioMeter::Algorithm::uninitialize((this + 928));
  DspLib::AudioMeter::Algorithm::uninitialize((this + 1120));
  DspLib::AudioMeter::Algorithm::uninitialize((this + 1312));
  DspLib::AudioMeter::Algorithm::uninitialize((this + 1504));
  v2 = (this + 1936);
  v3 = 72;
  do
  {
    *v2 = *(v2 - 1);
    v2 += 3;
    v3 -= 24;
  }

  while (v3);
  v4 = (this + 2008);
  v5 = 96;
  do
  {
    *v4 = *(v4 - 1);
    v4 += 3;
    v5 -= 24;
  }

  while (v5);
  std::vector<std::vector<float>>::resize(this + 276, 0);
  std::vector<std::vector<float>>::resize(this + 293, 0);
  DspLib::FIR::uninitialize(this + 300);
  DspLib::MultiMovingAverage::setLengths(this + 308, 0, 0);
  v6 = (this + 2528);
  v7 = 96;
  do
  {
    *v6 = *(v6 - 1);
    v6 += 3;
    v7 -= 24;
  }

  while (v7);
  DspLib::MultiMovingAverage::setLengths(this + 327, 0, 0);
  v8 = (this + 2680);
  v9 = 96;
  do
  {
    *v8 = *(v8 - 1);
    v8 += 3;
    v9 -= 24;
  }

  while (v9);
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 346);
  DspLib::Biquad::ParametricFilter::uninitialize((this + 2792));

  DspLib::Biquad::ParametricFilter::uninitialize((this + 2896));
}

void DspLib::PeakPowerGuard::Algorithm::reset(DspLib::PeakPowerGuard::Algorithm *this)
{
  if (*(this + 8))
  {
    DspLib::AudioMeter::Algorithm::reset((this + 352));
    DspLib::AudioMeter::Algorithm::reset((this + 544));
    DspLib::AudioMeter::Algorithm::reset((this + 736));
    DspLib::AudioMeter::Algorithm::reset((this + 928));
    DspLib::AudioMeter::Algorithm::reset((this + 1120));
    DspLib::AudioMeter::Algorithm::reset((this + 1312));
    DspLib::AudioMeter::Algorithm::reset((this + 1504));
    DspLib::clear(this + 428, 4uLL);
    DspLib::clear(this + 424, 4uLL);
    DspLib::fill(this + 432, 4uLL, 1.0);
    DspLib::fill(this + 436, 4uLL, 1.0);
    DspLib::fill(this + 444, 4uLL, 1.0);
    *(this + 440) = 1065353216;
    *(this + 224) = 0;
    *(this + 450) = 0;
    DspLib::clear(this + 452, 4uLL);
    DspLib::clear(this + 456, 4uLL);
    DspLib::fill(this + 460, 4uLL, 1.0);
    DspLib::fill(this + 464, 4uLL, 1.0);
    DspLib::fill(this + 472, 4uLL, 1.0);
    *(this + 468) = 1065353216;
    *(this + 68) = 1065353216;
    *(this + 80) = 1065353216;
    *(this + 567) = 0;
    *(this + 569) = 0;
    *(this + 571) = 0;
    *(this + 573) = 0;
    *(this + 539) = 0;
    v2 = *(this + 276);
    v3 = *(this + 277);
    while (v2 != v3)
    {
      v4 = *(v2 + 8);
      if (*v2 != v4)
      {
        bzero(*v2, v4 - *v2);
      }

      v2 += 24;
    }

    *(this + 558) = 0;
    v5 = *(this + 293);
    v6 = *(this + 294);
    while (v5 != v6)
    {
      v7 = *(v5 + 8);
      if (*v5 != v7)
      {
        bzero(*v5, v7 - *v5);
      }

      v5 += 24;
    }

    *(this + 592) = 0;
    DspLib::clear(*(this + 305), (*(this + 306) - *(this + 305)) >> 2);
    DspLib::Biquad::SetupWrapper::reset((this + 2840));
    DspLib::Biquad::SetupWrapper::reset((this + 2944));
    v8 = *(this + 308);
    v9 = *(this + 309);
    if (v8 != v9)
    {
      v10 = 0;
      v11 = (v9 - v8 - 16) >> 4;
      v12 = vdupq_n_s64(v11);
      v13 = (v8 + 40);
      do
      {
        v14 = vdupq_n_s64(v10);
        v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1DE095160)));
        if (vuzp1_s16(v15, *v12.i8).u8[0])
        {
          *(v13 - 8) = 0;
        }

        if (vuzp1_s16(v15, *&v12).i8[2])
        {
          *(v13 - 4) = 0;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1DE095150)))).i32[1])
        {
          *v13 = 0;
          v13[4] = 0;
        }

        v10 += 4;
        v13 += 16;
      }

      while (((v11 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v10);
    }

    DspLib::CircularDelay::reset((this + 2488));
    v16 = *(this + 327);
    v17 = *(this + 328);
    if (v16 != v17)
    {
      v18 = 0;
      v19 = (v17 - v16 - 16) >> 4;
      v20 = vdupq_n_s64(v19);
      v21 = (v16 + 40);
      do
      {
        v22 = vdupq_n_s64(v18);
        v23 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_1DE095160)));
        if (vuzp1_s16(v23, *v20.i8).u8[0])
        {
          *(v21 - 8) = 0;
        }

        if (vuzp1_s16(v23, *&v20).i8[2])
        {
          *(v21 - 4) = 0;
        }

        if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_1DE095150)))).i32[1])
        {
          *v21 = 0;
          v21[4] = 0;
        }

        v18 += 4;
        v21 += 16;
      }

      while (((v19 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v18);
    }

    DspLib::CircularDelay::reset((this + 2640));
    v24 = *(this + 346);
    v25 = *(this + 347);
    while (v24 != v25)
    {
      DspLib::CircularDelay::reset(v24);
      v24 = (v24 + 32);
    }
  }

  else
  {
    DspLib::PeakPowerGuard::Algorithm::reset();
  }
}

void DspLib::PeakPowerGuard::Algorithm::setMeteringIsEnabled(DspLib::PeakPowerGuard::Algorithm *this, char a2)
{
  if ((*(*this + 40))(this))
  {
    *(this + 96) = a2;
    if ((*(*this + 208))(this))
    {
      v4 = (*(*this + 64))(this);
      v5 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 352), v4, v5);
      v6 = (*(*this + 64))(this);
      v7 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 544), v6, v7);
      v8 = roundf(*(this + 62));
      DspLib::AudioMeter::Algorithm::initialize((this + 736), 1u, v8);
      DspLib::AudioMeter::Algorithm::initialize((this + 928), 1u, v8);
      DspLib::AudioMeter::Algorithm::initialize((this + 1120), 1u, v8);
      DspLib::AudioMeter::Algorithm::initialize((this + 1312), 1u, v8);
      DspLib::AudioMeter::Algorithm::initialize((this + 1504), 1u, v8);
      v9 = *(this + 3);
      DspLib::AudioMeter::Algorithm::setParameters(this + 352, v9);
      DspLib::AudioMeter::Algorithm::setParameters(this + 544, v9);
      DspLib::AudioMeter::Algorithm::setParameters(this + 736, v9);
      DspLib::AudioMeter::Algorithm::setParameters(this + 928, v9);
      DspLib::AudioMeter::Algorithm::setParameters(this + 1120, v9);
      DspLib::AudioMeter::Algorithm::setParameters(this + 1312, v9);

      DspLib::AudioMeter::Algorithm::setParameters(this + 1504, v9);
    }

    else
    {
      DspLib::AudioMeter::Algorithm::uninitialize((this + 352));
      DspLib::AudioMeter::Algorithm::uninitialize((this + 544));
      DspLib::AudioMeter::Algorithm::uninitialize((this + 736));
      DspLib::AudioMeter::Algorithm::uninitialize((this + 928));
      DspLib::AudioMeter::Algorithm::uninitialize((this + 1120));
      DspLib::AudioMeter::Algorithm::uninitialize((this + 1312));

      DspLib::AudioMeter::Algorithm::uninitialize((this + 1504));
    }
  }

  else
  {
    DspLib::PeakPowerGuard::Algorithm::setMeteringIsEnabled();
  }
}

uint64_t DspLib::PeakPowerGuard::Algorithm::setAdmittanceFilterCoeffSet(const __CFDictionary **this, const __CFDictionary *a2)
{
  if (a2)
  {
    v3 = DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::setCoeffSet(this + 262, a2);
    (*(*this + 20))(this);
    return v3;
  }

  else
  {
    DspLib::PeakPowerGuard::Algorithm::setAdmittanceFilterCoeffSet();
    return 0;
  }
}

void DspLib::PeakPowerGuard::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if (*(a1 + 8) == 1)
  {
    v5 = *(a1 + 24);
    *(a1 + 240) = *(v5 + 32) >= 0.5;
    *(a1 + 276) = *(v5 + 40);
    *(a1 + 280) = *(v5 + 52);
    *(a1 + 324) = *(v5 + 128);
    v6 = 284;
    v7 = 336;
    do
    {
      *(a1 + v6) = *(v5 + v7 - 204) >= 0.5;
      *(a1 + v7 - 48) = *(v5 + v7 - 272);
      *(a1 + v6 + 44) = *(v5 + v7 - 188) >= 0.5;
      *(a1 + v7) = *(v5 + v7 - 256);
      ++v6;
      v7 += 4;
    }

    while (v6 != 288);
    *(a1 + 241) = *(v5 + 56) >= 0.5;
    *(a1 + 1904) = *(v5 + 168);
    *(a1 + 1908) = *(v5 + 172);
    *(a1 + 1912) = *(v5 + 176);
    *(a1 + 1916) = *(v5 + 180);
    *(a1 + 1920) = *(v5 + 184);
    if ((*(*a1 + 208))(a1))
    {
      v8 = *(a1 + 24);
      DspLib::AudioMeter::Algorithm::setParameters(a1 + 352, v8);
      DspLib::AudioMeter::Algorithm::setParameters(a1 + 544, v8);
    }

    v9 = 1.0;
    if (*(a1 + 2128) == 1)
    {
      v10 = *(a1 + 2112);
      v11 = *(a1 + 2104);
      if (v10 == v11)
      {
        v12 = -858993459 * ((v10 - v11) >> 3) - 1;
      }

      else
      {
        v12 = 0;
      }

      *(a1 + 2144) = v12;
      v13 = DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::filterCoefficientsForTemperature((a1 + 2096), *(*(a1 + 24) + 44));
      DspLib::FIR::initialize((a1 + 2400), *v13, (*(v13 + 8) - *v13) >> 2, *(a1 + 2400));
      v14 = *(a1 + 16);
      v9 = roundf(v14 / *(*(a1 + 2104) + 40 * *(a1 + 2144) + 8));
    }

    v15 = *(a1 + 244);
    v16 = v9;
    if (v9 != v15)
    {
      if (v16)
      {
        *(a1 + 2152) = v16;
        *(a1 + 2156) = 0;
      }

      v17 = (a1 + 2268);
      v18 = 32;
      do
      {
        if (v16)
        {
          *(v17 - 1) = v16;
          *v17 = 0;
        }

        v17 += 2;
        v18 -= 8;
      }

      while (v18);
    }

    v19 = *(a1 + 16);
    LODWORD(v20) = vcvtas_u32_f32((*(*(a1 + 24) + 164) / 1000.0) * v19);
    if (v9 != v15 || *(a1 + 252) != v20)
    {
      v20 = v20 <= 1 ? 1 : v20;
      std::vector<float>::vector[abi:ne200100](&__p, 2 * v16 + v20 - 2);
      DspLib::makeLinearInterpolatorAndRaisedCosineCoeffs(__p, (v58 - __p) >> 2, v9, v20);
      v21 = (*(*a1 + 232))(a1);
      DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 2160), v9, ((v21 / v9) + 1.0));
      DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 2160), __p, (v58 - __p) >> 2);
      v22 = (*(*a1 + 232))(a1);
      DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 2296), v9, ((v22 / v9) + 1.0));
      DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 2296), __p, (v58 - __p) >> 2);
      if (__p)
      {
        v58 = __p;
        operator delete(__p);
      }
    }

    DspLib::Biquad::ParametricFilter::setNumberOfStages((a1 + 2792), 1uLL);
    DspLib::Biquad::ParametricFilter::setNumberOfStages((a1 + 2896), 1uLL);
    v23 = (*(*(a1 + 24) + 36) << 32) | 8;
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 2792, v23, 0x3F34FDF400000000, 0, 0x41uLL);
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 2896, v23, 0x3F34FDF400000000, 0, 0x41uLL);
    *(a1 + 264) = DspLib::dB2Amp(v24, *(*(a1 + 24) + 100));
    v25 = *(a1 + 24);
    v26 = *(a1 + 16);
    *(a1 + 268) = 1.0 - expf(-1.0 / ((v25[26] * (v26 / v9)) / 1000.0));
    *(a1 + 260) = 100.0 / v25[12];
    *(a1 + 312) = DspLib::dB2Amp(v27, v25[27]);
    v28 = *(a1 + 24);
    v55 = *(a1 + 16);
    v29 = v55;
    *(a1 + 316) = 1.0 - expf(-1.0 / ((*(v28 + 112) * (v29 / v9)) / 1000.0));
    v30 = (*(v28 + 116) * *(v28 + 116)) / *(v28 + 120);
    *(a1 + 304) = v30;
    *(a1 + 304) = v30 * (100.0 / *(v28 + 124));
    *(a1 + 308) = 100.0 / *(v28 + 96);
    v31 = v55 / v9;
    v32.i32[0] = *(v28 + 60);
    if (*v32.i32 != *(a1 + 256) || *(a1 + 248) != v31)
    {
      v33 = 0;
      *(a1 + 256) = v32.i32[0];
      *(a1 + 248) = v31;
      v34 = roundf(v31);
      v35 = vdup_lane_s32(v32, 0);
      v36 = 0x100000000;
      v37 = vdup_n_s32(0x447A0000u);
      v38 = vdupq_n_s64(0x408F400000000000uLL);
      v39.i64[0] = 0xFFFFFFFFLL;
      v39.i64[1] = 0xFFFFFFFFLL;
      do
      {
        v40 = vdiv_f32(v35, vcvt_f32_u32(vshl_u32(0x100000001, v36)));
        v41 = vcvt_u32_f32(vdiv_f32(vmul_n_f32(v40, v34), v37));
        *&v42 = v41.u32[0];
        *(&v42 + 1) = v41.u32[1];
        *(&__p + v33 * 8) = v42;
        *&v56[v33] = vandq_s8(vcvtq_u64_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_f32(v40), v55), v38)), v39);
        v36 = vadd_s32(v36, 0x200000002);
        v33 += 2;
      }

      while (v33 != 4);
      DspLib::MultiMovingAverage::setLengths((a1 + 2464), &__p, 4uLL);
      DspLib::MultiMovingAverage::setLengths((a1 + 2616), v56, 4uLL);
    }

    for (i = 2672; i != 2768; i += 24)
    {
      v44 = (*(*a1 + 232))(a1);
      std::vector<float>::resize((a1 + i), v44);
    }

    for (j = 2520; j != 2616; j += 24)
    {
      v46 = (*(*a1 + 232))(a1);
      std::vector<float>::resize((a1 + j), ((v46 / v9) + 1.0));
    }

    v47 = *(a1 + 2768);
    v48 = *(a1 + 2776);
    if (v47 != v48)
    {
      v49 = *(a1 + 16);
      LODWORD(v28) = vcvtas_u32_f32((*(*(a1 + 24) + 164) / 1000.0) * v49);
      do
      {
        DspLib::CircularDelay::setLength(v47, v28);
        v47 = (v47 + 32);
      }

      while (v47 != v48);
    }

    *(a1 + 244) = v16;
    *(a1 + 252) = v20;
    if ((*(*a1 + 208))(a1))
    {
      v50 = (*(*a1 + 64))(a1);
      v51 = (*(*a1 + 48))(a1);
      DspLib::AudioMeter::Algorithm::initialize((a1 + 352), v50, v51);
      v52 = (*(*a1 + 64))(a1);
      v53 = (*(*a1 + 48))(a1);
      DspLib::AudioMeter::Algorithm::initialize((a1 + 544), v52, v53);
      v54 = roundf(*(a1 + 248));
      DspLib::AudioMeter::Algorithm::initialize((a1 + 736), 1u, v54);
      DspLib::AudioMeter::Algorithm::initialize((a1 + 928), 1u, v54);
      DspLib::AudioMeter::Algorithm::initialize((a1 + 1120), 1u, v54);
      DspLib::AudioMeter::Algorithm::initialize((a1 + 1312), 1u, v54);
      DspLib::AudioMeter::Algorithm::initialize((a1 + 1504), 1u, v54);
    }

    else
    {
      DspLib::AudioMeter::Algorithm::uninitialize((a1 + 352));
      DspLib::AudioMeter::Algorithm::uninitialize((a1 + 544));
      DspLib::AudioMeter::Algorithm::uninitialize((a1 + 736));
      DspLib::AudioMeter::Algorithm::uninitialize((a1 + 928));
      DspLib::AudioMeter::Algorithm::uninitialize((a1 + 1120));
      DspLib::AudioMeter::Algorithm::uninitialize((a1 + 1312));
      DspLib::AudioMeter::Algorithm::uninitialize((a1 + 1504));
    }
  }
}

void sub_1DDBBA7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::Biquad::ParametricFilter::setNumberOfStages(DspLib::Biquad::ParametricFilter *this, vDSP_Length a2)
{
  if (*this)
  {
    v4 = *(this + 6);
    v5 = *(this + 9);

    DspLib::Biquad::ParametricFilter::initialize(this, v4, v5, a2);
  }

  else
  {
    DspLib::Biquad::ParametricFilter::setNumberOfStages();
  }
}

void DspLib::PeakPowerGuard::Algorithm::wooferInputSideChain(DspLib::PeakPowerGuard::Algorithm *this, const float *a2, float *a3, uint64_t a4, float *a5, uint64_t a6)
{
  v14 = a5;
  v12[0] = &v14;
  v12[1] = 1;
  v13 = a6;
  v10[2] = a4;
  v11 = a2;
  v10[0] = &v11;
  v10[1] = 1;
  DspLib::DownSampler::process(this + 538, v10, v12);
  v9 = v13;
  DspLib::multiply(a5, v13, *(this + 69));
  if ((*(*this + 208))(this))
  {
    DspLib::CPUMeasure::pause((this + 104));
    DspLib::AudioMeter::Algorithm::analyze(this + 736, a5, v9);
    DspLib::CPUMeasure::resume((this + 104));
  }

  if (*(this + 300) && *(this + 304))
  {
    DspLib::FIR::process(this + 300, a5, v9, a3);
  }

  else
  {
    DspLib::copy(a5, v9, a3);
  }

  if ((*(*this + 208))(this))
  {
    DspLib::CPUMeasure::pause((this + 104));
    DspLib::AudioMeter::Algorithm::analyze(this + 928, a3, v9);
    DspLib::CPUMeasure::resume((this + 104));
  }

  DspLib::multiply();
}

uint64_t sub_1DDBBA9A4()
{
  if ((*(*v0 + 208))(v0))
  {
    DspLib::CPUMeasure::pause((v0 + 26));
    DspLib::AudioMeter::Algorithm::analyze((v0 + 280), v1, v2);
    DspLib::CPUMeasure::resume((v0 + 26));
  }

  DspLib::multiply(v1, v2, v0[65]);
  if ((*(*v0 + 208))(v0))
  {
    DspLib::CPUMeasure::pause((v0 + 26));
    DspLib::AudioMeter::Algorithm::analyze((v0 + 328), v1, v2);
    DspLib::CPUMeasure::resume((v0 + 26));
  }

  DspLib::add(v1, v2, v0[70]);
  if ((*(*v0 + 208))(v0))
  {
    DspLib::CPUMeasure::pause((v0 + 26));
    DspLib::AudioMeter::Algorithm::analyze((v0 + 376), v1, v2);
    DspLib::CPUMeasure::resume((v0 + 26));
  }

  return v2;
}

double DspLib::PeakPowerGuard::Algorithm::tweeterInputSideChain(float *a1, uint64_t a2, const float *a3, float *a4)
{
  v7 = *(a2 + 16);
  DspLib::clear(a4, v7);
  if ((*(*a1 + 64))(a1) >= 2)
  {
    DspLib::square();
  }

  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 26));
    a1[448] = DspLib::maxMagnitude(a4, v7);
    DspLib::CPUMeasure::resume((a1 + 26));
  }

  DspLib::multiply(a4, v7, a1[76]);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 26));
    a1[449] = DspLib::maxMagnitude(a4, v7);
    DspLib::CPUMeasure::resume((a1 + 26));
  }

  DspLib::add(a4, v7, a3, a1[81]);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 26));
    a1[450] = DspLib::maxMagnitude(a3, v7);

    *&result = DspLib::CPUMeasure::resume((a1 + 26)).u64[0];
  }

  return result;
}

void DspLib::PeakPowerGuard::Algorithm::computeGains(DspLib::PeakPowerGuard::Algorithm *this, const float *const *a2, float *a3, vDSP_Length a4, const float *const *a5, float *a6, float *__C, float *a8, float *a9, unint64_t a10)
{
  DspLib::fill(__C, a10, 1.0);
  DspLib::fill(a6, a10, 1.0);
  DspLib::copy(*a2, a4, a3);
  if ((*(*this + 208))(this))
  {
    DspLib::CPUMeasure::pause((this + 104));
    *(this + 424) = DspLib::maxMagnitude(a3, a4);
    DspLib::CPUMeasure::resume((this + 104));
  }

  DspLib::copy(*a5, a10, a8);
  v20 = a10;
  v21 = a9;
  v18 = a8;
  v19[0] = &v21;
  v19[1] = 1;
  v17[0] = &v18;
  v17[1] = 1;
  v17[2] = a10;
  DspLib::DownSampler::process(this + 566, v17, v19);
  if (v20 == a4)
  {
    if ((*(*this + 208))(this))
    {
      DspLib::CPUMeasure::pause((this + 104));
      *(this + 452) = DspLib::maxv(a9, a4);
      DspLib::CPUMeasure::resume((this + 104));
    }

    DspLib::multiply(a9, a4, a8, *(this + 77));
    if ((*(*this + 208))(this))
    {
      DspLib::CPUMeasure::pause((this + 104));
      *(this + 456) = DspLib::maxv(a8, a4);
      DspLib::CPUMeasure::resume((this + 104));
    }

    DspLib::add();
  }

  DspLib::PeakPowerGuard::Algorithm::computeGains();
}

float *DspLib::PeakPowerGuard::Algorithm::attackRelease(float *this, float *a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    v4 = 0;
    do
    {
      v5 = a2[v4];
      v6 = this[68];
      if (v5 >= v6)
      {
        v7 = v6 + ((1.0 - v6) * this[67]);
        this[68] = v7;
        a2[v4] = v7;
      }

      else
      {
        this[68] = v5;
      }

      v8 = a3[v4];
      v9 = this[80];
      if (v8 >= v9)
      {
        v10 = v9 + ((1.0 - v9) * this[79]);
        this[80] = v10;
        a3[v4] = v10;
      }

      else
      {
        this[80] = v8;
      }

      ++v4;
    }

    while (a4 > v4);
  }

  return this;
}

uint64_t DspLib::PeakPowerGuard::Algorithm::applyGains(_BYTE *a1, void ***a2, void *__src, void *a4, uint64_t a5)
{
  if (a1[241] != 1)
  {
    DspLib::multiply();
  }

  DspLib::copy(__src, a5, **a2);
  result = (*(*a1 + 64))(a1);
  if (result >= 2)
  {
    v10 = 1;
    do
    {
      DspLib::copy(a4, a5, (*a2)[v10++]);
      result = (*(*a1 + 64))(a1);
    }

    while (v10 < result);
  }

  return result;
}

void DspLib::PeakPowerGuard::Algorithm::processBlock(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 40))(a1))
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
    v6 = *a2;
    if ((*(*a1 + 208))(a1))
    {
      DspLib::CPUMeasure::pause((a1 + 104));
      v11 = v6;
      v12 = v5;
      v13 = v4;
      DspLib::AudioMeter::Algorithm::analyze(a1 + 352, &v11);
      v7 = DspLib::CPUMeasure::resume((a1 + 104));
    }

    if ((*(a1 + 240) & 1) == 0 && v4)
    {
      DspLib::PeakPowerGuard::Algorithm::wooferInputSideChain(a1, **a2, *(a1 + 1952), v4, *(a1 + 1928), (*(a1 + 1936) - *(a1 + 1928)) >> 2);
    }

    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    if ((*(*a1 + 208))(a1, v7))
    {
      DspLib::CPUMeasure::pause((a1 + 104));
      v11 = v8;
      v12 = v9;
      v13 = v10;
      DspLib::AudioMeter::Algorithm::analyze(a1 + 544, &v11);
      DspLib::CPUMeasure::resume((a1 + 104));
    }
  }

  else
  {
    DspLib::PeakPowerGuard::Algorithm::processBlock();
  }
}

void DspLib::PeakPowerGuard::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length a3)
{
  if ((*(*a1 + 40))(a1))
  {
    DspLib::clear(a2, a3);
    *a2 = (*(*a1 + 64))(a1);
    v6 = (*(*a1 + 48))(a1);
    *(a2 + 4) = v6;
    *(a2 + 284) = *(a1 + 1920);
    *(a2 + 268) = *(a1 + 1904);
    if ((*(*a1 + 208))(a1))
    {
      DspLib::clip((a1 + 1712), 4uLL, 0.0, 200.0);
      DspLib::clip((a1 + 1808), 4uLL, 0.0, 200.0);
      DspLib::AudioMeter::Algorithm::status((a1 + 352), (a2 + 12), 0x20uLL);
      DspLib::AudioMeter::Algorithm::status((a1 + 544), (a2 + 140), 0x20uLL);
      *(a2 + 8) = *(a1 + 244);
      std::vector<float>::vector[abi:ne200100](&__p, 0x20uLL);
      DspLib::AudioMeter::Algorithm::status((a1 + 736), __p, (v26 - __p) >> 2);
      *(a2 + 288) = DspLib::dB2Amp(v7, *(__p + 16));
      *(a2 + 292) = DspLib::dB2Amp(v8, *__p);
      DspLib::AudioMeter::Algorithm::status((a1 + 928), __p, (v26 - __p) >> 2);
      *(a2 + 296) = DspLib::dB2Amp(v9, *(__p + 16));
      *(a2 + 300) = DspLib::dB2Amp(v10, *__p);
      DspLib::AudioMeter::Algorithm::status((a1 + 1120), __p, (v26 - __p) >> 2);
      *(a2 + 304) = DspLib::dB2Amp(v11, *(__p + 16));
      *(a2 + 308) = DspLib::dB2Amp(v12, *__p);
      DspLib::AudioMeter::Algorithm::status((a1 + 1312), __p, (v26 - __p) >> 2);
      *(a2 + 312) = DspLib::dB2Amp(v13, *(__p + 16));
      *(a2 + 316) = DspLib::dB2Amp(v14, *__p);
      DspLib::AudioMeter::Algorithm::status((a1 + 1504), __p, (v26 - __p) >> 2);
      *(a2 + 320) = DspLib::dB2Amp(v15, *(__p + 16));
      *(a2 + 324) = DspLib::dB2Amp(v16, *__p);
      DspLib::copy((a1 + 1696), 4, (a2 + 328));
      DspLib::copy((a1 + 1712), 4, (a2 + 344));
      DspLib::clear((a1 + 1712), 4uLL);
      v18 = 0;
      v19 = a1 + 1744;
      v20 = (a2 + 372);
      do
      {
        *v20-- = DspLib::amp2dBSafe(v17, *(v19 + v18), 0.000001);
        *(v19 + v18) = 1065353216;
        v18 += 4;
      }

      while (v18 != 16);
      *(a2 + 376) = DspLib::amp2dBSafe(v17, *(a1 + 1760), 0.000001);
      *(a1 + 1760) = 1065353216;
      *(a2 + 380) = *(a1 + 1792);
      *(a2 + 388) = *(a1 + 1800);
      DspLib::copy((a1 + 1808), 4, (a2 + 392));
      DspLib::clear((a1 + 1808), 4uLL);
      v21 = DspLib::copy((a1 + 1824), 4, (a2 + 408));
      v22 = 0;
      v23 = a1 + 1856;
      v24 = (a2 + 436);
      do
      {
        *v24-- = DspLib::amp2dBSafe(v21, *(v23 + v22), 0.000001);
        *(v23 + v22) = 1065353216;
        v22 += 4;
      }

      while (v22 != 16);
      *(a2 + 440) = DspLib::amp2dBSafe(v21, *(a1 + 1872), 0.000001);
      *(a1 + 1872) = 1065353216;
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }
    }

    else
    {
      DspLib::fill((a2 + 12), 0x20uLL, -100.0);

      DspLib::fill((a2 + 140), 0x20uLL, -100.0);
    }
  }

  else
  {
    DspLib::PeakPowerGuard::Algorithm::status();
  }
}

void sub_1DDBBBBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::PeakPowerGuard::Algorithm::~Algorithm(DspLib::PeakPowerGuard::Algorithm *this)
{
  DspLib::PeakPowerGuard::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5919900;
  v41 = (this + 2976);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 2944));
  v2 = *(this + 365);
  if (v2)
  {
    *(this + 366) = v2;
    operator delete(v2);
  }

  v41 = (this + 2872);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 2840));
  v3 = *(this + 352);
  if (v3)
  {
    *(this + 353) = v3;
    operator delete(v3);
  }

  v41 = (this + 2768);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v41);
  for (i = 0; i != -96; i -= 24)
  {
    v5 = *(this + i + 2744);
    if (v5)
    {
      *(this + i + 2752) = v5;
      operator delete(v5);
    }
  }

  v6 = *(this + 330);
  if (v6)
  {
    *(this + 331) = v6;
    operator delete(v6);
  }

  v7 = *(this + 327);
  if (v7)
  {
    *(this + 328) = v7;
    operator delete(v7);
  }

  for (j = 0; j != -96; j -= 24)
  {
    v9 = *(this + j + 2592);
    if (v9)
    {
      *(this + j + 2600) = v9;
      operator delete(v9);
    }
  }

  v10 = *(this + 311);
  if (v10)
  {
    *(this + 312) = v10;
    operator delete(v10);
  }

  v11 = *(this + 308);
  if (v11)
  {
    *(this + 309) = v11;
    operator delete(v11);
  }

  v12 = *(this + 305);
  if (v12)
  {
    *(this + 306) = v12;
    operator delete(v12);
  }

  v13 = *(this + 301);
  if (v13)
  {
    *(this + 302) = v13;
    operator delete(v13);
  }

  v14 = *(this + 297);
  if (v14)
  {
    *(this + 298) = v14;
    operator delete(v14);
  }

  v41 = (this + 2344);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v41);
  v41 = (this + 2312);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v41);
  v15 = *(this + 280);
  if (v15)
  {
    *(this + 281) = v15;
    operator delete(v15);
  }

  v41 = (this + 2208);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v41);
  v41 = (this + 2176);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::~AdmittanceFilterCoeffSet((this + 2096));
  for (k = 0; k != -96; k -= 24)
  {
    v17 = *(this + k + 2072);
    if (v17)
    {
      *(this + k + 2080) = v17;
      operator delete(v17);
    }
  }

  for (m = 0; m != -72; m -= 24)
  {
    v19 = *(this + m + 1976);
    if (v19)
    {
      *(this + m + 1984) = v19;
      operator delete(v19);
    }
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 1640));
  v20 = *(this + 202);
  if (v20)
  {
    *(this + 203) = v20;
    operator delete(v20);
  }

  v21 = *(this + 199);
  if (v21)
  {
    *(this + 200) = v21;
    operator delete(v21);
  }

  v22 = *(this + 196);
  if (v22)
  {
    *(this + 197) = v22;
    operator delete(v22);
  }

  v41 = (this + 1544);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::ChannelBuffer::~ChannelBuffer((this + 1448));
  v23 = *(this + 178);
  if (v23)
  {
    *(this + 179) = v23;
    operator delete(v23);
  }

  v24 = *(this + 175);
  if (v24)
  {
    *(this + 176) = v24;
    operator delete(v24);
  }

  v25 = *(this + 172);
  if (v25)
  {
    *(this + 173) = v25;
    operator delete(v25);
  }

  v41 = (this + 1352);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::ChannelBuffer::~ChannelBuffer((this + 1256));
  v26 = *(this + 154);
  if (v26)
  {
    *(this + 155) = v26;
    operator delete(v26);
  }

  v27 = *(this + 151);
  if (v27)
  {
    *(this + 152) = v27;
    operator delete(v27);
  }

  v28 = *(this + 148);
  if (v28)
  {
    *(this + 149) = v28;
    operator delete(v28);
  }

  v41 = (this + 1160);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::ChannelBuffer::~ChannelBuffer((this + 1064));
  v29 = *(this + 130);
  if (v29)
  {
    *(this + 131) = v29;
    operator delete(v29);
  }

  v30 = *(this + 127);
  if (v30)
  {
    *(this + 128) = v30;
    operator delete(v30);
  }

  v31 = *(this + 124);
  if (v31)
  {
    *(this + 125) = v31;
    operator delete(v31);
  }

  v41 = (this + 968);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::ChannelBuffer::~ChannelBuffer((this + 872));
  v32 = *(this + 106);
  if (v32)
  {
    *(this + 107) = v32;
    operator delete(v32);
  }

  v33 = *(this + 103);
  if (v33)
  {
    *(this + 104) = v33;
    operator delete(v33);
  }

  v34 = *(this + 100);
  if (v34)
  {
    *(this + 101) = v34;
    operator delete(v34);
  }

  v41 = (this + 776);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::ChannelBuffer::~ChannelBuffer((this + 680));
  v35 = *(this + 82);
  if (v35)
  {
    *(this + 83) = v35;
    operator delete(v35);
  }

  v36 = *(this + 79);
  if (v36)
  {
    *(this + 80) = v36;
    operator delete(v36);
  }

  v37 = *(this + 76);
  if (v37)
  {
    *(this + 77) = v37;
    operator delete(v37);
  }

  v41 = (this + 584);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::ChannelBuffer::~ChannelBuffer((this + 488));
  v38 = *(this + 58);
  if (v38)
  {
    *(this + 59) = v38;
    operator delete(v38);
  }

  v39 = *(this + 55);
  if (v39)
  {
    *(this + 56) = v39;
    operator delete(v39);
  }

  v40 = *(this + 52);
  if (v40)
  {
    *(this + 53) = v40;
    operator delete(v40);
  }

  v41 = (this + 392);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v41);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::~AdmittanceFilterCoeffSet(DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet *this)
{
  DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::cleanUp(this);
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 8);
  std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*this)
  {
    CFRelease(*this);
  }
}

void std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        v7 = (v4 - 24);
        std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void DspLib::PeakPowerGuard::Algorithm::reset()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/PeakPowerGuard/dsp/DspLibPeakPowerGuard.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 66);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::PeakPowerGuard::Algorithm::setMeteringIsEnabled()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/PeakPowerGuard/dsp/DspLibPeakPowerGuard.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 111);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::PeakPowerGuard::Algorithm::setAdmittanceFilterCoeffSet()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/PeakPowerGuard/dsp/DspLibPeakPowerGuard.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 148);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::Biquad::ParametricFilter::setNumberOfStages()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Biquad/dsp/DspLibBiquad.h");
  printf("DSP Sound assertion in %s at line %d\n", v0, 112);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::PeakPowerGuard::Algorithm::computeGains()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/PeakPowerGuard/dsp/DspLibPeakPowerGuard.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 354);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::PeakPowerGuard::Algorithm::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/PeakPowerGuard/dsp/DspLibPeakPowerGuard.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 485);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::PeakPowerGuard::Algorithm::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/PeakPowerGuard/dsp/DspLibPeakPowerGuard.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 524);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::initialize(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this, double a2, unint64_t a3)
{
  *(this + 20) = a2;
  v5 = a3 >> 1;
  DspLib::ComplexVector::setLength((this + 824), a3 >> 1);
  DspLib::ComplexVector::setLength((this + 664), v5);
  DspLib::ComplexVector::setLength((this + 744), v5);
  DspLib::ComplexVector::setLength((this + 904), v5);
  DspLib::ComplexVector::setLength((this + 984), v5);
  DspLib::ComplexVector::setLength((this + 1064), v5);
  *(this + 24) = a3;
  std::vector<float>::resize(this + 49, a3);
  std::vector<float>::resize(this + 52, a3);
  v6 = (vcvts_n_f32_u64(a3, 1uLL) + 0.5);
  DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(v7, *(this + 49), (*(this + 50) - *(this + 49)) >> 2, v6, 0);
  std::optional<DspLib::FFT::BufferedForwardSTFT>::operator=[abi:ne200100]<DspLib::FFT::BufferedForwardSTFT,void>(this + 440, v7);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v7);
  DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(v7, *(this + 52), (*(this + 53) - *(this + 52)) >> 2, v6, 0);
  std::optional<DspLib::FFT::BufferedForwardSTFT>::operator=[abi:ne200100]<DspLib::FFT::BufferedForwardSTFT,void>(this + 552, v7);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v7);
  *(this + 152) = 1;
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::reset(this);
}

void sub_1DDBBC494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<DspLib::FFT::BufferedForwardSTFT>::operator=[abi:ne200100]<DspLib::FFT::BufferedForwardSTFT,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    if (a1 != a2)
    {
      DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(a1);
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a2 + 8) = 0;
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    std::vector<double>::__move_assign(a1 + 40, (a2 + 40));
    *(a1 + 64) = *(a2 + 64);
    v5 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v5;
  }

  else
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
    v7 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = *(a2 + 64);
    v8 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v8;
    *(a1 + 104) = 1;
  }

  return a1;
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::reset(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this)
{
  DspLib::FFT::BufferedForwardSTFT::reset((this + 440));
  DspLib::FFT::BufferedForwardSTFT::reset((this + 552));
  DspLib::ComplexVector::operator=(this + 824, 0.0);
  DspLib::ComplexVector::operator=(this + 904, 0.0);
  DspLib::ComplexVector::operator=(this + 984, 0.0);
  DspLib::ComplexVector::operator=(this + 1064, 0.0);
  DspLib::ComplexVector::operator=(this + 664, 0.0);
  DspLib::ComplexVector::operator=(this + 744, 0.0);
  *(this + 61) = 1092616192;
  *(this + 384) = 0;
  *(this + 59) = *(this + 58);
  v2 = *(this + 44);
  *(this + 69) = v2;
  *(this + 70) = v2;

  DspLib::AveragingDecimator::reset((this + 8));
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::uninitialize(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this)
{
  DspLib::ComplexVector::setLength((this + 664), 0);
  DspLib::ComplexVector::setLength((this + 744), 0);
  DspLib::ComplexVector::setLength((this + 824), 0);
  DspLib::ComplexVector::setLength((this + 904), 0);
  DspLib::ComplexVector::setLength((this + 984), 0);

  DspLib::ComplexVector::setLength((this + 1064), 0);
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v10 = 7 * a4;
  v11 = 7 * a4 + 4;
  if (v11 >= 0x17)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v12 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v11);
  v13 = *(a1 + 160);
  *(a1 + 168) = DspLib::PilotToneV2::fftBinForFrequency(*(a1 + 192), *(a2 + 4 * v12), v13);
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  if ((v10 + 2) >= 0x17)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v14 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v10 + 2);
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v15 = a2 + 4 * v14;
  v16 = a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v10 + 3);
  v17 = *(a1 + 160) / (*(a1 + 192) * 0.5);
  *(a1 + 380) = expf(-1.0 / (((*v16 * 1000.0) * v17) / 1000.0));
  *(a1 + 268) = *(v15 + 4);
  *(a1 + 264) = *v15;
  if (*(v15 + 16) < 0.5)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -1.0;
  }

  *(a1 + 272) = v18;
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::setFftWindows(a1, v18);
  v19 = *(v16 + 16);
  *(a1 + 176) = v19;
  *(a1 + 180) = *(v16 + 20);
  v20 = *(v16 + 12);
  *(a1 + 236) = v20;
  *(a1 + 232) = v20;
  v21 = *(v16 + 8);
  *(a1 + 226) = *(v16 + 4) >= 0.5;
  *(a1 + 256) = v21;
  *(a1 + 260) = *(v16 + 36);
  *(a1 + 276) = v19;
  *(a1 + 280) = v19;
  v22 = *(a1 + 160) / (*(a1 + 192) * 0.5);
  *(a1 + 284) = expf(-1.0 / (((*v16 * 1000.0) * v22) / 1000.0));
  *(a1 + 288) = expf(-1.0 / (((*(v16 + 40) * 1000.0) * v22) / 1000.0));
  *(a1 + 292) = expf(-1.0 / ((((*(v16 + 40) * 1000.0) * 6.0) * v22) / 1000.0));
  v23 = *(v16 + 52) * 0.01;
  v24 = 0.0;
  if (v23 > 0.0)
  {
    v24 = expf(-1.0 / (((v23 * (*(v16 + 40) * 1000.0)) * v22) / 1000.0));
  }

  *(a1 + 184) = v24;
  *(a1 + 296) = 1.0 / *(v16 + 44);
  *(a1 + 304) = *(v16 + 48) != 0.0;
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v25 = *(a2 + 4);
  if (v25 >= 0.5 && (*(a1 + 225) & 1) == 0)
  {
    DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::reset(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, a5);
    DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::reset(a1);
  }

  *(a1 + 225) = v25 >= 0.5;
  DspLib::Loudspeaker::Calibration::ThermalCoefficients::setParameters(a1 + 308, v16 + 56, 16, *(a1 + 376));
  v26 = 0;
  DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::readRdc(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, (a1 + 228), (a1 + 236), &v26, a5);
  if (!v26)
  {
    *(a1 + 244) = 1092616192;
  }

  *(a1 + 248) = 1;
}

uint64_t DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::setFftWindows(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this, float a2)
{
  v3 = *(this + 49);
  v4 = (*(this + 50) - v3) >> 2;
  v5 = *(this + 66) * a2;
  DspLib::makePeriodicHannWindow(v3, v4);
  v6 = DspLib::norm(v3, v4);
  DspLib::multiply(v3, v4, v5 / v6);
  v7 = *(this + 52);
  v8 = (*(this + 53) - v7) >> 2;
  v9 = *(this + 67);
  DspLib::makePeriodicHannWindow(v7, v8);
  v10 = v9 / DspLib::norm(v7, v8);

  return DspLib::multiply(v7, v8, v10);
}

unint64_t DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::reset(DspLib::LoudspeakerSystemIDV2::NonVolatileMemory *this, unsigned int a2)
{
  v2 = this + 264 * a2;
  v2[12] = 0;
  v3 = *(v2 + 1);
  *v2 = v3;
  *(v2 + 2) = v3;
  *(v2 + 52) = 0;
  *(v2 + 106) = 0;
  *(v2 + 72) = *(v2 + 156);
  *(v2 + 88) = *(v2 + 172);
  *(v2 + 104) = *(v2 + 188);
  *(v2 + 30) = *(v2 + 51);
  *(v2 + 40) = *(v2 + 124);
  *(v2 + 56) = *(v2 + 140);
  v2[244] = 0;
  result = DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(*(v2 + 58), *(v2 + 59), *(v2 + 60));
  *(v2 + 27) = result;
  *(v2 + 56) = v5;
  v2[228] = v6;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 2) = 0;
  return result;
}

uint64_t DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::updateRdcSmoothingCoefficient(uint64_t this, float a2)
{
  if (*(this + 304) == 1)
  {
    v2 = *(this + 284);
    v3 = a2 + (v2 * (*(this + 276) - a2));
    *(this + 276) = v3;
    v4 = *(this + 288);
    v5 = a2 + (v4 * (*(this + 280) - a2));
    *(this + 280) = v5;
    v6 = *(this + 296) * ((vabds_f32(v3, v5) / *(this + 236)) * 100.0);
    if (v6 <= 1.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = v6 < 0.0;
    v9 = 0.0;
    if (!v8)
    {
      v9 = v7;
    }

    v10 = (v4 * (1.0 - (v9 * v9))) + ((v9 * v9) * v2);
  }

  else
  {
    v10 = *(this + 288);
  }

  *(this + 380) = v10;
  return this;
}

BOOL DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::rdcShouldUpdate(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this)
{
  v9[0] = DspLib::ComplexSpan::operator[](this + 133, *(this + 21));
  v9[1] = v2;
  if (DspLib::abs(v9, v3) > (*this * *(this + 67)) && (v8[0] = DspLib::ComplexSpan::operator[](this + 123, *(this + 21)), v8[1] = v4, DspLib::abs(v8, v5) > (*this * *(this + 66))) && *(this + 63) > *(this + 64) && *(this + 226) == 1 && (v6 = *(this + 60), v6 >= *(this + 44)))
  {
    return v6 <= *(this + 45);
  }

  else
  {
    return 0;
  }
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::process(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this, float *a2, float *a3, float a4)
{
  v4 = MEMORY[0x1EEE9AC00](this);
  v57 = *MEMORY[0x1E69E9840];
  if (*(v4 + 152))
  {
    v10 = v4;
    if (*(v4 + 248))
    {
      v11 = v7;
      if (v7)
      {
        v12 = v9;
        v13 = v8;
        v14 = v6;
        v55 = v7;
        v53 = v7;
        DspLib::copy(v5, v7, v56);
        DspLib::copy(v14, v11, v54);
        v15 = 0;
        v56[0] = v56[0] + 0.000001;
        while (1)
        {
          DspLib::FFT::BufferedForwardSTFT::addInput(v10 + 440, &v56[v15], v11 - v15);
          v16 = DspLib::FFT::BufferedForwardSTFT::addInput(v10 + 552, &v54[v15], v11 - v15);
          if (*(v10 + 640))
          {
            break;
          }

LABEL_27:
          v15 += v16;
          if (v15 >= v11)
          {
            return;
          }
        }

        v51[0] = 0;
        DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::readRdc(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, (v10 + 228), (v10 + 236), v51, v13);
        if (!v51[0])
        {
          *(v10 + 244) = 1092616192;
        }

        v17 = DspLib::ComplexSpan::operator[]((v10 + 1064), *(v10 + 168));
        v19 = v18;
        v20 = DspLib::ComplexSpan::operator[]((v10 + 984), *(v10 + 168));
        *v51 = v17;
        v52 = v19;
        v49 = v20;
        v50 = v21;
        v23 = DspLib::abs(v51, v22);
        *(v10 + 240) = ((v23 + 0.000000001) / (DspLib::abs(&v49, v24) + 0.000000001)) - v12;
        ShouldUpdate = DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::rdcShouldUpdate(v10);
        *(v10 + 224) = ShouldUpdate;
        if (ShouldUpdate)
        {
          DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::updateRdcSmoothingCoefficient(v10, *(v10 + 240));
          if (*(v10 + 224))
          {
            v27 = *(v10 + 240);
            v28 = v27 + (*(v10 + 380) * (*(v10 + 236) - v27));
            *(v10 + 236) = v28;
            v29 = *(v10 + 176);
            v30 = *(v10 + 180);
            v31 = 10.0;
            if (v27 >= v29 && v27 <= v30)
            {
              v31 = (vabds_f32(v27, v28) / v27) * 100.0;
            }

            v32 = *(v10 + 260);
            if (v28 >= v29 && v28 <= v30 && v31 < v32)
            {
              DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::takeRdcProcessTimeStamp(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, v13);
              v27 = *(v10 + 240);
              *(v10 + 228) = v27 + (*(v10 + 380) * (*(v10 + 228) - v27));
              v32 = *(v10 + 260);
            }

            v35 = (vabds_f32(*(v10 + 228), v27) / *(v10 + 228)) * 100.0;
            *(v10 + 244) = v35;
            if (v35 > v32)
            {
              *(v10 + 380) = *(v10 + 292);
            }

            goto LABEL_26;
          }
        }

        else
        {
          v36 = *(v10 + 232) + (*(v10 + 288) * (*(v10 + 236) - *(v10 + 232)));
          *(v10 + 236) = v36;
          *(v10 + 276) = v36;
          *(v10 + 280) = v36;
        }

        v35 = *(v10 + 244);
        v32 = *(v10 + 260);
LABEL_26:
        *(v10 + 384) = v35 < v32;
        DspLib::FFT::powerSpectrum((v10 + 1064), (v10 + 984), (v10 + 904), v26);
        v37 = *(v10 + 380);
        DspLib::operator*=((v10 + 824), v37);
        DspLib::operator*=((v10 + 904), 1.0 - v37);
        DspLib::operator+=((v10 + 824), (v10 + 904));
        DspLib::FFT::powerSpectrum((v10 + 984), (v10 + 984), (v10 + 904), v38);
        v39 = *(v10 + 380);
        DspLib::operator*=((v10 + 664), v39);
        DspLib::operator*=((v10 + 904), 1.0 - v39);
        DspLib::operator+=((v10 + 664), (v10 + 904));
        DspLib::FFT::powerSpectrum((v10 + 1064), (v10 + 1064), (v10 + 904), v40);
        v41 = *(v10 + 380);
        DspLib::operator*=((v10 + 744), v41);
        DspLib::operator*=((v10 + 904), 1.0 - v41);
        DspLib::operator+=((v10 + 744), (v10 + 904));
        *v51 = DspLib::ComplexSpan::operator[]((v10 + 824), *(v10 + 168));
        v52 = v42;
        v44 = DspLib::abs(v51, v43);
        v49 = DspLib::ComplexSpan::operator[]((v10 + 824), *(v10 + 168));
        v50 = v45;
        v47 = DspLib::abs(&v49, v46);
        v48 = DspLib::ComplexSpan::operator[]((v10 + 744), *(v10 + 168));
        *(v10 + 252) = (v44 * v47) / (v48 * DspLib::ComplexSpan::operator[]((v10 + 664), *(v10 + 168)));
        DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::writeRdc(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, *(v10 + 228), *(v10 + 236), v13);
        goto LABEL_27;
      }
    }

    else
    {
      DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::process();
    }
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::process();
  }
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::status(uint64_t a1, uint64_t a2, double a3, double a4, float a5)
{
  if (*(a1 + 152))
  {
    v5 = *(a1 + 168);
    v6 = *(a1 + 228);
    *(a2 + 72) = v5;
    LOBYTE(a5) = *(a1 + 384);
    *a2 = v6;
    *(a2 + 4) = LODWORD(a5);
    *(a2 + 60) = *(a1 + 244);
    v7 = *(a1 + 160);
    v8 = *(a1 + 192);
    v9 = v7 / v8;
    *(a2 + 8) = v5 * v9;
    v10 = v7;
    *(a2 + 304) = v10;
    v11 = v7 / (v8 * 0.5);
    *(a2 + 20808) = -1.0 / (logf(*(a1 + 380)) * v11);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::status();
  }
}

float DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::impedance(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this, DSPSplitComplex *__C)
{
  DspLib::ComplexSpan::operator=(__C, (this + 824));

  return DspLib::FFT::divide(__C, (this + 664), v4);
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceMeasurement.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 210);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceMeasurement.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 211);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceMeasurement.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 297);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

uint64_t DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::IntegratedLoudnessProcessor(uint64_t a1, int a2)
{
  bzero(a1, 0xFA4uLL);
  bzero((a1 + 4032), 0xFA4uLL);
  *(a1 + 8040) = 0u;
  *(a1 + 8056) = 0;
  *(a1 + 8064) = 0x461C400000000000;
  *(a1 + 8072) = 1065353216;
  *(a1 + 8088) = 0;
  *(a1 + 8080) = 0;
  *(a1 + 8092) = 0x3F80000000000001;
  *(a1 + 8036) = a2;
  DspLib::ramp(a1, 0x3E9uLL, 0, -100.0, 0.0);
  for (i = 0; i != 4004; i += 4)
  {
    *(a1 + i) = DspLib::dB2Power(v4, *(a1 + i) + 0.691);
  }

  return a1;
}

int32x2_t DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::shift(DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor *this, int32x2_t result)
{
  LODWORD(v2) = vcvtas_u32_f32(fabsf(*result.i32) / 0.1);
  if (v2)
  {
    v4 = this + 8036;
    v5 = result;
    DspLib::copy(this + 4 * v2 + 4032, 1001 - v2, this + 4032);
    DspLib::clear(&v4[-4 * v2], v2);
    result = vsub_f32(*(this + 8060), vdup_lane_s32(v5, 0));
    *(this + 8060) = result;
  }

  return result;
}

void DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::reset(DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor *this, float a2)
{
  *(this + 2015) = a2;
  *(this + 2016) = a2;
  *(this + 2012) = expf(-1.0 / ((*(this + 2010) * 1000.0) / 1000.0));
  v5 = a2 + 0.691;
  if (*(this + 2023) > 1u)
  {
    v5 = -70.0;
  }

  *(this + 2011) = DspLib::dB2Power(v4, v5);
  v6 = this + 4032;
  DspLib::clear(this + 1008, 0x3E9uLL);
  v7 = vcvtas_u32_f32(fmaxf((a2 + 100.0) * 10.01, 0.0));
  if (v7 >= 0x3E9)
  {
    v8 = 1001;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  if (v9 - 5 <= (v9 + 5))
  {
    v10 = 0;
    v11 = v9 - 4;
    if (v9 - 4 <= (v9 + 6))
    {
      v11 = v9 + 6;
    }

    v12 = v11 - v9;
    v13 = vdupq_n_s32(v12 + 4);
    v14 = vaddq_s32(vdupq_n_s32(v9 - 5), xmmword_1DE096230);
    v15 = vdupq_n_s32(0x3E8u);
    v16.i64[0] = 0x400000004;
    v16.i64[1] = 0x400000004;
    do
    {
      v17 = vmovn_s32(vcgeq_u32(v13, vorrq_s8(vdupq_n_s32(v10), xmmword_1DE096230)));
      v18 = vminq_u32(v14, v15);
      if (v17.i8[0])
      {
        *&v6[4 * v18.u32[0]] = 1065353216;
      }

      if (v17.i8[2])
      {
        *&v6[4 * v18.u32[1]] = 1065353216;
      }

      if (v17.i8[4])
      {
        *&v6[4 * v18.u32[2]] = 1065353216;
      }

      if (v17.i8[6])
      {
        *&v6[4 * v18.u32[3]] = 1065353216;
      }

      v10 += 4;
      v14 = vaddq_s32(v14, v16);
    }

    while (((v12 + 8) & 0xFFFFFFFC) != v10);
  }

  *(this + 1010) = 0;
  *(this + 8052) = 0xC28C0000C28C0000;
}

void DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::process(DspLib *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a1;
    v7 = 0;
    v8 = (a1 + 4032);
    v9 = 1;
    v10 = 1.0;
    do
    {
      v11 = *(a2 + 4 * v7);
      v12 = DspLib::power2dBSafe(a1, v11, 1.0e-20) + -0.691;
      *(v6 + 2014) = v12;
      if (v12 <= -70.0)
      {
        goto LABEL_26;
      }

      v13 = *(v6 + 2009);
      if (v13)
      {
        if (v13 != 1)
        {
          v19 = *(v6 + 2013);
          goto LABEL_10;
        }

        v14 = v11 + *(v6 + 2011);
        *(v6 + 2011) = v14;
        v15 = *(v6 + 1010) + 1;
        *(v6 + 1010) = v15;
        v16 = DspLib::power2dBSafe(a1, v14 / v15, 1.0e-20);
        v17 = -10.0;
      }

      else
      {
        v18 = (v11 * (v10 - *(v6 + 2012))) + (*(v6 + 2011) * *(v6 + 2012));
        *(v6 + 2011) = v18;
        v16 = DspLib::power2dBSafe(a1, v18, 1.0e-20);
        v17 = -20.0;
      }

      v19 = v16 + v17;
      *(v6 + 2013) = v19;
LABEL_10:
      v20 = vcvtas_u32_f32(fmaxf(((v19 + -0.691) + 100.0) * 10.01, 0.0));
      if (v20 >= 0x3E9)
      {
        v21 = 1001;
      }

      else
      {
        v21 = v20;
      }

      v22 = v21 - 1;
      if (v20)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = 1.0;
      if (*(v6 + 8088) == 1)
      {
        v24 = *(v6 + 2024);
      }

      v25 = vcvtas_u32_f32(fmaxf((*(v6 + 2014) + 100.0) * 10.01, 0.0));
      if (v25 >= 0x3E9)
      {
        v26 = 1001;
      }

      else
      {
        v26 = v25;
      }

      v27 = v26 - 1;
      if (v25)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v8[v28] = v24 + v8[v28];
      v29 = DspLib::sum(&v8[v23], 1001 - v23);
      if (v29 > 1.0e-20)
      {
        v30 = DspLib::dotProduct(&v8[v23], 1001 - v23, v6 + v23);
        *(v6 + 2015) = DspLib::power2dBSafe(v31, v30 / v29, 1.0e-20) + -0.691;
      }

LABEL_26:
      v32 = *(v6 + 2015);
      if (*(v6 + 8088) == 1)
      {
        v33 = *(v6 + 2016);
        if (v32 <= v33)
        {
          v32 = v33 + (((v32 - v33) * *(v6 + 2018)) * *(v6 + 2024));
        }

        *(v6 + 2016) = v32;
        *(a4 + 4 * v7) = v32;
        if (*(v6 + 2009))
        {
          goto LABEL_61;
        }

        v34 = *(v6 + 2014) > -70.0 || *(v6 + 2023) == 1;
        v35 = v34;
        if (*(v6 + 2024) < 0.1 || !v35)
        {
          goto LABEL_61;
        }

LABEL_45:
        v37 = vcvtas_u32_f32(fmaxf((*(v6 + 2015) + 100.0) * 10.01, 0.0));
        if (v37 >= 0x3E9)
        {
          v38 = 1001;
        }

        else
        {
          v38 = v37;
        }

        v39 = v38 - 1;
        if (v37)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v41 = 1.0e-20;
        if ((v40 + 1) <= 0x3E8)
        {
          v41 = DspLib::sum(&v8[(v40 + 1)], 1001 - (v40 + 1)) + 1.0e-20;
        }

        v42 = DspLib::sum(v8, v40);
        v44 = DspLib::amp2dBSafe(v43, v41 / (v42 + 1.0e-20), 0.000001) / -10.0;
        if (v44 <= v10)
        {
          v45 = v44;
        }

        else
        {
          v45 = v10;
        }

        v46 = v44 < 0.0;
        v47 = 0.0;
        if (!v46)
        {
          v47 = v45;
        }

        v48 = v47 * v47;
        v49 = v48 + (v10 - v48);
        v50 = 2.0;
        if (*(v6 + 8088))
        {
          v50 = v10;
        }

        v51 = ((v10 - v48) * 5.0) + (v50 * v48);
        v52 = *(v6 + 2010);
        *(v6 + 2012) = expf(-1.0 / ((v52 * (v49 * 1000.0)) / 1000.0));
        v53 = v52 * (v51 * 1000.0);
        v10 = 1.0;
        v54 = expf(-1.0 / (v53 / 1000.0));
        a1 = DspLib::multiply(v8, 1001, v54);
        goto LABEL_61;
      }

      *(a4 + 4 * v7) = v32;
      if (!*(v6 + 2009) && (*(v6 + 2023) == 1 || *(v6 + 2014) > -70.0))
      {
        goto LABEL_45;
      }

LABEL_61:
      v7 = v9;
    }

    while (a3 > v9++);
  }
}

void DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::histogram(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = a1 + 4032;
    v6 = 100.0 / a3;
    v7 = a3;
    v8 = 1;
    do
    {
      v9 = vcvtas_u32_f32(fmaxf((((v6 * v8) + -100.0) + 100.0) * 10.01, 0.0));
      if (v9 >= 0x3E9)
      {
        v10 = 1001;
      }

      else
      {
        v10 = v9;
      }

      v11 = v10 - 1;
      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      *a2++ = DspLib::sum((v5 + 4 * v4), v12 - v4 + 1);
      v4 = v12 + 1;
      ++v8;
      --v7;
    }

    while (v7);
  }
}

float DspLib::abs(DspLib *this, const DSPComplex *a2)
{
  __C = 0.0;
  v3.realp = this;
  v3.imagp = (this + 4);
  v4 = 1;
  vDSP_zvabs(&v3, 1, &__C, 1, 1uLL);
  return __C;
}

float DspLib::ComplexSpan::operator[](void *a1, unint64_t a2)
{
  v2 = a1[2];
  if (v2 <= a2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  return *(*a1 + 4 * v3);
}

void *DspLib::ComplexSpan::setElement(void *this, unint64_t a2, DSPComplex a3)
{
  if (this[2] > a2)
  {
    v3 = this[1];
    *(*this + 4 * a2) = a3.real;
    *(v3 + 4 * a2) = a3.imag;
  }

  return this;
}

DSPSplitComplex *DspLib::ComplexSpan::operator=(DSPSplitComplex *__C, DSPSplitComplex *__A)
{
  realp = __A[1].realp;
  if (realp == __C[1].realp)
  {
    vDSP_zvmov(__A, 1, __C, 1, realp);
  }

  return __C;
}

uint64_t DspLib::ComplexSpan::operator=(uint64_t a1, float a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    DspLib::fill(*a1, v3, a2);
    DspLib::clear(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

DSPSplitComplex *DspLib::operator+=(DSPSplitComplex *__A, DSPSplitComplex *__B)
{
  realp = __A[1].realp;
  v4 = __B[1].realp;
  if (v4 == realp || v4 == 1)
  {
    vDSP_zvadd(__A, 1, __B, v4 == realp, __A, 1, realp);
  }

  return __A;
}

DSPSplitComplex *DspLib::operator-=(DSPSplitComplex *__A, DSPSplitComplex *__B)
{
  realp = __A[1].realp;
  v4 = __B[1].realp;
  if (v4 == realp || v4 == 1)
  {
    vDSP_zvsub(__A, 1, __B, v4 == realp, __A, 1, realp);
  }

  return __A;
}

DSPSplitComplex *DspLib::operator*=(DSPSplitComplex *__A, DSPSplitComplex *__B)
{
  realp = __A[1].realp;
  v4 = __B[1].realp;
  if (v4 == realp || v4 == 1)
  {
    vDSP_zvmul(__A, 1, __B, v4 == realp, __A, 1, realp, 1);
  }

  return __A;
}

uint64_t *DspLib::operator*=(uint64_t *a1, float a2)
{
  DspLib::multiply(*a1, a1[2], a2);
  DspLib::multiply(a1[1], a1[2], a2);
  return a1;
}

DSPSplitComplex *DspLib::operator/=(DSPSplitComplex *__A, DSPSplitComplex *__B)
{
  realp = __A[1].realp;
  v4 = __B[1].realp;
  if (v4 == realp || v4 == 1)
  {
    vDSP_zvdiv(__B, v4 == realp, __A, 1, __A, 1, realp);
  }

  return __A;
}

float DspLib::checksum(DspLib *this, const DspLib::ComplexSpan *a2, float result)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *this;
    v5 = *(this + 1);
    do
    {
      v6 = *v4++;
      v7 = fabsf(v6);
      v8 = *v5++;
      result = result + (v7 + fabsf(v8));
      --v3;
    }

    while (v3);
  }

  return result;
}

void DspLib::initializeWithLinearPhase(DspLib *this, DspLib::ComplexSpan *a2, float a3, float a4)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = 0;
    v6 = ((a3 / 1000.0) * a4) * -3.14159265 / v4;
    v7 = *this;
    v8 = *(this + 1);
    do
    {
      v9 = __sincos_stret(v6 * v5);
      cosval = v9.__cosval;
      *(v7 + 4 * v5) = cosval;
      sinval = v9.__sinval;
      *(v8 + 4 * v5++) = sinval;
    }

    while (v4 != v5);
  }
}

DspLib::ComplexVector *DspLib::ComplexVector::ComplexVector(DspLib::ComplexVector *this, unint64_t a2, const DSPSplitComplex *a3)
{
  *(this + 2) = 0u;
  *(this + 1) = 0u;
  v5 = (this + 16);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = 0u;
  DspLib::allocateComplex(a2, this, this + 2, this + 24, this + 4, this + 7);
  v6 = *v5;
  if (*v5)
  {
    if (a3)
    {
      v8 = *a3;
      v9 = v6;
      DspLib::ComplexVector::operator=(this, &v8);
    }

    else
    {
      DspLib::ComplexSpan::operator=(this, 0.0);
    }
  }

  return this;
}

void sub_1DDBBDF4C(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::ComplexVector::operator=(uint64_t a1, uint64_t a2)
{
  DspLib::allocateComplex(*(a2 + 16), a1, (a1 + 16), a1 + 24, (a1 + 32), (a1 + 56));
  v4 = *(a2 + 16);
  if (v4 == *(a1 + 16))
  {
    vDSP_zvmov(a2, 1, a1, 1, v4);
  }

  return a1;
}

DspLib::ComplexVector *DspLib::ComplexVector::ComplexVector(DspLib::ComplexVector *this, const DspLib::ComplexSpan *a2)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  DspLib::ComplexVector::operator=(this, a2);
  return this;
}

void sub_1DDBBE044(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

DspLib::ComplexVector *DspLib::ComplexVector::ComplexVector(DspLib::ComplexVector *this, const DspLib::ComplexVector *a2)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  DspLib::ComplexVector::operator=(this, a2);
  return this;
}

void sub_1DDBBE0A8(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::ComplexVector::~ComplexVector(DspLib::ComplexVector *this)
{
  if (*(this + 2))
  {
    if (*this != (this + 24))
    {
      *(this + 5) = *(this + 4);
    }

    if (*(this + 1) != (this + 28))
    {
      *(this + 8) = *(this + 7);
    }

    *(this + 1) = this + 28;
    *(this + 2) = 0;
    *this = this + 24;
  }

  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void DspLib::allocateComplex(unint64_t a1, void *a2, unint64_t *a3, uint64_t a4, void *a5, void *a6)
{
  if (*a3 != a1)
  {
    if (*a3)
    {
      if (*a2 != a4)
      {
        a5[1] = *a5;
      }

      if (a2[1] != a4 + 4)
      {
        a6[1] = *a6;
      }
    }

    *a3 = a1;
    if (a1 < 2)
    {
      *a2 = a4;
      v10 = a4 + 4;
    }

    else
    {
      std::vector<float>::resize(a5, a1);
      std::vector<float>::resize(a6, *a3);
      *a2 = *a5;
      v10 = *a6;
    }

    a2[1] = v10;
  }
}

void *DspLib::copy(void *this, void **a2, DspLib::ComplexVector *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v5 = this;
    this = memmove(a2[1], *(this + 1), 4 * v3);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *a2;
      v8 = *v5;

      return memmove(v7, v8, 4 * v6);
    }
  }

  return this;
}

void DspLib::operator+(DspLib::ComplexSpan *a1@<X0>, DSPSplitComplex *a2@<X1>, DspLib::ComplexVector *a3@<X8>)
{
  realp = a2[1].realp;
  if (realp == 1 || realp == *(a1 + 2))
  {
    DspLib::ComplexVector::ComplexVector(v7, a1);
    DspLib::operator+=(v7, a2);
    DspLib::ComplexVector::ComplexVector(a3, v7);
    DspLib::ComplexVector::~ComplexVector(v7);
  }

  else
  {

    DspLib::ComplexVector::ComplexVector(a3, 0, 0);
  }
}

void DspLib::operator-(DspLib::ComplexSpan *a1@<X0>, DSPSplitComplex *a2@<X1>, DspLib::ComplexVector *a3@<X8>)
{
  realp = a2[1].realp;
  if (realp == 1 || realp == *(a1 + 2))
  {
    DspLib::ComplexVector::ComplexVector(v7, a1);
    DspLib::operator-=(v7, a2);
    DspLib::ComplexVector::ComplexVector(a3, v7);
    DspLib::ComplexVector::~ComplexVector(v7);
  }

  else
  {

    DspLib::ComplexVector::ComplexVector(a3, 0, 0);
  }
}

void DspLib::operator*(DspLib::ComplexSpan *a1@<X0>, DSPSplitComplex *a2@<X1>, DspLib::ComplexVector *a3@<X8>)
{
  realp = a2[1].realp;
  if (realp == 1 || realp == *(a1 + 2))
  {
    DspLib::ComplexVector::ComplexVector(v7, a1);
    DspLib::operator*=(v7, a2);
    DspLib::ComplexVector::ComplexVector(a3, v7);
    DspLib::ComplexVector::~ComplexVector(v7);
  }

  else
  {

    DspLib::ComplexVector::ComplexVector(a3, 0, 0);
  }
}

void DspLib::operator*(DspLib::ComplexSpan *a1@<X0>, DspLib::ComplexVector *a2@<X8>, float a3@<S0>)
{
  DspLib::ComplexVector::ComplexVector(v5, a1);
  DspLib::multiply(v5[0], v6, a3);
  DspLib::multiply(v5[1], v6, a3);
  DspLib::ComplexVector::ComplexVector(a2, v5);
  DspLib::ComplexVector::~ComplexVector(v5);
}

float DspLib::ComplexMatrixSpan::element(DspLib::ComplexMatrixSpan *this, unint64_t a2, unint64_t a3)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3 >= a2)
  {
    v3 = a2;
  }

  v5 = *(this + 4);
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(this + 4);
  }

  v7 = v6 + v3 * v5;
  if (v4 <= v7)
  {
    v7 = v4 - 1;
  }

  return *(*this + 4 * v7);
}

void DspLib::ComplexMatrixSpan::row(DspLib::ComplexMatrixSpan *this, unint64_t a2, const DSPSplitComplex *a3)
{
  realp = a3[1].realp;
  if (realp == *(this + 4))
  {
    v12 = v3;
    v13 = v4;
    v6 = *(this + 3);
    if (v6 >= a2)
    {
      v6 = a2;
    }

    v7 = v6 * realp;
    v8 = (*this + 4 * v7);
    v9 = (*(this + 1) + 4 * v7);
    __A.realp = v8;
    __A.imagp = v9;
    v11 = realp;
    vDSP_zvmov(&__A, 1, a3, 1, realp);
  }
}

void DspLib::ComplexMatrixSpan::setRow(DspLib::ComplexMatrixSpan *this, unint64_t a2, DSPSplitComplex *__A)
{
  v5 = *(this + 4);
  realp = __A[1].realp;
  if (v5 == realp || realp == 1)
  {
    v14 = v3;
    v15 = v4;
    v8 = v5 == realp;
    v9 = *(this + 3);
    if (v9 >= a2)
    {
      v9 = a2;
    }

    v10 = v9 * v5;
    v11 = (*this + 4 * v10);
    v12 = (*(this + 1) + 4 * v10);
    v13.realp = v11;
    v13.imagp = v12;
    vDSP_zvmov(__A, v8, &v13, 1, v5);
  }
}

void DspLib::ComplexMatrixSpan::setColumn(DspLib::ComplexMatrixSpan *this, unint64_t a2, DSPSplitComplex *__A)
{
  v5 = *(this + 3);
  realp = __A[1].realp;
  if (v5 == realp || realp == 1)
  {
    v14 = v3;
    v15 = v4;
    v8 = v5 == realp;
    v9 = *(this + 4);
    if (v9 >= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = *(this + 4);
    }

    v11 = (*this + 4 * v10);
    v12 = (*(this + 1) + 4 * v10);
    v13.realp = v11;
    v13.imagp = v12;
    vDSP_zvmov(__A, v8, &v13, v9, v5);
  }
}

void *DspLib::ComplexMatrixSpan::operator=(void *a1, _DWORD *a2, DspLib *this)
{
  SquareRoot = DspLib::getSquareRoot(this);
  if (SquareRoot == a1[4])
  {
    v6 = a1[3];
    if (SquareRoot == v6 && v6 != 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = a1[2];
      do
      {
        v11 = v8;
        v12 = SquareRoot;
        do
        {
          if (v10 > v11)
          {
            v13 = a2[1];
            v14 = a1[1];
            *(*a1 + 4 * v11) = *a2;
            *(v14 + 4 * v11) = v13;
          }

          a2 += 2;
          ++v11;
          --v12;
        }

        while (v12);
        ++v9;
        v8 += SquareRoot;
      }

      while (v9 != SquareRoot);
    }
  }

  return a1;
}

uint64_t DspLib::getSquareRoot(uint64_t this)
{
  if (this > 24)
  {
    if (this > 48)
    {
      if (this == 49)
      {
        return 7;
      }

      if (this == 64)
      {
        return 8;
      }
    }

    else
    {
      if (this == 25)
      {
        return 5;
      }

      if (this == 36)
      {
        return 6;
      }
    }
  }

  else if (this > 8)
  {
    if (this == 9)
    {
      return 3;
    }

    if (this == 16)
    {
      return 4;
    }
  }

  else
  {
    if (this == 1)
    {
      return this;
    }

    if (this == 4)
    {
      return 2;
    }
  }

  return 0;
}

DSPSplitComplex *DspLib::operator/=(DSPSplitComplex *a1, uint64_t *a2)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v5.realp = &v7;
  v5.imagp = &v7 + 1;
  v3 = *a2;
  v6 = 1;
  v7 = v3;
  DspLib::operator/=(a1, &v5);
  DspLib::ComplexVector::~ComplexVector(&v5);
  return a1;
}

DspLib::ComplexMatrix *DspLib::ComplexMatrix::ComplexMatrix(DspLib::ComplexMatrix *this, uint64_t a2, uint64_t a3)
{
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = a2;
  *(this + 4) = a3;
  DspLib::allocateComplex(a3 * a2, this, this + 2, this + 40, this + 6, this + 9);
  return this;
}

void sub_1DDBBE8B0(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::ComplexMatrix::setDimensions(DspLib::ComplexMatrix *this, uint64_t a2, uint64_t a3)
{
  *(this + 3) = a2;
  *(this + 4) = a3;
  DspLib::allocateComplex(a3 * a2, this, this + 2, this + 40, this + 6, this + 9);
}

DspLib::ComplexMatrix *DspLib::ComplexMatrix::ComplexMatrix(DspLib::ComplexMatrix *this, const DSPSplitComplex *a2)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  DspLib::ComplexMatrix::operator=(this, a2);
  return this;
}

{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  DspLib::ComplexMatrix::operator=(this, a2);
  return this;
}

void sub_1DDBBE93C(_Unwind_Exception *exception_object)
{
  v3 = v1[9];
  if (v3)
  {
    v1[10] = v3;
    operator delete(v3);
  }

  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDBBE9A8(_Unwind_Exception *exception_object)
{
  v3 = v1[9];
  if (v3)
  {
    v1[10] = v3;
    operator delete(v3);
  }

  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::ComplexMatrix::operator=(uint64_t a1, const DSPSplitComplex *a2)
{
  imagp = a2[1].imagp;
  realp = a2[2].realp;
  *(a1 + 24) = imagp;
  *(a1 + 32) = realp;
  DspLib::allocateComplex(realp * imagp, a1, (a1 + 16), a1 + 40, (a1 + 48), (a1 + 72));
  v6 = a2[1].realp;
  if (v6 == *(a1 + 16))
  {
    vDSP_zvmov(a2, 1, a1, 1, v6);
  }

  return a1;
}

void *DspLib::ComplexMatrix::ComplexMatrix(uint64_t a1, _DWORD *a2, DspLib *this)
{
  SquareRoot = DspLib::getSquareRoot(this);
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = SquareRoot;
  *(a1 + 32) = SquareRoot;
  DspLib::allocateComplex(SquareRoot * SquareRoot, a1, (a1 + 16), a1 + 40, (a1 + 48), (a1 + 72));

  return DspLib::ComplexMatrixSpan::operator=(a1, a2, this);
}

void sub_1DDBBEAD8(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::ComplexMatrix::~ComplexMatrix(DspLib::ComplexMatrix *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (*(this + 2))
  {
    if (*this != (this + 40))
    {
      *(this + 7) = *(this + 6);
    }

    if (*(this + 1) != (this + 44))
    {
      *(this + 10) = *(this + 9);
    }

    *(this + 1) = this + 44;
    *(this + 2) = 0;
    *this = this + 40;
  }

  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }
}

void DspLib::operator/(const DSPSplitComplex *a1@<X0>, uint64_t *a2@<X1>, DspLib::ComplexMatrix *a3@<X8>)
{
  DspLib::ComplexMatrix::ComplexMatrix(v5, a1);
  DspLib::operator/=(v5, a2);
  DspLib::ComplexMatrix::ComplexMatrix(a3, v5);
  DspLib::ComplexMatrix::~ComplexMatrix(v5);
}

void DspLib::operator*(uint64_t a1@<X0>, uint64_t a2@<X1>, DspLib::ComplexMatrix *a3@<X8>)
{
  if (*(a1 + 32) == *(a2 + 24))
  {
    DspLib::ComplexMatrix::ComplexMatrix(a3, *(a1 + 24), *(a2 + 32));
    vDSP_zmmul(a1, 1, a2, 1, a3, 1, *(a1 + 24), *(a2 + 32), *(a1 + 32));
  }

  else
  {

    DspLib::ComplexMatrix::ComplexMatrix(a3, 0, 0);
  }
}

void DspLib::inv(DspLib *this@<X0>, DspLib::ComplexMatrix *a2@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(this + 3) == 2 && *(this + 4) == 2)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
    v8 = v6 - 1;
    if (v6 > 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 - 1;
    }

    v10 = 3;
    if (v6 <= 3)
    {
      v10 = v6 - 1;
    }

    v11 = *this;
    v12 = *(v7 + 4 * v10);
    v13 = *(*this + 4 * v9);
    v14 = *(v7 + 4 * v9);
    if (v6 > 2)
    {
      v8 = 2;
    }

    v15 = *(v11 + 4 * v8);
    v16 = *(v7 + 4 * v8);
    if (v6)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    v18 = *(v11 + 4 * v17);
    v19 = *(v7 + 4 * v17);
    LODWORD(v65) = *(*this + 4 * v10);
    HIDWORD(v65) = v12;
    *&v66 = -v13;
    *(&v66 + 1) = -v14;
    *&v67 = -v15;
    *(&v67 + 1) = -v16;
    v68 = v18;
    v69 = v19;
    DspLib::ComplexMatrix::ComplexMatrix(v41, &v65, 4);
    v20 = 0;
    if (*(this + 3) == 2)
    {
      v21 = 0;
      if (*(this + 4) == 2)
      {
        v23 = *(this + 1);
        v22 = *(this + 2);
        if (v22)
        {
          v24 = 0;
        }

        else
        {
          v24 = -1;
        }

        v25 = v22 - 1;
        v26 = *this;
        v27 = *(*this + 4 * v24);
        v28 = *(v23 + 4 * v24);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v66 = &v69;
        v67 = 1;
        v65 = &v68;
        v68 = v27;
        v69 = v28;
        if (v22 > 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v22 - 1;
        }

        v30 = *(v26 + 4 * v29);
        v31 = *(v23 + 4 * v29);
        v63 = 0uLL;
        v64 = 0uLL;
        v62 = 0uLL;
        v59[1] = &v61;
        v59[2] = 1;
        v59[0] = &v60;
        v60 = v30;
        v61 = v31;
        v32 = 2;
        if (v22 <= 2)
        {
          v32 = v22 - 1;
        }

        v33 = *(v26 + 4 * v32);
        v34 = *(v23 + 4 * v32);
        v57 = 0uLL;
        v58 = 0uLL;
        v56 = 0uLL;
        v52.imagp = &v55;
        v53 = 1;
        v52.realp = &v54;
        v54 = v33;
        v55 = v34;
        v35 = v22 > 3;
        v36 = 3;
        if (!v35)
        {
          v36 = v25;
        }

        v37 = *(v26 + 4 * v36);
        v38 = *(v23 + 4 * v36);
        v50 = 0uLL;
        v51 = 0uLL;
        v49 = 0uLL;
        v45.imagp = &v48;
        v46 = 1;
        v45.realp = &v47;
        v47 = v37;
        v48 = v38;
        DspLib::operator*(&v65, &v45, v43);
        DspLib::operator*(v59, &v52, v42);
        DspLib::operator-(v43, v42, v44);
        DspLib::ComplexVector::~ComplexVector(v42);
        DspLib::ComplexVector::~ComplexVector(v43);
        if (v44[2])
        {
          v39 = 0;
        }

        else
        {
          v39 = -1;
        }

        v20 = *(v44[0] + 4 * v39);
        v21 = *(v44[1] + 4 * v39);
        DspLib::ComplexVector::~ComplexVector(v44);
        DspLib::ComplexVector::~ComplexVector(&v45);
        DspLib::ComplexVector::~ComplexVector(&v52);
        DspLib::ComplexVector::~ComplexVector(v59);
        DspLib::ComplexVector::~ComplexVector(&v65);
      }
    }

    else
    {
      v21 = 0;
    }

    v40 = __PAIR64__(v21, v20);
    DspLib::operator/(v41, &v40, a2);
    DspLib::ComplexMatrix::~ComplexMatrix(v41);
  }

  else
  {

    DspLib::ComplexMatrix::ComplexMatrix(a2, 0, 0);
  }
}

void sub_1DDBBEFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  DspLib::ComplexVector::~ComplexVector(&a22);
  DspLib::ComplexVector::~ComplexVector(&a32);
  DspLib::ComplexVector::~ComplexVector(&a52);
  DspLib::ComplexVector::~ComplexVector(&a62);
  DspLib::ComplexVector::~ComplexVector((v62 - 216));
  DspLib::ComplexVector::~ComplexVector((v62 - 136));
  DspLib::ComplexMatrix::~ComplexMatrix(&a10);
  _Unwind_Resume(a1);
}

void DspLib::LoudspeakerModel::Algorithm::initialize(DspLib::LoudspeakerModel::Algorithm *this, uint64_t a2, double a3)
{
  *(this + 1) = a2;
  *(this + 3) = a3;
  if (*(this + 125) == 1)
  {
    *(this + 2) = a2;
  }

  *this = 1;
  DspLib::LoudspeakerModel::Algorithm::setParameters(this, this + 8, 39);
}

void DspLib::LoudspeakerModel::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3)
{
  DspLib::LoudspeakerModel::Parameters::setBoundaries(a2, a3, a1 + 188, 39, a1 + 344);
  v6 = a1 + 32;
  if ((a1 + 32) != a2)
  {
    DspLib::copy(a2, a3, (a1 + 32));
  }

  for (i = 0; i != 156; i += 4)
  {
    v8 = *(a1 + i + 188);
    v9 = *(a1 + i + 344);
    v10 = *(a1 + i + 32);
    if (v9 >= v10)
    {
      v9 = *(a1 + i + 32);
    }

    if (v10 >= v8)
    {
      v8 = v9;
    }

    *(a1 + i + 32) = v8;
  }

  if (*a1)
  {
    v11 = DspLib::LoudspeakerModel::Parameters::mode((a1 + 32));
    *(a1 + 504) = v11;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          v14 = *(a1 + 500);
          switch(v14)
          {
            case 2:
              goto LABEL_20;
            case 1:
              v13.i64[0] = *(a1 + 24);
              DspLib::LoudspeakerModel::calculateThieleSmallExcursionModelCoefficients((a1 + 32), __p, v13);
              v133 = *__p;
              v134[0] = *v126;
              *(v134 + 12) = *&v126[12];
              DspLib::LoudspeakerModel::inversePressureModelForThieleSmall(a1 + 32, &v133, &__src, *(a1 + 24));
              if (v138[0] == 1)
              {
                std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v139, 1uLL);
                std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(v139, &__src, v138, 2uLL);
              }

              break;
            case 0:
LABEL_20:
              v13.i64[0] = *(a1 + 24);
              DspLib::LoudspeakerModel::calculateThieleSmallExcursionModelCoefficients((a1 + 32), __p, v13);
              if (v126[24] == 1)
              {
                std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v139, 1uLL);
                std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(v139, __p, &v126[24], 2uLL);
              }

              break;
          }
        }

LABEL_176:
        v102 = v139;
        if (*(a1 + 500) == 1)
        {
          v103 = (vcvtas_u32_f32(*(a1 + 40)) - 2);
          v104 = !v103 || v140 == v139;
          if (!v104 && v139[1] != *v139)
          {
            v105 = *(a1 + 24);
            DspLib::Biquad::Design::butterworthHighPass(v103, *(a1 + 36), v105, 0, __p);
            v106 = v139[1] - *v139;
            std::vector<DspLib::Biquad::Section>::resize(v139, 0xCCCCCCCCCCCCCCCDLL * (v106 >> 2) - 0x3333333333333333 * ((__p[1] - __p[0]) >> 2));
            v107 = __p[0];
            if (__p[1] != __p[0])
            {
              v108 = 0;
              v109 = 1;
              do
              {
                v110 = 5 * v108;
                v111 = &v107[4 * v110];
                v112 = *v139 + 4 * v110 + v106;
                v113 = *v111;
                *(v112 + 4) = *(v111 + 4);
                *v112 = v113;
                v108 = v109;
                v107 = __p[0];
                v12 = 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 2);
                v50 = v12 > v109++;
              }

              while (v50);
            }

            if (v107)
            {
              __p[1] = v107;
              operator delete(v107);
            }

            v102 = v139;
          }
        }

        v114 = -1431655765 * ((v140 - v102) >> 3);
        v115 = v114 * *(a1 + 8);
        *(a1 + 16) = v115;
        if (v115)
        {
          if (v114 == 2)
          {
            v116 = v102[3];
            v12 = 0xCCCCCCCCCCCCCCCDLL * ((v102[4] - v116) >> 2);
            v117 = 1;
          }

          else
          {
            v117 = 0;
            v116 = 0;
          }

          v118 = *v102;
          v119 = 0xCCCCCCCCCCCCCCCDLL * ((v102[1] - *v102) >> 2);
          __p[0] = v116;
          __p[1] = v12;
          v126[0] = v117;
          DspLib::LoudspeakerModel::Algorithm::initializeFilters(a1, v118, v119, __p);
          v120 = *(a1 + 24) * 0.49;
          DspLib::ramp(&__src, 0xAuLL, 1, 20.0, v120);
          DspLib::ChannelBuffer::ChannelBuffer(__p, 0, 0);
          DspLib::LoudspeakerModel::Algorithm::frequencyResponse(a1, &__src, 0xAuLL, __p);
          if (DspLib::maxv(*__p[0], (*(__p[0] + 1) - *__p[0]) >> 2) >= 60.0 || (DspLib::Biquad::validate(*v139, 0xCCCCCCCCCCCCCCCDLL * ((v139[1] - *v139) >> 2)) & 1) == 0)
          {
            DspLib::Biquad::Filter::uninitialize((a1 + 512));
            DspLib::Biquad::Filter::uninitialize((a1 + 584));
          }

          DspLib::ChannelBuffer::~ChannelBuffer(__p);
        }

        else
        {
          DspLib::Biquad::Filter::uninitialize((a1 + 512));
          DspLib::Biquad::Filter::uninitialize((a1 + 584));
        }

        DspLib::LoudspeakerModel::Algorithm::setProcessFunction(a1);
      }

LABEL_198:
      __p[0] = &v139;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](__p);
      return;
    }

    switch(v11)
    {
      case 2:
        v15 = *(a1 + 500);
        if (v15 != 2)
        {
          if (v15 == 1)
          {
            LODWORD(__p[0]) = 1;
            std::vector<std::vector<DspLib::Biquad::Section>>::emplace_back<int,DspLib::Biquad::Section const&>(&v139, __p);
            goto LABEL_176;
          }

          if (v15)
          {
            goto LABEL_176;
          }
        }

        v133 = 0uLL;
        *&v134[0] = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        std::vector<float>::resize(&v127, 2uLL);
        v18 = 0;
        v19 = 0;
        v20 = 1;
        do
        {
          v21 = v20;
          __p[0] = 0;
          __p[1] = 0;
          *v126 = 0;
          __src = 0;
          v136 = 0;
          v137 = 0;
          v22 = *(a1 + 52 + 4 * v18);
          v23 = (a1 + 88 + 4 * v18);
          v24 = 4;
          do
          {
            v123 = *(v23 - 4);
            *&v17 = *v23;
            v121 = v17;
            isEqual = DspLib::isEqual(v16, v22, 0.0, 1.0e-20);
            if ((isEqual & 1) == 0)
            {
              isEqual = DspLib::isEqual(isEqual, *&v123, 0.0, 1.0e-20);
              if (!isEqual || (isEqual = DspLib::isEqual(isEqual, *(&v123 + 1), 0.0, 1.0e-20), (isEqual & 1) == 0))
              {
                v26 = __p[1];
                if (__p[1] >= *v126)
                {
                  v28 = (__p[1] - __p[0]) >> 3;
                  v29 = v28 + 1;
                  if ((v28 + 1) >> 61)
                  {
                    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                  }

                  v30 = *v126 - __p[0];
                  if ((*v126 - __p[0]) >> 2 > v29)
                  {
                    v29 = v30 >> 2;
                  }

                  if (v30 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v31 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v31 = v29;
                  }

                  if (v31)
                  {
                    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](__p, v31);
                  }

                  *(8 * v28) = v123;
                  v27 = (8 * v28 + 8);
                  v32 = (8 * v28 - (__p[1] - __p[0]));
                  memcpy(v32, __p[0], __p[1] - __p[0]);
                  isEqual = __p[0];
                  __p[0] = v32;
                  __p[1] = v27;
                  *v126 = 0;
                  if (isEqual)
                  {
                    operator delete(isEqual);
                  }
                }

                else
                {
                  *__p[1] = v123;
                  v26[1] = HIDWORD(v123);
                  v27 = v26 + 2;
                }

                __p[1] = v27;
              }
            }

            v16 = DspLib::isEqual(isEqual, v22, 0.0, 1.0e-20);
            if ((v16 & 1) == 0)
            {
              v16 = DspLib::isEqual(v16, *&v121, 0.0, 1.0e-20);
              if (!v16 || (v16 = DspLib::isEqual(v16, *(&v121 + 1), 0.0, 1.0e-20), (v16 & 1) == 0))
              {
                v33 = v136;
                if (v136 >= v137)
                {
                  v35 = (v136 - __src) >> 3;
                  v36 = v35 + 1;
                  if ((v35 + 1) >> 61)
                  {
                    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                  }

                  v37 = v137 - __src;
                  if ((v137 - __src) >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&__src, v38);
                  }

                  *(8 * v35) = v121;
                  v34 = (8 * v35 + 8);
                  v39 = (8 * v35 - (v136 - __src));
                  memcpy(v39, __src, v136 - __src);
                  v16 = __src;
                  __src = v39;
                  v136 = v34;
                  v137 = 0;
                  if (v16)
                  {
                    operator delete(v16);
                  }
                }

                else
                {
                  *(&v17 + 1) = *(&v121 + 1);
                  *v136 = v121;
                  v33[1] = DWORD1(v121);
                  v34 = v33 + 2;
                }

                v136 = v34;
              }
            }

            ++v23;
            --v24;
          }

          while (v24);
          if (__p[1] != __p[0])
          {
            v40 = *(&v133 + 1);
            if (*(&v133 + 1) >= *&v134[0])
            {
              v41 = std::vector<std::vector<DSPComplex>>::__emplace_back_slow_path<std::vector<DSPComplex>&>(&v133, __p);
            }

            else
            {
              **(&v133 + 1) = 0;
              *(v40 + 8) = 0;
              *(v40 + 16) = 0;
              std::vector<DSPComplex>::__init_with_size[abi:ne200100]<DSPComplex*,DSPComplex*>(v40, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
              v41 = v40 + 24;
            }

            *(&v133 + 1) = v41;
          }

          if (v136 != __src)
          {
            v42 = v131;
            if (v131 >= v132)
            {
              v43 = std::vector<std::vector<DSPComplex>>::__emplace_back_slow_path<std::vector<DSPComplex>&>(&v130, &__src);
            }

            else
            {
              *v131 = 0;
              *(v42 + 8) = 0;
              *(v42 + 16) = 0;
              std::vector<DSPComplex>::__init_with_size[abi:ne200100]<DSPComplex*,DSPComplex*>(v42, __src, v136, (v136 - __src) >> 3);
              v43 = v42 + 24;
            }

            v131 = v43;
          }

          if (__p[1] != __p[0] || (v44 = __src, v136 != __src))
          {
            std::vector<float>::resize(&v127, v19 + 1);
            *(v127 + v19) = v22;
            v44 = __src;
            ++v19;
          }

          if (v44)
          {
            v136 = v44;
            operator delete(v44);
          }

          v16 = __p[0];
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v20 = 0;
          v18 = 17;
        }

        while ((v21 & 1) != 0);
        std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v133, v19);
        std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v130, v19);
        std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v139, (v128 - v127) >> 2);
        if (v140 != v139)
        {
          v45 = 0;
          v46 = 1;
          while (1)
          {
            DspLib::Biquad::Design::fromSDomain(*(v133 + 24 * v45), (*(v133 + 24 * v45 + 8) - *(v133 + 24 * v45)) >> 3, v130[3 * v45], (v130[3 * v45 + 1] - v130[3 * v45]) >> 3, __p, *(v127 + v45), *(a1 + 24));
            v47 = v139;
            v48 = &v139[3 * v45];
            v49 = *v48;
            if (*v48)
            {
              v48[1] = v49;
              operator delete(v49);
              *v48 = 0;
              v48[1] = 0;
              v48[2] = 0;
              v47 = v139;
            }

            *v48 = *__p;
            v48[2] = *v126;
            if (v47[3 * v45 + 1] == v47[3 * v45])
            {
              break;
            }

            v45 = v46;
            v50 = 0xAAAAAAAAAAAAAAABLL * (v140 - v47) > v46++;
            if (!v50)
            {
              goto LABEL_173;
            }
          }

          v98 = v140;
          if (v140 != v47)
          {
            v99 = v140;
            do
            {
              v101 = *(v99 - 3);
              v99 -= 3;
              v100 = v101;
              if (v101)
              {
                *(v98 - 2) = v100;
                operator delete(v100);
              }

              v98 = v99;
            }

            while (v99 != v47);
          }

          goto LABEL_172;
        }

        break;
      case 3:
        v133 = 0uLL;
        *&v134[0] = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        std::vector<float>::resize(&v127, 2uLL);
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        do
        {
          v124 = v54;
          v122 = v55;
          __p[0] = 0;
          __p[1] = 0;
          *v126 = 0;
          __src = 0;
          v136 = 0;
          v137 = 0;
          v56 = 17 * v53;
          v57 = *(a1 + 52 + 68 * v53);
          v58 = DspLib::LoudspeakerModel::Parameters::Sdomain_1::kMaxNumPolesPerChannel[v53];
          if (v58 <= 1)
          {
            v59 = 1;
          }

          else
          {
            v59 = v58;
          }

          v60 = v56 + 7;
          do
          {
            v61 = *(v6 + 4 * (v60 - 1));
            v62 = *(v6 + 4 * v60);
            v51 = DspLib::isEqual(v51, v57, 0.0, 1.0e-20);
            if ((v51 & 1) == 0)
            {
              v51 = DspLib::isEqual(v51, v61, 0.0, 1.0e-20);
              if (!v51 || (v51 = DspLib::isEqual(v51, v62, 0.0, 1.0e-20), (v51 & 1) == 0))
              {
                v63 = __p[1];
                if (__p[1] >= *v126)
                {
                  v65 = (__p[1] - __p[0]) >> 3;
                  v66 = v65 + 1;
                  if ((v65 + 1) >> 61)
                  {
                    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                  }

                  v67 = *v126 - __p[0];
                  if ((*v126 - __p[0]) >> 2 > v66)
                  {
                    v66 = v67 >> 2;
                  }

                  if (v67 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v68 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v68 = v66;
                  }

                  if (v68)
                  {
                    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](__p, v68);
                  }

                  v69 = (8 * v65);
                  *v69 = v61;
                  v69[1] = v62;
                  v64 = (8 * v65 + 8);
                  v70 = (8 * v65 - (__p[1] - __p[0]));
                  memcpy(v69 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
                  v51 = __p[0];
                  __p[0] = v70;
                  __p[1] = v64;
                  *v126 = 0;
                  if (v51)
                  {
                    operator delete(v51);
                  }
                }

                else
                {
                  *__p[1] = v61;
                  v63[1] = v62;
                  v64 = v63 + 2;
                }

                __p[1] = v64;
              }
            }

            v60 += 2;
            --v59;
          }

          while (v59);
          if ((v52 & 1) == 0)
          {
            v71 = DspLib::LoudspeakerModel::Parameters::Sdomain_1::kMaxNumZerosPerChannel[v53];
            if (v71 <= 1)
            {
              v72 = 1;
            }

            else
            {
              v72 = v71;
            }

            v73 = v56 + 15;
            do
            {
              v74 = *(v6 + 4 * (v73 - 1));
              v75 = *(v6 + 4 * v73);
              v51 = DspLib::isEqual(v51, v57, 0.0, 1.0e-20);
              if ((v51 & 1) == 0)
              {
                v51 = DspLib::isEqual(v51, v74, 0.0, 1.0e-20);
                if (!v51 || (v51 = DspLib::isEqual(v51, v75, 0.0, 1.0e-20), (v51 & 1) == 0))
                {
                  v76 = v136;
                  if (v136 >= v137)
                  {
                    v78 = (v136 - __src) >> 3;
                    v79 = v78 + 1;
                    if ((v78 + 1) >> 61)
                    {
                      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                    }

                    v80 = v137 - __src;
                    if ((v137 - __src) >> 2 > v79)
                    {
                      v79 = v80 >> 2;
                    }

                    if (v80 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v81 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v81 = v79;
                    }

                    if (v81)
                    {
                      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&__src, v81);
                    }

                    v82 = (8 * v78);
                    *v82 = v74;
                    v82[1] = v75;
                    v77 = (8 * v78 + 8);
                    v83 = (8 * v78 - (v136 - __src));
                    memcpy(v82 - (v136 - __src), __src, v136 - __src);
                    v51 = __src;
                    __src = v83;
                    v136 = v77;
                    v137 = 0;
                    if (v51)
                    {
                      operator delete(v51);
                    }
                  }

                  else
                  {
                    *v136 = v74;
                    *(v76 + 1) = v75;
                    v77 = v76 + 2;
                  }

                  v136 = v77;
                }
              }

              v73 += 2;
              --v72;
            }

            while (v72);
          }

          v54 = v124;
          if (__p[1] != __p[0])
          {
            v84 = *(&v133 + 1);
            if (*(&v133 + 1) >= *&v134[0])
            {
              v85 = std::vector<std::vector<DSPComplex>>::__emplace_back_slow_path<std::vector<DSPComplex>&>(&v133, __p);
            }

            else
            {
              **(&v133 + 1) = 0;
              *(v84 + 8) = 0;
              *(v84 + 16) = 0;
              std::vector<DSPComplex>::__init_with_size[abi:ne200100]<DSPComplex*,DSPComplex*>(v84, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
              v85 = v84 + 24;
            }

            *(&v133 + 1) = v85;
          }

          if (v136 != __src)
          {
            v86 = v131;
            if (v131 >= v132)
            {
              v87 = std::vector<std::vector<DSPComplex>>::__emplace_back_slow_path<std::vector<DSPComplex>&>(&v130, &__src);
            }

            else
            {
              *v131 = 0;
              *(v86 + 8) = 0;
              *(v86 + 16) = 0;
              std::vector<DSPComplex>::__init_with_size[abi:ne200100]<DSPComplex*,DSPComplex*>(v86, __src, v136, (v136 - __src) >> 3);
              v87 = v86 + 24;
            }

            v131 = v87;
          }

          if (__p[1] != __p[0] || (v88 = __src, v136 != __src))
          {
            std::vector<float>::resize(&v127, v124 + 1);
            *(v127 + v124) = v57;
            v88 = __src;
            v54 = v124 + 1;
          }

          if (v88)
          {
            v136 = v88;
            operator delete(v88);
          }

          v51 = __p[0];
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v55 = 0;
          v52 = 1;
          v53 = 1;
        }

        while ((v122 & 1) != 0);
        std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v133, v54);
        std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v130, v54);
        v89 = *(a1 + 500);
        switch(v89)
        {
          case 2:
            goto LABEL_150;
          case 1:
            DspLib::LoudspeakerModel::inversePressurFilterForSdomain_1_Parameters(&v133, &v130, v127, (v128 - v127) >> 2, vcvtas_u32_f32(*(a1 + 172)), &v139, *(a1 + 180), *(a1 + 184), *(a1 + 36), *(a1 + 24));
            goto LABEL_173;
          case 0:
LABEL_150:
            std::vector<std::vector<DspLib::Biquad::Section>>::resize(&v139, (v128 - v127) >> 2);
            if (v140 != v139)
            {
              v90 = 0;
              v91 = 1;
              while (1)
              {
                DspLib::Biquad::Design::fromSDomain(*(v133 + 24 * v90), (*(v133 + 24 * v90 + 8) - *(v133 + 24 * v90)) >> 3, v130[3 * v90], (v130[3 * v90 + 1] - v130[3 * v90]) >> 3, __p, *(v127 + v90), *(a1 + 24));
                v47 = v139;
                v92 = &v139[3 * v90];
                v93 = *v92;
                if (*v92)
                {
                  v92[1] = v93;
                  operator delete(v93);
                  *v92 = 0;
                  v92[1] = 0;
                  v92[2] = 0;
                  v47 = v139;
                }

                *v92 = *__p;
                v92[2] = *v126;
                if (v47[3 * v90 + 1] == v47[3 * v90])
                {
                  break;
                }

                v90 = v91;
                v50 = 0xAAAAAAAAAAAAAAABLL * (v140 - v47) > v91++;
                if (!v50)
                {
                  goto LABEL_173;
                }
              }

              v94 = v140;
              if (v140 != v47)
              {
                v95 = v140;
                do
                {
                  v97 = *(v95 - 3);
                  v95 -= 3;
                  v96 = v97;
                  if (v97)
                  {
                    *(v94 - 2) = v96;
                    operator delete(v96);
                  }

                  v94 = v95;
                }

                while (v95 != v47);
              }

LABEL_172:
              v140 = v47;
            }

            break;
        }

        break;
      case 4:
        goto LABEL_198;
      default:
        goto LABEL_176;
    }

LABEL_173:
    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    __p[0] = &v130;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = &v133;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](__p);
    goto LABEL_176;
  }
}

void sub_1DDBBFEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  a15 = &a24;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = &a27;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a33 = (v34 - 160);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void DspLib::LoudspeakerModel::Algorithm::initializeFilters(vDSP_Length *a1, uint64_t a2, vDSP_Length a3, uint64_t a4)
{
  DspLib::Biquad::Filter::initialize((a1 + 64), a1[1], a3);
  DspLib::Biquad::Filter::setCoefficients((a1 + 64), a2, a3, 0, 0x41uLL);
  if (*(a4 + 16))
  {
    DspLib::Biquad::Filter::initialize((a1 + 73), a1[1], *(a4 + 8));
    v8 = *a4;
    v9 = *(a4 + 8);

    DspLib::Biquad::Filter::setCoefficients((a1 + 73), v8, v9, 0, 0x41uLL);
  }

  else
  {

    DspLib::Biquad::Filter::uninitialize((a1 + 73));
  }
}

uint64_t DspLib::LoudspeakerModel::Algorithm::setProcessFunction(DspLib::LoudspeakerModel::Algorithm *this)
{
  v3[4] = *MEMORY[0x1E69E9840];
  if (*(this + 584))
  {
    if (*(this + 126) == 3)
    {
      v1 = &unk_1F5919AB0;
    }

    else
    {
      v1 = &unk_1F5919B30;
    }
  }

  else
  {
    v1 = &unk_1F5919A20;
  }

  v3[0] = v1;
  v3[1] = this;
  v3[3] = v3;
  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::swap[abi:ne200100](v3, this + 82);
  return std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](v3);
}

float *DspLib::LoudspeakerModel::calculateThieleSmallExcursionModelCoefficients@<X0>(float *result@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>)
{
  v4 = result[15] * result[15];
  if (v4 == 0.0 || (v5 = result, v6 = result[13], v7 = v6 * v6, v6 * v6 == 0.0) || (v8 = result[12], v8 == 0.0) || (v9 = result[14] / 140002.31 / v4, v9 == 0.0) || (v10 = result[9], v11 = result[11], v12 = v8, v13 = *a3.i64 * *a3.i64, v14 = *a3.i64 * *a3.i64 * *a3.i64, v15 = result[5] / v7, v16 = result[6] / v7, v17 = 1.0 / v12 + 1.0 / v9, v18 = v16 * v10, v19 = v16 * v11 + v15 * v10, v20 = v16 * v17 + v15 * v11 + 1.0, v21 = v15 * v17, v22 = (*a3.i64 + *a3.i64) * v20, v23 = v13 * 4.0, v24 = v15 * v17 + v22 + v13 * 4.0 * v19 + v14 * 8.0 * v18, v24 == 0.0))
  {
    *a2 = 0;
    *(a2 + 40) = 0;
  }

  else
  {
    v25 = v21 - v22 + v23 * v19 - v14 * 8.0 * v18;
    v26 = v14 * 24.0;
    v27 = 1.0 / v24;
    v28 = (v22 + v21 * 3.0 - v23 * v19 - v26 * v18) * (1.0 / v24);
    v29 = (-(v22 - v21 * 3.0) - v23 * v19 + v26 * v18) * (1.0 / v24);
    v30 = (v29 - v28 * v28 / 3.0) * ((v29 - v28 * v28 / 3.0) * (v29 - v28 * v28 / 3.0));
    v31 = v25 * (1.0 / v24) + v28 * (v28 * (v28 + v28)) / 27.0 - v28 * v29 / 3.0;
    v32 = sqrt(fabs(v30 / 27.0 + v31 * v31 * 0.25));
    v33 = v31 * -0.5;
    *a3.i64 = v31 * -0.5 + v32;
    v34 = 0.0;
    v35 = 0.0;
    if (*a3.i64 != 0.0)
    {
      v54 = a3;
      v36 = log(fabs(*a3.i64));
      *a3.i64 = exp(v36 * 0.333333343);
      v34 = 0.0;
      v37.f64[0] = NAN;
      v37.f64[1] = NAN;
      *&v35 = vbslq_s8(vnegq_f64(v37), a3, v54).u64[0];
    }

    *a3.i64 = v33 - v32;
    if (v33 - v32 != 0.0)
    {
      v53 = a3;
      v55 = v35;
      v38 = log(fabs(*a3.i64));
      *v39.i64 = exp(v38 * 0.333333343);
      v35 = v55;
      v40.f64[0] = NAN;
      v40.f64[1] = NAN;
      *&v34 = vbslq_s8(vnegq_f64(v40), v39, v53).u64[0];
    }

    v41 = v28 / -3.0 + v35 + v34;
    v42 = v28 / -3.0 - (v35 + v34) * 0.5;
    v43 = 0.9999;
    if (v41 <= 0.9999)
    {
      v43 = v28 / -3.0 + v35 + v34;
    }

    if (v41 >= -0.9999)
    {
      v44 = v43;
    }

    else
    {
      v44 = -0.9999;
    }

    v45 = 0.999;
    if (v42 <= 0.999)
    {
      v45 = v28 / -3.0 - (v35 + v34) * 0.5;
    }

    if (v42 >= -0.9999)
    {
      v46 = v45;
    }

    else
    {
      v46 = -0.9999;
    }

    v47 = v27 / v6 * 8.0;
    *&v56 = COERCE_UNSIGNED_INT((v5[16] * v47) / v5[17]);
    DWORD2(v56) = 0;
    v48 = v44;
    *(&v56 + 3) = -v48;
    v57 = xmmword_1DE095680;
    *&v49 = v46 * -2.0;
    *&v50 = (v35 - v34) * 1.73205081 * 0.5 * ((v35 - v34) * 1.73205081 * 0.5) + v46 * v46;
    v58 = __PAIR64__(v50, v49);
    result = DspLib::Biquad::validate(&v56, 2);
    if (result)
    {
      v51 = v57;
      *a2 = v56;
      *(a2 + 16) = v51;
      *(a2 + 32) = v58;
      v52 = 1;
    }

    else
    {
      v52 = 0;
      *a2 = 0;
    }

    *(a2 + 40) = v52;
  }

  return result;
}

void std::vector<std::vector<DspLib::Biquad::Section>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<DspLib::Biquad::Section>>::__append(a1, v6);
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

uint64_t DspLib::LoudspeakerModel::inversePressureModelForThieleSmall@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (*(a2 + 40))
  {
    v10 = 0x3F80000000000000uLL;
    v11 = 0;
    LODWORD(v9) = 1065353216;
    HIDWORD(v9) = 0;
    v5 = a4;
    *(&v9 + 4) = *(a2 + 32);
    DspLib::Biquad::Design::integrator(2, *(result + 4), 45.0, v5, &v10 + 4);
    *&v9 = 1.0 / ((1.0 - *(&v9 + 1)) + *(&v9 + 2));
    *(&v9 + 4) = vmul_n_f32(*(&v9 + 4), *&v9);
    v6 = (vsub_f32(*(&v10 + 4), vdup_lane_s32(*(&v10 + 4), 1)).f32[0] + *(&v10 + 3)) / ((1.0 - *&v11) + *(&v11 + 1));
    *(&v10 + 4) = vmul_n_f32(*(&v10 + 4), 1.0 / v6);
    *(&v10 + 3) = *(&v10 + 3) * (1.0 / v6);
    result = DspLib::Biquad::validate(&v9, 2);
    if (result)
    {
      v7 = v10;
      *a3 = v9;
      *(a3 + 16) = v7;
      *(a3 + 32) = v11;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *a3 = 0;
    }

    *(a3 + 40) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

uint64_t std::vector<std::vector<DspLib::Biquad::Section>>::emplace_back<int,DspLib::Biquad::Section const&>(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = std::vector<std::vector<DspLib::Biquad::Section>>::__emplace_back_slow_path<int,DspLib::Biquad::Section const&>(a1, a2);
  }

  else
  {
    std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](*(a1 + 8), *a2);
    v4 = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = v4;
  return v4 - 24;
}

void DspLib::LoudspeakerModel::inversePressurFilterForSdomain_1_Parameters(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, unsigned int a5, void ***a6, double a7, double a8, double a9, double a10)
{
  v91 = *MEMORY[0x1E69E9840];
  if (a4 != 2 || (v12 = *a1, a1[1] - *a1 != 48) || (v14 = *a2, a2[1] - *a2 != 48) || ((v15 = v12[3], v12[4] - v15 == 8) ? (v16 = v14[4] == v14[3]) : (v16 = 0), !v16))
  {
    *__src = 1;
    v17 = a6[1];
    if (v17 >= a6[2])
    {
      v18 = std::vector<std::vector<DspLib::Biquad::Section>>::__emplace_back_slow_path<int,DspLib::Biquad::Section const&>(a6, __src);
    }

    else
    {
      std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a6[1], 1uLL);
      v18 = (v17 + 3);
      a6[1] = v17 + 3;
    }

    a6[1] = v18;
    return;
  }

  v21 = *v15;
  v22 = v21 * -2.0;
  v23 = (v15[1] * v15[1] + v21 * v21 + a5 * *(a3 + 4) * (a8 / a7)) * -4.0 + v22 * v22;
  if (v23 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  if (v23 >= 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  v85 = 0;
  v86 = 0;
  v87 = 0;
  v83 = 0;
  v84 = 0;
  __p = 0;
  v26 = *v12;
  if (v12[1] != *v12)
  {
    v27 = 0;
    v28 = 0;
    v29 = 1;
    do
    {
      if (v27 >= v84)
      {
        v30 = (v27 - __p) >> 3;
        if ((v30 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v31 = (v84 - __p) >> 2;
        if (v31 <= v30 + 1)
        {
          v31 = v30 + 1;
        }

        if (v84 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
          std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&__p, v32);
        }

        v33 = (8 * v30);
        *v33 = *(v26 + 8 * v28);
        v27 = (8 * v30 + 8);
        v34 = v33 - (v83 - __p);
        memcpy(v34, __p, v83 - __p);
        v35 = __p;
        __p = v34;
        v83 = v27;
        v84 = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v27 = *(v26 + 8 * v28);
        v27 += 8;
      }

      v83 = v27;
      v28 = v29;
      v26 = **a1;
      ++v29;
    }

    while (v28 < ((*a1)[1] - v26) >> 3);
    v14 = *a2;
  }

  v36 = *v14;
  if (v14[1] == *v14)
  {
    v39 = v86;
  }

  else
  {
    v37 = 0;
    v38 = 1;
    v39 = v86;
    do
    {
      if (v39 >= v87)
      {
        v40 = (v39 - v85) >> 3;
        if ((v40 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v41 = (v87 - v85) >> 2;
        if (v41 <= v40 + 1)
        {
          v41 = v40 + 1;
        }

        if (v87 - v85 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&v85, v42);
        }

        v43 = (8 * v40);
        *v43 = *(v36 + 8 * v37);
        v39 = 8 * v40 + 8;
        v44 = v43 - (v86 - v85);
        memcpy(v44, v85, v86 - v85);
        v45 = v85;
        v85 = v44;
        v86 = v39;
        v87 = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v39 = *(v36 + 8 * v37);
        v39 += 8;
      }

      v86 = v39;
      v37 = v38;
      v36 = **a2;
      ++v38;
    }

    while (v37 < ((*a2)[1] - v36) >> 3);
  }

  v46 = sqrt(fabs(v23)) * 0.5;
  v47 = v22 * -0.5 + v46 * v24;
  v48 = v46 * v25;
  if (v39 >= v87)
  {
    v50 = (v39 - v85) >> 3;
    if ((v50 + 1) >> 61)
    {
      goto LABEL_88;
    }

    v51 = (v87 - v85) >> 2;
    if (v51 <= v50 + 1)
    {
      v51 = v50 + 1;
    }

    if (v87 - v85 >= 0x7FFFFFFFFFFFFFF8)
    {
      v52 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v52 = v51;
    }

    if (v52)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&v85, v52);
    }

    v53 = (8 * v50);
    *v53 = v47;
    v53[1] = v48;
    v49 = 8 * v50 + 8;
    memcpy((8 * v50 - (v86 - v85)), v85, v86 - v85);
    v54 = v85;
    v85 = (8 * v50 - (v86 - v85));
    v86 = v49;
    v87 = 0;
    if (v54)
    {
      operator delete(v54);
    }
  }

  else
  {
    *v39 = v47;
    *(v39 + 4) = v48;
    v49 = v39 + 8;
  }

  v86 = v49;
  v55 = (*a1)[3];
  v56 = v83;
  if (v83 >= v84)
  {
    v58 = (v83 - __p) >> 3;
    if (!((v58 + 1) >> 61))
    {
      v59 = (v84 - __p) >> 2;
      if (v59 <= v58 + 1)
      {
        v59 = v58 + 1;
      }

      if (v84 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v60 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v59;
      }

      if (v60)
      {
        std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&__p, v60);
      }

      v61 = (8 * v58);
      *v61 = *v55;
      v57 = 8 * v58 + 8;
      v62 = v61 - (v83 - __p);
      memcpy(v62, __p, v83 - __p);
      v63 = __p;
      __p = v62;
      v83 = v57;
      v84 = 0;
      if (v63)
      {
        operator delete(v63);
      }

      goto LABEL_76;
    }

LABEL_88:
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  *v83 = *v55;
  v57 = (v56 + 8);
LABEL_76:
  v83 = v57;
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  std::vector<std::vector<DspLib::Biquad::Section>>::resize(a6, 1uLL);
  DspLib::Biquad::Design::fromSDomain(v85, (v86 - v85) >> 3, __p, (v57 - __p) >> 3, __src, 1.0, a10);
  v64 = *a6;
  v65 = **a6;
  v66 = *a6;
  if (v65)
  {
    v64[1] = v65;
    operator delete(v65);
    *v64 = 0;
    v64[1] = 0;
    v64[2] = 0;
    v66 = *a6;
  }

  *v64 = *__src;
  v64[2] = *&__src[16];
  if (0xCCCCCCCCCCCCCCCDLL * ((v66[1] - *v66) >> 2) > 2)
  {
    v67 = a9;
    v68 = a10;
    DspLib::Biquad::Design::integrator(2, v67, 100.0, v68, v78);
    v69 = *a6;
    v70 = **a6;
    *(v70 + 52) = v79;
    v71 = a10 * 0.5;
    v77 = v71;
    __src[0] = 0;
    *&__src[8] = 0u;
    v89 = 0u;
    memset(v90, 0, sizeof(v90));
    DspLib::Biquad::Filter::initialize(__src, 1uLL, 0xCCCCCCCCCCCCCCCDLL * ((v69[1] - v70) >> 2));
    DspLib::Biquad::Filter::setCoefficients(__src, **a6, 0xCCCCCCCCCCCCCCCDLL * (((*a6)[1] - **a6) >> 2), 0, 0x41uLL);
    v76 = 0.0;
    DspLib::Biquad::amplitudeResponse(__src, &v77, 1uLL, &v76, 1, 0, a10, v72, v73);
    v74 = **a6;
    v75 = 1.0 / v76;
    *v74 = vmul_n_f32(*v74, 1.0 / v76);
    v74[1].f32[0] = v75 * v74[1].f32[0];
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v90[8]);
    if (v89)
    {
      *(&v89 + 1) = v89;
      operator delete(v89);
    }
  }

  else
  {
    *&__src[16] = 0;
    *__src = xmmword_1DE096294;
    std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(v66, __src, &__src[20], 1uLL);
  }

  *__src = v80;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](__src);
  *__src = v81;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](__src);
  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_1DDBC0DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::LoudspeakerModel::Algorithm::frequencyResponse(uint64_t a1, uint64_t a2, unint64_t a3, float **this)
{
  if (*(a1 + 512))
  {
    if (*(a1 + 584))
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    DspLib::ChannelBuffer::resize(this, v8, a3);
    v11 = *(a1 + 500);
    switch(v11)
    {
      case 2:
        v17 = *(a1 + 504);
        switch(v17)
        {
          case 1:
            DspLib::Biquad::amplitudeResponse((a1 + 512), a2, a3, **this, (*(*this + 1) - **this) >> 2, 0, *(a1 + 24), v9, v10);
            break;
          case 2:
            DspLib::ChannelBuffer::resize(this, 1uLL, a3);
            DspLib::clear(**this, (*(*this + 1) - **this) >> 2);
            break;
          case 3:
            DspLib::ChannelBuffer::resize(this, 1uLL, a3);
            DspLib::ComplexVector::ComplexVector(&__A, a3, 0);
            DspLib::Biquad::complexResponse((a1 + 512), a2, a3, &__A, 0, *(a1 + 24), v18, v19);
            DspLib::ComplexVector::ComplexVector(v28, a3, 0);
            DspLib::Biquad::complexResponse((a1 + 584), a2, a3, v28, 0, *(a1 + 24), v20, v21);
            v22 = *(a1 + 180);
            v23 = *(a1 + 184) / v22;
            v24 = v22 == 0.0;
            v25 = 1.0;
            if (!v24)
            {
              v25 = v23;
            }

            DspLib::operator*=(v28, *(a1 + 172) * v25);
            DspLib::operator*=(v28, &__A);
            DspLib::operator+=(&__A, v28);
            vDSP_zvabs(&__A, 1, **this, 1, __N);
            DspLib::ComplexVector::~ComplexVector(v28);
            DspLib::ComplexVector::~ComplexVector(&__A);
            break;
        }

        DspLib::multiply();
      case 1:
        DspLib::Biquad::amplitudeResponse((a1 + 512), a2, a3, **this, (*(*this + 1) - **this) >> 2, 0, *(a1 + 24), v9, v10);
        break;
      case 0:
        DspLib::Biquad::amplitudeResponse((a1 + 512), a2, a3, **this, (*(*this + 1) - **this) >> 2, 0, *(a1 + 24), v9, v10);
        if (*(a1 + 584) == 1)
        {
          DspLib::Biquad::amplitudeResponse((a1 + 584), a2, a3, *(*this + 6), (*(*this + 7) - *(*this + 6)) >> 2, 0, *(a1 + 24), v12, v13);
          v14 = *this;
          if (*(a1 + 504) == 3)
          {
            DspLib::copy(*v14, (*(v14 + 1) - *v14) >> 2, *(v14 + 3));
            DspLib::multiply();
          }

          DspLib::copy(*(v14 + 6), (*(v14 + 7) - *(v14 + 6)) >> 2, *(v14 + 3));
          DspLib::divide(*(*this + 6), (*(*this + 7) - *(*this + 6)) >> 2, **this);
        }

        break;
    }

    v26 = (this[4] - this[3]) >> 3;
    __A.realp = this[3];
    __A.imagp = v26;
    if (this[1] == *this)
    {
      v27 = 0;
    }

    else
    {
      v27 = (*(*this + 1) - **this) >> 2;
    }

    __N = v27;
    DspLib::amp2dBSafe(&__A, 1.0e-20);
  }

  else
  {
    DspLib::ChannelBuffer::resize(this, 1uLL, a3);
    v15 = **this;
    v16 = (*(*this + 1) - v15) >> 2;

    DspLib::fill(v15, v16, -120.0);
  }
}

void sub_1DDBC1234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  DspLib::ComplexVector::~ComplexVector(&a9);
  DspLib::ComplexVector::~ComplexVector(&a19);
  _Unwind_Resume(a1);
}

void DspLib::LoudspeakerModel::Algorithm::processDualSerial(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[2];
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *a3 + 8 * a3[1] - 8 * v7;
  v11 = *a2;
  v12 = v6;
  *&v9 = v4;
  *(&v9 + 1) = v7;
  v10 = v5;
  DspLib::Biquad::Filter::process((a1 + 512), &v11, &v9);
  *&v11 = v4;
  *(&v11 + 1) = v7;
  v12 = v5;
  *&v9 = v8;
  *(&v9 + 1) = v7;
  v10 = v5;
  DspLib::Biquad::Filter::process((a1 + 584), &v11, &v9);
}

void DspLib::LoudspeakerModel::Algorithm::processDualParallel(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[2];
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *a3 + 8 * a3[1] - 8 * v8;
  v12 = *a2;
  v13 = v7;
  *&v10 = v9;
  *(&v10 + 1) = v8;
  v11 = v6;
  DspLib::Biquad::Filter::process((a1 + 584), &v12, &v10);
  v12 = *a2;
  v13 = *(a2 + 16);
  *&v10 = v5;
  *(&v10 + 1) = v8;
  v11 = v6;
  DspLib::Biquad::Filter::process((a1 + 512), &v12, &v10);
}

void std::vector<std::vector<DspLib::Biquad::Section>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *result) >> 2) < a4)
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

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x666666666666666)
      {
        v12 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 2) >= a4)
  {
    v20 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v9[v20];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = v13;
    if (&__src[v14] != a3)
    {
      v16 = v13;
      v17 = v13;
      do
      {
        v18 = *v15;
        *(v17 + 4) = *(v15 + 4);
        *v17 = v18;
        v17 += 20;
        v15 += 20;
        v16 += 20;
      }

      while (v15 != a3);
    }

    v19 = v16;
  }

  v7[1] = v19;
  return result;
}

uint64_t std::vector<std::vector<DSPComplex>>::__emplace_back_slow_path<std::vector<DSPComplex>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<DSPComplex>::__init_with_size[abi:ne200100]<DSPComplex*,DSPComplex*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_1DDBC17EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DSPComplex>::__init_with_size[abi:ne200100]<DSPComplex*,DSPComplex*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBC1860(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<DspLib::Biquad::Section>>::__emplace_back_slow_path<int,DspLib::Biquad::Section const&>(uint64_t a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v12 = 0;
  v13 = 24 * v2;
  v14 = 24 * v2;
  v15 = 0;
  std::vector<DspLib::Biquad::Section>::vector[abi:ne200100]((24 * v2), *a2);
  v7 = *(a1 + 8) - *a1;
  v8 = (24 * v2 - v7);
  memcpy(v8, *a1, v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = 24 * v2 + 24;
  v10 = *(a1 + 16);
  *(a1 + 16) = v15;
  v14 = v9;
  v15 = v10;
  v12 = v9;
  v13 = v9;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v12);
  return 24 * v2 + 24;
}

void sub_1DDBC1990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1DDBC1A18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_0,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_0>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5919A20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_0,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_0>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  v3 = *a3;
  v4 = *(a3 + 16);
  DspLib::Biquad::Filter::process((*(a1 + 8) + 512), &v5, &v3);
}

uint64_t std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_0,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_0>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_1DDBC1DC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_1,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_1>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5919AB0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_1,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_1>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::operator()(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = *a3;
  v4 = *(a3 + 2);
  DspLib::LoudspeakerModel::Algorithm::processDualSerial(*(a1 + 8), &v5, &v3);
}

uint64_t std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_1,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_1>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_2,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_2>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5919B30;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_2,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_2>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::operator()(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = *a3;
  v4 = *(a3 + 2);
  DspLib::LoudspeakerModel::Algorithm::processDualParallel(*(a1 + 8), &v5, &v3);
}

uint64_t std::__function::__func<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_2,std::allocator<DspLib::LoudspeakerModel::Algorithm::setProcessFunction(void)::$_2>,void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t DspLib::RMS::initialize(DspLib::RMS *this, unsigned int a2, double a3)
{
  v3 = *(this + 3);
  v4 = *(this + 16) ^ 1 | (v3 != a2);
  if (a2 >= 0x41)
  {
    v17 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/RMS/dsp/DspLibRMS.cpp");
    v18 = 28;
LABEL_22:
    printf("DSP Sound assertion in %s at line %d\n", v17, v18);
    ++DspLibDebug::mAssertCounter;
    return v4 & 1;
  }

  if (!a2)
  {
    v17 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/RMS/dsp/DspLibRMS.cpp");
    v18 = 29;
    goto LABEL_22;
  }

  v7 = a2;
  *(this + 3) = a2;
  if (a3 <= 0.0)
  {
    v17 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/RMS/dsp/DspLibRMS.cpp");
    v18 = 31;
    goto LABEL_22;
  }

  isEqual = DspLib::isEqual(this, *(this + 4), a3, 1.0e-20);
  *(this + 4) = a3;
  std::vector<float>::resize(this + 14, *(this + 3));
  std::vector<float>::resize(this + 11, *(this + 3));
  std::vector<float>::resize(this + 6, *(this + 3));
  if (v3 != v7)
  {
    v9 = *(this + 3);
    if (v9 > 8)
    {
      DspLib::fill(*(this + 6), (*(this + 7) - *(this + 6)) >> 2, 1.0);
    }

    else
    {
      DspLib::copy(&DspLib::kITU1770Weights, v9, *(this + 6));
    }
  }

  v10 = !isEqual;
  *(this + 16) = 1;
  v11 = *(this + 3);
  if (v11 < 9)
  {
    *(this + 18) = 0;
  }

  else
  {
    v12 = 0;
    v13 = *(this + 18);
    v14 = *(this + 6);
    do
    {
      if ((v13 >> v12))
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      *(v14 + 4 * v12++) = v15;
    }

    while (v11 > v12);
  }

  DspLib::RMS::setParameters(this, *(this + 10), *(this + 11));
  v4 |= v10;
  if (v3 != v7)
  {
    DspLib::RMS::reset(this);
  }

  return v4 & 1;
}

uint64_t DspLib::RMS::setExcludeChannelMask(uint64_t this, unsigned int a2)
{
  if (*(this + 16) == 1)
  {
    v2 = *(this + 24);
    if (v2 < 9)
    {
      *(this + 72) = 0;
    }

    else
    {
      v3 = 0;
      *(this + 72) = a2;
      v4 = *(this + 48);
      do
      {
        if ((a2 >> v3))
        {
          v5 = 0.0;
        }

        else
        {
          v5 = 1.0;
        }

        *(v4 + 4 * v3++) = v5;
      }

      while (v2 > v3);
    }
  }

  else
  {
    *(this + 72) = a2;
  }

  return this;
}

void DspLib::RMS::setParameters(uint64_t a1, int a2, float a3)
{
  if (a2 >= 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < 0)
  {
    v3 = 0;
  }

  *(a1 + 40) = v3;
  v4 = 100000.0;
  if (a3 <= 100000.0)
  {
    v4 = a3;
  }

  if (a3 >= 0.1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.1;
  }

  *(a1 + 44) = v5;
  if (*(a1 + 16) == 1)
  {
    v7 = *(a1 + 32) * v5 / 1000.0;
    if (v3)
    {
      v8 = v7;
      v10 = *(a1 + 160);
      v9 = (a1 + 160);
      v11 = *(a1 + 24);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - v10) >> 3) != v11 || v8 != (v10[1] - *v10) >> 2)
      {
        std::vector<std::vector<float>>::resize(v9, v11);
        v12 = *(a1 + 160);
        v13 = *(a1 + 168);
        while (v12 != v13)
        {
          std::vector<float>::resize(v12, v7);
          v14 = *v12;
          v15 = v12[1];
          v12 += 3;
          DspLib::clear(v14, v15 - v14);
        }

        *(a1 + 144) = 0;
        *(a1 + 136) = 0;
        if (v8)
        {
          v16 = 1.0 / v8;
        }

        else
        {
          v16 = 1.0;
        }

        *(a1 + 152) = v16;
      }
    }

    else
    {
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((a1 + 160));
      v17 = v7;
      v18 = expf(-2.2 / v17);
      *(a1 + 76) = v18;
      *(a1 + 80) = 1.0 - v18;
      v19 = *(a1 + 24);
      if (v19)
      {
        v20 = 0;
        v21 = *(a1 + 48);
        v22 = *(a1 + 88);
        do
        {
          *(v22 + 4 * v20) = *(a1 + 80) * *(v21 + 4 * v20);
          ++v20;
        }

        while (v19 > v20);
      }
    }

    v23 = *(a1 + 40);
    v24 = DspLib::RMS::processOnePoleFilter;
    if (v23)
    {
      if (v23 == 2)
      {
        v24 = DspLib::RMS::processMovingAverageMean;
      }

      else
      {
        if (v23 != 1)
        {
          return;
        }

        v24 = DspLib::RMS::processMovingAverage;
      }
    }

    *a1 = v24;
    *(a1 + 8) = 0;
  }
}

void DspLib::RMS::reset(DspLib::RMS *this)
{
  *(this + 18) = 0;
  *(this + 34) = 0;
  *(this + 46) = 730643660;
  *(this + 188) = 0;
  v2 = *(this + 20);
  v3 = *(this + 21);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v2 += 24;
    DspLib::clear(v4, (v5 - v4) >> 2);
  }

  v6 = *(this + 14);
  v7 = *(this + 15) - v6;
  if (v7)
  {

    DspLib::clear(v6, v7 >> 2);
  }
}

uint64_t DspLib::RMS::processOnePoleFilter(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[2];
  if (v4)
  {
    v5 = 0;
    v6 = **a2;
    v7 = *(a1 + 112);
    v8 = *(a1 + 88);
    do
    {
      v9 = *v8;
      v10 = (*(a1 + 76) * *v7) + (*(v6 + 4 * v5) * *(v6 + 4 * v5));
      *v7 = v10;
      *(a3 + 4 * v5++) = v9 * v10;
    }

    while (v4 > v5);
  }

  v11 = *(a1 + 24);
  if (v11 >= 2)
  {
    for (i = 1; i < v11; i = (i + 1))
    {
      if (v4)
      {
        v13 = 0;
        v14 = (*a2)[i];
        v15 = *(a1 + 112);
        v16 = *(a1 + 88);
        do
        {
          v17 = *(v16 + 4 * i);
          v18 = (*(a1 + 76) * *(v15 + 4 * i)) + (*(v14 + 4 * v13) * *(v14 + 4 * v13));
          *(v15 + 4 * i) = v18;
          *(a3 + 4 * v13) = *(a3 + 4 * v13) + (v17 * v18);
          ++v13;
        }

        while (v4 > v13);
      }
    }
  }

  return DspLib::add(a3, a4, 1.0e-10);
}

double *DspLib::RMS::processMovingAverage(double *result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 20);
  v5 = *(v4 + 1);
  v6 = v5 - *v4;
  if (v5 == *v4)
  {
    DspLib::square();
  }

  if (a2[2])
  {
    v7 = 0;
    v8 = 0;
    v9 = v6 >> 2;
    v10 = *(result + 3);
    v11 = result[18];
    v12 = *(result + 34);
    do
    {
      if (v10)
      {
        v13 = 0;
        v14 = *a2;
        v15 = *(v3 + 6);
        result = v4;
        do
        {
          v16 = *result;
          result += 3;
          v17 = v11 - *(*&v16 + 4 * v12);
          v18 = (*(*(v14 + 8 * v13) + 4 * v7) * *(*(v14 + 8 * v13) + 4 * v7)) * *(v15 + 4 * v13);
          *(*&v16 + 4 * v12) = v18;
          v11 = v17 + v18;
          ++v13;
        }

        while (v10 > v13);
        v3[18] = v11;
      }

      if (v9 > v12 + 1)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }

      *(v3 + 34) = v12;
      v19 = v11 * *(v3 + 38) + 1.0e-10;
      *(a3 + 4 * v7) = v19;
      v7 = ++v8;
    }

    while (a2[2] > v8);
  }

  return result;
}

uint64_t DspLib::RMS::processMovingAverageMean(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 160);
  if (*(result + 168) == v8 || (v9 = v8[1], v10 = v9 - *v8, v9 == *v8))
  {
    result = DspLib::multiply(**a2, *(a2 + 16), a3, **(result + 48));
    if (*(v7 + 24) >= 2uLL)
    {
      v24 = 2;
      v25 = 1;
      do
      {
        result = DspLib::multiplyAccumulate(a3, a4, *(*a2 + 8 * v25), *(*(v7 + 48) + 4 * v25));
        v25 = v24;
      }

      while (*(v7 + 24) > v24++);
    }
  }

  else if (*(a2 + 16))
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 2;
    v14 = *(result + 24);
    v15 = *(result + 144);
    v16 = *(result + 136);
    do
    {
      if (v14)
      {
        v17 = 0;
        v18 = *a2;
        v19 = *(v7 + 48);
        result = v8;
        do
        {
          v20 = *result;
          result += 24;
          v21 = v15 - *(v20 + 4 * v16);
          v22 = *(v18[v17] + 4 * v11) * *(v19 + 4 * v17);
          *(v20 + 4 * v16) = v22;
          v15 = v21 + v22;
          ++v17;
        }

        while (v14 > v17);
        *(v7 + 144) = v15;
      }

      if (v13 > v16 + 1)
      {
        ++v16;
      }

      else
      {
        v16 = 0;
      }

      *(v7 + 136) = v16;
      v23 = v15 * *(v7 + 152) + 1.0e-10;
      *(a3 + 4 * v11) = v23;
      v11 = ++v12;
    }

    while (*(a2 + 16) > v12);
  }

  return result;
}

void DspLib::RMS::uninitialize(DspLib::RMS *this)
{
  *(this + 3) = 0;
  *(this + 16) = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 20);
  *(this + 15) = *(this + 14);
}

void DspLib::RMS::process(uint64_t a1, __int128 *a2, const float *a3, vDSP_Length a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (a1 + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v7(v9, &v10, a3, a4);
  if (*(a1 + 188) == 1)
  {
    *(a1 + 184) = DspLib::maxv(a3, a4);
    *(a1 + 188) = 0;
  }
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::initialize(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this, double a2, uint64_t a3)
{
  *this = a2;
  *(this + 6) = a3;
  DspLib::ComplexVector::setLength((this + 632), 0);
  *(this + 90) = *(this + 89);
  DspLib::ComplexVector::setLength((this + 736), 0);
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::pageInMatrixFunctions(this);
}

void sub_1DDBC29FC()
{
  *(v0 + 416) = 0;
  *(v0 + 440) = 0;
  *(v0 + 420) = 0;
  *(v0 + 448) = 1092616192;
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::pageInMatrixFunctions(v0);
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::pageInMatrixFunctions(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 12) <= 4uLL)
  {
    v1 = 4;
  }

  else
  {
    v1 = *(this + 12);
  }

  v2 = MEMORY[0x1EEE9AC00](this);
  MEMORY[0x1EEE9AC00](v2);
  v3 = 0;
  v4 = 0;
  v35[0] = v6;
  v35[1] = &v27[-v5];
  v35[2] = 3 * v1;
  v35[3] = 3;
  *(v7 + 32) = v1;
  __A.realp = &v37;
  __A.imagp = &v36;
  v34 = 3;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v9 = vcvts_n_f32_s32(rand(), 0x1FuLL);
      v39.imag = vcvts_n_f32_s32(rand(), 0x1FuLL);
      v39.real = v9;
      DspLib::ComplexSpan::setElement(&__A, i, v39);
    }

    DspLib::ComplexMatrixSpan::setColumn(v35, v3, &__A);
    v3 = ++v4;
  }

  while (v1 > v4);
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = 0;
  v13 = 0;
  v32[0] = v14;
  v32[1] = &v27[-v15];
  v32[2] = 3 * v1;
  v32[3] = v1;
  v32[4] = 3;
  do
  {
    for (j = 0; j != 3; ++j)
    {
      v17 = vcvts_n_f32_s32(rand(), 0x1FuLL);
      v40.imag = vcvts_n_f32_s32(rand(), 0x1FuLL);
      v40.real = v17;
      DspLib::ComplexSpan::setElement(&__A, j, v40);
    }

    DspLib::ComplexMatrixSpan::setRow(v32, v12, &__A);
    v12 = ++v13;
  }

  while (v1 > v13);
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v20 = 0;
  v31[0] = v22;
  v31[1] = &v27[-v21];
  v23 = 1;
  v31[2] = v1;
  do
  {
    v24 = vcvts_n_f32_s32(rand(), 0x1FuLL);
    v41.imag = vcvts_n_f32_s32(rand(), 0x1FuLL);
    v41.real = v24;
    DspLib::ComplexSpan::setElement(v31, v20, v41);
    v20 = v23;
  }

  while (v1 > v23++);
  v30 = 0;
  v29 = 0.0;
  DspLib::LoudspeakerSystemIDV2::updateModelParameters(&v30, &v29, &v28, v35, v32, v31, v25, 0.0);
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::reset(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this)
{
  *(this + 104) = 0;
  *(this + 55) = 0;
  *(this + 210) = 0;
  *(this + 56) = 1092616192;
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::pageInMatrixFunctions(this);
}

void DspLib::LoudspeakerSystemIDV2::updateModelParameters(DspLib::LoudspeakerSystemIDV2 *this, float *a2, float *a3, float *a4, DspLib::ComplexMatrixSpan *a5, DspLib::ComplexMatrixSpan *a6, DspLib::ComplexSpan *a7, float a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = xmmword_1DE095620;
  v8 = &v11;
  v10 = 3;
  DspLib::LoudspeakerSystemIDV2::updateMTimesX(&v8, a4, a5);
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::uninitialize(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this)
{
  DspLib::ComplexMatrix::setDimensions((this + 536), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 64), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 240), 0, 0);
  DspLib::ComplexVector::setLength((this + 336), 0);
  DspLib::ComplexVector::setLength((this + 160), 0);
  DspLib::ComplexVector::setLength((this + 456), 0);
  DspLib::ComplexVector::setLength((this + 848), 0);
  DspLib::ComplexVector::setLength((this + 632), 0);
  *(this + 90) = *(this + 89);

  DspLib::ComplexVector::setLength((this + 736), 0);
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::setParameters(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this, const float *a2)
{
  if (*(this + 56))
  {
    v4 = a2[7];
    if (a2[8] + *this / *(this + 6) * -2.0 > v4)
    {
      *(this + 206) = v4;
      v5 = a2[8];
      if (v5 <= a2[7])
      {
        v5 = a2[7];
      }

      *(this + 207) = v5;
      *(this + 209) = a2[26];
    }

    v6 = DspLib::dB2Amp(this, a2[12]);
    *(this + 252) = v6 / (v6 + 1.0);
    *(this + 253) = a2[13] / 100.0;
    *(this + 254) = DspLib::dB2Amp(v7, a2[11]);
    v9 = DspLib::dB2Amp(v8, a2[15]);
    *(this + 255) = v9 / (v9 + 1.0);
    *(this + 256) = a2[25];
    *(this + 257) = a2[4] * 0.001;
    *(this + 258) = a2[16] * 0.001;
    v10 = a2[17];
    if (v10 <= a2[16])
    {
      v10 = a2[16];
    }

    *(this + 259) = v10 * 0.001;
    v11 = a2[20];
    *(this + 260) = v11;
    if (a2[21] > v11)
    {
      v11 = a2[21];
    }

    *(this + 261) = v11;
    v12 = a2[18];
    *(this + 262) = v12;
    if (a2[19] > v12)
    {
      v12 = a2[19];
    }

    *(this + 263) = v12;
    v13 = a2[24];
    v14 = v13 < 0.5;
    *(this + 833) = v13 >= 0.5;
    *(this + 264) = a2[3];
    v15 = a2[22];
    *(this + 265) = v15;
    if (a2[23] > v15)
    {
      v15 = a2[23];
    }

    *(this + 266) = v15;
    *(this + 422) = *a2 >= 0.5;
    *(this + 840) = a2[27] >= 0.5;
    v16 = a2[29];
    *(this + 267) = v16;
    if (a2[30] > v16)
    {
      v16 = a2[30];
    }

    *(this + 268) = v16;
    v17 = a2[32];
    *(this + 269) = v17;
    if (a2[33] > v17)
    {
      v17 = a2[33];
    }

    *(this + 270) = v17;
    *(this + 832) = v14;
    *(this + 40) = a2[35] >= 0.5;
    *(this + 271) = a2[37];
    v18 = a2[38];
    *(this + 273) = v18;
    if (a2[39] > v18)
    {
      v18 = a2[39];
    }

    *(this + 272) = v18;
    *(this + 41) = a2[34] >= 0.5;
    *(this + 274) = a2[36];
    if (a2[1] != 0.0)
    {
      v19 = *this / *(this + 6);
      v20.i64[0] = 0xFFFFFFFFLL;
      v20.i64[1] = 0xFFFFFFFFLL;
      v21 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(vrndaq_f64(vdivq_f64(vcvtq_f64_f32(*(this + 824)), vdupq_lane_s64(COERCE__INT64(v19), 0)))), v20)), v19));
      *(this + 102) = v21;
      v22 = *(this + 209) * v19;
      DspLib::ComplexMatrix::setDimensions((this + 536), 3, vcvtas_u32_f32(vsub_f32(vdup_lane_s32(v21, 1), v21).f32[0] / v22));
      DspLib::LoudspeakerSystemIDV2::calculateSPlaneFrequencyVector((this + 536), *(this + 204), v22, v23);
      std::vector<unsigned long>::resize(this + 1, *(this + 71));
      DspLib::FFT::frequencyBinIndex(*(this + 6), *(this + 204), *(this + 205), *this, *(this + 209), &v27);
      v24 = *(this + 1);
      if (v24)
      {
        *(this + 2) = v24;
        operator delete(v24);
      }

      *(this + 8) = v27;
      *(this + 3) = v28;
      DspLib::ComplexVector::setLength((this + 632), *(this + 71));
      std::vector<float>::resize(this + 89, *(this + 71));
      DspLib::ComplexVector::setLength((this + 736), *(this + 71));
      DspLib::ComplexVector::setLength((this + 848), *(this + 71));
      DspLib::ComplexVector::operator=(this + 848, 0.0);
      if (*(this + 840))
      {
        v25 = 5;
      }

      else
      {
        v25 = 3;
      }

      DspLib::ComplexMatrix::setDimensions((this + 64), v25, *(this + 71));
      DspLib::ComplexVector::setLength((this + 160), *(this + 71));
      DspLib::ComplexMatrix::setDimensions((this + 240), *(this + 71), v25);
      DspLib::ComplexVector::setLength((this + 336), *(this + 71));
      DspLib::ComplexVector::setLength((this + 456), *(this + 71));
      v26 = *this / vcvtad_u64_f64(*this * a2[3]);
      *(this + 8) = expf(-1.0 / (((a2[10] * 1000.0) * v26) / 1000.0));
      *(this + 9) = expf(-1.0 / (((a2[14] * 1000.0) * v26) / 1000.0));
      *(this + 841) = a2[40] >= 0.5;
    }

    *(this + 57) = 1;
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::pageInMatrixFunctions(this);
  }

  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::setParameters();
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

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::readFromNvm(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this, unint64_t *a2, unsigned int a3)
{
  DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::readResonanceModel(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, a2, a3, v4);
  *(this + 58) = *v4;
  *(this + 937) = *&v4[9];
  if ((*(this + 952) & 1) == 0)
  {
    *(this + 104) = 0;
    *(this + 55) = 0;
    *(this + 210) = 0;
    *(this + 113) = 0;
  }
}

double DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::writeToNvm(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this, unint64_t *a2, unsigned int a3)
{
  v4 = a2;
  if (*(this + 41) == 1)
  {
    v6 = DspLib::elapsedTimeInMilliseconds((this + 432), a2);
    v7 = 0.0;
    if ((*(this + 421) & 1) == 0)
    {
      v7 = v6 + *(this + 106);
    }

    *(this + 106) = v7;
    v8 = v7 > 1000.0;
    v12[0] = *(this + 58);
    *(v12 + 12) = *(this + 940);
    v9 = v4;
    v10 = a3;
  }

  else
  {
    v12[0] = *(this + 58);
    *(v12 + 12) = *(this + 940);
    v9 = a2;
    v10 = a3;
    v8 = 0;
  }

  *&result = DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::writeResonanceModel(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, v12, v9, v10, v8).n128_u64[0];
  return result;
}

float DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::resetNvm(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this, unsigned int a2)
{
  v2 = &DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord + 264 * a2;
  v2[12] = 0;
  v3 = *(v2 + 1);
  *v2 = v3;
  *(v2 + 2) = v3;
  *(v2 + 52) = 0;
  *(v2 + 106) = 0;
  *(v2 + 72) = *(v2 + 156);
  *(v2 + 88) = *(v2 + 172);
  *(v2 + 104) = *(v2 + 188);
  *(v2 + 30) = *(v2 + 51);
  *(v2 + 40) = *(v2 + 124);
  *(v2 + 56) = *(v2 + 140);
  v2[244] = 0;
  v4 = *(v2 + 58);
  v5 = *(v2 + 59);
  v6 = *(v2 + 60);
  *(v2 + 27) = COERCE_UNSIGNED_INT(v6 / v5) | (LODWORD(v4) << 32);
  v2[228] = 0;
  result = v6 + ((v4 * v6) / v5);
  *(v2 + 56) = result;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 2) = 0;
  return result;
}

BOOL DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::process(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, DSPSplitComplex *a6, float a7)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 57) & 1) == 0)
  {
    v14 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceModels.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v14, 250);
    ++DspLibDebug::mAssertCounter;
  }

  DspLib::LoudspeakerSystemIDV2::updateLocalSearchVariables(a2, a3, a4, (a1 + 632), *(a1 + 712), (*(a1 + 720) - *(a1 + 712)) >> 2, (a1 + 8));
  updated = DspLib::LoudspeakerSystemIDV2::updateWeights(*(a1 + 712), (*(a1 + 720) - *(a1 + 712)) >> 2, (a1 + 848), *(a1 + 1008));
  *(a1 + 440) = updated;
  result = DspLib::LoudspeakerSystemIDV2::safeToAdapt(a5, (a1 + 416), a1 + 8, (a1 + 452), *(a1 + 48), updated, *(a1 + 1008), *(a1 + 1012), *(a1 + 1016));
  if (result)
  {
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(result, (a1 + 736), (a1 + 536), (a1 + 928), *(a1 + 840));
    DspLib::operator+=(a1 + 736, a6);
    DspLib::operator+=((a1 + 736), a7);
    DspLib::LoudspeakerSystemIDV2::updateModelFitData((a1 + 632), *(a1 + 712), a7, (*(a1 + 720) - *(a1 + 712)) >> 2, a6, (a1 + 736), (a1 + 456));
    DspLib::LoudspeakerSystemIDV2::updateMInResonanceModel((a1 + 536), (a1 + 928), (a1 + 848), (a1 + 64), *(a1 + 840));
    DspLib::LoudspeakerSystemIDV2::updateAInverseInResonanceModel((a1 + 536), (a1 + 928), a1 + 160, a1 + 848, *(a1 + 840));
    DspLib::LoudspeakerSystemIDV2::updateXInResonanceModel((a1 + 456), (a1 + 160), (a1 + 240), (a1 + 536), *(a1 + 840));
    v18 = MEMORY[0x1EEE9AC00](v17);
    MEMORY[0x1EEE9AC00](v18);
    v19 = *(a1 + 568);
    __B.realp = v21;
    __B.imagp = (&v25 - v20);
    v29 = v19;
    if (*(a1 + 840))
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    DspLib::ComplexMatrixSpan::row((a1 + 536), v22, &__B);
    DspLib::ComplexSpan::operator=((a1 + 336), (a1 + 456));
    DspLib::operator*=((a1 + 336), &__B);
    DspLib::operator*=((a1 + 336), (a1 + 160));
    v25 = 0uLL;
    v27 = 0;
    v26 = 0;
    if (*(a1 + 840) == 1)
    {
      DspLib::LoudspeakerSystemIDV2::updateCreepModelParameters(&v25, (a1 + 64), (a1 + 240), (a1 + 336), v23, 1.0e-30);
    }

    *(a1 + 928) = 0;
    *(a1 + 940) = 0;
    DspLib::LoudspeakerSystemIDV2::updateModelParameters((&v25 + 4), &v25 + 2, &v26, (a1 + 64), (a1 + 240), (a1 + 336), v24, 1.0e-30);
  }

  *(a1 + 420) = 0;
  return result;
}

float DspLib::LoudspeakerSystemIDV2::updateLocalSearchVariables(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t *a7)
{
  v7 = *a7;
  if (a7[1] != *a7)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v19.real = DspLib::ComplexSpan::operator[](a1, *(v7 + 8 * v15));
      DspLib::ComplexSpan::setElement(a4, v15, v19);
      v7 = *a7;
      v17 = a7[1];
      result = *(a2 + 4 * (*(*a7 + 8 * v15) % a3));
      *(a5 + 4 * (v15 % a6)) = result;
      v15 = v16++;
    }

    while (v15 < (v17 - v7) >> 3);
  }

  return result;
}

float DspLib::LoudspeakerSystemIDV2::updateWeights(uint64_t a1, int a2, DspLib::ComplexSpan *this, float a4)
{
  if (!*(this + 2))
  {
    return NAN;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0.0;
  do
  {
    v10 = *(a1 + 4 * v7);
    v9 = v9 + v10;
    if (v10 < a4)
    {
      v10 = 0.0;
    }

    v11 = 0;
    DspLib::ComplexSpan::setElement(this, v7, *&v10);
    v7 = v8;
    v12 = *(this + 2);
  }

  while (v12 > v8++);
  return v9 / v12;
}

BOOL DspLib::LoudspeakerSystemIDV2::safeToAdapt(uint64_t *a1, float *a2, uint64_t a3, float *a4, unint64_t a5, float a6, float a7, float a8, float a9)
{
  *a2 = 0.0;
  v9 = *a3;
  v10 = *(a3 + 8) - *a3;
  if (!v10)
  {
    return 0;
  }

  v11 = v10 >> 3;
  v12 = *a1;
  v13 = 0.0;
  v14 = 1;
  v15 = 0.0;
  do
  {
    v17 = *v9++;
    v16 = v17;
    if (v17 >= (a5 >> 1) - 1)
    {
      v16 = (a5 >> 1) - 1;
    }

    v18 = *(v12 + 4 * v16);
    v15 = v18 + v15;
    *a2 = v15;
    if (v18 > v13)
    {
      v13 = v18;
    }
  }

  while (v11 > v14++);
  if (v15 == 0.0)
  {
    return 0;
  }

  v21 = v13 / v15;
  *a4 = v21;
  v22 = *a2 / v11;
  *a2 = v22;
  v23 = a6 >= a7;
  if (v21 <= a8)
  {
    v23 = 1;
  }

  return v22 > a9 && v23;
}

DSPSplitComplex *DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(DSPSplitComplex *result, DSPSplitComplex *a2, DspLib::ComplexMatrixSpan *a3, float *a4, int a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 4);
  if (a5)
  {
    if (!v8)
    {
      return result;
    }

    v9 = MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v9);
    v10 = *(a3 + 4);
    __A.realp = v12;
    __A.imagp = (&v38 - v11);
    v43 = v10;
    DspLib::ComplexMatrixSpan::row(a3, 0, &__A);
    v13 = DspLib::operator*=(&__A, a4[4]);
    v14 = MEMORY[0x1EEE9AC00](v13);
    MEMORY[0x1EEE9AC00](v14);
    __B.realp = v16;
    __B.imagp = (&v38 - v15);
    v41 = v17;
    DspLib::ComplexMatrixSpan::row(a3, 1uLL, &__B);
    DspLib::operator*=(&__B, a4[3]);
    v18 = DspLib::operator+=(&__A, &__B);
    v19 = MEMORY[0x1EEE9AC00](v18);
    MEMORY[0x1EEE9AC00](v19);
    v38.realp = v21;
    v38.imagp = (&v38 - v20);
    v39 = v22;
    DspLib::ComplexMatrixSpan::row(a3, 0, &v38);
    DspLib::operator*=(&v38, a4[1]);
    DspLib::operator+=(&v38, a4[2]);
    DspLib::ComplexMatrixSpan::row(a3, 1uLL, &__B);
    DspLib::operator*=(&__B, *a4);
    DspLib::operator+=(&v38, &__B);
    DspLib::ComplexMatrixSpan::row(a3, 2uLL, &__B);
    DspLib::operator+=(&v38, &__B);
    DspLib::ComplexSpan::operator=(a2, &__A);
    p_B = &v38;
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    v24 = MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v24);
    v25 = *(a3 + 4);
    __A.realp = v27;
    __A.imagp = (&v38 - v26);
    v43 = v25;
    DspLib::ComplexMatrixSpan::row(a3, 0, &__A);
    v29 = MEMORY[0x1EEE9AC00](v28);
    MEMORY[0x1EEE9AC00](v29);
    __B.realp = v31;
    __B.imagp = (&v38 - v30);
    v41 = v32;
    DspLib::ComplexMatrixSpan::row(a3, 0, &__B);
    DspLib::operator*=(&__A, a4[4]);
    DspLib::operator*=(&__B, a4[1]);
    v33 = DspLib::operator+=(&__B, a4[2]);
    v34 = MEMORY[0x1EEE9AC00](v33);
    MEMORY[0x1EEE9AC00](v34);
    v38.realp = v36;
    v38.imagp = (&v38 - v35);
    v39 = v37;
    DspLib::ComplexMatrixSpan::row(a3, 1uLL, &v38);
    DspLib::operator+=(&__B, &v38);
    DspLib::ComplexSpan::operator=(a2, &__A);
    p_B = &__B;
  }

  return DspLib::operator/=(a2, p_B);
}

DSPSplitComplex *DspLib::LoudspeakerSystemIDV2::updateModelFitData(void *a1, uint64_t a2, float a3, uint64_t a4, DSPSplitComplex *a5, void *a6, DSPSplitComplex *a7)
{
  if (a7[1].realp)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = DspLib::ComplexSpan::operator[](a1, v13);
      v17 = v16;
      v18 = *(a2 + 4 * v13);
      v23.real = (v18 * v15) + ((1.0 - v18) * DspLib::ComplexSpan::operator[](a6, v13));
      v23.imag = (v18 * v17) + ((1.0 - v18) * v19);
      DspLib::ComplexSpan::setElement(a7, v13, v23);
      v13 = v14;
    }

    while (a7[1].realp > v14++);
  }

  DspLib::operator-=(a7, a3);

  return DspLib::operator-=(a7, a5);
}

void DspLib::LoudspeakerSystemIDV2::updateMInResonanceModel(DspLib::ComplexMatrixSpan *a1, float *a2, DSPSplitComplex *a3, DspLib::ComplexMatrixSpan *a4, int a5)
{
  if (a5)
  {
    DspLib::LoudspeakerSystemIDV2::ceepResonatorModelJacobian(a1, a2, a3, a4);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::standardResonatorModelJacobian(a1, a2, a3, a4);
  }
}

uint64_t DspLib::LoudspeakerSystemIDV2::updateAInverseInResonanceModel(DspLib::ComplexMatrixSpan *a1, float *a2, uint64_t a3, uint64_t a4, int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = MEMORY[0x1EEE9AC00](v10);
  __A.realp = v13;
  __A.imagp = (&v23 - v12);
  v27 = v14;
  DspLib::ComplexMatrixSpan::row(v11, 0, &__A);
  DspLib::operator*=(&__A, a2[1]);
  v15 = DspLib::operator+=(&__A, a2[2]);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = *(a1 + 4);
  __B.realp = v18;
  __B.imagp = (&v23 - v19);
  v25 = v17;
  if (a5)
  {
    DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__B);
    DspLib::operator*=(&__B, *a2);
    DspLib::operator+=(&__A, &__B);
    v20 = a1;
    v21 = 2;
  }

  else
  {
    v20 = a1;
    v21 = 1;
  }

  DspLib::ComplexMatrixSpan::row(v20, v21, &__B);
  DspLib::operator+=(&__A, &__B);
  DspLib::ComplexVector::operator=(a3, a4);
  return DspLib::operator/=(a3, &__A);
}

void DspLib::LoudspeakerSystemIDV2::updateXInResonanceModel(DSPSplitComplex *this, DSPSplitComplex *a2, DspLib::ComplexVector *a3, DspLib::ComplexMatrix *a4, DspLib::ComplexMatrix *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1EEE9AC00](this);
  MEMORY[0x1EEE9AC00](v9);
  realp = this[1].realp;
  __C.realp = v12;
  __C.imagp = (&v27 - v13);
  v31 = realp;
  if (v10)
  {
    DspLib::ComplexSpan::operator=(&__C, this);
    DspLib::operator*=(&__C, -1.0);
    DspLib::operator*=(&__C, a2);
    DspLib::ComplexMatrixSpan::setColumn(a3, 2uLL, &__C);
    v15 = MEMORY[0x1EEE9AC00](v14);
    MEMORY[0x1EEE9AC00](v15);
    __B.realp = v17;
    __B.imagp = (&v27 - v16);
    v29 = v18;
    DspLib::ComplexMatrixSpan::row(a4, 0, &__B);
    DspLib::operator*=(&__C, &__B);
    DspLib::ComplexMatrixSpan::setColumn(a3, 1uLL, &__C);
    DspLib::operator*=(&__C, &__B);
    DspLib::ComplexMatrixSpan::setColumn(a3, 0, &__C);
    DspLib::operator*=(&__B, a2);
    DspLib::ComplexMatrixSpan::setColumn(a3, 4uLL, &__B);
    DspLib::ComplexMatrixSpan::row(a4, 1uLL, &__C);
    DspLib::operator*=(&__C, a2);
    p_C = &__C;
    v20 = a3;
    v21 = 3;
  }

  else
  {
    DspLib::ComplexSpan::operator=(&__C, this);
    DspLib::operator*=(&__C, -1.0);
    DspLib::operator*=(&__C, a2);
    DspLib::ComplexMatrixSpan::setColumn(a3, 1uLL, &__C);
    v23 = MEMORY[0x1EEE9AC00](v22);
    MEMORY[0x1EEE9AC00](v23);
    __B.realp = v25;
    __B.imagp = (&v27 - v24);
    v29 = v26;
    DspLib::ComplexMatrixSpan::row(a4, 0, &__B);
    DspLib::operator*=(&__C, &__B);
    DspLib::ComplexMatrixSpan::setColumn(a3, 0, &__C);
    DspLib::operator*=(&__B, a2);
    p_C = &__B;
    v20 = a3;
    v21 = 2;
  }

  DspLib::ComplexMatrixSpan::setColumn(v20, v21, p_C);
}

void DspLib::LoudspeakerSystemIDV2::updateCreepModelParameters(DspLib::LoudspeakerSystemIDV2 *this, float *a2, DspLib::ComplexMatrixSpan *a3, DspLib::ComplexMatrixSpan *a4, DspLib::ComplexSpan *a5, float a6)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = xmmword_1DE0965A0;
  v6 = &v9;
  v8 = 5;
  DspLib::LoudspeakerSystemIDV2::updateMTimesX(&v6, a2, a3);
}

BOOL DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::parametersAreValid(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  DspLib::LoudspeakerSystemIDV2::calculateError((a1 + 632), *(a1 + 848), (a1 + 736), (a1 + 456), *(a1 + 841));
  *(a1 + 448) = v8;
  v9 = 36;
  if (*(a1 + 440) > *(a1 + 1020))
  {
    v9 = 32;
  }

  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::smoothCoefficients(a1, a2, *(a1 + v9));
  *v24 = *a2;
  *&v24[12] = *(a2 + 12);
  v10 = *(a1 + 840);
  DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters(v24, *(a1 + 832), v10, &v25, *(a1 + 1056), *(a1 + 1028), *(a1 + 1036));
  *(a1 + 984) = v25;
  *(a1 + 1000) = v26;
  if (*(a1 + 41) == 1)
  {
    v11 = 1.0 / (sqrtf(*(a1 + 988) * (1.0 / *(a1 + 996))) * 6.2832);
    v12 = v11 > *(a1 + 828) || v11 < *(a1 + 824);
  }

  else
  {
    v12 = 0;
  }

  if (*(a1 + 40) == 1)
  {
    v13 = (1.0 / *(a1 + 992)) * sqrtf(*(a1 + 988) * *(a1 + 996));
    v14 = v13 > *(a1 + 1088) || v13 < *(a1 + 1092);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::clipTsParameters(a1, (a1 + 984));
    v14 = 0;
    v10 = *(a1 + 840);
  }

  v25 = *(a1 + 984);
  v26 = *(a1 + 1000);
  v15 = DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(&v25, v10 & 1, v24);
  *a2 = *v24;
  *(a2 + 9) = *&v24[9];
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(v15, (a1 + 736), (a1 + 536), a2, *(a1 + 840));
  DspLib::operator+=(a1 + 736, a3);
  DspLib::operator+=((a1 + 736), a4);
  DspLib::LoudspeakerSystemIDV2::calculateError((a1 + 632), *(a1 + 848), (a1 + 736), (a1 + 456), *(a1 + 841));
  v17 = v16;
  if (*(a1 + 841) == 1)
  {
    v18 = *(a1 + 712);
    v19 = *(a1 + 720) - v18;
    if (v19)
    {
      v20 = DspLib::mean(v18, v19 >> 2);
    }

    else
    {
      v20 = 0.0;
    }

    v21 = v20 <= *(a1 + 1008);
  }

  else
  {
    v21 = 0;
  }

  v22 = v17 >= *(a1 + 448) || v12 || v14 || v21;
  if (!v22)
  {
    *(a1 + 448) = v17;
  }

  return !v22;
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::status(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 56))
  {
    v20[0] = *(a1 + 928);
    *(v20 + 12) = *(a1 + 940);
    DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters(v20, *(a1 + 832), *(a1 + 840), v21, *(a1 + 1056), *(a1 + 1028), *(a1 + 1036));
    v7 = *&v21[1];
    v8 = 18 * a4;
    *(a2 + 4 * (v8 + 19)) = v21[0];
    *(a2 + 4 * (v8 + 20)) = v7 * 1000.0;
    v9 = *&v21[2];
    v10 = *&v21[3];
    v11 = v21[4];
    v12 = v21[5];
    *(a2 + 4 * (v8 + 28)) = *(a1 + 416);
    *(a2 + 4 * (v8 + 21)) = v9;
    *(a2 + 4 * (v8 + 22)) = v10;
    *(a2 + 4 * (v8 + 35)) = v11;
    *(a2 + 4 * (v8 + 36)) = v12;
    v13 = 1.0 / (sqrtf(v7 * (1.0 / v10)) * 6.2832);
    *&v14 = (1.0 / v9) * sqrtf(v7 * v10);
    v15 = ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *(a2 + 4 * (v8 + 23)) = v13;
    *(a2 + 4 * (v8 + 24)) = *&v14;
    *(a2 + 4 * (v8 + 25)) = v15;
    LOBYTE(v14) = *(a1 + 420);
    v16 = v14;
    *(a2 + 4 * (v8 + 26)) = v16;
    LOBYTE(v16) = *(a1 + 421);
    *(a2 + 4 * (v8 + 27)) = LODWORD(v16);
    *(a2 + 4 * (v8 + 29)) = *(a1 + 452);
    *(a2 + 4 * (v8 + 30)) = *(a1 + 440);
    v17 = *(a1 + 712);
    v18 = *(a1 + 720) - v17;
    if (v18)
    {
      v19 = DspLib::mean(v17, v18 >> 2);
    }

    else
    {
      v19 = 0.0;
    }

    *(a2 + 4 * (v8 + 31)) = v19;
    *(a2 + 4 * (v8 + 34)) = *(a1 + 448);
    *(a2 + 4 * (v8 + 32)) = *(a1 + 816);
    *(a2 + 4 * (v8 + 33)) = *(a1 + 820);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::status();
  }
}

uint64_t DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (a3)
  {
    if (a2)
    {
      *a4 = a5;
      v7 = *(result + 12);
      if (v7 > 0.0)
      {
        a7 = (a5 * a5) / v7;
      }

      *(a4 + 4) = a7;
      a6 = a7;
    }

    else
    {
      v9 = *(result + 12);
      v10 = sqrtf(v9 * a6);
      if (v9 > 0.0)
      {
        a5 = v10;
      }

      *a4 = a5;
      *(a4 + 4) = a6;
    }

    v11 = a5 * a5;
    v12 = *(result + 16);
    v13 = *(result + 4);
    v14 = (a6 * ((v11 * *result) - (a6 * v12))) / v11;
    *(a4 + 8) = v14;
    v15 = *(result + 8);
    v16 = ((v12 * (v15 * ((v11 * a6) * v14))) + ((-((v11 * v11) * a6) * v15) * v13)) / (((v12 * -((v11 * a6) * v13)) + ((v11 * v11) * v15)) + ((a6 * v14) * (v12 * v12)));
    v17 = (v16 * -(v11 * v16)) / (a6 * ((v11 * v15) - (v16 * v12)));
    *(a4 + 16) = v17;
    *(a4 + 20) = v16;
    v18 = (v15 * (a6 * v17)) / v16;
    v19 = 12;
  }

  else
  {
    if (a2)
    {
      *a4 = a5;
      v8 = *(result + 16);
      if (v8 > 0.0)
      {
        a7 = (a5 * a5) / v8;
      }

      *(a4 + 4) = a7;
      a6 = a7;
    }

    else
    {
      v20 = *(result + 16);
      v21 = sqrtf(v20 * a6);
      if (v20 > 0.0)
      {
        a5 = v21;
      }

      *a4 = a5;
      *(a4 + 4) = a6;
    }

    *(a4 + 8) = vmul_n_f32(*(result + 4), a6);
    *(a4 + 16) = 0;
    v18 = 0.0;
    v19 = 20;
  }

  *(a4 + v19) = v18;
  return result;
}

void DspLib::LoudspeakerSystemIDV2::ceepResonatorModelJacobian(DspLib::ComplexMatrixSpan *a1, float *a2, DSPSplitComplex *a3, DspLib::ComplexMatrixSpan *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  __A.realp = v11;
  __A.imagp = (&v28 - v10);
  v36 = v12;
  v13 = MEMORY[0x1EEE9AC00](v9);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v33.realp = v16;
  v33.imagp = (&v28 - v15);
  v34 = v17;
  v18 = MEMORY[0x1EEE9AC00](v14);
  v19 = MEMORY[0x1EEE9AC00](v18);
  __C.realp = v21;
  __C.imagp = (&v28 - v20);
  v32 = v22;
  v23 = MEMORY[0x1EEE9AC00](v19);
  v24 = MEMORY[0x1EEE9AC00](v23);
  __B.realp = v26;
  __B.imagp = (&v28 - v25);
  v30 = v27;
  DspLib::ComplexMatrixSpan::row(v24, 0, &v33);
  DspLib::operator*=(&v33, a2[1]);
  DspLib::operator+=(&v33, a2[2]);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__B);
  DspLib::operator*=(&__B, *a2);
  DspLib::operator+=(&v33, &__B);
  DspLib::ComplexMatrixSpan::row(a1, 2uLL, &__B);
  DspLib::operator+=(&v33, &__B);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &v33);
  DspLib::ComplexMatrixSpan::setRow(a4, 3uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 0, &__A);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &v33);
  DspLib::ComplexMatrixSpan::setRow(a4, 4uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 0, &__A);
  DspLib::operator*=(&__A, a2[4]);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__B);
  DspLib::operator*=(&__B, a2[3]);
  DspLib::operator+=(&__A, &__B);
  DspLib::operator*=(&__A, -1.0);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &v33);
  DspLib::operator/=(&__C, &v33);
  DspLib::ComplexMatrixSpan::setRow(a4, 2uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 0, &__B);
  DspLib::operator*=(&__A, &__B);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &v33);
  DspLib::operator/=(&__C, &v33);
  DspLib::ComplexMatrixSpan::setRow(a4, 1uLL, &__C);
  DspLib::operator*=(&__A, &__B);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &v33);
  DspLib::operator/=(&__C, &v33);
  DspLib::ComplexMatrixSpan::setRow(a4, 0, &__C);
}

void DspLib::LoudspeakerSystemIDV2::standardResonatorModelJacobian(DspLib::ComplexMatrixSpan *a1, float *a2, DSPSplitComplex *a3, DspLib::ComplexMatrixSpan *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  __A.realp = v11;
  __A.imagp = (&__C - v10);
  v28 = v12;
  v13 = MEMORY[0x1EEE9AC00](v9);
  v14 = MEMORY[0x1EEE9AC00](v13);
  __B.realp = v16;
  __B.imagp = (&__C - v15);
  v26 = v17;
  v18 = MEMORY[0x1EEE9AC00](v14);
  v19 = MEMORY[0x1EEE9AC00](v18);
  __C.realp = v21;
  __C.imagp = (&__C - v20);
  v24 = v22;
  DspLib::ComplexMatrixSpan::row(v19, 0, &__B);
  DspLib::operator*=(&__B, a2[1]);
  DspLib::operator+=(&__B, a2[2]);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator+=(&__B, &__A);
  DspLib::ComplexMatrixSpan::row(a1, 0, &__A);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 2uLL, &__C);
  DspLib::operator*=(&__A, -a2[4]);
  DspLib::operator*=(&__B, &__B);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 1uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator*=(&__A, -a2[4]);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 0, &__C);
}

float32_t DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::smoothCoefficients(float32x4_t *a1, float32x4_t *a2, float a3)
{
  *a2 = vmlaq_n_f32(*a2, vsubq_f32(a1[58], *a2), a3);
  result = a2[1].f32[0] + (a3 * (a1[59].f32[0] - a2[1].f32[0]));
  a2[1].f32[0] = result;
  return result;
}

float DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::clipTsParameters(float *a1, float *a2)
{
  v2 = a1 + 265;
  v3 = a1 + 266;
  if (a1[266] >= *a2)
  {
    v3 = a2;
  }

  if (*a2 >= a1[265])
  {
    v2 = v3;
  }

  *a2 = *v2;
  v4 = a1 + 258;
  v5 = a2[1];
  v6 = a1 + 259;
  if (a1[259] >= v5)
  {
    v6 = a2 + 1;
  }

  if (v5 >= a1[258])
  {
    v4 = v6;
  }

  a2[1] = *v4;
  v7 = a1 + 260;
  v8 = a1 + 261;
  v9 = a2[3];
  if (a1[261] >= v9)
  {
    v8 = a2 + 3;
  }

  if (v9 >= a1[260])
  {
    v7 = v8;
  }

  a2[3] = *v7;
  v10 = a1 + 262;
  v11 = a1 + 263;
  v12 = a2[2];
  if (a1[263] >= v12)
  {
    v11 = a2 + 2;
  }

  if (v12 >= a1[262])
  {
    v10 = v11;
  }

  a2[2] = *v10;
  v13 = a1 + 267;
  v14 = a1 + 268;
  v15 = a2[5];
  if (a1[268] >= v15)
  {
    v14 = a2 + 5;
  }

  if (v15 >= a1[267])
  {
    v13 = v14;
  }

  a2[5] = *v13;
  v16 = a1 + 269;
  v17 = a1 + 270;
  v19 = a2[4];
  v18 = a2 + 4;
  v20 = v19;
  if (a1[270] >= v19)
  {
    v17 = v18;
  }

  if (v20 >= a1[269])
  {
    v16 = v17;
  }

  result = *v16;
  *v18 = *v16;
  return result;
}

void DspLib::LoudspeakerSystemIDV2::calculateError(DspLib::LoudspeakerSystemIDV2 *this, const DspLib::ComplexSpan *a2, float *a3, const DspLib::ComplexSpan *a4, const DspLib::ComplexSpan *a5)
{
  if (*(a4 + 2))
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 1;
    v12 = 1.0e-15;
    v13 = 1.0e-15;
    do
    {
      v14 = DspLib::ComplexSpan::operator[](this, v9);
      v16 = v15;
      v17 = *(a2 + v9);
      v18 = DspLib::ComplexSpan::operator[](a3, v9) - v14;
      v20 = v19 - v16;
      v21 = (v18 * v18) - (v20 * v20);
      v22 = (v20 * v18) + (v18 * v20);
      v23 = v17 * v21;
      v24 = fabsf(v17 * ((v14 * v14) - (v16 * v16)));
      v12 = v12 + (v24 + v24);
      v13 = v13 + v17;
      v10 = v10 + (fabsf(v23) + fabsf(v17 * v22));
      v9 = v11;
    }

    while (*(a4 + 2) > v11++);
  }
}

float *DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs@<X0>(float *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  v3 = *result;
  v4 = result[1];
  v5 = (v3 * v3) / v4;
  v6 = result[3];
  if (a2)
  {
    v8 = result[4];
    v7 = result[5];
    v9 = v4 * v8;
    v10 = (v3 * v3) / v4;
    v5 = ((v3 * v3) * (v6 + v7)) / (v4 * v8);
    v11 = result[2];
    v12 = (((v4 * v7) + (v6 * v4)) + (v8 * v11)) / (v4 * v8);
    v13 = (((v6 * v11) + (v6 * v8)) + (v7 * v11)) / (v4 * v8);
    v14 = (v6 * v7) / v9;
  }

  else
  {
    v14 = v6 / v4;
    v10 = 0.0;
    v12 = 0.0;
    v13 = result[2] / v4;
  }

  *a3 = v12;
  *(a3 + 4) = v13;
  *(a3 + 8) = v14;
  *(a3 + 12) = v10;
  *(a3 + 16) = v5;
  *(a3 + 20) = v3;
  return result;
}

float DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(float a1, float a2, uint64_t a3, float *a4, int a5)
{
  v5 = (a1 * a1) - (a2 * a2);
  v6 = (a2 * a1) + (a1 * a2);
  v7 = a4[4];
  v8 = a1 * v7;
  v9 = a2 * v7;
  if (a5)
  {
    v10 = a4[3];
    v8 = v8 + (v5 * v10);
    v9 = v9 + (v6 * v10);
    v11 = a4[1];
    v12 = (a1 * v11) + (v5 * *a4);
    v13 = (a2 * v11) + (v6 * *a4);
    v14 = (v5 * a1) - (v6 * a2);
    v15 = (a1 * v6) + (v5 * a2);
    v16 = v14 + v12;
    v17 = v15 + v13;
  }

  else
  {
    v18 = a4[1];
    v19 = a1 * v18;
    v20 = a2 * v18;
    v16 = v5 + v19;
    v17 = v6 + v20;
  }

  return ((v17 * v9) + (v8 * (a4[2] + v16))) * (1.0 / ((v17 * v17) + ((a4[2] + v16) * (a4[2] + v16))));
}

double DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::initialize(DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *this, double a2, uint64_t a3)
{
  *this = a2;
  *(this + 6) = a3;
  DspLib::ComplexVector::setLength((this + 616), 0);
  *(this + 88) = *(this + 87);
  DspLib::ComplexVector::setLength((this + 720), 0);
  *(this + 104) = 0;
  *(this + 210) = 0;
  result = 524288.0;
  *(this + 53) = 0x4120000000000000;
  *(this + 108) = 0;
  *(this + 56) = 1;
  return result;
}

double DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::reset(DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *this)
{
  *(this + 104) = 0;
  *(this + 210) = 0;
  result = 524288.0;
  *(this + 53) = 0x4120000000000000;
  *(this + 108) = 0;
  return result;
}

void DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::uninitialize(DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *this)
{
  DspLib::ComplexMatrix::setDimensions((this + 520), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 64), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 240), 0, 0);
  DspLib::ComplexVector::setLength((this + 336), 0);
  DspLib::ComplexVector::setLength((this + 160), 0);
  DspLib::ComplexVector::setLength((this + 440), 0);
  DspLib::ComplexVector::setLength((this + 824), 0);
  DspLib::ComplexVector::setLength((this + 616), 0);
  *(this + 88) = *(this + 87);

  DspLib::ComplexVector::setLength((this + 720), 0);
}

void DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 56))
  {
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v8 = 7 * a4;
    v9 = 7 * a4 + 5;
    if (v9 >= 0x17)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v10 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v9);
    v11 = a2 + 4 * v10;
    v12 = *(v11 + 20);
    if (*(v11 + 24) + *a1 / *(a1 + 48) * -2.0 * *(v11 + 68) > v12)
    {
      *(a1 + 808) = v12;
      *(a1 + 812) = *(v11 + 24);
      *(a1 + 816) = *(v11 + 68);
    }

    v13 = DspLib::dB2Amp(v10, *(v11 + 56));
    *(a1 + 936) = v13 / (v13 + 1.0);
    *(a1 + 940) = *(v11 + 60) * 0.01;
    *(a1 + 944) = DspLib::dB2Amp(v14, *(v11 + 64));
    *(a1 + 952) = *(v11 + 80);
    v16 = DspLib::dB2Amp(v15, *(v11 + 76));
    *(a1 + 948) = v16 / (v16 + 1.0);
    *(a1 + 956) = *(v11 + 32);
    *(a1 + 960) = *(v11 + 36);
    *(a1 + 964) = *(v11 + 40);
    *(a1 + 968) = *(v11 + 44);
    *(a1 + 972) = *(v11 + 48);
    *(a1 + 976) = *(v11 + 52);
    *(a1 + 422) = *(v11 + 84) != 0.0;
    if (*(v11 + 12) != 0.0)
    {
      v17 = *a1 / *(a1 + 48);
      v18.i64[0] = 0xFFFFFFFFLL;
      v18.i64[1] = 0xFFFFFFFFLL;
      v19 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(vrndaq_f64(vdivq_f64(vcvtq_f64_f32(*(a1 + 808)), vdupq_lane_s64(COERCE__INT64(v17), 0)))), v18)), v17));
      *(a1 + 800) = v19;
      v20 = *(a1 + 816) * v17;
      DspLib::ComplexMatrix::setDimensions((a1 + 520), 3, vcvtas_u32_f32(vsub_f32(vdup_lane_s32(v19, 1), v19).f32[0] / v20));
      DspLib::LoudspeakerSystemIDV2::calculateSPlaneFrequencyVector((a1 + 520), *(a1 + 800), v20, v21);
      std::vector<unsigned long>::resize((a1 + 8), *(a1 + 552));
      DspLib::FFT::frequencyBinIndex(*(a1 + 48), *(a1 + 800), *(a1 + 804), *a1, *(a1 + 816), &v25);
      v22 = *(a1 + 8);
      if (v22)
      {
        *(a1 + 16) = v22;
        operator delete(v22);
      }

      *(a1 + 8) = v25;
      *(a1 + 24) = v26;
      v23 = *a1 / *(a1 + 48) * *(a1 + 816);
      *(a1 + 40) = v23;
      DspLib::ComplexVector::setLength((a1 + 616), *(a1 + 552));
      std::vector<float>::resize((a1 + 696), *(a1 + 552));
      DspLib::ComplexVector::setLength((a1 + 720), *(a1 + 552));
      DspLib::ComplexVector::setLength((a1 + 824), *(a1 + 552));
      DspLib::ComplexVector::operator=(a1 + 824, 0.0);
      DspLib::ComplexMatrix::setDimensions((a1 + 64), 3, *(a1 + 552));
      DspLib::ComplexVector::setLength((a1 + 160), *(a1 + 552));
      DspLib::ComplexMatrix::setDimensions((a1 + 240), *(a1 + 552), 3);
      DspLib::ComplexVector::setLength((a1 + 336), *(a1 + 552));
      DspLib::ComplexVector::setLength((a1 + 440), *(a1 + 552));
      if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      if ((v8 + 2) >= 0x17)
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      v24 = *a1 / vcvtad_u64_f64(*a1 * *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v8 + 2) + 12));
      *(a1 + 32) = expf(-1.0 / (((*(v11 + 28) * 1000.0) * v24) / 1000.0));
      *(a1 + 36) = expf(-1.0 / (((*(v11 + 72) * 1000.0) * v24) / 1000.0));
    }

    *(a1 + 57) = 1;
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::setParameters();
  }
}

double DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::readFromNvm(DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *this, unint64_t *a2)
{
  *(this + 113) = DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::readInductanceModel(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, a2);
  *(this + 228) = v4;
  *(this + 916) = BYTE4(v4);
  if ((v4 & 0x100000000) == 0)
  {
    *(this + 104) = 0;
    *(this + 210) = 0;
    result = 524288.0;
    *(this + 53) = 0x4120000000000000;
    *(this + 108) = 0;
  }

  return result;
}

BOOL DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::process(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, DSPSplitComplex *a6, float a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 57) & 1) == 0)
  {
    v14 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceModels.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v14, 894);
    ++DspLibDebug::mAssertCounter;
  }

  DspLib::LoudspeakerSystemIDV2::updateLocalSearchVariables(a2, a3, a4, (a1 + 616), *(a1 + 696), (*(a1 + 704) - *(a1 + 696)) >> 2, (a1 + 8));
  updated = DspLib::LoudspeakerSystemIDV2::updateWeights(*(a1 + 696), (*(a1 + 704) - *(a1 + 696)) >> 2, (a1 + 824), *(a1 + 936));
  *(a1 + 424) = updated;
  result = DspLib::LoudspeakerSystemIDV2::safeToAdapt(a5, (a1 + 416), a1 + 8, (a1 + 432), *(a1 + 48), updated, *(a1 + 936), *(a1 + 940), *(a1 + 944));
  if (result)
  {
    v17 = MEMORY[0x1EEE9AC00](result);
    v18 = MEMORY[0x1EEE9AC00](v17);
    v19 = *(a1 + 552);
    v33.realp = v21;
    v33.imagp = (&v30[-2] - v20);
    v34 = v19;
    DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel(v18, &v33, (a1 + 520), (a1 + 904));
    DspLib::ComplexVector::operator=(a1 + 720, a6);
    DspLib::operator+=(a1 + 720, &v33);
    DspLib::operator+=((a1 + 720), a7);
    DspLib::LoudspeakerSystemIDV2::updateModelFitData((a1 + 616), *(a1 + 696), a7, (*(a1 + 704) - *(a1 + 696)) >> 2, a6, (a1 + 720), (a1 + 440));
    DspLib::LoudspeakerSystemIDV2::updateMInInductanceModel((a1 + 520), (a1 + 904), (a1 + 824), (a1 + 64));
    DspLib::LoudspeakerSystemIDV2::updateAInverseInInductanceModel(a1 + 520, (a1 + 904), a1 + 160, a1 + 824);
    DspLib::LoudspeakerSystemIDV2::updateXInInductanceModel((a1 + 440), (a1 + 160), (a1 + 240), (a1 + 520), v22);
    v24 = MEMORY[0x1EEE9AC00](v23);
    MEMORY[0x1EEE9AC00](v24);
    __B.realp = v26;
    __B.imagp = (&v30[-2] - v25);
    v32 = v27;
    DspLib::ComplexMatrixSpan::row((a1 + 520), 0, &__B);
    DspLib::ComplexSpan::operator=((a1 + 336), (a1 + 440));
    DspLib::operator*=((a1 + 336), &__B);
    DspLib::operator*=((a1 + 336), (a1 + 160));
    memset(v30, 0, 13);
    DspLib::LoudspeakerSystemIDV2::updateModelParameters(v30, &v30[1], &v30[2], (a1 + 64), (a1 + 240), (a1 + 336), v28, 1.0e-10);
  }

  *(a1 + 420) = 0;
  return result;
}

DSPSplitComplex *DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel(DSPSplitComplex *result, DSPSplitComplex *a2, DspLib::ComplexMatrixSpan *a3, float *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a3 + 4))
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v7);
    v9 = *(v8 + 32);
    __A.realp = v11;
    __A.imagp = (&v17 - v10);
    v21 = v9;
    DspLib::ComplexMatrixSpan::row(a3, 0, &__A);
    v13 = MEMORY[0x1EEE9AC00](v12);
    MEMORY[0x1EEE9AC00](v13);
    __B.realp = v15;
    __B.imagp = (&v17 - v14);
    v19 = v16;
    DspLib::ComplexMatrixSpan::row(a3, 1uLL, &__B);
    DspLib::operator*=(&__A, a4[2]);
    DspLib::operator*=(&__B, a4[1]);
    DspLib::operator+=(&__A, &__B);
    DspLib::ComplexMatrixSpan::row(a3, 0, &__B);
    DspLib::operator+=(&__B, *a4);
    if (fabsf(*__B.realp) < 0.00000011921)
    {
      *__B.realp = 0.00000011921;
    }

    DspLib::ComplexSpan::operator=(a2, &__A);
    return DspLib::operator/=(a2, &__B);
  }

  return result;
}

void DspLib::LoudspeakerSystemIDV2::updateMInInductanceModel(DspLib::ComplexMatrixSpan *a1, float *a2, DSPSplitComplex *a3, DspLib::ComplexMatrixSpan *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  __B.realp = v11;
  __B.imagp = (&__C - v10);
  v28 = v12;
  DspLib::ComplexMatrixSpan::row(v9, 0, &__B);
  v13 = DspLib::operator+=(&__B, *a2);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  __A.realp = v16;
  __A.imagp = (&__C - v15);
  v26 = v17;
  DspLib::ComplexMatrixSpan::row(a1, 0, &__A);
  v18 = DspLib::operator*=(&__A, a3);
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  __C.realp = v21;
  __C.imagp = (&__C - v20);
  v24 = v22;
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 2uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 1uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 0, &__C);
  DspLib::operator*=(&__C, -a2[2]);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator*=(&__A, -a2[1]);
  DspLib::operator+=(&__A, &__C);
  DspLib::operator*=(&__A, a3);
  DspLib::operator*=(&__B, &__B);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 0, &__C);
}

uint64_t DspLib::LoudspeakerSystemIDV2::updateAInverseInInductanceModel(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v13.realp = v10;
  v13.imagp = (&v13 - v9);
  v14 = v11;
  DspLib::ComplexMatrixSpan::row(v8, 0, &v13);
  DspLib::operator+=(&v13, *a2);
  DspLib::ComplexVector::operator=(a3, a4);
  return DspLib::operator/=(a3, &v13);
}

void DspLib::LoudspeakerSystemIDV2::updateXInInductanceModel(DspLib::LoudspeakerSystemIDV2 *this, DSPSplitComplex *a2, DspLib::ComplexVector *a3, DspLib::ComplexMatrix *a4, DspLib::ComplexMatrix *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](this);
  MEMORY[0x1EEE9AC00](v8);
  __C.realp = v10;
  __C.imagp = (&__C - v9);
  v14 = v11;
  DspLib::ComplexSpan::operator=(&__C, v12);
  DspLib::operator*=(&__C, -1.0);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 0, &__C);
  DspLib::ComplexMatrixSpan::row(a4, 1uLL, &__C);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 1uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a4, 0, &__C);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 2uLL, &__C);
}

BOOL DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::parametersAreValid(uint64_t a1, float32x2_t *a2, uint64_t a3, float a4)
{
  v31 = *MEMORY[0x1E69E9840];
  DspLib::LoudspeakerSystemIDV2::calculateError((a1 + 616), *(a1 + 824), (a1 + 720), (a1 + 440), 0);
  *(a1 + 428) = v8;
  v9 = 36;
  if (*(a1 + 424) > *(a1 + 948))
  {
    v9 = 32;
  }

  v10 = *(a1 + v9);
  *a2 = vmla_n_f32(*a2, vsub_f32(*(a1 + 904), *a2), v10);
  a2[1].f32[0] = a2[1].f32[0] + (v10 * (*(a1 + 912) - a2[1].f32[0]));
  v11 = *(a1 + 968);
  v12 = a2[1].f32[0] + (COERCE_FLOAT(a2->i32[1] ^ 0x80000000) * a2->f32[0]);
  v13 = v12 / a2->f32[0];
  v14 = a2->f32[0] < 1.0e-12;
  v28 = a2->f32[1];
  if (!v14)
  {
    v11 = v13;
  }

  v29 = v11;
  v30 = v12;
  DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::clipTsParameters(a1, &v28);
  v15 = v30 + ((v28 * v30) / v29);
  *a2 = (COERCE_UNSIGNED_INT(v30 / v29) | (LODWORD(v28) << 32));
  a2[1].i8[4] = 0;
  a2[1].f32[0] = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = *(a1 + 552);
  v26.realp = v21;
  v26.imagp = (&v26 - v20);
  v27 = v19;
  DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel(v18, &v26, (a1 + 520), a2);
  DspLib::ComplexVector::operator=(a1 + 720, a3);
  DspLib::operator+=(a1 + 720, &v26);
  DspLib::operator+=((a1 + 720), a4);
  DspLib::LoudspeakerSystemIDV2::calculateError((a1 + 616), *(a1 + 824), (a1 + 720), (a1 + 440), 0);
  v23 = 0;
  *(a1 + 420) = 1;
  v24 = *(a1 + 428);
  if (v22 < v24)
  {
    *(a1 + 428) = v22;
    v23 = 1;
  }

  result = v22 < v24;
  *(a1 + 421) = v23;
  return result;
}

void DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::status(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    v4 = *(a1 + 908);
    v5 = *(a1 + 904);
    v6 = *(a1 + 912) - (v4 * v5);
    if (v5 == 0.0)
    {
      v7 = *(a1 + 968);
    }

    else
    {
      v7 = v6 / v5;
    }

    *(a2 + 16) = v4;
    *(a2 + 20) = v7;
    LOBYTE(v4) = *(a1 + 420);
    *(a2 + 24) = v6;
    *(a2 + 28) = LODWORD(v4);
    LOBYTE(v6) = *(a1 + 421);
    v8 = *(a1 + 552);
    *(a2 + 68) = LODWORD(v6);
    *(a2 + 32) = v8;
    *(a2 + 36) = *(a1 + 40);
    *(a2 + 52) = *(a1 + 800);
    *(a2 + 56) = *(a1 + 804);
    *(a2 + 12) = *(a1 + 416);
    *(a2 + 40) = *(a1 + 432);
    *(a2 + 44) = *(a1 + 424);
    *(a2 + 48) = DspLib::minv(*(a1 + 696), (*(a1 + 704) - *(a1 + 696)) >> 2);
    *(a2 + 64) = *(a1 + 428);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::status();
  }
}

float DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::clipTsParameters(float *a1, float *a2)
{
  v2 = a1 + 239;
  v3 = a1 + 240;
  if (a1[240] >= *a2)
  {
    v3 = a2;
  }

  if (*a2 >= a1[239])
  {
    v2 = v3;
  }

  *a2 = *v2;
  v4 = a1 + 241;
  v5 = a1 + 242;
  v6 = a2[1];
  if (a1[242] >= v6)
  {
    v5 = a2 + 1;
  }

  if (v6 >= a1[241])
  {
    v4 = v5;
  }

  a2[1] = *v4;
  v7 = a1 + 243;
  v8 = a1 + 244;
  v10 = a2[2];
  v9 = a2 + 2;
  v11 = v10;
  if (a1[244] >= v10)
  {
    v8 = v9;
  }

  if (v11 >= a1[243])
  {
    v7 = v8;
  }

  result = *v7;
  *v9 = *v7;
  return result;
}

void DspLib::LoudspeakerSystemIDV2::updateMTimesX(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[4];
  v25 = *a2;
  v26 = v6 * v5;
  v27 = v5;
  v28 = v6;
  v7 = a3[3];
  v8 = a3[4];
  v21 = *a3;
  v22 = v8 * v7;
  v23 = v7;
  v24 = v8;
  v9 = a1[1];
  v19 = *a1;
  v20 = v9;
  DspLib::multiply(&v25, &v21, &v19);
  v11 = a2[3];
  v12 = a3[4];
  if ((v12 * v11) <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 * v11;
  }

  MEMORY[0x1EEE9AC00](v10);
  v14 = a2[4];
  v25 = a2[1];
  v26 = v14 * v15;
  v27 = v15;
  v28 = v14;
  v16 = a3[3];
  v21 = a3[1];
  v22 = v16 * v17;
  v23 = v16;
  v24 = v17;
  *&v19 = &v19 - v18;
  *(&v19 + 1) = v13;
  *&v20 = v15;
  *(&v20 + 1) = v17;
  DspLib::multiply(&v25, &v21, &v19);
  DspLib::add();
}

void DspLib::LoudspeakerSystemIDV2::updateMTimesXTimesM(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v6 = a2[1];
  v24 = *a2;
  v25 = v6;
  v7 = a3[3];
  v8 = a3[4];
  v20 = *a3;
  v21 = v8 * v7;
  v22 = v7;
  v23 = v8;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v16 = *a1;
  v17 = v10 * v9;
  v18 = v9;
  v19 = v10;
  DspLib::multiply(&v24, &v20, &v16);
  v11 = a2[1];
  v24 = *a2;
  v25 = v11;
  v12 = a3[3];
  v13 = a3[4];
  v20 = a3[1];
  v21 = v13 * v12;
  v22 = v12;
  v23 = v13;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 8);
  v17 = v15 * v14;
  v18 = v14;
  v19 = v15;
  DspLib::multiply(&v24, &v20, &v16);
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
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v10);
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

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 117);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 326);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 801);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 939);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

int8x16_t DspLib::CPUMeasure::start(int8x16_t *this)
{
  this[5].i64[1] = 0;
  this[6].i64[0] = 0;
  this[6].i64[1] = 0;
  this->i64[0] = mach_absolute_time();
  v2 = vdup_n_s32(thread_selfcounts() == 0);
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  v4 = vandq_s8(v6, vcltzq_s64(vshlq_n_s64(v3, 0x3FuLL)));
  result = vextq_s8(v4, v4, 8uLL);
  this[2] = result;
  return result;
}

void DspLib::CPUMeasure::stop(DspLib::CPUMeasure *this, unint64_t a2, double a3)
{
  v5 = mach_absolute_time();
  v6 = *(this + 1);
  v22 = (v5 - (*this + *(this + 11)));
  *(this + 1) = v5;
  v7 = thread_selfcounts() == 0;
  *v8.i32 = a2;
  v19 = v8;
  v9 = a3 / a2;
  v10 = exp(-1.0 / (v9 * 0.5));
  v11 = ((1.0 - v10) * (v5 - v6)) + (*(this + 5) * v10);
  *(this + 4) = ((1.0 - v10) * v22) + (*(this + 4) * v10);
  *(this + 5) = v11;
  v12 = vdup_n_s32(v7);
  v13.i64[0] = v12.u32[0];
  v13.i64[1] = v12.u32[1];
  v14 = vandq_s8(vextq_s8(v23, v23, 8uLL), vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL)));
  v21 = vcvt_f32_f64(vmulq_f64(vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(vand_s8(vcvt_f32_f64(vcvtq_f64_u64(vsubq_s64(v14, vaddq_s64(*(this + 6), *(this + 2))))), vmovn_s64(vcgtq_u64(vsubq_s64(v14, *(this + 6)), *(this + 2)))), vdup_lane_s32(v19, 0))), a3), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL)));
  *(this + 6) = vmla_n_f32(vmul_n_f32(v21, 1.0 - v10), *(this + 48), v10);
  v15 = exp(-1.0 / (v9 * 4.0));
  v16 = vmul_n_f32(*(this + 24), v15);
  v17 = vdup_lane_s32(v21, 0);
  v17.f32[0] = v22;
  *(this + 3) = vbsl_s8(vcgt_f32(v17, v16), v17, v16);
  v18 = *(this + 14) * v15;
  if (v18 < v21.f32[1])
  {
    v18 = v21.f32[1];
  }

  *(this + 14) = v18;
}

int8x16_t DspLib::CPUMeasure::pause(DspLib::CPUMeasure *this)
{
  *(this + 8) = mach_absolute_time();
  v2 = vdup_n_s32(thread_selfcounts() == 0);
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  v4 = vandq_s8(v6, vcltzq_s64(vshlq_n_s64(v3, 0x3FuLL)));
  result = vextq_s8(v4, v4, 8uLL);
  *(this + 72) = result;
  return result;
}

int64x2_t DspLib::CPUMeasure::resume(DspLib::CPUMeasure *this)
{
  v2 = mach_absolute_time();
  v3 = thread_selfcounts();
  v4 = v8;
  v5 = v9;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
  }

  v6.i64[0] = v2;
  v6.i64[1] = v5;
  result = vaddq_s64(vsubq_s64(v6, *(this + 4)), *(this + 88));
  *(this + 88) = result;
  *(this + 13) += v4 - *(this + 10);
  return result;
}

__n128 DspLib::CPUMeasure::percentCPU@<Q0>(DspLib::CPUMeasure *this@<X0>, uint64_t a2@<X8>)
{
  v2.i32[0] = *(this + 4);
  v3 = (this + 20);
  v2.i32[1] = *(this + 6);
  v4 = vld1_dup_f32(v3);
  *a2 = vmul_f32(vdiv_f32(v2, v4), vdup_n_s32(0x42C80000u));
  result.n128_u32[0] = *(this + 12);
  result.n128_u32[1] = *(this + 7);
  result.n128_u64[1] = *(this + 52);
  *(a2 + 8) = result;
  return result;
}

uint64_t DspLib::BuzzKill::BuzzKillFFT::processWithDifference(DspLib::BuzzKill::BuzzKillFFT *this)
{
  if (*(this + 8) != 1)
  {
    return DspLib::BuzzKill::BuzzKillFFT::processWithDifference();
  }

  result = (*(*this + 64))(this);
  if (result)
  {
    DspLib::subtract();
  }

  return result;
}

uint64_t DspLib::BuzzKill::FFTForDisplay::initialize(DspLib::BuzzKill::FFTForDisplay *this, double a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  return DspLib::FFT::Filterbank::initialize((this + 24), 1, 44100.0);
}

void DspLib::BuzzKill::FFTForDisplay::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = 1 << vcvtas_u32_f32(*a2);
  *(a1 + 432) = v8;
  std::vector<float>::resize((a1 + 440), (v8 >> 1) + 1);
  v9.n128_u32[0] = *(a2 + 12);
  *(a1 + 16) = v9.n128_f32[0];
  DspLib::FFT::Filterbank::setParameters(a1 + 24, a2, a3, v9);
  v10 = roundf(((*(a2 + 4) / -100.0) + 1.0) * *(a1 + 432));
  *(a1 + 20) = a4;
  v11 = *a1;
  *(a1 + 464) = expf(-1.0 / (((v11 / v10) * a4) / 1000.0));
}

void DspLib::BuzzKill::FFTForDisplay::reset(DspLib::BuzzKill::FFTForDisplay *this)
{
  DspLib::FFT::Filterbank::reset((this + 24));
  v2 = *(this + 55);
  v3 = (*(this + 56) - v2) >> 2;

  DspLib::clear(v2, v3);
}

void DspLib::BuzzKill::FFTForDisplay::process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 432);
  DspLib::multiply(a2, a3, 2.0 / *(a1 + 8));
  v7 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = (v6 >> 1) + 1;
    v10 = a2 + 4 * a3;
    v11 = 4 * v9;
    do
    {
      v18[2] = v7 - v8;
      v19[0] = v10 - 4 * (v7 - v8);
      v18[0] = v19;
      v18[1] = 1;
      v12 = DspLib::FFT::Filterbank::audioInput(a1 + 24, v18);
      v13 = *(*(a1 + 384) + 88);
      if (v13)
      {
        if (*(a1 + 16) == 1)
        {
          v14 = *a1;
          v15 = expf(-1.0 / ((*(a1 + 20) * (v14 / v13)) / 1000.0));
          *(a1 + 464) = v15;
        }

        else
        {
          v15 = *(a1 + 464);
        }

        v16 = DspLib::multiply(*(a1 + 440), (*(a1 + 448) - *(a1 + 440)) >> 2, v15);
        MEMORY[0x1EEE9AC00](v16);
        DspLib::FFT::amplitude(*(a1 + 360), (&v18[-1] - ((v11 + 15) & 0x7FFFFFFF0)), v9);
        DspLib::vmax(*(a1 + 440), (*(a1 + 448) - *(a1 + 440)) >> 2, (&v18[-1] - ((v11 + 15) & 0x7FFFFFFF0)));
      }

      v8 += v12;
    }

    while (v8 < v7);
  }
}

void DspLib::BuzzKill::FFTForDisplay::status(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 440);
  v3 = (*(a1 + 448) - v2) >> 2;
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *a1;
    v7 = v6 / *(a1 + 432);
    v8 = a2 + 6852;
    v9 = (a2 + 4048);
    v10 = -501;
    v11 = (a2 + 4048);
    while (1)
    {
      v12 = v10 + 501;
      v13 = v11[701];
      v14 = v3 - 2 >= (v13 / v7) ? (v13 / v7) : v3 - 2;
      *v11 = ((*(v2 + 4 * (v14 + 1)) * ((v13 / v7) - v14)) + ((1.0 - ((v13 / v7) - v14)) * *(v2 + 4 * v14))) + 0.00001;
      if ((v13 - *(v8 + 4 * v5)) > v7)
      {
        break;
      }

      ++v11;
      v4 = (v13 / v7);
      v5 = v10 + 501;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_23;
      }
    }

    if (v10 >= 0xFFFFFFFFFFFFFE0BLL)
    {
      v16 = v3 - 1;
      do
      {
        v17 = vcvtas_u32_f32(*(v8 + 4 * v12) / v7);
        if (v16 < v17)
        {
          v17 = v16;
        }

        v18 = *(v2 + 4 * v17);
        if (v4 <= v17)
        {
          if (v4 + 1 <= v17 + 1)
          {
            v19 = v17 + 1;
          }

          else
          {
            v19 = v4 + 1;
          }

          do
          {
            if (*(v2 + 4 * v4) > v18)
            {
              v18 = *(v2 + 4 * v4);
            }

            ++v4;
          }

          while (v19 != v4);
          v4 = v19;
        }

        v9[v12++] = v18 + 0.00001;
      }

      while (v12 != 501);
    }

LABEL_23:
    DspLib::amp2dB(v9, 0x1F5uLL, 1.0);
  }
}

void DspLib::BuzzKill::HighBuzzKillFFT::initialize(DspLib::BuzzKill::HighBuzzKillFFT *this, unint64_t a2)
{
  DspLib::copy(&_ZGRN6DspLib3FFT10ParametersL8kDefaultE_, 10, v5);
  v5[0] = xmmword_1DE0965C0;
  DspLib::FFT::Filterbank::initialize(this, a2, 44100.0);
  DspLib::FFT::Filterbank::setParameters(this, v5, 10, v4);
  DspLib::fill(this + 135, 0x21uLL, 1.0);
  std::vector<float *>::resize(this + 84, a2);
  std::vector<float *>::resize(this + 87, a2);
}

void DspLib::BuzzKill::HighBuzzKillFFT::process(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __C[17] = *MEMORY[0x1E69E9840];
  v3 = a2[2];
  if (v3)
  {
    v7 = 0;
    v8 = *(a1 + 56);
    do
    {
      v9 = a2[1];
      v10 = *(a1 + 672);
      v11 = *(a1 + 680);
      if (v9)
      {
        v12 = 0;
        v13 = *a2;
        do
        {
          *(v10 + 8 * v12) = *(v13 + 8 * v12) + 4 * v7;
          ++v12;
        }

        while (v9 > v12);
      }

      v14 = a3[1];
      v15 = *(a1 + 696);
      v16 = *(a1 + 704);
      if (v14)
      {
        v17 = 0;
        v18 = *a3;
        do
        {
          *(v15 + 8 * v17) = *(v18 + 8 * v17) + 4 * v7;
          ++v17;
        }

        while (v14 > v17);
      }

      __C[0] = v10;
      __C[1] = (v11 - v10) >> 3;
      __C[2] = v3 - v7;
      v22[0] = v15;
      v22[1] = (v16 - v15) >> 3;
      v22[2] = v3 - v7;
      v19 = DspLib::FFT::Filterbank::audioInputOutput(a1, __C, v22);
      if (*(*(a1 + 360) + 88))
      {
        v20 = v8 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = 0;
        do
        {
          DspLib::FFT::amplitude(*(a1 + 336) + v21, __C, 0x21uLL);
          DspLib::divide((a1 + 540), 0x21uLL, __C, 33, (a1 + 408));
          DspLib::clip((a1 + 408), 0x21uLL, 0.0, 1.0);
          DspLib::FFT::multiply(*(a1 + 336) + v21, (a1 + 408), 0x21uLL);
          v21 += 80;
        }

        while (80 * v8 != v21);
      }

      v7 = (v19 + v7);
    }

    while (v7 < v3);
  }
}

uint64_t DspLib::BuzzKill::MitigationFilterBank::initialize(uint64_t this, uint64_t a2, double a3)
{
  *(this + 16) = a2;
  *(this + 8) = a3;
  return this;
}

double DspLib::BuzzKill::MitigationFilterBank::uninitialize(DspLib::BuzzKill::MitigationFilterBank *this)
{
  *(this + 98) = *(this + 97);
  *(this + 101) = *(this + 100);
  DspLib::NotchFilterBank::FilterBank::uninitialize((this + 32));
  result = 0.0;
  *(this + 96) = 0;
  return result;
}

void DspLib::BuzzKill::MitigationFilterBank::reset(DspLib::BuzzKill::MitigationFilterBank *this)
{
  DspLib::fill(*(this + 97), (*(this + 98) - *(this + 97)) >> 2, 1000.0);
  DspLib::fill(*(this + 100), (*(this + 101) - *(this + 100)) >> 2, 1.0);
  DspLib::NotchFilterBank::FilterBank::reset((this + 32));
  DspLib::NotchFilterBank::FilterBank::setNotchFilters((this + 32), *(this + 97), *(this + 100), 0, *(this + 193));
  DspLib::NotchFilterBank::FilterBank::setLowShelveGain((this + 32), 0.0);
  *(this + 6) = 0;
}

void DspLib::BuzzKill::MitigationFilterBank::setParameters(uint64_t a1, float *a2, float a3)
{
  *(a1 + 824) = 1.0 - DspLib::dB2Amp(a1, a2[27]);
  LODWORD(v6) = vcvtas_u32_f32(a2[23]);
  if (*(a1 + 772) != v6)
  {
    *(a1 + 772) = v6;
    std::vector<float>::resize((a1 + 776), v6);
    std::vector<float>::resize((a1 + 800), *(a1 + 772));
    DspLib::fill(*(a1 + 776), (*(a1 + 784) - *(a1 + 776)) >> 2, 1000.0);
    DspLib::fill(*(a1 + 800), (*(a1 + 808) - *(a1 + 800)) >> 2, 1.0);
    v7 = (a2[24] + 0.5);
    goto LABEL_5;
  }

  v7 = (a2[24] + 0.5);
  if (*(a1 + 768) != v7)
  {
LABEL_5:
    DspLib::NotchFilterBank::FilterBank::uninitialize((a1 + 32));
    DspLib::NotchFilterBank::FilterBank::setFilterMode(a1 + 32, v7);
    DspLib::NotchFilterBank::FilterBank::setNumNotchFilters((a1 + 32), *(a1 + 772));
  }

  *(a1 + 768) = v7;
  v8 = *(a1 + 8);
  DspLib::NotchFilterBank::FilterBank::initialize((a1 + 32), *(a1 + 16), vcvtas_u32_f32(v8 / a3));
  DspLib::NotchFilterBank::FilterBank::setLowShelveFrequency((a1 + 32), a2[25]);

  DspLib::NotchFilterBank::FilterBank::setParameters(a1 + 32, a2 + 40, 16, v9);
}

unsigned int DspLib::BuzzKill::MitigationFilterBank::numActiveFilters(DspLib::BuzzKill::MitigationFilterBank *this)
{
  DspLib::NotchFilterBank::FilterBank::status(this + 32, &v3);
  result = vcvtas_u32_f32(v3);
  *(this + 6) = result;
  return result;
}

void DspLib::BuzzKill::MitigationFilterBank::assignFilters(DspLib::BuzzKill::MitigationFilterBank *this, char a2, float *a3, float *a4, int a5, float *a6, float a7)
{
  v30 = *MEMORY[0x1E69E9840];
  DspLib::NotchFilterBank::FilterBank::setLowShelveGain((this + 32), 1.0);
  if ((a2 & 1) == 0)
  {
    v14 = *(this + 97);
    v15 = *(this + 100);
    v16 = *(this + 193);
    if (a5)
    {
      v17 = 0;
      v18 = *this;
      v19 = *(this + 206);
      memset(v28, 0, sizeof(v28));
      v29 = 0;
      do
      {
        if (v16)
        {
          v20 = 0;
          v21 = a3[v17];
          v22 = a4[v17];
          v23 = a6[v17];
          v24 = -1;
          v25 = 1.0e10;
          while (1)
          {
            v26 = (1.0 / v21) * vabds_f32(v21, v14[v20]);
            if (v26 < a7)
            {
              break;
            }

            if (v15[v20] > v19 && v26 < v25)
            {
              v25 = v26;
              v24 = v20;
            }

            if (v16 == ++v20)
            {
              if ((v24 & 0x80000000) != 0)
              {
                goto LABEL_19;
              }

              v14[v24] = v21;
              if (!v18)
              {
                v23 = v22;
              }

              v15[v24] = v23;
              v27 = v28 + v24;
              goto LABEL_18;
            }
          }

          v27 = v28 + v20;
          if (*(v28 + v20))
          {
            goto LABEL_19;
          }

          v14[v20] = v21;
          if ((v18 & 1) == 0)
          {
            v23 = v22 * v15[v20];
          }

          v15[v20] = v23;
LABEL_18:
          *v27 = 1;
        }

LABEL_19:
        ++v17;
      }

      while (v17 != a5);
    }

    DspLib::NotchFilterBank::FilterBank::setNotchFilters((this + 32), v14, v15, 0, v16);
  }
}

void DspLib::BuzzKill::MitigationFilterBank::status(uint64_t a1, uint64_t a2, float a3, float a4, uint64_t a5, char a6)
{
  *a2 = *(a1 + 24);
  *(a2 + 4) = 0;
  DspLib::copy(*(a1 + 776), (*(a1 + 784) - *(a1 + 776)) >> 2, (a2 + 6052));
  DspLib::copy(*(a1 + 800), (*(a1 + 808) - *(a1 + 800)) >> 2, (a2 + 6452));
  v11 = a3 + a3;
  v12 = *(a1 + 8) * 0.5;
  if (v12 >= a4)
  {
    v12 = a4;
  }

  if (v11 < v12)
  {
    v11 = v12;
  }

  v13 = powf(v11 / a3, 0.002);
  v14 = 0;
  v15 = a2 + 6852;
  v16 = 1.0;
  do
  {
    *(v15 + v14) = v16 * a3;
    v16 = v13 * v16;
    v14 += 4;
  }

  while (v14 != 2004);
  v17 = *(a1 + 772);
  if (v17)
  {
    v18 = *(a1 + 800);
    v19 = *(a1 + 776);
    v20 = log10f(v13);
    do
    {
      if (*v18 < *(a1 + 824))
      {
        v21 = *v19;
        if (*v19 > 0.1)
        {
          v22 = ((log10f(v21 / a3) / v20) + 0.5);
          if (v22 >= 1)
          {
            *(v15 + 4 * v22) = v21;
          }
        }
      }

      ++v18;
      ++v19;
      --v17;
    }

    while (v17);
  }

  if (a6)
  {

    DspLib::clear((a2 + 2044), 0x1F5uLL);
  }

  else
  {
    DspLib::NotchFilterBank::FilterBank::getAmplitudeResponse((a1 + 32), (a2 + 6852), (a2 + 2044), 0x1F5u);

    DspLib::amp2dB((a2 + 2044), 0x1F5uLL, 1.0);
  }
}

void DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::windowAndTransform<(DspLib::FFT::Direction)1>(uint64_t a1)
{
  vars8 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  DspLib::multiply();
}

uint64_t DspLib::BuzzKill::BuzzKillFFT::processWithDifference()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BuzzKill/dsp/DspLibBuzzKillClasses.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 11);
  ++DspLibDebug::mAssertCounter;
  return result;
}

void *DspLib::DynamicFilter::Algorithm::Algorithm(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(a1, &DspLib::DynamicFilter::Parameters::kDefinition);
  *v6 = &unk_1F5919BB0;
  *(v6 + 78) = 1;
  *(v6 + 276) = 0;
  *(v6 + 280) = 0;
  v6[141] = 0;
  *(v6 + 1136) = 0;
  *(v6 + 169) = 0u;
  *(v6 + 171) = 0u;
  *(v6 + 173) = 0u;
  *(v6 + 175) = 0u;
  *(v6 + 177) = 0u;
  *(v6 + 179) = 0u;
  *(v6 + 143) = 0u;
  *(v6 + 145) = 0u;
  *(v6 + 147) = 0u;
  *(v6 + 149) = 0u;
  *(v6 + 151) = 0u;
  *(v6 + 153) = 0u;
  *(v6 + 1240) = 0;
  *(v6 + 1344) = 0;
  *(v6 + 83) = 0u;
  *(v6 + 82) = 0u;
  *(v6 + 81) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 79) = 0u;
  *(v6 + 78) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  *(v6 + 22) = 0u;
  *(v6 + 23) = 0u;
  *(v6 + 377) = 0u;
  *(v6 + 181) = xmmword_1DE095FA0;
  *(v6 + 366) = 0;
  *(v6 + 1472) = 0;
  *(v6 + 99) = 0u;
  *(v6 + 100) = 0u;
  *(v6 + 101) = 0u;
  *(v6 + 102) = 0u;
  *(v6 + 103) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 1576) = 0;
  *(v6 + 193) = 0u;
  *(v6 + 195) = 0u;
  *(v6 + 189) = 0u;
  *(v6 + 191) = 0u;
  *(v6 + 185) = 0u;
  *(v6 + 187) = 0u;
  v6[210] = v6 + 184;
  v6[211] = v6 + 197;
  *(v6 + 848) = 257;
  *(v6 + 435) = 0;
  v6[218] = 0;
  *(v6 + 213) = 0u;
  *(v6 + 215) = 0u;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v9 = a1[214];
    a1[213] = v8;
    a1[214] = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    a1[213] = v8;
    a1[214] = 0;
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[215] = v11;
  v12 = a1[216];
  a1[216] = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return a1;
}

uint64_t DspLib::DynamicFilter::Algorithm::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4)
  {
    *(this + 8) = 1;
    ((*this)[20])(this);
    ((*this)[21])(this);
  }

  return v4;
}

void DspLib::DynamicFilter::Algorithm::uninitialize(DspLib::DynamicFilter::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  DspLib::DynamicFilter::Algorithm::allocateProcessingResources(this, 0);
  DspLib::Biquad::ParametricFilter::uninitialize((this + 1576));
  *(this + 8) = 0;
}

void DspLib::DynamicFilter::Algorithm::allocateProcessingResources(DspLib::DynamicFilter::Algorithm *this, int a2)
{
  v3 = (this + 1704);
  if (a2)
  {
    if (!*(this + 1697))
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6DspLib13ChannelBufferENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    DspLib::Biquad::ParametricFilter::initialize((this + 1472), *(this + 84), *(this + 2), 1uLL);
    v4 = *(this + 2);
    v5 = (*(*this + 232))(this);
    DspLib::SideChain::Algorithm::initialize((this + 344), v4, v5);
  }

  else
  {
    if ((*(this + 1697) & 1) == 0)
    {
      v6 = *(this + 214);
      *v3 = 0;
      v3[1] = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = *(this + 216);
      v3[2] = 0;
      v3[3] = 0;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    DspLib::Biquad::ParametricFilter::uninitialize((this + 1472));

    DspLib::SideChain::Algorithm::uninitialize((this + 344));
  }
}

void DspLib::DynamicFilter::Algorithm::allocateBiquadFilterB(DspLib::DynamicFilter::Algorithm *this, int a2)
{
  if (a2)
  {
    DspLib::Biquad::ParametricFilter::initialize((this + 1576), *(this + 84), *(this + 2), 1uLL);
  }

  else
  {
    DspLib::Biquad::ParametricFilter::uninitialize((this + 1576));
  }
}

double DspLib::DynamicFilter::Algorithm::reset(DspLib::DynamicFilter::Algorithm *this)
{
  DspLib::SideChain::Algorithm::reset((this + 344));
  DspLib::Biquad::SetupWrapper::reset((this + 1520));
  DspLib::Biquad::SetupWrapper::reset((this + 1624));
  *(this + 1696) = 1;
  result = 0.0;
  *(this + 1736) = 0u;
  return result;
}

void DspLib::DynamicFilter::Algorithm::setParameters(int8x8_t *a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if (!(*(*a1 + 40))(a1))
  {
    return;
  }

  v5 = (*(*a1 + 64))(a1);
  v6 = a1[36];
  v7 = vcvtas_u32_f32(v6[3]);
  if (v7 >= 5)
  {
    abort();
  }

  a1[39].i32[0] = v7;
  v8 = ~(-1 << v5) & 0xFFFFF;
  a1[41] = (v8 & vcvtas_u32_f32(v6[10]));
  a1[40] = (v8 & vcvtas_u32_f32(v6[9]));
  a1[42].i32[1] = std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,20ul>,true>(a1 + 41, 0, 0x14uLL);
  v9 = std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,20ul>,true>(a1 + 40, 0, 0x14uLL);
  a1[42].i32[0] = v9;
  DspLib::DynamicFilter::Algorithm::allocateProcessingResources(a1, v9 != 0);
  if (a1[42].i32[0])
  {
    v10 = a1[39].i32[0];
    if (v10 == 1)
    {
      v11 = 1;
      goto LABEL_9;
    }

    if (v10 != 4)
    {
      v11 = *(*&a1[36] + 16) > 0.0;
      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  DspLib::DynamicFilter::Algorithm::allocateBiquadFilterB(a1, v11);
  if (a1[42].i32[0])
  {
    v12 = a1[39].i32[0];
    if (v12 != 1 && (v12 == 4 || *(*&a1[36] + 16) <= 0.0))
    {
      v13 = DspLib::DynamicFilter::Algorithm::computeFilterParameters(a1, 1.0);
      DspLib::Biquad::ParametricFilter::setParametricEQ(&a1[184], v13, v14, 0, 0x41uLL);
    }

    DspLib::DynamicFilter::Algorithm::configureSideChain(a1);
  }

  if (!a1[42].i32[1])
  {

    DspLib::SideChain::Algorithm::reset(&a1[43]);
  }
}

uint64_t DspLib::DynamicFilter::crossFadeIsNeeded(int a1, float a2)
{
  v2 = a2 > 0.0;
  if (a1 == 4)
  {
    v2 = 0;
  }

  return a1 == 1 || v2;
}

unint64_t DspLib::DynamicFilter::Algorithm::computeFilterParameters(float **this, float a2)
{
  v2 = 0;
  v3 = *this[36];
  v4 = *(this + 78);
  if (v4 <= 1)
  {
    if (v4 <= 1)
    {
      v2 = 14;
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        v2 = 23;
        break;
      case 3:
        v3 = (fmaxf(a2, 1.0) * 0.5) * v3;
        v2 = 7;
        break;
      case 2:
        v3 = (2.0 / fmaxf(a2, 1.0)) * v3;
        v2 = 6;
        break;
    }
  }

  return v2 | (LODWORD(v3) << 32);
}

void DspLib::DynamicFilter::Algorithm::configureSideChain(DspLib::DynamicFilter::Algorithm *this)
{
  v1 = *(this + 36);
  v2 = *(this + 78);
  v3 = 8;
  v4 = 9;
  v5 = 23;
  if (v2 != 4)
  {
    v5 = 0;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v6 = *(v1 + 5);
  v7 = fminf(v1[4], 0.0);
  v8 = 14;
  v9 = 14;
  if (v2 != 1)
  {
    v9 = 0;
  }

  if (v2)
  {
    v7 = v1[4];
    v8 = v9;
  }

  if (v2 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v7 = v1[4];
    v10 = v3;
  }

  v11 = *(v1 + 2);
  v12 = *v1;
  v13 = *(v1 + 1);
  v18 = 0;
  v17 = 0;
  v14 = v1[8] >= 0.5;
  v15[0] = v11;
  *&v15[1] = v7;
  v15[2] = v6;
  v16 = v14;
  v19 = *(v1 + 3);
  DspLib::SideChain::Algorithm::setParameters(this + 344, v10 | (v12 << 32), (v13 << 32), v15);
}

void DspLib::DynamicFilter::Algorithm::processSideChain(uint64_t a1, __int128 *a2, float *__dst, unint64_t a4)
{
  v8 = *(a2 + 1);
  if (v8 == 1)
  {
    v10 = **a2;
    v11 = *(a2 + 2);
    v12 = a1 + 344;

    DspLib::SideChain::Algorithm::process(v12, v10, v11, __dst, a4);
  }

  else if (v8)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    DspLib::sum(&v13, __dst, a4);
    DspLib::multiply(__dst, a4, 1.0 / *(a2 + 1));
    DspLib::SideChain::Algorithm::process(a1 + 344, __dst, a4, __dst, a4);
  }

  else
  {
    v9 = DspLib::SideChain::Algorithm::gainForLevel((a1 + 344), 0.0);

    DspLib::fill(__dst, a4, v9);
  }
}

uint64_t DspLib::DynamicFilter::Algorithm::processBlockFade(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, char a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(result + 336))
  {
    v8 = result;
    v37 = a4;
    v38 = &v36;
    v9 = a2[2];
    v41 = v9;
    MEMORY[0x1EEE9AC00](result);
    v12 = &v36 - v11;
    if (v10 >= 0x200)
    {
      v13 = 512;
    }

    else
    {
      v13 = v10;
    }

    bzero(&v36 - v11, v13);
    v14 = *(v8 + 336);
    MEMORY[0x1EEE9AC00](v15);
    v17 = &v36 - ((v16 + 15) & 0xFFFFFFFF0);
    if (v16 >= 0x200)
    {
      v18 = 512;
    }

    else
    {
      v18 = v16;
    }

    bzero(&v36 - ((v16 + 15) & 0xFFFFFFFF0), v18);
    v19 = a2[1];
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = *a2;
      v23 = *(v8 + 328);
      do
      {
        if ((v23 >> v20))
        {
          *&v12[8 * v21++] = *(v22 + 8 * v20);
        }

        ++v20;
      }

      while (v19 > v20);
      v24 = 0;
      v25 = 0;
      v26 = *(v8 + 340);
      v27 = a2[2];
      v28 = *(v8 + 320);
      do
      {
        if ((v28 >> v24))
        {
          *&v17[8 * v25++] = *(v22 + 8 * v24);
        }

        ++v24;
      }

      while (v19 > v24);
    }

    else
    {
      v26 = *(v8 + 340);
      v27 = a2[2];
    }

    *&v39 = v12;
    *(&v39 + 1) = v26;
    v40 = v27;
    DspLib::DynamicFilter::Algorithm::processSideChain(v8, &v39, v42, v9);
    v29 = *(v8 + 312);
    if (v29 != 1 && (v29 == 4 || *(*(v8 + 288) + 16) <= 0.0))
    {
      *&v39 = v17;
      *(&v39 + 1) = v14;
      v40 = v27;
      return DspLib::DynamicFilter::Algorithm::processWithoutCrossFade(v8, &v39, v42, v41);
    }

    else
    {
      *(v8 + 1744) = *(v8 + 1744) + 1.0;
      v30 = DspLib::mean(v42, v41) + *(v8 + 1748);
      *(v8 + 1748) = v30;
      if ((a5 & 1) == 0)
      {
        v31 = *(v8 + 1680);
        v32 = *(v8 + 1688);
        *(v8 + 1680) = v32;
        *(v8 + 1688) = v31;
        v33 = DspLib::DynamicFilter::Algorithm::computeFilterParameters(v8, v30 / *(v8 + 1744));
        v35 = v34;
        *(v8 + 1744) = 0;
        DspLib::Biquad::ParametricFilter::setParametricEQ(v32, v33, v34, 0, 0x41uLL);
        if (*(v8 + 1696) == 1)
        {
          DspLib::Biquad::ParametricFilter::setParametricEQ(*(v8 + 1688), v33, v35, 0, 0x41uLL);
          *(v8 + 1696) = 0;
        }

        DspLib::Biquad::Filter::copyStatesFrom(*(v8 + 1680), *(v8 + 1688));
      }

      *&v39 = v17;
      *(&v39 + 1) = v14;
      v40 = v27;
      return DspLib::DynamicFilter::Algorithm::processWithCrossFade(v8, &v39, v42, v41, *a3, a3[1], *v37);
    }
  }

  return result;
}

uint64_t DspLib::DynamicFilter::Algorithm::processWithCrossFade(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a1[213] + 24);
  v12 = a2[1];
  v13 = a2[2];
  v14 = a1[210];
  *&v24 = *a2;
  *(&v24 + 1) = v12;
  v25 = v13;
  *&v22 = v11;
  *(&v22 + 1) = v12;
  v23 = v13;
  DspLib::Biquad::Filter::process(v14, &v24, &v22);
  v15 = *(a1[215] + 24);
  v16 = a1[211];
  v18 = a2[1];
  v17 = a2[2];
  *&v24 = *a2;
  *(&v24 + 1) = v18;
  v25 = v17;
  *&v22 = v15;
  *(&v22 + 1) = v18;
  v23 = v17;
  DspLib::Biquad::Filter::process(v16, &v24, &v22);
  *&v24 = v11;
  *(&v24 + 1) = v12;
  v25 = v13;
  DspLib::multiply(&v24, a5);
  *&v24 = v15;
  *(&v24 + 1) = v18;
  v25 = v17;
  DspLib::multiply(&v24, a7);
  *&v24 = v11;
  *(&v24 + 1) = v12;
  v25 = v13;
  *&v22 = v15;
  *(&v22 + 1) = v18;
  v23 = v17;
  DspLib::add(&v24, &v22);
  v24 = *a2;
  v25 = a2[2];
  *&v22 = v11;
  *(&v22 + 1) = v12;
  v23 = v13;
  return DspLib::DynamicFilter::applyGain(&v24, &v22, a3, a4);
}

uint64_t DspLib::DynamicFilter::Algorithm::processWithoutCrossFade(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a1 + 1704) + 24);
  v9 = a2[1];
  v8 = a2[2];
  *&v13 = *a2;
  *(&v13 + 1) = v9;
  v14 = v8;
  *&v11 = v7;
  *(&v11 + 1) = v9;
  v12 = v8;
  DspLib::Biquad::Filter::process((a1 + 1472), &v13, &v11);
  v13 = *a2;
  v14 = a2[2];
  *&v11 = v7;
  *(&v11 + 1) = v9;
  v12 = v8;
  return DspLib::DynamicFilter::applyGain(&v13, &v11, a3, a4);
}

uint64_t DspLib::DynamicFilter::applyGain(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  DspLib::add(a3, a4, -1.0);
  v11 = *a2;
  v12 = *(a2 + 2);
  DspLib::multiply(&v11, a3);
  v7 = *a1;
  v12 = *(a1 + 2);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = v7;
  return DspLib::add(&v11, &v9);
}

void DspLib::DynamicFilter::Algorithm::updateSidechainLevelForDisplay(DspLib::DynamicFilter::Algorithm *this)
{
  v2 = DspLib::SideChain::Algorithm::sideChainLevelLinear((this + 344));
  if (*(this + 434) >= *&v2)
  {
    LODWORD(v2) = *(this + 434);
  }

  *(this + 434) = LODWORD(v2);
}

uint64_t DspLib::DynamicFilter::Algorithm::status(uint64_t result, _DWORD *a2)
{
  if (*(result + 340))
  {
    v2 = *(result + 1736);
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(result + 1736) = 0;
  return result;
}

void DspLib::DynamicFilter::Algorithm::~Algorithm(DspLib::DynamicFilter::Algorithm *this)
{
  DspLib::DynamicFilter::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5919BB0;
  v2 = *(this + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 214);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v7 = (this + 1656);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1624));
  v4 = *(this + 200);
  if (v4)
  {
    *(this + 201) = v4;
    operator delete(v4);
  }

  v7 = (this + 1552);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1520));
  v5 = *(this + 187);
  if (v5)
  {
    *(this + 188) = v5;
    operator delete(v5);
  }

  DspLib::SideChain::Algorithm::~Algorithm((this + 344));
  *this = &unk_1F591AE18;
  v6 = *(this + 36);
  if (v6)
  {
    *(this + 37) = v6;
    operator delete(v6);
  }

  v7 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

uint64_t DspLib::DynamicFilter::Algorithm::processBlock(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = v2;
    v5 = result;
    v11 = *(v2 + 2);
    v9[1] = v3;
    v9[2] = v3;
    v8[1] = v3;
    v9[0] = v12;
    v8[0] = v10;
    DspLib::ramp(v12, v3, 0, 0.0, 1.0);
    DspLib::ramp(v10, v3, 0, 1.0, 0.0);
    v6 = *v4;
    v7 = *(v4 + 2);
    return DspLib::DynamicFilter::Algorithm::processBlockFade(v5, &v6, v9, v8, 0);
  }

  return result;
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,20ul>,true>(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

void DspLib::SideChain::Algorithm::~Algorithm(DspLib::SideChain::Algorithm *this)
{
  v7 = (this + 1080);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1048));
  v2 = *(this + 128);
  if (v2)
  {
    *(this + 129) = v2;
    operator delete(v2);
  }

  v7 = (this + 976);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 944));
  v3 = *(this + 115);
  if (v3)
  {
    *(this + 116) = v3;
    operator delete(v3);
  }

  v7 = (this + 872);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 840));
  v4 = *(this + 102);
  if (v4)
  {
    *(this + 103) = v4;
    operator delete(v4);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v6 = *(this + i + 24);
    if (v6)
    {
      *(this + i + 32) = v6;
      operator delete(v6);
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

void *_ZNSt3__120__shared_ptr_emplaceIN6DspLib13ChannelBufferENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5919CD0;
  DspLib::ChannelBuffer::ChannelBuffer((a1 + 3), 0, 0);
  return a1;
}

void std::__shared_ptr_emplace<DspLib::ChannelBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5919CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

DspLib::LoudspeakerSystemIDV2::Algorithm *DspLib::LoudspeakerSystemIDV2::Algorithm::Algorithm(DspLib::LoudspeakerSystemIDV2::Algorithm *this)
{
  v2 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition);
  *v2 = &unk_1F5919D20;
  *(v2 + 39) = 0u;
  *(v2 + 41) = 0u;
  *(v2 + 344) = 0;
  DspLib::Log::Log(v2 + 44);
  DspLib::Log::Log(this + 45);
  DspLib::Log::Log(this + 46);
  *(this + 376) = 0;
  *(this + 400) = 0;
  *(this + 102) = 0;
  if (++DspLib::LoudspeakerSystemIDV2::gInstanceCounter >= 2)
  {
    v4 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2.cpp");
    DspLib::LoudspeakerSystemIDV2::Algorithm::Algorithm(v4);
  }

  return this;
}

void sub_1DDBC97B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 400) == 1)
  {
    v4 = *(v2 + 376);
    if (v4)
    {
      *(v2 + 384) = v4;
      operator delete(v4);
    }
  }

  DspLib::Log::~Log((v2 + 368));
  DspLib::Log::~Log((v2 + 360));
  DspLib::Log::~Log((v2 + 352));
  std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::__destroy_vector::operator()[abi:ne200100](va);
  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v2);
  _Unwind_Resume(a1);
}

void DspLib::LoudspeakerSystemIDV2::Algorithm::~Algorithm(DspLib::LoudspeakerSystemIDV2::Algorithm *this)
{
  *this = &unk_1F5919D20;
  --DspLib::LoudspeakerSystemIDV2::gInstanceCounter;
  if (*(this + 400) == 1)
  {
    v2 = *(this + 47);
    if (v2)
    {
      *(this + 48) = v2;
      operator delete(v2);
    }
  }

  DspLib::Log::~Log(this + 46);
  DspLib::Log::~Log(this + 45);
  DspLib::Log::~Log(this + 44);
  v4 = (this + 312);
  std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = &unk_1F591AE18;
  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

{
  DspLib::LoudspeakerSystemIDV2::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::initialize(DspLib::LoudspeakerSystemIDV2::Algorithm *this, uint64_t a2, double a3)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v23)
  {
    v5 = *(this + 39);
      ;
    }

    *(this + 40) = v5;
    v6 = (*(*this + 64))(this);
    std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::resize(this + 39, v6 >> 1);
    v8 = *(this + 39);
    if (*(this + 40) != v8)
    {
      v9 = *(this + 39);
      v10 = *(this + 2);
      v11 = v10 * 0.5;
      *(v8 + 32) = v11;
      *&v10 = v10 / v11;
      v12 = fmaxf(roundf(*&v10), 1.0);
      v13 = (16 * v12) | 1;
      MEMORY[0x1EEE9AC00](v7);
      v15 = &v22[-v14];
      v24[0] = &unk_1F59193D0;
      v24[1] = DspLib::makeChebychevWindow;
      v24[3] = v24;
      DspLib::makeSincWindow(&v22[-v14], v13, v16, 0x10u, v24, 0.5);
      std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](v24);
      std::vector<std::vector<float>>::resize(v9 + 859, 2uLL);
      v17 = (*(*this + 232))(this);
      DspLib::FIRDecimator::setSrcParameters((v9 + 853), v12, v17);
      DspLib::FIRDecimator::setCoefficients(v9 + 853, v15, v13);
      v18 = v12;
      v19 = *(this + 2) / v18;
      DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::initialize((v9 + 6), v19, 0x80uLL);
      std::vector<float>::resize(v9 + 863, 0x41uLL);
      DspLib::ComplexVector::setLength((v9 + 866), 0x40uLL);
      DspLib::LoudspeakerSystemIDV2::AveragePower::initialize((v9 + 2924), *(this + 2), 32);
      DspLib::AverageRms::initialize((v9 + 2944), *(this + 2));
      DspLib::AverageRms::initialize((v9 + 2951), *(this + 2));
      v20 = *(this + 2) / v18;
      DspLib::LoudspeakerSystemIDV2::ModelFit::initialize((v9 + 149), v20, 128);
    }

    *(this + 8) = 1;
    (*(*this + 160))(this);
    (*(*this + 168))(this);
  }

  return v23;
}

void std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x39CD0A16EA482A69 * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 23952 * a2;
    while (v3 != v7)
    {
      DspLib::LoudspeakerSystemIDV2::SystemID::~SystemID((v3 - 23952));
    }

    a1[1] = v7;
  }
}

float DspLib::LoudspeakerSystemIDV2::AveragePower::initialize(DspLib::LoudspeakerSystemIDV2::AveragePower *this, double a2, uint64_t a3)
{
  DspLib::AveragingDecimator::setSrcFactor(this, a3, 0);
  DspLib::OnePoleSmoother::initialize((this + 48), ceil(a2 / a3));
  v6 = *(this + 37);
  v7 = *(this + 36);

  return DspLib::OnePoleSmoother::configure((this + 48), v6, v7);
}

DspLib::Log::Instance *DspLib::LoudspeakerSystemIDV2::Algorithm::configureLogging(DspLib::LoudspeakerSystemIDV2::Algorithm *this, __int16 a2)
{
  if ((a2 & 2) != 0)
  {
    v4 = "/tmp/lsm2/";
  }

  else
  {
    v4 = "/private/var/mobile/tmp/com.apple.audiomxd/lsm2/";
  }

  *(this + 338) = 0;
  result = (*(*this + 232))(this);
  if ((a2 & 0x101) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, v4);
    v6 = std::string::append(&v10, "SysIDFrameLog.bin", 0x11uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v12 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (*(this + 44))
  {
    result = DspLib::Log::uninitialize(this + 44);
  }

  if ((a2 & 0x201) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, v4);
    v8 = std::string::append(&v10, "SysIDSignalLog.bin", 0x12uLL);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (*(this + 45))
  {
    result = DspLib::Log::uninitialize(this + 45);
  }

  if ((a2 & 0x401) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, v4);
    v9 = std::string::append(&v10, "SysIDThermalLog.bin", 0x13uLL);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (*(this + 46))
  {
    DspLib::Log::flush(this + 46);
    return DspLib::Log::uninitialize(this + 46);
  }

  return result;
}