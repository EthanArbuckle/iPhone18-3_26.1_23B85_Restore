void DspLib::LoudnessNormalizer::ShapingFilter::setGain(DspLib::LoudnessNormalizer::ShapingFilter *this, float a2)
{
  if (vabds_f32(a2, *(this + 20)) > 0.1)
  {
    *(this + 20) = a2;
    v3 = DspLib::dB2Amp(this, a2);
    v4 = *(this + 9);
    v5 = 2.0;
    v6 = 0.25;
    v7 = 3.5;
    v8 = 2.1991;
    v9 = 0.62;
    if (v4 <= 16000.0)
    {
      v12 = 0;
      v11 = 0.94;
      v10 = -0.994;
    }

    else
    {
      v10 = -0.997;
      if (v4 <= 24000.0)
      {
        v12 = 0;
        v11 = 0.96;
      }

      else if (v4 <= 32000.0)
      {
        v12 = 1;
        v11 = 0.97;
      }

      else if (v4 <= 48000.0)
      {
        v5 = 1.5;
        v7 = 4.0;
        v12 = 1;
        v11 = 0.98;
        v10 = -0.999;
        v8 = 1.2566;
        v6 = 0.4;
        v9 = 0.87;
      }

      else
      {
        if (v4 <= 64000.0)
        {
          v9 = 0.75;
        }

        else
        {
          v9 = 0.1;
        }

        v6 = flt_1DE099040[v4 > 64000.0];
        v8 = flt_1DE099048[v4 > 64000.0];
        v10 = -1.0;
        if (v4 <= 64000.0)
        {
          v10 = -0.9995;
        }

        v11 = flt_1DE099050[v4 > 64000.0];
        v7 = 6.0;
        v12 = 1;
        v5 = 1.2;
      }
    }

    v13 = v3 + -1.0;
    v20 = 1065353216;
    v21 = -(v11 - (((v10 + v11) / (39.0 / (v5 + 39.0))) * ((v3 + -1.0) / ((v3 + -1.0) + v5))));
    v22 = 0.0;
    v23 = -v11;
    v24 = 0.0;
    DspLib::Biquad::Filter::setCoefficients(this, &v20, 1, 0, 0x41uLL);
    if (v12)
    {
      v14 = (v6 * cosf(v8)) * -2.0;
      v15 = v14 + (((v9 - v14) / (39.0 / (v7 + 39.0))) * (v13 / (v13 + v7)));
      v16 = 1.0 / (((v15 + 1.0) + (v6 * v6)) / ((v14 + 1.0) + (v6 * v6)));
      v17 = v15 * v16;
      v18 = v6 * (v6 * v16);
      v19 = v6 * v6;
    }

    else
    {
      v16 = 1.0;
      v17 = 0.0;
      v18 = 0.0;
      v14 = 0.0;
      v19 = 0.0;
    }

    v20 = LODWORD(v16);
    v21 = v17;
    v22 = v18;
    v23 = v14;
    v24 = v19;
    DspLib::Biquad::Filter::setCoefficients(this, &v20, 1, 1, 0x41uLL);
  }
}

double DspLib::LoudnessNormalizer::Algorithm::totalMomentaryGainIndB(DspLib::LoudnessNormalizer::Algorithm *this)
{
  if (*(this + 840))
  {
    return 0.0;
  }

  v2 = (*(*this + 40))(this);
  if (!v2)
  {
    return 0.0;
  }

  v3 = **(this + 1226);

  *&result = DspLib::amp2dBSafe(v2, v3, 0.000001);
  return result;
}

float DspLib::LoudnessNormalizer::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  if ((*(*a1 + 104))(a1, 0) >= 0.5)
  {
    *(a2 + 36) = *(a1 + 9680);
    *(a2 + 40) = *(a1 + 10052);
    *a2 = *(a1 + 10056);
  }

  v5 = *(a1 + 10104);
  if (v5 && *(a1 + 10112))
  {
    (*(*v5 + 200))(v5, v20, 4);
    *(a2 + 4) = v20[0];
    *(a2 + 8) = v21;
    (*(**(a1 + 10112) + 200))(*(a1 + 10112), v20, 4);
    *(a2 + 12) = v20[0];
    *(a2 + 16) = v21;
  }

  else
  {
    *(a2 + 4) = vdupq_n_s32(0xC28C0000);
  }

  v6 = *(a1 + 10060);
  *(a2 + 20) = v6;
  v7 = *(a1 + 10056);
  v8 = v6 + v7;
  LOBYTE(v7) = *(a1 + 10048);
  *(a2 + 24) = v8;
  *(a2 + 28) = LODWORD(v7);
  *(a1 + 10048) = 0;
  v9 = 0.0;
  if (*(a1 + 1392) == 1 && (*(a1 + 1420) & 1) == 0 && *(a1 + 1400) == 1)
  {
    v9 = (*(a1 + 1396) - *(a1 + 1416));
  }

  *(a2 + 32) = v9;
  *(a2 + 44) = (*(*a1 + 104))(a1, 34);
  if (*(a1 + 844) < 2u)
  {
    v15 = *(a1 + 10068);
    v16 = 48;
  }

  else
  {
    v11 = *(a1 + 9596);
    *(a2 + 48) = v11;
    LOBYTE(v11) = *(a1 + 9792);
    *(a2 + 64) = v11;
    *(a1 + 9792) = 0;
    *(a2 + 68) = DspLib::amp2dBSafe(v10, *(a1 + 10080), 0.000001);
    *(a1 + 10080) = 0;
    *(a2 + 76) = *(a1 + 9588);
    *(a2 + 80) = *(a1 + 9592);
    *(a2 + 84) = *(a1 + 10084);
    *(a1 + 10084) = -1027080192;
    *(a2 + 88) = *(a1 + 10088);
    DspLib::LoudnessNormalizer::IntegratedLoudnessProcessor::histogram(a1 + 1536, (a2 + 92), 0x64u);
    v12 = *(a1 + 10096);
    *(a1 + 10096) = v12 + 1;
    *&v13 = v12;
    *(a2 + 72) = v12;
    LOBYTE(v13) = *(a1 + 9840);
    v14 = v13;
    *(a2 + 492) = v14;
    LOBYTE(v14) = *(a1 + 848);
    v15 = LODWORD(v14);
    v16 = 496;
  }

  *(a2 + v16) = v15;
  *(a2 + 52) = *(a1 + 10064);
  *(a1 + 10064) = -1027080192;
  *(a2 + 56) = *(a1 + 10072);
  *(a1 + 10072) = -1027080192;
  *(a2 + 60) = *(a1 + 10076);
  *(a1 + 10076) = -1027080192;
  *(a2 + 500) = (*(*a1 + 104))(a1, 47);
  *(a2 + 504) = *(a1 + 836);
  v17 = *(a1 + 784);
  *(a2 + 508) = v17;
  LOBYTE(v17) = *(a1 + 780);
  *(a2 + 512) = v17;
  *(a2 + 516) = *(a1 + 832);
  *(a2 + 520) = (*(*a1 + 104))(a1, 63);
  v18 = 0.0;
  if (*(a1 + 816) > 0)
  {
    v18 = 1.0;
  }

  *(a2 + 524) = v18;
  result = *(a1 + 10092);
  *(a2 + 528) = result;
  return result;
}

void DspLib::LoudnessNormalizer::Algorithm::~Algorithm(DspLib::LoudnessNormalizer::Algorithm *this)
{
  DspLib::LoudnessNormalizer::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD150);
}

{
  *this = &unk_1F591ABF0;
  v2 = *(this + 1264);
  *(this + 1264) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1263);
  *(this + 1263) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1253);
  if (v4)
  {
    *(this + 1254) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1250);
  if (v5)
  {
    *(this + 1251) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1247);
  if (v6)
  {
    *(this + 1248) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1244);
  if (v7)
  {
    *(this + 1245) = v7;
    operator delete(v7);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 9904));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 9856));
  v8 = *(this + 1226);
  if (v8)
  {
    *(this + 1227) = v8;
    operator delete(v8);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 9736));
  v9 = *(this + 1214);
  if (v9)
  {
    *(this + 1215) = v9;
    operator delete(v9);
  }

  v10 = *(this + 1208);
  *(this + 1208) = 0;
  if (v10)
  {
    MEMORY[0x1E12BD150](v10, 64);
  }

  v11 = *(this + 173);
  *(this + 173) = 0;
  if (v11)
  {
    std::default_delete<DspLib::CircularDelay>::operator()[abi:ne200100](this + 1384, v11);
  }

  v19 = (this + 1360);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v19);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 912));
  v12 = *(this + 111);
  if (v12)
  {
    *(this + 112) = v12;
    operator delete(v12);
  }

  v19 = (this + 728);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v19);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 696));
  v13 = *(this + 84);
  if (v13)
  {
    *(this + 85) = v13;
    operator delete(v13);
  }

  v14 = *(this + 75);
  if (v14)
  {
    *(this + 76) = v14;
    operator delete(v14);
  }

  v15 = *(this + 72);
  if (v15)
  {
    *(this + 73) = v15;
    operator delete(v15);
  }

  v16 = *(this + 67);
  if (v16)
  {
    *(this + 68) = v16;
    operator delete(v16);
  }

  v19 = (this + 512);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v19);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 480));
  v17 = *(this + 57);
  if (v17)
  {
    *(this + 58) = v17;
    operator delete(v17);
  }

  v19 = (this + 320);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v19);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 288));
  v18 = *(this + 33);
  if (v18)
  {
    *(this + 34) = v18;
    operator delete(v18);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::LoudnessNormalizer::ShapingFilter::~ShapingFilter(DspLib::LoudnessNormalizer::ShapingFilter *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void std::default_delete<DspLib::CircularDelay>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
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

DspLib::LoudnessMeter::Algorithm *DspLib::LoudnessMeter::Algorithm::Algorithm(DspLib::LoudnessMeter::Algorithm *this)
{
  v2 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::LoudnessMeter::Parameters::kDefinition);
  *v2 = &unk_1F591A080;
  *(v2 + 312) = 0;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 384) = 0;
  *(v2 + 98) = 1;
  v2[60] = 0;
  v2[61] = 0;
  v2[59] = 0;
  *(v2 + 25) = 0u;
  *(v2 + 26) = 0u;
  *(v2 + 27) = 0u;
  *(v2 + 28) = 0u;
  *(v2 + 116) = 0;
  DspLib::ChannelBuffer::ChannelBuffer((v2 + 62), 0, 0);
  *(this + 136) = 0;
  *(this + 552) = 0;
  *(this + 139) = 0;
  *(this + 70) = 0;
  *(this + 71) = vdup_n_s32(0xC28C0000);
  *(this + 72) = 0;
  *(this + 74) = 0;
  *(this + 73) = 0;
  *(this + 150) = -1031012352;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 665) = 0u;
  return this;
}

void sub_1DDC0C610(_Unwind_Exception *a1)
{
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator((v1 + 392));
  DspLib::LoudnessMeter::LKFSPreFilter::~LKFSPreFilter((v1 + 312));
  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v1);
  _Unwind_Resume(a1);
}

void DspLib::LoudnessMeter::LKFSPreFilter::~LKFSPreFilter(DspLib::LoudnessMeter::LKFSPreFilter *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void DspLib::LoudnessNormalizer::Algorithm::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudnessNormalizer/dsp/DspLibLoudnessNormalizer.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 29);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudnessNormalizer/dsp/DspLibLoudnessNormalizer.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 28);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudnessNormalizer::Algorithm::resetLoudnessComputation()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudnessNormalizer/dsp/DspLibLoudnessNormalizer.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 123);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudnessNormalizer::Algorithm::resetSampleRateConverters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudnessNormalizer/dsp/DspLibLoudnessNormalizer.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 108);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

float *DspLib::NonLinearDevice::FullWaveIntegrator::process(float *result, float *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = 1;
    do
    {
      v4 = result[1];
      if (*a2 <= 0.0 || (v5 = 0.0, v4 > 0.0))
      {
        v5 = result[2] + (*result * fabsf(v4));
      }

      result[1] = *a2;
      *a2++ = v5;
      result[2] = v5;
    }

    while (a3 > v3++);
  }

  return result;
}

BOOL DspLib::NonLinearDevice::Algorithm::initialize(DspLib::NonLinearDevice::Algorithm *this, double a2)
{
  v2 = *this;
  *this = a2;
  if (v2 != a2)
  {
    v3 = 0.00999999978 / a2 * 44100.0;
    *(this + 3) = v3;
    *(this + 2) = *(this + 2);
    *(this + 2) = 0;
  }

  return v2 != a2;
}

void DspLib::NonLinearDevice::Algorithm::process(uint64_t a1, float *__C, vDSP_Length __N)
{
  v5 = *(a1 + 8);
  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 != 4)
      {
        v6 = 4.6;
        v7 = 0.7;
LABEL_21:

        DspLib::NonLinearDevice::tanhNonlinearity(__C, __N, v6, v7);
        return;
      }

      DspLib::add(__C, __N, 0.2);
LABEL_20:
      v6 = 0.8;
      v7 = 3.8;
      goto LABEL_21;
    }

    if (v5 == 6)
    {
      v11 = 1065353216;
      v9 = xmmword_1DE099428;
      v10 = unk_1DE099438;
      DspLib::poly(__C, __N, &v9, 9);
      DspLib::multiplyAdd(__C, __N, 2.0, -1.0);
    }

    else if (v5 == 7)
    {
      v11 = 0;
      v9 = xmmword_1DE09944C;
      v10 = unk_1DE09945C;
      DspLib::poly(__C, __N, &v9, 9);
    }
  }

  else
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 == 1)
        {

          DspLib::abs(__C, __N);
        }
      }

      else
      {

        DspLib::clip(__C, __N, 0.0, 1000.0);
      }

      return;
    }

    if (v5 != 2)
    {
      goto LABEL_20;
    }

    v8 = (a1 + 12);

    DspLib::NonLinearDevice::FullWaveIntegrator::process(v8, __C, __N);
  }
}

uint64_t DspLib::NonLinearDevice::tanhNonlinearity(float *a1, uint64_t a2, float a3, float a4)
{
  DspLib::multiply(a1, a2, a3);
  DspLib::vtanh(a1, a2, a1);

  return DspLib::multiply(a1, a2, a4);
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::initialize(DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *this, double a2)
{
  *this = a2;
  DspLib::ComplexVector::setLength((this + 608), 0);
  *(this + 87) = *(this + 86);
  DspLib::ComplexVector::setLength((this + 712), 0);
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::pageInMatrixFunctions(this);
}

void sub_1DDC0CCF0()
{
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 404) = 0;
  *(v0 + 420) = 1120403456;
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::pageInMatrixFunctions(v0);
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::pageInMatrixFunctions(DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *this)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 10) <= 4uLL)
  {
    v1 = 4;
  }

  else
  {
    v1 = *(this + 10);
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
  DspLib::LoudspeakerSystemIDV1::updateModelParameters(&v30, &v29, &v28, v35, v32, v31, v25, 0.0);
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::reset(DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *this)
{
  *(this + 100) = 0;
  *(this + 51) = 0;
  *(this + 202) = 0;
  *(this + 420) = 1120403456;
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::pageInMatrixFunctions(this);
}

void DspLib::LoudspeakerSystemIDV1::updateModelParameters(DspLib::LoudspeakerSystemIDV1 *this, float *a2, float *a3, float *a4, DspLib::ComplexMatrixSpan *a5, DspLib::ComplexMatrixSpan *a6, DspLib::ComplexSpan *a7, float a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = &v11;
  v9 = xmmword_1DE095620;
  v10 = 3;
  DspLib::LoudspeakerSystemIDV1::updateMTimesX(&v8, a4, a5);
}

BOOL sub_1DDC0D264()
{
  *v1 = DspLib::ComplexSpan::operator[]((v2 - 288), 0);
  *v0 = DspLib::ComplexSpan::operator[]((v2 - 288), 1uLL);
  v3 = DspLib::ComplexSpan::operator[]((v2 - 288), 2uLL);
  **(v2 - 376) = v3;
  return (*v1 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*v0 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v3) & 0x7FFFFFFFu) < 0x7F800000;
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::uninitialize(DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *this)
{
  DspLib::ComplexMatrix::setDimensions((this + 512), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 48), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 224), 0, 0);
  DspLib::ComplexVector::setLength((this + 320), 0);
  DspLib::ComplexVector::setLength((this + 144), 0);
  DspLib::ComplexVector::setLength((this + 432), 0);
  DspLib::ComplexVector::setLength((this + 816), 0);
  DspLib::ComplexVector::setLength((this + 608), 0);
  *(this + 87) = *(this + 86);

  DspLib::ComplexVector::setLength((this + 712), 0);
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::setParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    if (a3 == DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
    {
      v6 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 7u);
      v7 = a2 + 4 * v6;
      v8 = *(v7 + 24);
      if (*(v7 + 28) + *a1 * 0.0009765625 * -2.0 > v8)
      {
        *(a1 + 800) = v8;
        *(a1 + 804) = *(v7 + 28);
      }

      v9 = DspLib::dB2Amp(v6, *(v7 + 44));
      *(a1 + 920) = v9 / (v9 + 1.0);
      *(a1 + 924) = *(v7 + 48) / 100.0;
      *(a1 + 928) = DspLib::dB2Amp(v10, *(v7 + 40));
      v12 = DspLib::dB2Amp(v11, *(v7 + 56));
      *(a1 + 932) = v12 / (v12 + 1.0);
      *(a1 + 936) = *(v7 + 32);
      *(a1 + 940) = *(v7 + 12) * 0.001;
      *(a1 + 944) = *(v7 + 60) * 0.001;
      *(a1 + 948) = *(v7 + 64) * 0.001;
      *(a1 + 952) = *(v7 + 76);
      *(a1 + 956) = *(v7 + 80);
      *(a1 + 960) = *(v7 + 68);
      *(a1 + 964) = *(v7 + 72);
      v13 = *(v7 + 8);
      *(a1 + 808) = *(v7 + 4) != 0.0;
      v14 = *(v7 + 92);
      *(a1 + 809) = v14 != 0.0;
      *(a1 + 968) = v13;
      *(a1 + 972) = *(v7 + 84);
      *(a1 + 976) = *(v7 + 88);
      if (v14 != 0.0)
      {
        *(a1 + 808) = 0;
      }

      v15 = *a1 * 0.0009765625;
      v16.i64[0] = 0xFFFFFFFFLL;
      v16.i64[1] = 0xFFFFFFFFLL;
      v17 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(vrndaq_f64(vdivq_f64(vcvtq_f64_f32(*(a1 + 800)), vdupq_lane_s64(COERCE__INT64(v15), 0)))), v16)), v15));
      *(a1 + 792) = v17;
      DspLib::ComplexMatrix::setDimensions((a1 + 512), 2, vcvtas_u32_f32(vsub_f32(vdup_lane_s32(v17, 1), v17).f32[0] / v15));
      DspLib::LoudspeakerSystemIDV1::calculateSPlaneFrequencyVector((a1 + 512), *(a1 + 792), v15, v18);
      std::vector<unsigned long>::resize((a1 + 8), *(a1 + 544));
      DspLib::FFT::frequencyBinIndex(0x400, *(a1 + 792), *(a1 + 796), *a1, 1uLL, &v21);
      v19 = *(a1 + 8);
      if (v19)
      {
        *(a1 + 16) = v19;
        operator delete(v19);
      }

      *(a1 + 8) = v21;
      *(a1 + 24) = v22;
      DspLib::ComplexVector::setLength((a1 + 608), *(a1 + 544));
      std::vector<float>::resize((a1 + 688), *(a1 + 544));
      DspLib::ComplexVector::setLength((a1 + 712), *(a1 + 544));
      DspLib::ComplexVector::setLength((a1 + 816), *(a1 + 544));
      DspLib::ComplexVector::operator=(a1 + 816, 0.0);
      DspLib::ComplexMatrix::setDimensions((a1 + 48), 3, *(a1 + 544));
      DspLib::ComplexVector::setLength((a1 + 144), *(a1 + 544));
      DspLib::ComplexMatrix::setDimensions((a1 + 224), *(a1 + 544), 3);
      DspLib::ComplexVector::setLength((a1 + 320), *(a1 + 544));
      DspLib::ComplexVector::setLength((a1 + 432), *(a1 + 544));
      *(a1 + 416) = *(v7 + 32);
      if (a3 == DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
      {
        v20 = *a1 / round(*a1 * *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 3u) + 12));
        *(a1 + 32) = expf(-1.0 / (((*(v7 + 36) * 1000.0) * v20) / 1000.0));
        *(a1 + 36) = expf(-1.0 / (((*(v7 + 52) * 1000.0) * v20) / 1000.0));
        *(a1 + 41) = 1;
        DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::pageInMatrixFunctions(a1);
      }

      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::setParameters();
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::readFromNvm(DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *this)
{
  v2 = 0;
  DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::readSingleResonanceModel(&DspLib::LoudspeakerSystemIDV1::gNonVolatileRecord, this + 112, &v2);
  if ((v2 & 1) == 0)
  {
    *(this + 100) = 0;
    *(this + 51) = 0;
    *(this + 202) = 0;
    *(this + 420) = 1120403456;
    DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::pageInMatrixFunctions(this);
  }
}

uint64_t DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::process(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, DSPSplitComplex *a6, float a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 41))
  {
    DspLib::LoudspeakerSystemIDV1::updateLocalSearchVariables(a2, a3, a4, (a1 + 608), *(a1 + 688), (*(a1 + 696) - *(a1 + 688)) >> 2, (a1 + 8));
    updated = DspLib::LoudspeakerSystemIDV2::updateWeights(*(a1 + 688), (*(a1 + 696) - *(a1 + 688)) >> 2, (a1 + 816), *(a1 + 920));
    *(a1 + 408) = updated;
    v12 = DspLib::LoudspeakerSystemIDV1::safeToAdapt(a5, (a1 + 400), a1 + 8, (a1 + 424), updated, *(a1 + 920), *(a1 + 924), *(a1 + 928));
    if (v12)
    {
      if (*(a1 + 416))
      {
        DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::calculateEstimatedResonanceModel(v12, (a1 + 712), (a1 + 512), (a1 + 896));
        DspLib::operator+=(a1 + 712, a6);
        DspLib::operator+=((a1 + 712), a7);
        DspLib::LoudspeakerSystemIDV2::updateModelFitData((a1 + 608), *(a1 + 688), a7, (*(a1 + 696) - *(a1 + 688)) >> 2, a6, (a1 + 712), (a1 + 432));
        DspLib::LoudspeakerSystemIDV1::updateMInResonanceModel((a1 + 512), (a1 + 896), (a1 + 816), (a1 + 48));
        DspLib::LoudspeakerSystemIDV1::updateAInverseInResonanceModel((a1 + 512), a1 + 896, a1 + 144, a1 + 816);
        DspLib::LoudspeakerSystemIDV1::updateXInResonanceModel((a1 + 432), (a1 + 144), (a1 + 224), (a1 + 512), v13);
        v15 = MEMORY[0x1EEE9AC00](v14);
        MEMORY[0x1EEE9AC00](v15);
        v16 = *(a1 + 544);
        __B.realp = v18;
        __B.imagp = (&v22 - v17);
        v25 = v16;
        DspLib::ComplexMatrixSpan::row((a1 + 512), 1uLL, &__B);
        DspLib::ComplexSpan::operator=((a1 + 320), (a1 + 432));
        DspLib::operator*=((a1 + 320), &__B);
        DspLib::operator*=((a1 + 320), (a1 + 144));
        v22 = 0;
        v23 = 0;
        DspLib::LoudspeakerSystemIDV1::updateModelParameters((&v22 + 4), &v23, &v22, (a1 + 48), (a1 + 224), (a1 + 320), v19, 1.0e-15);
      }
    }

    else
    {
      *(a1 + 404) = 0;
    }
  }

  else
  {
    v20 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceModels.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v20, 212);
    ++DspLibDebug::mAssertCounter;
  }

  return 0;
}

float DspLib::LoudspeakerSystemIDV1::updateLocalSearchVariables(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = *a7;
  if (a7[1] != *a7)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v17.real = DspLib::ComplexSpan::operator[](a1, *(v7 + 8 * v13));
      DspLib::ComplexSpan::setElement(a4, v13, v17);
      v7 = *a7;
      v15 = a7[1];
      result = *(a2 + 4 * *(*a7 + 8 * v13));
      *(a5 + 4 * v13) = result;
      v13 = v14++;
    }

    while (v13 < (v15 - v7) >> 3);
  }

  return result;
}

BOOL DspLib::LoudspeakerSystemIDV1::safeToAdapt(uint64_t *a1, float *a2, uint64_t a3, float *a4, float a5, float a6, float a7, float a8)
{
  *a2 = 0.0;
  v8 = *a3;
  v9 = *(a3 + 8) - *a3;
  if (!v9)
  {
    return 0;
  }

  v10 = v9 >> 3;
  v11 = *a1;
  v12 = 0.0;
  v13 = 1;
  v14 = 0.0;
  do
  {
    v16 = *v8++;
    v15 = v16;
    if (v16 >= 0x1FF)
    {
      v15 = 511;
    }

    v17 = *(v11 + 4 * v15);
    v14 = v17 + v14;
    *a2 = v14;
    if (v17 > v12)
    {
      v12 = v17;
    }
  }

  while (v10 > v13++);
  if (v14 == 0.0)
  {
    return 0;
  }

  v20 = v12 / v14;
  *a4 = v20;
  v21 = *a2 / v10;
  *a2 = v21;
  v22 = a5 >= a6;
  if (v20 <= a7)
  {
    v22 = 1;
  }

  return v21 > a8 && v22;
}

DSPSplitComplex *DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::calculateEstimatedResonanceModel(uint64_t a1, DSPSplitComplex *a2, DspLib::ComplexMatrixSpan *a3, float *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v7);
  __A.realp = v9;
  __A.imagp = (&__B - v8);
  v27 = v10;
  DspLib::ComplexMatrixSpan::row(a3, 0, &__A);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v24.realp = v14;
  v24.imagp = (&__B - v13);
  v25 = v15;
  DspLib::ComplexMatrixSpan::row(a3, 0, &v24);
  DspLib::operator*=(&__A, *a4);
  DspLib::operator*=(&v24, a4[2]);
  v16 = DspLib::operator+=(&v24, a4[1]);
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  __B.realp = v19;
  __B.imagp = (&__B - v18);
  v23 = v20;
  DspLib::ComplexMatrixSpan::row(a3, 1uLL, &__B);
  DspLib::operator+=(&v24, &__B);
  DspLib::ComplexSpan::operator=(a2, &__A);
  return DspLib::operator/=(a2, &v24);
}

void DspLib::LoudspeakerSystemIDV1::updateMInResonanceModel(DspLib::ComplexMatrixSpan *a1, float *a2, DSPSplitComplex *a3, DspLib::ComplexMatrixSpan *a4)
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
  DspLib::ComplexMatrixSpan::row(v14, 0, &__B);
  DspLib::operator*=(&__B, a2[2]);
  DspLib::operator+=(&__B, a2[1]);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator+=(&__B, &__A);
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
  DspLib::operator*=(&__A, -*a2);
  DspLib::operator*=(&__A, a3);
  DspLib::operator*=(&__B, &__B);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 0, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator*=(&__A, -*a2);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 1uLL, &__C);
}

uint64_t DspLib::LoudspeakerSystemIDV1::updateAInverseInResonanceModel(DspLib::ComplexMatrixSpan *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  __A.realp = v11;
  __A.imagp = (&v19 - v10);
  v23 = v12;
  DspLib::ComplexMatrixSpan::row(v9, 0, &__A);
  DspLib::operator*=(&__A, *(a2 + 8));
  v13 = DspLib::operator+=(&__A, *(a2 + 4));
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  __B.realp = v16;
  __B.imagp = (&v19 - v15);
  v21 = v17;
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__B);
  DspLib::operator+=(&__A, &__B);
  DspLib::ComplexVector::operator=(a3, a4);
  return DspLib::operator/=(a3, &__A);
}

void DspLib::LoudspeakerSystemIDV1::updateXInResonanceModel(DSPSplitComplex *this, DSPSplitComplex *a2, DspLib::ComplexVector *a3, DspLib::ComplexMatrix *a4, DspLib::ComplexMatrix *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1EEE9AC00](this);
  MEMORY[0x1EEE9AC00](v9);
  __C.realp = v11;
  __C.imagp = (&v18 - v10);
  v22 = v12;
  DspLib::ComplexSpan::operator=(&__C, this);
  DspLib::operator*=(&__C, -1.0);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 0, &__C);
  DspLib::ComplexSpan::operator=(&__C, this);
  v13 = DspLib::operator*=(&__C, -1.0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  __B.realp = v16;
  __B.imagp = (&v18 - v15);
  v20 = v17;
  DspLib::ComplexMatrixSpan::row(a4, 0, &__B);
  DspLib::operator*=(&__C, &__B);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 1uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a4, 0, &__C);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 2uLL, &__C);
}

BOOL DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::parametersAreValid(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, const DspLib::ComplexSpan *a6)
{
  *(a1 + 420) = DspLib::LoudspeakerSystemIDV1::calculateError((a1 + 608), *(a1 + 816), (a1 + 712), (a1 + 432), a6);
  v10 = 36;
  if (*(a1 + 408) > *(a1 + 932))
  {
    v10 = 32;
  }

  v11 = *(a1 + v10);
  v12 = vmla_n_f32(*(a2 + 4), vsub_f32(*(a1 + 900), *(a2 + 4)), v11);
  *(a2 + 4) = v12;
  v13 = *a2 + (v11 * (*(a1 + 896) - *a2));
  *a2 = v13;
  v14 = *(a1 + 968);
  if (*(a1 + 808) == 1)
  {
    v15 = *(a1 + 948);
    v16 = v13 <= 0.00001;
    v17 = (v14 * v14) / v13;
    if (!v16)
    {
      v15 = v17;
    }
  }

  else
  {
    v15 = *(a1 + 940);
    v18 = sqrtf(v13 * v15);
    if (v13 > 0.0)
    {
      v14 = v18;
    }
  }

  v26 = v14;
  v27 = v15;
  v28 = vrev64_s32(vmul_n_f32(v12, v15));
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::clipTsParameters(a1, &v26);
  *v19.i32 = v27;
  *a2 = (v26 * v26) / v27;
  *(a2 + 4) = vrev64_s32(vdiv_f32(v28, vdup_lane_s32(v19, 0)));
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::calculateEstimatedResonanceModel(v20, (a1 + 712), (a1 + 512), a2);
  DspLib::operator+=(a1 + 712, a3);
  DspLib::operator+=((a1 + 712), a4);
  v22 = DspLib::LoudspeakerSystemIDV1::calculateError((a1 + 608), *(a1 + 816), (a1 + 712), (a1 + 432), v21);
  v23 = *(a1 + 420);
  if (v22 >= v23)
  {
    v24 = 0;
  }

  else
  {
    *(a1 + 420) = v22;
    v24 = 1;
  }

  result = v22 < v23;
  *(a1 + 405) = v24;
  *(a1 + 404) = 1;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::status(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 808) == 1)
    {
      v4 = *(a1 + 896);
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = (*(a1 + 968) * *(a1 + 968)) / v4;
      }

      v7 = v5 * 1000.0;
    }

    else
    {
      v5 = *(a1 + 940);
      v6 = *(a1 + 896);
      if (v6 <= 0.0)
      {
        v7 = *(a1 + 968);
      }

      else
      {
        v7 = sqrtf(v5 * v6);
      }
    }

    *(a2 + 8) = v7;
    v8 = vmul_n_f32(*(a1 + 900), v5);
    *(a2 + 144) = *(a1 + 400);
    *(a2 + 12) = vrev64_s32(v8);
    *v8.i32 = sqrtf(*(a1 + 900));
    v9 = *v8.i32 / 6.2832;
    v10 = *(a1 + 904);
    v11 = *v8.i32 / v10;
    if (v10 == 0.0)
    {
      v11 = 0.0;
    }

    v12 = ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *(a2 + 20) = v9;
    *(a2 + 24) = v11;
    LOBYTE(v11) = *(a1 + 404);
    v13 = LODWORD(v11);
    *(a2 + 28) = v12;
    *(a2 + 32) = v13;
    *(a2 + 36) = v13;
    *(a2 + 40) = v13;
    LOBYTE(v13) = *(a1 + 405);
    v14 = LODWORD(v13);
    *(a2 + 124) = v14;
    *(a2 + 128) = v14;
    *(a2 + 132) = v14;
    *(a2 + 148) = *(a1 + 424);
    *(a2 + 152) = *(a1 + 408);
    *(a2 + 156) = DspLib::minv(*(a1 + 688), (*(a1 + 696) - *(a1 + 688)) >> 2);
    *(a2 + 168) = *(a1 + 420);
    *(a2 + 160) = *(a1 + 792);
    *(a2 + 164) = *(a1 + 796);
    *(a2 + 220) = 0;
    *(a2 + 204) = 0u;
    *(a2 + 188) = 0u;
    *(a2 + 172) = 0u;
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::status();
  }
}

float DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::clipTsParameters(float *a1, float *a2)
{
  v2 = a1 + 243;
  v3 = a1 + 244;
  if (a1[244] >= *a2)
  {
    v3 = a2;
  }

  if (*a2 >= a1[243])
  {
    v2 = v3;
  }

  *a2 = *v2;
  v4 = a1 + 236;
  v5 = a1 + 237;
  v6 = a2[1];
  if (a1[237] >= v6)
  {
    v5 = a2 + 1;
  }

  if (v6 >= a1[236])
  {
    v4 = v5;
  }

  a2[1] = *v4;
  v7 = a1 + 238;
  v8 = a1 + 239;
  v9 = a2[3];
  if (a1[239] >= v9)
  {
    v8 = a2 + 3;
  }

  if (v9 >= a1[238])
  {
    v7 = v8;
  }

  a2[3] = *v7;
  v10 = a1 + 240;
  v11 = a1 + 241;
  v13 = a2[2];
  v12 = a2 + 2;
  v14 = v13;
  if (a1[241] >= v13)
  {
    v11 = v12;
  }

  if (v14 >= a1[240])
  {
    v10 = v11;
  }

  result = *v10;
  *v12 = *v10;
  return result;
}

float DspLib::LoudspeakerSystemIDV1::calculateError(DspLib::LoudspeakerSystemIDV1 *this, const DspLib::ComplexSpan *a2, float *a3, const DspLib::ComplexSpan *a4, const DspLib::ComplexSpan *a5)
{
  if (*(a4 + 2))
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 1;
    v12 = 0.0;
    do
    {
      v13 = DspLib::ComplexSpan::operator[](this, v9);
      v15 = v14;
      v16 = *(a2 + v9);
      v17 = DspLib::ComplexSpan::operator[](a3, v9);
      v10 = v10 + v16;
      v12 = v12 + (fabsf(v16 * (((v17 - v13) * (v17 - v13)) - ((v18 - v15) * (v18 - v15)))) + fabsf(v16 * (((v18 - v15) * (v17 - v13)) + ((v17 - v13) * (v18 - v15)))));
      v9 = v11;
      v19 = *(a4 + 2) > v11++;
    }

    while (v19);
    v20 = v12 / v10;
  }

  else
  {
    v20 = NAN;
  }

  v21 = sqrtf(v20);
  v19 = v20 <= 0.0;
  result = 100.0;
  if (!v19)
  {
    return v21;
  }

  return result;
}

double DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::initialize(DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *this, double a2)
{
  *this = a2;
  DspLib::ComplexVector::setLength((this + 600), 0);
  *(this + 86) = *(this + 85);
  DspLib::ComplexVector::setLength((this + 704), 0);
  *(this + 100) = 0;
  *(this + 102) = 0;
  *(this + 202) = 0;
  *&result = 1120403456;
  *(this + 52) = 1120403456;
  *(this + 44) = 1;
  return result;
}

double DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::reset(DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *this)
{
  *(this + 100) = 0;
  *(this + 102) = 0;
  *(this + 202) = 0;
  *&result = 1120403456;
  *(this + 52) = 1120403456;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::uninitialize(DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *this)
{
  DspLib::ComplexMatrix::setDimensions((this + 504), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 48), 0, 0);
  DspLib::ComplexMatrix::setDimensions((this + 224), 0, 0);
  DspLib::ComplexVector::setLength((this + 320), 0);
  DspLib::ComplexVector::setLength((this + 144), 0);
  DspLib::ComplexVector::setLength((this + 424), 0);
  DspLib::ComplexVector::setLength((this + 808), 0);
  DspLib::ComplexVector::setLength((this + 600), 0);
  *(this + 86) = *(this + 85);

  DspLib::ComplexVector::setLength((this + 704), 0);
}

void DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::setParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 44))
  {
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v6 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 6u);
    v7 = a2 + 4 * v6;
    v8 = *(v7 + 20);
    if (*(v7 + 24) + *a1 * 0.0009765625 * -2.0 * *(v7 + 68) > v8)
    {
      *(a1 + 792) = v8;
      *(a1 + 796) = *(v7 + 24);
      *(a1 + 800) = *(v7 + 68);
    }

    v9 = DspLib::dB2Amp(v6, *(v7 + 56));
    *(a1 + 912) = v9 / (v9 + 1.0);
    *(a1 + 916) = *(v7 + 60) * 0.01;
    *(a1 + 920) = DspLib::dB2Amp(v10, *(v7 + 64));
    v12 = DspLib::dB2Amp(v11, *(v7 + 76));
    *(a1 + 924) = v12 / (v12 + 1.0);
    *(a1 + 928) = *(v7 + 32);
    *(a1 + 932) = *(v7 + 36);
    *(a1 + 936) = *(v7 + 40);
    *(a1 + 940) = *(v7 + 44);
    *(a1 + 944) = *(v7 + 48);
    *(a1 + 948) = *(v7 + 52);
    v13 = *a1 * 0.0009765625;
    v14.i64[0] = 0xFFFFFFFFLL;
    v14.i64[1] = 0xFFFFFFFFLL;
    v15 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(vrndaq_f64(vdivq_f64(vcvtq_f64_f32(*(a1 + 792)), vdupq_lane_s64(COERCE__INT64(v13), 0)))), v14)), v13));
    *(a1 + 784) = v15;
    v16 = *(a1 + 800) * v13;
    DspLib::ComplexMatrix::setDimensions((a1 + 504), 2, vcvtas_u32_f32(vsub_f32(vdup_lane_s32(v15, 1), v15).f32[0] / v16));
    DspLib::LoudspeakerSystemIDV1::calculateSPlaneFrequencyVector((a1 + 504), *(a1 + 784), v16, v17);
    std::vector<unsigned long>::resize((a1 + 8), *(a1 + 536));
    DspLib::FFT::frequencyBinIndex(0x400, *(a1 + 784), *(a1 + 788), *a1, *(a1 + 800), &v21);
    v18 = *(a1 + 8);
    if (v18)
    {
      *(a1 + 16) = v18;
      operator delete(v18);
    }

    *(a1 + 8) = v21;
    *(a1 + 24) = v22;
    v19 = *a1 * 0.0009765625 * *(a1 + 800);
    *(a1 + 40) = v19;
    DspLib::ComplexVector::setLength((a1 + 600), *(a1 + 536));
    std::vector<float>::resize((a1 + 680), *(a1 + 536));
    DspLib::ComplexVector::setLength((a1 + 704), *(a1 + 536));
    DspLib::ComplexVector::setLength((a1 + 808), *(a1 + 536));
    DspLib::ComplexVector::operator=(a1 + 808, 0.0);
    DspLib::ComplexMatrix::setDimensions((a1 + 48), 3, *(a1 + 536));
    DspLib::ComplexVector::setLength((a1 + 144), *(a1 + 536));
    DspLib::ComplexMatrix::setDimensions((a1 + 224), *(a1 + 536), 3);
    DspLib::ComplexVector::setLength((a1 + 320), *(a1 + 536));
    DspLib::ComplexVector::setLength((a1 + 424), *(a1 + 536));
    *(a1 + 412) = *(v7 + 16);
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v20 = *a1 / round(*a1 * *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 3u) + 12));
    *(a1 + 32) = expf(-1.0 / (((*(v7 + 28) * 1000.0) * v20) / 1000.0));
    *(a1 + 36) = expf(-1.0 / (((*(v7 + 72) * 1000.0) * v20) / 1000.0));
    *(a1 + 45) = 1;
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::setParameters();
  }
}

double DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::readFromNvm(DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *this)
{
  v3 = 0;
  DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::readInductanceModel(&DspLib::LoudspeakerSystemIDV1::gNonVolatileRecord, this + 888, &v3);
  if ((v3 & 1) == 0)
  {
    *(this + 100) = 0;
    *(this + 102) = 0;
    *(this + 202) = 0;
    *&result = 1120403456;
    *(this + 52) = 1120403456;
  }

  return result;
}

uint64_t DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::process(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, DSPSplitComplex *a6, float a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 45))
  {
    DspLib::LoudspeakerSystemIDV1::updateLocalSearchVariables(a2, a3, a4, (a1 + 600), *(a1 + 680), (*(a1 + 688) - *(a1 + 680)) >> 2, (a1 + 8));
    updated = DspLib::LoudspeakerSystemIDV2::updateWeights(*(a1 + 680), (*(a1 + 688) - *(a1 + 680)) >> 2, (a1 + 808), *(a1 + 912));
    *(a1 + 408) = updated;
    v12 = DspLib::LoudspeakerSystemIDV1::safeToAdapt(a5, (a1 + 400), a1 + 8, (a1 + 420), updated, *(a1 + 912), *(a1 + 916), *(a1 + 920));
    if (v12)
    {
      if (*(a1 + 412))
      {
        DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::calculateEstimatedInductanceModel(v12, (a1 + 704), (a1 + 504), (a1 + 888));
        DspLib::operator+=(a1 + 704, a6);
        DspLib::operator+=((a1 + 704), a7);
        DspLib::LoudspeakerSystemIDV2::updateModelFitData((a1 + 600), *(a1 + 680), a7, (*(a1 + 688) - *(a1 + 680)) >> 2, a6, (a1 + 704), (a1 + 424));
        DspLib::LoudspeakerSystemIDV1::updateMInInductanceModel((a1 + 504), (a1 + 888), (a1 + 808), (a1 + 48));
        DspLib::LoudspeakerSystemIDV1::updateAInverseInInductanceModel(a1 + 504, a1 + 888, a1 + 144, a1 + 808);
        DspLib::LoudspeakerSystemIDV1::updateXInInductanceModel((a1 + 424), (a1 + 144), (a1 + 224), (a1 + 504), v13);
        v15 = MEMORY[0x1EEE9AC00](v14);
        MEMORY[0x1EEE9AC00](v15);
        v16 = *(a1 + 536);
        __B.realp = v18;
        __B.imagp = (&v22 - v17);
        v25 = v16;
        DspLib::ComplexMatrixSpan::row((a1 + 504), 0, &__B);
        DspLib::ComplexSpan::operator=((a1 + 320), (a1 + 424));
        DspLib::operator*=((a1 + 320), &__B);
        DspLib::operator*=((a1 + 320), (a1 + 144));
        v22 = 0;
        v23 = 0;
        DspLib::LoudspeakerSystemIDV1::updateModelParameters(&v23, &v22, &v22 + 1, (a1 + 48), (a1 + 224), (a1 + 320), v19, 1.0e-10);
      }
    }

    else
    {
      *(a1 + 404) = 0;
    }
  }

  else
  {
    v20 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceModels.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v20, 623);
    ++DspLibDebug::mAssertCounter;
  }

  return 0;
}

DSPSplitComplex *DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::calculateEstimatedInductanceModel(uint64_t a1, DSPSplitComplex *a2, DspLib::ComplexMatrixSpan *a3, float *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v7);
  __A.realp = v9;
  __A.imagp = (&v17 - v8);
  v21 = v10;
  DspLib::ComplexMatrixSpan::row(a3, 0, &__A);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  __B.realp = v14;
  __B.imagp = (&v17 - v13);
  v19 = v15;
  DspLib::ComplexMatrixSpan::row(a3, 1uLL, &__B);
  DspLib::operator*=(&__A, *a4);
  DspLib::operator*=(&__B, a4[1]);
  DspLib::operator+=(&__A, &__B);
  DspLib::ComplexMatrixSpan::row(a3, 0, &__B);
  DspLib::operator+=(&__B, a4[2]);
  if (fabsf(*__B.realp) < 0.00000011921)
  {
    *__B.realp = 0.00000011921;
  }

  DspLib::ComplexSpan::operator=(a2, &__A);
  return DspLib::operator/=(a2, &__B);
}

void DspLib::LoudspeakerSystemIDV1::updateMInInductanceModel(DspLib::ComplexMatrixSpan *a1, float *a2, DSPSplitComplex *a3, DspLib::ComplexMatrixSpan *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  __B.realp = v11;
  __B.imagp = (&__C - v10);
  v28 = v12;
  DspLib::ComplexMatrixSpan::row(v9, 0, &__B);
  v13 = DspLib::operator+=(&__B, a2[2]);
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
  DspLib::ComplexMatrixSpan::setRow(a4, 1uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator*=(&__A, a3);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 2uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a1, 0, &__C);
  DspLib::operator*=(&__C, -*a2);
  DspLib::ComplexMatrixSpan::row(a1, 1uLL, &__A);
  DspLib::operator*=(&__A, -a2[1]);
  DspLib::operator+=(&__A, &__C);
  DspLib::operator*=(&__A, a3);
  DspLib::operator*=(&__B, &__B);
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::operator/=(&__C, &__B);
  DspLib::ComplexMatrixSpan::setRow(a4, 0, &__C);
}

uint64_t DspLib::LoudspeakerSystemIDV1::updateAInverseInInductanceModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v13.realp = v10;
  v13.imagp = (&v13 - v9);
  v14 = v11;
  DspLib::ComplexMatrixSpan::row(v8, 0, &v13);
  DspLib::operator+=(&v13, *(a2 + 8));
  DspLib::ComplexVector::operator=(a3, a4);
  return DspLib::operator/=(a3, &v13);
}

void DspLib::LoudspeakerSystemIDV1::updateXInInductanceModel(DspLib::LoudspeakerSystemIDV1 *this, DSPSplitComplex *a2, DspLib::ComplexVector *a3, DspLib::ComplexMatrix *a4, DspLib::ComplexMatrix *a5)
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
  DspLib::ComplexMatrixSpan::row(a4, 0, &__C);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 1uLL, &__C);
  DspLib::ComplexMatrixSpan::row(a4, 1uLL, &__C);
  DspLib::operator*=(&__C, a2);
  DspLib::ComplexMatrixSpan::setColumn(a3, 2uLL, &__C);
}

BOOL DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::parametersAreValid(uint64_t a1, float32x2_t *a2, uint64_t a3, float a4, uint64_t a5, const DspLib::ComplexSpan *a6)
{
  v10 = DspLib::LoudspeakerSystemIDV1::calculateError((a1 + 600), *(a1 + 808), (a1 + 704), (a1 + 424), a6);
  v11 = 36;
  if (*(a1 + 408) > *(a1 + 924))
  {
    v11 = 32;
  }

  v12 = *(a1 + v11);
  *(a1 + 416) = v10;
  _S0 = a2[1].f32[0] + (v12 * (*(a1 + 896) - a2[1].f32[0]));
  a2[1].f32[0] = _S0;
  _D2 = vmla_n_f32(*a2, vsub_f32(*(a1 + 888), *a2), v12);
  *a2 = _D2;
  v15 = *(a1 + 940);
  __asm { FMLS            S3, S0, V2.S[1] }

  v30 = _D2.f32[1];
  if (_S0 == 1.0e-12)
  {
    v21 = v15;
  }

  else
  {
    v21 = _S3 / _S0;
  }

  v31 = v21;
  v32 = _S3;
  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::clipTsParameters(a1, &v30);
  v22 = v30;
  v23 = v32 / v31;
  a2->f32[0] = v32 + ((v30 * v32) / v31);
  a2->f32[1] = v22;
  a2[1].f32[0] = v23;
  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::calculateEstimatedInductanceModel(v24, (a1 + 704), (a1 + 504), a2);
  DspLib::operator+=(a1 + 704, a3);
  DspLib::operator+=((a1 + 704), a4);
  v26 = DspLib::LoudspeakerSystemIDV1::calculateError((a1 + 600), *(a1 + 808), (a1 + 704), (a1 + 424), v25);
  v27 = *(a1 + 416);
  if (v26 >= v27)
  {
    v28 = 0;
  }

  else
  {
    *(a1 + 416) = v26;
    v28 = 1;
  }

  result = v26 < v27;
  *(a1 + 405) = v28;
  *(a1 + 404) = 1;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::status(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 892);
    v5 = *(a1 + 896);
    v6 = *(a1 + 888) - (v4 * v5);
    if (v5 == 0.0)
    {
      v7 = *(a1 + 940);
    }

    else
    {
      v7 = v6 / v5;
    }

    *(a2 + 52) = v4;
    *(a2 + 56) = v7;
    LOBYTE(v4) = *(a1 + 404);
    v8 = LODWORD(v4);
    *(a2 + 60) = v6;
    *(a2 + 64) = v8;
    *(a2 + 68) = v8;
    *(a2 + 72) = v8;
    LOBYTE(v6) = *(a1 + 405);
    v9 = LODWORD(v6);
    *(a2 + 112) = v9;
    *(a2 + 116) = v9;
    v10 = *(a1 + 536);
    *(a2 + 120) = v9;
    *(a2 + 76) = v10;
    *(a2 + 80) = *(a1 + 40);
    *(a2 + 96) = *(a1 + 784);
    *(a2 + 100) = *(a1 + 788);
    *(a2 + 48) = *(a1 + 400);
    *(a2 + 84) = *(a1 + 420);
    *(a2 + 88) = *(a1 + 408);
    *(a2 + 92) = DspLib::minv(*(a1 + 680), (*(a1 + 688) - *(a1 + 680)) >> 2);
    *(a2 + 108) = *(a1 + 416);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::status();
  }
}

float DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::clipTsParameters(float *a1, float *a2)
{
  v2 = a1 + 232;
  v3 = a1 + 233;
  if (a1[233] >= *a2)
  {
    v3 = a2;
  }

  if (*a2 >= a1[232])
  {
    v2 = v3;
  }

  *a2 = *v2;
  v4 = a1 + 234;
  v5 = a1 + 235;
  v6 = a2[1];
  if (a1[235] >= v6)
  {
    v5 = a2 + 1;
  }

  if (v6 >= a1[234])
  {
    v4 = v5;
  }

  a2[1] = *v4;
  v7 = a1 + 236;
  v8 = a1 + 237;
  v10 = a2[2];
  v9 = a2 + 2;
  v11 = v10;
  if (a1[237] >= v10)
  {
    v8 = v9;
  }

  if (v11 >= a1[236])
  {
    v7 = v8;
  }

  result = *v7;
  *v9 = *v7;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::updateMTimesX(__int128 *a1, uint64_t *a2, uint64_t *a3)
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

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 117);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 255);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 537);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceModels.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 666);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

uint64_t DspLib::AlgorithmBase::AlgorithmBase(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_1F591AD10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x40E5888000000000;
  std::vector<float>::vector[abi:ne200100]((a1 + 24), a3);
  *(a1 + 48) = 512;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x3F80000000000000;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  if (a3)
  {
    DspLib::copy(a2, a3, *(a1 + 24));
  }

  return a1;
}

void sub_1DDC0FDD0(_Unwind_Exception *exception_object)
{
  v3 = v1[27];
  if (v3)
  {
    v1[28] = v3;
    operator delete(v3);
  }

  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::AlgorithmBase::initialize(DspLib::AlgorithmBase *this, int a2, double a3)
{
  v5 = *(this + 8);
  v6 = a2;
  v7 = *(this + 15);
  if (a2 == 2)
  {
    v8 = 6619138;
  }

  else
  {
    v8 = a2;
  }

  if (a2 == 1)
  {
    v9 = 6553601;
  }

  else
  {
    v9 = v8;
  }

  *(this + 15) = v9;
  v10 = (*(*this + 64))(this);
  *(this + 14) = v6;
  std::vector<float *>::resize(this + 27, v6);
  if (a3 <= 0.0)
  {
    DspLib::AlgorithmBase::initialize();
    v12 = 0;
  }

  else
  {
    v12 = (v7 != v9) | v5 ^ 1 | !DspLib::isEqual(v11, *(this + 2), a3, 1.0e-20) | (v10 != v6);
    *(this + 2) = a3;
  }

  return v12 & 1;
}

void *DspLib::AlgorithmBase::setParameters(void *result, void *__src, uint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = result[3];
  if (v6 != __src)
  {
    result = DspLib::copy(__src, a3, v6);
    v6 = v5[3];
  }

  if (v5[4] != v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      a4.n128_u32[0] = *(v6 + v7);
      result = (*(*v5 + 112))(v5, v7, a4);
      v6 = v5[3];
      v10 = v5[4];
      v11 = *(v6 + v7);
      if (v9 >= v11)
      {
        v9 = *(v6 + v7);
      }

      if (v11 >= a4.n128_f32[0])
      {
        a4.n128_f32[0] = v9;
      }

      *(v6 + v7) = a4.n128_u32[0];
      v7 = v8++;
    }

    while (v7 < (v10 - v6) >> 2);
  }

  return result;
}

void DspLib::AlgorithmBase::process(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if ((*(*a1 + 40))(a1))
  {
    if ((*(*a1 + 208))(a1))
    {
      v6 = DspLib::CPUMeasure::start((a1 + 104));
    }

    v7 = a2[2];
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = v7 - v8;
        v10 = (*(*a1 + 232))(a1, v6);
        if (v10 < v9)
        {
          v9 = v10;
        }

        v11 = a2[1];
        v12 = *(a1 + 216);
        v13 = *(a1 + 224);
        if (v11)
        {
          v14 = 0;
          v15 = *a2;
          do
          {
            v12[v14] = *(v15 + 8 * v14) + 4 * v8;
            ++v14;
          }

          while (v11 > v14);
        }

        v16 = (v13 - v12) >> 3;
        if (*(a3 + 24) == 1)
        {
          v17 = a3[1];
          if (v17)
          {
            v18 = 0;
            v19 = *a3;
            do
            {
              v27[v18] = *(v19 + 8 * v18) + 4 * v8;
              ++v18;
            }

            while (v17 > v18);
          }

          v26[0] = v12;
          v26[1] = v16;
          v26[2] = v9;
          v22 = v27;
          v23 = v17;
          v24 = v9;
          v25 = 1;
          (*(*a1 + 240))(a1, v26, &v22);
        }

        else
        {
          v22 = v12;
          v23 = (v13 - v12) >> 3;
          v24 = v9;
          LOBYTE(v27[0]) = 0;
          v28 = 0;
          (*(*a1 + 240))(a1, &v22, v27);
        }

        v8 += v9;
        v7 = a2[2];
      }

      while (v8 < v7);
    }

    if ((*(*a1 + 208))(a1, v6))
    {
      v20 = a2[2];
      v21 = (*(*a1 + 48))(a1);
      DspLib::CPUMeasure::stop((a1 + 104), v20, v21);
    }
  }

  else
  {
    DspLib::AlgorithmBase::process();
  }
}

uint64_t DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(uint64_t a1, uint64_t a2)
{
  v4 = DspLib::AlgorithmBase::AlgorithmBase(a1, 0, 0, 0, 0, 0, 0);
  *v4 = &unk_1F591AE18;
  v5 = *(a2 + 16);
  *(v4 + 15) = *a2;
  v4[32] = v5;
  v4[33] = 0;
  v4[34] = 0;
  v4[35] = 0;
  v6 = DspLib::groupOffset(v4[30], *(*(v4[30] + 8) + 8));
  std::vector<float>::vector[abi:ne200100]((a1 + 288), v6);
  if (*(a1 + 296) != *(a1 + 288))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = *(a1 + 240);
      v10 = DspLib::parameterAddress(v9, v8 - 1);
      v11 = DspLib::AlgorithmParametersDefinition::operator[](v9, v10);
      v12 = *(a1 + 288);
      *(v12 + 4 * v7) = *(v11 + 12);
      v7 = v8++;
    }

    while (v7 < (*(a1 + 296) - v12) >> 2);
  }

  if (*(a1 + 256))
  {
    DspLib::algorithmFactory(**(a1 + 248));
  }

  return a1;
}

void sub_1DDC1041C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](va);
  DspLib::AlgorithmBase::~AlgorithmBase(v6);
  _Unwind_Resume(a1);
}

void DspLib::algorithmFactory(uint64_t a1)
{
  if (DspLib::operator==(a1, &DspLib::PowerGuard::Parameters::kDefinition))
  {
    operator new();
  }

  if (DspLib::operator==(a1, &DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition))
  {
    operator new();
  }

  if (DspLib::operator==(a1, &DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition))
  {
    operator new();
  }

  if (DspLib::operator==(a1, &DspLib::LoudspeakerController::Parameters::kDefinition))
  {
    operator new();
  }

  abort();
}

void *DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(void *a1, uint64_t a2)
{
  v4 = DspLib::AlgorithmBase::AlgorithmBase(a1, 0, 0, 0, 0, 0, 0);
  *v4 = &unk_1F591AE18;
  *(v4 + 240) = a2;
  *(v4 + 280) = 0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  v5 = DspLib::groupOffset(a2, *(*(a2 + 8) + 8));
  std::vector<float>::vector[abi:ne200100](a1 + 36, v5);
  if (a1[37] != a1[36])
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = a1[30];
      v9 = DspLib::parameterAddress(v8, v7 - 1);
      v10 = DspLib::AlgorithmParametersDefinition::operator[](v8, v9);
      v11 = a1[36];
      v12 = a1[37];
      *(v11 + 4 * v6) = *(v10 + 12);
      v6 = v7++;
    }

    while (v6 < (v12 - v11) >> 2);
  }

  return a1;
}

void sub_1DDC106C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 33;
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&a10);
  DspLib::AlgorithmBase::~AlgorithmBase(v10);
  _Unwind_Resume(a1);
}

uint64_t DspLib::AlgorithmBaseNewParameters::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v6 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  v8 = this[33];
  v7 = this[34];
  while (v8 != v7)
  {
    v9 = *v8++;
    v6 |= (*(*v9 + 24))(v9, a2, a3);
  }

  return v6 & 1;
}

uint64_t DspLib::AlgorithmBaseNewParameters::parameters(DspLib::AlgorithmBaseNewParameters *this, int a2)
{
  if (!a2)
  {
    return *(this + 36);
  }

  v2 = (a2 - 1);
  v3 = *(this + 33);
  if (v2 >= (*(this + 34) - v3) >> 3)
  {
    abort();
  }

  return (*(**(v3 + 8 * v2) + 152))(*(v3 + 8 * v2), 0);
}

uint64_t DspLib::AlgorithmBaseNewParameters::setParameters(uint64_t result, float *__src, uint64_t a3, int a4)
{
  v4 = result;
  if (a4)
  {
    v5 = (a4 - 1);
    v6 = *(result + 264);
    if (v5 >= (*(result + 272) - v6) >> 3)
    {
      abort();
    }

    v7 = *(**(v6 + 8 * v5) + 160);

    return v7();
  }

  else
  {
    v8 = *(result + 288);
    if (v8 != __src)
    {
      result = DspLib::copy(__src, a3, *(result + 288));
      v8 = v4[36];
    }

    v9 = v4[37];
    if (v8 != v9)
    {
      v10 = 0;
      do
      {
        *v8 = *v8;
        v11 = v4[30];
        v12 = (v10 + 1);
        v13 = DspLib::parameterAddress(v11, v10);
        result = DspLib::AlgorithmParametersDefinition::operator[](v11, v13);
        v14 = *(result + 16);
        v15 = *(result + 20);
        if (v15 >= *v8)
        {
          v15 = *v8;
        }

        if (*v8 >= v14)
        {
          v14 = v15;
        }

        *v8++ = v14;
        v10 = v12;
      }

      while (v8 != v9);
    }
  }

  return result;
}

float DspLib::AlgorithmBaseNewParameters::parameter(uint64_t *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return *(a1[36] + 4 * (DspLib::groupOffset(a1[30], a2) + HIDWORD(a2)));
  }

  v3 = (a3 - 1);
  v4 = a1[33];
  if (v3 >= (a1[34] - v4) >> 3)
  {
    abort();
  }

  v5 = *(**(v4 + 8 * v3) + 128);

  v5();
  return result;
}

uint64_t DspLib::AlgorithmBaseNewParameters::setParameter(uint64_t *a1, uint64_t a2, int a3, float a4)
{
  if (a3)
  {
    v5 = (a3 - 1);
    v6 = a1[33];
    if (v5 >= (a1[34] - v6) >> 3)
    {
      abort();
    }

    v7 = *(**(v6 + 8 * v5) + 136);

    return v7();
  }

  else
  {
    *(a1[36] + 4 * (DspLib::groupOffset(a1[30], a2) + HIDWORD(a2))) = a4;
    v10 = (*(*a1 + 152))(a1, 0);
    v11 = *(*a1 + 160);

    return v11(a1, v10, v9, 0);
  }
}

uint64_t DspLib::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = strlen(*a1);
  if (v5 != strlen(*a2) || memcmp(v4, *a2, v5))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);

  return DspLib::operator==(v7, v8);
}

{
  v4 = *a1;
  v5 = strlen(*a1);
  if (v5 != strlen(*a2) || memcmp(v4, *a2, v5))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);

  return DspLib::operator==(v7, v8);
}

void *DspLib::AlgorithmBaseNewParameters::uninitialize(void *this)
{
  this[28] = this[27];
  v1 = this[33];
  v2 = this[34];
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 32))(v3);
  }

  return this;
}

uint64_t DspLib::AlgorithmBaseNewParameters::reset(uint64_t this)
{
  v1 = *(this + 264);
  v2 = *(this + 272);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 168))(v3);
  }

  return this;
}

uint64_t DspLib::operator==(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = 1;
  LODWORD(v7) = 1;
  do
  {
    v7 = v7 & DspLib::operator==(*a1 + 16 * v5, *a2 + 16 * v5);
    v5 = v6;
  }

  while (a1[1] > v6++);
  return v7;
}

{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = 1;
  LODWORD(v7) = 1;
  do
  {
    v7 = v7 & DspLib::operator==(*a1 + 24 * v5, *a2 + 24 * v5);
    v5 = v6;
  }

  while (a1[1] > v6++);
  return v7;
}

BOOL DspLib::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = strlen(*a1);
  return v5 == strlen(*a2) && !memcmp(v4, *a2, v5) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20) && *(a1 + 16) == *(a2 + 16);
}

uint64_t DspLib::AlgorithmBase::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Utilities/DspLibBase.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 61);
  ++DspLibDebug::mAssertCounter;
  return result;
}

uint64_t DspLib::AlgorithmBase::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Utilities/DspLibBase.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 96);
  ++DspLibDebug::mAssertCounter;
  return result;
}

float DspLib::MozartCompressor::Curve::setParameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 164);
  v3 = *(a2 + 96);
  v4 = *(a2 + 28);
  if (*(a2 + 12) >= 0.5)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    v4 = *(a2 + 96);
    v5 = *(a2 + 164);
  }

  v6 = 1.0 / *(a2 + 8);
  v7 = *(a2 + 48);
  v8 = (v5 * (1.0 - v6)) - (*(a2 + 44) * (v7 - v6));
  v9 = ((v8 - (v2 * (1.0 - v6))) / (v6 - v7)) - (v8 / (1.0 - v7));
  v10 = v7 + -1.0;
  *(a1 + 12) = v10;
  v11 = -(v10 * *(a2 + 44));
  *(a1 + 24) = v11;
  *(a1 + 16) = *(a2 + 44) - v9;
  *(a1 + 20) = v9 + *(a2 + 44);
  *(a1 + 8) = *(a2 + 44);
  v12 = (1.0 / *(a2 + 8)) + -1.0;
  *(a1 + 44) = v12;
  v13 = (1.0 / *(a2 + 8)) + -1.0;
  *(a1 + 48) = v13;
  v14 = v12 * (*(a2 + 44) - v5);
  *(a1 + 52) = v14;
  *(a1 + 56) = -(v5 * v12);
  v15 = -(v2 * v13);
  *(a1 + 60) = v15;
  *(a1 + 64) = v5 - (v2 - v5);
  *(a1 + 68) = v5 + (v2 - v5);
  *(a1 + 36) = v2;
  *(a1 + 40) = v9;
  *(a1 + 28) = ((v15 - v14) - v11) / (v10 - v13);
  *(a1 + 32) = v5;
  *(a1 + 76) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 92);
  v16 = (1.0 / *(a2 + 88)) + -1.0;
  *(a1 + 84) = v16;
  *(a1 + 88) = -(v16 * v4);
  *(a1 + 92) = -(v16 * v3);
  result = *(a2 + 80);
  *(a1 + 72) = result;
  return result;
}

void DspLib::MozartCompressor::Curve::vectCurve(float *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v11 = *(a2 + 4 * i);
      v12 = a1[2];
      if (v12 > v11)
      {
        v14 = a1[14];
        v15 = (a1[13] + (a1[3] * v11)) + a1[6];
        v13 = a1[11];
      }

      else
      {
        v13 = a1[11];
        v14 = a1[14];
        if (a1[8] > v11)
        {
          v15 = v14 + (v13 * v11);
        }

        else
        {
          v15 = 0.0;
        }
      }

      v16 = a1[13];
      v17 = a1[3];
      v18 = a1[6];
      v20 = DspLib::MozartCompressor::curveInterpolate(a1, a1[4], (v16 + (v17 * a1[4])) + v18, a1[5], v14 + (v13 * a1[5]), v15, *(a2 + 4 * i));
      if (v20 < 0.0)
      {
        v20 = 0.0;
      }

      v21 = a1[18];
      if (v20 >= v21 || v12 <= v11)
      {
        v23 = v20;
      }

      else
      {
        v23 = a1[18];
      }

      v25 = DspLib::MozartCompressor::curveInterpolate(v19, a1[16], v14 + (v13 * a1[16]), a1[17], 0.0, v23, v11);
      v26 = a1[7];
      v27 = a1[12];
      v28 = a1[15];
      if (v26 <= v11)
      {
        if (a1[9] > v11)
        {
          v29 = v28 + (v27 * v11);
        }

        else
        {
          v29 = 0.0;
        }
      }

      else
      {
        v29 = (v16 + (v17 * v11)) + v18;
      }

      v30 = DspLib::MozartCompressor::curveInterpolate(v24, v26 - a1[10], v18 + (v16 + (v17 * (v26 - a1[10]))), v26 + a1[10], v28 + (v27 * (v26 + a1[10])), v29, v11);
      v31 = 0.0;
      if (v30 < 0.0)
      {
        v30 = 0.0;
      }

      if (v30 < v21 && v12 > v11)
      {
        v30 = v21;
      }

      v33 = a1[20];
      if (v33 <= v11)
      {
        v31 = a1[22] + (a1[21] * v11);
      }

      v34 = a1[24];
      v35 = v33 + v34;
      v36 = v33 - v34;
      if (v36 < v11 && v35 > v11)
      {
        v39 = (((v36 + v35) * 0.5) - v11) / (v36 - v35);
        if (v39 < 0.0)
        {
          v39 = -v39;
        }

        v38 = a1[22] + (a1[21] * v35);
        v31 = ((1.0 - (v39 + 0.5)) * ((v38 - ((v38 / (v35 - v36)) * v35)) + ((v38 / (v35 - v36)) * v11))) + ((v39 + 0.5) * v31);
      }

      v40 = a1[19];
      v41 = 0.0;
      if (v40 < v11)
      {
        v41 = a1[23] + (a1[21] * v11);
      }

      v42 = v40 - v34;
      if ((v40 - v34) < v11)
      {
        v43 = v34 + v40;
        if (v43 > v11)
        {
          v45 = (((v42 + v43) * 0.5) - v11) / (v42 - v43);
          if (v45 < 0.0)
          {
            v45 = -v45;
          }

          v44 = a1[23] + (a1[21] * v43);
          v41 = ((1.0 - (v45 + 0.5)) * ((v44 - ((v44 / (v43 - v42)) * v43)) + ((v44 / (v43 - v42)) * v11))) + ((v45 + 0.5) * v41);
        }
      }

      if (a4)
      {
        *(*a4 + 4 * i) = a1[1] + ((v25 + v31) * *a1);
      }

      if (a5)
      {
        *(*a5 + 4 * i) = a1[1] + ((v30 + v41) * *a1);
      }
    }
  }
}

void DspLib::MozartCompressor::AttackReleaseFilter::process(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, float *__C, vDSP_Length __N, int a8, uint64_t a9, unint64_t a10)
{
  if ((*a1 & 1) == 0)
  {
    *(a1 + 28) = 1065353216;
    DspLib::fill(__C, __N, 1.0);
  }

  if (a10)
  {
    v14 = 0;
    v15 = *(a1 + 28);
    do
    {
      v16 = *(a2 + 4 * v14);
      v17 = *(a4 + 4 * v14);
      if (v16 < v15)
      {
        v15 = v15 + ((v16 - v15) * *(a1 + 20));
        *(a1 + 28) = v15;
      }

      if (v17 > v15)
      {
        v15 = v15 * ((*(a1 + 8) * *(a9 + 4 * v14)) + 1.0);
        *(a1 + 28) = v15;
      }

      __C[v14++] = v15;
    }

    while (a10 > v14);
  }
}

void DspLib::MozartCompressor::Limiter::autoThresholdCompressorGain(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v12 = 0;
    v32 = *(a2 + 60);
    v13 = *(a2 + 48) + 1.0;
    v14 = -v13;
    v15 = 1.0 - v13;
    v16 = 1;
    while (1)
    {
      v17 = *(a5 + 4 * v12);
      v19 = *(a1 + 44) + (((v32 + (v14 * DspLib::amp2dBSafe(a1, v17, 0.000001))) / v15) * *(a1 + 40));
      v20 = -v19;
      if (v19 < -40.0)
      {
        v20 = 40.0;
      }

      v21 = DspLib::dB2Amp(v18, v20);
      v22 = v21 * (v17 * *(a3 + 4 * v12));
      v23 = *(a1 + 4);
      if (v22 <= v23)
      {
        v26 = *(a1 + 48) * v22;
        if (v26 >= v23)
        {
          goto LABEL_12;
        }

        if (*a1 != 1)
        {
          v23 = v23 * (1.0 - *(a1 + 16));
          goto LABEL_8;
        }

        v24 = v26 - v23;
        v25 = *(a1 + 16);
      }

      else
      {
        v24 = v22 - v23;
        v25 = *(a1 + 28);
      }

      v23 = v23 + (v24 * v25);
LABEL_8:
      *(a1 + 4) = v23;
LABEL_12:
      v27 = v17 / *(a1 + 36);
      if (v27 < 1.0)
      {
        v23 = v27 * v23;
        *(a1 + 4) = v23;
      }

      *(a1 + 36) = v17;
      if (v23 < 1.0)
      {
        *(a1 + 4) = 1065353216;
        v23 = 1.0;
      }

      v28 = *(a1 + 8);
      v29 = (3.0 - (v28 * v23)) * 0.5;
      if (v29 < 0.01)
      {
        v29 = 0.01;
      }

      v30 = v28 * v29;
      *(a1 + 8) = v30;
      *(a7 + 4 * v12) = v17 * v30;
      *(a1 + 52) = *(a1 + 8);
      v12 = v16;
      if (a4 <= v16++)
      {
        *(a1 + 56) = v21;
        return;
      }
    }
  }
}

void DspLib::MozartCompressor::Limiter::setParameters(uint64_t a1, uint64_t a2, float a3)
{
  *(a1 + 40) = *(a2 + 104);
  *(a1 + 44) = *(a2 + 108);
  *(a1 + 48) = DspLib::dB2Amp(a1, *(a2 + 140));
  *a1 = *(a2 + 148) != 0.0;
  v6 = expf(-1.0 / (((*(a2 + 40) / 2.2) * a3) / 1000.0));
  *(a1 + 12) = v6;
  *(a1 + 16) = 1.0 - v6;
  v7 = expf(-1.0 / (((*(a2 + 56) / 2.2) * a3) / 1000.0));
  *(a1 + 24) = v7;
  *(a1 + 28) = 1.0 - v7;
}

DspLib::MozartCompressor::Algorithm *DspLib::MozartCompressor::Algorithm::Algorithm(DspLib::MozartCompressor::Algorithm *this)
{
  v2 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::MozartCompressor::Parameters::kDefault, 0x35uLL, &DspLib::MozartCompressor::Parameters::kMinimum, 53, &DspLib::MozartCompressor::Parameters::kMaximum, 53);
  *v2 = &unk_1F591AF60;
  *(v2 + 241) = 1;
  DspLib::ChannelBuffer::ChannelBuffer((v2 + 248), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 296), 0, 0);
  *(this + 360) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1;
  *(this + 64) = 0;
  *(this + 520) = 0u;
  *(this + 126) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 67) = 1;
  *(this + 568) = 0;
  *(this + 552) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 149) = 1137180672;
  *(this + 87) = 0;
  *(this + 176) = 0;
  *(this + 91) = 0;
  *(this + 712) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 158) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 172) = 0;
  *(this + 184) = 730643660;
  *(this + 740) = 0;
  *(this + 744) = 0u;
  *(this + 760) = 0;
  *(this + 196) = 0;
  *(this + 48) = 0u;
  *(this + 197) = 1137180672;
  *(this + 111) = 0;
  *(this + 224) = 0;
  *(this + 115) = 0;
  *(this + 904) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 206) = 0;
  *(this + 220) = 0;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 52) = 0u;
  *(this + 232) = 730643660;
  *(this + 932) = 0;
  *(this + 290) = 0;
  *(this + 1240) = 0u;
  *(this + 157) = 0;
  *(this + 319) = 0;
  return this;
}

void sub_1DDC1180C(_Unwind_Exception *a1)
{
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 248));
  DspLib::AlgorithmBase::~AlgorithmBase(v1);
  _Unwind_Resume(a1);
}

uint64_t DspLib::MozartCompressor::Algorithm::initialize(DspLib::MozartCompressor::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    v5 = (*(*this + 64))(this);
    v6 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 248), v5, v6);
    v7 = (*(*this + 64))(this);
    v8 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 296), v7, v8);
    v9 = (*(*this + 64))(this);
    DspLib::Biquad::Filter::initialize((this + 360), v9, 3uLL);
    std::vector<std::vector<float>>::resize(this + 60, 1uLL);
    v10 = (*(*this + 64))(this);
    DspLib::RMS::initialize((this + 552), v10, *(this + 2));
    v11 = (*(*this + 64))(this);
    DspLib::RMS::initialize((this + 744), v11, *(this + 2));
    v12 = (*(*this + 64))(this);
    std::vector<DspLib::CircularDelay>::resize(this + 155, v12);
    *(this + 8) = 1;
    *(this + 136) = 1;
    *(this + 308) = 0;
    DspLib::RMS::setExcludeChannelMask(this + 552, *(this + 319));
    DspLib::RMS::setExcludeChannelMask(this + 744, *(this + 319));
    (*(*this + 160))(this);
    (*(*this + 168))(this);
  }

  return v4;
}

uint64_t DspLib::MozartCompressor::Algorithm::setExcludeChannelMask(DspLib::MozartCompressor::Algorithm *this, unsigned int a2)
{
  *(this + 319) = a2;
  DspLib::RMS::setExcludeChannelMask(this + 552, a2);
  v3 = *(this + 319);

  return DspLib::RMS::setExcludeChannelMask(this + 744, v3);
}

void DspLib::MozartCompressor::Algorithm::reset(DspLib::MozartCompressor::Algorithm *this)
{
  if (*(this + 8))
  {
    *(this + 241) = 1;
    *(this + 940) = 0;
    *(this + 144) = 0;
    *(this + 285) = 0;
    *(this + 239) = 814313567;
    *(this + 242) = 814313567;
    *(this + 245) = 814313567;
    *(this + 251) = 0;
    *(this + 1008) = 0;
    *(this + 1012) = 0;
    *(this + 1024) = 0;
    *(this + 1172) = 0x3F8000003F800000;
    *(this + 305) = 1065353216;
    *(this + 301) = 1065353216;
    *(this + 153) = 0x3F80000000000000;
    __asm { FMOV            V0.2S, #1.0 }

    *(this + 158) = _D0;
    *(this + 318) = 0;
    DspLib::MozartCompressor::Algorithm::clearAudioBuffers(this);
    DspLib::RMS::reset((this + 552));
    DspLib::RMS::reset((this + 744));
    v7 = *(this + 155);
    v8 = *(this + 156);
    while (v7 != v8)
    {
      DspLib::CircularDelay::reset(v7);
      v7 = (v7 + 32);
    }

    *(this + 135) = 0;
    v9 = *(this + 60);
    v10 = *(this + 61);
    while (v9 != v10)
    {
      v11 = *(v9 + 8);
      if (*v9 != v11)
      {
        bzero(*v9, v11 - *v9);
      }

      v9 += 24;
    }

    *(this + 126) = 0;

    DspLib::Biquad::SetupWrapper::reset((this + 408));
  }

  else
  {
    DspLib::MozartCompressor::Algorithm::reset();
  }
}

void DspLib::MozartCompressor::Algorithm::clearAudioBuffers(DspLib::MozartCompressor::Algorithm *this)
{
  if (*(this + 8))
  {
    v1 = *(this + 155);
    v2 = *(this + 156);
    while (v1 != v2)
    {
      DspLib::CircularDelay::reset(v1);
      v1 = (v1 + 32);
    }
  }

  else
  {
    DspLib::MozartCompressor::Algorithm::clearAudioBuffers();
  }
}

void DspLib::MozartCompressor::Algorithm::uninitialize(DspLib::MozartCompressor::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  DspLib::RMS::uninitialize((this + 552));
  DspLib::RMS::uninitialize((this + 744));
  std::vector<std::vector<float>>::resize(this + 60, 0);
  *(this + 135) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 360));
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 155);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 31);
  *(this + 35) = *(this + 34);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 37);
  *(this + 41) = *(this + 40);
}

void DspLib::MozartCompressor::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v5 = DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if (*(a1 + 8) == 1)
  {
    v6 = *(a1 + 24);
    if (*(v6 + 64) <= 0.5 || *(v6 + 72) >= 0.5)
    {
      *(a1 + 1128) = 0;
      *(a1 + 1028) = 0;
      *(a1 + 344) = DspLib::dB2Amp(v5, *(v6 + 36));
      v10 = 1.0;
    }

    else
    {
      *(a1 + 1128) = 1;
      v7 = *(v6 + 32);
      *(a1 + 1028) = 1065353216;
      *(a1 + 1032) = v7;
      *(a1 + 344) = DspLib::dB2Amp(v5, *v6);
      v10 = DspLib::dB2Amp(v8, *(*(a1 + 24) + 184));
    }

    *(a1 + 348) = v10;
    v11 = *(a1 + 24);
    if (v11[17] <= 0.5 || (v12 = v11[18], v12 >= 0.5))
    {
      *(a1 + 1164) = 0;
      *(a1 + 1220) = 1065353216;
      v12 = v11[18];
    }

    else
    {
      *(a1 + 1164) = 1;
    }

    *(a1 + 240) = v12 < 0.5;
    *(a1 + 352) = (v11[28] + 0.5) != 0;
    v13 = DspLib::dB2Amp(v9, v11[20]);
    *(a1 + 1160) = v13 * DspLib::dB2Amp(v14, *(*(a1 + 24) + 32));
    v67 = 0;
    v68[0] = 1;
    v15 = *(a1 + 24);
    v68[1] = *(v15 + 156);
    v69 = 0x3F11EB8500000000;
    v65 = 12;
    v66 = 0x4080000044D20000;
    v16 = *(v15 + 188);
    v17 = *(v15 + 192);
    v18 = *(a1 + 16);
    DspLib::Biquad::Design::ParametricEQ::design(v68, v18, 0, v19, &__p);
    DspLib::Biquad::Filter::setCoefficients(a1 + 360, &__p, 1, 0, 0x41uLL);
    v20 = *(a1 + 16);
    DspLib::Biquad::Design::ParametricEQ::design(&v65, v20, 0, v21, &__p);
    DspLib::Biquad::Filter::setCoefficients(a1 + 360, &__p, 1, 1, 0x41uLL);
    v22 = *(a1 + 16);
    v23 = v22 * 0.49;
    if ((v22 * 0.49) >= v16)
    {
      v23 = v16;
    }

    if (v16 < 1.0)
    {
      v23 = 1.0;
    }

    v24 = tan(v23 * 6.28318531 / v22 * 0.5);
    v25 = v24 * v24;
    v26 = __exp10(v17 * 0.05);
    *&v27 = v24 * 1.41421356 + 1.0 + v24 * v24;
    v28 = sqrt(v26 + v26);
    v29.f64[0] = v26 + v28 * v24 + v24 * v24;
    v29.f64[1] = v25 - v26 + v25 - v26;
    v30 = vdupq_lane_s64(v27, 0);
    v31.f64[0] = v26 - v28 * v24 + v24 * v24;
    v31.f64[1] = v25 + -1.0 + v25 + -1.0;
    __p = vcvt_f32_f64(vdivq_f64(v29, v30));
    v63 = vcvt_f32_f64(vdivq_f64(v31, v30));
    *v31.f64 = (v24 * -1.41421356 + 1.0 + v24 * v24) / *&v27;
    v64 = LODWORD(v31.f64[0]);
    DspLib::Biquad::Filter::setCoefficients(a1 + 360, &__p, 1, 2, 0x41uLL);
    v32 = *(a1 + 24);
    v33 = vcvtas_u32_f32(v32[44]);
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = v33 + vcvtad_u64_f64(*(a1 + 16) * v32[15] / 1000.0) - 1;
    if (v34 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34;
    }

    if (*(a1 + 1232) != v35 || *(a1 + 544) != v33)
    {
      *(a1 + 1232) = v35;
      *(a1 + 544) = v33;
      v36 = *(a1 + 1240);
      v37 = *(a1 + 1248);
      if (v36 == v37)
      {
        goto LABEL_24;
      }

      do
      {
        DspLib::CircularDelay::setLength(v36, v35);
        v36 = (v36 + 32);
      }

      while (v36 != v37);
      v33 = *(a1 + 544);
      if (v33)
      {
LABEL_24:
        *(a1 + 536) = v33;
        *(a1 + 540) = 0;
        v38 = 2 * v33 - 2;
      }

      else
      {
        v38 = -2;
      }

      std::vector<float>::vector[abi:ne200100](&__p, v38 + *(a1 + 1232));
      DspLib::makeLinearInterpolatorAndRaisedCosineCoeffs(__p, (v63 - __p) >> 2, *(a1 + 544), *(a1 + 1232));
      v39 = *(a1 + 544);
      v40 = (*(*a1 + 232))(a1);
      DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 432), v39, v40 / *(a1 + 544) + 1);
      DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 432), __p, (v63 - __p) >> 2);
      if (__p)
      {
        v63 = __p;
        operator delete(__p);
      }

      v32 = *(a1 + 24);
    }

    v41 = v32[1];
    if (v32[41] < v41)
    {
      v32[41] = v41;
    }

    DspLib::MozartCompressor::Curve::setParameters(a1 + 1028, v32);
    v42 = *(a1 + 16);
    v43 = v42 / *(a1 + 544);
    v44 = *(a1 + 24);
    v45 = *(v44 + 20) / 2.2;
    v46 = expf(-1.0 / ((v43 * (*(v44 + 16) / 2.2)) / 1000.0));
    *(a1 + 1144) = v46;
    *(a1 + 1148) = 1.0 - v46;
    v47 = expf(-1.0 / ((v43 * v45) / 1000.0));
    *(a1 + 1132) = v47;
    *(a1 + 1136) = 1.0 - v47;
    DspLib::MozartCompressor::Limiter::setParameters(a1 + 1168, v44, v43);
    LODWORD(v44) = (*(*a1 + 64))(a1);
    v48 = (*(*a1 + 48))(a1);
    LODWORD(v49) = *(a1 + 544);
    DspLib::RMS::initialize((a1 + 744), v44, v48 / v49);
    DspLib::RMS::setParameters(a1 + 744, 1, *(*(a1 + 24) + 84));
    v50 = *(a1 + 24);
    *(a1 + 936) = *(v50 + 116) != 0.0;
    *(a1 + 992) = DspLib::dB2Power(v51, *(v50 + 132));
    *(a1 + 984) = DspLib::dB2Power(v52, *(*(a1 + 24) + 136));
    *(a1 + 988) = DspLib::dB2Power(v53, -*(*(a1 + 24) + 136));
    v54 = *(a1 + 24);
    if (v54[3] < 0.5)
    {
      *(a1 + 936) = 0;
    }

    v55 = expf(-1.0 / ((v43 * v54[31]) / 1000.0));
    *(a1 + 948) = v55;
    *(a1 + 952) = 1.0 - v55;
    v56 = expf(-1.0 / ((v43 * v54[36]) / 1000.0));
    *(a1 + 964) = 1.0 - v56;
    *(a1 + 960) = (v56 * v56) * (v56 * v56);
    v57 = expf(-1.0 / ((v43 * v54[32]) / 1000.0));
    *(a1 + 972) = v57;
    *(a1 + 976) = 1.0 - v57;
    *(a1 + 1020) = (((v54[40] / 1000.0) * v43) + 0.5);
    *(a1 + 996) = DspLib::dB2Power(v58, v54[42] * 0.5);
    *(a1 + 1000) = DspLib::dB2Power(v59, *(*(a1 + 24) + 168) * -0.5);
    v60 = (*(*a1 + 64))(a1);
    DspLib::RMS::initialize((a1 + 552), v60, v43);
    DspLib::RMS::setParameters(a1 + 552, *(*(a1 + 24) + 120) > 0.5, *(*(a1 + 24) + 24));
    if (*(*(a1 + 24) + 52) > 0.5)
    {
      v61 = *(a1 + 1156) * *(a1 + 1220);
      *(a1 + 1264) = v61;
      *(a1 + 1268) = v61;
    }
  }
}

void sub_1DDC123A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::MozartCompressor::Algorithm::processBlock(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v26 = *MEMORY[0x1E69E9840];
  v6 = v2[2];
  if ((*(*v4 + 40))(v4, v1))
  {
    if (*(v5 + 241) == 1)
    {
      v7 = *(v5 + 1160);
      *(v5 + 1156) = v7;
      *(v5 + 1152) = v7;
      *(v5 + 1140) = v7;
      *(v5 + 241) = 0;
    }

    *v25 = *v3;
    *&v25[16] = v3[2];
    DspLib::multiply(v25, *(v5 + 344));
    if (*(v5 + 240) == 1)
    {
      v8 = *v3;
      if (*(v5 + 352) == 1)
      {
        v9 = *(v5 + 320);
        v10 = (*(v5 + 328) - v9) >> 3;
        *v25 = *v3;
        *&v25[8] = *(v3 + 1);
        v23 = v9;
        *&v24 = v10;
        *(&v24 + 1) = v6;
        DspLib::Biquad::Filter::process((v5 + 360), v25, &v23);
        v8 = v9;
      }

      v11 = (*(v5 + 280) - *(v5 + 272)) >> 3;
      v19 = *(v5 + 272);
      *&v20 = v11;
      v12 = *(v5 + 248);
      if (*(v5 + 256) == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = (v12[1] - *v12) >> 2;
      }

      *(&v20 + 1) = v13;
      v14 = (*(*v5 + 64))(v5);
      *v25 = v8;
      *&v25[8] = v14;
      *&v25[16] = v6;
      DspLib::DownSampler::process((v5 + 536), v25, &v19);
      v15 = *(&v20 + 1);
      *v25 = *(&v20 + 1);
      v23 = v19;
      v24 = v20;
      DspLib::RMS::process(v5 + 552, &v23, &v25[16], *(&v20 + 1));
      v23 = v15;
      if (*(v5 + 1164) == 1)
      {
        *v22 = v19;
        *&v22[8] = v20;
        DspLib::RMS::process(v5 + 744, v22, &v24 + 2, v15);
      }

      v16 = **(v5 + 248);
      DspLib::MozartCompressor::Algorithm::calculateGain(v5);
      v17 = v3[1];
      v18 = v3[2];
      *v22 = *v3;
      *&v22[8] = v17;
      *&v22[16] = v18;
      v21[0] = *v22;
      v21[1] = v17;
      v21[2] = v18;
      DspLib::MultiChannelCircularDelay::process((v5 + 1240), v22, v21);
      *v22 = *v3;
      *&v22[16] = v3[2];
      DspLib::multiply(v22, v16);
    }
  }

  else
  {
    DspLib::MozartCompressor::Algorithm::processBlock();
  }
}

void DspLib::MozartCompressor::Algorithm::calculateGain(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v38 = *MEMORY[0x1E69E9840];
  v36[256] = v8;
  v35 = v8;
  v33[1] = v8;
  v28 = v37;
  v29 = v8;
  *v26 = v36;
  v27 = v8;
  if (v8)
  {
    *(v1 + 944) = *v2;
  }

  if (*(v1 + 936) == 1)
  {
    DspLib::MozartCompressor::Algorithm::processGating(v1, v2, v3, v37);
  }

  else
  {
    DspLib::copy(v2, v3, v37);
  }

  v13 = *(*(v12 + 24) + 180);
  if (v13 <= 1.5)
  {
    if (v13 <= 0.5)
    {
      DspLib::fill(v34, v9, 1.0);
    }

    else
    {
      v14 = DspLib::MozartCompressor::Algorithm::audioActivityDetector_1(v12, v37, v9, v34);
    }
  }

  else
  {
    v14 = DspLib::MozartCompressor::Algorithm::audioActivityDetector_2(v12, v37, v9, v34);
  }

  if (v9)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v37[v15] = DspLib::power2dBSafe(v14, v37[v15], 1.0e-20) + -0.691;
      v15 = v16;
      v17 = v9 > v16++;
    }

    while (v17);
    *(v12 + 940) = v37[0];
  }

  DspLib::MozartCompressor::Curve::vectCurve((v12 + 1028), v37, v9, &v28, v26);
  DspLib::dB2Amp(v37, v9);
  DspLib::dB2Amp(*v26, v27);
  DspLib::MozartCompressor::AttackReleaseFilter::process(v12 + 1128, *v26, v27, v28, v29, v28, v29, v18, v34, v9);
  if (*(v12 + 1164) == 1)
  {
    v19 = *v26;
    if (v9)
    {
      v20 = 0;
      do
      {
        v19[v20] = sqrtf(*(v11 + 4 * v20)) * 0.92353;
        ++v20;
      }

      while (v9 > v20);
      v21 = v28;
      *(v12 + 1228) = *v19 * *v28;
    }

    else
    {
      v21 = v28;
    }

    DspLib::MozartCompressor::Limiter::autoThresholdCompressorGain(v12 + 1168, v12 + 1028, v19, v27, v21, v29, v21);
  }

  v22 = v28;
  if (v9)
  {
    v23 = 1;
    v24 = v28;
    do
    {
      v25 = *v24;
      if (*v24 < *(v12 + 1264))
      {
        *(v12 + 1264) = v25;
      }

      if (v25 > *(v12 + 1268))
      {
        *(v12 + 1268) = v25;
      }

      *v24 = *(v12 + 348) * *v24;
      ++v24;
      v17 = v9 > v23++;
    }

    while (v17);
  }

  v32 = v22;
  v33[0] = v7;
  v31[0] = &v32;
  v31[1] = 1;
  v31[2] = v29;
  v30[0] = v33;
  v30[1] = 1;
  v30[2] = v5;
  DspLib::PolyPhaseInterpolator::process((v12 + 432), v31, v30);
}

float *DspLib::MozartCompressor::Algorithm::processGating(float *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    for (i = 0; a3 > i; ++i)
    {
      v5 = *(a2 + 4 * i);
      v6 = result[245];
      v7 = result[242];
      if (v5 <= result[248])
      {
        goto LABEL_9;
      }

      if (v7 >= v5)
      {
        if (v7 <= v6)
        {
          goto LABEL_9;
        }

        v8 = result[240];
      }

      else
      {
        v8 = result[241] + 1.0;
      }

      v7 = v7 * v8;
      result[242] = v7;
LABEL_9:
      v9 = (v5 * result[238]) + (result[239] * result[237]);
      result[239] = v9;
      if (v5 > (v9 * result[246]) && v5 < (v7 * result[247]))
      {
        if (v6 >= v5)
        {
          v10 = result[243];
        }

        else
        {
          v10 = result[244] + 1.0;
        }

        v6 = v6 * v10;
        result[245] = v6;
      }

      *(a4 + 4 * i) = v6;
    }
  }

  return result;
}

uint64_t DspLib::MozartCompressor::Algorithm::audioActivityDetector_2(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = *(result + 1016);
    do
    {
      v6 = *(a2 + 4 * v4);
      v7 = *(result + 1004);
      if (v6 <= (v7 * *(result + 996)))
      {
        if (v6 < (v7 * *(result + 1000)))
        {
          *(result + 1004) = v6;
        }
      }

      else
      {
        *(result + 1004) = v6;
        v5 += *(result + 1020);
        *(result + 1016) = v5;
      }

      if (v5)
      {
        *(result + 1016) = --v5;
      }

      else
      {
        v5 = 0;
        if (v6 >= *(result + 992))
        {
          *(a4 + 4 * v4) = 0;
          goto LABEL_11;
        }
      }

      *(a4 + 4 * v4) = 1065353216;
      *(result + 1024) = 1;
LABEL_11:
      ++v4;
    }

    while (a3 > v4);
  }

  return result;
}

uint64_t DspLib::MozartCompressor::Algorithm::audioActivityDetector_1(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = *(result + 1008);
    v6 = *(result + 1012);
    while (1)
    {
      v7 = *(a2 + 4 * v4);
      v8 = *(result + 1004);
      if (v7 > (v8 * *(result + 996)))
      {
        *(result + 1004) = v7;
        v5 = 1;
        *(result + 1008) = 1;
        v8 = v7;
      }

      if (v7 < (v8 * *(result + 1000)))
      {
        v5 = 0;
        *(result + 1004) = v7;
        *(result + 1008) = 0;
      }

      if (v6 != v5)
      {
        break;
      }

      v9 = *(result + 1016);
      if (v9)
      {
        v10 = v9 - 1;
LABEL_11:
        *(result + 1016) = v10;
        goto LABEL_12;
      }

      if (v7 >= *(result + 992))
      {
        *(result + 1012) = v6;
        *(a4 + 4 * v4) = 0;
        goto LABEL_13;
      }

LABEL_12:
      *(result + 1012) = v5;
      *(a4 + 4 * v4) = 1065353216;
      *(result + 1024) = 1;
LABEL_13:
      ++v4;
      v6 = v5;
      if (a3 <= v4)
      {
        return result;
      }
    }

    v10 = *(result + 1020);
    goto LABEL_11;
  }

  return result;
}

void DspLib::MozartCompressor::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  v5 = (*(*a1 + 208))(a1);
  if (v5)
  {
    *a2 = DspLib::amp2dBSafe(v5, *(a1 + 1156), 0.000001);
    v7 = DspLib::amp2dBSafe(v6, *(a1 + 1220), 0.000001);
    *(a2 + 4) = v7;
    *(a2 + 48) = v7 + *a2;
    *(a2 + 8) = -DspLib::amp2dBSafe(v8, *(a1 + 1224), 0.000001);
    *(a2 + 20) = (DspLib::power2dBSafe(v9, *(a1 + 956), 1.0e-20) + -0.691) + *(*(a1 + 24) + 136);
    *(a2 + 28) = (DspLib::power2dBSafe(v10, *(a1 + 968), 1.0e-20) + -0.691) - *(*(a1 + 24) + 136);
    *(a2 + 24) = DspLib::power2dBSafe(v11, *(a1 + 944), 1.0e-20) + -0.691;
    v12 = *(a1 + 940);
    *(a2 + 16) = v12;
    LOBYTE(v12) = *(a1 + 1024);
    *(a2 + 52) = v12;
    *(a1 + 1024) = 0;
    v14 = DspLib::amp2dBSafe(v13, *(a1 + 1228), 0.000001);
    v15 = *(a2 + 24);
    if (v14 > v15)
    {
      v15 = v14;
    }

    *(a2 + 12) = v15;
    v16 = *(a1 + 1272);
    *(a2 + 32) = v14;
    *(a2 + 36) = v16;
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    *(a2 + 40) = v17[v16];
    *(a1 + 1272) = (v16 + 1) % 0x35u;
    *(a2 + 44) = DspLib::sum(v17, (v18 - v17) >> 2);
    *(a2 + 56) = DspLib::amp2dBSafe(v19, *(a1 + 1264), 0.000001);
    v21 = DspLib::amp2dBSafe(v20, *(a1 + 1268), 0.000001);
    v22 = *(a1 + 16);
    *(a2 + 60) = v21;
    *(a2 + 64) = v22;
    *(a2 + 68) = 0;
    *(a2 + 76) = 0;
  }
}

double DspLib::MozartCompressor::Algorithm::latencySamples(DspLib::MozartCompressor::Algorithm *this, double a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    DspLib::MozartCompressor::Algorithm::latencySamples();
  }

  LODWORD(a2) = *(this + 308);
  return *&a2;
}

void DspLib::MozartCompressor::Algorithm::~Algorithm(DspLib::MozartCompressor::Algorithm *this)
{
  DspLib::MozartCompressor::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591AF60;
  v10 = (this + 1240);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 904);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v2 = *(this + 107);
  if (v2)
  {
    *(this + 108) = v2;
    operator delete(v2);
  }

  v3 = *(this + 104);
  if (v3)
  {
    *(this + 105) = v3;
    operator delete(v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    *(this + 100) = v4;
    operator delete(v4);
  }

  v10 = (this + 712);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v5 = *(this + 83);
  if (v5)
  {
    *(this + 84) = v5;
    operator delete(v5);
  }

  v6 = *(this + 80);
  if (v6)
  {
    *(this + 81) = v6;
    operator delete(v6);
  }

  v7 = *(this + 75);
  if (v7)
  {
    *(this + 76) = v7;
    operator delete(v7);
  }

  v8 = *(this + 64);
  if (v8)
  {
    *(this + 65) = v8;
    operator delete(v8);
  }

  v10 = (this + 480);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 448);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 408));
  v9 = *(this + 48);
  if (v9)
  {
    *(this + 49) = v9;
    operator delete(v9);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 296));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 248));
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

float DspLib::MozartCompressor::curveInterpolate(DspLib::MozartCompressor *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  if (a7 <= a2 || a7 >= a4)
  {
    return a6;
  }

  v9 = (((a2 + a4) * 0.5) - a7) / (a2 - a4);
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  return (((a5 - (((a5 - a3) / (a4 - a2)) * a4)) + (((a5 - a3) / (a4 - a2)) * a7)) * (1.0 - (v9 + 0.5))) + ((v9 + 0.5) * a6);
}

void DspLib::MozartCompressor::Algorithm::reset()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MozartCompressor/dsp/DspLibMozartCompressor.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 364);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MozartCompressor::Algorithm::clearAudioBuffers()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MozartCompressor/dsp/DspLibMozartCompressor.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 405);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MozartCompressor::Algorithm::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MozartCompressor/dsp/DspLibMozartCompressor.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 596);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MozartCompressor::Algorithm::latencySamples()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MozartCompressor/dsp/DspLibMozartCompressor.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 892);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FIR::initialize(DspLib::FIR *a1, void *a2, unint64_t a3, uint64_t a4)
{
  *a1 = a4;
  *(a1 + 4) = a3;
  std::vector<float>::resize(a1 + 1, a3);
  v7 = *(a1 + 1);
  if (v7 != a2)
  {
    DspLib::copy(a2, a3, v7);
  }

  DspLib::FIR::configure(a1);
}

void DspLib::FIR::configure(DspLib::FIR *this)
{
  if (*this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      v3 = ((v2 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
      v4 = (this + 8);
      v5 = *(this + 2) - *(this + 1);
      if (v3 > v5 >> 2)
      {
        v6 = v3 - (v5 >> 2);
        std::vector<float>::resize(v4, v3);
        DspLib::clear((*(this + 2) - 4 * v6), v6);
        v2 = *(this + 4);
      }

      if (v2 >= 2)
      {
        v7 = *this + ((*(this + 2) - *(this + 1)) >> 2) - 1;
      }

      else
      {
        v7 = 0;
      }

      DspLib::LinearDelay::setLength(this + 5, v7);
    }
  }
}

void *DspLib::FIR::uninitialize(void *this)
{
  this[6] = this[5];
  this[2] = this[1];
  this[4] = 0;
  *this = 0;
  return this;
}

void *DspLib::FIR::scaleHistory(void *this, float a2)
{
  if (*this)
  {
    if (this[4])
    {
      return DspLib::multiply(this[5], (this[6] - this[5]) >> 2, a2);
    }
  }

  return this;
}

float **DspLib::FIR::process(float **result, void *__src, vDSP_Length a3, float *a4)
{
  if (a3)
  {
    v6 = result;
    if (result[4] == 1)
    {
      v7 = *result[1];

      return DspLib::multiply(__src, a3, a4, v7);
    }

    else
    {
      DspLib::copy(__src, a3, &result[6][-*result]);
      vDSP_conv(v6[5], 1, v6[2] - 1, -1, a4, 1, a3, v6[2] - v6[1]);
      v9 = v6[1];
      v8 = v6[2];
      v10 = v6[5];
      if (v8 == v9)
      {
        v11 = v6[6] - v10 - a3;
      }

      else
      {
        v11 = v8 - v9 - 1;
      }

      return DspLib::copy(&v10[a3], v11, v10);
    }
  }

  return result;
}

void DspLib::FastFIR::initialize(DspLib::FastFIR *a1, void *a2, unint64_t a3, uint64_t a4)
{
  *a1 = a4;
  std::vector<float>::resize(a1 + 1, a3);
  v7 = *(a1 + 1);
  if (v7 != a2)
  {
    DspLib::copy(a2, a3, v7);
  }

  DspLib::FastFIR::configure(a1);
}

void DspLib::FastFIR::configure(DspLib::FastFIR *this)
{
  if (*this)
  {
    v2 = *(this + 2) - *(this + 1);
    if (v2)
    {
      v3 = 0;
      v4 = *this + (v2 >> 2) - 1;
      v5 = 2 * v4;
      v6 = v4;
      do
      {
        v7 = qword_1DE0996C0[v3];
        v8 = v6 / v7;
        if (v8 <= 1.0)
        {
          v9 = 0;
        }

        else
        {
          v9 = vcvtpd_u64_f64(log2(v8));
        }

        v10 = v7 << v9;
        if (v10 < v5)
        {
          v5 = v10;
        }

        ++v3;
      }

      while (v3 != 4);
      v11 = *(this + 17);
      if (!v11 || v5 != *v11)
      {
        operator new();
      }

      std::vector<float>::vector[abi:ne200100](&__p, v5);
      DspLib::clear(__p, (v14 - __p) >> 2);
      if (*this == **(this + 17))
      {
        v12 = 0;
      }

      else
      {
        v12 = *this;
      }

      DspLib::circularCopy(*(this + 1), (*(this + 2) - *(this + 1)) >> 2, v12, __p, (v14 - __p) >> 2);
      DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(*(this + 17), __p, (v14 - __p) >> 2, this + 2);
      DspLib::operator*=(this + 32, 0.25 / **(this + 17));
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }
    }
  }
}

void DspLib::FastFIR::process(uint64_t a1, char *a2, unint64_t a3, DSPComplex *a4)
{
  vars8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = DspLib::LinearDelay::write((a1 + 112), a2, a3);
    v8 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);
    v10 = *(a1 + 136);
    v11 = *v10 >> 1;
    v17.realp = v12;
    v17.imagp = ((&v16 - v9) & 0xFFFFFFFFFFFFFFC0);
    v18 = v11;
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(v10, *(a1 + 112), (*(a1 + 120) - *(a1 + 112)) >> 2, &v17);
    v13 = *v17.realp;
    v14 = *v17.imagp;
    vDSP_zvmul(&v17, 1, (a1 + 32), 1, &v17, 1, v18, 1);
    v15 = *(a1 + 40);
    *v17.realp = v13 * **(a1 + 32);
    *v17.imagp = v14 * *v15;
    DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(*(a1 + 144), &v17, a4);
    if (a3 != *a1)
    {
      DspLib::copy(a4 + 4 * *a1 + -4 * a3, a3, a4);
    }
  }
}

void *DspLib::circularCopy(char *a1, uint64_t a2, uint64_t a3, char *__dst, unint64_t a5)
{
  v7 = a2;
  v9 = a2 + a3 - a5;
  if (a2 + a3 <= a5)
  {
    v10 = &__dst[4 * a3];
  }

  else
  {
    DspLib::copy(&a1[4 * a2 + -4 * v9], a2 + a3 - a5, __dst);
    v10 = &__dst[4 * a5 + -4 * (v7 - v9)];
    v7 -= v9;
  }

  return DspLib::copy(a1, v7, v10);
}

void *DspLib::LowFlow::Algorithm::Algorithm(DspLib::LowFlow::Algorithm *this)
{
  v1 = this + 0x2000;
  result = DspLib::AlgorithmBase::AlgorithmBase(this, &_ZGRN6DspLib7LowFlow10ParametersL8kDefaultE_, 0x38uLL, &_ZGRN6DspLib7LowFlow10ParametersL8kMinimumE_, 56, &_ZGRN6DspLib7LowFlow10ParametersL8kMaximumE_, 56);
  v3 = 0;
  *result = &unk_1F591B080;
  v4 = 730;
  v5 = 5420;
  do
  {
    v6 = &result[v3];
    *(v6 + 60) = 0;
    *(v6 + 244) = 0;
    v6[31] = 0;
    v6[32] = 0x42C8000000000000;
    *(v6 + 272) = 0;
    v7 = &result[v3 + 35];
    *(v6 + 104) = 0;
    v6[53] = 0;
    *(v6 + 432) = 0;
    *(v6 + 1138) = 0;
    *(v6 + 285) = 0uLL;
    *(v6 + 286) = 0uLL;
    *(v6 + 287) = 0uLL;
    *v7 = 0uLL;
    v7[1] = 0uLL;
    v7[2] = 0uLL;
    v7[3] = 0uLL;
    v7[4] = 0uLL;
    v7[5] = 0uLL;
    v7[6] = 0uLL;
    v7[7] = 0uLL;
    v6[675] = 1065353216;
    *(v6 + 1352) = 0;
    *(v6 + 5412) = 0x5D00000055;
    v3 += 702;
    *(result + v5) = xmmword_1DE097D00;
    LOBYTE(result[v4]) = 0;
    v4 += 702;
    v5 += 5616;
    v6[568] = 0;
  }

  while (v3 != 1404);
  v8 = 0;
  v9 = result + 11588;
  v10 = 1462;
  do
  {
    v11 = &result[v8];
    *(v11 + 2868) = 0;
    v11[1435] = 0;
    v12 = &v9[v8 * 8];
    *(v12 - 100) = 0;
    v13 = &result[v10];
    *(v13 - 172) = 0uLL;
    *(v13 - 23) = 0uLL;
    *(v13 - 25) = 0uLL;
    *(v12 - 3) = xmmword_1DE0996E0;
    *(v12 - 2) = xmmword_1DE0996F0;
    *(v12 - 1) = xmmword_1DE099700;
    *&v9[v8 * 8] = xmmword_1DE099710;
    *(v13 - 84) = 0;
    *(v13 - 92) = 0;
    *(v13 - 76) = 0;
    *(v13 - 4) = 0uLL;
    *(v13 - 3) = 0uLL;
    *(v13 - 2) = 0uLL;
    *(v13 - 2) = 0;
    *(v11 + 2922) = 1065353216;
    *(v12 + 52) = 1;
    v8 += 29;
    v10 += 29;
    *v13 = 0;
  }

  while (v8 != 58);
  *(v1 + 1872) = 0;
  result[1493] = 0;
  result[6] = 128;
  return result;
}

uint64_t DspLib::LowFlow::Algorithm::initialize(DspLib::LowFlow::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  v5 = (*(*this + 64))(this);
  if (v4)
  {
    v6 = v5 == 4;
    DspLib::LowFlow::AnalysisPath::initialize(this + 240, 0, v6);
    DspLib::LowFlow::Mitigator::initialize((this + 11472), 0, v6);
    DspLib::LowFlow::AnalysisPath::initialize(this + 5856, 1, v6);
    DspLib::LowFlow::Mitigator::initialize((this + 11704), 1, v6);
    *(this + 8) = 1;
    (*(*this + 160))(this);
  }

  (*(*this + 168))(this);
  return v4;
}

uint64_t *DspLib::LowFlow::Algorithm::uninitialize(DspLib::LowFlow::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  v2 = (this + 240);
  v3 = 11232;
  do
  {
    DspLib::LowFlow::AnalysisPath::uninitialize(v2);
    v2 = (v2 + 5616);
    v3 -= 5616;
  }

  while (v3);
  v4 = (this + 11472);
  v5 = 464;
  do
  {
    result = DspLib::LowFlow::Mitigator::uninitialize(v4);
    v4 = (v4 + 232);
    v5 -= 232;
  }

  while (v5);
  return result;
}

void DspLib::LowFlow::Algorithm::reset(DspLib::LowFlow::Algorithm *this)
{
  v2 = (this + 240);
  v3 = 11232;
  do
  {
    DspLib::LowFlow::AnalysisPath::reset(v2);
    v2 = (v2 + 5616);
    v3 -= 5616;
  }

  while (v3);
  v4 = (this + 11472);
  v5 = 464;
  do
  {
    DspLib::LowFlow::Mitigator::reset(v4);
    v4 = (v4 + 232);
    v5 -= 232;
  }

  while (v5);
}

void DspLib::LowFlow::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v5 = a1 + 0x2000;
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  v6 = *(a1 + 24);
  v7 = *v6;
  *(v5 + 3745) = v6[1] >= 0.5;
  *(v5 + 3744) = v7 >= 0.5;
  LODWORD(v6) = vcvtas_u32_f32(v6[5]);
  *(a1 + 11944) = v6;
  if (*(a1 + 8) == 1)
  {
    v8 = (a1 + 240);
    v9 = 11232;
    do
    {
      DspLib::LowFlow::AnalysisPath::setParameters(v8, *(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 2, *(a1 + 11944) << 7);
      v8 += 702;
      v9 -= 5616;
    }

    while (v9);
    v10 = a1 + 11472;
    v11 = 464;
    do
    {
      DspLib::LowFlow::Mitigator::setParameters(v10, *(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 2, *(a1 + 11944) << 7);
      v10 += 232;
      v11 -= 232;
    }

    while (v11);
  }
}

void DspLib::LowFlow::Algorithm::processBlock(uint64_t a1, void *a2)
{
  v28 = a1 + 11936;
  if ((*(a1 + 11936) & 1) == 0)
  {
    v2 = a2;
    v4 = a2[2];
    v5 = (*(*a1 + 64))(a1);
    if (v4)
    {
      v6 = v5;
      v7 = 0;
      v8 = a1 + 240;
      v30 = v2;
      v29 = v5;
      v27 = v4;
      do
      {
        v9 = 0;
        v31 = 0;
        v32 = 0;
        v10 = v4 - v7;
        v11 = &v31;
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = *(*v2 + 8 * v9);
          if (v6 == 4)
          {
            v15 = (*(*v2 + 8 * v9 + 16) + 4 * v7);
          }

          else
          {
            v15 = 0;
          }

          v16 = (v8 + 5616 * v9);
          v17 = (v14 + 4 * v7);
          (*(*a1 + 208))(a1);
          v18 = DspLib::LowFlow::AnalysisPath::process(v16, v17, v10, v15);
          v12 = 0;
          *v11 = *(v16 + 2);
          v11 = &v32;
          v9 = 1;
          v2 = v30;
          v6 = v29;
        }

        while ((v13 & 1) != 0);
        v19 = v18;
        if (*(v28 + 1) == 1)
        {
          v20 = fmaxf(*(&v31 + 1), 0.0);
          if (v20 < *(&v32 + 1))
          {
            v20 = *(&v32 + 1);
          }

          *(&v31 + 1) = v20;
          *(&v32 + 1) = v20;
        }

        v21 = 0;
        v22 = &v31;
        v23 = 1;
        v4 = v27;
        do
        {
          v24 = v23;
          if (v29 == 4)
          {
            v25 = (*(*v30 + 8 * v21 + 16) + 4 * v7);
          }

          else
          {
            v25 = 0;
          }

          DspLib::LowFlow::Mitigator::process(a1 + 11472 + 232 * v21, (*(*v30 + 8 * v21) + 4 * v7), v22, *(v8 + 5616 * v21 + 144), ((*(a1 + 11944) & 0x1FFFFFFFFFFFFFFLL) << 6) | 1, (*(*v30 + 8 * v21) + 4 * v7), v19, *(a1 + 5840), v25, v25, v26, v27);
          v23 = 0;
          v22 = &v32;
          v21 = 1;
        }

        while ((v24 & 1) != 0);
        v7 = (v19 + v7);
      }

      while (v7 < v4);
    }
  }
}

void DspLib::LowFlow::Algorithm::status(uint64_t a1, float *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  v5 = a1 + 240;
  v6 = 11232;
  do
  {
    DspLib::LowFlow::AnalysisPath::status(v5, a2);
    v5 += 5616;
    v6 -= 5616;
  }

  while (v6);
  v7 = a1 + 11472;
  v8 = 464;
  do
  {
    DspLib::LowFlow::Mitigator::status(v7, a2);
    v7 += 232;
    v8 -= 232;
  }

  while (v8);
}

uint64_t DspLib::LowFlow::Algorithm::setModelParameters(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, _DWORD *a5)
{
  if (!(*(*a1 + 40))(a1))
  {
    return 1;
  }

  DspLib::LowFlow::AnalysisPath::setModelParameters(a1 + 240, a2, a3, a4, a5, v10, v11, v12, v18, v20, v22, v24);
  if (a4)
  {
    v16 = a4 + 4096;
  }

  else
  {
    v16 = 0;
  }

  DspLib::LowFlow::AnalysisPath::setModelParameters(a1 + 5856, a2 + 36, (a3 + 4096), v16, a5, v13, v14, v15, v19, v21, v23, v25);
  return 0;
}

void DspLib::LowFlow::Algorithm::~Algorithm(DspLib::LowFlow::Algorithm *this)
{
  *this = &unk_1F591B080;
  v2 = (this + 11704);
  v3 = -464;
  do
  {
    DspLib::LowFlow::Mitigator::~Mitigator(v2);
    v2 = (v4 - 232);
    v3 += 232;
  }

  while (v3);
  v5 = (this + 5856);
  v6 = -11232;
  do
  {
    DspLib::LowFlow::AnalysisPath::~AnalysisPath(v5);
    v5 = (v7 - 5616);
    v6 += 5616;
  }

  while (v6);

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

{
  *this = &unk_1F591B080;
  v2 = (this + 11704);
  v3 = -464;
  do
  {
    DspLib::LowFlow::Mitigator::~Mitigator(v2);
    v2 = (v4 - 232);
    v3 += 232;
  }

  while (v3);
  v5 = (this + 5856);
  v6 = -11232;
  do
  {
    DspLib::LowFlow::AnalysisPath::~AnalysisPath(v5);
    v5 = (v7 - 5616);
    v6 += 5616;
  }

  while (v6);
  DspLib::AlgorithmBase::~AlgorithmBase(this);

  JUMPOUT(0x1E12BD160);
}

void DspLib::LowFlow::Mitigator::~Mitigator(DspLib::LowFlow::Mitigator *this)
{
  v4 = *(this + 28);
  v2 = (this + 224);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<DspLib::LinearDelay>::operator()[abi:ne200100](v2, v3);
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 25) = v5;
    operator delete(v5);
  }

  v6 = *(this + 23);
  *(this + 23) = 0;
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      *(v6 + 48) = v7;
      operator delete(v7);
    }

    v8 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v6);
    MEMORY[0x1E12BD160](v8, 0x10E0C40E0F8E434);
  }

  v9 = *(this + 20);
  if (v9)
  {
    *(this + 21) = v9;
    operator delete(v9);
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {
      *(v10 + 48) = v11;
      operator delete(v11);
    }

    v12 = DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v10);
    MEMORY[0x1E12BD160](v12, 0x10E0C40E0F8E434);
  }

  v13 = *(this + 3);
  if (v13)
  {
    *(this + 4) = v13;
    operator delete(v13);
  }
}

void DspLib::LowFlow::AnalysisPath::~AnalysisPath(DspLib::LowFlow::AnalysisPath *this)
{
  v2 = *(this + 543);
  if (v2)
  {
    *(this + 544) = v2;
    operator delete(v2);
  }

  v3 = *(this + 540);
  if (v3)
  {
    *(this + 541) = v3;
    operator delete(v3);
  }

  v4 = *(this + 538);
  *(this + 538) = 0;
  if (v4)
  {
    MEMORY[0x1E12BD160](v4, 0x1000C40BAFFE814);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  std::unique_ptr<DspLib::FFT::BufferedForwardSTFT>::~unique_ptr[abi:ne200100](this + 17);
  std::unique_ptr<DspLib::FFT::BufferedForwardSTFT>::~unique_ptr[abi:ne200100](this + 16);
  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 80));
  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }
}

uint64_t *std::unique_ptr<DspLib::FFT::BufferedForwardSTFT>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    v4 = DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v2);
    MEMORY[0x1E12BD160](v4, 0x10E0C4037C7F6FFLL);
  }

  return a1;
}

void DspLib::LoudspeakerManagerV1::PowerMeter::reset(DspLib::CircularDelay **this)
{
  DspLib::FIRDecimator::reset(this);
  v2 = this[12];
  v3 = this[13];
  while (v2 != v3)
  {
    *(v2 + 8) = 0;
    DspLib::CircularDelay::reset(v2);
    v2 = (v2 + 40);
  }

  v4 = this[17];
  v5 = this[18];
  if (v4 != v5)
  {
    bzero(v4, v5 - v4);
  }

  this[15] = 0;
}

void DspLib::LoudspeakerManagerV1::PowerMeter::setParameters(DspLib::LoudspeakerManagerV1::PowerMeter *this, float a2, float a3, unint64_t a4, double a5, const float *a6, unint64_t a7)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 21) = a2;
    *(this + 22) = a3;
  }

  std::vector<DspLib::MovingAverage>::clear[abi:ne200100](this + 12);
  std::vector<DspLib::MovingAverage>::resize(this + 12, a7);
  std::vector<std::vector<float>>::resize(this + 6, 2uLL);
  DspLib::FIRDecimator::setSrcParameters(this, 6uLL, a4);
  std::vector<float>::vector[abi:ne200100](&__p, 0x3DuLL);
  v18[0] = &unk_1F59193D0;
  v18[1] = DspLib::makeChebychevWindow;
  v18[3] = v18;
  DspLib::makeSincWindow(__p, (v17 - __p) >> 2, 6u, 0xAu, v18, 0.6);
  std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](v18);
  DspLib::FIRDecimator::setCoefficients(this, __p, (v17 - __p) >> 2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  *(this + 16) = a5 / *this;
  if (a7)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      DspLib::MovingAverage::setLength((*(this + 12) + 40 * v12), vcvtad_u64_f64(*(this + 16) * a6[v12]));
      v12 = v13++;
    }

    while (v12 < a7);
  }

  v15 = *(this + 17);
  v14 = (this + 136);
  v14[1] = v15;
  std::vector<float>::resize(v14, a7);
}

void sub_1DDC145B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DspLib::MovingAverage>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<DspLib::MovingAverage>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 40);
        v8 -= 40;
        v9 = v10;
        if (v10)
        {
          *(v3 - 32) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

int32x2_t DspLib::LoudspeakerManagerV1::PowerMeter::setSpVACalibration(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 1;
  result = vrev64_s32(*(a2 + 4));
  *(a1 + 84) = result;
  return result;
}

void DspLib::LoudspeakerManagerV1::PowerMeter::process(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v18[257] = *MEMORY[0x1E69E9840];
  if (*(v1 + 128) <= *(v1 + 120))
  {
    v9 = *(v1 + 96);
    v10 = *(v1 + 104);
    while (v9 != v10)
    {
      DspLib::MovingAverage::recalculateState(v9);
      v9 = (v9 + 40);
    }

    v8[15] = 0;
  }

  if (v5)
  {
    v17 = v8[4];
    v15[1] = v3;
    v15[2] = v17;
    v15[0] = v7;
    v14[0] = v18;
    v14[1] = &v16;
    v12[0] = v14;
    v12[1] = 2;
    v13 = v17;
    v11[0] = v15;
    v11[1] = 2;
    v11[2] = v5;
    DspLib::FIRDecimator::process(v8, v11, v12);
    if (v13)
    {
      DspLib::multiply();
    }
  }
}

float DspLib::LoudspeakerManagerV1::PowerMeter::status(uint64_t a1, uint64_t a2, float a3)
{
  LOBYTE(a3) = *(a1 + 80);
  *(a2 + 20) = LODWORD(a3);
  *(a2 + 24) = *(a1 + 84);
  result = *(a1 + 88);
  *(a2 + 28) = result;
  return result;
}

void DspLib::LoudspeakerManagerV1::PowerMeter::getPeakPowers(uint64_t a1, void *__dst)
{
  DspLib::copy(*(a1 + 136), (*(a1 + 144) - *(a1 + 136)) >> 2, __dst);
  v3 = *(a1 + 136);
  v4 = (*(a1 + 144) - v3) >> 2;

  DspLib::clear(v3, v4);
}

uint64_t *std::vector<DspLib::MovingAverage>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *(v4 + 32) = 0;
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 36) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::allocator<DspLib::MovingAverage>::allocate_at_least[abi:ne200100](result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *(v12 + 32) = 0;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 36) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = result[1];
    v14 = (v11 + *result - v13);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::MovingAverage>,DspLib::MovingAverage*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<DspLib::MovingAverage>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1DDC14A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::MovingAverage>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::MovingAverage>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::MovingAverage>,DspLib::MovingAverage*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      a4[4] = *(v6 + 32);
      v6 += 40;
      a4 += 5;
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

      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::MovingAverage>,DspLib::MovingAverage*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::MovingAverage>,DspLib::MovingAverage*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::MovingAverage>,DspLib::MovingAverage*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::MovingAverage>,DspLib::MovingAverage*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 40);
      v3 -= 40;
      v4 = v5;
      if (v5)
      {
        *(v1 - 32) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<DspLib::MovingAverage>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DspLib::MovingAverage>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::MovingAverage>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 40);
    *(a1 + 16) = v2 - 40;
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }
}

DspLib::MeisterStueck::Algorithm *DspLib::MeisterStueck::Algorithm::Algorithm(DspLib::MeisterStueck::Algorithm *this, char a2)
{
  v4 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::MeisterStueck::Parameters::kDefault, 0x8AuLL, &DspLib::MeisterStueck::Parameters::kMinimum, 138, &DspLib::MeisterStueck::Parameters::kMaximum, 138);
  *v4 = &unk_1F591B1A0;
  DspLib::ChannelBuffer::ChannelBuffer((v4 + 30), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 288), 0, 0);
  *(this + 336) = 1;
  *(this + 85) = 1065353216;
  *(this + 344) = 0;
  *(this + 87) = 1065353216;
  *(this + 352) = 0;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  *(this + 356) = v5;
  *(this + 372) = 0;
  *(this + 400) = 0;
  *(this + 101) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 49) = &unk_1F591AB20;
  *(this + 408) = 0;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 62) = 0;
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::FilterBank((this + 504));
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::FilterBank((this + 1096));
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 1720), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 1768), 0, 0);
  *(this + 2080) = 0;
  *(this + 2088) = 0;
  *(this + 2280) = 0;
  *(this + 1816) = 0u;
  *(this + 1832) = 0u;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 1873) = 0u;
  *(this + 372) = a2;
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setPhaseCompensationOnlyMode((this + 504), a2);
  return this;
}

void sub_1DDC14E34(_Unwind_Exception *a1)
{
  std::optional<DspLib::AudioMeter::Algorithm>::~optional(v1 + 2088);
  std::optional<DspLib::AudioMeter::Algorithm>::~optional(v1 + 1888);
  DspLib::MeisterStueck::Algorithm::Algorithm(v1, v4, (v1 + 1768), (v1 + 1720));
  v6 = (v1 + 1712);
  v7 = -32;
  do
  {
    std::unique_ptr<DspLib::MeisterStueck::Kernel::Algorithm>::reset[abi:ne200100](v6--, 0);
    v7 += 8;
  }

  while (v7);
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::~FilterBank((v1 + 1096));
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::~FilterBank((v1 + 504));
  DspLib::AnalyticSignalTransformAllpass::~AnalyticSignalTransformAllpass(v3);
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 288));
  DspLib::ChannelBuffer::~ChannelBuffer(v2);
  DspLib::AlgorithmBase::~AlgorithmBase(v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<DspLib::AudioMeter::Algorithm>::~optional(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    DspLib::ChannelBuffer::~ChannelBuffer((a1 + 136));
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 96) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      *(a1 + 72) = v4;
      operator delete(v4);
    }

    v6 = (a1 + 40);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  return a1;
}

uint64_t DspLib::MeisterStueck::Algorithm::initialize(DspLib::MeisterStueck::Algorithm *this, int a2, double a3)
{
  v5 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  v6 = v5;
  if (a2 != 1 && (*(this + 372) & 1) != 0)
  {
    DspLib::MeisterStueck::Algorithm::initialize();
  }

  else if (v5)
  {
    v7 = (*(*this + 64))(this);
    v8 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 240), v7, v8);
    v9 = (*(*this + 64))(this);
    v10 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 288), v9, v10);
    v11 = (*(*this + 64))(this);
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::initialize((this + 504), v11, *(this + 2));
    *(this + 8) = 1;
    (*(*this + 160))(this);
    v12 = (*(*this + 208))(this);
    (*(*this + 216))(this, v12);
  }

  return v6;
}

void DspLib::MeisterStueck::Algorithm::uninitialize(DspLib::MeisterStueck::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  v2 = (this + 1688);
  v3 = 32;
  do
  {
    std::unique_ptr<DspLib::MeisterStueck::Kernel::Algorithm>::reset[abi:ne200100](v2++, 0);
    v3 -= 8;
  }

  while (v3);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 215);
  *(this + 219) = *(this + 218);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 221);
  *(this + 225) = *(this + 224);
  v4 = this + 1864;
  do
  {
    v5 = *&v4[v3];
    *&v4[v3] = 0;
    if (v5)
    {
      MEMORY[0x1E12BD160](v5, 0x1000C4027586B93);
    }

    v3 += 8;
  }

  while (v3 != 24);
  DspLib::AnalyticSignalTransformAllpass::uninitialize((this + 392));
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::uninitialize((this + 504));
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::uninitialize((this + 1096));
  std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1888);
  std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 2088);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 30);
  *(this + 34) = *(this + 33);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 36);
  *(this + 40) = *(this + 39);
}

DspLib::MeisterStueck::Kernel::Algorithm *std::unique_ptr<DspLib::MeisterStueck::Kernel::Algorithm>::reset[abi:ne200100](DspLib::MeisterStueck::Kernel::Algorithm **a1, DspLib::MeisterStueck::Kernel::Algorithm *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DspLib::MeisterStueck::Kernel::Algorithm::~Algorithm(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void DspLib::MeisterStueck::Algorithm::reset(DspLib::MeisterStueck::Algorithm *this)
{
  v2 = 0;
  v3 = this + 1688;
  do
  {
    v4 = *&v3[v2];
    if (v4)
    {
      DspLib::MeisterStueck::Kernel::Algorithm::reset(v4);
    }

    v2 += 8;
  }

  while (v2 != 32);
  for (i = 0; i != 24; i += 8)
  {
    v6 = *(this + i + 1864);
    if (v6)
    {
      v6[2] = 0;
      v6[4] = 0;
      v6[6] = 0;
    }
  }

  if (*(this + 2080))
  {
    DspLib::AudioMeter::Algorithm::reset((this + 1888));
  }

  if (*(this + 2280) == 1)
  {
    DspLib::AudioMeter::Algorithm::reset((this + 2088));
  }

  DspLib::AnalyticSignalTransformAllpass::reset((this + 392));
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::reset((this + 504));

  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::reset((this + 1096));
}

void DspLib::MeisterStueck::Algorithm::setMeteringIsEnabled(DspLib::MeisterStueck::Algorithm *this, char a2)
{
  *(this + 96) = a2;
  if ((*(this + 372) & 1) == 0)
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
      std::optional<DspLib::AudioMeter::Algorithm>::operator=[abi:ne200100]<DspLib::AudioMeter::Algorithm,void>(this + 1888, &v10);
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
      std::optional<DspLib::AudioMeter::Algorithm>::operator=[abi:ne200100]<DspLib::AudioMeter::Algorithm,void>(this + 2088, &v10);
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
      v3 = (*(*this + 64))(this);
      v4 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 1888), v3, v4);
      v5 = (*(*this + 64))(this);
      v6 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 2088), v5, v6);
      v7 = *(this + 3);
      DspLib::AudioMeter::Algorithm::setParameters(this + 1888, v7 + 488);
      DspLib::AudioMeter::Algorithm::setParameters(this + 2088, v7 + 488);
    }

    else
    {
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 1888);
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 2088);
    }

    for (i = 1688; i != 1720; i += 8)
    {
      v9 = *(this + i);
      if (v9)
      {
        *(v9 + 112) = (*(*this + 208))(this);
      }
    }
  }
}

void DspLib::MeisterStueck::Algorithm::setParameter(DspLib::MeisterStueck::Algorithm *this, uint64_t a2, float a3)
{
  if (a2 == 135)
  {
    v5 = (*(*this + 104))(this);
    if (!DspLib::isEqual(v5, a3, v6, 1.0e-20))
    {
      v8 = *(this + 3);
      *(v8 + 540) = a3;
      DspLib::MeisterStueck::Algorithm::applyAutomation(this, v8);

      DspLib::MeisterStueck::Algorithm::updateAutomatableParameters(this);
    }
  }

  else
  {
    *(*(this + 3) + 4 * a2) = a3;
    v7 = *(*this + 160);

    v7();
  }
}

uint64_t DspLib::MeisterStueck::Algorithm::applyAutomation(void *a1, uint64_t a2)
{
  result = (*(*a1 + 104))(a1, 135);
  v6 = a1[227];
  v7 = a1[228];
  if (v6 != v7)
  {
    v8 = v5;
    do
    {
      v9 = *v6;
      result = DspLib::MeisterStueck::Automation::automationForParameter((a1 + 227), *v6);
      v10 = *result;
      v11 = *(result + 8) - *result;
      if (v11)
      {
        if (v11 != 8 && *v10 < v8)
        {
          if (*(v10 + v11 - 8) <= v8)
          {
            v13 = *(v10 + v11 - 4);
          }

          else
          {
            v14 = v11 >> 3;
            v15 = 2;
            v16 = 1;
            while (1)
            {
              v17 = v10[2 * v15 - 4];
              v18 = v10[2 * v16];
              if (v17 <= v8 && v18 >= v8)
              {
                break;
              }

              v16 = v15;
              if (v14 <= v15++)
              {
                abort();
              }
            }

            v21 = v10[2 * v15 - 3];
            v13 = v21 + ((v8 - v17) * ((v10[2 * v16 + 1] - v21) / (v18 - v17)));
          }
        }

        else
        {
          v13 = v10[1];
        }
      }

      else
      {
        v13 = 0.0;
      }

      *(a2 + 4 * v9) = v13;
      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void DspLib::MeisterStueck::Algorithm::updateAutomatableParameters(DspLib::MeisterStueck::Algorithm *this)
{
  v1 = *(this + 227);
  v2 = *(this + 228);
  if (v1 != v2)
  {
    v4 = this + 1688;
    do
    {
      v5 = *v1;
      if ((*(*this + 40))(this))
      {
        if (v5 > 0x63)
        {
          if (v5 == 120 || v5 == 100)
          {
            DspLib::MeisterStueck::Algorithm::setInputAndOutputGainParameters(this);
          }
        }

        else
        {
          v6 = v5 / 0x19u;
          if (v5 % 0x19u == 23)
          {
            DspLib::MeisterStueck::Algorithm::setFilterbankGains(this);
          }

          else
          {
            v7 = *&v4[8 * v6];
            if (v7)
            {
              DspLib::MeisterStueck::Kernel::Algorithm::setParameters(v7, *(this + 3) + 4 * (25 * v6));
            }
          }
        }
      }

      ++v1;
    }

    while (v1 != v2);
  }
}

void DspLib::MeisterStueck::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if (!(*(*a1 + 40))(a1))
  {
    return;
  }

  DspLib::MeisterStueck::Algorithm::applyAutomation(a1, *(a1 + 24));
  v5 = *(a1 + 24);
  if (vcvtas_u32_f32(v5[134]) >= 3 && v5[131] >= 0.5)
  {
    *(a1 + 336) = 0;
  }

  else
  {
    v6 = vcvtas_u32_f32(v5[132]);
    if ((*(a1 + 336) & 1) == 0 && v6 != 2)
    {
      for (i = 0; i != 24; i += 8)
      {
        v8 = *(a1 + 1864 + i);
        if (v8)
        {
          v8[2] = 0;
          v8[4] = 0;
          v8[6] = 0;
        }
      }
    }

    *(a1 + 336) = v6 != 2;
    if (v6 != 2)
    {
      if ((*(a1 + 400) & 1) == 0)
      {
        v9 = (*(*a1 + 64))(a1);
        DspLib::AnalyticSignalTransformAllpass::initialize((a1 + 392), v9);
      }

      goto LABEL_16;
    }
  }

  DspLib::AnalyticSignalTransformAllpass::uninitialize((a1 + 392));
LABEL_16:
  if (*(*(a1 + 24) + 472) >= 0.5)
  {
    *(a1 + 376) = 0;
    *(a1 + 384) = 0;
  }

  else
  {
    if (*(a1 + 336) == 1)
    {
      if (*(a1 + 372))
      {
        v10 = DspLib::MeisterStueck::Algorithm::processAnalyticalPhaseCompensator;
      }

      else
      {
        v10 = DspLib::MeisterStueck::Algorithm::processAnalyticalSignal;
      }
    }

    else if (*(a1 + 372))
    {
      v10 = DspLib::MeisterStueck::Algorithm::processRegularPhaseCompensator;
    }

    else
    {
      v10 = DspLib::MeisterStueck::Algorithm::processRegularSignal;
    }

    *(a1 + 376) = v10;
    *(a1 + 384) = 0;
  }

  DspLib::MeisterStueck::Algorithm::setFilterbankParameters(a1);
  DspLib::MeisterStueck::Algorithm::setFilterbankGains(a1);
  DspLib::MeisterStueck::Algorithm::setInputAndOutputGainParameters(a1);
  DspLib::MeisterStueck::Algorithm::setSRCParameters(a1);
  DspLib::MeisterStueck::Algorithm::setCompressorKernelParameters(a1);

  DspLib::MeisterStueck::Algorithm::setOSCFilterParameters(a1, v11);
}

void DspLib::MeisterStueck::Algorithm::setFilterbankParameters(DspLib::MeisterStueck::Algorithm *this)
{
  v2 = (*(*this + 152))(this, 0);
  DspLib::copy((v2 + 404), 15, __dst);
  DspLib::MeisterStueck::Algorithm::computeBandGains(this, &v12);
  v3 = (*(this + 3) + 88);
  v4 = 44;
  v5.n128_u32[0] = 0.5;
  v6.n128_u64[0] = 0;
  v7.n128_u32[0] = 1.0;
  do
  {
    v8 = *v3;
    v3 += 25;
    if (v8 < 0.5)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    *&__dst[v4] = v9;
    v4 += 4;
  }

  while (v4 != 60);
  if (*(this + 336))
  {
    if ((*(this + 372) & 1) == 0)
    {
      v10 = (*(*this + 64))(this, v5, v6, v7);
      DspLib::FourBandRandomOrderLrFilterBank::FilterBank::initialize((this + 1096), v10, *(this + 2));
    }
  }

  else
  {
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::uninitialize((this + 1096));
  }

  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setParameters(this + 504, __dst, 15);
  if (*(this + 1120) == 1)
  {
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setParameters(this + 1096, __dst, 15);
  }
}

void DspLib::MeisterStueck::Algorithm::setFilterbankGains(DspLib::MeisterStueck::Algorithm *this)
{
  DspLib::clear(v4, 4uLL);
  DspLib::MeisterStueck::Algorithm::computeBandGains(this, v4);
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setBandGains(this + 504, v4, 4, v2);
  if (*(this + 1120) == 1)
  {
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::setBandGains(this + 1096, v4, 4, v3);
  }
}

uint64_t DspLib::MeisterStueck::Algorithm::setInputAndOutputGainParameters(uint64_t this)
{
  if ((*(this + 372) & 1) == 0)
  {
    v1 = this;
    *(this + 340) = DspLib::dB2Amp(this, *(*(this + 24) + 400));
    isEqual = DspLib::isEqual(v2, *(*(v1 + 24) + 400), 0.0, 1.0e-20);
    *(v1 + 344) = !isEqual;
    *(v1 + 348) = DspLib::dB2Amp(isEqual, *(*(v1 + 24) + 480));
    this = DspLib::isEqual(v4, *(*(v1 + 24) + 480), 0.0, 1.0e-20);
    *(v1 + 352) = this ^ 1;
  }

  return this;
}

uint64_t DspLib::MeisterStueck::Algorithm::setSRCParameters(uint64_t this)
{
  if ((*(this + 372) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 24);
    v3 = vcvtas_u32_f32(v2[134]);
    v4 = vcvtas_u32_f32(v2[132]);
    if (v3)
    {
      v5 = 100.0;
      if (v4 != 1)
      {
        v5 = 65.0;
      }
    }

    else if (v4 == 1)
    {
      (*(*this + 112))(this, 130);
    }

    else
    {
      v5 = v2[130];
    }

    v6 = 0;
    v7 = 0;
    v8 = fabsf(v5);
    v9 = 88;
    do
    {
      v10 = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::orderForCrossoverPoint((v1 + 504), v6);
      v11 = vcvtas_u32_f32(vcvts_n_f32_u32(v10, 1uLL));
      if (v3)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v13 = *(v1 + 16);
      v14 = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::xOverFrequency((v1 + 504), v6);
      *v15.i32 = exp2f(v8 / (v12 * 6.0));
      v16 = (v13 / (v14 * (*v15.i32 + *v15.i32)));
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = (v13 / (v14 * (*v15.i32 + *v15.i32)));
      }

      v15.i32[0] = *(*(v1 + 24) + v9);
      v18 = v1 + 8 * v6;
      v19 = v1 + 4 * v6;
      if (*v15.i32 < 0.5 || v16 < 2 || (this = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::numActiveBands((v1 + 504), v15), v7 >= this - 1))
      {
        *(v19 + 356) = 1;
        this = *(v18 + 1864);
        *(v18 + 1864) = 0;
        if (this)
        {
          this = MEMORY[0x1E12BD160](this, 0x1000C4027586B93);
        }
      }

      else
      {
        if (!*(v18 + 1864))
        {
          operator new();
        }

        if (*(v19 + 356) != v17)
        {
          *(v19 + 356) = v17;
          v20 = *(v18 + 1864);
          v20[2] = 0;
          v20[3] = v17;
          v20[4] = 0;
          v20[5] = v17;
          v20[6] = 0;
          *v20 = v17;
          v20[1] = v17;
        }
      }

      if (*(*(v1 + 24) + v9) >= 0.5)
      {
        ++v7;
      }

      ++v6;
      v9 += 100;
    }

    while (v6 != 3);
  }

  return this;
}

void DspLib::MeisterStueck::Algorithm::setCompressorKernelParameters(DspLib::MeisterStueck::Algorithm *this)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*(this + 372) & 1) == 0)
  {
    DspLib::clear(v35, 4uLL);
    if (*(*(this + 3) + 484) >= 0.5)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0.0;
      v7 = v35;
      v8 = 88;
      v9 = 0.0;
      do
      {
        v3.i32[0] = *(*(this + 3) + v8);
        if (*v3.i32 >= 0.5)
        {
          v10 = 20000.0;
          v11 = 20000.0;
          if (v4 != 24)
          {
            v10 = 20000.0;
            if (v5 < DspLib::FourBandRandomOrderLrFilterBank::FilterBank::numActiveBands((this + 504), v3) - 1)
            {
              v10 = *(&DspLib::MeisterStueck::Parameters::kDefault + v4 + 404);
            }

            active = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::numActiveBands((this + 504), v12);
            if (v5 >= active - 1)
            {
              v11 = 20000.0;
            }

            else
            {
              v11 = *(*(this + 3) + v4 + 404);
            }
          }

          *v7 = DspLib::amp2dBSafe(active, (v10 - v6) / (v11 - v9), 0.000001);
          ++v5;
          v6 = v10;
          v9 = v11;
        }

        v4 += 8;
        ++v7;
        v8 += 100;
      }

      while (v4 != 32);
    }

    v13 = 0;
    v14 = -400;
    v15 = 1688;
    do
    {
      if (*(*(this + 3) + v14 + 488) >= 0.5)
      {
        if (!*(this + v15))
        {
          operator new();
        }

        v16 = (*(*this + 48))(this);
        v17 = *(this + v13 * 4 + 356);
        v18 = (*(*this + 232))(this);
        v19 = v16;
        DspLib::MeisterStueck::Kernel::Algorithm::initialize(*(this + v15), roundf(v19 / v17), (v18 + *(this + v13 * 4 + 356) - 1) / *(this + v13 * 4 + 356));
        v20 = *(this + 3);
        v21 = v20 + v14;
        *(v21 + 464) = *(v20 + 476);
        *(v21 + 476) = v35[v13];
        v22 = 0;
        if (vcvtas_u32_f32(*(v20 + 536)) <= 1)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = 20.0;
        }

        *(v21 + 432) = v23;
        if (*(v20 + 524) >= 0.5)
        {
          v22 = *(v20 + 464);
        }

        *(v21 + 408) = v22;
        LOBYTE(v22) = *(this + 336);
        *(v21 + 496) = v22;
        v24 = (*(*this + 64))(this);
        v25 = (*(*this + 232))(this);
        DspLib::MeisterStueck::Kernel::ScratchArea::allocate((this + 1720), v24, v25, *(this + 336));
        v26 = *(this + v15);
        v27 = (*(*this + 152))(this, 0);
        DspLib::MeisterStueck::Kernel::Algorithm::setParameters(v26, v27 + v14 + 400);
        if (*(*(this + 3) + 472) >= 0.5)
        {
          v28 = *(this + v15);
          *v28 = 1065353216;
          DspLib::MeisterStueck::Kernel::Algorithm::setParameters(v28, v28);
        }

        if ((*(this + 336) & 1) == 0)
        {
          v29 = *(this + v15);
          v30 = dword_1DE099A00[v13];
          *(v29 + 64) = dword_1DE0999F0[v13];
          DspLib::MeisterStueck::Kernel::Algorithm::setParameters(v29, v29);
          v31 = *(this + v15);
          *(v31 + 28) = v30;
          DspLib::MeisterStueck::Kernel::Algorithm::setParameters(v31, v31);
          v32 = *(this + v15);
          *(v32 + 20) = 0;
          DspLib::MeisterStueck::Kernel::Algorithm::setParameters(v32, v32);
        }

        v33 = *(this + v15);
        *(v33 + 112) = (*(*this + 208))(this);
      }

      else
      {
        std::unique_ptr<DspLib::MeisterStueck::Kernel::Algorithm>::reset[abi:ne200100]((this + v15), 0);
      }

      ++v13;
      v15 += 8;
      v14 += 100;
    }

    while (v14);
    if (*(this + 336))
    {
      v34 = *(this + 214);
      if (v34)
      {
        *(v34 + 20) = 0;
        DspLib::MeisterStueck::Kernel::Algorithm::setParameters(v34, v34);
      }
    }
  }
}

void DspLib::MeisterStueck::Algorithm::setOSCFilterParameters(DspLib::MeisterStueck::Algorithm *this, uint8x8_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ((*(this + 372) & 1) == 0)
  {
    v16[0] = 0;
    v16[1] = 0;
    v15[0] = 0;
    v15[1] = 0;
    active = DspLib::MeisterStueck::Algorithm::activeCrossOverFrequencies(this, v16, a2, 4, v15, 4uLL);
    v12 = 0.0;
    v13 = 0;
    v14 = 0;
    v10[0] = *(*(this + 3) + 532) >= 0.5;
    v4 = 0;
    v11 = (*(*this + 64))(this);
    v5 = (this + 356);
    v6 = this + 1688;
    v7 = 88;
    while (*(*(this + 3) + v7) < 0.5)
    {
LABEL_11:
      ++v5;
      v6 += 8;
      v7 += 100;
      if (v7 == 488)
      {
        return;
      }
    }

    v8 = *(this + 2);
    v12 = (v8 / *v5);
    v14 = *(v15 + v4);
    if (v4)
    {
      if (v4 == active)
      {
        LODWORD(v13) = *(v16 + (active - 1));
        v9 = 0;
LABEL_10:
        HIDWORD(v13) = v9;
        DspLib::MeisterStueck::OSCFilter::setParameters((*v6 + 432), v10);
        ++v4;
        goto LABEL_11;
      }

      LODWORD(v13) = *(v16 + v4 - 1);
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v9 = *(v16 + v4);
    goto LABEL_10;
  }
}

void DspLib::MeisterStueck::Algorithm::status(uint64_t a1, float *a2, vDSP_Length __N)
{
  if (*(a1 + 8))
  {
    DspLib::clear(a2, __N);
    v5 = (*(*a1 + 64))(a1);
    v6 = *(a1 + 16);
    a2[1] = v5;
    a2[2] = v6;
    if ((*(a1 + 372) & 1) == 0)
    {
      v7 = 0;
      v8 = (a2 + 67);
      do
      {
        v9 = *(a1 + 1688 + v7);
        if (v9)
        {
          DspLib::MeisterStueck::Kernel::Algorithm::status(v9, v8);
        }

        v8 += 28;
        v7 += 8;
      }

      while (v7 != 32);
    }

    if ((*(*a1 + 208))(a1))
    {
      DspLib::AudioMeter::Algorithm::status((a1 + 1888), a2 + 3, 0x20uLL);

      DspLib::AudioMeter::Algorithm::status((a1 + 2088), a2 + 35, 0x20uLL);
    }

    else
    {
      DspLib::fill(a2 + 3, 0x20uLL, -100.0);

      DspLib::fill(a2 + 35, 0x20uLL, -100.0);
    }
  }

  else
  {
    DspLib::MeisterStueck::Algorithm::status();
  }
}

void DspLib::MeisterStueck::Algorithm::processBlock(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 2);
  if ((*(*a1 + 40))(a1))
  {
    if (v4)
    {
      if (*(a1 + 344) == 1)
      {
        v15 = *a2;
        v16 = *(a2 + 2);
        DspLib::multiply(&v15, *(a1 + 340));
      }

      v5 = *a2;
      v6 = *(a2 + 1);
      v7 = *(a2 + 2);
      if ((*(*a1 + 208))(a1))
      {
        DspLib::CPUMeasure::pause((a1 + 104));
        *&v15 = v5;
        *(&v15 + 1) = v6;
        v16 = v7;
        DspLib::AudioMeter::Algorithm::analyze(a1 + 1888, &v15);
        v8 = DspLib::CPUMeasure::resume((a1 + 104));
      }

      v9 = *(a1 + 376);
      v10 = *(a1 + 384);
      if (v10 & 1 | v9)
      {
        v11 = (a1 + (v10 >> 1));
        if (v10)
        {
          v9 = *(*v11 + v9);
        }

        v15 = *a2;
        v16 = *(a2 + 2);
        (v9)(v11, &v15);
      }

      v12 = *a2;
      v13 = *(a2 + 1);
      v14 = *(a2 + 2);
      if ((*(*a1 + 208))(a1, v8))
      {
        DspLib::CPUMeasure::pause((a1 + 104));
        *&v15 = v12;
        *(&v15 + 1) = v13;
        v16 = v14;
        DspLib::AudioMeter::Algorithm::analyze(a1 + 2088, &v15);
        DspLib::CPUMeasure::resume((a1 + 104));
      }
    }
  }

  else
  {
    DspLib::MeisterStueck::Algorithm::processBlock();
  }
}

void DspLib::MeisterStueck::Algorithm::processAnalyticalPhaseCompensator(void *a1, uint64_t *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[33];
  v7 = (a1[34] - v6) >> 3;
  v8 = a1[39];
  v9 = (a1[40] - v8) >> 3;
  v13 = *a2;
  v14 = v4;
  v15 = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v12 = v5;
  v10[0] = v8;
  v10[1] = v9;
  v10[2] = v5;
  DspLib::AnalyticSignalTransformAllpass::process((a1 + 49), &v13, &v11, v10);
  v13 = v6;
  v14 = v7;
  v15 = v5;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v12 = v5;
  DspLib::add(&v13, &v11);
  v13 = v6;
  v14 = v7;
  v15 = v5;
  DspLib::multiply(&v13, 0.70711);
  v13 = v6;
  v14 = v7;
  v15 = v5;
  v11 = *a2;
  v12 = a2[2];
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processBlock((a1 + 63), &v13, &v11);
}

void DspLib::MeisterStueck::Algorithm::processAnalyticalSignal(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a1 + 264);
  v7 = (*(a1 + 272) - v6) >> 3;
  v8 = *(a1 + 312);
  v9 = (*(a1 + 320) - v8) >> 3;
  *&v13 = *a2;
  *(&v13 + 1) = v4;
  v14 = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v12 = v5;
  v10[0] = v8;
  v10[1] = v9;
  v10[2] = v5;
  DspLib::AnalyticSignalTransformAllpass::process(a1 + 392, &v13, &v11, v10);
  if (*(a1 + 372) == 1)
  {
    *&v13 = v6;
    *(&v13 + 1) = v7;
    v14 = v5;
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v12 = v5;
    DspLib::add(&v13, &v11);
    *&v13 = v6;
    *(&v13 + 1) = v7;
    v14 = v5;
    DspLib::multiply(&v13, 0.70711);
    *&v13 = v6;
    *(&v13 + 1) = v7;
    v14 = v5;
    v11 = *a2;
    v12 = a2[2];
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processBlock(a1 + 504, &v13, &v11);
  }

  else
  {
    *&v13 = v6;
    *(&v13 + 1) = v7;
    v14 = v5;
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::analyze(a1 + 504, &v13);
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v14 = v5;
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::analyze(a1 + 1096, &v13);
    DspLib::MeisterStueck::Algorithm::processAnalyticalCompressorKernels(a1, (a1 + 504), (a1 + 1096), v5);
    v13 = *a2;
    v14 = a2[2];
    DspLib::FourBandRandomOrderLrFilterBank::FilterBank::synthesize(a1 + 504, &v13);
    if (*(a1 + 352) == 1)
    {
      v13 = *a2;
      v14 = a2[2];
      DspLib::multiply(&v13, *(a1 + 348));
    }
  }
}

void DspLib::MeisterStueck::Algorithm::processAnalyticalCompressorKernels(DspLib::MeisterStueck::Algorithm *this, DspLib::FourBandRandomOrderLrFilterBank::FilterBank *a2, DspLib::FourBandRandomOrderLrFilterBank::FilterBank *a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(this + 33);
  v7 = (*(this + 34) - v6) >> 3;
  v8 = (this + 1864);
  v9 = 88;
  v21 = (*(this + 40) - *(this + 39)) >> 3;
  v22 = v7;
  v23 = *(this + 39);
  v20 = v6;
  do
  {
    if (*(*(this + 3) + v9) >= 0.5)
    {
      v10 = v6;
      v27 = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::buffer(a2, v5);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 31) - *(this + 30)) >> 3);
      v12 = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::buffer(a3, v5);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 37) - *(this + 36)) >> 3);
      if (v5 == 3 || (v14 = *v8) == 0)
      {
        v19 = *(v8 - 22);
        v34 = v27;
        v35 = v11;
        v36 = a4;
        v31 = v12;
        v32 = v13;
        v33 = a4;
        v28 = v27;
        v29 = v11;
        v30 = a4;
        DspLib::MeisterStueck::Kernel::Algorithm::process(v19);
        v6 = v10;
      }

      else
      {
        v31 = v10;
        v32 = v7;
        v28 = v23;
        v29 = v21;
        v30 = a4;
        v33 = a4;
        v34 = v27;
        v35 = v11;
        v36 = a4;
        DspLib::DownSampler::process((v14 + 4), &v34, &v31);
        v34 = v12;
        v35 = v13;
        v36 = a4;
        v7 = v22;
        v15 = (v14 + 12);
        v6 = v20;
        DspLib::DownSampler::process(v15, &v34, &v28);
        v16 = v33;
        if (v33)
        {
          v17 = *(v8 - 22);
          v34 = v20;
          v35 = v22;
          v36 = v33;
          v31 = v23;
          v32 = v21;
          v28 = v20;
          v29 = v22;
          v30 = v33;
          DspLib::MeisterStueck::Kernel::Algorithm::process(v17);
          v34 = v20;
          v35 = v22;
          v36 = v16;
          DspLib::multiply(&v34, *(this + v5 + 89));
        }

        v18 = *v8;
        v34 = v20;
        v35 = v22;
        v36 = v16;
        v31 = v27;
        v32 = v11;
        v33 = a4;
        DspLib::UpSampler::process((v18 + 20), &v34, &v31);
      }
    }

    ++v5;
    v9 += 100;
    ++v8;
  }

  while (v5 != 4);
}

void DspLib::MeisterStueck::Algorithm::processRegularPhaseCompensator(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::processBlock(a1 + 504, &v2);
}

void DspLib::MeisterStueck::Algorithm::processRegularSignal(uint64_t a1, uint64_t a2)
{
  *v4 = *a2;
  *&v4[8] = *(a2 + 8);
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::analyze(a1 + 504, v4);
  DspLib::MeisterStueck::Algorithm::processRegularCompressorKernels(a1, (a1 + 504), *(a2 + 16));
  *v4 = *a2;
  *&v4[16] = *(a2 + 16);
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::synthesize(a1 + 504, v4);
  if (*(a1 + 352) == 1)
  {
    *v4 = *a2;
    *&v4[16] = *(a2 + 16);
    DspLib::multiply(v4, *(a1 + 348));
  }
}

void DspLib::MeisterStueck::Algorithm::processRegularCompressorKernels(DspLib::MeisterStueck::Algorithm *this, DspLib::FourBandRandomOrderLrFilterBank::FilterBank *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(this + 33);
  v8 = (*(this + 34) - v7) >> 3;
  v9 = (this + 1864);
  v10 = 88;
  do
  {
    if (*(*(this + 3) + v10) >= 0.5)
    {
      v11 = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::buffer(a2, v6);
      v12 = v11;
      if (v6 == 3 || (v13 = *v9) == 0)
      {
        v17 = *(v9 - 22);
        v21 = v12;
        v22 = v8;
        v23 = a3;
        v18 = v12;
        v19 = v8;
        v20 = a3;
        DspLib::MeisterStueck::Kernel::Algorithm::process(v17);
      }

      else
      {
        v18 = v7;
        v19 = v8;
        v20 = a3;
        v21 = v11;
        v22 = v8;
        v23 = a3;
        DspLib::DownSampler::process((v13 + 4), &v21, &v18);
        v14 = v20;
        if (v20)
        {
          v15 = *(v9 - 22);
          v21 = v7;
          v22 = v8;
          v23 = v20;
          v18 = v7;
          v19 = v8;
          DspLib::MeisterStueck::Kernel::Algorithm::process(v15);
          v21 = v7;
          v22 = v8;
          v23 = v14;
          DspLib::multiply(&v21, *(this + v6 + 89));
        }

        v16 = *v9;
        v21 = v7;
        v22 = v8;
        v23 = v14;
        v18 = v12;
        v19 = v8;
        v20 = a3;
        DspLib::UpSampler::process((v16 + 20), &v21, &v18);
      }
    }

    ++v6;
    v10 += 100;
    ++v9;
  }

  while (v6 != 4);
}

uint64_t DspLib::MeisterStueck::Algorithm::activeCrossOverFrequencies(uint64_t a1, uint64_t a2, uint8x8_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (DspLib::FourBandRandomOrderLrFilterBank::FilterBank::numActiveBands((a1 + 504), a3) < 2)
  {
    return 0;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    if (*(*(a1 + 24) + 4 * (25 * v10 + 22)) >= 0.5)
    {
      *(a2 + 4 * v12) = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::xOverFrequency((a1 + 504), v11);
      *(a5 + 4 * v12++) = DspLib::FourBandRandomOrderLrFilterBank::FilterBank::orderForCrossoverPoint((a1 + 504), v11);
    }

    v10 = ++v11;
  }

  while (a6 > v11);
  return v12 - 1;
}

void DspLib::MeisterStueck::Kernel::ScratchArea::allocate(DspLib::MeisterStueck::Kernel::ScratchArea *this, unint64_t a2, unint64_t a3, int a4)
{
  DspLib::ChannelBuffer::resize(this, a2, a3);
  if (a4)
  {

    DspLib::ChannelBuffer::resize((this + 48), a2, a3);
  }

  else
  {
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 6);
    *(this + 10) = *(this + 9);
  }
}

uint64_t DspLib::MeisterStueck::Algorithm::bandIsActive(DspLib::MeisterStueck::Algorithm *this, int a2)
{
  v2 = 0;
  v3 = *(this + 3);
  v4 = (v3 + 88);
  v5 = 1;
  do
  {
    if (*v4 >= 0.5 && *(v4 - 16) >= 0.5 && *(this + 372) != 1)
    {
      break;
    }

    v5 = v2 < 3;
    v4 += 25;
    ++v2;
  }

  while (v2 != 4);
  v6 = 25 * a2;
  if (v5)
  {
    if (*(v3 + 4 * (v6 + 6)) < 0.5 || *(v3 + 4 * (v6 + 18)) >= 0.5)
    {
      goto LABEL_9;
    }

LABEL_11:
    v7 = 1;
    return v7 & 1;
  }

  if (*(v3 + 4 * (v6 + 18)) < 0.5)
  {
    goto LABEL_11;
  }

LABEL_9:
  v7 = *(this + 372);
  return v7 & 1;
}

DspLib::MeisterStueck::Algorithm *DspLib::MeisterStueck::Algorithm::computeBandGains(DspLib::MeisterStueck::Algorithm *this, uint64_t a2)
{
  v3 = this;
  v4 = 0;
  v5 = (*(this + 3) + 92);
  do
  {
    if (*(v5 - 1) >= 0.5)
    {
      this = DspLib::MeisterStueck::Algorithm::bandIsActive(v3, v4);
      if (this)
      {
        v6 = *v5;
      }

      else
      {
        v6 = -1027080192;
      }

      *(a2 + 4 * v4) = v6;
    }

    ++v4;
    v5 += 25;
  }

  while (v4 != 4);
  return this;
}

void DspLib::MeisterStueck::Algorithm::setAutomationForParameter(DspLib::MeisterStueck::Algorithm *a1, uint64_t *a2, uint64_t a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<DspLib::PiecewiseLinearInterpolation::SetPoint>::__init_with_size[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoint*,DspLib::PiecewiseLinearInterpolation::SetPoint*>(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  DspLib::MeisterStueck::Automation::setAutomationForParameter(a1 + 227, &__p, a3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  DspLib::MeisterStueck::Algorithm::applyAutomation(a1, *(a1 + 3));
  DspLib::MeisterStueck::Algorithm::updateAutomatableParameters(a1);
}

void sub_1DDC1739C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::MeisterStueck::Automation::setAutomationForParameter(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_5:
    if (a2[1] != *a2)
    {
      v9 = a1[4];
      v8 = a1[5];
      v10 = a1 + 3;
      if (v9 >= v8)
      {
        v11 = std::vector<DspLib::PiecewiseLinearInterpolation::SetPoints>::__emplace_back_slow_path<DspLib::PiecewiseLinearInterpolation::SetPoints&>(v10, a2);
      }

      else
      {
        std::vector<DspLib::PiecewiseLinearInterpolation::SetPoints>::__construct_one_at_end[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoints&>(v10, a2);
        v11 = v9 + 24;
      }

      a1[4] = v11;
      v17 = a1[1];
      v16 = a1[2];
      if (v17 >= v16)
      {
        v19 = *a1;
        v20 = v17 - *a1;
        v21 = v20 >> 3;
        v22 = (v20 >> 3) + 1;
        if (v22 >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
        v25 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v24)
        {
          v25 = v22;
        }

        if (v25)
        {
          std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v25);
        }

        *(8 * v21) = a3;
        v18 = 8 * v21 + 8;
        memcpy(0, v19, v20);
        v37 = *a1;
        *a1 = 0;
        a1[1] = v18;
        a1[2] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v17 = a3;
        v18 = (v17 + 1);
      }

      a1[1] = v18;
    }
  }

  else
  {
    v7 = *a1;
    while (*v7 != a3)
    {
      if (++v7 == v5)
      {
        goto LABEL_5;
      }
    }

    v12 = 0;
    v13 = 0;
    while (v6[v13] != a3)
    {
      ++v13;
      v12 -= 24;
      if (&v6[v13] == v5)
      {
        abort();
      }
    }

    v14 = a2[1];
    v15 = a1[3];
    if (v14 == *a2)
    {
      v26 = v15 - v12;
      v27 = a1[4];
      if (v15 - v12 + 24 != v27)
      {
        do
        {
          v28 = v26 + 24;
          std::vector<double>::__move_assign(v26, (v26 + 24));
          v29 = v26 + 48;
          v26 += 24;
        }

        while (v29 != v27);
        v27 = a1[4];
        v26 = v28;
      }

      if (v27 != v26)
      {
        v30 = v27;
        do
        {
          v32 = *(v30 - 24);
          v30 -= 24;
          v31 = v32;
          if (v32)
          {
            *(v27 - 16) = v31;
            operator delete(v31);
          }

          v27 = v30;
        }

        while (v30 != v26);
      }

      a1[4] = v26;
      v33 = a1[1];
      v34 = *a1 + v13 * 8;
      v35 = v33 - *a1 - v13 * 8;
      v36 = v35 - 8;
      if (v34 + 8 != v33)
      {
        memmove((*a1 + v13 * 8), (v34 + 8), v35 - 8);
      }

      a1[1] = v34 + v36;
    }

    else
    {
      if ((v15 - v12) != a2)
      {
        std::vector<DspLib::PiecewiseLinearInterpolation::SetPoint>::__assign_with_size[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoint*,DspLib::PiecewiseLinearInterpolation::SetPoint*>((v15 - v12), *a2, v14, &v14[-*a2] >> 3);
        v6 = *a1;
      }

      v6[v13] = a3;
    }
  }
}

uint64_t DspLib::MeisterStueck::Automation::automationForParameter(DspLib::MeisterStueck::Automation *this, uint64_t a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this == v3)
  {
LABEL_5:
    abort();
  }

  v4 = 0;
  while (*v2 != a2)
  {
    ++v2;
    v4 -= 24;
    if (v2 == v3)
    {
      goto LABEL_5;
    }
  }

  return *(this + 3) - v4;
}

void DspLib::MeisterStueck::Algorithm::~Algorithm(DspLib::MeisterStueck::Algorithm *this)
{
  DspLib::MeisterStueck::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591B1A0;
  if (*(this + 2280) == 1)
  {
    DspLib::ChannelBuffer::~ChannelBuffer((this + 2224));
    v2 = *(this + 275);
    if (v2)
    {
      *(this + 276) = v2;
      operator delete(v2);
    }

    v3 = *(this + 272);
    if (v3)
    {
      *(this + 273) = v3;
      operator delete(v3);
    }

    v4 = *(this + 269);
    if (v4)
    {
      *(this + 270) = v4;
      operator delete(v4);
    }

    v14 = (this + 2128);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  if (*(this + 2080) == 1)
  {
    DspLib::ChannelBuffer::~ChannelBuffer((this + 2024));
    v5 = *(this + 250);
    if (v5)
    {
      *(this + 251) = v5;
      operator delete(v5);
    }

    v6 = *(this + 247);
    if (v6)
    {
      *(this + 248) = v6;
      operator delete(v6);
    }

    v7 = *(this + 244);
    if (v7)
    {
      *(this + 245) = v7;
      operator delete(v7);
    }

    v14 = (this + 1928);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  for (i = 1880; i != 1856; i -= 8)
  {
    v9 = *(this + i);
    *(this + i) = 0;
    if (v9)
    {
      MEMORY[0x1E12BD160](v9, 0x1000C4027586B93);
    }
  }

  v14 = (this + 1840);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v10 = *(this + 227);
  if (v10)
  {
    *(this + 228) = v10;
    operator delete(v10);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 1768));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 1720));
  for (j = 1712; j != 1680; j -= 8)
  {
    std::unique_ptr<DspLib::MeisterStueck::Kernel::Algorithm>::reset[abi:ne200100]((this + j), 0);
  }

  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::~FilterBank((this + 1096));
  DspLib::FourBandRandomOrderLrFilterBank::FilterBank::~FilterBank((this + 504));
  *(this + 49) = &unk_1F591AB20;
  v12 = *(this + 60);
  if (v12)
  {
    *(this + 61) = v12;
    operator delete(v12);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 456));
  v13 = *(this + 54);
  if (v13)
  {
    *(this + 55) = v13;
    operator delete(v13);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 288));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 240));
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::FourBandRandomOrderLrFilterBank::FilterBank::~FilterBank(DspLib::FourBandRandomOrderLrFilterBank::FilterBank *this)
{
  v9 = (this + 568);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 544);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 520));
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 448));
  v3 = *(this + 53);
  if (v3)
  {
    *(this + 54) = v3;
    operator delete(v3);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 376));
  v4 = *(this + 44);
  if (v4)
  {
    *(this + 45) = v4;
    operator delete(v4);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 304));
  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 232));
  v6 = *(this + 26);
  if (v6)
  {
    *(this + 27) = v6;
    operator delete(v6);
  }

  v7 = *(this + 20);
  if (v7)
  {
    *(this + 21) = v7;
    operator delete(v7);
  }

  v8 = *(this + 17);
  if (v8)
  {
    *(this + 18) = v8;
    operator delete(v8);
  }

  v9 = (this + 112);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void DspLib::MeisterStueck::Kernel::Algorithm::~Algorithm(DspLib::MeisterStueck::Kernel::Algorithm *this)
{
  v2 = *(this + 82);
  if (v2)
  {
    *(this + 83) = v2;
    operator delete(v2);
  }

  v9 = (this + 616);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 584));
  v3 = *(this + 70);
  if (v3)
  {
    *(this + 71) = v3;
    operator delete(v3);
  }

  v9 = (this + 512);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 480));
  v4 = *(this + 57);
  if (v4)
  {
    *(this + 58) = v4;
    operator delete(v4);
  }

  *(this + 40) = &unk_1F591AB20;
  v5 = *(this + 51);
  if (v5)
  {
    *(this + 52) = v5;
    operator delete(v5);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 384));
  v6 = *(this + 45);
  if (v6)
  {
    *(this + 46) = v6;
    operator delete(v6);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 296));
  v7 = *(this + 34);
  if (v7)
  {
    *(this + 35) = v7;
    operator delete(v7);
  }

  v8 = *(this + 28);
  if (v8)
  {
    *(this + 29) = v8;
    operator delete(v8);
  }

  v9 = (this + 192);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 160);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void DspLib::MeisterStueck::OSCFilter::~OSCFilter(DspLib::MeisterStueck::OSCFilter *this)
{
  v4 = (this + 184);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 152));
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v4 = (this + 80);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

DspLib::MeisterStueck::Kernel::Algorithm *DspLib::MeisterStueck::Kernel::Algorithm::Algorithm(DspLib::MeisterStueck::Kernel::Algorithm *this)
{
  *(this + 24) = 1065353216;
  *(this + 2) = xmmword_1DE099A54;
  *(this + 3) = unk_1DE099A64;
  *(this + 4) = xmmword_1DE099A74;
  *(this + 5) = unk_1DE099A84;
  *this = DspLib::MeisterStueck::Kernel::Parameters::kDefault;
  *(this + 1) = unk_1DE099A44;
  *(this + 100) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  *(this + 15) = 0;
  *(this + 8) = xmmword_1DE095FA0;
  *(this + 36) = 1;
  *(this + 54) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 328) = 0;
  *(this + 83) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 248) = 0;
  *(this + 40) = &unk_1F591AB20;
  *(this + 336) = 0;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 536) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 417) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 344) = 0u;
  *(this + 160) = 1065353216;
  *(this + 900) = 0;
  *(this + 169) = 0;
  *(this + 644) = 0u;
  *(this + 660) = 0u;
  *(this + 227) = DspLib::dB2Amp(this, -100.0);
  *(this + 114) = 0;
  *(this + 230) = 1065353216;
  *(this + 924) = 0u;
  *(this + 940) = xmmword_1DE097D00;
  *(this + 239) = 1065353216;
  *(this + 480) = 0;
  *(this + 964) = 0;
  return this;
}

void sub_1DDC17AD4(_Unwind_Exception *a1)
{
  v5 = v1[82];
  if (v5)
  {
    v1[83] = v5;
    operator delete(v5);
  }

  DspLib::MeisterStueck::OSCFilter::~OSCFilter((v1 + 54));
  DspLib::AnalyticSignalTransformAllpass::~AnalyticSignalTransformAllpass(v3);
  DspLib::Biquad::Filter::~Filter((v1 + 31));
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DspLib::PiecewiseLinearInterpolation::SetPoint>::__init_with_size[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoint*,DspLib::PiecewiseLinearInterpolation::SetPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDC17B70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<DspLib::PiecewiseLinearInterpolation::SetPoint>::__assign_with_size[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoint*,DspLib::PiecewiseLinearInterpolation::SetPoint*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<double>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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

uint64_t std::vector<DspLib::PiecewiseLinearInterpolation::SetPoints>::__construct_one_at_end[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoints&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<DspLib::PiecewiseLinearInterpolation::SetPoint>::__init_with_size[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoint*,DspLib::PiecewiseLinearInterpolation::SetPoint*>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<DspLib::PiecewiseLinearInterpolation::SetPoints>::__emplace_back_slow_path<DspLib::PiecewiseLinearInterpolation::SetPoints&>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<DspLib::PiecewiseLinearInterpolation::SetPoint>::__init_with_size[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoint*,DspLib::PiecewiseLinearInterpolation::SetPoint*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  *&v16 = v16 + 24;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PiecewiseLinearInterpolation::SetPoints>,DspLib::PiecewiseLinearInterpolation::SetPoints*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v13;
}

void sub_1DDC17E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PiecewiseLinearInterpolation::SetPoints>,DspLib::PiecewiseLinearInterpolation::SetPoints*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PiecewiseLinearInterpolation::SetPoints>,DspLib::PiecewiseLinearInterpolation::SetPoints*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PiecewiseLinearInterpolation::SetPoints>,DspLib::PiecewiseLinearInterpolation::SetPoints*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void DspLib::MeisterStueck::Algorithm::Algorithm(uint64_t a1, afSTFTData *this, DspLib::ChannelBuffer *a3, DspLib::ChannelBuffer *a4)
{
  v7 = 0;
  v8 = a1 + 1880;
  do
  {
    v9 = *(v8 + v7);
    *(v8 + v7) = 0;
    if (v9)
    {
      MEMORY[0x1E12BD160](v9, 0x1000C4027586B93);
    }

    v7 -= 8;
  }

  while (v7 != -24);
  afSTFTData::~afSTFTData(this);
  DspLib::ChannelBuffer::~ChannelBuffer(a3);

  DspLib::ChannelBuffer::~ChannelBuffer(a4);
}

void DspLib::MeisterStueck::Algorithm::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MeisterStueck/dsp/DspLibMeisterStueck.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 23);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MeisterStueck::Algorithm::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MeisterStueck/dsp/DspLibMeisterStueck.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 181);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::MeisterStueck::Algorithm::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/MeisterStueck/dsp/DspLibMeisterStueck.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 213);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

uint64_t DspLib::forAllParametersOf(uint64_t result, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (*(result + 16) != -1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      if (v4)
      {
        v5 = (*(v3 + 8) + 8 * (v4 - 1));
      }

      else
      {
        v5 = v3;
      }

      v6 = *v5;
      v8[0] = &unk_1F591B2C0;
      v8[1] = a2;
      v8[2] = &v7;
      v8[3] = v8;
      DspLib::forAllParametersOf(v6, v8);
      result = std::__function::__value_func<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](v8);
      v4 = v7 + 1;
      v7 = v4;
    }

    while (v4 < *(v3 + 16) + 1);
  }

  return result;
}

{
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = *(result + 8);
  if (v2[1])
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = *v2 + 16 * v5;
      v8[0] = &unk_1F591B350;
      v8[1] = a2;
      v8[2] = &v7;
      v8[3] = v8;
      DspLib::forAllParametersOf(v6, v8);
      result = std::__function::__value_func<void ()(unsigned int,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](v8);
      v5 = ++v7;
      v2 = *(v4 + 8);
    }

    while (v2[1] > v7);
  }

  return result;
}

{
  if (*(*(result + 8) + 8))
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = std::function<void ()(unsigned int,DspLib::ParameterDefinition)>::operator()(a2, v4++);
    }

    while (*(*(v3 + 8) + 8) > v4);
  }

  return result;
}

void sub_1DDC18388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1DDC18478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned int,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(unsigned int,DspLib::ParameterDefinition)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 std::__function::__func<DspLib::forAllParametersOf(DspLib::SystemParametersDefinition const&,std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>)::$_0,std::allocator<DspLib::forAllParametersOf(DspLib::SystemParametersDefinition const&,std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>)::$_0>,void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F591B2C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<DspLib::forAllParametersOf(DspLib::SystemParametersDefinition const&,std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>)::$_0,std::allocator<DspLib::forAllParametersOf(DspLib::SystemParametersDefinition const&,std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>)::$_0>,void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>::operator()(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = *(a1 + 8);
  v6 = **(a1 + 16);
  v8 = *a3;
  v9 = *(a3 + 2);
  return std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>::operator()(v5, v6 | (v3 << 32), v4, &v8);
}

uint64_t std::__function::__func<DspLib::forAllParametersOf(DspLib::SystemParametersDefinition const&,std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>)::$_0,std::allocator<DspLib::forAllParametersOf(DspLib::SystemParametersDefinition const&,std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>)::$_0>,void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v6, a4);
}

uint64_t std::__function::__value_func<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<DspLib::forAllParametersOf(DspLib::AlgorithmParametersDefinition const&,std::function<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>)::$_0,std::allocator<DspLib::forAllParametersOf(DspLib::AlgorithmParametersDefinition const&,std::function<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>)::$_0>,void ()(unsigned int,DspLib::ParameterDefinition)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F591B350;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<DspLib::forAllParametersOf(DspLib::AlgorithmParametersDefinition const&,std::function<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>)::$_0,std::allocator<DspLib::forAllParametersOf(DspLib::AlgorithmParametersDefinition const&,std::function<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>)::$_0>,void ()(unsigned int,DspLib::ParameterDefinition)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(DspLib::AlgorithmParameterAddress,DspLib::ParameterDefinition)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(unsigned int,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](uint64_t a1)
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

int DspLib::LoudspeakerModel::Parameters::mode(float *a1)
{
  result = vcvtas_u32_f32(fmaxf(*a1, 0.0));
  if (result >= 4)
  {
    v2 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerModel/dsp/DspLibLoudspeakerModelParameters.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v2, 17);
    result = 0;
    ++DspLibDebug::mAssertCounter;
  }

  return result;
}

void DspLib::LoudspeakerModel::Parameters::setBoundaries(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; i != 39; ++i)
  {
    v9 = DspLib::LoudspeakerModel::Parameters::mode(a1);
    *(a3 + 4 * i) = DspLib::LoudspeakerModel::Parameters::min(v9, i);
    v10 = DspLib::LoudspeakerModel::Parameters::mode(a1);
    *(a5 + 4 * i) = DspLib::LoudspeakerModel::Parameters::max(v10, i);
  }
}

float DspLib::LoudspeakerModel::Parameters::min(int a1, unsigned int a2)
{
  if (a2 <= 4)
  {
    return *(&DspLib::LoudspeakerModel::Parameters::kMinimum + a2);
  }

  result = -1.0e19;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v3 = a2 - 5;
      v4 = &DspLib::LoudspeakerModel::Parameters::Sdomain_1::kMinimum;
      return v4[v3];
    }

    if (a1 == 4)
    {
      return 0.0;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v3 = a2 - 5;
      v4 = &DspLib::LoudspeakerModel::Parameters::ThieleSmall::kMinimum;
      return v4[v3];
    }

    if (a1 == 2)
    {
      v3 = a2 - 5;
      v4 = &DspLib::LoudspeakerModel::Parameters::Sdomain_0::kMinimum;
      return v4[v3];
    }
  }

  return result;
}

float DspLib::LoudspeakerModel::Parameters::max(int a1, unsigned int a2)
{
  if (a2 <= 4)
  {
    return *(&DspLib::LoudspeakerModel::Parameters::kMaximum + a2);
  }

  result = 1.0e19;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v3 = a2 - 5;
      v4 = &DspLib::LoudspeakerModel::Parameters::Sdomain_1::kMaximum;
      return v4[v3];
    }

    if (a1 == 4)
    {
      return 0.0;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v3 = a2 - 5;
      v4 = &DspLib::LoudspeakerModel::Parameters::ThieleSmall::kMaximum;
      return v4[v3];
    }

    if (a1 == 2)
    {
      v3 = a2 - 5;
      v4 = &DspLib::LoudspeakerModel::Parameters::Sdomain_0::kMaximum;
      return v4[v3];
    }
  }

  return result;
}

void DspLib::ConstantQFilterbank::Analyzer::setParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, double a6)
{
  if (0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3) != a3)
  {
    v11 = a3;
    std::vector<DspLib::Biquad::ParametricFilter>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = a1[1];
        if (v13 >= a1[2])
        {
          v14 = std::vector<DspLib::Biquad::ParametricFilter>::__emplace_back_slow_path<>(a1);
        }

        else
        {
          *(v13 + 96) = 0;
          *(v13 + 64) = 0u;
          *(v13 + 80) = 0u;
          *(v13 + 32) = 0u;
          *(v13 + 48) = 0u;
          v14 = v13 + 104;
          *v13 = 0u;
          *(v13 + 16) = 0u;
        }

        a1[1] = v14;
        DspLib::Biquad::ParametricFilter::initialize((*a1 + v12), 1uLL, a6, 1uLL);
        v12 += 104;
        --v11;
      }

      while (v11);
    }
  }

  v15 = *a1;
  if (a1[1] != *a1)
  {
    v16 = 0;
    v17 = 0;
    v18 = vcvtad_u64_f64(a6);
    do
    {
      v19 = *(a4 + 4 * v17);
      v20 = *(a2 + 4 * v17);
      DspLib::Biquad::ParametricFilter::initialize((v15 + v16), 1uLL, v18, 1uLL);
      DspLib::Biquad::ParametricFilter::setParametricEQ(*a1 + v16, (v20 << 32) | 0xE, ((LODWORD(a5) << 32) | v19), 0, 0x41uLL);
      ++v17;
      v15 = *a1;
      v16 += 104;
    }

    while (v17 < 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3));
  }
}

void DspLib::ConstantQFilterbank::Modifier::initialize(DspLib::ConstantQFilterbank::Modifier *this, unsigned int a2, double a3)
{
  v7 = *(this + 8);
  v6 = (this + 8);
  if ((v7 & 1) == 0)
  {
    DspLib::Biquad::ParametricFilter::initialize(v6, a2, a3, 1uLL);
  }

  if ((*(this + 216) & 1) == 0)
  {
    DspLib::Biquad::ParametricFilter::initialize((this + 216), a2, a3, 1uLL);
  }

  if ((*(this + 320) & 1) == 0)
  {
    DspLib::Biquad::ParametricFilter::initialize((this + 320), a2, a3, 1uLL);
  }

  v9 = *(this + 112);
  v8 = (this + 112);
  if ((v9 & 1) == 0)
  {

    DspLib::Biquad::ParametricFilter::initialize(v8, a2, a3, 1uLL);
  }
}

void DspLib::ConstantQFilterbank::Modifier::setMaxFrameSize(DspLib::ConstantQFilterbank::Modifier *this, unint64_t a2)
{
  std::vector<float>::resize(this + 54, a2);

  std::vector<float>::resize(this + 57, a2);
}

void DspLib::ConstantQFilterbank::Modifier::setSampleRate(DspLib::ConstantQFilterbank::Modifier *this, double a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    abort();
  }

  v4 = vcvtad_u64_f64(a2);
  DspLib::Biquad::ParametricFilter::initialize((this + 8), v2, v4, *(this + 8));
  DspLib::Biquad::ParametricFilter::initialize((this + 216), v2, v4, *(this + 34));
  v5 = *(this + 47);

  DspLib::Biquad::ParametricFilter::initialize((this + 320), v2, v4, v5);
}

void DspLib::ConstantQFilterbank::Modifier::uninitialize(DspLib::ConstantQFilterbank::Modifier *this)
{
  DspLib::Biquad::ParametricFilter::uninitialize((this + 8));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 216));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 320));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 112));
  *(this + 55) = *(this + 54);
  *(this + 58) = *(this + 57);
  *(this + 60) = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 66);
  *(this + 70) = *(this + 69);
}

void DspLib::ConstantQFilterbank::Modifier::reset(DspLib::ConstantQFilterbank::Modifier *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 56));
  DspLib::Biquad::SetupWrapper::reset((this + 264));
  DspLib::Biquad::SetupWrapper::reset((this + 368));
  DspLib::Biquad::SetupWrapper::reset((this + 160));
  *(this + 424) = 0;
}

void DspLib::ConstantQFilterbank::Modifier::setParameters(uint64_t a1, void *a2, unint64_t a3, char a4, int a5, float a6)
{
  std::vector<float>::resize((a1 + 496), a3);
  DspLib::copy(a2, a3, *(a1 + 496));
  *(a1 + 488) = a6;
  DspLib::Biquad::ParametricFilter::setNumberOfStages((a1 + 8), a3);
  DspLib::Biquad::ParametricFilter::setNumberOfStages((a1 + 112), a3);
  if ((a4 & 1) == 0)
  {
    DspLib::Biquad::ParametricFilter::setNumberOfStages((a1 + 216), a3);
    DspLib::Biquad::ParametricFilter::setNumberOfStages((a1 + 320), a3);
  }

  *(a1 + 520) = a5;
  if (a5)
  {
    std::vector<std::vector<float>>::resize((a1 + 528), *(a1 + 56));
    std::vector<float *>::resize((a1 + 552), *(a1 + 56));
    v12 = *(a1 + 528);
    v13 = *(a1 + 536);
    if (v12 != v13)
    {
      v14 = 0;
      do
      {
        std::vector<float>::resize(v12, (*(a1 + 440) - *(a1 + 432)) >> 2);
        v15 = *v12;
        v12 += 3;
        *(*(a1 + 552) + 8 * v14++) = v15;
      }

      while (v12 != v13);
    }
  }

  else
  {
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((a1 + 528));
    *(a1 + 560) = *(a1 + 552);
  }
}

void DspLib::ConstantQFilterbank::calculateCoefficients(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    v6 = &v11[-2 * v3];
    do
    {
      *v6 = 23;
      *(v6 + 4) = 1148846080;
      *(v6 + 3) = 1065353216;
      v6 += 2;
    }

    while (v6 != v11);
    v7 = 0;
    v8 = &v11[-2 * v3 + 1];
    do
    {
      v9 = *(v4 + 4 * v7);
      v10 = *(v2 + 4 * v7);
      *(v8 - 2) = 28;
      *(v8 - 1) = v9;
      *v8 = v10;
      v8[1] = v5;
      ++v7;
      v8 += 4;
    }

    while (v3 > v7);
  }

  DspLib::Biquad::ParametricFilter::setParametricEQs(v1, &v11[-2 * v3], v3);
}

void DspLib::ConstantQFilterbank::Modifier::apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a4;
  v17[1] = a5;
  v15[4] = a3;
  v16 = a6;
  v15[0] = a1;
  v15[1] = &v16;
  v15[2] = v17;
  v15[3] = a2;
  if (*(a1 + 520) == 1)
  {
    if (*(a1 + 424) == 1)
    {
      DspLib::ConstantQFilterbank::Modifier::apply(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>,std::span<float const,18446744073709551615ul>,DspLib::Biquad::ParametricFilter const*)::$_0::operator()(v15, (a1 + 320));
      v20 = *a2;
      v21 = *(a2 + 16);
      v18 = *(a1 + 552);
      v19 = *(a2 + 8);
      DspLib::Biquad::Filter::process((a1 + 216), &v20, &v18);
      v9 = 0;
    }

    else
    {
      DspLib::ConstantQFilterbank::Modifier::apply(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>,std::span<float const,18446744073709551615ul>,DspLib::Biquad::ParametricFilter const*)::$_0::operator()(v15, (a1 + 216));
      v20 = *a2;
      v21 = *(a2 + 16);
      v18 = *(a1 + 552);
      v19 = *(a2 + 8);
      DspLib::Biquad::Filter::process((a1 + 320), &v20, &v18);
      v9 = 1;
    }

    *(a1 + 424) = v9;
    v10 = *(a2 + 16);
    if (v10 >= 2)
    {
      if (*(a1 + 480) != v10)
      {
        *(a1 + 480) = v10;
        DspLib::ramp(*(a1 + 432), v10, 0, 0.0, 1.0);
        DspLib::ramp(*(a1 + 456), *(a1 + 480), 0, 1.0, 0.0);
      }

      v20 = *a3;
      v21 = *(a3 + 16);
      DspLib::multiply(&v20, *(a1 + 432));
      v11 = *(a1 + 56);
      v12 = *(a2 + 16);
      *&v20 = *(a1 + 552);
      *(&v20 + 1) = v11;
      v21 = v12;
      DspLib::multiply(&v20, *(a1 + 456));
      v20 = *a3;
      v21 = *(a3 + 16);
      v13 = *(a1 + 56);
      v14 = *(a2 + 16);
      v18 = *(a1 + 552);
      *&v19 = v13;
      *(&v19 + 1) = v14;
      DspLib::add(&v20, &v18);
    }
  }

  else
  {
    DspLib::ConstantQFilterbank::Modifier::apply(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>,std::span<float const,18446744073709551615ul>,DspLib::Biquad::ParametricFilter const*)::$_0::operator()(v15, (a1 + 320));
  }
}

void DspLib::ConstantQFilterbank::Modifier::apply(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>,std::span<float const,18446744073709551615ul>,DspLib::Biquad::ParametricFilter const*)::$_0::operator()(uint64_t *a1, DspLib::Biquad::ParametricFilter *this)
{
  v4 = *a1;
  DspLib::Biquad::ParametricFilter::setNumberOfStages(this, ((*(*a1 + 504) - *(*a1 + 496)) >> 2));
  if (!*a1[1])
  {
    DspLib::Biquad::Filter::copyStatesFrom((v4 + 112), this);
  }

  DspLib::ConstantQFilterbank::calculateCoefficients(this);
  if (*a1[1])
  {
    v5 = *a1[1];
  }

  else
  {
    v5 = (v4 + 112);
  }

  DspLib::Biquad::Filter::copyStatesFrom(this, v5);
  v6 = a1[3];
  v7 = a1[4];
  v11 = *(v6 + 16);
  v10 = *v6;
  v8 = *v7;
  v9 = *(v7 + 16);
  v14 = v10;
  v15 = v11;
  v12 = v8;
  v13 = v9;
  DspLib::Biquad::Filter::process(this, &v14, &v12);
}

void DspLib::XTC::FIRMatrix::initialize(void **this, uint64_t a2)
{
  v4 = 608;
  do
  {
    DspLib::FastFIR::initialize(this, this[1], (this[2] - this[1]) >> 2, a2);
    this += 19;
    v4 -= 152;
  }

  while (v4);
}

void DspLib::XTC::FIRMatrix::reset(DspLib::XTC::FIRMatrix *this)
{
  v1 = (this + 120);
  v2 = 608;
  do
  {
    DspLib::clear(*(v1 - 1), (*v1 - *(v1 - 1)) >> 2);
    v1 += 19;
    v2 -= 152;
  }

  while (v2);
}

void DspLib::XTC::FIRMatrix::setCoefficients(void *a1, void *a2)
{
  v2 = a2[1];
  a1[76] = a2[2];
  if (v2 == 4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = 0;
      v8 = v6;
      v9 = 1;
      do
      {
        v10 = v9;
        DspLib::FastFIR::initialize(&a1[19 * (v7 | v5)], *(*a2 + 8 * (v7 | v5)), a2[2], a1[19 * (v7 | v5)]);
        v9 = 0;
        v7 = 1;
      }

      while ((v10 & 1) != 0);
      v6 = 0;
      v5 = 2;
    }

    while ((v8 & 1) != 0);
    v11 = a1[17];
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    std::vector<float>::resize(a1 + 78, v12);
  }

  else
  {
    DspLib::XTC::FIRMatrix::setCoefficients();
  }
}

const void ***DspLib::XTC::FIRMatrix::process(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *(a1 + 608);
  if (v5)
  {
    v10 = *a3;
    v11 = *(a3 + 2);
    DspLib::clear(&v10);
    DspLib::FastFIR::process(a1, **a2, *(a2 + 2), *(a1 + 624));
    DspLib::add();
  }

  v7 = 1;
  do
  {
    v8 = v7;
    v10 = *a2;
    v11 = *(a2 + 2);
    result = DspLib::sum(&v10, *(*a3 + 8 * v5), *(a3 + 2));
    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t DspLib::XTC::FIRMatrix::setCoefficients()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC_FIRMatrix.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 38);
  ++DspLibDebug::mAssertCounter;
  return result;
}

double DspLib::PowerGuard::PowerAnalyzerBase::initialize(DspLib::PowerGuard::PowerAnalyzerBase *this, double a2)
{
  LODWORD(v2) = 4 * vcvtad_u64_f64(a2 / 1500.0 * 0.25);
  v3 = 5 * vcvtad_u64_f64(a2 / 1500.0 / 5.0);
  v4 = 4;
  if (vabdd_f64(a2 / 1500.0, v2) <= vabdd_f64(a2 / 1500.0, v3))
  {
    v2 = v2;
  }

  else
  {
    v4 = 5;
    v2 = v3;
  }

  *(this + 2) = v4;
  *(this + 3) = v2;
  result = a2 / v2;
  *(this + 1) = result;
  return result;
}

void DspLib::PowerGuard::PowerAnalyzerBase::setParameters(DspLib::PowerGuard::PowerAnalyzerBase *this, float *a2, unint64_t a3)
{
  if (a3 >= 5)
  {
    DspLib::PowerGuard::PowerAnalyzerBase::setParameters();
  }

  else
  {
    if (a3)
    {
      v3 = *(this + 1);
      v4 = v7;
      v5 = a3;
      do
      {
        v6 = *a2++;
        *v4++ = vcvtad_u64_f64(v3 * v6);
        --v5;
      }

      while (v5);
    }

    DspLib::MultiMovingAverage::setLengths(this + 4, v7, a3);
  }
}

void DspLib::PowerGuard::PowerAnalyzerBase::process(DspLib::PowerGuard::PowerAnalyzerBase *this@<X0>, const float *const *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, float *a5@<X8>, unint64_t a6@<D0>)
{
  LODWORD(a6) = *(this + 22);
  if (*(this + 1) <= a6)
  {
    DspLib::MultiMovingAverage::recalculateState((this + 32));
    *(this + 22) = 0;
  }

  if (a3 && a4)
  {
    v11 = (**this)(this, a2, a3, a4, a5);
    *(a5 + 10) = v11;
    v15[0] = a5 + 4;
    v15[1] = a5 + 8;
    v15[2] = a5 + 12;
    v15[3] = a5 + 16;
    v14[0] = v15;
    v14[1] = 4;
    v14[2] = v11;
    DspLib::MultiMovingAverage::process(this + 4, a5, v11, v14);
    *(this + 22) += a4;
  }

  else
  {
    *(a5 + 10) = 0;
    DspLib::clear(a5, 4uLL);
    v12 = a5 + 4;
    v13 = 64;
    do
    {
      DspLib::clear(v12, 4uLL);
      v12 += 4;
      v13 -= 16;
    }

    while (v13);
  }
}

void DspLib::PowerGuard::WooferPowerAnalyzer::initialize(DspLib::PowerGuard::WooferPowerAnalyzer *this, double a2)
{
  DspLib::PowerGuard::PowerAnalyzerBase::initialize(this, a2);
  *(this + 15) = a2 / (*(this + 3) / *(this + 2));
  DspLib::Biquad::Filter::initialize((this + 128), 1uLL, 0);
  DspLib::AveragingDecimator::setSrcFactor((this + 200), *(this + 3) / *(this + 2), 0);
  v4 = *(this + 2);

  DspLib::AveragingDecimator::setSrcFactor((this + 248), v4, 0);
}

void DspLib::PowerGuard::WooferPowerAnalyzer::uninitialize(DspLib::PowerGuard::WooferPowerAnalyzer *this)
{
  DspLib::MultiMovingAverage::setLengths(this + 4, 1, 0);

  DspLib::Biquad::Filter::uninitialize((this + 128));
}

void DspLib::PowerGuard::WooferPowerAnalyzer::setParameters(DspLib::PowerGuard::WooferPowerAnalyzer *this, float a2, float a3, float *a4, unint64_t a5, float a6, float a7)
{
  DspLib::PowerGuard::PowerAnalyzerBase::setParameters(this, a4, a5);
  *(this + 23) = (a2 * a2) / a3;
  v12 = *(this + 15);
  v13 = 1.0;
  v14 = 1.0;
  if ((1.0 / v12) < a6)
  {
    v14 = (1000.0 / v12) / (a6 / 4.6052);
  }

  if (v14 <= 1.0)
  {
    v13 = v14;
  }

  *(this + 25) = v13;
  *(this + 28) = a7;
}

void DspLib::PowerGuard::WooferPowerAnalyzer::setAdmittanceCoeffs(uint64_t a1, uint64_t a2, uint64_t __M)
{
  DspLib::Biquad::Filter::setNumberOfStages((a1 + 128), __M);

  DspLib::Biquad::Filter::setCoefficients(a1 + 128, a2, __M, 0, 0x41uLL);
}

void DspLib::PowerGuard::WooferPowerAnalyzer::reset(DspLib::PowerGuard::WooferPowerAnalyzer *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v3 != v2)
  {
    v4 = 0;
    v5 = (v2 - v3 - 16) >> 4;
    v6 = vdupq_n_s64(v5);
    v7 = (v5 + 4) & 0x1FFFFFFFFFFFFFFCLL;
    v8 = (v3 + 40);
    do
    {
      v9 = vdupq_n_s64(v4);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE095160)));
      if (vuzp1_s16(v10, *v6.i8).u8[0])
      {
        *(v8 - 8) = 0;
      }

      if (vuzp1_s16(v10, *&v6).i8[2])
      {
        *(v8 - 4) = 0;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE095150)))).i32[1])
      {
        *v8 = 0;
        v8[4] = 0;
      }

      v4 += 4;
      v8 += 16;
    }

    while (v7 != v4);
  }

  DspLib::CircularDelay::reset((this + 56));
  *(this + 22) = 0;
  DspLib::Biquad::SetupWrapper::reset((this + 176));
  DspLib::AveragingDecimator::reset((this + 200));
  DspLib::AveragingDecimator::reset((this + 248));
  *(this + 13) = 0;
}

uint64_t DspLib::PowerGuard::WooferPowerAnalyzer::powerFunction(DspLib::PowerGuard::WooferPowerAnalyzer *this, const float *const *a2, unint64_t a3, unint64_t a4, float *a5)
{
  MEMORY[0x1EEE9AC00](this);
  v8 = v7;
  result = 0;
  v17[257] = *MEMORY[0x1E69E9840];
  if (v10)
  {
    if (v6)
    {
      v16 = 4 * v8[3];
      v11 = v8[27];
      v12 = v17;
      v13 = v16;
      DspLib::AveragingDecimator::processKernel((v8 + 25), *v5, v6, &v12, v11, (v8[28] - v11) >> 2, v8 + 27);
      *v14 = v13;
      DspLib::Biquad::Filter::process(v8 + 16, v12, v13, &v15, v13);
      DspLib::multiply();
    }
  }

  return result;
}

void DspLib::PowerGuard::TweeterPowerAnalyzer::initialize(DspLib::PowerGuard::TweeterPowerAnalyzer *this, double a2)
{
  DspLib::PowerGuard::PowerAnalyzerBase::initialize(this, a2);
  v3 = *(this + 3);

  DspLib::AveragingDecimator::setSrcFactor((this + 96), v3, 0);
}

float DspLib::PowerGuard::TweeterPowerAnalyzer::setParameters(DspLib::PowerGuard::TweeterPowerAnalyzer *this, float a2, float a3, float a4, float *a5, unint64_t a6)
{
  DspLib::PowerGuard::PowerAnalyzerBase::setParameters(this, a5, a6);
  result = ((a2 * a2) * a3) / a4;
  *(this + 23) = result;
  return result;
}

void DspLib::PowerGuard::TweeterPowerAnalyzer::reset(DspLib::PowerGuard::TweeterPowerAnalyzer *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v3 != v2)
  {
    v4 = 0;
    v5 = (v2 - v3 - 16) >> 4;
    v6 = vdupq_n_s64(v5);
    v7 = (v5 + 4) & 0x1FFFFFFFFFFFFFFCLL;
    v8 = (v3 + 40);
    do
    {
      v9 = vdupq_n_s64(v4);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE095160)));
      if (vuzp1_s16(v10, *v6.i8).u8[0])
      {
        *(v8 - 8) = 0;
      }

      if (vuzp1_s16(v10, *&v6).i8[2])
      {
        *(v8 - 4) = 0;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE095150)))).i32[1])
      {
        *v8 = 0;
        v8[4] = 0;
      }

      v4 += 4;
      v8 += 16;
    }

    while (v7 != v4);
  }

  DspLib::CircularDelay::reset((this + 56));
  *(this + 22) = 0;

  DspLib::AveragingDecimator::reset((this + 96));
}

uint64_t DspLib::PowerGuard::TweeterPowerAnalyzer::powerFunction(DspLib::PowerGuard::TweeterPowerAnalyzer *this, const float *const *a2, unint64_t a3, vDSP_Length __N, float *a5)
{
  result = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a3 && __N)
  {
    *v16 = __N;
    DspLib::clear(v17, __N);
    v11 = 0;
    v12 = 1;
    do
    {
      DspLib::multiplyAccumulate(v17, *v16, a2[v11], __N, a2[v11]);
      v11 = v12++;
    }

    while (v11 < a3);
    DspLib::multiply(v17, *v16, *(this + 23));
    v13 = *(this + 14);
    v14 = a5;
    v15 = 4;
    DspLib::AveragingDecimator::processKernel(this + 96, v17, *v16, &v14, v13, (*(this + 15) - v13) >> 2, this + 14);
    return v15;
  }

  return result;
}

BOOL DspLib::PowerGuard::TargetCalculator::setParameters(DspLib::PowerGuard::TargetCalculator *this, unint64_t a2, const float *a3, const float *a4, unint64_t a5)
{
  v10 = 0;
  v11 = (*(this + 1) - *this) >> 2;
  do
  {
    DspLib::LinearDelay::setLength((this + v10), a2);
    v10 += 24;
  }

  while (v10 != 96);
  do
  {
    DspLib::LinearDelay::setLength((this + v10), a2);
    v10 += 24;
  }

  while (v10 != 192);
  if (a5 > 4)
  {
    DspLib::PowerGuard::TargetCalculator::setParameters();
  }

  else
  {
    if (a5)
    {
      v12 = (this + 272);
      do
      {
        v13 = *a3++;
        *(v12 - 4) = v13;
        v14 = *a4++;
        *v12++ = v14;
        --a5;
      }

      while (a5);
    }

    if (v11 != a2)
    {
      DspLib::PowerGuard::TargetCalculator::reset(this);
    }
  }

  return v11 != a2;
}

double DspLib::PowerGuard::TargetCalculator::reset(DspLib::PowerGuard::TargetCalculator *this)
{
  v2 = (this + 8);
  v3 = 96;
  do
  {
    DspLib::clear(*(v2 - 1), (*v2 - *(v2 - 1)) >> 2);
    v2 += 3;
    v3 -= 24;
  }

  while (v3);
  v4 = (this + 104);
  v5 = 96;
  do
  {
    DspLib::clear(*(v4 - 1), (*v4 - *(v4 - 1)) >> 2);
    v4 += 3;
    v5 -= 24;
  }

  while (v5);
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  memset_pattern16(this + 288, &unk_1DE095DF0, 0x10uLL);
  memset_pattern16(this + 304, &unk_1DE095DF0, 0x10uLL);
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void DspLib::PowerGuard::TargetCalculator::process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = a5;
  v16[3] = a4;
  v25 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v16[0] = a1 + 208;
  v16[1] = a1 + 192;
  v20 = a2;
  v17 = a3;
  v24 = (a3 + 16);
  v21 = *(a2 + 80);
  v22 = a2 + 16;
  v5 = DspLib::maxv((a2 + 16), v21);
  v6 = v23;
  v7 = v23 - 16;
  *(v23 + 192) = v5;
  v8 = (v7 + 208);
  v9 = DspLib::maxv(*v6, (*(v6 + 8) - *v6) >> 2);
  if (*v8 >= v9)
  {
    v9 = *v8;
  }

  *v8 = v9;
  v19 = *(v17 + 80);
  v10 = DspLib::maxv(v24, v19);
  v11 = v23;
  v12 = v23 - 16;
  *(v23 + 208) = v10;
  v13 = (v12 + 224);
  v15 = DspLib::maxv(*(v11 + 96), (*(v11 + 104) - *(v11 + 96)) >> 2);
  v18 = v16;
  if (*v13 >= v15)
  {
    v15 = *v13;
  }

  *v13 = v15;
  MEMORY[0x1EEE9AC00](v14);
  DspLib::add();
}

void *DspLib::PowerGuard::TargetCalculator::status(float *a1, float *__dst)
{
  v4 = 4;
  DspLib::copy(a1 + 48, 4, __dst);
  v5 = DspLib::copy(a1 + 52, 4, __dst + 35);
  v6 = __dst + 43;
  v7 = a1 + 76;
  do
  {
    *(v6 - 35) = DspLib::power2dBSafe(v5, *(v7 - 4), 1.0e-20);
    v8 = *v7++;
    *v6++ = DspLib::power2dBSafe(v9, v8, 1.0e-20);
    --v4;
  }

  while (v4);
  DspLib::copy(a1 + 56, 4, __dst + 48);

  return DspLib::copy(a1 + 60, 4, __dst + 52);
}

BOOL DspLib::PowerGuard::GainCalculator::setParameters(DspLib::PowerGuard::GainCalculator *this, unint64_t a2, float a3)
{
  v6 = (*(this + 1) - *this) >> 2;
  DspLib::LinearDelay::setLength(this, a2);
  *(this + 6) = a3;
  if (v6 != a2)
  {
    DspLib::clear(*this, (*(this + 1) - *this) >> 2);
  }

  return v6 != a2;
}

void DspLib::PowerGuard::GainCalculator::process(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 8);
  v6 = *(a2 + 80) + ((*(a1 + 8) - *a1) >> 2);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v12 - v7;
  DspLib::LinearDelay::process(v9, v10, v11, v12 - v7, v11);
  DspLib::copy(*a1, (*v5 - *a1) >> 2, &v8[4 * v6 - (*v5 - *a1)]);
  DspLib::PowerGuard::findGainFromZeroInputZeroStateDecomposition(a3, v8, v6);
}

float sub_1DDC1A7D4(float a1)
{
  v3 = sqrtf(a1);
  if (v3 < *(v1 + 24))
  {
    v3 = *(v1 + 24);
  }

  v4 = sqrtf(v2);
  if (v3 < (v4 * 0.70711))
  {
    v3 = v4 * 0.70711;
  }

  if (v4 < v3)
  {
    v3 = v4;
  }

  return fmaxf(v3, 0.0);
}

void DspLib::PowerGuard::findGainFromZeroInputZeroStateDecomposition(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17[-2 * v7 - 1];
  v9 = 0;
  memset(v20, 0, sizeof(v20));
  v10 = 4 * v6;
  do
  {
    *(v20 + v9) = v8;
    v8 = (v8 + ((4 * v6) & 0xFFFFFFFFFFFFFFF0) + 16);
    v9 += 8;
  }

  while (v9 != 32);
  *&v18 = v20;
  *(&v18 + 1) = 4;
  *&v19 = a3;
  v11 = DspLib::MultiMovingAverage::zeroStateResponse(a1, v5, a3, &v18);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v18 = 0u;
  v19 = 0u;
  do
  {
    *(&v18 + v14) = v13;
    v13 += (v10 & 0xFFFFFFFFFFFFFFF0) + 16;
    v14 += 8;
  }

  while (v14 != 32);
  v17[0] = &v18;
  v17[1] = 4;
  v17[2] = a3;
  DspLib::MultiMovingAverage::zeroInputResponse(a1, v17);
  MEMORY[0x1EEE9AC00](v15);
  DspLib::add();
}

float sub_1DDC1A9EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = COERCE_FLOAT(DspLib::maxIndex(v25, v24));
  v33 = *(v22 + 4 * v27) * v30;
  v34 = *(v23 + 4 * v27);
  if ((v31 - v34) > v33)
  {
    v35 = v34 - *(*(v26 + 8 * v27) + 4 * v32);
    if (v33 < v35)
    {
      v33 = v35;
    }

    v36 = v33 / *(*(v28 + 8 * v27) + 4 * v32);
    if (v36 < v29)
    {
      v29 = v36;
    }
  }

  if (v27 != 3)
  {
    JUMPOUT(0x1DDC1A9A4);
  }

  return v29;
}

uint64_t DspLib::PowerGuard::PowerController::setParameters(DspLib::PowerGuard::PowerController *this, unint64_t a2, const float *a3, const float *a4, unint64_t a5, float a6)
{
  v9 = DspLib::PowerGuard::TargetCalculator::setParameters(this, a2, a3, a4, a5);
  v10 = v9 | DspLib::PowerGuard::GainCalculator::setParameters((this + 336), a2, a6);
  v11 = v10 | DspLib::PowerGuard::GainCalculator::setParameters((this + 368), a2, a6);
  if (v11 == 1)
  {
    DspLib::PowerGuard::PowerController::reset(this);
  }

  return v11;
}

void DspLib::PowerGuard::PowerController::reset(float **this)
{
  DspLib::PowerGuard::TargetCalculator::reset(this);
  DspLib::clear(this[42], this[43] - this[42]);
  DspLib::clear(this[46], this[47] - this[46]);
  this[40] = 0;
  this[41] = 0;
}

BOOL DspLib::PowerGuard::PowerController::uninitialize(DspLib::PowerGuard::PowerController *this)
{
  DspLib::PowerGuard::GainCalculator::setParameters((this + 336), 0, 0.0);

  return DspLib::PowerGuard::GainCalculator::setParameters((this + 368), 0, 0.0);
}

void DspLib::PowerGuard::GainApplier::initialize(DspLib::PowerGuard::GainApplier *this, double a2, unint64_t a3, unint64_t a4)
{
  *this = a2;
  v7 = *(this + 9);
  v8 = *(this + 8);
  std::vector<DspLib::LinearDelay>::resize(this + 8, a3);
  if (a4 == (*(this + 2) - *(this + 1)) >> 2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) == a3)
    {
      return;
    }
  }

  else
  {
    std::vector<float>::resize(this + 1, a4);
    std::vector<float>::resize(this + 4, a4);
  }

  DspLib::PowerGuard::GainApplier::reset(this);
}

void DspLib::PowerGuard::GainApplier::reset(DspLib::PowerGuard::GainApplier *this)
{
  *(this + 14) = 1065353216;
  v1 = *(this + 8);
  v2 = *(this + 9);
  while (v1 != v2)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    v1 += 24;
    DspLib::clear(v3, (v4 - v3) >> 2);
  }
}

void DspLib::PowerGuard::GainApplier::uninitialize(DspLib::PowerGuard::GainApplier *this)
{
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 8);
  *(this + 2) = *(this + 1);
  *(this + 5) = *(this + 4);
}

BOOL DspLib::PowerGuard::GainApplier::setParameters(DspLib::PowerGuard::GainApplier *this, unint64_t a2, float a3, float a4)
{
  v7 = *(this + 8);
  v8 = *(this + 9);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2 != (*(v7 + 8) - *v7) >> 2;
    do
    {
      DspLib::LinearDelay::setLength(v7, a2);
      v7 += 24;
    }

    while (v7 != v8);
  }

  v11 = *(this + 1);
  v12 = *(this + 2) - v11;
  if (v12)
  {
    v13 = *this;
    v14 = 1.0;
    v15 = 1.0;
    if ((1.0 / v13) < a3)
    {
      v15 = (1000.0 / v13) / (a3 / 4.6052);
    }

    v16 = v12 >> 2;
    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    if ((1.0 / v13) < a4)
    {
      v14 = (1000.0 / v13) / (a4 / 4.6052);
    }

    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    *v11 = v15;
    v17 = *(this + 4);
    *v17 = v14;
    if (v16 >= 2)
    {
      v18 = 0;
      for (i = 1; i < v16; i = (v18++ + 2))
      {
        v11[i] = v11[v18] + (v15 * (1.0 - v11[v18]));
        v17[i] = v17[v18] + (v14 * (1.0 - v17[v18]));
      }
    }
  }

  if (v10)
  {
    DspLib::PowerGuard::GainApplier::reset(this);
  }

  return v10;
}

char **DspLib::PowerGuard::GainApplier::process(char **this, const float *const *a2, float *const *a3, unint64_t a4, float a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = this[9] - this[8];
  if (v5)
  {
    v10 = this;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v13 = 1;
    do
    {
      this = DspLib::LinearDelay::process((*(v10 + 64) + 24 * v11), a2[v11], a4, a3[v11], a4);
      v11 = v13;
    }

    while (v12 > v13++);
    v15 = *(v10 + 56);
    if (a5 != 1.0 || v15 != 1.0)
    {
      v17 = 8;
      if (v15 < a5)
      {
        v17 = 32;
      }

      v18 = MEMORY[0x1EEE9AC00](*(v10 + v17));
      v20 = v23 - v19;
      DspLib::multiplyAdd(v18, a4, v23 - v19, v21, *(v10 + 56));
      v22 = *&v20[4 * a4 - 4];
      if (v22 > 0.9977)
      {
        v22 = 1.0;
      }

      *(v10 + 56) = v22;
      DspLib::multiply();
    }
  }

  return this;
}

uint64_t DspLib::PowerGuard::PowerAnalyzerBase::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/PowerGuard/dsp/DspLibPowerGuardClasses.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 38);
  ++DspLibDebug::mAssertCounter;
  return result;
}

uint64_t DspLib::PowerGuard::TargetCalculator::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/PowerGuard/dsp/DspLibPowerGuardClasses.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 212);
  ++DspLibDebug::mAssertCounter;
  return result;
}

double __divdc3(double a1, double a2, double a3, double a4)
{
  v4 = fmax(fabs(a3), fabs(a4));
  v5 = -INFINITY;
  v6 = __clz(*&v4);
  v7 = (((*&v4 << (v6 - 11) >> 52) & 0x7FF) - v6 - 1012);
  if (*&v4 >> 52)
  {
    v7 = ((*&v4 >> 52) - 1023);
  }

  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (*&v4 >> 52 == 2047)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v22 = -v8;
  if (a3 == 0.0 || (v23 = (*&a3 >> 52) & 0x7FFLL, v23 == 2047))
  {
LABEL_34:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v24 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v25 = __clz(v24);
    v26 = v24 << (v25 - 11);
    LODWORD(v23) = 12 - v25;
    v24 = v26 & 0xFFEFFFFFFFFFFFFFLL;
  }

  v20 = __OFADD__(v23, v22);
  LODWORD(v23) = v23 - v8;
  if (v20)
  {
    v23 = (v23 >> 31) ^ 0x80000000;
  }

  else
  {
    v23 = v23;
  }

  v27 = *&a3 & 0x8000000000000000;
  if (v23 < 2047)
  {
    if (v23 <= 0)
    {
      v37 = v24 | v27 | 0x10000000000000;
      if (v23 <= -1021)
      {
        v38 = -1021;
      }

      else
      {
        v38 = v23;
      }

      a3 = *&v37 * COERCE_DOUBLE((v38 + 1022) << 52);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    *&a3 = v27 | (v23 << 52) | v24;
    goto LABEL_34;
  }

  a3 = COERCE_DOUBLE(v27 | 0x7FE0000000000000) + COERCE_DOUBLE(v27 | 0x7FE0000000000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_35:
  v28 = (*&a4 >> 52) & 0x7FFLL;
  if (v28 != 2047)
  {
    v29 = *&a4 & 0xFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v30 = __clz(v29);
      v31 = v29 << (v30 - 11);
      LODWORD(v28) = 12 - v30;
      v29 = v31 & 0xFFEFFFFFFFFFFFFFLL;
    }

    v20 = __OFADD__(v28, v22);
    LODWORD(v32) = v28 - v8;
    if (v20)
    {
      v32 = (v32 >> 31) ^ 0x80000000;
    }

    else
    {
      v32 = v32;
    }

    v33 = *&a4 & 0x8000000000000000;
    if (v32 < 2047)
    {
      if (v32 <= 0)
      {
        if (v32 <= -1021)
        {
          LODWORD(v32) = -1021;
        }

        a4 = COERCE_DOUBLE(v29 | v33 | 0x10000000000000) * COERCE_DOUBLE((v32 + 1022) << 52);
      }

      else
      {
        *&a4 = v33 | (v32 << 52) | v29;
      }
    }

    else
    {
      a4 = COERCE_DOUBLE(v33 | 0x7FE0000000000000) + COERCE_DOUBLE(v33 | 0x7FE0000000000000);
    }
  }

LABEL_10:
  v10 = a4 * a4 + a3 * a3;
  v11 = (a4 * a2 + a1 * a3) / v10;
  v12 = -v9;
  if (v11 != 0.0)
  {
    v13 = (a4 * a2 + a1 * a3) / v10;
    v14 = (*&v11 >> 52) & 0x7FFLL;
    if (v14 != 2047)
    {
      v15 = *&v13 & 0xFFFFFFFFFFFFFLL;
      v16 = __clz(*&v13 & 0xFFFFFFFFFFFFFLL);
      v17 = (*&v13 & 0xFFFFFFFFFFFFFLL) << (v16 - 11);
      v18 = 12 - v16;
      v19 = v17 & 0xFFEFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v19;
        LODWORD(v14) = v18;
      }

      v20 = __OFADD__(v14, v12);
      LODWORD(v14) = v14 + v12;
      if (v20)
      {
        v14 = (v14 >> 31) ^ 0x80000000;
      }

      else
      {
        v14 = v14;
      }

      v21 = *&v11 & 0x8000000000000000;
      if (v14 < 2047)
      {
        if (v14 <= 0)
        {
          v34 = v15 | v21 | 0x10000000000000;
          if (v14 <= -1021)
          {
            v35 = -1021;
          }

          else
          {
            v35 = v14;
          }

          return *&v34 * COERCE_DOUBLE((v35 + 1022) << 52);
        }

        else
        {
          *&v11 = v21 | (v14 << 52) | v15;
        }
      }

      else
      {
        return COERCE_DOUBLE(v21 | 0x7FE0000000000000) + COERCE_DOUBLE(v21 | 0x7FE0000000000000);
      }
    }
  }

  return v11;
}

float __divsc3(float a1, float a2, float a3, float a4)
{
  v4 = fmaxf(fabsf(a3), fabsf(a4));
  v5 = LODWORD(v4) >> 23;
  v6 = -INFINITY;
  v7 = __clz(LODWORD(v4));
  v8 = ((LODWORD(v4) << (v7 - 8) >> 23) - v7 - 119);
  if (LODWORD(v4) >= 0x800000)
  {
    v8 = (v5 - 127);
  }

  if (v4 != 0.0)
  {
    v6 = v8;
  }

  if (v5 == 255)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v24 = -v9;
  if (a3 == 0.0 || (v25 = (LODWORD(a3) >> 23), v25 == 255))
  {
LABEL_32:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  v26 = LODWORD(a3) & 0x7FFFFF;
  if (!(LODWORD(a3) >> 23))
  {
    v27 = __clz(v26);
    v28 = v26 << (v27 - 8);
    v25 = 9 - v27;
    v26 = v28 & 0xFF7FFFFF;
  }

  v21 = __OFADD__(v25, v24);
  v29 = v25 - v9;
  if (v21)
  {
    v29 = (v29 >> 31) ^ 0x80000000;
  }

  v30 = LODWORD(a3) & 0x80000000;
  if (v29 < 255)
  {
    if (v29 <= 0)
    {
      v40 = v26 | v30 | 0x800000;
      if (v29 <= -125)
      {
        v41 = -125;
      }

      else
      {
        v41 = v29;
      }

      a3 = *&v40 * COERCE_FLOAT((v41 << 23) + 1056964608);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    LODWORD(a3) = v30 | (v29 << 23) | v26;
    goto LABEL_32;
  }

  a3 = COERCE_FLOAT(v30 | 0x7F000000) + COERCE_FLOAT(v30 | 0x7F000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v31 = (LODWORD(a4) >> 23);
  if (v31 != 255)
  {
    v32 = LODWORD(a4) & 0x7FFFFF;
    if (!(LODWORD(a4) >> 23))
    {
      v33 = __clz(v32);
      v34 = v32 << (v33 - 8);
      v31 = 9 - v33;
      v32 = v34 & 0xFF7FFFFF;
    }

    v21 = __OFADD__(v31, v24);
    v35 = v31 - v9;
    if (v21)
    {
      v35 = (v35 >> 31) ^ 0x80000000;
    }

    v36 = LODWORD(a4) & 0x80000000;
    if (v35 < 255)
    {
      if (v35 <= 0)
      {
        if (v35 <= -125)
        {
          v35 = -125;
        }

        a4 = COERCE_FLOAT(v32 | v36 | 0x800000) * COERCE_FLOAT((v35 << 23) + 1056964608);
      }

      else
      {
        LODWORD(a4) = v36 | (v35 << 23) | v32;
      }
    }

    else
    {
      a4 = COERCE_FLOAT(v36 | 0x7F000000) + COERCE_FLOAT(v36 | 0x7F000000);
    }
  }

LABEL_10:
  v11 = (a4 * a4) + (a3 * a3);
  *&v12 = ((a4 * a2) + (a1 * a3)) / v11;
  v13 = -v10;
  if (*&v12 != 0.0)
  {
    v14 = ((a4 * a2) + (a1 * a3)) / v11;
    v15 = (v12 >> 23);
    if (v15 != 255)
    {
      v16 = LODWORD(v14) & 0x7FFFFF;
      v17 = __clz(LODWORD(v14) & 0x7FFFFF);
      v18 = (LODWORD(v14) & 0x7FFFFF) << (v17 - 8);
      v19 = 9 - v17;
      v20 = v18 & 0xFF7FFFFF;
      if (!(v12 >> 23))
      {
        v16 = v20;
        v15 = v19;
      }

      v21 = __OFADD__(v15, v13);
      v22 = v15 + v13;
      if (v21)
      {
        v22 = (v22 >> 31) ^ 0x80000000;
      }

      v23 = v12 & 0x80000000;
      if (v22 < 255)
      {
        if (v22 <= 0)
        {
          v37 = v16 | v23 | 0x800000;
          if (v22 <= -125)
          {
            v38 = -125;
          }

          else
          {
            v38 = v22;
          }

          *&v12 = *&v37 * COERCE_FLOAT((v38 << 23) + 1056964608);
        }

        else
        {
          v12 = v23 | (v22 << 23) | v16;
        }
      }

      else
      {
        *&v12 = COERCE_FLOAT(v23 | 0x7F000000) + COERCE_FLOAT(v23 | 0x7F000000);
      }
    }
  }

  return *&v12;
}

void AudioDSPManager::RegisterAudioUnits(AudioDSPManager *this, char a2)
{
  if ((a2 & 2) != 0)
  {
    if (CACFPreferencesGetAppBooleanValue(@"AllAUsPublic", @"com.apple.coreaudio", 0))
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x8000;
    }

    RegisterInternalAudioUnits_iOS(v3);
  }

  if (a2)
  {
    RegisterPublicAudioUnits();
  }

  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_async(global_queue, &__block_literal_global);
}

void ___ZN15AudioDSPManager18RegisterAudioUnitsEj_block_invoke()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = "audiomxd";
  v1 = _os_feature_enabled_impl();
  if (!v1)
  {
    v0 = "mediaserverd";
  }

  v2 = getpid();
  caulk::platform::process_name(v2);
  if (v1)
  {
    v3 = 8;
  }

  else
  {
    v3 = 12;
  }

  v4 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v3 == __s1.__r_.__value_.__l.__size_ && !memcmp(__s1.__r_.__value_.__l.__data_, v0, v3))
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
LABEL_19:
      v24 = getenv("TMPDIR");
      if (v24)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "start migrating AudioUnit assets", &__s1, 2u);
        }

        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v23, &v24);
        std::__fs::filesystem::path::path[abi:ne200100]<char [6],void>(&__s1, "Cache");
        std::__fs::filesystem::operator/[abi:ne200100](&v22, &v23, &__s1);
        if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s1.__r_.__value_.__l.__data_);
        }

        v6 = open("/dev/urandom", 0x1000000);
        if (v6 == -1)
        {
          v16 = *__error();
          std::string::basic_string[abi:ne200100]<0>(&buf, "open /dev/urandom");
          v17 = std::runtime_error::runtime_error(&__s1, &buf);
          __s1.__r_.__value_.__r.__words[0] = &unk_1F5929980;
          __s1.__r_.__value_.__r.__words[2] = v16;
          __base.__pn_.__r_.__value_.__r.__words[0] = "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
          __base.__pn_.__r_.__value_.__l.__size_ = "boost::uuids::detail::random_provider_base::random_provider_base()";
          __base.__pn_.__r_.__value_.__r.__words[2] = 60;
          boost::throw_exception<boost::uuids::entropy_error>(v17, &__base);
        }

        for (i = 0; i != 2; ++i)
        {
          std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v21.__pn_, &off_1E866C5C0[i]);
          std::__fs::filesystem::__status(&v21, 0);
          if (__s1.__r_.__value_.__s.__data_[0] && __s1.__r_.__value_.__s.__data_[0] != 255)
          {
            MEMORY[0x1E12BCE40](&v20, &v21, 0, 0);
            while (v20.__imp_.__ptr_)
            {
              v8 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&v20);
              std::__fs::filesystem::path::extension[abi:ne200100](&__s1, &v8->__p_);
              std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__base.__pn_, ".mil");
              v31.__data_ = &__base;
              v9 = std::__fs::filesystem::operator==[abi:ne200100](&__s1, v31);
              if (SHIBYTE(__base.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__base.__pn_.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__s1.__r_.__value_.__l.__data_);
                if (v9)
                {
LABEL_36:
                  if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&pn, v22.__pn_.__r_.__value_.__l.__data_, v22.__pn_.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    pn = v22.__pn_;
                  }

                  std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(&__base.__pn_, "/");
                  std::__fs::filesystem::path::lexically_relative(&__s1, &v8->__p_, &__base);
                  std::__fs::filesystem::path::operator/=[abi:ne200100](&pn, &__s1);
                  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__s1.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__base.__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__base.__pn_.__r_.__value_.__l.__data_);
                  }

                  std::__fs::filesystem::path::path[abi:ne200100]<char [4],void>(&__s1, ".ir");
                  std::__fs::filesystem::path::replace_extension(&pn, &__s1);
                  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__s1.__r_.__value_.__l.__data_);
                  }

                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    p_pn = &pn;
                    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      p_pn = pn.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(__s1.__r_.__value_.__l.__data_) = 136315138;
                    *(__s1.__r_.__value_.__r.__words + 4) = p_pn;
                    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "compiling %s", &__s1, 0xCu);
                  }

                  v11 = std::__fs::filesystem::path::__parent_path(&pn);
                  if (v11.__size_ < 0x7FFFFFFFFFFFFFF8)
                  {
                    if (v11.__size_ < 0x17)
                    {
                      *(&__s1.__r_.__value_.__s + 23) = v11.__size_;
                      if (v11.__size_)
                      {
                        memmove(&__s1, v11.__data_, v11.__size_);
                      }

                      __s1.__r_.__value_.__s.__data_[v11.__size_] = 0;
                      __from.__pn_ = __s1;
                      std::__fs::filesystem::__create_directories(&__from, 0);
                      v12 = 0;
                      while (1)
                      {
                        v13 = read(v6, &v27 + v12, 16 - v12);
                        if (v13 < 0)
                        {
                          v14 = *__error();
                          if (v14 != 4)
                          {
                            std::string::basic_string[abi:ne200100]<0>(&buf, "read");
                            v15 = std::runtime_error::runtime_error(&__s1, &buf);
                            __s1.__r_.__value_.__r.__words[0] = &unk_1F5929980;
                            __s1.__r_.__value_.__r.__words[2] = v14;
                            __base.__pn_.__r_.__value_.__r.__words[0] = "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
                            __base.__pn_.__r_.__value_.__l.__size_ = "void boost::uuids::detail::random_provider_base::get_random_bytes(void *, std::size_t)";
                            __base.__pn_.__r_.__value_.__r.__words[2] = 98;
                            boost::throw_exception<boost::uuids::entropy_error>(v15, &__base);
                          }
                        }

                        else
                        {
                          v12 += v13;
                        }

                        if (v12 >= 0x10)
                        {
                          BYTE8(v27) = BYTE8(v27) & 0x3F | 0x80;
                          BYTE6(v27) = BYTE6(v27) & 0xF | 0x40;
                          v26 = v27;
                          operator new();
                        }
                      }
                    }

                    operator new();
                  }

                  std::string::__throw_length_error[abi:ne200100]();
                }
              }

              else if (v9)
              {
                goto LABEL_36;
              }

              std::__fs::filesystem::recursive_directory_iterator::__increment(&v20, 0);
            }

            if (v20.__imp_.__cntrl_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20.__imp_.__cntrl_);
            }
          }

          if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__pn_.__r_.__value_.__l.__data_);
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "stop migrating AudioUnit assets", &__s1, 2u);
        }

        boost::uuids::detail::random_provider_base::destroy(v6);
        if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          v5 = v23.__r_.__value_.__r.__words[0];
          goto LABEL_16;
        }
      }

      return;
    }
  }

  else if (v3 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]) && !memcmp(&__s1, v0, v3))
  {
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "cannot migrate AudioUnit assets for current process", &buf, 2u);
    v4 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
  }

  if (v4 < 0)
  {
    v5 = __s1.__r_.__value_.__r.__words[0];
LABEL_16:
    operator delete(v5);
  }
}

void sub_1DDC1C68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    __cxa_end_catch();
    if (a28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a28);
    }

    if (a35 < 0)
    {
      operator delete(__p);
    }

    boost::uuids::detail::random_provider_base::destroy(v47);
    if (a41 < 0)
    {
      operator delete(a36);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }

    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *(v48 - 176) = 0;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to migrate AudioUnit assets due to uncaught exception", (v48 - 176), 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDC1BCA0);
  }

  _Unwind_Resume(a1);
}

void ***std::unique_ptr<PPUtils::SphericalCoordinateTree>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void PPUtils::ContiguousArray2D<float>::resize(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  v6 = a3 * a2;
  std::vector<float>::resize((a1 + 8), a3 * a2);
  std::vector<float>::shrink_to_fit((a1 + 8));
  std::vector<float *>::resize((a1 + 32), a2);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48) - v8;
  if (v9 > (v7 - v8))
  {
    v10 = (v7 - v8) >> 3;
    if (v7 != v8)
    {
      std::allocator<float *>::allocate_at_least[abi:ne200100](a1 + 32, (v7 - v8) >> 3);
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
      *(*(a1 + 32) + v16) = *(a1 + 8) + 4 * v15;
      v16 += 8;
      v15 += a3;
    }

    while (v18 != v16);
  }
}

void sub_1DDC1C998(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC1C948);
}

void PPUtils::IterativeGridScanningIndices::convertSphericalToUnitCartesianCoordinates(float **a1, uint64_t a2, unsigned int a3, float **a4, uint64_t a5)
{
  if (a3)
  {
    if ((a2 - a1) < 9)
    {
      __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 61, "inIdx<mPtrs.size()");
    }

    if ((a5 - a4) < 0x11)
    {
      __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
    }

    v6 = a4[1];
    v5 = a4[2];
    v8 = *a1;
    v7 = a1[1];
    v9 = *a4;
    v10 = a3;
    do
    {
      *v5++ = sinf(*v7 * 0.017453);
      v11 = *v7++;
      v12 = cosf(v11 * 0.017453);
      *v9++ = v12 * cosf(*v8 * 0.017453);
      v13 = *v8++;
      *v6++ = v12 * sinf(v13 * 0.017453);
      --v10;
    }

    while (v10);
  }
}

uint64_t PPUtils::ContiguousArray2D<float>::ContiguousArray2D(uint64_t a1, unsigned int a2, int a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  PPUtils::ContiguousArray2D<float>::resize(a1, a2, a3);
  return a1;
}

void sub_1DDC1CAD8(_Unwind_Exception *exception_object)
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

void *PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<float>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = 4 * (v4 >> 2);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 7;
        std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

float32x2_t PPUtils::applyFrontWarping(uint64_t *a1, uint64_t a2, float32x2_t result)
{
  if (result.f32[0] <= 0.01)
  {
    v7 = *a1;
    *(a2 + 8) = *(a1 + 2);
    *a2 = v7;
    return result;
  }

  v3 = ((1.0 - result.f32[0]) * *a1) + result.f32[0];
  v4 = vmla_n_f32(vmul_n_f32(*(a1 + 4), 1.0 - result.f32[0]), 0, result.f32[0]);
  v5 = fmaxf(fabsf(v3), fmaxf(fabsf(v4.f32[0]), fabsf(v4.f32[1])));
  if (v5 <= 1.8447e19)
  {
    v8 = v5 < 5.421e-20;
    v9 = 1.0;
    if (!v8)
    {
      goto LABEL_9;
    }

    v6 = 1769996288;
  }

  else
  {
    v6 = 360710144;
  }

  v9 = *&v6;
LABEL_9:
  v10 = 1.0 / (sqrtf((((v4.f32[0] * v9) * (v4.f32[0] * v9)) + ((v3 * v9) * (v3 * v9))) + ((v4.f32[1] * v9) * (v4.f32[1] * v9))) / v9);
  *a2 = v3 * v10;
  result = vmul_n_f32(v4, v10);
  *(a2 + 4) = result;
  return result;
}