uint64_t DspLib::LoudspeakerModel::Algorithm::process(uint64_t result, __int128 *a2, __int128 *a3)
{
  if (*(result + 512) == 1)
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    v4 = *a3;
    v5 = *(a3 + 2);
    v3 = *(result + 680);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v3 + 48))(v3, &v6, &v4);
  }

  return result;
}

uint64_t DspLib::BassQueen::FilterBankWeights::compute(uint64_t result, __int128 *a2)
{
  v22[256] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = result;
    v21 = *(a2 + 2);
    v4 = *(a2 + 1);
    if (v4 < 2)
    {
      v5 = **a2;
      v6 = v2;
    }

    else
    {
      v19 = *a2;
      v20 = *(a2 + 2);
      v5 = v22;
      DspLib::sum(&v19, v22, v2);
      DspLib::multiply(v22, v21, 1.0 / v4);
      v6 = v21;
    }

    DspLib::clear(*(v3 + 40), (*(v3 + 48) - *(v3 + 40)) >> 2);
    v7 = exp(-1.0 / (*(v3 + 8) * (*v3 * 1000.0 / v2) / 1000.0));
    DspLib::multiply(*(v3 + 64), (*(v3 + 72) - *(v3 + 64)) >> 2, v7);
    v8 = *(v3 + 40);
    if (*(v3 + 48) == v8)
    {
      v16 = 0;
    }

    else
    {
      v9 = 0;
      v10 = *(v3 + 88);
      v11 = 1;
      do
      {
        DspLib::Biquad::Filter::process((*(v3 + 16) + 104 * v9), v5, v6, v10, v2);
        v12 = DspLib::maxMagnitude(v10, v2);
        v13 = *(v3 + 64);
        v14 = v12 * v12;
        if (*(v13 + 4 * v9) >= v14)
        {
          v14 = *(v13 + 4 * v9);
        }

        *(v13 + 4 * v9) = v14;
        v8 = *(v3 + 40);
        v15 = *(v3 + 48);
        v8[v9] = v14 + *(*(v3 + 112) + 4 * v9);
        v9 = v11;
        v16 = (v15 - v8) >> 2;
      }

      while (v16 > v11++);
    }

    v18 = DspLib::sum(v8, v16);
    return DspLib::multiply(v8, v16, 1.0 / v18);
  }

  return result;
}

void DspLib::LoudspeakerModel::Algorithm::copyStatesFrom(DspLib::LoudspeakerModel::Algorithm *this, const DspLib::LoudspeakerModel::Algorithm *a2)
{
  DspLib::Biquad::Filter::copyStatesFrom((this + 512), (a2 + 512));
  if (*(this + 584) == 1)
  {

    DspLib::Biquad::Filter::copyStatesFrom((this + 584), (a2 + 584));
  }
}

void DspLib::BassQueen::MitigationAdaptation::update(DspLib::BassQueen::MitigationAdaptation *this, float a2, unsigned int a3)
{
  if (*this)
  {
    v4 = a2;
    if (a3 == 1)
    {
      *(this + 6) = 1065353216;
    }

    v6 = DspLib::sign(0, (a2 - *(this + 16)));
    v7 = 0;
    *(this + 15) = v6;
    *(this + 16) = v4;
    if (a3 >= 3)
    {
      v7 = v6 > 0.0;
      if (*(this + 14) >= 0.0)
      {
        v7 = 0;
      }
    }

    *(this + 68) = v7;
    if (v4 < 1.0 && ((*(this + 7) / -100.0) + 1.0) < v4)
    {
      v4 = (*(this + 7) / -100.0) + 1.0;
    }

    if (v4 > 1.0 && v4 < ((*(this + 7) / 100.0) + 1.0))
    {
      v4 = (*(this + 7) / 100.0) + 1.0;
    }

    if (!v7)
    {
      v8 = *(this + 4);
      *(this + 5) = v8;
      v9 = *(this + 3) * *(this + 6);
      v10 = v8 + (v9 * logf(v4));
      *(this + 4) = v10;
      v14 = 0;
      v11 = (this + 8);
      v12 = &v14;
      if (v10 <= 0.0)
      {
        v12 = this + 16;
      }

      if (v10 >= *(this + 2))
      {
        v11 = v12;
      }

      *(this + 4) = *v11;
    }

    v13 = DspLib::sign(0, (1.0 - v4));
    *(this + 14) = v13;
    if (*(this + 12) != v13)
    {
      *(this + 6) = *(this + 6) * 0.7;
      *(this + 12) = v13;
    }
  }

  else
  {
    DspLib::BassQueen::MitigationAdaptation::update();
  }
}

BOOL DspLib::BassQueen::MitigationAdaptation::mitigationIsAtLimit(DspLib::BassQueen::MitigationAdaptation *this)
{
  isEqual = DspLib::isEqual(this, *(this + 4), *(this + 2), 1.0e-20);
  if (isEqual)
  {
    return 1;
  }

  v4 = *(this + 4);

  return DspLib::isEqual(isEqual, v4, 0.0, 1.0e-20);
}

float DspLib::BassQueen::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::BassQueen::Algorithm::MeteringChain::status(a1 + 5184, a2, 0x20uLL, (a2 + 428), (a2 + 432));
    DspLib::BassQueen::Algorithm::MeteringChain::status(a1 + 6096, (a2 + 128), 0x20uLL, (a2 + 436), (a2 + 440));
    *(a2 + 256) = *(a1 + 5168);
    *(a2 + 260) = *(a1 + 5176);
    if ((*(a1 + 5048) & 1) == 0)
    {
      v6 = *(a1 + 5032);
      v7 = *(a1 + 5024);
      v8 = v6 - v7;
      if (v6 != v7)
      {
        v9 = 0;
        v10 = v8 >> 2;
        v11 = *(a1 + 4928);
        do
        {
          *(a2 + 4 * (v9 + 66)) = *(v7 + 4 * v9) * *(a1 + 5160);
          *(a2 + 4 * (v9 + 86)) = *(v11 + 4 * v9);
          ++v9;
        }

        while (v10 > v9);
      }
    }

    result = *(a1 + 5160);
    *(a2 + 424) = result;
  }

  return result;
}

uint64_t DspLib::BassQueen::Algorithm::MeteringChain::status(uint64_t a1, float *a2, vDSP_Length a3, float *a4, float *a5)
{
  DspLib::AudioMeter::Algorithm::status((a1 + 8), a2, a3);
  v8 = *(a1 + 896);
  v9 = *(a1 + 888);
  if (v8 == v9)
  {
    v10 = -100.0;
  }

  else
  {
    v10 = DspLib::amp2dBSafe(v9, *v9, 0.000001);
    v8 = *(a1 + 896);
    v9 = *(a1 + 888);
  }

  *a4 = v10;
  v11 = v8 - v9;
  if (v11 == 8)
  {
    v12 = DspLib::amp2dBSafe(v9, v9[1], 0.000001);
    v9 = *(a1 + 888);
    v11 = *(a1 + 896) - v9;
  }

  else
  {
    v12 = -100.0;
  }

  *a5 = v12;
  v13 = *a1;

  return DspLib::multiply(v9, v11 >> 2, v13);
}

void DspLib::BassQueen::Algorithm::MeteringChain::process(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = *a2;
  v30 = *(a2 + 16);
  DspLib::AudioMeter::Algorithm::analyze(a1 + 8, &v29);
  if (*(a1 + 712) == 1)
  {
    v5 = *(a2 + 16);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    if (*(a1 + 216) == 1)
    {
      v6 = v5;
    }

    else
    {
      v6 = ((v5 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    }

    v7 = MEMORY[0x1EEE9AC00](v4);
    v9 = &v26 - v8;
    v10 = *(a1 + 216);
    MEMORY[0x1EEE9AC00](v7);
    v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v11 >= 0x200)
    {
      v13 = 512;
    }

    else
    {
      v13 = v11;
    }

    bzero(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    if (v10)
    {
      v14 = 1;
      v15 = v12;
      do
      {
        *v15++ = v9;
        v9 += 4 * v6;
        v16 = v10 > v14++;
      }

      while (v16);
    }

    v17 = *(a2 + 16);
    v29 = *a2;
    v30 = *(a2 + 16);
    *&v27 = v12;
    *(&v27 + 1) = v10;
    v28 = v17;
    DspLib::LoudspeakerModel::Algorithm::process(a1 + 200, &v29, &v27);
    v18 = *(a1 + 896);
    v19 = *(a1 + 888);
    if (v18 != v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = *(a2 + 8);
      do
      {
        if (v22)
        {
          v23 = 0;
          v24 = 1;
          do
          {
            v25 = DspLib::maxMagnitude(*&v12[8 * v22 * v20 + 8 * v23], v17);
            if (*(v19 + 4 * v20) >= v25)
            {
              v25 = *(v19 + 4 * v20);
            }

            *(v19 + 4 * v20) = v25;
            v23 = v24;
            v22 = *(a2 + 8);
            v16 = v22 > v24++;
          }

          while (v16);
          v18 = *(a1 + 896);
          v19 = *(a1 + 888);
        }

        v20 = ++v21;
      }

      while (v21 < ((v18 - v19) >> 2));
    }
  }
}

void DspLib::BassQueen::Algorithm::totalStaticFrequencyResponse(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, double a5)
{
  v71[4] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 24);
  v45[0] = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v55 = xmmword_1DE095C00;
  v56 = unk_1DE095C10;
  memset(v57, 0, sizeof(v57));
  v51 = xmmword_1DE095BC0;
  v52 = unk_1DE095BD0;
  v53 = xmmword_1DE095BE0;
  v54 = unk_1DE095BF0;
  v49 = DspLib::LoudspeakerModel::Parameters::kDefault;
  v50 = unk_1DE095BB0;
  memset(v63, 0, 76);
  v60 = xmmword_1DE095C5C;
  v61 = unk_1DE095C6C;
  v62 = xmmword_1DE095C7C;
  v58 = DspLib::LoudspeakerModel::Parameters::kMinimum;
  v59 = *algn_1DE095C4C;
  *(&v63[21] + 4) = xmmword_1DE095D38;
  *(&v63[23] + 4) = unk_1DE095D48;
  memset(&v63[25] + 4, 0, 28);
  *(&v63[13] + 4) = xmmword_1DE095CF8;
  *(&v63[15] + 4) = unk_1DE095D08;
  *(&v63[17] + 4) = xmmword_1DE095D18;
  *(&v63[19] + 4) = unk_1DE095D28;
  *(&v63[9] + 4) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(&v63[11] + 4) = unk_1DE095CE8;
  v63[29] = 0;
  v64 = 0;
  v68 = 0u;
  __p = 0u;
  memset(v70, 0, sizeof(v70));
  v71[3] = 0;
  v65 = 0u;
  v66 = 0u;
  memset(v67, 0, 33);
  DspLib::LoudspeakerModel::Algorithm::setParameters(v45, (v10 + 200), 39);
  DspLib::LoudspeakerModel::Algorithm::initialize(v45, 1, a5);
  DspLib::ChannelBuffer::ChannelBuffer(v14, 0, 0);
  DspLib::LoudspeakerModel::Algorithm::frequencyResponse(v45, a2, a3, v14);
  v11 = *v14[0];
  v12 = (*(v14[0] + 1) - *v14[0]) >> 2;
  if (0xAAAAAAAAAAAAAAABLL * ((v14[1] - v14[0]) >> 3) < 2)
  {
    DspLib::copy(v11, v12, a4);
  }

  else
  {
    DspLib::vmax(v11, v12, *(v14[0] + 3), (*(v14[0] + 4) - *(v14[0] + 3)) >> 2, a4);
  }

  if (*(a1 + 5049) == 1)
  {
    v15[0] = 0;
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v25 = xmmword_1DE095C00;
    v26 = unk_1DE095C10;
    memset(v27, 0, sizeof(v27));
    v21 = xmmword_1DE095BC0;
    v22 = unk_1DE095BD0;
    v23 = xmmword_1DE095BE0;
    v24 = unk_1DE095BF0;
    v19 = DspLib::LoudspeakerModel::Parameters::kDefault;
    v20 = unk_1DE095BB0;
    memset(v33, 0, 76);
    v30 = xmmword_1DE095C5C;
    v31 = unk_1DE095C6C;
    v32 = xmmword_1DE095C7C;
    v28 = DspLib::LoudspeakerModel::Parameters::kMinimum;
    v29 = *algn_1DE095C4C;
    *(&v33[21] + 4) = xmmword_1DE095D38;
    *(&v33[23] + 4) = unk_1DE095D48;
    memset(&v33[25] + 4, 0, 28);
    *(&v33[13] + 4) = xmmword_1DE095CF8;
    *(&v33[15] + 4) = unk_1DE095D08;
    *(&v33[17] + 4) = xmmword_1DE095D18;
    *(&v33[19] + 4) = unk_1DE095D28;
    *(&v33[9] + 4) = DspLib::LoudspeakerModel::Parameters::kMaximum;
    *(&v33[11] + 4) = unk_1DE095CE8;
    v33[29] = 1;
    v34 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    DspLib::LoudspeakerModel::Algorithm::setParameters(v15, (v10 + 200), 39);
    DspLib::LoudspeakerModel::Algorithm::initialize(v15, 1, a5);
    DspLib::ChannelBuffer::ChannelBuffer(v13, 0, 0);
    DspLib::LoudspeakerModel::Algorithm::frequencyResponse(v15, a2, a3, v13);
    DspLib::add();
  }

  DspLib::ChannelBuffer::~ChannelBuffer(v14);
  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](v71);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v70[8]);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v67[8]);
  if (v66)
  {
    *(&v66 + 1) = v66;
    operator delete(v66);
  }
}

void sub_1DDBA9DB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void DspLib::BassQueen::Algorithm::~Algorithm(DspLib::BassQueen::Algorithm *this)
{
  DspLib::BassQueen::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59195A0;
  v2 = *(this + 873);
  if (v2)
  {
    *(this + 874) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](this + 6952);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 6928));
  v3 = *(this + 863);
  if (v3)
  {
    *(this + 864) = v3;
    operator delete(v3);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 6856));
  v4 = *(this + 854);
  if (v4)
  {
    *(this + 855) = v4;
    operator delete(v4);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 6240));
  v5 = *(this + 777);
  if (v5)
  {
    *(this + 778) = v5;
    operator delete(v5);
  }

  v6 = *(this + 774);
  if (v6)
  {
    *(this + 775) = v6;
    operator delete(v6);
  }

  v7 = *(this + 771);
  if (v7)
  {
    *(this + 772) = v7;
    operator delete(v7);
  }

  v33 = (this + 6144);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v33);
  v8 = *(this + 759);
  if (v8)
  {
    *(this + 760) = v8;
    operator delete(v8);
  }

  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](this + 6040);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 6016));
  v9 = *(this + 749);
  if (v9)
  {
    *(this + 750) = v9;
    operator delete(v9);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 5944));
  v10 = *(this + 740);
  if (v10)
  {
    *(this + 741) = v10;
    operator delete(v10);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 5328));
  v11 = *(this + 663);
  if (v11)
  {
    *(this + 664) = v11;
    operator delete(v11);
  }

  v12 = *(this + 660);
  if (v12)
  {
    *(this + 661) = v12;
    operator delete(v12);
  }

  v13 = *(this + 657);
  if (v13)
  {
    *(this + 658) = v13;
    operator delete(v13);
  }

  v33 = (this + 5232);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v33);
  v14 = *(this + 639);
  if (v14)
  {
    *(this + 640) = v14;
    operator delete(v14);
  }

  v15 = *(this + 628);
  if (v15)
  {
    *(this + 629) = v15;
    operator delete(v15);
  }

  v16 = *(this + 625);
  if (v16)
  {
    *(this + 626) = v16;
    operator delete(v16);
  }

  v17 = *(this + 622);
  if (v17)
  {
    *(this + 623) = v17;
    operator delete(v17);
  }

  v18 = *(this + 619);
  if (v18)
  {
    *(this + 620) = v18;
    operator delete(v18);
  }

  v19 = *(this + 616);
  if (v19)
  {
    *(this + 617) = v19;
    operator delete(v19);
  }

  v33 = (this + 4904);
  std::vector<DspLib::Biquad::ParametricFilter>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = (this + 4792);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = (this + 4768);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = (this + 4744);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = (this + 4720);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v33);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 4688));
  v20 = *(this + 583);
  if (v20)
  {
    *(this + 584) = v20;
    operator delete(v20);
  }

  v33 = (this + 4616);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v33);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 4584));
  v21 = *(this + 570);
  if (v21)
  {
    *(this + 571) = v21;
    operator delete(v21);
  }

  DspLib::ConstantQFilterbank::Modifier::~Modifier((this + 3960));
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3936));
  v22 = *(this + 489);
  if (v22)
  {
    *(this + 490) = v22;
    operator delete(v22);
  }

  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](this + 3856);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3832));
  v23 = *(this + 476);
  if (v23)
  {
    *(this + 477) = v23;
    operator delete(v23);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3760));
  v24 = *(this + 467);
  if (v24)
  {
    *(this + 468) = v24;
    operator delete(v24);
  }

  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](this + 3168);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3144));
  v25 = *(this + 390);
  if (v25)
  {
    *(this + 391) = v25;
    operator delete(v25);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3072));
  v26 = *(this + 381);
  if (v26)
  {
    *(this + 382) = v26;
    operator delete(v26);
  }

  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](this + 2480);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 2456));
  v27 = *(this + 304);
  if (v27)
  {
    *(this + 305) = v27;
    operator delete(v27);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 2384));
  v28 = *(this + 295);
  if (v28)
  {
    *(this + 296) = v28;
    operator delete(v28);
  }

  v29 = *(this + 225);
  if (v29)
  {
    *(this + 226) = v29;
    operator delete(v29);
  }

  v33 = (this + 1768);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = (this + 1736);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = (this + 1688);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v30 = *(this + 206);
  if (v30)
  {
    *(this + 207) = v30;
    operator delete(v30);
  }

  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](this + 1608);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1584));
  v31 = *(this + 195);
  if (v31)
  {
    *(this + 196) = v31;
    operator delete(v31);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1512));
  v32 = *(this + 186);
  if (v32)
  {
    *(this + 187) = v32;
    operator delete(v32);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

DspLib::BassQueen::Algorithm::MeteringChain *DspLib::BassQueen::Algorithm::MeteringChain::MeteringChain(DspLib::BassQueen::Algorithm::MeteringChain *this)
{
  *this = 1063756653;
  *(this + 1) = 0;
  *(this + 1) = DspLib::AudioMeter::Parameters::kDefault;
  *(this + 2) = *algn_1DE095D84;
  *(this + 3) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 144), 0, 0);
  *(this + 328) = xmmword_1DE095C00;
  *(this + 344) = unk_1DE095C10;
  *(this + 360) = xmmword_1DE095C20;
  *(this + 372) = *(&xmmword_1DE095C20 + 12);
  *(this + 264) = xmmword_1DE095BC0;
  *(this + 280) = unk_1DE095BD0;
  *(this + 296) = xmmword_1DE095BE0;
  *(this + 312) = unk_1DE095BF0;
  *(this + 484) = xmmword_1DE095C9C;
  *(this + 500) = unk_1DE095CAC;
  *(this + 516) = xmmword_1DE095CBC;
  *(this + 420) = xmmword_1DE095C5C;
  *(this + 436) = unk_1DE095C6C;
  *(this + 452) = xmmword_1DE095C7C;
  *(this + 468) = unk_1DE095C8C;
  *(this + 388) = DspLib::LoudspeakerModel::Parameters::kMinimum;
  *(this + 404) = *algn_1DE095C4C;
  *(this + 41) = unk_1DE095D48;
  *(this + 42) = xmmword_1DE095D58;
  *(this + 684) = *(&xmmword_1DE095D58 + 12);
  *(this + 232) = DspLib::LoudspeakerModel::Parameters::kDefault;
  *(this + 248) = unk_1DE095BB0;
  *(this + 37) = unk_1DE095D08;
  *(this + 38) = xmmword_1DE095D18;
  *(this + 39) = unk_1DE095D28;
  *(this + 40) = xmmword_1DE095D38;
  *(this + 33) = *(&xmmword_1DE095CBC + 12);
  *(this + 34) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(this + 48) = 0;
  *(this + 200) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 35) = unk_1DE095CE8;
  *(this + 36) = xmmword_1DE095CF8;
  *(this + 700) = 0;
  *(this + 712) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 784) = 0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  return this;
}

void sub_1DDBAA084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v2 + 120);
  if (v5)
  {
    *(v2 + 128) = v5;
    operator delete(v5);
  }

  DspLib::BassQueen::Algorithm::MeteringChain::MeteringChain(v3, (v2 + 72), v2);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DspLib::RMS>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<DspLib::RMS>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 192)
  {
    v7 = (i - 32);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
    v4 = *(i - 80);
    if (v4)
    {
      *(i - 72) = v4;
      operator delete(v4);
    }

    v5 = *(i - 104);
    if (v5)
    {
      *(i - 96) = v5;
      operator delete(v5);
    }

    v6 = *(i - 144);
    if (v6)
    {
      *(i - 136) = v6;
      operator delete(v6);
    }
  }

  a1[1] = v2;
}

void DspLib::BassQueen::Algorithm::MeteringChain::~MeteringChain(DspLib::BassQueen::Algorithm::MeteringChain *this)
{
  v2 = *(this + 111);
  if (v2)
  {
    *(this + 112) = v2;
    operator delete(v2);
  }

  DspLib::LoudspeakerModel::Algorithm::~Algorithm((this + 200));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 144));
  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = (this + 48);
  std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void DspLib::BassQueen::FilterBankWeights::~FilterBankWeights(DspLib::BassQueen::FilterBankWeights *this)
{
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

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = (this + 16);
  std::vector<DspLib::Biquad::ParametricFilter>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void std::vector<DspLib::Biquad::ParametricFilter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DspLib::Biquad::ParametricFilter>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<DspLib::Biquad::ParametricFilter>::clear[abi:ne200100](void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v7 = v4;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
      DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v4 - 4));
      v5 = *(v4 - 7);
      if (v5)
      {
        *(v4 - 6) = v5;
        operator delete(v5);
      }

      v6 = v4 - 10;
      v4 -= 13;
    }

    while (v6 != v3);
  }

  a1[1] = v3;
}

void DspLib::ConstantQFilterbank::Modifier::~Modifier(DspLib::ConstantQFilterbank::Modifier *this)
{
  v2 = *(this + 69);
  if (v2)
  {
    *(this + 70) = v2;
    operator delete(v2);
  }

  v10 = (this + 528);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v3 = *(this + 62);
  if (v3)
  {
    *(this + 63) = v3;
    operator delete(v3);
  }

  v4 = *(this + 57);
  if (v4)
  {
    *(this + 58) = v4;
    operator delete(v4);
  }

  v5 = *(this + 54);
  if (v5)
  {
    *(this + 55) = v5;
    operator delete(v5);
  }

  v10 = (this + 400);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 368));
  v6 = *(this + 43);
  if (v6)
  {
    *(this + 44) = v6;
    operator delete(v6);
  }

  v10 = (this + 296);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 264));
  v7 = *(this + 30);
  if (v7)
  {
    *(this + 31) = v7;
    operator delete(v7);
  }

  v10 = (this + 192);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 160));
  v8 = *(this + 17);
  if (v8)
  {
    *(this + 18) = v8;
    operator delete(v8);
  }

  v10 = (this + 88);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 56));
  v9 = *(this + 4);
  if (v9)
  {
    *(this + 5) = v9;
    operator delete(v9);
  }
}

uint64_t std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator(DspLib::PolyPhaseInterpolator *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = (this + 48);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 16);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<DspLib::CircularDelay>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<DspLib::CircularDelay>::__append(a1, v5);
  }
}

void std::vector<DspLib::CircularDelay>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      std::allocator<DspLib::CircularDelay>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v15 = 0;
    v16 = 32 * v8;
    bzero((32 * v8), 32 * a2);
    v17 = 32 * v8 + 32 * a2;
    v11 = *(a1 + 8);
    v12 = (32 * v8 + *a1 - v11);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::CircularDelay>,DspLib::CircularDelay*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::~__split_buffer(&v15);
  }
}

void sub_1DDBAA728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::CircularDelay>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::CircularDelay>,DspLib::CircularDelay*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      v7 = *(v6 + 24);
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = v7;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v8;
        operator delete(v8);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::CircularDelay>,DspLib::CircularDelay*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::CircularDelay>,DspLib::CircularDelay*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sub_1DDBAA974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::BassQueen::Algorithm::latencySamples()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassQueen/dsp/DspLibBassQueen.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 129);
  ++DspLibDebug::mAssertCounter;
  return result;
}

uint64_t DspLib::BassQueen::MitigationAdaptation::update()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassQueen/dsp/DspLibMitigationAdaptation.h");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 64);
  ++DspLibDebug::mAssertCounter;
  return result;
}

void DspLib::BassQueen::Algorithm::MeteringChain::MeteringChain(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 104) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 80) = v6;

    operator delete(v6);
  }
}

DspLib::NotchFilterBank::FilterBank *DspLib::NotchFilterBank::FilterBank::FilterBank(DspLib::NotchFilterBank::FilterBank *this)
{
  v2 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::NotchFilterBank::Parameters::kDefault, 0x10uLL, &DspLib::NotchFilterBank::Parameters::kMinimum, 16, &DspLib::NotchFilterBank::Parameters::kMaximum, 16);
  *v2 = &unk_1F59196C0;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((v2 + 288), 0, 0);
  *(this + 42) = 0;
  *(this + 86) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 136) = 1065353216;
  *(this + 145) = 0;
  *(this + 69) = 0;
  *(this + 35) = 0u;
  *(this + 576) = 0;
  *(this + 146) = 1065353216;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 76) = 0;
  *(this + 37) = 0u;
  *(this + 616) = 0;
  *(this + 90) = 0x447A000000000017;
  *(this + 91) = 0x3F80000000000000;
  return this;
}

void sub_1DDBAAFBC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 33);
  if (v4)
  {
    *(v1 + 34) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 31) = v5;
    operator delete(v5);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(v1);
  _Unwind_Resume(a1);
}

void DspLib::NotchFilterBank::FilterBank::~FilterBank(DspLib::NotchFilterBank::FilterBank *this)
{
  *this = &unk_1F59196C0;
  *(this + 28) = *(this + 27);
  DspLib::NotchFilterBank::FilterBank::cleanUp(this);
  *(this + 8) = 0;
  v12 = (this + 696);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 664));
  v2 = *(this + 80);
  if (v2)
  {
    *(this + 81) = v2;
    operator delete(v2);
  }

  v12 = (this + 592);
  std::vector<DspLib::Biquad::ParametricFilter>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (this + 552);
  std::vector<DspLib::Biquad::ParametricFilter>::__destroy_vector::operator()[abi:ne200100](&v12);
  v3 = *(this + 65);
  if (v3)
  {
    *(this + 66) = v3;
    operator delete(v3);
  }

  v4 = *(this + 62);
  if (v4)
  {
    *(this + 63) = v4;
    operator delete(v4);
  }

  v5 = *(this + 59);
  if (v5)
  {
    *(this + 60) = v5;
    operator delete(v5);
  }

  v6 = *(this + 56);
  if (v6)
  {
    *(this + 57) = v6;
    operator delete(v6);
  }

  v7 = *(this + 53);
  if (v7)
  {
    *(this + 54) = v7;
    operator delete(v7);
  }

  v8 = *(this + 50);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 47);
  if (v9)
  {
    *(this + 48) = v9;
    operator delete(v9);
  }

  v12 = (this + 352);
  std::vector<DspLib::Biquad::ParametricFilter>::__destroy_vector::operator()[abi:ne200100](&v12);
  DspLib::ChannelBuffer::~ChannelBuffer((this + 288));
  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  v11 = *(this + 30);
  if (v11)
  {
    *(this + 31) = v11;
    operator delete(v11);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

{
  DspLib::NotchFilterBank::FilterBank::~FilterBank(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t DspLib::NotchFilterBank::FilterBank::initialize(DspLib::NotchFilterBank::FilterBank *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    if ((*(*this + 64))(this) >= 0x41)
    {
      DspLib::NotchFilterBank::FilterBank::initialize();
      return v4;
    }

    v5 = *(this + 85);
    if (!v5)
    {
      DspLib::NotchFilterBank::FilterBank::initialize();
      return v4;
    }

    *(this + 90) = 0x447A000000000000;
    *(this + 182) = 0;
    std::vector<float>::resize(this + 53, v5);
    std::vector<float>::resize(this + 56, *(this + 85));
    std::vector<float>::resize(this + 59, *(this + 85));
    std::vector<float>::resize(this + 62, *(this + 85));
    std::vector<float>::resize(this + 65, *(this + 85));
    DspLib::fill(*(this + 53), (*(this + 54) - *(this + 53)) >> 2, 1000.0);
    DspLib::fill(*(this + 56), (*(this + 57) - *(this + 56)) >> 2, 1000.0);
    DspLib::clear(*(this + 59), (*(this + 60) - *(this + 59)) >> 2);
    DspLib::fill(*(this + 62), (*(this + 63) - *(this + 62)) >> 2, 1.0);
    DspLib::clear(*(this + 65), (*(this + 66) - *(this + 65)) >> 2);
    std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](this + 552, *(this + 69));
    if (*(this + 85))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(this + 70);
        if (v8 >= *(this + 71))
        {
          v9 = std::vector<DspLib::Biquad::ParametricFilter>::__emplace_back_slow_path<>(this + 69);
        }

        else
        {
          *(v8 + 96) = 0;
          *(v8 + 64) = 0u;
          *(v8 + 80) = 0u;
          *(v8 + 32) = 0u;
          *(v8 + 48) = 0u;
          v9 = v8 + 104;
          *v8 = 0u;
          *(v8 + 16) = 0u;
        }

        *(this + 70) = v9;
        DspLib::Biquad::ParametricFilter::initialize((*(this + 69) + v6), 1uLL, *(this + 2), 1uLL);
        ++v7;
        v6 += 104;
      }

      while (v7 < *(this + 85));
    }

    DspLib::Biquad::ParametricFilter::initialize((this + 616), 1uLL, *(this + 2), 1uLL);
    v10 = *(this + 84);
    if (v10)
    {
      if (v10 != 1)
      {
        v20 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
        printf("DSP Sound assertion in %s at line %d\n", v20, 82);
        ++DspLibDebug::mAssertCounter;
        return v4;
      }

      v11 = *(this + 85);
      v12 = (*(*this + 64))(this);
      std::vector<DspLib::NotchFilterBank::FilterBank::AdaptiveFilterStates>::resize(this + 47, (v12 * v11));
    }

    else
    {
      std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](this + 352, *(this + 44));
      if (*(this + 85))
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(this + 45);
          if (v15 >= *(this + 46))
          {
            v16 = std::vector<DspLib::Biquad::ParametricFilter>::__emplace_back_slow_path<>(this + 44);
          }

          else
          {
            *(v15 + 96) = 0;
            *(v15 + 64) = 0u;
            *(v15 + 80) = 0u;
            *(v15 + 32) = 0u;
            *(v15 + 48) = 0u;
            v16 = v15 + 104;
            *v15 = 0u;
            *(v15 + 16) = 0u;
          }

          *(this + 45) = v16;
          v17 = *(this + 44);
          v18 = (*(*this + 64))(this);
          DspLib::Biquad::ParametricFilter::initialize((v17 + v13), v18, *(this + 2), 1uLL);
          ++v14;
          v13 += 104;
        }

        while (v14 < *(this + 85));
      }
    }

    std::vector<float>::resize(this + 30, 0x200uLL);
    std::vector<float>::resize(this + 33, 0x200uLL);
    v19 = (*(*this + 64))(this);
    DspLib::ChannelBuffer::resize((this + 288), v19, 0x200uLL);
    std::vector<BOOL>::resize(this + 400, *(this + 85), 0);
    *(this + 8) = 1;
    (*(*this + 160))(this);
  }

  return v4;
}

void std::vector<DspLib::NotchFilterBank::FilterBank::AdaptiveFilterStates>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::NotchFilterBank::FilterBank::AdaptiveFilterStates>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 36 * a2;
  }
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_1DDBAB6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::NotchFilterBank::FilterBank::uninitialize(DspLib::NotchFilterBank::FilterBank *this)
{
  *(this + 28) = *(this + 27);
  DspLib::NotchFilterBank::FilterBank::cleanUp(this);
  *(this + 8) = 0;
}

void DspLib::NotchFilterBank::FilterBank::cleanUp(DspLib::NotchFilterBank::FilterBank *this)
{
  *(this + 51) = 0;
  *(this + 31) = *(this + 30);
  *(this + 34) = *(this + 33);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 36);
  *(this + 40) = *(this + 39);
  *(this + 54) = *(this + 53);
  *(this + 57) = *(this + 56);
  *(this + 60) = *(this + 59);
  *(this + 63) = *(this + 62);
  *(this + 66) = *(this + 65);
  std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](this + 592, *(this + 74));
  std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](this + 552, *(this + 69));
  std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](this + 352, *(this + 44));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 616));
  v2 = *(this + 84);
  if (v2)
  {
    if (v2 == 1)
    {
      *(this + 48) = *(this + 47);
    }

    else
    {
      v3 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
      printf("DSP Sound assertion in %s at line %d\n", v3, 139);
      ++DspLibDebug::mAssertCounter;
    }
  }
}

void DspLib::NotchFilterBank::FilterBank::reset(DspLib::NotchFilterBank::FilterBank *this)
{
  v2 = *(this + 44);
  v3 = *(this + 45);
  while (v2 != v3)
  {
    DspLib::Biquad::SetupWrapper::reset((v2 + 48));
    v2 += 104;
  }

  v4 = *(this + 69);
  v5 = *(this + 70);
  while (v4 != v5)
  {
    DspLib::Biquad::SetupWrapper::reset((v4 + 48));
    v4 += 104;
  }

  if (*(this + 47) != *(this + 48))
  {
    v6 = *(this + 85);
    if ((*(*this + 64))(this) * v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(this + 47) + v7;
        *(v9 + 4) = 0;
        *(v9 + 12) = 0;
        *(v9 + 24) = 0;
        ++v8;
        v10 = *(this + 85);
        v7 += 36;
      }

      while (v8 < (*(*this + 64))(this) * v10);
    }
  }

  v11 = *(this + 51);
  if (v11 >= 1)
  {
    v14 = *(this + 50);
    v15 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v14, v11);
  }

  *(this + 576) = 0;
  v12 = *(this + 74);
  v13 = *(this + 75);
  while (v12 != v13)
  {
    DspLib::Biquad::SetupWrapper::reset((v12 + 48));
    v12 += 104;
  }

  DspLib::Biquad::SetupWrapper::reset((this + 664));
  *(this + 86) = 0;
}

void DspLib::NotchFilterBank::FilterBank::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if (*(a1 + 8) == 1)
  {
    v5 = round(*(a1 + 16));
    v6 = *(a1 + 552);
    v7 = *(a1 + 560);
    v8 = (COERCE_UNSIGNED_INT(1000.0 / *(*(a1 + 24) + 16)) << 32) | 6;
    while (v6 != v7)
    {
      DspLib::Biquad::ParametricFilter::initialize(v6, 1uLL, v5, 1uLL);
      DspLib::Biquad::ParametricFilter::setParametricEQ(v6, v8, 0x3F00000000000000, 0, 0x41uLL);
      v6 += 104;
    }

    DspLib::Biquad::ParametricFilter::initialize((a1 + 616), 1uLL, v5, 1uLL);
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 616, v8, 0x3F00000000000000, 0, 0x41uLL);
    if (*(a1 + 336) == 1)
    {
      v10 = -1.0 / (*(a1 + 16) * *(*(a1 + 24) + 20) / 1000.0);
      v11 = expf(v10);
      v12 = *(a1 + 340);
      v9 = (*(*a1 + 64))(a1);
      if (v9 * v12)
      {
        v13 = 0;
        v6 = 0;
        v14 = 1.0 - v11;
        do
        {
          v15 = *(a1 + 376) + v13;
          *(v15 + 8) = v14;
          v16 = *(*(a1 + 24) + 24);
          v17 = 0.0;
          if (v16 >= 100.0)
          {
            v17 = 2500.0 / (*(a1 + 16) * v16);
          }

          *(v15 + 32) = v17;
          ++v6;
          v18 = *(a1 + 340);
          v9 = (*(*a1 + 64))(a1);
          v13 += 36;
        }

        while (v6 < (v9 * v18));
      }
    }

    LODWORD(v6) = vcvtas_u32_f32(*(*(a1 + 24) + 28));
    v19 = *(a1 + 600);
    v20 = *(a1 + 592);
    if (0x4EC4EC4EC4EC4EC5 * ((v19 - v20) >> 3) != v6)
    {
      std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](a1 + 592, *(a1 + 592));
      std::vector<DspLib::Biquad::ParametricFilter>::resize((a1 + 592), v6);
      v20 = *(a1 + 592);
      v19 = *(a1 + 600);
    }

    while (v20 != v19)
    {
      v21 = (*(*a1 + 64))(a1);
      DspLib::Biquad::ParametricFilter::initialize(v20, v21, v5, 1uLL);
      v20 = (v20 + 104);
    }

    *(a1 + 544) = DspLib::dB2Amp(v9, *(*(a1 + 24) + 12));
    *(a1 + 584) = DspLib::dB2Amp(v22, *(*(a1 + 24) + 12) / (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 600) - *(a1 + 592)) >> 3)));
    DspLib::NotchFilterBank::FilterBank::setFilterBankParameters(a1, *(a1 + 340));
    v23 = *(a1 + 352);
    v24 = *(a1 + 360);
    while (v23 != v24)
    {
      v25 = (*(*a1 + 64))(a1);
      DspLib::Biquad::ParametricFilter::initialize(v23, v25, v5, 1uLL);
      v23 = (v23 + 104);
    }

    v26 = *(*(a1 + 24) + 32);

    DspLib::NotchFilterBank::FilterBank::setLowShelveQuality(a1, v26);
  }
}

void std::vector<DspLib::Biquad::ParametricFilter>::resize(void *a1, unint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::Biquad::ParametricFilter>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 104 * a2);
  }
}

void DspLib::NotchFilterBank::FilterBank::setFilterBankParameters(DspLib::NotchFilterBank::FilterBank *this, unsigned int a2)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8);
  v5 = 23;
  if (v4 == 1)
  {
    v5 = 14;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 13;
  }

  v7 = *(this + 84);
  if (v7 == 1)
  {
    v17 = 6.28318531 / *(this + 2);
    v18 = 0.0;
    if (v4)
    {
      if (v4 == 1)
      {
        v19 = 0.0;
        v18 = v17 / *(v3 + 4);
        if (!a2)
        {
          return;
        }
      }

      else
      {
        v19 = 0.0;
        if (!a2)
        {
          return;
        }
      }
    }

    else
    {
      v19 = (v17 * 140.37) / *(v3 + 4);
      if (!a2)
      {
        return;
      }
    }

    v21 = 0;
    v22 = a2;
    do
    {
      v23 = *(*(this + 53) + 4 * v21);
      v24 = *(*(this + 62) + 4 * v21);
      if ((*(*this + 64))(this))
      {
        v25 = 0;
        v26 = v19 + (v18 * v23);
        if ((v26 * (1.0 / v24)) <= 1.0)
        {
          v27 = v26 * (1.0 / v24);
        }

        else
        {
          v27 = 1.0;
        }

        v28 = v23 * v17;
        do
        {
          *(*(this + 47) + 36 * (v25 + v21 * (*(*this + 64))(this)) + 20) = v27;
          *(*(this + 47) + 36 * (v25 + v21 * (*(*this + 64))(this))) = v28;
          ++v25;
        }

        while (v25 < (*(*this + 64))(this));
      }

      ++v21;
    }

    while (v21 != v22);
  }

  else if (v7)
  {
    v20 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v20, 404);
    ++DspLibDebug::mAssertCounter;
  }

  else if (a2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = *(this + 3);
      v11 = *(this + 62);
      v12 = *(this + 56);
      v13 = *(v10 + 4) * *(v11 + 4 * v8);
      v14 = *(this + 53);
      v15 = *(v14 + 4 * v8);
      v16 = *(this + 65);
      if (*(v12 + 4 * v8) != v15 || v13 != *(v16 + 4 * v8))
      {
        *(v12 + 4 * v8) = v15;
        *(v16 + 4 * v8) = v13;
        DspLib::Biquad::ParametricFilter::setParametricEQ(*(this + 44) + 104 * v8, v6 | (*(v14 + 4 * v8) << 32), (COERCE_UNSIGNED_INT(*(v10 + 4) * *(v11 + 4 * v8)) << 32), 0, 0x41uLL);
      }

      ++v8;
    }

    while (v8 != v9);
  }
}

void DspLib::NotchFilterBank::FilterBank::setLowShelveQuality(DspLib::NotchFilterBank::FilterBank *this, float a2)
{
  *(this + 183) = a2;
  v2 = *(this + 74);
  for (i = *(this + 75); v2 != i; v2 += 104)
  {
    DspLib::Biquad::ParametricFilter::setParametricEQ(v2, *(this + 90), *(this + 91), 0, 0x41uLL);
  }
}

void DspLib::NotchFilterBank::FilterBank::setFilterMode(uint64_t a1, int a2)
{
  if (*(a1 + 8) == 1)
  {
    DspLib::NotchFilterBank::FilterBank::setFilterMode();
  }

  else if (a2 >= 2)
  {
    DspLib::NotchFilterBank::FilterBank::setFilterMode();
  }

  else
  {
    *(a1 + 336) = a2;
  }
}

void DspLib::NotchFilterBank::FilterBank::setNumNotchFilters(DspLib::NotchFilterBank::FilterBank *this, unsigned int a2)
{
  if (*(this + 8) == 1)
  {
    DspLib::NotchFilterBank::FilterBank::setNumNotchFilters();
  }

  else if (a2 >= 0x65)
  {
    DspLib::NotchFilterBank::FilterBank::setNumNotchFilters();
  }

  else if (a2)
  {
    *(this + 85) = a2;
  }

  else
  {
    DspLib::NotchFilterBank::FilterBank::setNumNotchFilters();
  }
}

void DspLib::NotchFilterBank::FilterBank::setNotchFilters(DspLib::NotchFilterBank::FilterBank *this, float *__src, float *a3, float *a4, unsigned int a5)
{
  if (*(this + 85) < a5)
  {
    DspLib::NotchFilterBank::FilterBank::setNotchFilters();
  }

  else if (__src)
  {
    if (a3)
    {
      if (a5)
      {
        v7 = *(this + 59);
        v8 = a5;
        v9 = *(this + 62);
        v10 = a5;
        v11 = a4;
        v12 = __src;
        do
        {
          if (*v12 <= 20000.0)
          {
            v13 = v12;
          }

          else
          {
            v13 = &DspLib::NotchFilterBank::kMaxFilterFrequency;
          }

          if (*v12 < 20.0)
          {
            v13 = &DspLib::NotchFilterBank::kMinFilterFrequency;
          }

          *v12 = *v13;
          v14 = 0.0;
          if (*a3 >= 0.0)
          {
            v14 = 1.0;
            if (*a3 <= 1.0)
            {
              v14 = *a3;
            }
          }

          *a3 = v14;
          v15 = 1.0;
          *v7 = 1.0 - v14;
          if (a4)
          {
            v15 = *v11;
          }

          *v9++ = v15;
          ++v12;
          ++a3;
          ++v11;
          ++v7;
          --v10;
        }

        while (v10);
      }

      else
      {
        v8 = 0;
      }

      DspLib::copy(__src, v8, *(this + 53));

      DspLib::NotchFilterBank::FilterBank::setFilterBankParameters(this, a5);
    }

    else
    {
      DspLib::NotchFilterBank::FilterBank::setNotchFilters();
    }
  }

  else
  {
    DspLib::NotchFilterBank::FilterBank::setNotchFilters();
  }
}

void DspLib::NotchFilterBank::FilterBank::setLowShelveFrequency(DspLib::NotchFilterBank::FilterBank *this, float a2)
{
  v2 = 20000.0;
  if (a2 <= 20000.0)
  {
    v2 = a2;
  }

  if (a2 >= 20.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 20.0;
  }

  *(this + 181) = v3;
  v4 = *(this + 74);
  for (i = *(this + 75); v4 != i; v4 += 104)
  {
    DspLib::Biquad::ParametricFilter::setParametricEQ(v4, *(this + 90), *(this + 91), 0, 0x41uLL);
  }
}

float DspLib::NotchFilterBank::FilterBank::setLowShelveGain(DspLib::NotchFilterBank::FilterBank *this, float a2)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  result = 1.0 - powf(fmaxf(a2, 0.00001), 1.0 / (0x4EC4EC4EC4EC4EC5 * ((*(this + 75) - *(this + 74)) >> 3)));
  *(this + 145) = result;
  return result;
}

void DspLib::NotchFilterBank::FilterBank::processBlock(_DWORD *a1, __int128 *a2)
{
  if (*(a2 + 2) >= 0x201uLL)
  {
    DspLib::NotchFilterBank::FilterBank::processBlock();
  }

  else if ((*(*a1 + 40))(a1))
  {
    a1[86] = 0;
    v4 = *a2;
    v5 = *(a2 + 2);
    DspLib::NotchFilterBank::FilterBank::processLowShelveBlock(a1, &v4);
    v4 = *a2;
    v5 = *(a2 + 2);
    DspLib::NotchFilterBank::FilterBank::processNotchFilterBlock(a1, &v4);
  }

  else
  {
    DspLib::NotchFilterBank::FilterBank::processBlock();
  }
}

void DspLib::NotchFilterBank::FilterBank::processLowShelveBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (*(a1 + 580) <= *(a1 + 584))
    {
      if ((*(a1 + 576) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *(a1 + 576) = 1;
    }

    ++*(a1 + 344);
    std::vector<float>::resize((a1 + 240), v2);
    DspLib::fill(*(a1 + 240), (*(a1 + 248) - *(a1 + 240)) >> 2, *(a1 + 580));
    DspLib::Biquad::Filter::process((a1 + 616), *(a1 + 240), (*(a1 + 248) - *(a1 + 240)) >> 2, *(a1 + 240), (*(a1 + 248) - *(a1 + 240)) >> 2);
    if (*(*(a1 + 240) + 4 * v2 - 4) < *(a1 + 584))
    {
      *(a1 + 576) = 0;
    }

    v5 = *(a1 + 592);
    v6 = *(a1 + 600);
    while (v5 != v6)
    {
      v7 = *(a1 + 312);
      v8 = *(a1 + 320);
      if ((*(*a1 + 64))(a1))
      {
        DspLib::multiply();
      }

      v9 = (v8 - v7) >> 3;
      *&v10 = v7;
      *(&v10 + 1) = v9;
      v11 = v2;
      *&v12 = v7;
      *(&v12 + 1) = v9;
      v13 = v2;
      DspLib::Biquad::Filter::process(v5, &v12, &v10);
      v12 = *a2;
      v13 = *(a2 + 16);
      *&v10 = v7;
      *(&v10 + 1) = v9;
      v11 = v2;
      DspLib::subtract(&v12, &v10);
      v5 += 13;
    }
  }
}

uint64_t DspLib::NotchFilterBank::FilterBank::processNotchFilterBlock(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    if (*(result + 340))
    {
      for (i = 0; i < *(v3 + 340); ++i)
      {
        v6 = *(*(v3 + 472) + 4 * i);
        v7 = *(v3 + 400);
        v8 = i >> 6;
        v9 = 1 << i;
        if (v6 > *(v3 + 544))
        {
          *(v7 + 8 * v8) |= v9;
        }

        if ((*(v7 + 8 * v8) & v9) != 0)
        {
          ++*(v3 + 344);
          std::vector<float>::resize((v3 + 240), v2);
          DspLib::fill(*(v3 + 240), (*(v3 + 248) - *(v3 + 240)) >> 2, v6);
          DspLib::Biquad::Filter::process((*(v3 + 552) + 104 * i), *(v3 + 240), (*(v3 + 248) - *(v3 + 240)) >> 2, *(v3 + 240), (*(v3 + 248) - *(v3 + 240)) >> 2);
          if (*(*(v3 + 240) + 4 * v2 - 4) < *(v3 + 544))
          {
            *(*(v3 + 400) + 8 * v8) &= ~v9;
          }

          v10 = *(v3 + 336);
          if (v10 == 1)
          {
            std::vector<float>::resize((v3 + 264), v2);
            result = (*(*v3 + 64))(v3);
            if (result)
            {
              DspLib::multiply();
            }
          }

          else
          {
            if (v10)
            {
              v15 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
              result = printf("DSP Sound assertion in %s at line %d\n", v15, 514);
              ++DspLibDebug::mAssertCounter;
              return result;
            }

            v11 = *(v3 + 312);
            v12 = *(v3 + 320);
            if ((*(*v3 + 64))(v3))
            {
              DspLib::multiply();
            }

            v13 = (v12 - v11) >> 3;
            v14 = (*(v3 + 352) + 104 * i);
            *&v16 = v11;
            *(&v16 + 1) = v13;
            v17 = v2;
            *&v18 = v11;
            *(&v18 + 1) = v13;
            v19 = v2;
            DspLib::Biquad::Filter::process(v14, &v18, &v16);
            v18 = *a2;
            v19 = *(a2 + 16);
            *&v16 = v11;
            *(&v16 + 1) = v13;
            v17 = v2;
            result = DspLib::subtract(&v18, &v16);
          }
        }
      }
    }
  }

  return result;
}

void DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter(uint64_t a1, float *a2, float *a3, float *a4, unsigned int a5)
{
  if (a2)
  {
    v5 = a3;
    if (a3)
    {
      if (a4)
      {
        v7 = *a4;
        v8 = a4[1];
        v9 = a4[3];
        v10 = a4[4];
        v11 = a4[6];
        v27 = a4[7];
        if (a5)
        {
          v12 = a2;
          v25 = a4[5];
          v26 = a4[2];
          v13 = a4[8];
          v14 = a5;
          do
          {
            v8 = v8 + ((v7 - v8) * v26);
            v15 = __sincosf_stret(v11);
            v16 = (v11 + v8);
            if (v16 >= 6.28318531)
            {
              v17 = v16 + -6.28318531;
              v11 = v17;
            }

            else
            {
              v11 = v11 + v8;
            }

            v18 = (v10 * v15.__sinval) + (v9 * v15.__cosval);
            v19 = v25 * (*v12 - v18);
            v9 = v9 + (v19 * v15.__cosval);
            v10 = v10 + (v19 * v15.__sinval);
            *v5 = v18;
            if (v13 > 0.0)
            {
              v20 = atan2f(v9, v10);
              v21 = v20 - v27;
              v22 = (v20 - v27);
              if (v22 < 3.14159265)
              {
                v23 = v22 + 6.28318531;
                v21 = v23;
              }

              if (v21 > 3.14159265)
              {
                v24 = v21 + -6.28318531;
                v21 = v24;
              }

              v8 = v7 + (v21 * v13);
              v27 = v20;
              v7 = v8;
            }

            ++v12;
            ++v5;
            --v14;
          }

          while (v14);
        }

        if (v9 > 10.0)
        {
          DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter();
        }

        else if (v9 < -10.0)
        {
          DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter();
        }

        else if (v10 > 10.0)
        {
          DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter();
        }

        else if (v10 < -10.0)
        {
          DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter();
        }

        else
        {
          a4[3] = v9;
          a4[4] = v10;
          a4[6] = v11;
          a4[7] = v27;
          *a4 = v7;
          a4[1] = v8;
        }
      }

      else
      {
        DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter();
      }
    }

    else
    {
      DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter();
    }
  }

  else
  {
    DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter();
  }
}

void DspLib::NotchFilterBank::FilterBank::getAmplitudeResponseLowShelvingFilter(DspLib::NotchFilterBank::FilterBank *this, float *a2, float *__b, unsigned int a4)
{
  if (!a2)
  {
    DspLib::NotchFilterBank::FilterBank::getAmplitudeResponseLowShelvingFilter();
    return;
  }

  if (!__b)
  {
    DspLib::NotchFilterBank::FilterBank::getAmplitudeResponseLowShelvingFilter();
    return;
  }

  if (a4 >= 0xF4241)
  {
    DspLib::NotchFilterBank::FilterBank::getAmplitudeResponseLowShelvingFilter();
    return;
  }

  v7 = *(this + 145);
  if (v7 <= *(this + 146))
  {
    if (a4)
    {

      memset_pattern16(__b, &unk_1DE095DF0, 4 * a4);
    }
  }

  else
  {
    v9 = *(this + 75);
    v10 = *(this + 74);
    if (v9 == v10)
    {
      v34 = 0.0;
      v33 = DspLib::Biquad::kBypassSection;
      if (!a4)
      {
        return;
      }
    }

    else
    {
      DspLib::Biquad::Filter::section(v10, 0, 0, &v33);
      if (!a4)
      {
        return;
      }
    }

    v11 = 0;
    v12 = 6.28318531 / *(this + 2);
    v13 = v33;
    v15 = *(&v33 + 3);
    v14 = v34;
    v16 = *(&v33 + 2);
    v17 = -v7;
    do
    {
      v18 = a2[v11] * v12;
      v19 = 1.0;
      if (v18 < 3.14159265)
      {
        v20 = __sincosf_stret(v18);
        v19 = 1.0;
        v21 = *(this + 75) - *(this + 74);
        if (v21)
        {
          v22 = (v20.__cosval * v20.__cosval) - (v20.__sinval * v20.__sinval);
          v23 = -(v20.__sinval * v20.__cosval) - (v20.__sinval * v20.__cosval);
          v24 = *&v13 + ((v20.__cosval * *(&v13 + 1)) + (v22 * v16));
          v25 = (v23 * v16) - (v20.__sinval * *(&v13 + 1));
          v26 = ((v20.__cosval * v15) + (v22 * v14)) + 1.0;
          v27 = (v23 * v14) - (v20.__sinval * v15);
          v28 = (v27 * v27) + (v26 * v26);
          v29 = sqrtf((((((v25 * v26) - (v24 * v27)) / v28) * v17) * ((((v25 * v26) - (v24 * v27)) / v28) * v17)) + ((((((v25 * v27) + (v24 * v26)) / v28) * v17) + 1.0) * (((((v25 * v27) + (v24 * v26)) / v28) * v17) + 1.0)));
          v30 = 0x4EC4EC4EC4EC4EC5 * (v21 >> 3);
          v31 = 1;
          do
          {
            v19 = v29 * v19;
          }

          while (v30 > v31++);
        }
      }

      __b[v11++] = v19;
    }

    while (v11 != a4);
  }
}

void DspLib::NotchFilterBank::FilterBank::getAmplitudeResponse(DspLib::NotchFilterBank::FilterBank *this, float *a2, float *__b, unsigned int a4)
{
  if (!a2)
  {
    v49 = 675;
    goto LABEL_34;
  }

  if (!__b)
  {
    v49 = 676;
    goto LABEL_34;
  }

  if (a4 > 0xF4240)
  {
    v49 = 677;
    goto LABEL_34;
  }

  v7 = 6.28318531 / *(this + 2);
  DspLib::NotchFilterBank::FilterBank::getAmplitudeResponseLowShelvingFilter(this, a2, __b, a4);
  v8 = *(this + 84);
  if (!v8)
  {
    v28 = *(this + 85);
    if (!v28)
    {
      return;
    }

    v29 = 0;
    v30 = __b;
    while (1)
    {
      v31 = *(*(this + 59) + 4 * v29);
      if (v31 > *(this + 136))
      {
        break;
      }

LABEL_31:
      if (++v29 >= v28)
      {
        return;
      }
    }

    v32 = *(this + 44);
    if (0x4EC4EC4EC4EC4EC5 * ((*(this + 45) - v32) >> 3) >= v29)
    {
      DspLib::Biquad::Filter::section((v32 + 104 * v29), 0, 0, &v51);
      if (!a4)
      {
LABEL_30:
        v28 = *(this + 85);
        goto LABEL_31;
      }
    }

    else
    {
      v52 = 0.0;
      v51 = DspLib::Biquad::kBypassSection;
      if (!a4)
      {
        goto LABEL_30;
      }
    }

    v33 = v51;
    v35 = a4;
    v36 = v30;
    v37 = a2;
    v39 = *(&v51 + 1);
    v38 = v52;
    do
    {
      v40 = *v37 * v7;
      if (v40 < 3.14159265)
      {
        v41 = __sincosf_stret(v40);
        v42 = (v41.__cosval * v41.__cosval) - (v41.__sinval * v41.__sinval);
        v43 = -(v41.__sinval * v41.__cosval) - (v41.__sinval * v41.__cosval);
        v44 = *&v33 + ((v41.__cosval * *(&v33 + 1)) + (v42 * *&v39));
        v45 = (v43 * *&v39) - (v41.__sinval * *(&v33 + 1));
        v46 = ((v41.__cosval * *(&v39 + 1)) + (v42 * v38)) + 1.0;
        v47 = (v43 * v38) - (v41.__sinval * *(&v39 + 1));
        v48 = (v47 * v47) + (v46 * v46);
        v34 = -v31;
        *v36 = *v36 * sqrtf((((((v45 * v46) - (v44 * v47)) / v48) * v34) * ((((v45 * v46) - (v44 * v47)) / v48) * v34)) + ((((((v45 * v47) + (v44 * v46)) / v48) * v34) + 1.0) * (((((v45 * v47) + (v44 * v46)) / v48) * v34) + 1.0)));
      }

      ++v37;
      ++v36;
      --v35;
    }

    while (v35);
    goto LABEL_30;
  }

  if (v8 != 1)
  {
    v49 = 773;
LABEL_34:
    DspLib::NotchFilterBank::FilterBank::getAmplitudeResponse(v49);
    return;
  }

  v9 = *(this + 85);
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = *(*(this + 59) + 4 * i);
      if (v11 > *(this + 136) && a4 != 0)
      {
        v13 = -v11;
        v14 = a4;
        v15 = __b;
        v16 = a2;
        do
        {
          v17 = *v16 * v7;
          if (v17 < 3.14159265)
          {
            v18 = (*(*this + 64))(this, v17);
            v19 = cosf(*(*(this + 47) + 36 * (v18 * i)));
            v20 = *(*(this + 47) + 36 * (*(*this + 64))(this) * i + 20);
            v21 = __sincosf_stret(v17);
            v22 = ((v21.__cosval * v19) + -1.0) * v20;
            v23 = -(v21.__sinval * v19);
            v24 = v23 * v20;
            v25 = (1.0 - v20) + (((v21.__cosval * v21.__cosval) - (v21.__sinval * v21.__sinval)) + ((v21.__cosval * v19) * (v20 + -2.0)));
            v26 = (-(v21.__sinval * v21.__cosval) - (v21.__sinval * v21.__cosval)) + (v23 * (v20 + -2.0));
            v27 = (v26 * v26) + (v25 * v25);
            *v15 = *v15 * sqrtf((((((v24 * v25) - (v22 * v26)) / v27) * v13) * ((((v24 * v25) - (v22 * v26)) / v27) * v13)) + ((((((v24 * v26) + (v22 * v25)) / v27) * v13) + 1.0) * (((((v24 * v26) + (v22 * v25)) / v27) * v13) + 1.0)));
          }

          ++v16;
          ++v15;
          --v14;
        }

        while (v14);
        v9 = *(this + 85);
      }
    }
  }
}

float DspLib::NotchFilterBank::FilterBank::status(uint64_t a1, float *a2)
{
  result = *(a1 + 344);
  *a2 = result;
  return result;
}

uint64_t DspLib::AlgorithmBase::setParameter(DspLib::AlgorithmBase *this, uint64_t a2, float a3)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  *(v3 + 4 * a2) = a3;
  return (*(*this + 160))(this, v3, (v4 - v3) >> 2, 0);
}

void std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<DspLib::Biquad::ParametricFilter>>::destroy[abi:ne200100]<DspLib::Biquad::ParametricFilter,void,0>(a1, i))
  {
    i -= 104;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<DspLib::Biquad::ParametricFilter>>::destroy[abi:ne200100]<DspLib::Biquad::ParametricFilter,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 80);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((a2 + 48));
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }
}

uint64_t std::vector<DspLib::Biquad::ParametricFilter>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x276276276276276)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v4 = 0x276276276276276;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::allocator<DspLib::Biquad::ParametricFilter>::allocate_at_least[abi:ne200100](a1, v4);
  }

  v5 = 104 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  *&v14 = 104 * v1 + 104;
  v6 = a1[1];
  v7 = 104 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::Biquad::ParametricFilter>,DspLib::Biquad::ParametricFilter*>(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<DspLib::Biquad::ParametricFilter>::~__split_buffer(&v12);
  return v11;
}

void sub_1DDBAD2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DspLib::Biquad::ParametricFilter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::Biquad::ParametricFilter>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::Biquad::ParametricFilter>,DspLib::Biquad::ParametricFilter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v8 = a2 + 48;
    do
    {
      v9 = v8 - 48;
      *v4 = *(v8 - 48);
      *(v4 + 8) = *(v8 - 40);
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      *(v4 + 24) = *(v8 - 24);
      *(v4 + 40) = *(v8 - 8);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      DspLib::Biquad::SetupWrapper::SetupWrapper((v4 + 48), v8);
      *(v4 + 72) = *(v8 + 24);
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 80) = 0;
      *(v4 + 80) = *(v8 + 32);
      *(v4 + 96) = *(v8 + 48);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      v4 = v14 + 104;
      v14 += 104;
      v8 += 104;
    }

    while (v9 + 104 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<DspLib::Biquad::ParametricFilter>>::destroy[abi:ne200100]<DspLib::Biquad::ParametricFilter,void,0>(a1, v6);
      v6 += 104;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::Biquad::ParametricFilter>,DspLib::Biquad::ParametricFilter*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::Biquad::ParametricFilter>,DspLib::Biquad::ParametricFilter*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::Biquad::ParametricFilter>,DspLib::Biquad::ParametricFilter*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::Biquad::ParametricFilter>,DspLib::Biquad::ParametricFilter*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 104;
      std::allocator_traits<std::allocator<DspLib::Biquad::ParametricFilter>>::destroy[abi:ne200100]<DspLib::Biquad::ParametricFilter,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<DspLib::Biquad::ParametricFilter>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DspLib::Biquad::ParametricFilter>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::Biquad::ParametricFilter>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<DspLib::Biquad::ParametricFilter>>::destroy[abi:ne200100]<DspLib::Biquad::ParametricFilter,void,0>(v5, v4 - 104);
  }
}

void std::vector<DspLib::NotchFilterBank::FilterBank::AdaptiveFilterStates>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 36 * ((36 * a2 - 36) / 0x24) + 36;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 2);
    if (v6 + a2 > 0x71C71C71C71C71CLL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v9 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<DspLib::NotchFilterBank::FilterBank::AdaptiveFilterStates>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 36 * v6;
    v12 = 36 * ((36 * a2 - 36) / 0x24) + 36;
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

void std::allocator<DspLib::NotchFilterBank::FilterBank::AdaptiveFilterStates>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDBAD83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::allocator<unsigned long>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void std::vector<DspLib::Biquad::ParametricFilter>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x4EC4EC4EC4EC4EC5 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 104 * ((104 * a2 - 104) / 0x68) + 104;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x276276276276276)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x13B13B13B13B13BLL)
    {
      v9 = 0x276276276276276;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::allocator<DspLib::Biquad::ParametricFilter>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v16 = 0;
    v17 = 104 * v6;
    v11 = 104 * ((104 * a2 - 104) / 0x68) + 104;
    bzero((104 * v6), v11);
    v18 = 104 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 104 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::Biquad::ParametricFilter>,DspLib::Biquad::ParametricFilter*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<DspLib::Biquad::ParametricFilter>::~__split_buffer(&v16);
  }
}

void sub_1DDBADF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::Biquad::ParametricFilter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void DspLib::NotchFilterBank::FilterBank::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 36);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 35);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::NotchFilterBank::FilterBank::setFilterMode()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 261);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 260);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::NotchFilterBank::FilterBank::setNumNotchFilters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 275);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 274);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 273);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::NotchFilterBank::FilterBank::setNotchFilters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 289);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 288);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 287);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::NotchFilterBank::FilterBank::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 412);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 411);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::NotchFilterBank::FilterBank::adaptiveNotchFilter()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 593);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 592);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 591);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 590);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 589);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 588);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 530);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 529);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 528);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::NotchFilterBank::FilterBank::getAmplitudeResponseLowShelvingFilter()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 612);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 611);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 610);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::NotchFilterBank::FilterBank::getAmplitudeResponse(int a1)
{
  v2 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/NotchFilterBank/dsp/DspLibNotchFilterBank.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v2, a1);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MovingAverage::setLength(DspLib::MovingAverage *this, unint64_t a2)
{
  DspLib::CircularDelay::setLength(this, a2);
  v3 = (*(this + 1) - *this) >> 2;
  v4 = 1.0;
  if (v3 >= 2)
  {
    v4 = 1.0 / v3;
  }

  *(this + 9) = v4;
  *(this + 8) = 0;

  DspLib::CircularDelay::reset(this);
}

char **DspLib::MovingAverage::process(char **result, void *a2, unint64_t a3, char *a4, unint64_t a5)
{
  if (a3)
  {
    v9 = result;
    DspLib::processKernel(result, a2, a3, a4, a5, (result[1] - *result) >> 2);
    *(v9 + 8) = *&a4[4 * a5 - 4];

    return DspLib::CircularDelay::write(v9, a2, a3);
  }

  return result;
}

void *DspLib::processKernel(void **a1, void *a2, unint64_t a3, char *__dst, unint64_t a5, unint64_t a6)
{
  if (a6)
  {
    v9 = a3 - a6;
    if (a3 > a6)
    {
      DspLib::CircularDelay::read(a1, a6, __dst, a6);
      DspLib::copy(a2, v9, &__dst[4 * a5 + -4 * v9]);
      DspLib::subtract();
    }

    DspLib::CircularDelay::read(a1, a6, __dst, a5);
    DspLib::subtract();
  }

  return DspLib::copy(a2, a3, __dst);
}

void DspLib::zeroInputKernel(void **a1, char *a2, vDSP_Length __N, unint64_t a4)
{
  if (__N)
  {
    if (a4)
    {
      if (__N > a4)
      {
        DspLib::CircularDelay::read(a1, a4, a2, a4);
        DspLib::negate();
      }

      DspLib::CircularDelay::read(a1, a4, a2, __N);
      DspLib::negate();
    }

    DspLib::clear(a2, __N);
  }
}

void *DspLib::zeroStateKernel(void *__src, unint64_t a2, float *__dst, vDSP_Length a4, unint64_t a5, float a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a2 > a5)
      {
        DspLib::copy(__src, a5, __dst);
        DspLib::subtract();
      }

      __src = DspLib::copy(__src, a2, __dst);
      if (a2 == 1)
      {
        *__dst = *__dst * a6;
      }

      else
      {

        return DspLib::runningSum(__dst, a4, a6, 0.0);
      }
    }

    else
    {

      return DspLib::copy(__src, a2, __dst);
    }
  }

  return __src;
}

double DspLib::recalculateStateKernel(DspLib *this, const DspLib::CircularDelay *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1EEE9AC00](this);
  v5 = (v8 - v4);
  DspLib::CircularDelay::read(v3, v6, v8 - v4, v6);
  if (!a2)
  {
    return 0.0;
  }

  *&result = DspLib::mean(v5, a2);
  return result;
}

void DspLib::MultiMovingAverage::setLengths(uint64_t *a1, unint64_t *a2, unint64_t a3)
{
  v3 = a3;
  v6 = a3 != (a1[1] - *a1) >> 4;
  std::vector<DspLib::MultiMovingAverage::LengthEntry>::resize(a1, a3);
  v7 = 0;
  if (v3)
  {
    v8 = *a1;
    do
    {
      v10 = *a2++;
      v9 = v10;
      if (v10 != *v8)
      {
        *v8 = v9;
        v6 = 1;
      }

      v11 = 1.0;
      if (v9 >= 2)
      {
        v11 = 1.0 / v9;
      }

      *(v8 + 12) = v11;
      if (v9 > v7)
      {
        v7 = v9;
      }

      v8 += 16;
      --v3;
    }

    while (v3);
  }

  DspLib::CircularDelay::setLength((a1 + 3), v7);
  if (v6)
  {
    v13 = *a1;
    v12 = a1[1];
    if (*a1 != v12)
    {
      v14 = 0;
      v15 = (v12 - v13 - 16) >> 4;
      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 4) & 0x1FFFFFFFFFFFFFFCLL;
      v18 = (v13 + 40);
      do
      {
        v19 = vdupq_n_s64(v14);
        v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_1DE095160)));
        if (vuzp1_s16(v20, *v16.i8).u8[0])
        {
          *(v18 - 8) = 0;
        }

        if (vuzp1_s16(v20, *&v16).i8[2])
        {
          *(v18 - 4) = 0;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_1DE095150)))).i32[1])
        {
          *v18 = 0;
          v18[4] = 0;
        }

        v14 += 4;
        v18 += 16;
      }

      while (v17 != v14);
    }

    DspLib::CircularDelay::reset((a1 + 3));
  }
}

void std::vector<DspLib::MultiMovingAverage::LengthEntry>::resize(void *a1, unint64_t a2)
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
    std::vector<DspLib::MultiMovingAverage::LengthEntry>::__append(a1, a2 - v2);
  }
}

char **DspLib::MultiMovingAverage::process(char **result, void *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = result;
    v7 = *result;
    if (result[1] != *result)
    {
      v9 = 0;
      v10 = 0;
      v11 = *a4;
      v12 = a4[2];
      do
      {
        DspLib::processKernel(v6 + 3, a2, a3, *(v11 + 8 * v10), v12, *&v7[v9]);
        v11 = *a4;
        v12 = a4[2];
        v7 = *v6;
        v13 = v6[1];
        *&(*v6)[v9 + 8] = *(*(*a4 + 8 * v10++) + 4 * v12 - 4);
        v9 += 16;
      }

      while (v10 < (v13 - v7) >> 4);
    }

    return DspLib::CircularDelay::write(v6 + 3, a2, a3);
  }

  return result;
}

void DspLib::MultiMovingAverage::zeroInputResponse(void **a1, void *a2)
{
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      DspLib::zeroInputKernel(a1 + 3, *(*a2 + 8 * v6++), a2[2], *&v2[v5]);
      v2 = *a1;
      v5 += 16;
    }

    while (v6 < (a1[1] - *a1) >> 4);
  }
}

uint64_t *DspLib::MultiMovingAverage::zeroStateResponse(uint64_t *result, void *__src, unint64_t a3, void *a4)
{
  v4 = *result;
  if (result[1] != *result)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    do
    {
      result = DspLib::zeroStateKernel(__src, a3, *(*a4 + 8 * v10++), a4[2], *(v4 + v9), *(v4 + v9 + 12));
      v4 = *v8;
      v9 += 16;
    }

    while (v10 < (v8[1] - *v8) >> 4);
  }

  return result;
}

void DspLib::MultiMovingAverage::recalculateState(DspLib::MultiMovingAverage *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this != v2)
  {
    do
    {
      v4 = DspLib::recalculateStateKernel((this + 24), *v1);
      *(v1 + 8) = LODWORD(v4);
      v1 += 16;
    }

    while (v1 != v2);
  }
}

void DspLib::OnePoleSmoother::initialize(DspLib::OnePoleSmoother *this, double a2)
{
  *this = a2;
  DspLib::Biquad::Filter::initialize((this + 8), 1uLL, 1uLL);
  DspLib::OnePoleSmoother::configure(this, *(this + 10), *(this + 11));

  DspLib::Biquad::SetupWrapper::reset((this + 56));
}

float DspLib::OnePoleSmoother::configure(DspLib::OnePoleSmoother *this, double a2, double a3)
{
  *(this + 10) = a2;
  v4 = exp(-1.0 / (*this * a2));
  v5 = 1.0 - v4;
  *&v4 = v4;
  v8 = vcvt_f32_f64(vmulq_n_f64(COERCE_UNSIGNED_INT64(v5), a3));
  v9 = v8.i32[1];
  v10 = -*&v4;
  v11 = 0;
  DspLib::Biquad::Filter::setCoefficients(this + 8, &v8, 1, 0, 0x41uLL);
  return result;
}

void std::vector<DspLib::MultiMovingAverage::LengthEntry>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 12) = 1065353216;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::allocator<DspLib::MultiMovingAverage::LengthEntry>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 12) = 1065353216;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::allocator<DspLib::MultiMovingAverage::LengthEntry>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void DspLib::DownSampler::process(unsigned int *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  v8 = v5 % v6;
  if (v7)
  {
    v9 = a1[1];
  }

  else
  {
    v9 = *a1;
  }

  if (v8 + v9 - 1 < v6)
  {
    v10 = v5 / v6;
  }

  else
  {
    v10 = v5 / v6 + 1;
  }

  if (v5 && v10)
  {
    v12 = v6 - v7;
    if (v7)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2[1];
    if (*a2 == *a3)
    {
      if (v14)
      {
        v15 = 0;
        v16 = &v25[v13];
        v17 = 1;
        do
        {
          DspLib::copy(*(*a2 + 8 * v15), a2[2], v25);
          DspLib::copyWithStrides(v16, *a1, *(*a3 + 8 * v15), 1, v10);
          v15 = v17;
          v18 = a2[1] > v17++;
        }

        while (v18);
      }
    }

    else if (v14)
    {
      v19 = 0;
      v20 = 1;
      do
      {
        DspLib::copyWithStrides((*(*a2 + 8 * v19) + 4 * v13), *a1, *(*a3 + 8 * v19), 1, v10);
        v19 = v20;
        v18 = a2[1] > v20++;
      }

      while (v18);
    }
  }

  v21 = *a1;
  v22 = a1[1] + v8;
  a1[1] = v22;
  v23 = v22 >= v21;
  v24 = v22 - v21;
  if (v23)
  {
    a1[1] = v24;
  }

  a3[2] = v10;
}

void DspLib::UpSampler::process(unsigned int *a1, void *a2, void *a3)
{
  v14[257] = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1 - v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a2[1];
  if (*a2 == *a3)
  {
    if (v8)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        DspLib::copy(*(*a2 + 8 * v9), a2[2], v14);
        DspLib::clear(*(*a3 + 8 * v9), a3[2]);
        DspLib::copyWithStrides(v14, 1, (*(*a3 + 8 * v9) + 4 * v7), *a1, a2[2]);
        v9 = v10;
        v11 = a2[1] > v10++;
      }

      while (v11);
    }
  }

  else if (v8)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      DspLib::clear(*(*a3 + 8 * v12), a3[2]);
      DspLib::copyWithStrides(*(*a2 + 8 * v12), 1, (*(*a3 + 8 * v12) + 4 * v7), *a1, a2[2]);
      v12 = v13;
      v11 = a2[1] > v13++;
    }

    while (v11);
  }

  a1[1] = (a3[2] + a1[1]) % *a1;
}

void DspLib::PolyPhaseInterpolator::setSrcParameters(DspLib::PolyPhaseInterpolator *this, int a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      *this = a2;
      *(this + 10) = a3 * a2;
      *(this + 11) = a3;
      v4 = *(this + 6);
      v5 = *(this + 7);
      while (v4 != v5)
      {
        v6 = *(v4 + 8);
        if (*v4 != v6)
        {
          bzero(*v4, v6 - *v4);
        }

        v4 += 24;
      }

      *(this + 18) = 0;
    }

    else
    {
      DspLib::PolyPhaseInterpolator::setSrcParameters();
    }
  }

  else
  {
    DspLib::PolyPhaseInterpolator::setSrcParameters();
  }
}

void DspLib::PolyPhaseInterpolator::setCoefficients(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v6 = *a1;
    *(a1 + 1) = (a3 - 1) / v6 + 1;
    std::vector<std::vector<float>>::resize(a1 + 2, v6);
    v7 = *(a1 + 2);
    v8 = *(a1 + 3);
    while (v7 != v8)
    {
      std::vector<float>::resize(v7, *(a1 + 1));
      v7 += 3;
    }

    v9 = *(a1 + 6);
    v10 = *(a1 + 7);
    while (v9 != v10)
    {
      std::vector<float>::resize(v9, *(a1 + 1) + a1[11] + 1);
      v9 += 3;
    }

    v11 = *a1;
    if (v11)
    {
      v12 = 0;
      v13 = *(a1 + 1);
      do
      {
        if (v13)
        {
          v14 = *(*(a1 + 2) + 24 * v12);
          v15 = 1;
          v16 = v12;
          do
          {
            v17 = 0;
            if (a3 > v16)
            {
              v17 = *(a2 + 4 * v16);
            }

            *v14++ = v17;
            v16 += v11;
          }

          while (v13 > v15++);
        }

        ++v12;
      }

      while (v12 != v11);
    }

    v19 = a1[11] + 1;

    std::vector<float>::resize(a1 + 10, v19);
  }
}

void DspLib::PolyPhaseInterpolator::process(unsigned int *a1, void *a2, void *a3)
{
  v4 = a2[2];
  v5 = a3[2];
  v6 = *a1;
  if (v5 <= v4 * v6)
  {
    v7 = a2[2];
  }

  else
  {
    v7 = v4 + 1;
  }

  v8 = *(a1 + 6);
  if (*(a1 + 7) != v8)
  {
    v10 = a2;
    v11 = 0;
    v12 = 0;
    do
    {
      v26 = v12;
      v13 = (v8 + 24 * v11);
      v25 = (v13[1] - *v13) >> 2;
      __dst = *v13;
      DspLib::copy(*(*v10 + 8 * v11), v10[2], &(*v13)[4 * *(a1 + 1)]);
      if (a3[2])
      {
        v14 = 0;
        v15 = 0;
        v16 = a1[18];
        if (v16)
        {
          v17 = -1;
        }

        else
        {
          v17 = 0;
        }

        v18 = &__dst[4 * v17 + 4];
        do
        {
          vDSP_conv(v18, 1, (*(*(a1 + 2) + 24 * v16) + 4 * *(a1 + 1) - 4), -1, *(a1 + 10), 1, v7, *(a1 + 1));
          v19 = *a1;
          v20 = (a3[2] + ~v14) / v19 + 1;
          DspLib::copyWithStrides(*(a1 + 10), 1, (*(*a3 + 8 * v11) + 4 * v14), v19, v20);
          v15 += v20;
          ++v14;
          v21 = v16 + 1 >= *a1;
          if (v16 + 1 < *a1)
          {
            ++v16;
          }

          else
          {
            v16 = 0;
          }

          v18 += v21;
        }

        while (a3[2] > v15);
      }

      v10 = a2;
      v22 = a2[2];
      if (v22)
      {
        if (*(a1 + 1) == -1)
        {
          v23 = v25 - v22;
        }

        else
        {
          v23 = *(a1 + 1);
        }

        DspLib::copy(&__dst[4 * v22], v23, __dst);
      }

      v11 = (v26 + 1);
      v8 = *(a1 + 6);
      v12 = v26 + 1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 7) - v8) >> 3) > v11);
    v5 = a3[2];
    v6 = *a1;
  }

  a1[18] = (v5 + a1[18]) % v6;
}

void DspLib::FIRDecimator::setSrcParameters(DspLib::FIRDecimator *this, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      *this = a2;
      *(this + 4) = a3 / a2 + 1;
      *(this + 5) = a3;

      DspLib::FIRDecimator::reset(this);
    }

    else
    {
      DspLib::FIRDecimator::setSrcParameters();
    }
  }

  else
  {
    DspLib::FIRDecimator::setSrcParameters();
  }
}

void DspLib::FIRDecimator::setCoefficients(void *a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    std::vector<float>::resize(a1 + 1, a3);
    v6 = a1[1];
    if (a3 == (a1[2] - v6) >> 2)
    {
      DspLib::copy(a2, a3, v6);
      DspLib::reverse(a1[1], (a1[2] - a1[1]) >> 2);
      v7 = a1[6];
      v8 = a1[7];
      if (v7 != v8)
      {
        v9 = a3 - 1;
        do
        {
          std::vector<float>::resize(v7, v9 + a1[5]);
          v7 += 3;
        }

        while (v7 != v8);
      }
    }

    else
    {
      DspLib::FIRDecimator::setCoefficients();
    }
  }
}

void *DspLib::FIRDecimator::process(void *result, void *a2, void *a3)
{
  v3 = result[9] + a2[2];
  a3[2] = v3 / *result;
  if (a2[2])
  {
    v4 = result;
    v19 = v3 % *result;
    v5 = result[6];
    if (result[7] != v5)
    {
      v7 = a2;
      v8 = 0;
      v9 = 0;
      v10 = result[9] - *result + ((result[2] - result[1]) >> 2);
      do
      {
        v11 = v5 + 24 * v8;
        v12 = *v11;
        v13 = (*(v11 + 8) - *v11) >> 2;
        result = DspLib::copy(*(*v7 + 8 * v8), v7[2], (*v11 + 4 * v10));
        if (a3[2])
        {
          v14 = 0;
          v15 = 0;
          v16 = 1;
          do
          {
            *(*(*a3 + 8 * v8) + 4 * v14) = DspLib::dotProduct(v4[1], (v4[2] - v4[1]) >> 2, &v12[v15]);
            v15 += *v4;
            v14 = v16;
          }

          while (a3[2] > v16++);
          v7 = a2;
          if (v10 - v15 + a2[2] == -1)
          {
            v18 = v13 - v15;
          }

          else
          {
            v18 = v10 - v15 + a2[2];
          }

          result = DspLib::copy(&v12[v15], v18, v12);
        }

        v5 = v4[6];
        v8 = ++v9;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v4[7] - v5) >> 3) > v9);
    }

    v4[9] = v19;
  }

  return result;
}

void DspLib::SampleAndHoldUpSampler::process(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 1);
    do
    {
      if (v11)
      {
        if (a5 - v9 >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = a5 - v9;
        }

        DspLib::fill((a4 + 4 * v9), v12, a1[2]);
        v9 += v12;
        v11 = *(a1 + 1) - v12;
      }

      else
      {
        a1[2] = *(a2 + 4 * v10++);
        v11 = *a1;
      }

      *(a1 + 1) = v11;
    }

    while (v9 < a5);
  }
}

void DspLib::AveragingDecimator::reset(DspLib::AveragingDecimator *this)
{
  std::vector<float>::resize(this + 2, *(this + 5));
  v2 = *(this + 2);
  v3 = (*(this + 3) - v2) >> 2;

  DspLib::clear(v2, v3);
}

void DspLib::AveragingDecimator::setSrcFactor(DspLib::AveragingDecimator *this, uint64_t a2, uint64_t a3)
{
  v4 = ~a3;
  if (*this != a2 || v4 + a2 != *(this + 5))
  {
    *this = a2;
    std::vector<unsigned int>::reserve((this + 16), a2 - 1);
    v5 = *this;
    *(this + 5) = *this + v4;
    *(this + 2) = 1.0 / v5;

    DspLib::AveragingDecimator::reset(this);
  }
}

void *DspLib::AveragingDecimator::processKernel(uint64_t a1, void *__src, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void **a7)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v10 = *a4;
    a4[1] = a3;

    return DspLib::copy(__src, a3, v10);
  }

  else
  {
    v15 = (*(a1 + 8) * (a3 + ((*(a1 + 24) - *(a1 + 16)) >> 2)));
    a4[1] = v15;
    if (a6 || a3 != *a1 * v15)
    {
      v21 = a6 + a3;
      MEMORY[0x1EEE9AC00](a1);
      v23 = v28 - v22;
      DspLib::copy(v24, a6, v28 - v22);
      DspLib::copy(__src, a3, &v23[4 * a6]);
      if (v15)
      {
        v25 = 0;
        v26 = 1;
        do
        {
          *(*a4 + 4 * v25) = DspLib::sum(&v23[4 * *a1 * v25], *a1);
          v25 = v26;
          v20 = v15 > v26++;
        }

        while (v20);
      }

      if (a7)
      {
        v27 = *a1 * v15;
        std::vector<float>::resize(a7, v21 - v27);
        if (v21 != v27)
        {
          DspLib::copy(&v23[4 * v21 + -4 * (v21 - v27)], v21 - v27, *a7);
        }
      }
    }

    else if (v15)
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = *a1 * v16;
        if (*a1 == -1)
        {
          v19 = a3 - v18;
        }

        else
        {
          v19 = *a1;
        }

        *(*a4 + 4 * v16) = DspLib::sum(__src + v18, v19);
        v16 = v17;
        v20 = v15 > v17++;
      }

      while (v20);
    }

    return DspLib::multiply(*a4, a4[1], *(a1 + 8));
  }
}

void DspLib::AveragingDecimator::zeroInputResponse(uint64_t a1, float *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24) - v5;
  if (v6)
  {
    v7 = *(a1 + 8);
    *a2 = v7 * DspLib::sum(v5, v6 >> 2);
  }
}

void *DspLib::AveragingDecimator::zeroStateResponse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v13[0] = a4;
  v13[1] = a5;
  v8 = (*(a1 + 24) - *(a1 + 16)) >> 2;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13[-1] - v9;
  DspLib::clear((&v13[-1] - v9), v8);
  return DspLib::AveragingDecimator::processKernel(a1, a2, a3, v13, v10, v8, 0);
}

void DspLib::PolyPhaseInterpolator::setSrcParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/SampleRateConverter/dsp/DspLibSampleRateConverter.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 79);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/SampleRateConverter/dsp/DspLibSampleRateConverter.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 78);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FIRDecimator::setSrcParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/SampleRateConverter/dsp/DspLibSampleRateConverter.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 161);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/SampleRateConverter/dsp/DspLibSampleRateConverter.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 160);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FIRDecimator::setCoefficients()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/SampleRateConverter/dsp/DspLibSampleRateConverter.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 174);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

uint64_t DspLib::MeisterStueck::OSCFilter::isInitialized(DspLib::MeisterStueck::OSCFilter *this)
{
  if (*this == 1)
  {
    v1 = *(this + 104);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void DspLib::MeisterStueck::OSCFilter::reset(DspLib::MeisterStueck::OSCFilter *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 48));

  DspLib::Biquad::SetupWrapper::reset((this + 152));
}

void DspLib::MeisterStueck::OSCFilter::setParameters(DspLib::Biquad::ParametricFilter *this, uint64_t a2)
{
  if (*a2 == 1 && ((v4 = *(a2 + 16), v5 = *(a2 + 20), v4 <= 10.0) ? (v6 = v5 <= 10.0) : (v6 = 0), !v6 && (v7 = *(a2 + 24)) != 0))
  {
    if (v4 <= 10.0)
    {
      v8 = v5 > 10.0;
    }

    else
    {
      v8 = (v5 > 10.0) + 1;
    }

    v9 = (v7 * 0.32091) + -0.1;
    v10 = 1.0 - expf(((((v7 * v7) * 0.038869) + (((v7 * v7) * v7) * -0.00095057)) + (v7 * -0.54832)) + 0.0021239);
    DspLib::Biquad::ParametricFilter::initialize(this, *(a2 + 4), *(a2 + 8), v8);
    DspLib::Biquad::ParametricFilter::initialize((this + 104), *(a2 + 4), *(a2 + 8), v8);
    v11 = *(a2 + 16);
    if (v11 <= 10.0)
    {
      v13 = 0;
    }

    else
    {
      v12 = (COERCE_UNSIGNED_INT(v11 / v10) << 32) | 0x10;
      DspLib::Biquad::ParametricFilter::setParametricEQ(this, v12, ((LODWORD(v9) << 32) | 0x405A3D71), 0, 0x41uLL);
      DspLib::Biquad::ParametricFilter::setParametricEQ(this + 104, v12, ((LODWORD(v9) << 32) | 0x405A3D71), 0, 0x41uLL);
      v13 = 1;
    }

    v14 = *(a2 + 20);
    if (v14 > 10.0)
    {
      v15 = (COERCE_UNSIGNED_INT(v10 * v14) << 32) | 0x10;
      DspLib::Biquad::ParametricFilter::setParametricEQ(this, v15, ((LODWORD(v9) << 32) | 0x405A3D71), v13, 0x41uLL);

      DspLib::Biquad::ParametricFilter::setParametricEQ(this + 104, v15, ((LODWORD(v9) << 32) | 0x405A3D71), v13, 0x41uLL);
    }
  }

  else
  {
    DspLib::Biquad::ParametricFilter::uninitialize(this);

    DspLib::Biquad::ParametricFilter::uninitialize((this + 104));
  }
}

void DspLib::MeisterStueck::OSCFilter::process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *(a2 + 16);
  v8 = *a4;
  v9 = *(a4 + 16);
  DspLib::Biquad::Filter::process(a1, &v10, &v8);
  v10 = *a3;
  v11 = *(a3 + 16);
  v8 = *a5;
  v9 = *(a5 + 16);
  DspLib::Biquad::Filter::process(a1 + 13, &v10, &v8);
}

void DspLib::MeisterStueck::OSCFilter::process(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  v3 = *a3;
  v4 = *(a3 + 16);
  DspLib::Biquad::Filter::process(a1, &v5, &v3);
}

void DspLib::LowFlow::PhysicalModel::setParameters(_DWORD *a1, uint64_t a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  v3 = *(a2 + 4);
  v4 = v3 / *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *(a2 + 24);
  v21[0] = v4 * (v5 + v6);
  v21[1] = v4 * (v7 + v8);
  v9 = *(a2 + 28);
  v10 = *(a2 + 32);
  v21[2] = v4 * (v9 + v10);
  v11 = v3 * v4;
  v20[0] = v5 * v6;
  v20[1] = ((v6 * v7) + (v5 * v8)) + (v11 * (v5 + v6));
  v20[2] = (((v7 * v8) + (v5 * v10)) + (v9 * v6)) + (v11 * (v7 + v8));
  v20[3] = ((v7 * v10) + (v9 * v8)) + (v11 * (v9 + v10));
  v20[4] = v9 * v10;
  v27[0] = 0.0;
  v27[1] = 0.0;
  v26[0] = 0.0;
  v26[1] = 0.0;
  v28.realp = v26;
  v28.imagp = 2;
  DspLib::roots(v21, 3, v27, v28);
  v24 = 0u;
  *v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v29.realp = &v22;
  v29.imagp = 4;
  DspLib::roots(v20, 5, &v24, v29);
  v12 = 0;
  v13 = v27[0] * -2.0;
  v14 = v26[0] * v26[0] + v27[0] * v27[0];
  *&v19[1] = v13;
  *&v19[2] = v14;
  v15 = *&v24 * -2.0;
  v16 = *&v22 * *&v22 + *&v24 * *&v24;
  *&v19[3] = v15;
  *&v19[4] = v16;
  v19[0] = 1065353216;
  v19[5] = 0;
  *&v19[6] = v21[0] / v20[0];
  v19[7] = 0;
  v17 = v25[0] * -2.0;
  v18 = *&v23 * *&v23 + v25[0] * v25[0];
  *&v19[8] = v17;
  *&v19[9] = v18;
  do
  {
    DspLib::Biquad::Design::bilinearTransformStoZUnwarped(&v19[v12], 48000.0);
    v12 += 5;
  }

  while (v12 != 10);
  DspLib::Biquad::Filter::setCoefficients((a1 + 2), v19, 2, 0, 0x41uLL);
}

void DspLib::LowFlow::PressureAnalyzer::initialize(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    operator new();
  }

  v4 = *(a1 + 4128);
  *(a1 + 4128) = 0;
  if (v4)
  {
    MEMORY[0x1E12BD160](v4, 0x1000C40BAFFE814);
  }

  *(a1 + 4984) = 1065353216;
  *(a1 + 5012) = 0;

  DspLib::clear((a1 + 5024), 0x63uLL);
}

uint64_t DspLib::LowFlow::PressureAnalyzer::updatePressureMapping(DspLib::LowFlow::PressureAnalyzer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, vDSP_Length a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = *MEMORY[0x1E69E9840];
  std::vector<float>::resize(this + 518, (*(this + 1) >> 1) + 1);
  if (*(this + 16) == 1)
  {
    std::vector<float>::resize(this + 521, (*(this + 1) >> 1) + 1);
  }

  else
  {
    *(this + 522) = *(this + 521);
  }

  v13 = DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::Transform(&a9, *(this + 1));
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = *(this + 1);
  var8.realp = v17;
  var8.imagp = ((&v19 - v15) & 0xFFFFFFFFFFFFFFC0);
  vars8 = v16 >> 1;
  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(&a9, this + 4, v16, &var8);
  DspLib::FFT::amplitude(&var8, *(this + 518), (*(this + 519) - *(this + 518)) >> 2);
  DspLib::multiply(*(this + 518), (*(this + 519) - *(this + 518)) >> 2, 0.5);
  if (*(this + 16) == 1)
  {
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(&a9, *(this + 516), *(this + 1), &var8);
    DspLib::FFT::amplitude(&var8, *(this + 521), (*(this + 522) - *(this + 521)) >> 2);
    DspLib::multiply(*(this + 521), (*(this + 522) - *(this + 521)) >> 2, *(this + 1034) * 0.5);
  }

  return DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(&a9);
}

float DspLib::LowFlow::PressureAnalyzer::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) != a4)
  {
    v6 = 0;
    *(a1 + 8) = a4;
    v7 = a4 / 48000.0;
    do
    {
      v52[v6] = v7 * DspLib::bark2Hz(a1, vcvtd_n_f64_u32(v6, 2uLL));
      ++v6;
    }

    while (v6 != 99);
    v8 = v52[0];
    v9 = vcvtad_u64_f64(v52[0]);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v51[0] = v9;
    v10 = 1;
    v11 = v9;
    do
    {
      v12 = v52[v10];
      v13 = vcvtad_u64_f64(v12 - v8);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v11 += v13;
      v51[v10++] = v11;
      v8 = v12;
    }

    while (v10 != 99);
    v14 = 0;
    v50[0] = v9;
    v15 = vdupq_n_s64(1uLL);
    do
    {
      v16 = vcvtq_u64_f64(vrndaq_f64(*&v52[v14 + 1]));
      v17 = vaddq_s64(*&v51[v14], v15);
      *&v50[v14 + 1] = vbslq_s8(vcgtq_u64(v17, v16), v17, v16);
      v14 += 2;
    }

    while (v14 != 98);
    v18 = 0;
    v19 = vdupq_n_s64(v9);
    do
    {
      v20 = *&v50[v18 + 1];
      *&__src[v18 + 99] = vsubq_s64(v20, vextq_s8(v19, v20, 8uLL));
      v18 += 2;
      v19 = v20;
    }

    while (v18 != 98);
    __src[197] = v50[98];
    std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
    v21 = 0;
    v22 = 1;
    __src[0] = 1;
    do
    {
      v22 += __src[v21 + 99];
      __src[++v21] = v22;
    }

    while (v21 != 98);
    memcpy((a1 + 4192), __src, 0x318uLL);
    DspLib::LowFlow::PressureAnalyzer::updatePressureMapping(a1, v23, v24, v25, v26, v27, v28, v29, v48, __src[0], __src[1], __src[2]);
  }

  v30 = 24 * *a1;
  v31 = *(a2 + 4 * (v30 + 10));
  v32 = *(a2 + 4 * (v30 + 11));
  if (v31 <= v32)
  {
    *(a1 + 4988) = v31;
    *(a1 + 4992) = v32;
  }

  else
  {
    v31 = *(a1 + 4988);
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = fabsf(v31);
  v37 = a1 + 4192;
  v38 = *(a1 + 8);
  do
  {
    v39 = *(v37 + 8 * v33);
    v40 = vabds_f32(v31, (48000 * v34) / v38);
    if (v40 < v36)
    {
      v36 = v40;
      v35 = v33;
    }

    ++v33;
    v34 = v39;
  }

  while (v33 != 99);
  v41 = 0;
  v42 = 0;
  if (v35 >= 0x62)
  {
    v35 = 98;
  }

  *(a1 + 4996) = v35;
  v43 = *(a1 + 4992);
  v44 = fabsf(v43);
  do
  {
    v45 = vabds_f32(v43, (48000 * *(v37 + 8 * v41)) / v38);
    if (v45 < v44)
    {
      v44 = v45;
      v42 = v41;
    }

    ++v41;
  }

  while (v41 != 99);
  if (v42 <= v35 + 1)
  {
    v46 = v35 + 1;
  }

  else
  {
    v46 = v42;
  }

  *(a1 + 5000) = v46;
  *(a1 + 5004) = 1.0 - expf(-1.0 / (((*(a2 + 4 * (v30 + 19)) * 1000.0) * 375.0) / 1000.0));
  result = 1.0 - expf(-1.0 / (((*(a2 + 4 * (v30 + 20)) * 1000.0) * 375.0) / 1000.0));
  *(a1 + 5008) = result;
  return result;
}

uint64_t DspLib::LowFlow::PressureAnalyzer::setPressureMapping(uint64_t a1, const void *a2, const void *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, vDSP_Length a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  memcpy((a1 + 32), a2, 0x1000uLL);
  v22 = *(a1 + 16);
  if (a3 && (*(a1 + 16) & 1) != 0)
  {
    memcpy(*(a1 + 4128), a3, 0x1000uLL);
    v22 = *(a1 + 16);
  }

  if (a4 && (v22 & 1) != 0)
  {
    *(a1 + 4136) = *a4;
  }

  return DspLib::LowFlow::PressureAnalyzer::updatePressureMapping(a1, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

void *DspLib::LowFlow::PressureAnalyzer::status(uint64_t a1, uint64_t a2)
{
  v4 = -396;
  do
  {
    v5 = *(a1 + v4 + 5420);
    if (v5 < 1.0e-30)
    {
      v5 = 1.0e-30;
    }

    *(a1 + v4 + 5420) = v5;
    v4 += 4;
  }

  while (v4);
  DspLib::add(a1 + 5024, 99, 1.0e-30);
  DspLib::power2dB((a1 + 5024), 0x63uLL, 1.0);
  DspLib::add(a1 + 5024, 99, 97.0);
  v6 = (a2 + 4 * (750 * *a1 + 324));

  return DspLib::copy((a1 + 5024), 99, v6);
}

double DspLib::LowFlow::AnalysisPath::initialize(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  DspLib::Biquad::Filter::initialize((a1 + 32), 1uLL, 2uLL);
  DspLib::Biquad::SetupWrapper::reset((a1 + 80));
  *(a1 + 4) = a3;
  DspLib::LowFlow::PressureAnalyzer::initialize(a1 + 176, *a1, a3);

  return DspLib::LowFlow::AnalysisPath::reset(a1);
}

double DspLib::LowFlow::AnalysisPath::reset(DspLib::LowFlow::AnalysisPath *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 80));
  v2 = *(this + 16);
  if (v2)
  {
    DspLib::FFT::BufferedForwardSTFT::reset(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    DspLib::FFT::BufferedForwardSTFT::reset(v3);
  }

  DspLib::clear(*(this + 18), (*(this + 19) - *(this + 18)) >> 2);
  *(this + 1290) = 1065353216;
  *(this + 5188) = 0;
  DspLib::clear(this + 1300, 0x63uLL);
  result = 5.27765581e13;
  *(this + 2) = 0x42C8000000000000;
  *(this + 5600) = 0;
  return result;
}

uint64_t DspLib::LowFlow::AnalysisPath::uninitialize(DspLib::LowFlow::AnalysisPath *this)
{
  DspLib::Biquad::Filter::uninitialize((this + 32));
  std::unique_ptr<DspLib::FFT::BufferedForwardSTFT>::reset[abi:ne200100](this + 17, 0);
  std::unique_ptr<DspLib::FFT::BufferedForwardSTFT>::reset[abi:ne200100](this + 16, 0);
  *(this + 23) = 0;
  *(this + 192) = 0;
  *(this + 544) = *(this + 543);
  result = *(this + 538);
  *(this + 538) = 0;
  if (result)
  {
    result = MEMORY[0x1E12BD160](result, 0x1000C40BAFFE814);
  }

  *(this + 19) = *(this + 18);
  *(this + 14) = *(this + 13);
  *(this + 4) = 0;
  *(this + 1) = 0;
  return result;
}

uint64_t *std::unique_ptr<DspLib::FFT::BufferedForwardSTFT>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
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

float DspLib::LowFlow::AnalysisPath::setParameters(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1[1] != a4)
  {
    a1[1] = a4;
    std::vector<float>::resize(a1 + 13, a4);
    DspLib::makePeriodicHannWindow(a1[13], (a1[14] - a1[13]) >> 2);
    v5 = a1[13];
    v6 = (a1[14] - v5) >> 2;
    v7 = DspLib::norm(v5, v6);
    DspLib::multiply(v5, v6, 1.0 / v7);
    std::vector<float>::resize(a1 + 18, (a1[1] >> 1) + 1);
    operator new();
  }

  return DspLib::LowFlow::PressureAnalyzer::setParameters((a1 + 22), a2, a3, a1[1]);
}

uint64_t DspLib::LowFlow::AnalysisPath::setModelParameters(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, vDSP_Length a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  DspLib::LowFlow::PhysicalModel::setParameters((a1 + 24), a2);

  return DspLib::LowFlow::PressureAnalyzer::setPressureMapping(a1 + 176, a3, a4, a5, v16, v17, v18, v19, a9, a10, a11, a12);
}

unint64_t DspLib::LowFlow::AnalysisPath::process(DspLib::LowFlow::AnalysisPath *this, const float *a2, unint64_t a3, float *a4)
{
  var28[6] = *MEMORY[0x1E69E9840];
  *(this + 5600) = 0;
  v6 = *(this + 16);
  v7 = *(v6 + 80);
  v8 = *(v6 + 16);
  if (v7 >= v8)
  {
    v7 = 0;
  }

  v9 = v8 - v7;
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  MEMORY[0x1EEE9AC00](this);
  v12 = v41 - v11;
  DspLib::multiply(v14, v10, v41 - v11, *(v13 + 24));
  DspLib::Biquad::Filter::process(this + 4, v12, v10, v12, v10);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  var28[0] = v18;
  var28[1] = (v41 - v17) & 0xFFFFFFFFFFFFFFC0;
  var28[2] = v19;
  v20 = DspLib::FFT::BufferedForwardSTFT::addInput(*(this + 16), v12, v10);
  v21 = v20;
  if (a4)
  {
    MEMORY[0x1EEE9AC00](v20);
    MEMORY[0x1EEE9AC00](v22);
    v24 = *(this + 1) >> 1;
    v41[0] = v25;
    v41[1] = (v41 - v23) & 0xFFFFFFFFFFFFFFC0;
    v41[2] = v24;
    if (DspLib::FFT::BufferedForwardSTFT::addInput(*(this + 17), a4, v10) == v21)
    {
      v26 = *(this + 16);
      if (v26[11])
      {
        v27 = (v26[8] + 4 * *v26 - 4 * v26[2]);
        v28 = 0.0;
        v29 = 16;
        while (1)
        {
          v30 = DspLib::rms(v27, 8uLL);
          if (v30 > v28)
          {
            v28 = v30;
          }

          v27 += 8;
          if (!--v29)
          {
            DspLib::FFT::amplitude(var28, *(this + 18), (*(this + 19) - *(this + 18)) >> 2);
            MEMORY[0x1EEE9AC00](v31);
            v33 = (v41 - ((v32 + 19) & 0xFFFFFFFFFFFFFFF0));
            DspLib::FFT::amplitude(v41, v33, (*(this + 1) >> 1) + 1);
            DspLib::LowFlow::PressureAnalyzer::process((this + 176), *(this + 18), (*(this + 19) - *(this + 18)) >> 2, v33);
          }
        }
      }
    }

    else
    {
      DspLib::LowFlow::AnalysisPath::process();
    }
  }

  else
  {
    v34 = *(this + 16);
    if (v34[11])
    {
      v35 = (v34[8] + 4 * *v34 - 4 * v34[2]);
      v36 = 0.0;
      v37 = 16;
      while (1)
      {
        v38 = DspLib::rms(v35, 8uLL);
        if (v38 > v36)
        {
          v36 = v38;
        }

        v35 += 8;
        if (!--v37)
        {
          DspLib::FFT::amplitude(var28, *(this + 18), (*(this + 19) - *(this + 18)) >> 2);
          DspLib::LowFlow::PressureAnalyzer::process((this + 176), *(this + 18), (*(this + 19) - *(this + 18)) >> 2, 0);
        }
      }
    }
  }

  return v21;
}

void *DspLib::LowFlow::AnalysisPath::status(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 4 * (750 * *a1 + 2));
  v5 = *(a1 + 8);
  DspLib::copy(*(a1 + 144), (*(a1 + 152) - *(a1 + 144)) >> 2, v4);
  DspLib::clear(v4 + (v5 >> 1) + 1, 320 - (v5 >> 1));

  return DspLib::LowFlow::PressureAnalyzer::status(a1 + 176, a2);
}

float DspLib::LowFlow::getMedian(DspLib::LowFlow *this, const float *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1.0;
  }

  v2 = a2;
  MEMORY[0x1EEE9AC00](this);
  v4 = v9 - v3;
  DspLib::copy(v5, v6, v9 - v3);
  std::__sort<std::__less<float,float> &,float *>();
  v7 = v2 >> 1;
  if (v2)
  {
    return *&v4[4 * v7];
  }

  else
  {
    return (*&v4[4 * v7 - 4] + *&v4[4 * v7]) * 0.5;
  }
}

void DspLib::LowFlow::AnalysisPath::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LowFlow/dsp/DspLibLowFlowAnalysisPath.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 516);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MeisterStueck::Kernel::Algorithm::initialize(DspLib::MeisterStueck::Kernel::Algorithm *this, double a2, uint64_t a3)
{
  *(this + 13) = a2;
  *(this + 15) = a3;
  *(this + 100) = 1;
  DspLib::Biquad::Filter::initialize((this + 248), 1uLL, 1uLL);
  std::vector<std::vector<float>>::resize(this + 24, 1uLL);

  DspLib::MeisterStueck::Kernel::Algorithm::setParameters(this, this);
}

void DspLib::MeisterStueck::Kernel::Algorithm::setParameters(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v3 = 0;
    v4 = &DspLib::MeisterStueck::Kernel::Parameters::kMinimum;
    p_p = &DspLib::MeisterStueck::Kernel::Parameters::kMaximum;
    v6 = &DspLib::MeisterStueck::Kernel::Parameters::kMinimum;
    v7 = &DspLib::MeisterStueck::Kernel::Parameters::kMaximum;
    do
    {
      v8 = *(a2 + 4 * v3);
      v9 = *v6++;
      v10 = v9;
      v11 = *v7++;
      *&__p = v8;
      if (v11 >= v8)
      {
        p_p = &__p;
      }

      if (v8 >= v10)
      {
        v4 = p_p;
      }

      *(a1 + 4 * v3++) = *v4;
      p_p = v7;
      v4 = v6;
    }

    while (v3 != 25);
  }

  if (*(a1 + 100) == 1)
  {
    if (*(a1 + 20) >= 0.5 && *(a1 + 96) >= 0.5)
    {
      if ((*(a1 + 328) & 1) == 0)
      {
        DspLib::AnalyticSignalTransformAllpass::initialize((a1 + 320), 1u);
      }
    }

    else
    {
      DspLib::AnalyticSignalTransformAllpass::uninitialize((a1 + 320));
    }

    v12 = vcvtas_u32_f32(*(a1 + 64));
    if (v12 <= 1)
    {
      v12 = 1;
    }

    *(a1 + 644) = v12;
    v13 = vcvtad_u64_f64(*(a1 + 104) * *(a1 + 28) / 1000.0 / v12) | 1;
    v14 = *(a1 + 120) + v13 - 1;
    v15 = *(a1 + 664);
    v16 = *(a1 + 656);
    v17 = v15 - v16;
    if (v14 == (v15 - v16) >> 2)
    {
      goto LABEL_26;
    }

    std::vector<float>::resize((a1 + 656), *(a1 + 120) + v13 - 1);
    if (v15 == v16)
    {
      DspLib::clear(*(a1 + 656), (*(a1 + 664) - *(a1 + 656)) >> 2);
    }

    else if (v14 > v17 >> 2 && v13 > *(a1 + 916))
    {
      DspLib::fill((*(a1 + 664) - 4 * (v14 - (v17 >> 2))), v14 - (v17 >> 2), **(a1 + 656));
    }

    *(a1 + 916) = v13;
    v12 = *(a1 + 644);
    if (v12)
    {
LABEL_26:
      *(a1 + 128) = v12;
      *(a1 + 132) = 0;
      *(a1 + 136) = v12;
      *(a1 + 140) = 0;
    }

    v19 = *(a1 + 104);
    v20 = vcvtad_u64_f64(v19 / 1000.0);
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = v21 + 2 * v12 - 2;
    v23 = *(a1 + 120) / v12 + 1;
    if (v12 != *(a1 + 648) || *(a1 + 652) != v22 || v23 != *(a1 + 188))
    {
      v24 = 2 * v12 + v21 - 2;
      if (v24 >= 0x2EE00)
      {
        v25 = 192000;
      }

      else
      {
        v25 = v24;
      }

      std::vector<float>::vector[abi:ne200100](&__p, v25);
      DspLib::makeLinearInterpolatorAndRaisedCosineCoeffs(__p, (v43 - __p) >> 2, *(a1 + 644), v21);
      DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 144), *(a1 + 644), v23);
      DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 144), __p, (v43 - __p) >> 2);
      v26 = *(a1 + 192);
      for (i = *(a1 + 200); v26 != i; v26 += 24)
      {
        v28 = *(v26 + 8);
        if (*v26 != v28)
        {
          memset_pattern16(*v26, &unk_1DE095DF0, v28 - *v26);
        }
      }

      *(a1 + 648) = *(a1 + 644);
      *(a1 + 652) = v22;
      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      v19 = *(a1 + 104);
    }

    v29 = *(a1 + 60);
    if (v29 >= 1.0)
    {
      v31 = v19;
      v32 = v31 * 0.49;
      if (v32 < v29)
      {
        v29 = v32;
      }

      v30 = v29 * 3.14159265;
    }

    else
    {
      v30 = 3.14159265;
    }

    v33 = v30 / v19;
    v34 = __sincosf_stret(v33);
    *&__p = 1.0 / ((v34.__cosval / v34.__sinval) + 1.0);
    *(&__p + 1) = *&__p;
    LODWORD(v43) = 0;
    *(&v43 + 1) = (1.0 - (v34.__cosval / v34.__sinval)) / ((v34.__cosval / v34.__sinval) + 1.0);
    v44 = 0;
    DspLib::Biquad::Filter::setCoefficients(a1 + 248, &__p, 1, 0, 0x41uLL);
    v35 = *(a1 + 104);
    *(a1 + 936) = ((*(a1 + 44) / 1000.0) * v35);
    v37 = DspLib::dB2Amp(v36, *(a1 + 76));
    v38 = 0;
    *(a1 + 640) = v37;
    v39 = *(a1 + 8);
    if (v39 > 1.0)
    {
      v40 = *(a1 + 104);
      *(a1 + 952) = 1.0 - expf(-1.0 / ((v39 * (v40 / *(a1 + 644))) / 1000.0));
      v38 = 1;
    }

    *(a1 + 960) = v38;
    *(a1 + 961) = *(a1 + 68) >= 0.5;
    v41 = *(a1 + 16);
    *(a1 + 968) = llroundf(fmaxf(*(a1 + 12), 0.0));
    DspLib::MeisterStueck::Kernel::Algorithm::makeGainTable(a1, v41, *(a1 + 36), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 52), *(a1 + 80), *(a1 + 84), *(a1 + 4));
  }
}

void sub_1DDBB1E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::MeisterStueck::Kernel::Algorithm::reset(DspLib::MeisterStueck::Kernel::Algorithm *this)
{
  MEMORY[0x1EEE9AC00](this);
  v10 = *MEMORY[0x1E69E9840];
  if (*(v1 + 100))
  {
    v2 = v1;
    DspLib::AnalyticSignalTransformAllpass::reset((v1 + 320));
    DspLib::Biquad::SetupWrapper::reset((v2 + 296));
    *(v2 + 132) = 0;
    *(v2 + 140) = 0;
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    while (v3 != v4)
    {
      v5 = *(v3 + 8);
      if (*v3 != v5)
      {
        bzero(*v3, v5 - *v3);
      }

      v3 += 24;
    }

    *(v2 + 216) = 0;
    DspLib::MeisterStueck::OSCFilter::reset((v2 + 432));
    DspLib::clear(*(v2 + 656), (*(v2 + 664) - *(v2 + 656)) >> 2);
    *(v2 + 920) = 1065353216;
    *(v2 + 928) = 0;
    *(v2 + 940) = 1065353216;
    *(v2 + 944) = 1065353216;
    *(v2 + 956) = 1065353216;
    *(v2 + 964) = 0;
    DspLib::fill(v9, 0x400uLL, 1.0);
    DspLib::Biquad::Filter::process((v2 + 248), v9, 1024, v9, 1024);
    v6 = *(v2 + 192);
    for (i = *(v2 + 200); v6 != i; v6 += 24)
    {
      v8 = *(v6 + 8);
      if (*v6 != v8)
      {
        memset_pattern16(*v6, &unk_1DE095DF0, v8 - *v6);
      }
    }
  }

  else
  {
    DspLib::MeisterStueck::Kernel::Algorithm::reset();
  }
}

float DspLib::MeisterStueck::Kernel::Algorithm::makeGainTable(DspLib::MeisterStueck::Kernel::Algorithm *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v18 = *(this + 8);
  *(this + 226) = 10.0 / (v18 + 100.0);
  v19 = 0;
  *(this + 228) = DspLib::dB2Amp(this, v18);
  v34 = a9 + -1.0;
  v21 = -100.0;
  v22 = this + 680;
  v31 = (-1.0 / a4) + 1.0;
  v33 = (-1.0 / a7) + 1.0;
  v23 = 1.0 / *(this + 226);
  do
  {
    if (v21 >= a5)
    {
      v25 = a10;
      if (v21 < a2)
      {
        goto LABEL_10;
      }

      v24 = v31 * (a2 - v21);
      if (v24 < a3)
      {
        v24 = a3;
      }
    }

    else
    {
      v24 = v33 * (a5 - v21);
      if (v24 > a6)
      {
        v24 = a6;
      }
    }

    v25 = v24 + a10;
LABEL_10:
    v26 = DspLib::dB2Amp(v20, v25);
    *&v22[v19] = v26;
    if (v21 < a8)
    {
      v27 = v26 * DspLib::dB2Amp(v20, v34 * (v21 - a8));
      v29 = DspLib::dB2Amp(v28, a10);
      if (v27 >= v29)
      {
        v29 = v27;
      }

      *&v22[v19] = v29;
    }

    v21 = v23 + v21;
    v19 += 4;
  }

  while (v19 != 44);

  return DspLib::createInterpolationTable(this + 680, 11, this + 724, 0x2CuLL);
}

void *DspLib::MeisterStueck::Kernel::Algorithm::computeEnvelope(uint64_t a1, uint64_t a2, DSPSplitComplex *a3, float *a4, uint64_t a5, void **a6, void **a7)
{
  v28 = *MEMORY[0x1E69E9840];
  if (DspLib::MeisterStueck::OSCFilter::isInitialized((a1 + 432)))
  {
    *__A = *a2;
    *&__A[16] = *(a2 + 16);
    v25 = *a3;
    realp = a3[1].realp;
    v23 = *a6;
    v24 = a6[2];
    v21 = *a7;
    v22 = a7[2];
    DspLib::MeisterStueck::OSCFilter::process((a1 + 432), __A, &v25, &v23, &v21);
    *__A = *a6;
    *&__A[8] = *(a6 + 1);
    DspLib::DownSampler::process((a1 + 128), __A, a6);
    *__A = *a7;
    *&__A[8] = *(a7 + 1);
    DspLib::DownSampler::process((a1 + 136), __A, a7);
  }

  else
  {
    *__A = *a2;
    *&__A[16] = *(a2 + 16);
    DspLib::DownSampler::process((a1 + 128), __A, a6);
    *__A = *a3;
    *&__A[16] = a3[1].realp;
    DspLib::DownSampler::process((a1 + 136), __A, a7);
  }

  v13 = a6[2];
  if (!v13)
  {
    return 0;
  }

  v14 = **a7;
  *__A = **a6;
  *&__A[8] = v14;
  *&__A[16] = v13;
  vDSP_zvabs(__A, 1, a4, 1, v13);
  if (a6[1] >= 2)
  {
    v15 = 2;
    v16 = 1;
    do
    {
      *__A = a6[2];
      v17 = (*a6)[v16];
      v18 = (*a7)[v16];
      v25.realp = v17;
      v25.imagp = v18;
      realp = *__A;
      vDSP_zvabs(&v25, 1, &__A[16], 1, *__A);
      DspLib::vmax(a4, v13, &__A[16]);
      v16 = v15;
    }

    while (a6[1] > v15++);
  }

  return a6[2];
}

uint64_t DspLib::MeisterStueck::Kernel::Algorithm::computeEnvelope(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, __int128 *a5)
{
  if (DspLib::MeisterStueck::OSCFilter::isInitialized((a1 + 432)))
  {
    *v14 = *a2;
    *&v14[16] = *(a2 + 16);
    v12 = *a5;
    v13 = *(a5 + 2);
    DspLib::MeisterStueck::OSCFilter::process((a1 + 432), v14, &v12);
    *v14 = *a5;
    *&v14[8] = *(a5 + 8);
  }

  else
  {
    *v14 = *a2;
    *&v14[16] = *(a2 + 16);
  }

  DspLib::DownSampler::process((a1 + 128), v14, a5);
  v9 = *(a5 + 2);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a5 + 1);
  *v14 = *a5;
  *&v14[8] = v10;
  *&v14[16] = v9;
  DspLib::vmaxmg(v14, a3, v9);
  return *(a5 + 2);
}

void DspLib::MeisterStueck::Kernel::Algorithm::processDetector(uint64_t a1, void *__src, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = *(a1 + 656);
    DspLib::copy(__src, a3, &v10[*(a1 + 916) - 1]);
    DspLib::slidingWindowMaxima(v10, a3 + *(a1 + 916) - 1, __src, a3);
    DspLib::copy(&v10[a3], (*(a1 + 916) - 1), v10);
    DspLib::multiply(__src, a3, *(a1 + 640));
    if (*(a1 + 112) == 1)
    {
      v11 = *(a1 + 104);
      v12 = expf(-1.0 / ((((v11 / a3) / *(a1 + 644)) * 20.0) / 1000.0));
      v13 = COERCE_FLOAT(DspLib::maxIndex(__src, a3));
      v15 = v14;
      *(a1 + 940) = v13;
      v16 = *(a1 + 924) * v12;
      if (v16 <= v13)
      {
        v16 = v13;
      }

      *(a1 + 924) = fmaxf(v16, 0.000001);
      v17 = *(a1 + 928);
      if (v17 >= v13)
      {
        v24 = *(a1 + 932);
        if (v24 >= *(a1 + 936))
        {
          *(a1 + 928) = v12 * v17;
        }

        else
        {
          *(a1 + 932) = v24 + a5;
        }
      }

      else
      {
        *(a1 + 928) = v13;
        *(a1 + 932) = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    DspLib::MeisterStueck::Kernel::Algorithm::gainForEnvelope(a1, __src, a3, __src, a3);
    v18 = *(a1 + 960);
    if (v18 == 1)
    {
      v19 = __src;
      do
      {
        v20 = *v19;
        v21 = *(a1 + 956);
        if (*v19 >= v21)
        {
          v22 = v21 + ((v20 - v21) * *(a1 + 952));
          *(a1 + 956) = v22;
          *v19 = v22;
        }

        else
        {
          *(a1 + 956) = v20;
        }

        ++v19;
      }

      while (a3 > v18++);
    }

    if (*(a1 + 112) == 1)
    {
      *(a1 + 944) = *(__src + v15);
      *(a1 + 920) = DspLib::minv(__src, a3);
    }
  }

  v27 = __src;
  v28 = a4;
  v26[0] = &v27;
  v26[1] = 1;
  v26[2] = a3;
  v25[0] = &v28;
  v25[1] = 1;
  v25[2] = a5;
  DspLib::PolyPhaseInterpolator::process((a1 + 144), v26, v25);
}

void DspLib::MeisterStueck::Kernel::Algorithm::gainForEnvelope(float *a1, const float *a2, vDSP_Length __N, float *__D, vDSP_Length a5)
{
  if (*a1 >= 0.5 || a1[18] >= 0.5)
  {

    DspLib::fill(__D, a5, 1.0);
  }

  else
  {
    DspLib::clip(a2, __N, __D, a1[227], a1[228]);
    DspLib::amp2dB(__D, a5, 1.0);
    DspLib::add(__D, a5, 100.0);
    DspLib::multiply(__D, a5, a1[226]);

    DspLib::elementAtIndexWithInterpolation((a1 + 181), 44, __D, a5, __D, a5);
  }
}

void sub_1DDBB27E8()
{
  DspLib::add(v1, v0, 1.0);
  DspLib::clip(v1, v0, 0.0, 1.0);
  DspLib::negate();
}

void sub_1DDBB2820()
{
  DspLib::add(v3, v4, 1.0);
  if (*(v0 + 112) == 1)
  {
    v5 = DspLib::maxv(v2, v1);
    if (v5 < *(v0 + 948))
    {
      v5 = *(v0 + 948);
    }

    *(v0 + 948) = v5;
  }
}

void DspLib::MeisterStueck::Kernel::Algorithm::process(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v27[256] = *MEMORY[0x1E69E9840];
  if (*(v1 + 100))
  {
    v6 = v4;
    if (*v1 < 0.5)
    {
      v7 = *(v2 + 2);
      *&v26 = v7;
      __N[0] = v7;
      *v22 = v7;
      *v20 = *v2;
      *v21 = *(v2 + 2);
      *v18 = *v3;
      v19[0] = *(v3 + 16);
      v8 = (v5[4] - v5[3]) >> 3;
      *v16 = v5[3];
      *&v16[2] = v8;
      v17 = v7;
      v9 = (v5[10] - v5[9]) >> 3;
      *v13 = v5[9];
      v14 = v9;
      v15 = v7;
      v12 = v1;
      v10 = DspLib::MeisterStueck::Kernel::Algorithm::computeEnvelope(v1, v20, v18, v27, v7, v16, v13);
      DspLib::MeisterStueck::Kernel::Algorithm::processDetector(v12, v27, v10, v25, v7);
      DspLib::Biquad::Filter::process((v12 + 248), v25, __N[0], v23, v7);
      *v20 = v7;
      *v18 = v7;
      DspLib::MeisterStueck::Kernel::Algorithm::processTransientCrossFader(v12, v25, __N[0], v23, *v22, v21, v7, v11, v19);
    }

    v26 = *v2;
    v27[0] = *(v2 + 2);
    *__N = *v3;
    *v25 = *(v3 + 16);
    *v22 = *v4;
    *v23 = *(v4 + 2);
    DspLib::add(&v26, __N, v22);
    v26 = *v6;
    v27[0] = *(v6 + 2);
    DspLib::multiply(&v26, 0.70711);
  }

  else
  {
    DspLib::MeisterStueck::Kernel::Algorithm::process();
  }
}

{
  MEMORY[0x1EEE9AC00](a1);
  v25[257] = *MEMORY[0x1E69E9840];
  if (*(v1 + 100))
  {
    v5 = v3;
    if (*v1 < 0.5)
    {
      v6 = *(v2 + 2);
      *&v24 = v6;
      *&__N = v6;
      *v20 = v6;
      *v18 = v6;
      *v16 = v6;
      v14 = *v2;
      v15 = *(v2 + 2);
      v7 = (*(v4 + 32) - *(v4 + 24)) >> 3;
      *&v12 = *(v4 + 24);
      *(&v12 + 1) = v7;
      v13 = v6;
      v11 = v1;
      v8 = DspLib::MeisterStueck::Kernel::Algorithm::computeEnvelope(v1, &v14, v25, v6, &v12);
      DspLib::MeisterStueck::Kernel::Algorithm::processDetector(v11, v25, v8, v23, v6);
      DspLib::Biquad::Filter::process((v11 + 248), v23, __N, v21, v6);
      DspLib::MeisterStueck::Kernel::Algorithm::processTransientCrossFader(v11, v23, __N, v21, *v20, &v19, v6, v9, &v17);
    }

    if (*v2 != *v3)
    {
      v10 = v1;
      v24 = *v2;
      v25[0] = *(v2 + 2);
      __N = *v3;
      *v23 = *(v3 + 2);
      DspLib::copy(&v24, &__N);
      v1 = v10;
    }

    if (*(v1 + 961) == 1)
    {
      v24 = *v5;
      v25[0] = *(v5 + 2);
      DspLib::MeisterStueck::Kernel::Algorithm::processSaturation(v1, &v24);
    }
  }

  else
  {
    DspLib::MeisterStueck::Kernel::Algorithm::process();
  }
}

void DspLib::MeisterStueck::Kernel::Algorithm::processSaturation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) == 1)
  {
    *v5 = *a2;
    *&v5[8] = *(a2 + 8);
    v4 = DspLib::maxMagnitude(v5);
    if (*(a1 + 964) >= v4)
    {
      v4 = *(a1 + 964);
    }

    *(a1 + 964) = v4;
  }

  *v5 = *a2;
  *&v5[16] = *(a2 + 16);
  DspLib::Saturation::process(v5);
}

void DspLib::Saturation::process(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v8 = *MEMORY[0x1E69E9840];
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v4 = *(v1 + 1);
          *v7 = *(v1 + 2);
          if (v4)
          {
            DspLib::vsin(**v1, *(v1 + 2), &v7[16]);
            DspLib::add();
          }
        }

        return;
      }

      *v7 = *v1;
      *&v7[16] = *(v1 + 2);
      DspLib::clip(v7, -1.5708, 1.5708);
    }

    *v7 = *v3;
    *&v7[8] = *(v3 + 8);
    v5 = *v3;
    v6 = *(v3 + 2);
    DspLib::vsin(v7, &v5);
    return;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      *v7 = *v1;
      *&v7[16] = *(v1 + 2);
      DspLib::clip(v7, -2.965, 2.965);
      *v7 = *v3;
      *&v7[16] = *(v3 + 2);
      DspLib::poly(v7, _ZGRN6DspLib10SaturationL27kTubePolynomialCoefficientsE_, 4);
    }
  }

  else
  {
    *v7 = *v1;
    *&v7[16] = *(v1 + 2);
    DspLib::clip(v7, -1.0, 1.0);
  }
}

void DspLib::MeisterStueck::Kernel::Algorithm::status(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 0.5 || *(a1 + 72) >= 0.5)
  {
    *a2 = xmmword_1DE095E40;
    *(a2 + 16) = 0;
    v10 = (a2 + 24);
  }

  else
  {
    *a2 = DspLib::amp2dBSafe(a1, *(a1 + 920), 0.000001);
    *(a1 + 920) = DspLib::dB2Amp(v4, 40.0);
    *(a2 + 4) = DspLib::amp2dBSafe(v5, *(a1 + 924), 0.000001);
    *(a2 + 8) = DspLib::amp2dBSafe(v6, *(a1 + 928), 0.000001);
    v9 = DspLib::amp2dBSafe(v7, *(a1 + 940), 0.000001);
    if (v9 < -100.0)
    {
      v9 = -100.0;
    }

    *(a2 + 12) = v9;
    *(a2 + 16) = DspLib::amp2dBSafe(v8, *(a1 + 944), 0.000001);
    *(a2 + 20) = *(a1 + 948);
    v10 = (a1 + 964);
    *(a2 + 24) = DspLib::amp2dBSafe(v11, *(a1 + 964), 0.000001);
    *(a1 + 948) = 0;
  }

  *v10 = 0;
}

uint64_t DspLib::AnalyticSignalTransformBase::process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a4;
  v13 = a2;
  v11 = a6;
  v10[0] = &v13;
  v10[1] = 1;
  v10[2] = a3;
  v9[0] = &v12;
  v9[1] = 1;
  v9[2] = a5;
  v8[0] = &v11;
  v8[1] = 1;
  v8[2] = a7;
  return (*(*a1 + 48))(a1, v10, v9, v8);
}

void DspLib::MeisterStueck::Kernel::Algorithm::reset()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MeisterStueck/dsp/DspLibMeisterStueckKernel.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 38);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MeisterStueck::Kernel::Algorithm::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MeisterStueck/dsp/DspLibMeisterStueckKernel.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 389);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MeisterStueck/dsp/DspLibMeisterStueckKernel.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 458);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

double DspLib::XTC::Algorithm::Algorithm(DspLib::XTC::Algorithm *this)
{
  v1 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::XTC::Parameters::kDefault, 0x40uLL, &DspLib::XTC::Parameters::kMinimum, 64, &DspLib::XTC::Parameters::kMaximum, 64);
  *v1 = &unk_1F59197E0;
  result = 0.0;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 1065353216;
  *(v1 + 284) = 0;
  *(v1 + 292) = 0;
  *(v1 + 276) = 0;
  *(v1 + 297) = 0;
  *(v1 + 308) = 2;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(v1 + 376) = _D1;
  *(v1 + 416) = 0;
  *(v1 + 392) = 0;
  *(v1 + 400) = 0;
  *(v1 + 384) = 0;
  *(v1 + 408) = 0;
  *(v1 + 464) = 0;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 0;
  *(v1 + 472) = 0u;
  *(v1 + 488) = 0u;
  *(v1 + 504) = 0;
  *(v1 + 520) = 0;
  *(v1 + 528) = 0;
  *(v1 + 536) = 0;
  *(v1 + 544) = 0;
  return result;
}

uint64_t DspLib::XTC::Algorithm::initialize(DspLib::XTC::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if ((*(*this + 64))(this) == 2)
  {
    *(this + 8) = 1;
    operator new();
  }

  DspLib::XTC::Algorithm::initialize();
  return v4;
}

void sub_1DDBB38BC(_Unwind_Exception *a1)
{
  v6 = *(v4 + 8);
  if (v6)
  {
    *(v2 + v3 + 16) = v6;
    operator delete(v6);
  }

  if (v3)
  {
    v7 = (v4 - 152);
    v8 = -v3;
    do
    {
      DspLib::FastFIR::~FastFIR(v7);
      v7 = (v9 - 152);
      v8 += 152;
    }

    while (v8);
  }

  MEMORY[0x1E12BD160](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t DspLib::XTC::Algorithm::uninitialize(DspLib::XTC::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  v2 = (this + 280);
  v3 = 16;
  do
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      std::default_delete<DspLib::XTC::HRTFSet>::operator()[abi:ne200100](v2, v4);
    }

    ++v2;
    v3 -= 8;
  }

  while (v3);
  std::unique_ptr<DspLib::XTC::FIRMatrix>::reset[abi:ne200100](this + 30, 0);
  std::unique_ptr<DspLib::XTC::FIRMatrix>::reset[abi:ne200100](this + 31, 0);
  *(this + 37) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;

  return DspLib::ToneGenerator::uninitialize((this + 304));
}

uint64_t *std::unique_ptr<DspLib::XTC::FIRMatrix>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 624);
    if (v3)
    {
      *(v2 + 632) = v3;
      operator delete(v3);
    }

    v4 = 608;
    while (1)
    {
      v5 = v2 + v4;
      v6 = *(v2 + v4 - 8);
      *(v2 + v4 - 8) = 0;
      if (v6)
      {
        v7 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v6);
        MEMORY[0x1E12BD160](v7, 0x1020C405730B0C9);
      }

      v8 = *(v5 - 16);
      *(v5 - 16) = 0;
      if (v8)
      {
        v9 = DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v8);
        MEMORY[0x1E12BD160](v9, 0x1020C405730B0C9);
      }

      v10 = v2 + v4;
      v11 = *(v2 + v4 - 40);
      if (v11)
      {
        *(v10 - 32) = v11;
        operator delete(v11);
      }

      DspLib::ComplexVector::~ComplexVector((v10 - 120));
      v12 = *(v10 - 144);
      if (v12)
      {
        *(v2 + v4 - 136) = v12;
        operator delete(v12);
      }

      v4 -= 152;
      if (!v4)
      {

        JUMPOUT(0x1E12BD160);
      }
    }
  }

  return result;
}

void DspLib::XTC::Algorithm::reset(int8x16_t *this)
{
  if (this->i8[8])
  {
    this[16] = vextq_s8(this[15], this[15], 8uLL);
    DspLib::ToneGenerator::reset(&this[19]);
    v2 = this[16].i64[1];
    if (v2)
    {
      DspLib::XTC::FIRMatrix::reset(v2);
    }

    v3 = this[16].i64[0];
    if (v3)
    {
      DspLib::XTC::FIRMatrix::reset(v3);
    }

    this[33].i32[0] = 0;
    this[32].i64[1] = 0;
    this[17].i32[0] = 1065353216;
  }

  else
  {
    DspLib::XTC::Algorithm::reset();
  }
}

double DspLib::XTC::Algorithm::latencySamples(DspLib::XTC::Algorithm *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    v2 = fabsf(*(v1 + 616));
  }

  else
  {
    v2 = 0.0;
  }

  return round(*(this + 2) * (v2 / 1000.0));
}

float DspLib::XTC::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(*a1 + 40))(a1))
  {
    v7 = *(a1 + 240);
    v8 = *(a1 + 248);
    *(a1 + 240) = v8;
    *(a1 + 248) = v7;
    DspLib::AlgorithmBase::setParameters(a1, a2, a3, v6);
    DspLib::XTC::Algorithm::designFilters(a1, v8);
    v9 = *(a1 + 240);
    *(a1 + 272) = 0;
    *(a1 + 256) = *(a1 + 264);
    *(a1 + 264) = v9;
  }

  result = *(*(a1 + 24) + 88);
  *(a1 + 276) = result;
  return result;
}

void DspLib::XTC::Algorithm::setParametersAndDesignFilters(DspLib::XTC::Algorithm *a1, void *a2, uint64_t a3, DspLib::XTC::FIRMatrix *a4, __n128 a5)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a5);

  DspLib::XTC::Algorithm::designFilters(a1, a4);
}

uint64_t DspLib::XTC::Algorithm::setFIRMatrixAndTriggerCrossFade(uint64_t result, uint64_t a2)
{
  *(result + 272) = 0;
  *(result + 256) = *(result + 264);
  *(result + 264) = a2;
  return result;
}

void DspLib::XTC::Algorithm::designFilters(DspLib::XTC::Algorithm *this, DspLib::XTC::FIRMatrix *a2)
{
  DspLib::ChannelBuffer::ChannelBuffer(v7, 4uLL, 1uLL);
  v4 = *(this + 3);
  if (v4[15] >= 0.5 && vcvtas_u32_f32(*v4) == 2)
  {
    if ((*(this + 304) & 1) == 0)
    {
      DspLib::ToneGenerator::configure(this + 304, 6, -20.0);
      DspLib::ToneGenerator::initialize((this + 304), *(this + 2));
    }
  }

  else
  {
    DspLib::ToneGenerator::reset((this + 304));
  }

  *(a2 + 154) = DspLib::XTC::Algorithm::designXTCfilters(this, v7);
  v6[0] = v8;
  v6[1] = (v9 - v8) >> 3;
  if (v7[1] == v7[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = (*(v7[0] + 8) - *v7[0]) >> 2;
  }

  v6[2] = v5;
  DspLib::XTC::FIRMatrix::setCoefficients(a2, v6);
  DspLib::ChannelBuffer::~ChannelBuffer(v7);
}

void sub_1DDBB3D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DspLib::ChannelBuffer::~ChannelBuffer(va);
  _Unwind_Resume(a1);
}

float DspLib::XTC::Algorithm::designXTCfilters(DspLib::XTC::Algorithm *this, DspLib::ChannelBuffer *a2)
{
  v4 = *(this + 3);
  v5 = llroundf(*(v4 + 4 * (vcvtas_u32_f32(*(v4 + 4)) + 23)));
  if (v5 == -2)
  {
    v5 = *(this + 136);
  }

  *(this + 136) = v5;
  if (v5 == -1)
  {
    goto LABEL_30;
  }

  v6 = *(this + v5 + 35);
  if (v6)
  {

    return DspLib::XTC::Algorithm::runXTCfilterPostProcess(this, v6, a2);
  }

  if (!*(this + 37))
  {
LABEL_30:

    return DspLib::XTC::Algorithm::makeBypassFirCoefficients(this, a2);
  }

  else
  {
    v8 = 16 * (v5 & ~(v5 >> 31));
    v9 = *(v4 + 4 * (v8 + 35));
    v10 = *(v4 + 4 * (v8 + 37));
    v11 = *(v4 + 4 * (v8 + 38));
    v12 = 0.0;
    if (v9 > 0.0)
    {
      v13 = *(v4 + 4 * (v8 + 36));
      if (v13 > 0.0)
      {
        v14 = atanf(v9 / (v13 + v13));
        v12 = (v14 + v14) * 57.2957795;
      }
    }

    v15 = 0;
    v16 = 179.0;
    if (v12 <= 179.0)
    {
      v16 = v12;
    }

    if (v12 >= 1.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1.0;
    }

    v30 = 0;
    v31 = 0;
    do
    {
      DspLib::ComplexVector::ComplexVector(&v32[v15], 0, 0);
      v15 += 80;
    }

    while (v15 != 320);
    v18 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      DspLib::ComplexVector::ComplexVector(&v29[v18], 0, 0);
      v18 += 80;
    }

    while (v18 != 320);
    v19 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      DspLib::ComplexVector::ComplexVector(&v26[v19], 0, 0);
      v19 += 80;
    }

    while (v19 != 320);
    DspLib::XTC::HRIRDatabase::getHRTFwithAngleAndRotation(*(this + 37), &v30, v17, 0.0);
    DspLib::XTC::HRIRDatabase::getHRTFwithAngleAndRotation(*(this + 37), &v27, v10, v11);
    DspLib::XTC::Algorithm::compute_W_with_H_and_D(this, &v30, &v27, &v24);
    v20 = DspLib::XTC::Algorithm::runXTCfilterPostProcess(this, &v24, a2);
    for (i = 256; i != -64; i -= 80)
    {
      DspLib::ComplexVector::~ComplexVector((&v24 + i));
    }

    for (j = 256; j != -64; j -= 80)
    {
      DspLib::ComplexVector::~ComplexVector((&v27 + j));
    }

    for (k = 256; k != -64; k -= 80)
    {
      DspLib::ComplexVector::~ComplexVector((&v30 + k));
    }

    return v20;
  }
}

void sub_1DDBB4004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v42 = &a41;
  v43 = -320;
  do
  {
    DspLib::ComplexVector::~ComplexVector(v42);
    v42 = (v44 - 80);
    v43 += 80;
  }

  while (v43);
  v45 = &STACK[0x250];
  v46 = -320;
  do
  {
    DspLib::ComplexVector::~ComplexVector(v45);
    v45 = (v47 - 80);
    v46 += 80;
  }

  while (v46);
  for (i = 256; i != -64; i -= 80)
  {
    DspLib::ComplexVector::~ComplexVector((&STACK[0x2A0] + i));
  }

  _Unwind_Resume(a1);
}

void sub_1DDBB40BC()
{
  if (v0)
  {
    v1 = (&STACK[0x2A0] + v0 - 64);
    v2 = -v0;
    do
    {
      DspLib::ComplexVector::~ComplexVector(v1);
      v1 = (v3 - 80);
      v2 += 80;
    }

    while (v2);
  }

  JUMPOUT(0x1DDBB40B4);
}

void DspLib::XTC::Algorithm::processTestNoiseGenerator(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 304) == 1)
  {
    v13 = v2;
    v14 = v3;
    v11 = *a2;
    v12 = *(a2 + 2);
    DspLib::ToneGenerator::generate(a1 + 304, &v11);
    v6 = *(a1 + 520);
    v7 = v6;
    v8 = *(a1 + 16);
    v9 = *(a2 + 2);
    v10 = v9 + v6;
    if (v8 < v7)
    {
      v10 = 0;
    }

    *(a1 + 520) = v10;
    DspLib::clear(*(*a2 + 8 * (v8 * 0.5 >= v10)), v9);
  }
}

void DspLib::XTC::Algorithm::processBlock(uint64_t a1, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  if (v4)
  {
    if (*(a1 + 264))
    {
      if (*(a1 + 256))
      {
        v5 = a2[2];
        if (v5)
        {
          v6 = *(a1 + 24);
          if (vcvtas_u32_f32(*v6) == 2)
          {
            if (vcvtas_u32_f32(v6[15]) == 1)
            {
              *v25 = *a2;
              *&v25[16] = a2[2];
              DspLib::XTC::Algorithm::processTestNoiseGenerator(a1, v25);
            }

            v7 = ((v5 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
            MEMORY[0x1EEE9AC00](v4);
            v28 = &v19[-8 * v7];
            v29 = &v28[4 * v7];
            v8 = *(a1 + 264);
            v9 = *a2;
            v24 = v5;
            *v25 = v9;
            *&v25[8] = *(a2 + 1);
            *&v23 = &v28;
            *(&v23 + 1) = 2;
            v10 = DspLib::XTC::FIRMatrix::process(v8, v25, &v23);
            v11 = *(a1 + 272);
            if (v11 >= 1.0)
            {
              DspLib::copy(v28, v5, **a2);
              DspLib::copy(v29, v5, *(*a2 + 8));
            }

            else
            {
              v12 = 1.0 / (*(a1 + 16) * (*(a1 + 276) / 1000.0));
              v21 = -v12;
              __Step = v12;
              __Start = 1.0 - v11;
              MEMORY[0x1EEE9AC00](v10);
              v26 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
              v27 = &v26[v7];
              v15 = vcvtas_u32_f32(v14);
              if (v5 >= v15)
              {
                v16 = v15;
              }

              else
              {
                v16 = v5;
              }

              v17 = *(a1 + 256);
              v18 = *a2;
              v24 = v5;
              *v25 = v18;
              *&v25[8] = *(a2 + 1);
              *&v23 = &v26;
              *(&v23 + 1) = 2;
              DspLib::XTC::FIRMatrix::process(v17, v25, &v23);
              DspLib::copy(v28, v5, **a2);
              DspLib::copy(v29, v5, *(*a2 + 8));
              vDSP_vrampmul2(v28, v29, 1, (a1 + 272), &__Step, **a2, *(*a2 + 8), 1, v16);
              vDSP_vrampmuladd2(v26, v27, 1, &__Start, &v21, **a2, *(*a2 + 8), 1, v16);
            }

            if (vcvtas_u32_f32(*(*(a1 + 24) + 60)) == 2)
            {
              *v25 = *a2;
              *&v25[16] = a2[2];
              DspLib::XTC::Algorithm::processTestNoiseGenerator(a1, v25);
            }
          }
        }
      }

      else
      {
        DspLib::XTC::Algorithm::processBlock();
      }
    }

    else
    {
      DspLib::XTC::Algorithm::processBlock();
    }
  }

  else
  {
    DspLib::XTC::Algorithm::processBlock();
  }
}

void DspLib::XTC::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  v6 = DspLib::sum(*(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v7 = 0;
  v8 = *(a1 + 528);
  *a2 = v6;
  *(a2 + 4) = v8;
  *(a2 + 8) = *(*(a1 + 24) + 4 * v8);
  if ((v8 + 1) <= 0x3F)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 528) = v9;
  v10 = a2 + 20;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = *(a1 + 280);
    v14 = 0.0;
    if (v13)
    {
      v15 = (v13 + 16);
      v16 = 4;
      do
      {
        v14 = v14 + DspLib::checksum(v15, v5, 0.0);
        v15 = (v15 + 80);
        --v16;
      }

      while (v16);
    }

    v11 = 0;
    *(v10 + 4 * v7) = v14;
    v7 = 1;
  }

  while ((v12 & 1) != 0);
}

float DspLib::XTC::Algorithm::makeBypassFirCoefficients(DspLib::XTC::Algorithm *this, DspLib::ChannelBuffer *a2)
{
  v4 = *(this + 33);
  if (v4)
  {
    v5 = *(v4 + 608);
    v6 = *(v4 + 616);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0.0;
  }

  v5 = 1;
LABEL_6:
  DspLib::ChannelBuffer::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), v5);
  v7 = *(this + 2);
  v8 = (*(a2 + 4) - *(a2 + 3)) >> 3;
  v15[0] = *(a2 + 3);
  v15[1] = v8;
  if (*(a2 + 1) == *a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(*a2 + 8) - **a2) >> 2;
  }

  v10 = vcvtad_u64_f64(v7 * (fabsf(v6) / 1000.0));
  if (v5 - 1 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5 - 1;
  }

  v15[2] = v9;
  DspLib::clear(v15);
  v12 = -1.0;
  if (v6 > 0.0)
  {
    v12 = 1.0;
  }

  v13 = *a2;
  *(**a2 + 4 * v11) = v12;
  *(*(v13 + 72) + 4 * v11) = v12;
  return v6;
}

float DspLib::XTC::Algorithm::runXTCfilterPostProcess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v96 = *a2;
  v7 = 2 * v96;
  v9 = round(log2((2 * v96)));
  v10 = 0.0;
  v11 = 4;
  v12 = (a2 + 16);
  do
  {
    v10 = v10 + DspLib::checksum(v12, v8, 0.0);
    v12 = (v12 + 80);
    --v11;
  }

  while (v11);
  if (v6 < 1000.0)
  {
    v13 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
    v14 = 392;
LABEL_30:
    printf("DSP Sound assertion in %s at line %d\n", v13, v14);
    ++DspLibDebug::mAssertCounter;
    return 0.0;
  }

  if (v7 != 1 << v9)
  {
    v13 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
    v14 = 398;
    goto LABEL_30;
  }

  v15 = 0;
  v93 = 0;
  v94 = 0;
  v16 = 4;
  v95 = 0;
  do
  {
    if (v15 >= v95)
    {
      v15 = std::vector<DspLib::ComplexVector>::__emplace_back_slow_path<unsigned long &>(&v93, &v96);
    }

    else
    {
      DspLib::ComplexVector::ComplexVector(v15, v96, 0);
      v15 = (v15 + 80);
    }

    v94 = v15;
    --v16;
  }

  while (v16);
  v17 = *(*(a1 + 24) + 12);
  DspLib::ComplexVector::operator=(v93, a2 + 16);
  DspLib::ComplexVector::operator=(v93 + 80, a2 + 96);
  DspLib::ComplexVector::operator=(v93 + 160, a2 + 176);
  DspLib::ComplexVector::operator=(v93 + 240, a2 + 256);
  v18 = 0;
  v19 = (v93 + 8);
  do
  {
    v20 = *v19;
    v19 += 10;
    v97[v18 + 4] = *v20;
    *v20 = 0;
    ++v18;
  }

  while (v18 != 4);
  DspLib::ComplexVector::ComplexVector(v92, v96, 0);
  DspLib::ComplexVector::ComplexVector(v91, v96, 0);
  DspLib::XTC::Algorithm::makeCrossover(&v92[0].realp, &v91[0].realp, *(a1 + 24), v6);
  v22 = *(a1 + 536);
  if (v22)
  {
    DspLib::ComplexVector::operator=(v22 + 1696, v92);
    DspLib::ComplexVector::operator=(*(a1 + 536) + 1856, v91);
    DspLib::ComplexVector::operator=(*(a1 + 536) + 1776, v91);
    DspLib::ComplexVector::operator=(*(a1 + 536) + 1936, v92);
  }

  v90 = 0;
  v23 = DspLib::FFT::impulseResponsePeakInMilliseconds(v93, (&v90 + 4), v6, v21);
  v25 = DspLib::FFT::impulseResponsePeakInMilliseconds((v93 + 240), &v90, v6, v24);
  v27 = *&v90 < 0.0 && *(&v90 + 1) < 0.0;
  DspLib::ComplexVector::ComplexVector(v89, v96, 0);
  v28 = (v23 + v25) * 0.5;
  DspLib::initializeWithLinearPhase(v89, v29, v28, v6);
  if (v27)
  {
    DspLib::operator*=(v89, -1.0);
  }

  DspLib::operator*=(v91, v89);
  v30 = 1.0;
  if (v27)
  {
    v30 = -1.0;
  }

  v31 = v93;
  **v93 = v30;
  **(v31 + 10) = 0;
  **(v31 + 20) = 0;
  **(v31 + 30) = v30;
  DspLib::operator*(v31, v92, &__p);
  DspLib::operator+(&__p, v91, v88);
  DspLib::ComplexVector::operator=(v93, v88);
  DspLib::ComplexVector::~ComplexVector(v88);
  DspLib::ComplexVector::~ComplexVector(&__p);
  DspLib::operator*((v93 + 80), v92, v88);
  DspLib::ComplexVector::operator=(v93 + 80, v88);
  DspLib::ComplexVector::~ComplexVector(v88);
  DspLib::operator*((v93 + 160), v92, v88);
  DspLib::ComplexVector::operator=(v93 + 160, v88);
  DspLib::ComplexVector::~ComplexVector(v88);
  DspLib::operator*((v93 + 240), v92, &__p);
  DspLib::operator+(&__p, v91, v88);
  DspLib::ComplexVector::operator=(v93 + 240, v88);
  DspLib::ComplexVector::~ComplexVector(v88);
  DspLib::ComplexVector::~ComplexVector(&__p);
  v32 = 0;
  v33 = 8;
  v34 = v93;
  do
  {
    **(v34 + v33) = v97[v32 + 4];
    v35 = *(a1 + 16);
    DspLib::FFT::resample((v34 + v33 - 8), 0, v6, v35);
    v34 = v93;
    v36 = *(v93 + v33);
    v97[v32 + 4] = *v36;
    *v36 = 0;
    ++v32;
    v33 += 80;
  }

  while (v32 != 4);
  v37 = DspLib::XTC::Algorithm::targetFIRfilterLength(a1);
  v38 = v37;
  v39 = *(a1 + 16);
  if (v17 < 0.5)
  {
    v40 = (*(*(a1 + 24) + 56) * ((v37 / v39) * 1000.0)) / 100.0;
  }

  else
  {
    v40 = 0.0;
  }

  v42 = (roundf(((v28 + v40) / 1000.0) * v39) / v39) * 1000.0;
  if (v27)
  {
    v41 = -v42;
  }

  else
  {
    v41 = v42;
  }

  DspLib::ComplexVector::ComplexVector(v88, v96, 0);
  v43 = *(a1 + 16);
  DspLib::initializeWithLinearPhase(v88, v44, v42 - v28, v43);
  for (i = 0; i != 320; i += 80)
  {
    DspLib::operator*(v88, &__p, 2.0);
    DspLib::operator*=(v93 + i, &__p);
    DspLib::ComplexVector::~ComplexVector(&__p);
  }

  v46 = 0;
  v47 = v93;
  do
  {
    v48 = (v47 + v46);
    v49 = 4 * v48[2] - 4;
    v50 = *(*v48 + v49);
    v51 = *(v48[1] + v49);
    v52 = DspLib::sign(1, v51);
    v47 = v93;
    **(v93 + v46 + 8) = v52 * sqrtf((v51 * v51) + (v50 * v50));
    v46 += 80;
  }

  while (v46 != 320);
  DspLib::ChannelBuffer::resize(a3, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3), v7);
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform(v84, v7);
  v53 = 0;
  v54 = 0;
  do
  {
    DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(v84, (v93 + v54), *(*a3 + v53));
    DspLib::multiply(*(*a3 + v53), (*(*a3 + v53 + 8) - *(*a3 + v53)) >> 2, 0.5 / v7);
    v54 += 80;
    v53 += 24;
  }

  while (v53 != 96);
  if (v17 < 0.5)
  {
    v55 = 0;
    for (j = 0; j != 4; ++j)
    {
      *&v97[j] = DspLib::sum(*(*a3 + v55), (*(*a3 + v55 + 8) - *(*a3 + v55)) >> 2);
      v55 += 24;
    }

    std::vector<float>::vector[abi:ne200100](&__p, v38);
    DspLib::makeTukeyWindow(__p, (v86 - __p) >> 2, *(*(a1 + 24) + 52));
    DspLib::ChannelBuffer::resize(a3, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3), v38);
    v57 = (*(a3 + 32) - *(a3 + 24)) >> 3;
    v81 = *(a3 + 24);
    v82 = v57;
    v83 = 0;
    v58 = *(a3 + 8) == *a3 ? 0 : (*(*a3 + 8) - **a3) >> 2;
    v83 = v58;
    DspLib::multiply(&v81, __p);
    v59 = *v97;
    v60 = DspLib::sum(**a3, (*(*a3 + 8) - **a3) >> 2) - v59;
    v61 = -v38;
    DspLib::add(**a3, (*(*a3 + 8) - **a3) >> 2, v60 / v61);
    v62 = *&v97[3];
    v63 = DspLib::sum(*(*a3 + 72), (*(*a3 + 80) - *(*a3 + 72)) >> 2);
    DspLib::add(*(*a3 + 72), (*(*a3 + 80) - *(*a3 + 72)) >> 2, (v63 - v62) / v61);
    v64 = *&v97[2];
    v65 = DspLib::sum(*(*a3 + 48), (*(*a3 + 56) - *(*a3 + 48)) >> 2);
    DspLib::add(*(*a3 + 48), (*(*a3 + 56) - *(*a3 + 48)) >> 2, (v65 - v64) / v61);
    v66 = *&v97[1];
    v67 = DspLib::sum(*(*a3 + 24), (*(*a3 + 32) - *(*a3 + 24)) >> 2);
    v68 = DspLib::add(*(*a3 + 24), (*(*a3 + 32) - *(*a3 + 24)) >> 2, (v67 - v66) / v61);
    v69 = (*(a3 + 32) - *(a3 + 24)) >> 3;
    v81 = *(a3 + 24);
    v82 = v69;
    v83 = 0;
    v70 = *(a3 + 8) == *a3 ? 0 : (*(*a3 + 8) - **a3) >> 2;
    v83 = v70;
    v71 = DspLib::dB2Amp(v68, *(*(a1 + 24) + 84));
    DspLib::multiply(&v81, v71);
    if (__p)
    {
      v86 = __p;
      operator delete(__p);
    }
  }

  v72 = (*(a3 + 32) - *(a3 + 24)) >> 3;
  __p = *(a3 + 24);
  v86 = v72;
  v87 = 0;
  if (*(a3 + 8) == *a3)
  {
    v73 = 0;
  }

  else
  {
    v73 = (*(*a3 + 8) - **a3) >> 2;
  }

  v87 = v73;
  if (DspLib::isFinite(&__p))
  {
    if (v17 < 0.5)
    {
      v74 = *(a1 + 24);
      v75 = *(v74 + 40);
      v76 = *(v74 + 44);
      if (v75 >= 0.5 || v76 >= 0.5)
      {
        DspLib::ChannelBuffer::ChannelBuffer(&__p, a3);
        if (v75 < 0.5 || v76 < 0.5)
        {
          if (v76 >= 0.5)
          {
            DspLib::copy(*(__p + 6), (*(__p + 7) - *(__p + 6)) >> 2, **a3);
            DspLib::copy(*(__p + 9), (*(__p + 10) - *(__p + 9)) >> 2, *(*a3 + 24));
            DspLib::copy(*__p, (*(__p + 1) - *__p) >> 2, *(*a3 + 48));
            DspLib::copy(*(__p + 3), (*(__p + 4) - *(__p + 3)) >> 2, *(*a3 + 72));
          }

          else if (v75 >= 0.5)
          {
            DspLib::copy(*__p, (*(__p + 1) - *__p) >> 2, **a3);
            DspLib::copy(*(__p + 6), (*(__p + 7) - *(__p + 6)) >> 2, *(*a3 + 24));
            DspLib::copy(*(__p + 3), (*(__p + 4) - *(__p + 3)) >> 2, *(*a3 + 48));
            DspLib::copy(*(__p + 9), (*(__p + 10) - *(__p + 9)) >> 2, *(*a3 + 72));
          }
        }

        else
        {
          DspLib::copy(*(__p + 6), (*(__p + 7) - *(__p + 6)) >> 2, **a3);
          DspLib::copy(*__p, (*(__p + 1) - *__p) >> 2, *(*a3 + 24));
          DspLib::copy(*(__p + 9), (*(__p + 10) - *(__p + 9)) >> 2, *(*a3 + 48));
          DspLib::copy(*(__p + 3), (*(__p + 4) - *(__p + 3)) >> 2, *(*a3 + 72));
        }

        DspLib::ChannelBuffer::~ChannelBuffer(&__p);
      }
    }
  }

  else
  {
    v80 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
    DspLib::XTC::Algorithm::runXTCfilterPostProcess(v80);
  }

  DspLib::ChannelBuffer::resize(a3, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3), v38);
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v84);
  DspLib::ComplexVector::~ComplexVector(v88);
  DspLib::ComplexVector::~ComplexVector(v89);
  DspLib::ComplexVector::~ComplexVector(v91);
  DspLib::ComplexVector::~ComplexVector(v92);
  v92[0].realp = &v93;
  std::vector<DspLib::ComplexVector>::__destroy_vector::operator()[abi:ne200100](v78);
  return v41;
}

void DspLib::XTC::Algorithm::compute_W_with_H_and_D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a3 == *a2)
  {
    if (vabds_f32(*(a3 + 8), *(a2 + 8)) <= 0.1)
    {
      *a4 = v5;
      v13 = (a4 + 16);
      for (i = 16; i != 336; i += 80)
      {
        DspLib::ComplexVector::setLength((a4 + i), *a4);
      }

      *(a4 + 8) = *(a2 + 8);
      v15 = *(a1 + 536);
      if (v15)
      {
        v16 = 0;
        v17 = (v15 + 16);
        do
        {
          *(v15 + v16) = v5;
          v18 = v17;
          v19 = 4;
          do
          {
            DspLib::ComplexVector::setLength(v18, *(v15 + v16));
            v18 = (v18 + 80);
            --v19;
          }

          while (v19);
          v16 += 336;
          v17 = (v17 + 336);
        }

        while (v16 != 2016);
        v20 = 0;
        v21 = *(a1 + 536);
        v22 = *(a2 + 8);
        v23 = v21;
        v13 = (a4 + 16);
        do
        {
          if (v20 <= 5)
          {
            *(v23 + 8) = v22;
            *(v23 + 344) = v22;
          }

          v20 += 2;
          v23 += 672;
        }

        while (v20 != 6);
        DspLib::XTC::HRTFSet::operator=(v21, a2);
        DspLib::XTC::HRTFSet::operator=(*(a1 + 536) + 336, a3);
      }

      v64 = vdupq_n_s64(0x3F000000uLL);
      v65 = 1056964608;
      v66 = 0x80000000BF000000;
      DspLib::ComplexMatrix::ComplexMatrix(v57, &v64, 4);
      DspLib::inv(v57, &v64);
      if (v5 > 1)
      {
        v25 = 2;
        v26 = 1;
        do
        {
          v63[0] = DspLib::ComplexSpan::operator[]((a2 + 16), v26);
          v63[1] = v27;
          v63[2] = DspLib::ComplexSpan::operator[]((a2 + 96), v26);
          v63[3] = v28;
          v63[4] = DspLib::ComplexSpan::operator[]((a2 + 176), v26);
          v63[5] = v29;
          v63[6] = DspLib::ComplexSpan::operator[]((a2 + 256), v26);
          v63[7] = v30;
          DspLib::ComplexMatrix::ComplexMatrix(v56, v63, 4);
          v62[0] = DspLib::ComplexSpan::operator[]((a3 + 16), v26);
          v62[1] = v31;
          v62[2] = DspLib::ComplexSpan::operator[]((a3 + 96), v26);
          v62[3] = v32;
          v62[4] = DspLib::ComplexSpan::operator[]((a3 + 176), v26);
          v62[5] = v33;
          v62[6] = DspLib::ComplexSpan::operator[]((a3 + 256), v26);
          v62[7] = v34;
          DspLib::ComplexMatrix::ComplexMatrix(v63, v62, 4);
          DspLib::inv(v56, v55);
          DspLib::operator*(v55, v63, v62);
          DspLib::ComplexMatrix::~ComplexMatrix(v55);
          DspLib::operator*(v57, v62, v54);
          DspLib::operator*(v54, &v64, v55);
          DspLib::ComplexMatrix::~ComplexMatrix(v54);
          v54[0] = DspLib::ComplexMatrixSpan::element(v55, 0, 0);
          v54[1] = v35;
          DspLib::operator/=(v55, v54);
          v36 = *(a1 + 24);
          v37 = llroundf(*(v36 + 4 * (vcvtas_u32_f32(*(v36 + 4)) + 23)));
          if (v37 == -2)
          {
            v37 = *(a1 + 544);
          }

          *(a1 + 544) = v37;
          if (*(v36 + 4 * (16 * (v37 & ~(v37 >> 31)) + 39)) < 0.5)
          {
            v58[0] = DspLib::ComplexMatrixSpan::element(v55, 0, 0);
            v58[1] = v38;
            v58[2] = DspLib::ComplexMatrixSpan::element(v55, 0, 1uLL);
            v58[3] = v39;
            v59 = 0;
            v60 = DspLib::ComplexMatrixSpan::element(v55, 1uLL, 1uLL);
            v61 = v40;
            DspLib::ComplexMatrix::ComplexMatrix(v54, v58, 4);
            DspLib::ComplexMatrix::operator=(v55, v54);
            DspLib::ComplexMatrix::~ComplexMatrix(v54);
          }

          v41 = *(a1 + 536);
          if (v41)
          {
            v68.real = DspLib::ComplexMatrixSpan::element(v62, 0, 0);
            DspLib::ComplexSpan::setElement((v41 + 688), v26, v68);
            v42 = *(a1 + 536);
            v69.real = DspLib::ComplexMatrixSpan::element(v62, 0, 1uLL);
            DspLib::ComplexSpan::setElement((v42 + 768), v26, v69);
            v43 = *(a1 + 536);
            v70.real = DspLib::ComplexMatrixSpan::element(v62, 1uLL, 0);
            DspLib::ComplexSpan::setElement((v43 + 848), v26, v70);
            v44 = *(a1 + 536);
            v71.real = DspLib::ComplexMatrixSpan::element(v62, 1uLL, 1uLL);
            DspLib::ComplexSpan::setElement((v44 + 928), v26, v71);
            v45 = *(a1 + 536);
            v72.real = DspLib::ComplexMatrixSpan::element(v55, 0, 0);
            DspLib::ComplexSpan::setElement((v45 + 1024), v26, v72);
            v46 = *(a1 + 536);
            v73.real = DspLib::ComplexMatrixSpan::element(v55, 0, 1uLL);
            DspLib::ComplexSpan::setElement((v46 + 1104), v26, v73);
            v47 = *(a1 + 536);
            v74.real = DspLib::ComplexMatrixSpan::element(v55, 1uLL, 0);
            DspLib::ComplexSpan::setElement((v47 + 1184), v26, v74);
            v48 = *(a1 + 536);
            v75.real = DspLib::ComplexMatrixSpan::element(v55, 1uLL, 1uLL);
            DspLib::ComplexSpan::setElement((v48 + 1264), v26, v75);
          }

          DspLib::operator*(&v64, v55, v58);
          DspLib::operator*(v58, v57, v54);
          DspLib::ComplexMatrix::operator=(v62, v54);
          DspLib::ComplexMatrix::~ComplexMatrix(v54);
          DspLib::ComplexMatrix::~ComplexMatrix(v58);
          v76.real = DspLib::ComplexMatrixSpan::element(v62, 0, 0);
          DspLib::ComplexSpan::setElement(v13, v26, v76);
          v77.real = DspLib::ComplexMatrixSpan::element(v62, 0, 1uLL);
          DspLib::ComplexSpan::setElement((a4 + 96), v26, v77);
          v78.real = DspLib::ComplexMatrixSpan::element(v62, 1uLL, 0);
          DspLib::ComplexSpan::setElement((a4 + 176), v26, v78);
          v79.real = DspLib::ComplexMatrixSpan::element(v62, 1uLL, 1uLL);
          DspLib::ComplexSpan::setElement((a4 + 256), v26, v79);
          DspLib::ComplexMatrix::~ComplexMatrix(v55);
          DspLib::ComplexMatrix::~ComplexMatrix(v62);
          DspLib::ComplexMatrix::~ComplexMatrix(v63);
          DspLib::ComplexMatrix::~ComplexMatrix(v56);
          v26 = v25;
        }

        while (v5 > v25++);
      }

      v50 = 0.0;
      for (j = 16; j != 336; j += 80)
      {
        v50 = v50 + DspLib::checksum((a4 + j), v24, 0.0);
      }

      for (k = 16; k != 336; k += 80)
      {
        v80.real = 0.0;
        v80.imag = 0.0;
        DspLib::ComplexSpan::setElement((a4 + k), 0, v80);
      }

      v53 = *(a1 + 536);
      if (v53)
      {
        DspLib::XTC::HRTFSet::operator=(v53 + 1344, a4);
      }

      DspLib::ComplexMatrix::~ComplexMatrix(&v64);
      DspLib::ComplexMatrix::~ComplexMatrix(v57);
    }

    else
    {
      v8 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
      printf("DSP Sound assertion in %s at line %d\n", v8, 259);
      ++DspLibDebug::mAssertCounter;
      *a4 = 0;
      for (m = 16; m != 336; m += 80)
      {
        DspLib::ComplexVector::setLength((a4 + m), *a4);
      }
    }
  }

  else
  {
    v10 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v10, 252);
    ++DspLibDebug::mAssertCounter;
    *a4 = 0;
    for (n = 16; n != 336; n += 80)
    {
      DspLib::ComplexVector::setLength((a4 + n), *a4);
    }
  }
}

void sub_1DDBB59E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  DspLib::ComplexMatrix::~ComplexMatrix((v49 - 208));
  DspLib::ComplexMatrix::~ComplexMatrix(&a49);
  _Unwind_Resume(a1);
}

uint64_t DspLib::XTC::HRTFSet::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v4 = a1 + 16;
  for (i = 16; i != 336; i += 80)
  {
    DspLib::ComplexVector::setLength((a1 + i), *a1);
  }

  v6 = a2 + 16;
  v7 = 4;
  do
  {
    result = DspLib::ComplexVector::operator=(v4, v6);
    v6 += 80;
    v4 += 80;
    --v7;
  }

  while (v7);
  return result;
}

void DspLib::XTC::Algorithm::makeCrossover(float **a1, float **a2, float *a3, float a4)
{
  v6 = a3[9];
  v7 = v6 >= 0.5;
  v8 = a3[16];
  v9 = a3[17];
  v10 = a3[18];
  if (v9 < v8)
  {
    v11 = a3[19];
    if (v11 >= v8)
    {
      v10 = (v10 - (((a3[20] - v10) / (v11 - v9)) * v9)) + (((a3[20] - v10) / (v11 - v9)) * v8);
    }

    else
    {
      v10 = a3[20];
    }
  }

  v12 = a3[2];
  if (a3[30] >= 0.5)
  {
    if (v12 < 0.5)
    {
      v7 = 0;
      v14 = 1.0;
      goto LABEL_11;
    }

    DspLib::ComplexVector::operator=(a1, 1.0);
LABEL_26:
    v15 = 0.0;
LABEL_27:
    v17 = a2;
    v16 = v15;
    goto LABEL_28;
  }

  v13 = a3[8];
  v14 = v10 / 100.0;
  v15 = 1.0 - (v10 / 100.0);
  if (v12 >= 0.5)
  {
    if (v13 < 0.5)
    {
      v40 = v10 / 100.0;
    }

    else
    {
      v40 = 0.0;
    }

    DspLib::ComplexVector::operator=(a1, v40);
    if (v6 < 0.5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v13 >= 0.5)
  {
    DspLib::ComplexVector::operator=(a2, v15);
    v16 = 0.0;
    v17 = a1;
LABEL_28:

    DspLib::ComplexVector::operator=(v17, v16);
    return;
  }

LABEL_11:
  v18 = a1[2];
  v19 = a3[6];
  v20 = a3[7];
  v21 = a3[4];
  v22 = a3[5];
  v23 = 1.0;
  if (v7)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = v14;
  }

  if (v7)
  {
    v25 = v14;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = *a1;
  **a1 = 0.0;
  v27 = *a2;
  **a2 = v25;
  if (v18 >= 2)
  {
    v41 = a4 / (2 * v18);
    v42 = v19;
    for (i = 1; i < v18; i = (i + 1))
    {
      v29 = v21;
      v30 = v41 * i;
      v31 = logf(v19 / v30);
      v32 = expf(v20 * v31) + v23;
      v33 = v20;
      v34 = 1.0 / v32;
      v35 = v29 / v30;
      v21 = v29;
      v36 = logf(v35);
      v37 = expf(v22 * v36);
      v19 = v42;
      v38 = v34 * (1.0 - (1.0 / (v37 + 1.0)));
      v20 = v33;
      v23 = 1.0;
      v39 = v24 * v38;
      v26[i] = v25 * v39;
      v27[i] = v25 * (1.0 - v39);
    }
  }
}

unint64_t DspLib::XTC::Algorithm::targetFIRfilterLength(DspLib::XTC::Algorithm *this)
{
  v2 = llroundf(*(*(this + 3) + 4 * (vcvtas_u32_f32(*(*(this + 3) + 4)) + 23)));
  if (v2 == -2)
  {
    v2 = *(this + 136);
  }

  *(this + 136) = v2;
  if (v2 == -1)
  {
    v3 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v3, 642);
    ++DspLibDebug::mAssertCounter;
  }

  v4 = *(this + (v2 & ~(v2 >> 31)) + 35);
  if (v4)
  {
    v5 = *v4;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *(this + 37);
    if (v6)
    {
      v5 = ((1 << *(v6 + 4)) + ((1 << *(v6 + 4)) >> 31)) >> 1;
      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
      printf("DSP Sound assertion in %s at line %d\n", v7, 657);
      ++DspLibDebug::mAssertCounter;
    }
  }

  v8 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v8, 662);
  ++DspLibDebug::mAssertCounter;
  v5 = 1;
LABEL_13:
  v9 = *(this + 3);
  if (*(v9 + 12) >= 0.5)
  {
    v12 = 2 * v5;
    v11 = v12;
  }

  else
  {
    v10 = *(this + 2) * *(v9 + 48);
    v11 = &unk_1DE095000;
    LODWORD(v11) = vcvtad_u64_f64(v10 * 0.001);
    v12 = 2 * v5;
  }

  v13 = v11 + (v11 & 1) - 1;
  if (v12 >= v13)
  {
    v12 = v13;
  }

  if (v13)
  {
    return v12;
  }

  else
  {
    return 1;
  }
}

void DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(void *a1, DSPSplitComplex *__Z, DSPComplex *__C)
{
  v6 = a1[1];
  if (v6)
  {
    vDSP_DFT_Execute(v6, __Z->realp, __Z->imagp, __Z->realp, __Z->imagp);
  }

  v7 = *a1 >> 1;

  vDSP_ztoc(__Z, 1, __C, 2, v7);
}

uint64_t DspLib::XTC::Algorithm::wFilters(DspLib::XTC::Algorithm *this, int a2)
{
  if (!*(this + (a2 > 0) + 35))
  {
    operator new();
  }

  return *(this + (a2 > 0) + 35);
}

void sub_1DDBB6048(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = (v4 - 64);
    v7 = -v3;
    do
    {
      DspLib::ComplexVector::~ComplexVector(v6);
      v6 = (v8 - 80);
      v7 += 80;
    }

    while (v7);
  }

  MEMORY[0x1E12BD160](v1, v2);
  _Unwind_Resume(a1);
}

void DspLib::XTC::Algorithm::~Algorithm(DspLib::XTC::Algorithm *this)
{
  DspLib::XTC::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59197E0;
  v2 = *(this + 67);
  *(this + 67) = 0;
  if (v2)
  {
    std::default_delete<DspLib::XTC::HRTFSetsForDisplay>::operator()[abi:ne200100](this + 536, v2);
  }

  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    MEMORY[0x1E12BD160](v3, 0x1000C407BAC9B3ELL);
  }

  v4 = *(this + 62);
  *(this + 62) = 0;
  if (v4)
  {
    MEMORY[0x1E12BD160](v4, 0x1000C4000313F17);
  }

  for (i = 288; i != 272; i -= 8)
  {
    v6 = *(this + i);
    *(this + i) = 0;
    if (v6)
    {
      std::default_delete<DspLib::XTC::HRTFSet>::operator()[abi:ne200100](this + i, v6);
    }
  }

  std::unique_ptr<DspLib::XTC::FIRMatrix>::reset[abi:ne200100](this + 31, 0);
  std::unique_ptr<DspLib::XTC::FIRMatrix>::reset[abi:ne200100](this + 30, 0);

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::FastFIR::~FastFIR(DspLib::FastFIR *this)
{
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    v3 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v2);
    MEMORY[0x1E12BD160](v3, 0x1020C405730B0C9);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    v5 = DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v4);
    MEMORY[0x1E12BD160](v5, 0x1020C405730B0C9);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  DspLib::ComplexVector::~ComplexVector((this + 32));
  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

void std::default_delete<DspLib::XTC::HRTFSet>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    for (i = 256; i != -64; i -= 80)
    {
      DspLib::ComplexVector::~ComplexVector((a2 + i));
    }

    JUMPOUT(0x1E12BD160);
  }
}

uint64_t std::vector<DspLib::ComplexVector>::__emplace_back_slow_path<unsigned long &>(uint64_t a1, unint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<DspLib::ComplexVector>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  v15 = 80 * v2;
  DspLib::ComplexVector::ComplexVector((80 * v2), *a2, 0);
  *&v15 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = (80 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::ComplexVector>,DspLib::ComplexVector*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<DspLib::ComplexVector>::~__split_buffer(&v13);
  return v12;
}

void sub_1DDBB62D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DspLib::ComplexVector>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::ComplexVector>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::ComplexVector>,DspLib::ComplexVector*>(int a1, DspLib::ComplexVector *a2, DspLib::ComplexVector *a3, DspLib::ComplexVector *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      DspLib::ComplexVector::ComplexVector(this, v8);
      v8 = (v8 + 80);
      this = (this + 80);
      v7 -= 80;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      DspLib::ComplexVector::~ComplexVector(v6);
      v6 = (v6 + 80);
    }
  }
}

void sub_1DDBB63BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 80);
    do
    {
      DspLib::ComplexVector::~ComplexVector(v4);
      v4 = (v5 - 80);
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<DspLib::ComplexVector>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    DspLib::ComplexVector::~ComplexVector((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

DspLib::ChannelBuffer *DspLib::ChannelBuffer::ChannelBuffer(DspLib::ChannelBuffer *this, const DspLib::ChannelBuffer *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  DspLib::ChannelBuffer::operator=(this, a2);
  return this;
}

void sub_1DDBB646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 24);
  if (v12)
  {
    *(v10 + 32) = v12;
    operator delete(v12);
  }

  a10 = v10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<DspLib::ComplexVector>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        DspLib::ComplexVector::~ComplexVector((v4 - 80));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::default_delete<DspLib::XTC::HRTFSetsForDisplay>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2 + 2016;
    v4 = (a2 + 1936);
    do
    {
      v3 -= 336;
      v5 = -320;
      v6 = v4;
      do
      {
        DspLib::ComplexVector::~ComplexVector(v6);
        v6 = (v7 - 80);
        v5 += 80;
      }

      while (v5);
      v4 = (v4 - 336);
    }

    while (v3 != a2);

    JUMPOUT(0x1E12BD160);
  }
}

uint64_t DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    vDSP_DFT_DestroySetup(v2);
  }

  return a1;
}

vDSP_Length *DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform(vDSP_Length *a1, vDSP_Length a2)
{
  *a1 = a2;
  Setup = vDSP_DFT_zrop_CreateSetup(0, a2, vDSP_DFT_INVERSE);
  a1[1] = Setup;
  if (!Setup)
  {
    DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform();
  }

  return a1;
}

void DspLib::XTC::Algorithm::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 22);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::XTC::Algorithm::reset()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 64);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::XTC::Algorithm::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 145);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 147);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 146);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FFT/dsp/DspLibFFT.h");
  printf("DSP Sound assertion in %s at line %d\n", v0, 78);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

double *DspLib::roots(DspLib *this, const float *a2, __CLPK_doublereal *a3, DSPDoubleSplitComplex a4)
{
  realp = a4.realp;
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = (a2 - 1);
  }

  else
  {
    v6 = 0;
  }

  if (*this == 0.0 && a2 >= 2)
  {
    v9 = 1;
    do
    {
      LODWORD(v8) = v9;
      v10 = *(this + v9) != 0.0 || v6 == 1;
      v6 = (v6 - 1);
      ++v9;
    }

    while (!v10);
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  if ((v6 - 1) >= a4.imagp)
  {
    return 0;
  }

  v11 = MEMORY[0x1EEE9AC00](this + 4 * v8);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  DspLib::getCompanionMatrix(v11, v6, v13, v14);
  v18.realp = realp;
  DspLib::hessenbergEigenvalues(v13, v6, a3, v18);
  v17.realp = realp;
  v17.imagp = v6;
  DspLib::sortRoots(a3, v17);
  return v6;
}

void DspLib::getCompanionMatrix(DspLib *this, unint64_t a2, double *a3, double *a4)
{
  v4 = a3;
  if (a2 * a2)
  {
    bzero(a3, 8 * a2 * a2);
  }

  if (a2)
  {
    v7 = *this;
    v8 = 8 * a2;
    v9 = 1;
    v10 = v4;
    do
    {
      v11 = v9;
      *v10 = -*(this + v9) / v7;
      v10 = (v10 + v8);
      ++v9;
    }

    while (v11 < a2);
    if (a2 != 1)
    {
      v12 = 1;
      v13 = 2;
      do
      {
        v4[v12++] = 1.0;
        v14 = v13++;
        v4 = (v4 + v8);
      }

      while (v14 < a2);
    }
  }
}

uint64_t DspLib::hessenbergEigenvalues(DspLib *this, double *a2, __CLPK_doublereal *a3, DSPDoubleSplitComplex a4)
{
  __wi = a4.realp;
  v17 = *MEMORY[0x1E69E9840];
  __ldh = a2;
  *__ilo = DspLib::balanceMatrix(this, a2);
  __job = 69;
  __compz = 78;
  v12 = 0.0;
  v10 = 0;
  __lwork = -1;
  v7 = dhseqr_(&__job, &__compz, &__ldh, __ilo, &__ilo[1], this, &__ldh, a3, __wi, 0, &__ldh, &v12, &__lwork, &v10);
  __lwork = v12;
  MEMORY[0x1EEE9AC00](v7);
  return dhseqr_(&__job, &__compz, &__ldh, __ilo, &__ilo[1], this, &__ldh, a3, __wi, 0, &__ldh, (&v10 - v8), &__lwork, &v10);
}

void *DspLib::sortRoots(void *this, DSPDoubleSplitComplex a2)
{
  if (a2.imagp)
  {
    v2 = 0;
    v3 = 0;
    v4 = a2.imagp - 1;
    v5 = 1;
    while (a2.realp[v2] != 0.0)
    {
LABEL_13:
      ++v2;
      ++v5;
      if (a2.imagp <= v2)
      {
        return this;
      }
    }

    if (v3 || v4 != v2)
    {
      if (v3)
      {
LABEL_12:
        ++v3;
        goto LABEL_13;
      }
    }

    else
    {
      v6 = this[v4];
      this[v4] = *this;
      *this = v6;
      v7 = a2.realp[v2];
      a2.realp[v2] = *a2.realp;
      *a2.realp = v7;
    }

    v8 = (v2 + 1);
    if (v8 < a2.imagp)
    {
      v9 = 0;
      v10 = (v2 + 1);
      v11 = v2 + 1;
      v12 = &this[v5];
      v13 = &a2.realp[v5];
      while (a2.realp[v10] != 0.0)
      {
        ++v9;
        v10 = ++v11;
        if (v11 >= a2.imagp)
        {
          goto LABEL_12;
        }
      }

      v3 += 2;
      if (v8 < v11)
      {
        do
        {
          v14 = this[v10];
          this[v10] = *v12;
          *v12++ = v14;
          v15 = a2.realp[v10];
          a2.realp[v10] = *v13;
          *v13++ = v15;
          --v9;
        }

        while (v9);
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

unint64_t DspLib::roots(DspLib *this, const double *a2, __CLPK_doublereal *a3, DSPDoubleSplitComplex a4)
{
  realp = a4.realp;
  v25[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a2 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*this == 0.0 && a2 >= 2)
  {
    v9 = 1;
    do
    {
      LODWORD(v8) = v9;
    }

    while (*(this + v9++) == 0.0 && v6-- != 1);
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  if ((v6 - 1) >= a4.imagp)
  {
    return 0;
  }

  v11 = (this + 8 * v8);
  MEMORY[0x1EEE9AC00](this);
  v14 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v15)
  {
    bzero(v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  }

  v16 = *v11;
  v17 = 8 * v6;
  v18 = 1;
  v19 = v14;
  do
  {
    *v19 = -v11[v18] / v16;
    v19 = (v19 + v17);
    v20 = v6 > v18++;
  }

  while (v20);
  if (v6 != 1)
  {
    v21 = 1;
    v22 = 2;
    v23 = v14;
    do
    {
      *(v23 + v21++) = 0x3FF0000000000000;
      v20 = v6 > v22++;
      v23 = (v23 + v17);
    }

    while (v20);
  }

  v13.realp = realp;
  DspLib::hessenbergEigenvalues(v14, v6, a3, v13);
  v26.realp = realp;
  v26.imagp = v6;
  DspLib::sortRoots(a3, v26);
  return v6;
}

void DspLib::sPolynomialToBiquadCoefficients(float *a1, double a2, uint64_t a3, DspLib *a4, const float *a5, uint64_t *a6, int a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v37 - v14;
  v16 = &v15[v41.imagp];
  v41.realp = v16;
  v18 = DspLib::roots(v13, v17, v15, v41);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = &v20[v42.imagp];
  v42.realp = v21;
  v22 = DspLib::roots(a4, a5, v20, v42);
  v23 = v22;
  if (a7)
  {
    v24 = (v22 + 1) >> 1;
    if (v24 <= (v18 + 1) >> 1)
    {
      v24 = (v18 + 1) >> 1;
    }

    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    std::vector<DspLib::Biquad::Section>::resize(a6, v25);
    v27 = *a6;
    v28 = a6[1];
    if (*a6 != v28)
    {
      v26 = *&DspLib::Biquad::kBypassSection;
      do
      {
        *(v27 + 16) = 0;
        *v27 = DspLib::Biquad::kBypassSection;
        v27 += 20;
      }

      while (v27 != v28);
    }

    v40.realp = v16;
    v40.imagp = v18;
    v43.realp = v21;
    v43.imagp = v23;
    DspLib::groupRoots(v15, v40, v20, v43, v26);
    if (v23 | v18)
    {
      DspLib::addZerosForward(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), v15, v16, v18);
      DspLib::addPoles(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), v20, v21, v23);
    }

    DspLib::discretizeMZTi(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), v15, v16, v18, v20, v21, v23, a2);
  }

  else
  {
    a6[1] = *a6;
    v29 = (a6 + 1);
    v30 = (v22 + 1) >> 1;
    if (v30 <= (v18 + 1) >> 1)
    {
      v30 = (v18 + 1) >> 1;
    }

    if (v30 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    std::vector<DspLib::Biquad::Section>::resize(a6, v31);
    DspLib::addZeros(*a6, 0xCCCCCCCCCCCCCCCDLL * ((*v29 - *a6) >> 2), v15, v16, v18);
    DspLib::addPoles(*a6, 0xCCCCCCCCCCCCCCCDLL * ((*v29 - *a6) >> 2), v20, v21, v23);
    v32 = *a6;
    for (i = *v29; v32 != i; v32 += 5)
    {
      DspLib::Biquad::Design::bilinearTransformStoZUnwarped(v32, a2);
    }
  }

  DspLib::configureGain(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), *a1 / *a4);
  v35 = *a6;
  for (j = a6[1]; v35 != j; v35 += 20)
  {
    v36 = *v35;
    v38 = *(v35 + 16);
    v37 = v36;
    if ((DspLib::Biquad::validate(&v37) & 1) == 0)
    {
      *(v35 + 16) = 0;
      *v35 = DspLib::Biquad::kBypassSection;
    }
  }
}

uint64_t DspLib::addZeros(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = a5 - 1;
    for (i = 20 * a2; i; i -= 20)
    {
      if (v5 < a5)
      {
        v8 = v6 - v5;
        v9 = *(a4 + 8 * v8);
        if (v6 > v5 && v9 != 0.0)
        {
          v10 = *(a3 + 8 * v8);
          *result = 1065353216;
          v11 = v10 * -2.0;
          *(result + 4) = v11;
          v12 = v9 * v9 + v10 * v10;
          goto LABEL_7;
        }

        if (v9 == 0.0)
        {
          if (v6 != v5 && *(a4 + 8 * (v8 - 1)) == 0.0)
          {
            v16 = *(a3 + 8 * v8);
            v17 = *(a3 + 8 * (v8 - 1));
            *result = 1065353216;
            v18 = v16 + v17;
            *(result + 4) = -v18;
            v12 = v16 * v17;
LABEL_7:
            v13 = v12;
            v14 = 2;
          }

          else
          {
            v15 = *(a3 + 8 * v8);
            *result = 0x3F80000000000000;
            *&v15 = v15;
            v13 = -*&v15;
            v14 = 1;
          }

          *(result + 8) = v13;
          v5 += v14;
        }
      }

      result += 20;
    }
  }

  return result;
}

uint64_t DspLib::addPoles(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = a5 - 1;
    v7 = (result + 16);
    for (i = 20 * a2; i; i -= 20)
    {
      if (v5 >= a5)
      {
LABEL_12:
        v14 = v5;
        goto LABEL_13;
      }

      v9 = *(a4 + 8 * v5);
      if (v6 <= v5 || v9 == 0.0)
      {
        if (v9 != 0.0)
        {
          goto LABEL_12;
        }

        v14 = (v5 + 1);
        if (v6 == v5 || *(a4 + 8 * v14) != 0.0)
        {
          v15 = *(a3 + 8 * v5);
          *(v7 - 1) = -v15;
          *v7 = 0.0;
          goto LABEL_13;
        }

        v16 = *(a3 + 8 * v5);
        v17 = *(a3 + 8 * v14);
        v18 = v16 + v17;
        v11 = -v18;
        v12 = v16 * v17;
      }

      else
      {
        v10 = *(a3 + 8 * v5);
        v11 = v10 * -2.0;
        v12 = v9 * v9 + v10 * v10;
      }

      v13 = v12;
      *(v7 - 1) = v11;
      *v7 = v13;
      v14 = (v5 + 2);
LABEL_13:
      v7 += 5;
      v5 = v14;
    }
  }

  return result;
}

double DspLib::groupRoots(DspLib *this, DSPDoubleSplitComplex a2, DspLib *a3, DSPDoubleSplitComplex a4, double result)
{
  if (a4.imagp | a2.imagp)
  {
    imagp = a4.imagp;
    realp = a4.realp;
    v8 = a2.imagp;
    v9 = a2.realp;
    v11 = DspLib::partitionRealRootToEnd(a3, a4);
    v12 = v11;
    v13 = imagp - v11;
    if (imagp != v11)
    {
      v14 = 0;
      v15 = 4;
      do
      {
        v16 = (v14 + 2);
        v17 = v14;
        v18 = v15;
        v19 = v16;
        if (v13 > v16)
        {
          do
          {
            if (*(a3 + v19) > *(a3 + v17))
            {
              v17 = v18 - 2;
            }

            v19 = v18;
            v20 = v13 > v18;
            v18 += 2;
          }

          while (v20);
        }

        v21 = *(a3 + v14);
        *(a3 + v14) = *(a3 + v17);
        *(a3 + v17) = v21;
        v22 = realp[v14];
        realp[v14] = realp[v17];
        realp[v17] = v22;
        v23 = v14 | 1;
        v24 = v17 + 1;
        v25 = *(a3 + v23);
        *(a3 + v23) = *(a3 + v24);
        *(a3 + v24) = v25;
        v26 = realp[v23];
        realp[v23] = realp[v24];
        realp[v24] = v26;
        v15 += 2;
        v14 = v16;
      }

      while (v13 > v16);
    }

    v27 = a3 + 8 * v13;
    if (v11)
    {
      v28 = 0;
      do
      {
        v29 = v28++;
        if (v28 < v11)
        {
          v30 = *&v27[8 * v29];
          v31 = v28;
          v32 = v29;
          do
          {
            if (*&v27[8 * v31] > v30)
            {
              v32 = v31;
            }

            v30 = *&v27[8 * v29];
            *&v27[8 * v29] = *&v27[8 * v32];
            *&v27[8 * v32] = v30;
            ++v31;
          }

          while (v11 != v31);
        }
      }

      while (v28 != v11);
    }

    v100.realp = v9;
    v100.imagp = v8;
    v33 = DspLib::partitionRealRootToEnd(this, v100);
    v34 = v8 - v33;
    if (v8 - v33 >= v13)
    {
      v35 = v13;
    }

    else
    {
      v35 = v8 - v33;
    }

    if (v35)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = *(this + v37);
        v39 = v37 + 2;
        if (v37 + 2 >= v34)
        {
          v44 = v37;
        }

        else
        {
          v40 = *(a3 + v36);
          v41 = realp[v36];
          v42 = sqrt((v41 - v9[v37]) * (v41 - v9[v37]) + (v40 - v38) * (v40 - v38));
          v43 = v37 + 2;
          v44 = v37;
          do
          {
            v45 = sqrt((v41 - v9[v43]) * (v41 - v9[v43]) + (v40 - *(this + v43)) * (v40 - *(this + v43)));
            if (v45 < v42)
            {
              v42 = v45;
              v44 = v43;
            }

            v43 += 2;
          }

          while (v43 < v34);
          v38 = *(this + v44);
        }

        *(this + v44) = *(this + v36);
        *(this + v36) = v38;
        v46 = v9[v44];
        v9[v44] = v9[v36];
        v9[v36] = v46;
        v47 = 8 * v44 + 8;
        v48 = (16 * (((v37 & 0xFFFFFFFE) >> 1) & 0x7FFFFFFF)) | 8;
        v49 = *(this + v47);
        *(this + v47) = *(this + v48);
        *(this + v48) = v49;
        result = *(v9 + v47);
        *(v9 + v47) = *(v9 + v48);
        *(v9 + v48) = result;
        v36 = v39 & 0xFFFFFFFE;
        v37 += 2;
      }

      while (v35 > v36);
    }

    else
    {
      v39 = 0;
    }

    v50 = v34 - v39;
    if (v12 >= v34 - v39)
    {
      v51 = v34 - v39;
    }

    else
    {
      v51 = v12;
    }

    if (v51)
    {
      v52 = 0;
      v53 = this + 8 * v39;
      v54 = &v9[v39];
      do
      {
        v55 = v52 + 2;
        if (v52 + 2 < v50)
        {
          v56 = *&v27[8 * v52] - *&v53[8 * v52];
          result = sqrt(v54[v52] * v54[v52] + v56 * v56);
          v57 = v52 | 1;
          v58 = v52 + 2;
          v59 = v52;
          do
          {
            v60 = *&v27[8 * v52] - *&v53[8 * v58];
            v61 = sqrt(v54[v58] * v54[v58] + v60 * v60);
            if (v61 < result)
            {
              result = v61;
              v59 = v58;
            }

            v62 = *&v53[8 * v59];
            *&v53[8 * v59] = *&v53[8 * v52];
            *&v53[8 * v52] = v62;
            v63 = v54[v59];
            v54[v59] = v54[v52];
            v54[v52] = v63;
            v64 = 8 * v59 + 8;
            v65 = *&v53[v64];
            *&v53[v64] = *&v53[8 * v57];
            *&v53[8 * v57] = v65;
            v66 = *(v54 + v64);
            *(v54 + v64) = v54[v57];
            v54[v57] = v66;
            ++v58;
          }

          while (v50 != v58);
        }

        v52 += 2;
      }

      while (v55 < v51);
    }

    else
    {
      v55 = 0;
    }

    v67 = v55 + v39;
    v68 = v13 >= v55 + v39;
    v69 = v13 - (v55 + v39);
    if (!v68)
    {
      v69 = 0;
    }

    v70 = this + 8 * v34;
    v71 = &v9[v34];
    if (v33 < v69)
    {
      v69 = v33;
    }

    if (v69)
    {
      v72 = 0;
      v73 = a3 + 8 * v67;
      v74 = &realp[v67];
      do
      {
        v75 = *&v70[8 * v72];
        v76 = v72 + 1;
        v77 = v75;
        v78 = v72;
        if (v72 + 1 < v33)
        {
          v79 = *&v73[8 * v72];
          v80 = v74[v72] * v74[v72];
          v81 = sqrt(v80 + (v79 - v75) * (v79 - v75));
          v82 = v72 + 1;
          v78 = v72;
          do
          {
            v83 = sqrt(v80 + (v79 - *&v70[8 * v82]) * (v79 - *&v70[8 * v82]));
            if (v83 < v81)
            {
              v81 = v83;
              v78 = v82;
            }

            ++v82;
          }

          while (v33 != v82);
          v77 = *&v70[8 * v78];
        }

        *&v70[8 * v78] = v75;
        *&v70[8 * v72] = v77;
        result = v71[v78];
        v71[v78] = v71[v72];
        v71[v72++] = result;
      }

      while (v76 != v69);
    }

    v84 = v12 - v55;
    v85 = v33 - v69;
    if (v33 - v69 < v12 - v55)
    {
      v84 = v33 - v69;
    }

    if (v84)
    {
      v86 = 0;
      v87 = &v27[8 * v55];
      v88 = &v70[8 * v69];
      v89 = &v71[v69];
      v90 = v69 - v33 + 1;
      do
      {
        v91 = *&v88[8 * v86];
        v92 = v86 + 1;
        v93 = v91;
        v94 = v86;
        if (v86 + 1 < v85)
        {
          v95 = *&v87[8 * v86];
          v96 = vabdd_f64(v95, v91);
          v97 = v90;
          v98 = v86 + 1;
          v94 = v86;
          do
          {
            v99 = vabdd_f64(v95, *(this + v8 + v97));
            if (v99 < v96)
            {
              v94 = v98;
              v96 = v99;
            }

            ++v98;
            v68 = __CFADD__(v97++, 1);
          }

          while (!v68);
          v93 = *&v88[8 * v94];
        }

        *&v88[8 * v94] = v91;
        *&v88[8 * v86] = v93;
        result = v89[v94];
        v89[v94] = v89[v86];
        v89[v86] = result;
        ++v90;
        ++v86;
      }

      while (v92 != v84);
    }
  }

  return result;
}

uint64_t DspLib::addZerosForward(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = a5 - 1;
    v7 = (result + 8);
    for (i = 20 * a2; i; i -= 20)
    {
      if (v5 >= a5)
      {
LABEL_12:
        v14 = v5;
        goto LABEL_13;
      }

      v9 = *(a4 + 8 * v5);
      if (v6 <= v5 || v9 == 0.0)
      {
        if (v9 != 0.0)
        {
          goto LABEL_12;
        }

        v14 = (v5 + 1);
        if (v6 == v5 || *(a4 + 8 * v14) != 0.0)
        {
          v15 = *(a3 + 8 * v5);
          *(v7 - 2) = 1.0;
          *&v15 = v15;
          *(v7 - 1) = -*&v15;
          *v7 = 0.0;
          goto LABEL_13;
        }

        v16 = *(a3 + 8 * v5);
        v17 = *(a3 + 8 * v14);
        *(v7 - 2) = 1.0;
        v18 = v16 + v17;
        v11 = -v18;
        v12 = v16 * v17;
      }

      else
      {
        v10 = *(a3 + 8 * v5);
        *(v7 - 2) = 1.0;
        v11 = v10 * -2.0;
        v12 = v9 * v9 + v10 * v10;
      }

      v13 = v12;
      *(v7 - 1) = v11;
      *v7 = v13;
      v14 = (v5 + 2);
LABEL_13:
      v7 += 5;
      v5 = v14;
    }
  }

  return result;
}

void DspLib::discretizeMZTi(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (a8 | a5 && a2)
  {
    v12 = a1;
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 20 * a2);
    v16 = a9 * 6.28318531;
    v104 = v16 / 6.0;
    v17 = 3.0;
    v18 = 2.0943951;
    v19 = v16 / 3.0;
    do
    {
      v20 = *(v12 + 2);
      if (v20 == 0.0)
      {
        v21 = *(v12 + 1) != 0.0;
      }

      else
      {
        v21 = 2;
      }

      LODWORD(v17) = *(v12 + 3);
      v22 = *(v12 + 4);
      if (v22 == 0.0)
      {
        v23 = *&v17 != 0.0;
      }

      else
      {
        v23 = 2;
      }

      if (v21)
      {
        v24 = -INFINITY;
        v25 = v21;
        v26 = v14;
        do
        {
          v18 = *(a3 + 8 * v26);
          v27 = v18 >= 0.0 || v18 <= v24;
          *&v18 = v18;
          if (!v27)
          {
            v24 = *&v18;
          }

          ++v26;
          --v25;
        }

        while (v25);
        v28 = v24;
      }

      else
      {
        v28 = -INFINITY;
      }

      if (v22 == 0.0 && *&v17 == 0.0)
      {
        v29 = 0;
      }

      else
      {
        if (v23 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v23;
        }

        v17 = *(a6 + 8 * v13);
        if (v17 > v28 && v17 < 0.0)
        {
          v29 = 1;
LABEL_34:
          v34 = *(a7 + 8 * v13);
          v35 = *(a6 + 8 * v13) / a9;
          if (v34 == 0.0)
          {
            v36 = exp(v35);
            v37 = v36;
            if (v22 == 0.0)
            {
              v101 = v36;
              v43 = -v101;
              v39 = 0.0;
              goto LABEL_46;
            }

            v38 = *(a6 + 8 * (v13 + 1));
            goto LABEL_44;
          }

LABEL_40:
          v40 = v34 / a9;
          v41 = exp(v35);
          v42 = __sincos_stret(v40);
          v17 = v42.__cosval * v41;
          v18 = v42.__cosval * v41 * -2.0;
          v43 = v18;
          v44 = v42.__sinval * v41 * (v42.__sinval * v41) + v17 * v17;
LABEL_45:
          v39 = v44;
          goto LABEL_46;
        }

        v31 = 0;
        v32 = v13 + 1;
        v33 = 1 - v30;
        while (v33 != v31)
        {
          v17 = *(a6 + 8 * v32);
          --v31;
          ++v32;
          if (v17 > v28 && v17 < 0.0)
          {
            v29 = -v31 < v23;
            goto LABEL_34;
          }
        }

        v29 = 1 - v31 < v23;
      }

      v39 = 0.0;
      if (v21)
      {
        v34 = *(a4 + 8 * v14);
        v35 = *(a3 + 8 * v14) / a9;
        if (v34 != 0.0)
        {
          goto LABEL_40;
        }

        v45 = exp(v35);
        v37 = v45;
        if (v20 == 0.0)
        {
          v100 = v45;
          v43 = -v100;
          goto LABEL_46;
        }

        v38 = *(a3 + 8 * (v14 + 1));
LABEL_44:
        v46 = exp(v38 / a9);
        v17 = v37 + v46;
        *&v17 = v37 + v46;
        v43 = -*&v17;
        v44 = v37 * v46;
        goto LABEL_45;
      }

      v43 = 0.0;
LABEL_46:
      v47 = *v12;
      v114 = *(v12 + 4);
      v113 = v47;
      v111 = DspLib::Biquad::frequencyResponse(&v113, 1, 0.0, v17, v18);
      v108 = v48;
      *&v113 = 1065353216;
      DWORD2(v113) = 0;
      *(&v113 + 3) = v43;
      v114 = v39;
      v110 = DspLib::Biquad::frequencyResponse(&v113, 0, 0.0, v48, v49);
      v106 = v50;
      v51 = *v12;
      v114 = *(v12 + 4);
      v113 = v51;
      v112 = DspLib::Biquad::frequencyResponse(&v113, 1, v104, v50, v52);
      v107 = v53;
      *&v113 = 1065353216;
      DWORD2(v113) = 0;
      *(&v113 + 3) = v43;
      v114 = v39;
      v109 = DspLib::Biquad::frequencyResponse(&v113, 0, 1.04719755, v53, v54);
      v105 = v55;
      v56 = *v12;
      v114 = *(v12 + 4);
      v113 = v56;
      v58 = DspLib::Biquad::frequencyResponse(&v113, 1, v19, v55, v57);
      v60 = v59;
      *&v113 = 1065353216;
      DWORD2(v113) = 0;
      *(&v113 + 3) = v43;
      v114 = v39;
      v62 = DspLib::Biquad::frequencyResponse(&v113, 0, 2.0943951, v59, v61);
      v64.f64[0] = v105;
      v64.f64[1] = v106;
      if (v29)
      {
        v65.f64[0] = v107;
        v65.f64[1] = v108;
        v66.f64[0] = v109;
        v66.f64[1] = v110;
        v67.f64[0] = -v105;
        v68.f64[0] = v112;
        v68.f64[1] = v111;
        v67.f64[1] = -v106;
        __asm { FMOV            V2.2D, #1.0 }

        v74 = vdivq_f64(_Q2, vmlaq_f64(vmulq_f64(v64, v64), v66, v66));
        v75 = vmulq_f64(vmlaq_f64(vmulq_f64(v65, v64), v66, v68), v74);
        v76 = vmulq_f64(vmlaq_f64(vmulq_f64(v65, v66), v67, v68), v74);
        v77 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v76, v76), v75, v75));
        v78 = v60 * v63 + v58 * v62;
        v79 = v60 * v62 - v58 * v63;
        v80 = v63 * v63 + v62 * v62;
      }

      else
      {
        v81.f64[0] = v112;
        v81.f64[1] = v111;
        v82.f64[0] = -v105;
        v83.f64[0] = v107;
        v83.f64[1] = v108;
        v82.f64[1] = -v106;
        v84.f64[0] = v109;
        v84.f64[1] = v110;
        v85 = vmlaq_f64(vmulq_f64(v83, v82), v81, v84);
        v86 = vmlaq_f64(vmulq_f64(v81, v64), v83, v84);
        v87 = vaddq_f64(v85, vmulq_f64(v86, 0));
        v88 = vsubq_f64(vmulq_f64(v85, 0), v86);
        v89 = vmlaq_f64(vmulq_f64(v86, v86), v85, v85);
        __asm { FMOV            V2.2D, #1.0 }

        v91 = vdivq_f64(_Q2, v89);
        v92 = vmulq_f64(v87, v91);
        v93 = vmulq_f64(v88, v91);
        v77 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v93, v93), v92, v92));
        v88.f64[0] = v62 * v58 - v63 * v60;
        v94 = v58 * v63 + v62 * v60;
        v78 = v88.f64[0] + v94 * 0.0;
        v79 = v88.f64[0] * 0.0 - v94;
        v80 = v94 * v94 + v88.f64[0] * v88.f64[0];
      }

      v95 = vcvt_f32_f64(v77);
      v96 = sqrt(v79 * (1.0 / v80) * (v79 * (1.0 / v80)) + v78 * (1.0 / v80) * (v78 * (1.0 / v80)));
      v97 = DspLib::Biquad::Design::lengthThreeFIR(v95.f32[1], v95.f32[0], v96, 1.0472);
      if (!v29)
      {
        v98 = v43 / v97;
        v99 = v39 / v97;
        v43 = *&v17 / v97;
        v39 = *&v18 / v97;
        v97 = 1.0 / v97;
        *&v17 = v98;
        *&v18 = v99;
      }

      *v12 = v97;
      *(v12 + 1) = LODWORD(v17);
      *(v12 + 2) = LODWORD(v18);
      *(v12 + 3) = v43;
      v13 += v23;
      v14 += v21;
      *(v12 + 4) = v39;
      v12 = (v12 + 20);
    }

    while (v12 != v15);
  }
}

float32_t DspLib::configureGain(float32x2_t *a1, unint64_t a2, float a3)
{
  if (a2 >= 2)
  {
    v3 = 2;
    v4 = 1;
    do
    {
      v5 = (a1 + 20 * v4);
      a3 = a3 * COERCE_FLOAT(*v5);
      v6 = vcvtq_f64_f32(*v5);
      *v5 = vcvt_f32_f64(vmulq_n_f64(v6, 1.0 / v6.f64[0]));
      *v6.f64 = 1.0 / v6.f64[0] * v5[1].f32[0];
      v5[1].i32[0] = LODWORD(v6.f64[0]);
      v4 = v3;
    }

    while (a2 > v3++);
  }

  *a1 = vmul_n_f32(*a1, a3);
  result = a3 * a1[1].f32[0];
  a1[1].f32[0] = result;
  return result;
}

void DspLib::sPolynomialToBiquadCoefficients(double *a1, double a2, uint64_t a3, DspLib *a4, const double *a5, uint64_t *a6, int a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v38 - v14;
  v16 = &v15[v42.imagp];
  v42.realp = v16;
  v18 = DspLib::roots(v13, v17, v15, v42);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = &v20[v43.imagp];
  v43.realp = v21;
  v22 = DspLib::roots(a4, a5, v20, v43);
  v23 = v22;
  if (a7)
  {
    v24 = (v22 + 1) >> 1;
    if (v24 <= (v18 + 1) >> 1)
    {
      v24 = (v18 + 1) >> 1;
    }

    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    std::vector<DspLib::Biquad::Section>::resize(a6, v25);
    v27 = *a6;
    v28 = a6[1];
    if (*a6 != v28)
    {
      v26 = *&DspLib::Biquad::kBypassSection;
      do
      {
        *(v27 + 16) = 0;
        *v27 = DspLib::Biquad::kBypassSection;
        v27 += 20;
      }

      while (v27 != v28);
    }

    v41.realp = v16;
    v41.imagp = v18;
    v44.realp = v21;
    v44.imagp = v23;
    DspLib::groupRoots(v15, v41, v20, v44, v26);
    if (v23 | v18)
    {
      DspLib::addZerosForward(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), v15, v16, v18);
      DspLib::addPoles(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), v20, v21, v23);
    }

    DspLib::discretizeMZTi(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), v15, v16, v18, v20, v21, v23, a2);
  }

  else
  {
    a6[1] = *a6;
    v29 = (a6 + 1);
    v30 = (v22 + 1) >> 1;
    if (v30 <= (v18 + 1) >> 1)
    {
      v30 = (v18 + 1) >> 1;
    }

    if (v30 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    std::vector<DspLib::Biquad::Section>::resize(a6, v31);
    DspLib::addZeros(*a6, 0xCCCCCCCCCCCCCCCDLL * ((*v29 - *a6) >> 2), v15, v16, v18);
    DspLib::addPoles(*a6, 0xCCCCCCCCCCCCCCCDLL * ((*v29 - *a6) >> 2), v20, v21, v23);
    v32 = *a6;
    for (i = *v29; v32 != i; v32 += 5)
    {
      DspLib::Biquad::Design::bilinearTransformStoZUnwarped(v32, a2);
    }
  }

  v34 = *a1 / *a4;
  DspLib::configureGain(*a6, 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 2), v34);
  v36 = *a6;
  for (j = a6[1]; v36 != j; v36 += 20)
  {
    v37 = *v36;
    v39 = *(v36 + 16);
    v38 = v37;
    if ((DspLib::Biquad::validate(&v38) & 1) == 0)
    {
      *(v36 + 16) = 0;
      *v36 = DspLib::Biquad::kBypassSection;
    }
  }
}

void std::vector<DspLib::Biquad::SDomainSection>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::Biquad::SDomainSection>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

uint64_t *DspLib::addZeros(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    v6 = 0;
    v7 = a4 - 1;
    __asm { FMOV            V1.2S, #1.0 }

    do
    {
      if (v6 < a4)
      {
        v13 = v7 - v6;
        v14 = *(a3 + 8 * v13);
        if (v7 > v6 && v14 != 0.0)
        {
          v15 = *(a2 + 8 * v13);
          v16 = v14 * v14 + v15 * v15;
          *v4 = v16;
          v17 = v15 * -2.0;
          goto LABEL_7;
        }

        if (v14 == 0.0)
        {
          if (v7 != v6 && *(a3 + 8 * (v13 - 1)) == 0.0)
          {
            v21 = *(a2 + 8 * v13);
            v22 = *(a2 + 8 * (v13 - 1));
            v23 = v21 * v22;
            *v4 = v23;
            *&v21 = v21 + v22;
            v17 = -*&v21;
LABEL_7:
            v18 = __PAIR64__(HIDWORD(_D1), LODWORD(v17));
            v19 = 2;
          }

          else
          {
            v20 = *(a2 + 8 * v13);
            *v4 = -v20;
            v19 = 1;
            v18 = 1065353216;
          }

          *(v4 + 4) = v18;
          v6 += v19;
        }
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t *DspLib::addPoles(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    v6 = 0;
    v7 = a4 - 1;
    do
    {
      if (v6 >= a4)
      {
LABEL_12:
        v11 = v6;
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6);
      if (v7 <= v6 || v8 == 0.0)
      {
        if (v8 != 0.0)
        {
          goto LABEL_12;
        }

        v11 = (v6 + 1);
        if (v7 == v6 || *(a3 + 8 * v11) != 0.0)
        {
          v12 = *(a2 + 8 * v6);
          *(v4 + 12) = -v12;
          *(v4 + 16) = 1065353216;
          goto LABEL_13;
        }

        v13 = *(a2 + 8 * v6);
        v14 = *(a2 + 8 * v11);
        v15 = v13 * v14;
        *&v13 = v13 + v14;
        *(v4 + 12) = v15;
        *(v4 + 16) = -*&v13;
      }

      else
      {
        v9 = *(a2 + 8 * v6);
        v10 = v8 * v8 + v9 * v9;
        *&v9 = v9 * -2.0;
        *(v4 + 12) = v10;
        *(v4 + 16) = LODWORD(v9);
      }

      *(v4 + 20) = 1065353216;
      v11 = (v6 + 2);
LABEL_13:
      v4 += 24;
      v6 = v11;
    }

    while (v4 != v5);
  }

  return result;
}

void DspLib::discretizeMZTiNew(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (a8 | a5 && a2)
  {
    v12 = a1;
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 20 * a2);
    v16 = a9 * 6.28318531;
    v104 = v16 / 6.0;
    v17 = 3.0;
    v18 = 2.09439516;
    v19 = v16 / 3.0;
    do
    {
      v20 = *(v12 + 2);
      if (v20 == 0.0)
      {
        v21 = *(v12 + 1) != 0.0;
      }

      else
      {
        v21 = 2;
      }

      LODWORD(v17) = *(v12 + 3);
      v22 = *(v12 + 4);
      if (v22 == 0.0)
      {
        v23 = *&v17 != 0.0;
      }

      else
      {
        v23 = 2;
      }

      if (v21)
      {
        v24 = -INFINITY;
        v25 = v21;
        v26 = v14;
        do
        {
          v18 = *(a3 + 8 * v26);
          v27 = v18 >= -9.99999996e-13 || v18 <= v24;
          *&v18 = v18;
          if (!v27)
          {
            v24 = *&v18;
          }

          ++v26;
          --v25;
        }

        while (v25);
        v28 = v24;
      }

      else
      {
        v28 = -INFINITY;
      }

      if (v22 == 0.0 && *&v17 == 0.0)
      {
        v29 = 0;
      }

      else
      {
        if (v23 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v23;
        }

        v17 = *(a6 + 8 * v13);
        if (v17 > v28 && v17 < -9.99999996e-13)
        {
          v29 = 1;
LABEL_34:
          v34 = *(a7 + 8 * v13);
          v35 = *(a6 + 8 * v13) / a9;
          if (v34 == 0.0)
          {
            v36 = exp(v35);
            v37 = v36;
            if (v22 == 0.0)
            {
              v101 = v36;
              v43 = -v101;
              v39 = 0.0;
              goto LABEL_46;
            }

            v38 = *(a6 + 8 * (v13 + 1));
            goto LABEL_44;
          }

LABEL_40:
          v40 = v34 / a9;
          v41 = exp(v35);
          v42 = __sincos_stret(v40);
          v17 = v42.__cosval * v41;
          v18 = v42.__cosval * v41 * -2.0;
          v43 = v18;
          v44 = v42.__sinval * v41 * (v42.__sinval * v41) + v17 * v17;
LABEL_45:
          v39 = v44;
          goto LABEL_46;
        }

        v31 = 0;
        v32 = v13 + 1;
        v33 = 1 - v30;
        while (v33 != v31)
        {
          v17 = *(a6 + 8 * v32);
          --v31;
          ++v32;
          if (v17 > v28 && v17 < -9.99999996e-13)
          {
            v29 = -v31 < v23;
            goto LABEL_34;
          }
        }

        v29 = 1 - v31 < v23;
      }

      v39 = 0.0;
      if (v21)
      {
        v34 = *(a4 + 8 * v14);
        v35 = *(a3 + 8 * v14) / a9;
        if (v34 != 0.0)
        {
          goto LABEL_40;
        }

        v45 = exp(v35);
        v37 = v45;
        if (v20 == 0.0)
        {
          v100 = v45;
          v43 = -v100;
          goto LABEL_46;
        }

        v38 = *(a3 + 8 * (v14 + 1));
LABEL_44:
        v46 = exp(v38 / a9);
        v17 = v37 + v46;
        *&v17 = v37 + v46;
        v43 = -*&v17;
        v44 = v37 * v46;
        goto LABEL_45;
      }

      v43 = 0.0;
LABEL_46:
      v47 = *v12;
      v114 = *(v12 + 4);
      v113 = v47;
      v111 = DspLib::Biquad::frequencyResponse(&v113, 1, 0.0, v17, v18);
      v108 = v48;
      *&v113 = 1065353216;
      DWORD2(v113) = 0;
      *(&v113 + 3) = v43;
      v114 = v39;
      v110 = DspLib::Biquad::frequencyResponse(&v113, 0, 0.0, v48, v49);
      v106 = v50;
      v51 = *v12;
      v114 = *(v12 + 4);
      v113 = v51;
      v112 = DspLib::Biquad::frequencyResponse(&v113, 1, v104, v50, v52);
      v107 = v53;
      *&v113 = 1065353216;
      DWORD2(v113) = 0;
      *(&v113 + 3) = v43;
      v114 = v39;
      v109 = DspLib::Biquad::frequencyResponse(&v113, 0, 1.04719755, v53, v54);
      v105 = v55;
      v56 = *v12;
      v114 = *(v12 + 4);
      v113 = v56;
      v58 = DspLib::Biquad::frequencyResponse(&v113, 1, v19, v55, v57);
      v60 = v59;
      *&v113 = 1065353216;
      DWORD2(v113) = 0;
      *(&v113 + 3) = v43;
      v114 = v39;
      v62 = DspLib::Biquad::frequencyResponse(&v113, 0, 2.0943951, v59, v61);
      v64.f64[0] = v105;
      v64.f64[1] = v106;
      if (v29)
      {
        v65.f64[0] = v107;
        v65.f64[1] = v108;
        v66.f64[0] = v109;
        v66.f64[1] = v110;
        v67.f64[0] = -v105;
        v68.f64[0] = v112;
        v68.f64[1] = v111;
        v67.f64[1] = -v106;
        __asm { FMOV            V2.2D, #1.0 }

        v74 = vdivq_f64(_Q2, vmlaq_f64(vmulq_f64(v64, v64), v66, v66));
        v75 = vmulq_f64(vmlaq_f64(vmulq_f64(v65, v64), v66, v68), v74);
        v76 = vmulq_f64(vmlaq_f64(vmulq_f64(v65, v66), v67, v68), v74);
        v77 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v76, v76), v75, v75));
        v78 = v60 * v63 + v58 * v62;
        v79 = v60 * v62 - v58 * v63;
        v80 = v63 * v63 + v62 * v62;
      }

      else
      {
        v81.f64[0] = v112;
        v81.f64[1] = v111;
        v82.f64[0] = -v105;
        v83.f64[0] = v107;
        v83.f64[1] = v108;
        v82.f64[1] = -v106;
        v84.f64[0] = v109;
        v84.f64[1] = v110;
        v85 = vmlaq_f64(vmulq_f64(v83, v82), v81, v84);
        v86 = vmlaq_f64(vmulq_f64(v81, v64), v83, v84);
        v87 = vaddq_f64(v85, vmulq_f64(v86, 0));
        v88 = vsubq_f64(vmulq_f64(v85, 0), v86);
        v89 = vmlaq_f64(vmulq_f64(v86, v86), v85, v85);
        __asm { FMOV            V2.2D, #1.0 }

        v91 = vdivq_f64(_Q2, v89);
        v92 = vmulq_f64(v87, v91);
        v93 = vmulq_f64(v88, v91);
        v77 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v93, v93), v92, v92));
        v88.f64[0] = v62 * v58 - v63 * v60;
        v94 = v58 * v63 + v62 * v60;
        v78 = v88.f64[0] + v94 * 0.0;
        v79 = v88.f64[0] * 0.0 - v94;
        v80 = v94 * v94 + v88.f64[0] * v88.f64[0];
      }

      v95 = vcvt_f32_f64(v77);
      v96 = sqrt(v79 * (1.0 / v80) * (v79 * (1.0 / v80)) + v78 * (1.0 / v80) * (v78 * (1.0 / v80)));
      v97 = DspLib::Biquad::Design::lengthThreeFIR(v95.f32[1], v95.f32[0], v96, 1.0472);
      if (!v29)
      {
        v98 = v43 / v97;
        v99 = v39 / v97;
        v43 = *&v17 / v97;
        v39 = *&v18 / v97;
        v97 = 1.0 / v97;
        *&v17 = v98;
        *&v18 = v99;
      }

      *v12 = v97;
      *(v12 + 1) = LODWORD(v17);
      *(v12 + 2) = LODWORD(v18);
      *(v12 + 3) = v43;
      v13 += v23;
      v14 += v21;
      *(v12 + 4) = v39;
      v12 = (v12 + 20);
    }

    while (v12 != v15);
  }
}

void DspLib::sPolynomialToBiquadCoefficients(uint64_t a1, double a2, uint64_t a3, DspLib *a4, const double *a5, uint64_t *a6, uint64_t *a7, int a8)
{
  v53 = a4;
  v58 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &(&v52)[-v14];
  v16 = &v15[v60.imagp];
  v52 = v13;
  v60.realp = v16;
  v18 = DspLib::roots(v13, v17, v15, v60);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &(&v52)[-v19];
  v21 = &v20[v61.imagp];
  v61.realp = v21;
  v22 = DspLib::roots(v53, a5, v20, v61);
  v23 = v22;
  if (v22)
  {
    v24 = 1;
    v25 = v20;
    do
    {
      v26 = *v25;
      if (*v25 > 0.0)
      {
        v26 = -*v25;
      }

      if (*v25 == 0.0)
      {
        v26 = v26 + -0.000000100000001;
      }

      *v25++ = v26;
      v27 = v22 > v24++;
    }

    while (v27);
  }

  if (a8)
  {
    v28 = (v22 + 1) >> 1;
    if (v28 <= (v18 + 1) >> 1)
    {
      v28 = (v18 + 1) >> 1;
    }

    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
    }

    std::vector<DspLib::Biquad::Section>::resize(a7, v29);
    v31 = *a7;
    v32 = a7[1];
    if (*a7 != v32)
    {
      v30 = *&DspLib::Biquad::kBypassSection;
      do
      {
        *(v31 + 16) = 0;
        *v31 = DspLib::Biquad::kBypassSection;
        v31 += 20;
      }

      while (v31 != v32);
    }

    v59.realp = v16;
    v59.imagp = v18;
    v62.realp = v21;
    v62.imagp = v23;
    DspLib::groupRoots(v15, v59, v20, v62, v30);
    v33 = *a7;
    if (v23 | v18)
    {
      DspLib::addZerosForward(v33, 0xCCCCCCCCCCCCCCCDLL * ((a7[1] - v33) >> 2), v15, v16, v18);
      DspLib::addPoles(*a7, 0xCCCCCCCCCCCCCCCDLL * ((a7[1] - *a7) >> 2), v20, v21, v23);
      if (v18 == 2 && v23 == 4)
      {
        v34 = fabs(*v16);
        v33 = *a7;
        if (vabdd_f64(v34, fabs(*v21)) > vabdd_f64(v34, fabs(v21[2])))
        {
          *(v33 + 20) = *v33;
          *(v33 + 28) = *(v33 + 8);
          *v33 = 1065353216;
          *(v33 + 8) = 0;
        }
      }

      else
      {
        v33 = *a7;
      }
    }

    DspLib::discretizeMZTiNew(v33, 0xCCCCCCCCCCCCCCCDLL * ((a7[1] - v33) >> 2), v15, v16, v18, v20, v21, v23, a2);
  }

  else
  {
    a7[1] = *a7;
    v35 = (v22 + 1) >> 1;
    if (v35 <= (v18 + 1) >> 1)
    {
      v35 = (v18 + 1) >> 1;
    }

    if (v35 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35;
    }

    std::vector<DspLib::Biquad::Section>::resize(a7, v36);
    a6[1] = *a6;
    std::vector<DspLib::Biquad::SDomainSection>::resize(a6, v36);
    DspLib::addZeros(a6, v15, v16, v18);
    DspLib::addPoles(a6, v20, v21, v23);
    v37 = *a6;
    if (a6[1] != *a6)
    {
      v38 = 0;
      v39 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3);
      v40 = *a7;
      v41 = 1;
      do
      {
        v42 = v37 + 24 * v38;
        v43 = *v42;
        v55 = *(v42 + 16);
        v54 = v43;
        DspLib::Biquad::Design::bilinearTransformStoZUnwarped(&v54, &v56, a2);
        v44 = v40 + 20 * v38;
        v45 = v56;
        *(v44 + 16) = v57;
        *v44 = v45;
        v38 = v41;
        v27 = v39 > v41++;
      }

      while (v27);
    }
  }

  v46 = *v52 / *v53;
  DspLib::configureGain(*a7, 0xCCCCCCCCCCCCCCCDLL * ((a7[1] - *a7) >> 2), v46);
  v48 = *a7;
  v47 = a7[1];
  if (v48 != v47)
  {
    v49 = vdup_n_s32(0x3F7FFF58u);
    do
    {
      v50 = *v48;
      LODWORD(v55) = *(v48 + 16);
      v54 = v50;
      if ((DspLib::Biquad::validate(&v54) & 1) == 0)
      {
        *(v48 + 12) = vmul_f32(*(v48 + 12), v49);
        v51 = *v48;
        LODWORD(v55) = *(v48 + 16);
        v54 = v51;
        if ((DspLib::Biquad::validate(&v54) & 1) == 0)
        {
          *(v48 + 16) = 0;
          *v48 = DspLib::Biquad::kBypassSection;
        }
      }

      v48 += 20;
    }

    while (v48 != v47);
  }
}