void DspLib::ThermalSpeakerProtection::Algorithm::reset()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/ThermalSpeakerProtection/dsp/DspLibThermalSpeakerProtection.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 207);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::ThermalSpeakerProtection::Algorithm::processBlock()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/ThermalSpeakerProtection/dsp/DspLibThermalSpeakerProtection.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 432);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::ThermalSpeakerProtection::Algorithm::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/ThermalSpeakerProtection/dsp/DspLibThermalSpeakerProtection.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 452);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

float DspLib::BassQueen::Parameters::min(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0x31)
  {
    return DspLib::BassQueen::Parameters::kMinimum[a3];
  }

  v5 = DspLib::LoudspeakerModel::Parameters::mode((a1 + 200));

  return DspLib::LoudspeakerModel::Parameters::min(v5, a3 - 50);
}

float DspLib::BassQueen::Parameters::max(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0x31)
  {
    return DspLib::BassQueen::Parameters::kMaximum[a3];
  }

  v5 = DspLib::LoudspeakerModel::Parameters::mode((a1 + 200));

  return DspLib::LoudspeakerModel::Parameters::max(v5, a3 - 50);
}

void DspLib::LoudspeakerController::BiquadModel::initialize(DspLib::LoudspeakerController::BiquadModel *this, vDSP_Length __M)
{
  DspLib::Biquad::Filter::initialize(this, 1uLL, __M);
  DspLib::Biquad::Filter::initialize((this + 72), 1uLL, __M);

  DspLib::Biquad::SetupWrapper::reset((this + 48));
}

void DspLib::LoudspeakerController::BiquadModel::zeroInputResponse(DspLib::Biquad::Filter *a1, uint64_t a2, vDSP_Length a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3 >= *(a1 + 18))
  {
    v6 = *(a1 + 18);
  }

  else
  {
    v6 = a3;
  }

  DspLib::Biquad::Filter::copyStatesFrom((a1 + 72), a1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v10 - v8;
  DspLib::clear((v10 - v8), v6);
  DspLib::Biquad::Filter::process(a1 + 9, v9, v6, a2, v6);
  DspLib::clear((a2 + 4 * a3 - 4 * (a3 - v6)), a3 - v6);
}

vDSP_Length DspLib::LoudspeakerController::EfficiencyModel::processKernel(uint64_t a1, int a2, vDSP_Length a3, float *__C, vDSP_Length __N, float *a6, vDSP_Length a7, unint64_t a8)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v19 = (v36 - v18);
    DspLib::multiply(v20, v21, v36 - v18, *(a1 + 4));
    DspLib::abs(v19, a3);
    if (*(a1 + 44) == 1)
    {
      v22 = HIDWORD(a8);
      if (*(a1 + 24))
      {
        if (a3 > v22)
        {
          v23 = 0;
          while (1)
          {
            v24 = v19[v23];
            if (v24 <= *(a1 + 48))
            {
              if (v22)
              {
                v22 = (v22 - 1);
              }

              else
              {
                v22 = 0;
              }

              if (v22)
              {
LABEL_19:
                LODWORD(a8) = 0;
                __C[v23] = *(a1 + 56);
                v25 = (a1 + 60);
                goto LABEL_20;
              }
            }

            else
            {
              v22 = *(a1 + 52);
              if (v22)
              {
                goto LABEL_19;
              }
            }

            if (v24 <= *(a1 + 28))
            {
              if (a8)
              {
                LODWORD(a8) = a8 - 1;
              }

              else
              {
                LODWORD(a8) = 0;
              }

              if (!a8)
              {
LABEL_26:
                __C[v23] = *(a1 + 16);
                v25 = (a1 + 20);
                goto LABEL_20;
              }
            }

            else
            {
              LODWORD(a8) = *(a1 + 32);
              if (!a8)
              {
                goto LABEL_26;
              }
            }

            __C[v23] = *(a1 + 36);
            v25 = (a1 + 40);
LABEL_20:
            a6[v23++] = *v25;
            if (a3 <= v23)
            {
              goto LABEL_67;
            }
          }
        }

        DspLib::fill(__C, __N, *(a1 + 56));
        DspLib::fill(a6, a7, *(a1 + 60));
        v22 = (HIDWORD(a8) - a3);
        if (a3)
        {
          v34 = 0;
          v35 = &v19[a3 - 1];
          while (*v35 <= *(a1 + 48))
          {
            ++v34;
            --v35;
            if (v34 >= a3)
            {
              goto LABEL_66;
            }
          }

          LODWORD(a8) = 0;
          v22 = *(a1 + 52) - v34;
          goto LABEL_67;
        }
      }

      else if (a3)
      {
        v31 = 0;
        do
        {
          if (v19[v31] <= *(a1 + 48))
          {
            if (v22)
            {
              v22 = (v22 - 1);
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = *(a1 + 52);
          }

          if (v22)
          {
            v32 = 56;
          }

          else
          {
            v32 = 16;
          }

          __C[v31] = *(a1 + v32);
          if (v22)
          {
            v33 = 60;
          }

          else
          {
            v33 = 20;
          }

          a6[v31++] = *(a1 + v33);
        }

        while (a3 > v31);
      }

LABEL_66:
      LODWORD(a8) = 0;
    }

    else
    {
      if (*(a1 + 24))
      {
        if (a3)
        {
          v28 = 0;
          do
          {
            if (v19[v28] <= *(a1 + 28))
            {
              if (a8)
              {
                LODWORD(a8) = a8 - 1;
              }

              else
              {
                LODWORD(a8) = 0;
              }
            }

            else
            {
              LODWORD(a8) = *(a1 + 32);
            }

            if (a8)
            {
              v29 = 36;
            }

            else
            {
              v29 = 16;
            }

            __C[v28] = *(a1 + v29);
            if (a8)
            {
              v30 = 40;
            }

            else
            {
              v30 = 20;
            }

            a6[v28++] = *(a1 + v30);
          }

          while (a3 > v28);
        }
      }

      else
      {
        DspLib::fill(__C, __N, *(a1 + 16));
        DspLib::fill(a6, a7, *(a1 + 20));
        LODWORD(a8) = 0;
      }

      v22 = 0;
    }

LABEL_67:
    DspLib::multiply(a6, a7, *(a1 + 4));
    return a8 | (v22 << 32);
  }

  v13 = 0;
  while (v13 != -36)
  {
    v14 = *(a1 + v13 + 92);
    v13 -= 12;
    if (*(a1 + 8) >= v14)
    {
      v15 = (a1 + v13 + 108);
      goto LABEL_28;
    }
  }

  v15 = (a1 + 16);
LABEL_28:
  DspLib::fill(__C, __N, *v15);
  v26 = DspLib::LoudspeakerController::EfficiencyModel::powerRatio(a1);
  DspLib::fill(a6, a7, v26);
  return 0;
}

float DspLib::LoudspeakerController::EfficiencyModel::powerRatio(DspLib::LoudspeakerController::EfficiencyModel *this)
{
  if (*(this + 64) == 1)
  {
    v1 = (this + 112);
    for (i = -36; i; i += 12)
    {
      v3 = *(v1 - 5);
      v1 -= 3;
      if (*(this + 2) >= v3)
      {
        return *(this + 1) * *v1;
      }
    }

    v1 = (this + 20);
  }

  else if (*(this + 27))
  {
    v1 = (this + 60);
  }

  else if (*(this + 26))
  {
    v1 = (this + 40);
  }

  else
  {
    v1 = (this + 20);
  }

  return *(this + 1) * *v1;
}

void DspLib::LoudspeakerController::SpeakerSystemModel::initialize(DspLib::LoudspeakerController::SpeakerSystemModel *this, double a2, uint64_t a3)
{
  *this = a2;
  DspLib::LoudspeakerController::BiquadModel::initialize((this + 160), 4uLL);
  DspLib::LoudspeakerController::BiquadModel::initialize((this + 312), 3uLL);
  DspLib::LoudspeakerManager::ThermalModel::initialize((this + 464), *this / a3);
  DspLib::AveragingDecimator::setSrcFactor((this + 656), a3, a3 - 1);
  DspLib::AveragingDecimator::setSrcFactor((this + 704), a3, a3 - 1);

  DspLib::LoudspeakerController::SpeakerSystemModel::reset(this);
}

void DspLib::LoudspeakerController::SpeakerSystemModel::reset(DspLib::LoudspeakerController::SpeakerSystemModel *this)
{
  *(this + 19) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  DspLib::Biquad::SetupWrapper::reset((this + 208));
  DspLib::Biquad::SetupWrapper::reset((this + 360));
  DspLib::LoudspeakerManager::ThermalModel::reset(this + 464);
  DspLib::AveragingDecimator::reset((this + 656));
  DspLib::AveragingDecimator::reset((this + 704));
  if (*(this + 904) == 1)
  {

    DspLib::Biquad::SetupWrapper::reset((this + 800));
  }
}

float DspLib::LoudspeakerController::SpeakerSystemModel::configure(uint64_t a1, uint64_t a2, _OWORD *a3, float a4)
{
  v8 = 0;
  v9 = *(a1 + 32);
  do
  {
    v16 = v9;
    v10 = 1.0 - exp(-1.0 / *(a2 + 8 * v8));
    v17 = v16;
    *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = v10;
    v9 = v17;
    *(a1 + 32) = v17;
    ++v8;
  }

  while (v8 != 4);
  v11 = a3[1];
  *(a1 + 60) = *a3;
  *(a1 + 76) = v11;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  *(a1 + 136) = *(a3 + 76);
  *(a1 + 124) = v14;
  *(a1 + 108) = v13;
  *(a1 + 92) = v12;
  result = (*(a1 + 60) * *(a1 + 48)) + 1.0;
  *(a1 + 52) = result;
  *(a1 + 152) = 0;
  *(a1 + 456) = a4;
  *(a1 + 304) = a4;
  return result;
}

void *DspLib::LoudspeakerController::SpeakerSystemModel::process(uint64_t a1, uint64_t a2, vDSP_Length a3, uint64_t a4, vDSP_Length a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = a2;
  v37 = *MEMORY[0x1E69E9840];
  if (a13)
  {
    DspLib::LoudspeakerController::SpeakerSystemModel::voltagePath(a1, a2, a3, a7, a8, a9, a10, a8, v33, v34);
  }

  v19 = DspLib::LoudspeakerController::SpeakerSystemModel::temperaturePath(a1, a4, a5, a11, a12);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  if (*(a1 + 112) == 1)
  {
    v23 = DspLib::LoudspeakerController::EfficiencyModel::powerRatio((a1 + 48));
    v24 = (a1 + 156);
    v25 = -36;
    while (v25)
    {
      v26 = *(v24 - 4);
      v24 -= 3;
      v25 += 12;
      if (*(a1 + 56) >= v26)
      {
        goto LABEL_10;
      }
    }

    v24 = (a1 + 64);
LABEL_10:
    DspLib::multiplyAdd(a4, a5, v22, v23, *v24);
  }

  else
  {
    v27 = MEMORY[0x1EEE9AC00](v20);
    v29 = (&v35 - v28);
    MEMORY[0x1EEE9AC00](v27);
    v31 = &v35 - v30;
    *(a1 + 152) = DspLib::LoudspeakerController::EfficiencyModel::processKernel(a1 + 48, v17, a3, v29, a5, (&v35 - v30), a5, *(a1 + 152));
    DspLib::multiplyAdd(a4, a5, v31, a5, v29, a5, v22);
  }

  v35 = *a6;
  v36 = *(a6 + 2);
  return DspLib::LoudspeakerController::SpeakerSystemModel::powerPath(a1, v22, a5, &v35);
}

void DspLib::LoudspeakerController::SpeakerSystemModel::voltagePath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DspLib::Biquad::Filter::process((a1 + 160), a2, a3, a4, a5);
  DspLib::Biquad::Filter::process((a1 + 312), a2, a3, a6, a7);
  if (*(a1 + 904) == 1)
  {

    DspLib::Biquad::Filter::process((a1 + 752), a2, a3, a9, a10);
  }
}

float32x2_t *DspLib::LoudspeakerController::SpeakerSystemModel::temperaturePath(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v16 - v9;
  v18 = v10;
  result = DspLib::AveragingDecimator::processKernel(v8 + 704, v11, v12, &v17, v13, v14, &a1[90]);
  if (v18)
  {
    return DspLib::LoudspeakerManager::ThermalModel::process(a1 + 58, v17, v18, a4, a5);
  }

  return result;
}

void *DspLib::LoudspeakerController::SpeakerSystemModel::powerPath(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1EEE9AC00](a1);
  v25 = &v24 - v7;
  v26 = v8;
  result = DspLib::AveragingDecimator::processKernel(v6 + 656, v9, v10, &v25, v11, v12, (a1 + 672));
  v14 = v26;
  if (v26)
  {
    v15 = 0;
    v16 = v25;
    v17 = *a4;
    v18 = *(a1 + 32);
    do
    {
      v19 = (v16 + 4 * v15);
      v20 = vld1q_dup_f32(v19);
      v21 = vmlaq_f32(*(a1 + 16), vsubq_f32(v20, *(a1 + 16)), v18);
      *(a1 + 16) = v21;
      v22 = v17[1];
      *(*v17 + 4 * v15) = v21.i32[0];
      *(v22 + 4 * v15) = *(a1 + 20);
      v23 = v17[3];
      *(v17[2] + 4 * v15) = *(a1 + 24);
      *(v23 + 4 * v15++) = *(a1 + 28);
    }

    while (v14 > v15);
  }

  return result;
}

void DspLib::LoudspeakerController::SpeakerSystemModel::displacementZeroState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DspLib::Biquad::SetupWrapper::reset((a1 + 280));
  DspLib::Biquad::Filter::process((a1 + 232), a2, a3, a4, a5);
  if (*(a1 + 904) == 1)
  {
    DspLib::Biquad::SetupWrapper::reset((a1 + 872));

    DspLib::Biquad::Filter::process((a1 + 824), a2, a3, a6, a7);
  }
}

void *DspLib::LoudspeakerController::SpeakerSystemModel::powerPathZeroState(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = (a1[41].f32[2] * (a3 + ((a1[42].i64[1] - a1[42].i64[0]) >> 2)));
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - v8;
  result = DspLib::AveragingDecimator::zeroStateResponse(v7 + 656, v10, v11, v22 - v8, v6);
  if (v6)
  {
    v13 = 0;
    v14 = a1[2];
    v15 = **a4;
    v16 = (*a4)[1];
    v17 = (*a4)[2];
    v18 = (*a4)[3];
    v19 = 0uLL;
    do
    {
      v20 = &v9[4 * v13];
      v21 = vld1q_dup_f32(v20);
      v19 = vmlaq_f32(v19, vsubq_f32(v21, v19), v14);
      *(v15 + 4 * v13) = v19.i32[0];
      *(v16 + 4 * v13) = v19.i32[1];
      *(v17 + 4 * v13) = v19.i32[2];
      *(v18 + 4 * v13++) = v19.i32[3];
    }

    while (v6 > v13);
  }

  return result;
}

float32x2_t *DspLib::LoudspeakerController::SpeakerSystemModel::temperaturePathZeroState(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = (a1[89].f32[0] * (a3 + ((*&a1[91] - *&a1[90]) >> 2)));
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - v8;
  result = DspLib::AveragingDecimator::zeroStateResponse(v7 + 704, v10, v11, v13 - v8, v6);
  if (v6)
  {
    return DspLib::LoudspeakerManager::ThermalModel::zeroStateResponse(a1 + 58, v9, v6, a4);
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::SpeakerSystemModel::temperatureZeroInput(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - v7;
  DspLib::AveragingDecimator::zeroInputResponse(v6 + 704, (v11 - v7), v9);
  return DspLib::LoudspeakerManager::ThermalModel::processNoUpdate(a1 + 464, v8, a3, a2, a3);
}

void *DspLib::LoudspeakerController::SpeakerSystemModel::averagePowersZeroInput(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1EEE9AC00](a1);
  v24 = &v23 - v8;
  v25 = v7;
  result = DspLib::AveragingDecimator::processKernel(v6 + 656, v9, v10, &v24, *(v6 + 672), (*(v6 + 680) - *(v6 + 672)) >> 2, 0);
  v12 = v25;
  if (v25)
  {
    v13 = 0;
    v14 = v24;
    v16 = a1[1];
    v15 = a1[2];
    v17 = **a4;
    v18 = (*a4)[1];
    v19 = (*a4)[2];
    v20 = (*a4)[3];
    do
    {
      v21 = (v14 + 4 * v13);
      v22 = vld1q_dup_f32(v21);
      v16 = vmlaq_f32(v16, vsubq_f32(v22, v16), v15);
      *(v17 + 4 * v13) = v16.i32[0];
      *(v18 + 4 * v13) = v16.i32[1];
      *(v19 + 4 * v13) = v16.i32[2];
      *(v20 + 4 * v13++) = v16.i32[3];
    }

    while (v12 > v13);
  }

  return result;
}

void DspLib::LoudspeakerController::YoYoSmoother::configure(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (a2 != *(a1 + 8) || a3 != *(a1 + 12) || a4 != *(a1 + 16) || a5 != *(a1 + 20))
  {
    *(a1 + 8) = a2;
    *(a1 + 12) = a3;
    *(a1 + 16) = a4;
    *(a1 + 20) = a5;
    v9 = -*a1;
    v10 = 1.0 - expf(v9 / a2);
    v11 = 1.0 - expf(v9 / a4);
    v12 = expf(v9 / a3);
    *(a1 + 24) = v10;
    *(a1 + 28) = v11;
    *(a1 + 32) = 1.0 - v12;
    *(a1 + 36) = 1.0 / a5;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }
}

void DspLib::LoudspeakerController::YoYoSmoother::process(DspLib::LoudspeakerController::YoYoSmoother *this, float a2, unint64_t a3)
{
  if (a3)
  {
    if (*this == a3)
    {
      v6 = *(this + 6);
      v5 = *(this + 7);
      v7 = *(this + 8);
      v8 = *(this + 10);
      v9 = *(this + 11);
      if (v9 >= a2)
      {
        v10 = *(this + 8);
      }

      else
      {
        v10 = *(this + 6);
      }

      v11 = v9 + (v10 * (a2 - v9));
      v12 = *(this + 12) + (v5 * (a2 - *(this + 12)));
      *(this + 11) = v11;
      *(this + 12) = v12;
      if (v8 < a2)
      {
        v13 = (v12 - v11) * *(this + 9);
        if (v13 <= 1.0)
        {
          v14 = (v12 - v11) * *(this + 9);
        }

        else
        {
          v14 = 1.0;
        }

        v15 = v13 < 0.0;
        v16 = 0.0;
        if (!v15)
        {
          v16 = v14;
        }

        v7 = (v6 * (1.0 - v16)) + (v16 * v5);
      }

      v17 = v8 + (v7 * (a2 - v8));
    }

    else
    {
      v18 = -a3;
      v19 = 1.0 - expf(v18 / *(this + 2));
      v20 = 1.0 - expf(v18 / *(this + 4));
      v21 = 1.0 - expf(v18 / *(this + 3));
      v22 = *(this + 11);
      v23 = *(this + 12) + (v20 * (a2 - *(this + 12)));
      v24 = *(this + 10);
      if (v22 >= a2)
      {
        v25 = v21;
      }

      else
      {
        v25 = v19;
      }

      v26 = v22 + (v25 * (a2 - v22));
      *(this + 11) = v26;
      *(this + 12) = v23;
      if (v24 < a2)
      {
        v27 = v23 - v26;
        v28 = v27 * *(this + 9);
        if (v28 <= 1.0)
        {
          v29 = v27 * *(this + 9);
        }

        else
        {
          v29 = 1.0;
        }

        v15 = v28 < 0.0;
        v30 = 0.0;
        if (!v15)
        {
          v30 = v29;
        }

        v21 = (v19 * (1.0 - v30)) + (v30 * v20);
      }

      v17 = v24 + (v21 * (a2 - v24));
    }

    *(this + 10) = v17;
  }
}

void *DspLib::LoudspeakerController::MaskingEstimator::configure(void *this, double a2, unint64_t a3, uint64_t a4)
{
  v5 = this;
  if (*this != a2 || a3 != (this[3] - this[2]) >> 2 || this[1] != a4)
  {
    v6 = 0;
    this[1] = a4;
    *this = a2;
    v7 = 2 * a3;
    while (1)
    {
      v8 = qword_1DE098088[v6];
      v9 = a3 / v8;
      if (v9 <= 1.0)
      {
        v10 = 0;
      }

      else
      {
        v10 = vcvtpd_u64_f64(log2(v9));
      }

      v11 = v8 << v10;
      if (v11 < v7)
      {
        v7 = v11;
      }

      if (++v6 == 4)
      {
        if (v7 >= 0x400)
        {
          v12 = 1024;
        }

        else
        {
          v12 = v7;
        }

        v5[5] = v12;
        if (a3 >= 0x400)
        {
          v13 = 1024;
        }

        else
        {
          v13 = a3;
        }

        std::vector<float>::resize(v5 + 2, v13);
        DspLib::makePeriodicHannWindow(v5[2], (v5[3] - v5[2]) >> 2);
        v14 = v5[2];
        v15 = (v5[3] - v14) >> 2;
        v16 = DspLib::norm(v14, v15);
        DspLib::multiply(v14, v15, 1.0 / v16);
        std::unique_ptr<DspLib::FFT::Transform<(DspLib::FFT::Direction)1>>::reset[abi:ne200100](v5 + 6, 0);
        operator new();
      }
    }
  }

  return this;
}

uint64_t std::unique_ptr<DspLib::FFT::Transform<(DspLib::FFT::Direction)1>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

DspLib::LoudspeakerController::MaskingEstimator *DspLib::LoudspeakerController::MaskingEstimator::setMaskFreqs(DspLib::LoudspeakerController::MaskingEstimator *this, float a2, float a3)
{
  if (a2 <= a3)
  {
    v4 = this;
    started = DspLib::LoudspeakerController::MaskingEstimator::nearestStartBand(this, a2);
    if (started >= 0x62)
    {
      v6 = 98;
    }

    else
    {
      v6 = started;
    }

    *(v4 + 69) = v6;
    this = DspLib::LoudspeakerController::MaskingEstimator::nearestStopBand(v4, a3);
    if (this <= v6 + 1)
    {
      v7 = (v6 + 1);
    }

    else
    {
      v7 = this;
    }

    *(v4 + 70) = v7;
  }

  return this;
}

uint64_t DspLib::LoudspeakerController::MaskingEstimator::nearestStartBand(DspLib::LoudspeakerController::MaskingEstimator *this, float a2)
{
  v3 = 0;
  v4 = 0;
  result = 0;
  v6 = fabsf(a2);
  v7 = *(this + 61);
  v8 = *this;
  v9 = *(this + 5);
  do
  {
    v10 = v4;
    v4 = *(v7 + 8 * v3);
    *&v10 = v8 * v10 / v9;
    v11 = vabds_f32(a2, *&v10);
    if (v11 < v6)
    {
      v6 = v11;
      result = v3;
    }

    ++v3;
  }

  while (v3 != 99);
  return result;
}

uint64_t DspLib::LoudspeakerController::MaskingEstimator::nearestStopBand(DspLib::LoudspeakerController::MaskingEstimator *this, float a2)
{
  v3 = 0;
  result = 0;
  v5 = fabsf(a2);
  v6 = *(this + 61);
  v7 = *this;
  v8 = *(this + 5);
  do
  {
    v9 = v7 * *(v6 + 8 * v3) / v8;
    v10 = vabds_f32(a2, v9);
    if (v10 < v5)
    {
      v5 = v10;
      result = v3;
    }

    ++v3;
  }

  while (v3 != 99);
  return result;
}

uint64_t DspLib::LoudspeakerController::MaskingEstimator::setPressureMapping(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, DSPSplitComplex a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v16);
  a10.realp = v18;
  a10.imagp = ((&v24 - v17) & 0xFFFFFFFFFFFFFFC0);
  a11 = v19;
  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(*(v20 + 48), v21, v22, &a10);
  DspLib::FFT::amplitude(&a10, *(a1 + 464), (*(a1 + 472) - *(a1 + 464)) >> 2);
  return DspLib::multiply(*(a1 + 464), (*(a1 + 472) - *(a1 + 464)) >> 2, 0.5);
}

void DspLib::LoudspeakerController::MaskingEstimator::process(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  if (a3 > (*(v4 + 24) - *(v4 + 16)) >> 2)
  {
    DspLib::multiply();
  }

  DspLib::multiply();
}

uint64_t DspLib::LoudspeakerController::MaskingEstimator::status(uint64_t a1, char *__dst)
{
  DspLib::copy((a1 + 64), 100, __dst);
  v3 = 0;
  v4 = vdupq_n_s32(0xDA24260u);
  do
  {
    *&__dst[v3] = vbslq_s8(vcgtq_f32(v4, *&__dst[v3]), v4, *&__dst[v3]);
    v3 += 16;
  }

  while (v3 != 400);
  DspLib::power2dB(__dst, 0x64uLL, 1.0);
  result = DspLib::add(__dst, 100, 97.0);
  *(__dst + 99) = 0;
  return result;
}

void DspLib::LoudspeakerController::TargetInterpolator::process(float **this, float a2, vDSP_Length a3)
{
  if (a3)
  {
    if (*(this + 16) == 1)
    {
      DspLib::fill(this[3], this[4] - this[3], a2);
      *(this + 16) = 0;
    }

    else
    {
      DspLib::copy(&this[4][-(this[4] - this[3] - a3)], this[4] - this[3] - a3, this[3]);
      v6 = &this[3][*this - a3 + this[1]];
      v8 = *(v6 - 4);
      v7 = v6 - 4;
      v9 = v8;
      if (v8 <= a2)
      {
        v10 = &this[3][*this - a3 + this[1]];

        DspLib::fill(v10, a3, a2);
      }

      else
      {

        DspLib::linSpace(v7, a3 + 1, v9, a2);
      }
    }
  }
}

DspLib::LoudspeakerController::Algorithm *DspLib::LoudspeakerController::Algorithm::Algorithm(DspLib::LoudspeakerController::Algorithm *this)
{
  v2 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::LoudspeakerController::Parameters::kDefinition);
  *v2 = &unk_1F591A3E0;
  *(v2 + 312) = 1;
  v2[40] = 32;
  *(v2 + 476) = 0;
  *(v2 + 41) = 0u;
  *(v2 + 43) = 0u;
  *(v2 + 45) = 0u;
  *(v2 + 47) = 0u;
  *(v2 + 49) = 0u;
  *(v2 + 55) = 0u;
  *(v2 + 57) = 0u;
  *(v2 + 120) = 1065353216;
  *(v2 + 484) = 0;
  *(v2 + 135) = 16843009;
  *(v2 + 272) = 257;
  v2[74] = 0;
  *(v2 + 600) = 0;
  *(v2 + 292) = 0;
  *(v2 + 69) = 0u;
  *(v2 + 71) = 0u;
  *(v2 + 151) = 1065353216;
  *(v2 + 608) = 0;
  *(v2 + 153) = 0;
  *(v2 + 616) = 0;
  *(v2 + 636) = 0;
  *(v2 + 161) = 0;
  *(v2 + 620) = 0u;
  DspLib::Log::Log(v2 + 83);
  DspLib::Log::Log(this + 84);
  DspLib::Log::Log(this + 85);
  DspLib::Log::Log(this + 86);
  (*(*this + 168))(this);
  return this;
}

void sub_1DDBDC3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  DspLib::Log::~Log((v10 + 688));
  DspLib::Log::~Log((v10 + 680));
  DspLib::Log::~Log((v10 + 672));
  DspLib::Log::~Log((v10 + 664));
  a10 = (v10 + 624);
  std::vector<DspLib::LoudspeakerController::Algorithm::ChannelModule>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 560);
  if (v12)
  {
    *(v10 + 568) = v12;
    operator delete(v12);
  }

  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v10);
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerController::Algorithm::initialize(DspLib::LoudspeakerController::Algorithm *this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4)
  {
    v5 = *(this + 2);
    if (v5 == 4000.0)
    {
      v6 = 3;
    }

    else if (v5 == 6000.0)
    {
      v6 = 4;
    }

    else if (v5 == 8000.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 8;
      if (v5 != 11025.0 && v5 != 12000.0)
      {
        if (v5 == 16000.0)
        {
          v6 = 12;
        }

        else
        {
          v6 = 16;
          if (v5 != 22050.0 && v5 != 24000.0)
          {
            if (v5 == 32000.0)
            {
              v6 = 24;
            }

            else
            {
              v6 = 32;
              if (v5 != 44100.0 && v5 != 48000.0)
              {
                v6 = 64;
                if (v5 != 88200.0 && v5 != 96000.0)
                {
                  v18 = v5 == 192000.0 || v5 == 176400.0;
                  v6 = 128;
                  if (!v18)
                  {
                    v6 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    *(this + 40) = v6;
    v7 = v5 / v6;
    *(this + 118) = v7;
    *(this + 6) = 8 * v6;
    *(this + 476) = 0;
    *(this + 484) = 0;
    *(this + 120) = 1065353216;
    DspLib::clear(this + 110, 4uLL);
    DspLib::clear(this + 114, 4uLL);
    v8 = (*(*this + 64))(this);
    std::vector<DspLib::LoudspeakerController::Algorithm::SpeakerInfo>::resize(this + 70, v8);
    v9 = (*(*this + 64))(this);
    std::vector<DspLib::LoudspeakerController::Algorithm::ChannelModule>::resize(this + 78, v9);
    v10 = *(this + 78);
    v11 = *(this + 79);
    if (v10 != v11)
    {
      v12 = v10 + 2288;
      do
      {
        DspLib::Biquad::Filter::initialize((v12 + 2136), 1uLL, 1uLL);
        v19 = DspLib::Biquad::kBypassSection;
        v20 = 0;
        DspLib::Biquad::Filter::setCoefficients(v12 + 2136, &v19, 1, 0, 0x41uLL);
        DspLib::LoudspeakerController::BiquadModel::initialize((v12 - 2240), 4uLL);
        DspLib::Biquad::SetupWrapper::reset((v12 - 2192));
        std::vector<DspLib::LinearDelay>::resize((v12 - 1000), 4uLL);
        DspLib::LoudspeakerController::BiquadModel::initialize((v12 + 864), 4uLL);
        DspLib::Biquad::SetupWrapper::reset((v12 + 912));
        DspLib::LoudspeakerController::SpeakerSystemModel::initialize((v12 - 2080), *(this + 2), *(this + 40));
        DspLib::LoudspeakerController::SpeakerSystemModel::initialize((v12 + 1024), *(this + 2), *(this + 40));
        v13 = (*(*this + 232))(this);
        DspLib::LinearPhaseFilterbank::initialize(v12, v13);
        v14 = (*(*this + 232))(this);
        DspLib::BandCombiner::initialize((v12 + 328), v14);
        v15 = (*(*this + 232))(this);
        DspLib::GainSmoother::initialize((v12 + 600), v15);
        v16 = v12 + 2320;
        v12 += 4608;
      }

      while (v16 != v11);
    }

    *(this + 8) = 1;
    *(this + 545) = 1;
    (*(*this + 160))(this);
  }

  (*(*this + 168))(this);
  return v4;
}

void std::vector<DspLib::LoudspeakerController::Algorithm::SpeakerInfo>::resize(void *a1, unint64_t a2)
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
    std::vector<DspLib::LoudspeakerController::Algorithm::SpeakerInfo>::__append(a1, a2 - v2);
  }
}

void std::vector<DspLib::LoudspeakerController::Algorithm::ChannelModule>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 9);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<DspLib::LoudspeakerController::Algorithm::ChannelModule>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 4608 * a2;
    while (v3 != v7)
    {
      DspLib::LoudspeakerController::Algorithm::ChannelModule::~ChannelModule((v3 - 4608));
    }

    a1[1] = v7;
  }
}

DspLib::Log::Instance *DspLib::LoudspeakerController::Algorithm::configureLogging(caulk::concurrent::messenger ***this, int a2)
{
  if ((a2 & 2) != 0)
  {
    v4 = "/tmp/lsm2/";
  }

  else
  {
    v4 = "/private/var/mobile/tmp/com.apple.audiomxd/lsm2/";
  }

  result = ((*this)[29])(this);
  if ((a2 & 0x1000001) != 0)
  {
    ((*this)[8])(this);
    std::string::basic_string[abi:ne200100]<0>(&v11, v4);
    v6 = std::string::append(&v11, "ControllerFrameLog.bin", 0x16uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v13 = v6->__r_.__value_.__r.__words[2];
    v12 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (this[83])
  {
    result = DspLib::Log::uninitialize(this + 83);
  }

  if ((a2 & 0x2000001) != 0)
  {
    ((*this)[8])(this);
    std::string::basic_string[abi:ne200100]<0>(&v11, v4);
    v8 = std::string::append(&v11, "ControllerPowerLog.bin", 0x16uLL);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (this[84])
  {
    result = DspLib::Log::uninitialize(this + 84);
  }

  if ((a2 & 0x4000001) != 0)
  {
    ((*this)[8])(this);
    std::string::basic_string[abi:ne200100]<0>(&v11, v4);
    v9 = std::string::append(&v11, "ControllerSignalLog.bin", 0x17uLL);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (this[85])
  {
    result = DspLib::Log::uninitialize(this + 85);
  }

  if ((a2 & 0x8000001) != 0)
  {
    ((*this)[8])(this);
    std::string::basic_string[abi:ne200100]<0>(&v11, v4);
    v10 = std::string::append(&v11, "ControllerThermalLog.bin", 0x18uLL);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (this[86])
  {
    return DspLib::Log::uninitialize(this + 86);
  }

  return result;
}

void sub_1DDBDCD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

DspLib::Log::Instance *DspLib::LoudspeakerController::Algorithm::uninitialize(DspLib::LoudspeakerController::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  v5 = *(this + 78);
  v6 = *(this + 79);
  if (v5 != v6)
  {
    v7 = 0;
    v8 = v5 + 2536;
    do
    {
      v9 = (v8 + 4608 * v7);
      DspLib::Biquad::Filter::uninitialize((v5 + 4424));
      DspLib::LinearDelay::setLength(v5, 0);
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((v5 + 1288));
      DspLib::CircularDelay::setLength((v5 + 4504), 0);
      for (i = 0; i != 120; i += 24)
      {
        *(v5 + i + 2416) = *(v5 + i + 2408);
      }

      v5 += 4608;
      v9[3] = 0u;
      v9[4] = 0u;
      ++v7;
      v9[1] = 0u;
      v9[2] = 0u;
      *v9 = 0u;
    }

    while (v5 != v6);
  }

  result = DspLib::LoudspeakerController::Algorithm::uninitializeLogging(this);
  *(this + 8) = 0;
  return result;
}

DspLib::Log::Instance *DspLib::LoudspeakerController::Algorithm::uninitializeLogging(caulk::concurrent::messenger ***this)
{
  DspLib::Log::uninitialize(this + 83);
  DspLib::Log::uninitialize(this + 84);
  DspLib::Log::uninitialize(this + 85);

  return DspLib::Log::uninitialize(this + 86);
}

uint64_t DspLib::LoudspeakerController::Algorithm::checkParameterConstraints(DspLib::LoudspeakerController::Algorithm *this)
{
  v2 = vcvtas_u32_f32(*(*(this + 36) + 36));
  if (v2 > (*(*this + 64))(this) || *(*(this + 36) + 48) < *(*(this + 36) + 52))
  {
    return 0;
  }

  if ((*(*this + 64))(this))
  {
    v4 = 0;
LABEL_6:
    v5 = *(this + 36);
    v6 = *(this + 37) - v5;
    if (DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, 0x12u) != v6 >> 2)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    if (v4 == 8)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v7 = (v5 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, v4 + 10));
    if (v7[4] <= v7[3] && v7[5] <= v7[6])
    {
      v8 = 0;
      v9 = v7 + 1;
      v10 = 1;
      while (1)
      {
        v11 = v10;
        v12 = v8;
        if (v7[v12 + 9] > v9[v12 + 9] || *(v7 + ((v12 * 4) | 0x30)) > *(v9 + ((v12 * 4) | 0x30)))
        {
          break;
        }

        v10 = 0;
        v8 = 1;
        if ((v11 & 1) == 0)
        {
          if (v7[14] <= v7[15])
          {
            v13 = v7 + 19;
            v14 = 3;
            while (1)
            {
              v15 = *(v13 - 1);
              if (*(v13 - 2) > v15 || v15 > *v13)
              {
                break;
              }

              ++v13;
              if (!--v14)
              {
                if (v2 && v7[30] >= v2)
                {
                  return 0;
                }

                if (++v4 < (*(*this + 64))(this))
                {
                  goto LABEL_6;
                }

                goto LABEL_22;
              }
            }
          }

          return 0;
        }
      }
    }

    return 0;
  }

LABEL_22:
  v16 = (*(*this + 144))(this, 1, 0);
  if (v16[26] != 0.0)
  {
    v17 = v16[31];
    if (v16[28] >= v17 || v17 >= v16[34])
    {
      return 0;
    }
  }

  return 1;
}

BOOL DspLib::LoudspeakerController::Algorithm::configureLookaheads(DspLib::LoudspeakerController::Algorithm *this)
{
  if (*(this + 155))
  {
    result = DspLib::LoudspeakerController::Algorithm::configureLookaheadsVersion1(this);
  }

  else
  {
    result = DspLib::LoudspeakerController::Algorithm::configureLookaheadsLegacy(this);
  }

  v3 = *(this + 48) + *(this + 50);
  v4 = *(this + 40);
  *(this + 45) = v4 * v3;
  *(this + 46) = v3;
  v5 = *(this + 43) + v3;
  *(this + 41) = v5;
  *(this + 42) = v5 * v4;
  return result;
}

BOOL DspLib::LoudspeakerController::Algorithm::configureLookaheadsVersion1(DspLib::LoudspeakerController::Algorithm *this)
{
  v2 = 0;
  v3 = *(this + 36);
  v4 = *(this + 2);
  v5 = round(v4 * v3[16] / 1000.0);
  v6 = round(v4 * v3[17] / 1000.0);
  v7 = vcvtad_u64_f64((v3[21] * *(this + 118)) / 1000.0);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = 2 * v7;
  v9 = v7;
  do
  {
    v10 = qword_1DE098088[v2];
    v11 = v9 / v10;
    if (v11 <= 1.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = vcvtpd_u64_f64(log2(v11));
    }

    v13 = v10 << v12;
    if (v13 < v8)
    {
      v8 = v13;
    }

    ++v2;
  }

  while (v2 != 4);
  v14 = *(this + 43);
  result = v8 != v14;
  if (v8 == v14)
  {
    v16 = *(this + 40);
  }

  else
  {
    v16 = *(this + 40);
    *(this + 43) = v8;
    *(this + 44) = v16 * v8;
  }

  v17 = (v5 / v16);
  if (*(this + 48) != v17)
  {
    *(this + 47) = v16 * v17;
    *(this + 48) = v17;
    result = 1;
  }

  v18 = (v6 / v16);
  if (*(this + 50) != v18)
  {
    *(this + 49) = v16 * v18;
    *(this + 50) = v18;
    return 1;
  }

  return result;
}

BOOL DspLib::LoudspeakerController::Algorithm::configureLookaheadsLegacy(DspLib::LoudspeakerController::Algorithm *this)
{
  v2 = 0;
  v3 = *(this + 36);
  v4 = *(this + 2);
  v5 = vcvtad_u64_f64(v4 * *v3 / 1000.0);
  v6 = v3[17];
  v7 = vcvtad_u64_f64(v4 * v3[16] / 1000.0);
  v8 = *(this + 40);
  v9 = v5 - 2 * v8;
  if (v9 >= v7)
  {
    v9 = v7;
  }

  if (v8 > v9)
  {
    v9 = *(this + 40);
  }

  v10 = vcvtad_u64_f64(v4 * v6 / 1000.0);
  if (v5 - v8 - v9 < v10)
  {
    v10 = v5 - v8 - v9;
  }

  v11 = 2 * v8;
  if (v8 > v10)
  {
    v10 = *(this + 40);
  }

  v12 = (v5 - v9 - v10) / v8;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = 2 * v12;
  v14 = v12;
  do
  {
    v15 = qword_1DE098088[v2];
    v16 = v14 / v15;
    if (v16 <= 1.0)
    {
      v17 = 0;
    }

    else
    {
      v17 = vcvtpd_u64_f64(log2(v16));
    }

    v18 = v15 << v17;
    if (v18 < v13)
    {
      v13 = v18;
    }

    ++v2;
  }

  while (v2 != 4);
  v19 = *(this + 43);
  result = v13 != v19;
  if (v13 == v19)
  {
    v21 = *(this + 44);
  }

  else
  {
    v21 = v13 * v8;
    *(this + 43) = v13;
    *(this + 44) = v13 * v8;
  }

  v22 = v21 + v11;
  if (v21 + v11 <= v5)
  {
    v22 = v5;
  }

  v23 = v22 - (v21 + v8);
  if (v23 >= v7)
  {
    v23 = v7;
  }

  if (v8 > v23)
  {
    v23 = v8;
  }

  v24 = v23 / v8;
  if (*(this + 48) == v23 / v8)
  {
    v25 = *(this + 47);
  }

  else
  {
    v25 = v24 * v8;
    *(this + 47) = v24 * v8;
    *(this + 48) = v24;
    result = 1;
  }

  v26 = (v22 - v21 - v25) / v8;
  if (v26 <= 1)
  {
    v26 = 1;
  }

  if (v26 != *(this + 50))
  {
    *(this + 49) = v26 * v8;
    *(this + 50) = v26;
    return 1;
  }

  return result;
}

void DspLib::LoudspeakerController::Algorithm::configureChannel(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, float a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v17 = *(a1 + 624);
  v18 = v17 + 4608 * a2;
  v19 = *(a1 + 336);
  v20 = (*(*a1 + 232))(a1);
  DspLib::LinearDelay::setLength(v18, v20 + v19);
  v21 = *(a1 + 336);
  v22 = (*(*a1 + 232))(a1);
  DspLib::LinearDelay::setLength((v18 + 1192), v22 + v21);
  v23 = *(a1 + 336);
  v24 = (*(*a1 + 232))(a1);
  DspLib::LinearDelay::setLength((v18 + 1216), v24 + v23);
  v25 = *(a1 + 336);
  v26 = (*(*a1 + 232))(a1);
  DspLib::LinearDelay::setLength((v18 + 1240), v26 + v25);
  DspLib::LinearDelay::setLength((v18 + 1264), *(a1 + 328) + a3);
  v27 = *(v18 + 1288);
  v28 = *(v18 + 1296);
  if (v27 != v28)
  {
    v29 = *(a1 + 328);
    do
    {
      DspLib::LinearDelay::setLength(v27, v29 + a3);
      v27 += 3;
    }

    while (v27 != v28);
  }

  DspLib::CircularDelay::setLength((v18 + 4504), (*(a1 + 16) / *(a1 + 320) * (*(*(a1 + 288) + 48) / 1000.0)));
  v30 = *(a1 + 16);
  v31 = *(a1 + 336);
  v32 = (*(*a1 + 232))(a1);
  v33 = (*(*a1 + 232))(a1);
  DspLib::LoudspeakerController::MaskingEstimator::configure((v18 + 1312), v30, v32 + v31, v33);
  v34 = *(a1 + 288);
  v35 = *(a1 + 296) - v34;
  if (DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, 0x12u) != v35 >> 2)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  if ((a2 + 10) >= 0x12)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v85 = a9;
  v36 = (v34 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, a2 + 10));
  v37 = *(v36 + 30);
  v38 = *(a1 + 560) + 16 * a2;
  *v38 = vcvtas_u32_f32(*(v36 + 29));
  *(v38 + 8) = v37;
  *(v18 + 32) = v36[16];
  v39 = *v36;
  *(v18 + 40) = *v36;
  *(v18 + 3144) = v39;
  *(v18 + 1136) = v36[2];
  DspLib::copy(v36 + 9, 3, (v18 + 1140));
  DspLib::copy(v36 + 12, 4, (v18 + 1152));
  v40 = *(v18 + 1152);
  v41 = *(v18 + 1156);
  v42 = 1.0;
  v43 = 1.0;
  if (v41 > v40)
  {
    v43 = (*(v18 + 1144) - *(v18 + 1140)) / (v41 - v40);
  }

  *(v18 + 1168) = v43;
  v44 = *(v18 + 1160);
  if (v44 > v41)
  {
    v42 = (*(v18 + 1148) - *(v18 + 1144)) / (v44 - v41);
  }

  *(v18 + 1172) = v42;
  v45 = *(v18 + 1164);
  v46 = *(v18 + 1160);
  if (v45 <= v46)
  {
    *(v18 + 1164) = 1065353216;
  }

  else
  {
    *(v18 + 1176) = (2.0 - *(v18 + 1148)) / (v45 - v46);
  }

  DspLib::LoudspeakerController::MaskingEstimator::setMaskFreqs((v18 + 1312), *(v36 + 5), *(v36 + 6));
  v47 = *(v18 + 1312);
  v48 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(v36 + 7)), v47));
  *&v47 = v47 * *(v36 + 27) / 1000.0;
  DspLib::LoudspeakerController::YoYoSmoother::configure(v18 + 1896, v48.f32[0], v48.f32[1], *&v47, *(v36 + 28));
  *(v18 + 4292) = DspLib::dB2Amp(v49, -*(v36 + 22));
  v51 = *(v36 + 24);
  *(v18 + 4296) = *(v36 + 23) != 0.0;
  v52 = 5;
  if (v51 != 0.0)
  {
    v52 = 4;
  }

  *(v18 + 4304) = v52;
  *(v18 + 4312) = vcvtad_u64_f64(*(a1 + 16) * 0.00100000005);
  v53 = *(v36 + 3);
  *(v18 + 1184) = v53;
  if (v53 >= *(v36 + 4))
  {
    v53 = *(v36 + 4);
  }

  *(v18 + 1180) = v53;
  *(v18 + 4344) = DspLib::dB2Amp(v50, -*(v36 + 25));
  v54 = *(a1 + 360);
  v55 = (*(*a1 + 232))(a1);
  if (*(v18 + 1952) != v54 || *(v18 + 1960) != v55)
  {
    *(v18 + 1952) = v54;
    *(v18 + 1960) = v55;
    std::vector<float>::resize((v18 + 1976), v55 + v54);
    *(v18 + 1968) = 1;
  }

  v56 = *(a1 + 360);
  v57 = (*(*a1 + 232))(a1);
  if (*(v18 + 2000) != v56 || *(v18 + 2008) != v57)
  {
    *(v18 + 2000) = v56;
    *(v18 + 2008) = v57;
    std::vector<float>::resize((v18 + 2024), v57 + v56);
    *(v18 + 2016) = 1;
  }

  v58 = *(a1 + 368);
  if (*(v18 + 2048) != v58 || *(v18 + 2056) != 8)
  {
    *(v18 + 2048) = v58;
    *(v18 + 2056) = 8;
    std::vector<float>::resize((v18 + 2072), v58 + 8);
    *(v18 + 2064) = 1;
  }

  v59 = (v17 + 4608 * a2 + 2120);
  v60 = 4;
  do
  {
    v61 = *(a1 + 368);
    if (*(v59 - 3) != v61 || *(v59 - 2) != 8)
    {
      *(v59 - 3) = v61;
      *(v59 - 2) = 8;
      std::vector<float>::resize(v59, v61 + 8);
      *(v59 - 8) = 1;
    }

    v59 += 6;
    --v60;
  }

  while (v60);
  v62 = 0;
  v63 = *(a1 + 16);
  do
  {
    v64 = *&v36[v62 + 17] / v63;
    *&v100[v62 * 4] = v64;
    ++v62;
  }

  while (v62 != 5);
  DspLib::LinearPhaseFilterbank::configure((v18 + 2288), *(a1 + 352), v100, 5uLL);
  v65 = (v18 + 2408);
  for (i = 2576; i != 2616; i += 8)
  {
    v67 = *(v18 + 2384);
    v68 = (*(*a1 + 232))(a1);
    if (v67 <= v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = v67;
    }

    std::vector<float>::resize(v65, *(a1 + 360) + v69);
    v70 = *v65;
    v65 += 3;
    *(v18 + i) = v70;
  }

  DspLib::BandCombiner::configure((v18 + 2616), 5uLL, *(a1 + 392), a10, a4);
  DspLib::GainSmoother::configure((v18 + 2888), *(a1 + 392), a5);
  if (*(a1 + 600))
  {
    operator new();
  }

  v72 = *(v18 + 4536);
  *(v18 + 4536) = 0;
  if (v72)
  {
    std::default_delete<DspLib::DCTracker>::operator()[abi:ne200100](v18 + 4536, v72);
  }

  LODWORD(v88) = v36[1];
  *(&v88 + 4) = *a6;
  v73 = *(a6 + 8) != 0.0;
  v89 = *(a6 + 12);
  v74 = *(a1 + 16) / 1000.0;
  v75 = vcvtad_u64_f64(v74 * *(a6 + 16));
  v91 = *(a6 + 20);
  v76 = *(a6 + 28);
  v77 = *(a6 + 32);
  v78 = v74 * *(a6 + 36);
  BYTE12(v88) = v73;
  v90 = v75;
  v92 = v76 != 0.0;
  v93 = v77;
  v94 = vcvtad_u64_f64(v78);
  v95 = *(a6 + 40);
  v96 = a11;
  v79 = *(a6 + 64);
  v97 = *(a6 + 48);
  v98 = v79;
  v99 = *(a6 + 80);
  v80 = DspLib::dB2Amp(v71, -a7);
  v81 = *(a1 + 376);
  *(v18 + 4412) = v80;
  v82 = v81 * 5.0;
  *(v18 + 192) = v82;
  DspLib::LoudspeakerController::SpeakerSystemModel::configure(v18 + 208, v85, &v88, v82);
  *(v18 + 3296) = v82;
  DspLib::LoudspeakerController::SpeakerSystemModel::configure(v18 + 3312, v85, &v88, v82);
  *(v18 + 4416) = v36[26];
  *(v18 + 4576) = v36[31];
  if (*(*(a1 + 624) + 4608 * a2 + 1112) == 1)
  {
    v83 = *(a1 + 336);
    v84 = (*(*a1 + 232))(a1);
    DspLib::LinearDelay::setLength((v18 + 4552), v84 + v83);
  }
}

uint64_t DspLib::LoudspeakerController::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  result = DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if (*(a1 + 8) == 1)
  {
    result = DspLib::LoudspeakerController::Algorithm::checkParameterConstraints(a1);
    if (result)
    {
      v6 = *(a1 + 288);
      v7 = v6[10];
      *(a1 + 552) = v6[9];
      *(a1 + 584) = v7 != 0.0;
      *(a1 + 616) = v6[19] != 0.0;
      *(a1 + 312) = v6[3] >= 0.5;
      *(a1 + 620) = v6[22];
      v8 = DspLib::LoudspeakerController::Algorithm::configureLookaheads(a1);
      v9 = (*(*a1 + 232))(a1);
      v10 = *(a1 + 320);
      v11 = *(a1 + 288);
      v12 = *(a1 + 296) - v11;
      if (DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, 0x12u) != v12 >> 2)
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      v13 = v9 / v10;
      v14 = DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, 1u);
      v15 = 0;
      v16 = v11 + 4 * v14;
      v17 = 424;
      do
      {
        v18 = (a1 + v17);
        *(v18 - 4) = *(v16 + v17 - 356);
        *v18 = *(v16 + v17 - 340) * 0.01;
        *&v43[v15] = (*(v16 + v17 - 372) * *(a1 + 472));
        v17 += 4;
        v15 += 8;
      }

      while (v15 != 32);
      *(a1 + 484) = *v16 != 0.0;
      v19 = *(a1 + 288);
      *(a1 + 480) = v19[5].i32[0];
      v20 = *(v16 + 108);
      *(a1 + 600) = *(v16 + 104) != 0.0;
      *(a1 + 604) = v20;
      v21 = vand_s8(vmovn_s32(vmvnq_s8(vceqzq_f32(v19[1]))), 0x1000100010001);
      *(a1 + 540) = vuzp1_s8(v21, v21).u32[0];
      *(a1 + 544) = v19[2].f32[0] != 0.0;
      v22 = v19[3].f32[0];
      *(a1 + 585) = v19[2].f32[3] != 0.0;
      v23 = v19[3].f32[2];
      v24 = *(a1 + 16);
      v25 = vcvtad_u64_f64(v24 / *(a1 + 320) * (v22 - v19[3].f32[1]) / 1000.0);
      if (v25 <= 1)
      {
        v25 = 1;
      }

      *(a1 + 592) = v25;
      *(a1 + 608) = v23 != 0.0;
      v26 = v24;
      *(a1 + 612) = expf(-1.0 / ((v19[3].f32[3] * v26) / 1000.0));
      v27 = v19[4].f32[2];
      v28 = v19->f32[1];
      v29 = v19->f32[2];
      result = (*(*a1 + 64))(a1);
      if (result)
      {
        v31 = v24 * v27 / 1000.0;
        v32 = v31 >= 0.0;
        if (v31 < 0.0)
        {
          v31 = 0.0;
        }

        v33 = v24 * v28 / 1000.0;
        v34 = v33;
        v30 = v24 * v29 / 1000.0;
        v35 = v30;
        v36 = LODWORD(v31) | (v32 << 32);
        v37 = 10;
        do
        {
          v38 = *(v16 + 100);
          v39 = (*(*a1 + 128))(a1, v37 | 0x2000000000, 0);
          v42 = 0;
          memset(v41, 0, sizeof(v41));
          DspLib::LoudspeakerController::Parameters::individualAmplifierParametersForModel(*(a1 + 288), (*(a1 + 296) - *(a1 + 288)) >> 2, v39, v41);
          DspLib::LoudspeakerController::Algorithm::configureChannel(a1, v37 - 10, v13, v34, v35, v41, v38, 21, v43, v36, *(a1 + 600));
          result = (*(*a1 + 64))(a1);
          v40 = v37 - 9;
          ++v37;
        }

        while (v40 < result);
      }

      if (v8)
      {
        return (*(*a1 + 168))(a1);
      }
    }
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::Parameters::individualAmplifierParametersForModel@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v4 = result;
  if (a3 == 2)
  {
    if (a2 != DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, 0x12u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v8 = 3;
  }

  else
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        for (i = 0; i != 21; ++i)
        {
          v7 = DspLib::LoudspeakerController::Parameters::amplifierParameterTranslationGlobalAndIndividual[i];
          result = DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, 1u);
          *&a4[i * 4] = v4[(result + v7)];
        }
      }

      return result;
    }

    if (a2 != DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, 0x12u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v8 = 2;
  }

  v9 = &v4[DspLib::groupOffset(&DspLib::LoudspeakerController::Parameters::kDefinition, v8)];

  return DspLib::copy(v9, 21, a4);
}

void DspLib::LoudspeakerController::Algorithm::setSpeakerModel(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a2;
  v7 = (*(a1 + 624) + 4608 * a5);
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      DspLib::Biquad::Filter::setCoefficients((v7 + 130), a2, a3, 0, 0x41uLL);
      DspLib::Biquad::Filter::setCoefficients((v7 + 148), v6, a3, 0, 0x41uLL);
      DspLib::Biquad::Filter::setCoefficients((v7 + 906), v6, a3, 0, 0x41uLL);
      v8 = (v7 + 924);
    }

    else
    {
      if (a4 != 6)
      {
        return;
      }

      v8 = (v7 + 1106);
    }

    goto LABEL_14;
  }

  if (a4 != 1)
  {
    if (a4 != 2)
    {
      return;
    }

    DspLib::Biquad::Filter::setCoefficients((v7 + 92), a2, a3, 0, 0x41uLL);
    DspLib::Biquad::Filter::setCoefficients((v7 + 110), v6, a3, 0, 0x41uLL);
    DspLib::Biquad::Filter::setCoefficients((v7 + 868), v6, a3, 0, 0x41uLL);
    v8 = (v7 + 886);
LABEL_14:

    DspLib::Biquad::Filter::setCoefficients(v8, v6, a3, 0, 0x41uLL);
    return;
  }

  DspLib::Biquad::Filter::setCoefficients((v7 + 12), a2, a3, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients((v7 + 30), v6, a3, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients((v7 + 788), v6, a3, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients((v7 + 806), v6, a3, 0, 0x41uLL);
  v9 = 1.0;
  if (a3)
  {
    v10 = &v6[5 * a3];
    do
    {
      v9 = v9 * (((*v6 + v6[1]) + v6[2]) / ((v6[3] + 1.0) + v6[4]));
      v6 += 5;
    }

    while (v6 != v10);
  }

  v7[64] = v9;
  v7[65] = (v7[67] * v9) + 1.0;
  v7[840] = v9;
  v7[841] = (v7[843] * v9) + 1.0;
}

void DspLib::LoudspeakerController::Algorithm::setPassiveRadiatorDisplacementModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 624) + 4608 * a4;
  DspLib::Biquad::Filter::setCoefficients(v6 + 960, a2, a3, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(v6 + 1032, a2, a3, 0, 0x41uLL);
  DspLib::Biquad::Filter::setCoefficients(v6 + 4064, a2, a3, 0, 0x41uLL);

  DspLib::Biquad::Filter::setCoefficients(v6 + 4136, a2, a3, 0, 0x41uLL);
}

float DspLib::LoudspeakerController::Algorithm::setVoiceCoilModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 624) + 4608 * a3;
  v6 = *a2;
  v7 = *(a2 + 16);
  DspLib::LoudspeakerManager::ThermalModel::setCoilCoeffs(v4 + 672, &v6);
  v6 = *a2;
  v7 = *(a2 + 16);
  return DspLib::LoudspeakerManager::ThermalModel::setCoilCoeffs(v4 + 3776, &v6);
}

float DspLib::LoudspeakerController::Algorithm::setMagnetModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 624) + 4608 * a3;
  v6 = *a2;
  v7 = *(a2 + 16);
  DspLib::LoudspeakerManager::ThermalModel::setMagnetCoeffs(v4 + 672, &v6);
  v6 = *a2;
  v7 = *(a2 + 16);
  return DspLib::LoudspeakerManager::ThermalModel::setMagnetCoeffs(v4 + 3776, &v6);
}

uint64_t DspLib::LoudspeakerController::Algorithm::setAmbientTemperature(uint64_t this, float a2, uint64_t a3)
{
  v3 = *(this + 624) + 4608 * a3;
  *(v3 + 840) = a2;
  *(v3 + 3944) = a2;
  return this;
}

float DspLib::LoudspeakerController::Algorithm::setAmbientTemperatureWithCoilCorrection(DspLib::LoudspeakerController::Algorithm *this, float a2, uint64_t a3, unint64_t a4)
{
  v5 = *(this + 78) + 4608 * a3;
  v6 = exp(-1.0 / (1000.0 / a4 * *(this + 2) / 1000.0));
  v7 = COERCE_FLOAT(*(v5 + 816)) + (v6 * (*(v5 + 1120) - COERCE_FLOAT(*(v5 + 816))));
  *(v5 + 1120) = v7;
  *(v5 + 840) = a2 - v7;
  v8 = COERCE_FLOAT(*(v5 + 3920)) + (v6 * (*(v5 + 4224) - COERCE_FLOAT(*(v5 + 3920))));
  *(v5 + 4224) = v8;
  result = a2 - v8;
  *(v5 + 3944) = result;
  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::setDeltaMagnetTemperature(uint64_t this, float a2, uint64_t a3)
{
  v3 = *(this + 624) + 4608 * a3;
  *(v3 + 820) = a2;
  *(v3 + 3924) = a2;
  return this;
}

uint64_t DspLib::LoudspeakerController::Algorithm::findCLTempMatch(uint64_t this, float a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (*(*(this + 624) + 4608 * a3 + 4512) != *(*(this + 624) + 4608 * a3 + 4504))
  {
    v4 = this;
    v5 = MEMORY[0x1EEE9AC00](this);
    v7 = v16 - v6;
    v8 = *(v5 + 592);
    v12 = DspLib::CircularDelay::read((v9 + v10), v11, v16 - v6, v8);
    v13 = *(v4 + 592);
    MEMORY[0x1EEE9AC00](v12);
    v15 = (v16 - v14);
    DspLib::add(v7, v8, v16 - v14, -a2);
    return DspLib::minmgvi(v15, v13);
  }

  return this;
}

uint64_t DspLib::LoudspeakerController::Algorithm::setClosedLoopTemperature(DspLib::LoudspeakerController::Algorithm *this, float a2, uint64_t a3)
{
  v5 = *(this + 78);
  result = DspLib::LoudspeakerController::Algorithm::findCLTempMatch(this, a2, a3);
  if (vabds_f32(a2, v7) > 0.1)
  {
    v8 = a2 - v7;
    v9 = v5 + 4608 * a3;
    *(v9 + 844) = v8 + *(v9 + 844);
    *(v9 + 3948) = v8 + *(v9 + 3948);
  }

  return result;
}

void DspLib::LoudspeakerController::Algorithm::decayClosedLoopTemperatureOffset(DspLib::LoudspeakerController::Algorithm *this, uint64_t a2, uint64_t a3)
{
  v3 = (*(this + 78) + 4608 * a2);
  v4 = v3[562] + a3;
  v3[562] = v4;
  v5 = *(this + 40);
  if (v5 <= v4)
  {
    v7 = v4 / v5;
    DspLib::LoudspeakerManager::ThermalModel::decayClosedLoopOffset((v3 + 84), v4 / v5);
    DspLib::LoudspeakerManager::ThermalModel::decayClosedLoopOffset((v3 + 472), v7);
    v3[562] -= *(this + 40) * v7;
  }
}

uint64_t DspLib::LoudspeakerController::Algorithm::resetClosedLoopTemperature(uint64_t this)
{
  v1 = *(this + 624);
  for (i = *(this + 632); v1 != i; v1 += 4608)
  {
    *(v1 + 844) = 0;
    *(v1 + 3948) = 0;
  }

  return this;
}

uint64_t DspLib::LoudspeakerController::Algorithm::setCPMSBudgets(uint64_t a1, void *__src)
{
  v24 = *MEMORY[0x1E69E9840];
  DspLib::copy(__src, 4, (a1 + 440));
  v3 = a1 + 456;
  result = DspLib::multiply(a1 + 440, 4, a1 + 456, *(a1 + 480));
  *(a1 + 476) = 1;
  if (*(a1 + 543) == 1)
  {
    v5 = 0;
    v6 = a1 + 520;
    v22 = a1 + 488;
    v23 = a1 + 520;
    v7 = 4396;
    do
    {
      if (*(v6 + 4 * v5) > *(v3 + 4 * v5))
      {
        v8 = (*(*a1 + 64))(a1);
        v9 = MEMORY[0x1EEE9AC00](v8);
        v11 = &v21 - v10;
        v12 = (*(*a1 + 64))(a1, v9);
        if ((*(*a1 + 64))(a1))
        {
          v13 = 0;
          v14 = v7;
          do
          {
            *&v11[4 * v13++] = *(*(a1 + 624) + v14);
            v14 += 4608;
          }

          while (v13 < (*(*a1 + 64))(a1));
        }

        v15 = (*(*(a1 + 624) + 4412) * *(*(a1 + 624) + 4412)) * *(v22 + 4 * v5);
        if (*(v3 + 4 * v5) >= v15)
        {
          v15 = *(v3 + 4 * v5);
        }

        DspLib::waterFillingSolution(v11, v12, v15);
        v17 = v16;
        result = (*(*a1 + 64))(a1);
        if (result)
        {
          v18 = 0;
          v19 = 3328;
          do
          {
            v20 = *&v11[4 * v18];
            if (v20 >= v17)
            {
              v20 = v17;
            }

            *(*(a1 + 624) + v19 + 4 * (v5 & 3)) = v20;
            ++v18;
            result = (*(*a1 + 64))(a1);
            v19 += 4608;
          }

          while (v18 < result);
        }

        v6 = v23;
      }

      ++v5;
      v7 += 4;
    }

    while (v5 != 4);
  }

  return result;
}

caulk::concurrent::messenger ***DspLib::LoudspeakerController::Algorithm::reset(caulk::concurrent::messenger ***this)
{
  if (*(this + 8) == 1)
  {
    v2 = this;
    v3 = this[78];
    for (i = this[79]; v3 != i; v3 += 576)
    {
      DspLib::Biquad::SetupWrapper::reset((v3 + 559));
      DspLib::clear(*v3, (v3[1] - *v3) >> 2);
      v3[3] = ((v3[1] - *v3) >> 2);
      DspLib::Biquad::SetupWrapper::reset((v3 + 12));
      DspLib::LoudspeakerController::SpeakerSystemModel::reset((v3 + 26));
      DspLib::clear(v3[149], (v3[150] - v3[149]) >> 2);
      DspLib::clear(v3[152], (v3[153] - v3[152]) >> 2);
      DspLib::clear(v3[155], (v3[156] - v3[155]) >> 2);
      DspLib::clear(v3[158], (v3[159] - v3[158]) >> 2);
      DspLib::MultiChannelLinearDelay::reset((v3 + 161));
      *(v3 + 464) = 1065353216;
      *(v3 + 472) = 0;
      v3[242] = 0;
      *(v3 + 486) = 0;
      *(v3 + 2064) = 1;
      *(v3 + 2016) = 1;
      *(v3 + 1968) = 1;
      *(v3 + 2112) = 1;
      *(v3 + 2160) = 1;
      *(v3 + 2208) = 1;
      *(v3 + 2256) = 1;
      DspLib::LinearPhaseFilterbank::reset(v3 + 286);
      for (j = 0; j != 15; j += 3)
      {
        DspLib::clear(v3[j + 301], (v3[j + 302] - v3[j + 301]) >> 2);
      }

      v6 = *(v2 + 360);
      v3[316] = v6;
      v7 = 317;
      for (k = 301; k != 316; k += 3)
      {
        v3[v7++] = (v3[k] + 4 * v6);
      }

      DspLib::BandCombiner::reset(v3 + 327);
      DspLib::GainSmoother::reset((v3 + 361));
      DspLib::Biquad::SetupWrapper::reset((v3 + 400));
      DspLib::LoudspeakerController::SpeakerSystemModel::reset((v3 + 414));
      DspLib::clear(v3 + 1087, 4uLL);
      DspLib::clear(v3 + 1091, 4uLL);
      DspLib::clear(v3 + 1099, 4uLL);
      DspLib::fill(v3 + 1095, 4uLL, 1.0);
      v3[542] = 1065353216;
      *(v3 + 1072) = 1065353216;
      *(v3 + 270) = 0u;
      *(v3 + 267) = xmmword_1DE097CC0;
      *(v3 + 265) = xmmword_1DE097CD0;
      *(v3 + 266) = xmmword_1DE097CE0;
      v3[562] = 0;
      v9 = v3[567];
      if (v9)
      {
        DspLib::fill(*v9, (*(v9 + 1) - *v9) >> 2, 0.0);
        *(v9 + 8) = 0;
        *(v9 + 10) = 0;
        *(v9 + 6) = 0;
      }

      *(v3 + 1136) = 1065353216;
      *(v3 + 4580) = xmmword_1DE097CE0;
      DspLib::clear(v3[569], (v3[570] - v3[569]) >> 2);
    }

    if (*(v2 + 545) == 1 && *(v2 + 632) != *(v2 + 624))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        DspLib::LoudspeakerController::Algorithm::readNVM(v2, v10);
        v10 = v11;
      }

      while (0x8E38E38E38E38E39 * ((*(v2 + 632) - *(v2 + 624)) >> 9) > v11++);
    }

    return DspLib::LoudspeakerController::Algorithm::resetLogging(v2);
  }

  return this;
}

void DspLib::MultiChannelLinearDelay::reset(DspLib::MultiChannelLinearDelay *this)
{
  v1 = *this;
  v2 = *(this + 1);
  while (v1 != v2)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    v1 += 24;
    DspLib::clear(v3, (v4 - v3) >> 2);
  }
}

void DspLib::LoudspeakerController::Algorithm::readNVM(DspLib::LoudspeakerController::Algorithm *this, uint64_t a2)
{
  if (*(this + 545) == 1)
  {
    DspLib::LoudspeakerManager::ThermalNVM::read(&DspLib::LoudspeakerController::gThermalRecord, (*(this + 78) + 4608 * a2 + 672), (*(this + 78) + 4608 * a2 + 3776), a2, *(this + 2) / *(this + 40));
  }
}

caulk::concurrent::messenger ***DspLib::LoudspeakerController::Algorithm::resetLogging(caulk::concurrent::messenger ***this)
{
  v1 = this;
  if (this[83])
  {
    this = DspLib::Log::flush(this + 83);
  }

  if (v1[84])
  {
    this = DspLib::Log::flush(v1 + 84);
  }

  if (v1[85])
  {
    this = DspLib::Log::flush(v1 + 85);
  }

  if (v1[86])
  {

    return DspLib::Log::flush(v1 + 86);
  }

  return this;
}

void DspLib::LoudspeakerController::Algorithm::inputCompensation(uint64_t a1, void *a2)
{
  if (*(a1 + 585) == 1 && a2[1])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      DspLib::Biquad::Filter::process((*(a1 + 624) + 4608 * v4 + 4424), *(*a2 + 8 * v4), a2[2], *(*a2 + 8 * v4), a2[2]);
      v4 = v5;
    }

    while (a2[1] > v5++);
  }
}

unint64_t DspLib::LoudspeakerController::Algorithm::inputAnalysis(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  v3 = *(*(a1 + 624) + 872) * (v2 + ((*(*(a1 + 624) + 888) - *(*(a1 + 624) + 880)) >> 2));
  v4 = v3;
  *(a1 + 536) = -998637568;
  v65 = a2;
  v5 = *(a2 + 8);
  v67 = a1;
  v69 = v2;
  if (v5)
  {
    if (v2 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2;
    }

    if (v4 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3;
    }

    v62[1] = 4 * v2;
    v64 = 4 * v6;
    v62[2] = 4 * v7;
    v62[3] = 4 * (4 * ((v7 - 1) & 0x3FFFFFFFFFFFFFFCLL) + 16);
    v63 = 0;
    v8 = *(a1 + 624);
    v9 = *(v8 + 24);
    v68 = v8;
    if (v9 >= v2)
    {
      v15 = DspLib::LinearDelay::write(v8, **v65, v65[2]);
      *(v68 + 24) -= v69;
    }

    else
    {
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      DspLib::LinearDelay::process(v10, **v65, v65[2], v12, v13);
      v14 = (v68 + 24);
      v15 = DspLib::LinearPhaseFilterbank::consumeInput(v68 + 2288, v12, v69 - *(v68 + 24));
      *v14 = 0;
    }

    v62[5] = v62;
    v16 = MEMORY[0x1EEE9AC00](v15);
    MEMORY[0x1EEE9AC00](v16);
    v18 = v62 - v17;
    v19 = **v65;
    v20 = v65[2];
    v22 = *(v21 + 40);
    v66 = v23;
    DspLib::multiply(v19, v20, v23, v22);
    DspLib::Biquad::Filter::process((v68 + 48), v66, v69, v18, v69);
    MEMORY[0x1EEE9AC00](v24);
    DspLib::multiply();
  }

  if ((*(*a1 + 208))(a1))
  {
    v25 = DspLib::CPUMeasure::pause((v67 + 13));
    if ((*(*v67 + 64))(v67, v25))
    {
      v26 = 0;
      v27 = 8 - v4;
      v68 = 4364;
      do
      {
        v28 = v69 == -1;
        v29 = v67[78];
        v30 = (v29 + 4608 * v26);
        v32 = *v30;
        v31 = *(v30 + 1);
        v33 = (*(*v67 + 232))(v67);
        if (v69 == -1)
        {
          v34 = ((v31 - v32) >> 2) - (v33 + 1);
        }

        else
        {
          v34 = v69;
        }

        v30[1061] = DspLib::maxMagnitude((v32 + 4 * (v33 - v69)), v34);
        v35 = *(v30 + 152);
        v36 = *(v30 + 153);
        v37 = (*(*v67 + 232))(v67);
        if (v28)
        {
          v38 = ((v36 - v35) >> 2) - (v37 - v69);
        }

        else
        {
          v38 = v69;
        }

        v39 = DspLib::maxMagnitude((v35 + 4 * (v37 - v69)), v38);
        v40 = v67 + 78;
        v30[1066] = v39;
        if (*(*v40 + 4608 * v26 + 1112) == 1)
        {
          v41 = *(v30 + 569);
          v42 = (*(v30 + 570) - v41) >> 2;
          if (v42 >= v69)
          {
            v43 = (*(*v67 + 232))(v67);
            if (v69 == -1)
            {
              v44 = v42 - (v43 + 1);
            }

            else
            {
              v44 = v69;
            }

            v30[1146] = DspLib::maxMagnitude((v41 + 4 * (v43 - v69)), v44);
          }
        }

        v45 = *(v30 + 155);
        v46 = *(v30 + 156);
        v47 = (*(*v67 + 232))(v67);
        if (v69 == -1)
        {
          v48 = ((v46 - v45) >> 2) - (v47 + 1);
        }

        else
        {
          v48 = v69;
        }

        v30[1080] = DspLib::maxMagnitude((v45 + 4 * (v47 - v69)), v48);
        if (v4)
        {
          v49 = 0;
          v50 = 0;
          v51 = v29 + v68;
          do
          {
            v52 = *(v30 + 161);
            if (0xAAAAAAAAAAAAAAABLL * ((*(v30 + 162) - v52) >> 3) <= v50)
            {
              v54 = 0;
              v55 = 0;
            }

            else
            {
              v53 = v52 + v49;
              v54 = *(v52 + v49);
              v55 = (*(v53 + 8) - v54) >> 2;
            }

            v56 = v55 - v27;
            if (v4 == -1)
            {
              v57 = v56;
            }

            else
            {
              v57 = v4;
            }

            *(v51 + 4 * v50++) = DspLib::maxv((v54 + 4 * v27), v57);
            v49 += 24;
          }

          while (v49 != 96);
          v58 = *(v30 + 158);
          if (v4 == -1)
          {
            v59 = ((*(v30 + 159) - v58) >> 2) - v27;
          }

          else
          {
            v59 = v4;
          }

          v30[1083] = DspLib::maxv((v58 + 4 * v27), v59);
        }

        v60 = (*(*v67 + 64))(v67);
        ++v26;
        v68 += 4608;
      }

      while (v26 < v60);
    }

    DspLib::CPUMeasure::resume((v67 + 13));
  }

  return v4;
}

char **DspLib::MultiChannelLinearDelay::write(char **result, void *a2)
{
  v2 = *result;
  if (result[1] != *result)
  {
    v4 = result;
    v5 = 0;
    v6 = 1;
    do
    {
      result = DspLib::LinearDelay::write(&v2[24 * v5], *(*a2 + 8 * v5), a2[2]);
      v5 = v6;
      v2 = *v4;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3) > v6++);
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::findAmplitudeTarget@<X0>(DspLib::LoudspeakerController::Algorithm *this@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1DE095680;
  a2[1] = xmmword_1DE095670;
  a2[4] = xmmword_1DE095670;
  a2[5] = xmmword_1DE097CF0;
  a2[2] = xmmword_1DE097CF0;
  a2[3] = xmmword_1DE095680;
  result = (*(*this + 64))(this);
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v7 = a2 + 4;
    v8 = 10;
    do
    {
      v9 = *(this + 78);
      v10 = 1.0;
      if (*(this + 540) == 1 && *(*(this + 70) + v5) != 2)
      {
        v11 = *(v9 + v6 + 32) - *(v9 + v6 + 36);
        v12 = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::LoudspeakerController::Parameters::kDefinition, v8 | 0x1000000000) + 16);
        if (v11 >= v12)
        {
          v12 = v11;
        }

        DspLib::LoudspeakerController::findTarget(*(v9 + v6), ((*(v9 + v6 + 8) - *(v9 + v6)) >> 2) - *(this + 44), 0, (v9 + v6 + 4240), v12, v12);
        *(v7 - 1) = v13;
        *v7 = v10;
        *(v7 + 1) = v14;
      }

      *(v9 + v6 + 4248) = v10;
      v15 = *(v9 + v6 + 4252);
      if (v15 >= v10)
      {
        v15 = v10;
      }

      *(v9 + v6 + 4252) = v15;
      result = (*(*this + 64))(this);
      v16 = v8 - 9;
      ++v8;
      v6 += 4608;
      v5 += 16;
      v7 += 12;
    }

    while (v16 < result);
  }

  return result;
}

void DspLib::LoudspeakerController::findTarget(const float *a1, vDSP_Length a2, int a3, float *a4, float a5, float a6)
{
  if (a3)
  {
    v9 = DspLib::maxv(a1, a2);
  }

  else
  {
    v9 = DspLib::maxMagnitude(a1, a2);
  }

  *a4 = v9;
  if (v9 > a5)
  {
    expf(-(v9 - a5) / fmaxf(a6 - a5, 1.0e-15));
  }
}

uint64_t DspLib::LoudspeakerController::Algorithm::findDisplacementTarget@<X0>(DspLib::LoudspeakerController::Algorithm *this@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1DE095680;
  a2[1] = xmmword_1DE095670;
  a2[4] = xmmword_1DE095670;
  a2[5] = xmmword_1DE097CF0;
  a2[2] = xmmword_1DE097CF0;
  a2[3] = xmmword_1DE095680;
  result = (*(*this + 64))(this);
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v7 = a2 + 2;
    v8 = 4268;
    do
    {
      v9 = *(this + 78);
      v10 = 1.0;
      if (*(this + 541) == 1 && *(*(this + 70) + v5) != 2)
      {
        DspLib::LoudspeakerController::findTarget(*(v9 + v8 - 3052), ((*(v9 + v8 - 3044) - *(v9 + v8 - 3052)) >> 2) - *(this + 44), 0, (v9 + v8 - 8), *(v9 + v8 - 3132) * 0.99, *(v9 + v8 - 3132));
        *(v7 - 2) = v11;
        *(v7 - 1) = v10;
        *v7 = v12;
      }

      *(v9 + v8) = v10;
      ++v6;
      result = (*(*this + 64))(this);
      v8 += 4608;
      v5 += 16;
      v7 += 3;
    }

    while (v6 < result);
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::findPassiveRadiatorDisplacementTarget@<X0>(DspLib::LoudspeakerController::Algorithm *this@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1DE095680;
  a2[1] = xmmword_1DE095670;
  a2[4] = xmmword_1DE095670;
  a2[5] = xmmword_1DE097CF0;
  a2[2] = xmmword_1DE097CF0;
  a2[3] = xmmword_1DE095680;
  result = (*(*this + 64))(this);
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 + 2;
    v9 = 4592;
    do
    {
      v10 = *(this + 78);
      v11 = 1.0;
      if (*(v10 + v9 - 3480) == 1 && *(this + 541) == 1 && *(*(this + 70) + v6) != 2)
      {
        v12 = *(v10 + v9 - 40);
        v13 = (*(v10 + v9 - 32) - v12) >> 2;
        v14 = *(this + 44);
        v5 = v13 - v14;
        if (v13 >= v14)
        {
          DspLib::LoudspeakerController::findTarget(v12, v5, 0, (v10 + v9 - 12), *(v10 + v9 - 16) * 0.99, *(v10 + v9 - 16));
          *(v8 - 2) = v15;
          *(v8 - 1) = v11;
          *v8 = v16;
        }
      }

      *(v10 + v9) = v11;
      ++v7;
      result = (*(*this + 64))(this, v5);
      v9 += 4608;
      v8 += 3;
      v6 += 16;
    }

    while (v7 < result);
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::findVelocityTarget@<X0>(DspLib::LoudspeakerController::Algorithm *this@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1DE095680;
  a2[1] = xmmword_1DE095670;
  a2[4] = xmmword_1DE095670;
  a2[5] = xmmword_1DE097CF0;
  a2[2] = xmmword_1DE097CF0;
  a2[3] = xmmword_1DE095680;
  result = (*(*this + 64))(this);
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      v9 = *(this + 78);
      v10 = 1.0;
      if (*(this + 542) == 1 && *(*(this + 70) + v5) != 2)
      {
        v11 = *(this + 134);
        v12 = (v9 + v6);
        v13 = *(v9 + v6 + 1152);
        if (v13 >= v11)
        {
          v20 = v12[285];
        }

        else
        {
          v14 = v12[289];
          if (v14 >= v11)
          {
            v17 = v11 - v13;
            v18 = v12[285];
            v19 = v12[292];
          }

          else
          {
            v15 = (v9 + v6);
            v16 = *(v9 + v6 + 1160);
            if (v16 >= v11)
            {
              v17 = v11 - v14;
              v18 = v15[286];
              v19 = v15[293];
            }

            else
            {
              v17 = v11 - v16;
              v18 = v15[287];
              v19 = v15[294];
            }
          }

          v20 = v18 + (v19 * v17);
        }

        *(v9 + v6 + 4280) = v20;
        DspLib::LoudspeakerController::findTarget(*(v9 + v6 + 1240), ((*(v9 + v6 + 1248) - *(v9 + v6 + 1240)) >> 2) - *(this + 44), 0, (v9 + v6 + 4284), v20 * 0.95, v20);
        *(v8 - 1) = v21;
        *v8 = v10;
        *(v8 + 1) = v22;
      }

      *(v9 + v6 + 4288) = v10;
      ++v7;
      result = (*(*this + 64))(this);
      v6 += 4608;
      v5 += 16;
      v8 += 3;
    }

    while (v7 < result);
  }

  return result;
}

void *DspLib::LoudspeakerController::Algorithm::findPowerTargets@<X0>(void *result@<X0>, vDSP_Length a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v96 = a3;
  v99 = a2;
  v4 = result;
  v110 = *MEMORY[0x1E69E9840];
  v6 = result[41];
  v7 = 384;
  v8 = a4;
  do
  {
    *v8 = xmmword_1DE095680;
    v8[1] = xmmword_1DE095670;
    v8[4] = xmmword_1DE095670;
    v8[5] = xmmword_1DE097CF0;
    v8[2] = xmmword_1DE097CF0;
    v8[3] = xmmword_1DE095680;
    v8 += 6;
    v7 -= 96;
  }

  while (v7);
  v9 = v6 + v99;
  v10 = result[78];
  v11 = result[79];
  for (i = 0.0; v10 != v11; v10 += 4608)
  {
    if (*(v10 + 3424) == 1)
    {
      v13 = 0;
      while (v13 != -36)
      {
        v14 = *(v10 + v13 + 3452);
        v13 -= 12;
        if (*(v10 + 3368) >= v14)
        {
          v15 = (v10 + v13 + 3468);
          goto LABEL_15;
        }
      }

      v15 = (v10 + 3376);
    }

    else if (*(v10 + 3468))
    {
      v15 = (v10 + 3416);
    }

    else if (*(v10 + 3464))
    {
      v15 = (v10 + 3396);
    }

    else
    {
      v15 = (v10 + 3376);
    }

LABEL_15:
    i = i + *v15;
  }

  v106 = 0;
  v16 = 0;
  if (v9 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v9;
  }

  v18 = 8 - v99;
  v90 = (result + 63);
  v102 = result + 57;
  v100 = result + 51;
  v98 = (result + 53);
  v97 = result + 61;
  v95 = result + 81;
  v109 = 4348;
  v105 = 13596;
  v104 = 4380;
  v101 = 4 * v17;
  v108 = xmmword_1DE095150;
  v107 = xmmword_1DE095160;
  do
  {
    v103 = &v90;
    MEMORY[0x1EEE9AC00](result);
    v20 = (&v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    DspLib::clear(v20, v9);
    if ((*(*v4 + 64))(v4))
    {
      v21 = v4[78];
      v22 = *(v21 + 1296);
      v23 = *(v21 + 1288);
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3) <= v16)
      {
        v25 = 0;
        v26 = 0;
      }

      else
      {
        v24 = (v23 + 24 * v16);
        v25 = *v24;
        v26 = (v24[1] - *v24) >> 2;
      }

      v27 = v26 - v18;
      if (v9 - v4[43] == -1)
      {
        v28 = v27;
      }

      else
      {
        v28 = v9 - v4[43];
      }

      v29 = DspLib::maxv((v25 + 4 * v18), v28);
      *(v4[78] + v109) = v29;
      DspLib::add();
    }

    if ((*(*v4 + 208))(v4))
    {
      v30 = v99 == 0;
      DspLib::CPUMeasure::pause((v4 + 13));
      if (!v30)
      {
        v31 = DspLib::maxv(v20, v99);
        v90[v16] = v31;
      }

      DspLib::CPUMeasure::resume((v4 + 13));
    }

    if (*(v4 + 476))
    {
      v32 = *(v4 + 484);
      result = DspLib::multiply((v4 + 55), 4, v102, *(v4 + 120));
      v33 = v102;
      if (v32)
      {
        v33 = v100;
      }
    }

    else
    {
      result = DspLib::multiply((v4 + 55), 4, v102, *(v4 + 120));
      v33 = v100;
    }

    v34 = (v33 + 4 * v16);
    if (*(v4 + 543) == 1)
    {
      v35 = *v34;
      v36 = v97 + v16;
      DspLib::LoudspeakerController::findTarget(v20, v9 - v4[43], 1, v36, *v34 * v98[v16], *v34);
      v37 = (v96 + 12 * v16);
      *v37 = v38;
      *(v37 + 1) = v39;
      *(v37 + 2) = v40;
      *(v95 + v16) = v38;
      if (*(v4 + 584) == 1)
      {
        v41 = v37[1];
        if (v41 < 1.0)
        {
          v42 = (v41 * v41) * *v36;
          v43 = 0.0;
          if (v42 > i)
          {
            v43 = sqrtf((v42 - i) / (*v36 - i));
          }

          v41 = v41 * 0.8414;
          if (v43 >= v41)
          {
            v41 = v43;
          }

          v37[1] = v41;
        }

        for (j = 4; j != 100; j += 12)
        {
          *(a4 + j) = v41;
        }

        result = (*(*v4 + 64))(v4);
        if (result)
        {
          v45 = 0;
          v46 = v104;
          v47 = 4;
          do
          {
            *(v4[78] + v46) = *(a4 + v47);
            result = (*(*v4 + 64))(v4);
            ++v45;
            v47 += 12;
            v46 += 4608;
          }

          while (v45 < result);
        }
      }

      else
      {
        v94 = v37;
        v57 = (*(*v4 + 64))(v4);
        v93 = &v90;
        MEMORY[0x1EEE9AC00](v57);
        v59 = &v90 - v58;
        v91 = (*(*v4 + 64))(v4);
        v60 = (*(*v4 + 64))(v4);
        MEMORY[0x1EEE9AC00](v60);
        v62 = &v90 - v61;
        v92 = (*(*v4 + 64))(v4);
        if ((*(*v4 + 64))(v4))
        {
          v63 = 0;
          v64 = 1296;
          v65 = a4;
          do
          {
            v66 = *(v4[78] + v64 - 8);
            if (0xAAAAAAAAAAAAAAABLL * ((*(v4[78] + v64) - v66) >> 3) <= v16)
            {
              v68 = 0;
              v69 = 0;
            }

            else
            {
              v67 = (v66 + 24 * v16);
              v68 = *v67;
              v69 = (v67[1] - *v67) >> 2;
            }

            v70 = v69 - v18;
            if (v9 - v4[43] == -1)
            {
              v71 = v70;
            }

            else
            {
              v71 = v9 - v4[43];
            }

            v72 = DspLib::maxv((v68 + 4 * v18), v71);
            *&v59[4 * v63] = v72;
            *v65 = v72;
            *&v62[4 * v63++] = v72;
            v65 += 3;
            v64 += 4608;
          }

          while (v63 < (*(*v4 + 64))(v4));
        }

        if (v94[1] >= 1.0)
        {
          for (k = 4; k != 100; k += 12)
          {
            *(a4 + k) = 1065353216;
          }
        }

        else
        {
          DspLib::waterFillingSolution(v62, v92, *v94);
          v74 = v73;
          if ((*(*v4 + 64))(v4))
          {
            v75 = 0;
            v76 = 4;
            do
            {
              v77 = *&v59[4 * v75];
              v78 = 1.0;
              if (v77 > 0.0)
              {
                v79 = *&v62[4 * v75];
                if (v79 >= v74)
                {
                  v79 = v74;
                }

                v78 = sqrtf(v79 / v77);
              }

              *(a4 + v76) = v78;
              ++v75;
              v76 += 12;
            }

            while (v75 < (*(*v4 + 64))(v4));
          }

          DspLib::waterFillingSolution(v59, v91, v35);
          v81 = v80;
          if ((*(*v4 + 64))(v4))
          {
            v82 = 0;
            v83 = a4;
            do
            {
              v84 = *&v59[4 * v82];
              if (v84 >= v81)
              {
                v84 = v81;
              }

              *v83 = v84;
              ++v82;
              v83 += 3;
            }

            while (v82 < (*(*v4 + 64))(v4));
          }
        }

        for (m = 8; m != 104; m += 12)
        {
          *(a4 + m) = 0;
        }

        result = (*(*v4 + 64))(v4);
        if (result)
        {
          v87 = 0;
          v88 = v104;
          v89 = 4;
          do
          {
            *(v4[78] + v88) = *(a4 + v89);
            result = (*(*v4 + 64))(v4);
            ++v87;
            v89 += 12;
            v88 += 4608;
          }

          while (v87 < result);
        }
      }
    }

    else
    {
      v48 = v4[78];
      v49 = v4[79];
      if (v48 != v49)
      {
        v50 = 0;
        v51 = v49 - v48 - 4608;
        v52 = vdupq_n_s64(v51 / 0x1200);
        v53 = v48 + v106;
        v54 = (v48 + v105);
        do
        {
          v55 = vdupq_n_s64(v50);
          v56 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v55, v107)));
          if (vuzp1_s16(v56, *v52.i8).u8[0])
          {
            *(v53 + 4380) = 1065353216;
          }

          if (vuzp1_s16(v56, *&v52).i8[2])
          {
            *(v53 + 8988) = 1065353216;
          }

          if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, vorrq_s8(v55, v108)))).i32[1])
          {
            *v54 = 1065353216;
            v54[1152] = 1065353216;
          }

          v50 += 4;
          v53 += 18432;
          v54 += 4608;
        }

        while (((v51 / 0x1200 + 4) & 0x1FFFFFFFFFFFFCLL) != v50);
      }
    }

    ++v16;
    v109 += 4;
    v105 += 4;
    v106 += 4;
    a4 += 6;
    v104 += 4;
  }

  while (v16 != 4);
  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::findTemperatureTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = xmmword_1DE095680;
  a3[1] = xmmword_1DE095670;
  a3[4] = xmmword_1DE095670;
  a3[5] = xmmword_1DE097CF0;
  a3[2] = xmmword_1DE097CF0;
  a3[3] = xmmword_1DE095680;
  v6 = *(a1 + 328);
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v8 = 0;
    v9 = v6 + a2;
    v10 = 8 - a2;
    v11 = a3 + 2;
    v43 = vdup_n_s32(0x358637BDu);
    v12 = 3924;
    do
    {
      v13 = *(a1 + 624);
      v14 = 1.0;
      if (*(a1 + 544) == 1)
      {
        v15 = v13 + v12;
        v16 = *(v13 + v12 - 2660);
        if (v9 - *(a1 + 344) == -1)
        {
          v17 = ((*(v13 + v12 - 2652) - v16) >> 2) - v10;
        }

        else
        {
          v17 = v9 - *(a1 + 344);
        }

        v18 = DspLib::maxv((v16 + 4 * v10), v17);
        *(v15 + 404) = v18;
        v19 = *(v15 - 2744);
        v20 = *(v15 - 2740);
        v14 = 1.0;
        if (v18 > v19)
        {
          v21 = v18;
          v22 = expf(-(v18 - v19) / fmaxf(v20 - v19, 1.0e-15));
          v14 = 1.0;
          v23 = v19 + ((v20 - v19) * (1.0 - v22));
          if (v23 < v21)
          {
            v24 = *(v13 + v12);
            v25 = vmaxnm_f32(*(v13 + v12 - 3092), v43);
            v26 = fminf(vdiv_f32(v25, vadd_f32(v25, vdup_lane_s32(v25, 1))).f32[0], 0.995);
            v27 = *(v13 + v12 - 3108);
            v28 = v20 * (1.0 - v26);
            v29 = v28 <= v24;
            v30 = fmaxf(v24 / v28, 0.0);
            if (v29)
            {
              v30 = 1.0;
            }

            v31 = *(v13 + v12 - 3084) + *(v13 + v12 - 3080);
            if (v31 >= v23)
            {
              v32 = 0.0;
            }

            else
            {
              v32 = v23 - v31;
            }

            v33 = fmaxf(*&v27, 0.001);
            v34 = v32 * fminf(v33 / (v33 + fmaxf(*(&v27 + 1), 0.001)), 0.995);
            v35 = v32 - v34;
            v36 = v32 * v26;
            v37 = v30 * v30;
            v38 = v34 + (v37 * (v36 - v34));
            v39 = v35 + (v37 * ((v32 - v36) - v35));
            v40 = v38 / *&v27;
            if (*&v27 <= v38)
            {
              v40 = 1.0;
            }

            if (*(&v27 + 1) <= v39)
            {
              v41 = 1.0;
            }

            else
            {
              v41 = v39 / *(&v27 + 1);
            }

            if (v41 >= v40)
            {
              v41 = v40;
            }

            v42 = fmaxf(v41, 0.0);
            v14 = sqrtf(v42);
            if (v42 >= 1.0)
            {
              v14 = 1.0;
            }
          }
        }

        *(v11 - 2) = v20 + *(v15 + 492);
        *(v11 - 1) = v14;
        *v11 = 0.0;
      }

      *(v13 + v12 + 412) = v14;
      ++v8;
      result = (*(*a1 + 64))(a1);
      v11 += 3;
      v12 += 4608;
    }

    while (v8 < result);
  }

  return result;
}

double DspLib::LoudspeakerController::Algorithm::findTargets@<D0>(std::string::size_type *this@<X0>, vDSP_Length a2@<X2>, _OWORD *a3@<X8>)
{
  DspLib::LoudspeakerController::Algorithm::findAmplitudeTarget(this, v53);
  DspLib::LoudspeakerController::Algorithm::findDisplacementTarget(this, v52);
  DspLib::LoudspeakerController::Algorithm::findPassiveRadiatorDisplacementTarget(this, v51);
  DspLib::LoudspeakerController::Algorithm::findVelocityTarget(this, v50);
  v44 = xmmword_1DE095680;
  v45 = xmmword_1DE095670;
  v48 = xmmword_1DE095670;
  v49 = xmmword_1DE097CF0;
  v46 = xmmword_1DE097CF0;
  v47 = xmmword_1DE095680;
  DspLib::LoudspeakerController::Algorithm::findPowerTargets(this, a2, &v44, __src);
  DspLib::LoudspeakerController::Algorithm::findTemperatureTarget(this, a2, v42);
  if (this[83])
  {
    if ((*(*this + 64))(this))
    {
      v6 = 0;
      v7 = 4248;
      do
      {
        DspLib::Log::write(this + 83, *(this[78] + v7));
        ++v6;
        v7 += 4608;
      }

      while (v6 < (*(*this + 64))(this));
    }

    if ((*(*this + 64))(this))
    {
      v8 = 0;
      v9 = 4268;
      do
      {
        DspLib::Log::write(this + 83, *(this[78] + v9));
        ++v8;
        v9 += 4608;
      }

      while (v8 < (*(*this + 64))(this));
    }

    if ((*(*this + 64))(this))
    {
      v10 = 0;
      v11 = 4288;
      do
      {
        DspLib::Log::write(this + 83, *(this[78] + v11));
        ++v10;
        v11 += 4608;
      }

      while (v10 < (*(*this + 64))(this));
    }

    if ((*(*this + 64))(this))
    {
      v12 = 0;
      v13 = 4280;
      do
      {
        DspLib::Log::write(this + 83, *(this[78] + v13));
        ++v12;
        v13 += 4608;
      }

      while (v12 < (*(*this + 64))(this));
    }

    if (*(this + 476))
    {
      v14 = *(this + 484) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v44 + 1;
    v16 = 1.0;
    v17 = -16;
    do
    {
      if (v14)
      {
        v18 = 472;
      }

      else
      {
        v18 = 424;
      }

      DspLib::Log::write(this + 83, *(this + v17 + v18));
      v19 = *v15;
      v15 += 3;
      v20 = v19;
      if (v19 < v16)
      {
        v16 = v20;
      }

      v17 += 4;
    }

    while (v17);
    DspLib::Log::write(this + 83, v16);
    if ((*(*this + 64))(this))
    {
      v21 = 0;
      v22 = 4336;
      do
      {
        DspLib::Log::write(this + 83, *(this[78] + v22));
        ++v21;
        v22 += 4608;
      }

      while (v21 < (*(*this + 64))(this));
    }
  }

  v23 = v53[3];
  a3[2] = v53[2];
  a3[3] = v23;
  v24 = v53[5];
  a3[4] = v53[4];
  a3[5] = v24;
  v25 = v53[1];
  *a3 = v53[0];
  a3[1] = v25;
  v26 = v52[3];
  a3[8] = v52[2];
  a3[9] = v26;
  v27 = v52[5];
  a3[10] = v52[4];
  a3[11] = v27;
  v28 = v52[1];
  a3[6] = v52[0];
  a3[7] = v28;
  v29 = v50[1];
  a3[12] = v50[0];
  a3[13] = v29;
  v30 = v50[5];
  a3[16] = v50[4];
  a3[17] = v30;
  v31 = v50[3];
  a3[14] = v50[2];
  a3[15] = v31;
  v32 = v47;
  a3[20] = v46;
  a3[21] = v32;
  v33 = v49;
  a3[22] = v48;
  a3[23] = v33;
  v34 = v45;
  a3[18] = v44;
  a3[19] = v34;
  memcpy(a3 + 24, __src, 0x180uLL);
  v35 = v42[3];
  a3[50] = v42[2];
  a3[51] = v35;
  v36 = v42[5];
  a3[52] = v42[4];
  a3[53] = v36;
  v37 = v42[1];
  a3[48] = v42[0];
  a3[49] = v37;
  v38 = v51[3];
  a3[56] = v51[2];
  a3[57] = v38;
  v39 = v51[5];
  a3[58] = v51[4];
  a3[59] = v39;
  result = *v51;
  v41 = v51[1];
  a3[54] = v51[0];
  a3[55] = v41;
  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::findTargetActivity@<X0>(float *__src@<X1>, uint64_t a2@<X0>, _OWORD *a3@<X8>)
{
  v3 = __src;
  *a3 = xmmword_1DE095680;
  a3[1] = xmmword_1DE095670;
  a3[4] = xmmword_1DE095670;
  a3[5] = xmmword_1DE097CF0;
  a3[2] = xmmword_1DE097CF0;
  a3[3] = xmmword_1DE095680;
  a3[6] = xmmword_1DE095680;
  a3[7] = xmmword_1DE095670;
  a3[10] = xmmword_1DE095670;
  a3[11] = xmmword_1DE097CF0;
  a3[8] = xmmword_1DE097CF0;
  a3[9] = xmmword_1DE095680;
  a3[12] = xmmword_1DE095680;
  a3[13] = xmmword_1DE095670;
  a3[16] = xmmword_1DE095670;
  a3[17] = xmmword_1DE097CF0;
  a3[14] = xmmword_1DE097CF0;
  a3[15] = xmmword_1DE095680;
  a3[18] = xmmword_1DE095680;
  a3[19] = xmmword_1DE095670;
  a3[22] = xmmword_1DE095670;
  a3[23] = xmmword_1DE097CF0;
  v6 = 0xFFFFFFFFFFFFFE8;
  a3[20] = xmmword_1DE097CF0;
  a3[21] = xmmword_1DE095680;
  do
  {
    v7 = &a3[v6];
    v7[48] = xmmword_1DE095680;
    v7[49] = xmmword_1DE095670;
    v7[52] = xmmword_1DE095670;
    v7[53] = xmmword_1DE097CF0;
    v7[50] = xmmword_1DE097CF0;
    v7[51] = xmmword_1DE095680;
    v6 += 6;
  }

  while (v6 * 16);
  a3[48] = xmmword_1DE095680;
  a3[49] = xmmword_1DE095670;
  a3[52] = xmmword_1DE095670;
  a3[53] = xmmword_1DE097CF0;
  a3[50] = xmmword_1DE097CF0;
  a3[51] = xmmword_1DE095680;
  a3[54] = xmmword_1DE095680;
  a3[55] = xmmword_1DE095670;
  a3[58] = xmmword_1DE095670;
  a3[59] = xmmword_1DE097CF0;
  a3[56] = xmmword_1DE097CF0;
  a3[57] = xmmword_1DE095680;
  *&v8 = 0x101010101010101;
  *(&v8 + 1) = 0x101010101010101;
  a3[60] = v8;
  a3[61] = v8;
  a3[62] = v8;
  a3[63] = v8;
  a3[64] = v8;
  a3[65] = v8;
  memcpy(a3, __src, 0x3C0uLL);
  memset(v42, 0, sizeof(v42));
  v9 = (*(*a2 + 64))(a2);
  DspLib::LoudspeakerController::calculatePowerGain((v3 + 96), v9, v42);
  result = (*(*a2 + 64))(a2);
  if (result)
  {
    v11 = 0;
    v40 = (v3 + 192);
    v41 = a3 + 60;
    v37 = (v3 + 216);
    v38 = (v3 + 48);
    v39 = (v3 + 24);
    v12 = v3 + 97;
    for (i = a3 + 966; ; i += 12)
    {
      v14 = *(v42 + v11);
      v15 = v14 >= 1.0 ? 0 : *(a2 + 584) ^ 1;
      v16 = 0;
      v17 = v41 + 12 * v11;
      v17[5] = v15 & 1;
      v18 = v12;
      do
      {
        if (*v18 >= 1.0)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(a2 + 584) ^ 1;
        }

        i[v16++] = v19 & 1;
        v18 += 24;
      }

      while (v16 != 4);
      v20 = *&v40[12 * v11 + 4] < 1.0;
      v17[10] = v20;
      v17[4] = (v15 | v20) & 1;
      v17[11] = v14 < 1.0 || v20;
      v21 = *&v39[12 * v11 + 4] < 1.0 || *&v37[12 * v11 + 4] < 1.0;
      v22 = v3[3 * v11 + 1];
      v23 = *&v38[12 * v11 + 4];
      if (v22 < 1.0)
      {
        break;
      }

      v26 = v3;
      v27 = v23 < 1.0 || v21;
      v24 = *(a2 + 624) + 4608 * v11;
      isReleasing = DspLib::BandCombiner::isReleasing((v24 + 2616));
      if ((v27 & 1) != 0 || DspLib::BandCombiner::isReleasing((v24 + 2616)))
      {
        v3 = v26;
        goto LABEL_24;
      }

      v32 = 0;
      v31 = 0;
      v3 = v26;
LABEL_27:
      if (*(a2 + 540) == 1)
      {
        v33 = (*(a2 + 608) ^ 1) & (v22 < 1.0 || v31);
      }

      else
      {
        v33 = 0;
      }

      v17[1] = v33 & 1;
      if (v32)
      {
        v34 = *(v24 + 4260) > (*(v24 + 1136) * 0.9) || *(v24 + 4580) > (*(v24 + 4576) * 0.9);
      }

      else
      {
        v34 = 0;
      }

      v35 = *(a2 + 541) == 1 && (v21 || v34);
      v17[2] = v35;
      if (*(a2 + 542) == 1)
      {
        v36 = v32 & (*(v24 + 4284) > (*(v24 + 4280) * 0.9));
        if (v23 < 1.0)
        {
          v36 = 1;
        }
      }

      else
      {
        v36 = 0;
      }

      v17[3] = v36;
      *v17 = (v33 | v36 | v35 | isReleasing) & 1;
      ++v11;
      result = (*(*a2 + 64))(a2);
      v12 += 3;
      if (v11 >= result)
      {
        return result;
      }
    }

    v24 = *(a2 + 624) + 4608 * v11;
    isReleasing = DspLib::BandCombiner::isReleasing((v24 + 2616));
LABEL_24:
    v28 = *(v24 + 4240);
    v29 = *(*(a2 + 624) + 4608 * v11 + 32) - *(*(a2 + 624) + 4608 * v11 + 36);
    v30 = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::LoudspeakerController::Parameters::kDefinition, (v11 + 10) | 0x1000000000) + 16);
    if (v29 >= v30)
    {
      v30 = v29;
    }

    v31 = v28 > (v30 * 0.9);
    v32 = 1;
    goto LABEL_27;
  }

  return result;
}

void DspLib::LoudspeakerController::calculatePowerGain(uint64_t a1@<X0>, unint64_t a2@<X1>, float *a3@<X8>)
{
  DspLib::fill(a3, 8uLL, 1.0);
  v6 = 0;
  v7 = (a1 + 4);
  do
  {
    if (a2)
    {
      v8 = 1;
      v9 = v7;
      v10 = a3;
      do
      {
        v11 = *v9;
        v9 += 3;
        v12 = v11;
        if (v11 >= *v10)
        {
          v12 = *v10;
        }

        *v10++ = v12;
        v13 = v8++;
      }

      while (v13 < a2);
    }

    ++v6;
    v7 += 24;
  }

  while (v6 != 4);
}

void DspLib::LoudspeakerController::Algorithm::filterbankAnalysis(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1[78];
  v4 = a1[79];
  if (v3 != v4)
  {
    v8 = 0;
    do
    {
      if (*(a3 + v8) == 1)
      {
        v9 = *(v3 + 24);
        v10 = a1[42];
        if (v9 == v10 - a2 + (*(*a1 + 232))(a1))
        {
          v11 = *(v3 + 24);
          if (a2 == -1)
          {
            v12 = ((*(v3 + 8) - *v3) >> 2) - v11;
          }

          else
          {
            v12 = a2;
          }

          v13 = (*v3 + 4 * v11);
          v14 = *(v3 + 2384);
          v43 = (v3 + 2536);
          v44 = 5;
          v45 = v14;
          DspLib::LinearPhaseFilterbank::process(v3 + 2288, v13, v12, &v43);
          *(v3 + 24) += a2;
          v15 = *(v3 + 2528) + a2;
          *(v3 + 2528) = v15;
          v16 = 2536;
          for (i = 2408; i != 2528; i += 24)
          {
            *(v3 + v16) = *(v3 + i) + 4 * v15;
            v16 += 8;
          }
        }

        else
        {
          for (j = *(v3 + 24); ; *(v3 + 24) = j)
          {
            v19 = a1[44];
            if (j >= v19 - a2 + (*(*a1 + 232))(a1) || *(v3 + 2528) != 0)
            {
              break;
            }

            v21 = (*(*a1 + 232))(a1);
            v22 = a1[44];
            v23 = (*(*a1 + 232))(a1);
            v24 = *(v3 + 24);
            if (v22 + v23 - (v24 + a2) < v21)
            {
              v21 = v22 + v23 - (v24 + a2);
            }

            if (v21 == -1)
            {
              v25 = ((*(v3 + 8) - *v3) >> 2) - v24;
            }

            else
            {
              v25 = v21;
            }

            DspLib::LinearPhaseFilterbank::consumeInput(v3 + 2288, (*v3 + 4 * v24), v25);
            j = *(v3 + 24) + v21;
          }

          v26 = *(v3 + 24);
          v27 = a1[42];
          if (v26 < (*(*a1 + 232))(a1) + v27)
          {
            do
            {
              v28 = a1[42];
              v29 = v28 + (*(*a1 + 232))(a1) - (*(v3 + 24) + a2);
              v30 = v29 % (*(*a1 + 232))(a1);
              if (!v30)
              {
                v30 = (*(*a1 + 232))(a1);
              }

              v31 = a1[42];
              v32 = (*(*a1 + 232))(a1);
              v33 = *(v3 + 24);
              if (v32 + v31 - v33 >= v30)
              {
                v34 = v30;
              }

              else
              {
                v34 = v32 + v31 - v33;
              }

              v35 = (*v3 + 4 * v33);
              v36 = *(v3 + 2384);
              if (v34 == -1)
              {
                v37 = ((*(v3 + 8) - *v3) >> 2) - v33;
              }

              else
              {
                v37 = v34;
              }

              v43 = (v3 + 2536);
              v44 = 5;
              v45 = v36;
              DspLib::LinearPhaseFilterbank::process(v3 + 2288, v35, v37, &v43);
              v38 = *(v3 + 24) + v34;
              *(v3 + 24) = v38;
              v39 = *(v3 + 2528) + v34;
              *(v3 + 2528) = v39;
              v40 = 2536;
              for (k = 2408; k != 2528; k += 24)
              {
                *(v3 + v40) = *(v3 + k) + 4 * v39;
                v40 += 8;
              }

              v42 = a1[42];
            }

            while (v38 < (*(*a1 + 232))(a1) + v42);
          }
        }
      }

      ++v8;
      v3 += 4608;
    }

    while (v3 != v4);
  }
}

uint64_t DspLib::LoudspeakerController::Algorithm::calculateGains@<X0>(uint64_t *a1@<X0>, vDSP_Length a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v168 = *MEMORY[0x1E69E9840];
  v159 = a2;
  memset(v158, 0, sizeof(v158));
  v8 = (*(*a1 + 64))(a1);
  DspLib::LoudspeakerController::calculatePowerGain((a3 + 48), v8, v158);
  v9 = v6[78];
  v10 = *(v9 + 3992);
  v11 = *(v9 + 3984);
  v12 = *(v9 + 3976);
  v157 = 0;
  result = (*(*v6 + 64))(v6);
  if (result)
  {
    v113 = a3 + 24;
    v114 = a3 + 12;
    v111 = a4 + 32;
    v112 = a3 + 96;
    v14 = (v12 * (a2 + ((v10 - v11) >> 2)));
    v107 = a3 + 120;
    v115 = DspLib::LoudspeakerController::kUnityGains;
    v110 = v6;
    v105 = a3;
    v106 = a4;
    do
    {
      v15 = v6[78] + 4608 * v157;
      DspLib::LoudspeakerController::TargetInterpolator::process((v15 + 1952), *(v114 + 3 * v157), v159);
      DspLib::LoudspeakerController::TargetInterpolator::process((v15 + 2000), *(v113 + 3 * v157), v159);
      v119 = v15;
      v16 = (v15 + 2096);
      for (i = 384; i != 768; i += 96)
      {
        DspLib::LoudspeakerController::TargetInterpolator::process(v16, *(a3 + 12 * v157 + i), v14);
        v16 += 6;
      }

      v18 = v119;
      DspLib::LoudspeakerController::TargetInterpolator::process((v119 + 2048), *(v112 + 3 * v157), v14);
      v20 = v157;
      *(a4 + 4 * v157) = 1065353216;
      v21 = (v111 + 20 * v20);
      *(v21 + 4) = 1065353216;
      *v21 = v115;
      if (v6[39])
      {
        v22 = v107 + 12 * v20;
        if ((*(v22 + 11) & 1) != 0 || *v22 == 1)
        {
          v116 = v21;
          v108 = v20;
          v109 = &v105;
          v156 = v159 + v6[45];
          v155 = (*(v18 + 3976) * (v156 + ((*(v18 + 3992) - *(v18 + 3984)) >> 2)));
          MEMORY[0x1EEE9AC00](v19);
          v154[0] = &v105 - v23;
          v154[1] = v156;
          MEMORY[0x1EEE9AC00](v24);
          v152 = &v105 - v28;
          v153 = v29;
          if (*(v22 + 2) == 1)
          {
            DspLib::LoudspeakerController::BiquadModel::zeroInputResponse((v18 + 3472), v26, v27);
            if (*(v6[78] + 4608 * v157 + 1112) == 1)
            {
              DspLib::LoudspeakerController::BiquadModel::zeroInputResponse((v18 + 4064), v152, v153);
            }
          }

          MEMORY[0x1EEE9AC00](v25);
          v151[0] = &v105 - v31;
          v151[1] = v30;
          if (*(v22 + 3) == 1)
          {
            DspLib::LoudspeakerController::BiquadModel::zeroInputResponse((v18 + 3624), &v105 - v31, v30);
          }

          v118 = (v18 + 3312);
          v32 = (v18 + 3144);
          v35 = MEMORY[0x1EEE9AC00](5);
          v37 = &v105 - 4 * v36;
          v38 = 0;
          v167 = 0;
          v166[0] = v35;
          v166[1] = v35;
          v40 = ((4 * v39) & 0xFFFFFFFFFFFFFFF0) + 16;
          do
          {
            *(v166 + v38) = v37;
            v38 += 8;
            v37 += v40;
          }

          while (v38 != 40);
          v149[0] = v166;
          v149[1] = v33;
          v150 = v34;
          v44 = MEMORY[0x1EEE9AC00](v33);
          v46 = &v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          v47 = 0;
          v165 = 0;
          v164[0] = v44;
          v164[1] = v44;
          do
          {
            *(v164 + v47) = v46;
            v47 += 8;
            v46 += v43;
          }

          while (v47 != 40);
          v147[0] = v164;
          v147[1] = v41;
          v148 = v42;
          v52 = MEMORY[0x1EEE9AC00](v41);
          v54 = &v105 - v53;
          v55 = 0;
          v163 = 0;
          v162[0] = v52;
          v162[1] = v52;
          do
          {
            *(v162 + v55) = v54;
            v55 += 8;
            v54 += 4 * v50;
          }

          while (v55 != 40);
          if (*(v51 + 1112))
          {
            v56 = v49;
          }

          else
          {
            v56 = 0;
          }

          v145[0] = v162;
          v145[1] = v48;
          v146 = v56;
          v60 = MEMORY[0x1EEE9AC00](v48);
          v62 = &v105 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
          v63 = 0;
          v161 = 0;
          v160[0] = v60;
          v160[1] = v60;
          do
          {
            *(v160 + v63) = v62;
            v63 += 8;
            v62 += v59;
          }

          while (v63 != 40);
          v64 = 0;
          v143[0] = v160;
          v143[1] = v57;
          v65 = v119 + 2576;
          v144 = v58;
          v117 = v119 + 2576;
          do
          {
            DspLib::multiply(*(v65 + v64), v156, *(v149[0] + v64), *v32);
            if (*(v22 + 2) == 1)
            {
              DspLib::LoudspeakerController::SpeakerSystemModel::displacementZeroState(v118, *(v149[0] + v64), v150, *(v147[0] + v64), v148, *(v145[0] + v64), v146);
            }

            if (*(v22 + 3) == 1)
            {
              v66 = v150;
              v67 = *(v149[0] + v64);
              v68 = v22;
              v69 = v32;
              v70 = v144;
              v71 = *(v143[0] + v64);
              v72 = v14;
              v73 = v119;
              DspLib::Biquad::SetupWrapper::reset((v119 + 3744));
              v74 = (v73 + 3696);
              v14 = v72;
              v75 = v70;
              v32 = v69;
              v22 = v68;
              v65 = v117;
              DspLib::Biquad::Filter::process(v74, v67, v66, v71, v75);
            }

            v64 += 8;
          }

          while (v64 != 40);
          v142[0] = &v156;
          v142[1] = v22;
          v142[2] = v149;
          v142[3] = v32;
          v76 = v119;
          v6 = v110;
          v142[4] = v119;
          v142[5] = v110;
          v142[6] = &v159;
          v142[7] = &v155;
          v142[8] = v118;
          v142[9] = v158;
          a3 = v105;
          v142[10] = &v157;
          v142[11] = v105;
          v141 = 0;
          v140 = 0;
          DspLib::BandCombiner::gainEstimate(v119 + 2616, &DspLib::LoudspeakerController::kUnityGains, 5, 0x100uLL, &v140, 5, &v138);
          v137 = 0;
          DspLib::GainSmoother::gainEstimate(v76 + 2888, 0x100uLL, &v137, 1.0);
          v78 = v77;
          if (*(v22 + 11))
          {
            v126 = v138;
            LODWORD(v127) = v139;
            v79 = DspLib::LoudspeakerController::Algorithm::calculateGains(unsigned long,DspLib::LoudspeakerController::Algorithm::TargetActivity const&)::$_0::operator()(v142, &v126, v77);
            a4 = v106;
            *(v106 + 4 * v108) = v79;
            DspLib::GainSmoother::gainEstimate(v76 + 2888, 0x100uLL, &v137, v79);
            v78 = v80;
          }

          else
          {
            a4 = v106;
          }

          *&v126 = v22;
          *(&v126 + 1) = v154;
          v127 = v147;
          v128 = a3;
          v129 = &v157;
          v130 = v76;
          v131 = v6;
          v132 = &v152;
          v133 = v145;
          v134 = v151;
          v135 = v143;
          v136 = &v156;
          if (*(v6[70] + 16 * v157) != 2)
          {
            v122 = v115;
            v123 = 1065353216;
            DspLib::LoudspeakerController::Algorithm::calculateGains(unsigned long,DspLib::LoudspeakerController::Algorithm::TargetActivity const&)::$_1::operator()(&v126, &v122, &v124, v78);
            v81 = v116;
            *v116 = v124;
            *(v81 + 4) = v125;
          }

          DspLib::BandCombiner::gainEstimate(v119 + 2616, v116, 5, 0x100uLL, &v140, 5, &v138);
          v82 = v116;
          v83 = 0;
          while (*(&v140 + v83) != 1)
          {
            v83 += 2;
            if (v83 == 10)
            {
              goto LABEL_49;
            }
          }

          v84 = 0;
          v85 = &v140;
          do
          {
            v86 = *v85;
            v85 += 2;
            if (v86 != 1 || *(v82 + v84) < (*(*(v119 + 2864) + v84) * 1.4125))
            {
              *(&v138 + v84) = 1065353216;
            }

            v84 += 4;
          }

          while (v84 != 20);
          v124 = v138;
          v125 = v139;
          v120 = v138;
          v121 = v139;
          DspLib::LoudspeakerController::Algorithm::calculateGains(unsigned long,DspLib::LoudspeakerController::Algorithm::TargetActivity const&)::$_1::operator()(&v126, &v120, &v122, v78);
          v87 = v116;
          v88 = 0;
          v138 = v122;
          v139 = v123;
          v89 = &v140;
          do
          {
            v90 = *v89;
            v89 += 2;
            v91 = *(&v138 + v88);
            if (v90 != 1 || v91 < *(&v124 + v88))
            {
              *(v87 + v88) = v91;
            }

            v88 += 4;
          }

          while (v88 != 20);
LABEL_49:
          LODWORD(v20) = v157;
        }
      }

      v92 = v20 + 1;
      v157 = v20 + 1;
      result = (*(*v6 + 64))(v6);
    }

    while (v92 < result);
  }

  if ((v6[73] & 1) != 0 && (v6[77] & 1) == 0)
  {
    if ((*(*v6 + 64))(v6))
    {
      v102 = 0;
      v103 = 1.0;
      do
      {
        if (*(a4 + 4 * v102) < v103)
        {
          v103 = *(a4 + 4 * v102);
        }

        ++v102;
      }

      while (v102 < (*(*v6 + 64))(v6));
    }

    else
    {
      v103 = 1.0;
    }

    result = (*(*v6 + 64))(v6);
    if (result)
    {
      v104 = 0;
      do
      {
        *(a4 + 4 * v104++) = v103;
        result = (*(*v6 + 64))(v6);
      }

      while (v104 < result);
    }
  }

  else
  {
    v93 = v6[69];
    if (v93)
    {
      v94 = 0;
      v95 = v6[70];
      v96 = v6[71];
      do
      {
        if (v95 != v96)
        {
          v97 = 0;
          v98 = 1.0;
          v99 = v95;
          do
          {
            if (*(v99 + 8) == v94 && *(a4 + 4 * v97) < v98)
            {
              v98 = *(a4 + 4 * v97);
            }

            ++v97;
            v99 += 16;
          }

          while (v99 != v96);
          if (v95 != v96)
          {
            v100 = 0;
            v101 = v95;
            do
            {
              if (*(v101 + 8) == v94)
              {
                *(a4 + 4 * v100) = v98;
              }

              ++v100;
              v101 += 16;
            }

            while (v101 != v96);
          }
        }

        v94 = (v94 + 1);
      }

      while (v93 > v94);
    }
  }

  return result;
}

float DspLib::LoudspeakerController::Algorithm::calculateGains(unsigned long,DspLib::LoudspeakerController::Algorithm::TargetActivity const&)::$_0::operator()(uint64_t **a1, float *a2, float a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = a1[5];
  v7 = **a1;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v86 - v9;
  if (**(v8 + 8) == 1)
  {
    DspLib::multiply(**a1[2], a1[2][2], v10, *a2);
    for (i = 1; i != 5; ++i)
    {
      v12 = DspLib::multiplyAccumulate(v10, v7, *(*a1[2] + 8 * i), a2[i]);
    }
  }

  else
  {
    v14 = a1[3];
    v13 = a1[4];
    v15 = *v13;
    v16 = (v13[1] - *v13) >> 2;
    v17 = (*(*v6 + 232))(v6) - *a1[6];
    if (**a1 == -1)
    {
      v18 = v16 - v17;
    }

    else
    {
      v18 = **a1;
    }

    v12 = DspLib::multiply(v15 + 4 * v17, v18, v10, *v14);
  }

  v19 = **a1;
  v20 = MEMORY[0x1EEE9AC00](v12);
  v22 = v86 - v21;
  if (*(a1[1] + 4) == 1)
  {
    v23 = a1[3];
    DspLib::Biquad::SetupWrapper::reset((v23 + 16));
    DspLib::Biquad::Filter::process(v23 + 10, v10, v7, v22, v19);
    v24 = **a1;
    v26 = MEMORY[0x1EEE9AC00](v25);
    v90 = v86 - v27;
    if (v28)
    {
      DspLib::multiply();
    }

    v19 = v24;
  }

  else
  {
    v26 = MEMORY[0x1EEE9AC00](v20);
    v90 = v86 - v29;
  }

  v30 = MEMORY[0x1EEE9AC00](v26);
  v87 = v86 - v31;
  LODWORD(v31) = *(v32 + 10);
  v88 = v33;
  v91 = v33;
  if (v31 == 1)
  {
    v30 = DspLib::LoudspeakerController::SpeakerSystemModel::temperaturePathZeroState(a1[8], v90, v19, v87);
    v91 = *a1[7];
  }

  v34 = **a1;
  v35 = MEMORY[0x1EEE9AC00](v30);
  v37 = v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (v86 - v39);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v89 = (v86 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v86[-2 * v45];
  v47 = 0;
  memset(v95, 0, sizeof(v95));
  do
  {
    *(v95 + v47) = v46;
    v47 += 8;
    v46 = (v46 + ((4 * v44) & 0xFFFFFFFFFFFFFFF0) + 16);
  }

  while (v47 != 32);
  v48 = MEMORY[0x1EEE9AC00](v43);
  v51 = v86 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  memset(v94, 0, sizeof(v94));
  do
  {
    *(v94 + v52) = v51;
    v52 += 8;
    v51 += (v49 & 0xFFFFFFFFFFFFFFF0) + 16;
  }

  while (v52 != 32);
  if (*(a1[1] + 5))
  {
    v53 = *a1[10];
    v54 = a1[4];
    v55 = *(a1[9] + v53);
    if (v55 < *(v54 + 1103))
    {
      v55 = *(v54 + 1103);
    }

    if (v55 >= a3)
    {
      v55 = a3;
    }

    v56 = *(a1[11] + 3 * v53 + 193);
    if (v56 < *(v54 + 1086))
    {
      v56 = *(v54 + 1086);
    }

    if (v56 < v55)
    {
      v55 = v56;
    }

    DspLib::multiply(v10, v7, v37, v55);
    DspLib::LoudspeakerController::EfficiencyModel::processKernel((a1[8] + 6), v37, v34, v40, v34, v89, v34, a1[8][19]);
    v57 = a1[8];
    *&v92 = v95;
    *(&v92 + 1) = 4;
    *&v93 = v91;
    DspLib::LoudspeakerController::SpeakerSystemModel::averagePowersZeroInput(v57, v40, v34, &v92);
    DspLib::multiply();
  }

  v58 = MEMORY[0x1EEE9AC00](v48);
  if (*(v60 + 4) == 1)
  {
    DspLib::LoudspeakerController::BiquadModel::zeroInputResponse((a1[3] + 1), v86 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
    DspLib::multiply();
  }

  v61 = *a1[7];
  v62 = MEMORY[0x1EEE9AC00](v58);
  v86[0] = v86 - v63;
  v65 = *(v64 + 10);
  v86[1] = v61;
  if (v65 == 1)
  {
    v62 = DspLib::LoudspeakerController::SpeakerSystemModel::temperaturePathZeroState(a1[8], v90, v19, v86[0]);
  }

  v66 = MEMORY[0x1EEE9AC00](v62);
  v69 = v86 - ((v68 + 79) & 0xFFFFFFFFFFFFFFC0);
  v70 = 0;
  v92 = 0u;
  v93 = 0u;
  do
  {
    *(&v92 + v70) = v69;
    v70 += 8;
    v69 += ((4 * v67) & 0xFFFFFFFFFFFFFFF0) + 16;
  }

  while (v70 != 32);
  if (*(a1[1] + 5))
  {
    DspLib::multiply();
  }

  v71 = 0;
  v72 = 1.0;
  v73 = 292;
  v74 = 2128;
  v75 = 384;
  do
  {
    if (*(v6 + 584) == 1)
    {
      v76 = a1[11];
      if (*(v76 + v73) < v72)
      {
        v72 = *(v76 + v73);
      }
    }

    else if (*(a1[1] + v71 + 6) == 1)
    {
      v77 = (a1[11] + 12 * *a1[10] + v75);
      DspLib::LoudspeakerController::computeGainsSquared(*(v95 + v71), v91, *(v94 + v71), COERCE_DOUBLE(*v77), v77[1]);
    }

    ++v71;
    v73 += 12;
    v74 += 48;
    v75 += 96;
  }

  while (v71 != 4);
  v78 = 1.0;
  if (v72 <= 1.0)
  {
    v78 = v72;
  }

  if (v72 >= *(a1[4] + 1103))
  {
    v79 = v78;
  }

  else
  {
    v79 = *(a1[4] + 1103);
  }

  if (*(a1[1] + 10))
  {
    MEMORY[0x1EEE9AC00](v66);
    v81 = v86 - v80;
    v82 = *a1[7];
    DspLib::LoudspeakerController::SpeakerSystemModel::temperatureZeroInput(a1[8], v86 - v80, v82);
    v83 = a1[11] + 12 * *a1[10];
    LODWORD(v84) = *(v83 + 768);
    DspLib::LoudspeakerController::computeGainsSquared(v81, v82, v87, v84, *(v83 + 772));
  }

  return v79;
}

void DspLib::LoudspeakerController::Algorithm::calculateGains(unsigned long,DspLib::LoudspeakerController::Algorithm::TargetActivity const&)::$_1::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a4 == 0.0)
  {
    *(a3 + 16) = 1065353216;
    *a3 = DspLib::LoudspeakerController::kUnityGains;
  }

  else
  {
    if (**a1 == 1)
    {
      v8 = *(a1 + 48);
      if (*(*a1 + 2) == 1)
      {
        v9 = *(a1 + 8);
        v10 = *(a1 + 16);
        v28 = *v10;
        v11 = *v9;
        v12 = v9[1];
        v29 = *(v10 + 8);
        v26 = *a2;
        v27 = *(a2 + 4);
        DspLib::LoudspeakerController::computeGainsSigned(v11, v12, &v28, &v26, *(*(a1 + 40) + 1976), 0, &v30, a4);
      }

      if (*(*a1 + 3) == 1)
      {
        v30 = 0uLL;
        v31 = 0;
        v13 = *(a1 + 72);
        v14 = *(a1 + 80);
        v15 = *v13;
        v16 = v13[1];
        v28 = *v14;
        v29 = *(v14 + 8);
        v26 = *a2;
        v17 = *(a1 + 40);
        v27 = *(a2 + 4);
        DspLib::LoudspeakerController::computeGainsSigned(v15, v16, &v28, &v26, *(v17 + 2024), *(v17 + 4312), &v30, a4);
      }

      if (*(*a1 + 1) == 1)
      {
        v19 = *(a1 + 32);
        v18 = *(a1 + 40);
        v20 = *v18;
        v21 = **(a1 + 88);
        v28 = v18 + 322;
        *&v29 = 5;
        *(&v29 + 1) = v21;
        LODWORD(v18) = *v19;
        v26 = *a2;
        v27 = *(a2 + 4);
        v22 = *(v8 + 624) + 4608 * v18;
        v23 = *(v22 + 32);
        v24 = *(v22 + 36);
        v25 = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::LoudspeakerController::Parameters::kDefinition, (v18 + 10) | 0x1000000000) + 16);
        if ((v23 - v24) >= v25)
        {
          v25 = v23 - v24;
        }

        DspLib::LoudspeakerController::computeGainsAmplitude(v20, v21, &v28, &v26, &v30, a4, v25);
        *a2 = v30;
        *(a2 + 4) = v31;
      }
    }

    *a3 = *a2;
    *(a3 + 16) = *(a2 + 4);
  }
}

void *DspLib::LoudspeakerController::Algorithm::filterbankSynthesis(void *result, uint64_t a2, void *a3)
{
  if (a3[1])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = a3[2];
    v25 = a2 + 32;
    do
    {
      v9 = v5[78];
      v10 = (v9 + 4608 * v6);
      v11 = (v25 + 20 * v6);
      if (DspLib::BandCombiner::isReleasing(v10 + 327) || DspLib::minv(v11, 5uLL) < 1.0)
      {
        v26[0] = v10 + 322;
        v26[1] = 5;
        v26[2] = v8;
        DspLib::BandCombiner::process((v10 + 327), v26, v11, 5, *(*a3 + 8 * v6), a3[2]);
      }

      else
      {
        v12 = *v10;
        v13 = (v10[1] - *v10) >> 2;
        v14 = (*(*v5 + 232))(v5);
        if (v8 == -1)
        {
          v15 = v13 - (v14 + 1);
        }

        else
        {
          v15 = v8;
        }

        DspLib::copy(&v12[v14 - v8], v15, *(*a3 + 8 * v6));
      }

      v16 = 4608 * v7;
      result = DspLib::GainSmoother::process(v10 + 722, *(*a3 + 8 * v6), a3[2], *(*a3 + 8 * v6), a3[2], *(a2 + 4 * v6));
      if (v10[316] <= v8)
      {
        v21 = 0;
      }

      else
      {
        v17 = (v9 + v16 + 2416);
        v18 = 120;
        do
        {
          v19 = *(v17 - 1);
          if (v5[45] == -1)
          {
            v20 = ((*v17 - v19) >> 2) - v8;
          }

          else
          {
            v20 = v5[45];
          }

          result = DspLib::copy(&v19[4 * v8], v20, v19);
          v17 += 3;
          v18 -= 24;
        }

        while (v18);
        v21 = v10[316] - v8;
      }

      v22 = 0;
      v10[316] = v21;
      v23 = (v9 + v16 + 2408);
      do
      {
        v24 = *v23;
        v23 += 3;
        *(v9 + v16 + 2536 + v22) = v24 + 4 * v21;
        v22 += 8;
      }

      while (v22 != 40);
      v6 = ++v7;
    }

    while (a3[1] > v7);
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::fastPeakLimiter(uint64_t result, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(result + 608) == 1)
  {
    v2 = result;
    if (*(result + 540) == 1 && *(result + 312) == 1)
    {
      v27[1] = v27;
      v4 = *(result + 612);
      v5 = MEMORY[0x1EEE9AC00](result);
      v7 = (v27 - v6);
      v9 = *(v8 + 16);
      result = (*(*v2 + 64))(v2, v5);
      if (result)
      {
        v10 = 0;
        v11 = 1.0 - v4;
        do
        {
          v12 = (*(v2 + 624) + 4608 * v10);
          v13 = v12[8] - v12[9];
          v14.i32[0] = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::LoudspeakerController::Parameters::kDefinition, (v10 + 10) | 0x1000000000) + 16);
          if (v13 >= *v14.i32)
          {
            *v14.i32 = v13;
          }

          v28 = v14;
          DspLib::abs(*(*a2 + 8 * v10), a2[2], v7);
          if (v12[1136] != 1.0 || (*v15.i32 = DspLib::maxv(v7, v9), *v15.i32 > *v28.i32))
          {
            v16 = a2[2];
            if (v16)
            {
              v17 = 0;
              v18 = *(*a2 + 8 * v10);
              v19 = 4 * v16;
              do
              {
                v20 = v12[1136];
                v21 = 1.0;
                if (v20 < 0.99)
                {
                  v21 = v11 + (v20 * *(v2 + 612));
                }

                v12[1136] = v21;
                v22 = v7[v17];
                v23 = v28;
                if ((v21 * v22) <= *v28.i32)
                {
                  *v15.i32 = v21 * *(v18 + 4 * v17);
                }

                else
                {
                  v12[1136] = *v28.i32 / v22;
                  v15.i32[0] = *(v18 + 4 * v17);
                  v24.i64[0] = 0x8000000080000000;
                  v24.i64[1] = 0x8000000080000000;
                  v15.i32[0] = vbslq_s8(v24, v23, v15).u32[0];
                }

                *(v18 + 4 * v17) = v15.i32[0];
                v25 = v12[1136];
                if ((*(*v2 + 208))(v2))
                {
                  DspLib::CPUMeasure::pause((v2 + 104));
                  v26 = v12[1137];
                  if (v26 >= v25)
                  {
                    v26 = v25;
                  }

                  v12[1137] = v26;
                  v15 = DspLib::CPUMeasure::resume((v2 + 104));
                }

                ++v17;
                v19 -= 4;
              }

              while (v19);
            }
          }

          ++v10;
          result = (*(*v2 + 64))(v2);
        }

        while (v10 < result);
      }
    }
  }

  return result;
}

void DspLib::LoudspeakerController::Algorithm::outputAnalysis(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v2 = *(a2 + 16);
  v45 = a1;
  v3 = *(*(a1 + 624) + 3976) * (v2 + ((*(*(a1 + 624) + 3992) - *(*(a1 + 624) + 3984)) >> 2));
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = &v36[-2 * v6];
  v8 = 0;
  memset(v47, 0, sizeof(v47));
  do
  {
    *(v47 + v8) = v7;
    v8 += 8;
    v7 = (v7 + 4 * ((v5 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 16);
  }

  while (v8 != 32);
  for (i = 0; i != 32; i += 8)
  {
    DspLib::clear(*(v47 + i), v4);
  }

  if (*(v39 + 8))
  {
    if (v2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v2;
    }

    v36[4] = v45 + 688;
    v36[5] = 4 * v10;
    v36[3] = 16 * (((v5 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v36[2] = 4 * v5;
    v38 = v45 + 680;
    v36[1] = v45 + 672;
    v36[11] = v36;
    v37 = 0;
    v36[8] = 0;
    MEMORY[0x1EEE9AC00](*(v45 + 624));
    v40 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v12);
    v14 = v36 - v13;
    MEMORY[0x1EEE9AC00](v15);
    v36[10] = v36 - v16;
    MEMORY[0x1EEE9AC00](v17);
    v43 = v36 - v19;
    if (*(*(v20 + 624) + 1112))
    {
      v21 = v2;
    }

    else
    {
      v21 = 0;
    }

    v42 = v21;
    MEMORY[0x1EEE9AC00](v18);
    v41 = v36 - v22;
    MEMORY[0x1EEE9AC00](v23);
    *&v44 = v36 - v24;
    MEMORY[0x1EEE9AC00](v25);
    v28 = v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = 0;
    memset(v46, 0, sizeof(v46));
    do
    {
      *(v46 + v29) = v28;
      v29 += 8;
      v28 += ((4 * (v5 - 1)) & 0xFFFFFFFFFFFFFFF0) + 16;
    }

    while (v29 != 32);
    v36[7] = v26;
    v30 = v26;
    MEMORY[0x1EEE9AC00](v26);
    v31 = v40;
    v33 = v32;
    DspLib::multiply(**v39, *(v39 + 16), v40, *(v30 + 3144));
    DspLib::Biquad::Filter::process((v30 + 3152), v31, v33, v14, v33);
    v36[6] = v14;
    DspLib::multiply();
  }

  if (v4)
  {
    v34 = 0;
    v35 = v45 + 520;
    do
    {
      *(v35 + 4 * v34) = DspLib::maxv(*(v47 + v34), v4);
      ++v34;
    }

    while (v34 != 4);
  }
}

void DspLib::LoudspeakerController::Algorithm::processBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[13] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3)
  {
    if (*(a1 + 664))
    {
      DspLib::Log::write((a1 + 664), v3);
    }

    if (*(a1 + 680))
    {
      DspLib::Log::write((a1 + 680), v3);
    }

    *&v36 = v3;
    if (*(a1 + 600) == 1)
    {
      if (*(a3 + 24) == 1)
      {
        v7 = (*(*a1 + 64))(a1);
        if (v7)
        {
          v8 = 0;
          v9 = 3368;
          do
          {
            v10 = *(a1 + 624);
            MEMORY[0x1EEE9AC00](v7);
            v12 = (&v35 - v11);
            v13 = *(a3 + 16);
            DspLib::multiply(*(*a3 + 8 * v8), v13, &v35 - v11, *(a1 + 604));
            v14 = v10 + v9;
            v15 = DspLib::DCTracker::process(*(v14 + 1168), v12, v13);
            *(v14 - 3104) = v15;
            *v14 = v15;
            ++v8;
            v7 = (*(*a1 + 64))(a1);
            v9 += 4608;
          }

          while (v8 < v7);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 136315394;
        *&v40[4] = "DspLibLoudspeakerController.cpp";
        *&v40[12] = 1024;
        *&v40[14] = 2722;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d LoudspeakerController battery tracking is enabled, but no telemetry is present", v40, 0x12u);
      }
    }

    *v40 = *a2;
    *&v40[16] = *(a2 + 16);
    DspLib::LoudspeakerController::Algorithm::inputCompensation(a1, v40);
    *v40 = *a2;
    *&v40[8] = *(a2 + 8);
    v16 = DspLib::LoudspeakerController::Algorithm::inputAnalysis(a1, v40);
    v17 = v16;
    if (*(a1 + 672))
    {
      DspLib::Log::write((a1 + 672), v16);
    }

    DspLib::LoudspeakerController::Algorithm::findTargets(a1, v17, v39);
    DspLib::LoudspeakerController::Algorithm::findTargetActivity(v39, a1, v40);
    v18 = (*(*a1 + 64))(a1);
    v19 = MEMORY[0x1EEE9AC00](v18);
    v21 = &v35 - v20;
    v22 = (*(*a1 + 64))(a1, v19);
    v23 = v36;
    if (v22)
    {
      v24 = 0;
      v25 = v41;
      do
      {
        v26 = *v25;
        v25 += 12;
        v21[v24++] = v26;
      }

      while (v24 < (*(*a1 + 64))(a1));
    }

    (*(*a1 + 64))(a1);
    DspLib::LoudspeakerController::Algorithm::filterbankAnalysis(a1, v23, v21);
    memset(v38, 0, sizeof(v38));
    DspLib::LoudspeakerController::Algorithm::calculateGains(a1, v23, v40, v38);
    *v37 = *a2;
    *&v37[16] = *(a2 + 16);
    DspLib::LoudspeakerController::Algorithm::filterbankSynthesis(a1, v38, v37);
    *v37 = *a2;
    *&v37[16] = *(a2 + 16);
    DspLib::LoudspeakerController::Algorithm::fastPeakLimiter(a1, v37);
    *v37 = *a2;
    *&v37[8] = *(a2 + 8);
    DspLib::LoudspeakerController::Algorithm::outputAnalysis(a1, v37);
    if (*(a1 + 545) == 1 && (*(*a1 + 64))(a1))
    {
      v28 = 0;
      v29 = 3944;
      v30 = &qword_1ECDAA4F0;
      do
      {
        v31 = (*(a1 + 624) + v29);
        *&v27 = *(v31 - 391);
        v36 = v27;
        *&v27 = *(v31 - 3);
        v35 = v27;
        v32 = *v31;
        v33 = DspLib::currentTimeStamp();
        *&v34 = v36;
        *(&v34 + 1) = v35;
        *(v30 - 3) = v34;
        *(v30 - 1) = v32;
        *v30 = v33;
        v30 += 4;
        ++v28;
        v29 += 4608;
      }

      while (v28 < (*(*a1 + 64))(a1));
    }
  }
}

float DspLib::DCTracker::process(uint64_t a1, const float *a2, vDSP_Length __N)
{
  v11 = a1;
  if (__N)
  {
    v4 = __N;
    v5 = a2;
    v6 = *(a1 + 48);
    v7 = *(a1 + 8) - *a1;
    if (v6 + __N < v7 >> 2)
    {
LABEL_5:
      DspLib::DCTracker::process(std::span<float const,18446744073709551615ul>)::{lambda(std::span<float const,18446744073709551615ul>)#1}::operator()(&v11, v5, v4);
      return *(a1 + 32) * *(a1 + 36);
    }

    v8 = (v7 >> 2) - v6;
    v9 = *(a1 + 40);
    *(a1 + 32) = v9 + DspLib::sum(a2, v8);
    DspLib::CircularDelay::write(a1, v5, v8);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (v4 != v8)
    {
      v5 = &v5[v4 - (v4 - v8)];
      v4 -= v8;
      goto LABEL_5;
    }
  }

  return *(a1 + 32) * *(a1 + 36);
}

float DspLib::LoudspeakerController::Algorithm::channelStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  *a3 = v6;
  v7 = *(a2 + 424);
  *(a3 + 4) = v7;
  if (!v7)
  {
    LODWORD(v9) = 0;
LABEL_7:
    v10 = a3 + 20 * v9 + 8;
    v11 = v9 + 1;
    do
    {
      v46 = 0;
      v45 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(&v45, v10);
      v10 += 20;
      v12 = v11++ == 4;
    }

    while (!v12);
    goto LABEL_10;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  do
  {
    DspLib::Biquad::Filter::section((a2 + 368), v8, 0, &v45);
    DspLib::Biquad::write(&v45, a3 + 8 + 20 * v8);
    v9 = (v9 + 1);
    v8 = v9;
  }

  while (v7 > v9);
  if (v9 <= 3)
  {
    goto LABEL_7;
  }

LABEL_10:
  v13 = *(a1 + 16);
  *(a3 + 88) = v13;
  v14 = *(a2 + 576);
  *(a3 + 92) = v14;
  if (!v14)
  {
    LODWORD(v16) = 0;
LABEL_16:
    v17 = a3 + 20 * v16 + 96;
    v18 = v16 + 1;
    do
    {
      v46 = 0;
      v45 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(&v45, v17);
      v17 += 20;
      v12 = v18++ == 4;
    }

    while (!v12);
    goto LABEL_19;
  }

  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    DspLib::Biquad::Filter::section((a2 + 520), v15, 0, &v45);
    DspLib::Biquad::write(&v45, a3 + 96 + 20 * v15);
    v16 = (v16 + 1);
    v15 = v16;
  }

  while (v14 > v16);
  if (v16 <= 3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v19 = *(a1 + 16);
  *(a3 + 176) = v19;
  v20 = *(a2 + 104);
  *(a3 + 180) = v20;
  if (!v20)
  {
    LODWORD(v22) = 0;
LABEL_25:
    v23 = a3 + 20 * v22 + 184;
    v24 = v22 + 1;
    do
    {
      v46 = 0;
      v45 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(&v45, v23);
      v23 += 20;
      v12 = v24++ == 4;
    }

    while (!v12);
    goto LABEL_28;
  }

  v21 = 0;
  LODWORD(v22) = 0;
  do
  {
    DspLib::Biquad::Filter::section((a2 + 48), v21, 0, &v45);
    DspLib::Biquad::write(&v45, a3 + 184 + 20 * v21);
    v22 = (v22 + 1);
    v21 = v22;
  }

  while (v20 > v22);
  if (v22 <= 3)
  {
    goto LABEL_25;
  }

LABEL_28:
  *(a3 + 264) = *(a1 + 472);
  v25 = *(a2 + 800);
  *(a3 + 268) = v25;
  if (!v25)
  {
    LODWORD(v27) = 0;
LABEL_34:
    v28 = a3 + 20 * v27 + 272;
    v29 = v27 + 1;
    do
    {
      v46 = 0;
      v45 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(&v45, v28);
      v28 += 20;
      v12 = v29++ == 4;
    }

    while (!v12);
    goto LABEL_37;
  }

  v26 = 0;
  LODWORD(v27) = 0;
  do
  {
    DspLib::Biquad::Filter::section((a2 + 744), v26, 0, &v45);
    DspLib::Biquad::write(&v45, a3 + 272 + 20 * v26);
    v27 = (v27 + 1);
    v26 = v27;
  }

  while (v25 > v27);
  if (v27 <= 3)
  {
    goto LABEL_34;
  }

LABEL_37:
  v30 = *(a2 + 728);
  *(a3 + 352) = v30;
  if (!v30)
  {
    LODWORD(v32) = 0;
LABEL_43:
    v33 = a3 + 20 * v32 + 356;
    v34 = v32 + 1;
    do
    {
      v46 = 0;
      v45 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(&v45, v33);
      v33 += 20;
      v12 = v34++ == 4;
    }

    while (!v12);
    goto LABEL_46;
  }

  v31 = 0;
  LODWORD(v32) = 0;
  do
  {
    DspLib::Biquad::Filter::section((a2 + 672), v31, 0, &v45);
    DspLib::Biquad::write(&v45, a3 + 356 + 20 * v31);
    v32 = (v32 + 1);
    v31 = v32;
  }

  while (v30 > v32);
  if (v32 <= 3)
  {
    goto LABEL_43;
  }

LABEL_46:
  v35 = (a2 + 4396);
  v36 = (a3 + 468);
  v37 = 4;
  do
  {
    *(v36 - 8) = *(v35 - 8);
    *(v36 - 4) = *(v35 - 4);
    v38 = *v35++;
    *v36++ = v38;
    --v37;
  }

  while (v37);
  *(a3 + 484) = *(a2 + 4332);
  *(a3 + 488) = *(a2 + 4336);
  *(a3 + 492) = *(a2 + 4340);
  *(a3 + 496) = *(a2 + 4264);
  *(a3 + 500) = *(a2 + 4268);
  *(a3 + 504) = *(a2 + 4272);
  *(a3 + 908) = *(a2 + 4276);
  *(a3 + 912) = *(a2 + 4280);
  DspLib::LoudspeakerController::MaskingEstimator::status(a2 + 1312, (a3 + 508));
  *(a3 + 916) = *(a2 + 4320);
  *(a3 + 920) = *(a2 + 4288);
  *(a3 + 924) = *(a2 + 4324);
  *(a3 + 928) = *(a2 + 4244);
  *(a3 + 932) = *(a2 + 4252);
  *(a2 + 4252) = 1065353216;
  *(a3 + 936) = *(a2 + 4256);
  *(a3 + 940) = *(a2 + 4548);
  *(a2 + 4548) = 1065353216;
  DspLib::copy(*(a2 + 2864), (*(a2 + 2872) - *(a2 + 2864)) >> 2, (a3 + 1040));
  DspLib::multiply(a3 + 1040, 5, *(a2 + 3136));
  DspLib::Biquad::Filter::section((a2 + 4424), 0, 0, &v45);
  result = DspLib::Biquad::write(&v45, a3 + 1060);
  if (*(a2 + 4536))
  {
    result = *(a2 + 3368);
    *(a3 + 1080) = result;
  }

  if (*(a2 + 4216) == 1)
  {
    v40 = *(a2 + 1016);
    *(a3 + 956) = v40;
    if (v40)
    {
      v41 = 0;
      LODWORD(v42) = 0;
      do
      {
        DspLib::Biquad::Filter::section((a2 + 960), v41, 0, &v45);
        DspLib::Biquad::write(&v45, a3 + 960 + 20 * v41);
        v42 = (v42 + 1);
        v41 = v42;
      }

      while (v40 > v42);
      if (v42 > 3)
      {
        goto LABEL_60;
      }
    }

    else
    {
      LODWORD(v42) = 0;
    }

    v43 = a3 + 20 * v42 + 960;
    v44 = v42 + 1;
    do
    {
      v46 = 0;
      v45 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(&v45, v43);
      v43 += 20;
      v12 = v44++ == 4;
    }

    while (!v12);
LABEL_60:
    *(a3 + 944) = *(a2 + 4584);
    *(a3 + 948) = *(a2 + 4592);
    result = *(a2 + 4588);
    *(a3 + 952) = result;
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::status(uint64_t a1, float32x2_t *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  for (i = 0; i != 16; i += 4)
  {
    v6 = (a2 + i + 16);
    v6[-2].i32[0] = *(a1 + i + 504);
    v6->i32[0] = *(a1 + i + 648);
    v6[2].i32[0] = *(a1 + i + 520);
  }

  v7 = *(a1 + 476);
  a2[6].i32[0] = *(a1 + 536);
  a2[6].f32[1] = v7;
  if (v7)
  {
    DspLib::copy((a1 + 456), 4, &a2[7]);
  }

  else
  {
    DspLib::clear(&a2[7], 4uLL);
  }

  a2[10].i32[1] = *(a1 + 480);
  v8 = *(a1 + 16);
  v9.i64[0] = *(a1 + 352);
  v9.i64[1] = *(a1 + 376);
  a2[9] = vcvt_f32_f64(vmulq_f64(vdivq_f64(vcvtq_f64_u64(v9), vdupq_lane_s64(*&v8, 0)), vdupq_n_s64(0x408F400000000000uLL)));
  *&v8 = *(a1 + 392) / v8 * 1000.0;
  a2[10].i32[0] = LODWORD(v8);
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v11 = 0;
    v12 = 0;
    v13 = &a2[11];
    do
    {
      v14 = DspLib::LoudspeakerController::Algorithm::channelStatus(a1, *(a1 + 624) + v11, v13);
      ++v12;
      result = (*(*a1 + 64))(a1, v14);
      v11 += 4608;
      v13 += 1084;
    }

    while (v12 < result);
  }

  return result;
}

double DspLib::LoudspeakerController::Algorithm::resetNVM(DspLib::LoudspeakerController::Algorithm *this)
{
  result = 0.0;
  xmmword_1ECDAA5B8 = 0u;
  unk_1ECDAA5C8 = 0u;
  xmmword_1ECDAA598 = 0u;
  unk_1ECDAA5A8 = 0u;
  xmmword_1ECDAA578 = 0u;
  unk_1ECDAA588 = 0u;
  xmmword_1ECDAA558 = 0u;
  unk_1ECDAA568 = 0u;
  xmmword_1ECDAA538 = 0u;
  unk_1ECDAA548 = 0u;
  xmmword_1ECDAA518 = 0u;
  unk_1ECDAA528 = 0u;
  xmmword_1ECDAA4F8 = 0u;
  unk_1ECDAA508 = 0u;
  DspLib::LoudspeakerController::gThermalRecord = 0u;
  *algn_1ECDAA4E8 = 0u;
  return result;
}

void DspLib::LoudspeakerController::Algorithm::~Algorithm(DspLib::Log::Instance **this)
{
  DspLib::LoudspeakerController::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591A3E0;
  DspLib::Log::~Log(this + 86);
  DspLib::Log::~Log(this + 85);
  DspLib::Log::~Log(this + 84);
  DspLib::Log::~Log(this + 83);
  v4 = (this + 78);
  std::vector<DspLib::LoudspeakerController::Algorithm::ChannelModule>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = this[70];
  if (v2)
  {
    this[71] = v2;
    operator delete(v2);
  }

  *this = &unk_1F591AE18;
  v3 = this[36];
  if (v3)
  {
    this[37] = v3;
    operator delete(v3);
  }

  v4 = (this + 33);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void std::vector<DspLib::LoudspeakerController::Algorithm::ChannelModule>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        DspLib::LoudspeakerController::Algorithm::ChannelModule::~ChannelModule((v4 - 4608));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DspLib::LoudspeakerController::Algorithm::ChannelModule::~ChannelModule(DspLib::LoudspeakerController::Algorithm::ChannelModule *this)
{
  v2 = *(this + 569);
  if (v2)
  {
    *(this + 570) = v2;
    operator delete(v2);
  }

  v3 = *(this + 567);
  *(this + 567) = 0;
  if (v3)
  {
    std::default_delete<DspLib::DCTracker>::operator()[abi:ne200100](this + 4536, v3);
  }

  v4 = *(this + 563);
  if (v4)
  {
    *(this + 564) = v4;
    operator delete(v4);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 4472));
  v5 = *(this + 556);
  if (v5)
  {
    *(this + 557) = v5;
    operator delete(v5);
  }

  DspLib::LoudspeakerController::SpeakerSystemModel::~SpeakerSystemModel((this + 3312));
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3272));
  v6 = *(this + 406);
  if (v6)
  {
    *(this + 407) = v6;
    operator delete(v6);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3200));
  v7 = *(this + 397);
  if (v7)
  {
    *(this + 398) = v7;
    operator delete(v7);
  }

  DspLib::GainSmoother::~GainSmoother((this + 2888));
  DspLib::BandCombiner::~BandCombiner((this + 2616));
  for (i = 0; i != -120; i -= 24)
  {
    v9 = *(this + i + 2504);
    if (v9)
    {
      *(this + i + 2512) = v9;
      operator delete(v9);
    }
  }

  v10 = *(this + 300);
  *(this + 300) = 0;
  if (v10)
  {
    v11 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v10);
    MEMORY[0x1E12BD160](v11, 0x1020C405730B0C9);
  }

  std::unique_ptr<DspLib::FFT::Transform<(DspLib::FFT::Direction)1>>::reset[abi:ne200100](this + 299, 0);
  v12 = *(this + 295);
  if (v12)
  {
    *(this + 296) = v12;
    operator delete(v12);
  }

  v30 = (this + 2336);
  std::vector<DspLib::ComplexVector>::__destroy_vector::operator()[abi:ne200100](&v30);
  v13 = *(this + 289);
  if (v13)
  {
    *(this + 290) = v13;
    operator delete(v13);
  }

  for (j = 0; j != -192; j -= 48)
  {
    v15 = *(this + j + 2264);
    if (v15)
    {
      *(this + j + 2272) = v15;
      operator delete(v15);
    }
  }

  v16 = *(this + 259);
  if (v16)
  {
    *(this + 260) = v16;
    operator delete(v16);
  }

  v17 = *(this + 253);
  if (v17)
  {
    *(this + 254) = v17;
    operator delete(v17);
  }

  v18 = *(this + 247);
  if (v18)
  {
    *(this + 248) = v18;
    operator delete(v18);
  }

  v19 = *(this + 228);
  if (v19)
  {
    *(this + 229) = v19;
    operator delete(v19);
  }

  v20 = *(this + 225);
  if (v20)
  {
    *(this + 226) = v20;
    operator delete(v20);
  }

  v21 = *(this + 222);
  if (v21)
  {
    *(this + 223) = v21;
    operator delete(v21);
  }

  std::unique_ptr<DspLib::FFT::Transform<(DspLib::FFT::Direction)1>>::reset[abi:ne200100](this + 170, 0);
  v22 = *(this + 166);
  if (v22)
  {
    *(this + 167) = v22;
    operator delete(v22);
  }

  v30 = (this + 1288);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
  v23 = *(this + 158);
  if (v23)
  {
    *(this + 159) = v23;
    operator delete(v23);
  }

  v24 = *(this + 155);
  if (v24)
  {
    *(this + 156) = v24;
    operator delete(v24);
  }

  v25 = *(this + 152);
  if (v25)
  {
    *(this + 153) = v25;
    operator delete(v25);
  }

  v26 = *(this + 149);
  if (v26)
  {
    *(this + 150) = v26;
    operator delete(v26);
  }

  DspLib::LoudspeakerController::SpeakerSystemModel::~SpeakerSystemModel((this + 208));
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 168));
  v27 = *(this + 18);
  if (v27)
  {
    *(this + 19) = v27;
    operator delete(v27);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 96));
  v28 = *(this + 9);
  if (v28)
  {
    *(this + 10) = v28;
    operator delete(v28);
  }

  v29 = *this;
  if (*this)
  {
    *(this + 1) = v29;
    operator delete(v29);
  }
}

void DspLib::LoudspeakerController::ElectricalModel::~ElectricalModel(DspLib::LoudspeakerController::ElectricalModel *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 128));
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 56));
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void DspLib::LoudspeakerController::SpeakerSystemModel::~SpeakerSystemModel(DspLib::LoudspeakerController::SpeakerSystemModel *this)
{
  if (*(this + 904) == 1)
  {
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 872));
    v2 = *(this + 106);
    if (v2)
    {
      *(this + 107) = v2;
      operator delete(v2);
    }

    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 800));
    v3 = *(this + 97);
    if (v3)
    {
      *(this + 98) = v3;
      operator delete(v3);
    }
  }

  v4 = *(this + 90);
  if (v4)
  {
    *(this + 91) = v4;
    operator delete(v4);
  }

  v5 = *(this + 84);
  if (v5)
  {
    *(this + 85) = v5;
    operator delete(v5);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 584));
  v6 = *(this + 70);
  if (v6)
  {
    *(this + 71) = v6;
    operator delete(v6);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 512));
  v7 = *(this + 61);
  if (v7)
  {
    *(this + 62) = v7;
    operator delete(v7);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 432));
  v8 = *(this + 51);
  if (v8)
  {
    *(this + 52) = v8;
    operator delete(v8);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 360));
  v9 = *(this + 42);
  if (v9)
  {
    *(this + 43) = v9;
    operator delete(v9);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 280));
  v10 = *(this + 32);
  if (v10)
  {
    *(this + 33) = v10;
    operator delete(v10);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 208));
  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }
}

uint64_t std::__optional_storage_base<DspLib::LoudspeakerController::BiquadModel,false>::~__optional_storage_base(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((a1 + 120));
    v2 = *(a1 + 96);
    if (v2)
    {
      *(a1 + 104) = v2;
      operator delete(v2);
    }

    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((a1 + 48));
    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void DspLib::LoudspeakerManager::ThermalModel::~ThermalModel(DspLib::LoudspeakerManager::ThermalModel *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 120));
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

void DspLib::GainSmoother::~GainSmoother(DspLib::GainSmoother *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    *(this + 3) = v8;
    operator delete(v8);
  }
}

void DspLib::BandCombiner::~BandCombiner(DspLib::BandCombiner *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v10 = (this + 168);
  std::vector<DspLib::GainState>::__destroy_vector::operator()[abi:ne200100](&v10);
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

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void std::vector<DspLib::GainState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DspLib::GainState>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<DspLib::GainState>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void DspLib::LinearPhaseFilterbank::~LinearPhaseFilterbank(DspLib::LinearPhaseFilterbank *this)
{
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    v3 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v2);
    MEMORY[0x1E12BD160](v3, 0x1020C405730B0C9);
  }

  std::unique_ptr<DspLib::FFT::Transform<(DspLib::FFT::Direction)1>>::reset[abi:ne200100](this + 13, 0);
  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v6 = (this + 48);
  std::vector<DspLib::ComplexVector>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void DspLib::LoudspeakerController::MaskingEstimator::~MaskingEstimator(DspLib::LoudspeakerController::MaskingEstimator *this)
{
  v2 = *(this + 64);
  if (v2)
  {
    *(this + 65) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    *(this + 62) = v3;
    operator delete(v3);
  }

  v4 = *(this + 58);
  if (v4)
  {
    *(this + 59) = v4;
    operator delete(v4);
  }

  std::unique_ptr<DspLib::FFT::Transform<(DspLib::FFT::Direction)1>>::reset[abi:ne200100](this + 6, 0);
  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void std::vector<DspLib::LoudspeakerController::Algorithm::SpeakerInfo>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<DspLib::LoudspeakerController::Algorithm::SpeakerInfo>::allocate_at_least[abi:ne200100](a1, v9);
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

void std::allocator<DspLib::LoudspeakerController::Algorithm::SpeakerInfo>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<DspLib::LoudspeakerController::Algorithm::ChannelModule>::__append(void *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 9) >= a2)
  {
    if (a2)
    {
      v10 = &v5[4608 * a2];
      v11 = 4608 * a2;
      do
      {
        bzero(v5, 0x1200uLL);
        result = DspLib::LoudspeakerController::Algorithm::ChannelModule::ChannelModule(v5);
        v5 += 4608;
        v11 -= 4608;
      }

      while (v11);
      v5 = v10;
    }

    *(v3 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * (&v5[-*result] >> 9);
    if (v6 + a2 > 0xE38E38E38E38ELL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 9);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x71C71C71C71C7)
    {
      v9 = 0xE38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    v23 = result;
    if (v9)
    {
      std::allocator<DspLib::LoudspeakerController::Algorithm::ChannelModule>::allocate_at_least[abi:ne200100](result, v9);
    }

    v12 = 4608 * v6;
    v20 = 0;
    v21 = v12;
    *(&v22 + 1) = 0;
    v13 = v12 + 4608 * a2;
    v14 = 4608 * a2;
    v15 = v12;
    do
    {
      bzero(v15, 0x1200uLL);
      DspLib::LoudspeakerController::Algorithm::ChannelModule::ChannelModule(v15);
      v15 += 4608;
      v14 -= 4608;
    }

    while (v14);
    *&v22 = v13;
    v16 = *(v3 + 8);
    v17 = v12 + *v3 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::LoudspeakerController::Algorithm::ChannelModule>,DspLib::LoudspeakerController::Algorithm::ChannelModule*>(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<DspLib::LoudspeakerController::Algorithm::ChannelModule>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1DDBE59B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::LoudspeakerController::Algorithm::ChannelModule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerController::Algorithm::ChannelModule::ChannelModule(uint64_t this)
{
  v1 = 0;
  *(this + 16) = 0;
  *this = 0u;
  *(this + 32) = 1065353216;
  *(this + 40) = 1091567616;
  *(this + 48) = 0;
  *(this + 128) = 0u;
  *(this + 144) = 0u;
  *(this + 160) = 0u;
  *(this + 176) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  *(this + 292) = 0x3F80000000000000;
  *(this + 192) = -1;
  *(this + 208) = 0;
  *(this + 224) = 0;
  *(this + 232) = 0;
  __asm { FMOV            V2.4S, #1.0 }

  *(this + 240) = _Q2;
  *(this + 256) = xmmword_1DE097D00;
  *(this + 272) = 0x3F80000000000000;
  *(this + 280) = 0;
  *(this + 284) = 0;
  *(this + 300) = 0;
  *(this + 304) = 0;
  *(this + 312) = 0x3F80000000000000;
  *(this + 320) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 480) = 0u;
  *(this + 496) = 0u;
  *(this + 448) = 0u;
  *(this + 464) = 0u;
  *(this + 440) = 0;
  *(this + 324) = 0u;
  *(this + 340) = 0u;
  *(this + 353) = 0u;
  *(this + 512) = -1;
  *(this + 520) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 592) = 0;
  *(this + 560) = 0u;
  *(this + 576) = 0u;
  *(this + 528) = 0u;
  *(this + 544) = 0u;
  *(this + 664) = -1;
  *(this + 672) = 0;
  *(this + 744) = 0;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 816) = 0;
  *(this + 784) = 0u;
  *(this + 800) = 0u;
  *(this + 752) = 0u;
  *(this + 768) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 824) = _D0;
  *(this + 832) = _D0;
  *(this + 840) = xmmword_1DE096640;
  *(this + 856) = 1112014848;
  *(this + 864) = 1;
  *(this + 1336) = 0u;
  *(this + 1352) = 0u;
  *(this + 1304) = 0u;
  *(this + 1320) = 0u;
  *(this + 1272) = 0u;
  *(this + 1288) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 1192) = 0u;
  *(this + 1864) = 0u;
  *(this + 872) = 1065353216;
  *(this + 880) = 0u;
  *(this + 896) = 0u;
  *(this + 912) = 1;
  *(this + 920) = 1065353216;
  *(this + 1112) = 0;
  *(this + 1120) = 0;
  *(this + 960) = 0;
  *(this + 928) = 0u;
  *(this + 944) = 0u;
  *(this + 1840) = 0u;
  *(this + 1824) = 0u;
  *(this + 1808) = 0u;
  *(this + 1792) = 0u;
  *(this + 1776) = 0u;
  *(this + 1184) = 0;
  *(this + 1168) = 0u;
  *(this + 1152) = 0u;
  *(this + 1136) = 0u;
  *(this + 1368) = 0;
  *(this + 1856) = 1065353216;
  *(this + 1888) = 0;
  *(this + 1880) = 0;
  *(this + 1896) = 1;
  *(this + 1904) = xmmword_1DE097CE0;
  *(this + 1920) = _D0;
  *(this + 1928) = 1065353216;
  *(this + 1932) = 0u;
  *(this + 1952) = 0u;
  *(this + 1968) = 1;
  *(this + 2008) = 0;
  *(this + 1976) = 0u;
  *(this + 1992) = 0u;
  *(this + 2016) = 1;
  *(this + 2056) = 0;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  *(this + 2064) = 1;
  *(this + 2088) = 0;
  *(this + 2072) = 0u;
  do
  {
    v8 = this + v1;
    *(v8 + 2096) = 0uLL;
    *(v8 + 2112) = 1;
    *(v8 + 2120) = 0;
    *(v8 + 2128) = 0uLL;
    v1 += 48;
  }

  while (v1 != 192);
  *(this + 2840) = 0;
  *(this + 2824) = 0u;
  *(this + 2616) = 0u;
  *(this + 2640) = 0u;
  *(this + 2656) = 0u;
  *(this + 2672) = 0u;
  *(this + 2688) = 0u;
  *(this + 2704) = 0u;
  *(this + 2720) = 0u;
  *(this + 2736) = 0u;
  *(this + 2752) = 0u;
  *(this + 2768) = 0u;
  *(this + 2784) = 0u;
  *(this + 2800) = 0;
  *(this + 3040) = 0u;
  *(this + 3056) = 0;
  *(this + 3112) = 0;
  *(this + 3096) = 0u;
  *(this + 3016) = 0;
  *(this + 2984) = 0u;
  *(this + 3000) = 0u;
  *(this + 2952) = 0u;
  *(this + 2968) = 0u;
  *(this + 2920) = 0u;
  *(this + 2936) = 0u;
  *(this + 2904) = 0u;
  *(this + 2288) = 0u;
  *(this + 2304) = 0u;
  *(this + 2320) = 0u;
  *(this + 2336) = 0u;
  *(this + 2352) = 0u;
  *(this + 2368) = 0u;
  *(this + 2384) = 0u;
  *(this + 2400) = 0u;
  *(this + 2416) = 0u;
  *(this + 2432) = 0u;
  *(this + 2448) = 0u;
  *(this + 2464) = 0u;
  *(this + 2480) = 0u;
  *(this + 2496) = 0u;
  *(this + 2512) = 0u;
  *(this + 2880) = 0u;
  *(this + 2864) = 0u;
  *(this + 3144) = 1091567616;
  *(this + 3152) = 0;
  *(this + 3232) = 0u;
  *(this + 3248) = 0u;
  *(this + 3264) = 0u;
  *(this + 3280) = 0u;
  *(this + 3224) = 0;
  *(this + 3192) = 0u;
  *(this + 3208) = 0u;
  *(this + 3160) = 0u;
  *(this + 3176) = 0u;
  *(this + 3296) = -1;
  *(this + 3312) = 0;
  *(this + 3328) = 0u;
  *(this + 3344) = _Q2;
  *(this + 3360) = xmmword_1DE097D00;
  *(this + 3376) = 0x3F80000000000000;
  *(this + 3384) = 0;
  *(this + 3388) = 0;
  *(this + 3396) = 0x3F80000000000000;
  *(this + 3404) = 0;
  *(this + 3408) = 0;
  *(this + 3416) = 0x3F80000000000000;
  *(this + 3424) = 0;
  *(this + 3600) = 0u;
  *(this + 3584) = 0u;
  *(this + 3568) = 0u;
  *(this + 3552) = 0u;
  *(this + 3544) = 0;
  *(this + 3512) = 0u;
  *(this + 3528) = 0u;
  *(this + 3480) = 0u;
  *(this + 3496) = 0u;
  *(this + 3457) = 0u;
  *(this + 3428) = 0u;
  *(this + 3444) = 0u;
  *(this + 3616) = -1;
  *(this + 3624) = 0;
  *(this + 3736) = 0u;
  *(this + 3752) = 0u;
  *(this + 3704) = 0u;
  *(this + 3720) = 0u;
  *(this + 3696) = 0;
  *(this + 3680) = 0u;
  *(this + 3664) = 0u;
  *(this + 3648) = 0u;
  *(this + 3632) = 0u;
  *(this + 3768) = -1;
  *(this + 3776) = 0;
  *(this + 3848) = 0;
  *(this + 3816) = 0u;
  *(this + 3832) = 0u;
  *(this + 3784) = 0u;
  *(this + 3800) = 0u;
  *(this + 3920) = 0;
  *(this + 3904) = 0u;
  *(this + 3888) = 0u;
  *(this + 3872) = 0u;
  *(this + 3856) = 0u;
  *(this + 3928) = _D0;
  *(this + 3936) = _D0;
  *(this + 3944) = xmmword_1DE096640;
  *(this + 3960) = 1112014848;
  *(this + 3968) = 1;
  *(this + 3976) = 1065353216;
  *(this + 4000) = 0u;
  *(this + 3984) = 0u;
  *(this + 4016) = 1;
  *(this + 4024) = 1065353216;
  *(this + 4216) = 0;
  *(this + 4224) = 0;
  *(this + 4064) = 0;
  *(this + 4048) = 0u;
  *(this + 4032) = 0u;
  *(this + 4340) = 0;
  *(this + 4424) = 0;
  *(this + 4528) = 0u;
  *(this + 4512) = 0u;
  *(this + 4496) = 0u;
  *(this + 4480) = 0u;
  *(this + 4464) = 0u;
  *(this + 4448) = 0u;
  *(this + 4432) = 0u;
  *(this + 4544) = _D0;
  *(this + 4580) = 0u;
  *(this + 4552) = 0u;
  *(this + 4568) = 0u;
  return this;
}

void std::allocator<DspLib::LoudspeakerController::Algorithm::ChannelModule>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::LoudspeakerController::Algorithm::ChannelModule>,DspLib::LoudspeakerController::Algorithm::ChannelModule*>(uint64_t a1, DspLib::LoudspeakerController::Algorithm::ChannelModule *a2, DspLib::LoudspeakerController::Algorithm::ChannelModule *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = DspLib::LoudspeakerController::Algorithm::ChannelModule::ChannelModule(a4, v8);
      v8 += 4608;
      a4 = v9 + 4608;
      v7 -= 4608;
    }

    while (v8 != a3);
    for (; v6 != a3; v6 = (v6 + 4608))
    {
      DspLib::LoudspeakerController::Algorithm::ChannelModule::~ChannelModule(v6);
    }
  }
}

void sub_1DDBE5F00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = (v2 - v1);
    do
    {
      DspLib::LoudspeakerController::Algorithm::ChannelModule::~ChannelModule(v4);
      v4 = (v5 - 4608);
      v1 += 4608;
    }

    while (v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::LoudspeakerController::Algorithm::ChannelModule::ChannelModule(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  DspLib::LoudspeakerController::ElectricalModel::ElectricalModel(a1 + 40, a2 + 40);
  DspLib::LoudspeakerController::SpeakerSystemModel::SpeakerSystemModel(a1 + 208, a2 + 208);
  v4 = *(a2 + 1136);
  v5 = *(a2 + 1152);
  v6 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = v6;
  *(a1 + 1152) = v5;
  *(a1 + 1136) = v4;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1208) = *(a2 + 1208);
  *(a2 + 1208) = 0;
  *(a2 + 1192) = 0u;
  *(a1 + 1232) = 0;
  *(a1 + 1216) = 0u;
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a2 + 1232) = 0;
  *(a2 + 1216) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0;
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1256) = *(a2 + 1256);
  *(a2 + 1256) = 0;
  *(a2 + 1240) = 0u;
  *(a1 + 1280) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1264) = *(a2 + 1264);
  *(a1 + 1280) = *(a2 + 1280);
  *(a2 + 1280) = 0;
  *(a2 + 1264) = 0u;
  *(a1 + 1304) = 0;
  *(a1 + 1288) = 0u;
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1304) = 0;
  *(a2 + 1288) = 0u;
  *(a1 + 1312) = *(a2 + 1312);
  *(a1 + 1336) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1328) = *(a2 + 1328);
  *(a1 + 1344) = *(a2 + 1344);
  *(a2 + 1344) = 0;
  *(a2 + 1328) = 0u;
  *(a1 + 1352) = *(a2 + 1352);
  v7 = *(a2 + 1360);
  *(a2 + 1360) = 0;
  *(a1 + 1360) = v7;
  memcpy((a1 + 1368), (a2 + 1368), 0x198uLL);
  v8 = 0;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 0u;
  *(a1 + 1776) = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  *(a2 + 1776) = 0u;
  *(a2 + 1792) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1800) = 0u;
  *(a1 + 1800) = *(a2 + 1800);
  *(a1 + 1808) = *(a2 + 1808);
  *(a2 + 1800) = 0u;
  *(a2 + 1816) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1824) = 0u;
  *(a1 + 1824) = *(a2 + 1824);
  *(a1 + 1840) = *(a2 + 1840);
  *(a2 + 1840) = 0;
  *(a2 + 1824) = 0u;
  v10 = *(a2 + 1864);
  v9 = *(a2 + 1880);
  *(a1 + 1848) = *(a2 + 1848);
  *(a1 + 1864) = v10;
  *(a1 + 1880) = v9;
  v12 = *(a2 + 1896);
  v11 = *(a2 + 1912);
  v13 = *(a2 + 1928);
  *(a1 + 1944) = *(a2 + 1944);
  *(a1 + 1912) = v11;
  *(a1 + 1928) = v13;
  *(a1 + 1896) = v12;
  v14 = *(a2 + 1952);
  *(a1 + 1968) = *(a2 + 1968);
  *(a1 + 1952) = v14;
  *(a1 + 1976) = 0;
  *(a1 + 1984) = 0u;
  *(a1 + 1976) = *(a2 + 1976);
  *(a1 + 1992) = *(a2 + 1992);
  *(a2 + 1976) = 0u;
  *(a2 + 1992) = 0;
  v15 = *(a2 + 2016);
  *(a1 + 2000) = *(a2 + 2000);
  *(a1 + 2016) = v15;
  *(a1 + 2032) = 0u;
  *(a1 + 2024) = 0;
  *(a1 + 2024) = *(a2 + 2024);
  *(a1 + 2040) = *(a2 + 2040);
  *(a2 + 2024) = 0u;
  *(a2 + 2040) = 0;
  v16 = *(a2 + 2064);
  *(a1 + 2048) = *(a2 + 2048);
  *(a1 + 2064) = v16;
  *(a1 + 2080) = 0u;
  *(a1 + 2072) = 0;
  *(a1 + 2072) = *(a2 + 2072);
  *(a1 + 2088) = *(a2 + 2088);
  *(a2 + 2072) = 0u;
  *(a2 + 2088) = 0;
  do
  {
    v17 = a1 + v8;
    v18 = *(a2 + v8 + 2096);
    *(v17 + 2112) = *(a2 + v8 + 2112);
    *(v17 + 2096) = v18;
    v19 = (a2 + v8 + 2120);
    *(v17 + 2120) = 0;
    *(v17 + 2128) = 0uLL;
    *(a1 + v8 + 2120) = *v19;
    *(v17 + 2136) = *(a2 + v8 + 2136);
    *(a2 + v8 + 2136) = 0;
    *v19 = 0uLL;
    v8 += 48;
  }

  while (v8 != 192);
  v20 = 0;
  v21 = *(a2 + 2288);
  *(a1 + 2304) = *(a2 + 2304);
  *(a1 + 2288) = v21;
  *(a1 + 2312) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2312) = *(a2 + 2312);
  *(a1 + 2320) = *(a2 + 2320);
  *(a2 + 2328) = 0;
  *(a2 + 2312) = 0u;
  *(a1 + 2352) = 0;
  *(a1 + 2336) = 0u;
  *(a1 + 2336) = *(a2 + 2336);
  *(a1 + 2352) = *(a2 + 2352);
  *(a2 + 2352) = 0;
  *(a2 + 2336) = 0u;
  *(a1 + 2376) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2360) = *(a2 + 2360);
  *(a1 + 2368) = *(a2 + 2368);
  *(a2 + 2376) = 0;
  *(a2 + 2360) = 0u;
  *(a1 + 2384) = *(a2 + 2384);
  v22 = *(a2 + 2392);
  *(a2 + 2392) = 0u;
  *(a1 + 2392) = v22;
  do
  {
    v23 = a1 + v20;
    v24 = (a1 + v20 + 2408);
    v25 = (a2 + v20 + 2408);
    *(v23 + 2424) = 0;
    *v24 = 0uLL;
    *v24 = *v25;
    *(v23 + 2424) = *(a2 + v20 + 2424);
    *(a2 + v20 + 2424) = 0;
    *v25 = 0uLL;
    v20 += 24;
  }

  while (v20 != 120);
  v26 = *(a2 + 2528);
  *(a1 + 2544) = *(a2 + 2544);
  *(a1 + 2528) = v26;
  v27 = *(a2 + 2560);
  v28 = *(a2 + 2576);
  v29 = *(a2 + 2592);
  *(a1 + 2608) = *(a2 + 2608);
  *(a1 + 2592) = v29;
  *(a1 + 2576) = v28;
  *(a1 + 2560) = v27;
  v30 = *(a2 + 2616);
  *(a1 + 2632) = *(a2 + 2632);
  *(a1 + 2616) = v30;
  *(a1 + 2640) = 0;
  *(a1 + 2648) = 0u;
  *(a1 + 2640) = *(a2 + 2640);
  *(a1 + 2656) = *(a2 + 2656);
  *(a2 + 2656) = 0;
  *(a2 + 2640) = 0u;
  *(a1 + 2680) = 0;
  *(a1 + 2664) = 0u;
  *(a1 + 2664) = *(a2 + 2664);
  *(a1 + 2672) = *(a2 + 2672);
  *(a2 + 2680) = 0;
  *(a2 + 2664) = 0u;
  *(a1 + 2704) = 0;
  *(a1 + 2688) = 0u;
  *(a1 + 2688) = *(a2 + 2688);
  *(a1 + 2704) = *(a2 + 2704);
  *(a2 + 2704) = 0;
  *(a2 + 2688) = 0u;
  *(a1 + 2728) = 0;
  *(a1 + 2712) = 0u;
  *(a1 + 2712) = *(a2 + 2712);
  *(a1 + 2720) = *(a2 + 2720);
  *(a2 + 2728) = 0;
  *(a2 + 2712) = 0u;
  *(a1 + 2752) = 0;
  *(a1 + 2736) = 0u;
  *(a1 + 2736) = *(a2 + 2736);
  *(a1 + 2752) = *(a2 + 2752);
  *(a2 + 2752) = 0;
  *(a2 + 2736) = 0u;
  *(a1 + 2776) = 0;
  *(a1 + 2760) = 0u;
  *(a1 + 2760) = *(a2 + 2760);
  *(a1 + 2768) = *(a2 + 2768);
  *(a2 + 2776) = 0;
  *(a2 + 2760) = 0u;
  *(a1 + 2800) = 0;
  *(a1 + 2784) = 0u;
  *(a1 + 2784) = *(a2 + 2784);
  *(a1 + 2800) = *(a2 + 2800);
  *(a2 + 2800) = 0;
  *(a2 + 2784) = 0u;
  *(a1 + 2808) = *(a2 + 2808);
  *(a1 + 2832) = 0u;
  *(a1 + 2824) = 0;
  *(a1 + 2824) = *(a2 + 2824);
  *(a1 + 2832) = *(a2 + 2832);
  *(a2 + 2840) = 0;
  *(a2 + 2824) = 0u;
  *(a1 + 2848) = *(a2 + 2848);
  *(a1 + 2872) = 0u;
  *(a1 + 2864) = 0;
  *(a1 + 2864) = *(a2 + 2864);
  *(a1 + 2880) = *(a2 + 2880);
  *(a2 + 2880) = 0;
  *(a2 + 2864) = 0u;
  *(a1 + 2888) = *(a2 + 2888);
  *(a1 + 2912) = 0u;
  *(a1 + 2904) = 0;
  *(a1 + 2904) = *(a2 + 2904);
  *(a1 + 2912) = *(a2 + 2912);
  *(a2 + 2920) = 0;
  *(a2 + 2904) = 0u;
  *(a1 + 2944) = 0;
  *(a1 + 2928) = 0u;
  *(a1 + 2928) = *(a2 + 2928);
  *(a1 + 2944) = *(a2 + 2944);
  *(a2 + 2944) = 0;
  *(a2 + 2928) = 0u;
  *(a1 + 2968) = 0;
  *(a1 + 2952) = 0u;
  *(a1 + 2952) = *(a2 + 2952);
  *(a1 + 2960) = *(a2 + 2960);
  *(a2 + 2968) = 0;
  *(a2 + 2952) = 0u;
  *(a1 + 2992) = 0;
  *(a1 + 2976) = 0u;
  *(a1 + 2976) = *(a2 + 2976);
  *(a1 + 2992) = *(a2 + 2992);
  *(a2 + 2992) = 0;
  *(a2 + 2976) = 0u;
  *(a1 + 3016) = 0;
  *(a1 + 3000) = 0u;
  *(a1 + 3000) = *(a2 + 3000);
  *(a1 + 3008) = *(a2 + 3008);
  *(a2 + 3016) = 0;
  *(a2 + 3000) = 0u;
  *(a1 + 3024) = *(a2 + 3024);
  *(a1 + 3048) = 0u;
  *(a1 + 3040) = 0;
  *(a1 + 3040) = *(a2 + 3040);
  *(a1 + 3056) = *(a2 + 3056);
  *(a2 + 3056) = 0;
  *(a2 + 3040) = 0u;
  *(a1 + 3064) = *(a2 + 3064);
  *(a1 + 3080) = *(a2 + 3080);
  *(a1 + 3104) = 0u;
  *(a1 + 3096) = 0;
  *(a1 + 3096) = *(a2 + 3096);
  *(a1 + 3104) = *(a2 + 3104);
  *(a2 + 3112) = 0;
  *(a2 + 3096) = 0u;
  *(a1 + 3120) = *(a2 + 3120);
  *(a1 + 3136) = *(a2 + 3136);
  DspLib::LoudspeakerController::ElectricalModel::ElectricalModel(a1 + 3144, a2 + 3144);
  DspLib::LoudspeakerController::SpeakerSystemModel::SpeakerSystemModel(a1 + 3312, a2 + 3312);
  v31 = *(a2 + 4240);
  v32 = *(a2 + 4256);
  v33 = *(a2 + 4272);
  *(a1 + 4288) = *(a2 + 4288);
  *(a1 + 4272) = v33;
  *(a1 + 4256) = v32;
  *(a1 + 4240) = v31;
  v34 = *(a2 + 4304);
  v35 = *(a2 + 4320);
  v36 = *(a2 + 4336);
  *(a1 + 4352) = *(a2 + 4352);
  *(a1 + 4336) = v36;
  *(a1 + 4320) = v35;
  *(a1 + 4304) = v34;
  v37 = *(a2 + 4368);
  v38 = *(a2 + 4384);
  v39 = *(a2 + 4400);
  *(a1 + 4416) = *(a2 + 4416);
  *(a1 + 4400) = v39;
  *(a1 + 4384) = v38;
  *(a1 + 4368) = v37;
  *(a1 + 4424) = *(a2 + 4424);
  *(a1 + 4432) = *(a2 + 4432);
  *(a1 + 4448) = 0;
  *(a1 + 4456) = 0u;
  *(a1 + 4448) = *(a2 + 4448);
  *(a1 + 4464) = *(a2 + 4464);
  *(a2 + 4464) = 0;
  *(a2 + 4448) = 0u;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 4472), (a2 + 4472));
  *(a1 + 4496) = *(a2 + 4496);
  *(a1 + 4504) = 0;
  *(a1 + 4512) = 0u;
  *(a1 + 4504) = *(a2 + 4504);
  *(a1 + 4512) = *(a2 + 4512);
  *(a2 + 4504) = 0u;
  *(a2 + 4520) = 0;
  *(a1 + 4528) = *(a2 + 4528);
  v40 = *(a2 + 4536);
  *(a2 + 4536) = 0;
  *(a1 + 4536) = v40;
  *(a1 + 4544) = *(a2 + 4544);
  *(a1 + 4552) = 0;
  *(a1 + 4560) = 0u;
  *(a1 + 4552) = *(a2 + 4552);
  *(a1 + 4560) = *(a2 + 4560);
  *(a2 + 4552) = 0u;
  *(a2 + 4568) = 0;
  v41 = *(a2 + 4576);
  *(a1 + 4592) = *(a2 + 4592);
  *(a1 + 4576) = v41;
  return a1;
}

void sub_1DDBE678C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, void **a12)
{
  v22 = *v18;
  if (*v18)
  {
    *(v12 + 4456) = v22;
    operator delete(v22);
  }

  DspLib::LoudspeakerController::SpeakerSystemModel::~SpeakerSystemModel((v12 + 3312));
  DspLib::LoudspeakerController::ElectricalModel::~ElectricalModel((v12 + 3144));
  DspLib::GainSmoother::~GainSmoother(v14);
  DspLib::BandCombiner::~BandCombiner(v13);
  v23 = (v12 + 2512);
  v24 = -120;
  while (1)
  {
    v25 = *(v23 - 1);
    if (v25)
    {
      *v23 = v25;
      operator delete(v25);
    }

    v23 -= 3;
    v24 += 24;
    if (!v24)
    {
      DspLib::LinearPhaseFilterbank::~LinearPhaseFilterbank((v12 + 2288));
      v26 = (v12 + 2272);
      v27 = -192;
      while (1)
      {
        v28 = *(v26 - 1);
        if (v28)
        {
          *v26 = v28;
          operator delete(v28);
        }

        v26 -= 6;
        v27 += 48;
        if (!v27)
        {
          v29 = *v19;
          if (*v19)
          {
            *(v12 + 2080) = v29;
            operator delete(v29);
          }

          v30 = *v16;
          if (*v16)
          {
            *(v12 + 2032) = v30;
            operator delete(v30);
          }

          v31 = *v20;
          if (*v20)
          {
            *(v12 + 1984) = v31;
            operator delete(v31);
          }

          DspLib::LoudspeakerController::MaskingEstimator::~MaskingEstimator((v12 + 1312));
          a12 = a9;
          std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a12);
          v32 = *a10;
          if (*a10)
          {
            *(v12 + 1272) = v32;
            operator delete(v32);
          }

          v33 = *v17;
          if (*v17)
          {
            *(v12 + 1248) = v33;
            operator delete(v33);
          }

          v34 = *a11;
          if (*a11)
          {
            *(v12 + 1224) = v34;
            operator delete(v34);
          }

          v35 = *v15;
          if (*v15)
          {
            *(v12 + 1200) = v35;
            operator delete(v35);
          }

          DspLib::LoudspeakerController::SpeakerSystemModel::~SpeakerSystemModel((v12 + 208));
          DspLib::LoudspeakerController::ElectricalModel::~ElectricalModel((v12 + 40));
          v36 = *v12;
          if (*v12)
          {
            *(v12 + 8) = v36;
            operator delete(v36);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t DspLib::LoudspeakerController::ElectricalModel::ElectricalModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 16) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 56), (a2 + 56));
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  *(a1 + 104) = 0;
  *(a1 + 88) = v5;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 128), (a2 + 128));
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void sub_1DDBE69AC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  DspLib::Biquad::Filter::~Filter(v2);
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerController::SpeakerSystemModel::SpeakerSystemModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 160) = *(a2 + 160);
  v11 = *(a2 + 168);
  *(a1 + 184) = 0;
  v12 = (a1 + 184);
  *(a1 + 168) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 208), (a2 + 208));
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 280), (a2 + 280));
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 360), (a2 + 360));
  v12 += 28;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *v12 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 432), (a2 + 432));
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
  v12[10] = 0;
  v12 += 10;
  v12[1] = 0;
  v12[2] = 0;
  *v12 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a2 + 488) = 0;
  *(a2 + 496) = 0;
  *(a2 + 504) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 512), (a2 + 512));
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 576) = 0;
  *(a2 + 560) = 0u;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 584), (a2 + 584));
  v13 = *(a2 + 608);
  v14 = *(a2 + 624);
  *(a1 + 636) = *(a2 + 636);
  *(a1 + 608) = v13;
  *(a1 + 624) = v14;
  v15 = *(a2 + 656);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 656) = v15;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 688) = 0;
  *(a2 + 672) = 0u;
  *(a1 + 696) = *(a2 + 696);
  v16 = *(a2 + 704);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 704) = v16;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 736) = 0;
  *(a2 + 720) = 0u;
  *(a1 + 744) = *(a2 + 744);
  std::__optional_move_base<DspLib::LoudspeakerController::BiquadModel,false>::__optional_move_base[abi:ne200100](a1 + 752, a2 + 752);
  *(a1 + 912) = *(a2 + 912);
  return a1;
}

void sub_1DDBE6C90(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    v1[91] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[85] = v7;
    operator delete(v7);
  }

  DspLib::LoudspeakerManager::ThermalModel::~ThermalModel((v1 + 58));
  DspLib::LoudspeakerController::BiquadModel::~BiquadModel((v1 + 39));
  DspLib::LoudspeakerController::BiquadModel::~BiquadModel(v2);
  _Unwind_Resume(a1);
}

void sub_1DDBE6D44()
{
  v2 = *(v0 + 256);
  if (v2)
  {
    *(v0 + 264) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::Filter::~Filter(v1);
  JUMPOUT(0x1DDBE6D3CLL);
}

void sub_1DDBE6D64()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 192) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DDBE6D3CLL);
}

uint64_t std::__optional_move_base<DspLib::LoudspeakerController::BiquadModel,false>::__optional_move_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 8);
    *(a1 + 24) = 0;
    *(a1 + 8) = v4;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 48), (a2 + 48));
    *(a1 + 72) = *(a2 + 72);
    v5 = *(a2 + 80);
    *(a1 + 96) = 0;
    *(a1 + 80) = v5;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 120), (a2 + 120));
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = 1;
  }

  return a1;
}

void sub_1DDBE6E50(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 13) = v4;
    operator delete(v4);
  }

  DspLib::Biquad::Filter::~Filter(v1);
  std::__optional_storage_base<DspLib::LoudspeakerController::BiquadModel,false>::~__optional_storage_base(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<DspLib::LoudspeakerController::Algorithm::ChannelModule>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 4608;
    DspLib::LoudspeakerController::Algorithm::ChannelModule::~ChannelModule((i - 4608));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<DspLib::LinearDelay>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<DspLib::LinearDelay>::__append(a1, v6);
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

void std::vector<DspLib::LinearDelay>::__append(uint64_t a1, unint64_t a2)
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

    v19 = a1;
    if (v9)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v16 = 0;
    v17 = 24 * v6;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v18 = 24 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (24 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<std::vector<float>>::~__split_buffer(&v16);
  }
}

void sub_1DDBE7114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>::operator()[abi:ne200100](uint64_t a1)
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

void std::default_delete<DspLib::DCTracker>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
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

void DspLib::LoudspeakerController::computeGainsSquared(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = fminf(a5, 1.0);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v12 - v8;
  DspLib::multiply(v10, v11, v12 - v8, v7);
  DspLib::multiplyAccumulate(v9, a2, a3, v7 * v7);
  DspLib::add();
}

float sub_1DDBE73A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v34 = COERCE_FLOAT(DspLib::maxIndex(v30, v28));
  v36 = v32 + *(v24 + 4 * v35);
  if (v36 < v34)
  {
    v37 = v36 - *(v29 + 4 * v35);
    if (v37 <= 0.0)
    {
      return 0.0;
    }

    else
    {
      v38 = (sqrtf(fmaxf((v37 * (*(v27 + 4 * v35) * 4.0)) + (*(v26 + 4 * v35) * *(v26 + 4 * v35)), 0.0)) - *(v26 + 4 * v35)) / (*(v27 + 4 * v35) + *(v27 + 4 * v35));
      if (v38 <= v33)
      {
        v39 = v38;
      }

      else
      {
        v39 = v33;
      }

      if (v38 >= 0.0)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0.0;
      }

      if (v40 != v33)
      {
        v31 = v31 * v40;
        if (v31 != 0.0)
        {
          DspLib::multiply(v26, v25, v30, v31);
          DspLib::multiplyAccumulate(v30, v28, v27, v31 * v31);
          DspLib::add();
        }
      }
    }
  }

  return v31;
}

void DspLib::LoudspeakerController::computeGainsSigned(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, float a8@<S3>)
{
  v17[0] = a5;
  v17[1] = a1;
  v17[12] = *MEMORY[0x1E69E9840];
  v13 = a2 - a6;
  MEMORY[0x1EEE9AC00](a1);
  v15 = v17 - v14;
  DspLib::clear((v17 - v14), v13);
  v16 = 0;
  *a7 = *a4;
  *(a7 + 16) = *(a4 + 16);
  do
  {
    DspLib::multiplyAccumulate(v15, v13, *(*a3 + 8 * v16) + 4 * a6, *(a7 + 4 * v16) * a8);
    ++v16;
  }

  while (v16 != 5);
  DspLib::add();
}

void DspLib::LoudspeakerController::computeGainsAmplitude(uint64_t a1@<X0>, vDSP_Length a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v31 = *MEMORY[0x1E69E9840];
  *a5 = *a4;
  *(a5 + 16) = *(a4 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v13 = (&v24 - v12);
  DspLib::clear((&v24 - v12), v14);
  for (i = 0; i != 5; ++i)
  {
    DspLib::multiplyAccumulate(v13, a2, *(*a3 + 8 * i), *(a5 + 4 * i) * a6);
  }

  if (COERCE_FLOAT(DspLib::maxmgvi(v13, a2)) > a7)
  {
    v17 = v16;
    v24 = xmmword_1DE0980FC;
    v18 = 0;
    v29 = 0uLL;
    v30 = 0;
    v27 = *a5;
    v28 = *(a5 + 16);
    v19 = *a3;
    do
    {
      *(&v29 + v18) = *(&v27 + v18) * *(*(v19 + 8 * v18) + 4 * v16);
      ++v18;
    }

    while (v18 != 5);
    DspLib::multiply(&v29, 5, a6);
    if (v13[v17] < 0.0)
    {
      DspLib::negate();
    }

    DspLib::waterFillingSolution(&v29, 5uLL, a7);
    v21 = 0;
    v25 = v29;
    v26 = v30;
    v28 = 1065353216;
    v27 = v24;
    do
    {
      v22 = *(&v25 + v21);
      v23 = 1.0;
      if (v22 > v20)
      {
        v23 = fminf(v20 / v22, 1.0);
      }

      *(&v27 + v21) = v23;
      v21 += 4;
    }

    while (v21 != 20);
    if (DspLib::minv(&v27, 5uLL) < 1.0)
    {
      DspLib::multiply();
    }
  }
}

void DspLib::DCTracker::process(std::span<float const,18446744073709551615ul>)::{lambda(std::span<float const,18446744073709551615ul>)#1}::operator()(uint64_t *a1, float *a2, vDSP_Length __N)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = DspLib::sum(a2, __N);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v10 - v8);
  DspLib::CircularDelay::process(v5, a2, __N, v10 - v8, __N);
  *(v5 + 32) = *(v5 + 32) + (v6 - DspLib::sum(v9, __N));
  *(v5 + 40) = v6 + *(v5 + 40);
  *(v5 + 48) += __N;
}

__n128 DspLib::Biquad::SetupWrapper::SetupWrapper(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 DspLib::Biquad::SetupWrapper::operator=(DspLib::Biquad::SetupWrapper *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    DspLib::Biquad::SetupWrapper::~SetupWrapper(a1);
    v3->n128_u64[0] = 0;
    v3->n128_u64[1] = 0;
    v3[1].n128_u64[0] = 0;
    result = *a2;
    *v3 = *a2;
    v3[1].n128_u64[0] = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
  }

  return result;
}

void DspLib::Biquad::SetupWrapper::initialize(vDSP_Length *a1, const double *__coeffs, int a3, vDSP_Length __M, vDSP_Length a5)
{
  *a1 = a5;
  a1[1] = __M;
  v7 = a1[2];
  if (v7)
  {
    vDSP_biquadm_DestroySetup(v7);
    a1[2] = 0;
    __M = a1[1];
  }

  if (__M)
  {
    Setup = vDSP_biquadm_CreateSetup(__coeffs, __M, *a1);
    a1[2] = Setup;
    if (!Setup)
    {
      v9 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Biquad/dsp/DspLibBiquad.cpp");
      printf("DSP Sound assertion in %s at line %d\n", v9, 43);
      ++DspLibDebug::mAssertCounter;
      v10 = a1[2];
      if (v10)
      {
        vDSP_biquadm_DestroySetup(v10);
        a1[2] = 0;
      }

      *a1 = 0;
      a1[1] = 0;
    }
  }
}

void DspLib::Biquad::SetupWrapper::destroyvDSPSetup(DspLib::Biquad::SetupWrapper *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    vDSP_biquadm_DestroySetup(v2);
    *(this + 2) = 0;
  }
}

void DspLib::Biquad::SetupWrapper::reset(DspLib::Biquad::SetupWrapper *this)
{
  if (*this && *(this + 1))
  {
    v1 = *(this + 2);
    if (v1)
    {
      vDSP_biquadm_ResetState(v1);
    }
  }
}

void DspLib::Biquad::Filter::initialize(DspLib::Biquad::Filter *this, vDSP_Length a2, vDSP_Length __M)
{
  v6 = (this + 48);
  if (*(this + 6) == a2)
  {
    if (*(this + 7) == __M)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *(this + 8);
    if (v7)
    {
      vDSP_biquadm_DestroySetup(v7);
      *(this + 8) = 0;
    }

    *v6 = 0;
    v6[1] = 0;
    *(this + 4) = *(this + 3);
    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = 0;
    if (!__M)
    {
      goto LABEL_12;
    }
  }

  *(this + 1) = a2;
  *(this + 2) = __M;
  std::vector<unsigned long>::resize(this + 3, 5 * a2 * __M);
  v8 = *(this + 7);
  if (v8 < __M)
  {
    do
    {
      if (a2)
      {
        v9 = 0;
        v10 = *(this + 1) * v8;
        v11 = *(this + 3);
        v12 = 1;
        do
        {
          v13 = v11 + 40 * (v10 + v9);
          *v13 = 0x3FF0000000000000;
          v9 = v12;
          *(v13 + 8) = 0uLL;
          *(v13 + 24) = 0uLL;
          ++v12;
        }

        while (v9 < a2);
      }

      ++v8;
    }

    while (v8 != __M);
  }

LABEL_12:
  DspLib::Biquad::SetupWrapper::initialize(v6, *(this + 3), (*(this + 4) - *(this + 3)) >> 3, __M, a2);
LABEL_13:
  *this = 1;
}

void DspLib::Biquad::Filter::uninitialize(DspLib::Biquad::Filter *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    vDSP_biquadm_DestroySetup(v2);
    *(this + 8) = 0;
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 4) = *(this + 3);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
}

void DspLib::Biquad::Filter::setNumberOfStages(DspLib::Biquad::Filter *this, vDSP_Length __M)
{
  if (*this)
  {
    v4 = *(this + 6);

    DspLib::Biquad::Filter::initialize(this, v4, __M);
  }

  else
  {
    DspLib::Biquad::Filter::setNumberOfStages();
  }
}

void DspLib::Biquad::Filter::initializeStates(DspLib::Biquad::Filter *this, float a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(this + 6);
  if (v2)
  {
    v4 = *(this + 7);
    if (v4)
    {
      if (*(this + 8))
      {
        v6 = 0;
        v7 = 0;
        v8 = 1;
        v9 = 0uLL;
        do
        {
          if (v8)
          {
            v10 = 0;
            v11 = 1;
            do
            {
              v39 = v9;
              v38 = v9;
              __coeffs = 0x3FF0000000000000;
              vDSP_biquadm_SetCoefficientsDouble(*(this + 8), &__coeffs, v6, v10, 1uLL, 1uLL);
              v9 = 0uLL;
              v10 = v11;
              v2 = *(this + 6);
            }

            while (v2 > v11++);
            v4 = *(this + 7);
            v8 = *(this + 6);
          }

          v6 = ++v7;
        }

        while (v4 > v7);
        v13 = 2 * (v2 != 1);
        v14 = MEMORY[0x1EEE9AC00](this);
        v16 = &v34 - v15;
        v17 = *(this + 6);
        MEMORY[0x1EEE9AC00](v14);
        v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v18 >= 0x200)
        {
          v20 = 512;
        }

        else
        {
          v20 = v18;
        }

        bzero(&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
        if (v17)
        {
          v21 = 0;
          do
          {
            *&v19[8 * v21] = &v16[4 * (v21 << v13)];
            ++v21;
          }

          while (v17 > v21);
        }

        __coeffs = v19;
        *&v38 = v17;
        *(&v38 + 1) = 1;
        DspLib::fill(&__coeffs, a2);
        v22 = *(this + 6);
        v24 = MEMORY[0x1EEE9AC00](v23);
        v26 = &v34 - v25;
        MEMORY[0x1EEE9AC00](v24);
        v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v27 >= 0x200)
        {
          v29 = 512;
        }

        else
        {
          v29 = v27;
        }

        bzero(&v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
        if (v22)
        {
          v30 = 0;
          do
          {
            *&v28[8 * v30] = &v26[4 * (v30 << (2 * (v22 != 1)))];
            ++v30;
          }

          while (v22 > v30);
        }

        v31 = *(this + 7);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = 1;
          do
          {
            __coeffs = v19;
            *&v38 = v17;
            *(&v38 + 1) = 1;
            *&v35 = v28;
            *(&v35 + 1) = v22;
            v36 = 1;
            DspLib::Biquad::Filter::process(this, &__coeffs, &v35);
            v33 = v32;
            v31 = *(this + 7);
            ++v32;
          }

          while (v33 < 2 * v31);
          v22 = *(this + 6);
        }

        vDSP_biquadm_SetCoefficientsDouble(*(this + 8), *(this + 3), 0, 0, v31, v22);
      }
    }
  }
}

void DspLib::Biquad::Filter::process(void *a1, __int128 *a2, __int128 *a3)
{
  if (a1[6] && a1[7] && (v5 = a1[8]) != 0)
  {
    v6 = *(a2 + 2);
    v7 = *a3;
    v8 = *a2;

    vDSP_biquadm(v5, v8, 1, v7, 1, v6);
  }

  else if (*a2 != *a3)
  {
    v13 = v3;
    v14 = v4;
    v11 = *a2;
    v12 = *(a2 + 2);
    v9 = *a3;
    v10 = *(a3 + 2);
    DspLib::copy(&v11, &v9);
  }
}

void DspLib::Biquad::Filter::copyStatesFrom(DspLib::Biquad::Filter *this, const DspLib::Biquad::Filter *a2)
{
  if (*(this + 6))
  {
    if (*(this + 7))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(a2 + 6) && *(a2 + 7))
        {
          v3 = *(a2 + 8);
          if (v3)
          {
            vDSP_biquadm_CopyState(v2, v3);
          }
        }
      }
    }
  }
}

void *DspLib::Biquad::Filter::latencySamples(void *this)
{
  if (this[7])
  {
    v1 = this;
    if (this[6])
    {
      v2 = 0;
      v3 = 0;
      v4 = 0.0;
      do
      {
        DspLib::diracDelta(v24, 0x80uLL);
        v5 = v1[7];
        if (v5)
        {
          v6 = 0;
          v7 = v1[1];
          v8 = v1[3];
          do
          {
            v9 = 0;
            v10 = (v8 + 40 * (v2 + v7 * v6));
            v11 = *v10;
            v12 = v10[1];
            v13 = v10[2];
            v14 = v10[3];
            v15 = v10[4];
            v16 = -v14;
            v17 = -v15;
            v18 = 0.0;
            v19 = 0.0;
            v20 = 0.0;
            v21 = 0.0;
            do
            {
              v22 = v18;
              v18 = v24[v9];
              v23 = ((((v22 * v12) + (v11 * v18)) + (v13 * v21)) + (v16 * v20)) + (v17 * v19);
              v24[v9++] = v23;
              v19 = v20;
              v20 = v23;
              v21 = v22;
            }

            while (v9 != 128);
            v6 = (v6 + 1);
          }

          while (v5 > v6);
        }

        this = DspLib::maxmgvi(v24, 0x80uLL);
        if (v4 < *&this)
        {
          v4 = *&this;
        }

        v2 = ++v3;
      }

      while (v1[6] > v3);
    }
  }

  return this;
}

void DspLib::Biquad::Filter::process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a4;
  v10 = a2;
  *&v7 = &v10;
  *(&v7 + 1) = 1;
  v8 = a3;
  *&v5 = &v9;
  *(&v5 + 1) = 1;
  v6 = a5;
  DspLib::Biquad::Filter::process(a1, &v7, &v5);
}

void DspLib::Biquad::Filter::setCoefficients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, vDSP_Length a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v11[0] = a1;
  v11[1] = v13;
  v11[2] = &v12;
  v12 = a4;
  if (a5 < 0x41)
  {
    DspLib::Biquad::Filter::setCoefficients(std::span<DspLib::Biquad::Section const,18446744073709551615ul>,unsigned long,unsigned long)::$_0::operator()(v11, a5);
  }

  else if (*(a1 + 48))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      DspLib::Biquad::Filter::setCoefficients(std::span<DspLib::Biquad::Section const,18446744073709551615ul>,unsigned long,unsigned long)::$_0::operator()(v11, v6);
      v6 = v7;
      v8 = *(a1 + 48);
      v9 = v8 >= v7;
      v10 = v8 == v7++;
    }

    while (!v10 && v9);
  }
}

void DspLib::Biquad::Filter::setCoefficients(std::span<DspLib::Biquad::Section const,18446744073709551615ul>,unsigned long,unsigned long)::$_0::operator()(uint64_t *a1, vDSP_Length a2)
{
  v2 = a1[1];
  if (v2[1])
  {
    v5 = 0;
    v6 = *a1;
    v7 = 1;
    while (1)
    {
      v8 = (*v2 + 20 * v5);
      v9 = *v8->f32;
      v16 = v8[2].i32[0];
      v15 = v9;
      if ((DspLib::Biquad::validate(&v15) & 1) == 0)
      {
        break;
      }

      v10 = v8[2].f32[0];
      v11 = *a1[2] + v5;
      v12 = *(v6 + 24) + 40 * (a2 + *(v6 + 8) * v11);
      v13 = vcvtq_f64_f32(v8[1]);
      *v12 = vcvtq_f64_f32(*v8);
      *(v12 + 16) = v13;
      *(v12 + 32) = v10;
      vDSP_biquadm_SetCoefficientsDouble(*(v6 + 64), v12, v11, a2, 1uLL, 1uLL);
      v5 = v7;
      v2 = a1[1];
      if (v2[1] <= v7++)
      {
        return;
      }
    }

    DspLib::Biquad::Filter::setCoefficients(std::span<DspLib::Biquad::Section const,18446744073709551615ul>,unsigned long,unsigned long)::$_0::operator()();
  }
}

float32_t DspLib::Biquad::Filter::section@<S0>(DspLib::Biquad::Filter *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X8>)
{
  v4 = (*(this + 3) + 40 * (a3 + *(this + 1) * a2));
  *a4 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), v4[1]);
  result = v4[2].f64[0];
  a4[1].f32[0] = result;
  return result;
}

void DspLib::Biquad::ParametricFilter::initialize(DspLib::Biquad::ParametricFilter *this, vDSP_Length a2, double a3, vDSP_Length a4)
{
  DspLib::Biquad::Filter::initialize(this, a2, a4);
  std::vector<std::vector<DspLib::Biquad::Section>>::resize(this + 10, *(this + 6));
  v6 = *(this + 10);
  v7 = *(this + 11);
  while (v6 != v7)
  {
    std::vector<DspLib::Biquad::Design::ParametricEQ>::resize(v6, *(this + 7));
    v6 += 3;
  }

  if (*(this + 9) != a3)
  {
    *(this + 9) = a3;
    v8 = *(this + 7);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = *(this + 6);
      do
      {
        if (v11)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = *(*(this + 10) + 24 * v12) + 16 * v9;
            DspLib::Biquad::ParametricFilter::setParametricEQ(this, *v14, *(v14 + 8), v9, v12);
            v12 = v13;
            v11 = *(this + 6);
          }

          while (v11 > v13++);
          v8 = *(this + 7);
        }

        v9 = ++v10;
      }

      while (v8 > v10);
    }
  }
}

void std::vector<DspLib::Biquad::Design::ParametricEQ>::resize(void *a1, unint64_t a2)
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
    std::vector<DspLib::Biquad::Design::ParametricEQ>::__append(a1, a2 - v2);
  }
}

void DspLib::Biquad::ParametricFilter::setParametricEQ(uint64_t a1, unint64_t a2, double *a3, uint64_t a4, vDSP_Length a5)
{
  v6 = *&a3;
  v7 = a2;
  v9 = HIDWORD(a2);
  if (a5 < 0x41)
  {
    v21 = *(a1 + 72) * 0.49000001;
    v22 = v21;
    if (*(&a2 + 1) <= v21)
    {
      v22 = *(&a2 + 1);
    }

    if (*(&a2 + 1) < 1.0)
    {
      v22 = 1.0;
    }

    v23 = (*(*(a1 + 80) + 24 * a5) + 16 * a4);
    v23->i32[0] = a2;
    *&v23->i32[1] = v22;
    v23[1] = vbsl_s8(vcgt_f32(0x3DCCCCCDC2200000, a3), 0x3DCCCCCDC2200000, vbsl_s8(vcgt_f32(a3, 0x42C8000042200000), 0x42C8000042200000, a3));
    v24 = (*(*(a1 + 80) + 24 * a5) + 16 * a4);
    if (*v24 != 25)
    {
      v25 = *(a1 + 72);
      DspLib::Biquad::Design::ParametricEQ::design(v24, v25, 0, a3, &v28);
      v26 = v28;
      v27 = v29;
      DspLib::Biquad::Filter::setCoefficients(a1, &v26, 1, a4, a5);
    }
  }

  else if (*(a1 + 48))
  {
    v10 = 0;
    v11 = *(&a3 + 1);
    v12 = 1;
    do
    {
      v13 = *(a1 + 72) * 0.49000001;
      if (*&v9 <= v13)
      {
        v13 = *&v9;
      }

      if (*&v9 >= 1.0)
      {
        *&v9 = v13;
      }

      else
      {
        LODWORD(v9) = 1065353216;
      }

      if (v6 <= 40.0)
      {
        *&v14 = v6;
      }

      else
      {
        *&v14 = 40.0;
      }

      if (v6 >= -40.0)
      {
        v6 = *&v14;
      }

      else
      {
        v6 = -40.0;
      }

      if (v11 <= 100.0)
      {
        *&v15 = v11;
      }

      else
      {
        *&v15 = 100.0;
      }

      if (v11 >= 0.1)
      {
        v11 = *&v15;
      }

      else
      {
        v11 = 0.1;
      }

      v16 = *(*(a1 + 80) + 24 * v10) + 16 * a4;
      *v16 = v7;
      *(v16 + 4) = v9;
      *(v16 + 8) = v6;
      *(v16 + 12) = v11;
      v17 = (*(*(a1 + 80) + 24 * v10) + 16 * a4);
      if (*v17 != 25)
      {
        v18 = *(a1 + 72);
        DspLib::Biquad::Design::ParametricEQ::design(v17, v18, 0, a3, &v28);
        v26 = v28;
        v27 = v29;
        DspLib::Biquad::Filter::setCoefficients(a1, &v26, 1, a4, v10);
      }

      v10 = v12;
    }

    while (*(a1 + 48) > v12++);
  }
}

void DspLib::Biquad::ParametricFilter::uninitialize(DspLib::Biquad::ParametricFilter *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    vDSP_biquadm_DestroySetup(v2);
    *(this + 8) = 0;
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 4) = *(this + 3);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;

  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 10);
}

void DspLib::Biquad::ParametricFilter::setParametricEQs(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = 0;
    for (i = 0; i < v3; v7 = ++i)
    {
      if (a3)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          DspLib::Biquad::ParametricFilter::setParametricEQ(a1, *(a2 + 16 * v9), *(a2 + 16 * v9 + 8), v9, v7);
          v9 = v10;
        }

        while (a3 > v10++);
        v3 = *(a1 + 48);
      }
    }
  }
}

void DspLib::Biquad::amplitudeResponse(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v9[0] = a4;
  v9[1] = a5;
  DspLib::Biquad::frequencyResponse(a1, a2, a3, v9, 0, a6, 0, a7, a8, a9);
}

void DspLib::Biquad::frequencyResponse(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9, double a10)
{
  if (a3 >= 0xF4241)
  {
    DspLib::Biquad::frequencyResponse();
  }

  else
  {
    if (a4)
    {
      DspLib::fill(*a4, *(a4 + 8), 1.0);
    }

    if (a5)
    {
      DspLib::clear(*a5, *(a5 + 8));
    }

    if (a7)
    {
      DspLib::ComplexVector::operator=(a7, 1.0);
    }

    v18 = a1[7];
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = a8;
      v22 = (6.2832 / v21);
      do
      {
        if (a3)
        {
          v23 = 0;
          v24 = (a1[3] + 40 * (a6 + a1[1] * v19));
          v25 = vcvt_hight_f32_f64(vcvt_f32_f64(*v24), v24[1]);
          v37 = v25;
          v26 = v24[2].f64[0];
          do
          {
            v38 = v37;
            v39 = v26;
            v27 = DspLib::Biquad::frequencyResponse(v38.f32, 0, v22 * *(a2 + 4 * v23), *v25.i64, a10);
            v28 = v27;
            v29 = *v25.i64;
            if (a4)
            {
              v30 = sqrt(*v25.i64 * *v25.i64 + v27 * v27);
              *v25.i64 = *(*a4 + 4 * v23);
              *&v30 = v30 * *v25.i64;
              *(*a4 + 4 * v23) = LODWORD(v30);
            }

            if (a5)
            {
              v31 = atan2(v29, v28);
              *v25.i64 = *(*a5 + 4 * v23);
              *&v31 = v31 + *v25.i64;
              *(*a5 + 4 * v23) = LODWORD(v31);
            }

            if (a7)
            {
              v32 = v28;
              v33 = v29;
              v34 = DspLib::ComplexSpan::operator[](a7, v23);
              v36 = (v34 * v32) - (v35 * v33);
              v40.imag = (v35 * v32) + (v34 * v33);
              v40.real = v36;
              DspLib::ComplexSpan::setElement(a7, v23, v40);
            }

            ++v23;
          }

          while (a3 != v23);
          v18 = a1[7];
        }

        v19 = ++v20;
      }

      while (v18 > v20);
    }
  }
}

void DspLib::Biquad::phaseResponse(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v9[0] = a4;
  v9[1] = a5;
  DspLib::Biquad::frequencyResponse(a1, a2, a3, 0, v9, a6, 0, a7, a8, a9);
}

void DspLib::Biquad::amplitudeAndPhaseResponse(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  v12[0] = a4;
  v12[1] = a5;
  v11[0] = a6;
  v11[1] = a7;
  DspLib::Biquad::frequencyResponse(a1, a2, a3, v12, v11, a8, 0, a9, a10, a11);
}

void DspLib::Biquad::SetupWrapper::~SetupWrapper(DspLib::Biquad::SetupWrapper *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    vDSP_biquadm_DestroySetup(v2);
    *(this + 2) = 0;
  }
}

void std::vector<DspLib::Biquad::Design::ParametricEQ>::__append(uint64_t a1, unint64_t a2)
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
        *v4 = 23;
        *(v4 + 4) = 1148846080;
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
      *v14 = 23;
      *(v14 + 4) = 1148846080;
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

void DspLib::Biquad::Filter::setNumberOfStages()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Biquad/dsp/DspLibBiquad.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 153);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::Biquad::Filter::setCoefficients(std::span<DspLib::Biquad::Section const,18446744073709551615ul>,unsigned long,unsigned long)::$_0::operator()()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Biquad/dsp/DspLibBiquad.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 260);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::Biquad::frequencyResponse()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Biquad/dsp/DspLibBiquad.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 390);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

double DspLib::PilotToneV2::PilotTone::initialize(DspLib::PilotToneV2::PilotTone *this, double a2)
{
  *(this + 10) = a2;
  v3 = vcvtad_u64_f64(a2 * 5.0 / 1000.0);
  *(this + 11) = v3;
  std::vector<float>::resize(this + 25, v3);
  DspLib::makeSecondHalfHannWindow(*(this + 25), (*(this + 26) - *(this + 25)) >> 2);
  DspLib::Biquad::Filter::initialize((this + 8), 1uLL, 1uLL);
  *this = 1;

  return DspLib::PilotToneV2::PilotTone::reset(this);
}

double DspLib::PilotToneV2::PilotTone::reset(DspLib::PilotToneV2::PilotTone *this)
{
  *(this + 13) = 0;
  *(this + 112) = 1;
  v2 = 224;
  if (*(this + 264))
  {
    v2 = 228;
  }

  *(this + 32) = *(this + v2);
  *(this + 15) = ((*(this + 26) - *(this + 25)) >> 2) - 1;
  *(this + 66) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  DspLib::Biquad::SetupWrapper::reset((this + 56));
  if (*(this + 264) == 1)
  {
    *(this + 38) = 925353388;
  }

  v3 = 512.0 / *(this + 10);
  *(this + 67) = expf(-1.0 / ((v3 * 7.5) / 1000.0));
  v4 = expf(-1.0 / ((v3 * 30.0) / 1000.0));
  *(this + 68) = v4;
  *(this + 70) = v4;
  *&result = 512;
  *(this + 10) = xmmword_1DE098140;
  return result;
}

void DspLib::PilotToneV2::PilotTone::setParameters(uint64_t a1, float *a2)
{
  DspLib::PilotToneV2::PilotTone::lookupTableNeedsUpdate(a1, a2);
  *(a1 + 224) = DspLib::dB2Power(v4, a2[3]);
  v6 = DspLib::dB2Power(v5, a2[4]);
  *(a1 + 228) = v6;
  if (*(a1 + 264) == 1)
  {
    *(a1 + 128) = v6;
  }

  v7 = *(a1 + 184) + *(a1 + 184);
  v8 = *(a1 + 80);
  DspLib::Biquad::Design::butterworthLowPass(2, v7, v8, 0, &__p);
  DspLib::Biquad::Filter::setCoefficients(a1 + 8, __p, 0xCCCCCCCCCCCCCCCDLL * ((v13 - __p) >> 2), 0, 0x41uLL);
  *(a1 + 160) = 512;
  v9 = 512.0 / *(a1 + 80);
  *(a1 + 268) = expf(-1.0 / ((v9 * 7.5) / 1000.0));
  v10 = expf(-1.0 / ((v9 * 30.0) / 1000.0));
  *(a1 + 272) = v10;
  *(a1 + 280) = v10;
  *(a1 + 276) = 1128792064;
  *(a1 + 232) = DspLib::dB2Amp(v11, -a2[7]);
  *(a1 + 284) = *(a1 + 192);
  *(a1 + 236) = *a2 != 0.0;
  *(a1 + 1) = 1;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_1DDBE9340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double DspLib::PilotToneV2::PilotTone::lookupTableNeedsUpdate(uint64_t a1, float *a2)
{
  v4 = *(a1 + 184);
  v5 = DspLib::dB2Amp(a1, a2[2]);
  v6 = vcvtas_u32_f32(a2[8]);
  if (v6 > 3)
  {
    v7 = 2048;
  }

  else
  {
    v7 = qword_1DE098150[v6];
  }

  *(a1 + 96) = v7;
  v8 = *(a1 + 80);
  v9 = v8 / fmaxf(roundf(v8 / a2[5]), 1.0);
  v10 = v9 / v7;
  v11 = DspLib::PilotToneV2::fftBinForFrequency(v7, a2[1], v9);
  v13 = v10 * v11;
  v14 = v13;
  if (v13 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    LODWORD(v12) = vcvtad_u64_f64(v8 / v14);
  }

  *(a1 + 176) = v12 | (v11 << 32);
  *(a1 + 184) = v14;
  v15 = a2[6];
  isEqual = DspLib::isEqual(v11, v5, *(a1 + 192), 1.0e-20);
  if (!isEqual)
  {
    goto LABEL_12;
  }

  v17 = DspLib::isEqual(isEqual, v4, *(a1 + 184), 1.0e-20);
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = 0.0;
  v19 = 1.0;
  if (v15 >= 0.5)
  {
    v18 = 1.0;
  }

  LOBYTE(v19) = *(a1 + 264);
  if (!DspLib::isEqual(v17, v18, v19, 1.0e-20))
  {
LABEL_12:
    *(a1 + 192) = v5;
    std::vector<float>::resize((a1 + 240), *(a1 + 176));
    v21 = *(a1 + 240);
    v22 = *(a1 + 248) - v21;
    v23 = v22 >> 2;
    if (v22)
    {
      v24 = 0;
      do
      {
        v25 = (v24 / v23) * 6.28318531;
        *(v21 + 4 * v24++) = sinf(v25);
      }

      while (v23 > v24);
    }

    if (v15 < 0.5)
    {
      DspLib::multiply(v21, v23, v5);
    }

    else
    {
      v5 = 0.00001;
    }

    *(a1 + 152) = v5;
    *(a1 + 264) = v15 >= 0.5;

    return DspLib::PilotToneV2::PilotTone::reset(a1);
  }

  return result;
}

void DspLib::PilotToneV2::PilotTone::process(uint64_t a1, const float *a2, unint64_t a3, uint64_t a4, vDSP_Length a5)
{
  if (*(a1 + 236) == 1 && a3 != 0)
  {
    if (*(a1 + 88) >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = *(a1 + 88);
    }

    v12 = DspLib::meanSquare((a4 + 4 * a5 - 4 * v11), v11);
    v13 = *(a1 + 128);
    *(a1 + 112) = *&v12 < v13;
    if (*&v12 >= v13 && (*(a1 + 133) & 1) == 0)
    {
      v14 = *(a1 + 136) + a3;
      *(a1 + 136) = v14;
      *(a1 + 133) = v14 >= a5;
    }

    v15 = *(a1 + 240);
    v16 = (*(a1 + 248) - v15) >> 2;
    v17 = *(a1 + 200);
    v18 = (*(a1 + 208) - v17) >> 2;

    DspLib::PilotToneV2::PilotTone::addPilotTone(a1, a2, a3, v15, v16, v17, v18);
  }
}

void DspLib::PilotToneV2::PilotTone::addPilotTone(uint64_t a1, const float *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 264) == 1)
  {
    DspLib::PilotToneV2::PilotTone::processAdaptivePilotTone(a1, a2, a3, a4, a5);
  }

  else
  {
    DspLib::PilotToneV2::PilotTone::processStaticPilotTone(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t DspLib::PilotToneV2::PilotTone::status(uint64_t result, uint64_t a2)
{
  v2 = *(result + 184);
  *a2 = v2;
  *(a2 + 4) = *(result + 180);
  if (*(result + 236) == 1)
  {
    v3 = *(result + 152);
  }

  else
  {
    v3 = 925353388;
  }

  *(a2 + 8) = v3;
  return result;
}

void DspLib::PilotToneV2::PilotTone::processAdaptivePilotTone(uint64_t a1, const float *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return;
  }

  v10 = 0;
  v11 = *(a1 + 104);
  do
  {
    if (a5 - v11 >= a3 - v10)
    {
      v12 = a3 - v10;
    }

    else
    {
      v12 = a5 - v11;
    }

    if (v12 == -1)
    {
      v13 = a5 - v11;
    }

    else
    {
      v13 = v12;
    }

    DspLib::copy((a4 + 4 * v11), v13, &v29[v10]);
    v11 = *(a1 + 104) + v12;
    if (v11 >= a5)
    {
      v11 = 0;
    }

    *(a1 + 104) = v11;
    v10 += v12;
  }

  while (v10 < a3);
  if (*(a1 + 112))
  {
    v14 = 0.00001;
  }

  else
  {
    v14 = DspLib::rms(a2, a3);
    if (v14 < 0.00001)
    {
      v14 = 0.00001;
    }
  }

  if (*(a1 + 160) == a3)
  {
    v15 = *(a1 + 268);
    v16 = *(a1 + 272);
  }

  else
  {
    v17 = a3 / *(a1 + 80);
    v15 = expf(-1.0 / ((v17 * 7.5) / 1000.0));
    *(a1 + 268) = v15;
    v16 = expf(-1.0 / ((v17 * 30.0) / 1000.0));
    *(a1 + 272) = v16;
    *(a1 + 160) = a3;
  }

  v18 = v14 + (v15 * (*(a1 + 144) - v14));
  v19 = v14 + (v16 * (*(a1 + 148) - v14));
  *(a1 + 144) = v18;
  *(a1 + 148) = v19;
  v20 = *(a1 + 276) * (((v19 - v18) / v14) * 100.0);
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v20 < 0.0;
  v23 = 0.0;
  if (v22)
  {
    v21 = 0.0;
  }

  v24 = (v16 * (1.0 - (v21 * v21))) + ((v21 * v21) * v15);
  *(a1 + 280) = v24;
  v25 = (v14 * *(a1 + 232)) + (v24 * (*(a1 + 152) - (v14 * *(a1 + 232))));
  *(a1 + 152) = v25;
  if (v25 >= 0.0)
  {
    v26 = 152;
    if (*(a1 + 284) < v25)
    {
      v26 = 284;
    }

    v23 = *(a1 + v26);
    *(a1 + 152) = v23;
    if (v23 >= 0.0001)
    {
      v27 = 0;
      *(a1 + 168) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    *(a1 + 152) = 0;
  }

  v27 = *(a1 + 168) + a3;
  *(a1 + 168) = v27;
LABEL_31:
  if (v27 < (*(a1 + 80) * 0.0399999991))
  {
    DspLib::multiply(v29, a3, v29, v23);
    DspLib::Biquad::Filter::process((a1 + 8), v29, a3, v29, a3);
    DspLib::add();
  }

  *(a1 + 104) = 0;
  DspLib::Biquad::SetupWrapper::reset((a1 + 56));
}

uint64_t DspLib::PilotToneV2::PilotTone::processStaticPilotTone(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v13 = result;
    v14 = 0;
    v15 = a7 - 1;
    while (1)
    {
      if (*(v13 + 112) & 1) == 0 && (*(v13 + 132) & 1) == 0 && (*(v13 + 133))
      {
        DspLib::add();
      }

      *(v13 + 128) = *(v13 + 224);
      *(v13 + 133) = 0;
      v16 = *(v13 + 120);
      if (v16 >= v15)
      {
        break;
      }

      if (a7 - v16 >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = a7 - v16;
      }

      v18 = *(v13 + 104);
      if (a5 - v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = a5 - v18;
      }

      if (v19 == -1)
      {
        v20 = a5 - v18;
      }

      else
      {
        v20 = v19;
      }

      if (v19 == -1)
      {
        v21 = a3 - v14;
      }

      else
      {
        v21 = v19;
      }

      result = DspLib::multiplyAccumulate(a2 + 4 * v14, v21, a4 + 4 * v18, v20, a6 + 4 * v16);
      *(v13 + 120) += v19;
      *(v13 + 132) = 1;
      *(v13 + 136) = 0;
      v22 = *(v13 + 104) + v19;
      if (v22 >= a5)
      {
        v22 = 0;
      }

      *(v13 + 104) = v22;
      v14 += v19;
      if (v14 >= a3)
      {
        return result;
      }
    }

    *(v13 + 132) = 0;
    *(v13 + 104) = 0;
    *(v13 + 152) = 925353388;
  }

  return result;
}

uint64_t DspLib::PilotToneV2::fftBinForFrequency(unint64_t this, float a2, float a3)
{
  v4 = a3 / this;
  v5 = vcvtas_u32_f32(a2 / v4);
  v6 = this >> 1;
  if ((this >> 1) - 1 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (this >> 1) - 1;
  }

  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (fmodf(a3, v4 * v8) > 0.5)
  {
    v9 = (v8 - 1);
    if (v7 >= 3 && v6 > v9)
    {
      v13 = v8;
      do
      {
        LODWORD(v9) = v13;
        v11 = v4 * v13;
        v14 = a3 - (v11 * floorf(a3 / v11));
        v12 = v14 >= 0.5;
        v15 = v13++;
      }

      while (v14 >= 0.5 && v9 >= 2 && v6 > v15);
    }

    else
    {
      v11 = 0.0;
      v12 = 1;
    }

    v18 = v8;
    while (1)
    {
      v19 = v18 + 1;
      if (v19 < 2 || v6 <= v19)
      {
        break;
      }

      v20 = v4 * v18--;
      if ((a3 - (v20 * floorf(a3 / v20))) < 0.5)
      {
        v21 = v18 + 1;
        if (vabds_f32(v4 * v8, v11) >= vabds_f32(v4 * v8, v20))
        {
          LODWORD(v9) = v21;
        }

        if (v12)
        {
          return v8;
        }

        else
        {
          return v9;
        }
      }
    }
  }

  return v8;
}

float DspLib::ToneMeister::Parameters::filterCenterFrequency(float *a1)
{
  v1 = a1[1];
  if (v1 <= 0x17 && ((1 << v1) & 0x880200) != 0)
  {
    return 1000.0;
  }

  v4 = v1;
  if (v1 > 0x18)
  {
    goto LABEL_11;
  }

  if (((1 << v4) & 0x1F7FDFE) != 0)
  {
    return a1[3];
  }

  if (v4)
  {
LABEL_11:
    abort();
  }

  return sqrtf(a1[4] * a1[5]);
}

BOOL DspLib::ToneMeister::Parameters::isAutomatedFilterStateParameter(DspLib::ToneMeister::Parameters *this)
{
  if (this - 518 > 0x63)
  {
    return 0;
  }

  HIDWORD(v1) = -858993459 * (this - 6) + 858993459;
  LODWORD(v1) = HIDWORD(v1);
  return (v1 >> 1) < 0x1999999A;
}

float DspLib::ToneMeister::Parameters::automatedGain(float *a1, float a2, float a3)
{
  v3 = a1[2];
  v4 = 0.0;
  if (v3 < a2)
  {
    v5 = a1[3];
    if (v5 <= a2)
    {
      v8 = a1[4];
    }

    else
    {
      if (a1[6] < 0.5)
      {
        v6 = (a2 - v3) / (v5 - v3);
        v7 = a1[4] - a3;
        return v6 * v7;
      }

      v10 = a1[7];
      v9 = a1[8];
      if (v10 >= a2)
      {
        v6 = (a2 - v3) / (v10 - v3);
        v7 = v9 - a3;
        return v6 * v7;
      }

      v8 = v9 + (((a2 - v10) / (v5 - v10)) * (a1[4] - v9));
    }

    return v8 - a3;
  }

  return v4;
}

float DspLib::ToneMeister::Parameters::automatedFrequency(float *a1, float a2, float a3)
{
  v4 = a1[2];
  v5 = 1.0;
  if (v4 >= a2)
  {
    return v5;
  }

  v6 = a1[3];
  if (v6 <= a2)
  {
    v8 = a1[5];
    return v8 / a3;
  }

  if (a1[6] >= 0.5)
  {
    v10 = a1[7];
    v11 = a1[9];
    if (v10 >= a2)
    {
      v7 = ((a2 - v4) / (v10 - v4)) * logf(v11 / a3);
      goto LABEL_11;
    }

    v12 = (a2 - v10) / (v6 - v10);
    v13 = logf(a1[5] / v11);
    v8 = v11 * expf(v12 * v13);
    return v8 / a3;
  }

  v7 = ((a2 - v4) / (v6 - v4)) * logf(a1[5] / a3);
LABEL_11:

  return expf(v7);
}

BOOL DspLib::ToneMeister::Parameters::findAutomationForFilter@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  LODWORD(a4) = vcvtas_u32_f32(fmaxf(*(a2 + 2072), 0.0));
  if (a4 == a1)
  {
    v5 = 0;
    result = 1;
    if (a3)
    {
LABEL_3:
      *a3 = v5;
    }
  }

  else
  {
    v7 = (a2 + 2112);
    v8 = -1;
    do
    {
      if (v8 == 8)
      {
        return 0;
      }

      v9 = *v7;
      v7 += 10;
      LODWORD(v4) = vcvtas_u32_f32(fmaxf(v9, 0.0));
      ++v8;
    }

    while (v4 != a1);
    result = v8 < 9;
    v5 = v8 + 1;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  return result;
}

BOOL DspLib::ToneMeister::Parameters::isFilterFrequencyParameter(DspLib::ToneMeister::Parameters *this, int a2)
{
  v2 = (this & 0xFFFFFFFFFFFFFFFDLL) == 4;
  v3 = this == 4;
  v5 = this == 6 || (this & 0xFFFFFFFFFFFFFFFELL) == 4;
  if (a2)
  {
    v5 = 0;
  }

  if (a2 != 2)
  {
    v3 = v5;
  }

  if (a2 != 24)
  {
    v2 = v3;
  }

  return this == 3 || v2;
}

uint64_t DspLib::ToneMeister::Parameters::categoryOfFilterType(unint64_t this)
{
  if (this >= 0x19)
  {
    abort();
  }

  return dword_1DE098170[this];
}

uint64_t DspLib::ToneMeister::Parameters::filterTypeHasGain(DspLib::ToneMeister::Parameters *this)
{
  if (DspLib::ToneMeister::Parameters::categoryOfFilterType(this) == 6)
  {
    v2 = 1;
  }

  else
  {
    v3 = DspLib::ToneMeister::Parameters::categoryOfFilterType(this);
    v4 = 0x1AA7u >> this;
    if (this > 0xC)
    {
      LOBYTE(v4) = 0;
    }

    if (v3 == 4)
    {
      v2 = 1;
    }

    else
    {
      v2 = v4;
    }
  }

  return v2 & 1;
}

BOOL DspLib::isEqual(DspLib *this, double a2, double a3, double a4)
{
  if (a2 != 0.0)
  {
    a3 = (a3 - a2) / a2;
  }

  return fabs(a3) * 100.0 <= a4;
}

float DspLib::sign(DspLib *this, double a2)
{
  if (a2 >= 0.0)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = -1.0;
  }

  if (a2 == 0.0)
  {
    v2 = 0.0;
  }

  if (a2 >= 0.0)
  {
    result = 1.0;
  }

  else
  {
    result = -1.0;
  }

  if (!this)
  {
    return v2;
  }

  return result;
}

void DspLib::dB2Amp(float *a1, uint64_t a2)
{
  v2 = a2;
  v5 = 1038862563;
  MEMORY[0x1E12BE940](a1, 1, &v5, a1, 1, a2);
  v4 = v2;
  vvexpf(a1, a1, &v4);
}

void DspLib::amp2dBSafe(const float *a1, vDSP_Length __N, float *a3, vDSP_Length a4, float a5)
{
  vDSP_vabs(a1, 1, a3, 1, __N);
  v8 = a5;
  MEMORY[0x1E12BE8A0](a3, 1, &v8, a3, 1, a4);
  __B = 1.0;
  vDSP_vdbcon(a3, 1, &__B, a3, 1, a4, 1u);
}

void DspLib::amp2dBSafe(void *a1, float a2)
{
  if (a1[1])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      DspLib::amp2dBSafe(*(*a1 + 8 * v4), a1[2], *(*a1 + 8 * v4), a1[2], a2);
      v4 = v5;
    }

    while (a1[1] > v5++);
  }
}

double DspLib::bark2Hz(DspLib *this, double a2)
{
  if (a2 < 2.0)
  {
    v2 = a2 + -0.3;
    v3 = 0.85;
LABEL_5:
    a2 = v2 / v3;
    return (a2 + 0.53) * 1960.0 / (26.28 - a2);
  }

  if (a2 > 20.1)
  {
    v2 = a2 + 4.422;
    v3 = 1.22;
    goto LABEL_5;
  }

  return (a2 + 0.53) * 1960.0 / (26.28 - a2);
}

float DspLib::sum(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_sve(a1, 1, &__C, __N);
  return __C;
}

BOOL DspLib::isFinite(void *a1)
{
  if (!a1[1])
  {
    return 1;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *(*a1 + 8 * v2);
    v5 = a1[2];
    __C = 0.0;
    vDSP_sve(v4, 1, &__C, v5);
    result = (LODWORD(__C) & 0x7FFFFFFFu) < 0x7F800000;
    if ((LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      break;
    }

    v2 = v3;
  }

  while (a1[1] > v3++);
  return result;
}

float DspLib::maxMagnitude(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_maxmgv(a1, 1, &__C, __N);
  return __C;
}

BOOL DspLib::isSilent(__int128 *a1, float a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return DspLib::maxMagnitude(&v3) < a2;
}

float DspLib::maxMagnitude(void *a1)
{
  if (!a1[1])
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  v4 = 1;
  do
  {
    v5 = *(*a1 + 8 * v2);
    v6 = a1[2];
    __C = 0.0;
    vDSP_maxmgv(v5, 1, &__C, v6);
    if (v3 < __C)
    {
      v3 = __C;
    }

    v2 = v4;
  }

  while (a1[1] > v4++);
  return v3;
}

void *DspLib::copy(void *__src, uint64_t a2, void *__dst)
{
  if (a2)
  {
    return memmove(__dst, __src, 4 * a2);
  }

  return __src;
}

void *DspLib::copy(void *result, void *a2)
{
  v2 = result[1];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v4[2];
      if (v7)
      {
        result = memmove(*(*a2 + 8 * v5), *(*v4 + 8 * v5), 4 * v7);
        v2 = v4[1];
      }

      v5 = v6;
    }

    while (v2 > v6++);
  }

  return result;
}