DspLib::FourBandRandomOrderLrFilterBank::FilterBank *DspLib::FourBandRandomOrderLrFilterBank::FilterBank::FilterBank(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 512;
  *(this + 24) = 0;
  *(this + 7) = 0u;
  *(this + 26) = 0;
  *(this + 11) = 0;
  *(this + 93) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 256) = 0;
  *(this + 328) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 400) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  DspLib::copy(&DspLib::FourBandRandomOrderLrFilterBank::Parameters::kDefault, 15, this + 28);
  return this;
}

void sub_1DDBFA4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 568);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 544);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  DspLib::Biquad::Filter::~Filter((v10 + 472));
  DspLib::Biquad::Filter::~Filter((v10 + 400));
  DspLib::Biquad::Filter::~Filter((v10 + 328));
  DspLib::Biquad::Filter::~Filter((v10 + 256));
  DspLib::Biquad::Filter::~Filter((v10 + 184));
  v12 = *(v10 + 160);
  if (v12)
  {
    *(v10 + 168) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 136);
  if (v13)
  {
    *(v10 + 144) = v13;
    operator delete(v13);
  }

  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setPhaseCompensationOnlyMode(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this, char a2)
{
  if (*(this + 24) == 1)
  {
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setPhaseCompensationOnlyMode();
  }

  else
  {
    *(this + 100) = a2;
  }
}

uint64_t DspLib::FourBandRandomOrderLrFilterBank::FilterBank::initialize(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this, unsigned __int16 a2, double a3)
{
  v3 = *(this + 24) ^ 1 | (*(this + 2) != a2);
  if (a2 >= 0x41u)
  {
    v8 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FourBandRandomOrderLrFilterBank/dsp/DspLibFourBandRandomOrderLrFilterBank.cpp");
    v9 = 29;
LABEL_12:
    printf("DSP Sound assertion in %s at line %d\n", v8, v9);
    ++DspLibDebug::mAssertCounter;
    return v3 & 1;
  }

  if (!a2)
  {
    v8 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FourBandRandomOrderLrFilterBank/dsp/DspLibFourBandRandomOrderLrFilterBank.cpp");
    v9 = 30;
    goto LABEL_12;
  }

  *(this + 2) = a2;
  if (a3 <= 0.0)
  {
    v8 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FourBandRandomOrderLrFilterBank/dsp/DspLibFourBandRandomOrderLrFilterBank.cpp");
    v9 = 32;
    goto LABEL_12;
  }

  isEqual = DspLib::isEqual(this, *this, a3, 1.0e-20);
  *this = a3;
  std::vector<float *>::resize(this + 20, *(this + 2));
  if ((v3 & 1) != 0 || !isEqual)
  {
    std::vector<std::vector<DspLib::Biquad::Section>>::reserve(this + 68, 3uLL);
    std::vector<std::vector<DspLib::Biquad::Section>>::reserve(this + 71, 3uLL);
    v3 = 1;
    *(this + 24) = 1;
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setParameters(this, this + 28, 15);
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::reset(this);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *std::vector<std::vector<DspLib::Biquad::Section>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setParameters(uint64_t a1, void *__src, uint64_t a3)
{
  if (a3 != 15)
  {
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setParameters();
    return;
  }

  v4 = (a1 + 28);
  if ((a1 + 28) != __src)
  {
    DspLib::copy(__src, 15, v4);
  }

  for (i = 0; i != 60; i += 4)
  {
    v6 = *&v4[i];
    v7 = &DspLib::FourBandRandomOrderLrFilterBank::Parameters::kMinimum + i;
    v8 = &DspLib::FourBandRandomOrderLrFilterBank::Parameters::kMaximum + i;
    if (*(&DspLib::FourBandRandomOrderLrFilterBank::Parameters::kMaximum + i) >= v6)
    {
      v8 = &v4[i];
    }

    if (v6 >= *(&DspLib::FourBandRandomOrderLrFilterBank::Parameters::kMinimum + i))
    {
      v7 = v8;
    }

    *&v4[i] = *v7;
  }

  if (*(a1 + 24) == 1)
  {
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = vcgeq_f32(*(a1 + 72), v9);
    v11 = vaddvq_s32(vandq_s8(v10, xmmword_1DE098920));
    *v10.i8 = vand_s8(vmovn_s32(v10), 0x1000100010001);
    *v10.i8 = vuzp1_s8(*v10.i8, *v10.i8);
    *(a1 + 108) = v10.i32[0];
    v10.i32[0] = v11 & 0xF;
    v12 = vcnt_s8(*v10.i8);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.i32[0];
    if ((*(a1 + 100) & 1) == 0)
    {
      v14 = v12.i32[0] <= 2u ? 2 : v12.i32[0];
      std::vector<std::vector<float>>::resize((a1 + 112), (*(a1 + 8) * v14));
      v15 = *(a1 + 112);
      v16 = *(a1 + 120);
      if (v15 == v16)
      {
        v17 = *(a1 + 112);
      }

      else
      {
        do
        {
          std::vector<float>::resize(v15, *(a1 + 16));
          v15 += 3;
        }

        while (v15 != v16);
        v15 = *(a1 + 112);
        v17 = *(a1 + 120);
      }

      std::vector<float *>::resize((a1 + 136), 0xAAAAAAAAAAAAAAABLL * ((v17 - v15) >> 3));
      v18 = *(a1 + 112);
      if (*(a1 + 120) != v18)
      {
        v19 = 0;
        v20 = 1;
        do
        {
          *(*(a1 + 136) + 8 * v19) = *(v18 + 24 * v19);
          v19 = v20;
          v18 = *(a1 + 112);
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - v18) >> 3) > v20++);
      }
    }

    v22 = *(a1 + 104);
    *(a1 + 104) = v13;
    if ((v13 & 0xFu) <= 1)
    {
      DspLib::Biquad::Filter::uninitialize((a1 + 184));
      DspLib::Biquad::Filter::uninitialize((a1 + 256));
      DspLib::Biquad::Filter::uninitialize((a1 + 328));
      DspLib::Biquad::Filter::uninitialize((a1 + 400));

      DspLib::Biquad::Filter::uninitialize((a1 + 472));
      return;
    }

    v23 = (v13 - 1);
    std::vector<std::vector<DspLib::Biquad::Section>>::resize((a1 + 544), v23);
    std::vector<std::vector<DspLib::Biquad::Section>>::resize((a1 + 568), v23);
    v24 = 0;
    v25 = v22 != v13;
    v26 = a1 + 88;
    do
    {
      v27 = 0;
      v28 = 108;
      for (j = 1; j != 9; j += 2)
      {
        if (*(a1 + v28) == 1)
        {
          if (v24 == v27)
          {
            goto LABEL_33;
          }

          ++v27;
        }

        ++v28;
      }

      j = 1;
LABEL_33:
      v30 = vcvtas_u32_f32(*&v4[4 * j] * 0.5);
      if (*(v26 + 4 * v24) != v30)
      {
        *(v26 + 4 * v24) = v30;
        v25 = 1;
      }

      ++v24;
    }

    while (v24 != v23);
    v31 = 0;
    do
    {
      v32 = 0;
      v33 = 0;
      do
      {
        if (*(a1 + v32 + 108) == 1)
        {
          if (v31 == v33)
          {
            goto LABEL_43;
          }

          ++v33;
        }

        ++v32;
      }

      while (v32 != 4);
      LODWORD(v32) = 0;
LABEL_43:
      std::vector<DspLib::Biquad::Section>::resize((*(a1 + 568) + 24 * v31), 1uLL);
      v34 = *(v26 + 4 * v31);
      v35 = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::xOverFrequency(a1, v32);
      v36 = *a1;
      DspLib::Biquad::Design::butterworthLowPass(v34, v35, v36, 0, &v57);
      v37 = *(a1 + 544) + 24 * v31;
      v38 = *v37;
      if (*v37)
      {
        *(v37 + 8) = v38;
        operator delete(v38);
        *v37 = 0;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
      }

      *v37 = v57;
      *(v37 + 16) = v58;
      v39 = *(v26 + 4 * v31);
      v40 = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::xOverFrequency(a1, v32);
      v41 = *a1;
      DspLib::Biquad::Design::butterworthHighPass(v39, v40, v41, 0, &v57);
      v42 = *(a1 + 568) + 24 * v31;
      v43 = *v42;
      if (*v42)
      {
        *(v42 + 8) = v43;
        operator delete(v43);
        *v42 = 0;
        *(v42 + 8) = 0;
        *(v42 + 16) = 0;
      }

      v44 = v57;
      *v42 = v57;
      *(v42 + 16) = v58;
      ++v31;
    }

    while (v31 != v23);
    v45 = *(a1 + 104);
    v46 = *(a1 + 544);
    if (v45 == 3)
    {
      v47 = 0xCCCCCCCCCCCCCCCDLL * ((v46[4] - v46[3]) >> 2);
      v50 = 0xCCCCCCCCCCCCCCCDLL * ((v46[1] - *v46) >> 2);
      v51 = v50 - 0x3333333333333333 * ((v46[4] - v46[3]) >> 2);
      if (!v25)
      {
        goto LABEL_66;
      }
    }

    else if (v45 == 4)
    {
      v47 = 0xCCCCCCCCCCCCCCCDLL * ((v46[4] - v46[3]) >> 2);
      v48 = 0xCCCCCCCCCCCCCCCDLL * ((v46[1] - *v46) >> 2);
      v49 = 0xCCCCCCCCCCCCCCCDLL * ((v46[7] - v46[6]) >> 2);
      if (v48 <= v49)
      {
        LODWORD(v50) = v49;
      }

      else
      {
        LODWORD(v50) = v48;
      }

      LODWORD(v51) = v48 + v47 + v49;
      if (!v25)
      {
        goto LABEL_66;
      }
    }

    else
    {
      LODWORD(v50) = 0;
      v47 = 0xCCCCCCCCCCCCCCCDLL * ((v46[1] - *v46) >> 2);
      LODWORD(v51) = v47;
      if (!v25)
      {
        goto LABEL_66;
      }
    }

    DspLib::Biquad::Filter::uninitialize((a1 + 184));
    DspLib::Biquad::Filter::uninitialize((a1 + 256));
    DspLib::Biquad::Filter::uninitialize((a1 + 328));
    DspLib::Biquad::Filter::uninitialize((a1 + 400));
    DspLib::Biquad::Filter::uninitialize((a1 + 472));
    v52 = *(a1 + 8);
    if (*(a1 + 100) == 1)
    {
      v53 = v51;
      v54 = (a1 + 472);
LABEL_65:
      DspLib::Biquad::Filter::initialize(v54, v52, v53);
      goto LABEL_66;
    }

    DspLib::Biquad::Filter::initialize((a1 + 184), (2 * v52), v47);
    DspLib::Biquad::Filter::initialize((a1 + 328), (2 * *(a1 + 8)), v47);
    v55 = *(a1 + 104);
    if (v55 == 3)
    {
      v56 = v50;
      DspLib::Biquad::Filter::initialize((a1 + 256), (2 * *(a1 + 8)), v50);
      v52 = (3 * *(a1 + 8));
      v54 = (a1 + 400);
      goto LABEL_64;
    }

    if (v55 == 4)
    {
      v56 = v50;
      DspLib::Biquad::Filter::initialize((a1 + 256), (4 * *(a1 + 8)), v50);
      DspLib::Biquad::Filter::initialize((a1 + 400), (4 * *(a1 + 8)), v50);
      v52 = (2 * *(a1 + 8));
      v54 = (a1 + 472);
LABEL_64:
      v53 = v56;
      goto LABEL_65;
    }

LABEL_66:
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setBandGains(a1, (a1 + 52), 4, v44);
  }
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::reset(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 232));
  DspLib::Biquad::SetupWrapper::reset((this + 304));
  DspLib::Biquad::SetupWrapper::reset((this + 376));
  DspLib::Biquad::SetupWrapper::reset((this + 448));

  DspLib::Biquad::SetupWrapper::reset((this + 520));
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::uninitialize(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this)
{
  *(this + 24) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 184));
  DspLib::Biquad::Filter::uninitialize((this + 256));
  DspLib::Biquad::Filter::uninitialize((this + 328));
  DspLib::Biquad::Filter::uninitialize((this + 400));
  DspLib::Biquad::Filter::uninitialize((this + 472));
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 14);
  *(this + 18) = *(this + 17);
  *(this + 26) = 0;
}

unint64_t DspLib::FourBandRandomOrderLrFilterBank::FilterBank::buffer(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = this + 108;
    v4 = a2;
    do
    {
      v5 = *v3++;
      v2 += v5;
      --v4;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  return *(this + 17) + 8 * v2 * *(this + 2);
}

float DspLib::FourBandRandomOrderLrFilterBank::FilterBank::xOverFrequency(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this, int a2)
{
  if (a2 == 2)
  {
    return *(this + 11);
  }

  if (a2 == 1)
  {
    result = *(this + 11) / 1.25;
    if (result >= *(this + 9))
    {
      return *(this + 9);
    }
  }

  else
  {
    result = 0.0;
    if (!a2)
    {
      result = *(this + 9) / 1.25;
      if (result >= *(this + 7))
      {
        result = *(this + 7);
      }

      if (((*(this + 11) / 1.25) / 1.25) < result)
      {
        return (*(this + 11) / 1.25) / 1.25;
      }
    }
  }

  return result;
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setBandGains(uint64_t a1, void *a2, uint64_t a3, uint8x8_t a4)
{
  v4 = (a1 + 108);
  a4.i32[0] = *(a1 + 108);
  v5 = vaddvq_s32(vmovl_u16(*&vmovl_u8(a4)));
  if (v5 >= 2)
  {
    memset(v38, 0, sizeof(v38));
    std::vector<std::vector<DspLib::Biquad::Section>>::__init_with_size[abi:ne200100]<std::vector<DspLib::Biquad::Section>*,std::vector<DspLib::Biquad::Section>*>(v38, *(a1 + 544), *(a1 + 552), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 552) - *(a1 + 544)) >> 3));
    memset(v37, 0, sizeof(v37));
    std::vector<std::vector<DspLib::Biquad::Section>>::__init_with_size[abi:ne200100]<std::vector<DspLib::Biquad::Section>*,std::vector<DspLib::Biquad::Section>*>(v37, *(a1 + 568), *(a1 + 576), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 576) - *(a1 + 568)) >> 3));
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::assignCoeffsToBiquadStages(a1, v38, v37, v9);
    v34 = v37;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v34);
    v34 = v38;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v34);
    if ((a1 + 52) != a2)
    {
      DspLib::copy(a2, a3, (a1 + 52));
    }

    v10 = a1 + 28;
    DspLib::clear(&v34, 4uLL);
    for (i = 0; ; ++i)
    {
      v12.i32[0] = *v4;
      if (i >= vaddvq_s32(vmovl_u16(*&vmovl_u8(v12))))
      {
        break;
      }

      v14 = 0;
      v15 = -6;
      v16 = v4;
      while (1)
      {
        v17 = *v16++;
        if (v17 == 1)
        {
          break;
        }

LABEL_10:
        if (--v15 == -10)
        {
          v18 = 6;
          goto LABEL_13;
        }
      }

      if (i != v14)
      {
        ++v14;
        goto LABEL_10;
      }

      v18 = -v15;
LABEL_13:
      v12 = 0;
      if (*(v10 + 4 * v18) != -100.0)
      {
        *v12.i32 = DspLib::dB2Amp(v11, *(v10 + 4 * v18));
      }

      *(&v34 + i) = v12.i32[0];
    }

    v19 = v4;
    v20 = 1;
    while (1)
    {
      v21 = *v19++;
      if (v21)
      {
        break;
      }

      v20 += 2;
      if (v20 == 9)
      {
        v20 = 1;
        break;
      }
    }

    if (vcvtas_u32_f32(*(v10 + 4 * v20) * 0.5))
    {
      *(&v34 + 1) = -*(&v34 + 1);
    }

    if (v5 == 4)
    {
      v22 = 0;
      for (j = 1; j != 9; j += 2)
      {
        v24 = *v4;
        v4 = (v4 + 1);
        if (v24 == 1)
        {
          if (v22 == 2)
          {
            goto LABEL_29;
          }

          ++v22;
        }
      }

      j = 1;
LABEL_29:
      if (vcvtas_u32_f32(*(v10 + 4 * j) * 0.5))
      {
        v36 = -v36;
      }
    }

    if ((*(a1 + 100) & 1) == 0)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v26 = 0;
        while (v5 != 4)
        {
          if (v5 == 2)
          {
            DspLib::FourBandRandomOrderLrFilterBank::applyGain((a1 + 184), 0, v26, *&v34, v25);
            v33 = *(&v34 + 1);
            v31 = *(a1 + 8);
            v32 = (a1 + 184);
            goto LABEL_43;
          }

          if (v5 == 3)
          {
            DspLib::FourBandRandomOrderLrFilterBank::applyGain((a1 + 256), 0, v26, *&v34, v25);
            DspLib::FourBandRandomOrderLrFilterBank::applyGain((a1 + 256), 1, v26, *(&v34 + 1), *(a1 + 8));
            v27 = v35;
            v28 = *(a1 + 8);
            v29 = (a1 + 184);
            v30 = 1;
            goto LABEL_39;
          }

LABEL_40:
          if (*(a1 + 92))
          {
            v31 = *(a1 + 8);
            v32 = (a1 + 328);
            v33 = -1.0;
LABEL_43:
            DspLib::FourBandRandomOrderLrFilterBank::applyGain(v32, 1, v26, v33, v31);
          }

          ++v26;
          v25 = *(a1 + 8);
          if (v26 >= v25)
          {
            return;
          }
        }

        DspLib::FourBandRandomOrderLrFilterBank::applyGain((a1 + 256), 0, v26, *&v34, v25);
        DspLib::FourBandRandomOrderLrFilterBank::applyGain((a1 + 256), 1, v26, *(&v34 + 1), *(a1 + 8));
        DspLib::FourBandRandomOrderLrFilterBank::applyGain((a1 + 256), 2, v26, v35, *(a1 + 8));
        v27 = v36;
        v28 = *(a1 + 8);
        v29 = (a1 + 256);
        v30 = 3;
LABEL_39:
        DspLib::FourBandRandomOrderLrFilterBank::applyGain(v29, v30, v26, v27, v28);
        goto LABEL_40;
      }
    }
  }
}

void sub_1DDBFB1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a14;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::assignCoeffsToBiquadStages(uint64_t a1, uint64_t **a2, uint64_t **a3, uint8x8_t a4)
{
  if (*(a1 + 8))
  {
    v7 = 0;
    a4.i32[0] = *(a1 + 108);
    v8 = vaddvq_s32(vmovl_u16(*&vmovl_u8(a4)));
    v9 = a1 + 472;
    v10 = a1 + 400;
    do
    {
      if (*(a1 + 100) == 1)
      {
        DspLib::Biquad::Design::allpassFromPoles((*a2)[3 * (v8 > 2)], 0xCCCCCCCCCCCCCCCDLL * (((*a2)[3 * (v8 > 2) + 1] - (*a2)[3 * (v8 > 2)]) >> 2), 0, &__p);
        DspLib::Biquad::Filter::setCoefficients(v9, __p, 0xCCCCCCCCCCCCCCCDLL * ((v22 - __p) >> 2), 0, v7);
        if (__p)
        {
          v22 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v11 = (8 * (v8 > 2)) | (16 * (v8 > 2));
        DspLib::Biquad::Filter::setCoefficients(a1 + 184, *(*a2 + v11), 0xCCCCCCCCCCCCCCCDLL * ((*(*a2 + v11 + 8) - *(*a2 + v11)) >> 2), 0, v7);
        DspLib::Biquad::Filter::setCoefficients(a1 + 184, *(*a3 + v11), 0xCCCCCCCCCCCCCCCDLL * ((*(*a3 + v11 + 8) - *(*a3 + v11)) >> 2), 0, (v7 + *(a1 + 8)));
        DspLib::Biquad::Filter::setCoefficients(a1 + 328, *(*a2 + v11), 0xCCCCCCCCCCCCCCCDLL * ((*(*a2 + v11 + 8) - *(*a2 + v11)) >> 2), 0, v7);
        DspLib::Biquad::Filter::setCoefficients(a1 + 328, *(*a3 + v11), 0xCCCCCCCCCCCCCCCDLL * ((*(*a3 + v11 + 8) - *(*a3 + v11)) >> 2), 0, (v7 + *(a1 + 8)));
      }

      if (v8 >= 3)
      {
        DspLib::Biquad::Design::allpassFromPoles(**a2, 0xCCCCCCCCCCCCCCCDLL * (((*a2)[1] - **a2) >> 2), 0, &__p);
        if (*(a1 + 100) == 1)
        {
          v12 = __p;
          v13 = v22 - __p;
          v14 = -858993459 * ((*(*(a1 + 544) + 32) - *(*(a1 + 544) + 24)) >> 2);
          v15 = v9;
          v16 = v7;
        }

        else
        {
          DspLib::Biquad::Filter::setCoefficients(a1 + 256, **a2, 0xCCCCCCCCCCCCCCCDLL * (((*a2)[1] - **a2) >> 2), 0, v7);
          DspLib::Biquad::Filter::setCoefficients(a1 + 256, **a3, 0xCCCCCCCCCCCCCCCDLL * (((*a3)[1] - **a3) >> 2), 0, (v7 + *(a1 + 8)));
          DspLib::Biquad::Filter::setCoefficients(v10, **a2, 0xCCCCCCCCCCCCCCCDLL * (((*a2)[1] - **a2) >> 2), 0, v7);
          DspLib::Biquad::Filter::setCoefficients(v10, **a3, 0xCCCCCCCCCCCCCCCDLL * (((*a3)[1] - **a3) >> 2), 0, (v7 + *(a1 + 8)));
          v12 = __p;
          v13 = v22 - __p;
          v17 = *(a1 + 8);
          v14 = 0;
          if (v8 == 4)
          {
            v16 = (v7 + v17);
            v15 = v9;
          }

          else
          {
            v16 = (v7 + 2 * v17);
            v15 = v10;
          }
        }

        DspLib::Biquad::Filter::setCoefficients(v15, v12, 0xCCCCCCCCCCCCCCCDLL * (v13 >> 2), v14, v16);
        if (__p)
        {
          v22 = __p;
          operator delete(__p);
        }

        if (v8 == 4)
        {
          DspLib::Biquad::Design::allpassFromPoles((*a2)[6], 0xCCCCCCCCCCCCCCCDLL * (((*a2)[7] - (*a2)[6]) >> 2), 0, &__p);
          if (*(a1 + 100) == 1)
          {
            v18 = __p;
            v19 = v22 - __p;
            v20 = -858993459 * ((*(*(a1 + 544) + 32) - *(*(a1 + 544) + 24)) >> 2) - 858993459 * ((*(*(a1 + 544) + 8) - **(a1 + 544)) >> 2);
          }

          else
          {
            DspLib::Biquad::Filter::setCoefficients(a1 + 256, (*a2)[6], 0xCCCCCCCCCCCCCCCDLL * (((*a2)[7] - (*a2)[6]) >> 2), 0, (v7 + 2 * *(a1 + 8)));
            DspLib::Biquad::Filter::setCoefficients(a1 + 256, (*a3)[6], 0xCCCCCCCCCCCCCCCDLL * (((*a3)[7] - (*a3)[6]) >> 2), 0, (v7 + 3 * *(a1 + 8)));
            DspLib::Biquad::Filter::setCoefficients(v10, (*a2)[6], 0xCCCCCCCCCCCCCCCDLL * (((*a2)[7] - (*a2)[6]) >> 2), 0, (v7 + 2 * *(a1 + 8)));
            DspLib::Biquad::Filter::setCoefficients(v10, (*a3)[6], 0xCCCCCCCCCCCCCCCDLL * (((*a3)[7] - (*a3)[6]) >> 2), 0, (v7 + 3 * *(a1 + 8)));
            v20 = 0;
            v18 = __p;
            v19 = v22 - __p;
          }

          DspLib::Biquad::Filter::setCoefficients(v9, v18, 0xCCCCCCCCCCCCCCCDLL * (v19 >> 2), v20, v7);
          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }
        }
      }

      ++v7;
    }

    while (v7 < *(a1 + 8));
  }
}

void sub_1DDBFB668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::FourBandRandomOrderLrFilterBank::applyGain(DspLib::FourBandRandomOrderLrFilterBank *this, DspLib::Biquad::Filter *a2, unsigned int a3, float a4, uint64_t a5)
{
  v6 = a2 * a5 + a3;
  DspLib::Biquad::Filter::section(this, 0, v6, &v10);
  *v10.f32 = vmul_n_f32(*v10.f32, a4);
  v10.f32[2] = v10.f32[2] * a4;
  v8 = v10;
  v9 = v11;
  DspLib::Biquad::Filter::setCoefficients(this, &v8, 1, 0, v6);
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processBlock(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v6 = *(a2 + 1);
  v3 = *a2;
  v4 = a2[2];
  v5 = v2;
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processBlock(a1, &v5, &v3);
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *(a3 + 16) = v6;
  if (*(a1 + 100))
  {
    if (*(a1 + 104) < 2u)
    {
      v12 = (a1 + 108);
      v13 = -6;
      v14 = 6;
      while (1)
      {
        v15 = *v12++;
        if (v15)
        {
          break;
        }

        if (--v13 == -10)
        {
          goto LABEL_21;
        }
      }

      v14 = -v13;
LABEL_21:
      v16 = 0.0;
      if (*(a1 + 28 + 4 * v14) != -100.0)
      {
        v16 = DspLib::dB2Amp(a1, *(a1 + 28 + 4 * v14));
      }

      v19 = *a2;
      v20 = *(a2 + 16);
      v17 = *a3;
      v18 = *(a3 + 16);
      DspLib::multiply(&v19, &v17, v16);
    }

    else
    {
      v19 = *a2;
      v20 = *(a2 + 16);
      v17 = *a3;
      v18 = *(a3 + 16);
      DspLib::Biquad::Filter::process((a1 + 472), &v19, &v17);
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      v7 = 0;
      do
      {
        DspLib::copy(*(*a2 + 8 * v7), *(a2 + 16), *(*(a1 + 136) + 8 * v7));
        if (*(a1 + 104) >= 2u)
        {
          DspLib::copy(*(*a2 + 8 * v7), *(a2 + 16), *(*(a1 + 136) + 8 * *(a1 + 8) + 8 * v7));
        }

        ++v7;
      }

      while (v7 < *(a1 + 8));
      v6 = *(a2 + 16);
    }

    v8 = (*(a1 + 144) - *(a1 + 136)) >> 3;
    *&v19 = *(a1 + 136);
    *(&v19 + 1) = v8;
    v20 = v6;
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processAnalysisKernel(a1, &v19);
    v9 = (*(a1 + 144) - *(a1 + 136)) >> 3;
    v10 = *(a2 + 16);
    *&v19 = *(a1 + 136);
    *(&v19 + 1) = v9;
    v20 = v10;
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processSynthesisKernel(a1, &v19);
    if (*(a1 + 8))
    {
      v11 = 0;
      do
      {
        if (*(a1 + 104) >= 2u)
        {
          DspLib::add();
        }

        DspLib::copy(*(*(a1 + 136) + 8 * v11), *(a2 + 16), *(*a3 + 8 * v11));
        ++v11;
      }

      while (v11 < *(a1 + 8));
    }
  }
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processAnalysisKernel(uint64_t a1, void *a2)
{
  if (*(a1 + 104) < 2u)
  {
    v6 = (a1 + 108);
    v7 = -6;
    v8 = 6;
    while (1)
    {
      v9 = *v6++;
      if (v9)
      {
        break;
      }

      if (--v7 == -10)
      {
        goto LABEL_8;
      }
    }

    v8 = -v7;
LABEL_8:
    v10 = *(a1 + 28 + 4 * v8);
    v11 = 0.0;
    if (v10 != -100.0)
    {
      v11 = DspLib::dB2Amp(a1, v10);
    }

    if ((*(a1 + 8) & 0x7FFFFFFF) != 0)
    {
      v12 = 0;
      do
      {
        DspLib::multiply(*(*a2 + 8 * v12++), a2[2], v11);
      }

      while (v12 < (2 * *(a1 + 8)));
    }
  }

  else
  {
    v4 = *(a1 + 232);
    v5 = a2[2];
    *&v19 = *a2;
    *(&v19 + 1) = v4;
    v20 = v5;
    *&v17 = v19;
    *(&v17 + 1) = v4;
    v18 = v5;
    DspLib::Biquad::Filter::process((a1 + 184), &v19, &v17);
  }

  if (*(a1 + 104) >= 3u)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        if (*(a1 + 104) == 4)
        {
          DspLib::copy(*(*a2 + 8 * v13 + 8 * i), a2[2], *(*a2 + 24 * v13 + 8 * i));
          v13 = *(a1 + 8);
        }

        DspLib::copy(*(*a2 + 8 * v13 + 8 * i), a2[2], *(*a2 + 16 * v13 + 8 * i));
        DspLib::copy(*(*a2 + 8 * i), a2[2], *(*a2 + 8 * i + 8 * *(a1 + 8)));
        v13 = *(a1 + 8);
      }
    }

    v15 = *(a1 + 304);
    v16 = a2[2];
    *&v19 = *a2;
    *(&v19 + 1) = v15;
    v20 = v16;
    *&v17 = v19;
    *(&v17 + 1) = v15;
    v18 = v16;
    DspLib::Biquad::Filter::process((a1 + 256), &v19, &v17);
  }
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processSynthesisKernel(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  if (v4 >= 3)
  {
    v5 = *(a1 + 448);
    v6 = a2[2];
    *&v13 = *a2;
    *(&v13 + 1) = v5;
    v14 = v6;
    *&v11 = v13;
    *(&v11 + 1) = v5;
    v12 = v6;
    DspLib::Biquad::Filter::process((a1 + 400), &v13, &v11);
    if (*(a1 + 8))
    {
      DspLib::add();
    }

    v4 = *(a1 + 104);
  }

  if (v4 >= 2)
  {
    v7 = *(a1 + 376);
    v8 = a2[2];
    *&v13 = *a2;
    *(&v13 + 1) = v7;
    v14 = v8;
    *&v11 = v13;
    *(&v11 + 1) = v7;
    v12 = v8;
    DspLib::Biquad::Filter::process((a1 + 328), &v13, &v11);
    if (*(a1 + 104) == 4)
    {
      v9 = *(a1 + 520);
      v10 = a2[2];
      *&v13 = *a2;
      *(&v13 + 1) = v9;
      v14 = v10;
      *&v11 = v13;
      *(&v11 + 1) = v9;
      v12 = v10;
      DspLib::Biquad::Filter::process((a1 + 472), &v13, &v11);
    }
  }
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::analyze(uint64_t a1, void *a2)
{
  if ((*(a1 + 100) & 1) == 0)
  {
    if (*(a1 + 8))
    {
      v4 = 0;
      do
      {
        DspLib::copy(*(*a2 + 8 * v4), a2[2], *(*(a1 + 136) + 8 * v4));
        if (*(a1 + 104) >= 2u)
        {
          DspLib::copy(*(*a2 + 8 * v4), a2[2], *(*(a1 + 136) + 8 * *(a1 + 8) + 8 * v4));
        }

        ++v4;
      }

      while (v4 < *(a1 + 8));
    }

    v5 = (*(a1 + 144) - *(a1 + 136)) >> 3;
    v6 = a2[2];
    v7[0] = *(a1 + 136);
    v7[1] = v5;
    v7[2] = v6;
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processAnalysisKernel(a1, v7);
  }
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::synthesize(uint64_t a1, void *a2)
{
  v4 = (*(a1 + 144) - *(a1 + 136)) >> 3;
  v5 = a2[2];
  v7[0] = *(a1 + 136);
  v7[1] = v4;
  v7[2] = v5;
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processSynthesisKernel(a1, v7);
  if (*(a1 + 8))
  {
    v6 = 0;
    do
    {
      if (*(a1 + 104) >= 2u)
      {
        DspLib::add();
      }

      DspLib::copy(*(*(a1 + 136) + 8 * v6), a2[2], *(*a2 + 8 * v6));
      ++v6;
    }

    while (v6 < *(a1 + 8));
  }
}

uint64_t DspLib::FourBandRandomOrderLrFilterBank::FilterBank::orderForCrossoverPoint(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = a2;
  }

  return *(this + ((2 * v2) | 1u) + 7);
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setPhaseCompensationOnlyMode()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FourBandRandomOrderLrFilterBank/dsp/DspLibFourBandRandomOrderLrFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 19);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FourBandRandomOrderLrFilterBank/dsp/DspLibFourBandRandomOrderLrFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 219);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

float DspLib::VirtualBass::PeakFollower::process(uint64_t a1, const float *a2, vDSP_Length __N, float *a4, uint64_t a5)
{
  v6 = a4;
  DspLib::abs(a2, __N, a4);
  if (a5)
  {
    v9 = 4 * a5;
    result = 1.0;
    do
    {
      v10 = *v6;
      v12 = *(a1 + 12);
      v11 = *(a1 + 16);
      if (*v6 <= v12)
      {
        v13 = *(a1 + 4);
        if (*v6 < v12)
        {
          v14 = *(a1 + 24);
          if (*(a1 + 8) > v14)
          {
            *(a1 + 24) = v14 + 1;
            v13 = 1.0;
            if (v10 >= (v12 * 0.9))
            {
              *(a1 + 24) = 0;
            }
          }
        }
      }

      else
      {
        v13 = *a1;
        *(a1 + 24) = 0;
        if (v12 > *(a1 + 20))
        {
          v11 = v13;
        }
      }

      v15 = (v10 * (1.0 - v13)) + (v13 * v12);
      *(a1 + 12) = v15;
      v16 = ((1.0 - v11) * v15) + (v11 * *(a1 + 20));
      *(a1 + 20) = v16;
      *v6++ = v16;
      v9 -= 4;
    }

    while (v9);
  }

  return result;
}

float DspLib::VirtualBass::Compressor::setParameters(DspLib::VirtualBass::Compressor *this, float32x2_t a2, float32_t a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  *this = a5;
  *(this + 1) = a7;
  *(this + 2) = (1.0 / a6) + -1.0;
  *(this + 3) = a8 * 0.5;
  *(this + 4) = 1.0 / (a8 + a8);
  *(this + 5) = 1.0 / a6;
  a2.f32[1] = a3;
  v13 = vdup_n_s32(0x447A0000u);
  v14 = vdiv_f32(vmul_n_f32(vmul_f32(a2, v13), a10), v13);
  __asm { FMOV            V1.2S, #-1.0 }

  v20 = vdiv_f32(_D1, v14);
  v23 = v20.f32[0];
  v24 = expf(v20.f32[1]);
  *&v21 = expf(v23);
  *(&v21 + 1) = v24;
  *(this + 6) = v21;
  *(this + 16) = expf(-1.0 / (((a9 * 1000.0) * a10) / 1000.0));
  result = ((a4 * a10) + 1);
  *(this + 14) = result;
  return result;
}

void DspLib::VirtualBass::Compressor::process(uint64_t a1, const float *a2, vDSP_Length __N)
{
  v5 = *(a1 + 24);
  DspLib::abs(a2, __N, v5);
  DspLib::add(v5, __N, 0.000001);
  DspLib::amp2dB(v5, __N, 1.0);
  if (__N)
  {
    v6 = 4 * __N;
    v7 = v5;
    do
    {
      v8 = *v7 - *a1;
      v9 = *(a1 + 12);
      if (v8 <= v9)
      {
        v10 = 0.0;
        if (fabsf(v8) <= v9)
        {
          v10 = *(a1 + 16) * ((v8 + v9) * -(*(a1 + 8) * (v8 + v9)));
        }
      }

      else
      {
        v10 = *v7 - (*a1 + (v8 * *(a1 + 20)));
      }

      *v7++ = v10;
      v6 -= 4;
    }

    while (v6);
  }

  DspLib::add(v5, __N, -*(a1 + 4));
  DspLib::VirtualBass::PeakFollower::process(a1 + 48, v5, __N, v5, __N);
  DspLib::negate();
}

void sub_1DDBFC1D4()
{
  DspLib::dB2Amp(v1, v0);

  DspLib::multiply();
}

void DspLib::VirtualBass::Resampler::initialize(DspLib::VirtualBass::Resampler *this, unint64_t a2, double a3)
{
  std::vector<float>::resize(this + 13, a2);
  std::__optional_destruct_base<DspLib::VirtualBass::Resampler::Stage,false>::reset[abi:ne200100](this);
  v5 = a3;
  if (a3 >> 7 >= 0x7D)
  {
    v6 = 0;
    v7 = 1000;
    v8 = 1000000.0;
    do
    {
      v9 = DspLib::VirtualBass::kStartFrequency[v6] - v5;
      v10 = fabsf(v9);
      v11 = v10 >= v8;
      if (v9 > 0.0)
      {
        v11 = 1;
      }

      if (!v11)
      {
        v7 = v6;
        v8 = v10;
      }

      ++v6;
    }

    while (v6 != 9);
    v12 = DspLib::VirtualBass::kSRCFactors[v7];
    DspLib::VirtualBass::Resampler::Stage::Stage(&v16);
    std::optional<DspLib::VirtualBass::Resampler::Stage>::operator=[abi:ne200100]<DspLib::VirtualBass::Resampler::Stage,void>(this, &v16);
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v20);
    v13 = &DspLib::VirtualBass::kEllipticalCoeff + 80 * v7;
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](&v16, 4uLL);
    DspLib::Biquad::read(v13, 20, v16, 0xCCCCCCCCCCCCCCCDLL * ((v17 - v16) >> 2));
    v14 = v16;
    *v16 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v16), v12));
    v15 = v12 * v14[2];
    v14[2] = v15;
    DspLib::VirtualBass::Resampler::Stage::configure(this, v14, 0xCCCCCCCCCCCCCCCDLL * ((v17 - v14) >> 2), v12);
    *(this + 32) = (a3 / v12);
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }

  else
  {
    *(this + 32) = v5;
  }
}

void std::__optional_destruct_base<DspLib::VirtualBass::Resampler::Stage,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((a1 + 72));
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }

    *(a1 + 96) = 0;
  }
}

uint64_t std::optional<DspLib::VirtualBass::Resampler::Stage>::operator=[abi:ne200100]<DspLib::VirtualBass::Resampler::Stage,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    std::vector<double>::__move_assign(a1 + 48, (a2 + 48));
    DspLib::Biquad::SetupWrapper::operator=((a1 + 72), (a2 + 72));
  }

  else
  {
    std::__optional_storage_base<DspLib::VirtualBass::Resampler::Stage,false>::__construct[abi:ne200100]<DspLib::VirtualBass::Resampler::Stage>(a1, a2);
  }

  return a1;
}

void DspLib::VirtualBass::Resampler::Stage::configure(_DWORD *a1, uint64_t a2, vDSP_Length __M, int a4)
{
  DspLib::Biquad::Filter::setNumberOfStages((a1 + 6), __M);
  DspLib::Biquad::Filter::setCoefficients((a1 + 6), a2, __M, 0, 0x41uLL);
  if (a4)
  {
    a1[2] = a4;
    a1[3] = 0;
    *a1 = a4;
    a1[1] = 0;
  }
}

void DspLib::VirtualBass::Resampler::downsample(uint64_t a1, void *__src, uint64_t a3)
{
  v4 = *(a1 + 104);
  if (*(a1 + 96))
  {
    *(a1 + 136) = v4;
    v5 = a1 + 136;
    *(a1 + 144) = (*(a1 + 112) - v4) >> 2;
    DspLib::DownSampler::process((a1 + 8), __src, a3, (a1 + 136));
    *(v5 - 120) = a3;
  }

  else
  {
    *(a1 + 136) = v4;
    *(a1 + 144) = a3;

    DspLib::copy(__src, a3, v4);
  }
}

void DspLib::VirtualBass::Resampler::upsample(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 96))
  {
    v3 = *(a1 + 16);
    v4 = *a2;
    a2[1] = v3;
    v5 = *(a1 + 136);
    v6 = *(a1 + 144);
    v13 = v4;
    v11[2] = v6;
    v12 = v5;
    v11[0] = &v12;
    v11[1] = 1;
    v10[0] = &v13;
    v10[1] = 1;
    v10[2] = v3;
    DspLib::UpSampler::process(a1, v11, v10);
    DspLib::Biquad::Filter::process((a1 + 24), v4, v3, v4, v3);
  }

  else
  {
    v7 = *(a1 + 136);
    v8 = *a2;
    v9 = *(a1 + 144);

    DspLib::copy(v7, v9, v8);
  }
}

uint64_t DspLib::VirtualBass::Algorithm::initialize(DspLib::VirtualBass::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if ((*(*this + 64))(this) >= 9)
  {
    DspLib::VirtualBass::Algorithm::initialize();
  }

  else if ((*(*this + 64))(this))
  {
    *(this + 8) = 1;
    v5 = (*(*this + 64))(this);
    v6 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 248), v5, v6);
    v7 = (*(*this + 232))(this);
    std::vector<float>::resize(this + 37, v7);
    v8 = (*(*this + 232))(this);
    std::vector<float>::resize(this + 40, v8);
    v9 = (*(*this + 232))(this);
    std::vector<float>::resize(this + 43, v9);
    v10 = (*(*this + 232))(this);
    std::vector<float>::resize(this + 46, v10);
    v11 = (*(*this + 232))(this);
    v26 = 0;
    std::vector<float>::assign(this + 128, v11, &v26, v12);
    v13 = (*(*this + 64))(this);
    DspLib::Biquad::Filter::initialize((this + 392), v13, 1uLL);
    DspLib::Biquad::Filter::initialize((this + 464), 1uLL, 1uLL);
    DspLib::Biquad::Filter::initialize((this + 536), 1uLL, 1uLL);
    DspLib::Biquad::Filter::initialize((this + 608), 1uLL, 1uLL);
    v14 = (*(*this + 64))(this);
    DspLib::Biquad::Filter::initialize((this + 752), v14, 1uLL);
    DspLib::Biquad::Filter::initialize((this + 824), 1uLL, 0);
    v15 = (*(*this + 232))(this);
    v16 = (*(*this + 48))(this);
    DspLib::VirtualBass::Resampler::initialize((this + 1080), v15, v16);
    LODWORD(v17) = *(this + 302);
    DspLib::NonLinearDevice::Algorithm::initialize((this + 912), v17);
    DspLib::Biquad::Filter::initialize((this + 680), 1uLL, 1uLL);
    v18 = (*(*this + 208))(this);
    (*(*this + 216))(this, v18);
    if ((*(*this + 208))(this))
    {
      v19 = (*(*this + 64))(this);
      v20 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 1232), v19, v20);
      v21 = (*(*this + 64))(this);
      v22 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 1432), v21, v22);
    }

    else
    {
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1232);
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1432);
    }

    v23 = (*(*this + 152))(this, 0);
    (*(*this + 160))(this, v23, v24, 0);
    (*(*this + 168))(this);
  }

  else
  {
    DspLib::VirtualBass::Algorithm::initialize();
  }

  return v4;
}

void DspLib::VirtualBass::Algorithm::uninitialize(DspLib::VirtualBass::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 31);
  *(this + 35) = *(this + 34);
  *(this + 38) = *(this + 37);
  *(this + 41) = *(this + 40);
  *(this + 44) = *(this + 43);
  *(this + 47) = *(this + 46);
  DspLib::Biquad::Filter::uninitialize((this + 392));
  DspLib::Biquad::Filter::uninitialize((this + 464));
  DspLib::Biquad::Filter::uninitialize((this + 536));
  DspLib::Biquad::Filter::uninitialize((this + 608));
  DspLib::Biquad::Filter::uninitialize((this + 680));
  *(this + 114) = 0;
  std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1232);
  std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1432);
  DspLib::VirtualBass::Resampler::uninitialize((this + 1080));
  DspLib::Biquad::Filter::uninitialize((this + 752));

  DspLib::Biquad::Filter::uninitialize((this + 824));
}

void DspLib::VirtualBass::Resampler::uninitialize(DspLib::VirtualBass::Resampler *this)
{
  *(this + 14) = *(this + 13);
  v1[0] = 0;
  v5 = 0;
  std::__optional_storage_base<DspLib::VirtualBass::Resampler::Stage,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<DspLib::VirtualBass::Resampler::Stage,false>>(this, v1);
  if (v5 == 1)
  {
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v4);
    if (__p)
    {
      v3 = __p;
      operator delete(__p);
    }
  }
}

void sub_1DDBFCCB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<DspLib::VirtualBass::Resampler::Stage>::~optional(va);
  _Unwind_Resume(a1);
}

void DspLib::VirtualBass::Algorithm::reset(DspLib::VirtualBass::Algorithm *this)
{
  if (*(this + 8))
  {
    DspLib::Biquad::SetupWrapper::reset((this + 440));
    DspLib::Biquad::SetupWrapper::reset((this + 512));
    DspLib::Biquad::SetupWrapper::reset((this + 584));
    *(this + 116) = 0;
    if (*(this + 1424) == 1)
    {
      DspLib::AudioMeter::Algorithm::reset((this + 1232));
    }

    if (*(this + 1624) == 1)
    {
      DspLib::AudioMeter::Algorithm::reset((this + 1432));
    }

    DspLib::Biquad::SetupWrapper::reset((this + 656));
    DspLib::Biquad::SetupWrapper::reset((this + 728));
    *(this + 238) = 981668463;
    *(this + 120) = 981668463;
    *(this + 245) = 981668463;
    *(this + 988) = 981668463;
    *(this + 265) = 981668463;
    *(this + 1068) = 981668463;
    if (*(this + 1176) == 1)
    {
      *(this + 273) = 0;
      *(this + 271) = 0;
      DspLib::Biquad::SetupWrapper::reset((this + 1152));
    }

    DspLib::Biquad::SetupWrapper::reset((this + 800));

    DspLib::Biquad::SetupWrapper::reset((this + 872));
  }

  else
  {
    DspLib::VirtualBass::Algorithm::reset();
  }
}

uint64_t DspLib::VirtualBass::Algorithm::setMeteringIsEnabled(DspLib::VirtualBass::Algorithm *this, char a2)
{
  *(this + 96) = a2;
  result = (*(*this + 40))(this);
  if (result)
  {
    if ((*(*this + 208))(this))
    {
      v10 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0;
      v20 = 0u;
      v11 = DspLib::AudioMeter::Parameters::kDefault;
      v12 = *algn_1DE095D84;
      v13 = 0u;
      v14 = 0u;
      *v15 = 0u;
      *v16 = 0u;
      v17 = 0u;
      *__p_8 = 0u;
      DspLib::ChannelBuffer::ChannelBuffer(&v19, 0, 0);
      DWORD2(v22) = 0;
      std::optional<DspLib::AudioMeter::Algorithm>::operator=[abi:ne200100]<DspLib::AudioMeter::Algorithm,void>(this + 1232, &v10);
      DspLib::ChannelBuffer::~ChannelBuffer(&v19);
      if (*(&v17 + 1))
      {
        __p_8[0] = *(&v17 + 1);
        operator delete(*(&v17 + 1));
      }

      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }

      if (*(&v14 + 1))
      {
        v15[0] = *(&v14 + 1);
        operator delete(*(&v14 + 1));
      }

      v23 = &v13;
      std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v23);
      v10 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0;
      v20 = 0u;
      v11 = DspLib::AudioMeter::Parameters::kDefault;
      v12 = *algn_1DE095D84;
      v13 = 0u;
      v14 = 0u;
      *v15 = 0u;
      *v16 = 0u;
      v17 = 0u;
      *__p_8 = 0u;
      DspLib::ChannelBuffer::ChannelBuffer(&v19, 0, 0);
      DWORD2(v22) = 0;
      std::optional<DspLib::AudioMeter::Algorithm>::operator=[abi:ne200100]<DspLib::AudioMeter::Algorithm,void>(this + 1432, &v10);
      DspLib::ChannelBuffer::~ChannelBuffer(&v19);
      if (*(&v17 + 1))
      {
        __p_8[0] = *(&v17 + 1);
        operator delete(*(&v17 + 1));
      }

      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }

      if (*(&v14 + 1))
      {
        v15[0] = *(&v14 + 1);
        operator delete(*(&v14 + 1));
      }

      v23 = &v13;
      std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v23);
      v4 = (*(*this + 64))(this);
      v5 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 1232), v4, v5);
      v6 = (*(*this + 64))(this);
      v7 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 1432), v6, v7);
    }

    else
    {
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1232);
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1432);
    }

    v8 = (*(*this + 152))(this, 0);
    return (*(*this + 160))(this, v8, v9, 0);
  }

  return result;
}

uint64_t DspLib::VirtualBass::Algorithm::latencySamples(DspLib::VirtualBass::Algorithm *this)
{
  if ((*(*this + 40))(this))
  {
    DspLib::Biquad::Filter::latencySamples(this + 49);
    return DspLib::Biquad::Filter::latencySamples(this + 94);
  }

  else
  {
    v3 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/VirtualBass/dsp/DspLibVirtualBass.cpp");
    result = printf("DSP Sound assertion in %s at line %d\n", v3, 352);
    ++DspLibDebug::mAssertCounter;
  }

  return result;
}

void DspLib::VirtualBass::Algorithm::status(void *a1, float *a2, vDSP_Length a3)
{
  if ((*(*a1 + 40))(a1))
  {
    DspLib::clear(a2, a3);
    v6 = (*(*a1 + 48))(a1);
    a2[1] = v6;
    if ((*(*a1 + 208))(a1))
    {
      DspLib::AudioMeter::Algorithm::status(a1 + 154, a2 + 3, 0x20uLL);

      DspLib::AudioMeter::Algorithm::status(a1 + 179, a2 + 35, 0x20uLL);
    }

    else
    {

      DspLib::fill(a2 + 3, 0x40uLL, -100.0);
    }
  }

  else
  {
    DspLib::VirtualBass::Algorithm::status();
  }
}

void DspLib::VirtualBass::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    *(a1 + 242) = (*(*a1 + 104))(a1, 0) > 0.5;
    *(a1 + 244) = vcvtas_u32_f32((*(*a1 + 104))(a1, 1));
    *(a1 + 241) = (*(*a1 + 104))(a1, 17) > 0.5;
    *(a1 + 240) = (*(*a1 + 104))(a1, 24) > 0.5;
    v6 = (*(*a1 + 104))(a1, 10);
    *(a1 + 908) = DspLib::dB2Amp(v6, v7);
    v8 = (*(*a1 + 104))(a1, 11);
    *(a1 + 904) = DspLib::dB2Amp(v8, v9);
    v10 = (*(*a1 + 104))(a1, 12);
    *(a1 + 896) = DspLib::dB2Amp(v10, v11);
    v12 = (*(*a1 + 104))(a1, 13);
    *(a1 + 900) = DspLib::dB2Amp(v12, v13);
    v14 = vcvtas_u32_f32((*(*a1 + 104))(a1, 25));
    if (*(a1 + 936) != v14)
    {
      *(a1 + 936) = v14;
      *(a1 + 980) = 981668463;
      *(a1 + 988) = 981668463;
    }

    *(a1 + 920) = vcvtas_u32_f32((*(*a1 + 104))(a1, 25));
    v42 = (a1 + 940);
    v15 = (*(*a1 + 104))(a1, 15);
    v49 = LODWORD(v15);
    v16 = (*(*a1 + 104))(a1, 16);
    v46 = LODWORD(v16);
    v17 = (*(*a1 + 104))(a1, 44);
    v18 = (*(*a1 + 104))(a1, 45);
    v53 = *(a1 + 1208);
    v19 = vdup_n_s32(0x447A0000u);
    __asm { FMOV            V12.2S, #-1.0 }

    v25 = vdiv_f32(_D12, vdiv_f32(vmul_n_f32(vmul_f32(__PAIR64__(v46, v49), v19), v53), v19));
    v47 = v25.f32[0];
    v50 = expf(v25.f32[1]);
    *&v26 = expf(v47);
    *(&v26 + 1) = v50;
    *(a1 + 940) = v26;
    *(a1 + 956) = expf(-1.0 / (((v18 * 1000.0) * v53) / 1000.0));
    *(a1 + 948) = ((v17 * v53) + 1);
    v27 = (*(*a1 + 104))(a1, 15);
    v54 = LODWORD(v27);
    v28 = (*(*a1 + 104))(a1, 16);
    v51 = LODWORD(v28);
    v29 = (*(*a1 + 104))(a1, 44);
    v30 = (*(*a1 + 104))(a1, 45).n128_f32[0];
    v31 = __PAIR64__(v51, v54);
    v55 = *(a1 + 1208);
    v32 = vdiv_f32(_D12, vdiv_f32(vmul_n_f32(vmul_f32(v31, v19), v55), v19));
    v48 = v32.f32[0];
    v52 = expf(v32.f32[1]);
    *&v33 = expf(v48);
    *(&v33 + 1) = v52;
    *(a1 + 968) = v33;
    *(a1 + 984) = expf(-1.0 / (((v30 * 1000.0) * v55) / 1000.0));
    *(a1 + 976) = ((v29 * v55) + 1);
    v34 = (*(*a1 + 104))(a1, 22);
    v35 = (*(*a1 + 104))(a1, 23);
    v19.i32[0] = (*(*a1 + 104))(a1, 46);
    v36 = (*(*a1 + 104))(a1, 18);
    _D12.i32[0] = (*(*a1 + 104))(a1, 19);
    v37 = (*(*a1 + 104))(a1, 20);
    v38 = (*(*a1 + 104))(a1, 21);
    *&v39 = (*(*a1 + 104))(a1, 47);
    v40 = v39.f32[0];
    v39.f32[0] = v34;
    v41 = DspLib::VirtualBass::Compressor::setParameters((a1 + 1000), v39, v35, v19.f32[0], v36, _D12.f32[0], v37, v38, v40, *(a1 + 1208));
    LODWORD(v42) = vcvtps_u32_f32(vcvts_n_f32_u32(vcvtas_u32_f32((*(*a1 + 104))(a1, 9, v41)), 1uLL));
    v43 = vcvtps_u32_f32(vcvts_n_f32_u32(vcvtas_u32_f32((*(*a1 + 104))(a1, 7)), 1uLL));
    LODWORD(v4) = vcvtps_u32_f32(vcvts_n_f32_u32(vcvtas_u32_f32((*(*a1 + 104))(a1, 8)), 1uLL));
    v44 = (*(*a1 + 104))(a1, 3);
    v45 = (*(*a1 + 104))(a1, 4);

    DspLib::VirtualBass::Algorithm::setupFilters(a1, v42, v43, v4, v44, v45);
  }
}

void DspLib::VirtualBass::Algorithm::setupFilters(DspLib::VirtualBass::Algorithm *this, DspLib::Biquad::Design *a2, DspLib::Biquad::Design *a3, DspLib::Biquad::Design *a4, float a5, float a6)
{
  v12 = a3 + 1;
  v13 = (a4 + 1) >> 1;
  DspLib::Biquad::Filter::setNumberOfStages((this + 824), v13 + ((a3 + 1) >> 1));
  DspLib::Biquad::Design::butterworthHighPass(a3, a5, *(this + 302), 0, &v43);
  DspLib::Biquad::Design::allpassFromPoles(v43, 0xCCCCCCCCCCCCCCCDLL * (v44 - v43), 1, &v41);
  v14 = v41;
  v15 = *(this + 226);
  *v41 = vmul_n_f32(*v41, v15);
  v14[1].f32[0] = v15 * v14[1].f32[0];
  DspLib::Biquad::Filter::setCoefficients(this + 824, v14, 0xCCCCCCCCCCCCCCCDLL * ((v42 - v14) >> 2), 0, 0x41uLL);
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  DspLib::Biquad::Design::butterworthLowPass(a4, a6, *(this + 302), 0, &v41);
  DspLib::Biquad::Design::allpassFromPoles(v41, 0xCCCCCCCCCCCCCCCDLL * ((v42 - v41) >> 2), 1, &v39);
  DspLib::Biquad::Filter::setCoefficients(this + 824, v39, 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 2), v12 >> 1, 0x41uLL);
  DspLib::Biquad::Filter::setNumberOfStages((this + 392), (a2 + 1) & 0xFFFFFFFE);
  v16 = (*(*this + 48))(this);
  DspLib::Biquad::Design::butterworthHighPass(a2, a5, v16, 0, &v37);
  DspLib::Biquad::Filter::setCoefficients(this + 392, v37, 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 2), 0, 0x41uLL);
  v17 = (a2 + 1) >> 1;
  DspLib::Biquad::Filter::setCoefficients(this + 392, v37, 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 2), v17, 0x41uLL);
  DspLib::Biquad::Filter::setNumberOfStages((this + 464), (a2 + 1) & 0xFFFFFFFE);
  v18 = (*(*this + 48))(this);
  DspLib::Biquad::Design::butterworthLowPass(a2, a5, v18, 0, &__p);
  DspLib::Biquad::Filter::setCoefficients(this + 464, __p, 0xCCCCCCCCCCCCCCCDLL * ((v36 - __p) >> 2), 0, 0x41uLL);
  v19 = (*(*this + 64))(this);
  v20 = -1.0;
  if ((a2 & 1) == 0)
  {
    v20 = 1.0;
  }

  v21 = v20 / v19;
  v22 = __p;
  *__p = vmul_n_f32(*__p, v21);
  v22[2] = v21 * v22[2];
  DspLib::Biquad::Filter::setCoefficients(this + 464, v22, 0xCCCCCCCCCCCCCCCDLL * ((v36 - v22) >> 2), v17, 0x41uLL);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  DspLib::Biquad::Filter::setNumberOfStages((this + 536), v13 + (v12 & 0xFFFFFFFE));
  DspLib::Biquad::Filter::setCoefficients(this + 536, v43, 0xCCCCCCCCCCCCCCCDLL * (v44 - v43), 0, 0x41uLL);
  DspLib::Biquad::Design::phaseComplement(v43, 0xCCCCCCCCCCCCCCCDLL * (v44 - v43), &__p);
  DspLib::Biquad::Filter::setCoefficients(this + 536, __p, 0xCCCCCCCCCCCCCCCDLL * ((v36 - __p) >> 2), v12 >> 1, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(this + 536, v41, 0xCCCCCCCCCCCCCCCDLL * ((v42 - v41) >> 2), v12 & 0xFFFFFFFE, 0x41uLL);
  DspLib::Biquad::Filter::setNumberOfStages((this + 608), v13);
  DspLib::Biquad::Design::phaseComplement(v41, 0xCCCCCCCCCCCCCCCDLL * ((v42 - v41) >> 2), &v33);
  DspLib::Biquad::Filter::setCoefficients(this + 608, v33, 0xCCCCCCCCCCCCCCCDLL * ((v34 - v33) >> 2), 0, 0x41uLL);
  v23 = (*(*this + 48))(this);
  DspLib::Biquad::Design::butterworthHighPass(a3, a5, v23, 0, &v31);
  v24 = (*(*this + 48))(this);
  DspLib::Biquad::Design::butterworthLowPass(a4, a6, v24, 0, &v29);
  DspLib::Biquad::Design::allpassFromPoles(v31, 0xCCCCCCCCCCCCCCCDLL * ((v32 - v31) >> 2), 1, &v27);
  DspLib::Biquad::Design::allpassFromPoles(v29, 0xCCCCCCCCCCCCCCCDLL * ((v30 - v29) >> 2), 1, &v25);
  DspLib::Biquad::Filter::setNumberOfStages((this + 752), v13 + (v12 >> 1));
  DspLib::Biquad::Filter::setCoefficients(this + 752, v27, 0xCCCCCCCCCCCCCCCDLL * ((v28 - v27) >> 2), 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(this + 752, v25, 0xCCCCCCCCCCCCCCCDLL * ((v26 - v25) >> 2), v12 >> 1, 0x41uLL);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }
}

void sub_1DDBFE0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v34 = *(v32 - 152);
  if (v34)
  {
    *(v32 - 144) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 128);
  if (v35)
  {
    *(v32 - 120) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::VirtualBass::Algorithm::processBlock(uint64_t a1, uint64_t *a2)
{
  if ((*(*a1 + 40))(a1))
  {
    if (*(a1 + 240) != 1)
    {
      v7 = *(a1 + 896);
      if (v7 != 1.0)
      {
        v33 = *a2;
        v34 = a2[2];
        DspLib::multiply(&v33, v7);
      }

      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((*(*a1 + 208))(a1))
      {
        DspLib::CPUMeasure::pause((a1 + 104));
        *&v33 = v8;
        *(&v33 + 1) = v9;
        v34 = v10;
        DspLib::AudioMeter::Algorithm::analyze(a1 + 1232, &v33);
        DspLib::CPUMeasure::resume((a1 + 104));
      }

      v11 = *(a1 + 272);
      v12 = (*(a1 + 280) - v11) >> 3;
      v13 = a2[1];
      v14 = a2[2];
      *&v33 = *a2;
      *(&v33 + 1) = v13;
      v34 = v14;
      *&v31 = v11;
      *(&v31 + 1) = v12;
      v32 = v14;
      DspLib::Biquad::Filter::process((a1 + 392), &v33, &v31);
      *&v33 = v11;
      *(&v33 + 1) = v12;
      v34 = v14;
      *&v31 = v11;
      *(&v31 + 1) = v12;
      v32 = v14;
      DspLib::Biquad::Filter::process((a1 + 752), &v33, &v31);
      v15 = a2[1];
      v16 = a2[2];
      v17 = *(a1 + 320);
      *&v31 = v17;
      *(&v31 + 1) = v16;
      *&v33 = *a2;
      *(&v33 + 1) = v15;
      v34 = v16;
      DspLib::sum(&v33, v17, v16);
      DspLib::Biquad::Filter::process((a1 + 464), v17, v16, v17, v16);
      DspLib::VirtualBass::Resampler::downsample(a1 + 1080, v17, v16);
      v18 = *(a1 + 244);
      if (v18 == 2)
      {
        DspLib::VirtualBass::Resampler::upsample(a1 + 1080, &v31);
        if ((*(*a1 + 64))(a1))
        {
          v19 = 0;
          v20 = v31;
          do
          {
            DspLib::copy(v20, *(&v20 + 1), *(*a2 + 8 * v19++));
          }

          while (v19 < (*(*a1 + 64))(a1));
        }
      }

      else if (!v18)
      {
        DspLib::VirtualBass::Resampler::upsample(a1 + 1080, &v31);
      }

      v21 = *(a1 + 1216);
      v22 = *(a1 + 1224);
      DspLib::Biquad::Filter::process((a1 + 824), v21, v22, *(a1 + 296), v22);
      v23 = *(a1 + 344);
      v24 = *(a1 + 368);
      if (*(a1 + 242) == 1)
      {
        v25 = DspLib::VirtualBass::PeakFollower::process(a1 + 940, v21, v22, *(a1 + 344), v22);
        v26 = (*(*a1 + 104))(a1, 14, v25);
        DspLib::clip(v23, v22, v24, v26, 1000.0);
        DspLib::svdiv(v24, v22, 1.0);
        DspLib::multiply();
      }

      DspLib::NonLinearDevice::Algorithm::process(a1 + 912, v21, v22);
      DspLib::Biquad::Filter::process((a1 + 536), v21, v22, v21, v22);
      if (*(a1 + 242) == 1)
      {
        v27 = DspLib::VirtualBass::PeakFollower::process(a1 + 968, v21, v22, v24, v22);
        v28 = (*(*a1 + 104))(a1, 14, v27);
        DspLib::clip(v24, v22, v28, 1000.0);
        DspLib::divide(v23, v22, v24, v22, v24);
        DspLib::multiply();
      }

      DspLib::multiply(v21, v22, *(a1 + 908));
      if (*(a1 + 241) == 1)
      {
        DspLib::VirtualBass::Compressor::process(a1 + 1000, v21, v22);
      }

      DspLib::Biquad::Filter::process((a1 + 608), v21, v22, v21, v22);
      if (*(a1 + 244) == 3)
      {
        DspLib::VirtualBass::Resampler::upsample(a1 + 1080, &v31);
        if ((*(*a1 + 64))(a1))
        {
          v29 = 0;
          v30 = v31;
          do
          {
            DspLib::copy(v30, *(&v30 + 1), *(*a2 + 8 * v29++));
          }

          while (v29 < (*(*a1 + 64))(a1));
        }
      }

      DspLib::add();
    }

    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    if ((*(*a1 + 208))(a1))
    {
      DspLib::CPUMeasure::pause((a1 + 104));
      *&v33 = v4;
      *(&v33 + 1) = v5;
      v34 = v6;
      DspLib::AudioMeter::Algorithm::analyze(a1 + 1232, &v33);
      *&v33 = v4;
      *(&v33 + 1) = v5;
      v34 = v6;
      DspLib::AudioMeter::Algorithm::analyze(a1 + 1432, &v33);
      DspLib::CPUMeasure::resume((a1 + 104));
    }
  }

  else
  {
    DspLib::VirtualBass::Algorithm::processBlock();
  }
}

void DspLib::VirtualBass::Algorithm::~Algorithm(DspLib::VirtualBass::Algorithm *this)
{
  DspLib::VirtualBass::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591A868;
  if (*(this + 1624) == 1)
  {
    DspLib::ChannelBuffer::~ChannelBuffer((this + 1568));
    v2 = *(this + 193);
    if (v2)
    {
      *(this + 194) = v2;
      operator delete(v2);
    }

    v3 = *(this + 190);
    if (v3)
    {
      *(this + 191) = v3;
      operator delete(v3);
    }

    v4 = *(this + 187);
    if (v4)
    {
      *(this + 188) = v4;
      operator delete(v4);
    }

    v22 = (this + 1472);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  if (*(this + 1424) == 1)
  {
    DspLib::ChannelBuffer::~ChannelBuffer((this + 1368));
    v5 = *(this + 168);
    if (v5)
    {
      *(this + 169) = v5;
      operator delete(v5);
    }

    v6 = *(this + 165);
    if (v6)
    {
      *(this + 166) = v6;
      operator delete(v6);
    }

    v7 = *(this + 162);
    if (v7)
    {
      *(this + 163) = v7;
      operator delete(v7);
    }

    v22 = (this + 1272);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  v8 = *(this + 148);
  if (v8)
  {
    *(this + 149) = v8;
    operator delete(v8);
  }

  if (*(this + 1176) == 1)
  {
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1152));
    v9 = *(this + 141);
    if (v9)
    {
      *(this + 142) = v9;
      operator delete(v9);
    }
  }

  v10 = *(this + 128);
  if (v10)
  {
    *(this + 129) = v10;
    operator delete(v10);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 872));
  v11 = *(this + 106);
  if (v11)
  {
    *(this + 107) = v11;
    operator delete(v11);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 800));
  v12 = *(this + 97);
  if (v12)
  {
    *(this + 98) = v12;
    operator delete(v12);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 728));
  v13 = *(this + 88);
  if (v13)
  {
    *(this + 89) = v13;
    operator delete(v13);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 656));
  v14 = *(this + 79);
  if (v14)
  {
    *(this + 80) = v14;
    operator delete(v14);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 584));
  v15 = *(this + 70);
  if (v15)
  {
    *(this + 71) = v15;
    operator delete(v15);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 512));
  v16 = *(this + 61);
  if (v16)
  {
    *(this + 62) = v16;
    operator delete(v16);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 440));
  v17 = *(this + 52);
  if (v17)
  {
    *(this + 53) = v17;
    operator delete(v17);
  }

  v18 = *(this + 46);
  if (v18)
  {
    *(this + 47) = v18;
    operator delete(v18);
  }

  v19 = *(this + 43);
  if (v19)
  {
    *(this + 44) = v19;
    operator delete(v19);
  }

  v20 = *(this + 40);
  if (v20)
  {
    *(this + 41) = v20;
    operator delete(v20);
  }

  v21 = *(this + 37);
  if (v21)
  {
    *(this + 38) = v21;
    operator delete(v21);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 248));
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

DspLib::VirtualBass::Resampler::Stage *DspLib::VirtualBass::Resampler::Stage::Stage(DspLib::VirtualBass::Resampler::Stage *this)
{
  *(this + 24) = 0;
  *this = xmmword_1DE095FA0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  DspLib::Biquad::Filter::initialize((this + 24), 1uLL, 1uLL);
  return this;
}

void std::__optional_storage_base<DspLib::VirtualBass::Resampler::Stage,false>::__construct[abi:ne200100]<DspLib::VirtualBass::Resampler::Stage>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = a2[2];
  *(a1 + 48) = 0;
  *(a1 + 32) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 72), (a2 + 72));
  *(a1 + 96) = 1;
}

void sub_1DDBFE97C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::VirtualBass::Resampler::Stage::~Stage(DspLib::VirtualBass::Resampler::Stage *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 72));
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

void DspLib::DownSampler::process(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a4[1];
  v10 = *a4;
  v8[0] = &v10;
  v8[1] = 1;
  v9 = v5;
  v6[2] = a3;
  v7 = a2;
  v6[0] = &v7;
  v6[1] = 1;
  DspLib::DownSampler::process(a1, v6, v8);
  a4[1] = v9;
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

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1DE095160)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1DE095150)))).i32[1])
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
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1DE095160)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1DE095150)))).i32[1])
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

void std::__optional_storage_base<DspLib::VirtualBass::Resampler::Stage,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<DspLib::VirtualBass::Resampler::Stage,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      std::vector<double>::__move_assign(a1 + 48, (a2 + 48));

      DspLib::Biquad::SetupWrapper::operator=((a1 + 72), (a2 + 72));
    }
  }

  else if (*(a1 + 96))
  {

    std::__optional_destruct_base<DspLib::VirtualBass::Resampler::Stage,false>::reset[abi:ne200100](a1);
  }

  else
  {

    std::__optional_storage_base<DspLib::VirtualBass::Resampler::Stage,false>::__construct[abi:ne200100]<DspLib::VirtualBass::Resampler::Stage>(a1, a2);
  }
}

uint64_t std::optional<DspLib::VirtualBass::Resampler::Stage>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((a1 + 72));
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void DspLib::VirtualBass::Algorithm::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/VirtualBass/dsp/DspLibVirtualBass.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 234);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/VirtualBass/dsp/DspLibVirtualBass.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 233);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::VirtualBass::Algorithm::reset()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/VirtualBass/dsp/DspLibVirtualBass.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 307);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::VirtualBass::Algorithm::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/VirtualBass/dsp/DspLibVirtualBass.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 361);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::VirtualBass::Algorithm::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/VirtualBass/dsp/DspLibVirtualBass.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 490);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

DspLib::ControlFreak::Algorithm *DspLib::ControlFreak::Algorithm::Algorithm(DspLib::ControlFreak::Algorithm *this)
{
  v2 = (this + 360);
  v3 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::ControlFreak::Parameters::kDefault, 0x1EuLL, &DspLib::ControlFreak::Parameters::kMinimum, 30, &DspLib::ControlFreak::Parameters::kMaximum, 30);
  *v3 = &unk_1F591A988;
  *(v3 + 240) = 0;
  *(v3 + 268) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 248) = 0u;
  *(v3 + 264) = 0;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 349) = 0;
  *v2 = xmmword_1DE098D30;
  *(v3 + 376) = 0x40000000;
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  *(v3 + 396) = 0;
  *(v3 + 400) = 0;
  *(v3 + 408) = 0;
  *(v3 + 424) = 897988541;
  *(v3 + 448) = 0;
  *(v3 + 432) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0;
  *(v3 + 560) = 0u;
  *(v3 + 576) = 0u;
  *(v3 + 592) = 0u;
  *(v3 + 608) = 0u;
  *(v3 + 624) = 0u;
  *(v3 + 640) = 0u;
  *(v3 + 656) = 0;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 756) = 0u;
  *(v3 + 776) = 1;
  *(v3 + 848) = 0;
  *(v3 + 816) = 0u;
  *(v3 + 832) = 0u;
  *(v3 + 784) = 0u;
  *(v3 + 800) = 0u;
  *(v3 + 856) = 1;
  *(v3 + 936) = 0u;
  *(v3 + 952) = 0;
  *(v3 + 864) = 0u;
  *(v3 + 880) = 0u;
  *(v3 + 896) = 0u;
  *(v3 + 912) = 0u;
  *(v3 + 928) = 0;
  *(v3 + 960) = 1;
  *(v3 + 968) = 1;
  *(v3 + 1064) = 0;
  *(v3 + 1048) = 0u;
  *(v3 + 1040) = 0;
  *(v3 + 1008) = 0u;
  *(v3 + 1024) = 0u;
  *(v3 + 976) = 0u;
  *(v3 + 992) = 0u;
  *(v3 + 1072) = 1;
  *(v3 + 1144) = 0;
  *(v3 + 1112) = 0u;
  *(v3 + 1128) = 0u;
  *(v3 + 1080) = 0u;
  *(v3 + 1096) = 0u;
  *(v3 + 1180) = 0;
  *(v3 + 1176) = 0;
  *(v3 + 1168) = 0;
  *(v3 + 1152) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((v3 + 1184), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 1232), 0, 0);
  *(this + 332) = 0;
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 173) = 0x43C8000000000000;
  *(this + 1368) = 0u;
  *(this + 167) = 0;
  *(this + 169) = 0;
  *(this + 168) = 0;
  *(this + 1360) = 0;
  *(this + 186) = 0;
  *(this + 374) = 0;
  *(this + 188) = 0;
  *(this + 190) = 0;
  *(this + 189) = 0;
  *(this + 356) = 0;
  *(this + 88) = 0u;
  *(this + 87) = 0u;
  *(this + 370) = 0;
  *(this + 1448) = 0u;
  *(this + 1464) = 0u;
  *(this + 1432) = 0u;
  *(this + 382) = 730643660;
  *(this + 1532) = 0;
  *(this + 1572) = 0;
  *(this + 1577) = 0;
  *(this + 96) = 0u;
  *(this + 97) = 0u;
  *(this + 1568) = 0;
  *(v2 + 1228) = xmmword_1DE097D00;
  *(this + 1604) = 1;
  *(this + 402) = 0;
  *(this + 101) = 0u;
  *(this + 102) = 0u;
  *(this + 103) = 0u;
  *(this + 104) = 0u;
  *(this + 105) = 0u;
  *(this + 212) = 0;
  v2[84] = xmmword_1DE098D40;
  return this;
}

void sub_1DDBFF428(_Unwind_Exception *a1)
{
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 148));
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator((v1 + 134));
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator((v1 + 121));
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator((v1 + 107));
  DspLib::FIRDecimator::~FIRDecimator((v1 + 97));
  DspLib::Saturation::SmartSaturation::~SmartSaturation((v1 + 44));
  DspLib::Biquad::Filter::~Filter((v1 + 35));
  v4 = *v2;
  if (*v2)
  {
    v1[31] = v4;
    operator delete(v4);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(v1);
  _Unwind_Resume(a1);
}

uint64_t DspLib::ControlFreak::Algorithm::initialize(DspLib::ControlFreak::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4 && (*(*this + 64))(this))
  {
    v5 = (*(*this + 232))(this);
    DspLib::FIR::initialize((this + 1616), *(this + 203), *(this + 206), v5);
    v6 = (*(*this + 64))(this);
    std::vector<DspLib::CircularDelay>::resize(this + 210, v6);
    DspLib::EnvelopeProcessor::initialize((this + 1176), 1u);
    DspLib::RMS::initialize((this + 1344), 1u, *(this + 2) / 40.0);
    std::vector<std::vector<float>>::resize(this + 103, 1uLL);
    std::vector<std::vector<float>>::resize(this + 113, 1uLL);
    std::vector<std::vector<float>>::resize(this + 127, 1uLL);
    v7 = (*(*this + 232))(this);
    DspLib::FIRDecimator::setSrcParameters((this + 776), 4uLL, v7);
    DspLib::FIRDecimator::setCoefficients(this + 97, &DspLib::ControlFreak::kDownSampler4coeffs, 0x20uLL);
    v8 = (*(*this + 232))(this);
    DspLib::PolyPhaseInterpolator::setSrcParameters((this + 856), 4, (v8 >> 2) + 1);
    DspLib::PolyPhaseInterpolator::setCoefficients(this + 214, &DspLib::ControlFreak::kUpSampler4coeffs, 4uLL);
    *(this + 120) = 10;
    v9 = (*(*this + 232))(this);
    DspLib::PolyPhaseInterpolator::setSrcParameters((this + 968), 10, v9 / 0xA + 1);
    DspLib::PolyPhaseInterpolator::setCoefficients(this + 242, &DspLib::ControlFreak::kUpSampler10coeffs, 0xAuLL);
    *(this + 8) = 1;
    (*(*this + 160))(this);
    (*(*this + 168))(this);
  }

  return v4;
}

void DspLib::ControlFreak::Algorithm::uninitialize(DspLib::ControlFreak::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  *(this + 31) = *(this + 30);
  std::vector<std::vector<float>>::resize(this + 103, 0);
  std::vector<std::vector<float>>::resize(this + 113, 0);
  std::vector<std::vector<float>>::resize(this + 127, 0);
  std::vector<std::vector<float>>::resize(this + 140, 0);
  DspLib::EnvelopeProcessor::uninitialize((this + 1176));
  DspLib::RMS::uninitialize((this + 1344));
  DspLib::FIR::uninitialize(this + 202);
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 210);
  DspLib::Biquad::Filter::uninitialize((this + 280));
  DspLib::Biquad::Filter::uninitialize((this + 656));
  *(this + 408) = 0;
}

void DspLib::ControlFreak::Algorithm::reset(float **this)
{
  DspLib::clear(this[30], this[31] - this[30]);
  *(this + 398) = 1065353216;
  *(this + 1604) = 1;
  *(this + 264) = 0;
  *(this + 1568) = 0;
  *(this + 389) = *(this + 390);
  *(this + 1584) = 0;
  *(this + 393) = *(this + 394);
  this[193] = 0;
  this[213] = vdup_n_s32(0x358637BDu);
  *(this + 428) = 1065353216;
  DspLib::clear(this[207], this[208] - this[207]);
  DspLib::ControlFreak::Algorithm::clearAudioBuffers(this);
  DspLib::EnvelopeProcessor::reset((this + 147));
  DspLib::FIRDecimator::reset((this + 97));
  v2 = this[113];
  v3 = this[114];
  while (v2 != v3)
  {
    v4 = *(v2 + 1);
    if (*v2 != v4)
    {
      bzero(*v2, v4 - *v2);
    }

    v2 += 6;
  }

  *(this + 232) = 0;
  *(this + 241) = 0;
  v5 = this[127];
  v6 = this[128];
  while (v5 != v6)
  {
    v7 = *(v5 + 1);
    if (*v5 != v7)
    {
      bzero(*v5, v7 - *v5);
    }

    v5 += 6;
  }

  *(this + 260) = 0;
  DspLib::RMS::reset((this + 168));
  v8 = this[140];
  v9 = this[141];
  while (v8 != v9)
  {
    v10 = *(v8 + 1);
    if (*v8 != v10)
    {
      bzero(*v8, v10 - *v8);
    }

    v8 += 6;
  }

  *(this + 286) = 0;
  DspLib::Biquad::SetupWrapper::reset((this + 41));

  DspLib::Saturation::SmartSaturation::reset((this + 44));
}

void DspLib::ControlFreak::Algorithm::clearAudioBuffers(DspLib::ControlFreak::Algorithm *this)
{
  v2 = *(this + 210);
  v3 = *(this + 211);
  while (v2 != v3)
  {
    DspLib::CircularDelay::reset(v2);
    v2 = (v2 + 32);
  }

  if (*(this + 408))
  {

    DspLib::Saturation::SmartSaturation::reset((this + 352));
  }
}

void DspLib::Saturation::SmartSaturation::reset(DspLib::Saturation::SmartSaturation *this)
{
  *(this + 60) = xmmword_1DE098D50;
  *(this + 10) = 0;
  DspLib::Biquad::SetupWrapper::reset((this + 352));
  DspLib::CircularDelay::reset((this + 384));
  DspLib::Biquad::SetupWrapper::reset((this + 144));
  DspLib::Biquad::SetupWrapper::reset((this + 248));
  v2 = *(this + 47);
  if (v2)
  {

    DspLib::Saturation::OversampledProcess::reset(v2);
  }
}

double DspLib::ControlFreak::Algorithm::latencySamples(DspLib::ControlFreak::Algorithm *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    DspLib::ControlFreak::Algorithm::latencySamples();
  }

  v2 = 0.0;
  v3 = 0.0;
  if (*(this + 273) == 1)
  {
    LODWORD(v3) = *(this + 402);
    v3 = *&v3;
  }

  v4 = *(this + 91);
  if (v4)
  {
    v2 = (*(v4 + 24) / *(v4 + 16)) + (*(v4 + 24) / *(v4 + 16));
  }

  return v3 + v2;
}

void DspLib::ControlFreak::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v51 = *MEMORY[0x1E69E9840];
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    DspLib::ControlFreak::Algorithm::setParameterInputGain(a1);
    DspLib::ControlFreak::Algorithm::configureHighPass(a1);
    v6 = *(a1 + 24);
    v7 = v6[11] >= 0.5 && *v6 < 0.5;
    *(a1 + 273) = v7;
    *(a1 + 268) = DspLib::dB2Amp(v5, v6[13]);
    v10 = *(a1 + 24);
    if (v10[18] < 0.5 || *v10 >= 0.5)
    {
      v11 = 0;
    }

    else
    {
      isEqual = DspLib::isEqual(isEqual, v10[13], 0.0, 1.0e-20);
      v11 = isEqual ^ 1;
      v10 = *(a1 + 24);
    }

    *(a1 + 272) = v11;
    LODWORD(v9) = vcvtad_u64_f64(*(a1 + 16) * v10[2] / 1000.0);
    *(a1 + 1608) = v9;
    if (*(a1 + 1648) != v9)
    {
      std::vector<float>::vector[abi:ne200100](&v49, v9);
      DspLib::makeRaisedCosineWindow(v49, v50 - v49);
      DspLib::FIR::initialize((a1 + 1616), v49, v50 - v49, *(a1 + 1616));
      DspLib::clear(*(a1 + 1656), (*(a1 + 1664) - *(a1 + 1656)) >> 2);
      isEqual = v49;
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }
    }

    v12 = *(a1 + 1680);
    v13 = *(a1 + 1688);
    while (v12 != v13)
    {
      DspLib::CircularDelay::setLength(v12, *(a1 + 1608));
      v12 = (v12 + 32);
    }

    v14 = *(a1 + 1556);
    v15 = DspLib::dB2Amp(isEqual, *(*(a1 + 24) + 16) + -0.00002);
    if (!DspLib::isEqual(v16, v14, v15, 1.0e-20) && *(*(a1 + 24) + 80) == 0.0)
    {
      v17 = DspLib::maxv(*(a1 + 240), (*(a1 + 248) - *(a1 + 240)) >> 2);
      if (!DspLib::isEqual(v18, v17, 0.0, 1.0e-20))
      {
        DspLib::FIR::scaleHistory((a1 + 1616), (v15 / v17) / (v14 / v17));
      }
    }

    DspLib::ControlFreak::Algorithm::RampedValue::set((a1 + 1556), v15, vcvtad_u64_f64(*(a1 + 16) * *(*(a1 + 24) + 80) * 0.00100000005));
    if (*(*(a1 + 24) + 32) >= 0.5)
    {
      if (*(a1 + 1128) == *(a1 + 1120))
      {
        v19 = (*(*a1 + 64))(a1);
        std::vector<std::vector<float>>::resize((a1 + 1120), v19);
        v20 = (*(*a1 + 232))(a1);
        DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 1072), 4, v20);
        DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 1072), &DspLib::kTruePeakFIRcoefficients, 0x30uLL);
      }
    }

    else
    {
      std::vector<std::vector<float>>::resize((a1 + 1120), 0);
    }

    v21 = *(a1 + 1608) + vcvtad_u64_f64(*(a1 + 16) * *(*(a1 + 24) + 12) / 1000.0);
    *(a1 + 768) = (v21 & 0xFFFFFFFE) + 2;
    v22 = v21 | 1;
    v23 = (*(*a1 + 232))(a1) + v22;
    if (v23 != (*(a1 + 248) - *(a1 + 240)) >> 2)
    {
      std::vector<float>::resize((a1 + 240), v23);
      DspLib::clear(*(a1 + 240), (*(a1 + 248) - *(a1 + 240)) >> 2);
      v24 = *(a1 + 1608);
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      if ((*(*a1 + 64))(a1) == 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = 4 * (((v25 - 1) >> 2) + 1);
      }

      v27 = (*(*a1 + 64))(a1);
      v28 = MEMORY[0x1EEE9AC00](v27);
      v30 = (&v49 - v29);
      v31 = (*(*a1 + 64))(a1, v28);
      MEMORY[0x1EEE9AC00](v31);
      v34 = (&v49 - v33);
      if (v32 >= 0x200)
      {
        v35 = 512;
      }

      else
      {
        v35 = v32;
      }

      bzero(&v49 - v33, v35);
      if ((*(*a1 + 64))(a1))
      {
        v36 = 0;
        v37 = 4 * v26;
        do
        {
          v34[v36++] = v30;
          v30 = (v30 + v37);
        }

        while (v36 < (*(*a1 + 64))(a1));
      }

      (*(*a1 + 64))(a1);
      v38 = *(a1 + 1608);
      if ((*(*a1 + 64))(a1))
      {
        v39 = 0;
        v40 = 0;
        do
        {
          DspLib::CircularDelay::read((*(a1 + 1680) + v39), *(a1 + 1608), v34[v40++], v38);
          v39 += 32;
        }

        while (v40 < (*(*a1 + 64))(a1));
      }

      v41 = *v34;
      DspLib::abs(*v34, v38);
      if ((*(*a1 + 64))(a1) >= 2)
      {
        v42 = 1;
        do
        {
          DspLib::vmaxmg(v41, v38, v34[v42++]);
        }

        while (v42 < (*(*a1 + 64))(a1));
      }

      DspLib::copy(v41, v38, (*(a1 + 240) + 4 * v22));
      DspLib::copy((*(a1 + 240) + 4 * *(a1 + 1608)), v22, *(a1 + 240));
    }

    DspLib::RMS::setParameters(a1 + 1344, 1, *(*(a1 + 24) + 28));
    v44 = DspLib::dB2Amp(v43, *(*(a1 + 24) + 64) * 0.5);
    *(a1 + 1536) = v44;
    *(a1 + 1540) = 1.0 / v44;
    v45 = *(a1 + 16);
    v46 = *(a1 + 24);
    *(a1 + 1552) = vcvtad_u64_f64(v45 * 0.25 / 10.0 * v46[19] / 1000.0);
    v47 = v45;
    *(a1 + 1596) = 1.0 - expf(-1.0 / ((v46[14] * v47) / 1000.0));
    *(a1 + 1600) = 1.0 - expf(-1.0 / ((v46[17] * v47) / 1000.0));
    *(a1 + 1588) = DspLib::dB2Amp(v48, -v46[21]);
    DspLib::ControlFreak::Algorithm::configureSaturation(a1);
  }
}

void sub_1DDC00224(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::ControlFreak::Algorithm::setParameterInputGain(DspLib::ControlFreak::Algorithm *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v3[20];
  v5 = 1.0;
  if (v3[6] >= 0.5)
  {
    v5 = DspLib::dB2Amp(this, v3[15]);
  }

  v6 = vcvtad_u64_f64(v2 * v4 * 0.00100000005);

  DspLib::ControlFreak::Algorithm::RampedValue::set((this + 1572), v5, v6);
}

void DspLib::ControlFreak::Algorithm::configureHighPass(DspLib::ControlFreak::Algorithm *this)
{
  if ((*(*this + 104))(this, 9) >= 0.5)
  {
    v2 = (*(*this + 152))(this, 0);
    if (*(v2 + 116) <= 0.0)
    {
      v3 = 2;
    }

    else
    {
      v3 = *(v2 + 108);
    }

    v4 = (*(*this + 104))(this, 10);
    v5 = *(this + 2);
    DspLib::Biquad::Design::butterworthHighPass(v3, v4, v5, 0, &__p);
    v6 = (*(*this + 64))(this);
    DspLib::Biquad::Filter::initialize((this + 280), v6, 0xCCCCCCCCCCCCCCCDLL * ((v8 - __p) >> 2));
    DspLib::Biquad::Filter::setCoefficients(this + 280, __p, 0xCCCCCCCCCCCCCCCDLL * ((v8 - __p) >> 2), 0, 0x41uLL);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {

    DspLib::Biquad::Filter::uninitialize((this + 280));
  }
}

void sub_1DDC0044C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::ControlFreak::Algorithm::RampedValue::set(DspLib::ControlFreak::Algorithm::RampedValue *this, float a2, unsigned int a3)
{
  *(this + 1) = a2;
  isEqual = DspLib::isEqual(this, a2, *this, 1.0e-20);
  if (!isEqual)
  {
    v6 = *(this + 1);
    if (a3)
    {
      v7 = DspLib::amp2dBSafe(isEqual, v6 / *this, 0.000001);
      *(this + 2) = DspLib::dB2Amp(v8, v7 / a3);
      *(this + 12) = 1;
    }

    else
    {
      *this = v6;
    }
  }
}

void DspLib::ControlFreak::Algorithm::configureSaturation(DspLib::ControlFreak::Algorithm *this)
{
  v2 = *(this + 3);
  if (v2[22] < 0.5 || *v2 >= 0.5)
  {
    DspLib::Biquad::Filter::uninitialize((this + 656));
    *(this + 408) = 0;
  }

  else
  {
    v3 = llroundf(v2[12]);
    v4 = vcvtas_u32_f32(v2[5]);
    v5 = v4 != 0;
    v6 = DspLib::ControlFreak::cutoffFrequencyHz(v4);
    v7 = *(*(this + 3) + 92);
    if ((*(this + 408) & 1) == 0)
    {
      v13 = *(*(this + 3) + 92);
      v8 = (*(*this + 64))(this);
      v9 = *(this + 2);
      v10 = (*(*this + 232))(this);
      DspLib::Saturation::SmartSaturation::initialize((this + 352), v8, v9, v10);
      v7 = v13;
    }

    LODWORD(v14) = v3;
    BYTE4(v14) = v5;
    *(&v14 + 2) = v6;
    v11 = &v14 + 3;
    v12 = vextq_s8(v7, v7, 8uLL).u64[0];
    vst2_f32(v11, v7);
    DspLib::Saturation::SmartSaturation::configure(this + 352, &v14);
  }
}

void DspLib::ControlFreak::Algorithm::processBlock(uint64_t a1, vDSP_Length *a2)
{
  v29[257] = *MEMORY[0x1E69E9840];
  if (a2[2])
  {
    __N[0] = a2[2];
    *v27 = *a2;
    *&v27[16] = a2[2];
    DspLib::ControlFreak::Algorithm::processInputGain(a1, v27);
    if (*(a1 + 280))
    {
      v4 = (*(*a1 + 152))(a1, 0);
      if (*(v4 + 116) <= 0.0 || !*(v4 + 112))
      {
        v5 = a2[1];
        v6 = a2[2];
        *v27 = *a2;
        *&v27[8] = v5;
        *&v27[16] = v6;
        *&v25 = *v27;
        *(&v25 + 1) = v5;
        v26 = v6;
        DspLib::Biquad::Filter::process((a1 + 280), v27, &v25);
      }
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    if ((*(*a1 + 208))(a1))
    {
      DspLib::CPUMeasure::pause((a1 + 104));
      *v27 = v7;
      *&v27[8] = v8;
      *&v27[16] = v9;
      v10 = DspLib::maxMagnitude(v27);
      if (*(a1 + 1704) >= v10)
      {
        v10 = *(a1 + 1704);
      }

      *(a1 + 1704) = v10;
      DspLib::CPUMeasure::resume((a1 + 104));
    }

    if (*(a1 + 408) == 1)
    {
      *v27 = *a2;
      *&v27[16] = a2[2];
      DspLib::Saturation::SmartSaturation::process(a1 + 352, v27);
    }

    if (*(a1 + 280) == 1)
    {
      v11 = (*(*a1 + 152))(a1, 0);
      if (*(v11 + 116) > 0.0 && *(v11 + 112) == 1)
      {
        v12 = a2[1];
        v13 = a2[2];
        *v27 = *a2;
        *&v27[8] = v12;
        *&v27[16] = v13;
        *&v25 = *v27;
        *(&v25 + 1) = v12;
        v26 = v13;
        DspLib::Biquad::Filter::process((a1 + 280), v27, &v25);
      }
    }

    if (*(a1 + 273) == 1)
    {
      *v27 = *a2;
      *&v27[8] = *(a2 + 1);
      if (DspLib::ControlFreak::Algorithm::processPeakSampleDetector(a1, v27, v29, __N[0]) > *(a1 + 1556) || *(a1 + 1568) == 1)
      {
        *(a1 + 264) = 0;
        goto LABEL_20;
      }

      if ((*(a1 + 264) & 1) == 0)
      {
LABEL_20:
        DspLib::ControlFreak::Algorithm::computeModulator(a1);
        *v27 = *a2;
        *&v27[8] = *(a2 + 1);
        DspLib::ControlFreak::Algorithm::processAutorelease(a1);
      }

      if ((*(*a1 + 64))(a1))
      {
        v14 = 0;
        v15 = 0;
        do
        {
          DspLib::CircularDelay::process((*(a1 + 1680) + v14), *(*a2 + 8 * v15), a2[2], *(*a2 + 8 * v15), a2[2]);
          ++v15;
          v14 += 32;
        }

        while (v15 < (*(*a1 + 64))(a1));
      }
    }

    v16 = *(a1 + 24);
    if (v16[1] >= 0.5 && *(a1 + 273) == 1)
    {
      *v27 = *a2;
      *&v27[16] = a2[2];
      DspLib::ControlFreak::Algorithm::outputModulator(a1, v29, __N[0], v27);
    }

    else
    {
      if ((*(a1 + 264) & 1) == 0 && *v16 < 0.5 && *(a1 + 273) == 1)
      {
        *v27 = *a2;
        *&v27[16] = a2[2];
        DspLib::multiply(v27, v29);
      }

      if (*(a1 + 272) == 1)
      {
        *v27 = *a2;
        *&v27[16] = a2[2];
        DspLib::multiply(v27, *(a1 + 268));
      }
    }

    if ((*(a1 + 264) & 1) == 0 && *(a1 + 273) == 1 && DspLib::minv(v29, __N[0]) > 0.99)
    {
      if ((*(*a1 + 64))(a1))
      {
        v17 = 0;
        v18 = 0;
        v19 = 0.0;
        do
        {
          v20 = DspLib::maxMagnitude(*(*(a1 + 1680) + v17), (*(*(a1 + 1680) + v17 + 8) - *(*(a1 + 1680) + v17)) >> 2);
          if (v19 < v20)
          {
            v19 = v20;
          }

          ++v18;
          v17 += 32;
        }

        while (v18 < (*(*a1 + 64))(a1));
      }

      else
      {
        v19 = 0.0;
      }

      if (v19 <= *(a1 + 1556))
      {
        *(a1 + 264) = 1;
      }
    }

    v21 = a2[2];
  }

  else
  {
    v21 = 0;
  }

  v23 = *a2;
  v22 = a2[1];
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    if (*(*(a1 + 24) + 4) < 0.5)
    {
      __N[0] = v23;
      __N[1] = v22;
      v29[0] = v21;
      v24 = DspLib::maxMagnitude(__N);
      if (*(a1 + 1708) >= v24)
      {
        v24 = *(a1 + 1708);
      }

      *(a1 + 1708) = v24;
    }

    DspLib::CPUMeasure::resume((a1 + 104));
  }
}

uint64_t DspLib::ControlFreak::Algorithm::processInputGain(uint64_t a1, __int128 *a2)
{
  v9[257] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 1572);
  if (*(a1 + 1584) == 1)
  {
    *&v8 = *(a2 + 2);
    DspLib::ControlFreak::Algorithm::RampedValue::ramp(a1 + 1572, v9, v8);
    v6 = *a2;
    v7 = *(a2 + 2);
    return DspLib::multiply(&v6, v9);
  }

  else
  {
    result = DspLib::isEqual(a1, *v3, 1.0, 1.0e-20);
    if ((result & 1) == 0 && **(a1 + 24) < 0.5)
    {
      v8 = *a2;
      v9[0] = *(a2 + 2);
      return DspLib::multiply(&v8, *v3);
    }
  }

  return result;
}

void DspLib::Saturation::SmartSaturation::process(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *v15 = *a2;
  *&v15[8] = *(a2 + 8);
  DspLib::Saturation::SmartSaturation::processAnalysis(a1, v15);
  v5 = v4;
  if (*(a1 + 96) == 1)
  {
    v6 = *(a2 + 8);
    v13 = *a2;
    v14 = *(a2 + 16);
    *v15 = v13;
    *&v15[8] = v6;
    DspLib::Biquad::Filter::process((a1 + 96), v15, &v13);
  }

  *v15 = *a2;
  *&v15[16] = *(a2 + 16);
  DspLib::multiply(v15, v5);
  if (*(a1 + 44) == 1)
  {
    *v15 = *a2;
    *&v15[8] = *(a2 + 8);
    v7 = DspLib::maxMagnitude(v15);
    if (*(a1 + 72) >= v7)
    {
      v7 = *(a1 + 72);
    }

    *(a1 + 72) = v7;
  }

  v8 = *(a1 + 376);
  v9 = 1.0 / v5;
  if (v8)
  {
    DspLib::Saturation::OversampledProcess::processWith<DspLib::Saturation::SmartSaturation::process(DspLib::MultiSpan<float>)::{lambda(DspLib::MultiSpan<float>&)#1}>(v8, a2);
    *v15 = *(a2 + 16);
    DspLib::fill(&v15[16], *v15, v9);
    DspLib::CircularDelay::process((a1 + 384), &v15[16], *v15, &v15[16], *v15);
    v13 = *a2;
    v14 = *(a2 + 16);
    DspLib::multiply(&v13, &v15[16]);
  }

  else
  {
    *v15 = *a2;
    *&v15[16] = *(a2 + 16);
    DspLib::Saturation::process(v15);
    *v15 = *a2;
    *&v15[16] = *(a2 + 16);
    DspLib::multiply(v15, v9);
  }

  v11 = *(a1 + 200);
  v10 = (a1 + 200);
  if (v11 == 1)
  {
    v12 = *(a2 + 8);
    v13 = *a2;
    v14 = *(a2 + 16);
    *v15 = v13;
    *&v15[8] = v12;
    DspLib::Biquad::Filter::process(v10, v15, &v13);
  }
}

float DspLib::ControlFreak::Algorithm::processPeakSampleDetector(uint64_t a1, __int128 *a2, float *a3, vDSP_Length a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 24) + 32) >= 0.5)
  {
    v9 = 4 * *(a2 + 2);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    if (*(a2 + 1) == 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = ((v9 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    }

    MEMORY[0x1EEE9AC00](a1);
    v12 = (&v31[-1] - v11);
    v13 = *(a2 + 1);
    MEMORY[0x1EEE9AC00](v14);
    v16 = (&v31[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v15 >= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = v15;
    }

    bzero(&v31[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    if (v13)
    {
      v18 = 1;
      v19 = v16;
      do
      {
        *v19++ = v12;
        v12 += v10;
        v20 = v13 > v18++;
      }

      while (v20);
    }

    v21 = 4 * *(a2 + 2);
    v32 = *a2;
    v33 = *(a2 + 2);
    v31[0] = v16;
    v31[1] = v13;
    v31[2] = v21;
    DspLib::PolyPhaseInterpolator::process((a1 + 1072), &v32, v31);
    v22 = (*(*a1 + 64))(a1);
    if (v22 >= 2)
    {
      v23 = 1;
      do
      {
        DspLib::vmaxmg(*v16, v21, v16[v23]);
        v22 = (*(*a1 + 64))(a1);
        ++v23;
      }

      while (v23 < v22);
    }

    if (*(a2 + 2))
    {
      v24 = 0;
      v25 = 0;
      v26 = 1;
      do
      {
        a3[v25] = DspLib::maxMagnitude(&(*v16)[v24], 4uLL);
        v25 = v26;
        v20 = *(a2 + 2) > v26++;
        v24 += 4;
      }

      while (v20);
    }

    v27 = DspLib::dB2Amp(v22, 0.688);
    DspLib::multiply(a3, a4, v27);
    if ((*(*a1 + 64))(a1))
    {
      v28 = 0;
      do
      {
        DspLib::vmaxmg(a3, a4, *(*a2 + 8 * v28++));
      }

      while (v28 < (*(*a1 + 64))(a1));
    }
  }

  else
  {
    DspLib::abs(**a2, *(a2 + 2), a3);
    if ((*(*a1 + 64))(a1) >= 2)
    {
      v8 = 1;
      do
      {
        DspLib::vmaxmg(a3, a4, *(*a2 + 8 * v8++));
      }

      while (v8 < (*(*a1 + 64))(a1));
    }
  }

  return DspLib::maxv(a3, a4);
}

void DspLib::ControlFreak::Algorithm::computeModulator(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v16 = *MEMORY[0x1E69E9840];
  __N = v1;
  v7 = *(v5 + 240);
  v8 = (*(v5 + 768) - 1);
  DspLib::copy(v3, v1, &v7[v8]);
  DspLib::slidingWindowMaxima(v7, v2 + v8, v15, v2);
  DspLib::copy(&v7[v2], v8, v7);
  v9 = (v6 + 1556);
  if (*(v6 + 1568) == 1)
  {
    DspLib::ControlFreak::Algorithm::RampedValue::ramp(v9, v13, v2);
    if (v2)
    {
      v10 = 0;
      do
      {
        v11 = v13[v10];
        v12 = v15[v10];
        if (v12 < v11)
        {
          v12 = v13[v10];
        }

        v4[v10++] = v11 / v12;
      }

      while (v2 > v10);
    }
  }

  else
  {
    DspLib::threshold(v15, __N, v4, *v9);
    DspLib::svdiv(v4, v2, *v9);
  }
}

void DspLib::ControlFreak::Algorithm::processAutorelease(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  __N = v1;
  v3 = v2;
  v5 = v4;
  v27 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  v9 = (v6 + 16);
  v8 = *(v6 + 16);
  v25[256] = v8;
  v24 = v7;
  v25[0] = *(v6 + 16);
  DspLib::sum(&v24, v26, v8);
  v16 = v26;
  *&v24 = &v16;
  *(&v24 + 1) = 1;
  v25[0] = v8;
  v22 = v8;
  v23 = v26;
  v20 = &v23;
  v21 = 1;
  DspLib::FIRDecimator::process((v5 + 776), &v20, &v24);
  v10 = v25[0];
  v16 = v26;
  v23 = v26;
  *&v24 = &v16;
  *(&v24 + 1) = 1;
  v20 = &v23;
  v21 = 1;
  v22 = v25[0];
  DspLib::EnvelopeProcessor::process(v5 + 1176, &v24, &v20);
  v16 = v26;
  *&v24 = &v16;
  *(&v24 + 1) = 1;
  v25[0] = v10;
  v22 = v10;
  v23 = v26;
  v20 = &v23;
  v21 = 1;
  DspLib::DownSampler::process((v5 + 960), &v20, &v24);
  v11 = v25[0];
  v20 = v26;
  *&v24 = &v20;
  *(&v24 + 1) = 1;
  DspLib::RMS::process(v5 + 1344, &v24, v26, v25[0]);
  DspLib::ControlFreak::Algorithm::audioActivityDetector(v5, v26, v11);
  v12 = *v9;
  v23 = v25;
  *&v24 = v12;
  v19 = v26;
  v20 = &v19;
  v21 = 1;
  v22 = v11;
  v16 = &v23;
  v17 = 1;
  v18 = v10;
  DspLib::PolyPhaseInterpolator::process((v5 + 968), &v20, &v16);
  v13 = *v9;
  v22 = v10;
  v23 = v26;
  v19 = v25;
  v20 = &v19;
  v21 = 1;
  v16 = &v23;
  v17 = 1;
  v18 = v13;
  DspLib::PolyPhaseInterpolator::process((v5 + 856), &v20, &v16);
  DspLib::ControlFreak::Algorithm::computeSlowGain(v5, v3, __N, v26, v13, v25, v12);
  DspLib::clip(v3, __N, *(v5 + 1588), 1.0);
  if ((*(*v5 + 208))(v5))
  {
    DspLib::CPUMeasure::pause((v5 + 104));
    v14 = DspLib::minv(v3, __N);
    if (v14 >= *(v5 + 1716))
    {
      v14 = *(v5 + 1716);
    }

    *(v5 + 1716) = v14;
    DspLib::CPUMeasure::resume((v5 + 104));
  }

  DspLib::multiply();
}

void sub_1DDC015D4()
{
  if ((*(*v0 + 208))(v0))
  {
    DspLib::CPUMeasure::pause((v0 + 26));
    v2 = DspLib::minv(v1, v3);
    if (v2 >= v0[428])
    {
      v2 = v0[428];
    }

    v0[428] = v2;
    DspLib::CPUMeasure::resume((v0 + 26));
  }
}

uint64_t DspLib::ControlFreak::Algorithm::outputModulator(_BYTE *a1, void *__src, uint64_t a3, uint64_t a4)
{
  v6 = **a4;
  v7 = *(a4 + 16);
  if (a1[264] == 1)
  {
    DspLib::fill(v6, v7, 1.0);
  }

  else
  {
    DspLib::copy(__src, a3, v6);
  }

  result = (*(*a1 + 64))(a1);
  if (result >= 2)
  {
    v9 = 1;
    do
    {
      DspLib::clear(*(*a4 + 8 * v9++), *(a4 + 16));
      result = (*(*a1 + 64))(a1);
    }

    while (v9 < result);
  }

  return result;
}

void DspLib::ControlFreak::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  v5 = (*(*a1 + 208))(a1);
  if (v5)
  {
    *a2 = DspLib::amp2dBSafe(v5, *(a1 + 1716), 0.000001);
    *(a2 + 12) = DspLib::amp2dBSafe(v6, *(a1 + 1712), 0.000001);
    *(a2 + 16) = DspLib::amp2dBSafe(v7, *(a1 + 1704), 0.000001);
    *(a2 + 20) = DspLib::amp2dBSafe(v8, *(a1 + 1708), 0.000001);
    if (*(a1 + 408) == 1)
    {
      v10 = *(a1 + 424);
      *(a1 + 424) = 897988541;
      v11 = *(a1 + 420);
      v12 = *(a1 + 412);
      v13 = DspLib::amp2dBSafe(v9, v10, 0.000001);
      *(a2 + 24) = v12;
      *(a2 + 32) = v11;
      *(a2 + 4) = v13;
    }

    *(a1 + 1704) = xmmword_1DE098D40;
  }

  else
  {
    *(a2 + 16) = vdup_n_s32(0xC2C80000);
    *(a2 + 4) = -1027080192;
  }
}

uint64_t DspLib::ControlFreak::Algorithm::RampedValue::ramp(uint64_t result, float *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *result;
    v4 = 1;
    do
    {
      v5 = *(result + 8);
      v3 = v5 * v3;
      *result = v3;
      if (v5 > 1.0 && (v6 = *(result + 4), v3 >= v6) || v5 < 1.0 && (v6 = *(result + 4), v3 <= v6))
      {
        *result = v6;
        *(result + 12) = 0;
        v3 = v6;
      }

      *a2++ = v3;
    }

    while (a3 > v4++);
  }

  return result;
}

uint64_t DspLib::ControlFreak::Algorithm::audioActivityDetector(uint64_t result, float *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 1548);
    do
    {
      v4 = *a2;
      v5 = *(result + 1544);
      if (*a2 > (v5 * *(result + 1536)))
      {
        *(result + 1544) = v4;
        v3 += *(result + 1552);
        *(result + 1548) = v3;
        v5 = v4;
      }

      if (v4 < (v5 * *(result + 1540)))
      {
        *(result + 1544) = v4;
      }

      if (v3)
      {
        v6 = *(result + 1596);
        *(result + 1548) = --v3;
      }

      else
      {
        v6 = *(result + 1600);
      }

      *a2++ = v6;
      --a3;
    }

    while (a3);
  }

  return result;
}

void DspLib::ControlFreak::Algorithm::computeSlowGain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, vDSP_Length a7)
{
  DspLib::multiply(a2, a3, a6, 1.0 / *(a1 + 1588));
  DspLib::clip(a6, a7, 0.0, 1.0);
  if (DspLib::minv(a6, a7) < 0.99)
  {
    *(a1 + 1604) = 1;
LABEL_6:
    if (a7)
    {
      v11 = 0;
      do
      {
        v12 = a6[v11];
        v13 = *(a1 + 1592);
        if (v12 >= v13)
        {
          v12 = v13 + ((v12 - v13) * *(a4 + 4 * v11));
        }

        *(a1 + 1592) = v12;
        a6[v11++] = v12;
      }

      while (a7 > v11);
    }

    return;
  }

  if (*(a1 + 1592) > 0.99)
  {
    *(a1 + 1604) = 0;
    return;
  }

  if (*(a1 + 1604))
  {
    goto LABEL_6;
  }
}

float DspLib::ControlFreak::cutoffFrequencyHz(int a1)
{
  if ((a1 - 2) > 5)
  {
    return 18000.0;
  }

  else
  {
    return flt_1DE098E50[a1 - 2];
  }
}

void DspLib::Saturation::SmartSaturation::initialize(DspLib::Saturation::SmartSaturation *this, int a2, double a3, uint64_t a4)
{
  *(this + 10) = a2;
  *(this + 4) = a3;
  *(this + 6) = a4;
  DspLib::Saturation::SmartSaturation::configureAnalysisFilter(this);
  DspLib::Saturation::SmartSaturation::reset(this);
  *(this + 56) = 1;
  v5[0] = *this;
  *(v5 + 12) = *(this + 12);
  DspLib::Saturation::SmartSaturation::configure(this, v5);
}

void DspLib::Saturation::SmartSaturation::configure(uint64_t a1, _OWORD *a2)
{
  v3 = *(a2 + 12);
  *a1 = *a2;
  *(a1 + 12) = v3;
  if (*(a1 + 4) == 1)
  {
    v4 = *(a1 + 376);
    if (!v4)
    {
      operator new();
    }

    DspLib::Saturation::OversampledProcess::setCutoffFrequency(v4, *(a1 + 8));
    DspLib::CircularDelay::setLength((a1 + 384), ((*(*(a1 + 376) + 24) / *(*(a1 + 376) + 16)) + (*(*(a1 + 376) + 24) / *(*(a1 + 376) + 16))));
  }

  else
  {
    std::unique_ptr<DspLib::Saturation::OversampledProcess>::reset[abi:ne200100]((a1 + 376), 0);
  }

  if (*(a1 + 16) <= 0.0)
  {
    DspLib::Biquad::ParametricFilter::uninitialize((a1 + 96));
    DspLib::Biquad::ParametricFilter::uninitialize((a1 + 200));
  }

  else
  {
    DspLib::Biquad::ParametricFilter::initialize((a1 + 96), *(a1 + 40), *(a1 + 32), 1uLL);
    DspLib::Biquad::ParametricFilter::initialize((a1 + 200), *(a1 + 40), *(a1 + 32), 1uLL);
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 96, (*(a1 + 20) << 32) | 0x10, (*(a1 + 16) ^ 0x80000000 | (*(a1 + 24) << 32)), 0, 0x41uLL);
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 200, (*(a1 + 20) << 32) | 0x10, (*(a1 + 16) | (*(a1 + 24) << 32)), 0, 0x41uLL);
  }
}

void DspLib::ControlFreak::Algorithm::~Algorithm(DspLib::ControlFreak::Algorithm *this)
{
  DspLib::ControlFreak::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591A988;
  v16 = (this + 1680);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v16);
  v2 = *(this + 207);
  if (v2)
  {
    *(this + 208) = v2;
    operator delete(v2);
  }

  v3 = *(this + 203);
  if (v3)
  {
    *(this + 204) = v3;
    operator delete(v3);
  }

  v16 = (this + 1504);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v4 = *(this + 182);
  if (v4)
  {
    *(this + 183) = v4;
    operator delete(v4);
  }

  v5 = *(this + 179);
  if (v5)
  {
    *(this + 180) = v5;
    operator delete(v5);
  }

  v6 = *(this + 174);
  if (v6)
  {
    *(this + 175) = v6;
    operator delete(v6);
  }

  v7 = *(this + 167);
  *(this + 167) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 163);
  if (v8)
  {
    *(this + 164) = v8;
    operator delete(v8);
  }

  v9 = *(this + 160);
  if (v9)
  {
    *(this + 161) = v9;
    operator delete(v9);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 1232));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 1184));
  v10 = *(this + 144);
  if (v10)
  {
    *(this + 145) = v10;
    operator delete(v10);
  }

  v16 = (this + 1120);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 1088);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v11 = *(this + 131);
  if (v11)
  {
    *(this + 132) = v11;
    operator delete(v11);
  }

  v16 = (this + 1016);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 984);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v12 = *(this + 117);
  if (v12)
  {
    *(this + 118) = v12;
    operator delete(v12);
  }

  v16 = (this + 904);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 872);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 824);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v13 = *(this + 98);
  if (v13)
  {
    *(this + 99) = v13;
    operator delete(v13);
  }

  DspLib::Saturation::SmartSaturation::~SmartSaturation((this + 352));
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 328));
  v14 = *(this + 38);
  if (v14)
  {
    *(this + 39) = v14;
    operator delete(v14);
  }

  v15 = *(this + 30);
  if (v15)
  {
    *(this + 31) = v15;
    operator delete(v15);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

uint64_t DspLib::ControlFreak::Algorithm::setMeteringIsEnabled(DspLib::ControlFreak::Algorithm *this, char a2)
{
  *(this + 96) = a2;
  result = (*(*this + 208))(this);
  *(this + 396) = result;
  return result;
}

void DspLib::Saturation::SmartSaturation::~SmartSaturation(DspLib::Saturation::SmartSaturation *this)
{
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 49) = v2;
    operator delete(v2);
  }

  std::unique_ptr<DspLib::Saturation::OversampledProcess>::reset[abi:ne200100](this + 47, 0);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 352));
  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  v6 = (this + 280);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 248));
  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v6 = (this + 176);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 144));
  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<DspLib::Saturation::OversampledProcess>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 184);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(v2 + 144);
    if (v3)
    {
      *(v2 + 152) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 112);
    if (v4)
    {
      *(v2 + 120) = v4;
      operator delete(v4);
    }

    v5 = (v2 + 80);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (v2 + 48);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    return MEMORY[0x1E12BD160](v2, 0x10A0C40D6B359F6);
  }

  return result;
}

void DspLib::Saturation::OversampledProcess::reset(DspLib::Saturation::OversampledProcess *this)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  while (v2 != v3)
  {
    v4 = *(v2 + 8);
    if (*v2 != v4)
    {
      bzero(*v2, v4 - *v2);
    }

    v2 += 24;
  }

  *(this + 26) = 0;

  DspLib::FIRDecimator::reset((this + 136));
}

void DspLib::Saturation::SmartSaturation::processAnalysis(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v7 = *(a1 + 40);
  if (v7 == 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = ((v6 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFF0);
  if (v12 >= 0x200)
  {
    v14 = 512;
  }

  else
  {
    v14 = v12;
  }

  bzero(&v34 - ((v12 + 15) & 0xFFFFFFFF0), v14);
  if (v7)
  {
    v15 = v7;
    v16 = v13;
    do
    {
      *v16++ = v10;
      v10 += 4 * v8;
      --v15;
    }

    while (v15);
  }

  v37 = *a2;
  v38 = *(a2 + 16);
  v17 = DspLib::maxMagnitude(&v37);
  v37 = *a2;
  v38 = *(a2 + 16);
  v18 = (v5 * v4);
  v19 = sqrtf(DspLib::sumOfSquares(&v37) / v18);
  v22 = DspLib::dB2Amp(v20, *(a1 + 12)) / v17;
  if (v22 > 1.0)
  {
    v22 = 1.0;
  }

  *(a1 + 64) = DspLib::amp2dBSafe(v21, v22, 0.000001);
  v37 = *a2;
  v38 = *(a2 + 16);
  *&v35 = v13;
  *(&v35 + 1) = v7;
  v36 = v4;
  DspLib::Biquad::Filter::process((a1 + 304), &v37, &v35);
  *&v37 = v13;
  *(&v37 + 1) = v7;
  v38 = v4;
  v23 = DspLib::sumOfSquares(&v37);
  v26 = DspLib::amp2dBSafe(v24, sqrtf(v23 / v18) / (v19 + 0.000001), 0.000001);
  if (v4 == *(a1 + 80))
  {
    v28 = *(a1 + 88);
    v27 = *(a1 + 92);
  }

  else
  {
    v29 = *(a1 + 32) / v4;
    v27 = 1.0 - expf(-1.0 / ((v29 * 100.0) / 1000.0));
    *(a1 + 88) = v27;
    *(a1 + 92) = v27;
    v28 = v27;
  }

  v30 = *(a1 + 60);
  if (v26 < v30)
  {
    v27 = v28;
  }

  v31 = v30 + ((v26 - v30) * v27);
  *(a1 + 60) = v31;
  v32 = -40.0;
  if (v31 >= -40.0)
  {
    v32 = -30.0;
    if (v31 <= -30.0)
    {
      v32 = v31;
    }
  }

  v33 = (v32 * 0.5) + 15.0;
  *(a1 + 68) = v33;
  DspLib::dB2Amp(v25, v33 + *(a1 + 64));
}

void *DspLib::Saturation::OversampledProcess::processWith<DspLib::Saturation::SmartSaturation::process(DspLib::MultiSpan<float>)::{lambda(DspLib::MultiSpan<float>&)#1}>(uint64_t a1, char **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[2];
  v6 = v5 * *(a1 + 16);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 * *(a1 + 16);
  }

  if (v4 == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = ((v7 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20[-1] - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 >= 0x200)
  {
    v14 = 512;
  }

  else
  {
    v14 = v12;
  }

  bzero(&v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  if (v4)
  {
    v15 = 1;
    v16 = v13;
    do
    {
      *v16++ = v10;
      v10 += 4 * v8;
    }

    while (v4 > v15++);
  }

  v21 = *a2;
  v22 = v4;
  v23 = v5;
  v20[0] = v13;
  v20[1] = v4;
  v20[2] = v6;
  DspLib::PolyPhaseInterpolator::process((a1 + 32), &v21, v20);
  v21 = v13;
  v22 = v4;
  v23 = v6;
  DspLib::Saturation::process(&v21);
  v21 = v13;
  v22 = v4;
  v23 = v6;
  return DspLib::FIRDecimator::process((a1 + 136), &v21, a2);
}

void DspLib::Saturation::SmartSaturation::configureAnalysisFilter(DspLib::Saturation::SmartSaturation *this)
{
  v2 = *(this + 4);
  DspLib::Biquad::Design::butterworthHighPass(4, 7000.0, v2, 0, &v6);
  v3 = *(this + 4);
  DspLib::Biquad::Design::butterworthLowPass(2, 13000.0, v3, 0, &__p);
  DspLib::Biquad::Filter::initialize((this + 304), *(this + 10), 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 2) - 0x3333333333333333 * ((v5 - __p) >> 2));
  DspLib::Biquad::Filter::setCoefficients(this + 304, v6, 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 2), 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(this + 304, __p, 0xCCCCCCCCCCCCCCCDLL * ((v5 - __p) >> 2), -858993459 * ((v7 - v6) >> 2), 0x41uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_1DDC023C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::Saturation::OversampledProcess::setCutoffFrequency(DspLib::Saturation::OversampledProcess *this, float a2)
{
  v14[257] = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = (a2 / v3) + (a2 / v3);
  v5 = 1.0;
  if (v4 <= 1.0)
  {
    v5 = v4;
  }

  if (v4 >= 0.5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = *(this + 4);
  v8 = *(this + 5);
  v12[0] = &unk_1F59193D0;
  v12[1] = DspLib::makeChebychevWindow;
  v12[3] = v12;
  v13 = v8 * v7 + 1;
  *(this + 6) = DspLib::makeSincWindow(v14, v13, v7, v8, v12, v6);
  std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](v12);
  DspLib::FIRDecimator::setCoefficients(this + 17, v14, v13);
  DspLib::FIRDecimator::reset((this + 136));
  DspLib::multiply(v14, v13, *(this + 4));
  DspLib::PolyPhaseInterpolator::setCoefficients(this + 8, v14, v13);
  v9 = *(this + 10);
  v10 = *(this + 11);
  while (v9 != v10)
  {
    v11 = *(v9 + 8);
    if (*v9 != v11)
    {
      bzero(*v9, v11 - *v9);
    }

    v9 += 24;
  }

  *(this + 26) = 0;
}

DspLib::Saturation::OversampledProcess *DspLib::Saturation::OversampledProcess::OversampledProcess(DspLib::Saturation::OversampledProcess *this, unsigned int a2, unsigned int a3, double a4, unsigned int a5, int a6)
{
  *(this + 6) = 0;
  *(this + 8) = 1;
  v9 = (this + 32);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 17) = 1;
  v10 = (this + 136);
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 26) = 0;
  *this = a2;
  *(this + 1) = a4;
  *(this + 4) = a5;
  *(this + 5) = a6;
  std::vector<std::vector<float>>::resize(this + 10, a2);
  DspLib::PolyPhaseInterpolator::setSrcParameters(v9, a5, a3);
  std::vector<std::vector<float>>::resize(this + 23, *this);
  DspLib::FIRDecimator::setSrcParameters(v10, a5, *(this + 4) * a3);
  return this;
}

void sub_1DDC02628(_Unwind_Exception *a1)
{
  DspLib::FIRDecimator::~FIRDecimator(v2);
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator(v1);
  _Unwind_Resume(a1);
}

uint64_t DspLib::ControlFreak::Algorithm::latencySamples()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/ControlFreak/dsp/DspLibControlFreak.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 124);
  ++DspLibDebug::mAssertCounter;
  return result;
}

void *DspLib::LinearPhaseFilterbank::configure(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  if (*result != 2 * a2)
  {
    goto LABEL_7;
  }

  if (result[1] != a4)
  {
    goto LABEL_7;
  }

  if (a4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 |= *(result[3] + 8 * v5) != vcvtas_u32_f32(*(a3 + 4 * v5) * *result);
      ++v5;
    }

    while (a4 > v5);
    if (v6)
    {
LABEL_7:
      *result = 2 * a2;
      result[1] = a4;
      std::vector<unsigned long>::resize(result + 3, a4);
      v7 = 0;
      v8 = v4[2] + *v4;
      v9 = 2 * v8;
      v10 = v8;
      while (1)
      {
        v11 = qword_1DE098E78[v7];
        v12 = v10 / v11;
        if (v12 <= 1.0)
        {
          v13 = 0;
        }

        else
        {
          v13 = vcvtpd_u64_f64(log2(v12));
        }

        v14 = v11 << v13;
        if (v14 < v9)
        {
          v9 = v14;
        }

        if (++v7 == 4)
        {
          v4[12] = v9;
          operator new();
        }
      }
    }
  }

  return result;
}

void std::vector<DspLib::ComplexVector>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<DspLib::ComplexVector>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 80 * a2;
    while (v3 != v7)
    {
      DspLib::ComplexVector::~ComplexVector((v3 - 80));
    }

    a1[1] = v7;
  }
}

void DspLib::LinearPhaseFilterbank::calculateCoeffsFromCenterFrequencies(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = vcvtas_u32_f32(*(a2 + 4 * v4) * *a1);
      v3[v4] = v6;
      if (v5 != 1)
      {
        v7 = v3[v5 - 2];
        if (v7 + 1 > v6)
        {
          v6 = v7 + 1;
        }

        v3[v4] = v6;
      }

      v4 = v5;
      v8 = *(a1 + 8) > v5++;
    }

    while (v8);
  }

  v9 = v3[1] - *v3;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<float>::resize(&v43, 2 * v9);
  DspLib::makePeriodicHannWindow(v43, v44 - v43);
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = *a1 >> 1;
  __Z.realp = v14;
  __Z.imagp = (&v33 - v13);
  v42 = v12;
  DspLib::ComplexSpan::operator=(&__Z, 0.0);
  DspLib::fill(__Z.realp, **(a1 + 24), 1.0);
  DspLib::copy(&v44[-v9], v9, &__Z.realp[**(a1 + 24)]);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::vector<std::vector<float>>::resize(&v38, *(a1 + 8));
  v15 = v38;
  v16 = v39;
  while (v15 != v16)
  {
    std::vector<float>::resize(v15, *a1);
    v15 += 3;
  }

  v17 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform(v37, *a1);
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(v17, &__Z, *v38);
  DspLib::FFT::shift(*v38, (v38[1] - *v38) >> 2);
  if ((*(a1 + 8) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = 2;
    v19 = 1;
    do
    {
      v20 = *(*(a1 + 24) + 8 * v18) - *(*(a1 + 24) + 8 * v19);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      std::vector<float>::resize(&v34, 2 * v20);
      DspLib::makePeriodicHannWindow(v34, (v35 - v34) >> 2);
      DspLib::ComplexSpan::operator=(&__Z, 0.0);
      DspLib::copy(v43, v9, &__Z.realp[*(*(a1 + 24) + 8 * v19) - v9]);
      v9 = v20;
      DspLib::copy(&v35[-4 * v20], v20, &__Z.realp[*(*(a1 + 24) + 8 * v19)]);
      DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(v37, &__Z, v38[3 * v19]);
      DspLib::FFT::shift(v38[3 * v19], (v38[3 * v19 + 1] - v38[3 * v19]) >> 2);
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v43, v34, v35, (v35 - v34) >> 2);
      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      v19 = v18++;
    }

    while (*(a1 + 8) - 1 > v19);
  }

  DspLib::ComplexSpan::operator=(&__Z, 0.0);
  DspLib::copy(v43, v9, &__Z.realp[*(*(a1 + 24) + 8 * *(a1 + 8) - 8) - v9]);
  v21 = (*a1 >> 1) - *(*(a1 + 24) + 8 * *(a1 + 8) - 8);
  DspLib::fill(&__Z.realp[v42 - v21], v21, 1.0);
  *__Z.imagp = 1.0;
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(v37, &__Z, v38[3 * *(a1 + 8) - 3]);
  v22 = DspLib::FFT::shift(v38[3 * *(a1 + 8) - 3], (v38[3 * *(a1 + 8) - 2] - v38[3 * *(a1 + 8) - 3]) >> 2);
  if (*(a1 + 8))
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v25 = DspLib::multiply(v38[3 * v23], (v38[3 * v23 + 1] - v38[3 * v23]) >> 2, 1.0 / *a1);
      v23 = v24;
      v8 = *(a1 + 8) > v24++;
    }

    while (v8);
    v26 = *(a1 + 96);
    MEMORY[0x1EEE9AC00](v25);
    v28 = (&v33 - v27);
    if (v29 == 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v26 = *(a1 + 96);
    MEMORY[0x1EEE9AC00](v22);
    v28 = (&v33 - v30);
  }

  v31 = 0;
  v32 = 1;
  do
  {
    DspLib::clear(v28, v26);
    DspLib::copy(v38[3 * v31], (v38[3 * v31 + 1] - v38[3 * v31]) >> 2, v28 + 4 * *(a1 + 16));
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(*(a1 + 104), v28, v26, (*(a1 + 48) + 80 * v31));
    DspLib::operator*=(*(a1 + 48) + 80 * v31, 0.25 / *(a1 + 96));
    v31 = v32;
    v8 = *(a1 + 8) - 1 > v32++;
  }

  while (v8);
LABEL_24:
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v37);
  v34 = &v38;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v34);
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }
}

void sub_1DDC030E4(_Unwind_Exception *a1)
{
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v1 - 176);
  *(v1 - 200) = v1 - 160;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v1 - 200));
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void DspLib::LinearPhaseFilterbank::process(uint64_t a1, char *a2, unint64_t a3, DSPComplex ***a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    DspLib::LinearDelay::write((a1 + 72), a2, a3);
    v7 = *(a1 + 72);
    v8 = *(a1 + 96) - (a3 + (*a1 >> 1));
    v9 = a3 == -1 ? ((*(a1 + 80) - v7) >> 2) - v8 : a3;
    v10 = DspLib::copy((v7 + 4 * v8), v9, (*a4)[*(a1 + 8) - 1]);
    v28[1] = v28;
    v11 = MEMORY[0x1EEE9AC00](v10);
    MEMORY[0x1EEE9AC00](v11);
    v13 = *(a1 + 104);
    v14 = *(a1 + 96) >> 1;
    v31.realp = v15;
    v31.imagp = ((v28 - v12) & 0xFFFFFFFFFFFFFFC0);
    v32 = v14;
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(v13, *(a1 + 72), (*(a1 + 80) - *(a1 + 72)) >> 2, &v31);
    if (*(a1 + 8) != 1)
    {
      v17 = MEMORY[0x1EEE9AC00](v16);
      MEMORY[0x1EEE9AC00](v17);
      v19 = *(a1 + 96) >> 1;
      v29.realp = v20;
      v29.imagp = ((v28 - v18) & 0xFFFFFFFFFFFFFFC0);
      v30 = v19;
      v21 = *(a1 + 48);
      v22 = *v31.realp;
      v23 = *v31.imagp;
      vDSP_zvmul(&v31, 1, v21, 1, &v29, 1, v32, 1);
      imagp = v21->imagp;
      *v29.realp = v22 * *v21->realp;
      *v29.imagp = v23 * *imagp;
      DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(*(a1 + 112), &v29, **a4);
      v25 = *(a1 + 16);
      v26 = v25 > a3;
      v27 = v25 - a3;
      if (v26)
      {
        DspLib::copy(**a4 + 4 * v27, a3, **a4);
      }

      DspLib::subtract();
    }
  }
}

void *DspLib::FFT::shift(void *a1, unint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 1;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v10 - v5;
  v8 = (v4 + 4 * v7 - 4 * v3);
  DspLib::copy(v8, v3, v10 - v5);
  DspLib::copy(a1, v3, v8);
  return DspLib::copy(v6, v3, a1);
}

void DspLib::GainSmoother::initialize(DspLib::GainSmoother *this, unint64_t a2)
{
  if (*this != a2)
  {
    *this = a2;
    std::vector<float>::resize(this + 14, a2);
  }
}

void DspLib::GainSmoother::configure(DspLib::GainSmoother *this, unint64_t a2, float a3)
{
  v4 = 4.60517021 / a3;
  v5 = fminf(v4, 1.0);
  v6 = *(this + 14);
  v7 = (*(this + 15) - v6) >> 2;
  *v6 = v5;
  if (v7 >= 2)
  {
    v8 = 2;
    v9 = 1;
    v10 = v6;
    do
    {
      v11 = *v10++;
      v6[v9] = v5 + ((1.0 - v5) * v11);
      v9 = v8;
    }

    while (v7 > v8++);
  }

  v13 = *this;
  if (*this >= a2)
  {
    v13 = a2;
  }

  if (v13 != *(this + 1))
  {
    *(this + 1) = v13;
    std::vector<float>::resize(this + 2, v13 + 1);
    std::vector<float>::resize(this + 5, *(this + 1) + 1);
    std::vector<float>::resize(this + 8, *(this + 1) + 1);
    v14 = *(this + 1);
    if (v14 != -1)
    {
      v15 = 0;
      v16 = *(this + 2);
      v17 = *(this + 5);
      v18 = *(this + 8);
      do
      {
        v19 = __sincos_stret(3.14159265 / v14 * v15);
        v20 = v19.__cosval + 1.0;
        *(v16 + 4 * v15) = v20;
        v21 = 1.0 / (v19.__cosval + 1.0);
        *(v17 + 4 * v15) = v21;
        sinval = v19.__sinval;
        *(v18 + 4 * v15++) = sinval;
      }

      while (v14 + 1 > v15);
    }

    std::vector<float>::resize(this + 11, v14);
    v23 = *(this + 1);
    if (v23)
    {
      v24 = 0;
      v25 = *(this + 11);
      do
      {
        v26 = tan(3.14159265 / (v23 + v23) * v24);
        *(v25 + 4 * v24++) = v26;
      }

      while (v23 > v24);
    }

    std::vector<float>::resize(this + 19, v23);
    std::vector<float>::resize(this + 26, *(this + 1));

    DspLib::GainSmoother::reset(this);
  }
}

void DspLib::GainSmoother::reset(DspLib::GainSmoother *this)
{
  *(this + 62) = 1065353216;
  *(this + 17) = 0x3F80000000000000;
  *(this + 18) = *(this + 1);
  DspLib::fill(*(this + 19), (*(this + 20) - *(this + 19)) >> 2, 1.0);
  *(this + 22) = *(this + 1);
  *(this + 23) = 0;
}

void DspLib::GainSmoother::gainEstimate(uint64_t a1, unint64_t a2, BOOL *a3, float a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 248);
  *a3 = v7 < a4;
  a3[1] = v7 > a4;
  v8 = *(a1 + 140);
  if (v8 < v7 || v7 != a4 && (v7 <= a4 || *(a1 + 8) >= a2) && v7 >= a4)
  {
    *(a1 + 192) = *(a1 + 136);
    *(a1 + 196) = v8;
    v9 = *(a1 + 152);
    *(a1 + 200) = *(a1 + 144);
    v10 = DspLib::copy(v9, (*(a1 + 160) - v9) >> 2, *(a1 + 208));
    *(a1 + 232) = *(a1 + 176);
    MEMORY[0x1EEE9AC00](v10);
    DspLib::GainSmoother::generateGainCurve(a1, a1 + 192, *(a1 + 112), (*(a1 + 120) - *(a1 + 112)) >> 2, (v12 - v11), a2, *(a1 + 248), a4, 1.0);
  }
}

void DspLib::GainSmoother::generateGainCurve(DspLib::GainSmoother *this, uint64_t a2, uint64_t a3, int a4, float *__dst, unint64_t a6, float a7, float a8, float a9)
{
  v9 = a6;
  v15 = *(a2 + 4);
  if (v15 <= a8)
  {
    if (v15 >= a7)
    {
      DspLib::multiplyAdd(a3, a6, __dst, a8 - a7, a7);
      v29 = *(this + 1);
      *(a2 + 8) = v29;
      *(a2 + 40) = v29;
      *(a2 + 48) = 0;
      *a2 = 0;
      v16 = __dst[v9 - 1];
    }

    else
    {
      v24 = *(a2 + 40);
      v25 = *(a2 + 16);
      v26 = *(a2 + 8) - v24;
      v27 = a6 - v26;
      if (a6 < v26)
      {
        DspLib::copy((v25 + 4 * v24), a6, __dst);
        v28 = *(a2 + 40);
        v16 = *(a2 + 4);
        *a2 = *a2 * (*(*(this + 8) + 4 * v28 + 4 * *(a2 + 48) + 4 * v9) / *(*(this + 8) + 4 * v28 + 4 * *(a2 + 48)));
        *(a2 + 40) = v28 + v9;
        goto LABEL_15;
      }

      if (v26 == -1)
      {
        v30 = ((*(a2 + 24) - v25) >> 2) - v24;
      }

      else
      {
        v30 = *(a2 + 8) - v24;
      }

      DspLib::copy((v25 + 4 * v24), v30, __dst);
      v31 = &__dst[v9];
      DspLib::multiplyAdd(a3, v27, &v31[-v27], a8 - *(a2 + 4), *(a2 + 4));
      v32 = *(this + 1);
      *(a2 + 8) = v32;
      *(a2 + 40) = v32;
      *(a2 + 48) = 0;
      *a2 = 0;
      v16 = *(v31 - 1);
    }
  }

  else
  {
    v16 = a8 * a9;
    v17 = a7 - v16;
    Offset = DspLib::GainSmoother::findOffset(this, a7 - v16, *a2);
    *(a2 + 48) = Offset;
    v19 = *(this + 2);
    v20 = *(this + 1) - Offset;
    *(a2 + 8) = v20;
    v21 = *(a2 + 16);
    DspLib::multiplyAdd(v19 + 4 * Offset + 4, v20, v21, v17 * *(*(this + 5) + 4 * Offset), v16);
    if (v9 >= *(a2 + 8))
    {
      DspLib::copy(v21, v20, __dst);
      DspLib::fill(&__dst[v9 - (v9 - *(a2 + 8))], v9 - *(a2 + 8), v16);
      v9 = *(this + 1);
      *(a2 + 8) = v9;
      *(a2 + 48) = 0;
      v22 = 0.0;
    }

    else
    {
      DspLib::copy(v21, v9, __dst);
      v22 = (v17 * *(*(this + 8) + 4 * *(a2 + 48) + 4 * v9 + 4)) * *(*(this + 5) + 4 * *(a2 + 48));
    }

    *(a2 + 40) = v9;
    *a2 = v22;
  }

  *(a2 + 4) = v16;
LABEL_15:
  if (v16 > 0.99885)
  {
    *(a2 + 4) = 1065353216;
  }
}

unint64_t DspLib::GainSmoother::findOffset(DspLib::GainSmoother *this, float a2, float a3)
{
  result = 0;
  if (a2 > 0.0 && a3 > 0.0)
  {
    v5 = *(this + 1) - 1;
    v6 = *(this + 11);
    v7 = a3 / a2;
    if (v5 < 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = vcvtad_u64_f64(vcvtd_n_f64_u64(v5 + v8, 1uLL));
        if (v7 <= *(v6 + 4 * v9))
        {
          v5 = v9;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v5 - v8 > 1);
    }

    if (vabds_f32(*(v6 + 4 * v8), v7) <= vabds_f32(*(v6 + 4 * v5), v7))
    {
      return v8;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

float *DspLib::GainSmoother::process(float *result, void *__src, uint64_t a3, void *__dst, unint64_t a5, float a6)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = result;
    if (a6 < 1.0 || result[35] < 1.0)
    {
      MEMORY[0x1EEE9AC00](result);
      v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      DspLib::GainSmoother::generateGainCurve(v7, v7 + 136, *(v7 + 112), (*(v7 + 120) - *(v7 + 112)) >> 2, v9, a5, *(v7 + 248), v10, 0.99);
      v11 = v9[a5 - 1];
      if (v11 > 0.99885)
      {
        v11 = 1.0;
      }

      *(v7 + 248) = v11;
      DspLib::multiply();
    }

    if (__src != __dst)
    {

      return DspLib::copy(__src, a3, __dst);
    }
  }

  return result;
}

void DspLib::BandCombiner::initialize(DspLib::BandCombiner *this, unint64_t a2)
{
  if (*(this + 1) != a2)
  {
    *(this + 1) = a2;
    std::vector<float>::resize(this + 15, a2);
  }
}

void DspLib::BandCombiner::configure(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, float a5)
{
  if (*a1 != a2)
  {
    *a1 = a2;
    std::vector<DspLib::GainState>::resize(a1 + 21, a2);
    std::vector<float>::resize(a1 + 31, *a1);
    DspLib::BandCombiner::reset(a1);
  }

  v9 = 4.60517021 / a5;
  v10 = fminf(v9, 1.0);
  v11 = a1[15];
  v12 = (a1[16] - v11) >> 2;
  *v11 = v10;
  if (v12 >= 2)
  {
    v13 = 2;
    v14 = 1;
    v15 = v11;
    do
    {
      v16 = *v15++;
      v11[v14] = v10 + ((1.0 - v10) * v16);
      v14 = v13;
      v17 = v12 > v13++;
    }

    while (v17);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v18 = 4.60517021 / *&a4;
    v19 = fminf(v18, 1.0);
    std::vector<float>::resize(a1 + 18, a1[1]);
    v20 = a1[18];
    v21 = (a1[19] - v20) >> 2;
    *v20 = v19;
    if (v21 >= 2)
    {
      v22 = 2;
      v23 = 1;
      v24 = v20;
      do
      {
        v25 = *v24++;
        v20[v23] = v19 + ((1.0 - v19) * v25);
        v23 = v22;
        v17 = v21 > v22++;
      }

      while (v17);
    }
  }

  else
  {
    a1[19] = a1[18];
  }

  v26 = a1[1];
  if (v26 >= a3)
  {
    v26 = a3;
  }

  if (v26 != a1[2])
  {
    a1[2] = v26;
    std::vector<float>::resize(a1 + 3, v26 + 1);
    std::vector<float>::resize(a1 + 6, a1[2] + 1);
    std::vector<float>::resize(a1 + 9, a1[2] + 1);
    v27 = a1[2];
    if (v27 != -1)
    {
      v28 = 0;
      v29 = a1[3];
      v30 = a1[6];
      v31 = a1[9];
      do
      {
        v32 = __sincos_stret(3.14159265 / v27 * v28);
        v33 = v32.__cosval + 1.0;
        *(v29 + 4 * v28) = v33;
        v34 = 1.0 / (v32.__cosval + 1.0);
        *(v30 + 4 * v28) = v34;
        sinval = v32.__sinval;
        *(v31 + 4 * v28++) = sinval;
      }

      while (v27 + 1 > v28);
    }

    std::vector<float>::resize(a1 + 12, v27);
    v36 = a1[2];
    if (v36)
    {
      v37 = 0;
      v38 = a1[12];
      do
      {
        v39 = tan(3.14159265 / (v36 + v36) * v37);
        *(v38 + 4 * v37++) = v39;
      }

      while (v36 > v37);
    }

    v40 = a1[21];
    v41 = a1[22];
    if (v40 != v41)
    {
      do
      {
        std::vector<float>::resize((v40 + 16), a1[2]);
        v40 += 56;
      }

      while (v40 != v41);
      v36 = a1[2];
    }

    std::vector<float>::resize(a1 + 26, v36);

    DspLib::BandCombiner::reset(a1);
  }
}

void std::vector<DspLib::GainState>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<DspLib::GainState>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 40);
      if (v8)
      {
        *(v3 - 32) = v8;
        operator delete(v8);
      }

      v3 -= 56;
    }

    a1[1] = v7;
  }
}

void DspLib::BandCombiner::reset(float **this)
{
  DspLib::fill(this[31], this[32] - this[31], 1.0);
  v2 = this[21];
  v3 = this[22];
  if (v2 != v3)
  {
    v4 = this[2];
    do
    {
      *v2 = 0x3F80000000000000;
      *(v2 + 1) = v4;
      DspLib::fill(*(v2 + 2), (*(v2 + 3) - *(v2 + 2)) >> 2, 1.0);
      v4 = this[2];
      *(v2 + 5) = v4;
      *(v2 + 6) = 0;
      v2 += 14;
    }

    while (v2 != v3);
  }
}

void DspLib::BandCombiner::gainEstimate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v13 = (v29 - v12);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      v18 = *(*(a1 + 248) + 4 * v16);
      v19 = *(a2 + 4 * v16);
      v20 = (a5 + 2 * v16);
      *v20 = v18 < v19;
      v20[1] = v19 < v18;
      v21 = *(a1 + 168) + 56 * v16;
      v22 = *(v21 + 4);
      if (v22 < v18)
      {
        goto LABEL_4;
      }

      if (v19 != v18 && (v19 >= v18 || *(a1 + 16) >= a4))
      {
        break;
      }

      *(a7 + 4 * v16) = v19;
LABEL_12:
      v16 = v17;
      if (v15 <= v17++)
      {
        return;
      }
    }

    if (v18 < v19)
    {
      v27 = *(a1 + 152) != *(a1 + 144) && v17 == 1;
      v28 = 120;
      if (v27)
      {
        v28 = 144;
      }

      *(a7 + 4 * v16) = v18 + ((v19 - v18) * *(*(a1 + v28) + 4 * a4 - 4));
      goto LABEL_12;
    }

LABEL_4:
    *(a1 + 192) = *v21;
    *(a1 + 196) = v22;
    v23 = *(v21 + 16);
    *(a1 + 200) = *(v21 + 8);
    DspLib::copy(v23, (*(v21 + 24) - v23) >> 2, *(a1 + 208));
    *(a1 + 232) = *(v21 + 40);
    v24 = *(a1 + 152) != *(a1 + 144) && v17 == 1;
    v25 = 120;
    if (v24)
    {
      v25 = 144;
    }

    DspLib::BandCombiner::generateGainCurve(a1, a1 + 192, *(a1 + v25), (*(a1 + v25 + 8) - *(a1 + v25)) >> 2, v13, a4, *(*(a1 + 248) + 4 * v16), *(a2 + 4 * v16), 1.0);
    *(a7 + 4 * v16) = v13[a4 - 1];
    v15 = *a1;
    goto LABEL_12;
  }
}

void DspLib::BandCombiner::generateGainCurve(DspLib::BandCombiner *this, uint64_t a2, uint64_t a3, int a4, float *__dst, unint64_t a6, float a7, float a8, float a9)
{
  v9 = a6;
  v15 = *(a2 + 4);
  if (v15 <= a8)
  {
    if (v15 >= a7)
    {
      DspLib::multiplyAdd(a3, a6, __dst, a8 - a7, a7);
      v29 = *(this + 2);
      *(a2 + 8) = v29;
      *(a2 + 40) = v29;
      *(a2 + 48) = 0;
      *a2 = 0;
      v16 = __dst[v9 - 1];
    }

    else
    {
      v24 = *(a2 + 40);
      v25 = *(a2 + 16);
      v26 = *(a2 + 8) - v24;
      v27 = a6 - v26;
      if (a6 < v26)
      {
        DspLib::copy((v25 + 4 * v24), a6, __dst);
        v28 = *(a2 + 40);
        v16 = *(a2 + 4);
        *a2 = *a2 * (*(*(this + 9) + 4 * v28 + 4 * *(a2 + 48) + 4 * v9) / *(*(this + 9) + 4 * v28 + 4 * *(a2 + 48)));
        *(a2 + 40) = v28 + v9;
        goto LABEL_15;
      }

      if (v26 == -1)
      {
        v30 = ((*(a2 + 24) - v25) >> 2) - v24;
      }

      else
      {
        v30 = *(a2 + 8) - v24;
      }

      DspLib::copy((v25 + 4 * v24), v30, __dst);
      v31 = &__dst[v9];
      DspLib::multiplyAdd(a3, v27, &v31[-v27], a8 - *(a2 + 4), *(a2 + 4));
      v32 = *(this + 2);
      *(a2 + 8) = v32;
      *(a2 + 40) = v32;
      *(a2 + 48) = 0;
      *a2 = 0;
      v16 = *(v31 - 1);
    }
  }

  else
  {
    v16 = a8 * a9;
    v17 = a7 - v16;
    Offset = DspLib::BandCombiner::findOffset(this, a7 - v16, *a2);
    *(a2 + 48) = Offset;
    v19 = *(this + 3);
    v20 = *(this + 2) - Offset;
    *(a2 + 8) = v20;
    v21 = *(a2 + 16);
    DspLib::multiplyAdd(v19 + 4 * Offset + 4, v20, v21, v17 * *(*(this + 6) + 4 * Offset), v16);
    if (v9 >= *(a2 + 8))
    {
      DspLib::copy(v21, v20, __dst);
      DspLib::fill(&__dst[v9 - (v9 - *(a2 + 8))], v9 - *(a2 + 8), v16);
      v9 = *(this + 2);
      *(a2 + 8) = v9;
      *(a2 + 48) = 0;
      v22 = 0.0;
    }

    else
    {
      DspLib::copy(v21, v9, __dst);
      v22 = (v17 * *(*(this + 9) + 4 * *(a2 + 48) + 4 * v9 + 4)) * *(*(this + 6) + 4 * *(a2 + 48));
    }

    *(a2 + 40) = v9;
    *a2 = v22;
  }

  *(a2 + 4) = v16;
LABEL_15:
  if (v16 > 0.99885)
  {
    *(a2 + 4) = 1065353216;
  }
}

unint64_t DspLib::BandCombiner::findOffset(DspLib::BandCombiner *this, float a2, float a3)
{
  result = 0;
  if (a2 > 0.0 && a3 > 0.0)
  {
    v5 = *(this + 2) - 1;
    v6 = *(this + 12);
    v7 = a3 / a2;
    if (v5 < 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = vcvtad_u64_f64(vcvtd_n_f64_u64(v5 + v8, 1uLL));
        if (v7 <= *(v6 + 4 * v9))
        {
          v5 = v9;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v5 - v8 > 1);
    }

    if (vabds_f32(*(v6 + 4 * v8), v7) <= vabds_f32(*(v6 + 4 * v5), v7))
    {
      return v8;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void DspLib::BandCombiner::process(DspLib::BandCombiner *a1, void *a2, uint64_t a3, int a4, float *a5, vDSP_Length __N)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (__N)
  {
    DspLib::clear(a5, __N);
    v23[0] = v23;
    MEMORY[0x1EEE9AC00](v11);
    v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (*a1)
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = *(a3 + 4 * v14);
        v17 = *(a1 + 21);
        if (v16 >= 1.0 && *(v17 + 56 * v14 + 4) >= 1.0)
        {
          DspLib::add();
        }

        v18 = v17 + 56 * v14;
        v19 = *(a1 + 19) != *(a1 + 18) && v15 == 1;
        v20 = 120;
        if (v19)
        {
          v20 = 144;
        }

        DspLib::BandCombiner::generateGainCurve(a1, v18, *(a1 + v20), (*(a1 + v20 + 8) - *(a1 + v20)) >> 2, v13, __N, *(*(a1 + 31) + 4 * v14), v16, 0.99);
        v21 = v13[__N - 1];
        if (v21 > 0.99885)
        {
          v21 = 1.0;
        }

        *(*(a1 + 31) + 4 * v14) = v21;
        DspLib::multiplyAccumulate(a5, __N, v13, __N, *(*a2 + 8 * v14));
        v14 = v15;
      }

      while (*a1 > v15++);
    }
  }
}

uint64_t std::unique_ptr<DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t std::vector<DspLib::ComplexVector>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) >= a2)
  {

    return std::vector<DspLib::ComplexVector>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x333333333333333)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v7;
    }

    v22 = a1;
    if (v9)
    {
      std::allocator<DspLib::ComplexVector>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 80 * v6;
    v19 = 0;
    v20 = v11;
    v21 = v11;
    v12 = 5 * a2;
    v13 = (v11 + 80 * a2);
    v14 = 16 * v12;
    do
    {
      DspLib::ComplexVector::ComplexVector(v11, 0, 0);
      v11 += 80;
      v14 -= 80;
    }

    while (v14);
    *&v21 = v13;
    v15 = *(a1 + 8);
    v16 = (v20 + *a1 - v15);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::ComplexVector>,DspLib::ComplexVector*>(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = *(a1 + 16);
    *(a1 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<DspLib::ComplexVector>::~__split_buffer(&v19);
  }
}

void sub_1DDC04A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::ComplexVector>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DspLib::ComplexVector>::__construct_at_end(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (a2)
  {
    v4 = (v3 + 80 * a2);
    v5 = 80 * a2;
    do
    {
      result = DspLib::ComplexVector::ComplexVector(v3, 0, 0);
      v3 = (v3 + 80);
      v5 -= 80;
    }

    while (v5);
    v3 = v4;
  }

  *(v2 + 8) = v3;
  return result;
}

void std::vector<DspLib::GainState>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      std::allocator<DspLib::GainState>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v16 = 0;
    v17 = 56 * v6;
    v11 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero((56 * v6), v11);
    v18 = 56 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 56 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::GainState>,DspLib::GainState*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<DspLib::GainState>::~__split_buffer(&v16);
  }
}

void sub_1DDC04C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::GainState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::GainState>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::GainState>,DspLib::GainState*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::GainState>,DspLib::GainState*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::GainState>,DspLib::GainState*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::GainState>,DspLib::GainState*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::GainState>,DspLib::GainState*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t std::__split_buffer<DspLib::GainState>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DspLib::GainState>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::GainState>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

float32x2_t DspLib::LowFlow::EnergyToVelocityLimit::setParameters(uint64_t a1, uint64_t a2)
{
  v2 = 24 * *a1;
  v3 = *(a2 + 4 * (v2 + 12));
  v4 = *(a2 + 4 * (v2 + 14));
  v5 = *(a2 + 4 * (v2 + 16));
  v6 = v3 > v4 || v4 > v5;
  if (!v6 && v5 <= *(a1 + 44))
  {
    *(a1 + 20) = v3;
    *(a1 + 24) = v4;
    *(a1 + 28) = v5;
  }

  v7 = *(a2 + 4 * (v2 + 13));
  v8 = *(a2 + 4 * (v2 + 15));
  v9 = *(a2 + 4 * (v2 + 17));
  v10 = v7 < v8 && v8 < v9.f32[0];
  if (v10 && (vcgt_f32(vdup_lane_s32(v9, 1), v9).u8[0] & 1) != 0)
  {
    *(a1 + 4) = v7;
    *(a1 + 8) = v8;
    *(a1 + 12) = v9;
  }

  else
  {
    v7 = *(a1 + 4);
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
  }

  v11 = v8 - v7;
  v12 = vdup_lane_s32(v9, 0);
  v12.f32[0] = v8;
  v13 = vsub_f32(v9, v12);
  v14 = *(a1 + 24);
  v15.i32[0] = vdup_lane_s32(v14, 1).u32[0];
  *(a1 + 32) = (v14.f32[0] - *(a1 + 20)) / v11;
  v15.i32[1] = *(a1 + 44);
  result = vdiv_f32(vsub_f32(v15, v14), v13);
  *(a1 + 36) = result;
  return result;
}

float DspLib::LowFlow::EnergyToVelocityLimit::process(DspLib::LowFlow::EnergyToVelocityLimit *this, float a2)
{
  v2 = *(this + 1);
  if (v2 >= a2)
  {
    return *(this + 5);
  }

  v3 = *(this + 2);
  if (v3 >= a2)
  {
    v5 = a2 - v2;
    v6 = *(this + 5);
    v7 = *(this + 8);
  }

  else
  {
    v4 = *(this + 3);
    if (v4 >= a2)
    {
      v5 = a2 - v3;
      v6 = *(this + 6);
      v7 = *(this + 9);
    }

    else
    {
      v5 = a2 - v4;
      v6 = *(this + 7);
      v7 = *(this + 10);
    }
  }

  return v6 + (v7 * v5);
}

float DspLib::LowFlow::Controller::setAttenuationLimit(float *a1, uint64_t a2)
{
  v2 = 24 * *a1;
  v3 = *(a2 + 4 * (v2 + 21));
  v4 = *(a2 + 4 * (v2 + 25));
  if (v4 <= v3)
  {
    a1[13] = v3;
    a1[14] = v4;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 4 * (v2 + 26));
  v7 = a1[14];
  if (v5 > v6)
  {
    v7 = v7 + (((v5 - v6) / -v6) * (a1[13] - v7));
  }

  return DspLib::dB2Amp(a1, -v7);
}

uint32x2_t DspLib::LowFlow::Controller::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *(a1 + 60) = DspLib::LowFlow::Controller::setAttenuationLimit(a1, a2);
  DspLib::LowFlow::EnergyToVelocityLimit::setParameters(a1 + 4, a2);
  v7 = 24 * *a1;
  v8.i32[0] = *(a2 + 4 * (v7 + 23));
  v9 = *(a2 + 4 * (v7 + 24));
  if (v8.f32[0] >= v9)
  {
    v8 = *(a1 + 68);
  }

  else
  {
    *(a1 + 68) = v8.i32[0];
    *(a1 + 72) = v9;
    v8.f32[1] = v9;
  }

  result = vcvt_u32_f32(vrnda_f32(vdiv_f32(vmul_n_f32(v8, a4), vdup_n_s32(0x473B8000u))));
  *(a1 + 76) = result;
  return result;
}

float DspLib::LowFlow::Controller::process(uint64_t a1, uint64_t a2, DspLib::LowFlow *a3, uint64_t a4, float *a5, vDSP_Length a6)
{
  *v12.i32 = DspLib::LowFlow::EnergyToVelocityLimit::process((a1 + 4), *(a2 + 4));
  *(a1 + 88) = v12.i32[0];
  v13 = vdup_lane_s32(v12, 0);
  v14 = vdiv_f32(vbsl_s8(vcgt_f32(v13, *(a1 + 92)), v13, *(a1 + 92)), v13);
  if (v14.f32[0] < v14.f32[1])
  {
    v14.f32[0] = v14.f32[1];
  }

  v15 = 1.0 / v14.f32[0];
  if (v15 < *(a1 + 60))
  {
    v15 = *(a1 + 60);
  }

  *(a1 + 64) = v15;
  DspLib::LowFlow::velocityClipper(a3, *(a1 + 76), *(a1 + 80), v15, a5, a6, v11);
  result = *(a1 + 92);
  v17 = *(a2 + 4);
  *(a1 + 92) = *a2;
  *(a1 + 96) = result;
  *(a1 + 84) = v17;
  return result;
}

void DspLib::LowFlow::velocityClipper(DspLib::LowFlow *this, const float *a2, unsigned int a3, float a4, float *a5, vDSP_Length a6, float *a7)
{
  v10 = a2;
  v32 = *MEMORY[0x1E69E9840];
  v12 = (this + 4 * a2);
  v13 = a3 - a2;
  v14 = DspLib::rms(v12, v13);
  if (a4 >= 1.0 || v14 <= 0.0)
  {

    DspLib::fill(a5, a6, 1.0);
  }

  else
  {
    v15 = DspLib::maxv(v12, v13);
    v16 = v15 * a4;
    MEMORY[0x1EEE9AC00](v17);
    v19 = (&v30 - v18);
    DspLib::clip(v12, v13, (&v30 - v18), -1.0, v15 * a4);
    v20 = DspLib::rms(v19, v13);
    if (fabsf(v20 - (a4 * v14)) > (v14 * 0.01))
    {
      v21 = v14 * a4;
      v30 = -a4;
      v31 = a4;
      v22 = v20 <= (v14 * a4);
      if (v20 <= (v14 * a4))
      {
        v23 = v15 * a4;
      }

      else
      {
        v23 = 0.0;
      }

      if (v20 <= (v14 * a4))
      {
        v24 = v20;
      }

      else
      {
        v24 = 0.0;
      }

      if (v20 <= (v14 * a4))
      {
        v25 = v15;
      }

      else
      {
        v25 = v15 * a4;
      }

      if (v22)
      {
        v26 = v14;
      }

      else
      {
        v26 = v20;
      }

      v27 = 20;
      do
      {
        v16 = v23 + ((-(v24 - (v31 * v14)) / (v26 - v24)) * (v25 - v23));
        DspLib::clip(v12, v13, v19, -1.0, v16);
        v28 = DspLib::rms(v19, v13);
        if (!--v27)
        {
          break;
        }

        if (v28 <= v21)
        {
          v24 = v28;
        }

        else
        {
          v26 = v28;
          v25 = v16;
        }

        if (v28 <= v21)
        {
          v23 = v16;
        }
      }

      while (fabsf(v28 + (v30 * v14)) > (v14 * 0.01));
    }

    DspLib::fill(a5, v10, 1.0);
    v29 = &a5[v10];
    DspLib::svdiv(v12, v13, v29, v16);
    DspLib::clip(v29, v13, 0.0, 1.0);
    DspLib::fill(&a5[a3], a6 - a3, 1.0);
  }
}

float DspLib::LowFlow::Controller::status(uint64_t a1, uint64_t a2)
{
  v4 = 750 * *a1;
  *(a2 + 4 * v4) = *(a1 + 92);
  *(a2 + 4 * (v4 + 425)) = *(a1 + 88);
  *(a2 + 4 * (750 * *a1 + 426)) = -DspLib::amp2dBSafe(a1, *(a1 + 64), 0.000001);
  v6 = DspLib::amp2dBSafe(v5, *(a1 + 60), 0.000001);
  v7 = *(a1 + 4);
  v8 = 750 * *a1;
  *(a2 + 4 * (v8 + 427)) = -v6;
  *(a2 + 4 * (v8 + 424)) = *(a1 + 84);
  result = *(a1 + 48);
  *(a2 + 4 * ((750 * v7) | 1u)) = result;
  return result;
}

void DspLib::LowFlow::Mitigator::initialize(DspLib::LowFlow::Mitigator *this, int a2, int a3)
{
  *this = a2;
  *(this + 16) = a3;
  *(this + 14) = a2;
  *(this + 15) = a2;
  if (a3)
  {
    operator new();
  }

  DspLib::LowFlow::Mitigator::reset(this);
}

void DspLib::LowFlow::Mitigator::reset(DspLib::LowFlow::Mitigator *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    DspLib::FFT::PartialFrameForwardSTFT::reset(v2);
  }

  *(this + 18) = 1067030938;
  *(this + 38) = 0;
  *(this + 30) = 1065353216;
  v3 = *(this + 23);
  if (v3)
  {
    DspLib::FFT::PartialFrameForwardSTFT::reset(v3);
  }

  DspLib::fill(*(this + 24), (*(this + 25) - *(this + 24)) >> 2, 1.0);
  v4 = *(this + 28);
  if (v4)
  {
    v5 = *v4;
    v6 = (*(v4 + 8) - *v4) >> 2;

    DspLib::clear(v5, v6);
  }
}

uint64_t *DspLib::LowFlow::Mitigator::uninitialize(DspLib::LowFlow::Mitigator *this)
{
  *(this + 1) = 0;
  *(this + 16) = 0;
  std::unique_ptr<DspLib::FFT::PartialFrameForwardSTFT>::reset[abi:ne200100](this + 6, 0);
  result = std::unique_ptr<DspLib::FFT::PartialFrameInverseSTFT>::reset[abi:ne200100](this + 23, 0);
  *(this + 4) = *(this + 3);
  *(this + 21) = *(this + 20);
  *(this + 25) = *(this + 24);
  return result;
}

uint64_t *std::unique_ptr<DspLib::FFT::PartialFrameForwardSTFT>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<DspLib::FFT::PartialFrameInverseSTFT>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint32x2_t DspLib::LowFlow::Mitigator::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) != a4)
  {
    *(a1 + 8) = a4;
    std::vector<float>::resize((a1 + 24), a4);
    DspLib::makePeriodicHannWindow(*(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 2);
    DspLib::multiply(*(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 2, 256.0 / *(a1 + 8));
    DspLib::sqrt(*(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 2);
    operator new();
  }

  v8 = 24 * *a1;
  *(a1 + 220) = *(a2 + 4 * (v8 + 8)) != 0.0;
  *(a1 + 221) = *(a2 + 4 * (v8 + 9)) != 0.0;
  *(a1 + 216) = 1.0 - expf(-1.0 / (((*(a2 + 4 * (v8 + 22)) * 1000.0) * 375.0) / 1000.0));
  return DspLib::LowFlow::Controller::setParameters(a1 + 56, a2, a3, a4);
}

void DspLib::LowFlow::Mitigator::releaseSmooth(DspLib::LowFlow::Mitigator *this, const float *a2, vDSP_Length a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  vDSP_vsbsm(v6, 1, *(v4 + 192), 1, (v4 + 216), (v7 - v5), 1, a3);
  DspLib::add();
}

void DspLib::LowFlow::Mitigator::process(uint64_t a1, void *a2, int a3, int a4, vDSP_Length a5, float *a6, vDSP_Length __N, int a8, uint64_t a9, float *a10, uint64_t a11, uint64_t a12)
{
  v12 = __N;
  if (a8)
  {
    MEMORY[0x1EEE9AC00](a1);
    v18 = (v26 - v17 + 24);
    DspLib::LowFlow::Controller::process(a1 + 56, v19, v20, v20, (v26 - v17 + 24), a5);
    if (*(a1 + 220) == 1)
    {
      DspLib::LowFlow::Mitigator::releaseSmooth(a1, v18, a5);
    }

    DspLib::fill(*(a1 + 192), (*(a1 + 200) - *(a1 + 192)) >> 2, 1.0);
  }

  if (*(a1 + 221) != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v21);
    v23 = *(a1 + 8) >> 1;
    v26[0] = v24;
    v26[1] = (v26 - v22 + 24) & 0xFFFFFFFFFFFFFFC0;
    v26[2] = v23;
    DspLib::FFT::PartialFrameForwardSTFT::process(*(a1 + 48), a2, v12, v26);
  }

  DspLib::clear(a6, v12);
  if (a10)
  {
    DspLib::clear(a10, v12);
  }
}

float DspLib::LowFlow::Mitigator::status(uint64_t a1, uint64_t a2)
{
  DspLib::copy(*(a1 + 192), (*(a1 + 200) - *(a1 + 192)) >> 2, (a2 + 4 * (750 * *a1 + 428)));

  return DspLib::LowFlow::Controller::status(a1 + 56, a2);
}

void std::default_delete<DspLib::LinearDelay>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1E12BD160);
  }
}

uint64_t DspLib::AnalyticSignalTransformBase::initialize(DspLib::AnalyticSignalTransformBase *this, unsigned int a2)
{
  v3 = *(this + 8);
  v4 = *(this + 3);
  if (a2 >= 0x41)
  {
    DspLib::AnalyticSignalTransformBase::initialize();
  }

  else if (a2)
  {
    *(this + 3) = a2;
  }

  else
  {
    DspLib::AnalyticSignalTransformBase::initialize();
  }

  if (v4 == a2)
  {
    return v3 ^ 1u;
  }

  else
  {
    return 1;
  }
}

uint64_t DspLib::AnalyticSignalTransformBiquad::initialize(DspLib::AnalyticSignalTransformBiquad *this, unsigned int a2)
{
  v3 = DspLib::AnalyticSignalTransformBase::initialize(this, a2);
  v8[0] = xmmword_1DE098EB0;
  v8[1] = unk_1DE098EC0;
  v9 = 0x3D81CD60BF567621;
  v6[0] = xmmword_1DE098ED8;
  v6[1] = unk_1DE098EE8;
  v7 = 0x3F5EE547BFEF2B02;
  DspLib::Biquad::Filter::initialize((this + 16), (2 * *(this + 3)), 2uLL);
  if (*(this + 3))
  {
    v4 = 0;
    do
    {
      DspLib::Biquad::Filter::setCoefficients(this + 16, v8, 2, 0, v4);
      DspLib::Biquad::Filter::setCoefficients(this + 16, v6, 2, 0, (v4++ + *(this + 3)));
    }

    while (v4 < *(this + 3));
  }

  *(this + 8) = 1;
  (*(*this + 40))(this);
  return v3;
}

void DspLib::AnalyticSignalTransformBiquad::process(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    if (*(a2 + 16))
    {
      MEMORY[0x1EEE9AC00](a1);
      v10 = &(&v19)[-v9];
      if (v8 >= 0x200)
      {
        v11 = 512;
      }

      else
      {
        v11 = v8;
      }

      bzero(&(&v19)[-v9], v11);
      v12 = *(a1 + 12);
      v13 = (2 * v12);
      MEMORY[0x1EEE9AC00](v14);
      if (v15 >= 0x200)
      {
        v16 = 512;
      }

      else
      {
        v16 = v15;
      }

      bzero(&(&v19)[-v13], v16);
      if (v12)
      {
        v19 = a4;
        v17 = *a2;
        memmove(v10, *a2, 8 * v12);
        memmove(&v10[v12], v17, 8 * v12);
        memmove(&(&v19)[-v13], *a3, 8 * v12);
        memmove(&(&(&v19)[v12])[-v13], *v19, 8 * v12);
      }

      v18 = *(a2 + 16);
      *&v22 = v10;
      *(&v22 + 1) = (2 * v12);
      v23 = v18;
      *&v20 = &(&v19)[-v13];
      *(&v20 + 1) = *(&v22 + 1);
      v21 = v18;
      DspLib::Biquad::Filter::process((a1 + 16), &v22, &v20);
    }
  }

  else
  {
    DspLib::AnalyticSignalTransformBiquad::process();
  }
}

uint64_t DspLib::AnalyticSignalTransformAllpass::initialize(DspLib::AnalyticSignalTransformAllpass *this, unsigned int a2)
{
  v3 = DspLib::AnalyticSignalTransformBase::initialize(this, a2);
  DspLib::Biquad::Design::HilbertTransfrom::real(v8);
  DspLib::Biquad::Design::HilbertTransfrom::imag(v7);
  DspLib::Biquad::Filter::initialize((this + 16), (2 * *(this + 3)), 4uLL);
  if (*(this + 3))
  {
    v4 = 0;
    do
    {
      DspLib::Biquad::Filter::setCoefficients(this + 16, v8, 4, 0, v4);
      DspLib::Biquad::Filter::setCoefficients(this + 16, v7, 4, 0, (v4++ + *(this + 3)));
      v5 = *(this + 3);
    }

    while (v4 < v5);
  }

  else
  {
    v5 = 0;
  }

  std::vector<float>::resize(this + 11, v5);
  *(this + 8) = 1;
  (*(*this + 40))(this);
  return v3;
}

void DspLib::AnalyticSignalTransformAllpass::uninitialize(DspLib::AnalyticSignalTransformAllpass *this)
{
  *(this + 8) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 16));
  *(this + 12) = *(this + 11);
}

void DspLib::AnalyticSignalTransformAllpass::reset(DspLib::AnalyticSignalTransformAllpass *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 64));
  v2 = *(this + 11);
  v3 = *(this + 12);
  if (v2 != v3)
  {

    bzero(v2, v3 - v2);
  }
}

void DspLib::AnalyticSignalTransformAllpass::process(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    if (*(a2 + 16))
    {
      MEMORY[0x1EEE9AC00](a1);
      v10 = &(&v21)[-v9];
      if (v8 >= 0x200)
      {
        v11 = 512;
      }

      else
      {
        v11 = v8;
      }

      bzero(&(&v21)[-v9], v11);
      v12 = *(a1 + 12);
      v13 = (2 * v12);
      MEMORY[0x1EEE9AC00](v14);
      if (v15 >= 0x200)
      {
        v16 = 512;
      }

      else
      {
        v16 = v15;
      }

      bzero(&(&v21)[-v13], v16);
      if (v12)
      {
        v21 = a4;
        v17 = *a2;
        memmove(v10, *a2, 8 * v12);
        memmove(&v10[v12], v17, 8 * v12);
        memmove(&(&v21)[-v13], *a3, 8 * v12);
        memmove(&(&(&v21)[v12])[-v13], *v21, 8 * v12);
      }

      v18 = *(a2 + 16);
      *&v24 = v10;
      *(&v24 + 1) = (2 * v12);
      v25 = v18;
      *&v22 = &(&v21)[-v13];
      *(&v22 + 1) = *(&v24 + 1);
      v23 = v18;
      DspLib::Biquad::Filter::process((a1 + 16), &v24, &v22);
      if (*(a1 + 12))
      {
        v19 = 0;
        v20 = 0;
        do
        {
          DspLib::SingleSampleDelay::process((*(a1 + 88) + v19), *(*a3 + 8 * v20), *(a3 + 16), *(*a3 + 8 * v20), *(a3 + 16));
          ++v20;
          v19 += 4;
        }

        while (v20 < *(a1 + 12));
      }
    }
  }

  else
  {
    DspLib::AnalyticSignalTransformAllpass::process();
  }
}

uint64_t DspLib::AnalyticSignalTransformPolyPhase::initialize(DspLib::AnalyticSignalTransformPolyPhase *this, unsigned int a2)
{
  v3 = DspLib::AnalyticSignalTransformBase::initialize(this, a2);
  DspLib::ChannelBuffer::resize((this + 448), *(this + 3), 0x21uLL);
  DspLib::ChannelBuffer::resize((this + 496), *(this + 3), 0x21uLL);
  DspLib::ChannelBuffer::resize((this + 544), *(this + 3), 0x40uLL);
  DspLib::ChannelBuffer::resize((this + 592), *(this + 3), 0x40uLL);
  v7[0] = xmmword_1DE098F00;
  v7[1] = unk_1DE098F10;
  v8 = 0x3F79623EBFFCAF34;
  v5[0] = xmmword_1DE098F28;
  v5[1] = unk_1DE098F38;
  v6 = 0x3F6FBC03BFF7CD2CLL;
  DspLib::Biquad::Filter::initialize((this + 16), *(this + 3), 2uLL);
  DspLib::Biquad::Filter::initialize((this + 88), *(this + 3), 2uLL);
  DspLib::Biquad::Filter::initialize((this + 160), *(this + 3), 2uLL);
  DspLib::Biquad::Filter::initialize((this + 232), *(this + 3), 2uLL);
  DspLib::Biquad::Filter::setCoefficients(this + 16, v7, 2, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(this + 88, v7, 2, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(this + 160, v5, 2, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(this + 232, v5, 2, 0, 0x41uLL);
  std::vector<float>::resize(this + 38, *(this + 3));
  std::vector<float>::resize(this + 41, *(this + 3));
  std::vector<float>::resize(this + 44, *(this + 3));
  std::vector<float>::resize(this + 47, *(this + 3));
  *(this + 25) = xmmword_1DE098EA0;
  *(this + 26) = xmmword_1DE098EA0;
  *(this + 27) = xmmword_1DE098EA0;
  *(this + 8) = 1;
  (*(*this + 40))(this);
  return v3;
}

void DspLib::AnalyticSignalTransformPolyPhase::uninitialize(DspLib::AnalyticSignalTransformPolyPhase *this)
{
  *(this + 8) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 16));
  DspLib::Biquad::Filter::uninitialize((this + 88));
  DspLib::Biquad::Filter::uninitialize((this + 160));
  DspLib::Biquad::Filter::uninitialize((this + 232));
  *(this + 39) = *(this + 38);
  *(this + 42) = *(this + 41);
  *(this + 45) = *(this + 44);
  *(this + 48) = *(this + 47);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 56);
  *(this + 60) = *(this + 59);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 62);
  *(this + 66) = *(this + 65);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 68);
  *(this + 72) = *(this + 71);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 74);
  *(this + 78) = *(this + 77);
}

void DspLib::AnalyticSignalTransformPolyPhase::reset(DspLib::AnalyticSignalTransformPolyPhase *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 64));
  DspLib::Biquad::SetupWrapper::reset((this + 136));
  DspLib::Biquad::SetupWrapper::reset((this + 208));
  DspLib::Biquad::SetupWrapper::reset((this + 280));
  v2 = *(this + 38);
  v3 = *(this + 39);
  if (v2 != v3)
  {
    bzero(v2, v3 - v2);
  }

  v4 = *(this + 41);
  v5 = *(this + 42);
  if (v4 != v5)
  {
    bzero(v4, v5 - v4);
  }

  v6 = *(this + 44);
  v7 = *(this + 45);
  if (v6 != v7)
  {
    bzero(v6, v7 - v6);
  }

  v8 = *(this + 47);
  v9 = *(this + 48);
  if (v8 != v9)
  {
    bzero(v8, v9 - v8);
  }

  *(this + 101) = 0;
  *(this + 103) = 0;
  *(this + 105) = 0;
  *(this + 107) = 0;
  *(this + 109) = 0;
  *(this + 111) = 0;
}

void DspLib::AnalyticSignalTransformPolyPhase::process(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v29 = a3;
  v30 = a4;
  v34[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v7 = 0;
      do
      {
        v31 = &v28;
        v8 = v5 - v7;
        if (v8 >= 0x40)
        {
          v9 = 64;
        }

        else
        {
          v9 = v8;
        }

        MEMORY[0x1EEE9AC00](a1);
        v11 = &v28 - ((v10 + 15) & 0xFFFFFFFF0);
        v12 = 512;
        if (v10 >= 0x200)
        {
          v13 = 512;
        }

        else
        {
          v13 = v10;
        }

        bzero(&v28 - ((v10 + 15) & 0xFFFFFFFF0), v13);
        v14 = *(a1 + 12);
        MEMORY[0x1EEE9AC00](v15);
        v16 = (8 * v14 + 15) & 0xFFFFFFFF0;
        if ((8 * v14) < 0x200)
        {
          v12 = 8 * v14;
        }

        bzero(&v28 - v16, v12);
        MEMORY[0x1EEE9AC00](v17);
        bzero(&v28 - v16, v12);
        if (v14)
        {
          v18 = *a2;
          v19 = *v29;
          v20 = v14;
          v21 = (&v28 - v16);
          v22 = (&v28 - v16);
          v23 = v11;
          v24 = *v30;
          do
          {
            v25 = *v18++;
            *v23++ = v25 + 4 * v7;
            v26 = *v19++;
            *v22++ = v26 + 4 * v7;
            v27 = *v24++;
            *v21++ = v27 + 4 * v7;
            --v20;
          }

          while (v20);
        }

        v34[0] = v11;
        v34[1] = v14;
        v34[2] = v9;
        v33[0] = &v28 - v16;
        v33[1] = v14;
        v33[2] = v9;
        v32[0] = &v28 - v16;
        v32[1] = v14;
        v32[2] = v9;
        DspLib::AnalyticSignalTransformPolyPhase::processBlock(a1, v34, v33, v32);
        v7 = (v9 + v7);
        v5 = *(a2 + 16);
      }

      while (v7 < v5);
    }
  }

  else
  {
    DspLib::AnalyticSignalTransformPolyPhase::process();
  }
}

void DspLib::AnalyticSignalTransformPolyPhase::processBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a1 + 480) - *(a1 + 472)) >> 3;
  v34 = *(a1 + 472);
  *&v35 = v8;
  v9 = *(a1 + 448);
  if (*(a1 + 456) == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9[1] - *v9) >> 2;
  }

  *(&v35 + 1) = v10;
  *v33 = *a2;
  *&v33[16] = *(a2 + 16);
  DspLib::DownSampler::process((a1 + 400), v33, &v34);
  if (*(a1 + 12))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      DspLib::SingleSampleDelay::process((*(a1 + 304) + v11), *(*a2 + 8 * v12), *(a2 + 16), *(*a3 + 8 * v12), *(a3 + 16));
      ++v12;
      v11 += 4;
    }

    while (v12 < *(a1 + 12));
  }

  v13 = (*(a1 + 528) - *(a1 + 520)) >> 3;
  *v33 = *(a1 + 520);
  *&v33[8] = v13;
  v14 = *(a1 + 496);
  if (*(a1 + 504) == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v14[1] - *v14) >> 2;
  }

  *&v33[16] = v15;
  *v32 = *a3;
  *&v32[8] = *(a3 + 8);
  DspLib::DownSampler::process((a1 + 408), v32, v33);
  v16 = *(a1 + 568);
  v17 = (*(a1 + 576) - v16) >> 3;
  v18 = *(&v35 + 1);
  *v32 = __PAIR128__(v35, v34);
  *&v32[16] = *(&v35 + 1);
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v31 = *(&v35 + 1);
  DspLib::Biquad::Filter::process((a1 + 16), v32, &v30);
  v19 = *(a1 + 616);
  v20 = (*(a1 + 624) - v19) >> 3;
  *v32 = *v33;
  *&v32[8] = *&v33[8];
  v29 = v20;
  *&v30 = v19;
  *(&v30 + 1) = v20;
  v31 = *(&v35 + 1);
  v28 = *(&v35 + 1);
  DspLib::Biquad::Filter::process((a1 + 88), v32, &v30);
  *v32 = v16;
  *&v32[8] = v17;
  *&v32[16] = v18;
  v30 = *a3;
  v31 = *(a3 + 16);
  DspLib::UpSampler::process((a1 + 416), v32, &v30);
  if (*(a1 + 12))
  {
    v21 = 0;
    v22 = 0;
    do
    {
      DspLib::SingleSampleDelay::process((*(a1 + 328) + v21), *(*a3 + 8 * v22), *(a3 + 16), *(*a3 + 8 * v22), *(a3 + 16));
      ++v22;
      v21 += 4;
    }

    while (v22 < *(a1 + 12));
  }

  v23 = *(a2 + 16);
  *v32 = v19;
  *&v32[8] = v29;
  *&v32[16] = v28;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v31 = v23;
  DspLib::UpSampler::process((a1 + 424), v32, &v30);
  *v32 = *a3;
  *&v32[16] = *(a3 + 16);
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v31 = v23;
  DspLib::add(v32, &v30);
  *v32 = v34;
  *&v32[8] = v35;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v31 = v18;
  DspLib::Biquad::Filter::process((a1 + 160), v32, &v30);
  *v32 = *v33;
  *&v32[8] = *&v33[8];
  *&v30 = v19;
  *(&v30 + 1) = v29;
  v31 = v28;
  DspLib::Biquad::Filter::process((a1 + 232), v32, &v30);
  *v32 = v16;
  *&v32[8] = v17;
  *&v32[16] = v18;
  v30 = *a4;
  v31 = *(a4 + 16);
  DspLib::UpSampler::process((a1 + 432), v32, &v30);
  if (*(a1 + 12))
  {
    v24 = 0;
    v25 = 0;
    do
    {
      DspLib::SingleSampleDelay::process((*(a1 + 352) + v24), *(*a4 + 8 * v25), *(a4 + 16), *(*a4 + 8 * v25), *(a4 + 16));
      ++v25;
      v24 += 4;
    }

    while (v25 < *(a1 + 12));
  }

  *v32 = v19;
  *&v32[8] = v29;
  *&v32[16] = v28;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v31 = v23;
  DspLib::UpSampler::process((a1 + 440), v32, &v30);
  *v32 = *a4;
  *&v32[16] = *(a4 + 16);
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v31 = v23;
  DspLib::add(v32, &v30);
  if (*(a1 + 12))
  {
    v26 = 0;
    v27 = 0;
    do
    {
      DspLib::SingleSampleDelay::process((*(a1 + 376) + v26), *(*a3 + 8 * v27), *(a3 + 16), *(*a3 + 8 * v27), *(a3 + 16));
      ++v27;
      v26 += 4;
    }

    while (v27 < *(a1 + 12));
  }
}

uint64_t DspLib::EnvelopeProcessor::initialize(DspLib::EnvelopeProcessor *this, unsigned int a2)
{
  v3 = *this;
  v4 = *(this + 1);
  if (a2 >= 0x41)
  {
    DspLib::EnvelopeProcessor::initialize();
  }

  else if (a2)
  {
    *(this + 1) = a2;
    std::vector<float *>::resize(this + 13, a2);
    std::vector<float *>::resize(this + 16, *(this + 1));
    DspLib::ChannelBuffer::resize((this + 8), *(this + 1), 0x40uLL);
    DspLib::ChannelBuffer::resize((this + 56), *(this + 1), 0x40uLL);
    v6 = *(this + 38);
    switch(v6)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }

    (*(**(this + 20) + 24))(*(this + 20), *(this + 1));
    *this = 1;
    v7 = *(this + 20);
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }
  }

  else
  {
    DspLib::EnvelopeProcessor::initialize();
  }

  if (v4 == a2)
  {
    return v3 ^ 1u;
  }

  else
  {
    return 1;
  }
}

uint64_t DspLib::EnvelopeProcessor::reset(DspLib::EnvelopeProcessor *this)
{
  result = *(this + 20);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t DspLib::EnvelopeProcessor::uninitialize(DspLib::EnvelopeProcessor *this)
{
  *this = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 1);
  *(this + 5) = *(this + 4);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 7);
  *(this + 11) = *(this + 10);
  *(this + 14) = *(this + 13);
  *(this + 17) = *(this + 16);
  result = *(this + 20);
  *(this + 20) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void DspLib::EnvelopeProcessor::process(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1)
  {
    v6 = a2[2];
    if (v6 >= 0x41)
    {
      v7 = 0;
      do
      {
        v8 = v6 - v7;
        if (v8 >= 0x40)
        {
          v9 = 64;
        }

        else
        {
          v9 = v8;
        }

        v10 = a2[1];
        v11 = *(a1 + 104);
        v12 = *(a1 + 112);
        if (v10)
        {
          v13 = 0;
          v14 = *a2;
          do
          {
            *&v11[2 * v13] = *(v14 + 8 * v13) + 4 * v7;
            ++v13;
          }

          while (v10 > v13);
        }

        v15 = a3[1];
        v16 = *(a1 + 128);
        v17 = *(a1 + 136);
        if (v15)
        {
          v18 = 0;
          v19 = *a3;
          do
          {
            *(v16 + 8 * v18) = *(v19 + 8 * v18) + 4 * v7;
            ++v18;
          }

          while (v15 > v18);
        }

        v22.realp = v11;
        v22.imagp = ((v12 - v11) >> 3);
        v23 = v9;
        *&v20 = v16;
        *(&v20 + 1) = (v17 - v16) >> 3;
        v21 = v9;
        DspLib::EnvelopeProcessor::processBlock(a1, &v22, &v20);
        v7 += v9;
        v6 = a2[2];
      }

      while (v7 < v6);
    }

    else
    {
      v22 = *a2;
      v23 = a2[2];
      v20 = *a3;
      v21 = a3[2];
      DspLib::EnvelopeProcessor::processBlock(a1, &v22, &v20);
    }
  }

  else
  {
    DspLib::EnvelopeProcessor::process();
  }
}

void DspLib::EnvelopeProcessor::processBlock(uint64_t a1, DSPSplitComplex *a2, void *a3)
{
  if (*a1)
  {
    realp = a2[1].realp;
    if (realp)
    {
      v7 = *(a1 + 32);
      v8 = (*(a1 + 40) - v7) >> 3;
      v9 = *(a1 + 80);
      v10 = (*(a1 + 88) - v9) >> 3;
      v11 = *(a1 + 160);
      __A = *a2;
      v19 = a2[1].realp;
      v17[0] = v7;
      v17[1] = v8;
      v17[2] = realp;
      v16[0] = v9;
      v16[1] = v10;
      v16[2] = realp;
      (*(*v11 + 48))(v11, &__A, v17, v16);
      if (*(a1 + 4))
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(*(a1 + 56) + v12);
          v15 = a2[1].realp;
          __A.realp = *(*(a1 + 8) + v12);
          __A.imagp = v14;
          v19 = v15;
          vDSP_zvabs(&__A, 1, *(*a3 + 8 * v13++), 1, v15);
          v12 += 24;
        }

        while (v13 < *(a1 + 4));
      }
    }
  }

  else
  {
    DspLib::EnvelopeProcessor::processBlock();
  }
}

void DspLib::AnalyticSignalTransformBiquad::~AnalyticSignalTransformBiquad(DspLib::AnalyticSignalTransformBiquad *this)
{
  *this = &unk_1F591AAB8;
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 64));
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F591AAB8;
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 64));
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void DspLib::AnalyticSignalTransformAllpass::~AnalyticSignalTransformAllpass(DspLib::AnalyticSignalTransformAllpass *this)
{
  *this = &unk_1F591AB20;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 64));
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1F591AB20;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 64));
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E12BD160);
}

void DspLib::AnalyticSignalTransformPolyPhase::~AnalyticSignalTransformPolyPhase(DspLib::AnalyticSignalTransformPolyPhase *this)
{
  DspLib::AnalyticSignalTransformPolyPhase::~AnalyticSignalTransformPolyPhase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591AB88;
  DspLib::ChannelBuffer::~ChannelBuffer((this + 592));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 544));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 496));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 448));
  v2 = *(this + 47);
  if (v2)
  {
    *(this + 48) = v2;
    operator delete(v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    *(this + 45) = v3;
    operator delete(v3);
  }

  v4 = *(this + 41);
  if (v4)
  {
    *(this + 42) = v4;
    operator delete(v4);
  }

  v5 = *(this + 38);
  if (v5)
  {
    *(this + 39) = v5;
    operator delete(v5);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 280));
  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 208));
  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 136));
  v8 = *(this + 14);
  if (v8)
  {
    *(this + 15) = v8;
    operator delete(v8);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 64));
  v9 = *(this + 5);
  if (v9)
  {
    *(this + 6) = v9;
    operator delete(v9);
  }
}

void DspLib::AnalyticSignalTransformBase::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 16);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 15);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::AnalyticSignalTransformBiquad::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 81);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::AnalyticSignalTransformAllpass::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 135);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::AnalyticSignalTransformPolyPhase::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 270);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::EnvelopeProcessor::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 365);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 364);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::EnvelopeProcessor::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 421);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::EnvelopeProcessor::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/HilbertTransform/dsp/DspLibHilbertTransform.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 443);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

DspLib::LoudnessNormalizer::Algorithm *DspLib::LoudnessNormalizer::Algorithm::Algorithm(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = this + 364;
  v3 = DspLib::AlgorithmBase::AlgorithmBase(this, &_ZGRN6DspLib18LoudnessNormalizer10ParametersL8kDefaultE_, 0x47uLL, &_ZGRN6DspLib18LoudnessNormalizer10ParametersL8kMinimumE_, 71, &_ZGRN6DspLib18LoudnessNormalizer10ParametersL8kMaximumE_, 71);
  *(v3 + 240) = 0;
  *v3 = &unk_1F591ABF0;
  *(v3 + 360) = 0;
  *(v3 + 248) = 0u;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *v2 = xmmword_1DE095FA0;
  *(v2 + 1) = xmmword_1DE095FA0;
  *(v3 + 396) = 1;
  *(v3 + 404) = 0;
  *(v3 + 408) = 1;
  *(v3 + 416) = 0x100000000;
  *(v3 + 424) = 0;
  *(v3 + 432) = 0;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0;
  *(v3 + 560) = 1;
  *(v3 + 640) = 0;
  *(v3 + 648) = 0;
  *(v3 + 800) = 0;
  *(v3 + 784) = 0u;
  *(v3 + 852) = 0;
  *(v3 + 864) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0;
  *(v3 + 656) = 0u;
  *(v3 + 672) = 0u;
  *(v3 + 688) = 0u;
  *(v3 + 704) = 0u;
  *(v3 + 720) = 0u;
  *(v3 + 736) = 0u;
  *(v3 + 752) = 0u;
  *(v3 + 766) = 0u;
  *(v3 + 840) = 0;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 847) = 0;
  *(v3 + 844) = 0;
  bzero((v3 + 872), 0x209uLL);
  *(this + 349) = 1065353216;
  *(this + 176) = 0;
  *(this + 354) = 0;
  *(this + 710) = 256;
  *(this + 1422) = 1;
  *(this + 1400) = 1;
  DspLib::elapsedTimeInMilliseconds((this + 1408), v4);
  *(this + 354) = 0;
  *(this + 1420) = 1;
  *(v2 + 139) = 0;
  *(this + 178) = 0;
  *(this + 1432) = 0u;
  *(this + 1446) = 0;
  *(this + 91) = 0u;
  *(this + 1472) = 0;
  DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::IntegratedLoudnessProcessor(this + 1536, 0);
  *(this + 9688) = 0;
  *(this + 606) = 0u;
  *(this + 607) = 0u;
  *(this + 608) = 0u;
  *(this + 609) = 0u;
  *(this + 9756) = 0u;
  *(this + 611) = 0u;
  *(this + 9792) = 0;
  *(this + 2450) = 0;
  *(this + 1231) = 0;
  *(this + 604) = 0u;
  *(this + 2420) = 0;
  *(this + 613) = 0u;
  *(this + 614) = 0u;
  *(this + 9840) = 0;
  DspLib::ChannelBuffer::ChannelBuffer((this + 9856), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 9904), 0, 0);
  *(this + 627) = 0u;
  *(this + 626) = 0u;
  *(this + 625) = 0u;
  *(this + 624) = 0u;
  *(this + 623) = 0u;
  *(this + 622) = 0u;
  *(this + 10048) = 0;
  *(this + 2529) = 0;
  *(this + 10052) = 0u;
  *(this + 10068) = 0u;
  *(this + 10084) = 0u;
  *(this + 10100) = 0u;
  return this;
}

void sub_1DDC07A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  DspLib::ChannelBuffer::~ChannelBuffer((v10 + 9856));
  v15 = *v13;
  if (*v13)
  {
    *(v10 + 9816) = v15;
    operator delete(v15);
  }

  DspLib::LoudnessNormalizer::ShapingFilter::~ShapingFilter((v10 + v12));
  v16 = *(v10 + 9664);
  *(v10 + 9664) = 0;
  if (v16)
  {
    MEMORY[0x1E12BD150](v16, 64);
  }

  v17 = *(v10 + 1384);
  *(v10 + 1384) = 0;
  if (v17)
  {
    std::default_delete<DspLib::CircularDelay>::operator()[abi:ne200100](v10 + 1384, v17);
  }

  a10 = (v10 + 1360);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&a10);
  DspLib::Biquad::Filter::~Filter((v10 + 864));
  DspLib::Biquad::ParametricFilter::~ParametricFilter((v10 + 648));
  SimpleMeters::~SimpleMeters((v10 + 576));
  v18 = *(v10 + 536);
  if (v18)
  {
    *(v10 + 544) = v18;
    operator delete(v18);
  }

  DspLib::Biquad::ParametricFilter::~ParametricFilter((v10 + 432));
  DspLib::Biquad::ParametricFilter::~ParametricFilter(v11);
  DspLib::AlgorithmBase::~AlgorithmBase(v10);
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::initialize(DspLib::LoudnessNormalizer::Algorithm *this, int a2, double a3)
{
  v6 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (a2)
  {
    if (a3 == 0.0)
    {
      DspLib::LoudnessNormalizer::Algorithm::initialize();
    }

    else
    {
      v7 = (*(*this + 232))(this);
      std::vector<float>::resize(this + 1226, v7);
      **(this + 1226) = 1065353216;
      *(this + 1229) = 0;
      *(this + 86) = 0;
      DspLib::Biquad::ParametricFilter::initialize((this + 432), 1uLL, *(this + 2), 1uLL);
      DspLib::Biquad::ParametricFilter::initialize((this + 240), 1uLL, *(this + 2), 1uLL);
      DspLib::Biquad::ParametricFilter::setParametricEQ(this + 240, 0x4348000000000006uLL, 0x3F80000000000000, 0, 0x41uLL);
      v8 = (*(*this + 64))(this);
      std::vector<DspLib::CircularDelay>::resize(this + 170, v8);
      v9 = *(this + 2);
      *(this + 194) = v9;
      *(this + 8) = 1;
      (*(*this + 160))(this);
      v10 = (*(*this + 208))(this);
      (*(*this + 216))(this, v10);
      v11 = (*(*this + 152))(this, 0);
      DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v11);
      DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation(this, v12);
      DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters(this);
    }
  }

  else
  {
    DspLib::LoudnessNormalizer::Algorithm::initialize();
  }

  return v6;
}

void DspLib::LoudnessNormalizer::Algorithm::resetLoudnessHistory(DspLib::LoudnessNormalizer::Algorithm *this, float a2)
{
  DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation(this, a2);

  DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters(this);
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::uninitialize(DspLib::LoudnessNormalizer::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 96) = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 1238);
  *(this + 1242) = *(this + 1241);
  *(this + 1245) = *(this + 1244);
  *(this + 1248) = *(this + 1247);
  *(this + 1251) = *(this + 1250);
  *(this + 1254) = *(this + 1253);
  *(this + 1227) = *(this + 1226);
  *(this + 1229) = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 1232);
  *(this + 1236) = *(this + 1235);
  DspLib::LinearDelay::setLength(this + 67, 0);
  v2 = *(this + 1208);
  *(this + 1208) = 0;
  if (v2)
  {
    MEMORY[0x1E12BD150](v2, 64);
  }

  DspLib::FastMedianFilter::uninitialize((this + 576));
  v3 = *(this + 173);
  *(this + 173) = 0;
  if (v3)
  {
    std::default_delete<DspLib::CircularDelay>::operator()[abi:ne200100](this + 1384, v3);
  }

  DspLib::Biquad::ParametricFilter::uninitialize((this + 432));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 240));
  DspLib::Biquad::Filter::uninitialize((this + 864));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 648));
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 170);
  v4 = *(this + 1263);
  *(this + 1263) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = *(this + 1264);
  *(this + 1264) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 8) = 0;
  return result;
}

double DspLib::LoudnessNormalizer::Algorithm::reset(DspLib::LoudnessNormalizer::Algorithm *this)
{
  if (!DspLib::LoudnessNormalizer::Parameters::resetModeFlagsAreSet(1, *(this + 213)))
  {
    v2 = (*(*this + 152))(this, 0);
    DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v2);
    DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation(this, v3);
    DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters(this);
  }

  v4 = *(this + 170);
  v5 = *(this + 171);
  while (v4 != v5)
  {
    DspLib::CircularDelay::reset(v4);
    v4 = (v4 + 32);
  }

  *(this + 9840) = 0;
  *(this + 1231) = 0;
  result = 0.0;
  *(this + 99) = 0;
  *(this + 200) = 0;
  *(this + 101) = 0;
  *(this + 103) = 0;
  *(this + 209) = 0;
  return result;
}

void DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation(DspLib::LoudnessNormalizer::Algorithm *this, float a2)
{
  if (*(this + 8))
  {
    if (*(this + 864) == 1)
    {
      DspLib::Biquad::SetupWrapper::reset((this + 912));
    }

    if (*(this + 648) == 1)
    {
      DspLib::Biquad::SetupWrapper::reset((this + 696));
    }

    DspLib::Biquad::SetupWrapper::reset((this + 480));
    if (*(this + 211) < 2u)
    {
      v8 = DspLib::dB2Power(v4, a2 + 0.691);
      DspLib::Biquad::Filter::initializeStates((this + 432), v8);
      DspLib::fill(*(this + 67), (*(this + 68) - *(this + 67)) >> 2, v8);
    }

    else
    {
      v5 = DspLib::dB2Power(v4, -70.0);
      DspLib::Biquad::Filter::initializeStates((this + 432), v5);
      v7 = DspLib::dB2Power(v6, -70.0);
      DspLib::fill(*(this + 67), (*(this + 68) - *(this + 67)) >> 2, v7);
      *(this + 101) = a2;
    }

    DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::reset((this + 1536), a2);
    *(this + 2418) = 0;
    v9 = *(this + 1208);
    if (v9)
    {
      DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::reset(v9, a2);
    }

    *(this + 2419) = a2;
    v10 = 0.0;
    if (*(this + 849) == 1)
    {
      v11 = (*(*this + 152))(this, 0, 0.0);
      v10 = DspLib::LoudnessNormalizer::Parameters::targetLoudness(v11) - *(this + 2419);
    }

    *(this + 2420) = v10;
    v12 = *(this + 173);
    if (v12)
    {
      DspLib::fill(*v12, (*(v12 + 8) - *v12) >> 2, a2);
    }

    *(this + 158) = a2;
    DspLib::FastMedianFilter::reset((this + 576));
    *(this + 365) = a2;
    *(this + 366) = a2;
    DspLib::Biquad::SetupWrapper::reset((this + 288));
    *(this + 2515) = a2;
    __D = *(this + 2420) + a2;
    DspLib::LoudnessNormalizer::GainTable::gainForLevel(this + 936, &__D, 1uLL);
    v13 = __D;
    *(this + 2513) = __D;
    v15 = DspLib::dB2Amp(v14, v13);
    DspLib::Biquad::Filter::initializeStates((this + 240), v15);
    v16 = *(this + 1229);
    v17 = *(this + 1226);
    v19 = DspLib::dB2Amp(v18, *(this + 2513));
    DspLib::fill(v17, v16, v19);
    *(this + 367) = 0;
    *(this + 1472) = 0;
    *(this + 369) = 0;
    *(this + 1400) = 1;
    DspLib::elapsedTimeInMilliseconds((this + 1408), v20);
    *(this + 354) = 0;
    *(this + 1420) = 1;
    *(this + 1223) = 0;
    *(this + 9792) = 0;
    v21 = *(this + 170);
    v22 = *(this + 171);
    while (v21 != v22)
    {
      DspLib::CircularDelay::reset(v21);
      v21 = (v21 + 32);
    }

    if (*(this + 9688) == 1)
    {
      DspLib::Biquad::SetupWrapper::reset((this + 9736));
      *(this + 2442) = -1054867456;
      DspLib::LoudnessNormalizer::ShapingFilter::setGain((this + 9688), 0.0);
    }

    *(this + 2450) = 1148846080;
    *(this + 1261) = 1148846080;
    v23 = *(this + 1263);
    if (v23)
    {
      (*(*v23 + 168))(v23);
    }

    v24 = *(this + 1264);
    if (v24)
    {
      (*(*v24 + 168))(v24);
    }

    *(this + 2514) = *(this + 2513) + *(this + 2420);
    *(this + 629) = vdupq_n_s32(0xC2C80000);
    *(this + 1260) = 0xC2C8000000000000;
    *(this + 1262) = 0;
    *(this + 10048) = 1;
  }

  else
  {
    DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation();
  }
}

void DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters(DspLib::LoudnessNormalizer::Algorithm *this)
{
  if (*(this + 8))
  {
    *(this + 92) = 0;
    *(this + 94) = 0;
    *(this + 96) = 0;
    *(this + 98) = 0;
    *(this + 100) = 0;
    *(this + 103) = 0;
    *(this + 106) = 0;
    *(this + 71) = 0;
  }

  else
  {
    DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters();
  }
}

double DspLib::LoudnessNormalizer::Algorithm::latencySamples(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = (*(*this + 104))(this, 10);
  if (*(this + 211) >= 2u)
  {
    (*(*this + 112))(this, 10);
    v4 = 3.0;
    if (v2 <= 3.0)
    {
      v4 = v2;
    }

    if (v2 >= v3)
    {
      v2 = v4;
    }

    else
    {
      v2 = v3;
    }
  }

  return round(*(this + 2) * v2 / 1000.0);
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::setMeteringIsEnabled(DspLib::LoudnessNormalizer::Algorithm *this, char a2)
{
  *(this + 96) = a2;
  result = (*(*this + 40))(this);
  if (result)
  {
    v4 = (*(*this + 208))(this);
    result = *(this + 1263);
    if (v4)
    {
      if (!result)
      {
        operator new();
      }

      if (!*(this + 1264))
      {
        operator new();
      }
    }

    else
    {
      *(this + 1263) = 0;
      if (result)
      {
        (*(*result + 8))(result);
      }

      result = *(this + 1264);
      *(this + 1264) = 0;
      if (result)
      {
        v5 = *(*result + 8);

        return v5();
      }
    }
  }

  return result;
}

void DspLib::LoudnessNormalizer::Algorithm::setParameter(float32x2_t *this, uint64_t a2, float a3)
{
  v6 = a3;
  v7 = (*(*this + 104))(this);
  if (DspLib::isEqual(v7, v6, v8, 1.0e-20))
  {
    return;
  }

  *(*&this[3] + 4 * a2) = a3;
  if (a2 <= 46)
  {
    switch(a2)
    {
      case 1:
        updated = DspLib::LoudnessNormalizer::Algorithm::updateGainTable(this);
        v12 = (*(*this + 152))(this, 0, updated);
        DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v12);
        this[79].i32[0] = v13;
        return;
      case 34:
        this[1204].f32[0] = a3;
        return;
      case 40:
        this[106].i8[0] = a3 >= 0.5;
LABEL_10:
        v9 = (*(*this + 152))(this, 0);

        DspLib::EnvironmentalNoiseSmoother::setParameters(this + 94, v9);
        return;
    }

LABEL_19:
    v14 = *(*this + 160);

    v14(this);
    return;
  }

  if ((a2 - 62) < 2)
  {
    DspLib::LoudnessNormalizer::Algorithm::updateGainTable(this);
    goto LABEL_10;
  }

  if (a2 != 47)
  {
    goto LABEL_19;
  }

  if (this[107].i32[0] == 2)
  {
    this[102] = llroundf(this[97].f32[0] * 0.25);
    v10 = (*(*this + 152))(this, 0);
    DspLib::EnvironmentalNoiseSmoother::setParameters(this + 94, v10);

    DspLib::LoudnessNormalizer::Algorithm::updateGainTable(this);
  }
}

float DspLib::LoudnessNormalizer::Algorithm::updateGainTable(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = (*(*this + 152))(this, 0);
  v3 = DspLib::LoudnessNormalizer::Parameters::targetLoudness(v2);
  v4 = (*(*this + 152))(this, 0);
  v5 = DspLib::LoudnessNormalizer::Parameters::downwardCompressionRange(v4);
  v6 = (*(*this + 152))(this, 0);
  v7 = DspLib::LoudnessNormalizer::Parameters::upwardCompressionRange(v6);
  v8 = (*(*this + 152))(this, 0);
  DspLib::LoudnessNormalizer::Parameters::maxGain(v8);
  v10 = v9;
  v11 = (*(*this + 152))(this, 0);
  v12 = DspLib::LoudnessNormalizer::Parameters::gainCurve(v11);
  v13 = (*(*this + 152))(this, 0);
  v14 = DspLib::LoudnessNormalizer::Parameters::useDownwardCompressionRatio(v13);
  v15 = (*(*this + 152))(this, 0);
  v16 = DspLib::LoudnessNormalizer::Parameters::downwardCompressionRatio(v15);
  v17 = *(this + 3);
  v18 = *(v17 + 168);
  v19 = *(v17 + 172) >= 0.5;

  return DspLib::LoudnessNormalizer::GainTable::setParameters(this + 936, v12, v14, v19, v3, v5, v7, v10, v16, v18);
}

void DspLib::EnvironmentalNoiseSmoother::setParameters(float32x2_t *a1, float *a2)
{
  v14 = a2[54];
  __asm { FMOV            V1.2S, #-1.0 }

  v9 = vdiv_f32(_D1, vdiv_f32(vmul_n_f32(0x4348000044480000, v14), vdup_n_s32(0x447A0000u)));
  v12 = v9.f32[0];
  v13 = expf(v9.f32[1]);
  v10.f32[0] = expf(v12);
  v10.f32[1] = v13;
  __asm { FMOV            V1.2S, #1.0 }

  *a1 = vsub_f32(_D1, v10);
  a1[1].f32[0] = 1.0 - expf(-1.0 / ((v14 * 500.0) / 1000.0));
  a1[1].f32[1] = 1.0 - expf(-1.0 / ((v14 * (a2[49] * 1000.0)) / 1000.0));
  a1[2].f32[0] = 1.0 - expf(-1.0 / ((v14 * (a2[52] * 1000.0)) / 1000.0));
  a1[2].f32[1] = 1.0 - expf(-1.0 / ((v14 * (a2[53] * 1000.0)) / 1000.0));
  a1[4].f32[1] = fmaxf(((a2[51] + a2[46]) + a2[47]) - a2[48], 0.0);
  a1[3].i8[5] = a2[40] >= 0.5;
}

float DspLib::LoudnessNormalizer::GainTable::setParameters(uint64_t a1, unsigned int a2, int a3, int a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v36 = a7 + a8;
  v37 = a5 - (a7 + a8);
  v17 = a5 + a6;
  v18 = 100.0;
  if (a9 <= 100.0)
  {
    v18 = a9;
  }

  v19 = 1.0 - (1.0 / v18);
  if (a9 < 1.0)
  {
    v19 = 0.0;
  }

  v34 = v19;
  v35 = v17;
  v20 = -100.0;
  for (i = 4; i != 88; i += 4)
  {
    if (a2)
    {
      if (a2 > 2)
      {
        goto LABEL_25;
      }

      v22 = (a5 - v20) * 0.8;
      v23 = v22 * -0.03125;
      if (v22 < 0.0)
      {
        v24 = 12.0;
      }

      else
      {
        v23 = v22 / 22.0;
        v24 = 9.0;
      }

      v25 = logf(v23);
      v26 = expf(v25 * v24);
      v27 = logf(v26 + 1.0);
      v28 = v22 / expf(v27 / v24);
      if (v28 > 0.0 && a2 == 2)
      {
        v28 = v28 * 0.66;
      }
    }

    else
    {
      v28 = a8;
      if (v20 >= v37)
      {
        if (v20 >= a5)
        {
          if (a3)
          {
            v30 = a5 - v20;
            v31 = v34;
          }

          else
          {
            v30 = 1.0 - (v20 / a5);
            v31 = v35;
          }

          v28 = v31 * v30;
        }

        else
        {
          v28 = ((a5 - v20) * a8) / v36;
        }
      }
    }

    *(a1 + i) = v28;
LABEL_25:
    if (a4)
    {
      v32 = a10 - v20;
      if ((a10 - v20) >= *(a1 + i))
      {
        v32 = *(a1 + i);
      }

      *(a1 + i) = v32;
    }

    v20 = v20 + 5.5;
  }

  return DspLib::createInterpolationTable(a1 + 4, 21, a1 + 88, 0x54uLL);
}

void DspLib::LoudnessNormalizer::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  v5 = (*(*a1 + 40))(a1);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = vcvtas_u32_f32(*(v6 + 68));
    v8 = *(v6 + 160) >= 0.5;
    *(a1 + 1432) = *(v6 + 176);
    v9 = *(v6 + 24);
    v10 = *(v6 + 28);
    *(a1 + 844) = v7;
    *(a1 + 848) = v8;
    *(a1 + 849) = v9 >= 0.5;
    *(a1 + 850) = v10 >= 0.5;
    *(a1 + 852) = *(v6 + 64);
    *(a1 + 856) = vcvtas_u32_f32(*(v6 + 76));
    *(a1 + 840) = *v6 < 0.5;
    *(a1 + 1444) = DspLib::dB2Amp(v5, *(v6 + 220));
    *(a1 + 1448) = DspLib::dB2Amp(v11, *(*(a1 + 24) + 224));
    isEqual = DspLib::isEqual(v12, *(*(a1 + 24) + 220), 0.0, 1.0e-20);
    *(a1 + 1452) = !isEqual;
    *(a1 + 1453) = !DspLib::isEqual(isEqual, *(*(a1 + 24) + 224), 0.0, 1.0e-20);
    HIDWORD(v14) = 0;
    if (*(a1 + 1452) == 1)
    {
      v15 = (*(*a1 + 64))(a1);
      v16 = (*(*a1 + 232))(a1);
      DspLib::ChannelBuffer::resize((a1 + 9856), v15, v16);
    }

    else
    {
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((a1 + 9856));
      *(a1 + 9888) = *(a1 + 9880);
    }

    DspLib::LoudnessNormalizer::Algorithm::computeSRCFactors(a1);
    if (v17)
    {
      v18 = *(a1 + 352);
      v19 = vcvtas_u32_f32(v18 * 0.8);
      LODWORD(v14) = vcvtas_u32_f32(v18 / *(a1 + 360));
      DspLib::LoudnessNormalizer::Algorithm::configureSamplerateConverters(a1);
      DspLib::LoudnessNormalizer::Algorithm::resizeTempBuffers(a1);
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      DspLib::LinearDelay::setLength((a1 + 536), v20);
      *(a1 + 560) = v14;
      v21 = *(a1 + 360);
      *(a1 + 9576) = v21;
      *(a1 + 9608) = 1.0 - expf(-1.0 / ((v21 * (*(a1 + 9604) * 1000.0)) / 1000.0));
      DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters(a1);
    }

    DspLib::LoudnessNormalizer::Algorithm::configureIntegratedLoudnessProcessorCompressor(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureSideChainLowPassFilter(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureAGatingBProcessor(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureHysteresisAndOffsets(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureWeightingFilter(a1);
    DspLib::LoudnessNormalizer::Algorithm::configurePeakPowerFilter(a1);
    if (*(a1 + 844) >= 2u)
    {
      *(a1 + 9776) = *(a1 + 352);
    }

    DspLib::LoudnessNormalizer::Algorithm::configureIntegratedLoudnessDelay(a1);
    DspLib::LoudnessNormalizer::Algorithm::updateGainTable(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureMedianFilter(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureAGC(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureShapingFilter(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureMeters(a1);
    DspLib::LoudnessNormalizer::Algorithm::configureAutoReset(a1);
    (*(*a1 + 72))(a1);
    v23 = *(a1 + 1360);
    v24 = *(a1 + 1368);
    if (v23 != v24)
    {
      v25 = v22;
      do
      {
        DspLib::CircularDelay::setLength(v23, v25);
        v23 = (v23 + 32);
      }

      while (v23 != v24);
    }

    v26 = (*(*a1 + 152))(a1, 0);

    DspLib::EnvironmentalNoiseSmoother::setParameters((a1 + 752), v26);
  }
}

float DspLib::LoudnessNormalizer::Algorithm::computeSRCFactors(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = *(this + 2);
  if (v2 >= 50000.0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 < 30000.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = vcvtas_u32_f32((*(*this + 104))(this, 2));
  if (v5 == 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2 * v4;
  }

  *(this + 86) = v7;
  v8 = *(this + 2) / v7;
  v9 = roundf(v8);
  *(this + 87) = v9;
  *(this + 88) = v9 / (0x40 / v7);
  *(this + 89) = v9 / (0x200 / v7);
  result = v9 / (0x1000 / v7);
  *(this + 90) = result;
  return result;
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::configureSamplerateConverters(uint64_t this)
{
  v1 = *(this + 344);
  v2 = 0x40 / v1;
  *(this + 364) = v1;
  v3 = 0x200 / v1;
  if (v1 <= 0x40)
  {
    *(this + 372) = v2;
    *(this + 376) = 0;
  }

  if (v2 <= v3)
  {
    v4 = v3 / v2;
    *(this + 380) = v4;
    *(this + 388) = v4;
  }

  v5 = *(this + 356);
  v6 = vcvtas_u32_f32(v5 / *(this + 360));
  if (v6)
  {
    *(this + 396) = v6;
    *(this + 400) = 0;
  }

  v7 = *(this + 352);
  v8 = vcvtas_u32_f32(v7 / v5);
  if (v8)
  {
    *(this + 408) = v8;
    *(this + 412) = 0;
  }

  v9 = vcvtad_u64_f64(*(this + 16) / v7);
  if (v9)
  {
    *(this + 420) = v9;
    *(this + 424) = 0;
  }

  return this;
}

void DspLib::LoudnessNormalizer::Algorithm::resizeTempBuffers(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = (*(*this + 232))(this) / *(this + 86);
  v3 = (*(*this + 232))(this) >> 6;
  v4 = (*(*this + 232))(this) >> 9;
  v5 = (*(*this + 64))(this);
  DspLib::ChannelBuffer::resize((this + 9904), v5, v2 + 1);
  std::vector<float>::resize(this + 1244, v2 + 1);
  std::vector<float>::resize(this + 1247, v3 + 1);
  std::vector<float>::resize(this + 1250, v4 + 1);

  std::vector<float>::resize(this + 1253, v4 + 1);
}

float DspLib::LoudnessNormalizer::Algorithm::configureIntegratedLoudnessProcessorCompressor(DspLib::LoudnessNormalizer::Algorithm *this)
{
  *(this + 2408) = (*(*this + 104))(this, 34);
  *(this + 9624) = (*(*this + 104))(this, 35) >= 0.5;
  *(this + 2407) = *(this + 211);
  v2 = (*(*this + 104))(this, 45);
  *(this + 2401) = v2;
  result = 1.0 - expf(-1.0 / (((v2 * 1000.0) * *(this + 2394)) / 1000.0));
  *(this + 2402) = result;
  return result;
}

void DspLib::LoudnessNormalizer::Algorithm::configureSideChainLowPassFilter(DspLib::LoudnessNormalizer::Algorithm *this)
{
  if ((*(*this + 104))(this, 39) >= 0.5)
  {
    v2 = (*(*this + 104))(this, 41);
    DspLib::Biquad::ParametricFilter::uninitialize((this + 648));
    v3 = (*(*this + 64))(this);
    v4 = (*(*this + 48))(this);
    DspLib::Biquad::ParametricFilter::initialize((this + 648), v3, round(v4), 1uLL);

    DspLib::Biquad::ParametricFilter::setParametricEQ(this + 648, (LODWORD(v2) << 32) | 8, 0x3F80000000000000, 0, 0x41uLL);
  }

  else
  {

    DspLib::Biquad::ParametricFilter::uninitialize((this + 648));
  }
}

float DspLib::LoudnessNormalizer::Algorithm::configureAGatingBProcessor(DspLib::LoudnessNormalizer::Algorithm *this)
{
  result = (*(*this + 104))(this, 36);
  v3 = vcvtas_u32_f32(result);
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v4 = 2000.0;
  }

  else
  {
    v4 = 1.0e10;
  }

  result = 1.0 - expf(-1.0 / ((*(this + 88) * v4) / 1000.0));
  *(this + 370) = result;
  return result;
}

double DspLib::LoudnessNormalizer::Algorithm::configureHysteresisAndOffsets(DspLib::LoudnessNormalizer::Algorithm *this)
{
  *&result = (*(*this + 104))(this, 36);
  v3 = vcvtas_u32_f32(*&result);
  if (v3 == 1)
  {
    result = -131072.094;
    *(this + 178) = 0xC1000000C0E00000;
    *(this + 1436) = 0xC100000040400000;
  }

  else if (!v3)
  {
    v4 = *(this + 211);
    if (v4 < 2)
    {
      *(this + 178) = 0xC0800000BFD872B0;
      result = -131072.031;
      *(this + 1436) = 0xC100000040400000;
    }

    else
    {
      *(this + 178) = 0xC1000000C0A00000;
      *(this + 359) = 0;
      *&result = COERCE_UNSIGNED_INT(-7.0) | 0xC100000000000000;
      if (v4 == 2)
      {
        *&result = -10.0;
      }

      *(this + 360) = LODWORD(result);
    }
  }

  return result;
}

void DspLib::LoudnessNormalizer::Algorithm::configureWeightingFilter(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v2 = vcvtas_u32_f32((*(*this + 104))(this, 36));
  if (v2)
  {
    if (v2 == 1)
    {
      DspLib::Biquad::Design::aWeighting(*(this + 87), __p);
      std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(&v26, __p, v20, 3uLL);
      if ((*(*this + 104))(this, 14) >= 0.5)
      {
        v23 = 9;
        v24 = (*(*this + 104))(this, 15);
        v25 = 0x3F80000000000000;
        std::vector<DspLib::Biquad::Section>::resize(&v26, 0xCCCCCCCCCCCCCCCDLL * ((v27 - v26) >> 2) + 1);
        DspLib::Biquad::Design::ParametricEQ::design(&v23, *(this + 87), 0, v3, &v21);
        v4 = v27;
        v5 = v21;
        *(v27 - 1) = v22;
        *(v4 - 20) = v5;
      }
    }
  }

  else
  {
    DspLib::Biquad::Design::kWeighting(*(this + 87), __p);
    std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(&v26, __p, v19, 2uLL);
    if ((*(*this + 104))(this, 14) >= 0.5)
    {
      v23 = 9;
      v24 = (*(*this + 104))(this, 15);
      v25 = 0x3F80000000000000;
      DspLib::Biquad::Design::ParametricEQ::design(&v23, *(this + 87), 0, v6, &v21);
      v7 = v26;
      *(v26 + 20) = v21;
      *(v7 + 9) = v22;
    }
  }

  v8 = *(*(this + 3) + 68);
  v9 = (*(*this + 56))(this);
  DspLib_ITU1770_channelWeightsForLayout(v9, v8 < 4.0, __p);
  v11 = __p[0];
  v10 = __p[1];
  if ((*(*this + 64))(this) != (v10 - v11) >> 2)
  {
    v12 = (*(*this + 64))(this);
    std::vector<float>::resize(__p, v12);
    *(this + 840) = 1;
  }

  v13 = (*(*this + 64))(this);
  DspLib::Biquad::Filter::initialize((this + 864), v13, 0xCCCCCCCCCCCCCCCDLL * ((v27 - v26) >> 2));
  v14 = 0;
  v21 = *v26;
  v22 = *(v26 + 4);
  while (v14 < (*(*this + 64))(this))
  {
    v15 = v26;
    *v26 = v21;
    *(v15 + 4) = v22;
    v16 = v26;
    v17 = sqrtf(*(__p[0] + v14));
    *v26 = vmul_n_f32(*v26, v17);
    v16[2] = v17 * v16[2];
    DspLib::Biquad::Filter::setCoefficients(this + 864, v16, 0xCCCCCCCCCCCCCCCDLL * ((v27 - v16) >> 2), 0, v14++);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_1DDC09BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 - 72);
  if (v12)
  {
    *(v10 - 64) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::LoudnessNormalizer::Algorithm::configurePeakPowerFilter(DspLib::LoudnessNormalizer::Algorithm *this)
{
  if (*(this + 211) <= 1u)
  {
    v2 = (COERCE_UNSIGNED_INT((*(*this + 104))(this, 18)) << 32) | 0x1B;
  }

  else
  {
    v2 = 0x41F000000000001BLL;
  }

  DspLib::Biquad::ParametricFilter::initialize((this + 432), 1uLL, roundf(*(this + 87)), 1uLL);

  DspLib::Biquad::ParametricFilter::setParametricEQ(this + 432, v2, 0x3F80000000000000, 0, 0x41uLL);
}

void DspLib::LoudnessNormalizer::Algorithm::configureIntegratedLoudnessDelay(DspLib::LoudnessNormalizer::Algorithm *this)
{
  LODWORD(v1) = vcvtas_u32_f32(*(this + 90) * 0.25);
  v2 = *(this + 173);
  if (v1)
  {
    if (!v2)
    {
      operator new();
    }

    DspLib::CircularDelay::setLength(v2, v1);
  }

  else
  {
    *(this + 173) = 0;
    if (v2)
    {
      v3 = this + 1384;

      std::default_delete<DspLib::CircularDelay>::operator()[abi:ne200100](v3, v2);
    }
  }
}

void DspLib::LoudnessNormalizer::Algorithm::configureMedianFilter(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = (*(*this + 152))(this, 0);
  DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v2);
  *(this + 158) = v3;
  DspLib::FastMedianFilter::initialize((this + 576), vcvtas_u32_f32(*(this + 89)));
  v4 = 1.0;
  if (*(this + 211) >= 2u)
  {
    v4 = 1.0 - expf(-1.0 / ((*(this + 89) * 2316.0) / 1000.0));
  }

  *(this + 160) = v4;
}

void DspLib::LoudnessNormalizer::Algorithm::configureAGC(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = *(this + 849);
  v3 = *(this + 1208);
  if (v2 == 1)
  {
    if (v3)
    {
      return;
    }

    v4 = operator new(0x1FC0uLL, 0x40uLL);
    DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::IntegratedLoudnessProcessor(v4, 1);
    v5 = *(this + 1208);
    *(this + 1208) = v4;
    if (v5)
    {
      MEMORY[0x1E12BD150](v5, 64);
      v4 = *(this + 1208);
    }

    *(v4 + 2023) = *(this + 211);
    v6 = (*(*this + 152))(this, 0);
    DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v6);
    DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::reset(v4, v7);
    v8 = *(this + 1208);
    v9 = *(this + 90);
    v8[2010] = v9;
    v8[2018] = 1.0 - expf(-1.0 / ((v9 * (v8[2017] * 1000.0)) / 1000.0));
    v10 = (*(*this + 152))(this, 0);
    DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v10);
    *(this + 2419) = v11;
    v12 = (*(*this + 152))(this, 0);
    v13 = DspLib::LoudnessNormalizer::Parameters::targetLoudness(v12) - *(this + 2419);
  }

  else
  {
    *(this + 1208) = 0;
    v13 = 0.0;
    if (v3)
    {
      MEMORY[0x1E12BD150](v3, 64);
    }
  }

  *(this + 2420) = v13;
}

void DspLib::LoudnessNormalizer::Algorithm::configureShapingFilter(DspLib::LoudnessNormalizer::Algorithm *this)
{
  if (DspLib::LoudnessNormalizer::Parameters::shapingFilterIsOn(*(this + 3)))
  {
    v2 = (*(*this + 64))(this);
    *(this + 1220) = (*(*this + 48))(this);
    DspLib::Biquad::Filter::initialize((this + 9688), v2, 2uLL);
    DspLib::Biquad::SetupWrapper::reset((this + 9736));
    *(this + 2442) = -1054867456;

    DspLib::LoudnessNormalizer::ShapingFilter::setGain((this + 9688), 0.0);
  }

  else
  {

    DspLib::Biquad::Filter::uninitialize((this + 9688));
  }
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::configureMeters(DspLib::LoudnessNormalizer::Algorithm *this)
{
  v2 = *(this + 1263);
  if (v2)
  {
    v3 = (*(*v2 + 56))(v2);
    if (v3 != (*(*this + 56))(this) || (v4 = (*(**(this + 1263) + 48))(*(this + 1263)), !DspLib::isEqual(v4, v5, *(this + 2), 1.0e-20)))
    {
      v6 = *(this + 1263);
      v7 = (*(*this + 56))(this);
      (*(*v6 + 24))(v6, v7, *(this + 2));
    }

    v8 = *(this + 1263);
    (*(*this + 104))(this, 11);
    (*(*v8 + 120))(v8, 0);
  }

  result = *(this + 1264);
  if (result)
  {
    v10 = (*(*result + 56))(result);
    if (v10 != (*(*this + 56))(this) || (v11 = (*(**(this + 1264) + 48))(*(this + 1264)), !DspLib::isEqual(v11, v12, *(this + 2), 1.0e-20)))
    {
      v13 = *(this + 1264);
      v14 = (*(*this + 56))(this);
      (*(*v13 + 24))(v13, v14, *(this + 2));
    }

    v15 = *(this + 1264);
    (*(*this + 104))(this, 12);
    v16 = *(*v15 + 120);

    return v16(v15, 0);
  }

  return result;
}

void DspLib::LoudnessNormalizer::Algorithm::configureAutoReset(DspLib::LoudnessNormalizer::Algorithm *this)
{
  if (DspLib::LoudnessNormalizer::Parameters::resetModeFlagsAreSet(2, *(this + 213)))
  {
    v2 = (*(*this + 152))(this, 0);
    DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v2);
    DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation(this, v3);
    DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters(this);
  }

  if (DspLib::LoudnessNormalizer::Parameters::resetModeFlagsAreSet(4, *(this + 213)) && DspLib::LoudnessNormalizer::Parameters::resetModeFlagsAreSet(1, *(this + 213)))
  {
    *(this + 349) = (*(*this + 104))(this, 9);
    *(this + 1392) = 1;
  }

  else
  {
    *(this + 1392) = 0;
  }

  *(this + 1422) = *(this + 211) > 1u;
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::sidechainFilterAndDownsample(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 648) == 1)
  {
    if (*(a2 + 16) <= 1uLL)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a2 + 16);
    }

    if ((*(*a1 + 64))(a1) == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = ((v6 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    }

    v8 = (*(*a1 + 64))(a1);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v11 = &v22 - v10;
    v12 = (*(*a1 + 64))(a1, v9);
    MEMORY[0x1EEE9AC00](v12);
    v15 = &v22 - v14;
    if (v13 >= 0x200)
    {
      v16 = 512;
    }

    else
    {
      v16 = v13;
    }

    bzero(&v22 - v14, v16);
    if ((*(*a1 + 64))(a1))
    {
      v17 = 0;
      v18 = 4 * v7;
      do
      {
        *&v15[8 * v17++] = v11;
        v11 += v18;
      }

      while (v17 < (*(*a1 + 64))(a1));
    }

    v19 = (*(*a1 + 64))(a1);
    v20 = *(a2 + 16);
    v25 = *a2;
    v26 = *(a2 + 16);
    *&v23 = v15;
    *(&v23 + 1) = v19;
    v24 = v20;
    DspLib::Biquad::Filter::process((a1 + 648), &v25, &v23);
    *&v25 = v15;
    *(&v25 + 1) = v19;
    v26 = v20;
    DspLib::DownSampler::process((a1 + 364), &v25, a3);
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 16);
    DspLib::DownSampler::process((a1 + 364), &v25, a3);
  }

  return a3[2];
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::calculatePeakPower(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DspLib::Biquad::Filter::process((a1 + 432), a2, a3, a2, a3);
  v14 = a5;
  v15 = a4;
  v13[0] = &v15;
  v13[1] = 1;
  v11[2] = a3;
  v12 = a2;
  v11[0] = &v12;
  v11[1] = 1;
  DspLib::DownSampler::process((a1 + 372), v11, v13);
  return v14;
}

void DspLib::LoudnessNormalizer::Algorithm::audioActivityShift(uint64_t a1, const float *a2, vDSP_Length a3, uint64_t a4, uint64_t a5)
{
  v8 = DspLib::AudioActivityDetector::process(a1 + 9776, a2, a3, *(a1 + 9596));
  if (*&v8 > 0.0)
  {
    v9 = *&v8;
    DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::shift((a1 + 1536), *&v8);
    v10 = *(a1 + 1384);
    if (v10)
    {
      DspLib::add(*v10, (v10[1] - *v10) >> 2, -v9);
    }

    DspLib::add(a4, a5, -v9);
    *(a1 + 404) = *(a1 + 404) - v9;
    v11 = *(a1 + 416) - v9;
    *(a1 + 1468) = *(a1 + 1468) - v9;
    *(a1 + 416) = v11 - v9;
  }
}

double DspLib::AudioActivityDetector::process(uint64_t a1, const float *a2, vDSP_Length __N, float a4)
{
  if (!__N)
  {
    return 0.0;
  }

  v7 = DspLib::maxv(a2, __N);
  v8 = fmaxf(v7, -70.0);
  v9 = *(a1 + 8);
  v10 = *a1 * (v8 - *(a1 + 12)) / __N / 100.0;
  v11 = v8 > (v9 + 4.0);
  if (v10 >= 1.0)
  {
    v11 = 0;
  }

  v12 = *a1;
  v13 = v9 + ((((v8 - v9) * 10.0) / v12) * __N);
  if (v8 < v9)
  {
    v13 = v8;
  }

  if (v11)
  {
    v13 = v8;
  }

  *(a1 + 8) = v13;
  *(a1 + 12) = v8;
  v14 = v7 < (a4 + -10.0) && v11;
  result = 0.0;
  if (v14)
  {
    *&result = 1.5;
  }

  *(a1 + 16) |= v14;
  return result;
}

unint64_t DspLib::LoudnessNormalizer::Algorithm::medianLevelWithHysteresis(uint64_t a1, uint64_t a2, uint64_t a3, const float *a4, unint64_t a5)
{
  v20 = a4;
  v18[0] = &v20;
  v18[1] = 1;
  v19 = a5;
  v16[2] = a3;
  v17 = a2;
  v16[0] = &v17;
  v16[1] = 1;
  DspLib::DownSampler::process((a1 + 380), v16, v18);
  v7 = v19;
  DspLib::FastMedianFilter::process((a1 + 576), a4, v19, a4);
  DspLib::add(a4, v7, *(a1 + 1424));
  if (v7)
  {
    v8 = *(a1 + 640);
    v9 = *(a1 + 1464);
    v10 = 4 * v7;
    v11 = a4;
    while (1)
    {
      v12 = *v11;
      if (*v11 > v9)
      {
        goto LABEL_6;
      }

      v13 = v12 + 5.0;
      if (v13 < v9)
      {
        break;
      }

LABEL_7:
      *v11++ = v9;
      v10 -= 4;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v12 = v9 + ((v13 - v9) * v8);
LABEL_6:
    *(a1 + 1464) = v12;
    v9 = v12;
    goto LABEL_7;
  }

LABEL_8:
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    if (v7)
    {
      v14 = DspLib::maxv(a4, v7);
      if (*(a1 + 10072) >= v14)
      {
        v14 = *(a1 + 10072);
      }

      *(a1 + 10072) = v14;
    }

    DspLib::CPUMeasure::resume((a1 + 104));
  }

  return v7;
}

vDSP_Length DspLib::LoudnessNormalizer::Algorithm::gatingAndModifiedPeakLevel(uint64_t a1, float *a2, unint64_t a3, const float *a4, vDSP_Length a5)
{
  if (*(a1 + 844) >= 2u)
  {
    v42 = a5;
    v43 = a4;
    v40 = &v43;
    v41 = 1;
    v38 = a3;
    v39 = a2;
    v36 = &v39;
    v37 = 1;
    DspLib::DownSampler::process((a1 + 388), &v36, &v40);
    v10 = v42;
    if (!a3)
    {
      return v10;
    }

    v11 = DspLib::maxv(a2, a3);
    v12 = *(a1 + 9976);
    *v12 = v11;
    v13 = v11 + (*(a1 + 1428) + *(a1 + 1432));
    *v12 = v13;
    if (v13 <= -70.0)
    {
      v15 = *(a1 + 9800);
      v14 = *(a1 + 348) / a3;
    }

    else
    {
      v14 = *(a1 + 348) / a3;
      v15 = *(a1 + 9800) + (((1.0 - *(a1 + 9800)) * 100.0) / v14);
      *(a1 + 9800) = v15;
    }

    v24 = *(a1 + 1460);
    v25 = *(a1 + 10064);
    if (v25 < *(a1 + 10072))
    {
      v25 = *(a1 + 10072);
    }

    v26 = v24 - v25;
    if (v26 <= 12.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 12.0;
    }

    if (v26 >= 0.0)
    {
      v28 = 1.0 - (v27 / 12.0);
    }

    else
    {
      v28 = 1.0;
    }

    v29 = ((v28 * v28) * 99.0) + 1.0;
    if (v29 >= v15)
    {
      v15 = v29;
    }

    *(a1 + 10088) = v15;
    v30 = expf(-1.0 / ((v14 * v15) / 1000.0));
    v31 = *a2;
    if (*a2 <= (*(a1 + 1436) + v24))
    {
      v32 = v31 - *(a1 + 1440);
      if (v32 >= v24)
      {
LABEL_33:
        *a2 = v24;
        if ((*(*a1 + 208))(a1))
        {
          DspLib::CPUMeasure::pause((a1 + 104));
          v33 = *(a1 + 9976);
          v34 = *(a1 + 10076);
          if (v34 < *v33)
          {
            v34 = *v33;
          }

          *(a1 + 10076) = v34;
          DspLib::CPUMeasure::resume((a1 + 104));
        }

        DspLib::fill(a2, a3, **(a1 + 9976));
        return v10;
      }

      v31 = v24 + ((v32 - v24) * (1.0 - v30));
    }

    *(a1 + 1460) = v31;
    v24 = v31;
    goto LABEL_33;
  }

  DspLib::add(a2, a3, *(a1 + 1428));
  if (a3)
  {
    v16 = *(a1 + 1436);
    v17 = *(a1 + 1440);
    v18 = 4 * a3;
    v19 = a2;
    v20 = *(a1 + 1460);
    while (1)
    {
      v21 = *v19;
      if (*v19 > (v16 + v20))
      {
        goto LABEL_10;
      }

      v22 = v21 - v17;
      if (v22 < v20)
      {
        break;
      }

LABEL_11:
      *v19++ = v20;
      v18 -= 4;
      if (!v18)
      {
        goto LABEL_12;
      }
    }

    v21 = v20 + (v22 - v20);
LABEL_10:
    *(a1 + 1460) = v21;
    v20 = v21;
    goto LABEL_11;
  }

LABEL_12:
  v42 = a5;
  v43 = a4;
  v40 = &v43;
  v41 = 1;
  v38 = a3;
  v39 = a2;
  v36 = &v39;
  v37 = 1;
  DspLib::DownSampler::process((a1 + 388), &v36, &v40);
  v10 = v42;
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    if (v10)
    {
      v23 = DspLib::maxv(a4, v10);
      if (*(a1 + 10076) >= v23)
      {
        v23 = *(a1 + 10076);
      }

      *(a1 + 10076) = v23;
    }

    DspLib::CPUMeasure::resume((a1 + 104));
  }

  return v10;
}

double DspLib::LoudnessNormalizer::Algorithm::gateIntegratedLoudness(uint64_t a1, const float *a2, vDSP_Length a3, const float *a4, vDSP_Length a5)
{
  v10 = -2.0;
  if (*(a1 + 844) <= 1u)
  {
    v10 = -4.0 - *(a1 + 1428);
  }

  DspLib::add(a4, a5, v10);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    if (a5)
    {
      v11 = DspLib::maxv(a4, a5);
      if (*(a1 + 10084) >= v11)
      {
        v11 = *(a1 + 10084);
      }

      *(a1 + 10084) = v11;
    }

    DspLib::CPUMeasure::resume((a1 + 104));
  }

  DspLib::LoudnessNormalizer::AGatingBProcessor::process(a1 + 1468, a4, a5, a2);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    if (a3)
    {
      v13 = DspLib::maxv(a2, a3);
      if (*(a1 + 10064) >= v13)
      {
        v13 = *(a1 + 10064);
      }

      *(a1 + 10064) = v13;
    }

    *&result = DspLib::CPUMeasure::resume((a1 + 104)).u64[0];
  }

  return result;
}

uint64_t DspLib::LoudnessNormalizer::AGatingBProcessor::process(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = *(result + 4);
    v6 = *result;
    do
    {
      v7 = *(a2 + 4 * v4);
      v8 = *(a4 + 4 * v4);
      v9 = v8 >= v6 && v7 <= v8;
      v10 = *(a4 + 4 * v4);
      if (v9)
      {
        if (v5)
        {
          if (v8 >= *(result + 8))
          {
            v10 = *(result + 8);
          }

          else
          {
            v10 = *(a4 + 4 * v4);
          }
        }

        else
        {
          v10 = v6 + ((v8 - v6) * *(result + 12));
        }
      }

      *result = v10;
      *(result + 8) = v7;
      *(a4 + 4 * v4++) = v10;
      v6 = v10;
      v5 = v7 > v8;
    }

    while (a3 > v4);
    *(result + 4) = v7 > v8;
  }

  return result;
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::applyGain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DspLib::Biquad::Filter::process((a1 + 240), a4, a5, a4, a5);
  if (*(a1 + 9688) == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 16);
    v11 = *a3;
    v12 = *(a3 + 16);
    DspLib::Biquad::Filter::process((a1 + 9688), &v13, &v11);
    v8 = *(a3 + 8);
    v9 = *(a3 + 16);
    *&v13 = *a3;
    *(&v13 + 1) = v8;
    v14 = v9;
    *&v11 = v13;
    *(&v11 + 1) = v8;
    v12 = v9;
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 16);
    v11 = *a3;
    v12 = *(a3 + 16);
  }

  DspLib::MultiChannelCircularDelay::process((a1 + 1360), &v13, &v11);
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    DspLib::multiply();
  }

  return result;
}

uint64_t DspLib::LoudnessNormalizer::Algorithm::applyAGC(uint64_t result, const float *a2, vDSP_Length a3, unint64_t a4)
{
  v4 = result;
  if (*(result + 849) == 1)
  {
    v8 = (*(*result + 152))(result, 0);
    v9 = DspLib::LoudnessNormalizer::Parameters::targetLoudness(v8) - *(v4 + 9676);
    v10 = (v4 + 9680);
    *(v4 + 9680) = v9;
    if (v9 > 24.0)
    {
      v10 = &DspLib::LoudnessNormalizer::Algorithm::kAGCMaxGain_dB;
    }

    if (v9 < -24.0)
    {
      v10 = &DspLib::LoudnessNormalizer::Algorithm::kAGCMinGain_dB;
    }

    v11 = *v10;
    *(v4 + 9680) = *v10;
    v12 = *(v4 + 9672);
    if (v12 < 1.0 && a3 != 0)
    {
      v14 = a4 / (*(v4 + 16) * 10.0);
      v15 = v12 + v14;
      if (v15 <= 1.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1.0;
      }

      if (v15 >= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      *(v4 + 9672) = v17;
      v18 = (*(*v4 + 152))(v4, 0);
      v19 = DspLib::LoudnessNormalizer::Parameters::targetLoudness(v18);
      v20 = v19 - DspLib::maxv(a2, a3);
      if (v20 <= 24.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 24.0;
      }

      if (v20 >= -24.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = -24.0;
      }

      v11 = ((1.0 - *(v4 + 9672)) * v22) + (*(v4 + 9680) * *(v4 + 9672));
      *(v4 + 9680) = v11;
    }

    return DspLib::add(a2, a3, v11);
  }

  else
  {
    *(result + 9680) = 0;
  }

  return result;
}

double DspLib::LoudnessNormalizer::Algorithm::applyCompressor(uint64_t a1, float *__D, vDSP_Length __N)
{
  if (*(a1 + 850))
  {
    DspLib::LoudnessNormalizer::GainTable::gainForLevel(a1 + 936, __D, __N);
  }

  else
  {
    DspLib::clear(__D, __N);
  }

  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    if (__N)
    {
      *(a1 + 10052) = DspLib::mean(__D, __N);
    }

    *&result = DspLib::CPUMeasure::resume((a1 + 104)).u64[0];
  }

  return result;
}

void DspLib::LoudnessNormalizer::GainTable::gainForLevel(uint64_t a1, float *__D, vDSP_Length __N)
{
  if (__N)
  {
    DspLib::clip(__D, __N, -100.0, 10.0);
    DspLib::add(__D, __N, 100.0);
    DspLib::multiply(__D, __N, 0.18182);

    DspLib::elementAtIndexWithInterpolation(a1 + 88, 84, __D, __N, __D, __N);
  }
}

void DspLib::LoudnessNormalizer::Algorithm::processBlock(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[2];
  if (v3)
  {
    v8 = *a2;
    v7 = a2[1];
    if (*(a1 + 856) == 2)
    {
      *(a1 + 808) += v3;
      v9 = *(a1 + 816);
      if (v9 <= 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9 - v3;
      }

      *(a1 + 816) = v10;
    }

    if (*(a1 + 1452) == 1)
    {
      v11 = *(a1 + 9880);
      v7 = (*(a1 + 9888) - v11) >> 3;
      *v54 = v8;
      *&v54[8] = *(a2 + 1);
      v12 = *(a1 + 1444);
      *&v56 = v11;
      *(&v56 + 1) = v7;
      v57 = v3;
      DspLib::multiply(v54, &v56, v12);
      v8 = v11;
    }

    if ((*(*a1 + 208))(a1))
    {
      DspLib::CPUMeasure::pause((a1 + 104));
      v13 = *(a1 + 10104);
      *&v56 = v8;
      *(&v56 + 1) = v7;
      v57 = v3;
      v54[0] = 0;
      v55 = 0;
      DspLib::AlgorithmBase::process(v13, &v56, v54);
      *v54 = v8;
      *&v54[8] = v7;
      *&v54[16] = v3;
      v14 = DspLib::maxMagnitude(v54);
      if (*(a1 + 10080) >= v14)
      {
        v14 = *(a1 + 10080);
      }

      *(a1 + 10080) = v14;
      DspLib::CPUMeasure::resume((a1 + 104));
    }

    if (*(a3 + 24) == 1)
    {
      *v54 = *a3;
      *&v54[16] = *(a3 + 16);
      v15 = !DspLib::isSilent(v54, 0.000001);
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 9840) = v15;
    if (*(a1 + 840) == 1)
    {
      *v54 = v8;
      *&v54[8] = v7;
      *&v54[16] = v3;
      v56 = *a2;
      v57 = a2[2];
      DspLib::MultiChannelCircularDelay::process((a1 + 1360), v54, &v56);
    }

    else if ((*(a1 + 848) | v15))
    {
      if (*(a1 + 9688) == 1)
      {
        v56 = *a2;
        v57 = a2[2];
        *v54 = v8;
        *&v54[8] = v7;
        *&v54[16] = v3;
        DspLib::Biquad::Filter::process((a1 + 9688), v54, &v56);
        v16 = a2[1];
        v17 = a2[2];
        *v54 = *a2;
        *&v54[8] = v16;
        *&v54[16] = v17;
        *&v56 = *v54;
        *(&v56 + 1) = v16;
        v57 = v17;
      }

      else
      {
        *v54 = v8;
        *&v54[8] = v7;
        *&v54[16] = v3;
        v56 = *a2;
        v57 = a2[2];
      }

      DspLib::MultiChannelCircularDelay::process((a1 + 1360), v54, &v56);
      v23 = *(a1 + 9832);
      if (v23)
      {
        *v54 = *a2;
        *&v54[16] = a2[2];
        DspLib::multiply(v54, *(*(a1 + 9808) + 4 * v23 - 4));
      }

      DspLib::elapsedTimeInMilliseconds((a1 + 1408), v22);
    }

    else
    {
      v18 = *(a1 + 9928);
      v19 = (*(a1 + 9936) - v18) >> 3;
      v20 = *(a1 + 9904);
      if (*(a1 + 9912) == v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = (v20[1] - *v20) >> 2;
      }

      *(&v53 + 1) = v7;
      *v54 = v8;
      *&v54[8] = v7;
      *&v54[16] = v3;
      *&v56 = v18;
      *(&v56 + 1) = v19;
      v57 = v21;
      v24 = DspLib::LoudnessNormalizer::Algorithm::sidechainFilterAndDownsample(a1, v54, &v56);
      v25 = v24;
      if (*(a1 + 864) == 1)
      {
        *v54 = v18;
        *&v54[8] = v19;
        *&v54[16] = v24;
        *&v56 = v18;
        *(&v56 + 1) = v19;
        v57 = v24;
        DspLib::Biquad::Filter::process((a1 + 864), v54, &v56);
      }

      v26 = *(a1 + 9952);
      *v54 = v18;
      *&v54[8] = v19;
      *&v54[16] = v25;
      DspLib::square(v54);
      *v54 = v18;
      *&v54[8] = v19;
      *&v54[16] = v25;
      DspLib::sum(v54, v26, v25);
      DspLib::threshold(v26, v25, 1.0e-12);
      if (DspLib::LoudnessNormalizer::AutoReset::process(a1 + 1392, v26, v25))
      {
        v27 = (*(*a1 + 152))(a1, 0);
        DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v27);
        DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation(a1, v28);
      }

      v29 = DspLib::LoudnessNormalizer::Algorithm::calculatePeakPower(a1, v26, v25, *(a1 + 9976), (*(a1 + 9984) - *(a1 + 9976)) >> 2);
      v30 = *(a1 + 9976);
      v31 = DspLib::MovingAverageProcessor::process(a1 + 536, v30, v29, *v18);
      DspLib::power2dB(v30, v29, 1.0);
      if (v31)
      {
        v32 = *(a1 + 9664);
        if (v32)
        {
          DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::process(v32, *v18, v31, *(a1 + 9952));
          *(a1 + 9676) = **(a1 + 9952);
        }

        DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::process((a1 + 1536), *v18, v31, *v18);
        if ((*(*a1 + 208))(a1))
        {
          DspLib::CPUMeasure::pause((a1 + 104));
          *(a1 + 10068) = **v18;
          DspLib::CPUMeasure::resume((a1 + 104));
        }

        v33 = *(a1 + 1384);
        if (v33)
        {
          DspLib::CircularDelay::process(v33, *v18, v31, *v18, v31);
        }
      }

      *&v53 = v8;
      if (*(a1 + 844) >= 2u && ((*(*a1 + 104))(a1, 35) < 0.5 || (*(*a1 + 104))(a1, 34) > 0.1))
      {
        DspLib::LoudnessNormalizer::Algorithm::audioActivityShift(a1, v30, v29, *v18, v31);
      }

      v34 = DspLib::LoudnessNormalizer::Algorithm::medianLevelWithHysteresis(a1, v30, v29, *(a1 + 10024), (*(a1 + 10032) - *(a1 + 10024)) >> 2);
      v51 = *(a1 + 10024);
      v35 = DspLib::LoudnessNormalizer::Algorithm::gatingAndModifiedPeakLevel(a1, v30, v29, *(a1 + 10000), (*(a1 + 10008) - *(a1 + 10000)) >> 2);
      v36 = *(a1 + 10000);
      v52 = v30;
      v37 = *(a1 + 9952);
      DspLib::SampleAndHoldUpSampler::process((a1 + 396), *v18, v31, v37, v34);
      DspLib::LoudnessNormalizer::Algorithm::gateIntegratedLoudness(a1, v37, v34, v36, v35);
      DspLib::vmax(v37, v34, v51);
      DspLib::SampleAndHoldUpSampler::process((a1 + 408), v37, v34, *v18, v29);
      v38 = *(a1 + 9952);
      DspLib::vmax(v52, v29, *v18, v29, v38);
      if ((*(*a1 + 208))(a1))
      {
        DspLib::CPUMeasure::pause((a1 + 104));
        if (v29)
        {
          *(a1 + 10060) = DspLib::mean(v38, v29);
        }

        DspLib::CPUMeasure::resume((a1 + 104));
      }

      DspLib::LoudnessNormalizer::Algorithm::applyAGC(a1, v38, v29, v3);
      if (*(a1 + 856) == 2 && v29)
      {
        v39 = *(a1 + 24);
        v40 = DspLib::mean(v38, v29);
        v41 = v39[57];
        v42 = v39[46];
        v43 = v39[47];
        DspLib::LoudnessNormalizer::Algorithm::applyCompressor(a1, v38, v29);
        v44 = fmaxf(((v41 - v40) - v42) - v43, 0.0);
        *(a1 + 10092) = v44;
        DspLib::clip(v38, v29, -100.0, v44);
      }

      else
      {
        DspLib::LoudnessNormalizer::Algorithm::applyCompressor(a1, v38, v29);
      }

      if (*(a1 + 9688) == 1 && v29)
      {
        v45 = DspLib::mean(v38, v29);
        DspLib::LoudnessNormalizer::ShapingFilter::setGain((a1 + 9688), v45);
      }

      if (*(a1 + 849) == 1)
      {
        DspLib::add(v38, v29, *(a1 + 9680));
      }

      if ((*(*a1 + 208))(a1))
      {
        DspLib::CPUMeasure::pause((a1 + 104));
        if (v29)
        {
          *(a1 + 10056) = DspLib::mean(v38, v29);
        }

        DspLib::CPUMeasure::resume((a1 + 104));
      }

      DspLib::dB2Amp(v38, v29);
      *(a1 + 9832) = v3;
      v46 = *(a1 + 9808);
      DspLib::SampleAndHoldUpSampler::process((a1 + 420), v38, v29, v46, v3);
      *v54 = v53;
      *&v54[16] = v3;
      v56 = *a2;
      v57 = a2[2];
      DspLib::LoudnessNormalizer::Algorithm::applyGain(a1, v54, &v56, v46, v3);
    }

    if (*(a1 + 1453) == 1)
    {
      *v54 = *a2;
      *&v54[16] = a2[2];
      DspLib::multiply(v54, *(a1 + 1448));
    }

    v47 = *a2;
    v48 = a2[1];
    v49 = a2[2];
    if ((*(*a1 + 208))(a1))
    {
      DspLib::CPUMeasure::pause((a1 + 104));
      v50 = *(a1 + 10112);
      *&v56 = v47;
      *(&v56 + 1) = v48;
      v57 = v49;
      v54[0] = 0;
      v55 = 0;
      DspLib::AlgorithmBase::process(v50, &v56, v54);
      DspLib::CPUMeasure::resume((a1 + 104));
    }
  }
}

uint64_t DspLib::LoudnessNormalizer::AutoReset::process(uint64_t a1, const float *a2, vDSP_Length __N)
{
  if (*(a1 + 30) == 1)
  {
    v4 = *(a1 + 29);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 29) = 0;
  if (*a1 == 1 && __N != 0)
  {
    v6 = DspLib::mean(a2, __N);
    v9 = DspLib::elapsedTimeInMilliseconds((a1 + 16), v7) / 1000.0;
    if (v9 <= 0.2 && v6 >= DspLib::dB2Power(v8, -100.0))
    {
      if (v6 > DspLib::dB2Power(v10, -70.0))
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      if (*(a1 + 8))
      {
        if (*(a1 + 28))
        {
          return v4 & 1;
        }
      }

      else
      {
        *(a1 + 24) = 0;
        *(a1 + 28) = 0;
        *(a1 + 8) = 1;
      }

      v11 = v9 + *(a1 + 24);
      *(a1 + 24) = v11;
      if (v11 >= *(a1 + 4))
      {
        v4 = 1;
        *(a1 + 28) = 1;
      }
    }
  }

  return v4 & 1;
}

uint64_t DspLib::MovingAverageProcessor::process(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 32);
  do
  {
    if (!v10)
    {
      *(a1 + 32) = *(a1 + 24);
      *(a4 + 4 * v9++) = DspLib::mean(*a1, (*(a1 + 8) - *a1) >> 2);
      v10 = *(a1 + 32);
    }

    v11 = *(a1 + 8) - *a1;
    if (v10 >= a3 - v8)
    {
      v10 = a3 - v8;
    }

    if (v10 >= v11 >> 2)
    {
      v12 = v11 >> 2;
    }

    else
    {
      v12 = v10;
    }

    if (v12 == -1)
    {
      v13 = a3 - v8;
    }

    else
    {
      v13 = v12;
    }

    DspLib::LinearDelay::write(a1, (a2 + 4 * v8), v13);
    v10 = *(a1 + 32) - v12;
    *(a1 + 32) = v10;
    v8 += v12;
  }

  while (v8 < a3);
  return v9;
}