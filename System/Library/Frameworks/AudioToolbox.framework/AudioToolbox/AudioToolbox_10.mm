uint64_t VPEchoGateV3::Gate_spread_energy(VPEchoGateV3 *this, float *a2, const float *a3, const float *a4, const float *a5, int a6, int a7)
{
  v12 = a5;
  v13 = &a3[a6];
  result = MEMORY[0x1E12BE940](a2, 1, v13, this, 1, a5);
  if (a6 >= 1)
  {
    v15 = v13 - 1;
    v16 = v12 - 1;
    v17 = a2 + 1;
    v18 = a6;
    do
    {
      MEMORY[0x1E12BE940](v17, 1, v15, a4, 1, v16);
      result = MEMORY[0x1E12BE5D0](this, 1, a4, 1, this, 1, v16);
      --v15;
      --v16;
      ++v17;
      --v18;
    }

    while (v18);
  }

  v19 = a6 + 1;
  if (a6 + 1 < a7)
  {
    v20 = (~a6 + a7);
    v21 = this + 4;
    v22 = v12 - 1;
    v23 = &a3[v19];
    do
    {
      MEMORY[0x1E12BE940](a2, 1, v23, a4, 1, v22);
      result = MEMORY[0x1E12BE5D0](v21, 1, a4, 1, v21, 1, v22);
      v21 += 4;
      --v22;
      ++v23;
      --v20;
    }

    while (v20);
  }

  return result;
}

float VPEchoGateV3::GatecrossCorrSpec(VPEchoGateV3 *this, const float *a2, const float *a3, const float *a4, const float *a5, float *a6, float *a7, float *a8, int a9)
{
  __C = 0;
  v14 = a8;
  MEMORY[0x1E12BE9A0](a4, 1, a3, 1, a5, 1, a8);
  vDSP_svesq(a5, 1, &__C + 1, v14);
  MEMORY[0x1E12BE8C0](this, 1, a2, 1, a5, 1, a5, 1, v14);
  vDSP_sve(a5, 1, &__C, v14);
  v15 = *&__C + 8.6736e-19;
  v16 = sqrtf(*(&__C + 1) + 8.6736e-19);
  *a7 = v16;
  result = v15 / v16;
  *a6 = result;
  return result;
}

uint64_t VPEchoGateV3::GatesmoothPowerSpectrum(VPEchoGateV3 *this, float *a2, const float *a3, float a4)
{
  v9 = a4;
  v8 = 1.0 - a4;
  v6 = a3;
  MEMORY[0x1E12BE940](this, 1, &v8, this, 1, a3);
  return MEMORY[0x1E12BE8F0](a2, 1, &v9, this, 1, this, 1, v6);
}

uint64_t VPEchoGateV3::Cleanup(VPEchoGateV3 *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    free(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 15);
  if (v3)
  {
    free(v3);
    *(this + 15) = 0;
  }

  v4 = *(this + 27);
  if (v4)
  {
    free(v4);
    *(this + 27) = 0;
  }

  v5 = *(this + 24);
  if (v5)
  {
    free(v5);
    *(this + 24) = 0;
  }

  v6 = *(this + 18);
  if (v6)
  {
    free(v6);
    *(this + 18) = 0;
  }

  v7 = *(this + 21);
  if (v7)
  {
    free(v7);
    *(this + 21) = 0;
  }

  free(*(this + 28));
  free(*(this + 29));
  free(*(this + 30));
  v8 = *(this + 33);
  if (v8)
  {
    MEMORY[0x1E12BD130](v8, 0x1000C8052888210);
    *(this + 33) = 0;
  }

  v9 = *(this + 34);
  if (v9)
  {
    MEMORY[0x1E12BD130](v9, 0x1000C8052888210);
    *(this + 34) = 0;
  }

  v10 = *(this + 35);
  if (v10)
  {
    free(v10);
    *(this + 35) = 0;
  }

  v11 = *(this + 87);
  if (v11)
  {
    free(v11);
    *(this + 87) = 0;
  }

  v12 = *(this + 86);
  if (v12)
  {
    free(v12);
    *(this + 86) = 0;
  }

  v13 = *(this + 96);
  if (v13)
  {
    free(v13);
    *(this + 96) = 0;
  }

  v14 = *(this + 97);
  if (v14)
  {
    free(v14);
    *(this + 97) = 0;
  }

  v15 = *(this + 98);
  if (v15)
  {
    free(v15);
    *(this + 98) = 0;
  }

  v16 = *(this + 145);
  if (v16)
  {
    free(v16);
    *(this + 145) = 0;
  }

  v17 = *(this + 112);
  if (v17)
  {
    free(v17);
    *(this + 112) = 0;
  }

  v18 = *(this + 113);
  if (v18)
  {
    free(v18);
    *(this + 113) = 0;
  }

  v19 = *(this + 111);
  if (v19)
  {
    free(v19);
    *(this + 111) = 0;
  }

  v20 = *(this + 115);
  if (v20)
  {
    free(v20);
    *(this + 115) = 0;
  }

  v21 = *(this + 116);
  if (v21)
  {
    free(v21);
    *(this + 116) = 0;
  }

  v22 = *(this + 109);
  if (v22)
  {
    free(v22);
    *(this + 109) = 0;
  }

  v23 = *(this + 110);
  if (v23)
  {
    free(v23);
    *(this + 110) = 0;
  }

  v24 = *(this + 114);
  if (v24)
  {
    free(v24);
    *(this + 114) = 0;
  }

  v25 = *(this + 118);
  if (v25)
  {
    free(v25);
    *(this + 118) = 0;
  }

  v26 = *(this + 153);
  *(this + 155) = 0;
  *(this + 154) = 0;
  *(this + 153) = 0;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(this + 156);
  *(this + 158) = 0;
  *(this + 157) = 0;
  *(this + 156) = 0;
  if (v27)
  {
    operator delete(v27);
  }

  v28 = *(this + 159);
  *(this + 161) = 0;
  *(this + 160) = 0;
  *(this + 159) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = *(this + 162);
  *(this + 164) = 0;
  *(this + 163) = 0;
  *(this + 162) = 0;
  if (v29)
  {
    operator delete(v29);
  }

  return 0;
}

uint64_t VPEchoGateV3::GetParameter(VPEchoGateV3 *this, int a2, _OWORD *a3)
{
  if (!a3)
  {
    return 4294967246;
  }

  result = 4294967292;
  if (a2 <= 6)
  {
    if (a2 == 3 || a2 == 5)
    {
      result = 0;
      v9 = *(this + 350);
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      result = 0;
      v9 = *(this + 351);
    }
  }

  else if (a2 > 8)
  {
    if (a2 == 9)
    {
      result = 0;
      v9 = *(this + 298);
    }

    else
    {
      if (a2 != 18)
      {
        return result;
      }

      result = 0;
      v9 = *(this + 345);
    }
  }

  else
  {
    if (a2 != 7)
    {
      result = 0;
      v5 = *(this + 1592);
      *a3 = *(this + 1576);
      a3[1] = v5;
      v6 = *(this + 1608);
      v7 = *(this + 1624);
      v8 = *(this + 1640);
      *(a3 + 10) = *(this + 207);
      a3[3] = v7;
      a3[4] = v8;
      a3[2] = v6;
      return result;
    }

    result = 0;
    v9 = *(this + 183);
  }

  *a3 = v9;
  return result;
}

uint64_t VPEchoGateV3::SetParameter(VPEchoGateV3 *this, int a2, _OWORD *a3)
{
  if (!a3)
  {
    return 4294967246;
  }

  result = 4294967292;
  if (a2 > 7)
  {
    if (a2 > 15)
    {
      if (a2 == 16)
      {
        v10 = *a3;
        if (*a3 <= 0.0)
        {
          result = 0;
          *(this + 1352) = xmmword_1DE09BD00;
        }

        else
        {
          v11 = v10 * 0.25;
          v12 = *(this + 18) / *(this + 2);
          v13 = expf(-1.0 / (v10 * v12));
          *(this + 338) = v13;
          *(this + 339) = 1.0 - v13;
          v14 = expf(-1.0 / (v11 * v12));
          result = 0;
          *(this + 340) = v14;
          *(this + 341) = 1.0 - v14;
        }
      }

      else if (a2 == 17)
      {
        if (*a3 <= 0.0)
        {
          result = 0;
          *(this + 1372) = 0x3F80000000000000;
        }

        else
        {
          v5 = expf(-1.0 / (*a3 * (*(this + 18) / *(this + 2))));
          result = 0;
          *(this + 343) = v5;
          *(this + 344) = 1.0 - v5;
        }
      }
    }

    else if (a2 == 8)
    {
      result = 0;
      v6 = a3[1];
      *(this + 1576) = *a3;
      *(this + 1592) = v6;
      v7 = a3[2];
      v8 = a3[3];
      v9 = a3[4];
      *(this + 207) = *(a3 + 10);
      *(this + 1624) = v8;
      *(this + 1640) = v9;
      *(this + 1608) = v7;
    }

    else if (a2 == 9)
    {
      result = 0;
      *(this + 298) = *a3;
    }

    return result;
  }

  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 6)
      {
        result = 0;
        *(this + 351) = *a3;
      }

      return result;
    }

LABEL_19:
    result = 0;
    *(this + 349) = *a3;
    return result;
  }

  if (a2 == 1)
  {
    result = 0;
    *(this + 352) = *a3;
    return result;
  }

  if (a2 == 2)
  {
    goto LABEL_19;
  }

  return result;
}

void VPEchoGateV3::~VPEchoGateV3(void **this)
{
  VPEchoGateV3::~VPEchoGateV3(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591B790;
  VPEchoGateV3::Cleanup(this);
  if (*(this + 1527) < 0)
  {
    operator delete(this[188]);
  }

  v2 = this[181];
  if (v2)
  {
    this[182] = v2;
    operator delete(v2);
  }

  v3 = this[162];
  if (v3)
  {
    this[163] = v3;
    operator delete(v3);
  }

  v4 = this[159];
  if (v4)
  {
    this[160] = v4;
    operator delete(v4);
  }

  v5 = this[156];
  if (v5)
  {
    this[157] = v5;
    operator delete(v5);
  }

  v6 = this[153];
  if (v6)
  {
    this[154] = v6;
    operator delete(v6);
  }

  v7 = this[32];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *this = &unk_1F591B740;
}

BOOL AUCNG::ValidFormat(AUCNG *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v5 = 0;
  }

  return a4->mChannelsPerFrame - 1 < 2 && v5;
}

uint64_t AUCNG::SupportedNumChannels(AUCNG *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUCNG::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

uint64_t AUCNG::NewFactoryPresetSet(AUCNG *this, const AUPreset *a2)
{
  presetNumber = a2->presetNumber;
  if (presetNumber > 1)
  {
    return 4294956445;
  }

  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v5, 0, -120.0);
  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, &sAUCNGPresets + presetNumber);
  return 0;
}

uint64_t AUCNG::GetPresets(AUCNG *this, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(0, 2, 0);
    CFArrayAppendValue(Mutable, &sAUCNGPresets);
    CFArrayAppendValue(Mutable, &unk_1ECDA5560);
    *a2 = Mutable;
  }

  return 0;
}

uint64_t AUCNG::GetParameterInfo(AUCNG *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  if (a3 == 1)
  {
    buffer->cfNameString = @"Gain Offset";
    buffer->flags = -939524096;
    CFStringGetCString(@"Gain Offset", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 3250585600;
    v6 = buffer->flags & 0x3FFF7FFF | 0x40008000;
    buffer->defaultValue = 0.0;
    buffer->flags = v6;
  }

  else if (a3)
  {
    return 4294956418;
  }

  else
  {
    buffer->cfNameString = @"Gain";
    buffer->flags = -939524096;
    CFStringGetCString(@"Gain", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 0x41200000C2F00000;
    buffer->defaultValue = -120.0;
  }

  return result;
}

uint64_t AUCNG::Render(AUCNG *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v10)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v11 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v11)
    {
      if (!*(v11 + 144))
      {
        goto LABEL_16;
      }

      v12 = *(v11 + 152);
      v13 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v13)
      {
        if (*(v13 + 144))
        {
          v14 = *(*this + 176);
          v15 = *(v13 + 152) + 48;

          return v14(this, a2, v12 + 48, v15, a4);
        }

LABEL_16:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUCNG::ProcessBufferLists(AUCNG *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  if (((*(*this + 576))(this, a2, a3) & 1) == 0)
  {
    if (a4->mBuffers[0].mDataByteSize >= 4)
    {
      v8 = 0;
      do
      {
        *(a4->mBuffers[0].mData + v8++) = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
      }

      while (v8 < a4->mBuffers[0].mDataByteSize >> 2);
    }

    if (a4->mNumberBuffers >= 2)
    {
      v9 = 1;
      v10 = 32;
      do
      {
        memcpy(*(&a4->mNumberBuffers + v10), a4->mBuffers[0].mData, a4->mBuffers[0].mDataByteSize);
        ++v9;
        v10 += 16;
      }

      while (v9 < a4->mNumberBuffers);
    }

    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v12 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v11, 0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0))
    {
      abort();
    }

    v16 = Parameter + ausdk::AUElement::GetParameter(v14, 1u);
    if (v16 != 0.0)
    {
      v20 = __exp10f(v16 / 20.0);
      if (a4->mNumberBuffers)
      {
        v17 = 0;
        v18 = 16;
        do
        {
          MEMORY[0x1E12BE940](*(&a4->mNumberBuffers + v18), 1, &v20, *(&a4->mNumberBuffers + v18), 1, a5);
          ++v17;
          v18 += 16;
        }

        while (v17 < a4->mNumberBuffers);
      }
    }
  }

  return 0;
}

uint64_t AUCNG::SetParameter(AUCNG *this, unsigned int a2, float a3)
{
  if (a2 > 1)
  {
    return 4294956418;
  }

  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v5, a2, a3);
  return 0;
}

uint64_t AUCNG::GetParameter(AUCNG *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a2 > 1)
  {
    return 4294956418;
  }

  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v7, a2);
  result = 0;
  *a5 = Parameter;
  return result;
}

uint64_t AUCNG::SetProperty(AUCNG *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      v8 = *a5;
      v9 = *a5 != 0;
      if (v9 != (*(*this + 576))(this))
      {
        (*(*this + 584))(this, v8 != 0);
      }

      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUCNG::GetProperty(AUCNG *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    v8 = (*(*this + 576))(this);
    result = 0;
    *a5 = v8;
  }

  return result;
}

uint64_t AUCNG::GetPropertyInfo(AUCNG *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    result = 0;
    *a6 = 1;
    *a5 = 4;
  }

  return result;
}

uint64_t AUCNG::Initialize(AUCNG *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (!memcmp((v3 + 80), (v4 + 80), 0x28uLL))
  {
    return 0;
  }

  else
  {
    return 4294956428;
  }
}

void AUCNG::~AUCNG(AUCNG *this)
{
  *this = &unk_1F591B810;
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591B810;
  ausdk::AUBase::~AUBase(this);
}

float ASAParamsGeneric::constructDerivedParams(ASAParamsGeneric *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  v3 = v1 * *(this + 7);
  *(this + 12) = *(this + 6) * v1;
  *(this + 13) = v3;
  v4 = *(this + 16);
  v5 = vsra_n_u32(0x100000001, v4, 1uLL);
  *(this + 7) = v5;
  *(this + 16) = ((v2 / v1) + 0.5);
  *(this + 17) = v2 / v4.u32[0];
  *(this + 18) = v5.i32[0];
  result = 1.0 / v5.u32[0];
  *(this + 19) = result;
  return result;
}

float ASAParamsChromaHiFreq::constructDerivedParams(ASAParamsChromaHiFreq *this)
{
  result = 1.0 / *(this + 2);
  *(this + 7) = result;
  return result;
}

void ASAParamsBeatsV2::~ASAParamsBeatsV2(ASAParamsBeatsV2 *this)
{
  *this = &unk_1F591BAC0;
  v5 = (this + 112);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  MEMORY[0x1E12BD160](this, 0x10A1C4039B2F151);
}

{
  *this = &unk_1F591BAC0;
  v5 = (this + 112);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }
}

void ASAParamsHarmonicConsistency::~ASAParamsHarmonicConsistency(ASAParamsHarmonicConsistency *this)
{
  *this = &unk_1F591BAE8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591BAE8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void ASAParamsModEnergy2::~ASAParamsModEnergy2(ASAParamsModEnergy2 *this)
{
  *this = &unk_1F591BB60;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591BB60;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDC306A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
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
  }

  return a1;
}

void ASAFeatures::ASAFeatures(ASAFeatures *this, const ASAParamsGeneric *a2, const ASAParamsChromaHiFreq *a3, const ASAParamsBeatsV2 *a4, const ASAParamsHarmonicConsistency *a5, const ASAParamsRms *a6, const ASAParamsModEnergy *a7, const ASAParamsModEnergy2 *a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, const ASAParamsAvgTonalityPower *a13, unsigned int a14)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
  *(this + 6) = a8;
  *(this + 56) = a9;
  *(this + 72) = a10;
  *(this + 88) = a11;
  *(this + 104) = a12;
  v18 = this + 744;
  v77 = (this + 768);
  *(this + 15) = a13;
  bzero(this + 128, 0x250uLL);
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *v18 = 0u;
  *(this + 976) = 1;
  *(this + 980) = 1065353216;
  *(this + 252) = 0;
  v19 = *(a3 + 2);
  v20 = log((*(a2 + 2) * 0.5) / *(a3 + 3));
  if (VADGenUtils::InvLogTwo(void)::result)
  {
    v21 = *VADGenUtils::InvLogTwo(void)::result * v20;
    *(this + 180) = (((1.0 / v19) + v21) + 0.5);
    __asm { FMOV            V1.2D, #0.5 }

    v78 = _Q1;
    v27 = vcvt_n_u32_f32(vcvt_f32_f64(vcvtq_f64_u64(vcvtq_u64_f64(vaddq_f64(vcvtq_f64_f32(vmul_f32(vmul_n_f32(*(a4 + 28), *(a2 + 3)), 0x3F0000003F000000)), _Q1)))), 1uLL);
    *(this + 724) = v27;
    *(this + 183) = *(a2 + 11) - 2 * *(a4 + 4);
    *(this + 184) = ((*(a4 + 6) * v27.i32[1]) >> 1) + 1;
    std::vector<unsigned int>::resize(v18, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 6) - *(a4 + 5)) >> 2));
    std::vector<float>::resize(v77, 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 2) + 48) - *(*(this + 2) + 40)) >> 2));
    v28 = *(this + 2);
    v29 = *(v28 + 40);
    v30 = *(v28 + 48) - v29;
    if (v30)
    {
      v31 = 0;
      v32 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2);
      v33 = *(this + 93);
      v34 = (*(this + 94) - v33) >> 2;
      if (v32 <= 1)
      {
        v32 = 1;
      }

      v35 = (v29 + 8);
      do
      {
        if (v34 == v31)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        *(v33 + 4 * v31) = *(v35 - 2);
        v36 = *(this + 96);
        if (v31 >= (*(this + 97) - v36) >> 2)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v37 = *v35;
        v35 += 3;
        *(v36 + 4 * v31++) = v37;
      }

      while (v32 != v31);
    }

    v38 = *this;
    v39 = *(*this + 12) * 0.2;
    *&v40 = v39 + 0.5;
    *(this + 198) = *&v40 + 2;
    LODWORD(v40) = *(v38 + 20);
    v41 = 1.0 / *(*(this + 3) + 8);
    VADGenUtils::TwoPoleBandpassCoeff<double>(this + 100, this + 101, this + 102, (v41 + v41) * 3.14159265 / (v40 / *(v38 + 8)));
    v42 = *this;
    v43 = *(*this + 12);
    v44 = *(this + 4);
    *(this + 103) = vcvt_u32_f32(vcvt_f32_f64(vcvtq_f64_u64(vcvtq_u64_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(*(*(this + 3) + 16), v43)), v78)))));
    v45 = (v43 * *(v44 + 20)) / ((v43 * *(v44 + 20)) + 1.0);
    v46 = (v43 * *(v44 + 16)) / ((v43 * *(v44 + 16)) + 1.0);
    *(this + 210) = ((1.0 - v45) * 0.5) * (v46 + 1.0);
    *(this + 208) = v45 + v46;
    *(this + 209) = -(v45 * v46);
    v47 = *(v44 + 20) * *(v42 + 12);
    *(this + 211) = v47 / (v47 + 1.0);
    v48 = VADGenUtils::TwoPi(void)::result;
    if (VADGenUtils::TwoPi(void)::result)
    {
      v49 = *VADGenUtils::TwoPi(void)::result;
      VADGenUtils::TwoPoleBandpassCoeff<double>(this + 106, this + 107, this + 108, ((*(*(this + 5) + 8) * v49) / *(v42 + 12)));
      v50 = *(this + 6);
      v51 = *(*this + 12);
      *(this + 109) = vcvt_u32_f32(vcvt_f32_f64(vcvtq_f64_u64(vcvtq_u64_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(*(v50 + 12), v51)), v78)))));
      v52 = *v48;
      VADGenUtils::TwoPoleBandpassCoeff<double>(this + 110, this + 111, this + 112, ((*(v50 + 8) * v52) / v51));
      v53 = *v48;
      VADGenUtils::TwoPoleBandpassCoeff<double>(this + 113, this + 114, this + 115, ((*(*(this + 6) + 20) * v53) / (2 * *(*this + 44) - 1)));
      v54 = *this;
      v55 = *(*this + 72);
      *(this + 233) = 1.0 / (v55 - 1);
      *(this + 232) = 1.0 / v55;
      v56 = vcvt_u32_f32(vcvt_f32_f64(vcvtq_f64_u64(vcvtq_u64_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(*(*(this + 14) + 8), *(*&v54 + 8))), v78)))));
      *(this + 117) = v56;
      v56.i32[0] = vsub_s32(vdup_lane_s32(v56, 1), v56).u32[0];
      *(this + 236) = v56.i32[0] + 1;
      *(this + 237) = 1.0 / (v56.i32[0] + 1);
      *(this + 17) = *(this + 16);
      *&__p = ASAFeatures::ChromaHiFreq;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::BeatsV2;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::HarmonicConsistency;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::FilteredRmsDB;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::FilteredRmsDBDeriv;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::RmsDynamicRange;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::NormRms;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::LogRmsStdDev;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::ModEnergy;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::ModEnergy2;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::LowEnergyFrac;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::SpectralRolloffHzVar;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::CentroidVar;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::FluxVar;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::ReconDiffVar;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::CepstralSparsity;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::CepstralVariance;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::AvgPitchDensity;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      *&__p = ASAFeatures::AvgTonalityPower;
      *(&__p + 1) = 0;
      std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](this + 128, &__p);
      v57 = *(*(this + 1) + 8);
      v58 = malloc_type_malloc(4 * v57, 0xAB6607E0uLL);
      v59 = v58;
      if (!v57 || v58)
      {
        bzero(v58, 4 * v57);
        *(this + 28) = v59;
        v60 = *(*(this + 1) + 8);
        v61 = malloc_type_malloc(4 * v60, 0xF2745D32uLL);
        v62 = v61;
        if (!v60 || v61)
        {
          bzero(v61, 4 * v60);
          *(this + 29) = v62;
          v63 = *(*(this + 1) + 8);
          v64 = malloc_type_malloc(4 * v63, 0x217E4F51uLL);
          v65 = v64;
          if (!v63 || v64)
          {
            bzero(v64, 4 * v63);
            *(this + 30) = v65;
            v66 = (*(*(this + 1) + 8) * *(*(this + 1) + 8));
            v67 = malloc_type_malloc(4 * v66, 0xAA3A78DuLL);
            v68 = v67;
            if (v67 || !v66)
            {
              bzero(v67, 4 * v66);
              *(this + 75) = v68;
              v69 = (*(*(this + 1) + 8) * *(*(this + 1) + 8));
              v70 = malloc_type_malloc(4 * v69, 0x6C8ABAA0uLL);
              v71 = v70;
              if (v70 || !v69)
              {
                bzero(v70, 4 * v69);
                *(this + 76) = v71;
                v72 = (*(this + 180) * *(*(this + 1) + 8));
                v73 = malloc_type_malloc(4 * v72, 0x92488CABuLL);
                v74 = v73;
                if (v73 || !v72)
                {
                  bzero(v73, 4 * v72);
                  *(this + 77) = v74;
                  operator new();
                }
              }
            }
          }
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v76 = std::bad_alloc::bad_alloc(exception);
    }

    operator new();
  }

  operator new();
}

void sub_1DDC33D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12BD160](v26, 0x1080C400DE93FC6);
  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v28 = *a11;
  if (*a11)
  {
    a18[97] = v28;
    operator delete(v28);
  }

  v29 = *a12;
  if (*a12)
  {
    a18[94] = v29;
    operator delete(v29);
  }

  v30 = a18[25];
  if (v30)
  {
    a18[26] = v30;
    operator delete(v30);
  }

  v31 = a18[22];
  if (v31)
  {
    a18[23] = v31;
    operator delete(v31);
  }

  v32 = a18[19];
  if (v32)
  {
    a18[20] = v32;
    operator delete(v32);
  }

  v33 = a18[16];
  if (v33)
  {
    a18[17] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void SlidingWindowDTFT<float>::allocateStorage(void *a1)
{
  v1 = a1[1];
  if (!(v1 >> 62))
  {
    v3 = malloc_type_malloc(4 * v1, 0xE461481BuLL);
    if (!v1 || v3 != 0)
    {
      v5 = v3;
      bzero(v3, 4 * v1);
      a1[4] = v5;
      v6 = a1[1];
      if (!(v6 >> 62))
      {
        v7 = malloc_type_malloc(4 * v6, 0x631B299AuLL);
        v8 = v7;
        if (!v6 || v7)
        {
          bzero(v7, 4 * v6);
          a1[5] = v8;
          v9 = a1[1];
          if (!(v9 >> 62))
          {
            v10 = malloc_type_malloc(4 * v9, 0x171EFFC6uLL);
            v11 = v10;
            if (!v9 || v10)
            {
              bzero(v10, 4 * v9);
              a1[6] = v11;
              v12 = a1[1];
              if (!(v12 >> 62))
              {
                v13 = malloc_type_malloc(4 * v12, 0x30DE556uLL);
                v14 = v13;
                if (!v12 || v13)
                {
                  bzero(v13, 4 * v12);
                  a1[7] = v14;
                  v15 = a1[1];
                  if (!(v15 >> 62))
                  {
                    v16 = malloc_type_malloc(4 * v15, 0x8763E3D5uLL);
                    v17 = v16;
                    if (!v15 || v16)
                    {
                      bzero(v16, 4 * v15);
                      a1[8] = v17;
                      v18 = a1[1];
                      if (!(v18 >> 62))
                      {
                        v19 = malloc_type_malloc(4 * v18, 0x1FFC7E5DuLL);
                        v20 = v19;
                        if (!v18 || v19)
                        {
                          bzero(v19, 4 * v18);
                          a1[9] = v20;
                          v21 = a1[1];
                          if (!(v21 >> 62))
                          {
                            v22 = malloc_type_malloc(4 * v21, 0xE5E6E066uLL);
                            v23 = v22;
                            if (!v21 || v22)
                            {
                              bzero(v22, 4 * v21);
                              a1[10] = v23;
                              v24 = a1[1];
                              if (!(v24 >> 62))
                              {
                                v25 = malloc_type_malloc(4 * v24, 0xAB8EA916uLL);
                                v26 = v25;
                                if (!v24 || v25)
                                {
                                  bzero(v25, 4 * v24);
                                  a1[11] = v26;
                                  v27 = a1[1];
                                  if (!(v27 >> 62))
                                  {
                                    v28 = malloc_type_malloc(4 * v27, 0x145FD6D2uLL);
                                    v29 = v28;
                                    if (!v27 || v28)
                                    {
                                      bzero(v28, 4 * v27);
                                      a1[12] = v29;
                                      v30 = a1[1];
                                      if (!(v30 >> 62))
                                      {
                                        v31 = malloc_type_malloc(4 * v30, 0x3B14FE9FuLL);
                                        v32 = v31;
                                        if (!v30 || v31)
                                        {
                                          bzero(v31, 4 * v30);
                                          a1[13] = v32;
                                          operator new();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v34 = std::bad_alloc::bad_alloc(exception);
}

void *SlidingWindowDTFT<float>::initializeTables(void *result)
{
  v1 = result[1];
  v2 = result[4];
  if (v1 == 1)
  {
    *v2 = 1.5708;
  }

  else
  {
    if (!v1)
    {
      return result;
    }

    v3 = 4 * v1;
    v4 = 0.0;
    do
    {
      *v2++ = v4;
      v4 = (3.1416 / (v1 - 1)) + v4;
      v3 -= 4;
    }

    while (v3);
  }

  v6 = result[8];
  v5 = result[9];
  v8 = result[6];
  v7 = result[7];
  v9 = result[5];
  do
  {
    *v9++ = 0;
    *v8++ = 1065353216;
    *v7++ = 0;
    *v6++ = 1065353216;
    *v5++ = 0;
    --v1;
  }

  while (v1);
  return result;
}

void *SlidingWindowDTFT<float>::Update(uint64_t a1, void *a2, void *a3, float a4)
{
  v8 = *(a1 + 116) + 1;
  *(a1 + 116) = v8;
  if (v8 >= 2)
  {
    MEMORY[0x1E12BE5D0](*(a1 + 40), 1, *(a1 + 32), 1, *(a1 + 40), 1, *(a1 + 8));
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    v44 = *(a1 + 8);
    v12 = v44;
    vvcosf(v9, v10, &v44);
    v44 = v12;
    vvsinf(v11, v10, &v44);
    v8 = *(a1 + 116);
  }

  if (v8 <= *(a1 + 16))
  {
    v16 = 0;
LABEL_9:
    *(a1 + 112) = v16;
    v17 = 0.0;
    goto LABEL_12;
  }

  v13 = *(a1 + 20);
  if (v8 <= v13)
  {
    v16 = 1;
    goto LABEL_9;
  }

  *(a1 + 112) = 2;
  v14 = *(a1 + 120);
  if (v13 < 1)
  {
    v15 = (*(v14 + 12) - v13) % *(v14 + 8);
  }

  else
  {
    v15 = *(v14 + 8) + ~((*(v14 + 8) + v13 + ~*(v14 + 12)) % *(v14 + 8));
  }

  v17 = *(*v14 + 4 * v15);
  MRRingBuffer<float>::GetSampleRange(*(a1 + 128), *(a1 + 24), *(a1 + 28), *(a1 + 64));
  MRRingBuffer<float>::GetSampleRange(*(a1 + 136), *(a1 + 24), *(a1 + 28), *(a1 + 72));
LABEL_12:
  v19 = *(a1 + 80);
  v18 = *(a1 + 88);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 8);
  *&v44 = a4;
  MEMORY[0x1E12BE8F0](v20, 1, &v44, v19, 1, v19, 1, v24);
  *&v44 = -v17;
  MEMORY[0x1E12BE8F0](v22, 1, &v44, v19, 1, v19, 1, v24);
  *&v44 = -a4;
  MEMORY[0x1E12BE8F0](v21, 1, &v44, v18, 1, v18, 1, v24);
  *&v44 = v17;
  MEMORY[0x1E12BE8F0](v23, 1, &v44, v18, 1, v18, 1, v24);
  memcpy(a2, *(a1 + 80), 4 * *(a1 + 8));
  memcpy(a3, *(a1 + 88), 4 * *(a1 + 8));
  v25 = *(a1 + 120);
  v26 = *(v25 + 12);
  *(*v25 + 4 * v26) = a4;
  *(v25 + 12) = (v26 + 1) % *(v25 + 8);
  v27 = *(a1 + 128);
  v28 = *(a1 + 48);
  v29 = *(a1 + 8);
  v30 = *(v27 + 8);
  v31 = *(v27 + 12);
  if (v30 < v29)
  {
    v29 = *(v27 + 8);
  }

  v32 = v31 + v29;
  v33 = v31 + v29 - v30;
  if (v33 < 0)
  {
    memcpy((*v27 + 4 * v31), *(a1 + 48), 4 * v29);
  }

  else
  {
    v34 = v30 - v31;
    memcpy((*v27 + 4 * v31), *(a1 + 48), 4 * (v30 - v31));
    memcpy(*v27, (v28 + 4 * v34), 4 * v33);
    v32 = v33;
  }

  *(v27 + 12) = v32;
  v35 = *(a1 + 136);
  v36 = *(a1 + 56);
  v37 = *(a1 + 8);
  v38 = *(v35 + 8);
  v39 = *(v35 + 12);
  if (v38 < v37)
  {
    v37 = *(v35 + 8);
  }

  v40 = v39 + v37;
  v41 = v39 + v37 - v38;
  if (v41 < 0)
  {
    result = memcpy((*v35 + 4 * v39), v36, 4 * v37);
  }

  else
  {
    v42 = v38 - v39;
    memcpy((*v35 + 4 * v39), v36, 4 * (v38 - v39));
    result = memcpy(*v35, &v36[4 * v42], 4 * v41);
    v40 = v41;
  }

  *(v35 + 12) = v40;
  return result;
}

float MRRingBuffer<float>::GetSampleRange(uint64_t *a1, int a2, int a3, float *a4)
{
  if (a2 < a3)
  {
    v4 = *a1;
    do
    {
      if (a2 < 0)
      {
        v5 = *(a1 + 2) + ~((*(a1 + 2) - a2 + ~*(a1 + 3)) % *(a1 + 2));
      }

      else
      {
        v5 = (*(a1 + 3) + a2) % *(a1 + 2);
      }

      result = *(v4 + 4 * v5);
      *a4++ = result;
      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

void SlidingWindowDTFT<float>::~SlidingWindowDTFT(void *a1)
{
  *a1 = &unk_1F591BD70;
  SlidingWindowDTFT<float>::deallocateStorage(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t SlidingWindowDTFT<float>::deallocateStorage(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    if (*v2)
    {
      MEMORY[0x1E12BD130](*v2, 0x1000C8052888210);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C40FC6463CFLL);
  }

  v3 = a1[16];
  if (v3)
  {
    if (*v3)
    {
      MEMORY[0x1E12BD130](*v3, 0x1000C8052888210);
    }

    MEMORY[0x1E12BD160](v3, 0x1080C40FC6463CFLL);
  }

  v4 = a1[15];
  if (v4)
  {
    if (*v4)
    {
      MEMORY[0x1E12BD130](*v4, 0x1000C8052888210);
    }

    MEMORY[0x1E12BD160](v4, 0x1080C40FC6463CFLL);
  }

  v5 = a1[13];
  if (v5)
  {
    MEMORY[0x1E12BD160](v5, 0x1000C4052888210);
  }

  v6 = a1[12];
  if (v6)
  {
    MEMORY[0x1E12BD160](v6, 0x1000C4052888210);
  }

  v7 = a1[11];
  if (v7)
  {
    MEMORY[0x1E12BD160](v7, 0x1000C4052888210);
  }

  v8 = a1[10];
  if (v8)
  {
    MEMORY[0x1E12BD160](v8, 0x1000C4052888210);
  }

  v9 = a1[9];
  if (v9)
  {
    MEMORY[0x1E12BD160](v9, 0x1000C4052888210);
  }

  v10 = a1[8];
  if (v10)
  {
    MEMORY[0x1E12BD160](v10, 0x1000C4052888210);
  }

  v11 = a1[7];
  if (v11)
  {
    MEMORY[0x1E12BD160](v11, 0x1000C4052888210);
  }

  v12 = a1[6];
  if (v12)
  {
    MEMORY[0x1E12BD160](v12, 0x1000C4052888210);
  }

  v13 = a1[5];
  if (v13)
  {
    MEMORY[0x1E12BD160](v13, 0x1000C4052888210);
  }

  result = a1[4];
  if (result)
  {

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *SlidingWindowDTFT<float>::~SlidingWindowDTFT(void *a1)
{
  *a1 = &unk_1F591BD70;
  SlidingWindowDTFT<float>::deallocateStorage(a1);
  return a1;
}

void FeatureAverager<float>::allocateStorage(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = malloc_type_malloc(4 * v2, 0xCC5E7786uLL);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = v3;
    bzero(v3, 4 * v2);
    *(a1 + 40) = v5;
    v6 = *(a1 + 8);
    v7 = malloc_type_malloc(4 * v6, 0xD0E74865uLL);
    v8 = v7;
    if (!v6 || v7)
    {
      bzero(v7, 4 * v6);
      *(a1 + 48) = v8;
      v9 = *(a1 + 8);
      v10 = malloc_type_malloc(4 * v9, 0x3641E76BuLL);
      v11 = v10;
      if (!v9 || v10)
      {
        bzero(v10, 4 * v9);
        *(a1 + 56) = v11;
        v12 = *(a1 + 8);
        v13 = malloc_type_malloc(4 * v12, 0x7FB3C9E5uLL);
        v14 = v13;
        if (!v12 || v13)
        {
          bzero(v13, 4 * v12);
          *(a1 + 64) = v14;
          v15 = *(a1 + 8);
          v16 = malloc_type_malloc(4 * v15, 0xFC631A2uLL);
          v17 = v16;
          if (!v15 || v16)
          {
            bzero(v16, 4 * v15);
            *(a1 + 72) = v17;
            v18 = *(a1 + 8);
            v19 = malloc_type_malloc(4 * v18, 0x20B3C3ECuLL);
            v20 = v19;
            if (!v18 || v19)
            {
              bzero(v19, 4 * v18);
              *(a1 + 80) = v20;
              v21 = *(a1 + 8);
              v22 = malloc_type_malloc(4 * v21, 0x6C81CA3FuLL);
              v23 = v22;
              if (!v21 || v22)
              {
                bzero(v22, 4 * v21);
                *(a1 + 88) = v23;
                v24 = *(a1 + 8);
                v25 = malloc_type_malloc(4 * v24, 0xD303BD93uLL);
                v26 = v25;
                if (!v24 || v25)
                {
                  bzero(v25, 4 * v24);
                  *(a1 + 96) = v26;
                  v27 = *(a1 + 8);
                  v28 = malloc_type_malloc(4 * v27, 0xB396070uLL);
                  v29 = v28;
                  if (!v27 || v28)
                  {
                    bzero(v28, 4 * v27);
                    *(a1 + 104) = v29;
                    operator new();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v31 = std::bad_alloc::bad_alloc(exception);
}

void FeatureAverager<float>::deallocateStorage(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    if (*v2)
    {
      MEMORY[0x1E12BD130](*v2, 0x1000C8052888210);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C40FC6463CFLL);
  }

  v3 = a1[13];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[8];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    free(v10);
  }

  v11 = a1[5];
  if (v11)
  {

    free(v11);
  }
}

void FeatureAverager<float>::initializeTables(uint64_t a1, const void *a2)
{
  memcpy(*(a1 + 56), a2, 4 * *(a1 + 8));
  memcpy(*(a1 + 40), *(a1 + 56), 4 * *(a1 + 8));
  MEMORY[0x1E12BE7F0](*(a1 + 56), 1, *(a1 + 56), 1, *(a1 + 64), 1, *(a1 + 8));
  v3 = *(a1 + 8);
  v4 = 4 * v3;
  if (v3)
  {
    v5 = 0;
    v6 = *(a1 + 56);
    do
    {
      v7 = *(v6 + v5);
      v8 = *(a1 + 64);
      if (v7 <= 1.0)
      {
        v9 = *(v8 + v5) * 1.01;
      }

      else
      {
        v9 = ((0.01 / v7) + 1.0) * *(v8 + v5);
      }

      *(v8 + v5) = v9;
      v5 += 4;
    }

    while (v4 != v5);
  }

  v10 = *(a1 + 48);
  if ((*(a1 + 120) & 2) != 0)
  {
    v11 = *(a1 + 64);

    memcpy(v10, v11, v4);
  }

  else
  {

    bzero(v10, v4);
  }
}

void FeatureAverager<float>::Update(uint64_t a1, _DWORD *a2, void *a3, void *a4, __n128 a5)
{
  v9 = *(a1 + 116) + 1;
  *(a1 + 116) = v9;
  if (v9 <= *(a1 + 12))
  {
    *(a1 + 112) = 0;
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = *(a1 + 104);
    v13 = *(a1 + 20);
    goto LABEL_5;
  }

  if (v9 > *(a1 + 16))
  {
    *(a1 + 112) = 2;
    v10 = *(a1 + 40);
    a5.n128_f32[0] = MRRingBuffer<float>::GetSampleRange(*(a1 + 128), *(a1 + 28), *(a1 + 32), *(a1 + 72));
    v11 = *(a1 + 72);
    v12 = *(a1 + 104);
    v13 = *(a1 + 24);
LABEL_5:
    v14 = *(a1 + 8);
    MEMORY[0x1E12BE9A0](v11, 1, a2, 1, v12, 1, v14, a5);
    __B = v13;
    MEMORY[0x1E12BE8F0](v12, 1, &__B, v10, 1, v10, 1, v14);
    v15 = 0.0;
    goto LABEL_7;
  }

  *(a1 + 112) = 1;
  v16 = *(a1 + 40);
  v15 = 1.0 / v9;
  v17 = *(a1 + 104);
  v18 = *(a1 + 8);
  MEMORY[0x1E12BE9A0](v16, 1, a2, 1, v17, 1, v18);
  __B = v15;
  MEMORY[0x1E12BE8F0](v17, 1, &__B, v16, 1, v16, 1, v18);
LABEL_7:
  memcpy(a3, *(a1 + 40), 4 * *(a1 + 8));
  if ((*(a1 + 120) & 2) == 0)
  {
    goto LABEL_17;
  }

  MEMORY[0x1E12BE7F0](a2, 1, a2, 1, *(a1 + 88), 1, *(a1 + 8));
  v19 = *(a1 + 48);
  v20 = *(a1 + 112);
  if (v20 == 2)
  {
    MEMORY[0x1E12BE7F0](*(a1 + 72), 1, *(a1 + 72), 1, *(a1 + 80), 1, *(a1 + 8));
    v21 = *(a1 + 80);
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v15 = *(a1 + 24);
    goto LABEL_14;
  }

  if (v20 == 1)
  {
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v24 = *(a1 + 8);
    v21 = *(a1 + 48);
LABEL_15:
    MEMORY[0x1E12BE9A0](v21, 1, v22, 1, v23, 1, v24);
    __B = v15;
    MEMORY[0x1E12BE8F0](v23, 1, &__B, v19, 1, v19, 1, v24);
    goto LABEL_16;
  }

  if (!*(a1 + 112))
  {
    v21 = *(a1 + 64);
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v15 = *(a1 + 20);
LABEL_14:
    v24 = *(a1 + 8);
    goto LABEL_15;
  }

LABEL_16:
  memcpy(a4, *(a1 + 48), 4 * *(a1 + 8));
  MEMORY[0x1E12BE7F0](*(a1 + 40), 1, *(a1 + 40), 1, *(a1 + 96), 1, *(a1 + 8));
  MEMORY[0x1E12BE9A0](*(a1 + 96), 1, a4, 1, a4, 1, *(a1 + 8));
  v25 = *(a1 + 8);
  __B = 0.0;
  vDSP_vthres(a4, 1, &__B, a4, 1, v25);
LABEL_17:
  v26 = *(a1 + 8);
  v27 = *(a1 + 128);
  if (v26 == 1)
  {
    v28 = *(v27 + 12);
    *(*v27 + 4 * v28) = *a2;
    *(v27 + 12) = (v28 + 1) % *(v27 + 8);
  }

  else
  {
    v29 = *(v27 + 8);
    v30 = *(v27 + 12);
    if (v29 < v26)
    {
      v26 = *(v27 + 8);
    }

    v31 = v30 + v26;
    v32 = v30 + v26 - v29;
    if (v32 < 0)
    {
      memcpy((*v27 + 4 * v30), a2, 4 * v26);
    }

    else
    {
      v33 = v29 - v30;
      memcpy((*v27 + 4 * v30), a2, 4 * (v29 - v30));
      memcpy(*v27, &a2[v33], 4 * v32);
      v31 = v32;
    }

    *(v27 + 12) = v31;
  }
}

void FeatureAverager<float>::~FeatureAverager(void *a1)
{
  *a1 = &unk_1F591BCF0;
  FeatureAverager<float>::deallocateStorage(a1);

  JUMPOUT(0x1E12BD160);
}

void *FeatureAverager<float>::~FeatureAverager(void *a1)
{
  *a1 = &unk_1F591BCF0;
  FeatureAverager<float>::deallocateStorage(a1);
  return a1;
}

void FeatureAverager<double>::allocateStorage(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = malloc_type_malloc(8 * v2, 0xCC5E7786uLL);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = v3;
    bzero(v3, 8 * v2);
    *(a1 + 48) = v5;
    v6 = *(a1 + 8);
    v7 = malloc_type_malloc(8 * v6, 0xD0E74865uLL);
    v8 = v7;
    if (!v6 || v7)
    {
      bzero(v7, 8 * v6);
      *(a1 + 56) = v8;
      v9 = *(a1 + 8);
      v10 = malloc_type_malloc(8 * v9, 0x3641E76BuLL);
      v11 = v10;
      if (!v9 || v10)
      {
        bzero(v10, 8 * v9);
        *(a1 + 64) = v11;
        v12 = *(a1 + 8);
        v13 = malloc_type_malloc(8 * v12, 0x7FB3C9E5uLL);
        v14 = v13;
        if (!v12 || v13)
        {
          bzero(v13, 8 * v12);
          *(a1 + 72) = v14;
          v15 = *(a1 + 8);
          v16 = malloc_type_malloc(8 * v15, 0xFC631A2uLL);
          v17 = v16;
          if (!v15 || v16)
          {
            bzero(v16, 8 * v15);
            *(a1 + 80) = v17;
            v18 = *(a1 + 8);
            v19 = malloc_type_malloc(8 * v18, 0x20B3C3ECuLL);
            v20 = v19;
            if (!v18 || v19)
            {
              bzero(v19, 8 * v18);
              *(a1 + 88) = v20;
              v21 = *(a1 + 8);
              v22 = malloc_type_malloc(8 * v21, 0x6C81CA3FuLL);
              v23 = v22;
              if (!v21 || v22)
              {
                bzero(v22, 8 * v21);
                *(a1 + 96) = v23;
                v24 = *(a1 + 8);
                v25 = malloc_type_malloc(8 * v24, 0xD303BD93uLL);
                v26 = v25;
                if (!v24 || v25)
                {
                  bzero(v25, 8 * v24);
                  *(a1 + 104) = v26;
                  v27 = *(a1 + 8);
                  v28 = malloc_type_malloc(8 * v27, 0xB396070uLL);
                  v29 = v28;
                  if (!v27 || v28)
                  {
                    bzero(v28, 8 * v27);
                    *(a1 + 112) = v29;
                    operator new();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v31 = std::bad_alloc::bad_alloc(exception);
}

void FeatureAverager<double>::deallocateStorage(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    if (*v2)
    {
      MEMORY[0x1E12BD130](*v2, 0x1000C8000313F17);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C40FC6463CFLL);
  }

  v3 = a1[14];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[9];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[8];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    free(v10);
  }

  v11 = a1[6];
  if (v11)
  {

    free(v11);
  }
}

void FeatureAverager<double>::initializeTables(uint64_t a1, const void *a2)
{
  memcpy(*(a1 + 64), a2, 8 * *(a1 + 8));
  memcpy(*(a1 + 48), *(a1 + 64), 8 * *(a1 + 8));
  vDSP_vmulD(*(a1 + 64), 1, *(a1 + 64), 1, *(a1 + 72), 1, *(a1 + 8));
  v3 = *(a1 + 8);
  v4 = 8 * v3;
  if (v3)
  {
    v5 = 0;
    v6 = *(a1 + 64);
    do
    {
      v7 = *(v6 + v5);
      v8 = *(a1 + 72);
      if (v7 <= 1.0)
      {
        v9 = *(v8 + v5) * 1.01;
      }

      else
      {
        v9 = (0.01 / v7 + 1.0) * *(v8 + v5);
      }

      *(v8 + v5) = v9;
      v5 += 8;
    }

    while (v4 != v5);
  }

  v10 = *(a1 + 56);
  if ((*(a1 + 128) & 2) != 0)
  {
    v11 = *(a1 + 72);

    memcpy(v10, v11, v4);
  }

  else
  {

    bzero(v10, v4);
  }
}

void FeatureAverager<double>::Update(uint64_t a1, const double *__A, void *a3, void *a4)
{
  v8 = *(a1 + 124) + 1;
  *(a1 + 124) = v8;
  if (v8 <= *(a1 + 12))
  {
    *(a1 + 120) = 0;
    v9 = *(a1 + 48);
    v12 = *(a1 + 64);
    v18 = *(a1 + 112);
    v19 = *(a1 + 24);
LABEL_11:
    v20 = *(a1 + 8);
    vDSP_vsubD(v12, 1, __A, 1, v18, 1, v20);
    __B = v19;
    vDSP_vsmaD(v18, 1, &__B, v9, 1, v9, 1, v20);
    v21 = 0.0;
    goto LABEL_13;
  }

  if (v8 > *(a1 + 16))
  {
    *(a1 + 120) = 2;
    v9 = *(a1 + 48);
    v10 = *(a1 + 40);
    v11 = *(a1 + 44);
    v12 = *(a1 + 80);
    if (v10 < v11)
    {
      v13 = *(a1 + 136);
      v14 = *v13;
      v15 = ~v10;
      v16 = *(a1 + 80);
      do
      {
        if (v10 < 0)
        {
          v17 = *(v13 + 2) + ~((v15 + *(v13 + 2) - *(v13 + 3)) % *(v13 + 2));
        }

        else
        {
          v17 = (v10 + *(v13 + 3)) % *(v13 + 2);
        }

        *v16++ = *(v14 + 8 * v17);
        ++v10;
        --v15;
      }

      while (v11 + v15 != -1);
    }

    v18 = *(a1 + 112);
    v19 = *(a1 + 32);
    goto LABEL_11;
  }

  *(a1 + 120) = 1;
  v22 = *(a1 + 48);
  v21 = 1.0 / v8;
  v23 = *(a1 + 112);
  v24 = *(a1 + 8);
  vDSP_vsubD(v22, 1, __A, 1, v23, 1, v24);
  __B = v21;
  vDSP_vsmaD(v23, 1, &__B, v22, 1, v22, 1, v24);
LABEL_13:
  memcpy(a3, *(a1 + 48), 8 * *(a1 + 8));
  if ((*(a1 + 128) & 2) == 0)
  {
    goto LABEL_23;
  }

  vDSP_vmulD(__A, 1, __A, 1, *(a1 + 96), 1, *(a1 + 8));
  v25 = *(a1 + 56);
  v26 = *(a1 + 120);
  if (v26 == 2)
  {
    vDSP_vmulD(*(a1 + 80), 1, *(a1 + 80), 1, *(a1 + 88), 1, *(a1 + 8));
    v27 = *(a1 + 88);
    v28 = *(a1 + 96);
    v29 = *(a1 + 112);
    v21 = *(a1 + 32);
    goto LABEL_20;
  }

  if (v26 == 1)
  {
    v28 = *(a1 + 96);
    v29 = *(a1 + 112);
    v30 = *(a1 + 8);
    v27 = *(a1 + 56);
LABEL_21:
    vDSP_vsubD(v27, 1, v28, 1, v29, 1, v30);
    __B = v21;
    vDSP_vsmaD(v29, 1, &__B, v25, 1, v25, 1, v30);
    goto LABEL_22;
  }

  if (!*(a1 + 120))
  {
    v27 = *(a1 + 72);
    v28 = *(a1 + 96);
    v29 = *(a1 + 112);
    v21 = *(a1 + 24);
LABEL_20:
    v30 = *(a1 + 8);
    goto LABEL_21;
  }

LABEL_22:
  memcpy(a4, *(a1 + 56), 8 * *(a1 + 8));
  vDSP_vmulD(*(a1 + 48), 1, *(a1 + 48), 1, *(a1 + 104), 1, *(a1 + 8));
  vDSP_vsubD(*(a1 + 104), 1, a4, 1, a4, 1, *(a1 + 8));
  v31 = *(a1 + 8);
  __B = 0.0;
  vDSP_vthresD(a4, 1, &__B, a4, 1, v31);
LABEL_23:
  v32 = *(a1 + 8);
  v33 = *(a1 + 136);
  if (v32 == 1)
  {
    v34 = *(v33 + 12);
    *(*v33 + 8 * v34) = *__A;
    *(v33 + 12) = (v34 + 1) % *(v33 + 8);
  }

  else
  {
    v35 = *(v33 + 8);
    v36 = *(v33 + 12);
    if (v35 < v32)
    {
      v32 = *(v33 + 8);
    }

    v37 = v36 + v32;
    v38 = v36 + v32 - v35;
    if (v38 < 0)
    {
      memcpy((*v33 + 8 * v36), __A, 8 * v32);
    }

    else
    {
      v39 = v35 - v36;
      memcpy((*v33 + 8 * v36), __A, 8 * (v35 - v36));
      memcpy(*v33, &__A[v39], 8 * v38);
      v37 = v38;
    }

    *(v33 + 12) = v37;
  }
}

void FeatureAverager<double>::~FeatureAverager(void *a1)
{
  *a1 = &unk_1F591BD30;
  FeatureAverager<double>::deallocateStorage(a1);

  JUMPOUT(0x1E12BD160);
}

void *FeatureAverager<double>::~FeatureAverager(void *a1)
{
  *a1 = &unk_1F591BD30;
  FeatureAverager<double>::deallocateStorage(a1);
  return a1;
}

uint64_t ASAFeatures::computeCepstralSpeechWindow(ASAFeatures *this, float a2, float a3, const float *a4, float *a5)
{
  v10 = a3;
  v11 = a2;
  v9 = -a3;
  v6 = a5;
  MEMORY[0x1E12BE8A0](this, 1, &v9, a4, 1, a5);
  MEMORY[0x1E12BE940](a4, 1, &v11, a4, 1, v6);
  MEMORY[0x1E12BE8A0](a4, 1, &v10, a4, 1, v6);
  v8 = 0.0;
  vDSP_sve(a4, 1, &v8, v6);
  v8 = 1.0 / v8;
  return MEMORY[0x1E12BE940](a4, 1, &v8, a4, 1, v6);
}

void *std::vector<float *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDC35D7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<float *>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<float (ASAFeatures::*)(ASAFrontEndInputState const*),std::allocator<float (ASAFeatures::*)(ASAFrontEndInputState const*)>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 4) + 1;
    if (v8 >> 60)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (16 * (v7 >> 4));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

float ASAFeatures::AvgTonalityPower(void *a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0.0;
  ASAFeatures::getRMS(a1, a2, &v16, &v15);
  v4 = *(a2 + 88);
  v5 = *(*a1 + 72);
  v6 = *(a1[15] + 8);
  __C = 0.0;
  vDSP_maxmgv(v4, 1, &__C, v5);
  v7 = 0.0;
  if (__C > v6)
  {
    v7 = 1.0;
  }

  __C = v7 + ((1.0 - v7) * 0.005);
  v14 = v16 * __C;
  v13 = 0;
  v12 = 0.0;
  (*(**(a1[22] + 120) + 16))(*(a1[22] + 120), &v16, &v13 + 4, &v15);
  (*(**(a1[22] + 128) + 16))(*(a1[22] + 128), &__C, &v13, &v15);
  (*(**(a1[22] + 136) + 16))(*(a1[22] + 136), &v14, &v12, &v15);
  v8 = *(a1[22] + 120);
  v9 = *(v8 + 112);
  if (v9 == 2)
  {
    v10 = *(v8 + 16);
  }

  else if (v9 == 1)
  {
    v10 = *(v8 + 116);
  }

  else
  {
    v10 = 0;
    if (!*(v8 + 112))
    {
      v10 = *(v8 + 12);
    }
  }

  return log((((v12 * v10) / ((*&v13 * v10) + *(a1[15] + 12))) / *(&v13 + 1)));
}

float ASAFeatures::getRMS(uint64_t a1, ASAFeatures **a2, float *a3, float *a4)
{
  if (*(a1 + 976))
  {
    v7 = ASAFeatures::computeCenteredRMS(*a2, *(*a1 + 64), *(*a1 + 16));
    *(a1 + 980) = v7;
    v8 = log10(v7);
    *(a1 + 984) = v8 * 20.0;
  }

  else
  {
    v7 = *(a1 + 980);
  }

  *a3 = v7;
  result = *(a1 + 984);
  *a4 = result;
  return result;
}

float ASAFeatures::computeCenteredRMS(ASAFeatures *this, vDSP_Length __N, int a3)
{
  v3 = __N;
  __C = 0.0;
  vDSP_svesq(this + (vcvts_n_f32_u32(a3 - __N, 1uLL) + 0.5), 1, &__C, __N);
  return sqrt(__C / v3);
}

float ASAFeatures::AvgPitchDensity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 944);
  v4 = *(a1 + 948);
  v5 = (*(a2 + 88) + 4 * *(a1 + 936));
  __C = 0.0;
  vDSP_svemg(v5, 1, &__C, v3);
  __C = v4 * __C;
  v8 = 0;
  v9 = 0.0;
  (*(**(*(a1 + 176) + 112) + 16))(*(*(a1 + 176) + 112), &__C, &v9, &v8);
  v6 = log(v9);
  return -v6;
}

float ASAFeatures::CepstralVariance(void *a1, uint64_t a2)
{
  v3 = *(*a1 + 72);
  v4 = a1[69];
  if (v3)
  {
    v5 = 0;
    v6 = *(a2 + 88);
    v7 = a1[88];
    v8 = *(a1[13] + 8);
    v9 = 0.0;
    do
    {
      v10 = 0.0;
      if (v5)
      {
        v10 = pow(fabsf(*(v6 + v5) * *(v7 + v5)), v8);
      }

      v9 = v10 + v9;
      *(v4 + v5) = v10;
      v5 += 4;
    }

    while (4 * v3 != v5);
  }

  else
  {
    v9 = 0.0;
  }

  v19 = 1.0 / v9;
  MEMORY[0x1E12BE940](v4, 1, &v19, v4, 1, v3);
  __C = 0.0;
  v18 = 0.0;
  v11 = a1[69];
  v12 = a1[89];
  v13 = a1[73];
  v14 = *(*a1 + 72);
  MEMORY[0x1E12BE7F0](v11, 1, v12, 1, v13, 1, v14);
  vDSP_sve(v13, 1, &__C, v14);
  v19 = -1.0;
  MEMORY[0x1E12BE910](v12, 1, &v19, &__C, v13, 1, v14);
  MEMORY[0x1E12BE990](v13, 1, v13, 1, v14);
  MEMORY[0x1E12BE7F0](v13, 1, v11, 1, v13, 1, v14);
  vDSP_sve(v13, 1, &v18, v14);
  v19 = *(*a1 + 8) * (*(*a1 + 8) / v18);
  v16 = 0.0;
  (*(**(a1[22] + 104) + 16))(*(a1[22] + 104), &v19, &v16, &__C);
  return log(v16);
}

float ASAFeatures::CepstralSparsity(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  v4 = *(a1 + 680);
  v5 = *(a1 + 688);
  v6 = *(a1 + 696);
  v7 = *(*a1 + 72);
  HIDWORD(__C) = *(a1 + 928);
  MEMORY[0x1E12BE940](v3, 1, &__C + 4, v5, 1, v7);
  MEMORY[0x1E12BE7F0](v3, 1, v4, 1, v6, 1, v7);
  *v5 = 0;
  *v6 = 0;
  v8 = *(a1 + 688);
  v9 = *(a1 + 696);
  v10 = *(*a1 + 72);
  __C = 0;
  vDSP_svemg(v8, 1, &__C + 1, v10);
  vDSP_svesq(v9, 1, &__C, v10);
  *(&__C + 1) = sqrtf(*&__C) / *(&__C + 1);
  v12 = 0.0;
  LODWORD(__C) = 0;
  (*(**(*(a1 + 176) + 96) + 16))(*(*(a1 + 176) + 96), &__C + 4, &__C, &v12);
  return log(v12);
}

float ASAFeatures::ReconDiffVar(void *a1, uint64_t a2)
{
  __C = 0.0;
  vDSP_svesq(*(a2 + 56), 1, &__C, *(*a1 + 56));
  __C = sqrtf(__C);
  v6 = 0.0;
  vDSP_svesq(*(a2 + 16), 1, &v6, *(*a1 + 56));
  __C = __C / sqrtf(v6);
  v5 = 0;
  (*(**(a1[22] + 88) + 16))(*(a1[22] + 88), &__C, &v5 + 4, &v5);
  return log(*&v5);
}

float ASAFeatures::FluxVar(const float **a1, uint64_t a2)
{
  __C = 0.0;
  MEMORY[0x1E12BE9A0](*(a2 + 48), 1, *(a2 + 40), 1, a1[70], 1, *(*a1 + 14));
  vDSP_svesq(a1[70], 1, &__C, *(*a1 + 14));
  v4 = *a1;
  __C = sqrtf(__C) * (*a1)[3];
  v7 = 0.0;
  vDSP_svesq(*(a2 + 40), 1, &v7, *(v4 + 14));
  __C = __C / sqrtf(v7);
  v6 = 0;
  (*(**(a1[22] + 10) + 16))(*(a1[22] + 10), &__C, &v6 + 4, &v6);
  return log(*&v6);
}

float ASAFeatures::CentroidVar(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(*a1 + 68);
  v5 = a1[83];
  v6 = a1[70];
  v7 = *(*a1 + 56);
  __C = 0.0;
  vDSP_sve(v3, 1, &__C, v7);
  v8 = __C;
  MEMORY[0x1E12BE7F0](v3, 1, v5, 1, v6, 1, v7);
  __C = 0.0;
  vDSP_sve(v6, 1, &__C, v7);
  __C = (__C / v8) * v4;
  v10 = 0.0;
  v11 = 0;
  (*(**(a1[22] + 72) + 16))(*(a1[22] + 72), &__C, &v11, &v10);
  return sqrtf(v10);
}

float ASAFeatures::SpectralRolloffHzVar(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a1[8] + 8);
  v5 = *(*a1 + 68);
  v6 = *(*a1 + 56);
  __C = 0.0;
  vDSP_sve(v3, 1, &__C, v6);
  v7 = __C * v4;
  v8 = *v3;
  v9 = 0.0;
  if (v6)
  {
    v10 = v8 < v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = (v3 + 1);
    v12 = 1;
    while (v6 != v12)
    {
      v13 = *v11++;
      v8 = v8 + v13;
      ++v12;
      if (v8 >= v7)
      {
        LODWORD(v6) = v12 - 1;
        break;
      }
    }

    v9 = v6;
  }

  __C = v9 * v5;
  v15 = 0.0;
  v16 = 0;
  (*(**(a1[22] + 64) + 16))(*(a1[22] + 64), &__C, &v16, &v15);
  return sqrtf(v15);
}

float ASAFeatures::LowEnergyFrac(void *a1, ASAFeatures **a2)
{
  v17 = 0;
  RMS = ASAFeatures::getRMS(a1, a2, &v17, &v16);
  v14 = 0;
  v15 = 0.0;
  (*(**(a1[22] + 56) + 16))(*(a1[22] + 56), &v17, &v15, &v14, RMS);
  v4 = *(a1[22] + 56);
  if (*(v4 + 112))
  {
    v5 = 0;
    if (*(v4 + 112) == 1)
    {
      v6 = *(v4 + 116);
    }

    else
    {
      v6 = *(*a1 + 52);
    }

    if (v6)
    {
      v7 = 0;
      v8 = v15 * *(a1[7] + 8);
      v9 = -1;
      do
      {
        v18 = 0.0;
        MRRingBuffer<float>::GetSampleRange(*(v4 + 128), *(v4 + 8) * v9, *(v4 + 8) * v9 + *(v4 + 8), &v18);
        if (v18 > 0.00055)
        {
          ++v5;
          if (v18 < v8)
          {
            ++v7;
          }
        }

        --v9;
        --v6;
      }

      while (v6);
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    if (v5 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v5;
    }

    v11 = ((v10 / v12) + 0.025);
  }

  else
  {
    v11 = 0.0250000004;
  }

  return log(v11 / (1.0 - v11));
}

float ASAFeatures::ModEnergy2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a1 + 464);
  v5 = *(a1 + 472);
  v6 = *(a1 + 544);
  v7 = *(*(a1 + 176) + 40);
  v8 = *(a1 + 1008);
  v9 = *(a1 + 872);
  __C = *(*a1 + 44);
  vvlogf(v4, v3, &__C);
  if (v8 <= v9)
  {
    (*(*v7 + 16))(v7, v4, v5, v6);
  }

  v10 = *(a1 + 488);
  v12 = *(a1 + 496);
  v11 = *(a1 + 504);
  v13 = *(a1 + 512);
  v14 = *(a1 + 520);
  v16 = *(a1 + 464);
  v15 = *(a1 + 472);
  *v49 = *(a1 + 528);
  v51 = *(a1 + 480);
  v17 = *(a1 + 880);
  v18 = *(a1 + 888);
  v19 = *(a1 + 896);
  v20 = *(*a1 + 44);
  v21 = 0.0;
  __C = ((*(a1 + 968) * v17) + (v19 * (((*(a1 + 956) + 0.0) - *(a1 + 960)) - *(a1 + 964)))) + (v18 * *(a1 + 972));
  MEMORY[0x1E12BE940](v15, 1, &__C);
  *&v22 = *(a1 + 956);
  *(a1 + 956) = 0;
  *(&v22 + 2) = __C;
  HIDWORD(v22) = *(a1 + 968);
  *(a1 + 960) = v22;
  VADGenUtils::TwoPoleBandpass_Array<float>(v16, v51, v10, v12, v13, v14, v11, v20, v17, v18, v19);
  ASAFeatures::backupBandpassArrayStates(v16, v51, v10, v12, v11, v13, v14, v20, v49[0]);
  MEMORY[0x1E12BE5D0](v11, 1, *v50, 1, v11, 1, v20);
  v23 = *(a1 + 536);
  v24 = *(a1 + 904);
  v25 = *(a1 + 912);
  v26 = *(a1 + 920);
  v27 = *(*a1 + 44);
  v28 = 4 * v27;
  memcpy(v23, *(a1 + 504), 4 * v27);
  if (v27)
  {
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    do
    {
      v36 = v21;
      v21 = *v23;
      v29 = v24;
      v30 = v25;
      v31 = v26;
      v37 = ((v33 * v29) + (v31 * (((v36 + *v23) - v35) - v34))) + (v30 * v32);
      *v23++ = v37;
      v32 = v33;
      v33 = v37;
      v34 = v35;
      v35 = v36;
      v28 -= 4;
    }

    while (v28);
  }

  v38 = *(a1 + 536);
  v39 = *(a1 + 544);
  v40 = *(a1 + 568);
  v41 = *(a1 + 48);
  v42 = v41[6];
  v43 = v41[7];
  v44 = v41[8];
  v45 = v41[9];
  v46 = *(*a1 + 44);
  vDSP_vabs(v38, 1, v38, 1, v46);
  VADGenUtils::VectorSigmoid<float>(v38, v38, v39, v40, v46, v42, v43);
  __C = 0.0;
  MEMORY[0x1E12BE990](v38, 1, v38, 1, v46);
  vDSP_sve(v38, 1, &__C, v46);
  v47 = exp(((sqrtf(__C) - v44) * v45));
  __C = v47 / (v47 + 1.0);
  v52 = 0;
  v53 = 0.0;
  (*(**(*(a1 + 176) + 48) + 16))(*(*(a1 + 176) + 48), &__C, &v53, &v52);
  return log(v53 / (1.0 - v53));
}

void ASAFeatures::backupBandpassArrayStates(ASAFeatures *this, float *a2, float *__A, float *__C, const float *a5, float *a6, float *a7, vDSP_Length __M, unsigned int a9)
{
  v15 = __M;
  vDSP_mmov(__A, __C, __M, 1uLL, __M, __M);
  vDSP_mmov(a2, __A, v15, 1uLL, v15, v15);
  vDSP_mmov(this, a2, v15, 1uLL, v15, v15);
  vDSP_mmov(a6, a7, v15, 1uLL, v15, v15);

  vDSP_mmov(a5, a6, v15, 1uLL, v15, v15);
}

float ASAFeatures::ModEnergy(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 408);
  v4 = *(a1 + 432);
  v21 = *(a1 + 424);
  v22 = *(a1 + 416);
  v6 = *(a1 + 448);
  v5 = *(a1 + 456);
  v7 = *(a1 + 848);
  v8 = *(a1 + 856);
  v9 = *(a1 + 864);
  v10 = *(a1 + 440);
  v11 = *(*a1 + 44);
  if (v11)
  {
    v12 = *(a2 + 32);
    v13 = 4 * v11;
    v14 = *(a1 + 408);
    do
    {
      v15 = *v12++;
      v16 = log(v15);
      *v14++ = v16;
      v13 -= 4;
    }

    while (v13);
  }

  v17 = v9;
  v18 = v8;
  v19 = v7;
  VADGenUtils::TwoPoleBandpass_Array<float>(v3, v22, v21, v4, v6, v5, v10, v11, v19, v18, v17);
  ASAFeatures::backupBandpassArrayStates(v3, v22, v21, v4, v10, v6, v5, v11, v21);
  __C = 0.0;
  vDSP_svesq(v10, 1, &__C, v11);
  __C = sqrtf(__C);
  v23 = 0;
  v24 = 0.0;
  (*(**(*(a1 + 176) + 32) + 16))(*(*(a1 + 176) + 32), &__C, &v24, &v23);
  return log(v24);
}

float ASAFeatures::LogRmsStdDev(uint64_t a1, ASAFeatures **a2)
{
  v5 = 0.0;
  ASAFeatures::getRMS(a1, a2, &v6, &v5);
  v5 = v5 * 0.11513;
  v4 = 0;
  (*(**(*(a1 + 176) + 24) + 16))(*(*(a1 + 176) + 24), &v5, &v4 + 4, &v4);
  return log((*&v4 + 0.000821));
}

float ASAFeatures::NormRms(uint64_t a1, ASAFeatures **a2)
{
  v8 = 0.0;
  ASAFeatures::getRMS(a1, a2, &v8, &v7);
  v6 = v8;
  v4 = 0.0;
  v5 = 0.0;
  (*(**(a1 + 592) + 16))(*(a1 + 592), &v6, &v5, &v4);
  return log10(sqrt(v4) / v5) * 20.0;
}

float ASAFeatures::RmsDynamicRange(void *a1, ASAFeatures **a2)
{
  v16 = 0.0;
  ASAFeatures::getRMS(a1, a2, &v17, &v16);
  v3 = v16 * 0.11513;
  v4 = a1[50];
  v5 = *v4;
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  *(*v4 + 4 * v7) = v16 * 0.11513;
  v8 = (v7 + 1) % v6;
  *(v4 + 3) = v8;
  v9 = (1.0 - *(*a1 + 52));
  if (v9 < 0)
  {
    v11 = v6 - v9 - v8;
    v10 = v3;
    do
    {
      v12 = v6 + ~(v11 % v6);
      v13 = *(v5 + 4 * v12);
      if (v3 > v13)
      {
        v3 = *(v5 + 4 * v12);
      }

      if (v10 < v13)
      {
        v10 = *(v5 + 4 * v12);
      }

      --v11;
    }

    while (!__CFADD__(v9++, 1));
  }

  else
  {
    v10 = v3;
  }

  return log((v10 - v3));
}

float ASAFeatures::FilteredRmsDBDeriv(uint64_t a1, ASAFeatures **a2)
{
  v5 = 0.0;
  ASAFeatures::getRMS(a1, a2, &v6, &v5);
  v3 = v5 - *(*(a1 + 32) + 8);
  result = (v3 - *(a1 + 1000)) + (*(a1 + 844) * (*(a1 + 1004) - (v3 - *(a1 + 1000))));
  *(a1 + 1004) = result;
  *(a1 + 1000) = v3;
  return result;
}

float ASAFeatures::FilteredRmsDB(uint64_t a1, ASAFeatures **a2)
{
  v6 = 0.0;
  ASAFeatures::getRMS(a1, a2, &v7, &v6);
  v3 = v6 - *(*(a1 + 32) + 8);
  v4 = *(a1 + 992);
  result = ((v4 * *(a1 + 832)) + (*(a1 + 840) * (v3 - *(a1 + 988)))) + (*(a1 + 836) * *(a1 + 996));
  *(a1 + 996) = v4;
  *(a1 + 992) = result;
  *(a1 + 988) = v3;
  return result;
}

float ASAFeatures::HarmonicConsistency(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 344);
  v4 = *(a1 + 800);
  v5 = *(a1 + 808);
  v6 = *(a1 + 816);
  v7 = *(*a1 + 60);
  v8 = 4 * v7;
  memcpy(v3, *(a2 + 24), 4 * v7);
  v36 = v7;
  vvlogf(v3, v3, &v36);
  if (v7)
  {
    v12 = 0.0;
    v13 = 4 * v7;
    v14 = v3;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = v12;
      v12 = *v14;
      v9 = v4;
      v10 = v5;
      v11 = v6;
      v20 = ((v16 * v9) + (v11 * (((v19 + *v14) - v18) - v17))) + (v10 * v15);
      *v14++ = v20;
      v15 = v16;
      v16 = v20;
      v17 = v18;
      v18 = v19;
      v13 -= 4;
    }

    while (v13);
    do
    {
      if (*v3 < 0.0)
      {
        *v3 = 0.0;
      }

      ++v3;
      v8 -= 4;
    }

    while (v8);
  }

  if (*(a1 + 1008) <= *(a1 + 824))
  {
    (*(**(*(a1 + 176) + 16) + 16))(*(*(a1 + 176) + 16), *(a1 + 344), *(a1 + 352), *(a1 + 368));
  }

  v22 = *(a1 + 344);
  v21 = *(a1 + 352);
  v24 = *(a1 + 376);
  v23 = *(a1 + 384);
  v25 = *(a1 + 360);
  v26 = *(a1 + 368);
  v27 = *(a1 + 576);
  v28 = *(*a1 + 60);
  v29 = *(a1 + 24);
  v30 = v29[6];
  v31 = v29[7];
  v37 = v29[3];
  *(a1 + 952) = *(a1 + 952) * v37;
  MEMORY[0x1E12BE940](v21, 1, a1 + 952, v23, 1, v28);
  MEMORY[0x1E12BE9A0](v22, 1, v24, 1, v24, 1, v28);
  MEMORY[0x1E12BE8F0](v24, 1, &v37, v22, 1, v25, 1, v28);
  memcpy(v24, v25, 4 * v28);
  MEMORY[0x1E12BE5D0](v25, 1, v23, 1, v25, 1, v28);
  VADGenUtils::VectorSigmoid<float>(v25, v25, v26, v27, v28, v30, v31);
  v32 = *(a1 + 360);
  v33 = *(*a1 + 60);
  __C = 0.0;
  vDSP_svesq(v32, 1, &__C, v33);
  v34 = sqrt(__C / v33);
  return log(v34 / (1.0 - v34));
}

float ASAFeatures::BeatsV2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v5 = *(a1 + 248);
  v4 = *(a1 + 256);
  v6 = *(a1 + 264);
  v7 = *(a1 + 568);
  v8 = *(a1 + 656);
  v9 = *(a1 + 792);
  v10 = *(a1 + 392);
  LODWORD(__A.realp) = *(*a1 + 44);
  realp_low = LODWORD(__A.realp);
  vvlogf(v5, v2, &__A);
  v11 = *(v10 + 8);
  v12 = *(v10 + 12);
  if (v11 >= realp_low)
  {
    v13 = realp_low;
  }

  else
  {
    v13 = *(v10 + 8);
  }

  v14 = v12 + v13;
  v15 = v12 + v13 - v11;
  if (v15 < 0)
  {
    memcpy((*v10 + 4 * v12), v5, 4 * v13);
  }

  else
  {
    v16 = v11 - v12;
    memcpy((*v10 + 4 * v12), v5, 4 * (v11 - v12));
    memcpy(*v10, &v5[v16], 4 * v15);
    v14 = v15;
  }

  *(v10 + 12) = v14;
  v17 = a1;
  if (realp_low)
  {
    v18 = ~v14 + realp_low;
    v19 = -realp_low;
    v20 = v4;
    do
    {
      *v20 = 0.0;
      if (v9)
      {
        v21 = *v10;
        v22 = 0.0;
        v23 = 4 * v9;
        v24 = v19;
        v25 = v18;
        v26 = v8;
        do
        {
          if (v24 + 1 <= 0)
          {
            v27 = *(v10 + 8) + ~((v25 + *(v10 + 8)) % *(v10 + 8));
          }

          else
          {
            v27 = (v14 + v24) % *(v10 + 8);
          }

          v28 = *v26++;
          v22 = v22 + (v28 * v21[v27]);
          *v20 = v22;
          v25 += realp_low;
          v24 -= realp_low;
          v23 -= 4;
        }

        while (v23);
      }

      ++v20;
      --v18;
      ++v19;
    }

    while (v20 != &v4[realp_low]);
    v29 = 4 * realp_low;
    v30 = v4;
    do
    {
      if (*v30 < 0.0)
      {
        *v30 = 0.0;
      }

      ++v30;
      v29 -= 4;
    }

    while (v29);
  }

  VADGenUtils::VectorSigmoid<float>(v4, v4, v6, v7, realp_low, 0.8, 3.0);
  v31 = *(a1 + 256);
  v32 = *(a1 + 732);
  v33 = *(a1 + 272);
  v34 = *(*(a1 + 16) + 16);
  if (v34)
  {
    v35 = *(a1 + 568);
    v36 = *(a1 + 296);
    v37 = *(*a1 + 44);
    __C[0] = -1.0;
    v136 = 1065353216;
    MEMORY[0x1E12BE910](v31, 1, __C, &v136, v35, 1, v37);
    vDSP_vdiv(v35, 1, v31, 1, v35, 1, v37);
    LODWORD(__A.realp) = v37;
    vvlogf(v35, v35, &__A);
    if (v32)
    {
      v38 = &v35[v32];
      v39 = v36;
      do
      {
        v40 = 0;
        *v39 = 0.0;
        v41 = 0.0;
        do
        {
          v41 = v41 + v35[v40 / 4];
          *v39 = v41;
          v40 += 4;
        }

        while (4 * (2 * v34) + 4 != v40);
        *v39++ = (1.0 / ((2 * v34) | 1u)) * v41;
        ++v35;
      }

      while (v35 != v38);
      LODWORD(__A.realp) = v32;
      vvexpf(v33, v36, &__A);
      v42 = 4 * v32;
      do
      {
        *v33 = *v33 / (*v33 + 1.0);
        ++v33;
        v42 -= 4;
      }

      while (v42);
    }

    else
    {
      LODWORD(__A.realp) = 0;
      vvexpf(v33, v36, &__A);
    }
  }

  else
  {
    memcpy(*(a1 + 272), *(a1 + 256), 4 * v32);
  }

  v43 = *(a1 + 272);
  LODWORD(__A.realp) = *(a1 + 732);
  vvlogf(v43, v43, &__A);
  v44 = *(a1 + 732);
  v46 = *(a1 + 272);
  v45 = *(a1 + 280);
  v47 = *(a1 + 296);
  (*(**(*(a1 + 176) + 8) + 16))(*(*(a1 + 176) + 8), v46, v45, *(a1 + 288));
  MEMORY[0x1E12BE9A0](v45, 1, v46, 1, v47, 1, v44);
  v48 = *(a1 + 736);
  v49 = *(a1 + 732);
  v50 = *(a1 + 320);
  v51 = *(a1 + 200);
  v52 = 4 * v48;
  if (v51 != *(a1 + 208))
  {
    v54 = *(a1 + 296);
    v53 = *(a1 + 304);
    v55 = *(a1 + 320);
    v56 = *(a1 + 312);
    do
    {
      v58 = *v51++;
      v57 = v58;
      LODWORD(v58) = *v54++;
      (*(*v57 + 16))(v57, v53, v56, *&v58);
      __A.realp = v53;
      __A.imagp = v56;
      vDSP_zvabs(&__A, 1, v55, 1, v48);
      v55 = (v55 + v52);
    }

    while (v51 != *(a1 + 208));
  }

  v59 = (v49 * v48);
  if (v59)
  {
    v60 = 4 * v59;
    v61 = (v50 + 4);
    do
    {
      *(v61 - 1) = 0.0;
      *v61 = *v61 * 0.5;
      v61 = (v61 + v52);
      v60 -= v52;
    }

    while (v60);
  }

  v62 = *(a1 + 304);
  v63 = *(a1 + 288);
  v64 = *(a1 + 736);
  v65 = *(a1 + 732);
  v66 = *(a1 + 320);
  v67 = *(a1 + 328);
  v68 = *(a1 + 336);
  v69 = *(a1 + 648);
  LODWORD(__A.realp) = -1054867456;
  v122 = v63;
  vDSP_vfill(&__A, v63, 1, v65);
  v124 = v65;
  if (v65)
  {
    v70 = 0;
    v71 = *(a1 + 752) - *(a1 + 744);
    v123 = v71 & 0x3FFFFFFFCLL;
    v72 = (v71 >> 2);
    v131 = v64 - 2;
    v132 = v64 - 1;
    v73 = vdup_n_s32(v64);
    v134 = 4 * v64;
    __asm { FMOV            V4.2D, #0.5 }

    v126 = v122;
    v127 = v72;
    v129 = v67;
    v130 = v64;
    v128 = v69;
    v135 = _Q4;
    do
    {
      v125 = v70;
      if (v123)
      {
        v79 = 0;
        v80 = -10.0;
        do
        {
          if (v79 >= (v69[1] - *v69) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          MEMORY[0x1E12BE7F0](*(*v69 + 8 * v79), 1, v66, 1, v62, 1, v64);
          v81 = *v62;
          if (v64)
          {
            v82 = 0;
            v83 = 0;
            v84 = v134;
            v85 = *v62;
            v87 = v135;
            v86 = xmmword_1DE09BD10;
            do
            {
              v88 = v62[v82];
              if (v88 <= v85)
              {
                v85 = v62[v82];
              }

              else if (v88 >= v81)
              {
                v83 = v82;
                v81 = v62[v82];
              }

              ++v82;
              v84 -= 4;
            }

            while (v84);
          }

          else
          {
            v83 = 0;
            v85 = *v62;
            v87 = v135;
            v86 = xmmword_1DE09BD10;
          }

          if (v81 != v85)
          {
            v89 = v131;
            if (v83 != v132)
            {
              v89 = v83;
            }

            if (!v83)
            {
              v89 = 1;
            }

            v90 = *(v17 + 744);
            if (v79 >= (*(v17 + 752) - v90) >> 2)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v91 = *(v90 + 4 * v79);
            if (v91)
            {
              v92 = 0;
              v93 = v62[v89 - 1];
              v94 = v62[v89 + 1];
              v95 = v94 + (v93 - (v62[v89] + v62[v89]));
              v96 = (((v93 - v94) / (v95 + v95)) + v89) + 1.0;
              while (1)
              {
                v97 = vadd_s32(vcvt_u32_f32(vcvt_f32_f64(vcvtq_f64_u64(vcvtq_u64_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(vcvt_f32_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(v92), 0), v86)), v96)), v87))))), -1);
                v98 = vcge_u32(v97, v73);
                if ((v98.i32[1] | v98.i32[0]))
                {
                  break;
                }

                v67[v92] = v97.u32[1];
                v68[v92++] = v97.i32[0];
                if (v91 == v92)
                {
                  goto LABEL_63;
                }
              }

              v91 = v92;
            }

LABEL_63:
            v99 = *(v17 + 768);
            if (v79 >= (*(v17 + 776) - v99) >> 2)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v100 = *(v99 + 4 * v79);
            if (v91)
            {
              v101 = 4 * v91;
              v102 = 1.0;
              v103 = 0.0;
              v104 = v68;
              do
              {
                v106 = *v67++;
                v105 = v106;
                v107 = (v66 + 4 * v106);
                v108 = *v104++;
                v109 = (v108 - v105 + 1);
                LODWORD(__A.realp) = 0;
                vDSP_svesq(v107, 1, &__A, v109);
                __C[0] = 0.0;
                v110 = sqrt(*&__A.realp);
                vDSP_svemg(v107, 1, __C, v109);
                v111 = log(v109 / (__C[0] / v110 * (__C[0] / v110)));
                v103 = v103 + (v102 * v111);
                v102 = v102 * v100;
                v101 -= 4;
              }

              while (v101);
            }

            else
            {
              v103 = 0.0;
            }

            v112 = pow(v100, v91);
            v113 = ((1.0 - v100) / (1.0 - v112)) * v103;
            v17 = a1;
            v67 = v129;
            v64 = v130;
            v72 = v127;
            v69 = v128;
            if (v113 > v80)
            {
              *v126 = v113;
              v80 = v113;
            }
          }

          ++v79;
        }

        while (v79 != v72);
      }

      v66 += 4 * v64;
      ++v126;
      v70 = v125 + 1;
    }

    while (v125 + 1 != v124);
  }

  v114 = *(v17 + 732);
  v115 = *(*(v17 + 16) + 20);
  if (v114)
  {
    v116 = 4 * v114;
    v117 = 0.0;
    v118 = v122;
    do
    {
      v119 = *v118++;
      v117 = v117 + pow(v119, v115);
      v116 -= 4;
    }

    while (v116);
  }

  else
  {
    v117 = 0.0;
  }

  v120 = pow(v117, 1.0 / v115);
  return log(v120 + 2.2204e-16);
}

float ASAFeatures::ChromaHiFreq(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 8) + 8);
  v4 = *(a1 + 224);
  v5 = 0.0;
  v6 = 0.0;
  if (v3)
  {
    v7 = 0;
    v8 = *(a2 + 24);
    v9 = *(a1 + 616);
    v10 = 0.0;
    v11 = v4;
    v12 = *(a1 + 720);
    do
    {
      *v11 = 0.0;
      v13 = 0.0;
      if (v12)
      {
        v14 = v12;
        do
        {
          v15 = *v9++;
          v13 = *(v8 + 4 * v15) + v13;
          *v11 = v13;
          --v14;
        }

        while (v14);
      }

      v10 = v10 + (v13 * v13);
      ++v11;
      ++v7;
    }

    while (v7 != v3);
    v6 = v10;
  }

  v16 = 1.0 / sqrt(v6);
  v38 = v16;
  MEMORY[0x1E12BE940](v4, 1, &v38, v4, 1);
  v17 = *(a1 + 608);
  v19 = *(a1 + 224);
  v18 = *(a1 + 232);
  v20 = *(a1 + 240);
  v21 = *(a1 + 8);
  v23 = *(v21 + 16);
  v22 = *(v21 + 20);
  v24 = *(v21 + 28);
  __P = *(v21 + 8);
  vDSP_mmul(*(a1 + 600), 1, v19, 1, v18, 1, __P, 1uLL, __P);
  vDSP_mmul(v17, 1, v19, 1, v20, 1, __P, 1uLL, __P);
  v26 = v23 - 1;
  if (v23 - 1 != v22)
  {
    v27 = &v20[v26];
    v28 = &v18[v26];
    v29 = 0.0;
    v30 = 4 * v22 - 4 * v26;
    do
    {
      v31 = *v28++;
      v32 = v31;
      v33 = *v27++;
      v29 = v29 + ((v33 * v33) + (v32 * v32));
      v30 -= 4;
    }

    while (v30);
    v5 = v29;
  }

  v34 = sqrt(v5 * v24);
  v38 = 1.0 - v34;
  v36 = 0.0;
  v37 = 0;
  (*(***(a1 + 176) + 16))(**(a1 + 176), &v38, &v36, &v37);
  return log(v36 / (1.0 - v36));
}

void VADGenUtils::TwoPoleBandpassCoeff<double>(double *a1, double *a2, double *a3, double a4)
{
  v7 = a4;
  v8 = 0;
  v9 = a4 * 0.5;
  v21 = a4 + -0.0001;
  v22 = a4 + 0.0001;
  do
  {
    v10 = (v7 + v9) * 0.5;
    v11 = 1.0 / ((v10 + 1.0) * (v10 + 1.0));
    v12 = v10 * v11;
    v13 = (v10 * v10 + -1.0) * -2.0 * v11;
    v14 = -((v10 + -1.0) * (v10 + -1.0)) * v11;
    v15 = VADGenUtils::priv_TwopoleBandpass_Evalmagresp<double>(v22, v13, v14, v10 * v11);
    v16 = v15 - VADGenUtils::priv_TwopoleBandpass_Evalmagresp<double>(v21, v13, v14, v12);
    v17 = v16 == 0.0;
    v18 = v16 <= 0.0;
    if (v16 < 0.0)
    {
      v19 = (v7 + v9) * 0.5;
    }

    else
    {
      v19 = v9;
    }

    if (v18)
    {
      v9 = v19;
    }

    else
    {
      v7 = (v7 + v9) * 0.5;
    }

    if (v17)
    {
      break;
    }
  }

  while (v8++ < 0x31);
  *a3 = v12;
  *a1 = v13;
  *a2 = v14;
}

double VADGenUtils::priv_TwopoleBandpass_Evalmagresp<double>(double a1, double a2, double a3, double a4)
{
  v7 = a1 + a1;
  v8 = a1 + a1 + a1;
  v9 = __sincos_stret(a1);
  v10 = __sincos_stret(v7);
  v11 = __sincos_stret(v8);
  return sqrt(((v10.__sinval - v9.__sinval + v11.__sinval) * (v10.__sinval - v9.__sinval + v11.__sinval) + (v9.__cosval + 1.0 - v10.__cosval - v11.__cosval) * (v9.__cosval + 1.0 - v10.__cosval - v11.__cosval)) / ((v10.__sinval * a3 + a2 * v9.__sinval) * (v10.__sinval * a3 + a2 * v9.__sinval) + (1.0 - a2 * v9.__cosval - a3 * v10.__cosval) * (1.0 - a2 * v9.__cosval - a3 * v10.__cosval))) * a4;
}

uint64_t AULittleLateNightMode::SupportedNumChannels(AULittleLateNightMode *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULittleLateNightMode::SupportedNumChannels(AUChannelInfo const**)::kSupportedNumChannels;
  }

  return 32;
}

double AULittleLateNightMode::GetTailTime(AULittleLateNightMode *this)
{
  v1 = *(this + 74);
  if (v1 == *(this + 75))
  {
    return 0.0;
  }

  v3 = 0.0;
  while (1)
  {
    outData = 0.0;
    ioDataSize = 8;
    Property = AudioUnitGetProperty(*v1, 0x14u, 0, 0, &outData, &ioDataSize);
    if (Property)
    {
      break;
    }

    v3 = v3 + outData;
    if (++v1 == *(this + 75))
    {
      return v3;
    }
  }

  return Property;
}

double AULittleLateNightMode::GetLatency(AULittleLateNightMode *this)
{
  v1 = *(this + 74);
  if (v1 == *(this + 75))
  {
    return 0.0;
  }

  v3 = 0.0;
  while (1)
  {
    outData = 0.0;
    ioDataSize = 8;
    Property = AudioUnitGetProperty(*v1, 0xCu, 0, 0, &outData, &ioDataSize);
    if (Property)
    {
      break;
    }

    v3 = v3 + outData;
    if (++v1 == *(this + 75))
    {
      return v3;
    }
  }

  return Property;
}

uint64_t AULittleLateNightMode::CopyClumpName(AULittleLateNightMode *this, int a2, unsigned int a3, unsigned int a4, const __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if (!a3)
  {
    return 4294956428;
  }

  v6 = *(this + 74);
  if (a3 > ((*(this + 75) - v6) >> 3))
  {
    return 4294956428;
  }

  Component = AudioComponentInstanceGetComponent(*(v6 + 8 * (a3 - 1)));
  AudioComponentCopyName(Component, a5);
  return 0;
}

uint64_t AULittleLateNightMode::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (*(this + 155))
  {
    v4 = 0;
    do
    {
      Parameter = ausdk::AUEffectBase::GetParameter(this, v4);
      (*(*this + 19))(this, v4, 0, 0, 0, Parameter);
      v4 = (v4 + 1);
    }

    while (v4 < *(this + 155));
  }

  *(this + 616) = 1;
  return v3;
}

float ausdk::AUEffectBase::GetParameter(ausdk::AUEffectBase *this, unsigned int a2)
{
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0 || (ausdk::AUElement::GetParameterOrError(&v6, v3, a2), (v6 & 0x100000000) == 0))
  {
    abort();
  }

  return *&v6;
}

uint64_t AULittleLateNightMode::GetParameterInfo(AULittleLateNightMode *this, AudioUnitScope a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  ioDataSize = 104;
  if (a3 > 1)
  {
    inElement = 0;
    v13 = 0;
    v11 = AULittleLateNightMode::audioUnitForParameterID(this, a3 - 2, &v13, &inElement);
    if (!v11)
    {
      return 4294956421;
    }

    result = AudioUnitGetProperty(v11, 4u, a2, inElement, buffer, &ioDataSize);
    buffer->clumpID = v13 + 1;
    p_flags = &buffer->flags;
  }

  else
  {
    v5 = &kAUHostParameters + 104 * a3;
    *&buffer->clumpID = *(v5 + 4);
    *&buffer->name[48] = *(v5 + 3);
    *&buffer->unit = *(v5 + 5);
    *buffer->name = *v5;
    *&buffer->name[16] = *(v5 + 1);
    *&buffer->name[32] = *(v5 + 2);
    v6 = *(v5 + 12);
    *&buffer->flags = v6;
    p_flags = &buffer->flags;
    v8 = *(v5 + 9);
    buffer->cfNameString = v8;
    buffer->flags = v6 | 0x8000010;
    CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->clumpID = 0;
  }

  *p_flags |= 0x100000u;
  return result;
}

OpaqueAudioComponentInstance *AULittleLateNightMode::audioUnitForParameterID(AULittleLateNightMode *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  *a3 = 0;
  v4 = *(this + 74);
  if (v4 == *(this + 75))
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    *a4 = a2 - v9;
    v10 = *v4;
    outDataSize = 0;
    AudioUnitGetPropertyInfo(v10, 3u, 0, 0, &outDataSize, 0);
    v9 += outDataSize >> 2;
    if (v9 > a2)
    {
      break;
    }

    ++*a3;
    if (++v4 == *(this + 75))
    {
      return 0;
    }
  }

  return *v4;
}

uint64_t AULittleLateNightMode::ProcessBufferLists(AULittleLateNightMode *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *ioData, UInt32 a5)
{
  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  v29 = v5;
  v30 = v6;
  if (*(this + 17) != 1)
  {
    return 4294956421;
  }

  v11 = *(this + 156);
  if (v11)
  {
    v12 = 0;
    p_mData = &ioData->mBuffers[0].mData;
    v14 = &a3->mBuffers[0].mData;
    do
    {
      if (*v14 != *p_mData)
      {
        DspLib::copy(*v14, a5, *p_mData);
        v11 = *(this + 156);
      }

      ++v12;
      p_mData += 2;
      v14 += 2;
    }

    while (v12 < v11);
    if (*(this + 552))
    {
      return 0;
    }

    v15 = *(this + 18);
    *&inTimeStamp.mSampleTime = *(this + 17);
    *&inTimeStamp.mRateScalar = v15;
    v16 = *(this + 20);
    *&inTimeStamp.mSMPTETime.mSubframes = *(this + 19);
    *&inTimeStamp.mSMPTETime.mHours = v16;
    ioActionFlags = 512;
    if (v11)
    {
      v17 = 0;
      v18 = &ioData->mBuffers[0].mData;
      do
      {
        v19 = *v18;
        v18 += 2;
        DspLib::multiply(v19, a5, *(this + 157));
        ++v17;
        v11 = *(this + 156);
      }

      while (v17 < v11);
    }
  }

  else
  {
    if (*(this + 552))
    {
      return 0;
    }

    LODWORD(v11) = 0;
    v20 = *(this + 18);
    *&inTimeStamp.mSampleTime = *(this + 17);
    *&inTimeStamp.mRateScalar = v20;
    v21 = *(this + 20);
    *&inTimeStamp.mSMPTETime.mSubframes = *(this + 19);
    *&inTimeStamp.mSMPTETime.mHours = v21;
    ioActionFlags = 512;
  }

  v22 = *(this + 74);
  v23 = *(this + 75);
  if (v22 == v23)
  {
LABEL_21:
    if (v11)
    {
      v24 = 0;
      v25 = &ioData->mBuffers[0].mData;
      do
      {
        v26 = *v25;
        v25 += 2;
        DspLib::multiply(v26, a5, *(this + 158));
        ++v24;
      }

      while (v24 < *(this + 156));
    }

    return 0;
  }

  while (1)
  {
    result = AudioUnitProcess(*v22, &ioActionFlags, &inTimeStamp, a5, ioData);
    if (result)
    {
      return result;
    }

    if (++v22 == v23)
    {
      LODWORD(v11) = *(this + 156);
      goto LABEL_21;
    }
  }
}

uint64_t AULittleLateNightMode::SetParameter(AULittleLateNightMode *this, unsigned int a2, unsigned int a3, unsigned int a4, AudioUnitParameterValue a5)
{
  if (a2 > 1)
  {
    *inID = 0;
    v11 = AULittleLateNightMode::audioUnitForParameterID(this, a2 - 2, &inID[1], inID);
    if (!v11)
    {
      return 4294956418;
    }

    AudioUnitSetParameter(v11, inID[0], 0, 0, a5, 0);
  }

  else
  {
    v10 = DspLib::dB2Amp(this, a5);
    if (a2)
    {
      *(this + 158) = v10;
    }

    else
    {
      *(this + 157) = v10;
    }
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

uint64_t AULittleLateNightMode::SetProperty(AULittleLateNightMode *this, const __CFString *a2, int a3, AudioUnitElement a4, _DWORD *a5, UInt32 a6)
{
  if (!a3)
  {
    if (a2 == 6625)
    {
      AudioUnitWithSubType = AULittleLateNightMode::findAudioUnitWithSubType(this, a2);
      if (AudioUnitWithSubType)
      {
        AudioUnitSetProperty(AudioUnitWithSubType, 0x19E1u, 0, a4, a5, a6);
      }
    }

    else
    {
      if (a2 != 1635022431)
      {
        a3 = 0;
        goto LABEL_2;
      }

      *(this + 636) = *a5 != 0;
    }

    return 0;
  }

LABEL_2:

  return ausdk::AUEffectBase::SetProperty(this, a2, a3, a4, a5, a6);
}

AudioComponentInstance AULittleLateNightMode::findAudioUnitWithSubType(AULittleLateNightMode *this, const __CFString *a2)
{
  v3 = convertCFStringToOSType(@"'mozs'");
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 74);
  if (v4 == *(this + 75))
  {
    return 0;
  }

  v5 = v3;
  while (1)
  {
    Component = AudioComponentInstanceGetComponent(*v4);
    AudioComponentGetDescription(Component, &outDesc);
    if (v5 == outDesc.componentSubType)
    {
      break;
    }

    if (++v4 == *(this + 75))
    {
      return 0;
    }
  }

  return *v4;
}

uint64_t convertCFStringToOSType(const __CFString *a1)
{
  if (!a1 || CFStringGetLength(a1) < 6)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = 24;
  for (i = 1; i != 5; ++i)
  {
    v2 = (CFStringGetCharacterAtIndex(a1, i) << v3) + v2;
    v3 -= 8;
  }

  return v2;
}

uint64_t AULittleLateNightMode::GetProperty(AULittleLateNightMode *this, const __CFString *a2, int a3, AudioUnitElement a4, void *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  v13 = v5;
  v14 = v6;
  result = 4294956417;
  if (a2 <= 6619)
  {
    if (a2 == 21)
    {
      result = 0;
      v10 = *(this + 552);
    }

    else
    {
      if (a2 != 29)
      {
        return result;
      }

      result = 0;
      v10 = *(this + 554);
    }

    goto LABEL_15;
  }

  if (a2 == 6620)
  {
    result = 0;
    *a5 = this + 592;
    return result;
  }

  if (a2 != 6625)
  {
    if (a2 != 1635022431)
    {
      return result;
    }

    result = 0;
    v10 = *(this + 636);
LABEL_15:
    *a5 = v10;
    return result;
  }

  result = AULittleLateNightMode::findAudioUnitWithSubType(this, a2);
  if (result)
  {
    ioDataSize = 4;
    AudioUnitGetProperty(result, 0x19E1u, 0, a4, a5, &ioDataSize);
    return 0;
  }

  return result;
}

uint64_t AULittleLateNightMode::GetPropertyInfo(AULittleLateNightMode *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v7 = 4;
  v8 = 1;
  result = 4294956417;
  if (a2 > 6619)
  {
    if (a2 != 1635022431 && a2 != 6625)
    {
      if (a2 != 6620)
      {
        return result;
      }

      v8 = 0;
      v7 = 8;
    }

    goto LABEL_10;
  }

  if (a2 == 21 || a2 == 29)
  {
LABEL_10:
    result = 0;
    *a6 = v8;
    *a5 = v7;
  }

  return result;
}

uint64_t AULittleLateNightMode::Reset(AULittleLateNightMode *this)
{
  v2 = *(this + 74);
  for (i = *(this + 75); v2 != i && !AudioUnitReset(*v2, 0, 0); i = *(this + 75))
  {
    ++v2;
  }

  v4 = *(this + 66);
  v5 = *(this + 67);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 16))(*v4);
    }

    ++v4;
  }

  return 0;
}

uint64_t AULittleLateNightMode::Cleanup(uint64_t this)
{
  v1 = *(this + 592);
  v2 = *(this + 600);
  if (v1 != v2)
  {
    v3 = v1 + 8;
    do
    {
      this = AudioUnitUninitialize(*(v3 - 8));
      if (this)
      {
        v4 = 1;
      }

      else
      {
        v4 = v3 == v2;
      }

      v3 += 8;
    }

    while (!v4);
  }

  return this;
}

uint64_t AULittleLateNightMode::Initialize(AULittleLateNightMode *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_23;
  }

  v3 = *(Element + 108);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_23;
  }

  if (v3 << 16 != *(v4 + 108) << 16)
  {
    return 4294956428;
  }

  *(this + 156) = v3;
  v5 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v5 || (v6 = *(v5 + 80), (v7 = ausdk::AUScope::GetElement((this + 80), 0)) == 0))
  {
LABEL_23:
    ausdk::Throw(0xFFFFD583);
  }

  if (v6 != *(v7 + 80))
  {
    return 4294956428;
  }

  if ((*(this + 616) & 1) == 0)
  {
    v10 = presetCreateForNumberOfChannels(*(this + 156), *(this + 636));
    v8 = (*(*this + 288))(this, v10);
    CFRelease(v10);
    if (v8)
    {
      return v8;
    }
  }

  for (i = *(this + 74); i != *(this + 75); ++i)
  {
    v12 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = *(v12 + 96);
    inData[0] = *(v12 + 80);
    inData[1] = v13;
    v20 = *(v12 + 112);
    v14 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = *(v14 + 96);
    v17[0] = *(v14 + 80);
    v17[1] = v15;
    v18 = *(v14 + 112);
    v16 = *(this + 84);
    if (AudioUnitSetProperty(*i, 8u, 1u, 0, inData, 0x28u) || AudioUnitSetProperty(*i, 8u, 2u, 0, v17, 0x28u) || AudioUnitSetProperty(*i, 0xEu, 0, 0, &v16, 4u) || AudioUnitInitialize(*i))
    {
      break;
    }
  }

  return ausdk::AUEffectBase::Initialize(this);
}

CFPropertyListRef presetCreateForNumberOfChannels(unsigned int a1, int a2)
{
  v2 = MAC_stereo_Mitch_2017_05_22_aupreset;
  if (a2)
  {
    v2 = &ATV_stereo_2017_05_22_aupreset;
  }

  if (a1 <= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &ATV_MAC_surround_2017_05_22_aupreset;
  }

  if (a1 <= 2)
  {
    v4 = 1013;
  }

  else
  {
    v4 = 1019;
  }

  v5 = CFDataCreate(0, v3, v4);
  v6 = CFPropertyListCreateWithData(0, v5, 0, 0, 0);
  CFRelease(v5);
  return v6;
}

void AULittleLateNightMode::~AULittleLateNightMode(AULittleLateNightMode *this)
{
  *this = &unk_1F591BDA8;
  v2 = (this + 592);
  std::vector<std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F593A7A8;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v2);
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591BDA8;
  v2 = (this + 592);
  std::vector<std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F593A7A8;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v2);

  ausdk::AUBase::~AUBase(this);
}

void std::vector<std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

OpaqueAudioComponentInstance *std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](OpaqueAudioComponentInstance **a1, OpaqueAudioComponentInstance *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return AudioComponentInstanceDispose(result);
  }

  return result;
}

void ausdk::AUEffectBase::~AUEffectBase(ausdk::AUEffectBase *this)
{
  *this = &unk_1F593A7A8;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v2);

  ausdk::AUBase::~AUBase(this);
}

{
  *this = &unk_1F593A7A8;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v2);
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593A7A8;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v2);

  ausdk::AUBase::~AUBase(this);
}

float lmsfilt_v3::preemphasisFilter(lmsfilt_v3 *this, const float *a2, float *a3, float *a4, float *a5)
{
  v7 = a2;
  v11 = -0.9;
  v9 = 4 * a2 - 4;
  memcpy(a4 + 1, this, v9);
  MEMORY[0x1E12BE8F0](a4, 1, &v11, this, 1, a4, 1, v7);
  *a4 = *this + (v11 * *a3);
  result = *(this + v9);
  *a3 = result;
  return result;
}

void lmsfilt_v3::initLmsFilter(int a1, int a2, int a3, uint64_t a4, float ***a5)
{
  __A = 0.0;
  v9 = *(a4 + 16);
  v10 = *(a4 + 44);
  v11 = malloc_type_malloc(0x58uLL, 0x7661C905uLL);
  if (!v11 || ((v11[10] = 0, *(v11 + 3) = 0u, *(v11 + 4) = 0u, *(v11 + 1) = 0u, *(v11 + 2) = 0u, *v11 = 0u, *a5 = v11, v12 = v10 * v9, *(v11 + 8) = v10, *(v11 + 9) = v10 * v9, v13 = 4 * v10 * v9, v14 = malloc_type_malloc(v13, 0x70C872AuLL), v13) ? (v15 = v14 == 0) : (v15 = 0), v15 || ((v16 = v14, bzero(v14, v13), **a5 = v16, v17 = malloc_type_malloc(v13, 0xF473F716uLL), v13) ? (v18 = v17 == 0) : (v18 = 0), v18 || ((v19 = v17, bzero(v17, v13), (*a5)[1] = v19, v20 = malloc_type_malloc(v13, 0x175A12DDuLL), v13) ? (v21 = v20 == 0) : (v21 = 0), v21 || (v22 = v20, bzero(v20, v13), (*a5)[2] = v22, v23 = malloc_type_malloc(v13, 0x7CF94522uLL), v24 = v23, v13) && !v23 || (bzero(v23, v13), (*a5)[3] = v24, v25 = malloc_type_malloc(v13, 0xC145C0B2uLL), v26 = v25, v13) && !v25))))
  {
    exception = __cxa_allocate_exception(8uLL);
    v32 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v25, v13);
  (*a5)[6] = v26;
  vDSP_vfill(&__A, **a5, 1, v12);
  vDSP_vfill(&__A, (*a5)[1], 1, v12);
  vDSP_vfill(&__A, (*a5)[2], 1, v12);
  vDSP_vfill(&__A, (*a5)[3], 1, v12);
  vDSP_vfill(&__A, (*a5)[6], 1, v12);
  v27 = *a5;
  *(v27 + 10) = (1.0 - *(a4 + 88)) + (1.0 - *(a4 + 88));
  *(v27 + 11) = 1;
  v27[7] = 0;
  *(v27 + 16) = 0;
  *(v27 + 17) = a1;
  *(v27 + 18) = 0;
  *(v27 + 19) = v10 - 1;
  v28 = a3 / v9;
  if (a3 / v9 >= v10)
  {
    v28 = v10;
  }

  v29 = (a3 - a2) / v9;
  *(v27 + 20) = v29;
  *(v27 + 21) = v28;
  if (v28 - v29 <= 1)
  {
    if (v10 == 4)
    {
      v30 = -1;
    }

    else
    {
      v30 = 0;
    }

    if (v10 > 4)
    {
      v30 = -2;
    }

    *(v27 + 20) = v28 + v30;
  }
}

void lmsfilt_v3::removeLmsFilter(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        free(*v2);
        *v2 = 0;
        v2 = *a1;
      }

      v3 = *(v2 + 8);
      if (v3)
      {
        free(v3);
        *(v2 + 8) = 0;
        v2 = *a1;
      }

      v4 = *(v2 + 16);
      if (v4)
      {
        free(v4);
        *(v2 + 16) = 0;
        v2 = *a1;
      }

      v5 = *(v2 + 24);
      if (v5)
      {
        free(v5);
        *(v2 + 24) = 0;
        v2 = *a1;
      }

      v6 = *(v2 + 48);
      if (!v6 || (free(v6), *(v2 + 48) = 0, (v2 = *a1) != 0))
      {
        free(v2);
        *a1 = 0;
      }
    }
  }
}

void lmsfilt_v3::runLmsFilter_v3(DSPSplitComplex *this, DSPSplitComplex *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, float *a7, float *a8, float *a9, int *a10, int a11, int a12)
{
  v12 = a8;
  v18 = a2;
  v19 = this;
  __D = *this;
  __N = a2;
  vDSP_vclr(__D.realp, 1, a2);
  vDSP_vclr(v19->imagp, 1, __N);
  v21 = 0.0;
  v22 = 0.0;
  if (v12 <= a9)
  {
    v40 = a4;
    v41 = v19;
    v37 = v12 * v18;
    v38 = v12;
    v23 = (a4 + 4 * v37);
    v24 = v12;
    v25 = 4 * __N;
    v26 = (a3 + 4 * v37);
    v27 = a7;
    v36 = a9 - v24;
    v28 = a9 - v24 + 1;
    v39 = v27;
    v29 = &v27[v24];
    do
    {
      v30 = *v29++;
      __A.realp = v26;
      __A.imagp = v23;
      __B.realp = (a5 + 4 * v30 * v18);
      __B.imagp = &a6[v30 * v18];
      vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
      v23 = (v23 + v25);
      v26 = (v26 + v25);
      --v28;
    }

    while (v28);
    v31 = 4 * v37;
    v32 = v36 + 1;
    v22 = 0.0;
    v21 = 0.0;
    v33 = &v39[v38];
    v19 = v41;
    do
    {
      v34 = *v33++;
      v21 = v21 + (*(a3 + v31) * *(a5 + 4 * v34 * v18));
      v22 = v22 + (*(v40 + v31) * a6[v34 * v18]);
      v31 += v25;
      --v32;
    }

    while (v32);
  }

  imagp = v19->imagp;
  *v19->realp = v21;
  *imagp = v22;
}

void *std::unique_ptr<NoiseSuppression::Noise::LPCPitch>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[18];
    if (v3)
    {
      v2[19] = v3;
      operator delete(v3);
    }

    v4 = v2[15];
    if (v4)
    {
      v2[16] = v4;
      operator delete(v4);
    }

    v5 = v2[12];
    if (v5)
    {
      v2[13] = v5;
      operator delete(v5);
    }

    v6 = v2[9];
    if (v6)
    {
      v2[10] = v6;
      operator delete(v6);
    }

    v7 = v2[8];
    v2[8] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v2[7];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void NoiseSuppression::Noise::VPv3::VPv3(NoiseSuppression::Noise::VPv3 *this, float a2, int a3, float a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 7) = 981668463;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = &unk_1F59216B0;
  *(this + 20) = 1025758986;
  *(this + 22) = 0;
  *(this + 92) = 0x3F0000003EAA7EFALL;
  *(this + 13) = 0x4140000042480000;
  *(this + 28) = 0x40000000;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = a2;
  *(this + 19) = 0;
  *(this + 37) = a3;
  *(this + 20) = 0;
  *(this + 21) = 0;
  operator new();
}

void sub_1DDC39AF4(_Unwind_Exception *a1)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 20) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v7;
    operator delete(v7);
  }

  NoiseSuppression::Noise::NoiseEstimator::~NoiseEstimator(v1);
  _Unwind_Resume(a1);
}

VPTimeFreqConverter *std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100](VPTimeFreqConverter **a1, VPTimeFreqConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void NoiseSuppression::Noise::NoiseEstimator::~NoiseEstimator(NoiseSuppression::Noise::NoiseEstimator *this)
{
  *this = &unk_1F5934A90;
  v2 = *(this + 7);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void *NoiseSuppression::Noise::LPCLevinson::Process(NoiseSuppression::Noise::LPCLevinson *this, float *a2, float *a3, float *a4)
{
  if (*(this + 24) == 1)
  {
    v10[0] = 1;
    v10[2] = 1;
    v10[3] = 4 * a4;
    v11 = a2;
    v8[0] = 1;
    v8[2] = 1;
    v8[3] = 4 * a4;
    v9 = a3;
    (*(**(this + 4) + 32))(*(this + 4), a4, v10, v8);
    memcpy(*(this + 6), (*(this + 6) + 4 * *(this + 4)), 4 * *(this + 4));
    memcpy((*(this + 6) + 4 * *(this + 4)), a3, 4 * *(this + 4));
    NoiseSuppression::Noise::LPCLevinson::ProcessBlock(this, a3, *(this + 9), a4);
    v11 = *(this + 9);
    v9 = a3;
    return (*(**(this + 5) + 32))(*(this + 5), a4, v10, v8);
  }

  else
  {

    return NoiseSuppression::Noise::LPCLevinson::ProcessBlock(this, a2, a3, a4);
  }
}

void *NoiseSuppression::Noise::LPCLevinson::ProcessBlock(NoiseSuppression::Noise::LPCLevinson *this, float *a2, NoiseSuppression::Noise::LPCLevinson *a3, float *a4)
{
  MEMORY[0x1E12BE7F0]();
  NoiseSuppression::Noise::LPCLevinson::Correlation(*(this + 15), *(this + 16), this + 24);
  v8 = *(this + 24);
  v9 = (*v8 + 2.2204e-16) * 1.01;
  *v8 = v9;
  NoiseSuppression::Noise::LPCLevinson::Levinson(this + 24, this + 27, *(this + 5));
  v10 = *(this + 27);
  v11 = *(this + 18);
  v12 = *(this + 5);

  return NoiseSuppression::Noise::LPCLevinson::Filter(a3, a2, v10, v11, a4, v12);
}

void NoiseSuppression::Noise::LPCLevinson::Correlation(uint64_t a1, uint64_t a2, float **a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3[1] - *a3;
  v5 = a2 - a1;
  v6 = (a2 - a1) >> 2;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11[-v7];
  memcpy(&v11[-v7], v9, v5);
  bzero(v8 + v5, v4 - 4);
  v12 = 0;
  std::vector<float>::assign(a3, v4 >> 2, &v12, v10);
  vDSP_conv(v8, 1, v8, 1, *a3, 1, v4 >> 2, v6);
}

void NoiseSuppression::Noise::LPCLevinson::Levinson(uint64_t *a1, void *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v8 = &v34 - v7;
  v10 = **v9;
  v12 = (v11[1] - *v11) >> 2;
  HIDWORD(v34) = 0;
  std::vector<float>::assign(a2, v12, &v34 + 1, v6);
  bzero(v8, 4 * a3);
  if (a3 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = a3;
    v16 = *a1;
    v17 = *a2;
    v18 = (*a2 + 4);
    v19 = 4 * a3;
    do
    {
      v20 = v14++;
      v21 = *(v16 + 4 * v14);
      if (v20)
      {
        v22 = v18;
        v23 = v13;
        do
        {
          v24 = *v22++;
          v21 = v21 - (v24 * *(v16 + v23));
          v23 -= 4;
        }

        while (v23);
        v25 = v21 / v10;
        *(v17 + 4 * v14) = v25;
        v26 = -v25;
        v27 = 4;
        v28 = v13;
        do
        {
          *(v17 + v27) = *&v8[v27 - 4] + (v26 * *&v8[v28 - 4]);
          v27 += 4;
          v28 -= 4;
        }

        while (v28);
      }

      else
      {
        v25 = v21 / v10;
        *(v17 + 4 * v14) = v25;
        v26 = -v25;
      }

      v10 = v10 * ((v26 * v25) + 1.0);
      memcpy(v8, v18, v19);
      v13 += 4;
    }

    while (v14 != v15);
  }

  v29 = *a2;
  v30 = a2[1];
  *v29 = 1065353216;
  v31 = (v30 - v29) >> 2;
  if (v31 >= 2)
  {
    v32 = v31 - 1;
    v33 = (v29 + 1);
    do
    {
      *v33 = -*v33;
      ++v33;
      --v32;
    }

    while (v32);
  }
}

void *NoiseSuppression::Noise::LPCLevinson::Filter(NoiseSuppression::Noise::LPCLevinson *this, float *a2, const float *a3, float *a4, float *a5, unsigned int a6)
{
  v7 = a5;
  v16[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v13 = (v16 - v12);
  memcpy(v16 - v12, v14, 4 * a6);
  memcpy(&v13[a6], a2, 4 * v7);
  vDSP_conv(v13, 1, &a3[a6], -1, this, 1, v7, a6 + 1);
  return memcpy(a4, &v13[v7], 4 * a6);
}

void NoiseSuppression::Noise::LPCLevinson::~LPCLevinson(NoiseSuppression::Noise::LPCLevinson *this)
{
  NoiseSuppression::Noise::LPCLevinson::~LPCLevinson(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591C010;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

uint64_t NoiseSuppression::Noise::LPCLevinson::Init(NoiseSuppression::Noise::LPCLevinson *this)
{
  v87 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0;
  v79.mSampleRate = *(this + 3);
  *&v79.mFormatID = xmmword_1DE09BD50;
  *&v79.mBytesPerFrame = xmmword_1DE09BD60;
  v78.mSampleRate = v79.mSampleRate;
  *&v78.mFormatID = xmmword_1DE09BD50;
  *&v78.mBytesPerFrame = xmmword_1DE09BD60;
  v2 = NewIIRFilter(&v79, &v78);
  v3 = *(this + 4);
  *(this + 4) = v2;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = NewIIRFilter(&v79, &v78);
  v5 = *(this + 5);
  *(this + 5) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  if (!v6 || !*(this + 5))
  {
    return 4294956428;
  }

  v84[0] = 0;
  v84[1] = 0;
  v85 = xmmword_1DE09BD70;
  v86 = 0;
  v80 = xmmword_1DE09BD80;
  v82 = 0;
  v83 = 0;
  v81 = 0x3FF0000000000000;
  (*(*v6 + 16))(v6, 1, v84);
  (*(**(this + 5) + 16))(*(this + 5), 1, &v80);
  std::vector<float>::resize(this + 9, *(this + 4));
  v7 = *(this + 4);
  v77 = 0;
  std::vector<float>::assign(this + 9, v7, &v77, v8);
  std::vector<float>::resize(this + 24, (*(this + 5) + 1));
  std::vector<float>::resize(this + 27, (*(this + 5) + 1));
  std::vector<float>::resize(this + 6, (2 * *(this + 4)));
  v9 = (2 * *(this + 4));
  v77 = 0;
  std::vector<float>::assign(this + 6, v9, &v77, v10);
  std::vector<float>::resize(this + 12, (2 * *(this + 4)));
  std::vector<float>::resize(this + 15, (*(this + 7) - *(this + 6)) >> 2);
  std::vector<float>::resize(this + 18, (*(this + 5) + 1));
  v11 = (*(this + 19) - *(this + 18)) >> 2;
  v77 = 0;
  std::vector<float>::assign(this + 18, v11, &v77, v12);
  v14 = *(this + 12);
  v13 = *(this + 13);
  v15 = v13 - v14;
  if (v13 != v14)
  {
    v16 = 0;
    v17 = v15 >> 2;
    v18 = vdupq_n_s64(v17 - 1);
    v19 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v56 = vdupq_lane_s64(COERCE__INT64(((v17 * 2.0) + -1.0)), 0);
    v57 = vdupq_n_s64(v17);
    v54 = vdupq_n_s32(0xBEEB851E);
    v55 = vdupq_n_s64(0x401921FB54442D18uLL);
    v53 = vdupq_n_s32(0x3F0A3D71u);
    v20 = xmmword_1DE095160;
    v52 = vdupq_n_s64(4uLL);
    v21 = (v14 + 4);
    v22 = xmmword_1DE095150;
    v58 = v18;
    do
    {
      v66 = v22;
      v68 = v20;
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      v24 = v16 + 1;
      v25.i64[0] = v16;
      v25.i64[1] = v16 + 1;
      v62 = vuzp1_s16(v23, v16).u8[0];
      v64 = vorrq_s8(vdupq_n_s64(v16), xmmword_1DE095150);
      __y = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(vaddq_s64(v64, v57)), v55), v56));
      *v25.i8 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(vaddq_s64(v25, v57)), v55), v56));
      v60 = *v25.i32;
      v72 = cosf(*&v25.i32[1]);
      v26.f32[0] = cosf(v60);
      v26.f32[1] = v72;
      v73 = v26;
      v27 = cosf(__y.f32[0]);
      v28 = v73;
      v28.f32[2] = v27;
      v74 = v28;
      v29 = cosf(__y.f32[1]);
      v30 = v74;
      v30.f32[3] = v29;
      v31 = vmlaq_f32(v53, v54, v30);
      if (v62)
      {
        *(v21 - 1) = v31.i32[0];
      }

      if (vuzp1_s16(v23, *&v31).i8[2])
      {
        *v21 = v31.i32[1];
      }

      v18 = v58;
      if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v58, *&v66))).i32[1])
      {
        *(v14 + 4 * v64.i64[0]) = v31.i32[2];
        *(v14 + 4 * v64.i64[1]) = v31.i32[3];
      }

      v22 = vaddq_s64(v66, v52);
      v20 = vaddq_s64(v68, v52);
      v21 += 4;
      v16 = v24 + 3;
    }

    while (v24 + 3 != v19);
  }

  std::vector<float>::resize(this + 21, (*(this + 28) - *(this + 27)) >> 2);
  v32 = *(this + 21);
  v33 = *(this + 22) - v32;
  if (v33)
  {
    v34 = 0;
    v35 = v33 >> 2;
    if (v35 <= 1)
    {
      v35 = 1;
    }

    v36 = vdupq_n_s64(v35 - 1);
    v37 = (v35 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = xmmword_1DE095150;
    v39 = xmmword_1DE095160;
    v40 = (v32 + 8);
    v59 = vdupq_n_s64(4uLL);
    v61 = v36;
    do
    {
      v67 = v39;
      v69 = v38;
      v41 = vcgeq_u64(v36, v39);
      v42 = vmovn_s64(v41);
      v65 = vuzp1_s16(v42, *v41.i8).u8[0];
      *v41.i8 = vorr_s8(vdup_n_s32(v34), 0x300000002);
      v43.i64[0] = v41.u32[0];
      v43.i64[1] = v41.u32[1];
      __ya = vcvtq_f64_u64(v43);
      v75 = pow(0.949999988, v34);
      v44 = pow(0.949999988, (v34 + 1));
      *v45.i64 = v75;
      *&v45.i64[1] = v44;
      v76 = v45;
      v63 = pow(0.949999988, __ya.f64[1]);
      v46 = pow(0.949999988, __ya.f64[0]);
      if (v65)
      {
        v47 = *v76.i64;
        *(v40 - 2) = v47;
      }

      if (vuzp1_s16(v42, *&v46).i8[2])
      {
        v48 = *&v76.i64[1];
        *(v40 - 1) = v48;
      }

      v36 = v61;
      if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v61, *&v69))).i32[1])
      {
        v49 = v46;
        *v40 = v49;
        v50 = v63;
        v40[1] = v50;
      }

      v34 += 4;
      v38 = vaddq_s64(v69, v59);
      v39 = vaddq_s64(v67, v59);
      v40 += 4;
    }

    while (v37 != v34);
  }

  result = 0;
  *(this + 8) = 1;
  return result;
}

uint64_t NoiseSuppression::Noise::LPCore::TimeBuffer2PowerSpectrum(NoiseSuppression::Noise::LPCore *this, float *a2, float *a3, VPTimeFreqConverter *a4, VPTimeFreqConverter *a5, float *a6, float *a7)
{
  v7 = a3;
  v11.realp = a5;
  v11.imagp = a6;
  VPTimeFreqConverter::Analyze(a4, this, &v11);
  v9 = *v11.realp;
  vDSP_zvmags(&v11, 1, a2, 1, v7);
  *a2 = v9 * v9;
  {
    NoiseSuppression::Noise::LPCore::TimeBuffer2PowerSpectrum(float *,float *,unsigned int,VPTimeFreqConverter *,float *,float *)::scaleup = 1317011456;
  }

  return MEMORY[0x1E12BE940](a2, 1, &NoiseSuppression::Noise::LPCore::TimeBuffer2PowerSpectrum(float *,float *,unsigned int,VPTimeFreqConverter *,float *,float *)::scaleup, a2, 1, v7);
}

uint64_t NoiseSuppression::Noise::LPCore::PostProcessEstimate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v10 = a1 + 156;
  v21 = 1.0 - *(a1 + 156);
  v11 = a5;
  MEMORY[0x1E12BE940](*(a1 + 368), 1, a1 + 156, *(a1 + 440), 1, a5);
  MEMORY[0x1E12BE940](a3, 1, &v21, *(v10 + 308), 1, v11);
  result = MEMORY[0x1E12BE5D0](*(v10 + 308), 1, *(v10 + 284), 1, *(v10 + 212), 1, v11);
  if (*(v10 - 32) > *(v10 - 60) && a4[1] == v11 && *(v10 - 44) > *(v10 - 100) && a5 != 0)
  {
    v16 = 0;
    v17 = *a4;
    do
    {
      if (((*(v17 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) != 0 && *(*(a1 + 416) + 4 * v16) <= *(a1 + 48))
      {
        v18 = *(a3 + 4 * v16);
      }

      else
      {
        v18 = *(*(a1 + 368) + 4 * v16);
        *(a3 + 4 * v16) = v18;
      }

      v19 = *(a2 + 4 * v16);
      if (v19 < v18)
      {
        v20 = v19 * 0.95 + v18 * 0.05;
        *(a3 + 4 * v16) = v20;
      }

      ++v16;
    }

    while (v11 != v16);
  }

  return result;
}

uint64_t NoiseSuppression::Noise::LPCore::WarpNoise(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (*result == 1)
  {
    v4 = *(result + 56);
    v5 = *(result + 172) <= 0.9 || *(result + 108) <= v4;
    v6 = v5 || *(result + 112) <= v4;
    v7 = v6 || *(result + 124) <= *(result + 96);
    v8 = v7 || *(result + 5) == 0;
    if (!v8 && a3 != 0)
    {
      v10 = 0;
      v11 = *(result + 416);
      do
      {
        if (*(v11 + 4 * v10) > 1.7783 || (*(a4 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v10)) == 0)
        {
          *(a2 + 4 * v10) = *(result + 92) * *(a2 + 4 * v10);
        }

        ++v10;
      }

      while (a3 != v10);
    }
  }

  return result;
}

void fb::ComplexMat::transposed(fb::ComplexMat *this, const float *a2)
{
  v3 = *a2;
  v2 = *(a2 + 1);
  *this = v2;
  *(this + 1) = v3;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  if (v3 * v2 >= 26)
  {
    __assert_rtn("ComplexMat", "fbComplexMat.h", 41, "mNumRows * mNumCols <= mCapacity");
  }

  vDSP_mtrans(a2 + 2, 2, this + 2, 2, v2, v3);
  v7 = *a2;
  v6 = *(a2 + 1);

  vDSP_mtrans(a2 + 3, 2, this + 3, 2, v6, v7);
}

uint64_t fb::ComplexMat::pseudoInverse(fb::ComplexMat *this, const fb::ComplexMat *a2, const fb::ComplexMat *a3)
{
  fb::operator*(v7, a2, a3);
  fb::ComplexMat::inversed(v6, v7);
  return fb::operator*(this, a3, v6);
}

_DWORD *fb::ComplexMat::stabilize(_DWORD *this, float a2)
{
  LODWORD(v2) = *this;
  v3 = this[1];
  if (v3 >= *this)
  {
    v2 = v2;
  }

  else
  {
    v2 = v3;
  }

  if (v2 >= 1)
  {
    v4 = 0;
    v5 = v3 + 1;
    do
    {
      if (v4 >= 0x19)
      {
        std::__throw_out_of_range[abi:ne200100]("array::at");
      }

      v6 = &this[2 * v4 + 2];
      if (*v6 < 0.000000001)
      {
        *v6 = 814313567;
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t fb::operator*(uint64_t a1, const float *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  if (v3 != *a3)
  {
    __assert_rtn("operator*", "fbComplexMat.h", 157, "lhs.mNumCols == rhs.mNumRows");
  }

  v7 = *a2;
  v8 = *(a3 + 4);
  *a1 = v7;
  *(a1 + 4) = v8;
  *(a1 + 8) = 0u;
  v9 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  if (v8 * v7 >= 26)
  {
    __assert_rtn("ComplexMat", "fbComplexMat.h", 41, "mNumRows * mNumCols <= mCapacity");
  }

  vDSP_mmul(a2 + 2, 2, (a3 + 8), 2, v9, 2, v7, v8, v3);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v16 - v11);
  vDSP_mmul(a2 + 3, 2, (a3 + 12), 2, (v16 - v11), 1, v13, v14, *(a2 + 1));
  MEMORY[0x1E12BE9A0](v12, 1, v9, 2, v9, 2, *(a3 + 4) * *a2);
  vDSP_mmul(a2 + 3, 2, (a3 + 8), 2, (a1 + 12), 2, *a2, *(a3 + 4), *(a2 + 1));
  vDSP_mmul(a2 + 2, 2, (a3 + 12), 2, v12, 1, *a2, *(a3 + 4), *(a2 + 1));
  return MEMORY[0x1E12BE5D0](v12, 1, a1 + 12, 2, a1 + 12, 2, *(a3 + 4) * *a2);
}

void *fb::ComplexMat::inversed(fb::ComplexMat *this, float *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a2 != *(a2 + 1))
  {
    __assert_rtn("inversed", "fbComplexMat.h", 132, "mNumRows == mNumCols");
  }

  if (*a2 != 2)
  {
    __assert_rtn("inversed", "fbComplexMat.h", 133, "mNumRows == 2");
  }

  v4 = (a2 + 2);
  v5 = std::operator*[abi:ne200100]<float,0>(a2[2], a2[3], a2[8], a2[9]);
  v7 = *(v4 - 1);
  if (v7 >= 0x19)
  {
    goto LABEL_16;
  }

  v8 = v6;
  v9 = v5 - std::operator*[abi:ne200100]<float,0>(*&v4[2 * v7], *&v4[2 * v7 + 1], a2[4], a2[5]);
  v11 = v8 - v10;
  if (v9 == 0.0 && v11 == 0.0)
  {
    __assert_rtn("inversed", "fbComplexMat.h", 135, "det != Complexf{0.f}");
  }

  v12 = __divsc3(1.0, 0.0, v9, v11);
  v14 = *(a2 + 1) + 1;
  if (v14 >= 0x19 || (v25 = v13, v26 = __PAIR64__(LODWORD(v13), LODWORD(v12)), v24 = v12, __src[0] = std::operator*[abi:ne200100]<float,0>(v12, v13, *&v4[2 * v14], *&v4[2 * v14 + 1]), __src[1] = v15, v16 = vneg_f32(v26), v17 = v16.f32[1], v27 = v16.f32[0], __src[2] = std::operator*[abi:ne200100]<float,0>(v16.f32[0], v16.f32[1], a2[4], a2[5]), __src[3] = v18, v19 = *(a2 + 1), v19 >= 0x19))
  {
LABEL_16:
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  __src[4] = std::operator*[abi:ne200100]<float,0>(v27, v17, *&v4[2 * v19], *&v4[2 * v19 + 1]);
  __src[5] = v20;
  __src[6] = std::operator*[abi:ne200100]<float,0>(v24, v25, a2[2], a2[3]);
  __src[7] = v21;
  v22 = *a2;
  *this = *a2;
  *(this + 1) = v22;
  *(this + 8) = 0u;
  result = this + 8;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  if ((LODWORD(v22) * LODWORD(v22)) >= 0x1A)
  {
    __assert_rtn("ComplexMat", "fbComplexMat.h", 41, "mNumRows * mNumCols <= mCapacity");
  }

  if (v22 != 0.0)
  {
    return memcpy(result, __src, (8 * LODWORD(v22) * LODWORD(v22)));
  }

  return result;
}

uint64_t AULando::LRCLsRs::algoUpmixPI(vDSP_Length a1, AULando::LRCLsRs *this, float *a3, const float *a4, float *a5, float *a6, float *a7, float *a8, uint64_t a9, IR::IRProcessor **a10, unsigned int a11, BOOL a12)
{
  v41[2] = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v36 = &v34;
    v38 = a8;
    MEMORY[0x1EEE9AC00](a1);
    v18 = (&v34 - ((v17 + 15) & 0x7FFFFFFF0));
    MEMORY[0x1EEE9AC00](v19);
    v21 = (&v34 - v20);
    MEMORY[0x1EEE9AC00](v22);
    v24 = (&v34 - v23);
    MEMORY[0x1EEE9AC00](v25);
    v27 = (&v34 - v26);
    v41[0] = v18;
    v41[1] = v21;
    v28 = *a10;
    v40[0] = v29;
    v37 = v30;
    IR::IRProcessor::processMultipleInputs(v28, v40, v41, 1u, 2u, a1, 1.0, 0);
    v40[0] = v24;
    v40[1] = v27;
    v31 = a10[1];
    v39 = a3;
    IR::IRProcessor::processMultipleInputs(v31, &v39, v40, 1u, 2u, a1, 1.0, 0);
    BYTE4(v33) = 1;
    LODWORD(v33) = a1;
    return AULando::LRCLsRs::decode_PI(v18, v21, v24, v27, v37, a5, a6, a7, v38, v33, v34, v35);
  }

  else
  {
    BYTE4(a10) = 0;
    LODWORD(a10) = a1;

    return AULando::LRCLsRs::decode_PI(this, this, a3, a3, a4, a5, a6, a7, a8, a10, a11, a12);
  }
}

uint64_t AULando::LRCLsRs::decode_PI(AULando::LRCLsRs *this, const float *a2, const float *a3, const float *a4, const float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, unsigned int a11, BOOL a12)
{
  v29 = 1030544427;
  v30 = 1053884048;
  MEMORY[0x1E12BE930](this, 1, &v30, a3, 1, &v29, a5, 1, a10);
  v27 = 1053884048;
  v28 = 1030544427;
  MEMORY[0x1E12BE930](this, 1, &v28, a3, 1, &v27, a6, 1, a10);
  v25 = 1051244431;
  v26 = 1051244431;
  MEMORY[0x1E12BE930](this, 1, &v26, a3, 1, &v25, a7, 1, a10);
  if (BYTE4(a10))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -1.0;
  }

  v23 = v18 * 0.14956;
  v24 = v18 * -0.32752;
  MEMORY[0x1E12BE930](a2, 1, &v24, a4, 1, &v23, a8, 1, a10);
  v21 = v18 * 0.32752;
  v22 = v18 * -0.14956;
  return MEMORY[0x1E12BE930](a2, 1, &v22, a4, 1, &v21, a9, 1, a10);
}

void AULando::LRCLsRs::algoUpmixPISteered(uint64_t a1, float *a2, AULando::LRCLsRs *a3, const float *a4, const float *a5, float *a6, float *a7, float *a8, float a9, float a10, float a11, float *a12, unsigned __int8 a13, char a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17)
{
  v122 = a10;
  v133 = a8;
  v134 = a6;
  v135 = a7;
  v136 = a5;
  v129 = a4;
  v130 = a3;
  v199 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v19 = a2;
    v128 = a16;
    BYTE4(v111) = a13;
    LODWORD(v111) = a2;
    v132 = a12;
    AULando::LRCLsRs::decode_PI(v130, v130, v129, v129, v136, v134, v135, v133, a12, v111, v112, v113);
    v21 = 0;
    v119 = 1.0 - a9;
    v120 = a9 + 1.0;
    v126 = a15;
    v127 = a13;
    v118 = (a14 & a15);
    v124 = (a1 + 832);
    v121 = v19;
    v116 = v19;
    v117 = a17 + 240;
    v125 = &v160 + 8;
    if (a13)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = -1.0;
    }

    v145 = a1 + 840;
    v115 = 0.01;
    v114 = 0.99;
    v23 = vdup_n_s32(0x44800000u);
    v140 = a17;
    v146 = &v147 + 8;
    do
    {
      if (v121 <= v21)
      {
        __assert_rtn("algoUpmixPISteered", "AULando_LRCLsRs.cpp", 95, "N1 > 0");
      }

      v175 = 0;
      v137 = v121 - v21;
      if (v121 - v21 >= 256)
      {
        v24 = 256;
      }

      else
      {
        v24 = v121 - v21;
      }

      v174 = 0;
      v173 = 0.0;
      v123 = v21;
      LODWORD(v186) = 0;
      v25 = v24;
      vDSP_normalize(&v136[v21], 1, 0, 1, &v186, &v175 + 1, v24);
      vDSP_normalize(&v134[v123], 1, 0, 1, &v186, &v175, v25);
      vDSP_normalize(&v135[v123], 1, 0, 1, &v186, &v174 + 1, v25);
      vDSP_normalize(&v133[v123], 1, 0, 1, &v186, &v174, v25);
      vDSP_normalize(&v132[v123], 1, 0, 1, &v186, &v173, v25);
      *(&v175 + 1) = v120 * (*(&v175 + 1) * *(&v175 + 1));
      *&v175 = v120 * (*&v175 * *&v175);
      *(&v174 + 1) = v120 * (*(&v174 + 1) * *(&v174 + 1));
      *&v174 = v119 * (*&v174 * *&v174);
      v173 = v119 * (v173 * v173);
      v184[0] = *(&v175 + 1);
      LODWORD(v184[1]) = v175;
      v184[2] = *(&v174 + 1);
      LODWORD(v184[3]) = v174;
      v184[4] = v173;
      v26 = 1.0;
      if (v118)
      {
        v27 = v140;
        v28 = (*(v140 + 380) + 1) % 0x8Cu;
        *(v140 + 380) = v28;
        if (*(v117 + v28) == 1)
        {
          --*(v27 + 384);
        }

        LODWORD(v186) = 1065353216;
        vDSP_meanv(v184, 1, &v186, 5uLL);
        v29 = 0;
        v30 = 0;
        v31 = v140;
        v32 = *(v140 + 396);
        do
        {
          v30 |= (v184[v29] >= (*&v186 * flt_1DE09A318[((v32 >> v29) & 1) == 0])) << v29;
          ++v29;
        }

        while (v29 != 5);
        v33 = v32 == v30;
        *(v117 + *(v140 + 380)) = v32 != v30;
        *(v31 + 396) = v30;
        v34 = *(v31 + 384);
        if (!v33)
        {
          *(v31 + 384) = ++v34;
        }

        v35 = *(v31 + 388);
        v26 = 1.0;
        if (v34 > v35)
        {
          v36 = *(v31 + 392);
          v26 = 0.0;
          if (v34 < v36)
          {
            v26 = 1.0 - ((v34 - v35) / (v36 - v35));
          }
        }

        v37 = *(v31 + 400);
        if (v26 > v37)
        {
          v26 = (v26 * v115) + (v37 * v114);
        }

        *(v31 + 400) = v26;
      }

      v38 = 0;
      v39 = v26 * v122;
      v131 = v123;
      v40 = v137;
      do
      {
        v41 = *(&dword_1DE09E7F0 + v38);
        v42 = *(&dword_1DE09E7F0 + v38 + 4);
        v43 = v40 - v41;
        if (v43 >= v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = v43;
        }

        if (v44 < 1)
        {
          break;
        }

        v45 = v44;
        v46 = vcvts_n_f32_u32(v44, 8uLL);
        *&v160 = 0x500000005;
        *&v172 = 0;
        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v161 = 0u;
        *(&v160 + 1) = HIDWORD(v175);
        DWORD2(v163) = v175;
        DWORD2(v166) = HIDWORD(v174);
        DWORD2(v169) = v174;
        *(&v172 + 1) = LODWORD(v173);
        for (i = 8; i != 248; i += 48)
        {
          *(&v160 + i) = vmul_f32(*(&v160 + i), v23);
        }

        v48 = 0;
        v49 = v131 + v41;
        do
        {
          v50 = (&v160 + v48);
          v50[2] = powf(*(&v160 + v48 + 8), v39);
          v50[3] = 0.0;
          v48 += 48;
        }

        while (v48 != 240);
        v51 = powf(a11, v46);
        if (v51 != 0.0)
        {
          v52 = 0;
          v53 = *(a1 + 628) + 1;
          v54 = v125;
          v55 = 5;
          do
          {
            if (v52 >= 0x19)
            {
              std::__throw_out_of_range[abi:ne200100]("array::at");
            }

            v56 = *(a1 + 632 + 8 * v52) * v51;
            if (v56 < *v54)
            {
              v56 = *v54;
            }

            *v54 = v56;
            *(v54 + 1) = 0;
            v54 += 48;
            v52 += v53;
            --v55;
          }

          while (v55);
        }

        v139 = v38;
        fb::ComplexMat::stabilize(&v160, v51);
        v57 = v171;
        *(a1 + 784) = v170;
        *(a1 + 800) = v57;
        *(a1 + 816) = v172;
        v58 = v167;
        *(a1 + 720) = v166;
        *(a1 + 736) = v58;
        v59 = v169;
        *(a1 + 752) = v168;
        *(a1 + 768) = v59;
        v60 = v163;
        *(a1 + 656) = v162;
        *(a1 + 672) = v60;
        v61 = v165;
        *(a1 + 688) = v164;
        *(a1 + 704) = v61;
        v62 = v161;
        *(a1 + 624) = v160;
        *(a1 + 640) = v62;
        fb::operator*(v185, a1, &v160);
        fb::operator*(&v186, v185, a1 + 208);
        fb::ComplexMat::inversed(v185, &v186);
        fb::operator*(v176, &v160, a1 + 208);
        v63 = fb::operator*(&v147, v176, v185);
        if (v128)
        {
          v198 = 0;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v188 = xmmword_1DE09F9D0;
          v189 = unk_1DE09F9E0;
          v190 = xmmword_1DE09F9F0;
          v191 = 0u;
          v186 = xmmword_1DE09F9B0;
          v187 = unk_1DE09F9C0;
          *&v147 = 0x200000005;
          v64 = v146;
          *(v146 + 24) = 0;
          v64[10] = 0u;
          v64[11] = 0u;
          v65 = v186;
          v66 = v187;
          v67 = v189;
          v64[2] = v188;
          v64[3] = v67;
          *v64 = v65;
          v64[1] = v66;
          v68 = v190;
          v69 = v191;
          v70 = v195;
          v64[8] = v194;
          v64[9] = v70;
          v71 = v193;
          v64[6] = v192;
          v64[7] = v71;
          v64[4] = v68;
          v64[5] = v69;
        }

        v138 = &v112;
        MEMORY[0x1EEE9AC00](v63);
        v73 = (&v112 - ((v72 + 15) & 0x7FFFFFFF0));
        MEMORY[0x1EEE9AC00](v74);
        MEMORY[0x1EEE9AC00](v75);
        v77 = (&v112 - v76);
        MEMORY[0x1EEE9AC00](v78);
        v144 = (&v112 - v80);
        if (!v127)
        {
          IR::FixedIntegerDelay<float>::process();
        }

        *&v186 = v73;
        v143 = v79;
        *(&v186 + 1) = v79;
        v81 = *v140;
        v185[0] = (v130 + 4 * v49);
        IR::IRProcessor::processMultipleInputs(v81, v185, &v186, 1u, 2u, v44, 1.0, 0);
        v185[0] = v77;
        v185[1] = v144;
        v82 = *(v140 + 8);
        v176[0] = &v129[v49];
        IR::IRProcessor::processMultipleInputs(v82, v176, v185, 1u, 2u, v44, 1.0, 0);
        v83 = &v136[v49];
        v84 = &v134[v49];
        v141 = &v133[v49];
        v142 = &v135[v49];
        v85 = &v132[v49];
        if (v126)
        {
          v86 = 1.0 / v45;
          LODWORD(v186) = *(a1 + 840);
          *v185 = (1.0 / v45) * (*(&v147 + 2) - *&v186);
          vDSP_vrampmul(v73, 1, &v186, v185, v83, 1, v44);
          LODWORD(v186) = *(a1 + 848);
          *v185 = (1.0 / v45) * (*&v148 - *&v186);
          vDSP_vrampmuladd(v77, 1, &v186, v185, v83, 1, v44);
          v87 = *(a1 + 836);
          if (v87 >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v88 = *(v145 + 8 * v87);
          *&v186 = v88;
          if (DWORD1(v147) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * (*&v146[8 * DWORD1(v147)] - v88);
          vDSP_vrampmul(v73, 1, &v186, v185, v84, 1, v44);
          if ((*(a1 + 836) + 1) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v89 = *(v145 + 8 * (*(a1 + 836) + 1));
          *&v186 = v89;
          if ((DWORD1(v147) + 1) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * (*&v146[8 * (DWORD1(v147) + 1)] - v89);
          vDSP_vrampmuladd(v77, 1, &v186, v185, v84, 1, v44);
          if ((2 * *(a1 + 836)) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v90 = *(v145 + 8 * (2 * *(a1 + 836)));
          *&v186 = v90;
          if ((2 * DWORD1(v147)) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * (*&v146[16 * DWORD1(v147)] - v90);
          vDSP_vrampmul(v73, 1, &v186, v185, v142, 1, v44);
          v91 = 2 * *(a1 + 836);
          if (v91 >= 0x18)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v92 = *(v145 + 8 * (v91 | 1));
          *&v186 = v92;
          if ((2 * DWORD1(v147)) >= 0x18)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * (*&v146[8 * ((2 * DWORD1(v147)) | 1)] - v92);
          vDSP_vrampmuladd(v77, 1, &v186, v185, v142, 1, v44);
          v93 = 3 * *(a1 + 836);
          if (v93 >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v94 = v22 * *(v145 + 8 * v93 + 4);
          *&v186 = v94;
          if ((3 * DWORD1(v147)) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * -(v94 - (v22 * *&v146[24 * DWORD1(v147) + 4]));
          vDSP_vrampmul(v143, 1, &v186, v185, v141, 1, v44);
          v95 = 3 * *(a1 + 836) + 1;
          if (v95 >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v96 = v22 * *(v145 + 8 * v95 + 4);
          *&v186 = v96;
          v97 = 3 * DWORD1(v147) + 1;
          if (v97 >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * -(v96 - (v22 * *&v146[8 * v97 + 4]));
          vDSP_vrampmuladd(v144, 1, &v186, v185, v141, 1, v44);
          v98 = 4 * *(a1 + 836);
          if (v98 >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v99 = v22 * *(v145 + 8 * v98 + 4);
          *&v186 = v99;
          if ((4 * DWORD1(v147)) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * -(v99 - (v22 * *&v146[32 * DWORD1(v147) + 4]));
          vDSP_vrampmul(v143, 1, &v186, v185, v85, 1, v44);
          v100 = 4 * *(a1 + 836);
          if (v100 >= 0x18)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v101 = v22 * *(v145 + 8 * (v100 | 1) + 4);
          *&v186 = v101;
          if ((4 * DWORD1(v147)) >= 0x18)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v185 = v86 * -(v101 - (v22 * *&v146[8 * ((4 * DWORD1(v147)) | 1) + 4]));
          vDSP_vrampmuladd(v144, 1, &v186, v185, v85, 1, v44);
          v102 = v158;
          v103 = v124;
          v124[10] = v157;
          v103[11] = v102;
          v103[12] = v159;
          v104 = v154;
          v103[6] = v153;
          v103[7] = v104;
          v105 = v156;
          v103[8] = v155;
          v103[9] = v105;
          v106 = v150;
          v103[2] = v149;
          v103[3] = v106;
          v107 = v152;
          v103[4] = v151;
          v103[5] = v107;
          v108 = v148;
          *v103 = v147;
          v103[1] = v108;
        }

        else
        {
          LODWORD(v186) = DWORD2(v147);
          LODWORD(v185[0]) = v148;
          MEMORY[0x1E12BE930](v73, 1, &v186, v77, 1, v185, v83, 1, v44);
          if (DWORD1(v147) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          LODWORD(v176[0]) = *&v146[8 * DWORD1(v147)];
          if (DWORD1(v147) == 24)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v183 = *&v146[8 * (DWORD1(v147) + 1)];
          MEMORY[0x1E12BE930](v73, 1, v176, v77, 1, &v183, v84, 1, v44);
          if ((2 * DWORD1(v147)) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v182 = *&v146[16 * DWORD1(v147)];
          if (DWORD1(v147) == 12)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v181 = *&v146[8 * ((2 * DWORD1(v147)) | 1)];
          MEMORY[0x1E12BE930](v73, 1, &v182, v77, 1, &v181, v142, 1, v44);
          v109 = 3 * DWORD1(v147);
          if ((3 * DWORD1(v147)) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v180 = v22 * *&v146[8 * v109 + 4];
          if (DWORD1(v147) == 8)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v179 = v22 * *&v146[8 * v109 + 12];
          MEMORY[0x1E12BE930](v143, 1, &v180, v144, 1, &v179, v141, 1, v44);
          v110 = 4 * DWORD1(v147);
          if ((4 * DWORD1(v147)) >= 0x19)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v178 = v22 * *&v146[8 * v110 + 4];
          if (DWORD1(v147) == 6)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          v177 = v22 * *&v146[8 * (v110 | 1) + 4];
          MEMORY[0x1E12BE930](v143, 1, &v178, v144, 1, &v177, v85, 1, v44);
        }

        v38 = v139 + 8;
        v40 = v137;
      }

      while (v139 != 8);
      v21 = v123 + 256;
    }

    while (v123 + 256 < v116);
  }
}

uint64_t AUMixSwitch::SupportedNumChannels(AUMixSwitch *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMixSwitch::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

BOOL AUMixSwitch::StreamFormatWritable(AUMixSwitch *this, int a2, unsigned int a3)
{
  v3 = a3 == 0;
  v4 = a3 < 2;
  if (a2 != 1)
  {
    v4 = 0;
  }

  if (a2 != 2)
  {
    v3 = v4;
  }

  return (*(this + 17) & 1) == 0 && v3;
}

uint64_t AUMixSwitch::GetParameterValueStrings(AUMixSwitch *this, int a2, int a3, const __CFArray **a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    return 4294956418;
  }

  v13 = CFStringCreateWithBytes(0, "Front Mic", 9, 0x8000100u, 0);
  if (!v13)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!CFStringCreateWithBytes(0, "Back Mic", 8, 0x8000100u, 0))
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  if (!CFStringCreateWithBytes(0, "Beam Mics", 9, 0x8000100u, 0))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  v12[0] = &v13;
  v12[1] = 3;
  v6 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::StringRef>(v12);
  for (i = 16; i != -8; i -= 8)
  {
    v8 = *(&v13 + i);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  result = 0;
  *a4 = v6;
  return result;
}

void sub_1DDC3C950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v11);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v11);
  }

  while (v11 != &a11);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::StringRef>(uint64_t a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, *(a1 + 8));
  v2 = *(a1 + 8);
  v3 = __p;
  if (v2)
  {
    v4 = *a1;
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      *v3++ = v6;
      v5 -= 8;
    }

    while (v5);
    v3 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v3, v10);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_1DDC3CA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDC3CAFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AUMixSwitch::GetParameterInfo(AUMixSwitch *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a2 != 2 && a2 != 1)
  {
    if (a2)
    {
      return 4294956430;
    }

    buffer->unitName = 0;
    buffer->flags = 0x2000;
    if (a3)
    {
      return 4294956418;
    }

    v6 = -1073741824;
    v8 = 2.0;
    v7 = kAudioUnitParameterUnit_Indexed;
    v9 = @"Beam";
    goto LABEL_21;
  }

  v6 = 1073774592;
  buffer->unitName = 0;
  buffer->flags = 0x2000;
  result = 4294956418;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v7 = kAudioUnitParameterUnit_Milliseconds;
      v9 = @"EC main lobe delay";
      v10 = 1137180672;
      goto LABEL_20;
    }

    v7 = kAudioUnitParameterUnit_Ratio;
    v9 = @"EC delta EIR";
LABEL_19:
    v10 = 1148846080;
LABEL_20:
    v8 = *&v10;
    goto LABEL_21;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        return result;
      }

      v7 = kAudioUnitParameterUnit_Generic;
      v8 = 1.0;
      v9 = @"EC mic LEE signal cross-correlation";
      goto LABEL_21;
    }

    v7 = kAudioUnitParameterUnit_Generic;
    v9 = @"EC time aligned ref signal energy";
    goto LABEL_19;
  }

  v8 = 1.0;
  v7 = kAudioUnitParameterUnit_Boolean;
  v9 = @"EC adaptation state";
LABEL_21:
  buffer->cfNameString = v9;
  buffer->flags = 134225920;
  CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v7;
  buffer->minValue = 0.0;
  buffer->maxValue = v8;
  v11 = buffer->flags | v6;
  buffer->defaultValue = 0.0;
  buffer->flags = v11;
  return result;
}

uint64_t AUMixSwitch::GetParameterList(AUMixSwitch *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 2 || a2 == 1)
  {
    *a4 = 5;
    if (a3)
    {
      result = 0;
      *a3 = xmmword_1DE096230;
      a3[4] = 4;
      return result;
    }

    return 0;
  }

  if (!a2)
  {
    *a4 = 1;
    if (a3)
    {
      result = 0;
      *a3 = 0;
      return result;
    }

    return 0;
  }

  *a4 = 0;
  return 4294956430;
}

uint64_t AUMixSwitch::ProcessMultipleBufferLists(AUMixSwitch *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a3)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v52 = getAUMixSwitchLog(void)::gLog;
    if (os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v57 = *(this + 84);
      *v63 = 134218496;
      *&v63[4] = this;
      *&v63[12] = 1024;
      *&v63[14] = a3;
      v64 = 1024;
      v65 = v57;
      _os_log_error_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_ERROR, "[%p] cannot process %u frames (maximum frame size is %u)", v63, 0x18u);
    }

    return 4294956422;
  }

  if (a4 != 2)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v53 = getAUMixSwitchLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *v63 = 134218496;
    *&v63[4] = this;
    *&v63[12] = 1024;
    *&v63[14] = a4;
    v64 = 1024;
    v65 = 2;
    v54 = "[%p] cannot process %u input busses (expected input bus count is %u)";
    v55 = v53;
    goto LABEL_38;
  }

  if (a6 != 1)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v56 = getAUMixSwitchLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *v63 = 134218496;
    *&v63[4] = this;
    *&v63[12] = 1024;
    *&v63[14] = a6;
    v64 = 1024;
    v65 = 1;
    v54 = "[%p] cannot process %u output busses (expected output bus count is %u)";
    v55 = v56;
LABEL_38:
    _os_log_error_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_ERROR, v54, v63, 0x18u);
    return 4294967246;
  }

  mData = (*a5)->mBuffers[0].mData;
  mDataByteSize = (*a5)->mBuffers[0].mDataByteSize;
  v13 = (*a7)->mBuffers[0].mData;
  if (*(this + 528))
  {
    goto LABEL_5;
  }

  v23 = a5[1];
  v24 = v23->mBuffers[0].mData;
  v25 = v23->mBuffers[0].mDataByteSize;
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v26, 0);
  if (Parameter == 2)
  {
    v34 = *(this + 147);
    v35 = hypotf(*(*(this + 67) + 4 * v34), *(*(this + 67) + 4 * (v34 + a3)));
    v36 = hypotf(*(*(this + 70) + 4 * v34), *(*(this + 70) + 4 * (v34 + a3)));
    v37 = v35 + v36;
    v38 = 0.0;
    v39 = 1.0;
    if ((v35 + v36) > 0.0)
    {
      v39 = v35 / v37;
      v38 = v36 / v37;
    }

    v40 = AUMixSwitch::GetParameter(this, 0, 0);
    v41 = AUMixSwitch::GetParameter(this, 0, 1u);
    AUMixSwitch::SetParameter(this, 0, (v38 * v41) + (v40 * v39));
    v42 = AUMixSwitch::GetParameter(this, 1u, 0);
    v43 = AUMixSwitch::GetParameter(this, 1u, 1u);
    AUMixSwitch::SetParameter(this, 1u, (v38 * v43) + (v42 * v39));
    v44 = AUMixSwitch::GetParameter(this, 2u, 0);
    v46 = AUMixSwitch::GetParameter(this, 2u, 1u) == 1.0 && v44 == 1.0;
    AUMixSwitch::SetParameter(this, 2u, v46);
    v47 = AUMixSwitch::GetParameter(this, 3u, 0);
    v48 = AUMixSwitch::GetParameter(this, 3u, 1u);
    AUMixSwitch::SetParameter(this, 3u, (v38 * v48) + (v47 * v39));
    v49 = AUMixSwitch::GetParameter(this, 4u, 0);
    v50 = AUMixSwitch::GetParameter(this, 4u, 1u);
    AUMixSwitch::SetParameter(this, 4u, (v38 * v50) + (v49 * v39));
    __A = 0.0;
    *v63 = mData;
    *&v63[8] = &mData[a3];
    __B.realp = *(this + 67);
    __B.imagp = &__B.realp[a3];
    __C.realp = v24;
    __C.imagp = &v24[a3];
    v51 = (*(this + 70) + 4 * a3);
    __D.realp = *(this + 70);
    __D.imagp = v51;
    __E.realp = v13;
    __E.imagp = &v13[a3];
    vDSP_vfill(&__A, v13, 1, 2 * a3);
    vDSP_zvmmaa(v63, 1, &__B, 1, &__C, 1, &__D, 1, &__E, 1, &__E, 1, a3);
    return 0;
  }

  if (Parameter == 1)
  {
    v29 = AUMixSwitch::GetParameter(this, 0, 1u);
    AUMixSwitch::SetParameter(this, 0, v29);
    v30 = AUMixSwitch::GetParameter(this, 1u, 1u);
    AUMixSwitch::SetParameter(this, 1u, v30);
    v31 = AUMixSwitch::GetParameter(this, 2u, 1u);
    AUMixSwitch::SetParameter(this, 2u, v31);
    v32 = AUMixSwitch::GetParameter(this, 3u, 1u);
    AUMixSwitch::SetParameter(this, 3u, v32);
    v33 = AUMixSwitch::GetParameter(this, 4u, 1u);
    AUMixSwitch::SetParameter(this, 4u, v33);
    v19 = v13;
    v20 = v24;
    v21 = v25;
    goto LABEL_6;
  }

  result = 0;
  if (!Parameter)
  {
LABEL_5:
    v14 = AUMixSwitch::GetParameter(this, 0, 0);
    AUMixSwitch::SetParameter(this, 0, v14);
    v15 = AUMixSwitch::GetParameter(this, 1u, 0);
    AUMixSwitch::SetParameter(this, 1u, v15);
    v16 = AUMixSwitch::GetParameter(this, 2u, 0);
    AUMixSwitch::SetParameter(this, 2u, v16);
    v17 = AUMixSwitch::GetParameter(this, 3u, 0);
    AUMixSwitch::SetParameter(this, 3u, v17);
    v18 = AUMixSwitch::GetParameter(this, 4u, 0);
    AUMixSwitch::SetParameter(this, 4u, v18);
    v19 = v13;
    v20 = mData;
    v21 = mDataByteSize;
LABEL_6:
    memcpy(v19, v20, v21);
    return 0;
  }

  return result;
}

float AUMixSwitch::GetParameter(uint64_t a1, unsigned int a2, unsigned int a3)
{
  Element = ausdk::AUScope::GetElement((a1 + 80), a3);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return ausdk::AUElement::GetParameter(Element, a2);
}

void AUMixSwitch::SetParameter(uint64_t a1, unsigned int a2, float a3)
{
  Element = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  ausdk::AUElement::SetParameter(Element, a2, a3);
}

os_log_t ___Z17getAUMixSwitchLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUMixSwitch");
  getAUMixSwitchLog(void)::gLog = result;
  return result;
}

uint64_t AUMixSwitch::SetProperty(AUMixSwitch *this, int a2, int a3, unsigned int a4, char *__src, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1651335778)
  {
    if (a2 == 1651335779)
    {
      v8 = a6 >> 2;
      v9 = &__src[4 * v8];
      v10 = this + 560;
    }

    else
    {
      if (a2 != 1718444643)
      {
        if (a2 == 1886222438)
        {
          result = 0;
          *(this + 146) = *__src;
        }

        return result;
      }

      v8 = a6 >> 2;
      v9 = &__src[4 * v8];
      v10 = this + 536;
    }

    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v10, __src, v9, v8);
    return 0;
  }

  if (a2 == 21)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 528) = *__src != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  else if (a2 == 3700)
  {
    result = 0;
    *(this + 376) = __src != 0;
  }

  return result;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<float>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
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
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t AUMixSwitch::GetProperty(AUMixSwitch *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 1651335778)
  {
    if (a2 == 21)
    {
      result = 0;
      v7 = *(this + 528);
    }

    else
    {
      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v7 = *(this + 376);
    }

    *__dst = v7;
    return result;
  }

  switch(a2)
  {
    case 1651335779:
      v8 = *(this + 70);
      v9 = *(this + 71);
LABEL_14:
      memcpy(__dst, v8, v9 - v8);
      return 0;
    case 1718444643:
      v8 = *(this + 67);
      v9 = *(this + 68);
      goto LABEL_14;
    case 1886222438:
      result = 0;
      *__dst = *(this + 146);
      break;
  }

  return result;
}

uint64_t AUMixSwitch::GetPropertyInfo(AUMixSwitch *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1651335778)
  {
    if (a2 == 1651335779 || a2 == 1718444643)
    {
      *a6 = 1;
      v9 = 8 * *(this + 84);
LABEL_14:
      result = 0;
      *a5 = v9;
      return result;
    }

    if (a2 != 1886222438)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (a2 == 21)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if (a2 == 3700)
  {
LABEL_10:
    v8 = *(this + 17) ^ 1;
LABEL_13:
    *a6 = v8;
    v9 = 4;
    goto LABEL_14;
  }

  return result;
}

uint64_t AUMixSwitch::Initialize(AUMixSwitch *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (getAUMixSwitchLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
  }

  v2 = getAUMixSwitchLog(void)::gLog;
  if (os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *v17 = 134217984;
    *&v17[4] = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] initialize", v17, 0xCu);
  }

  if ((*(this + 376) & 1) == 0)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v5 = getAUMixSwitchLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    *v17 = 134217984;
    *&v17[4] = this;
    v6 = "[%p] failed to initialize - cannot operate in variable block size mode";
    goto LABEL_28;
  }

  (*(*this + 392))(v17, this, 1, 0);
  v3 = *v17;
  (*(*this + 392))(v17, this, 1, 1);
  v4 = *v17;
  (*(*this + 392))(v17, this, 2, 0);
  if (v3 != *v17)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v5 = getAUMixSwitchLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    *v17 = 134217984;
    *&v17[4] = this;
    v6 = "[%p] failed to initialize - sample rates of FrontMic input bus and main output bus must be equal";
LABEL_28:
    _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, v6, v17, 0xCu);
    return 4294956421;
  }

  if (v4 != *v17)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v5 = getAUMixSwitchLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    *v17 = 134217984;
    *&v17[4] = this;
    v6 = "[%p] failed to initialize - sample rates of BackMic input bus and main output bus must be equal";
    goto LABEL_28;
  }

  v8 = *(this + 146);
  if (v8 < 0.0)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v5 = getAUMixSwitchLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    *v17 = 134217984;
    *&v17[4] = this;
    v6 = "[%p] failed to initialize - parameter mix frequency must be positive";
    goto LABEL_28;
  }

  if (*v17 <= v8)
  {
    if (getAUMixSwitchLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
    }

    v5 = getAUMixSwitchLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    *v17 = 134217984;
    *&v17[4] = this;
    v6 = "[%p] failed to initialize - parameter mix frequency must not exceed Nyquist frequency";
    goto LABEL_28;
  }

  v9 = *(this + 84);
  v10 = (v8 * v9) / *v17;
  *(this + 147) = vcvtmd_u64_f64(v10);
  *v17 = 0;
  std::vector<float>::assign(this + 67, 2 * v9, v17, *&v10);
  v11 = *(this + 84);
  *v17 = 1056964608;
  std::vector<float>::assign(this + 67, v11, v17, v12);
  v13 = (2 * *(this + 84));
  *v17 = 0;
  std::vector<float>::assign(this + 70, v13, v17, v14);
  v15 = *(this + 84);
  *v17 = 1056964608;
  std::vector<float>::assign(this + 70, v15, v17, v16);
  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUMixSwitch::~AUMixSwitch(AUMixSwitch *this)
{
  AUMixSwitch::~AUMixSwitch(this);

  JUMPOUT(0x1E12BD160);
}

{
  v7 = *MEMORY[0x1E69E9840];
  *this = &unk_1F591C048;
  if (getAUMixSwitchLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
  }

  v2 = getAUMixSwitchLog(void)::gLog;
  if (os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] destroyed", &v5, 0xCu);
  }

  v3 = *(this + 70);
  if (v3)
  {
    *(this + 71) = v3;
    operator delete(v3);
  }

  v4 = *(this + 67);
  if (v4)
  {
    *(this + 68) = v4;
    operator delete(v4);
  }

  ausdk::AUBase::~AUBase(this);
}

const void **ausdk::Owned<__CFString const*>::operator=(const void **a1, const void *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    ausdk::Owned<__CFString const*>::releaseRef(v3);
    *a1 = a2;
    ausdk::Owned<__CFString const*>::retainRef(a2);
  }

  return a1;
}

void AUMixSwitch::SetParameter(uint64_t a1, unsigned int a2, unsigned int a3)
{
  Element = ausdk::AUScope::GetElement((a1 + 80), a3);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  ausdk::AUElement::SetParameter(Element, a2, 0.0);
}

void ausdk::Owned<__CFString const*>::releaseRef(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef ausdk::Owned<__CFString const*>::retainRef(CFTypeRef result)
{
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t AUMixGainCompensation::SupportedNumChannels(AUMixGainCompensation *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMixGainCompensation::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

uint64_t AUMixGainCompensation::GetParameterInfo(AUMixGainCompensation *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  if (!a3)
  {
    v6 = 0x41400000C2C00000;
    v7 = -1073733632;
    v8 = @"Input mix gain";
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v6 = 0x42400000C1400000;
    v7 = 1073782784;
    v8 = @"Applied compensation gain";
LABEL_7:
    buffer->cfNameString = v8;
    buffer->flags = -939524096;
    CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = v6;
    v9 = buffer->flags | v7;
    buffer->defaultValue = 0.0;
    buffer->flags = v9;
    return result;
  }

  return 0;
}

uint64_t AUMixGainCompensation::GetParameterList(AUMixGainCompensation *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = 0x100000000;
  }

  result = 0;
  *a4 = 2;
  return result;
}

ausdk::AUInputElement *AUMixGainCompensation::Render(AUMixGainCompensation *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v8 = Element, (v9 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v10 = v9;
  v13 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v12)
  {
    result = ausdk::AUInputElement::PullInput(result, &v13, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v8 + 144) || !*(v10 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return AUMixGainCompensation::ProcessBufferLists(this, v12, (*(v8 + 152) + 48), (*(v10 + 152) + 48), a4);
  }

  return result;
}

uint64_t AUMixGainCompensation::ProcessBufferLists(AUMixGainCompensation *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  if (*(this + 528))
  {
    goto LABEL_4;
  }

  v15 = *(this + 134);
  v16 = 0.0;
  if (v15 > 19)
  {
    if (v15 == 20)
    {
      v16 = 0.66667;
    }

    else if (v15 == 30)
    {
      v16 = 1.3333;
    }

    goto LABEL_20;
  }

  if (v15)
  {
    if (v15 == 10)
    {
      v16 = 0.33333;
    }

LABEL_20:
    v17 = *(this + 133);
    v18 = v16 * v17;
    if (v18 <= -7.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = -7.0;
    }

    if (v17 <= -7.0)
    {
      v18 = v19;
    }

    v20 = 0;
    v29 = __exp10f((v18 - v17) * 0.05);
    p_mData = &a3->mBuffers[0].mData;
    for (i = &a4->mBuffers[0].mData; ; i += 2)
    {
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (v20 >= *(Element + 108))
      {
        break;
      }

      v25 = *p_mData;
      p_mData += 2;
      v24 = v25;
      v26 = *i;
      MEMORY[0x1E12BE940](v24, 1, &v29, v26, 1, a5);
      ++v20;
    }

    v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v28 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v27, 1u, v29);
    return 0;
  }

LABEL_4:
  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers == a4->mNumberBuffers && a3->mNumberBuffers)
  {
    v10 = 0;
    v11 = &a4->mBuffers[0].mData;
    v12 = &a3->mBuffers[0].mData;
    do
    {
      v13 = *(v12 - 1);
      if (v13 == *(v11 - 1) && *v12 != *v11)
      {
        memcpy(*v11, *v12, v13);
        mNumberBuffers = a3->mNumberBuffers;
      }

      ++v10;
      v11 += 2;
      v12 += 2;
    }

    while (v10 < mNumberBuffers);
  }

  return 0;
}

uint64_t AUMixGainCompensation::SetParameter(AUMixGainCompensation *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v11 = 0.0;
  result = ausdk::AUBase::GetParameter(this, a2, a3, a4, &v11);
  if (result || v11 != a5)
  {
    result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
    if (!(result | a2))
    {
      *(this + 133) = a5;
    }
  }

  return result;
}

uint64_t AUMixGainCompensation::SetProperty(AUMixGainCompensation *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 1920035958)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 >= 4)
    {
      result = 0;
      *(this + 528) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (a6 < 4)
  {
    return 4294956445;
  }

  result = 0;
  *(this + 134) = *a5;
  return result;
}

uint64_t AUMixGainCompensation::GetProperty(AUMixGainCompensation *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 1920035958)
  {
    v6 = *(this + 134);
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    v6 = *(this + 528);
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t AUMixGainCompensation::GetPropertyInfo(AUMixGainCompensation *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 1920035958 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUMixGainCompensation::Initialize(AUMixGainCompensation *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (v3[10] != v4[2].mSampleRate || *(v3 + 22) != v4[2].mFormatID || *(v3 + 24) != v4[2].mBytesPerPacket || *(v3 + 25) != v4[2].mFramesPerPacket || *(v3 + 27) != v4[2].mChannelsPerFrame)
  {
    return 4294956428;
  }

  v6 = 4294956428;
  if (*(v3 + 28) == v4[2].mBitsPerChannel)
  {
    if (CA::Implementation::EquivalentFormatFlags((v3 + 10), v4 + 2, v5))
    {
      return 0;
    }

    else
    {
      return 4294956428;
    }
  }

  return v6;
}

BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v3 == a2->mFormatFlags;
  }

  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) == 0)
  {
    v4 = *(this + 3);
  }

  v5 = v4 & 0xFFFFFFBF;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 7);
    }

    if (v8)
    {
      v6 = 8 * (v6 / v8);
      v9 = *(this + 8);
      v10 = v5 | 8;
      v11 = v6 == v9;
      goto LABEL_14;
    }

    v6 = 0;
    v9 = *(this + 8);
    v10 = v5 | 8;
  }

  else
  {
    v10 = v4 & 0xFFFFFFB7 | 8;
    v7 = *(this + 7);
    v9 = *(this + 8);
  }

  v11 = v9 == 0;
LABEL_14:
  if (v11)
  {
    v5 = v10;
  }

  v13 = (v9 & 7) == 0 && v6 == v9;
  v14 = v5 & 0xFFFFFFEF;
  if (!v13)
  {
    v14 = v5;
  }

  if (v14)
  {
    v14 &= ~4u;
  }

  v15 = (v14 & 8) == 0 || v9 > 8;
  v16 = v14 & 2;
  if (v15)
  {
    v16 = v14;
  }

  if (v7 == 1)
  {
    v17 = v16 & 0xFFFFFFDF;
  }

  else
  {
    v17 = v16;
  }

  if (!v17)
  {
    v17 = 0x80000000;
  }

  mFormatFlags = a2->mFormatFlags;
  if (a2->mFormatID != 1819304813)
  {
    return v17 == mFormatFlags;
  }

  v19 = mFormatFlags & 0x7FFFFFFF;
  if ((mFormatFlags & 0x7FFFFFFF) == 0)
  {
    v19 = a2->mFormatFlags;
  }

  v20 = v19 & 0xFFFFFFBF;
  mBytesPerFrame = a2->mBytesPerFrame;
  if (!mBytesPerFrame)
  {
    v25 = v19 & 0xFFFFFFB7 | 8;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mBitsPerChannel = a2->mBitsPerChannel;
LABEL_44:
    v26 = mBitsPerChannel == 0;
    goto LABEL_45;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2->mChannelsPerFrame;
  }

  if (!v23)
  {
    mBytesPerFrame = 0;
    mBitsPerChannel = a2->mBitsPerChannel;
    v25 = v20 | 8;
    goto LABEL_44;
  }

  mBytesPerFrame = 8 * (mBytesPerFrame / v23);
  mBitsPerChannel = a2->mBitsPerChannel;
  v25 = v20 | 8;
  v26 = mBytesPerFrame == mBitsPerChannel;
LABEL_45:
  if (v26)
  {
    v20 = v25;
  }

  v27 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
  v28 = v20 & 0xFFFFFFEF;
  if (!v27)
  {
    v28 = v20;
  }

  if (v28)
  {
    v28 &= ~4u;
  }

  v29 = (v28 & 8) == 0 || mBitsPerChannel > 8;
  v30 = v28 & 2;
  if (v29)
  {
    v30 = v28;
  }

  if (mChannelsPerFrame == 1)
  {
    v31 = v30 & 0xFFFFFFDF;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    mFormatFlags = v31;
  }

  else
  {
    mFormatFlags = 0x80000000;
  }

  return v17 == mFormatFlags;
}

void AUMixGainCompensation::~AUMixGainCompensation(AUMixGainCompensation *this)
{
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

void vtRunFFT(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    vDSP_fft_zrip(*(a1 + 24), (a1 + 32), 1, *(a1 + 20), -1);
    v5 = *a1;
    v6 = (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1;

    vDSP_ztoc((a1 + 32), 1, v5, 2, v6);
  }

  else
  {
    vDSP_ctoz(*a1, 2, (a1 + 32), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    v3 = *(a1 + 24);
    v4 = *(a1 + 20);

    vDSP_fft_zrip(v3, (a1 + 32), 1, v4, 1);
  }
}

void MicIssueDetectorCorev1::process(MicIssueDetectorCorev1 *this, void *a2, void *a3, void *a4, const void ***a5, void *a6, void *a7, double a8, double a9, float a10)
{
  v13 = *(*(this + 1) + 12);
  if (v13 >= 0.0)
  {
    *(*(this + 14) + 152) = v13;
  }

  v14 = *(this + 65);
  LODWORD(v15) = *(this + 19);
  if (v14 <= 0.0 || v14 == 1.0)
  {
    goto LABEL_10;
  }

  if (v15)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      MEMORY[0x1E12BE940](*(*a2 + v17), 1, this + 260, *(*a2 + v17), 1, (*(*a2 + v17 + 8) - *(*a2 + v17)) >> 2);
      ++v18;
      v15 = *(this + 19);
      v17 += 24;
    }

    while (v18 < v15);
LABEL_10:
    if (v15)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = *(*(this + 37) + v19);
        v22 = *(*(this + 34) + v19);
        v23 = *(this + 16);
        __A.realp = *(*a2 + v19);
        __A.imagp = &__A.realp[v23];
        v24 = *__A.realp;
        v25 = *__A.imagp;
        v26 = *(this + 18) - 1;
        vDSP_zvmags(&__A, 1, v22, 1, v26);
        *v22 = v24 * v24;
        v22[v26] = v25 * v25;
        LODWORD(v297.realp) = *(this + 52);
        *&__C.realp = 1.0 - *&v297.realp;
        MEMORY[0x1E12BE930](v21, 1, &v297, v22, 1, &__C, v21, 1, *(this + 18));
        ++v20;
        v15 = *(this + 19);
        v19 += 24;
      }

      while (v20 < v15);
    }
  }

  if (*(this + 20))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(*a2 + 24 * *(*(this + 46) + 4 * v28));
      v30 = *(*(this + 40) + v27);
      v31 = *(this + 16);
      v32 = (*(*a2 + 24 * *(*(this + 43) + 4 * v28)) + 4 * v31);
      __A.realp = *(*a2 + 24 * *(*(this + 43) + 4 * v28));
      __A.imagp = v32;
      v297.realp = v29;
      v297.imagp = &v29[v31];
      __C.realp = *(this + 158);
      __C.imagp = &__C.realp[v31];
      vDSP_zvcmul(&v297, 1, &__A, 1, &__C, 1, v31);
      *__C.realp = *__A.realp * *v297.realp;
      *__C.imagp = *__A.imagp * *v297.imagp;
      v295 = *(this + 52);
      v294 = 1.0 - v295;
      MEMORY[0x1E12BE930](v30, 1, &v295, *(this + 158), 1, &v294, v30, 1, *(this + 16));
      MEMORY[0x1E12BE930](v30 + 4 * *(this + 16), 1, &v295, *(this + 158) + 4 * *(this + 16), 1, &v294, v30 + 4 * *(this + 16), 1, *(this + 16));
      ++v28;
      v27 += 24;
    }

    while (v28 < *(this + 20));
    LODWORD(v15) = *(this + 19);
  }

  if (v15)
  {
    v33 = 0;
    do
    {
      *(*(this + 61) + 4 * v33) = MicIssueDetectorCorev1::calculateMeanEnergyInFreqRange(this, *(this + 35), *(this + 36), *(this + 53), *(*(this + 61) + 4 * v33), a10, *(*(this + 37) + 24 * v33));
      *(*(this + 64) + 4 * v33) = MicIssueDetectorCorev1::calculateMeanEnergyInFreqRange(this, *(this + 36), *(this + 37), *(this + 53), *(*(this + 64) + 4 * v33), v34, *(*(this + 37) + 24 * v33));
      *(*(this + 67) + 4 * v33) = MicIssueDetectorCorev1::calculateMeanEnergyInFreqRange(this, *(this + 38), *(this + 39), *(this + 54), *(*(this + 67) + 4 * v33), v35, *(*(this + 34) + 24 * v33));
      if (*(*(this + 14) + 120))
      {
        v36 = 0;
        v37 = 0;
        v38 = *(this + 100);
        do
        {
          v39 = MicIssueDetectorCorev1::calculateMeanEnergyInFreqRange(this, *(*(this + 112) + 4 * v37), *(*(this + 118) + 4 * v37), *(this + 53), *(*(v38 + v36) + 4 * v33), a10, *(*(this + 37) + 24 * v33));
          v38 = *(this + 100);
          *(*(v38 + v36) + 4 * v33) = v39;
          ++v37;
          v36 += 24;
        }

        while (v37 < *(*(this + 14) + 120));
      }

      ++v33;
      v40 = *(this + 19);
    }

    while (v33 < v40);
  }

  else
  {
    v40 = 0;
  }

  v293 = a2;
  LODWORD(__A.realp) = 0;
  LODWORD(v297.realp) = 0;
  vDSP_maxv(*(this + 61), 1, &__A, v40);
  vDSP_maxv(*(this + 64), 1, &v297, *(this + 19));
  v41 = *(*(this + 14) + 20);
  v43 = *&v297.realp < v41 && *&__A.realp < v41;
  *(this + 128) = v43;
  v44 = *(this + 155);
  vDSP_vfill(&MicIssueDetectorCorev1::kOnef, v44, 1, *(this + 18));
  v281 = (this + 260);
  v282 = a4;
  if (*(this + 19))
  {
    v45 = 0;
    v46 = 0;
    do
    {
      vDSP_vfill(&MicIssueDetectorCorev1::kEpsf, *(*(this + 49) + v45), 1, *(this + 18));
      ++v46;
      v47 = *(this + 19);
      v45 += 24;
    }

    while (v46 < v47);
  }

  else
  {
    v47 = 0;
  }

  vDSP_vfill(&MicIssueDetectorCorev1::kEpsdB, *(this + 70), 1, v47);
  if (*(this + 20))
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = *(*(this + 43) + 4 * v49);
      v51 = *(*(this + 46) + 4 * v49);
      v52 = *(this + 152);
      v53 = *(this + 16);
      __A.realp = *(*(this + 40) + v48);
      __A.imagp = &__A.realp[v53];
      vDSP_zvmags(&__A, 1, *(this + 149), 1, v53);
      v54 = *(this + 149);
      *v54 = *__A.realp * *__A.realp;
      v54[*(this + 16)] = *__A.imagp * *__A.imagp;
      MEMORY[0x1E12BE7E0](*(*(this + 37) + 24 * v50), 1, *(*(this + 37) + 24 * v51), 1, &MicIssueDetectorCorev1::kEpsf, v52, 1, *(this + 18));
      vDSP_vdiv(v52, 1, *(this + 149), 1, v52, 1, *(this + 18));
      vDSP_vclip(v52, 1, &AUSpeechLevelEstimator::kVAD_Min, &AUSpeechLevelEstimator::kVAD_Max, v52, 1, *(this + 18));
      v55 = *(*(this + 49) + 24 * v50);
      vDSP_vmax(v55, 1, *(this + 152), 1, v55, 1, *(this + 18));
      v56 = *(*(this + 49) + 24 * v51);
      vDSP_vmax(v56, 1, *(this + 152), 1, v56, 1, *(this + 18));
      vDSP_vmin(v44, 1, *(this + 152), 1, v44, 1, *(this + 18));
      v57 = *(this + 70);
      v58 = *(this + 67);
      v59 = *(v57 + 4 * v50);
      if (v59 < *(v58 + 4 * v51))
      {
        v59 = *(v58 + 4 * v51);
      }

      *(v57 + 4 * v50) = v59;
      v60 = *(v57 + 4 * v51);
      if (v60 < *(v58 + 4 * v50))
      {
        v60 = *(v58 + 4 * v50);
      }

      *(v57 + 4 * v51) = v60;
      ++v49;
      v48 += 24;
    }

    while (v49 < *(this + 20));
  }

  vDSP_meanv(&v44[*(this + 38)], 1, this + 62, (*(this + 39) - *(this + 38) + 1));
  v61 = *(this + 19);
  if (v61)
  {
    v62 = 0;
    v63 = *(this + 14);
    do
    {
      if (*(v63 + 120))
      {
        v64 = 0;
        v65 = 0;
        do
        {
          v66 = *(*(this + 112) + 4 * v65);
          vDSP_meanv((*(*(this + 49) + 24 * v62) + 4 * v66), 1, (*(*(this + 103) + v64) + 4 * v62), (*(*(this + 118) + 4 * v65++) - v66 + 1));
          v63 = *(this + 14);
          v64 += 24;
        }

        while (v65 < *(v63 + 120));
        v61 = *(this + 19);
      }

      ++v62;
    }

    while (v62 < v61);
  }

  vDSP_vmax(**(this + 49), 1, *(*(this + 49) + 24), 1, *(this + 52), 1, *(this + 18));
  v67 = *(this + 19);
  if (v67)
  {
    v68 = 0;
    v69 = 0;
    v70 = *(this + 55);
    do
    {
      v71 = *(*(this + 49) + v68);
      v72 = *(this + 33);
      v73 = *(this + 34);
      v74 = *(this + 52);
      v75 = *(v70 + 4 * v69);
      v76 = *(this + 128);
      LODWORD(__A.realp) = 0;
      v77 = 0.0;
      if ((v76 & 1) == 0)
      {
        vDSP_meanv((v71 + 4 * v72), 1, &__A, (v73 - v72 + 1));
        v77 = 1.0 - *&__A.realp;
        v70 = *(this + 55);
        v67 = *(this + 19);
      }

      *(v70 + 4 * v69++) = ((1.0 - v74) * v77) + (v74 * v75);
      v68 += 24;
    }

    while (v69 < v67);
  }

  else
  {
    v67 = 0;
  }

  vDSP_vclr(*(this + 106), 1, v67);
  v78 = *(this + 20);
  if (v78)
  {
    v79 = 0;
    v80 = *(this + 43);
    v81 = *(this + 46);
    v82 = *(*(this + 14) + 120);
    v83 = *(this + 149);
    do
    {
      v84 = *(v80 + 4 * v79);
      v85 = *(v81 + 4 * v79);
      if (v82)
      {
        v86 = *(this + 100);
        v87 = v83;
        v88 = v82;
        do
        {
          v89 = *v86;
          v86 += 3;
          *v87++ = *(v89 + 4 * v84) - *(v89 + 4 * v85);
          --v88;
        }

        while (v88);
      }

      if (MicIssueDetectorCorev1::isMicBlocked(this, v84, v83, 0))
      {
        *(*(this + 106) + 4 * v84) = 1065353216;
      }

      if (MicIssueDetectorCorev1::isMicBlocked(this, v85, v83, 1))
      {
        *(*(this + 106) + 4 * v85) = 1065353216;
      }

      ++v79;
    }

    while (v79 != v78);
  }

  *(this + 40) = 0;
  if (!*(this + 19))
  {
    LODWORD(v105) = 0;
    v98 = 1.0;
    goto LABEL_92;
  }

  v90 = 0;
  v91 = *(this + 4);
  v92 = *(v91 + 48);
  v93 = *(this + 106);
  v94 = *(this + 1);
  v95 = *(this + 88);
  v96 = *(this + 91);
  v97 = *(v91 + 72);
  v98 = 1.0;
  do
  {
    v99 = ((1.0 - *(this + 55)) * *(v93 + 4 * v90)) + (*(this + 55) * v92[v90]);
    v92[v90] = v99;
    v100 = *(v94 + 52);
    v101 = v99 > v100;
    if (*(v95 + 4 * v90) == v101)
    {
      v102 = *(v96 + 4 * v90);
      if (!v102)
      {
        goto LABEL_77;
      }

      v103 = v102 - 1;
    }

    else if (v99 <= v100)
    {
      v103 = *(this + 42);
    }

    else
    {
      v103 = *(this + 41);
    }

    *(v96 + 4 * v90) = v103;
    if (v103)
    {
      v104 = *(v97 + 4 * v90);
      goto LABEL_81;
    }

LABEL_77:
    if (v99 <= v100)
    {
      v104 = 0.0;
    }

    else
    {
      v104 = 1.0;
    }

    *(v97 + 4 * v90) = v104;
    *(v96 + 4 * v90) = *(this + 41);
LABEL_81:
    *(v95 + 4 * v90) = v101;
    if (v104 != 0.0)
    {
      ++*(this + 40);
    }

    v98 = v98 * v99;
    ++v90;
    v105 = *(this + 19);
  }

  while (v90 < v105);
  if (v105)
  {
    v106 = *(this + 19);
    v107 = v98;
    do
    {
      v108 = *v92++;
      v109 = v108;
      if (v108 >= 1.0e-22)
      {
        v110 = v109;
      }

      else
      {
        v110 = 1.0e-22;
      }

      v107 = v107 + ((v98 / v110) * (1.0 - v109));
      --v106;
    }

    while (v106);
    v98 = v107;
  }

LABEL_92:
  *(this + 63) = 1.0 - v98;
  v111 = (*(this + 128) & 1) != 0 || *(this + 40) >= (v105 - 1);
  *(this + 129) = v111;
  if (v105)
  {
    v112 = 0;
    v113 = *(this + 4);
    while (1)
    {
      v114 = 0.0;
      if (*(v113[9] + 4 * v112) == 0.0 && (*(this + 129) & 1) == 0)
      {
        v114 = *(*(this + 55) + 4 * v112);
        v115 = *(*(this + 14) + 20);
        if (*(*(this + 61) + 4 * v112) < v115 && *(*(this + 64) + 4 * v112) < v115)
        {
          v114 = 0.0;
        }
      }

      v116 = *(*(this + 49) + 24 * v112);
      v117 = *(this + 149);
      vDSP_vclr(v117, 1, *(this + 18));
      v118 = *(this + 35);
      v119 = *(this + 37);
      if (v118 <= v119)
      {
        v120 = 1.0 - *(*(this + 1) + 48);
        do
        {
          if (*(v116 + 4 * v118) >= v120)
          {
            v121 = 0.0;
          }

          else
          {
            v121 = 1.0;
          }

          v117[v118++] = v121;
        }

        while (v118 <= v119);
      }

      MEMORY[0x1E12BE7F0](*(*(this + 37) + 24 * v112), 1, *(this + 149), 1, *(this + 149), 1, *(this + 18));
      if (v114 <= *(*(this + 1) + 48))
      {
        v123 = 0;
      }

      else
      {
        v123 = *(this + 37);
      }

      v124 = MicIssueDetectorCorev1::calculateMeanEnergyInFreqRange(this, *(this + 35), v123, *(this + 53), *(*(*(this + 4) + 96) + 4 * v112), v122, *(this + 149));
      v113 = *(this + 4);
      *(v113[12] + 4 * v112) = v124;
      v125 = *(this + 14);
      if (v124 <= *(v125 + 20))
      {
        v126 = 0.0;
      }

      else
      {
        v126 = v114;
      }

      *(*v113 + 4 * v112) = v126;
      v127 = *(*(this + 1) + 48);
      v128 = v126 > v127;
      v129 = *(this + 94);
      v130 = *(this + 97);
      v131 = v113[3];
      if (*(v129 + 4 * v112) == v128)
      {
        v132 = *(v130 + 4 * v112);
        if (!v132)
        {
          goto LABEL_121;
        }

        v133 = v132 - 1;
      }

      else if (v126 <= v127)
      {
        v133 = *(this + 42);
      }

      else
      {
        v133 = *(this + 41);
      }

      *(v130 + 4 * v112) = v133;
      if (!v133)
      {
LABEL_121:
        if (v126 <= v127)
        {
          v134 = 0.0;
        }

        else
        {
          v134 = 1.0;
        }

        *(v131 + 4 * v112) = v134;
        *(v130 + 4 * v112) = *(this + 41);
      }

      *(v129 + 4 * v112++) = v128;
      if (v112 >= *(this + 19))
      {
        goto LABEL_128;
      }
    }
  }

  v125 = *(this + 14);
LABEL_128:
  if (*(v125 + 168) == *(v125 + 160))
  {
    v161 = *(this + 1);
    if (*(v161 + 60) == 0.0)
    {
      v162 = 196;
      if (*(v161 + 68) == 1.0)
      {
        v162 = 192;
      }

      *(this + 51) = *(this + v162);
      *(v161 + 68) = 0;
    }

    else
    {
      MicIssueDetectorCorev1::checkPrimaryMicEchoStatus(this);
    }
  }

  else
  {
    MicIssueDetectorCorev1::checkPrimaryMicEchoStatus(this);
    v135 = *(this + 14);
    v137 = *(v135 + 160);
    v136 = *(v135 + 168);
    v138 = v136 - v137;
    if (v136 != v137)
    {
      v139 = 0;
      v140 = v138 >> 2;
      v141 = *(this + 140);
      v285 = *(this + 146);
      v287 = *(this + 143);
      v289 = *(this + 130);
      v142 = (v138 >> 2) - 1;
      if ((v138 >> 2) <= 1)
      {
        v143 = 1;
      }

      else
      {
        v143 = v138 >> 2;
      }

      v144 = (v137 + 4);
      while (1)
      {
        v145 = *(v137 + 4 * v139);
        v146 = log10f(*(v289 + 4 * v145) + 2.2204e-16);
        if (v140 <= ++v139)
        {
          v158 = 0;
        }

        else
        {
          v147 = 0;
          v148 = v146 * 10.0;
          v149 = *(this + 1);
          v150 = *(this + 134);
          v151 = *(v150 + 4 * v145);
          v152 = v144;
          v153 = v142;
          do
          {
            v155 = *v152++;
            v154 = v155;
            v156 = v149 + 25;
            if (v148 > -60.0)
            {
              v156 = (*(*(this + 4) + 24 * (v154 + 19)) + 4 * v145);
            }

            v157 = *(*(this + 137) + 4 * v145) < v149[23] && v151 < v149[24] && (*(v150 + 4 * v154) - v151) > *v156;
            v147 += v157;
            --v153;
          }

          while (v153);
          v158 = v147 != 0;
        }

        v159 = *(this + 48);
        if (*(this + 24))
        {
          break;
        }

        *(v285 + 4 * v145) = v158;
LABEL_155:
        --v142;
        ++v144;
        if (v139 == v143)
        {
          goto LABEL_162;
        }
      }

      if (*(v141 + 4 * v145) == v158)
      {
        v160 = *(v287 + 4 * v145);
        if (v160)
        {
          v159 = v160 - 1;
          goto LABEL_152;
        }

        goto LABEL_153;
      }

      if (!v158)
      {
        v159 = *(this + 49);
      }

LABEL_152:
      *(v287 + 4 * v145) = v159;
      if (!v159)
      {
LABEL_153:
        *(v285 + 4 * v145) = v158;
      }

      *(v141 + 4 * v145) = v158;
      goto LABEL_155;
    }
  }

LABEL_162:
  vDSP_vclr(*(this + 73), 1, *(this + 19));
  v163 = *(this + 14);
  v164 = expf((*(this + 62) - *(v163 + 56)) * 50.0);
  LODWORD(v165) = *(this + 19);
  if (v165)
  {
    v166 = 0;
    v167 = *(this + 67);
    v168 = *(this + 73);
    v169 = *(this + 76);
    v288 = *(this + 85);
    v290 = *(this + 70);
    v170 = *(this + 4);
    v171 = v170[12];
    v172 = *(this + 79);
    v286 = *(this + 82);
    v173 = v170[9];
    v174 = v170[15];
    v175 = 1.0 / (v164 + 1.0);
    while (1)
    {
      v176 = *(v167 + 4 * v166) - *(v290 + 4 * v166);
      if (v176 < 0.0)
      {
        v176 = 0.0;
      }

      v177 = (v175 * *(this + 63)) * v176;
      *(v168 + 4 * v166) = v177;
      v178 = *(v167 + 4 * v166);
      v179 = 0.0;
      if (v178 > *(v163 + 84))
      {
        v180 = *(v163 + 60);
        v179 = v180 / (expf(-(*(v163 + 64) * (v177 - *(v163 + 68)))) + 1.0);
      }

      v181 = fminf(*(v163 + 88) - v178, 0.0);
      if (v179 >= v181)
      {
        v181 = v179;
      }

      v182 = *(v169 + 4 * v166);
      if (v181 < v182)
      {
        break;
      }

      v183 = *(this + 57);
      if (v181 > v182)
      {
        v184 = *(v288 + 4 * v166);
        if (*(this + 58) > v184)
        {
          *(v288 + 4 * v166) = v184 + 1;
          v183 = 1.0;
          if ((v182 * -0.9) <= -v181)
          {
            goto LABEL_172;
          }
        }
      }

LABEL_176:
      *(v169 + 4 * v166) = (v181 * (1.0 - v183)) + (v183 * v182);
      v185 = *(v163 + 24);
      v186 = v185 / (expf(-(*(v163 + 28) * (*(v171 + 4 * v166) - *(v163 + 32)))) + 1.0);
      v187 = *(v172 + 4 * v166);
      if (v186 >= v187)
      {
        v188 = *(this + 60);
        if (v186 <= v187)
        {
          goto LABEL_182;
        }

        v189 = *(v286 + 4 * v166);
        if (*(this + 61) <= v189)
        {
          goto LABEL_182;
        }

        *(v286 + 4 * v166) = v189 + 1;
        v188 = 1.0;
        if ((v187 * -0.9) > -v186)
        {
          goto LABEL_182;
        }
      }

      else
      {
        v188 = *(this + 59);
      }

      *(v286 + 4 * v166) = 0;
LABEL_182:
      v190 = (v186 * (1.0 - v188)) + (v188 * v187);
      *(v172 + 4 * v166) = v190;
      if (*(v169 + 4 * v166) < v190)
      {
        v190 = *(v169 + 4 * v166);
      }

      *(v174 + 4 * v166) = (1.0 - *(v173 + 4 * v166)) * expf(v190 * 0.11513);
      ++v166;
      v165 = *(this + 19);
      if (v166 >= v165)
      {
        goto LABEL_185;
      }
    }

    v183 = *(this + 56);
LABEL_172:
    *(v288 + 4 * v166) = 0;
    goto LABEL_176;
  }

LABEL_185:
  if (v165 - 1 >= *(v163 + 152))
  {
    v191 = *(v163 + 152);
  }

  else
  {
    v191 = v165 - 1;
  }

  v192 = *(this + 1);
  v193 = v282;
  v194 = v293;
  if (v192[17] != 0.0)
  {
    v195 = *(v163 + 160);
    v196 = *(v163 + 168) - v195;
    if (v196)
    {
      v197 = v196 >> 2;
      *(*(*(this + 4) + 120) + 4 * v191) = 452053249;
      if (v197 <= 1)
      {
        v197 = 1;
      }

      while (1)
      {
        v199 = *v195++;
        v198 = v199;
        if (*(*(this + 146) + 4 * v199) == 0.0)
        {
          break;
        }

        if (!--v197)
        {
          goto LABEL_200;
        }
      }

      v191 = v198;
    }

    else if (v192[15] != 0.0)
    {
      *(*(*(this + 4) + 120) + 4 * v191) = 452053249;
      if (v165 - 1 >= v192[16])
      {
        v191 = v192[16];
      }

      else
      {
        v191 = v165 - 1;
      }
    }
  }

LABEL_200:
  v192[26] = v191;
  v200 = *(this + 4);
  if ((v191 & 0x80000000) != 0)
  {
    v201 = *(v200 + 120);
  }

  else
  {
    v201 = *(v200 + 120);
    if (v201[v191] > *(v163 + 156))
    {
      vDSP_vfill(&MicIssueDetectorCorev1::kEpsf, v201, 1, v165);
      v201 = *(*(this + 4) + 120);
      v201[v191] = 1.0;
      LODWORD(v165) = *(this + 19);
    }
  }

  LODWORD(v297.realp) = -1018691584;
  __A.realp = 0;
  vDSP_maxvi(v201, 1, &v297, &__A, v165);
  realp = __A.realp;
  v203 = __A.realp;
  if (*(this + 64) == __A.realp)
  {
    v204 = *(this + 43);
    if (v204)
    {
      v205 = v204 - 1;
      goto LABEL_208;
    }

    v205 = 0;
  }

  else
  {
    v205 = *(this + 41);
LABEL_208:
    *(this + 43) = v205;
  }

  v206 = *(this + 4);
  v207 = v206[15];
  v208 = *(this + 1);
  v209 = *(v207 + 4 * v208[2]);
  if (v209 < 1.0e-22)
  {
    v209 = 1.0e-22;
  }

  if (!v205 || (*(v207 + 4 * realp) / v209) > 1.4125)
  {
    v208[2] = v203;
    *(this + 43) = *(this + 41);
  }

  *(this + 64) = v203;
  *(v207 + 4 * v208[2]) = 1065353216;
  v210 = *(this + 19);
  if (v210)
  {
    v211 = 0;
    v212 = v206[3];
    v213 = *(this + 19);
    do
    {
      v214 = *v212++;
      v211 |= v214 != 0.0;
      --v213;
    }

    while (v213);
    v215 = 0;
    *v208 = (v211 & 1);
    v216 = v206[9];
    do
    {
      v217 = *v216++;
      v215 |= v217 != 0.0;
      --v210;
    }

    while (v210);
    v218 = (v215 & 1);
  }

  else
  {
    *v208 = 0.0;
    v218 = 0.0;
  }

  v208[1] = v218;
  vDSP_vfill(&MicIssueDetectorCorev1::kOnef, *(this + 11), 1, *(this + 18));
  if (**(this + 1) != 0.0)
  {
    v219 = *(this + 45);
    v220 = *(this + 47);
    if (v219 <= v220)
    {
      v221 = *(this + 14);
      v222 = *(this + 52);
      v223 = *(this + 45);
      v224 = *(this + 11);
      do
      {
        *(v224 + 4 * v223) = *(this + 66) + ((1.0 - *(this + 66)) * ((tanhf(*(v221 + 104) * (*(v222 + 4 * v223) - *(v221 + 108))) + 1.0) * 0.5));
        ++v223;
      }

      while (v223 <= v220);
    }

    v226 = *(this + 58);
    v225 = *(this + 59);
    v227 = (v225 - v226) >> 2;
    v228 = v227 >> 1;
    if (v227 >> 1 > v219)
    {
      v219 = v227 >> 1;
    }

    vDSP_vclr(*(this + 149), 1, (*(this + 150) - *(this + 149)) >> 2);
    v229 = *(this + 47);
    v230 = v229 - (v227 >> 1);
    if (v219 <= v230)
    {
      if (v227 <= 1)
      {
        v231 = 1;
      }

      else
      {
        v231 = (v225 - v226) >> 2;
      }

      v232 = 4 * v219 - 4 * v228;
      do
      {
        if (v225 != v226)
        {
          v233 = *(this + 149);
          v234 = *(v233 + 4 * v219);
          v235 = (*(this + 58) + 4 * v227 - 4 * v228);
          v236 = (*(this + 11) + v232);
          v237 = v231;
          do
          {
            v238 = *v236++;
            v239 = v238;
            v240 = *v235--;
            v234 = v234 + (v239 * v240);
            *(v233 + 4 * v219) = v234;
            --v237;
          }

          while (v237);
        }

        ++v219;
        v232 += 4;
      }

      while (v219 <= v230);
    }

    v193 = v282;
    if (v228 <= v230)
    {
      v241 = *(this + 149);
      v242 = *(this + 11);
      do
      {
        *(v242 + 4 * v228) = *(v241 + 4 * v228);
        ++v228;
      }

      while (v228 <= v230);
    }

    v243 = *(this + 46);
    if (v243 <= v229)
    {
      v244 = *(this + 11);
      while (*(v244 + 4 * v243) <= *(*(this + 14) + 112))
      {
        if (++v243 > v229)
        {
          goto LABEL_247;
        }
      }

      for (; v243 <= v229; ++v243)
      {
        *(v244 + 4 * v243) = 1065353216;
      }
    }
  }

LABEL_247:
  v245 = a5[1];
  if (v245 != *a5 && ((v246 = a6[1] - *a6) != 0 ? (v247 = v245 - *a5 == v246) : (v247 = 0), v247 && (v248 = (2 * *(this + 16)), v248 <= ((*a5)[1] - **a5) >> 2) && v248 <= (*(*a6 + 8) - **a6) >> 2))
  {
    v250 = 0;
    v249 = *(*(this + 1) + 56) == 1.0;
  }

  else
  {
    v249 = 0;
    v250 = 1;
  }

  vDSP_vclr(*v193, 1, (v193[1] - *v193) >> 2);
  vDSP_vclr(*a7, 1, (a7[1] - *a7) >> 2);
  LODWORD(__A.realp) = 0;
  vDSP_sve(*(*(this + 4) + 120), 1, &__A, *(this + 19));
  if (*(this + 19))
  {
    v251 = 0;
    v252 = 0;
    while (2)
    {
      v253 = *(this + 16);
      v254 = (*(*v194 + v251) + 4 * v253);
      v255 = (*(*a3 + v251) + 4 * v253);
      v256 = *(this + 11);
      v257 = *v254;
      v258 = *(this + 18) - 1;
      MEMORY[0x1E12BE7F0]();
      MEMORY[0x1E12BE7F0](v254, 1, v256, 1, v255, 1, v258);
      *v255 = v257 * *(v256 + 4 * v258);
      if (v249)
      {
        v259 = *(this + 16);
        v260 = ((*a5)[v251 / 8] + 4 * v259);
        v261 = (*(*a6 + v251) + 4 * v259);
        v262 = *(this + 11);
        v263 = *v260;
        v264 = *(this + 18) - 1;
        MEMORY[0x1E12BE7F0]();
        MEMORY[0x1E12BE7F0](v260, 1, v262, 1, v261, 1, v264);
        *v261 = v263 * *(v262 + 4 * v264);
      }

      else if ((v250 & 1) == 0 && 2 * *(this + 16))
      {
        memmove(*(*a6 + v251), (*a5)[v251 / 8], 4 * (2 * *(this + 16)));
      }

      v265 = v193[1] - *v193;
      v194 = v293;
      if (!v265)
      {
        goto LABEL_279;
      }

      v266 = *(*(*(this + 4) + 120) + 4 * v252);
      *&v297.realp = v266;
      v267 = *(this + 1);
      v268 = *(v267 + 16);
      if (v268 != 1)
      {
        if (!v268)
        {
          if (*(v267 + 8) == v252)
          {
            v269 = 1.0;
          }

          else
          {
            v269 = 0.0;
          }

LABEL_270:
          *&v297.realp = v269;
        }

        MEMORY[0x1E12BE940](*(*v293 + v251), 1, &v297, *(this + 158), 1, v265 >> 2);
        MEMORY[0x1E12BE5D0](*(this + 158), 1, *v193, 1, *v193, 1, (v193[1] - *v193) >> 2);
        v270 = a7[1];
        v271 = v270 - *a7;
        if (v270 != *a7)
        {
          if (v249)
          {
            MEMORY[0x1E12BE940]((*a5)[v251 / 8], 1, &v297, *(this + 158), 1, v271 >> 2);
            MEMORY[0x1E12BE5D0](*(this + 158), 1, *a7, 1, *a7, 1, (a7[1] - *a7) >> 2);
          }

          else
          {
            if (v252)
            {
              v272 = 1;
            }

            else
            {
              v272 = v250;
            }

            if ((v272 & 1) == 0)
            {
              memmove(*a7, **a5, v271);
            }
          }
        }

LABEL_279:
        ++v252;
        v273 = *(this + 19);
        v251 += 24;
        if (v252 >= v273)
        {
          v274 = *v281;
          if (*v281 > 0.0 && v274 != 1.0)
          {
            *&v297.realp = 1.0 / v274;
            if (v273)
            {
              v276 = 0;
              v277 = 0;
              do
              {
                MEMORY[0x1E12BE940](*(*a3 + v276), 1, &v297, *(*a3 + v276), 1, (*(*a3 + v276 + 8) - *(*a3 + v276)) >> 2);
                ++v277;
                v276 += 24;
              }

              while (v277 < *(this + 19));
            }

LABEL_293:
            v280 = v193[1] - *v193;
            if (v280)
            {
              MEMORY[0x1E12BE940](*v193, 1, &v297, *v193, 1, v280 >> 2);
            }
          }

          return;
        }

        continue;
      }

      break;
    }

    v269 = v266 / *&__A.realp;
    goto LABEL_270;
  }

  v278 = *v281;
  if (*v281 > 0.0 && v278 != 1.0)
  {
    *&v297.realp = 1.0 / v278;
    goto LABEL_293;
  }
}

void MicIssueDetectorCorev1::checkPrimaryMicEchoStatus(MicIssueDetectorCorev1 *this)
{
  v2 = *(this + 19);
  v3 = v2 - 1;
  v4 = *(*(this + 14) + 152);
  if (v4 >= v2 - 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v3 >= *(*(this + 1) + 64))
  {
    v6 = *(*(this + 1) + 64);
  }

  else
  {
    v6 = v2 - 1;
  }

  if (v2)
  {
    v7 = *(this + 130);
    v8 = *(*(this + 4) + 144);
    v9 = v7;
    do
    {
      v10 = *(this + 67);
      v11 = *v9;
      v12 = *v8++;
      v13 = exp(v12 * 0.230258509);
      *v9++ = ((1.0 - v10) * v13) + (v10 * v11);
      --v2;
    }

    while (v2);
    v14 = 0;
    v15 = 0;
    v17 = log10f(v7[v5] + 2.2204e-16) * 10.0;
    v18 = v17 > -60.0;
    v19 = 1;
    do
    {
      *(*(this + 134) + 4 * v14) = MicIssueDetectorCorev1::calculateMeanEnergyInFreqRange(this, *(this + 266), *(this + 267), *(this + 53), *(*(this + 134) + 4 * v14), v16, *(*(this + 37) + 24 * v14));
      vDSP_meanv((*(*(this + 49) + 24 * v14) + 4 * *(this + 266)), 1, (*(this + 137) + 4 * v14), (*(this + 267) - *(this + 266) + 1));
      v20 = log10f(*(*(this + 130) + 4 * v14) + 2.2204e-16) * 10.0;
      v21 = *(this + 4);
      v22 = v20 > *(*(v21 + 240) + 4 * v14);
      if (v14 != v5)
      {
        v23 = v21 + 24 * v14;
        v24 = (v17 - v20) > *(*(v23 + 264) + 4 * v5);
        v25 = *(this + 1);
        if (v17 <= -60.0)
        {
          v26 = v25 + 25;
        }

        else
        {
          v26 = (*(v23 + 456) + 4 * v5);
        }

        if (*(*(this + 137) + 4 * v5) >= v25[23])
        {
          v30 = 0;
        }

        else
        {
          v27 = *v26;
          v28 = *(this + 134);
          v16 = *(v28 + 4 * v5);
          v29 = v25[24];
          v30 = (*(v28 + 4 * v14) - v16) > v27;
          if (v16 >= v29)
          {
            v30 = 0;
          }
        }

        v15 |= v24;
        LODWORD(v2) = v30 + v2;
      }

      v19 &= v22;
      ++v14;
      v31 = *(this + 19);
    }

    while (v14 < v31);
    if ((v19 & 1) == 0)
    {
      v32 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v33 = log10f(*(*(this + 130) + 4 * v5) + 2.2204e-16);
    LODWORD(v31) = 0;
    v15 = 0;
    v18 = (v33 * 10.0) > -60.0;
    v21 = *(this + 4);
  }

  v32 = v15 & (*(*(v21 + 24) + 4 * v6) == 0.0);
LABEL_26:
  v34 = v31 - 1;
  v35 = v31 - 2;
  if (v35 <= 1)
  {
    v35 = 1;
  }

  if (v18)
  {
    v35 = v34;
  }

  if (v2 >= v35)
  {
    v32 = 1;
  }

  v36 = *(this + 1);
  v37 = *(this + 48);
  if (!*(this + 24))
  {
    *(v36 + 68) = v32;
    return;
  }

  if (*(this + 50) == v32)
  {
    v38 = *(this + 51);
    if (!v38)
    {
LABEL_40:
      *(v36 + 68) = v32;
      goto LABEL_41;
    }

    v37 = v38 - 1;
  }

  else if (!v32)
  {
    v37 = *(this + 49);
  }

  *(this + 51) = v37;
  if (!v37)
  {
    goto LABEL_40;
  }

LABEL_41:
  *(this + 50) = v32;
}

float MicIssueDetectorCorev1::calculateMeanEnergyInFreqRange(MicIssueDetectorCorev1 *this, unsigned int a2, unsigned int a3, float a4, float a5, float a6, const float *a7)
{
  v15 = 452053249;
  __N_4 = -220.0;
  v9 = a3 - a2;
  if (a3 <= a2)
  {
    v11 = -220.0;
  }

  else
  {
    __N = v9 + 1;
    MEMORY[0x1E12BE8A0](&a7[a2], 1, &v15, *(this + 152), 1, (v9 + 1), a4, a5, a6);
    vvlog10f(*(this + 152), *(this + 152), &__N);
    vDSP_meanv(*(this + 152), 1, &__N_4, __N);
    v11 = __N_4 * 10.0;
  }

  return ((1.0 - a4) * v11) + (a4 * a5);
}

uint64_t MicIssueDetectorCorev1::isMicBlocked(MicIssueDetectorCorev1 *this, unsigned int a2, float *a3, int a4)
{
  v4 = *(*(this + 14) + 120);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 24 * v4;
    v8 = 1;
    do
    {
      v9 = a3[v5 / 4];
      if (!a4)
      {
        v9 = -v9;
      }

      v10 = *(*(*(this + 103) + v6) + 4 * a2) < *(*(this + 121) + v5) && *(*(*(this + 100) + v6) + 4 * a2) < *(*(this + 124) + v5) && v9 > *(*(this + 127) + v5);
      v8 &= v10;
      v6 += 24;
      v5 += 4;
    }

    while (v7 != v6);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

float MicIssueDetectorCorev1::propagateStaticParameterChanges(MicIssueDetectorCorev1 *this, int32x2_t a2)
{
  *a2.i32 = *(this + 14) / *(this + 17);
  v51 = a2;
  v54 = *(this + 15);
  v3 = *(this + 1);
  *(this + 52) = expf(-1.0 / ((*(v3 + 28) * 0.001) * v54));
  *(this + 53) = expf(-1.0 / (v54 * (*(v3 + 32) * 0.001)));
  *(this + 54) = expf(-1.0 / (v54 * (*(v3 + 36) * 0.001)));
  v4 = vdup_n_s32(0x3A83126Fu);
  *(this + 164) = vcvt_u32_f32(vrndm_f32(vmul_n_f32(vmul_f32(*(v3 + 40), v4), v54)));
  v5 = exp(*(v3 + 20) * 0.115129255);
  *(this + 65) = v5;
  v6 = exp(*(v3 + 24) * 0.115129255);
  *(this + 66) = v6;
  *(this + 67) = expf(-1.0 / (v54 * (*(v3 + 72) * 0.001)));
  v9 = vcvt_u32_f32(vrndm_f32(vmul_n_f32(vmul_f32(*(v3 + 76), v4), v54)));
  *(this + 24) = v9;
  v7 = *(v3 + 84);
  v8 = roundf(fabsf(*(v3 + 88) / *v51.i32));
  *v9.i32 = *(this + 16);
  if (v8 > *v9.i32)
  {
    v8 = *(this + 16);
  }

  *(this + 267) = v8;
  v10 = v8;
  v11 = roundf(fabsf(v7 / *v51.i32));
  if (v11 > v10)
  {
    v11 = v10;
  }

  *(this + 266) = v11;
  v12 = *(this + 14);
  if (*(v12 + 120))
  {
    v13 = 0;
    v14 = *(this + 115);
    v15 = *(this + 118);
    v16 = *(this + 109);
    v17 = *(this + 112);
    do
    {
      v18 = roundf(fabsf(*(v14 + 4 * v13) / *v51.i32));
      if (v18 > *(this + 16))
      {
        v18 = *(this + 16);
      }

      *(v15 + 4 * v13) = v18;
      v19 = v18;
      v20 = roundf(fabsf(*(v16 + 4 * v13) / *v51.i32));
      if (v20 > v19)
      {
        v20 = v19;
      }

      *(v17 + 4 * v13++) = v20;
    }

    while (v13 < *(v12 + 120));
    *v9.i32 = *(this + 16);
  }

  v21 = roundf(fabsf(*v12 / *v51.i32));
  v22 = roundf(fabsf(*(v12 + 12) / *v51.i32));
  v23 = vdup_lane_s32(v51, 0);
  v24 = vrnda_f32(vabs_f32(vdiv_f32(*(v12 + 4), v23)));
  v25 = roundf(fabsf(*(v12 + 52) / *v51.i32));
  if (v25 > *v9.i32)
  {
    v25 = *v9.i32;
  }

  v26 = v25;
  v27.i32[1] = *(v12 + 48);
  v27.i32[0] = *(v12 + 16);
  v28 = vrnda_f32(vabs_f32(vdiv_f32(v27, v23)));
  v29.i32[0] = v9.i32[0];
  v29.f32[1] = v25;
  v30 = vcvtq_u64_f64(vcvtq_f64_f32(vbsl_s8(vcgt_f32(v28, v29), v29, v28)));
  v31 = vmovn_s64(v30);
  v32 = v30.u32[0];
  if (v22 > v32)
  {
    v22 = v32;
  }

  *(this + 39) = v26;
  *(this + 36) = v22;
  v33 = vcvtq_u64_f64(vcvtq_f64_f32(vbsl_s8(vcgt_f32(v24, __PAIR64__(LODWORD(v32), v9.u32[0])), __PAIR64__(LODWORD(v32), v9.u32[0]), v24)));
  v34 = vmovn_s64(v33);
  v35 = v33.u32[0];
  if (v21 > v35)
  {
    v21 = v35;
  }

  *(this + 33) = v21;
  *(this + 17) = v34;
  *(this + 148) = v31;
  v36 = vrnda_f32(vabs_f32(vdiv_f32(*(v12 + 92), v23)));
  v37 = vdup_lane_s32(v9, 0);
  *(this + 180) = vmovn_s64(vcvtq_u64_f64(vcvtq_f64_f32(vbsl_s8(vcgt_f32(v36, v37), v37, v36))));
  v38 = roundf(fabsf(*(v12 + 100) / *v51.i32));
  if (v38 <= *v9.i32)
  {
    *v9.i32 = v38;
  }

  *(this + 47) = *v9.i32;
  __asm { FMOV            V11.2S, #-1.0 }

  v44 = vdiv_f32(_D11, vmul_n_f32(vmul_f32(*(v12 + 72), v4), v54));
  v49 = v44.f32[0];
  v52 = expf(v44.f32[1]);
  *&v45 = expf(v49);
  *(&v45 + 1) = v52;
  *(this + 28) = v45;
  v46 = vdiv_f32(_D11, vmul_n_f32(vmul_f32(*(v12 + 36), v4), v54));
  v50 = v46.f32[0];
  v53 = expf(v46.f32[1]);
  *&v47 = expf(v50);
  *(&v47 + 1) = v53;
  *(this + 236) = v47;
  *(this + 55) = expf(-1.0 / (v54 * (*(v12 + 116) * 0.001)));
  *(this + 58) = floorf(v54 * (*(v12 + 80) * 0.001));
  result = floorf(v54 * (*(v12 + 44) * 0.001));
  *(this + 61) = result;
  return result;
}

_DWORD *MicIssueDetectorCorev1::reset(MicIssueDetectorCorev1 *this)
{
  v2 = 0;
  *(this + 172) = 0;
  *(this + 64) = 0;
  *(this + 25) = 0;
  LODWORD(v3) = *(this + 19);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(this + 18);
      v7 = *(this + 37);
      v8 = *(this + 34);
      __u = 0;
      std::vector<float>::assign((v7 + v4), v6, &__u, v2);
      __u = 0;
      std::vector<float>::assign((v8 + v4), v6, &__u, v9);
      ++v5;
      v3 = *(this + 19);
      v4 += 24;
    }

    while (v5 < v3);
  }

  if (*(this + 20))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 17);
      v13 = *(this + 40);
      __u = 0;
      std::vector<float>::assign((v13 + v10), v12, &__u, v2);
      ++v11;
      v10 += 24;
    }

    while (v11 < *(this + 20));
    LODWORD(v3) = *(this + 19);
  }

  v14 = v3;
  __u = -1017380864;
  std::vector<float>::assign(this + 61, v3, &__u, v2);
  __u = -1017380864;
  std::vector<float>::assign(this + 64, v14, &__u, v15);
  __u = -1017380864;
  std::vector<float>::assign(this + 67, v14, &__u, v16);
  v17 = *(this + 19);
  __u = 0;
  std::vector<float>::assign(this + 55, v17, &__u, v18);
  __u = 0;
  std::vector<float>::assign(this + 76, v17, &__u, v19);
  __u = 0;
  std::vector<float>::assign(this + 79, v17, &__u, v20);
  __u = 0;
  std::vector<float>::assign(this + 130, v17, &__u, v21);
  __u = 0;
  std::vector<float>::assign(this + 134, v17, &__u, v22);
  __u = 0;
  std::vector<float>::assign(this + 137, v17, &__u, v23);
  v24 = *(this + 19);
  __u = 0;
  std::vector<unsigned int>::assign((this + 680), v24, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((this + 656), v24, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((this + 704), v24, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((this + 728), v24, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((this + 752), v24, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((this + 776), v24, &__u);
  if (*(*(this + 14) + 120))
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(this + 19);
      v29 = *(this + 100);
      __u = -1017380864;
      std::vector<float>::assign((v29 + v26), v28, &__u, v25);
      ++v27;
      v26 += 24;
    }

    while (v27 < *(*(this + 14) + 120));
  }

  v30 = *(this + 19);
  __u = 0;
  std::vector<unsigned int>::assign((this + 1120), v30, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((this + 1144), v30, &__u);
  v31 = *(this + 19);
  __u = 0;
  return std::vector<float>::assign(this + 146, v31, &__u, v32);
}

void std::vector<unsigned int>::assign(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __u)
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

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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
    v12 = *__u;
    v13 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = begin + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095160)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v15 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v15 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095150)))).i32[1])
      {
        *v15 = v12;
        v15[1] = v12;
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = *__u;
    v22 = (4 * __n - (end - begin) - 4) >> 2;
    v23 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v24 = vdupq_n_s64(v22);
    v25 = end + 2;
    v26 = 1;
    do
    {
      v27 = vdupq_n_s64(v26 - 1);
      v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE095160)));
      if (vuzp1_s16(v28, *v24.i8).u8[0])
      {
        *(v25 - 2) = v21;
      }

      if (vuzp1_s16(v28, *&v24).i8[2])
      {
        *(v25 - 1) = v21;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE095150)))).i32[1])
      {
        *v25 = v21;
        v25[1] = v21;
      }

      v26 += 4;
      v25 += 4;
      v23 -= 4;
    }

    while (v23);
    v29 = &end[v20];
  }

  else
  {
    v29 = &begin[__n];
  }

  this->__end_ = v29;
}

_DWORD *MicIssueDetectorCorev1::initialize(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t *a4, float a5)
{
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 76) = a2;
  *(a1 + 80) = vcvts_n_f32_u32((a2 - 1) * a2, 1uLL);
  *(a1 + 64) = a3;
  *(a1 + 68) = 2 * a3;
  *(a1 + 72) = a3 + 1;
  *(a1 + 56) = a5;
  *(a1 + 60) = a5 / a3;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    a2 = *(a1 + 76);
  }

  v8 = a2;
  std::vector<std::vector<float>>::resize((a1 + 296), a2);
  std::vector<std::vector<float>>::resize((a1 + 272), v8);
  std::vector<std::vector<float>>::resize((a1 + 392), v8);
  if (*(a1 + 76))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 296);
      v14 = *(a1 + 272);
      v15 = *(a1 + 392);
      __u = 0;
      std::vector<float>::assign((v13 + v10), v12, &__u, v9);
      __u = 0;
      std::vector<float>::assign((v14 + v10), v12, &__u, v16);
      __u = 0;
      std::vector<float>::assign((v15 + v10), v12, &__u, v17);
      ++v11;
      v10 += 24;
    }

    while (v11 < *(a1 + 76));
  }

  v18 = *(a1 + 80);
  std::vector<std::vector<float>>::resize((a1 + 320), v18);
  std::vector<unsigned int>::resize((a1 + 344), v18);
  std::vector<unsigned int>::resize((a1 + 368), v18);
  if (*(a1 + 80))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(a1 + 68);
      v23 = *(a1 + 320);
      __u = 0;
      std::vector<float>::assign((v23 + v20), v22, &__u, v19);
      ++v21;
      v20 += 24;
    }

    while (v21 < *(a1 + 80));
  }

  std::vector<float>::resize((a1 + 1264), *(a1 + 68));
  v25 = *(a1 + 76);
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v27++;
      if (v27 < v25)
      {
        v29 = *(a1 + 344);
        v30 = *(a1 + 368);
        v31 = v27;
        do
        {
          *(v29 + 4 * v26) = v28;
          *(v30 + 4 * v26++) = v31++;
          v25 = *(a1 + 76);
        }

        while (v31 < v25);
      }
    }

    while (v27 < v25);
  }

  v32 = *(a1 + 72);
  __u = 0;
  std::vector<float>::assign((a1 + 416), v32, &__u, v24);
  __u = 0;
  std::vector<float>::assign((a1 + 88), v32, &__u, v33);
  v34 = *(a1 + 76);
  __u = -1017380864;
  std::vector<float>::assign((a1 + 560), v34, &__u, v35);
  __u = -1017380864;
  std::vector<float>::assign((a1 + 488), v34, &__u, v36);
  __u = -1017380864;
  std::vector<float>::assign((a1 + 512), v34, &__u, v37);
  __u = -1017380864;
  std::vector<float>::assign((a1 + 536), v34, &__u, v38);
  v39 = *(a1 + 76);
  __u = 0;
  std::vector<float>::assign((a1 + 440), v39, &__u, v40);
  __u = 0;
  std::vector<float>::assign((a1 + 608), v39, &__u, v41);
  __u = 0;
  std::vector<float>::assign((a1 + 632), v39, &__u, v42);
  __u = 0;
  std::vector<float>::assign((a1 + 848), v39, &__u, v43);
  __u = 0;
  std::vector<float>::assign((a1 + 584), v39, &__u, v44);
  __u = 0;
  std::vector<float>::assign((a1 + 1040), v39, &__u, v45);
  __u = 0;
  std::vector<float>::assign((a1 + 1072), v39, &__u, v46);
  __u = 0;
  std::vector<float>::assign((a1 + 1096), v39, &__u, v47);
  v48 = *(a1 + 76);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 680), v48, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 656), v48, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 704), v48, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 728), v48, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 752), v48, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 776), v48, &__u);
  v49 = *a4;
  if (*a4)
  {
    v50 = a4[1];
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    v51 = *(a1 + 120);
    *(a1 + 112) = v49;
    *(a1 + 120) = v50;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }
  }

  v52 = *(*(a1 + 112) + 120);
  std::vector<float>::resize((a1 + 872), v52);
  std::vector<float>::resize((a1 + 920), v52);
  std::vector<unsigned int>::resize((a1 + 896), v52);
  std::vector<unsigned int>::resize((a1 + 944), v52);
  std::vector<float>::resize((a1 + 968), v52);
  std::vector<float>::resize((a1 + 992), v52);
  std::vector<float>::resize((a1 + 1016), v52);
  v53 = *(a1 + 112);
  v54 = *(v53 + 120);
  if (v54 && (memmove(*(a1 + 872), *(v53 + 128), 4 * v54), v55 = *(a1 + 112), v56 = *(v55 + 120), v56) && (memmove(*(a1 + 920), (*(v55 + 128) + 4 * v56), 4 * v56), v57 = *(a1 + 112), v58 = *(v57 + 120), v58) && (memmove(*(a1 + 968), (*(v57 + 128) + 4 * (2 * v58)), 4 * v58), v59 = *(a1 + 112), v60 = *(v59 + 120), v60) && (memmove(*(a1 + 992), (*(v59 + 128) + 4 * (3 * v60)), 4 * v60), v61 = *(a1 + 112), v62 = *(v61 + 120), v62))
  {
    memmove(*(a1 + 1016), (*(v61 + 128) + 4 * (4 * v62)), 4 * v62);
    v63 = *(*(a1 + 112) + 120);
  }

  else
  {
    v63 = 0;
  }

  std::vector<std::vector<float>>::resize((a1 + 800), v63);
  std::vector<std::vector<float>>::resize((a1 + 824), v63);
  LODWORD(v65) = *(*(a1 + 112) + 120);
  if (v65)
  {
    v66 = 0;
    v67 = 0;
    do
    {
      v68 = *(a1 + 76);
      v69 = *(a1 + 800);
      __u = -1017380864;
      std::vector<float>::assign((v69 + v66), v68, &__u, v64);
      v70 = *(a1 + 76);
      v71 = *(a1 + 824);
      __u = 1065353216;
      std::vector<float>::assign((v71 + v66), v70, &__u, v72);
      ++v67;
      v65 = *(*(a1 + 112) + 120);
      v66 += 24;
    }

    while (v67 < v65);
  }

  v73 = *(a1 + 72);
  if (v73 <= v65)
  {
    v74 = v65;
  }

  else
  {
    v74 = v73;
  }

  __u = 0;
  std::vector<float>::assign((a1 + 1192), v74, &__u, v64);
  __u = 0;
  std::vector<float>::assign((a1 + 1216), v74, &__u, v75);
  __u = 0;
  std::vector<float>::assign((a1 + 1240), v74, &__u, v76);
  v77 = *(a1 + 76);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 1120), v77, &__u);
  __u = 0;
  std::vector<unsigned int>::assign((a1 + 1144), v77, &__u);
  v78 = *(a1 + 76);
  __u = 0;
  return std::vector<float>::assign((a1 + 1168), v78, &__u, v79);
}