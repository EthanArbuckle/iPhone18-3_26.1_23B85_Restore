void sub_1DDBCA0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::LoudspeakerSystemIDV2::Algorithm::uninitialize(DspLib::LoudspeakerSystemIDV2::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  *(this + 8) = 0;
  DspLib::Log::uninitialize(this + 44);
  DspLib::Log::uninitialize(this + 45);
  DspLib::Log::uninitialize(this + 46);
  v6 = *(this + 39);
    ;
  }

  *(this + 40) = v6;
  *(this + 338) = 0;
}

uint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::reset(uint64_t this)
{
  v1 = *(this + 312);
  if (*(this + 320) != v1)
  {
    v2 = *(this + 312);
    *(v1 + 24) = 0;
    DspLib::FIRDecimator::reset((v1 + 6824));
    DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::reset((v2 + 48));
    DspLib::LoudspeakerSystemIDV2::ModelFit::reset((v2 + 1192));
  }

  return this;
}

void DspLib::LoudspeakerManager::ThermalNVM::read(DspLib::LoudspeakerManager::ThermalNVM *this, DspLib::LoudspeakerManager::ThermalModel *a2, float32x2_t *a3, uint64_t a4, double a5)
{
  v5 = (this + 32 * a4);
  v11 = *v5;
  v12 = v5[1];
  if (*(&v12 + 1))
  {
    v8 = vcvtad_u64_f64((DspLib::elapsedTimeInMilliseconds((&v12 + 8), a2) * 0.001) * a5);
    v9.i32[1] = DWORD1(v11);
    *(a2 + 18) = v11;
    v9.f32[0] = *(a2 + 43) + ((*&v12 + *(&v12 + 1)) - (*(a2 + 42) + *(a2 + 43)));
    *(a2 + 43) = v9.i32[0];
    DspLib::LoudspeakerManager::ThermalModel::decay(a2, v8, v9);
    v10.i32[1] = HIDWORD(v11);
    a3[18] = *(&v11 + 8);
    v10.f32[0] = a3[21].f32[1] + ((*&v12 + *(&v12 + 1)) - (a3[21].f32[0] + a3[21].f32[1]));
    a3[21].i32[1] = v10.i32[0];
    DspLib::LoudspeakerManager::ThermalModel::decay(a3, v8, v10);
  }
}

void DspLib::LoudspeakerSystemIDV2::Algorithm::reInitializeMembers(DspLib::LoudspeakerSystemIDV2::Algorithm *this, DspLib::LoudspeakerSystemIDV2::SystemID *a2, float a3, unint64_t a4)
{
  v18[4] = *MEMORY[0x1E69E9840];
  *(a2 + 8) = a3;
  v7 = *(this + 2) / a3;
  v8 = fmaxf(roundf(v7), 1.0);
  *(a2 + 2) = a4;
  v9 = (16 * v8) | 1;
  MEMORY[0x1EEE9AC00](this);
  v11 = &v18[-1] - v10;
  v18[0] = &unk_1F59193D0;
  v18[1] = DspLib::makeChebychevWindow;
  v18[3] = v18;
  DspLib::makeSincWindow(&v18[-1] - v10, v9, v12, 0x10u, v18, 0.5);
  std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](v18);
  std::vector<std::vector<float>>::resize(a2 + 859, 0);
  std::vector<std::vector<float>>::resize(a2 + 859, 2uLL);
  v13 = (*(*this + 232))(this);
  DspLib::FIRDecimator::setSrcParameters((a2 + 6824), v8, v13);
  DspLib::FIRDecimator::setCoefficients(a2 + 853, v11, v9);
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::uninitialize((a2 + 48));
  v14 = v8;
  v15 = *(this + 2) / v14;
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::initialize((a2 + 48), v15, a4);
  *(a2 + 864) = *(a2 + 863);
  std::vector<float>::resize(a2 + 863, (a4 >> 1) + 1);
  DspLib::ComplexVector::setLength((a2 + 6928), 0);
  DspLib::ComplexVector::setLength((a2 + 6928), a4 >> 1);
  DspLib::LoudspeakerSystemIDV2::ModelFit::uninitialize((a2 + 1192));
  v16 = *(this + 2) / v14;
  DspLib::LoudspeakerSystemIDV2::ModelFit::initialize((a2 + 1192), v16, a4);
}

uint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::setParameters(double *a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    result = (*(*a1 + 144))(a1, 0, 0);
    v6 = result;
    v7 = *(a1 + 39);
    if (*(a1 + 40) != v7)
    {
      v8 = 0;
      v9 = 2;
      do
      {
        v10 = v7 + 23952 * v8;
        v11 = vcvtas_u32_f32(v6[v9]);
        *(v10 + 8) = v11;
        v12 = (*(*a1 + 144))(a1, 7 * v11 + 2, 0);
        v13 = v12;
        v14 = vcvtas_u32_f32(*(v12 + 24));
        if (v14 > 3)
        {
          v15 = 2048;
        }

        else
        {
          v15 = qword_1DE096720[v14];
        }

        v16 = *(v12 + 20);
        if (*(v10 + 32) != v16 || *(v10 + 16) != v15)
        {
          DspLib::LoudspeakerSystemIDV2::Algorithm::reInitializeMembers(a1, v10, *(v12 + 20), v15);
        }

        v18 = *(v10 + 8);
        if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
        {
          DspLib::AlgorithmBaseNewParameters::parameterGroup();
        }

        v19 = 7 * v18 + 3;
        if (v19 >= 0x17)
        {
          DspLib::AlgorithmBaseNewParameters::parameterGroup();
        }

        v20 = &a2[DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v19)];
        DspLib::Loudspeaker::Calibration::ThermalCoefficients::setParameters(v10 + 23664, (v20 + 14), 16, *(a1 + 344));
        v21 = a1[2];
        DspLib::LoudspeakerManager::ThermalModel::initialize((v10 + 23736), v21);
        v22 = a1[2];
        DspLib::LoudspeakerManager::zDomainVoiceCoilThermalModel((v10 + 23664), &v33, v22);
        v23 = a1[2];
        DspLib::LoudspeakerManager::zDomainMagnetThermalModel((v10 + 23664), &v31, v23);
        v29 = v33;
        v30 = v34;
        DspLib::LoudspeakerManager::ThermalModel::setCoilCoeffs(v10 + 23736, &v29);
        v29 = v31;
        v30 = v32;
        DspLib::LoudspeakerManager::ThermalModel::setMagnetCoeffs(v10 + 23736, &v29);
        *(v10 + 40) = v20[30] != 0.0;
        DspLib::LoudspeakerManager::ThermalNVM::read(&DspLib::LoudspeakerSystemIDV2::gSysIDThermalRecord, (v10 + 23736), (v10 + 23736), v8, a1[2]);
        DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::setParameters(&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord, *(a1 + 36), (*(a1 + 37) - *(a1 + 36)) >> 2, v9 - 2, *(v10 + 8));
        v24 = a1[2];
        v25 = v24 / v16;
        LODWORD(v26) = vcvtad_u64_f64(v24 / fmaxf(roundf(v25), 1.0) * *(v13 + 12));
        *v10 = v26;
        DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::setParameters(v10 + 48, *(a1 + 36), (*(a1 + 37) - *(a1 + 36)) >> 2, *(v10 + 8), v9 - 2);
        DspLib::LoudspeakerSystemIDV2::ModelFit::setParameters(v10 + 1192, *(a1 + 36), (*(a1 + 37) - *(a1 + 36)) >> 2, *(v10 + 8), (v9 - 2));
        DspLib::LoudspeakerSystemIDV2::AveragePower::configure((v10 + 23392), 1.0, *(v10 + 312) * *(v10 + 316));
        DspLib::AverageRms::configure(v10 + 23552, 1, 1.0, *(v10 + 316));
        result = DspLib::AverageRms::configure(v10 + 23608, 1, 1.0, *(v10 + 312));
        v8 = v9 - 1;
        v7 = *(a1 + 39);
        ++v9;
      }

      while (0x39CD0A16EA482A69 * ((*(a1 + 40) - v7) >> 4) > v8);
    }

    *(a1 + 337) = v6[10] >= 0.5;
    *(a1 + 336) = *v6 >= 0.5;
  }

  return result;
}

unint64_t DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v10 = (a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 1u));
  v11 = a1 + 264 * a4;
  *(v11 + 252) = *v10 * 1000.0;
  *(v11 + 256) = v10[1] * 1000.0;
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v12 = 7 * a5;
  v13 = 7 * a5 + 3;
  if (v13 >= 0x17)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  *(v11 + 4) = *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v13) + 12);
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  if ((v12 + 5) >= 0x17)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v14 = (a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v12 + 5));
  *(v11 + 248) = v14[11];
  if ((*(v11 + 12) & 1) == 0)
  {
    v15 = *(v11 + 4);
    *v11 = v15;
    *(v11 + 8) = v15;
  }

  DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::setDefaultResonanceModel(a1, a2, a3, a4, v12 + 6, 0);
  DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::setDefaultResonanceModel(a1, a2, a3, a4, v12 + 7, 1u);
  DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::setDefaultResonanceModel(a1, a2, a3, a4, v12 + 8, 2u);
  v16 = *v14;
  v17 = v14[1];
  v18 = v14[2];
  *(v11 + 232) = *v14;
  *(v11 + 236) = v17;
  *(v11 + 240) = v18;
  result = DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(v16, v17, v18);
  if ((*(v11 + 244) & 1) == 0)
  {
    *(v11 + 216) = result;
    *(v11 + 224) = v20;
    *(v11 + 228) = BYTE4(v20);
  }

  return result;
}

void DspLib::LoudspeakerSystemIDV2::AveragePower::configure(DspLib::LoudspeakerSystemIDV2::AveragePower *this, double a2, float a3)
{
  v4 = a2;
  *(this + 36) = a3;
  *(this + 37) = v4;
  DspLib::OnePoleSmoother::configure((this + 48), v4, a3);
  DspLib::AveragingDecimator::reset(this);
  DspLib::Biquad::SetupWrapper::reset((this + 104));
  *(this + 38) = 0;
}

unint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::parseTelemetryData@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(result + 400) == 1)
  {
    result = telemetry::Item::ItemFromEnum(*(*(result + 376) + 4 * a3));
    a3 = HIDWORD(result);
    v6 = result == 1;
    v7 = result != 1;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v8 = *a2;
  v9 = a2[2];
  *a4 = *(*a2 + 8 * (v6 | (2 * a3)));
  a4[1] = v9;
  a4[2] = *(v8 + 8 * (v7 | (2 * a3)));
  a4[3] = v9;
  return result;
}

void DspLib::LoudspeakerSystemIDV2::Algorithm::processBlock(unint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 336) & 1) == 0)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      *(a1 + 340) = 0;
      if (*(a1 + 320) != *(a1 + 312))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          *v24 = *a2;
          *&v24[8] = *(a2 + 8);
          DspLib::LoudspeakerSystemIDV2::Algorithm::parseTelemetryData(a1, v24, v6, v27);
          v29 = *v27;
          v30 = *&v27[16];
          v7 = *(a1 + 312) + 23952 * v5;
          *v24 = &v29;
          *&v24[8] = 2;
          *&v24[16] = v3;
          *(a1 + 340) = DspLib::LoudspeakerSystemIDV2::AveragePower::process(v7 + 23392, v24) + *(a1 + 340);
          if (*(a1 + 337) == 1)
          {
            DspLib::AverageRms::process(v7 + 23552, v29, v3);
            DspLib::AverageRms::process(v7 + 23608, v30, v3);
          }

          v23[1] = v23;
          MEMORY[0x1EEE9AC00](v8);
          v28[0] = &v23[-v9];
          v28[1] = v28[0] + 4 * v9;
          v10 = *(v7 + 6824);
          v25[0] = v28;
          v25[1] = 2;
          v26 = v3 / v10 + 1;
          *v24 = &v29;
          *&v24[8] = 2;
          *&v24[16] = v3;
          DspLib::FIRDecimator::process((v7 + 6824), v24, v25);
          v11 = v26;
          if (v26)
          {
            DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::process((v7 + 48), *(v25[0] + 8), *v25[0], *(v7 + 1920));
          }

          *v24 = *v27;
          *&v24[16] = *&v27[16];
          DspLib::LoudspeakerSystemIDV2::Algorithm::processThermals(a1, v7, v24, v3, *v27, v6);
          v12 = (*(a1 + 312) + 23952 * v5);
          v13 = v12[3] + v11;
          v14 = v13 >= *v12;
          if (v13 >= *v12)
          {
            v13 = 0;
          }

          v12[3] = v13;
          if (v14)
          {
            DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::impedance((v7 + 48), (v7 + 6928));
            DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::coherence(v7 + 48, *(v7 + 6904), (*(v7 + 6912) - *(v7 + 6904)) >> 2);
            *(v7 + 1196) = 1;
          }

          else
          {
            v15 = *(v7 + 6904);
            v16 = *(v7 + 6912);
            v17 = *(v7 + 276);
            v18 = DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::voltagePowerSpectrum((v7 + 48));
            v19 = *(a1 + 312) + 23952 * v5;
            v21 = *(v19 + 272) == 1 && (v20 = (v19 + 48), v20[61] < v20[65]) && v20[95] > v20[46];
            DspLib::LoudspeakerSystemIDV2::ModelFit::process(v7 + 1192, (v7 + 6928), v15, (v16 - v15) >> 2, v18, v21, v6, v17);
          }

          DspLib::elapsedTimeInMilliseconds((&DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord + 264 * v5 + 16), v22);
          v5 = (v6 + 1);
          v6 = v5;
        }

        while (0x39CD0A16EA482A69 * ((*(a1 + 320) - *(a1 + 312)) >> 4) > v5);
      }

      if (*(a1 + 338))
      {
        *v27 = *a2;
        *&v27[8] = *(a2 + 8);
        DspLib::LoudspeakerSystemIDV2::Algorithm::processLogging(a1, v27);
      }
    }
  }
}

float DspLib::LoudspeakerSystemIDV2::AveragePower::process(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v5[1] = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v5[2] = v2;
    DspLib::multiply();
  }

  return *(a1 + 152);
}

uint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::processThermals(uint64_t a1, float32x2_t *a2, int a3, unint64_t a4, simd_float4 a5, unsigned int a6)
{
  v8 = a2 + 2560;
  if (a2[2966].i8[1] == 1)
  {
    v9 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v9);
    DspLib::multiply();
  }

  DspLib::LoudspeakerManager::ThermalModel::decay(a2 + 2967, a4, a5);
  v8[430].i32[0] = v8[401].i32[1];
  *&v10 = a2[2985];
  *(&v10 + 1) = v10;
  v14 = v10;
  v11 = (&DspLib::LoudspeakerSystemIDV2::gSysIDThermalRecord + 32 * a6);
  v12 = a2[2988];
  result = DspLib::currentTimeStamp();
  *v11->f32 = v14;
  v11[2] = v12;
  v11[3] = result;
  return result;
}

uint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::processLogging(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[2];
  if (*(result + 352))
  {
    result = DspLib::Log::write((result + 352), v4);
  }

  if (v3[45])
  {
    result = DspLib::Log::write(v3 + 45, v4);
  }

  if (v3[46])
  {
    result = DspLib::Log::write(v3 + 46, v4);
  }

  v5 = v3[39];
  if (v3[40] != v5)
  {
    v6 = 0;
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v5 + 23952 * v6;
      if (v3[45])
      {
        DspLib::multiply(*(*a2 + 8 * (v7 - 1)), a2[2], v9 + 7008, *(v9 + 316));
        DspLib::Log::write(v3 + 45, (v9 + 7008), v4);
        DspLib::multiply(*(*a2 + 8 * v7), a2[2], v9 + 15200, *(v9 + 312));
        result = DspLib::Log::write(v3 + 45, (v9 + 15200), v4);
      }

      if (v3[44])
      {
        DspLib::Log::write(v3 + 44, *(v9 + 288));
        DspLib::Log::write(v3 + 44, *(v9 + 276));
        DspLib::Log::write(v3 + 44, *(v9 + 300));
        DspLib::Log::write(v3 + 44, *(v9 + 292));
        v10 = v3[39] + 23952 * v6;
        v11 = 0.0;
        v12 = 0.0;
        if (*(v10 + 272) == 1)
        {
          if (*(v10 + 292) >= *(v10 + 308))
          {
            v12 = 0.0;
          }

          else
          {
            v12 = 1.0;
          }
        }

        DspLib::Log::write(v3 + 44, v12);
        DspLib::Log::write(v3 + 44, *(v9 + 3472));
        DspLib::Log::write(v3 + 44, *(v9 + 3468));
        DspLib::Log::write(v3 + 44, *(v9 + 3464));
        DspLib::Log::write(v3 + 44, *(v9 + 3460));
        DspLib::Log::write(v3 + 44, *(v9 + 3456));
        DspLib::Log::write(v3 + 44, *(v9 + 3476));
        DspLib::Log::write(v3 + 44, *(v9 + 2976));
        v13 = v3[39] + 23952 * v6;
        if (*(v13 + 2948) == 1)
        {
          v14 = v13 + 2528;
          if (*(v14 + 422) == 1)
          {
            if (*(v14 + 448) >= *(v14 + 1024))
            {
              v11 = 0.0;
            }

            else
            {
              v11 = 1.0;
            }
          }
        }

        DspLib::Log::write(v3 + 44, v11);
        DspLib::Log::write(v3 + 44, *(v9 + 4576));
        DspLib::Log::write(v3 + 44, *(v9 + 4568));
        DspLib::Log::write(v3 + 44, *(v9 + 4564));
        DspLib::Log::write(v3 + 44, *(v9 + 4580));
        DspLib::Log::write(v3 + 44, *(v9 + 4080));
        v15 = v3[39] + 23952 * v6;
        v16 = 0.0;
        v17 = 0.0;
        if (*(v15 + 4052) == 1)
        {
          v18 = v15 + 3632;
          if (*(v18 + 422) == 1)
          {
            if (*(v18 + 448) >= *(v18 + 1024))
            {
              v17 = 0.0;
            }

            else
            {
              v17 = 1.0;
            }
          }
        }

        DspLib::Log::write(v3 + 44, v17);
        DspLib::Log::write(v3 + 44, *(v9 + 6752));
        DspLib::Log::write(v3 + 44, *(v9 + 6748));
        DspLib::Log::write(v3 + 44, *(v9 + 6744));
        DspLib::Log::write(v3 + 44, *(v9 + 6268));
        if (*(v3[39] + 23952 * v6 + 6260) == 1 && *(v3[39] + 23952 * v6 + 6262) == 1)
        {
          if (*(v3[39] + 23952 * v6 + 6268) >= *(v3[39] + 23952 * v6 + 6792))
          {
            v16 = 0.0;
          }

          else
          {
            v16 = 1.0;
          }
        }

        DspLib::Log::write(v3 + 44, v16);
        v19 = *((*(*v3 + 144))(v3, (7 * *(v9 + 8) + 2), 0) + 20) / (*(v9 + 16) * 0.5);
        v20 = logf(*(v9 + 428));
        result = DspLib::Log::write(v3 + 44, -1.0 / (v20 * v19));
      }

      if (v3[46])
      {
        v21 = *(v9 + 23692);
        v28 = COERCE_FLOAT(*(v9 + 23880));
        LODWORD(v22) = HIDWORD(*(v9 + 23880));
        v23 = *(v9 + 23920);
        DspLib::Log::write(v3 + 46, v28);
        DspLib::Log::write(v3 + 46, v22);
        DspLib::Log::write(v3 + 46, v23);
        DspLib::Log::write(v3 + 46, v22 + (v21 + v28));
        DspLib::Log::write(v3 + 46, v22 + (v28 + v23));
        v24 = v3[39];
        v25 = (v24 + 23952 * v6 + 23664);
        if (*v25 == 0.0)
        {
          v26 = 1000.0;
        }

        else
        {
          v26 = *(v24 + 23952 * v6 + 23672) + ((1.0 / *v25) * ((*(v24 + 23952 * v6 + 276) / *(v24 + 23952 * v6 + 23668)) + -1.0));
        }

        result = DspLib::Log::write(v3 + 46, v26);
      }

      v6 = v8;
      v5 = v3[39];
      v27 = 0x39CD0A16EA482A69 * ((v3[40] - v5) >> 4) > v8++;
      v7 += 2;
    }

    while (v27);
  }

  return result;
}

void DspLib::LoudspeakerSystemIDV2::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  if ((*(*a1 + 208))(a1))
  {
    if ((*(*a1 + 40))(a1))
    {
      v9 = *(a1 + 312) + 23952 * *(a1 + 408);
      v10 = *(v9 + 16);
      v11 = v10 >> 1;
      *&v6 = v10;
      *(a2 + 20936) = v10;
      DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::status(v9 + 48, a2, v6, v7, v8);
      DspLib::FFT::amplitude(*(a1 + 312) + 23952 * *(a1 + 408) + 6928, (a2 + 312), v11);
      v12 = *(a1 + 312) + 23952 * *(a1 + 408);
      v13 = *(v12 + 6944);
      v31 = *(v12 + 6928);
      v32 = v13;
      DspLib::FFT::phase(&v31, (a2 + 4408), v11);
      v14 = *(a1 + 312) + 23952 * *(a1 + 408);
      DspLib::copy(*(v14 + 6904), (*(v14 + 6912) - *(v14 + 6904)) >> 2, (a2 + 8504));
      DspLib::LoudspeakerSystemIDV2::ModelFit::status(*(a1 + 312) + 23952 * *(a1 + 408) + 1192, a2, __N);
      *(a2 + 308) = *(a1 + 340);
      v15 = *(a1 + 312);
      v16 = *(a1 + 320);
      v17 = v15 + 23952 * *(a1 + 408);
      *(a2 + 20812) = *(v17 + 23584);
      v18 = *(v17 + 23640);
      *(a2 + 20816) = v18;
      LOBYTE(v18) = *(a1 + 344);
      *(a2 + 20820) = v18;
      *(a2 + 20824) = *(v17 + 23668);
      *(a2 + 20828) = *(v17 + 23672);
      *(a2 + 20832) = *(v17 + 23720);
      *(a2 + 20836) = *(v17 + 23724);
      v19 = *(v17 + 23664);
      *(a2 + 20840) = v19;
      LOBYTE(v19) = *(v17 + 23728);
      *(a2 + 20844) = v19;
      v20 = *(v17 + 23692);
      v21 = *(v17 + 23880);
      v22 = *(v17 + 23920);
      *(a2 + 20848) = v20;
      *(a2 + 20856) = v21;
      *(a2 + 20864) = v22;
      *(a2 + 20852) = *(&v21 + 1) + (v20 + *&v21);
      *(a2 + 20868) = *(v17 + 23908);
      if (v16 != v15)
      {
        v23 = 0x39CD0A16EA482A69 * ((v16 - v15) >> 4);
        v24 = (v15 + 276);
        v25 = (v15 + 23672);
        v26 = 1;
        v27 = 5226;
        do
        {
          v28 = *(v25 - 2);
          if (v28 == 0.0)
          {
            v29 = 1000.0;
          }

          else
          {
            v29 = *v25 + ((1.0 / v28) * ((*v24 / *(v25 - 1)) + -1.0));
          }

          *(a2 + 4 * (v27 - 8)) = v29;
          *(a2 + 4 * v27) = *(v25 - 32);
          v24 += 5988;
          v30 = v23 > v26++;
          ++v27;
          v25 += 5988;
        }

        while (v30);
      }
    }
  }
}

float DspLib::LoudspeakerSystemIDV2::Algorithm::speakerModel@<S0>(DspLib::LoudspeakerSystemIDV2::Algorithm *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *a3 = 1;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  v7 = (a3 + 20);
  *(a3 + 25) = 0;
  *(a3 + 36) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  do
  {
    v8 = a3 + v6;
    *(v8 + 60) = 0;
    *(v8 + 52) = 0;
    *(v8 + 76) = 0;
    *(v8 + 68) = 0;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    v6 += 44;
    *(v8 + 92) = 0;
  }

  while (v6 != 132);
  v9 = 0;
  *(a3 + 184) = vdup_n_s32(0xC2C80000);
  *(a3 + 192) = 1065353216;
  *(a3 + 196) = 0;
  *(a3 + 200) = 1112014848;
  *(a3 + 204) = 0;
  *(a3 + 208) = 0;
  v10 = *(this + 39) + 23952 * a2;
  v11 = *(v10 + 2496);
  *(v10 + 2496) = 0;
  *(a3 + 1) = v11;
  v12 = *(v10 + 300);
  *(a3 + 4) = *(v10 + 276);
  *(a3 + 8) = v12;
  v13 = *(v10 + 292);
  *(a3 + 12) = v13;
  if (*(v10 + 272) == 1)
  {
    v9 = v13 < *(v10 + 308);
  }

  *(a3 + 16) = v9;
  *v7 = *(v10 + 6744);
  *(v7 + 5) = *(v10 + 6749);
  v14 = DspLib::minv(*(v10 + 6536), (*(v10 + 6544) - *(v10 + 6536)) >> 2);
  v15 = *(v10 + 6268);
  *(a3 + 36) = v14;
  *(a3 + 40) = v15;
  v16 = *(v10 + 6262);
  v17 = v16 == 1 && v15 < *(v10 + 6792);
  *(a3 + 44) = v17;
  *(a3 + 48) = v16;
  *(a3 + 52) = *(v10 + 3456);
  *(a3 + 61) = *(v10 + 3465);
  v18 = DspLib::minv(*(v10 + 3240), (*(v10 + 3248) - *(v10 + 3240)) >> 2);
  v19 = *(v10 + 2976);
  *(a3 + 80) = v18;
  *(a3 + 84) = v19;
  v20 = *(v10 + 2950);
  v21 = v20 == 1 && v19 < *(v10 + 3552);
  *(a3 + 88) = v21;
  *(a3 + 92) = v20;
  *(a3 + 96) = *(v10 + 4560);
  *(a3 + 105) = *(v10 + 4569);
  v22 = DspLib::minv(*(v10 + 4344), (*(v10 + 4352) - *(v10 + 4344)) >> 2);
  v23 = *(v10 + 4080);
  *(a3 + 124) = v22;
  *(a3 + 128) = v23;
  v24 = *(v10 + 4054);
  v25 = v24 == 1 && v23 < *(v10 + 4656);
  *(a3 + 132) = v25;
  *(a3 + 136) = v24;
  *(a3 + 140) = *(v10 + 5664);
  *(a3 + 149) = *(v10 + 5673);
  v26 = DspLib::minv(*(v10 + 5448), (*(v10 + 5456) - *(v10 + 5448)) >> 2);
  v27 = *(v10 + 5184);
  *(a3 + 168) = v26;
  *(a3 + 172) = v27;
  v28 = *(v10 + 5158);
  v29 = v28 == 1 && v27 < *(v10 + 5760);
  *(a3 + 176) = v29;
  *(a3 + 180) = v28;
  v30 = *(v10 + 23584);
  *a3 = DspLib::LoudspeakerSystemIDV2::gNonVolatileRecord[264 * a2 + 260];
  v31 = *(v10 + 23640);
  *(a3 + 184) = v30;
  *(a3 + 188) = v31;
  *(a3 + 192) = *(v10 + 228);
  v32 = *(v10 + 23729);
  *(a3 + 196) = *(this + 337);
  *(a3 + 204) = v32;
  *(a3 + 200) = *(v10 + 23920);
  result = *(v10 + 23884);
  v34 = *(v10 + 36);
  *(a3 + 208) = result;
  *(a3 + 212) = v34;
  return result;
}

__n128 DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::setDefaultResonanceModel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  if (a5 >= 0x17)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v11 = a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, a5);
  v12.i32[0] = *(v11 + 16);
  if (*(v11 + 140) >= 0.5)
  {
    v12.i32[1] = *(v11 + 144);
    v12 = vmul_f32(v12, 0x40C90FDB3A83126FLL);
    v14 = vmul_lane_f32(v12, v12, 1);
    v15 = vdup_lane_s32(v12, 0);
    v15.i32[0] = *(v11 + 148);
    LODWORD(v13) = vdiv_f32(v14, v15).u32[0];
    HIDWORD(v13) = vmul_n_f32(v14, *&v12).i32[1];
  }

  else
  {
    v12.f32[0] = v12.f32[0] * 0.001;
    v13 = *(v11 + 20);
  }

  v16 = *(v11 + 124);
  v17 = *(v11 + 112);
  v18 = *(v11 + 108) >= 0.5;
  v23[0] = *(v11 + 12);
  v23[1] = v12.f32[0];
  v24 = v13;
  v25 = v16;
  v26 = v17;
  DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(v23, v18, v27);
  v19 = a1 + 264 * a4;
  v20 = v19 + 28 * a6;
  *(v20 + 124) = *v27;
  result.n128_u64[0] = *&v27[9];
  *(v20 + 133) = *&v27[9];
  if (*(v19 + a6 + 208) != 1 || *(v19 + 214) != v18)
  {
    *(v19 + 214) = v18;
    v22 = v19 + 28 * a6;
    *(v22 + 40) = *(v20 + 124);
    result = *(v20 + 133);
    *(v22 + 49) = result;
  }

  return result;
}

uint64_t DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::writeRdc(uint64_t this, float a2, float a3, unsigned int a4)
{
  v4 = this + 264 * a4;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 12) = 1;
  return this;
}

void DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::readRdc(DspLib::LoudspeakerSystemIDV2::NonVolatileMemory *this, float *a2, float *a3, BOOL *a4, unsigned int a5)
{
  v8 = this + 264 * a5;
  v14 = *(v8 + 3);
  if (DspLib::elapsedTimeInMilliseconds(&v14, a2) >= *(v8 + 63))
  {
    v8[260] = 1;
    v11 = *(v8 + 64);
    v14 = *(v8 + 4);
    v12 = DspLib::elapsedTimeInMilliseconds(&v14, v9);
    v13 = expf(-v12 / v11);
    v10 = 0;
    *a2 = *(v8 + 1) + (v13 * (*v8 - *(v8 + 1)));
  }

  else
  {
    v8[260] = 0;
    *a2 = *v8;
    *a3 = *(v8 + 2);
    v10 = 1;
  }

  *a4 = v10;
  DspLib::elapsedTimeInMilliseconds((v8 + 32), v9);
}

__n128 DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::writeResonanceModel(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5)
{
  v5 = a1 + 264 * a4;
  v6 = v5 + 28 * a3;
  result = *a2;
  *(v6 + 49) = *(a2 + 9);
  *(v6 + 40) = result;
  v8 = v5 + a3;
  *(v8 + 208) = 1;
  *(v8 + 211) = a5;
  return result;
}

void DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::readResonanceModel(DspLib::LoudspeakerSystemIDV2::NonVolatileMemory *this@<X0>, unint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = this + 264 * a3;
  v20 = *(v8 + 3);
  if (DspLib::elapsedTimeInMilliseconds(&v20, a2) >= *(v8 + 63))
  {
    v10 = v5;
    goto LABEL_5;
  }

  v10 = v5;
  if (v8[v5 + 211])
  {
LABEL_5:
    v13 = &v8[28 * v10];
    v20 = *(v8 + 2);
    v18 = *(v13 + 124);
    v19 = vsubq_f32(*(v13 + 40), v18);
    v14 = *(v13 + 140);
    v15 = vsub_f32(*(v13 + 56), v14);
    v16 = DspLib::elapsedTimeInMilliseconds(&v20, v9);
    *v17.i32 = expf(-v16 / *(this + 66 * a3 + 64));
    v12 = 0;
    *a4 = vmlaq_n_f32(v18, v19, *v17.i32);
    *(a4 + 16) = vmla_f32(v14, v15, *&vdupq_lane_s32(v17, 0));
    goto LABEL_6;
  }

  v11 = &v8[28 * v5];
  *a4 = *(v11 + 40);
  *(a4 + 16) = *(v11 + 7);
  v12 = 1;
LABEL_6:
  *(a4 + 24) = v12;
}

uint64_t DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::writeInductanceModel(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = result + 264 * a4;
  *(v4 + 216) = a2;
  *(v4 + 224) = a3;
  *(v4 + 228) = BYTE4(a3);
  *(v4 + 244) = 1;
  return result;
}

unint64_t DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::readInductanceModel(DspLib::LoudspeakerSystemIDV2::NonVolatileMemory *this, unint64_t *a2)
{
  v2 = a2;
  v4 = this + 264 * a2;
  v13 = *(v4 + 3);
  if (DspLib::elapsedTimeInMilliseconds(&v13, a2) < *(v4 + 63))
  {
    return *(v4 + 27);
  }

  v7 = *(v4 + 58);
  v8 = *(v4 + 59);
  v9 = *(v4 + 60);
  v10 = *(v4 + 27);
  v11 = *(v4 + 28);
  v13 = *(v4 + 2);
  v12 = DspLib::elapsedTimeInMilliseconds(&v13, v5);
  return DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::inductanceModelWithDecay(this, v10, v7, v8, v9, v12, v11, v2);
}

unint64_t DspLib::LoudspeakerSystemIDV2::NonVolatileMemory::inductanceModelWithDecay(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, uint64_t a7, unsigned int a8)
{
  v12 = expf(-a6 / *(a1 + 264 * a8 + 256));
  v13 = DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters(a2);
  return DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(a3 + (v12 * (v13 - a3)), a4 + (v12 * (v14 - a4)), a5 + (v12 * (v15 - a5)));
}

void std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        DspLib::LoudspeakerSystemIDV2::SystemID::~SystemID((v4 - 23952));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DspLib::LoudspeakerSystemIDV2::SystemID::~SystemID(DspLib::LoudspeakerSystemIDV2::SystemID *this)
{
  v2 = *(this + 2991);
  if (v2)
  {
    *(this + 2992) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 23856));
  v3 = *(this + 2979);
  if (v3)
  {
    *(this + 2980) = v3;
    operator delete(v3);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 23784));
  v4 = *(this + 2970);
  if (v4)
  {
    *(this + 2971) = v4;
    operator delete(v4);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 23496));
  v5 = *(this + 2934);
  if (v5)
  {
    *(this + 2935) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2926);
  if (v6)
  {
    *(this + 2927) = v6;
    operator delete(v6);
  }

  DspLib::ComplexVector::~ComplexVector((this + 6928));
  v7 = *(this + 863);
  if (v7)
  {
    *(this + 864) = v7;
    operator delete(v7);
  }

  v9 = (this + 6872);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v8 = *(this + 854);
  if (v8)
  {
    *(this + 855) = v8;
    operator delete(v8);
  }

  DspLib::LoudspeakerSystemIDV2::ModelFit::~ModelFit((this + 1192));
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::~ImpedanceMeasurement((this + 48));
}

void DspLib::LoudspeakerSystemIDV2::AveragePower::~AveragePower(DspLib::LoudspeakerSystemIDV2::AveragePower *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 104));
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void DspLib::OnePoleSmoother::~OnePoleSmoother(DspLib::OnePoleSmoother *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 56));
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::~ModelFit(DspLib::LoudspeakerSystemIDV2::ModelFit *this)
{
  DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::~LR2InductanceModel((this + 4648));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((this + 3544));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((this + 2440));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((this + 1336));
  DspLib::ComplexVector::~ComplexVector((this + 1216));
  DspLib::ComplexVector::~ComplexVector((this + 1136));
  DspLib::ComplexVector::~ComplexVector((this + 1056));
  DspLib::ComplexVector::~ComplexVector((this + 976));
  DspLib::ComplexVector::~ComplexVector((this + 896));
  DspLib::ComplexVector::~ComplexVector((this + 816));
  DspLib::ComplexVector::~ComplexVector((this + 736));
  DspLib::ComplexVector::~ComplexVector((this + 648));
  DspLib::ComplexVector::~ComplexVector((this + 568));
  DspLib::ComplexVector::~ComplexVector((this + 488));
  DspLib::ComplexVector::~ComplexVector((this + 408));
  DspLib::ComplexVector::~ComplexVector((this + 328));
  DspLib::ComplexVector::~ComplexVector((this + 248));
  DspLib::ComplexVector::~ComplexVector((this + 168));
  DspLib::ComplexVector::~ComplexVector((this + 88));
  DspLib::ComplexVector::~ComplexVector((this + 8));
}

void DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::~LR2InductanceModel(DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *this)
{
  DspLib::ComplexVector::~ComplexVector((this + 824));
  DspLib::ComplexVector::~ComplexVector((this + 720));
  v2 = *(this + 87);
  if (v2)
  {
    *(this + 88) = v2;
    operator delete(v2);
  }

  DspLib::ComplexVector::~ComplexVector((this + 616));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 520));
  DspLib::ComplexVector::~ComplexVector((this + 440));
  DspLib::ComplexVector::~ComplexVector((this + 336));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 240));
  DspLib::ComplexVector::~ComplexVector((this + 160));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 64));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this)
{
  DspLib::ComplexVector::~ComplexVector((this + 848));
  DspLib::ComplexVector::~ComplexVector((this + 736));
  v2 = *(this + 89);
  if (v2)
  {
    *(this + 90) = v2;
    operator delete(v2);
  }

  DspLib::ComplexVector::~ComplexVector((this + 632));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 536));
  DspLib::ComplexVector::~ComplexVector((this + 456));
  DspLib::ComplexVector::~ComplexVector((this + 336));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 240));
  DspLib::ComplexVector::~ComplexVector((this + 160));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 64));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::~ImpedanceMeasurement(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this)
{
  DspLib::ComplexVector::~ComplexVector((this + 1064));
  DspLib::ComplexVector::~ComplexVector((this + 984));
  DspLib::ComplexVector::~ComplexVector((this + 904));
  DspLib::ComplexVector::~ComplexVector((this + 824));
  DspLib::ComplexVector::~ComplexVector((this + 744));
  DspLib::ComplexVector::~ComplexVector((this + 664));
  if (*(this + 656) == 1)
  {
    v2 = *(this + 74);
    if (v2)
    {
      *(this + 75) = v2;
      operator delete(v2);
    }

    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(this + 552);
  }

  if (*(this + 544) == 1)
  {
    v3 = *(this + 60);
    if (v3)
    {
      *(this + 61) = v3;
      operator delete(v3);
    }

    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(this + 440);
  }

  v4 = *(this + 52);
  if (v4)
  {
    *(this + 53) = v4;
    operator delete(v4);
  }

  v5 = *(this + 49);
  if (v5)
  {
    *(this + 50) = v5;
    operator delete(v5);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 112));
  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }
}

uint64_t std::optional<DspLib::FFT::BufferedForwardSTFT>::~optional(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }

    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(a1);
  }

  return a1;
}

DspLib::LoudspeakerSystemIDV2::SystemID *std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::__append(uint64_t *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0x39CD0A16EA482A69 * ((v4 - v5) >> 4) >= a2)
  {

    return std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = 0x39CD0A16EA482A69 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x2BC739A142DD4)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x39CD0A16EA482A69 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x15E39CD0A16EALL)
    {
      v9 = 0x2BC739A142DD4;
    }

    else
    {
      v9 = v8;
    }

    v21 = a1;
    if (v9)
    {
      std::allocator<DspLib::LoudspeakerSystemIDV2::SystemID>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 23952 * v6;
    v18 = 0;
    v19 = v11;
    v20 = v11;
    v12 = 23952 * a2;
    v13 = v11 + 23952 * a2;
    do
    {
      bzero(v11, 0x5D90uLL);
      DspLib::LoudspeakerSystemIDV2::SystemID::SystemID(v11);
      v11 += 23952;
      v12 -= 23952;
    }

    while (v12);
    *&v20 = v13;
    v14 = a1[1];
    v15 = v19 + *a1 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::LoudspeakerSystemIDV2::SystemID>,DspLib::LoudspeakerSystemIDV2::SystemID*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    v17 = a1[2];
    *(a1 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<DspLib::LoudspeakerSystemIDV2::SystemID>::~__split_buffer(&v18);
  }
}

void sub_1DDBCCB20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::LoudspeakerSystemIDV2::SystemID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

DspLib::LoudspeakerSystemIDV2::SystemID *std::vector<DspLib::LoudspeakerSystemIDV2::SystemID>::__construct_at_end(DspLib::LoudspeakerSystemIDV2::SystemID *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = &v3[23952 * a2];
    v5 = 23952 * a2;
    do
    {
      bzero(v3, 0x5D90uLL);
      result = DspLib::LoudspeakerSystemIDV2::SystemID::SystemID(v3);
      v3 += 23952;
      v5 -= 23952;
    }

    while (v5);
    v3 = v4;
  }

  *(v2 + 1) = v3;
  return result;
}

DspLib::LoudspeakerSystemIDV2::SystemID *DspLib::LoudspeakerSystemIDV2::SystemID::SystemID(DspLib::LoudspeakerSystemIDV2::SystemID *this)
{
  *this = 1;
  *(this + 2) = 0;
  *(this + 11) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 40) = 0;
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::ImpedanceMeasurement((this + 48));
  DspLib::LoudspeakerSystemIDV2::ModelFit::ModelFit((this + 1192));
  *(this + 853) = 1;
  *(this + 427) = 0u;
  *(this + 428) = 0u;
  *(this + 429) = 0u;
  *(this + 430) = 0u;
  *(this + 431) = 0u;
  *(this + 432) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 6928), 0, 0);
  bzero(this + 7008, 0x4000uLL);
  *(this + 2924) = 1;
  *(this + 5850) = 1065353216;
  *(this + 1466) = 0u;
  *(this + 1467) = 0u;
  *(this + 1468) = 0u;
  *(this + 1469) = 0u;
  *(this + 1463) = 0u;
  *(this + 1464) = 0u;
  *(this + 23433) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 1470) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 2942) = _Q0;
  *(this + 5886) = 0;
  *(this + 23560) = 0;
  *(this + 5891) = 1065353216;
  *(this + 1473) = xmmword_1DE096630;
  *(this + 5896) = 0;
  *(this + 2949) = 0;
  *(this + 5900) = 0;
  *(this + 23616) = 0;
  *(this + 5905) = 1065353216;
  *(this + 2953) = 0x4024000000000000;
  *(this + 2954) = 0;
  *(this + 5910) = 0;
  *(this + 2956) = 0;
  *(this + 5914) = 0;
  *(this + 1479) = 0u;
  *(this + 1480) = 0u;
  *(this + 1481) = 0u;
  *(this + 1482) = 0u;
  *(this + 11864) = 0;
  *(this + 23736) = 0;
  *(this + 1484) = 0u;
  *(this + 1485) = 0u;
  *(this + 1486) = 0u;
  *(this + 1487) = 0u;
  *(this + 23808) = 0;
  *(this + 23816) = 0u;
  *(this + 23832) = 0u;
  *(this + 23848) = 0u;
  *(this + 23864) = 0u;
  *(this + 2985) = 0;
  *(this + 2986) = _Q0;
  *(this + 2987) = _Q0;
  *(this + 1494) = xmmword_1DE096640;
  *(this + 5980) = 1112014848;
  *(this + 23928) = 0u;
  *(this + 2993) = 0;
  return this;
}

void sub_1DDBCCD68(_Unwind_Exception *a1)
{
  v4 = v1[863];
  if (v4)
  {
    v1[864] = v4;
    operator delete(v4);
  }

  DspLib::FIRDecimator::~FIRDecimator((v1 + v2));
  DspLib::LoudspeakerSystemIDV2::ModelFit::~ModelFit((v1 + 149));
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::~ImpedanceMeasurement((v1 + 6));
  _Unwind_Resume(a1);
}

DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::ImpedanceMeasurement(DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement *this)
{
  *this = DspLib::dB2Amp(this, -43.0);
  *(this + 1) = 1;
  *(this + 4) = 1065353216;
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 136) = _Q1;
  *(this + 152) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 1;
  *(this + 112) = 0;
  *(this + 226) = 0;
  *(this + 236) = 0;
  *(this + 228) = 0;
  *(this + 61) = 1092616192;
  *(this + 248) = 0;
  *(this + 252) = xmmword_1DE095680;
  *(this + 268) = 0x3F80000000000000;
  *(this + 292) = 0;
  *(this + 276) = 0;
  *(this + 284) = 0;
  *(this + 75) = 1065353216;
  *(this + 304) = 1;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0u;
  *(this + 356) = 0u;
  *(this + 186) = 0;
  *(this + 376) = 0;
  *(this + 95) = 0;
  *(this + 384) = 0;
  *(this + 544) = 0;
  *(this + 552) = 0;
  *(this + 656) = 0;
  *(this + 440) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 664), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 744), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 824), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 904), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 984), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 1064), 0, 0);
  return this;
}

void sub_1DDBCCF1C(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 123));
  DspLib::ComplexVector::~ComplexVector((v1 + 113));
  DspLib::ComplexVector::~ComplexVector((v1 + 103));
  DspLib::ComplexVector::~ComplexVector((v1 + 93));
  DspLib::ComplexVector::~ComplexVector((v1 + 83));
  std::optional<DspLib::FFT::BufferedForwardSTFT>::~optional((v1 + 69));
  std::optional<DspLib::FFT::BufferedForwardSTFT>::~optional((v1 + 55));
  v5 = v1[52];
  if (v5)
  {
    v1[53] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[50] = v6;
    operator delete(v6);
  }

  DspLib::OnePoleSmoother::~OnePoleSmoother((v1 + 7));
  v7 = *v2;
  if (*v2)
  {
    v1[4] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

DspLib::LoudspeakerSystemIDV2::ModelFit *DspLib::LoudspeakerSystemIDV2::ModelFit::ModelFit(DspLib::LoudspeakerSystemIDV2::ModelFit *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 0;
  DspLib::ComplexVector::ComplexVector((this + 8), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 88), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 168), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 248), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 328), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 408), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 488), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 568), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 648), 0, 0);
  *(this + 182) = 0;
  DspLib::ComplexVector::ComplexVector((this + 736), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 816), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 896), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 976), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 1056), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 1136), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 1216), 0, 0);
  *(this + 1304) = 0;
  *(this + 162) = 0;
  *(this + 164) = 0;
  *(this + 166) = 0;
  *(this + 165) = 0;
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel((this + 1336));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel((this + 2440));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel((this + 3544));
  DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::LR2InductanceModel((this + 4648));
  return this;
}

void sub_1DDBCD12C(_Unwind_Exception *a1)
{
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((v1 + 3544));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((v1 + 2440));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((v1 + 1336));
  DspLib::ComplexVector::~ComplexVector((v1 + 1216));
  DspLib::ComplexVector::~ComplexVector((v1 + 1136));
  DspLib::ComplexVector::~ComplexVector((v1 + 1056));
  DspLib::ComplexVector::~ComplexVector((v1 + 976));
  DspLib::ComplexVector::~ComplexVector((v1 + 896));
  DspLib::ComplexVector::~ComplexVector((v1 + 816));
  DspLib::ComplexVector::~ComplexVector((v1 + 736));
  DspLib::ComplexVector::~ComplexVector((v1 + 648));
  DspLib::ComplexVector::~ComplexVector((v1 + 568));
  DspLib::ComplexVector::~ComplexVector((v1 + 488));
  DspLib::ComplexVector::~ComplexVector((v1 + 408));
  DspLib::ComplexVector::~ComplexVector((v1 + 328));
  DspLib::ComplexVector::~ComplexVector((v1 + 248));
  DspLib::ComplexVector::~ComplexVector((v1 + 168));
  DspLib::ComplexVector::~ComplexVector((v1 + 88));
  DspLib::ComplexVector::~ComplexVector((v1 + 8));
  _Unwind_Resume(a1);
}

DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel(DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *this)
{
  *(this + 6) = 0;
  *(this + 28) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 26) = 0u;
  DspLib::ComplexMatrix::ComplexMatrix((this + 64), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 160), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 240), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 336), 0, 0);
  *(this + 106) = 0;
  *(this + 104) = 0;
  *(this + 419) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  DspLib::ComplexVector::ComplexVector((this + 456), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 536), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 632), 0, 0);
  *(this + 91) = 0;
  *(this + 712) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 736), 0, 0);
  *(this + 209) = 0;
  *(this + 420) = 0;
  *(this + 51) = 0u;
  *(this + 416) = 0;
  DspLib::ComplexVector::ComplexVector((this + 848), 0, 0);
  *(this + 952) = 0;
  *(this + 118) = 0;
  *(this + 58) = 0u;
  *(this + 980) = 0;
  *(this + 956) = 0;
  *(this + 964) = 0u;
  *(this + 274) = 0;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  return this;
}

void sub_1DDBCD3A4(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 92));
  v4 = *v2;
  if (*v2)
  {
    v1[90] = v4;
    operator delete(v4);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 79));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 67));
  DspLib::ComplexVector::~ComplexVector((v1 + 57));
  DspLib::ComplexVector::~ComplexVector((v1 + 42));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 30));
  DspLib::ComplexVector::~ComplexVector((v1 + 20));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 8));
  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::LR2InductanceModel(DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *this)
{
  *(this + 6) = 0;
  *(this + 28) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 28) = 0u;
  DspLib::ComplexMatrix::ComplexMatrix((this + 64), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 160), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 240), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 336), 0, 0);
  *(this + 53) = 0;
  *(this + 108) = 0;
  *(this + 104) = 0;
  *(this + 419) = 0;
  DspLib::ComplexVector::ComplexVector((this + 440), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 520), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 616), 0, 0);
  *(this + 89) = 0;
  *(this + 696) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 720), 0, 0);
  *(this + 204) = 0;
  *(this + 50) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 824), 0, 0);
  *(this + 113) = 0;
  *(this + 909) = 0;
  *(this + 115) = 0;
  *(this + 925) = 0;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 964) = 0u;
  return this;
}

void sub_1DDBCD578(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 90));
  v4 = *v2;
  if (*v2)
  {
    v1[88] = v4;
    operator delete(v4);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 77));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 65));
  DspLib::ComplexVector::~ComplexVector((v1 + 55));
  DspLib::ComplexVector::~ComplexVector((v1 + 42));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 30));
  DspLib::ComplexVector::~ComplexVector((v1 + 20));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 8));
  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void std::allocator<DspLib::LoudspeakerSystemIDV2::SystemID>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2BC739A142DD5)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::LoudspeakerSystemIDV2::SystemID>,DspLib::LoudspeakerSystemIDV2::SystemID*>(uint64_t a1, DspLib::LoudspeakerSystemIDV2::SystemID *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = DspLib::LoudspeakerSystemIDV2::SystemID::SystemID(a4, v8);
      v8 += 1497;
      a4 = v9 + 23952;
      v7 -= 23952;
    }

    while (v8 != a3);
    for (; v6 != a3; v6 = (v6 + 23952))
    {
      DspLib::LoudspeakerSystemIDV2::SystemID::~SystemID(v6);
    }
  }
}

void sub_1DDBCD718(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = (v2 - v1);
    do
    {
      DspLib::LoudspeakerSystemIDV2::SystemID::~SystemID(v4);
      v4 = (v5 - 23952);
      v1 += 23952;
    }

    while (v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::LoudspeakerSystemIDV2::SystemID::SystemID(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::ImpedanceMeasurement(a1 + 48, (a2 + 3));
  DspLib::LoudspeakerSystemIDV2::ModelFit::ModelFit(a1 + 1192, a2 + 1192);
  *(a1 + 6824) = *(a2 + 853);
  *(a1 + 6832) = 0;
  *(a1 + 6840) = 0u;
  *(a1 + 6832) = a2[427];
  *(a1 + 6848) = *(a2 + 856);
  *(a2 + 856) = 0;
  a2[427] = 0u;
  *(a1 + 6856) = *(a2 + 6856);
  *(a1 + 6880) = 0u;
  *(a1 + 6872) = 0;
  *(a1 + 6872) = *(a2 + 859);
  *(a1 + 6880) = a2[430];
  *(a2 + 6872) = 0u;
  *(a2 + 861) = 0;
  *(a1 + 6896) = *(a2 + 862);
  *(a1 + 6912) = 0;
  *(a1 + 6920) = 0;
  *(a1 + 6904) = 0;
  *(a1 + 6904) = *(a2 + 6904);
  *(a1 + 6920) = *(a2 + 865);
  *(a2 + 863) = 0;
  *(a2 + 864) = 0;
  *(a2 + 865) = 0;
  DspLib::ComplexVector::ComplexVector((a1 + 6928), (a2 + 433));
  memcpy((a1 + 7008), a2 + 438, 0x4000uLL);
  v6 = *(a2 + 5850);
  *(a1 + 23392) = *(a2 + 2924);
  *(a1 + 23400) = v6;
  *(a1 + 23408) = 0;
  *(a1 + 23416) = 0u;
  *(a1 + 23408) = a2[1463];
  *(a1 + 23424) = *(a2 + 2928);
  *(a2 + 2928) = 0;
  a2[1463] = 0u;
  *(a1 + 23432) = *(a2 + 2929);
  *(a1 + 23440) = *(a2 + 2930);
  *(a1 + 23448) = *(a2 + 23448);
  *(a1 + 23456) = a2[1466];
  *(a1 + 23480) = 0u;
  *(a1 + 23472) = 0;
  *(a1 + 23472) = a2[1467];
  *(a1 + 23488) = *(a2 + 2936);
  a2[1467] = 0u;
  *(a2 + 2936) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 23496), (a2 + 23496));
  *(a1 + 23520) = a2[1470];
  v7 = *(a2 + 2942);
  *(a1 + 23544) = *(a2 + 5886);
  *(a1 + 23536) = v7;
  v8 = a2[1477];
  v9 = a2[1478];
  v10 = a2[1479];
  *(a1 + 23616) = a2[1476];
  *(a1 + 23664) = v10;
  *(a1 + 23648) = v9;
  *(a1 + 23632) = v8;
  v11 = *(a2 + 11864);
  v12 = a2[1481];
  v13 = a2[1482];
  *(a1 + 23680) = a2[1480];
  *(a1 + 23728) = v11;
  *(a1 + 23712) = v13;
  *(a1 + 23696) = v12;
  v14 = a2[1472];
  v15 = a2[1473];
  v16 = a2[1474];
  *(a1 + 23600) = a2[1475];
  *(a1 + 23584) = v16;
  *(a1 + 23568) = v15;
  *(a1 + 23552) = v14;
  *(a1 + 23736) = *(a2 + 23736);
  *(a1 + 23744) = a2[1484];
  *(a1 + 23760) = 0;
  *(a1 + 23768) = 0u;
  *(a1 + 23760) = a2[1485];
  *(a1 + 23776) = *(a2 + 2972);
  *(a2 + 2972) = 0;
  a2[1485] = 0u;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 23784), (a2 + 23784));
  *(a1 + 23808) = *(a2 + 23808);
  *(a1 + 23816) = *(a2 + 23816);
  *(a1 + 23840) = 0;
  *(a1 + 23848) = 0;
  *(a1 + 23832) = 0;
  *(a1 + 23832) = *(a2 + 23832);
  *(a1 + 23848) = *(a2 + 2981);
  *(a2 + 2979) = 0;
  *(a2 + 2980) = 0;
  *(a2 + 2981) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 23856), a2 + 1491);
  v17 = *(a2 + 23880);
  v18 = *(a2 + 23896);
  *(a1 + 23908) = *(a2 + 23908);
  *(a1 + 23880) = v17;
  *(a1 + 23896) = v18;
  *(a1 + 23928) = 0;
  *(a1 + 23936) = 0u;
  *(a1 + 23928) = *(a2 + 2991);
  *(a1 + 23936) = a2[1496];
  *(a2 + 23928) = 0u;
  *(a2 + 2993) = 0;
  return a1;
}

void sub_1DDBCDA7C(_Unwind_Exception *a1)
{
  v7 = *(v5 + 384);
  if (v7)
  {
    v1[2980] = v7;
    operator delete(v7);
  }

  DspLib::Biquad::Filter::~Filter((v5 + 288));
  DspLib::LoudspeakerSystemIDV2::AveragePower::~AveragePower(v2);
  DspLib::ComplexVector::~ComplexVector((v1 + v4));
  v8 = *v3;
  if (*v3)
  {
    v1[864] = v8;
    operator delete(v8);
  }

  DspLib::FIRDecimator::~FIRDecimator((v1 + 853));
  DspLib::LoudspeakerSystemIDV2::ModelFit::~ModelFit((v1 + 149));
  DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::~ImpedanceMeasurement((v1 + 6));
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerSystemIDV2::ImpedanceMeasurement::ImpedanceMeasurement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a1 + 88) = 0;
  *(a1 + 72) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 112), (a2 + 112));
  *(a1 + 136) = *(a2 + 136);
  v7 = *(a2 + 216);
  v8 = *(a2 + 232);
  v9 = *(a2 + 248);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 248) = v9;
  *(a1 + 232) = v8;
  *(a1 + 216) = v7;
  v10 = *(a2 + 312);
  v12 = *(a2 + 264);
  v11 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v10;
  *(a1 + 264) = v12;
  *(a1 + 280) = v11;
  v14 = *(a2 + 344);
  v13 = *(a2 + 360);
  v15 = *(a2 + 328);
  *(a1 + 369) = *(a2 + 369);
  *(a1 + 344) = v14;
  *(a1 + 360) = v13;
  *(a1 + 328) = v15;
  v16 = *(a2 + 152);
  v17 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v17;
  *(a1 + 152) = v16;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  std::__optional_move_base<DspLib::FFT::BufferedForwardSTFT,false>::__optional_move_base[abi:ne200100](a1 + 440, a2 + 440);
  std::__optional_move_base<DspLib::FFT::BufferedForwardSTFT,false>::__optional_move_base[abi:ne200100](a1 + 552, a2 + 552);
  DspLib::ComplexVector::ComplexVector((a1 + 664), (a2 + 664));
  DspLib::ComplexVector::ComplexVector((a1 + 744), (a2 + 744));
  DspLib::ComplexVector::ComplexVector((a1 + 824), (a2 + 824));
  DspLib::ComplexVector::ComplexVector((a1 + 904), (a2 + 904));
  DspLib::ComplexVector::ComplexVector((a1 + 984), (a2 + 984));
  DspLib::ComplexVector::ComplexVector((a1 + 1064), (a2 + 1064));
  return a1;
}

void sub_1DDBCDD08(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 123));
  DspLib::ComplexVector::~ComplexVector((v1 + 113));
  DspLib::ComplexVector::~ComplexVector((v1 + 103));
  DspLib::ComplexVector::~ComplexVector((v1 + 93));
  DspLib::ComplexVector::~ComplexVector((v1 + 83));
  std::optional<DspLib::FFT::BufferedForwardSTFT>::~optional((v1 + 69));
  std::optional<DspLib::FFT::BufferedForwardSTFT>::~optional((v1 + 55));
  v6 = v1[52];
  if (v6)
  {
    v1[53] = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v1[50] = v7;
    operator delete(v7);
  }

  DspLib::OnePoleSmoother::~OnePoleSmoother(v2);
  v8 = *v3;
  if (*v3)
  {
    v1[4] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void sub_1DDBCDDBC()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 96) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DDBCDD8CLL);
}

__n128 std::__optional_move_base<DspLib::FFT::BufferedForwardSTFT,false>::__optional_move_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    v2 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v2;
    *(a2 + 8) = 0;
    v3 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = *(a2 + 64);
    result = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = result;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t DspLib::LoudspeakerSystemIDV2::ModelFit::ModelFit(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 88);
  *a1 = *a2;
  v5 = (a1 + 88);
  DspLib::ComplexVector::ComplexVector((a1 + 8), (a2 + 8));
  DspLib::ComplexVector::ComplexVector(v5, v4);
  DspLib::ComplexVector::ComplexVector((a1 + 168), (a2 + 168));
  DspLib::ComplexVector::ComplexVector((a1 + 248), (a2 + 248));
  DspLib::ComplexVector::ComplexVector((a1 + 328), (a2 + 328));
  DspLib::ComplexVector::ComplexVector((a1 + 408), (a2 + 408));
  DspLib::ComplexVector::ComplexVector((a1 + 488), (a2 + 488));
  DspLib::ComplexVector::ComplexVector((a1 + 568), (a2 + 568));
  DspLib::ComplexVector::ComplexVector((a1 + 648), (a2 + 648));
  *(a1 + 728) = *(a2 + 728);
  DspLib::ComplexVector::ComplexVector((a1 + 736), (a2 + 736));
  DspLib::ComplexVector::ComplexVector((a1 + 816), (a2 + 816));
  DspLib::ComplexVector::ComplexVector((a1 + 896), (a2 + 896));
  DspLib::ComplexVector::ComplexVector((a1 + 976), (a2 + 976));
  DspLib::ComplexVector::ComplexVector((a1 + 1056), (a2 + 1056));
  DspLib::ComplexVector::ComplexVector((a1 + 1136), (a2 + 1136));
  DspLib::ComplexVector::ComplexVector((a1 + 1216), (a2 + 1216));
  v6 = *(a2 + 1296);
  v7 = *(a2 + 1312);
  *(a1 + 1328) = *(a2 + 1328);
  *(a1 + 1312) = v7;
  *(a1 + 1296) = v6;
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel(a1 + 1336, a2 + 1336);
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel(a1 + 2440, a2 + 2440);
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel(a1 + 3544, a2 + 3544);
  DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::LR2InductanceModel(a1 + 4648, a2 + 4648);
  return a1;
}

void sub_1DDBCDF98(_Unwind_Exception *a1)
{
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((v1 + 3544));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((v1 + 2440));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::~SingleResonanceModel((v1 + 1336));
  DspLib::ComplexVector::~ComplexVector((v1 + 1216));
  DspLib::ComplexVector::~ComplexVector((v1 + 1136));
  DspLib::ComplexVector::~ComplexVector((v1 + 1056));
  DspLib::ComplexVector::~ComplexVector((v1 + 976));
  DspLib::ComplexVector::~ComplexVector((v1 + 896));
  DspLib::ComplexVector::~ComplexVector((v1 + 816));
  DspLib::ComplexVector::~ComplexVector((v1 + 736));
  DspLib::ComplexVector::~ComplexVector((v1 + 648));
  DspLib::ComplexVector::~ComplexVector((v1 + 568));
  DspLib::ComplexVector::~ComplexVector((v1 + 488));
  DspLib::ComplexVector::~ComplexVector((v1 + 408));
  DspLib::ComplexVector::~ComplexVector((v1 + 328));
  DspLib::ComplexVector::~ComplexVector((v1 + 248));
  DspLib::ComplexVector::~ComplexVector((v1 + 168));
  DspLib::ComplexVector::~ComplexVector(v2);
  DspLib::ComplexVector::~ComplexVector((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::SingleResonanceModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 32) = v4;
  DspLib::ComplexMatrix::ComplexMatrix((a1 + 64), (a2 + 64));
  DspLib::ComplexVector::ComplexVector((a1 + 160), (a2 + 160));
  DspLib::ComplexMatrix::ComplexMatrix((a1 + 240), (a2 + 240));
  DspLib::ComplexVector::ComplexVector((a1 + 336), (a2 + 336));
  v5 = *(a2 + 416);
  v6 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 416) = v5;
  *(a1 + 432) = v6;
  DspLib::ComplexVector::ComplexVector((a1 + 456), (a2 + 456));
  DspLib::ComplexMatrix::ComplexMatrix((a1 + 536), (a2 + 536));
  DspLib::ComplexVector::ComplexVector((a1 + 632), (a2 + 632));
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  DspLib::ComplexVector::ComplexVector((a1 + 736), (a2 + 736));
  v7 = *(a2 + 816);
  *(a1 + 826) = *(a2 + 826);
  *(a1 + 816) = v7;
  DspLib::ComplexVector::ComplexVector((a1 + 848), (a2 + 848));
  v8 = *(a2 + 928);
  v9 = *(a2 + 960);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = v9;
  *(a1 + 928) = v8;
  v10 = *(a2 + 976);
  v11 = *(a2 + 992);
  v12 = *(a2 + 1024);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = v12;
  *(a1 + 976) = v10;
  *(a1 + 992) = v11;
  v13 = *(a2 + 1040);
  v14 = *(a2 + 1056);
  v15 = *(a2 + 1072);
  *(a1 + 1084) = *(a2 + 1084);
  *(a1 + 1072) = v15;
  *(a1 + 1056) = v14;
  *(a1 + 1040) = v13;
  return a1;
}

void sub_1DDBCE240(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 92));
  v5 = *v3;
  if (*v3)
  {
    v1[90] = v5;
    operator delete(v5);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 79));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 67));
  DspLib::ComplexVector::~ComplexVector((v1 + 57));
  DspLib::ComplexVector::~ComplexVector((v1 + 42));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 30));
  DspLib::ComplexVector::~ComplexVector((v1 + 20));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 8));
  v6 = *v2;
  if (*v2)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::LR2InductanceModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 32) = v4;
  DspLib::ComplexMatrix::ComplexMatrix((a1 + 64), (a2 + 64));
  DspLib::ComplexVector::ComplexVector((a1 + 160), (a2 + 160));
  DspLib::ComplexMatrix::ComplexMatrix((a1 + 240), (a2 + 240));
  DspLib::ComplexVector::ComplexVector((a1 + 336), (a2 + 336));
  v5 = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 416) = v5;
  DspLib::ComplexVector::ComplexVector((a1 + 440), (a2 + 440));
  DspLib::ComplexMatrix::ComplexMatrix((a1 + 520), (a2 + 520));
  DspLib::ComplexVector::ComplexVector((a1 + 616), (a2 + 616));
  *(a1 + 712) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = *(a2 + 712);
  *(a2 + 712) = 0;
  *(a2 + 696) = 0u;
  DspLib::ComplexVector::ComplexVector((a1 + 720), (a2 + 720));
  v6 = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 800) = v6;
  DspLib::ComplexVector::ComplexVector((a1 + 824), (a2 + 824));
  *(a1 + 904) = *(a2 + 904);
  v7 = *(a2 + 920);
  v8 = *(a2 + 936);
  v9 = *(a2 + 952);
  *(a1 + 964) = *(a2 + 964);
  *(a1 + 936) = v8;
  *(a1 + 952) = v9;
  *(a1 + 920) = v7;
  return a1;
}

void sub_1DDBCE438(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 90));
  v5 = *v3;
  if (*v3)
  {
    v1[88] = v5;
    operator delete(v5);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 77));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 65));
  DspLib::ComplexVector::~ComplexVector((v1 + 55));
  DspLib::ComplexVector::~ComplexVector((v1 + 42));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 30));
  DspLib::ComplexVector::~ComplexVector((v1 + 20));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 8));
  v6 = *v2;
  if (*v2)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<DspLib::LoudspeakerSystemIDV2::SystemID>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 23952;
    DspLib::LoudspeakerSystemIDV2::SystemID::~SystemID((i - 23952));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t telemetry::Item::ItemFromEnum(telemetry::Item *this)
{
  if (this <= 1936741935)
  {
    if (this > 1936738611)
    {
      if (this <= 1936738613)
      {
        if (this == 1936738612)
        {
          v1 = 0x400000000;
        }

        else
        {
          v1 = 0x500000000;
        }

        goto LABEL_34;
      }

      if (this == 1936738614)
      {
        v1 = 0x600000000;
        goto LABEL_34;
      }

      if (this == 1936738615)
      {
        v1 = 0x700000000;
        goto LABEL_34;
      }
    }

    else
    {
      if (this > 1936738609)
      {
        if (this == 1936738610)
        {
          v1 = 0x200000000;
        }

        else
        {
          v1 = 0x300000000;
        }

        goto LABEL_34;
      }

      if (this == 1936738608)
      {
        v1 = 0;
        goto LABEL_34;
      }

      if (this == 1936738609)
      {
        v1 = 0x100000000;
LABEL_34:
        v2 = 1;
        return v1 | v2;
      }
    }

LABEL_37:
    __cxa_rethrow();
  }

  if (this > 1936741939)
  {
    if (this > 1936741941)
    {
      if (this == 1936741942)
      {
        v2 = 0;
        v1 = 0x600000000;
        return v1 | v2;
      }

      if (this != 1936741943)
      {
        goto LABEL_37;
      }

      v2 = 0;
      v1 = 0x700000000;
    }

    else
    {
      v2 = 0;
      if (this == 1936741940)
      {
        v1 = 0x400000000;
      }

      else
      {
        v1 = 0x500000000;
      }
    }
  }

  else if (this > 1936741937)
  {
    v2 = 0;
    if (this == 1936741938)
    {
      v1 = 0x200000000;
    }

    else
    {
      v1 = 0x300000000;
    }
  }

  else
  {
    v2 = 0;
    if (this == 1936741936)
    {
      v1 = 0;
    }

    else
    {
      v1 = 0x100000000;
    }
  }

  return v1 | v2;
}

uint64_t DspLib::LoudspeakerSystemIDV2::Algorithm::Algorithm(const char *a1)
{
  result = printf("DSP Sound assertion in %s at line %d\n", a1, 26);
  ++DspLibDebug::mAssertCounter;
  return result;
}

void DspLib::FFT::ForwardSTFT::process(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (*a1 != v6)
  {
    DspLib::copy((*(a1 + 64) + 4 * *(a1 + 72) - 4 * (*(a1 + 72) - v6)), *(a1 + 72) - v6, *(a1 + 64));
    DspLib::copy(a2, a3, (*(a1 + 64) + 4 * *(a1 + 72) - 4 * *(a1 + 16)));
  }

  DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::windowAndTransform<(DspLib::FFT::Direction)1>(a1);
}

void DspLib::FFT::InverseSTFT::transformAndWOLA(DspLib::FFT::InverseSTFT *this, const DSPSplitComplex *a2)
{
  if (*this == *(this + 2))
  {

    DspLib::FFT::STFTBase<(DspLib::FFT::Direction)-1>::transformAndWindow<(DspLib::FFT::Direction)-1>(this);
  }

  MEMORY[0x1EEE9AC00](this);
  DspLib::FFT::STFTBase<(DspLib::FFT::Direction)-1>::transformAndWindow<(DspLib::FFT::Direction)-1>(this);
}

void DspLib::FFT::STFTBase<(DspLib::FFT::Direction)-1>::transformAndWindow<(DspLib::FFT::Direction)-1>(uint64_t a1)
{
  var30[7] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1EEE9AC00](a1);
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(v1, v3, ((var30 - v2) & 0xFFFFFFFFFFFFFFC0));
  DspLib::multiply();
}

vDSP_Length *DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(vDSP_Length *a1, vDSP_Length a2, vDSP_Length a3, vDSP_Length a4, int a5)
{
  v7 = DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::STFTBase(a1, a2, a3, a4);
  v7[10] = 0;
  v7[11] = 0;
  v8 = v7 + 10;
  *(v7 + 24) = a5;
  DspLib::clear(v7[8], v7[9]);
  *v8 = 0;
  v8[1] = 0;
  return a1;
}

void DspLib::FFT::BufferedForwardSTFT::reset(DspLib::FFT::BufferedForwardSTFT *this)
{
  DspLib::clear(*(this + 8), *(this + 9));
  *(this + 10) = 0;
  *(this + 11) = 0;
}

unint64_t DspLib::FFT::BufferedForwardSTFT::addInput(uint64_t a1, void *__src, unint64_t a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
    DspLib::copy((*(a1 + 64) + 4 * *(a1 + 72) - 4 * (*(a1 + 72) - v6)), *(a1 + 72) - v6, *(a1 + 64));
    v6 = 0;
    *(a1 + 80) = 0;
    v7 = *(a1 + 16);
  }

  *(a1 + 88) = 0;
  if (v7 <= v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v7 - v8;
  if (a3 >= v9)
  {
    a3 = v9;
  }

  if (a3)
  {
    if (*(a1 + 96) == 1)
    {
      DspLib::copy((*(a1 + 64) + 4 * *(a1 + 72) - 4 * (*(a1 + 72) - a3)), *(a1 + 72) - a3, *(a1 + 64));
      DspLib::copy(__src, a3, (*(a1 + 64) + 4 * *(a1 + 72) - 4 * a3));
      DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::windowAndTransform<(DspLib::FFT::Direction)1>(a1);
    }

    DspLib::copy(__src, a3, (*(a1 + 64) + 4 * *(a1 + 72) - 4 * v7 + 4 * v6));
    v10 = *(a1 + 80) + a3;
    *(a1 + 80) = v10;
    if (v10 == *(a1 + 16))
    {
      DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::windowAndTransform<(DspLib::FFT::Direction)1>(a1);
    }
  }

  return a3;
}

void *DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::copyStatesFrom(void *result, uint64_t a2)
{
  v2 = result;
  if (result != a2)
  {
    result = std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(result + 5, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  }

  v3 = *v2;
  v2[8] = v2[5] + (-*(v2 + 40) & 0x3C);
  v2[9] = v3;
  return result;
}

vDSP_Length *DspLib::FFT::BufferedInverseSTFT::BufferedInverseSTFT(vDSP_Length *a1, vDSP_Length a2, vDSP_Length a3, vDSP_Length a4, int a5)
{
  v7 = DspLib::FFT::STFTBase<(DspLib::FFT::Direction)-1>::STFTBase(a1, a2, a3, a4);
  v7[10] = 0;
  *(v7 + 22) = a5;
  DspLib::clear(v7[8], a1[9]);
  a1[10] = 0;
  return a1;
}

void DspLib::FFT::InverseSTFT::~InverseSTFT(DspLib::FFT::InverseSTFT *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(this);
}

uint64_t DspLib::FFT::BufferedInverseSTFT::getOutput(void *a1, void *__dst, unint64_t a3)
{
  v3 = a1[10];
  if (a3 >= a1[2] - v3)
  {
    v4 = a1[2] - v3;
  }

  else
  {
    v4 = a3;
  }

  if (v4)
  {
    if (v4 == -1)
    {
      v7 = a1[9] - v3;
    }

    else
    {
      v7 = v4;
    }

    DspLib::copy((a1[8] + 4 * v3), v7, __dst);
    a1[10] += v4;
  }

  return v4;
}

vDSP_Length *DspLib::FFT::PartialFrameForwardSTFT::PartialFrameForwardSTFT(vDSP_Length *a1, vDSP_Length a2, vDSP_Length a3, vDSP_Length a4)
{
  v5 = DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::STFTBase(a1, a2, a3, a4);
  v5[10] = 0;
  DspLib::clear(v5[8], a1[9]);
  a1[10] = 0;
  return a1;
}

void DspLib::FFT::PartialFrameForwardSTFT::process(uint64_t a1, void *__src, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  vars8 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 80);
  if (a3 == v9)
  {
    if (!v10)
    {
      DspLib::FFT::ForwardSTFT::process(a1, __src, a3);
    }
  }

  else if (!v10)
  {
    DspLib::copy((*(a1 + 64) + 4 * *(a1 + 72) - 4 * (*(a1 + 72) - v9)), *(a1 + 72) - v9, *(a1 + 64));
    v9 = *(a1 + 16);
    v10 = *(a1 + 80);
  }

  if (v9 - v10 < v5)
  {
    v5 = v9 - v10;
  }

  v11 = DspLib::copy(__src, v5, (*(a1 + 64) + 4 * *(a1 + 72) - 4 * v9 + 4 * v10));
  v12 = *(a1 + 16);
  v13 = *(a1 + 80);
  v14 = v12 - (v13 + v5);
  if (v13)
  {
    v21[5] = v21;
    v21[6] = a4;
    HIDWORD(v22) = v5 == -1;
    MEMORY[0x1EEE9AC00](v11);
    v16 = ((v21 - v15) & 0xFFFFFFFFFFFFFFC0);
    v17 = (a1 + 16);
    DspLib::clear(v16, v8 - *(a1 + 16) + *(a1 + 80));
    v18 = &v16[v8];
    DspLib::copy(__src, v5, &v18[*(a1 + 80) - *(a1 + 16)]);
    v19 = *(a1 + 80) + v5;
    if (v14 == -1)
    {
      v20 = *v17 - v19;
    }

    else
    {
      v20 = v14;
    }

    DspLib::clear(&v18[v19 - *v17], v20);
    DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::windowAndTransform<(DspLib::FFT::Direction)1>(a1);
  }

  DspLib::clear((*(a1 + 64) + 4 * *(a1 + 72) - 4 * v12 + 4 * v5), v14);
  DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::windowAndTransform<(DspLib::FFT::Direction)1>(a1);
}

vDSP_Length *DspLib::FFT::PartialFrameInverseSTFT::PartialFrameInverseSTFT(vDSP_Length *a1, vDSP_Length a2, vDSP_Length a3, vDSP_Length a4)
{
  v5 = DspLib::FFT::STFTBase<(DspLib::FFT::Direction)-1>::STFTBase(a1, a2, a3, a4);
  v5[10] = 0;
  DspLib::clear(v5[8], a1[9]);
  a1[10] = 0;
  return a1;
}

void DspLib::FFT::PartialFrameInverseSTFT::process(DspLib::FFT::InverseSTFT *this, const DSPSplitComplex *a2)
{
  if (*(this + 10) < *(this + 2))
  {
    MEMORY[0x1EEE9AC00](this);
    DspLib::FFT::STFTBase<(DspLib::FFT::Direction)-1>::transformAndWindow<(DspLib::FFT::Direction)-1>(this);
  }

  DspLib::FFT::InverseSTFT::transformAndWOLA(this, a2);
}

double DspLib::FFT::Filterbank::Filterbank(DspLib::FFT::Filterbank *this, char a2)
{
  v3 = DspLib::AlgorithmBase::AlgorithmBase(this, &_ZGRN6DspLib3FFT10ParametersL8kDefaultE__0, 0xAuLL, &_ZGRN6DspLib3FFT10ParametersL8kMinimumE_, 10, &_ZGRN6DspLib3FFT10ParametersL8kMaximumE_, 10);
  *v3 = &unk_1F5919E40;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 240) = 0;
  *(v3 + 264) = a2;
  result = 0.0;
  *(v3 + 268) = 0u;
  *(v3 + 284) = 0u;
  *(v3 + 300) = 0u;
  *(v3 + 316) = 0u;
  *(v3 + 332) = 0u;
  *(v3 + 348) = 0u;
  *(v3 + 364) = 0u;
  *(v3 + 380) = 0u;
  *(v3 + 392) = 0u;
  return result;
}

void DspLib::FFT::Filterbank::~Filterbank(DspLib::FFT::Filterbank *this)
{
  *this = &unk_1F5919E40;
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  DspLib::FFT::Filterbank::cleanup(this);
  v5 = (this + 384);
  std::vector<DspLib::FFT::BufferedInverseSTFT>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 360);
  std::vector<DspLib::FFT::BufferedForwardSTFT>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 336);
  std::vector<DspLib::ComplexVector>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    *(this + 31) = v4;
    operator delete(v4);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

{
  DspLib::FFT::Filterbank::~Filterbank(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t DspLib::FFT::Filterbank::initialize(DspLib::FFT::Filterbank *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    *(this + 8) = 1;
    (*(*this + 160))(this);
    v5 = (*(*this + 64))(this);
    std::vector<float *>::resize(this + 30, v5);
    (*(*this + 168))(this);
  }

  return v4;
}

void DspLib::FFT::Filterbank::uninitialize(DspLib::FFT::Filterbank *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  DspLib::FFT::Filterbank::cleanup(this);
}

void DspLib::FFT::Filterbank::cleanup(DspLib::FFT::Filterbank *this)
{
  v2 = *(this + 43);
  v3 = *(this + 42);
  while (v2 != v3)
  {
    DspLib::ComplexVector::~ComplexVector((v2 - 80));
  }

  *(this + 43) = v3;
  v5 = *(this + 45);
  for (i = *(this + 46); i != v5; DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT(i))
  {
    i = (i - 104);
  }

  *(this + 46) = v5;
  v7 = *(this + 48);
  for (j = *(this + 49); j != v7; DspLib::FFT::InverseSTFT::~InverseSTFT(j))
  {
    j = (j - 96);
  }

  *(this + 49) = v7;
  *(this + 37) = *(this + 36);
  *(this + 40) = *(this + 39);
  *(this + 31) = *(this + 30);
  *(this + 34) = 0;
}

void DspLib::FFT::Filterbank::reset(DspLib::FFT::Filterbank *this)
{
  v2 = *(this + 42);
  v3 = *(this + 43);
  while (v2 != v3)
  {
    DspLib::ComplexVector::operator=(v2, 0.0);
    v2 += 80;
  }

  v4 = *(this + 45);
  v5 = *(this + 46);
  while (v4 != v5)
  {
    DspLib::clear(*(v4 + 64), *(v4 + 72));
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    v4 += 104;
  }

  v7 = *(this + 48);
  v6 = *(this + 49);
  while (v7 != v6)
  {
    DspLib::clear(*(v7 + 64), *(v7 + 72));
    *(v7 + 80) = 0;
    v7 += 96;
  }
}

void DspLib::FFT::Filterbank::copyStatesFrom(DspLib::ComplexVector **this, DspLib::ComplexVector **a2)
{
  if (this != a2)
  {
    std::vector<DspLib::ComplexVector>::__assign_with_size[abi:ne200100]<DspLib::ComplexVector*,DspLib::ComplexVector*>((this + 42), a2[42], a2[43], 0xCCCCCCCCCCCCCCCDLL * ((a2[43] - a2[42]) >> 4));
  }

  v4 = this[45];
  if (this[46] != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = 104 * v5;
      v8 = v4 + v7;
      v9 = a2[45] + v7;
      DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::copyStatesFrom((v4 + v7), v9);
      *(v8 + 80) = *(v9 + 80);
      v5 = v6;
      v4 = this[45];
      v10 = 0x4EC4EC4EC4EC4EC5 * ((this[46] - v4) >> 3) > v6++;
    }

    while (v10);
  }

  v11 = this[48];
  if (this[49] != v11)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = 3 * v12;
      v15 = (v11 + 32 * v14);
      v16 = a2[48] + 32 * v14;
      DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::copyStatesFrom(v15, v16);
      v15[10] = *(v16 + 80);
      v12 = v13;
      v11 = this[48];
      v10 = 0xAAAAAAAAAAAAAAABLL * ((this[49] - v11) >> 5) > v13++;
    }

    while (v10);
  }
}

void DspLib::FFT::Filterbank::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    v6 = *(a1 + 24);
    v7 = 1 << vcvtas_u32_f32(*v6);
    v8 = vcvtas_u32_f32(((v6[1] / -100.0) + 1.0) * v7);
    v9 = vcvtas_u32_f32(fmaxf(v6[3], 0.0));
    if (v7 != *(a1 + 272) || *(a1 + 280) != v8 || *(a1 + 268) != v9)
    {
      DspLib::FFT::Filterbank::cleanup(a1);
      *(a1 + 272) = v7;
      *(a1 + 280) = v8;
      *(a1 + 268) = v9;
      std::vector<float>::resize((a1 + 288), v7);
      v11 = *(a1 + 360);
      for (i = *(a1 + 368); i != v11; DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT(i))
      {
        i = (i - 104);
      }

      *(a1 + 368) = v11;
      if ((*(*a1 + 64))(a1))
      {
        v12 = 0;
        do
        {
          v13 = *(a1 + 368);
          v14 = a1 + 360;
          v15 = (a1 + 288);
          v16 = (a1 + 280);
          v17 = (a1 + 268);
          if (v13 >= *(a1 + 376))
          {
            v18 = std::vector<DspLib::FFT::BufferedForwardSTFT>::__emplace_back_slow_path<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(v14, v15, v16, v17);
          }

          else
          {
            std::vector<DspLib::FFT::BufferedForwardSTFT>::__construct_one_at_end[abi:ne200100]<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(v14, v15, v16, v17);
            v18 = v13 + 104;
          }

          *(a1 + 368) = v18;
          ++v12;
        }

        while (v12 < (*(*a1 + 64))(a1));
      }

      if (*(a1 + 264))
      {
        std::vector<float>::resize((a1 + 312), *(a1 + 272));
        v20 = *(a1 + 384);
        for (j = *(a1 + 392); j != v20; DspLib::FFT::InverseSTFT::~InverseSTFT(j))
        {
          j = (j - 96);
        }

        *(a1 + 392) = v20;
        if ((*(*a1 + 64))(a1))
        {
          v21 = 0;
          do
          {
            v22 = *(a1 + 392);
            v23 = a1 + 384;
            v24 = (a1 + 312);
            v25 = (a1 + 280);
            v26 = (a1 + 268);
            if (v22 >= *(a1 + 400))
            {
              v27 = std::vector<DspLib::FFT::BufferedInverseSTFT>::__emplace_back_slow_path<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(v23, v24, v25, v26);
            }

            else
            {
              std::vector<DspLib::FFT::BufferedInverseSTFT>::__construct_one_at_end[abi:ne200100]<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(v23, v24, v25, v26);
              v27 = v22 + 96;
            }

            *(a1 + 392) = v27;
            ++v21;
          }

          while (v21 < (*(*a1 + 64))(a1));
        }
      }

      if ((*(*a1 + 64))(a1))
      {
        v28 = 0;
        do
        {
          v29 = *(a1 + 272) >> 1;
          v48 = v29;
          v30 = *(a1 + 344);
          if (v30 >= *(a1 + 352))
          {
            v31 = std::vector<DspLib::ComplexVector>::__emplace_back_slow_path<unsigned long>(a1 + 336, &v48);
          }

          else
          {
            DspLib::ComplexVector::ComplexVector(*(a1 + 344), v29, 0);
            v31 = v30 + 80;
            *(a1 + 344) = v30 + 80;
          }

          *(a1 + 344) = v31;
          ++v28;
        }

        while (v28 < (*(*a1 + 64))(a1));
      }
    }

    v32 = vcvtas_u32_f32(*(*(a1 + 24) + 8));
    v33 = *(a1 + 288);
    v34 = *(a1 + 296);
    v35 = v34 - v33;
    if (v32 <= 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v37 = *(a1 + 280);
          DspLib::makeSymmetricHannWindow(*(a1 + 288), v34 - v33);
          v38 = 0.0;
          if (v34 != v33)
          {
            v39 = 1;
            v40 = v33;
            do
            {
              v41 = *v40++;
              v38 = v38 + v41;
              v42 = v35 > v39++;
            }

            while (v42);
          }

          v43 = 0.5 / v35;
          DspLib::multiply(v33, v34 - v33, v43 * (v35 / v38));
          v4 = (v37 / ((v35 + 1) * 1.5)) / v43;
        }

        goto LABEL_49;
      }

      v36 = 0.5 / v35;
    }

    else
    {
      if (v32 == 4)
      {
        DspLib::makeSymmetricHannWindow(*(a1 + 288), v34 - v33);
        v44 = 0.0;
        if (v34 != v33)
        {
          v45 = 1;
          v46 = v33;
          do
          {
            v47 = *v46++;
            v44 = v44 + (v47 * v47);
            v42 = v35 > v45++;
          }

          while (v42);
        }

        v4 = 1.0;
        DspLib::multiply(v33, v34 - v33, 1.0 / sqrtf(v44));
        goto LABEL_49;
      }

      if (v32 == 3)
      {
        DspLib::makePeriodicHannWindow(*(a1 + 288), v34 - v33);
        DspLib::sqrt(v33, v34 - v33);
LABEL_48:
        v4 = 1.0;
LABEL_49:
        if (*(a1 + 264) == 1)
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 312), *(a1 + 288), *(a1 + 296), (*(a1 + 296) - *(a1 + 288)) >> 2);
          DspLib::multiply(*(a1 + 312), (*(a1 + 320) - *(a1 + 312)) >> 2, v4);
          DspLib::reverse(*(a1 + 312), (*(a1 + 320) - *(a1 + 312)) >> 2);
        }

        return;
      }

      if (v32 != 2)
      {
        goto LABEL_49;
      }

      v36 = 0.5;
    }

    DspLib::fill(*(a1 + 288), v34 - v33, v36);
    goto LABEL_48;
  }
}

unint64_t DspLib::FFT::Filterbank::audioInput(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    DspLib::FFT::Filterbank::audioInput();
    return 0;
  }

  if (!(*(*a1 + 64))(a1))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = DspLib::FFT::BufferedForwardSTFT::addInput(*(a1 + 360) + v5, *(*a2 + 8 * v6++), a2[2]);
    v5 += 104;
    v4 += 80;
  }

  while (v6 < (*(*a1 + 64))(a1));
  return v7;
}

unint64_t DspLib::FFT::Filterbank::audioInputOutput(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) != 1)
  {
    DspLib::FFT::Filterbank::audioInputOutput();
    return 0;
  }

  if (!(*(*a1 + 64))(a1))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    if (*(a1 + 264) == 1)
    {
      v10 = *(a1 + 384) + v6;
      if (*(v10 + 80) == *(v10 + 16) || *(v10 + 88) == 1)
      {
        DspLib::FFT::InverseSTFT::transformAndWOLA((*(a1 + 384) + v6), (*(a1 + 336) + v7));
      }
    }

    v11 = DspLib::FFT::BufferedForwardSTFT::addInput(*(a1 + 360) + v8, *(*a2 + 8 * v9), a2[2]);
    if (*(a1 + 264) == 1)
    {
      DspLib::FFT::BufferedInverseSTFT::getOutput((*(a1 + 384) + v6), *(*a3 + 8 * v9), a3[2]);
    }

    ++v9;
    v8 += 104;
    v7 += 80;
    v6 += 96;
  }

  while (v9 < (*(*a1 + 64))(a1));
  return v11;
}

unint64_t DspLib::FFT::Filterbank::processBlock(unint64_t result, uint64_t *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = a2[1];
      v7 = *(v4 + 240);
      v8 = *(v4 + 248);
      if (v6)
      {
        v9 = 0;
        v10 = *a2;
        do
        {
          *(v7 + 8 * v9) = *(v10 + 8 * v9) + 4 * v5;
          ++v9;
        }

        while (v6 > v9);
      }

      v12 = v7;
      v13 = (v8 - v7) >> 3;
      v14 = v2 - v5;
      v11[0] = v7;
      v11[1] = v13;
      v11[2] = v2 - v5;
      result = DspLib::FFT::Filterbank::audioInputOutput(v4, &v12, v11);
      v5 = (result + v5);
      v2 = a2[2];
    }

    while (v5 < v2);
  }

  return result;
}

float DspLib::FFT::conjugateMultiply(DSPSplitComplex *__C, DSPSplitComplex *__B, const DspLib::ComplexSpan *a3)
{
  v5 = *__C->realp;
  v6 = *__C->imagp;
  vDSP_zvcmul(__C, 1, __B, 1, __C, 1, __C[1].realp);
  imagp = __B->imagp;
  v8 = __C->imagp;
  *__C->realp = v5 * *__B->realp;
  result = v6 * *imagp;
  *v8 = result;
  return result;
}

float DspLib::FFT::divide(DSPSplitComplex *this, DSPSplitComplex *a2, DspLib::ComplexSpan *a3)
{
  v5 = *this->realp;
  v6 = *this->imagp;
  DspLib::operator/=(this, a2);
  imagp = a2->imagp;
  v8 = this->imagp;
  *this->realp = v5 / *a2->realp;
  result = v6 / *imagp;
  *v8 = result;
  return result;
}

void DspLib::FFT::coherence(uint64_t a1, uint64_t a2, const DSPSplitComplex *a3, float *a4, vDSP_Length a5)
{
  if (a5 < (a3[1].realp + 1))
  {
    DspLib::FFT::coherence();
  }

  else
  {
    vDSP_zcoher(*a1, *a2, a3, a4, a5 - 1);
    imagp = a3->imagp;
    realp = a3[1].realp;
    v12 = *(a1 + 8);
    v13 = *(a2 + 8);
    *a4 = (*a3->realp * *a3->realp) / (**a1 * **a2);
    a4[realp] = (*imagp * *imagp) / (*v12 * *v13);

    DspLib::clip(a4, a5, 0.0, 1.0);
  }
}

float DspLib::FFT::powerSpectrum(DSPSplitComplex *this, DSPSplitComplex *a2, DSPSplitComplex *__C, DspLib::ComplexSpan *a4)
{
  DspLib::ComplexSpan::operator=(__C, a2);

  return DspLib::FFT::conjugateMultiply(__C, this, v6);
}

float DspLib::FFT::amplitude(uint64_t a1, float *__C, vDSP_Length a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a3 > v7)
  {
    __C[v7] = fabsf(*v6);
    v3 = v7;
  }

  __A.realp = *a1;
  __A.imagp = v6;
  v10 = v3;
  vDSP_zvabs(&__A, 1, __C, 1, v3);
  result = fabsf(**a1);
  *__C = result;
  return result;
}

void DspLib::FFT::phase(uint64_t a1, float *__C, vDSP_Length a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a3 > v7)
  {
    v8 = 3.1416;
    if (*v6 >= 0.0)
    {
      v8 = 0.0;
    }

    __C[v7] = v8;
    v3 = v7;
  }

  __A.realp = *a1;
  __A.imagp = v6;
  v11 = v3;
  vDSP_zvphas(&__A, 1, __C, 1, v3);
  v9 = 3.1416;
  if (**a1 >= 0.0)
  {
    v9 = 0.0;
  }

  *__C = v9;
}

void DspLib::FFT::multiply(uint64_t a1, float *a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  if (a3 > v3 + 1)
  {
    DspLib::FFT::multiply();
  }

  else if (a3)
  {
    **a1 = *a2 * **a1;
    if (a3 == v3 + 1)
    {
      **(a1 + 8) = a2[a3 - 1] * **(a1 + 8);
    }

    DspLib::multiply();
  }
}

void DspLib::FFT::addDelay(DspLib::FFT *this, DspLib::ComplexSpan *a2, float a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = (a3 * 3.1416) / v3;
    v5 = *this;
    v6 = *(this + 1);
    for (i = 1; i <= v3; i = (i + 1))
    {
      v8 = __sincosf_stret(v4 * i);
      v9 = 0.0;
      if (v3 == i)
      {
        v10 = v6;
      }

      else
      {
        v10 = v5;
        if (i)
        {
          v9 = v6[i];
          v10 = &v5[i];
        }
      }

      v11 = *v10;
      v12 = (v8.__sinval * v9) + (v8.__cosval * *v10);
      if (i)
      {
        if (v3 == i)
        {
          *v6 = v12;
        }

        else if (v3 > i)
        {
          v5[i] = v12;
          v6[i] = (v11 * -v8.__sinval) + (v8.__cosval * v9);
        }
      }

      else
      {
        *v5 = v12;
      }
    }
  }
}

float DspLib::FFT::impulseResponsePeakInMilliseconds(DspLib::FFT *this, const DspLib::ComplexSpan *a2, float a3, float *a4)
{
  v7 = 2 * *(this + 2);
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform(v17, v7);
  std::vector<float>::vector[abi:ne200100](&__p, v7);
  DspLib::ComplexVector::ComplexVector(&__Z, *(this + 2), this);
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(v17, &__Z, __p);
  DspLib::maxmgvi(__p, (v16 - __p) >> 2);
  v9 = v8;
  v10 = *(this + 2);
  if (a2)
  {
    *a2 = *(__p + v8);
  }

  DspLib::ComplexVector::~ComplexVector(&__Z);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v9 <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = ((v9 - v11) * 1000.0) / a3;
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v17);
  return v12;
}

void sub_1DDBD042C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  DspLib::ComplexVector::~ComplexVector(&a10);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v21 - 64);
  _Unwind_Resume(a1);
}

void DspLib::FFT::interpolate(DspLib *a1, float a2, float a3, float a4, float a5, float a6)
{
  if (a1 >= 1)
  {
    v11 = DspLib::power2dBSafe(a1, (a3 * a3) + (a2 * a2), 1.0e-24);
    v13 = DspLib::power2dBSafe(v12, (a5 * a5) + (a4 * a4), 1.0e-24);
    DspLib::dB2Amp(v14, v11 + (a6 * (v13 - v11)));
    v15 = atan2f(a3, a2);
    v16 = atan2f(a5, a4);
    *v17.i32 = v16 - v15;
    v18.i32[0] = 1086918619;
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    v20 = v16 - *vbslq_s8(v19, v18, v17).i32;
    if (vabds_f32(v16, v15) > 3.1416)
    {
      v16 = v20;
    }

    __sincosf_stret(v15 + (a6 * (v16 - v15)));
  }
}

void DspLib::FFT::resample(DSPSplitComplex *a1, DspLib *a2, float a3, float a4)
{
  realp = a1[1].realp;
  DspLib::ComplexVector::ComplexVector(&__A, realp, 0);
  v9 = 0.0;
  DspLib::ComplexVector::operator=(&__A, 0.0);
  v11 = 0;
  v12 = 0;
  v13 = (a3 / realp) * 0.5;
  v14 = (a4 / realp) * 0.5;
  v42 = 0;
  v15 = a1[1].realp;
  v16 = 0.0;
  do
  {
    v17 = (v14 * v12) / v13;
    v18 = v17;
    v19 = v17 + 1;
    if (v19 > v15)
    {
      if (a2 < 1)
      {
        v42 = 0;
        v23 = 0.0;
        v22 = 0.0;
        if (!v12)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v9 = v16 + v9;
        v20 = fabsf(*a1->imagp);
        v21 = __sincosf_stret(v9);
        v22 = v21.__cosval * v20;
        v23 = v21.__sinval * v20;
        v42 = __PAIR64__(LODWORD(v23), LODWORD(v22));
        if (!v12)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_20;
    }

    v27 = 0.0;
    if (v15 >= v18)
    {
      if (v15 == v18)
      {
        v28 = *a1->imagp;
      }

      else
      {
        imagp = a1->realp;
        if (!v18)
        {
          v28 = *imagp;
          if (v15 != v19)
          {
LABEL_17:
            imagp += v19;
            v30 = a1->imagp[v19];
            goto LABEL_19;
          }

LABEL_15:
          imagp = a1->imagp;
          goto LABEL_18;
        }

        v28 = imagp[v18];
        v27 = a1->imagp[v18];
      }
    }

    else
    {
      v28 = 0.0;
    }

    if (v15 == v19)
    {
      goto LABEL_15;
    }

    imagp = a1->realp;
    if (v18 != -1)
    {
      goto LABEL_17;
    }

LABEL_18:
    v30 = 0.0;
LABEL_19:
    DspLib::FFT::interpolate(a2, v28, v27, *imagp, v30, v17 - v18);
    v22 = v31;
    v23 = v32;
    v42 = __PAIR64__(LODWORD(v32), LODWORD(v31));
    v33 = atan2f(v32, v31);
    v16 = v33 - v9;
    v9 = v33;
    if (!v12)
    {
LABEL_5:
      v24 = DspLib::abs(&v42, v10);
      v25 = v24 * DspLib::sign(1, *a1->realp);
      v26 = __A.realp;
LABEL_23:
      *v26 = v25;
      goto LABEL_30;
    }

LABEL_20:
    if (a1[1].realp == v11)
    {
      v34 = DspLib::abs(&v42, v10);
      v25 = v34 * DspLib::sign(1, *a1->imagp);
      if (v44 == v11)
      {
        v26 = __A.imagp;
        goto LABEL_23;
      }

      if (v44 > v11)
      {
        v36 = __A.imagp;
        __A.realp[v11] = v25;
        v36[v11] = 0.0;
      }
    }

    else if (v44 == v11)
    {
      *__A.imagp = v22;
    }

    else if (v44 > v11)
    {
      v35 = __A.imagp;
      __A.realp[v11] = v22;
      v35[v11] = v23;
    }

LABEL_30:
    v15 = a1[1].realp;
    v11 = ++v12;
  }

  while (v15 >= v12);
  if (a2 == 2)
  {
    v37 = atan2f(*(&v42 + 1), *&v42);
    v38 = (v37 / 3.1416) - floorf(v37 / 3.1416);
    DspLib::FFT::addDelay(&__A, v39, v38);
    v40 = __sincosf_stret(v38 * 3.1416);
    if (v44)
    {
      p_imagp = &__A.imagp;
    }

    else
    {
      p_imagp = &__A;
    }

    *p_imagp->realp = (*(&v42 + 1) * v40.__sinval) + (*&v42 * v40.__cosval);
  }

  DspLib::ComplexSpan::operator=(a1, &__A);
  DspLib::ComplexVector::~ComplexVector(&__A);
}

void sub_1DDBD0870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DspLib::ComplexVector::~ComplexVector(va);
  _Unwind_Resume(a1);
}

unint64_t DspLib::FFT::resampleFIRfilter(void *a1, unint64_t a2, uint64_t a3, float a4, float a5, uint64_t a6, DspLib *a7)
{
  v13 = (a2 * a5) / a4;
  v14 = (v13 + 1.0);
  if (a2 <= v14)
  {
    v15 = (v13 + 1.0);
  }

  else
  {
    v15 = a2;
  }

  v16 = log10f(v15);
  if (a2)
  {
    if (v14)
    {
      v17 = vcvtas_u32_f32(v16 / 0.30103) + 3;
      if (v17)
      {
        v18 = (1 << v17);
        std::vector<float>::vector[abi:ne200100](&v24, v18);
        DspLib::clear(v24, (v25 - v24) >> 2);
        DspLib::copy(a1, a2, v24);
        DspLib::ComplexVector::ComplexVector(&__Z, v18 >> 1, 0);
        DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::Transform(v22, v18);
        DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(v22, v24, (v25 - v24) >> 2, &__Z);
        DspLib::FFT::resample(&__Z, a7, a4, a5);
        std::vector<float>::vector[abi:ne200100](__p, v18);
        DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform(v20, v18);
        DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::process<(DspLib::FFT::Direction)-1>(v20, &__Z, __p[0]);
        DspLib::multiply(__p[0], v14, a3, 0.5 / v18);
        DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v20);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v22);
        DspLib::ComplexVector::~ComplexVector(&__Z);
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }
      }
    }
  }

  return v14;
}

void sub_1DDBD0A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(&a9);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(&a14);
  DspLib::ComplexVector::~ComplexVector(&a16);
  v18 = *(v16 - 88);
  if (v18)
  {
    *(v16 - 80) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void DspLib::FFT::frequencyBinIndex(DspLib::FFT *this@<X0>, float a2@<S0>, float a3@<S1>, double a4@<D2>, unint64_t a5@<X1>, void *a6@<X8>)
{
  v9 = a4 / this;
  v10 = vcvtas_u32_f32((a3 - a2) / (a5 * v9));
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<unsigned long>::resize(a6, v10);
  if (v10)
  {
    v11 = vcvtas_u32_f32(a2 / v9);
    v12 = (v10 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = vdupq_n_s64(v10 - 1);
    v14 = (*a6 + 8);
    v15 = xmmword_1DE095160;
    v16 = vdupq_n_s64(2uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v13, v15));
      if (v17.i8[0])
      {
        *(v14 - 1) = v11;
      }

      if (v17.i8[4])
      {
        *v14 = a5 + v11;
      }

      v15 = vaddq_s64(v15, v16);
      v14 += 2;
      v11 += 2 * a5;
      v12 -= 2;
    }

    while (v12);
  }
}

void sub_1DDBD0BA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

vDSP_Length *DspLib::FFT::STFTBase<(DspLib::FFT::Direction)1>::STFTBase(vDSP_Length *a1, vDSP_Length a2, vDSP_Length a3, vDSP_Length a4)
{
  v8 = DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::Transform(a1, a3);
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[9] = 0;
  std::vector<float>::resize(v8 + 5, *v8 + 15);
  v9 = (a1[5] + (-*(a1 + 40) & 0x3C));
  v10 = *a1;
  a1[8] = v9;
  a1[9] = v10;
  DspLib::clear(v9, v10);
  return a1;
}

void sub_1DDBD0C60(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v1);
  _Unwind_Resume(a1);
}

vDSP_Length *DspLib::FFT::STFTBase<(DspLib::FFT::Direction)-1>::STFTBase(vDSP_Length *a1, vDSP_Length a2, vDSP_Length a3, vDSP_Length a4)
{
  v8 = DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::Transform(a1, a3);
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[9] = 0;
  std::vector<float>::resize(v8 + 5, *v8 + 15);
  v9 = (a1[5] + (-*(a1 + 40) & 0x3C));
  v10 = *a1;
  a1[8] = v9;
  a1[9] = v10;
  DspLib::clear(v9, v10);
  return a1;
}

void sub_1DDBD0D10(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)-1>::~Transform(v1);
  _Unwind_Resume(a1);
}

void std::vector<DspLib::FFT::BufferedInverseSTFT>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = (v4 - 96);
        DspLib::FFT::InverseSTFT::~InverseSTFT(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<DspLib::FFT::BufferedForwardSTFT>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = (v4 - 104);
        DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<DspLib::ComplexVector>::__assign_with_size[abi:ne200100]<DspLib::ComplexVector*,DspLib::ComplexVector*>(uint64_t a1, DspLib::ComplexVector *a2, DspLib::ComplexVector *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<DspLib::ComplexVector>::__vdeallocate(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      std::vector<DspLib::ComplexVector>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        DspLib::ComplexVector::operator=(v8, v6);
        v6 = (v6 + 80);
        v8 = (v8 + 80);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 80);
      DspLib::ComplexVector::~ComplexVector(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 == v8)
    {
      v13 = a2;
    }

    else
    {
      v13 = (a2 + v12);
      do
      {
        DspLib::ComplexVector::operator=(v8, v6);
        v6 = (v6 + 80);
        v8 = (v8 + 80);
        v12 -= 80;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DspLib::ComplexVector>,DspLib::ComplexVector*,DspLib::ComplexVector*,DspLib::ComplexVector*>(a1, v13, a3, v11);
  }
}

void std::vector<DspLib::ComplexVector>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        DspLib::ComplexVector::~ComplexVector((v3 - 80));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<DspLib::ComplexVector>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::allocator<DspLib::ComplexVector>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

DspLib::ComplexVector *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DspLib::ComplexVector>,DspLib::ComplexVector*,DspLib::ComplexVector*,DspLib::ComplexVector*>(int a1, DspLib::ComplexVector *a2, DspLib::ComplexVector *a3, DspLib::ComplexVector *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      DspLib::ComplexVector::ComplexVector(this, v6);
      v6 = (v6 + 80);
      this = (this + 80);
      v7 -= 80;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1DDBD10E8(_Unwind_Exception *exception_object)
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

vDSP_Length *std::vector<DspLib::FFT::BufferedForwardSTFT>::__construct_one_at_end[abi:ne200100]<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(uint64_t a1, vDSP_Length *a2, vDSP_Length *a3, int *a4)
{
  v5 = *(a1 + 8);
  result = DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(v5, *a2, (a2[1] - *a2) >> 2, *a3, *a4);
  *(a1 + 8) = v5 + 13;
  return result;
}

uint64_t std::vector<DspLib::FFT::BufferedForwardSTFT>::__emplace_back_slow_path<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(uint64_t a1, vDSP_Length *a2, vDSP_Length *a3, int *a4)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x276276276276276)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v8 = 0x276276276276276;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<DspLib::FFT::BufferedForwardSTFT>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v15 = 0;
  v16 = 104 * v4;
  v17 = (104 * v4);
  DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT((104 * v4), *a2, (a2[1] - *a2) >> 2, *a3, *a4);
  *&v17 = 104 * v4 + 104;
  v9 = *(a1 + 8);
  v10 = 104 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::FFT::BufferedForwardSTFT>,DspLib::FFT::BufferedForwardSTFT*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<DspLib::FFT::BufferedForwardSTFT>::~__split_buffer(&v15);
  return v14;
}

void sub_1DDBD12BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DspLib::FFT::BufferedForwardSTFT>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::FFT::BufferedForwardSTFT>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::FFT::BufferedForwardSTFT>,DspLib::FFT::BufferedForwardSTFT*>(int a1, DspLib::FFT::BufferedForwardSTFT *this, DspLib::FFT::BufferedForwardSTFT *a3, uint64_t a4)
{
  if (this != a3)
  {
    v5 = this;
    v6 = this;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 8) = v7;
      *(v6 + 1) = 0;
      v8 = *(v6 + 4);
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 7);
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(a4 + 64) = *(v6 + 4);
      v9 = *(v6 + 5);
      *(a4 + 96) = *(v6 + 24);
      *(a4 + 80) = v9;
      v6 = (v6 + 104);
      a4 += 104;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT(v5);
      v5 = (v5 + 104);
    }
  }
}

uint64_t std::__split_buffer<DspLib::FFT::BufferedForwardSTFT>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT((i - 104));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

vDSP_Length *std::vector<DspLib::FFT::BufferedInverseSTFT>::__construct_one_at_end[abi:ne200100]<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(uint64_t a1, vDSP_Length *a2, vDSP_Length *a3, int *a4)
{
  v5 = *(a1 + 8);
  result = DspLib::FFT::BufferedInverseSTFT::BufferedInverseSTFT(v5, *a2, (a2[1] - *a2) >> 2, *a3, *a4);
  *(a1 + 8) = v5 + 12;
  return result;
}

uint64_t std::vector<DspLib::FFT::BufferedInverseSTFT>::__emplace_back_slow_path<std::vector<float> &,unsigned long &,DspLib::FFT::Mode &>(uint64_t a1, vDSP_Length *a2, vDSP_Length *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v5 = v4 + 1;
  if (v4 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v8 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<DspLib::FFT::BufferedInverseSTFT>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v15 = 0;
  v16 = 96 * v4;
  v17 = 96 * v4;
  DspLib::FFT::BufferedInverseSTFT::BufferedInverseSTFT((96 * v4), *a2, (a2[1] - *a2) >> 2, *a3, *a4);
  *&v17 = 96 * v4 + 96;
  v9 = *(a1 + 8);
  v10 = 96 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::FFT::BufferedInverseSTFT>,DspLib::FFT::BufferedInverseSTFT*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<DspLib::FFT::BufferedInverseSTFT>::~__split_buffer(&v15);
  return v14;
}

void sub_1DDBD15C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DspLib::FFT::BufferedInverseSTFT>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::FFT::BufferedInverseSTFT>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::FFT::BufferedInverseSTFT>,DspLib::FFT::BufferedInverseSTFT*>(int a1, DspLib::FFT::InverseSTFT *this, DspLib::FFT::InverseSTFT *a3, uint64_t a4)
{
  if (this != a3)
  {
    v5 = this;
    v6 = this;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 8) = v7;
      *(v6 + 1) = 0;
      v8 = *(v6 + 4);
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 7);
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(a4 + 64) = *(v6 + 4);
      v9 = *(v6 + 10);
      *(a4 + 88) = *(v6 + 22);
      *(a4 + 80) = v9;
      v6 = (v6 + 96);
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      DspLib::FFT::InverseSTFT::~InverseSTFT(v5);
      v5 = (v5 + 96);
    }
  }
}

uint64_t std::__split_buffer<DspLib::FFT::BufferedInverseSTFT>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    DspLib::FFT::InverseSTFT::~InverseSTFT((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<DspLib::ComplexVector>::__emplace_back_slow_path<unsigned long>(uint64_t a1, unint64_t *a2)
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

void sub_1DDBD1848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DspLib::ComplexVector>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void DspLib::FFT::Filterbank::audioInput()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FFT/dsp/DspLibFFT.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 436);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FFT::Filterbank::audioInputOutput()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FFT/dsp/DspLibFFT.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 453);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FFT::coherence()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FFT/dsp/DspLibFFT.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 535);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::FFT::multiply()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FFT/dsp/DspLibFFT.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 595);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

uint64_t DspLibChannelOrderForLayout@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (result > 8388615)
  {
    if (result > 12189700)
    {
      if (result <= 12386311)
      {
        if (result != 12189701)
        {
          if (result != 12255238)
          {
            if (result != 12320775)
            {
              return result;
            }

            v2 = &_ZGRL27DspLibChannelOrder_Wave_6_1_;
            v3 = &_ZGRL30DspLibChannelOrder_Atmos_5_1_2_;
            v4 = a2;
            v5 = 7;
            return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v4, v2, v3, v5);
          }

          v2 = &_ZGRL29DspLibChannelOrder_Wave_5_1_B_;
          goto LABEL_56;
        }

        v2 = &_ZGRL29DspLibChannelOrder_Wave_5_0_B_;
        goto LABEL_49;
      }

      switch(result)
      {
        case 0xBD0008:
          v2 = &_ZGRL27DspLibChannelOrder_WAVE_7_1_;
          break;
        case 0xC0000C:
          return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &_ZGRL30DspLibChannelOrder_Atmos_7_1_4_, &unk_1DE096A54, 0xCuLL);
        case 0xC20008:
          v2 = &_ZGRL30DspLibChannelOrder_Atmos_5_1_2_;
          break;
        default:
          return result;
      }

LABEL_51:
      v3 = v2 + 32;
      v4 = a2;
      v5 = 8;
      return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v4, v2, v3, v5);
    }

    if (result <= 8650755)
    {
      if (result == 8388616)
      {
        v2 = &_ZGRL29DspLibChannelOrder_MPEG_7_1_C_;
      }

      else
      {
        if (result != 8454152)
        {
          return result;
        }

        v2 = &_ZGRL37DspLibChannelOrder_Emagic_Default_7_1_;
      }

      goto LABEL_51;
    }

    if (result == 8650756)
    {
      v2 = &_ZGRL29DspLibChannelOrder_Wave_4_0_A_;
LABEL_40:
      v3 = v2 + 16;
      v4 = a2;
      v5 = 4;
      return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v4, v2, v3, v5);
    }

    if (result != 8716291)
    {
      if (result != 12124164)
      {
        return result;
      }

      v2 = &_ZGRL29DspLibChannelOrder_Wave_4_0_B_;
      goto LABEL_40;
    }

    v2 = &_ZGRL27DspLibChannelOrder_Wave_2_1_;
LABEL_43:
    v3 = v2 + 12;
    v4 = a2;
    v5 = 3;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v4, v2, v3, v5);
  }

  if (result > 7995397)
  {
    if (result <= 8126469)
    {
      if (result == 7995398)
      {
        v2 = &_ZGRL29DspLibChannelOrder_MPEG_5_1_B_;
      }

      else
      {
        if (result != 8060934)
        {
          return result;
        }

        v2 = &_ZGRL29DspLibChannelOrder_MPEG_5_1_C_;
      }
    }

    else
    {
      if (result != 8126470)
      {
        if (result == 8257544)
        {
          v2 = &_ZGRL29DspLibChannelOrder_MPEG_7_1_A_;
        }

        else
        {
          if (result != 8323080)
          {
            return result;
          }

          v2 = &_ZGRL29DspLibChannelOrder_MPEG_7_1_B_;
        }

        goto LABEL_51;
      }

      v2 = &_ZGRL29DspLibChannelOrder_MPEG_5_1_D_;
    }

    goto LABEL_56;
  }

  if (result > 7405570)
  {
    if (result == 7405571)
    {
      v2 = &_ZGRL27DspLibChannelOrder_Wave_3_0_;
      goto LABEL_43;
    }

    if (result == 7667717)
    {
      v2 = &_ZGRL29DspLibChannelOrder_Wave_5_0_A_;
LABEL_49:
      v3 = v2 + 20;
      v4 = a2;
      v5 = 5;
      return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v4, v2, v3, v5);
    }

    if (result != 7929862)
    {
      return result;
    }

    v2 = &_ZGRL29DspLibChannelOrder_MPEG_5_1_A_;
LABEL_56:
    v3 = v2 + 24;
    v4 = a2;
    v5 = 6;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v4, v2, v3, v5);
  }

  if (result == 6553601)
  {
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &_ZGRL23DspLibChannelOrder_Mono_, &_ZGRL25DspLibChannelOrder_Stereo_, 1uLL);
  }

  if (result == 6619138)
  {
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &_ZGRL25DspLibChannelOrder_Stereo_, &_ZGRL27DspLibChannelOrder_Wave_2_1_, 2uLL);
  }

  return result;
}

void DspLib_ITU1770_channelWeightsForLayout(uint64_t a1@<X0>, int a2@<W1>, float **a3@<X8>)
{
  v4 = a1;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((a1 & 0xFFFF0000) == 0x930000)
  {
    std::vector<float>::resize(a3, a1);
    DspLib::fill(*a3, a3[1] - *a3, 1.0);
  }

  else if ((a1 & 0xFFFF0000) == 0xBE0000)
  {
    std::vector<float>::resize(a3, a1);
    v6 = 0.0;
    if (a2)
    {
      v6 = 1.0;
    }

    DspLib::fill(*a3, a3[1] - *a3, v6);
    **a3 = 1.0;
  }

  else
  {
    DspLibChannelOrderForLayout(a1, &__p);
    v7 = __p;
    if (v13 != __p)
    {
      std::vector<float>::resize(a3, v4);
      v7 = __p;
      if (v4)
      {
        v8 = 0;
        v9 = *a3;
        do
        {
          v10 = 0;
          while (kITU1770ChannelNames[v10] != v7[v8])
          {
            if (++v10 == 17)
            {
              v11 = 0;
              goto LABEL_15;
            }
          }

          v11 = kITU1770ChannelWeights[v10];
LABEL_15:
          LODWORD(v9[v8++]) = v11;
        }

        while (v8 != v4);
      }
    }

    if (v7)
    {
      v13 = v7;
      operator delete(v7);
    }
  }
}

void sub_1DDBD1DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLibFinalChannelLayout(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    return 6553601;
  }

  if (a3 == 2)
  {
    return 6619138;
  }

  if (result != -65536)
  {
    if (a3 == result)
    {
      return result;
    }

    return a3 | 0xFFFF0000;
  }

  if (a2 == -65536)
  {
    return a3 | 0xFFFF0000;
  }

  result = a2;
  if (a2 != a3)
  {
    return a3 | 0xFFFF0000;
  }

  return result;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBD1ED8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

DspLib::BassKoenig::Algorithm *DspLib::BassKoenig::Algorithm::Algorithm(DspLib::BassKoenig::Algorithm *this)
{
  v2 = DspLib::AlgorithmBase::AlgorithmBase(this, &_ZGRN6DspLib10BassKoenig10ParametersL8kDefaultE_, 0x45uLL, &_ZGRN6DspLib10BassKoenig10ParametersL8kMinimumE_, 69, &_ZGRN6DspLib10BassKoenig10ParametersL8kMaximumE_, 69);
  *v2 = &unk_1F5919F60;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0;
  DspLib::ChannelBuffer::ChannelBuffer((v2 + 296), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 344), 0, 0);
  *(this + 57) = 0x43C8000000000000;
  *(this + 440) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 417) = 0u;
  *(this + 70) = 0;
  *(this + 142) = 0;
  *(this + 72) = 0;
  *(this + 584) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 124) = 0;
  *(this + 138) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 150) = 730643660;
  *(this + 604) = 0;
  *(this + 624) = 0;
  *(this + 38) = 0u;
  *(this + 632) = 0u;
  *(this + 81) = 0x43C8000000000000;
  *(this + 94) = 0;
  *(this + 190) = 0;
  *(this + 98) = 0;
  *(this + 48) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 186) = 0;
  *(this + 198) = 730643660;
  *(this + 796) = 0;
  *(this + 100) = 1;
  *(this + 202) = 1;
  *(this + 220) = 0;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 339) = 0;
  *(this + 912) = 0;
  *(this + 888) = 0u;
  *(this + 113) = 0;
  *(this + 1016) = 0;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 1120) = 0;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 64) = 0u;
  *(this + 1265) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *(this + 1128) = 0u;
  *(this + 1352) = 0;
  *(this + 1320) = 0u;
  *(this + 1336) = 0u;
  *(this + 1288) = 0u;
  *(this + 1304) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 1360), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 1408), 0, 0);
  *(this + 189) = 0;
  *(this + 91) = 0u;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 376) = 0;
  *(this + 380) = 0;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 195) = _D1;
  *(this + 98) = 0u;
  *(this + 396) = 1065353216;
  *(this + 1588) = 0u;
  *(this + 1604) = 0u;
  *(this + 405) = -1;
  *(this + 203) = 0xFFFFFFFFLL;
  return this;
}

void sub_1DDBD213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  DspLib::ChannelBuffer::~ChannelBuffer((v10 + 1360));
  DspLib::Biquad::Filter::~Filter((v10 + 1280));
  DspLib::FIR::~FIR((v10 + 1216));
  a10 = (v10 + 1192);
  std::vector<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::__destroy_vector::operator()[abi:ne200100](&a10);
  DspLib::Biquad::Filter::~Filter((v10 + 1120));
  DspLib::Biquad::ParametricFilter::~ParametricFilter((v10 + 1016));
  DspLib::Biquad::ParametricFilter::~ParametricFilter((v10 + 912));
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator((v10 + 808));
  DspLib::RMS::~RMS((v10 + 608));
  DspLib::RMS::~RMS((v10 + 416));
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 400) = v13;
    operator delete(v13);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((v10 + 344));
  DspLib::ChannelBuffer::~ChannelBuffer((v10 + 296));
  v14 = *(v10 + 272);
  if (v14)
  {
    *(v10 + 280) = v14;
    operator delete(v14);
  }

  v15 = *(v10 + 248);
  if (v15)
  {
    *(v10 + 256) = v15;
    operator delete(v15);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(v10);
  _Unwind_Resume(a1);
}

void DspLib::RMS::~RMS(DspLib::RMS *this)
{
  v5 = (this + 160);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
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

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }
}

uint64_t DspLib::BassKoenig::Algorithm::initialize(DspLib::BassKoenig::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    std::vector<std::vector<float>>::resize(this + 107, 1uLL);
    DspLib::Biquad::ParametricFilter::initialize((this + 912), 1uLL, *(this + 2), 2uLL);
    DspLib::Biquad::Filter::initialize((this + 1120), 1uLL, 3uLL);
    DspLib::Biquad::ParametricFilter::initialize((this + 1016), 1uLL, *(this + 2), 5uLL);
    v5 = (*(*this + 232))(this);
    DspLib::FIR::initialize((this + 1216), *(this + 153), *(this + 156), v5);
    DspLib::Biquad::Filter::initialize((this + 1280), 1uLL, 2uLL);
    *(this + 8) = 1;
  }

  (*(*this + 160))(this);
  return v4;
}

void DspLib::BassKoenig::Algorithm::uninitialize(DspLib::BassKoenig::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  DspLib::Biquad::ParametricFilter::uninitialize((this + 912));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 1016));
  DspLib::Biquad::Filter::uninitialize((this + 1120));
  std::vector<std::vector<float>>::resize(this + 107, 0);
  DspLib::FIR::uninitialize(this + 152);
  DspLib::Biquad::Filter::uninitialize((this + 1280));
  DspLib::EnvelopeProcessor::uninitialize((this + 1352));
  DspLib::RMS::uninitialize((this + 416));
  DspLib::RMS::uninitialize((this + 608));
  *(this + 50) = *(this + 49);
  *(this + 32) = *(this + 31);
  *(this + 35) = *(this + 34);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 37);
  *(this + 41) = *(this + 40);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 43);
  *(this + 47) = *(this + 46);
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 191);
  v2 = *(this + 150);
  v3 = *(this + 149);
  while (v2 != v3)
  {
    std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>::reset[abi:ne200100](--v2, 0);
  }

  *(this + 150) = v3;
  *(this + 394) = 0;
  *(this + 380) = 0;
}

double DspLib::BassKoenig::Algorithm::reset(DspLib::BassKoenig::Algorithm *this)
{
  DspLib::RMS::reset((this + 416));
  DspLib::RMS::reset((this + 608));
  *(this + 201) = 0;
  v2 = *(this + 107);
  v3 = *(this + 108);
  while (v2 != v3)
  {
    v4 = *(v2 + 8);
    if (*v2 != v4)
    {
      bzero(*v2, v4 - *v2);
    }

    v2 += 24;
  }

  *(this + 220) = 0;
  DspLib::Biquad::SetupWrapper::reset((this + 960));
  DspLib::Biquad::SetupWrapper::reset((this + 1064));
  DspLib::Biquad::SetupWrapper::reset((this + 1168));
  DspLib::clear(*(this + 157), (*(this + 158) - *(this + 157)) >> 2);
  DspLib::Biquad::SetupWrapper::reset((this + 1328));
  DspLib::EnvelopeProcessor::reset((this + 1352));
  v5 = *(this + 191);
  v6 = *(this + 192);
  while (v5 != v6)
  {
    DspLib::CircularDelay::reset(v5);
    v5 = (v5 + 32);
  }

  v7 = *(this + 149);
  v8 = *(this + 150);
  while (v7 != v8)
  {
    v9 = *v7++;
    DspLib::Biquad::SetupWrapper::reset((v9 + 48));
    DspLib::Biquad::SetupWrapper::reset((v9 + 152));
    DspLib::EnvelopeProcessor::reset((v9 + 176));
  }

  __asm { FMOV            V0.2S, #1.0 }

  *(this + 195) = _D0;
  *(this + 392) = 0;
  *(this + 397) = 0;
  result = 0.0;
  *(this + 199) = 0;
  *(this + 401) = 0;
  *(this + 60) = 0;
  return result;
}

double DspLib::BassKoenig::Algorithm::latencySamples(DspLib::BassKoenig::Algorithm *this)
{
  DspLib::BassKoenig::Algorithm::Algorithm(v10);
  DspLib::BassKoenig::Algorithm::setParameters(v10, *(this + 3), (*(this + 4) - *(this + 3)) >> 2, v2);
  DspLib::BassKoenig::Algorithm::initialize(v10, 1, *(this + 2));
  v3 = *(this + 191);
  if (*(this + 192) == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3[1] - *v3) >> 2;
  }

  std::vector<float>::vector[abi:ne200100](&__p, (((v4 * *(this + 394)) + 64.5) + 200.0));
  DspLib::diracDelta(__p, (v9 - __p) >> 2);
  v12[2] = (v9 - __p) >> 2;
  v13 = __p;
  v12[0] = &v13;
  v12[1] = 1;
  v11[0] = 0;
  v11[24] = 0;
  (*(v10[0] + 176))(v10, v12, v11);
  DspLib::maxmgvi(__p, (v9 - __p) >> 2);
  v6 = v5;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  DspLib::BassKoenig::Algorithm::~Algorithm(v10);
  return v6;
}

void sub_1DDBD26DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  DspLib::BassKoenig::Algorithm::~Algorithm(&a13);
  _Unwind_Resume(a1);
}

void DspLib::BassKoenig::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    ++*(a1 + 240);
    DspLib::BassKoenig::Algorithm::setSystemParameters(a1);
    v7 = DspLib::dB2Amp(v6, **(a1 + 24));
    *(a1 + 1584) = v7;
    v8 = *(a1 + 24);
    if (*(v8 + 196) > 0.5)
    {
      *(a1 + 1584) = -v7;
    }

    *(a1 + 1556) = *(v8 + 32);
    LODWORD(v4) = vcvtas_u32_f32(*(v8 + 12));
    v9 = logf(*(v8 + 20) / *(v8 + 16));
    *(a1 + 1572) = expf(v9 / (v4 - 1));
    v10 = vcvtas_u32_f32(*(v8 + 24));
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = (*(*a1 + 232))(a1) / v11 + 1;
    std::vector<float>::resize((a1 + 248), v12);
    std::vector<float>::resize((a1 + 272), v12);
    v13 = *(*(a1 + 24) + 4);
    DspLib::Biquad::ParametricFilter::initialize((a1 + 912), 1uLL, *(a1 + 16), 2uLL);
    v13 <<= 32;
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 912, v13, 0x3F3504F300000000, 0, 0x41uLL);
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 912, v13, 0x3F3504F300000000, 1, 0x41uLL);
    v14 = vcvtas_u32_f32(*(*(a1 + 24) + 264));
    if (v11 != *(a1 + 1576) || v12 != *(a1 + 244) || *(a1 + 1628) != v14)
    {
      if (v14 < 2)
      {
        DspLib::multiply(&DspLib::BassKoenig::kSRCcoeffs, 129, &__p, vcvts_n_f32_u32(v11, 4uLL));
        *(a1 + 800) = v11;
        *(a1 + 804) = 0;
        v22 = (*(*a1 + 232))(a1);
        DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 808), v11, v22 / v11 + 1);
        DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 808), &__p, 0x81uLL);
      }

      else if (v11 == 1)
      {
        *(a1 + 800) = 1;
        v23 = (*(*a1 + 232))(a1);
        DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 808), 1, v23);
      }

      else
      {
        v15 = &DspLib::BassKoenig::kSRC4coeffs;
        v16 = 129;
        v17 = 257;
        if (v10 < 9)
        {
          v17 = 129;
        }

        v18 = &DspLib::BassKoenig::kSRC16coeffs;
        if (v10 < 9)
        {
          v18 = &DspLib::BassKoenig::kSRC8coeffs;
        }

        if (v10 >= 5)
        {
          v16 = v17;
          v15 = v18;
        }

        if (v11 == 2)
        {
          v19 = 65;
        }

        else
        {
          v19 = v16;
        }

        if (v11 == 2)
        {
          v20 = &DspLib::BassKoenig::kSRC2coeffs;
        }

        else
        {
          v20 = v15;
        }

        std::vector<float>::vector[abi:ne200100](&__p, v19);
        DspLib::multiply(v20, v19, __p, v11);
        *(a1 + 800) = v11;
        *(a1 + 804) = 0;
        v21 = (*(*a1 + 232))(a1);
        DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 808), v11, v21 / v11 + 1);
        DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 808), __p, (v67 - __p) >> 2);
        if (__p)
        {
          v67 = __p;
          operator delete(__p);
        }
      }
    }

    v24 = v11;
    if ((*(*a1 + 208))(a1))
    {
      DspLib::RMS::initialize((a1 + 416), 1u, *(a1 + 16) / v11);
      DspLib::RMS::setParameters(a1 + 416, 1, 1000.0);
      DspLib::RMS::initialize((a1 + 608), 1u, *(a1 + 16) / v11);
      DspLib::RMS::setParameters(a1 + 608, 1, 1000.0);
    }

    DspLib::Biquad::ParametricFilter::initialize((a1 + 1016), 1uLL, vcvtad_u64_f64(*(a1 + 16) / v24), 5uLL);
    v25 = 0;
    for (i = 0; i != 5; ++i)
    {
      v27 = *(a1 + 24) + v25;
      v28 = *(v27 + 96);
      v29 = *(v27 + 104);
      v30 = (*(v27 + 100) << 32) | 3;
      v31 = *(v27 + 108);
      if (v28 < 0.5)
      {
        v29 = 0;
      }

      DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 1016, v30, (v29 | (v31 << 32)), i, 0x41uLL);
      v25 += 16;
    }

    v32 = 0;
    v60 = 1065353216;
    v62 = 0;
    v61 = 0;
    v63 = 1065353216;
    v64 = 0;
    v65 = 0;
    do
    {
      v33 = &__p + v32;
      *v33 = 1065353216;
      *(v33 + 12) = 0;
      *(v33 + 4) = 0;
      v32 += 20;
    }

    while (v32 != 60);
    v34 = *(a1 + 16) / v24;
    v35 = *(a1 + 24);
    v36 = (*(a1 + 32) - v35) >> 2;
    v37 = v34;
    if (vcvtas_u32_f32(v35[66]))
    {
      DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved(v35, v37, v36, &v60, 2, &__p, 3);
    }

    else
    {
      DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsLegacy(v35, v37, v36, &v60, 2, &__p, 3);
    }

    *(a1 + 1580) = vcvtad_u64_f64(v34);
    DspLib::Biquad::Filter::initialize((a1 + 1120), 1uLL, 3uLL);
    DspLib::Biquad::Filter::setCoefficients(a1 + 1120, &__p, 3, 0, 0x41uLL);
    DspLib::Biquad::Filter::initialize((a1 + 1280), 1uLL, 2uLL);
    DspLib::Biquad::Filter::setCoefficients(a1 + 1280, &v60, 2, 0, 0x41uLL);
    v38 = *(a1 + 24);
    v39 = 0;
    if (*(v38 + 48) >= 0.5 && *(v38 + 56) < 0.5)
    {
      v39 = *(v38 + 36);
    }

    *(a1 + 1552) = v39;
    if (*(a1 + 1520) != v4)
    {
      std::vector<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::resize((a1 + 1192), v4);
      if (*(a1 + 1192) != *(a1 + 1200))
      {
        operator new();
      }

      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((a1 + 296));
      *(a1 + 328) = *(a1 + 320);
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((a1 + 344));
      *(a1 + 376) = *(a1 + 368);
    }

    DspLib::ChannelBuffer::resize((a1 + 296), v4, v12);
    DspLib::ChannelBuffer::resize((a1 + 344), v4, v12);
    v40 = *(a1 + 16);
    v41 = *(a1 + 24);
    v42 = *(a1 + 1192);
    v43 = *(a1 + 1200);
    if (v42 != v43)
    {
      v44 = *(v41 + 16);
      v45 = vcvtad_u64_f64(v40 / v24);
      do
      {
        v46 = *v42;
        DspLib::Biquad::Filter::initialize((*v42 + 104), 1uLL, 2uLL);
        DspLib::Biquad::ParametricFilter::initialize(v46, 1uLL, v45, 2uLL);
        v47 = *v42++;
        DspLib::BassKoenig::Algorithm::HighpassChannel::setCoefficients(v47, *(*(a1 + 24) + 40) >= 0.5, &v60, 2, v44, *(*(a1 + 24) + 60));
        v44 = v44 * *(a1 + 1572);
      }

      while (v42 != v43);
      v41 = *(a1 + 24);
      v40 = *(a1 + 16);
    }

    v48 = vcvtad_u64_f64(v40 * (*(v41 + 28) * 0.001) / v24);
    if (v48 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v48;
    }

    if (*(a1 + 1520) != v4 || (v50 = *(a1 + 1528), *(a1 + 1536) == v50) || v49 != (v50[1] - *v50) >> 2)
    {
      std::vector<AUSM::FloatVector>::clear[abi:ne200100]((a1 + 1528));
      std::vector<DspLib::CircularDelay>::resize((a1 + 1528), v4);
      v56 = *(a1 + 1528);
      v57 = *(a1 + 1536);
      while (v56 != v57)
      {
        DspLib::CircularDelay::setLength(v56, v49);
        v56 = (v56 + 32);
      }
    }

    if (*(a1 + 1248) != v49)
    {
      std::vector<float>::vector[abi:ne200100](&v58, v49);
      DspLib::makeRaisedCosineWindow(v58, (v59 - v58) >> 2);
      DspLib::FIR::initialize((a1 + 1216), v58, (v59 - v58) >> 2, *(a1 + 1216));
      DspLib::clear(*(a1 + 1256), (*(a1 + 1264) - *(a1 + 1256)) >> 2);
      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }
    }

    v51 = *(a1 + 16) / v24;
    v52 = *(a1 + 24);
    v53 = -1.0 / (v51 * v52[44] / 1000.0);
    v54 = 1.0 - expf(v53);
    if (v54 > 0.102)
    {
      v54 = 0.102;
    }

    *(a1 + 1612) = v54;
    v55 = -1.0 / (v51 * v52[45] / 1000.0);
    *(a1 + 1616) = 1.0 - expf(v55);
    if (vcvtas_u32_f32(v52[11]))
    {
      if (*(a1 + 400) == *(a1 + 392))
      {
        std::vector<float>::resize((a1 + 392), 0x1F5uLL);
        DspLib::ramp(*(a1 + 392), (*(a1 + 400) - *(a1 + 392)) >> 2, 1, 10.0, 2000.0);
      }
    }

    else
    {
      *(a1 + 400) = *(a1 + 392);
    }

    *(a1 + 1520) = v4;
    *(a1 + 244) = v12;
    *(a1 + 1576) = v11;
    *(a1 + 1628) = v14;
  }
}

void sub_1DDBD2F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::BassKoenig::Algorithm::setMeteringIsEnabled(DspLib::BassKoenig::Algorithm *this, int a2)
{
  result = (*(*this + 208))(this);
  if (result != a2)
  {
    *(this + 96) = a2;
    if ((*(*this + 208))(this))
    {
      DspLib::RMS::initialize((this + 416), 1u, *(this + 2));
      DspLib::RMS::initialize((this + 608), 1u, *(this + 2));
      DspLib::EnvelopeProcessor::initialize((this + 1352), 1u);
    }

    else
    {
      DspLib::RMS::uninitialize((this + 416));
      DspLib::RMS::uninitialize((this + 608));
      DspLib::EnvelopeProcessor::uninitialize((this + 1352));
    }

    v5 = *(*this + 160);

    return v5(this);
  }

  return result;
}

void DspLib::BassKoenig::Algorithm::setParameter(DspLib::BassKoenig::Algorithm *this, unint64_t a2, float a3)
{
  v4 = *(this + 3);
  if ((*(this + 4) - v4) >> 2 <= a2)
  {
    DspLib::BassKoenig::Algorithm::setParameter();
    return;
  }

  *(v4 + 4 * a2) = a3;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    *(this + 391) = 0;
LABEL_12:
    v10 = *(*this + 160);

    v10();
    return;
  }

  if (a2 - 59 > 3)
  {
    goto LABEL_12;
  }

  (*(*this + 112))(this, a2);
  v8 = *(this + 3);
  v9 = *(v8 + 4 * a2);
  if (v7 >= v9)
  {
    v7 = *(v8 + 4 * a2);
  }

  if (v9 >= v6)
  {
    v6 = v7;
  }

  *(v8 + 4 * a2) = v6;

  DspLib::BassKoenig::Algorithm::setSystemParameters(this);
}

void DspLib::BassKoenig::Algorithm::setSystemParameters(DspLib::BassKoenig::Algorithm *this)
{
  *(this + 392) = 0;
  *(this + 405) = -1;
  v2 = *(this + 3);
  v3 = v2 + 59;
  v4 = v2 + 52;
  v5 = -3;
  do
  {
    if (*(v4 - 2) >= 0.5)
    {
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if ((v7 + 5.0) > *v4)
      {
        v7 = v8 + -5.0;
        *(v4 - 1) = v8 + -5.0;
      }

      v9 = v2[4];
      v10 = v9;
      if (v6 >= v7)
      {
        v10 = v2[5];
        if (v6 <= v8)
        {
          v10 = (v9 - (((v10 - v9) / (v8 - v7)) * v7)) + (((v10 - v9) / (v8 - v7)) * v6);
        }
      }

      v11 = logf(v10 / v9);
      v12 = v11 / logf(*(this + 393));
      v13 = *(this + 380) - 1;
      if (v12 > v13)
      {
        v12 = v13;
      }

      if (v12 > *(this + 392))
      {
        *(this + 392) = v12;
        *(this + 405) = v5 + 3;
      }
    }

    ++v3;
    v4 += 3;
  }

  while (!__CFADD__(v5++, 1));
  if (v2[63] >= 0.5)
  {
    v15 = v2[62];
    v16 = v2[64];
    v17 = v2[65];
    if ((v16 + 5.0) < v17)
    {
      v17 = v16 + -5.0;
      v2[65] = v16 + -5.0;
    }

    v18 = v2[4];
    v19 = v18;
    if (v15 <= v16)
    {
      v19 = v2[5];
      if (v15 >= v17)
      {
        v19 = (v18 - (((v19 - v18) / (v17 - v16)) * v16)) + (((v19 - v18) / (v17 - v16)) * v15);
      }
    }

    v20 = logf(v19 / v18);
    v21 = v20 / logf(*(this + 393));
    v22 = *(this + 380) - 1;
    if (v21 > v22)
    {
      v21 = v22;
    }

    if (v21 > *(this + 392))
    {
      *(this + 392) = v21;
      *(this + 405) = 3;
    }
  }
}

uint64_t DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved(float *a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (a1[23] / 10000.0) * (a1[23] / 10000.0);
  if (v8 == 0.0)
  {
    result = DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved();
LABEL_39:
    ++DspLibDebug::mAssertCounter;
    return result;
  }

  v10 = a1[21];
  v11 = v10 * v10;
  if (v10 * v10 == 0.0)
  {
    result = DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved();
    goto LABEL_39;
  }

  v12 = a1[20] / 1000.0;
  if (v12 == 0.0)
  {
    result = DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved();
    goto LABEL_39;
  }

  v13 = (a1[22] / 1000.0) / 140002.31 / v8;
  if (v13 == 0.0)
  {
    result = DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved();
    goto LABEL_39;
  }

  v14 = (a2 * a2);
  v15 = a2 * v14;
  v16 = a1[16] / v11;
  v17 = (a1[17] / 1000.0) / v11;
  v18 = 1.0 / v13 + (1.0 / v12);
  v19 = (a1[18] / 1000.0);
  v20 = v17 * v19;
  v21 = a1[19];
  v22 = v17 * v21 + v16 * v19;
  v23 = v17 * v18 + v16 * v21 + 1.0;
  v24 = v16 * v18;
  v25 = v23 * (a2 + a2);
  v26 = v14 * 4.0;
  v27 = v24 + v25 + v14 * 4.0 * v22 + v15 * 8.0 * v20;
  if (v27 == 0.0)
  {
    result = DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved();
    goto LABEL_39;
  }

  v32 = v24 - v25 + v26 * v22 - v15 * 8.0 * v20;
  v33 = v15 * 24.0;
  v34 = 1.0 / v27;
  v35 = (v25 + v24 * 3.0 - v26 * v22 - v33 * v20) * (1.0 / v27);
  v36 = (-(v25 - v24 * 3.0) - v26 * v22 + v33 * v20) * (1.0 / v27);
  v37 = (v36 - v35 * v35 / 3.0) * ((v36 - v35 * v35 / 3.0) * (v36 - v35 * v35 / 3.0));
  v38 = v32 * (1.0 / v27) + v35 * (v35 * (v35 + v35)) / 27.0 - v35 * v36 / 3.0;
  v39 = sqrt(fabs(v37 / 27.0 + v38 * v38 * 0.25));
  v40 = v38 * -0.5;
  v41 = v38 * -0.5 + v39;
  v42 = 0.0;
  v43 = 0.0;
  if (v41 != 0.0)
  {
    if (v41 < 0.0)
    {
      v44 = log(-v41);
      v43 = -exp(v44 * 0.333333343);
    }

    else
    {
      v45 = log(v41);
      v43 = exp(v45 * 0.333333343);
    }
  }

  v46 = v40 - v39;
  if (v40 - v39 != 0.0)
  {
    if (v40 - v39 < 0.0)
    {
      v47 = log(-v46);
      v42 = -exp(v47 * 0.333333343);
    }

    else
    {
      v48 = log(v46);
      v42 = exp(v48 * 0.333333343);
    }
  }

  v49 = v35 / -3.0 + v43 + v42;
  v50 = v35 / -3.0 - (v43 + v42) * 0.5;
  v51 = 0.9999;
  if (v49 <= 0.9999)
  {
    v51 = v35 / -3.0 + v43 + v42;
  }

  if (v49 >= -0.9999)
  {
    v52 = v51;
  }

  else
  {
    v52 = -0.9999;
  }

  v53 = 0.999;
  if (v50 <= 0.999)
  {
    v53 = v35 / -3.0 - (v43 + v42) * 0.5;
  }

  if (v50 >= -0.9999)
  {
    v54 = v53;
  }

  else
  {
    v54 = -0.9999;
  }

  v55 = v34 / v10 * 1000.0 * 8.0;
  v56 = v52;
  *a4 = v55;
  *(a4 + 4) = 0;
  *(a4 + 12) = -v56;
  v57 = v54 * -2.0;
  v58 = (v43 - v42) * 1.73205081 * 0.5 * ((v43 - v42) * 1.73205081 * 0.5) + v54 * v54;
  *(a4 + 16) = xmmword_1DE095680;
  *(a4 + 32) = v57;
  *(a4 + 36) = v58;
  *a6 = 1065353216;
  *(a6 + 4) = -v56;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v59 = *(a4 + 32);
  v60 = *(a4 + 36);
  *(a6 + 20) = 1065353216;
  *(a6 + 24) = v59;
  *(a6 + 28) = v60;
  *(a6 + 32) = 0;
  v61 = *a4 / (*(a4 + 32) + 1.0 + *(a4 + 36)) / (*(a4 + 12) + 1.0) / (1.0 - v56) / ((v59 + 1.0) + v60);
  v62 = v61 * DspLib::dB2Amp(a1, a1[67]);
  v63 = 100000000.0;
  if (v62 <= 100000000.0)
  {
    v63 = v62;
  }

  if (v62 >= 1.0)
  {
    v64 = v63;
  }

  else
  {
    v64 = 1.0;
  }

  *a6 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a6), v64));
  v65 = v64 * *(a6 + 8);
  *(a6 + 8) = v65;
  DspLib::Biquad::Design::integrator(2, a1[68], 45.0, a2, &v67);
  *(a6 + 40) = v67;
  *(a6 + 56) = v68;
  if ((DspLib::Biquad::validate(a4, a5) & 1) == 0)
  {
    result = DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved();
    goto LABEL_39;
  }

  result = DspLib::Biquad::validate(a6, a7);
  if ((result & 1) == 0)
  {
    result = DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved();
    goto LABEL_39;
  }

  return result;
}

void DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsLegacy(float *a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (a1[23] / 10000.0) * (a1[23] / 10000.0);
  if (v7 == 0.0)
  {
    v58 = 613;
LABEL_29:
    DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsLegacy(v58);
    return;
  }

  v8 = a1[21];
  if ((v8 * v8) == 0.0)
  {
    v58 = 615;
    goto LABEL_29;
  }

  v9 = a1[20] / 1000.0;
  if (v9 == 0.0)
  {
    v58 = 620;
    goto LABEL_29;
  }

  v10 = (a1[22] / 1000.0) / 140002.31 / v7;
  if (v10 == 0.0)
  {
    v58 = 621;
    goto LABEL_29;
  }

  v11 = (v8 * v8);
  v12 = (a2 * a2);
  v13 = a2;
  v14 = a2 * v12;
  v15 = a1[16] / v11;
  v16 = (a1[17] / 1000.0) / v11;
  v17 = 1.0 / v9 + 1.0 / v10;
  v18 = (a1[18] / 1000.0);
  v19 = v16 * v18;
  v20 = a1[19];
  v21 = v16 * v20 + v15 * v18;
  v22 = v16 * v17 + v15 * v20 + 1.0;
  v23 = v15 * v17;
  v24 = (v13 + v13) * v22;
  v25 = v12 * 4.0;
  v26 = v23 + v24 + v12 * 4.0 * v21 + v14 * 8.0 * v19;
  if (v26 == 0.0)
  {
    v58 = 655;
    goto LABEL_29;
  }

  v31 = v23 - v24 + v25 * v21 - v14 * 8.0 * v19;
  v32 = v14 * 24.0;
  v33 = 1.0 / v26;
  v34 = (v24 + v23 * 3.0 - v25 * v21 - v32 * v19) * (1.0 / v26);
  v35 = (-(v24 - v23 * 3.0) - v25 * v21 + v32 * v19) * (1.0 / v26);
  v36 = (v35 - v34 * v34 / 3.0) * ((v35 - v34 * v34 / 3.0) * (v35 - v34 * v34 / 3.0));
  v37 = v31 * (1.0 / v26) + v34 * (v34 * (v34 + v34)) / 27.0 - v34 * v35 / 3.0;
  v38 = sqrt(fabs(v36 / 27.0 + v37 * v37 * 0.25));
  v39 = v37 * -0.5;
  v40 = v37 * -0.5 + v38;
  v41 = 0.0;
  v42 = 0.0;
  if (v40 != 0.0)
  {
    if (v40 < 0.0)
    {
      v43 = log(-v40);
      v42 = -exp(v43 * 0.333333333);
    }

    else
    {
      v44 = log(v40);
      v42 = exp(v44 * 0.333333333);
    }
  }

  v45 = v39 - v38;
  if (v39 - v38 != 0.0)
  {
    if (v39 - v38 < 0.0)
    {
      v46 = log(-v45);
      v41 = -exp(v46 * 0.333333333);
    }

    else
    {
      v47 = log(v45);
      v41 = exp(v47 * 0.333333333);
    }
  }

  v48 = v34 / -3.0 - (v42 + v41) * 0.5;
  v49 = (v42 - v41) * 1.73205081 * 0.5;
  v50 = 0.9999;
  if (v48 <= 0.9999)
  {
    v50 = v34 / -3.0 - (v42 + v41) * 0.5;
  }

  if (v48 >= -0.9999)
  {
    v51 = v50;
  }

  else
  {
    v51 = -0.9999;
  }

  v52 = v34 / -3.0 + v42 + v41;
  v53 = -v52;
  *a4 = vcvt_f32_f64(vmulq_f64(vmulq_n_f64(xmmword_1DE096A80, v33 / v8), vdupq_n_s64(0x408F400000000000uLL)));
  *(a4 + 8) = 0;
  *(a4 + 12) = -v52;
  v54 = v51 * -2.0;
  v55 = v49 * v49 + v51 * v51;
  *(a4 + 16) = xmmword_1DE096A90;
  *(a4 + 32) = v54;
  *(a4 + 36) = v55;
  v56 = cos(144.513262 / v13) * -1.91600001;
  *a6 = 1065353216;
  *(a6 + 4) = v53;
  *(a6 + 8) = 0;
  *(a6 + 12) = v56;
  *(a6 + 16) = 1063973525;
  v57 = *(a4 + 32);
  *(a6 + 20) = 1065353216;
  *(a6 + 24) = v57;
  *(a6 + 32) = 0;
  *(a6 + 56) = 0;
  *(a6 + 40) = DspLib::Biquad::kBypassSection;
  if (!DspLib::Biquad::validate(a4, a5))
  {
    v58 = 738;
    goto LABEL_29;
  }

  if ((DspLib::Biquad::validate(a6, a7) & 1) == 0)
  {
    v58 = 739;
    goto LABEL_29;
  }
}

void std::vector<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>::reset[abi:ne200100](--v3, 0);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::__append(a1, v5);
  }
}

void DspLib::BassKoenig::Algorithm::HighpassChannel::setCoefficients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v10 = (LODWORD(a5) << 32) | 0xF;
  v11 = (LODWORD(a6) << 32);
  DspLib::Biquad::ParametricFilter::setParametricEQ(a1, v10, v11, 0, 0x41uLL);
  if (a2)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x447A000000000017;
  }

  if (a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x3F80000000000000;
  }

  DspLib::Biquad::ParametricFilter::setParametricEQ(a1, v12, v13, 1, 0x41uLL);

  DspLib::Biquad::Filter::setCoefficients(a1 + 104, a3, a4, 0, 0x41uLL);
}

void DspLib::BassKoenig::Algorithm::processBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return;
  }

  v4 = **a2;
  v5 = 0.0;
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    LODWORD(v6) = *(a1 + 1576);
    v7 = -1.0 / (*(a1 + 16) / v6 / v2 * *(*(a1 + 24) + 184) / 1000.0);
    v5 = expf(v7);
    DspLib::CPUMeasure::resume((a1 + 104));
  }

  v8 = *(a1 + 24);
  if (v8[2] >= 0.5 && v8[14] < 0.5)
  {
    DspLib::Biquad::Filter::process((a1 + 912), v4, v2, v4, v2);
    v8 = *(a1 + 24);
  }

  v9 = *(a1 + 248);
  if (vcvtas_u32_f32(v8[6]) < 2)
  {
    DspLib::copy(v4, v2, v9);
    v11 = v2;
  }

  else
  {
    v10 = (*(a1 + 256) - v9) >> 2;
    v52 = v4;
    v53 = v9;
    *&v50 = &v53;
    *(&v50 + 1) = 1;
    v51 = v10;
    v47 = &v52;
    v48 = 1;
    v49 = v2;
    DspLib::DownSampler::process((a1 + 800), &v47, &v50);
    v11 = v51;
  }

  v12 = *(a1 + 248);
  v13 = *(a1 + 272);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    *(a1 + 1596) = v5 * *(a1 + 1596);
    DspLib::abs(v12, v11, v13);
    v14 = DspLib::maxv(v13, v11);
    if (v14 > *(a1 + 1596))
    {
      *(a1 + 1596) = v14;
    }

    v47 = v12;
    *&v50 = &v47;
    *(&v50 + 1) = 1;
    v51 = v11;
    DspLib::RMS::process(a1 + 416, &v50, v13, v11);
    *(a1 + 1600) = *v13;
    DspLib::CPUMeasure::resume((a1 + 104));
  }

  if (*(*(a1 + 24) + 56) < 0.5)
  {
    DspLib::multiply(v12, v11, *(a1 + 1584));
    DspLib::Biquad::Filter::process((a1 + 1016), v12, v11, v12, v11);
    if (*(*(a1 + 24) + 52) >= 0.5)
    {
      DspLib::Biquad::Filter::process((a1 + 1120), v12, v11, v12, v11);
    }
  }

  v15 = *(a1 + 320);
  v16 = (*(a1 + 328) - v15) >> 3;
  if (*(a1 + 1520))
  {
    v17 = 0;
    v18 = *(a1 + 368);
    do
    {
      DspLib::BassKoenig::Algorithm::HighpassChannel::process(*(*(a1 + 1192) + 8 * v17), v12, v11, *(v15 + 8 * v17), v11, *(v18 + 8 * v17), v11);
      ++v17;
    }

    while (v17 < *(a1 + 1520));
  }

  *&v50 = v15;
  *(&v50 + 1) = v16;
  v51 = v11;
  v47 = v15;
  v48 = v16;
  v49 = v11;
  DspLib::MultiChannelCircularDelay::process((a1 + 1528), &v50, &v47);
  *(a1 + 1564) = 0;
  v19 = *(a1 + 24);
  if (v19[50] > 0.5 || v19[53] > 0.5 || v19[56] > 0.5 || (v20 = 0.0, v19[63] > 0.5))
  {
    v20 = *(a1 + 1568);
  }

  if (!v11)
  {
    DspLib::FIR::process((a1 + 1216), v12, 0, v12);
    goto LABEL_54;
  }

  v21 = 0;
  v22 = (*(a1 + 1520) - 1);
  v23 = *(a1 + 1556) / *(a1 + 1552);
  do
  {
    if (v22)
    {
      v24 = *(a1 + 344);
      v25 = 0.0;
      v26 = v22;
      do
      {
        v27 = *v24;
        v24 += 3;
        if (*(v27 + 4 * v21) > v23)
        {
          v25 = v25 + 1.0;
        }

        --v26;
      }

      while (v26);
    }

    else
    {
      v25 = 0.0;
    }

    v28 = *(a1 + 1560);
    if (v25 <= v28)
    {
      if (v25 >= v28)
      {
        goto LABEL_39;
      }

      v29 = v25 - v28;
      v30 = *(a1 + 1616);
    }

    else
    {
      v29 = v25 - v28;
      v30 = *(a1 + 1612);
    }

    v28 = v28 + (v29 * v30);
    *(a1 + 1560) = v28;
LABEL_39:
    if (v28 <= v20)
    {
      v31 = *(a1 + 1620);
      v28 = v20;
    }

    else
    {
      v31 = -1;
    }

    v12[v21] = v28;
    if (v28 > *(a1 + 1564))
    {
      *(a1 + 1564) = v28;
    }

    v21 = (v21 + 1);
  }

  while (v11 > v21);
  *(a1 + 1624) = v31;
  DspLib::FIR::process((a1 + 1216), v12, v11, v12);
  v33 = 0;
  v34 = *(a1 + 1520);
  v35.n128_u32[0] = 1.0;
  v36.n128_u64[0] = 0;
  do
  {
    v32.n128_f32[0] = v12[v33];
    v13[v33] = 0.0;
    if (v34)
    {
      v37 = 0;
      v38 = 0.0;
      do
      {
        v39 = 1.0 - vabds_f32(v32.n128_f32[0], v37);
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }

        v38 = v38 + (*(*(v15 + 8 * v37) + 4 * v33) * v39);
        v13[v33] = v38;
        ++v37;
      }

      while (v34 != v37);
    }

    ++v33;
  }

  while (v11 > v33);
LABEL_54:
  if ((*(*a1 + 208))(a1, v35, v36, v32))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    v47 = v13;
    *&v50 = &v47;
    *(&v50 + 1) = 1;
    v51 = v11;
    DspLib::RMS::process(a1 + 608, &v50, v12, v11);
    *(a1 + 1608) = *v12;
    DspLib::CPUMeasure::resume((a1 + 104));
  }

  if (vcvtas_u32_f32(*(*(a1 + 24) + 24)) <= 1)
  {
    DspLib::copy(v13, v11, v4);
  }

  else
  {
    v52 = v13;
    v53 = v4;
    *&v50 = &v52;
    *(&v50 + 1) = 1;
    v51 = v11;
    v47 = &v53;
    v48 = 1;
    v49 = v2;
    DspLib::PolyPhaseInterpolator::process((a1 + 808), &v50, &v47);
  }

  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    v40 = v5 * *(a1 + 1604);
    *(a1 + 1604) = v40;
    v41 = 1;
    do
    {
      v42 = fabsf(*v4);
      if (v42 > v40)
      {
        *(a1 + 1604) = v42;
        v40 = v42;
      }

      ++v4;
      v43 = v2 > v41++;
    }

    while (v43);
    DspLib::Biquad::Filter::process((a1 + 1280), v13, v11, v13, v11);
    DspLib::multiply(v13, v11, *(*(a1 + 24) + 36));
    v52 = v13;
    v53 = v13;
    *&v50 = &v53;
    *(&v50 + 1) = 1;
    v51 = v11;
    v47 = &v52;
    v48 = 1;
    v49 = v11;
    DspLib::EnvelopeProcessor::process(a1 + 1352, &v50, &v47);
    v44 = v5 * *(a1 + 1588);
    *(a1 + 1588) = v44;
    if (v11)
    {
      v45 = 1;
      do
      {
        v46 = *v13;
        if (*v13 > v44)
        {
          *(a1 + 1588) = v46;
          v44 = v46;
        }

        ++v13;
        v43 = v11 > v45++;
      }

      while (v43);
    }

    if (v44 > *(a1 + 1592))
    {
      *(a1 + 1592) = v44;
    }

    DspLib::CPUMeasure::resume((a1 + 104));
  }
}

void DspLib::BassKoenig::Algorithm::HighpassChannel::process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DspLib::Biquad::Filter::process(a1, a2, a3, a4, a5);
  DspLib::Biquad::Filter::process(a1 + 13, a4, a5, a6, a7);
  v14 = a6;
  v15 = a6;
  v13[0] = &v15;
  v13[1] = 1;
  v13[2] = a7;
  v12[0] = &v14;
  v12[1] = 1;
  v12[2] = a7;
  DspLib::EnvelopeProcessor::process((a1 + 22), v13, v12);
}

float DspLib::BassKoenig::Algorithm::status(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 1564);
  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = *(v4 + 12);
    if (v6 >= v5)
    {
      v6 = *(a1 + 1564);
    }
  }

  *(a1 + 1564) = v6;
  *(a2 + 12) = log10f(*(a1 + 1596) + 0.000001) * 20.0;
  *(a2 + 24) = log10f(*(a1 + 1600) + 1.0e-12) * 10.0;
  *(a2 + 16) = log10f(*(a1 + 1604) + 0.000001) * 20.0;
  *(a2 + 32) = log10f(*(a1 + 1608) + 1.0e-12) * 10.0;
  *(a2 + 20) = *(a1 + 1604) * *(v4 + 36);
  *(a2 + 28) = sqrtf(*(a1 + 1608)) * *(v4 + 36);
  v7 = *(a1 + 1564);
  *(a2 + 56) = v7;
  v8 = *(v4 + 16);
  v9 = logf(*(a1 + 1572));
  *a2 = v8 * expf(v7 * v9);
  v10 = *(v4 + 16);
  v11 = *(a1 + 1560);
  v12 = logf(*(a1 + 1572));
  *(a2 + 64) = v10 * expf(v11 * v12);
  *(a2 + 8) = *(a1 + 1588);
  *(a2 + 4) = *(a1 + 1592);
  *(a2 + 36) = *(a1 + 240);
  *(a2 + 40) = *(v4 + 236);
  *(a2 + 44) = *(v4 + 240);
  *(a2 + 48) = *(v4 + 244);
  *(a2 + 52) = *(v4 + 248);
  v13 = *(a1 + 16);
  *(a2 + 60) = v13;
  result = *(a1 + 1624);
  *(a2 + 68) = result;
  return result;
}

void DspLib::BassKoenig::Algorithm::~Algorithm(DspLib::BassKoenig::Algorithm *this)
{
  DspLib::BassKoenig::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5919F60;
  v21 = (this + 1528);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v21);
  v2 = *(this + 189);
  *(this + 189) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 185);
  if (v3)
  {
    *(this + 186) = v3;
    operator delete(v3);
  }

  v4 = *(this + 182);
  if (v4)
  {
    *(this + 183) = v4;
    operator delete(v4);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 1408));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 1360));
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1328));
  v5 = *(this + 163);
  if (v5)
  {
    *(this + 164) = v5;
    operator delete(v5);
  }

  v6 = *(this + 157);
  if (v6)
  {
    *(this + 158) = v6;
    operator delete(v6);
  }

  v7 = *(this + 153);
  if (v7)
  {
    *(this + 154) = v7;
    operator delete(v7);
  }

  v21 = (this + 1192);
  std::vector<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::__destroy_vector::operator()[abi:ne200100](&v21);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1168));
  v8 = *(this + 143);
  if (v8)
  {
    *(this + 144) = v8;
    operator delete(v8);
  }

  v21 = (this + 1096);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v21);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 1064));
  v9 = *(this + 130);
  if (v9)
  {
    *(this + 131) = v9;
    operator delete(v9);
  }

  v21 = (this + 992);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v21);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 960));
  v10 = *(this + 117);
  if (v10)
  {
    *(this + 118) = v10;
    operator delete(v10);
  }

  v11 = *(this + 111);
  if (v11)
  {
    *(this + 112) = v11;
    operator delete(v11);
  }

  v21 = (this + 856);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v21 = (this + 824);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v21 = (this + 768);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v12 = *(this + 90);
  if (v12)
  {
    *(this + 91) = v12;
    operator delete(v12);
  }

  v13 = *(this + 87);
  if (v13)
  {
    *(this + 88) = v13;
    operator delete(v13);
  }

  v14 = *(this + 82);
  if (v14)
  {
    *(this + 83) = v14;
    operator delete(v14);
  }

  v21 = (this + 576);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v15 = *(this + 66);
  if (v15)
  {
    *(this + 67) = v15;
    operator delete(v15);
  }

  v16 = *(this + 63);
  if (v16)
  {
    *(this + 64) = v16;
    operator delete(v16);
  }

  v17 = *(this + 58);
  if (v17)
  {
    *(this + 59) = v17;
    operator delete(v17);
  }

  v18 = *(this + 49);
  if (v18)
  {
    *(this + 50) = v18;
    operator delete(v18);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 344));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 296));
  v19 = *(this + 34);
  if (v19)
  {
    *(this + 35) = v19;
    operator delete(v19);
  }

  v20 = *(this + 31);
  if (v20)
  {
    *(this + 32) = v20;
    operator delete(v20);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::FIR::~FIR(DspLib::FIR *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DspLib::EnvelopeProcessor::~EnvelopeProcessor(DspLib::EnvelopeProcessor *this)
{
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 56));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 8));
}

void std::vector<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::__append(uint64_t a1, unint64_t a2)
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

    v14[4] = a1;
    if (v10)
    {
      std::allocator<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::~__split_buffer(v14);
  }
}

void std::allocator<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

DspLib::BassKoenig::Algorithm::HighpassChannel *DspLib::BassKoenig::Algorithm::HighpassChannel::HighpassChannel(DspLib::BassKoenig::Algorithm::HighpassChannel *this)
{
  *this = 0;
  *(this + 104) = 0;
  v2 = (this + 104);
  *(this + 176) = 0;
  *(this + 45) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  DspLib::ChannelBuffer::ChannelBuffer((this + 184), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 232), 0, 0);
  *(this + 42) = 0;
  *(this + 82) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  DspLib::Biquad::ParametricFilter::initialize(this, 1uLL, 44100.0, 2uLL);
  DspLib::Biquad::Filter::initialize(v2, 1uLL, 2uLL);
  return this;
}

void sub_1DDBD4D04(_Unwind_Exception *a1)
{
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 184));
  DspLib::Biquad::Filter::~Filter(v2);
  DspLib::Biquad::ParametricFilter::~ParametricFilter(v1);
  _Unwind_Resume(a1);
}

DspLib::BassKoenig::Algorithm::HighpassChannel *std::unique_ptr<DspLib::BassKoenig::Algorithm::HighpassChannel>::reset[abi:ne200100](DspLib::BassKoenig::Algorithm::HighpassChannel **a1, DspLib::BassKoenig::Algorithm::HighpassChannel *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DspLib::BassKoenig::Algorithm::HighpassChannel::~HighpassChannel(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void DspLib::BassKoenig::Algorithm::HighpassChannel::~HighpassChannel(DspLib::BassKoenig::Algorithm::HighpassChannel *this)
{
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    *(this + 39) = v3;
    operator delete(v3);
  }

  v4 = *(this + 35);
  if (v4)
  {
    *(this + 36) = v4;
    operator delete(v4);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 232));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 184));
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 152));
  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v7 = (this + 80);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }
}

void DspLib::BassKoenig::Algorithm::setParameter()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 147);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

uint64_t DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsImproved()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  return printf("DSP Sound assertion in %s at line %d\n", v0, 873);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  return printf("DSP Sound assertion in %s at line %d\n", v0, 874);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  return printf("DSP Sound assertion in %s at line %d\n", v0, 783);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  return printf("DSP Sound assertion in %s at line %d\n", v0, 766);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  return printf("DSP Sound assertion in %s at line %d\n", v0, 765);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  return printf("DSP Sound assertion in %s at line %d\n", v0, 760);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  return printf("DSP Sound assertion in %s at line %d\n", v0, 758);
}

void DspLib::BassKoenig::calculateLoudspeakerModelCoefficientsLegacy(int a1)
{
  v2 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BassKoenig/dsp/DspLibBassKoenig.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v2, a1);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

uint64_t DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::initialize(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this, double a2)
{
  *(this + 1) = a2;
  DspLib::ComplexVector::setLength((this + 8648), 0x200uLL);
  DspLib::ComplexVector::setLength((this + 8488), 0x200uLL);
  DspLib::ComplexVector::setLength((this + 8568), 0x200uLL);
  DspLib::ComplexVector::setLength((this + 8728), 0x200uLL);
  DspLib::ComplexVector::setLength((this + 8808), 0x200uLL);
  DspLib::ComplexVector::setLength((this + 8888), 0x200uLL);
  *this = 1;

  return DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::reset(this);
}

uint64_t DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::reset(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this)
{
  DspLib::FFT::BufferedForwardSTFT::reset((this + 8280));
  DspLib::FFT::BufferedForwardSTFT::reset((this + 8384));
  DspLib::ComplexVector::operator=(this + 8648, 0.0);
  DspLib::ComplexVector::operator=(this + 8728, 0.0);
  DspLib::ComplexVector::operator=(this + 8808, 0.0);
  DspLib::ComplexVector::operator=(this + 8888, 0.0);
  DspLib::ComplexVector::operator=(this + 8488, 0.0);
  result = DspLib::ComplexVector::operator=(this + 8568, 0.0);
  *(this + 11) = 1120403456;
  *(this + 80) = 0;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::uninitialize(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this)
{
  DspLib::ComplexVector::setLength((this + 8488), 0);
  DspLib::ComplexVector::setLength((this + 8568), 0);
  DspLib::ComplexVector::setLength((this + 8648), 0);
  DspLib::ComplexVector::setLength((this + 8728), 0);
  DspLib::ComplexVector::setLength((this + 8808), 0);

  DspLib::ComplexVector::setLength((this + 8888), 0);
}

void DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::setParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v6 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 5u);
  v7 = *(a1 + 8) * 0.0009765625;
  v8 = vcvtas_u32_f32(*(a2 + 4 * v6) / v7);
  if (v8 >= 0x1FF)
  {
    v8 = 511;
  }

  *(a1 + 16) = v8;
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v9 = a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 3u);
  v10 = *(a1 + 8) * 0.001953125;
  *(a1 + 72) = expf(-1.0 / (((*(v9 + 8) * 1000.0) * v10) / 1000.0));
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v11 = a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 4u);
  v12 = *(a1 + 8) * 0.001953125;
  *(a1 + 76) = expf(-1.0 / (((*v11 * 1000.0) * v12) / 1000.0));
  if ((*(a1 + 56) & 1) == 0)
  {
    *(a1 + 64) = *(v9 + 4);
    *(a1 + 60) = *v9;
  }

  v13 = 1.0;
  if (*(v9 + 16) >= 0.5)
  {
    v13 = -1.0;
  }

  *(a1 + 68) = v13;
  DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::setFftWindows(a1, v13);
  *(a1 + 24) = *(v11 + 16);
  *(a1 + 28) = *(v11 + 20);
  *(a1 + 34) = *(v11 + 4) >= 0.5;
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v14 = *(a2 + 4);
  if (v14 >= 0.5 && (*(a1 + 33) & 1) == 0)
  {
    DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::reset(a1);
  }

  *(a1 + 33) = v14 >= 0.5;
  v15 = 0;
  DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::readRdc(&DspLib::LoudspeakerSystemIDV1::gNonVolatileRecord, (a1 + 36), (a1 + 40), &v15);
  if (!v15)
  {
    *(a1 + 44) = 1120403456;
  }

  *(a1 + 48) = 1;
}

uint64_t DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::setFftWindows(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this, float a2)
{
  v3 = *(this + 15) * a2;
  DspLib::makePeriodicHannWindow(this + 21, 0x400uLL);
  v4 = DspLib::norm(this + 21, 0x400uLL);
  DspLib::multiply(this + 84, 1024, v3 / v4);
  v5 = *(this + 16);
  DspLib::makePeriodicHannWindow(this + 1045, 0x400uLL);
  v6 = v5 / DspLib::norm(this + 1045, 0x400uLL);

  return DspLib::multiply(this + 4180, 1024, v6);
}

uint64_t DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::setSpVACalibration(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 1;
  *(a1 + 60) = vrev64_s32(*(a2 + 4));
  return DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::setFftWindows(a1, *(a1 + 68));
}

void DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::process(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this, float *a2, float *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v39 = *MEMORY[0x1E69E9840];
  if (*v3)
  {
    v7 = v3;
    if (*(v3 + 48))
    {
      v8 = v6;
      if (v6)
      {
        v9 = v5;
        v10 = v4;
        v37[0] = 0;
        DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::readRdc(&DspLib::LoudspeakerSystemIDV1::gNonVolatileRecord, (v3 + 36), (v3 + 40), v37);
        if (!v37[0])
        {
          *(v7 + 44) = 1120403456;
        }

        *v37 = v8;
        v35 = v8;
        DspLib::copy(v10, v8, v38);
        DspLib::copy(v9, v8, v36);
        v38[0] = v38[0] + 0.000001;
        DspLib::FFT::BufferedForwardSTFT::addInput(v7 + 8280, v38, *v37);
        DspLib::FFT::BufferedForwardSTFT::addInput(v7 + 8384, v36, v8);
        if (*(v7 + 8472))
        {
          DspLib::FFT::powerSpectrum((v7 + 8888), (v7 + 8808), (v7 + 8728), v11);
          v12 = *(v7 + 72);
          DspLib::operator*=((v7 + 8648), v12);
          DspLib::operator*=((v7 + 8728), 1.0 - v12);
          DspLib::operator+=((v7 + 8648), (v7 + 8728));
          DspLib::FFT::powerSpectrum((v7 + 8808), (v7 + 8808), (v7 + 8728), v13);
          v14 = *(v7 + 72);
          DspLib::operator*=((v7 + 8488), v14);
          DspLib::operator*=((v7 + 8728), 1.0 - v14);
          DspLib::operator+=((v7 + 8488), (v7 + 8728));
          DspLib::FFT::powerSpectrum((v7 + 8888), (v7 + 8888), (v7 + 8728), v15);
          v16 = *(v7 + 72);
          DspLib::operator*=((v7 + 8568), v16);
          DspLib::operator*=((v7 + 8728), 1.0 - v16);
          DspLib::operator+=((v7 + 8568), (v7 + 8728));
          if (*(v7 + 32) == 1)
          {
            v17 = *(v7 + 16);
            *(v7 + 80) = 1;
            v18 = DspLib::ComplexSpan::operator[]((v7 + 8888), v17);
            v20 = v19;
            v21 = DspLib::ComplexSpan::operator[]((v7 + 8808), *(v7 + 16));
            v22 = *(v7 + 24);
            v23 = *(v7 + 28);
            *v34 = v18;
            v34[1] = v20;
            *v33 = v21;
            v33[1] = v24;
            v26 = DspLib::abs(v34, v25);
            v29 = (v26 + (v22 * 0.000000001)) / (DspLib::abs(v33, v27) + 0.000000001);
            if (v29 <= v23)
            {
              v30 = v29;
            }

            else
            {
              v30 = v23;
            }

            if (v29 >= v22)
            {
              v31 = v30;
            }

            else
            {
              v31 = v22;
            }

            v32 = v31 + (*(v7 + 76) * (*(v7 + 40) - v31));
            *(v7 + 36) = v31;
            *(v7 + 40) = v32;
            *(v7 + 44) = vabds_f32(v31, v32);
            DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::takeRdcProcessTimeStamp(&DspLib::LoudspeakerSystemIDV1::gNonVolatileRecord, v28);
          }

          else
          {
            *(v7 + 80) = 0;
          }
        }

        DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::writeRdc(&DspLib::LoudspeakerSystemIDV1::gNonVolatileRecord, *(v7 + 36), *(v7 + 40));
      }
    }

    else
    {
      DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::process();
    }
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::process();
  }
}

void DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::status(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 8) * 0.0009765625;
    *&v4 = *(a1 + 16) * v3;
    *(a2 + 140) = *&v4;
    LOBYTE(v4) = *(a1 + 80);
    *a2 = v2;
    *(a2 + 4) = v4;
    v5 = *(a1 + 44);
    *(a2 + 104) = v5;
    LOBYTE(v5) = *(a1 + 56);
    *(a2 + 232) = v5;
    *(a2 + 236) = *(a1 + 60);
    *(a2 + 240) = *(a1 + 64);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::status();
  }
}

float DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::impedance(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this, DSPSplitComplex *__C)
{
  DspLib::ComplexSpan::operator=(__C, (this + 8648));

  return DspLib::FFT::divide(__C, (this + 8488), v4);
}

void DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceMeasurement.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 145);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceMeasurement.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 146);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ImpedanceMeasurement.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 197);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudnessMeter::LKFSPreFilter::initialize(DspLib::LoudnessMeter::LKFSPreFilter *this, unsigned int a2, double a3, uint64_t a4)
{
  DspLib_ITU1770_channelWeightsForLayout(a4, 0, &v15);
  v7 = a2;
  if (a2 != v16 - v15)
  {
    std::vector<float>::resize(&v15, a2);
    v8 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudnessMeter/dsp/DspLibLoudnessMeter.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v8, 20);
    ++DspLibDebug::mAssertCounter;
  }

  DspLib::Biquad::Design::kWeighting(a3, &v13);
  DspLib::Biquad::Filter::initialize(this, a2, 2uLL);
  v11 = v13;
  v12 = v14;
  if (a2)
  {
    v9 = 0;
    do
    {
      v14 = v12;
      v13 = v11;
      v10 = sqrtf(v15[v9]);
      *&v13 = vmul_n_f32(*&v11, v10);
      *(&v13 + 2) = v10 * *(&v11 + 2);
      DspLib::Biquad::Filter::setCoefficients(this, &v13, 2, 0, v9++);
    }

    while (v7 != v9);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1DDBD5B9C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::LoudnessMeter::TruePeakMeter::configure(DspLib::LoudnessMeter::TruePeakMeter *this, char a2, unsigned int a3, uint64_t a4)
{
  *this = a2;
  if (a2)
  {
    v6 = a3;
    DspLib::ChannelBuffer::resize((this + 112), a3, 4 * a4);
    std::vector<std::vector<float>>::resize(this + 7, v6);
    DspLib::PolyPhaseInterpolator::setSrcParameters((this + 8), 4, a4);

    DspLib::PolyPhaseInterpolator::setCoefficients(this + 2, &DspLib::kTruePeakFIRcoefficients, 0x30uLL);
  }

  else
  {
    std::vector<std::vector<float>>::resize(this + 7, 0);
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 14);
    *(this + 18) = *(this + 17);
  }
}

void DspLib::LoudnessMeter::TruePeakMeter::process(uint64_t a1, __int128 *a2)
{
  if (*a1 == 1)
  {
    v12 = v2;
    v13 = v3;
    v5 = 4 * *(a2 + 2);
    v6 = *(a1 + 136);
    v7 = (*(a1 + 144) - v6) >> 3;
    v10 = *a2;
    v11 = *(a2 + 2);
    v9[0] = v6;
    v9[1] = v7;
    v9[2] = v5;
    DspLib::PolyPhaseInterpolator::process((a1 + 8), &v10, v9);
    *&v10 = v6;
    *(&v10 + 1) = v7;
    v11 = v5;
    v8 = DspLib::maxMagnitude(&v10);
    if (*(a1 + 160) >= v8)
    {
      v8 = *(a1 + 160);
    }

    *(a1 + 160) = v8;
  }
}

void DspLib::LoudnessMeter::Histogram::configure(DspLib::LoudnessMeter::Histogram *this, float a2, float a3, float a4, unint64_t a5)
{
  v9 = a2 + a4;
  v10 = a3 - v9;
  *this = v9;
  *(this + 1) = (1.0 / v10) + 10.0;
  LODWORD(a5) = vcvtas_u32_f32((v10 / 0.1) + 1.0);
  v12 = *(this + 1);
  v11 = (this + 8);
  if (a5 != (*(this + 2) - v12) >> 2)
  {
    std::vector<float>::resize(v11, a5);
    DspLib::ramp(*(this + 1), (*(this + 2) - *(this + 1)) >> 2, 0, a2, a3 - a4);
    v14 = *(this + 1);
    v15 = *(this + 2);
    if (v14 == v15)
    {
      v16 = *(this + 1);
    }

    else
    {
      do
      {
        *v14 = DspLib::dB2Power(v13, *v14);
        ++v14;
      }

      while (v14 != v15);
      v14 = *(this + 1);
      v16 = *(this + 2);
    }

    std::vector<float>::resize(this + 4, (v16 - v14) >> 2);
    v17 = *(this + 4);
    v18 = (*(this + 5) - v17) >> 2;

    DspLib::clear(v17, v18);
  }
}

void DspLib::LoudnessMeter::LoudnessProcessor::initialize(DspLib::LoudnessMeter::LoudnessProcessor *this, int a2, double a3, float a4, float a5)
{
  *this = a2;
  v8 = vcvtad_u64_f64(a3 / 10.0);
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = vcvtad_u64_f64(a3 * 0.400000006);
  *(this + 1) = v8;
  *(this + 2) = v9;
  v10 = vcvtad_u64_f64(a3 * 3.0);
  if (a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  std::vector<float>::resize(this + 3, v11);
  *(this + 12) = a4;

  DspLib::LoudnessMeter::Histogram::configure((this + 72), a4 + -10.0, a5, -0.691, v12);
}

float DspLib::LoudnessMeter::LoudnessProcessor::reset(float **this)
{
  DspLib::clear(this[3], this[4] - this[3]);
  *(this + 3) = 0;
  DspLib::clear(this[13], this[14] - this[13]);
  result = *(this + 12);
  *(this + 4) = result;
  *(this + 5) = result;
  this[7] = 0;
  this[8] = 0;
  return result;
}

unint64_t DspLib::LoudnessMeter::LoudnessProcessor::consumeInput(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= (*(a1 + 4) - *(a1 + 12)))
  {
    v5 = (*(a1 + 4) - *(a1 + 12));
  }

  else
  {
    v5 = a3;
  }

  DspLib::copy((*(a1 + 32) - 4 * (((*(a1 + 32) - *(a1 + 24)) >> 2) - v5)), ((*(a1 + 32) - *(a1 + 24)) >> 2) - v5, *(a1 + 24));
  DspLib::copy(a2, v5, (*(a1 + 32) - 4 * v5));
  v6 = *(a1 + 12) + v5;
  *(a1 + 12) = v6;
  if (*(a1 + 4) == v6)
  {
    v7 = DspLib::sum((*(a1 + 32) - 4 * *(a1 + 8)), *(a1 + 8));
    v8 = *(a1 + 8);
    v9 = v7 / v8;
    v10 = (log10f(v9 + 1.0e-12) * 10.0) + -0.691;
    *(a1 + 16) = v10;
    if (*a1 == 1)
    {
      v11 = *(a1 + 24);
      v12 = (*(a1 + 32) - v11) >> 2;
      v13 = DspLib::sum(v11, v12 - v8);
      *(a1 + 20) = (log10f(((v7 + v13) / v12) + 1.0e-12) * 10.0) + -0.691;
      v10 = *(a1 + 16);
    }

    if (v10 > *(a1 + 48))
    {
      *(a1 + 56) = *(a1 + 56) + v9;
      ++*(a1 + 64);
      v14 = *(a1 + 72);
      if (v14 > v10)
      {
        v10 = *(a1 + 72);
      }

      v15 = vcvtas_u32_f32(*(a1 + 76) * (v10 - v14));
      v16 = *(a1 + 80);
      if (((*(a1 + 88) - v16) >> 2) - 1 < v15)
      {
        v15 = ((*(a1 + 88) - v16) >> 2) - 1;
      }

      *(*(a1 + 104) + 4 * v15) = *(*(a1 + 104) + 4 * v15) + 1.0;
    }

    *(a1 + 12) = 0;
  }

  return v5;
}

void DspLib::LoudnessMeter::LoudnessProcessor::integratedLoudness(DspLib::LoudnessMeter::LoudnessProcessor *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = log10(*(this + 7) / v2) * 10.0 + -0.690999985 + -10.0;
    v4 = *(this + 18);
    if (v4 <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(this + 18);
    }

    v6 = (*(this + 11) - *(this + 10)) >> 2;
    v7 = vcvtas_u32_f32(*(this + 19) * (v5 - v4));
    if (v6 - 1 < v7)
    {
      v7 = v6 - 1;
    }

    v8 = v6 - v7;
    v9 = (*(this + 14) - 4 * (v6 - v7));
    v10 = DspLib::sum(v9, v6 - v7);
    if (v10 > 0.0)
    {
      v11 = v10;
      v12 = *(this + 18);
      if (v12 <= v3)
      {
        v13 = v3;
      }

      else
      {
        v13 = *(this + 18);
      }

      v14 = *(this + 11);
      v15 = vcvtas_u32_f32(*(this + 19) * (v13 - v12));
      v16 = (v14 - *(this + 10)) >> 2;
      if (v16 - 1 < v15)
      {
        v15 = v16 - 1;
      }

      v17 = DspLib::dotProduct(v9, v8, (v14 - 4 * (v16 - v15)));
      log10f(v17 / v11);
    }
  }
}

uint64_t DspLib::LoudnessMeter::Algorithm::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4 && ((*this)[8])(this))
  {
    v5 = ((*this)[7])(this);
    v6 = 1;
    if (v5 >= 0xFFFF0000)
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudnessMeter/dsp/DspLibLoudnessMeter.cpp");
      printf("DSP Sound assertion in %s at line %d\n", v7, 167);
      v6 = 0;
      ++DspLibDebug::mAssertCounter;
    }

    *(this + 680) = v6;
    v8 = ((*this)[8])(this);
    v9 = ((*this)[6])(this);
    v10 = ((*this)[7])(this);
    DspLib::LoudnessMeter::LKFSPreFilter::initialize((this + 39), v8, v9, v10);
    *(this + 8) = 1;
    v11 = ((*this)[19])(this, 0);
    ((*this)[20])(this, v11, v12, 0);
    ((*this)[21])(this);
  }

  return v4;
}

void DspLib::LoudnessMeter::Algorithm::uninitialize(DspLib::LoudnessMeter::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  *(this + 8) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 312));
  *(this + 73) = *(this + 72);
  *(this + 80) = *(this + 79);
  *(this + 83) = *(this + 82);
  std::vector<std::vector<float>>::resize(this + 55, 0);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 62);
  *(this + 66) = *(this + 65);
}

void DspLib::LoudnessMeter::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    v5 = vcvtas_u32_f32(fmaxf((*(*a1 + 104))(a1, 0), 0.0));
    if (v5 == 3)
    {
      *(a1 + 544) = 0;
      v6 = *(a1 + 440);
      v7 = *(a1 + 448);
      while (v6 != v7)
      {
        v8 = *(v6 + 8);
        if (*v6 != v8)
        {
          bzero(*v6, v8 - *v6);
        }

        v6 += 24;
      }

      *(a1 + 464) = 0;
    }

    else if (!v5)
    {
      (*(*a1 + 168))(a1);
    }

    v9 = (*(*a1 + 104))(a1, 4) > 0.0;
    v10 = (*(*a1 + 48))(a1);
    v11 = (*(*a1 + 104))(a1, 2);
    v12 = (*(*a1 + 104))(a1, 3);
    DspLib::LoudnessMeter::LoudnessProcessor::initialize((a1 + 552), v9, v10, v11, v12);
    v13 = (*(*a1 + 104))(a1, 1) > 0.0;
    v14 = (*(*a1 + 64))(a1);
    v15 = (*(*a1 + 232))(a1);

    DspLib::LoudnessMeter::TruePeakMeter::configure((a1 + 384), v13, v14, v15);
  }
}

void DspLib::LoudnessMeter::Algorithm::processBlock(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 680) == 1 && vcvtas_u32_f32((*(*a1 + 104))(a1, 0)) == 2)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v24 = *a2;
    *&v25 = v4;
    *(&v25 + 1) = v5;
    DspLib::LoudnessMeter::TruePeakMeter::process(a1 + 384, &v24);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
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
    MEMORY[0x1EEE9AC00](v8);
    v10 = &v21 - v9;
    v11 = (*(*a1 + 64))(a1);
    MEMORY[0x1EEE9AC00](v11);
    v14 = (&v21 - v13);
    if (v12 >= 0x200)
    {
      v15 = 512;
    }

    else
    {
      v15 = v12;
    }

    bzero(&v21 - v13, v15);
    if ((*(*a1 + 64))(a1))
    {
      v16 = 0;
      v17 = 4 * v7;
      do
      {
        v14[v16++] = v10;
        v10 += v17;
      }

      while (v16 < (*(*a1 + 64))(a1));
    }

    v18 = (*(*a1 + 64))(a1);
    v19 = *a2;
    v23 = v5;
    v24 = v19;
    v25 = *(a2 + 8);
    *&v22 = v14;
    *(&v22 + 1) = v18;
    DspLib::Biquad::Filter::process((a1 + 312), &v24, &v22);
    v24 = v14;
    *&v25 = v18;
    *(&v25 + 1) = v5;
    DspLib::square(&v24);
    v24 = v14;
    *&v25 = v18;
    *(&v25 + 1) = v5;
    DspLib::sum(&v24, *v14, v5);
    if (v5)
    {
        ;
      }
    }
  }
}

void DspLib::LoudnessMeter::Algorithm::status(uint64_t a1, uint64_t a2)
{
  *(a2 + 4) = *(a1 + 568);
  v4 = (a1 + 552);
  v5 = 48;
  if (*(a1 + 552))
  {
    v5 = 20;
  }

  *(a2 + 8) = *(v4 + v5);
  DspLib::LoudnessMeter::LoudnessProcessor::integratedLoudness(v4);
  *a2 = v7;
  if (*(a1 + 384) == 1)
  {
    v8 = DspLib::amp2dBSafe(v6, *(a1 + 544), 0.000001);
  }

  else
  {
    v8 = -120.0;
  }

  *(a2 + 12) = v8;
}

void DspLib::LoudnessMeter::Algorithm::~Algorithm(DspLib::LoudnessMeter::Algorithm *this)
{
  DspLib::LoudnessMeter::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591A080;
  v2 = *(this + 82);
  if (v2)
  {
    *(this + 83) = v2;
    operator delete(v2);
  }

  v3 = *(this + 79);
  if (v3)
  {
    *(this + 80) = v3;
    operator delete(v3);
  }

  v4 = *(this + 72);
  if (v4)
  {
    *(this + 73) = v4;
    operator delete(v4);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 496));
  v5 = *(this + 59);
  if (v5)
  {
    *(this + 60) = v5;
    operator delete(v5);
  }

  v8 = (this + 440);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 408);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 360));
  v6 = *(this + 42);
  if (v6)
  {
    *(this + 43) = v6;
    operator delete(v6);
  }

  *this = &unk_1F591AE18;
  v7 = *(this + 36);
  if (v7)
  {
    *(this + 37) = v7;
    operator delete(v7);
  }

  v8 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v8);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::LoudnessMeter::Algorithm::reset(float **this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 45));
  DspLib::LoudnessMeter::LoudnessProcessor::reset(this + 69);
  *(this + 136) = 0;
  v2 = this[55];
  v3 = this[56];
  while (v2 != v3)
  {
    v4 = *(v2 + 1);
    if (*v2 != v4)
    {
      bzero(*v2, v4 - *v2);
    }

    v2 += 6;
  }

  *(this + 116) = 0;
}

void DspLib::VolumeTaper::Curve::configure(float *__dst, uint64_t a2, int a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = vcvtas_u32_f32(*a2);
  switch(v10)
  {
    case 2u:
      v20 = 0;
      v21 = vbsl_s8(vcgt_f32(0xC2C80000C1F00000, *(a2 + 4)), 0xC2C80000C1F00000, vbsl_s8(vcgt_f32(*(a2 + 4), 1112014848), 1112014848, *(a2 + 4)));
      v22 = 68;
      do
      {
        v23 = ((*&v21.i32[1] - *v21.i32) * 0.125) * (v20 - 8);
        if (*&v21.i32[1] > *v21.i32)
        {
          v23 = 0.0;
        }

        if (v20 <= 8)
        {
          v23 = ((v20 - 3) * (*v21.i32 / 5.0)) - *v21.i32;
        }

        if (v20 <= 2)
        {
          v23 = -70.0 - (v20 * ((*v21.i32 + -70.0) / 3.0));
        }

        __dst[v20++] = v23;
        v22 -= 4;
      }

      while (v22);
      break;
    case 1u:
      v11 = *(a2 + 4);
      v12 = 10.0;
      if (v11 <= 10.0)
      {
        v12 = *(a2 + 4);
      }

      if (v11 >= 0.001)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.001;
      }

      *__dst = -100.0;
      v14 = 0;
      v15 = expf(v13) + -1.0;
      v16 = 1.0;
      do
      {
        v17 = v16 + 1.0;
        v18 = expf((v13 * v16) * 0.0625);
        __dst[++v14] = DspLib::amp2dBSafe(v19, (v18 + -1.0) / v15, 1.0e-20);
        v16 = v17;
      }

      while (v14 != 16);
      break;
    case 0u:
      DspLib::copy(__src, a5, __dst);
      break;
  }

  v24 = 0;
  v25 = 0.0;
  do
  {
    v26 = v25 + 1.0;
    __dst[v24 + 17] = DspLib::elementAtIndexWithInterpolation(a6, a7, v25 * 0.25);
    ++v24;
    v25 = v26;
  }

  while (v24 != 17);

  DspLib::add();
}

float DspLib::VolumeTaper::Curve::gain_dB(DspLib::VolumeTaper::Curve *this, float a2)
{
  v2 = a2 * 16.0;
  v3 = *(this + vcvtms_u32_f32(v2) + 34);
  return v3 + ((v2 - floorf(v2)) * (*(this + vcvtps_u32_f32(v2) + 34) - v3));
}

unint64_t DspLib::VolumeTaper::Curve::sliderPositionForGain(DspLib::VolumeTaper::Curve *this, float a2)
{
  v2 = 0;
  v3 = this + 136;
  while (1)
  {
    v4 = *(this + 34);
    if (v4 >= a2)
    {
      break;
    }

    v2 -= 4;
    this = (this + 4);
    if (v2 == -68)
    {
      goto LABEL_7;
    }
  }

  if (v2 == 0)
  {
    v5 = 0.0;
  }

  else
  {
    if (v2 == -68)
    {
LABEL_7:
      v5 = 1.0;
      goto LABEL_10;
    }

    v5 = (((a2 - *(this + 33)) / (v4 - *(this + 33))) + ((-4 - v2) >> 2)) * 0.0625;
  }

LABEL_10:
  v6 = *&v3[4 * vcvtms_u32_f32(v5 * 16.0)];
  v7 = vabds_f32(a2, v6 + (((v5 * 16.0) - floorf(v5 * 16.0)) * (*&v3[4 * vcvtps_u32_f32(v5 * 16.0)] - v6))) < 1.0;
  v8 = 0.0;
  if (v7)
  {
    v8 = v5;
  }

  return LODWORD(v8) | (v7 << 32);
}

uint64_t DspLib::VolumeTaper::SlewRateLimiter::configure(uint64_t this, int a2, float a3, float32x2_t a4, float32_t a5, int a6)
{
  if (a2)
  {
    *(this + 13) = 1;
    *(this + 28) = 1;
    if (*(this + 12) != a2)
    {
      *(this + 12) = a2;
    }
  }

  else
  {
    if ((*(this + 13) & 1) == 0)
    {
      *(this + 16) = a3;
      *(this + 20) = a3;
      *(this + 24) = 0;
    }

    *(this + 28) = 1;
    if (*(this + 12) != a2)
    {
      *(this + 12) = a2;
      if ((a2 & 1) == 0)
      {
        *(this + 20) = *(this + 16);
        *(this + 24) = 0;
        *(this + 28) = 0;
      }
    }
  }

  a4.f32[1] = a5;
  __asm { FMOV            V2.2S, #1.0 }

  v11 = COERCE_DOUBLE(vdiv_f32(_D2, vdiv_f32(a4, vdup_n_s32(0x447A0000u))));
  if (!a6)
  {
    v11 = *&a4;
  }

  *(this + 4) = v11;
  return this;
}

uint64_t DspLib::VolumeTaper::SlewRateLimiter::setTarget(uint64_t this, float a2)
{
  v2 = *(this + 12);
  if (v2 == 1 && (v3 = *this, *this > 0.0))
  {
    if (*(this + 20) != a2)
    {
      *(this + 20) = a2;
      *(this + 28) = 1;
      if (*(this + 16) <= a2)
      {
        v4 = *(this + 4);
      }

      else
      {
        v4 = -*(this + 8);
      }

      *(this + 24) = v4 / v3;
    }
  }

  else
  {
    *(this + 16) = a2;
    *(this + 20) = a2;
    *(this + 24) = 0;
    *(this + 28) = 1;
  }

  *(this + 13) &= v2;
  return this;
}

void DspLib::VolumeTaper::Dezipper::initialize(DspLib::VolumeTaper::Dezipper *this, double a2)
{
  DspLib::Biquad::Filter::initialize(this, 1uLL, 1uLL);
  v4 = a2;
  DspLib::Biquad::Design::ParametricEQ::design(&DspLib::VolumeTaper::Dezipper::initialize(double)::onePoleSmoother, v4, 0, v5, v6);
  DspLib::Biquad::Filter::setCoefficients(this, v6, 1, 0, 0x41uLL);
}

void DspLib::VolumeTaper::Dezipper::process(uint64_t a1, float *__C, vDSP_Length __N, float a4)
{
  DspLib::ramp(__C, __N, 0, *(a1 + 76), a4);
  *(a1 + 76) = a4;
  DspLib::Biquad::Filter::process(a1, __C, __N, __C, __N);
  *(a1 + 80) = __C[__N - 1];
  v9 = DspLib::amp2dBSafe(v8, *(a1 + 76), 1.0e-20);
  v11 = vabds_f32(v9, DspLib::amp2dBSafe(v10, *(a1 + 80), 1.0e-20));
  *(a1 + 72) = v11 < 0.01;
  if (v11 < 0.01)
  {
    *(a1 + 80) = *(a1 + 76);
  }
}

uint64_t DspLib::VolumeTaper::Algorithm::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4)
  {
    *(this + 8) = 1;
    v5 = ((*this)[6])(this);
    v6 = DspLib::parameterAddress(&DspLib::VolumeTaper::Parameters::kDefinition, 4);
    v7 = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::VolumeTaper::Parameters::kDefinition, v6) + 12);
    v8 = v5;
    *(this + 131) = v8;
    *(this + 136) = v7;
    *(this + 135) = v7;
    *(this + 137) = 0;
    v9 = ((*this)[6])(this);
    DspLib::VolumeTaper::Dezipper::initialize((this + 70), v9);
    v10 = ((*this)[19])(this, 0);
    ((*this)[20])(this, v10, v11, 0);
    ((*this)[21])(this);
  }

  return v4;
}

void DspLib::VolumeTaper::Algorithm::uninitialize(DspLib::VolumeTaper::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  *(this + 8) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 560));
  *(this + 131) = -1082130432;
}

void DspLib::VolumeTaper::Algorithm::reset(DspLib::VolumeTaper::Algorithm *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 608));
  *(this + 649) = 0;
  if (*(this + 536) == 1)
  {
    *(this + 136) = *(this + 135);
    *(this + 137) = 0;
    *(this + 552) = 0;
  }

  v2 = DspLib::VolumeTaper::Algorithm::targetGain(this);
  DspLib::Biquad::Filter::initializeStates((this + 560), v2);
  *(this + 160) = v2;
  *(this + 159) = v2;
  *(this + 632) = 1;
  *(this + 312) = 0;
}

float DspLib::VolumeTaper::Algorithm::targetGain(DspLib::VolumeTaper::Algorithm *this)
{
  v2 = *(this + 135) * 16.0;
  v3 = *(this + vcvtms_u32_f32(v2) + 114);
  v4 = DspLib::dB2Amp(this, v3 + ((v2 - floorf(v2)) * (*(this + vcvtps_u32_f32(v2) + 114) - v3)));
  *(this + 139) = v4;
  v5 = v4 * *(this + 79);
  v6 = 1.0;
  if (*(this + 649))
  {
    v6 = 0.0;
  }

  return v5 * v6;
}

void DspLib::VolumeTaper::Algorithm::setParameter(void *a1, uint64_t a2, float a3)
{
  v6 = DspLib::groupOffset(&DspLib::VolumeTaper::Parameters::kDefinition, a2) + HIDWORD(a2);
  (*(*a1 + 112))(a1, v6);
  if (v8 >= a3)
  {
    v8 = a3;
  }

  if (a3 >= v7)
  {
    v7 = v8;
  }

  *(a1[36] + 4 * v6) = v7;
  if (a2 == 0x400000000)
  {
    DspLib::VolumeTaper::SlewRateLimiter::setTarget(a1 + 524, v7);
    if ((a1[39] & 1) == 0)
    {
      v9 = DspLib::VolumeTaper::Algorithm::targetGain(a1);
      DspLib::Biquad::Filter::initializeStates((a1 + 70), v9);
      *(a1 + 160) = v9;
      *(a1 + 159) = v9;
      *(a1 + 632) = 1;
    }
  }

  else
  {
    v11 = (*(*a1 + 152))(a1, 0);
    v12 = *(*a1 + 160);

    v12(a1, v11, v10, 0);
  }
}

uint64_t DspLib::VolumeTaper::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    v6 = (*(*a1 + 144))(a1, 0, 0);
    *(a1 + 316) = DspLib::dB2Amp(v6, v6[5]);
    v7 = *v6 != 0.0;
    *(a1 + 652) = DspLib::dB2Amp(v8, v6[6]);
    *(a1 + 648) = v7;
    v9 = (*(*a1 + 144))(a1, 2, 0);
    v11 = v10;
    v12 = (*(*a1 + 144))(a1, 1, 0);
    v14 = v13;
    v15 = (*(*a1 + 144))(a1, 3, 0);
    DspLib::VolumeTaper::Curve::configure((a1 + 320), v9, v11, v12, v14, v15, v16);
  }

  return result;
}

uint64_t DspLib::VolumeTaper::Algorithm::processBlock(uint64_t this, __int128 *a2)
{
  v16[257] = *MEMORY[0x1E69E9840];
  v2 = 1;
  *(this + 312) = 1;
  v3 = *(a2 + 2);
  if (v3)
  {
    v5 = this;
    if (*(this + 652) < *(this + 556))
    {
      v2 = *(this + 648);
    }

    v6 = v2 & 1;
    if (*(this + 649) == v6)
    {
      v7 = (this + 552);
      if ((*(this + 552) & 1) == 0 && *(this + 632) == 1)
      {
        v15 = *a2;
        v16[0] = *(a2 + 2);
        return DspLib::multiply(&v15, *(this + 640));
      }
    }

    else
    {
      *(this + 649) = v6;
      v7 = (this + 552);
    }

    v8 = *(this + 548);
    if (v8 == 0.0)
    {
      *v7 = 0;
    }

    else
    {
      *(this + 552) = 1;
      v9 = *(this + 544);
      v10 = *(this + 540);
      v11 = v10 + (v8 * v3);
      *(this + 540) = v11;
      if (((COERCE_UNSIGNED_INT(v9 - v11) ^ COERCE_UNSIGNED_INT(v9 - v10)) & 0x80000000) != 0)
      {
        *(this + 540) = v9;
        *(this + 548) = 0;
      }
    }

    *&v15 = v3;
    v12 = DspLib::VolumeTaper::Algorithm::targetGain(this);
    DspLib::VolumeTaper::Dezipper::process(v5 + 560, v16, v3, v12);
    v13 = *a2;
    v14 = *(a2 + 2);
    return DspLib::multiply(&v13, v16);
  }

  return this;
}

float DspLib::VolumeTaper::Algorithm::status(uint64_t a1, float *a2)
{
  *a2 = DspLib::amp2dBSafe(a1, *(a1 + 556), 1.0e-20);
  result = *(a1 + 540);
  LOBYTE(v5) = *(a1 + 552);
  a2[1] = result;
  a2[2] = v5;
  return result;
}

void DspLib::VolumeTaper::Algorithm::~Algorithm(DspLib::VolumeTaper::Algorithm *this)
{
  *this = &unk_1F591A1A0;
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 608));
  v2 = *(this + 73);
  if (v2)
  {
    *(this + 74) = v2;
    operator delete(v2);
  }

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
  *this = &unk_1F591A1A0;
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 608));
  v2 = *(this + 73);
  if (v2)
  {
    *(this + 74) = v2;
    operator delete(v2);
  }

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
  MEMORY[0x1E12BD160]();
}

DspLib::ThermalSpeakerProtection::SpeakerModel *DspLib::ThermalSpeakerProtection::SpeakerModel::SpeakerModel(DspLib::ThermalSpeakerProtection::SpeakerModel *this, unsigned int a2)
{
  v3 = std::vector<float>::vector[abi:ne200100](this, a2);
  DspLib::clear(*v3, (*(this + 1) - *v3) >> 2);
  *(this + 6) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 15) = _D0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  return this;
}

void sub_1DDBD7B68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::ThermalSpeakerProtection::SpeakerModel::resizeRmsBuffer(DspLib::ThermalSpeakerProtection::SpeakerModel *this, unsigned int a2)
{
  if (a2 != (*(this + 1) - *this) >> 2)
  {
    *(this + 6) = 0;
  }

  std::vector<float>::resize(this, a2);
  v3 = *this;
  v4 = (*(this + 1) - *this) >> 2;

  DspLib::clear(v3, v4);
}

float DspLib::ThermalSpeakerProtection::SpeakerModel::setParameters(uint64_t a1, uint64_t a2, float a3)
{
  *(a1 + 56) = *(a2 + 12);
  *(a1 + 36) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 24);
  *(a1 + 28) = *a2;
  *(a1 + 92) = *(a2 + 28);
  *(a1 + 96) = *(a2 + 40);
  v6 = a3;
  v7 = exp(-1.0 / (*(a2 + 16) * 1000.0 * a3 / 1000.0));
  *(a1 + 40) = v7;
  *(a1 + 48) = 1.0 - v7;
  v8 = exp(-1.0 / (*(a2 + 20) * 1000.0 * v6 / 1000.0));
  *(a1 + 64) = v8;
  *(a1 + 72) = 1.0 - v8;
  *(a1 + 32) = 1.0 / *(a2 + 4);
  *(a1 + 84) = 1.0 - expf(-4.6052 / ((*(a2 + 32) * a3) / 1000.0));
  result = 1.0 - expf(-4.6052 / ((*(a2 + 36) * a3) / 1000.0));
  *(a1 + 88) = result;
  return result;
}

void DspLib::ThermalSpeakerProtection::SpeakerModel::doCalculations(DspLib::ThermalSpeakerProtection::SpeakerModel *this, const DspLib::ThermalSpeakerProtection::SpeakerModel *a2)
{
  v3 = *this;
  v5 = *(this + 1) - v3;
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = DspLib::rms(v3, v5 >> 2) * *(this + 7);
  v8 = (v7 * v7) * *(this + 8);
  *(this + 32) = v7;
  *(this + 33) = v8;
  v9 = v8 * *(this + 14);
  v10 = *(this + 6) * (v8 * *(this + 9)) + *(this + 14) * *(this + 5);
  v11 = *(this + 9) * v9 + *(this + 13) * *(this + 8);
  *(this + 13) = v11;
  *(this + 14) = v10;
  v12 = *(this + 20);
  *&v11 = v10 + v11 + v12;
  *(this + 34) = LODWORD(v11);
  if (!a2)
  {
    goto LABEL_15;
  }

  v13 = (*(this + 23) - v12);
  v14 = *(a2 + 13);
  v15 = (v13 - v14) / (v10 + 1.0);
  v16 = 1.0;
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  v17 = v15 < 0.0;
  v18 = 0.0;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = sqrtf(v18);
  v20 = *(this + 30);
  if (v19 > v20)
  {
    v21 = v19 - v20;
    v22 = *(this + 22);
LABEL_11:
    v20 = v20 + (v21 * v22);
    goto LABEL_12;
  }

  if (v19 < v20)
  {
    v21 = v19 - v20;
    v22 = *(this + 21);
    goto LABEL_11;
  }

LABEL_12:
  v23 = v14 + *(a2 + 14) + *(a2 + 20);
  v17 = (*(a2 + 23) + *(a2 + 24)) < v23;
  v24 = 0.1;
  if (!v17)
  {
    v24 = v20;
  }

  *(this + 30) = v24;
  *(this + 31) = v24;
LABEL_15:
  *(this + 6) = 0;
  *(this + 35) = (*(this + 1) - *this) >> 2;
}

long double DspLib::ThermalSpeakerProtection::SpeakerModel::thermalDecay(DspLib::ThermalSpeakerProtection::SpeakerModel *this, long double result, float a3)
{
  if (*(this + 1) != *this)
  {
    v4 = (*&result * a3);
    v5 = log(*(this + 8));
    *(this + 13) = *(this + 13) * exp(v5 * v4);
    v6 = log(*(this + 5));
    result = *(this + 14) * exp(v6 * v4);
    *(this + 14) = result;
  }

  return result;
}

DspLib::ThermalSpeakerProtection::Algorithm *DspLib::ThermalSpeakerProtection::Algorithm::Algorithm(DspLib::ThermalSpeakerProtection::Algorithm *this)
{
  v2 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::ThermalSpeakerProtection::Parameters::kDefault, 0x33uLL, &DspLib::ThermalSpeakerProtection::Parameters::kMinimum, 51, &DspLib::ThermalSpeakerProtection::Parameters::kMaximum, 51);
  *v2 = &unk_1F591A2C0;
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0;
  DspLib::ChannelBuffer::ChannelBuffer((v2 + 408), 0, 0);
  *(this + 456) = 0;
  *(this + 648) = 0;
  *(this + 656) = 0;
  *(this + 848) = 0;
  return this;
}

void sub_1DDBD7F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  DspLib::Biquad::ParametricFilter::~ParametricFilter((v10 + 38));
  a10 = v10 + 35;
  std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v12;
  std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::__destroy_vector::operator()[abi:ne200100](&a10);
  DspLib::AlgorithmBase::~AlgorithmBase(v10);
  _Unwind_Resume(a1);
}

uint64_t DspLib::ThermalSpeakerProtection::Algorithm::initialize(DspLib::ThermalSpeakerProtection::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if ((*(*this + 64))(this) >= 0x11)
  {
    DspLib::ThermalSpeakerProtection::Algorithm::initialize();
  }

  else if ((*(*this + 64))(this))
  {
    v5 = (*(*this + 64))(this);
    DspLib::ThermalSpeakerProtection::SpeakerModel::SpeakerModel(&__p, 0);
    std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::resize(this + 32, v5, &__p);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    v6 = (*(*this + 64))(this);
    DspLib::ThermalSpeakerProtection::SpeakerModel::SpeakerModel(&__p, 0);
    std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::resize(this + 35, v6, &__p);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    v7 = (*(*this + 64))(this);
    v8 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 408), v7, v8);
    v9 = (*(*this + 64))(this);
    v10 = (*(*this + 48))(this);
    DspLib::Biquad::ParametricFilter::initialize((this + 304), v9, v10, 1uLL);
    *(this + 107) = 0;
    *(this + 8) = 1;
    v11 = (*(*this + 208))(this);
    (*(*this + 216))(this, v11);
    (*(*this + 160))(this);
    (*(*this + 168))(this);
    DspLib::elapsedTimeInMilliseconds((this + 856), v12);
  }

  else
  {
    DspLib::ThermalSpeakerProtection::Algorithm::initialize();
  }

  return v4;
}

void sub_1DDBD82B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 144 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 144);
        v9 -= 144;
        v10 = v11;
        if (v11)
        {
          *(v4 - 136) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void DspLib::ThermalSpeakerProtection::Algorithm::uninitialize(DspLib::ThermalSpeakerProtection::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 51);
  *(this + 55) = *(this + 54);
  std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::clear[abi:ne200100](this + 32);
  std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::clear[abi:ne200100](this + 35);
  DspLib::Biquad::ParametricFilter::uninitialize((this + 304));
  std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 456);

  std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 656);
}

void std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 144);
      v4 -= 144;
      v5 = v6;
      if (v6)
      {
        *(v2 - 136) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    v7[3] = v1;
    v7[4] = v2;
    DspLib::ChannelBuffer::~ChannelBuffer((a1 + 136));
    v4 = *(a1 + 112);
    if (v4)
    {
      *(a1 + 120) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      *(a1 + 96) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      *(a1 + 72) = v6;
      operator delete(v6);
    }

    v7[0] = (a1 + 40);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](v7);
    *(a1 + 192) = 0;
  }
}

void DspLib::ThermalSpeakerProtection::Algorithm::reset(DspLib::ThermalSpeakerProtection::Algorithm *this)
{
  if (*(this + 8))
  {
    v2 = *(this + 32);
    v3 = *(this + 33);
    if (v2 != v3)
    {
      __asm { FMOV            V8.2S, #1.0 }

      do
      {
        DspLib::clear(*v2, (*(v2 + 8) - *v2) >> 2);
        *(v2 + 24) = 0;
        *(v2 + 120) = _D8;
        *(v2 + 104) = 0;
        *(v2 + 112) = 0;
        *(v2 + 128) = 0;
        *(v2 + 136) = 0;
        v2 += 144;
      }

      while (v2 != v3);
    }

    v9 = *(this + 35);
    v10 = *(this + 36);
    if (v9 != v10)
    {
      __asm { FMOV            V8.2S, #1.0 }

      do
      {
        DspLib::clear(*v9, (*(v9 + 8) - *v9) >> 2);
        *(v9 + 24) = 0;
        *(v9 + 120) = _D8;
        *(v9 + 104) = 0;
        *(v9 + 112) = 0;
        *(v9 + 128) = 0;
        *(v9 + 136) = 0;
        v9 += 144;
      }

      while (v9 != v10);
    }

    v12 = (*(this + 55) - *(this + 54)) >> 3;
    v15[0] = *(this + 54);
    v15[1] = v12;
    v13 = *(this + 51);
    if (*(this + 52) == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = (v13[1] - *v13) >> 2;
    }

    v15[2] = v14;
    DspLib::clear(v15);
    DspLib::Biquad::SetupWrapper::reset((this + 352));
    if (*(this + 648))
    {
      DspLib::AudioMeter::Algorithm::reset((this + 456));
    }

    if (*(this + 848) == 1)
    {
      DspLib::AudioMeter::Algorithm::reset((this + 656));
    }
  }

  else
  {
    DspLib::ThermalSpeakerProtection::Algorithm::reset();
  }
}

uint64_t DspLib::ThermalSpeakerProtection::Algorithm::setMeteringIsEnabled(DspLib::ThermalSpeakerProtection::Algorithm *this, int a2)
{
  *(this + 96) = a2;
  result = (*(*this + 40))(this);
  if (result)
  {
    if (a2)
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
      std::optional<DspLib::AudioMeter::Algorithm>::operator=[abi:ne200100]<DspLib::AudioMeter::Algorithm,void>(this + 456, &v10);
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
      std::optional<DspLib::AudioMeter::Algorithm>::operator=[abi:ne200100]<DspLib::AudioMeter::Algorithm,void>(this + 656, &v10);
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
      v5 = (*(*this + 64))(this);
      v6 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 456), v5, v6);
      v7 = (*(*this + 64))(this);
      v8 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 656), v7, v8);
      v9 = *(this + 3);
      DspLib::AudioMeter::Algorithm::setParameters(this + 456, v9);
      DspLib::AudioMeter::Algorithm::setParameters(this + 656, v9);
    }

    else
    {
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 456);
      std::__optional_destruct_base<DspLib::AudioMeter::Algorithm,false>::reset[abi:ne200100](this + 656);
    }

    return (*(*this + 160))(this);
  }

  return result;
}

uint64_t std::optional<DspLib::AudioMeter::Algorithm>::operator=[abi:ne200100]<DspLib::AudioMeter::Algorithm,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  if (v4 == 1)
  {
    std::vector<DspLib::RMS>::__vdeallocate((a1 + 40));
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    std::vector<double>::__move_assign(a1 + 64, (a2 + 64));
    std::vector<double>::__move_assign(a1 + 88, (a2 + 88));
    std::vector<double>::__move_assign(a1 + 112, (a2 + 112));
    DspLib::ChannelBuffer::operator=((a1 + 136), (a2 + 136));
    v7 = *(a2 + 184);
  }

  else
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    DspLib::ChannelBuffer::ChannelBuffer(a1 + 136, (a2 + 136));
    v7 = *(a2 + 184);
    *(a1 + 192) = 1;
  }

  *(a1 + 184) = v7;
  return a1;
}

uint64_t DspLib::ThermalSpeakerProtection::Algorithm::speakerTypeForAudioChannel(DspLib::ThermalSpeakerProtection::Algorithm *this, char a2)
{
  v2 = 0;
  while (1)
  {
    v3 = DspLib::ThermalSpeakerProtection::kSpeakerTypeList[v2];
    if (v3 == 2)
    {
      v4 = *(this + 62);
    }

    else if (v3 == 1)
    {
      v4 = *(this + 61);
    }

    else
    {
      v4 = v3 ? 0 : *(this + 60);
    }

    if ((v4 & (1 << a2)) != 0)
    {
      break;
    }

    if (++v2 == 3)
    {
      return 4;
    }
  }

  return v3;
}

void DspLib::ThermalSpeakerProtection::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    v5 = *(a1 + 16);
    v6 = *(*(a1 + 24) + 36);
    v7 = vcvtas_u32_f32((v6 * v5) / 1000.0);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(*a1 + 64))(a1);
    v10 = *(a1 + 24);
    v11 = vcvtas_u32_f32(v10[23]) & ~(-1 << v9);
    v12 = vcvtas_u32_f32(v10[36]) & ~(-1 << v9);
    v13 = vcvtas_u32_f32(v10[49]) & ~(-1 << v9);
    if ((*(a1 + 240) != v11 || *(a1 + 244) != v12 || *(a1 + 248) != v13) && (v12 ^ v11 ^ v13) == ~(-1 << v9))
    {
      *(a1 + 240) = v11;
      *(a1 + 244) = v12;
      *(a1 + 248) = v13;
      (*(*a1 + 168))(a1);
    }

    if ((*(*a1 + 64))(a1))
    {
      v14 = 0;
      v15 = 0;
      __asm { FMOV            V9.2S, #1.0 }

      v21 = 1000.0 / v6;
      do
      {
        v22 = DspLib::ThermalSpeakerProtection::Algorithm::speakerTypeForAudioChannel(a1, v15);
        if (v22 == 4)
        {
          v23 = *(a1 + 256) + v14;
          DspLib::clear(*v23, (*(v23 + 8) - *v23) >> 2);
          *(v23 + 24) = 0;
          *(v23 + 120) = _D9;
          *(v23 + 104) = 0;
          *(v23 + 112) = 0;
          *(v23 + 128) = 0;
          *(v23 + 136) = 0;
          *(v23 + 28) = 0u;
          *(v23 + 44) = 0u;
          *(v23 + 64) = 0u;
          *(v23 + 80) = 0u;
          *(v23 + 96) = 0;
          v24 = *(a1 + 280) + v14;
          DspLib::clear(*v24, (*(v24 + 8) - *v24) >> 2);
          *(v24 + 24) = 0;
          *(v24 + 120) = _D9;
          *(v24 + 104) = 0;
          *(v24 + 112) = 0;
          *(v24 + 128) = 0;
          *(v24 + 136) = 0;
          *(v24 + 28) = 0u;
          *(v24 + 44) = 0u;
          *(v24 + 64) = 0u;
          *(v24 + 80) = 0u;
          *(v24 + 96) = 0;
        }

        else
        {
          v25 = *(a1 + 24) + 52 * v22;
          DspLib::ThermalSpeakerProtection::SpeakerModel::setParameters(*(a1 + 256) + v14, v25 + 44, v21);
          DspLib::ThermalSpeakerProtection::SpeakerModel::resizeRmsBuffer((*(a1 + 256) + v14), v8);
          DspLib::ThermalSpeakerProtection::SpeakerModel::setParameters(*(a1 + 280) + v14, v25 + 44, v21);
          DspLib::ThermalSpeakerProtection::SpeakerModel::resizeRmsBuffer((*(a1 + 280) + v14), v8);
        }

        ++v15;
        v14 += 144;
      }

      while (v15 < (*(*a1 + 64))(a1));
    }

    v26 = *(*(a1 + 24) + 40);
    v27 = (*(*a1 + 64))(a1);
    v28 = (*(*a1 + 48))(a1);
    DspLib::Biquad::ParametricFilter::initialize((a1 + 304), v27, v28, 1uLL);
    DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 304, v26 << 32, 0x3F34FDF400000000, 0, 0x41uLL);
    if ((*(*a1 + 208))(a1))
    {
      v29 = *(a1 + 24);
      DspLib::AudioMeter::Algorithm::setParameters(a1 + 456, v29);

      DspLib::AudioMeter::Algorithm::setParameters(a1 + 656, v29);
    }
  }
}

void *DspLib::ThermalSpeakerProtection::Algorithm::updateGainLinkage(void *result, void *a2)
{
  v3 = result;
  if (*(result[3] + 200) <= 0.5)
  {
    for (i = 0; i != 3; ++i)
    {
      v8 = DspLib::ThermalSpeakerProtection::kSpeakerTypeList[i];
      if (*(*(v3 + 3) + 52 * v8 + 88) > 0.5)
      {
        if (v8 == 2)
        {
          v9 = v3[62];
        }

        else if (v8 == 1)
        {
          v9 = v3[61];
        }

        else if (v8)
        {
          v9 = 0;
        }

        else
        {
          v9 = v3[60];
        }

        if ((*(*v3 + 64))(v3))
        {
          v10 = 0;
          v11 = 1.0;
          v12 = 120;
          do
          {
            if (((v9 >> v10) & 1) != 0 && *(*a2 + v12) < v11)
            {
              v11 = *(*a2 + v12);
            }

            ++v10;
            v12 += 144;
          }

          while (v10 < (*(*v3 + 64))(v3));
        }

        else
        {
          v11 = 1.0;
        }

        result = (*(*v3 + 64))(v3);
        if (result)
        {
          v13 = 0;
          v14 = 124;
          do
          {
            if ((v9 >> v13))
            {
              *(*a2 + v14) = v11;
            }

            ++v13;
            result = (*(*v3 + 64))(v3);
            v14 += 144;
          }

          while (v13 < result);
        }
      }
    }
  }

  else
  {
    if ((*(*result + 64))(result))
    {
      v4 = 0;
      v5 = 1.0;
      v6 = 120;
      do
      {
        if (*(*a2 + v6) < v5)
        {
          v5 = *(*a2 + v6);
        }

        ++v4;
        v6 += 144;
      }

      while (v4 < (*(*v3 + 64))(v3));
    }

    else
    {
      v5 = 1.0;
    }

    result = (*(*v3 + 64))(v3);
    if (result)
    {
      v15 = 0;
      v16 = 124;
      do
      {
        *(*a2 + v16) = v5;
        ++v15;
        result = (*(*v3 + 64))(v3);
        v16 += 144;
      }

      while (v15 < result);
    }
  }

  return result;
}

uint64_t DspLib::ThermalSpeakerProtection::Algorithm::calculateSpeakerModels(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = result;
  v8 = *(a2 + 16);
  if (a3)
  {
    result = (*(*result + 64))(result);
    if (result)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(a3 + 16);
        v12 = *a4 + v9;
        v13 = *(v12 + 140);
        if (v13 >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          v15 = *(*a3 + 8 * v10);
          *(v12 + 140) = v13 - v14;
          DspLib::fill(v15, v14, *(v12 + 124));
        }

        ++v10;
        result = (*(*v7 + 64))(v7);
        v9 += 144;
      }

      while (v10 < result);
    }
  }

  if (v8)
  {
    LODWORD(v16) = 0;
    v39 = v8;
    while (1)
    {
      v17 = *a4;
      v41 = v16;
      v18 = v8 - v16;
      v19 = *(*a4 + 24);
      v20 = ((*(v17 + 8) - *v17) >> 2) - v19;
      if (v20 >= v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      DspLib::copy((**a2 + 4 * *(a2 + 16) - 4 * v18), v21, (*v17 + 4 * v19));
      v40 = v21;
      *(v17 + 24) += v21;
      result = (*(*v7 + 64))(v7);
      if (result >= 2)
      {
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = *a4 + v22;
          v25 = *(v24 + 144);
          v26 = *(v24 + 168);
          v27 = ((*(v24 + 152) - v25) >> 2) - v26;
          if (v27 >= v18)
          {
            v28 = v18;
          }

          else
          {
            v28 = v27;
          }

          DspLib::copy((*(*a2 + 8 * v23) + 4 * *(a2 + 16) - 4 * v18), v28, (v25 + 4 * v26));
          *(v24 + 168) += v28;
          ++v23;
          result = (*(*v7 + 64))(v7);
          v22 += 144;
        }

        while (v23 < result);
      }

      v16 = (v40 + v41);
      if (*(*a4 + 24) == (*(*a4 + 8) - **a4) >> 2)
      {
        break;
      }

      v8 = v39;
      if (a3)
      {
        goto LABEL_31;
      }

LABEL_39:
      if (v8 <= v16)
      {
        return result;
      }
    }

    result = (*(*v7 + 64))(v7);
    v8 = v39;
    if (result)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        if (a3)
        {
          v31 = (v7[35] + v29);
        }

        else
        {
          v31 = 0;
        }

        DspLib::ThermalSpeakerProtection::SpeakerModel::doCalculations((*a4 + v29), v31);
        ++v30;
        result = (*(*v7 + 64))(v7);
        v29 += 144;
      }

      while (v30 < result);
    }

    if (!a3)
    {
      goto LABEL_39;
    }

    DspLib::ThermalSpeakerProtection::Algorithm::updateGainLinkage(v7, a4);
LABEL_31:
    result = (*(*v7 + 64))(v7);
    if (result)
    {
      v32 = 0;
      v33 = 0;
      v34 = v8 - v16;
      do
      {
        v35 = *a4 + v32;
        v36 = *(v35 + 140);
        if (v36 >= v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = v36;
        }

        if (v37)
        {
          v38 = (*(*a3 + 8 * v33) + 4 * v16);
          *(v35 + 140) = v36 - v37;
          DspLib::fill(v38, v37, *(v35 + 124));
        }

        ++v33;
        result = (*(*v7 + 64))(v7);
        v32 += 144;
      }

      while (v33 < result);
    }

    goto LABEL_39;
  }

  return result;
}

void DspLib::ThermalSpeakerProtection::Algorithm::detectAudioProcessingPause(DspLib::ThermalSpeakerProtection::Algorithm *this, unint64_t *a2)
{
  v3 = DspLib::elapsedTimeInMilliseconds((this + 856), a2);
  if (v3 > 100.0)
  {
    v4 = v3 <= 1000000000.0 ? v3 : *"(knN";
    v5 = *(*(this + 3) + 36);
    if ((*(*this + 64))(this))
    {
      v7 = 0;
      v8 = 0;
      v9 = v4 / 1000.0;
      v10 = 1000.0 / v5;
      do
      {
        *&v6 = v9;
        v11 = DspLib::ThermalSpeakerProtection::SpeakerModel::thermalDecay((*(this + 32) + v7), v6, v10);
        *&v11 = v9;
        DspLib::ThermalSpeakerProtection::SpeakerModel::thermalDecay((*(this + 35) + v7), v11, v10);
        v12 = *(this + 32) + v7;
        if (*(v12 + 8) != *v12)
        {
          v13 = 1.0 - *(v12 + 120);
          v14 = logf(1.0 - *(v12 + 88));
          *(v12 + 120) = 1.0 - (v13 * expf((v9 * v10) * v14));
        }

        ++v8;
        v7 += 144;
      }

      while (v8 < (*(*this + 64))(this));
    }
  }
}

void DspLib::ThermalSpeakerProtection::Algorithm::processBlock(void *a1, void *a2)
{
  if ((*(*a1 + 40))(a1))
  {
    v4 = a2[2];
    v5 = v4;
    if (v4)
    {
      v6 = *a2;
      v7 = a2[1];
      if ((*(*a1 + 208))(a1))
      {
        DspLib::CPUMeasure::pause((a1 + 13));
        *v19 = v6;
        *&v19[8] = v7;
        *&v19[16] = v4;
        DspLib::AudioMeter::Algorithm::analyze((a1 + 57), v19);
        DspLib::CPUMeasure::resume((a1 + 13));
      }

      if (*(a1[3] + 32) <= 0.5)
      {
        *v19 = *a2;
        *&v19[16] = a2[2];
        DspLib::clip(v19, -2.0, 2.0);
        DspLib::ThermalSpeakerProtection::Algorithm::detectAudioProcessingPause(a1, v8);
        v9 = a1[54];
        v10 = (a1[55] - v9) >> 3;
        v15 = v9;
        *&v16 = v10;
        *(&v16 + 1) = v5;
        *v19 = *a2;
        *&v19[8] = *(a2 + 1);
        DspLib::ThermalSpeakerProtection::Algorithm::calculateSpeakerModels(a1, v19, &v15, a1 + 32);
        v17 = v9;
        *&v18 = v10;
        *(&v18 + 1) = v5;
        *v19 = v9;
        *&v19[8] = v10;
        *&v19[16] = v5;
        DspLib::Biquad::Filter::process(a1 + 38, v19, &v17);
        v11 = *a2;
        *&v19[16] = a2[2];
        v17 = v15;
        v18 = v16;
        *v19 = v11;
        DspLib::multiply(v19, &v17);
        *v19 = *a2;
        *&v19[8] = *(a2 + 1);
        DspLib::ThermalSpeakerProtection::Algorithm::calculateSpeakerModels(a1, v19, 0, a1 + 35);
      }

      v12 = *a2;
      v13 = a2[1];
      v14 = a2[2];
      if ((*(*a1 + 208))(a1))
      {
        DspLib::CPUMeasure::pause((a1 + 13));
        *v19 = v12;
        *&v19[8] = v13;
        *&v19[16] = v14;
        DspLib::AudioMeter::Algorithm::analyze((a1 + 82), v19);
        DspLib::CPUMeasure::resume((a1 + 13));
      }
    }
  }

  else
  {
    DspLib::ThermalSpeakerProtection::Algorithm::processBlock();
  }
}

void DspLib::ThermalSpeakerProtection::Algorithm::status(uint64_t a1, float *a2, vDSP_Length __N)
{
  if (*(a1 + 8))
  {
    DspLib::clear(a2, __N);
    v5 = (*(*a1 + 64))(a1);
    v6 = *(a1 + 16);
    *a2 = v5;
    a2[1] = v6;
    if ((*(*a1 + 208))(a1))
    {
      DspLib::AudioMeter::Algorithm::status((a1 + 456), a2 + 114, 0x20uLL);
      DspLib::AudioMeter::Algorithm::status((a1 + 656), a2 + 146, 0x20uLL);
      v7 = (*(*a1 + 64))(a1);
      if (v7)
      {
        v8 = 0;
        v9 = 98;
        do
        {
          v10 = *(a1 + 256) + v8;
          a2[(v9 - 16)] = *(v10 + 132);
          a2[(v9 - 48)] = DspLib::amp2dBSafe(v7, *(v10 + 120), 0.000001);
          a2[(v9 - 32)] = DspLib::amp2dBSafe(v11, *(*(a1 + 256) + v8 + 124), 0.000001);
          v12 = *(a1 + 280) + v8;
          a2[v9] = *(v12 + 132);
          v13 = *(v12 + 112);
          v14 = *(v12 + 104);
          a2[(v9 - 96)] = v14;
          v15 = v13;
          a2[(v9 - 80)] = v15;
          a2[(v9 - 64)] = *(v12 + 136);
          v7 = (*(*a1 + 64))(a1);
          v16 = v9 - 97;
          ++v9;
          v8 += 144;
        }

        while (v16 < v7);
      }

      a2[178] = DspLib::sum(*(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 2);
    }

    else
    {
      DspLib::fill(a2 + 114, 0x10uLL, -100.0);
      DspLib::fill(a2 + 130, 0x10uLL, -100.0);
      DspLib::fill(a2 + 146, 0x10uLL, -100.0);

      DspLib::fill(a2 + 162, 0x10uLL, -100.0);
    }
  }

  else
  {
    DspLib::ThermalSpeakerProtection::Algorithm::status();
  }
}

void DspLib::ThermalSpeakerProtection::Algorithm::~Algorithm(DspLib::ThermalSpeakerProtection::Algorithm *this)
{
  DspLib::ThermalSpeakerProtection::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591A2C0;
  if (*(this + 848) == 1)
  {
    DspLib::ChannelBuffer::~ChannelBuffer((this + 792));
    v2 = *(this + 96);
    if (v2)
    {
      *(this + 97) = v2;
      operator delete(v2);
    }

    v3 = *(this + 93);
    if (v3)
    {
      *(this + 94) = v3;
      operator delete(v3);
    }

    v4 = *(this + 90);
    if (v4)
    {
      *(this + 91) = v4;
      operator delete(v4);
    }

    v9 = (this + 696);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  if (*(this + 648) == 1)
  {
    DspLib::ChannelBuffer::~ChannelBuffer((this + 592));
    v5 = *(this + 71);
    if (v5)
    {
      *(this + 72) = v5;
      operator delete(v5);
    }

    v6 = *(this + 68);
    if (v6)
    {
      *(this + 69) = v6;
      operator delete(v6);
    }

    v7 = *(this + 65);
    if (v7)
    {
      *(this + 66) = v7;
      operator delete(v7);
    }

    v9 = (this + 496);
    std::vector<DspLib::RMS>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  DspLib::ChannelBuffer::~ChannelBuffer((this + 408));
  v9 = (this + 384);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 352));
  v8 = *(this + 41);
  if (v8)
  {
    *(this + 42) = v8;
    operator delete(v8);
  }

  v9 = (this + 280);
  std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 256);
  std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::__destroy_vector::operator()[abi:ne200100](&v9);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *std::vector<DspLib::ThermalSpeakerProtection::SpeakerModel>::__append(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0x8E38E38E38E38E39 * ((v6 - v7) >> 4) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 144 * a2;
      v13 = 144 * a2;
      do
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
        v14 = *(a3 + 24);
        v15 = *(a3 + 40);
        v16 = *(a3 + 56);
        *(v7 + 72) = *(a3 + 72);
        *(v7 + 56) = v16;
        *(v7 + 40) = v15;
        *(v7 + 24) = v14;
        v17 = *(a3 + 88);
        v18 = *(a3 + 104);
        v19 = *(a3 + 120);
        *(v7 + 136) = *(a3 + 136);
        *(v7 + 120) = v19;
        *(v7 + 104) = v18;
        *(v7 + 88) = v17;
        v7 += 144;
        v13 -= 144;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0x8E38E38E38E38E39 * ((v7 - *result) >> 4);
    if (v8 + a2 > 0x1C71C71C71C71C7)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x8E38E38E38E38E39 * ((v6 - *result) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + a2)
    {
      v10 = v8 + a2;
    }

    if (v9 >= 0xE38E38E38E38E3)
    {
      v11 = 0x1C71C71C71C71C7;
    }

    else
    {
      v11 = v10;
    }

    v27 = result;
    if (v11)
    {
      std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>::allocate_at_least[abi:ne200100](result, v11);
    }

    v24 = 0;
    v25 = 144 * v8;
    v26 = 144 * v8;
    std::__split_buffer<DspLib::ThermalSpeakerProtection::SpeakerModel>::__construct_at_end(&v24, a2, a3);
    v20 = v5[1];
    v21 = v25 + *v5 - v20;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>,DspLib::ThermalSpeakerProtection::SpeakerModel*>(v5, *v5, v20, v21);
    v22 = *v5;
    *v5 = v21;
    v23 = v5[2];
    *(v5 + 1) = v26;
    *&v26 = v22;
    *(&v26 + 1) = v23;
    v24 = v22;
    v25 = v22;
    return std::__split_buffer<DspLib::ThermalSpeakerProtection::SpeakerModel>::~__split_buffer(&v24);
  }

  return result;
}

void sub_1DDBD9D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::ThermalSpeakerProtection::SpeakerModel>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<DspLib::ThermalSpeakerProtection::SpeakerModel>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = v4 + 144 * a2;
    v7 = 144 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      v8 = *(a3 + 24);
      v9 = *(a3 + 40);
      v10 = *(a3 + 56);
      *(v4 + 72) = *(a3 + 72);
      *(v4 + 56) = v10;
      *(v4 + 40) = v9;
      *(v4 + 24) = v8;
      v11 = *(a3 + 88);
      v12 = *(a3 + 104);
      v13 = *(a3 + 120);
      *(v4 + 136) = *(a3 + 136);
      *(v4 + 120) = v13;
      *(v4 + 104) = v12;
      *(v4 + 88) = v11;
      v4 += 144;
      v7 -= 144;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBD9E6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>,DspLib::ThermalSpeakerProtection::SpeakerModel*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v7 = *(v6 + 104);
      v8 = *(v6 + 120);
      v9 = *(v6 + 136);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 136) = v9;
      *(a4 + 120) = v8;
      *(a4 + 104) = v7;
      v10 = *(v6 + 24);
      v11 = *(v6 + 40);
      v12 = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 56) = v12;
      *(a4 + 40) = v11;
      *(a4 + 24) = v10;
      v6 += 144;
      a4 += 144;
    }

    while (v6 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      v13 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v13;
        operator delete(v13);
      }

      v5 += 144;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>,DspLib::ThermalSpeakerProtection::SpeakerModel*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>,DspLib::ThermalSpeakerProtection::SpeakerModel*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>,DspLib::ThermalSpeakerProtection::SpeakerModel*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::ThermalSpeakerProtection::SpeakerModel>,DspLib::ThermalSpeakerProtection::SpeakerModel*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 144);
      v3 -= 144;
      v4 = v5;
      if (v5)
      {
        *(v1 - 136) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<DspLib::ThermalSpeakerProtection::SpeakerModel>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DspLib::ThermalSpeakerProtection::SpeakerModel>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::ThermalSpeakerProtection::SpeakerModel>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 144);
    *(a1 + 16) = v2 - 144;
    if (v5)
    {
      *(v2 - 136) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 144;
    }
  }
}

uint64_t *DspLib::ChannelBuffer::operator=(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v2 = *result;
    *result = *a2;
    *a2 = v2;
    v3 = result[1];
    result[1] = a2[1];
    a2[1] = v3;
    v4 = result[2];
    result[2] = a2[2];
    a2[2] = v4;
    v5 = result[3];
    result[3] = a2[3];
    a2[3] = v5;
    v6 = result[4];
    result[4] = a2[4];
    a2[4] = v6;
    v7 = result[5];
    result[5] = a2[5];
    a2[5] = v7;
  }

  return result;
}

void std::vector<DspLib::RMS>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<DspLib::RMS>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double DspLib::ChannelBuffer::ChannelBuffer(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = a2[1];
  a2[1] = v3;
  v4 = *(a1 + 16);
  *(a1 + 16) = a2[2];
  a2[2] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = a2[3];
  a2[3] = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = a2[4];
  a2[4] = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = a2[5];
  a2[5] = v7;
  return result;
}

void DspLib::ThermalSpeakerProtection::Algorithm::initialize()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/ThermalSpeakerProtection/dsp/DspLibThermalSpeakerProtection.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 176);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/ThermalSpeakerProtection/dsp/DspLibThermalSpeakerProtection.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 175);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}