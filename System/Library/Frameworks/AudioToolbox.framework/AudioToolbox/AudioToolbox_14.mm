char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(char **a1, char **a2, char **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a3, *v4, v4[1], (v4[1] - *v4) >> 2);
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<float>>::assign(uint64_t *a1, unint64_t a2, char **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v7;
    }

    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v8);
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v6) >> 3);
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v6) >> 3);
  }

  for (; v10; --v10)
  {
    if (v6 != a3)
    {
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v6 += 3;
  }

  if (a2 <= v9)
  {
    v14 = a1[1];
    v15 = *a1 + 24 * a2;
    if (v14 != v15)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v15);
    }

    a1[1] = v15;
  }

  else
  {
    v11 = a1[1];
    v12 = &v11[3 * (a2 - v9)];
    v13 = 24 * a2 - 24 * v9;
    do
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v11, *a3, a3[1], (a3[1] - *a3) >> 2);
      v11 += 3;
      v13 -= 24;
    }

    while (v13);
    a1[1] = v12;
  }
}

uint64_t AUSpeechEnhancer::ValidFormat(AUSpeechEnhancer *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    if ((a4->mFormatFlags & 0x20) != 0)
    {
      return 1;
    }

    result = a4->mChannelsPerFrame == 1;
  }

  if ((result & 1) == 0 && a4->mFormatID == 1718773105)
  {
    v6 = *&a4->mBytesPerPacket;
    v7[0] = *&a4->mSampleRate;
    v7[1] = v6;
    v8 = *&a4->mBitsPerChannel;
    DWORD2(v7[0]) = 1819304813;
    v9 = 0;
    LODWORD(result) = CAStreamBasicDescription::IdentifyCommonPCMFormat(v7, &v9, 0);
    if (v9 == 4)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAStreamBasicDescription::IdentifyCommonPCMFormat(_DWORD *a1, int *a2, BOOL *a3)
{
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v3 = a1[6];
  if (v3 != a1[4])
  {
    return 0;
  }

  v4 = a1[8];
  if (v3 < v4 >> 3)
  {
    return 0;
  }

  v5 = a1[7];
  if (!v5)
  {
    return 0;
  }

  v6 = a1[3];
  if ((v6 & 0x20) == 0)
  {
    v10 = v3 == v3 / v5 * v5;
    v3 /= v5;
    if (!v10)
    {
      return 0;
    }
  }

  v7 = 0;
  if ((v6 & 2) == 0 && 8 * v3 == v4)
  {
    if (v6)
    {
      if ((v6 & 0x1F84) != 0)
      {
        return 0;
      }

      v7 = 4 * (v3 == 8);
      if (v3 == 4)
      {
        v7 = 1;
      }
    }

    else if ((v6 & 4) != 0)
    {
      v9 = (v6 >> 7) & 0x3F;
      if (v9 == 24 && v3 == 4)
      {
        v7 = 3;
      }

      else if (v9 || v3 != 4)
      {
        v10 = v3 == 2 && v9 == 0;
        if (v10)
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 5;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (a3)
  {
    *a3 = (a1[3] & 0x20) == 0;
  }

  *a2 = v7;
  return 1;
}

uint64_t AUSpeechEnhancer::SupportedNumChannels(AUSpeechEnhancer *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSpeechEnhancer::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

double AUSpeechEnhancer::GetLatency(AUSpeechEnhancer *this)
{
  result = 0.0;
  if ((*(this + 545) & 1) == 0)
  {
    v2 = *(this + 84);
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    return v2 / *(Element + 80);
  }

  return result;
}

uint64_t AUSpeechEnhancer::GetParameterValueStrings(AUSpeechEnhancer *this, int a2, int a3, const __CFArray **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956418;
  }

  if (!a4)
  {
    return 0;
  }

  if (a3 == 4)
  {
    v6 = &xmmword_1E8669C08;
    goto LABEL_10;
  }

  if (a3 == 3)
  {
    v6 = &xmmword_1E8669BF8;
LABEL_10:
    v8 = *v6;
    v7 = CFArrayCreate(0, &v8, 2, 0);
    result = 0;
    *a4 = v7;
    return result;
  }

  return 4294956418;
}

uint64_t AUSpeechEnhancer::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result && *(this + 17) == 1)
  {
    ++*(this + 162);
  }

  return result;
}

uint64_t AUSpeechEnhancer::GetParameterInfo(AUSpeechEnhancer *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956418;
  }

  v4 = *(this + 82);
  if (a3 >= ((*(this + 83) - v4) >> 5))
  {
    return 4294956418;
  }

  v5 = v4 + 32 * a3;
  v6 = *(v5 + 12);
  buffer->unit = *(v5 + 8);
  buffer->minValue = *(v5 + 16);
  buffer->maxValue = *(v5 + 20);
  buffer->defaultValue = *(v5 + 24);
  v7 = v6 + 1098907648;
  buffer->flags = v6 + 1098907648;
  v8 = *(v5 + 28);
  if (v8 >= 1)
  {
    buffer->clumpID = v8;
    v7 |= 0x100000u;
  }

  v9 = *v5;
  buffer->cfNameString = *v5;
  buffer->flags = v7 | 0x8000000;
  CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
  return 0;
}

uint64_t AUSpeechEnhancer::GetParameterList(AUSpeechEnhancer *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    *a4 = 0;
    return 4294956430;
  }

  else
  {
    if (a3)
    {
      *(a3 + 18) = 0x1B0000001ALL;
      *(a3 + 6) = xmmword_1DE0A0CA4;
      *(a3 + 7) = unk_1DE0A0CB4;
      *(a3 + 8) = xmmword_1DE0A0CC4;
      *(a3 + 2) = xmmword_1DE0A0C64;
      *(a3 + 3) = unk_1DE0A0C74;
      *(a3 + 4) = xmmword_1DE0A0C84;
      *(a3 + 5) = unk_1DE0A0C94;
      *a3 = xmmword_1DE0A0C44;
      *(a3 + 1) = unk_1DE0A0C54;
      *(a3 + 38) = xmmword_1DE09BF30;
      *(a3 + 42) = xmmword_1DE09BF40;
      *(a3 + 46) = xmmword_1DE09BF70;
      *(a3 + 50) = xmmword_1DE09BF80;
    }

    *a4 = 54;
    if (*(this + 83) - *(this + 82) != 1728)
    {
      __assert_rtn("GetParameterList", "AUSpeechEnhancer.cpp", 312, "outNumParameters == mParameterInfoTable.size()");
    }

    return 0;
  }
}

ausdk::AUInputElement *AUSpeechEnhancer::Render(AUSpeechEnhancer *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, &v12, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(Element + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v14[0] = *(Element + 152) + 48;
    v11 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v11)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v13 = *(v11 + 152) + 48;
    return (*(*this + 184))(this, a2, a4, 1, v14, 1, &v13);
  }

  return result;
}

uint64_t AUSpeechEnhancer::ProcessMultipleBufferLists(AUSpeechEnhancer *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (!a3)
  {
    return 4294956428;
  }

  if (*(this + 135) != a3)
  {
    return 4294956422;
  }

  v10 = (a3 << *(this + 545));
  if (*(this + 544) == 1)
  {
    v11 = *(this + 133);
    if (v11)
    {
      v12 = 0;
      v13 = 16;
      do
      {
        v14 = *(&(*a5)->mNumberBuffers + v13);
        v15 = *(&(*a7)->mNumberBuffers + v13);
        if (v14 != v15 && v10 != 0)
        {
          memmove(v15, v14, 4 * v10);
          v11 = *(this + 133);
        }

        ++v12;
        v13 += 16;
      }

      while (v12 < v11);
    }

    return 0;
  }

  else
  {
    v19 = *(this + 162);
    if (v19 != *(this + 163))
    {
      *(this + 163) = v19;
      AUSpeechEnhancer::syncParametersWithCore(this);
    }

    v20 = *(this + 133);
    if (v20)
    {
      v21 = 0;
      v22 = 16 * v20;
      do
      {
        v23 = (*(this + 75) + v21);
        *v23 = (*a5)->mBuffers[v21 / 0x10].mData;
        v23[1] = v10;
        v21 += 16;
      }

      while (v22 != v21);
    }

    v24 = *(this + 134);
    if (v24)
    {
      v25 = 0;
      v26 = 16 * v24;
      do
      {
        v27 = (*(this + 78) + v25);
        *v27 = (*a7)->mBuffers[v25 / 0x10].mData;
        v27[1] = v10;
        v25 += 16;
      }

      while (v26 != v25);
    }

    SpeechEnhancerCore<float>::process(*(this + 74), this + 75, this + 78, *(this + 135), *(this + 545));
    updated = AUSpeechEnhancer::updateMeterDisplay(this, 1u, v28);
    v31 = AUSpeechEnhancer::updateMeterDisplay(this, 0x20u, v30);
    v33 = AUSpeechEnhancer::updateMeterDisplay(this, 0x16u, v32);
    v35 = AUSpeechEnhancer::updateMeterDisplay(this, 9u, v34);
    v37 = AUSpeechEnhancer::updateMeterDisplay(this, 0xFu, v36);
    v39 = AUSpeechEnhancer::updateMeterDisplay(this, 0x10u, v38);
    v41 = AUSpeechEnhancer::updateMeterDisplay(this, 0x1Au, v40);
    v43 = AUSpeechEnhancer::updateMeterDisplay(this, 0x1Bu, v42);
    v45 = AUSpeechEnhancer::updateMeterDisplay(this, 0x17u, v44);
    v47 = **(this + 74);
    if ((*(*(this + 74) + 8) - v47) <= 0x190)
    {
      __assert_rtn("getParameter", "SpeechEnhancerCore.h", 266, "index >= 0 && index < mParameterInfoTable.size()");
    }

    v17 = v31 | updated | v33 | v35 | v37 | v39 | v41 | v43 | v45;
    v46.n128_u32[0] = *(v47 + 412);
    if (v46.n128_f32[0] > 0.5)
    {
      for (i = 33; i != 49; ++i)
      {
        v17 = AUSpeechEnhancer::updateMeterDisplay(this, i, v46) | v17;
      }
    }
  }

  return v17;
}

float AUSpeechEnhancer::syncParametersWithCore(AUSpeechEnhancer *this)
{
  if (*(this + 83) != *(this + 82))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 74);
      v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v5 & 1) == 0)
      {
        abort();
      }

      Parameter = ausdk::AUElement::GetParameter(v4, v2);
      SpeechEnhancerCore<float>::setParameterLight(*v3, v3[1], v2++, Parameter);
    }

    while (v2 < (*(this + 83) - *(this + 82)) >> 5);
  }

  v7 = *(this + 74);
  v8 = *v7;
  v9 = *(v7 + 8) - *v7;
  if ((v9 >> 4) <= 6)
  {
    goto LABEL_45;
  }

  v10 = *(v7 + 108) / *(v7 + 312);
  *(v7 + 76) = expf(-1.0 / (v8[27] * v10));
  if (v9 == 112)
  {
    goto LABEL_45;
  }

  *(v7 + 64) = expf(-1.0 / (v10 * v8[31]));
  if ((v9 >> 4) <= 8)
  {
    goto LABEL_45;
  }

  *(v7 + 68) = expf(-1.0 / (v10 * v8[35]));
  v11 = exp(v8[23] * 0.230258509);
  *&v11 = v11;
  *(v7 + 72) = LODWORD(v11);
  *(v7 + 32) = (v8[19] + 0.5);
  *&v11 = v8[15] + 0.5;
  *(v7 + 24) = *&v11;
  SpeechEnhancerFilterBank<float>::createFilterBank(v7 + 1192, *&v11, v11);
  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v7 + 864), *(v7 + 1248), *(v7 + 1256), (*(v7 + 1256) - *(v7 + 1248)) >> 2);
  if (*(v7 + 8) - *v7 <= 0x120uLL)
  {
    goto LABEL_45;
  }

  v12 = *(v7 + 1224);
  v13 = (*(v7 + 1232) - v12) >> 2;
  if (*(v7 + 1232) == v12)
  {
LABEL_15:
    v14 = (*(v7 + 1232) - v12) >> 2;
  }

  else
  {
    v14 = 0;
    v15 = v13 <= 1 ? 1 : (*(v7 + 1232) - v12) >> 2;
    while (*(v12 + 4 * v14) <= *(*v7 + 300))
    {
      if (v15 == ++v14)
      {
        goto LABEL_15;
      }
    }
  }

  if (v13 >= v14)
  {
    v13 = v14;
  }

  *(v7 + 1192) = v13;
  SpeechEnhancerFilterBank<float>::calculateBandImportance(v7 + 1192);
  v16 = *(v7 + 1192);
  *(v7 + 40) = v16;
  v17 = *v7;
  if (*(v7 + 8) - *v7 <= 0x330uLL)
  {
    goto LABEL_45;
  }

  *(v7 + 168) = v17[207];
  *(v7 + 172) = v17[199];
  *(v7 + 176) = v17[203];
  __C = 0.0;
  vDSP_maxv(*(v7 + 1296), 1, &__C, v16);
  v18 = logf(1.0 - *(v7 + 200));
  v19 = *(v7 + 40);
  if (v19)
  {
    v20 = 0;
    v21 = *(v7 + 1296);
    v22 = *(v7 + 696);
    v23 = v18 / __C;
    do
    {
      *(v22 + 4 * v20) = 1.0 - expf(v23 * *(v21 + 4 * v20));
      ++v20;
    }

    while (v19 != v20);
  }

  else
  {
    v22 = *(v7 + 696);
  }

  MEMORY[0x1E12BE810](v22, 1, *(v7 + 720), 1, v19);
  v42 = 1065353216;
  MEMORY[0x1E12BE8A0](*(v7 + 720), 1, &v42, *(v7 + 744), 1, *(v7 + 40));
  v41 = 0x40000000;
  MEMORY[0x1E12BE8A0](*(v7 + 720), 1, &v41, *(v7 + 720), 1, *(v7 + 40));
  v40 = 1056964608;
  MEMORY[0x1E12BE940](*(v7 + 696), 1, &v40, *(v7 + 768), 1, *(v7 + 40));
  MEMORY[0x1E12BE7F0](*(v7 + 768), 1, *(v7 + 864), 1, *(v7 + 768), 1, *(v7 + 40));
  if (*(v7 + 8) - *v7 <= 0x130uLL)
  {
    goto LABEL_45;
  }

  v24 = exp(*(*v7 + 316) * 0.230258509);
  *(v7 + 80) = v24;
  *(v7 + 84) = 1.0 / v24;
  MEMORY[0x1E12BE940](*(v7 + 744), 1, v7 + 80, *(v7 + 792), 1, *(v7 + 40));
  __C = 1.0;
  vDSP_svdiv(&__C, *(v7 + 792), 1, *(v7 + 792), 1, *(v7 + 40));
  MEMORY[0x1E12BE910](*(v7 + 744), 1, v7 + 80, v7 + 84, *(v7 + 816), 1, *(v7 + 40));
  MEMORY[0x1E12BE5D0](*(v7 + 720), 1, *(v7 + 816), 1, *(v7 + 816), 1, *(v7 + 40));
  vDSP_vdiv(*(v7 + 816), 1, *(v7 + 768), 1, *(v7 + 816), 1, *(v7 + 40));
  v25 = *v7;
  v26 = *(v7 + 8) - *v7;
  if (*(v7 + 24))
  {
    if (v26 <= 0x1E0)
    {
      goto LABEL_45;
    }

    v27 = vcvtas_u32_f32(v25[123] / (*(v7 + 108) / *(v7 + 320)));
    if (*(v7 + 328) < v27)
    {
      v27 = *(v7 + 328);
    }
  }

  else
  {
    if (v26 <= 0x1E0)
    {
      goto LABEL_45;
    }

    v28 = *(v7 + 1224);
    v27 = (*(v7 + 1232) - v28) >> 2;
    if (*(v7 + 1232) != v28)
    {
      v29 = 0;
      if (v27 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = (*(v7 + 1232) - v28) >> 2;
      }

      while (*(v28 + 4 * v29) <= v25[123])
      {
        if (v30 == ++v29)
        {
          goto LABEL_39;
        }
      }

      v27 = v29;
    }

LABEL_39:
    if (v27 >= *(v7 + 40))
    {
      v27 = *(v7 + 40);
    }
  }

  *(v7 + 56) = v27;
  if ((v26 >> 4) <= 0x14 || (v31 = exp(v25[83] * 0.230258509), *(v7 + 92) = v31, (v26 >> 4) <= 0x1C))
  {
LABEL_45:
    __assert_rtn("parameterValue", "SpeechEnhancerCore.h", 278, "index >= 0 && index < mParameterInfoTable.size()");
  }

  v32 = exp(v25[115] * 0.230258509);
  *(v7 + 96) = v32;
  v33 = exp(v25[87] * 0.230258509);
  *(v7 + 100) = v33;
  v34 = exp(v25[119] * 0.230258509);
  *(v7 + 104) = v34;
  result = v25[43];
  v36 = *(v25 + 47);
  v37 = *(v25 + 51);
  v38 = *(v25 + 55);
  v39 = *(v25 + 59);
  *(v7 + 1396) = result;
  *(v7 + 1400) = v36;
  *(v7 + 1404) = v37;
  *(v7 + 1408) = v38;
  *(v7 + 1412) = v39;
  *(v7 + 355) = 1;
  *(v7 + 353) = 257;
  *(v7 + 344) = *(v7 + 48);
  return result;
}

void SpeechEnhancerCore<float>::process(void *a1, float ***a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = a2[1];
  v61 = a2;
  if ((v5 - v6) >> 4 != a1[42])
  {
    __assert_rtn("process", "SpeechEnhancerCore.h", 288, "input.size() == mNumChannels");
  }

  v7 = *a3;
  if (a3[1] - *a3 != v5 - v6)
  {
    __assert_rtn("process", "SpeechEnhancerCore.h", 289, "output.size() == mNumChannels");
  }

  if (a1[39] != a4)
  {
    __assert_rtn("process", "SpeechEnhancerCore.h", 290, "numFrames == mBlockSize");
  }

  v9 = v6[1];
  v60 = a4;
  v58 = a5;
  if (a5)
  {
    if (v9 >= 2 * a4)
    {
      if (v7[1] >= 2 * a4)
      {
        v59 = &v57;
        MEMORY[0x1EEE9AC00](a1);
        v11 = (&v57 - 2 * v10);
        MEMORY[0x1EEE9AC00](v12);
        v15 = &v57 - 2 * v14;
        if (v14)
        {
          v16 = *v61;
          v17 = a1[39];
          v18 = v15 + 1;
          p_imagp = &v11->imagp;
          v20 = *v13;
          do
          {
            v22 = *v16;
            v16 += 2;
            v21 = v22;
            v23 = &v22[v17];
            v24 = v22 - 1;
            if (v17 == -1)
            {
              v23 = v24;
            }

            *(p_imagp - 1) = v21;
            *p_imagp = v23;
            v25 = *v20;
            v20 += 2;
            *(v18 - 1) = v25;
            *v18 = v25 + 4 * v17;
            v18 += 2;
            p_imagp += 2;
            --v14;
          }

          while (v14);
        }

        v26 = v13;
        v27 = SpeechEnhancerCore<float>::processCore(a1, v11);
        if (a1[42])
        {
          v28 = v27;
          v29 = 0;
          v30 = (v15 + 1);
          v31 = &v11->imagp;
          do
          {
            v32 = *v28;
            v33 = *v31;
            v34 = **v31;
            v35 = a1[41] - 1;
            MEMORY[0x1E12BE7F0](*(v31 - 1), 1, *v28, 1, *(v30 - 1), 1, v35);
            v36 = *v30;
            v30 += 2;
            MEMORY[0x1E12BE7F0](v33, 1, v32, 1, v36, 1, v35);
            *v36 = v34 * *(v32 + 4 * v35);
            ++v29;
            v31 += 2;
          }

          while (a1[42] > v29);
        }

        goto LABEL_24;
      }

LABEL_36:
      __assert_rtn("process", "SpeechEnhancerCore.h", 292, "isFrequencyDomain ? (output[0].size() >= 2 * numFrames) : (output[0].size() >= numFrames)");
    }

LABEL_35:
    __assert_rtn("process", "SpeechEnhancerCore.h", 291, "isFrequencyDomain ? (input[0].size() >= 2 * numFrames) : (input[0].size() >= numFrames)");
  }

  if (v9 < a4)
  {
    goto LABEL_35;
  }

  if (v7[1] < a4)
  {
    goto LABEL_36;
  }

  v26 = a3;
  v59 = &v57;
  MEMORY[0x1EEE9AC00](a1);
  v38 = (&v57 - 2 * v37);
  if (a1[42])
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = (&v57 - 2 * v37);
    do
    {
      v43 = *(a1[138] + v39);
      v42->realp = *(a1[135] + v39);
      v42->imagp = v43;
      VPTimeFreqConverter::Analyze(*(a1[186] + 8 * v41++), (*v61)[v40], v42);
      v40 += 2;
      ++v42;
      v39 += 24;
    }

    while (a1[42] > v41);
  }

  v44 = SpeechEnhancerCore<float>::processCore(a1, v38);
  if (a1[42])
  {
    v45 = v44;
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = *v45;
      v49 = &v38->imagp;
      v50 = *v38->imagp;
      v51 = a1[41] - 1;
      MEMORY[0x1E12BE7F0](v38->realp, 1, *v45, 1, v38->realp, 1, v51);
      MEMORY[0x1E12BE7F0](*v49, 1, v48, 1, *v49, 1, v51);
      **v49 = v50 * *(v48 + 4 * v51);
      VPTimeFreqConverter::Synthesize(*(a1[189] + 8 * v47++), v38, (*v26)[v46]);
      v46 += 2;
      ++v38;
    }

    while (a1[42] > v47);
  }

LABEL_24:
  v52 = v60;
  if (a1[1] == *a1)
  {
    __assert_rtn("parameterValue", "SpeechEnhancerCore.h", 278, "index >= 0 && index < mParameterInfoTable.size()");
  }

  if (*(*a1 + 12) > 0.5)
  {
    v53 = a1[42];
    if (v53)
    {
      v54 = 0;
      v55 = 0;
      v56 = 4 * (v60 << v58);
      do
      {
        if (v52)
        {
          memmove((*v26)[v54], (*v61)[v54], v56);
          v53 = a1[42];
        }

        ++v55;
        v54 += 2;
      }

      while (v53 > v55);
    }
  }

  ++a1[6];
}

uint64_t AUSpeechEnhancer::updateMeterDisplay(AUSpeechEnhancer *this, unsigned int a2, __n128 a3)
{
  v4 = **(this + 74);
  if (a2 >= ((*(*(this + 74) + 8) - v4) >> 4))
  {
    __assert_rtn("getParameter", "SpeechEnhancerCore.h", 266, "index >= 0 && index < mParameterInfoTable.size()");
  }

  a3.n128_u32[0] = *(v4 + 16 * a2 + 12);
  v5 = *(*this + 152);

  return v5(a3);
}

uint64_t SpeechEnhancerCore<float>::processCore(uint64_t a1, DSPSplitComplex *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if ((v3 >> 4) <= 1)
  {
    goto LABEL_162;
  }

  if (v2[7] <= 0.5)
  {
    if ((v3 >> 4) <= 0x34 || v3 == 848)
    {
      goto LABEL_162;
    }

    if (v2[211] < v2[215])
    {
      v6 = exp((*(a1 + 176) / (*(a1 + 108) / *(a1 + 312))) * 0.230258509);
      *&__A.realp = v6;
      MEMORY[0x1E12BE940](*(a1 + 936), 1, &__A, *(a1 + 360), 1, *(a1 + 328));
      v7 = *(a1 + 64);
      v8 = *(a1 + 68);
      v123 = 1.0 - v7;
      __C[0] = v7;
      v121 = 1.0 - v8;
      v122 = v8;
      v9 = *(a1 + 48);
      v10 = *(a1 + 108) / *(a1 + 312);
      v11 = *(a1 + 224);
      if ((v9 / v10) < v11)
      {
        v120 = 1.0 - expf(((-3.0 / v11) * v9) / v10);
        MEMORY[0x1E12BE940](*(a1 + 648), 1, &v120, *(a1 + 648), 1, *(a1 + 328));
      }

      v12 = *(a1 + 936);
      v13 = *(a1 + 648);
      if (v7 == v8)
      {
        MEMORY[0x1E12BE930](v12, 1, __C, v13, 1, &v123, v12, 1, *(a1 + 328));
      }

      else
      {
        MEMORY[0x1E12BE930](v12, 1, __C, v13, 1, &v123, *(a1 + 984), 1, *(a1 + 328));
        MEMORY[0x1E12BE930](*(a1 + 936), 1, &v122, *(a1 + 648), 1, &v121, *(a1 + 1008), 1, *(a1 + 328));
        v14 = *(a1 + 328);
        if (v14)
        {
          v15 = 0;
          v16 = *(a1 + 648);
          v17 = *(a1 + 936);
          do
          {
            if (*(v16 + 4 * v15) <= *(v17 + 4 * v15))
            {
              v18 = (a1 + 1008);
            }

            else
            {
              v18 = (a1 + 984);
            }

            *(v17 + 4 * v15) = *(*v18 + 4 * v15);
            ++v15;
          }

          while (v14 != v15);
        }
      }

      v19 = *(a1 + 48) / (*(a1 + 108) / *(a1 + 312));
      if (v19 > *(a1 + 224))
      {
        if (*(a1 + 8) - *a1 <= 0x70uLL)
        {
          goto LABEL_162;
        }

        if (v19 > (*(*a1 + 124) * 3.0))
        {
          vDSP_vmin(*(a1 + 936), 1, *(a1 + 360), 1, *(a1 + 936), 1, *(a1 + 328));
        }
      }

      vDSP_vclip(*(a1 + 936), 1, (a1 + 160), (a1 + 164), *(a1 + 936), 1, *(a1 + 328));
      v2 = *a1;
      v3 = *(a1 + 8) - *a1;
    }
  }

  if (v3 <= 0x180)
  {
    goto LABEL_162;
  }

  if (v2[99] <= 0.5)
  {
    v25 = *(a1 + 1032);
    v26 = *(a1 + 312);
    __A = *a2;
    vDSP_zvmags(&__A, 1, v25, 1, v26);
    (*(**(a1 + 1480) + 24))(*(a1 + 1480), *(a1 + 1032), *(a1 + 1056), *(a1 + 328));
    MEMORY[0x1E12BE9A0](*(a1 + 1056), 1, *(a1 + 1032), 1, *(a1 + 1032), 1, *(a1 + 328));
    vDSP_vthr(*(a1 + 1032), 1, &AlgorithmUtils::kepsf, *(a1 + 1032), 1, *(a1 + 328));
    v27 = *(a1 + 1032);
    *v27 = 0;
    v28 = *(a1 + 328);
    v27[v28 - 1] = 0;
    if (v28)
    {
      memmove(*(a1 + 360), v27, 4 * v28);
      v29 = *(a1 + 328);
    }

    else
    {
      v29 = 0;
    }

    LODWORD(__A.realp) = 0;
    vDSP_sve(*(*(a1 + 1480) + 112), 1, &__A, v29);
    if (*(a1 + 8) - *a1 <= 0x20uLL)
    {
      goto LABEL_162;
    }

    v38 = *(a1 + 328);
    if ((*&__A.realp / v38) > *(*a1 + 44))
    {
      __C[0] = 1.0 - *(a1 + 76);
      MEMORY[0x1E12BE930](*(a1 + 912), 1, a1 + 76, *(a1 + 360), 1, __C, *(a1 + 912), 1, v38);
      v38 = *(a1 + 328);
    }

    MEMORY[0x1E12BE940](*(a1 + 912), 1, a1 + 72, *(a1 + 672), 1, v38);
    v34 = *(a1 + 672);
    v36 = *(a1 + 328);
    p_A = (a1 + 140);
    v35 = v34;
  }

  else
  {
    v20 = *(a1 + 1032);
    v21 = *(a1 + 312);
    __A = *a2;
    vDSP_zvmags(&__A, 1, v20, 1, v21);
    v22 = *(a1 + 1032);
    *v22 = 0;
    v23 = *(a1 + 328);
    v22[v23 - 1] = 0;
    if (v23)
    {
      memmove(*(a1 + 360), v22, 4 * v23);
      v24 = *(a1 + 328);
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x1E12BE940](*(a1 + 360), 1, a1 + 72, *(a1 + 360), 1, v24);
    vDSP_sve(*(a1 + 360), 1, (a1 + 136), *(a1 + 328));
    v31 = *(a1 + 136);
    v30 = *(a1 + 140);
    v32 = exp(*(a1 + 196) * 0.230258509);
    if ((v31 * v30) <= v32)
    {
      v33 = *(a1 + 132);
    }

    else
    {
      v33 = (v31 * (1.0 - *(a1 + 76))) + (*(a1 + 76) * *(a1 + 132));
      *(a1 + 132) = v33;
    }

    *&__A.realp = (v30 * v33) / 10000000.0;
    v34 = *(a1 + 960);
    v35 = *(a1 + 672);
    v36 = *(a1 + 328);
    p_A = &__A;
  }

  MEMORY[0x1E12BE940](v34, 1, p_A, v35, 1, v36);
  v39 = SPLMeter<float,AWeight>::process<std::vector<float>>(a1 + 1448, *(a1 + 672), *(a1 + 680));
  v40 = SPLMeter<float,AWeight>::process<std::vector<float>>(a1 + 1448, *(a1 + 936), *(a1 + 944));
  *(a1 + 148) = v40;
  *(a1 + 128) = v39 - v40;
  if (vabds_f32(v40, *(a1 + 152)) > *(a1 + 208) || vabds_f32(v39, *(a1 + 156)) > *(a1 + 204) || *(a1 + 140) != *(a1 + 144))
  {
    *(a1 + 353) = 1;
    *(a1 + 344) = *(a1 + 48);
    *(a1 + 152) = v40;
    *(a1 + 156) = v39;
    *(a1 + 144) = *(a1 + 140);
    goto LABEL_41;
  }

  v46 = *(a1 + 108) / *(a1 + 312);
  if (((*(a1 + 48) - *(a1 + 344)) / v46) <= *(a1 + 212))
  {
    if (*(a1 + 353))
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(a1 + 353) = 0;
  }

  if ((*(a1 + 354) & 1) == 0)
  {
    v49 = *(a1 + 112);
    goto LABEL_70;
  }

LABEL_41:
  if (*(a1 + 8) - *a1 <= 0x1A0uLL)
  {
    goto LABEL_162;
  }

  v41 = *(*a1 + 428);
  if (*(a1 + 1436) == 1)
  {
    v42 = *(a1 + 1396);
  }

  else
  {
    *(a1 + 1432) = v41;
    *(a1 + 1424) = v41;
    v42 = *(a1 + 1396);
    *(a1 + 1428) = v42;
    *(a1 + 1436) = 1;
  }

  if (v42 > v40)
  {
    *(a1 + 1432) = v41;
    *(a1 + 1437) = 0;
    goto LABEL_47;
  }

  if (*(a1 + 1437) != 1)
  {
    goto LABEL_51;
  }

  if (*(a1 + 1440) > v40)
  {
    *(a1 + 1437) = 0;
LABEL_51:
    v44 = 12;
    if (*(a1 + 1400) < v40)
    {
      v44 = 16;
    }

    v43 = (*(a1 + 1432) + (*(a1 + 1392 + v44) * (v40 - *(a1 + 1428)))) + (v41 - *(a1 + 1424));
    *(a1 + 1432) = v43;
    if (v43 > *(a1 + 1412))
    {
      *(a1 + 1437) = 1;
      *(a1 + 1440) = v40;
    }

    goto LABEL_60;
  }

  v45 = *(a1 + 1424);
  if (v45 <= v41)
  {
    v43 = *(a1 + 1432);
  }

  else
  {
    v43 = (v41 - v45) + *(a1 + 1432);
    *(a1 + 1432) = v43;
    *(a1 + 1437) = 0;
  }

LABEL_60:
  v47 = *(a1 + 1412);
  if (v43 > v47)
  {
    *(a1 + 1432) = v47;
    v43 = v47;
    goto LABEL_64;
  }

  if (v43 >= v41)
  {
    goto LABEL_64;
  }

  *(a1 + 1432) = v41;
LABEL_47:
  v43 = v41;
LABEL_64:
  *(a1 + 1424) = v41;
  *(a1 + 1428) = v40;
  v48 = v43 - v41;
  if ((v43 - v41) > *(a1 + 1392))
  {
    v48 = *(a1 + 1392);
  }

  if ((LODWORD(v48) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = v48;
  }

  *(a1 + 1420) = v49;
  *(a1 + 112) = v49;
  v46 = *(a1 + 108) / *(a1 + 312);
LABEL_70:
  v50 = *(a1 + 116);
  v51 = *(a1 + 168) / v46;
  if ((v49 - v50) <= v51)
  {
    v52 = 0;
  }

  else
  {
    v49 = v50 + v51;
    *(a1 + 112) = v50 + v51;
    v52 = 1;
  }

  v53 = exp(v49 * 0.230258509);
  *(a1 + 120) = v53;
  *(a1 + 354) = v52;
  *(a1 + 116) = v49;
  v54 = exp(v49 * 0.115129255);
  *(a1 + 124) = v54;
  v113 = (a1 + 124);
  v114 = (a1 + 328);
  MEMORY[0x1E12BE940](*(a1 + 672), 1, a1 + 120, *(a1 + 672), 1, *(a1 + 328));
  if (*(a1 + 48) % *(a1 + 240))
  {
    goto LABEL_100;
  }

  v55 = SPLMeter<float,AWeight>::process<std::vector<float>>(a1 + 1448, *(a1 + 672), *(a1 + 680));
  vDSP_mmul(*(a1 + 1344), 1, *(a1 + 672), 1, *(a1 + 384), 1, *(a1 + 1192), 1uLL, *(a1 + 328));
  vDSP_mmul(*(a1 + 1344), 1, *(a1 + 936), 1, *(a1 + 408), 1, *(a1 + 1192), 1uLL, *(a1 + 328));
  v56 = *a1;
  if (*(a1 + 8) - *a1 <= 0x1F0uLL)
  {
    goto LABEL_162;
  }

  v57 = (a1 + 360);
  if (*(a1 + 148) >= v56[127] && v56[71] <= 0.5)
  {
    if (*(a1 + 353) & 1) != 0 || (*(a1 + 354) & 1) != 0 || (*(a1 + 355))
    {
      LODWORD(__A.realp) = 0;
      v87 = 40;
      if (*(a1 + 24) == 1)
      {
        v87 = 328;
      }

      v88 = 384;
      if (*(a1 + 24) == 1)
      {
        v88 = 672;
      }

      v89 = 1;
      vDSP_sve(*(a1 + v88), 1, &__A, *(a1 + v87));
      v90 = (a1 + 40);
      MEMORY[0x1E12BE780](*(a1 + 408), 1, *(a1 + 792), 1, *(a1 + 384), 1, *(a1 + 432), 1, *(a1 + 40));
      MEMORY[0x1E12BE8F0](*(a1 + 384), 1, a1 + 84, *(a1 + 408), 1, *(a1 + 408), 1, *(a1 + 40));
      __C[0] = 0.0;
      vDSP_sve(*(a1 + 432), 1, __C, *(a1 + 40));
      v123 = 1.0 / (__C[0] + 2.2204e-16);
      MEMORY[0x1E12BE940](*(a1 + 432), 1, &v123, *(a1 + 432), 1, *(a1 + 40));
      MEMORY[0x1E12BE940](*(a1 + 408), 1, &v123, *(a1 + 408), 1, *(a1 + 40));
      MEMORY[0x1E12BE7F0](*(a1 + 432), 1, *(a1 + 408), 1, *(a1 + 456), 1, *(a1 + 40));
      MEMORY[0x1E12BE990](*(a1 + 432), 1, *(a1 + 480), 1, *(a1 + 40));
      MEMORY[0x1E12BE990](*(a1 + 408), 1, *(a1 + 408), 1, *(a1 + 40));
      v91 = v55 - *(a1 + 148);
      v92 = v91 * (1.0 / (log10f(*(a1 + 80) + 2.2204e-16) * 10.0));
      v58 = 0.0;
      if (v92 < 0.0)
      {
        v92 = 0.0;
      }

      if (v92 > 1.0)
      {
        v92 = 1.0;
      }

      v122 = v92;
      MEMORY[0x1E12BE940](*(a1 + 816), 1, &v122, *(a1 + 840), 1, *v90);
      MEMORY[0x1E12BE810](*(a1 + 840), 1, *(a1 + 840), 1, *v90);
      v120 = 0.0;
      v121 = 0.0;
      v93 = *v90;
      if (*v90)
      {
        v94 = *(a1 + 408);
        if (*v94 <= 2.2204e-16 || (v95 = *(a1 + 432), *v95 <= 2.2204e-16))
        {
          v89 = 0;
        }

        else
        {
          v96 = 0;
          v97 = 1;
          while (1)
          {
            if (v93 == v97)
            {
              v98 = *v90;
              goto LABEL_136;
            }

            v98 = v97;
            ++v96;
            if (v94[v97] <= 2.2204e-16)
            {
              break;
            }

            v99 = v95[v97++];
            if (v99 <= 2.2204e-16)
            {
              goto LABEL_136;
            }
          }

          v98 = v96;
LABEL_136:
          v89 = v93 <= v98;
        }
      }

      *(a1 + 352) = v89;
      if ((*(a1 + 184) * *&__A.realp) != INFINITY)
      {
        v100 = 0;
        v101 = 0.0;
        v102 = -1000000.0;
        do
        {
          if (v100 > *(a1 + 232))
          {
            break;
          }

          v121 = (v101 + v102) * 0.5;
          MEMORY[0x1E12BE8F0](*(a1 + 432), 1, &v121, *(a1 + 840), 1, *(a1 + 504), 1, *(a1 + 40));
          MEMORY[0x1E12BE7F0](*(a1 + 408), 1, *(a1 + 504), 1, *(a1 + 528), 1, *(a1 + 40));
          MEMORY[0x1E12BE780](*(a1 + 456), 1, *(a1 + 768), 1, *(a1 + 528), 1, *(a1 + 528), 1, *(a1 + 40));
          MEMORY[0x1E12BE7F0](*(a1 + 504), 1, *(a1 + 456), 1, *(a1 + 576), 1, *(a1 + 40));
          MEMORY[0x1E12BE7F0](*(a1 + 576), 1, *(a1 + 720), 1, *(a1 + 576), 1, *(a1 + 40));
          MEMORY[0x1E12BE7F0](*(a1 + 504), 1, *(a1 + 480), 1, *(a1 + 552), 1, *(a1 + 40));
          MEMORY[0x1E12BE7F0](*(a1 + 552), 1, *(a1 + 744), 1, *(a1 + 552), 1, *(a1 + 40));
          MEMORY[0x1E12BE7F0](*(a1 + 552), 1, *(a1 + 528), 1, *(a1 + 504), 1, *(a1 + 40));
          v119 = 1082130432;
          MEMORY[0x1E12BE940](*(a1 + 504), 1, &v119, *(a1 + 504), 1, *(a1 + 40));
          MEMORY[0x1E12BE990](*(a1 + 576), 1, *(a1 + 552), 1, *(a1 + 40));
          MEMORY[0x1E12BE9A0](*(a1 + 504), 1, *(a1 + 552), 1, *(a1 + 504), 1, *(a1 + 40));
          __B = 0.0;
          vDSP_vthr(*(a1 + 504), 1, &__B, *(a1 + 504), 1, *(a1 + 40));
          v117 = *(a1 + 40);
          vvsqrtf(*(a1 + 504), *(a1 + 504), &v117);
          MEMORY[0x1E12BE9A0](*(a1 + 576), 1, *(a1 + 504), 1, *(a1 + 504), 1, *(a1 + 40));
          vDSP_vdiv(*(a1 + 504), 1, *(a1 + 528), 1, *(a1 + 504), 1, *(a1 + 40));
          v116 = 0x40000000;
          MEMORY[0x1E12BE940](*(a1 + 504), 1, &v116, *(a1 + 504), 1, *(a1 + 40));
          v103 = *(a1 + 40);
          if ((*(a1 + 352) & 1) == 0 && v103)
          {
            v104 = 0;
            v105 = *(a1 + 408);
            do
            {
              if (*(v105 + 4 * v104) <= 2.2204e-16 || *(*(a1 + 432) + 4 * v104) <= 2.2204e-16)
              {
                *(*(a1 + 504) + 4 * v104) = 1065353216;
              }

              ++v104;
            }

            while (v103 != v104);
          }

          vDSP_vthr(*(a1 + 504), 1, &__B, *(a1 + 504), 1, v103);
          v106 = (a1 + 504);
          v107 = (a1 + 40);
          v108 = (a1 + 384);
          if (*(a1 + 24) == 1)
          {
            SpeechEnhancerFilterBank<float>::convertFilterBankToLinear((a1 + 1192), *(a1 + 504), *(a1 + 360), *(a1 + 32));
            v108 = (a1 + 672);
            v106 = (a1 + 360);
            v107 = (a1 + 328);
          }

          ++v100;
          vDSP_vclip(*v106, 1, (a1 + 92), (a1 + 100), *v106, 1, *(a1 + 56));
          vDSP_vclip(&(*v106)[*(a1 + 56)], 1, (a1 + 96), (a1 + 104), &(*v106)[*(a1 + 56)], 1, *v107 - *(a1 + 56));
          vDSP_dotpr(*v106, 1, *v108, 1, &v120, *v107);
          v109 = vabds_f32(v120, *&__A.realp);
          if (v120 <= *&__A.realp)
          {
            v102 = v121;
          }

          else
          {
            v101 = v121;
          }
        }

        while (v109 > (*(a1 + 184) * *&__A.realp));
        v58 = v100;
        v57 = (a1 + 360);
      }

      if (!*(a1 + 24))
      {
        SpeechEnhancerFilterBank<float>::convertFilterBankToLinear((a1 + 1192), *(a1 + 504), *(a1 + 360), *(a1 + 32));
      }

      vvsqrtf(*(a1 + 360), *(a1 + 360), v114);
      if (*(a1 + 8) - *a1 <= 0x1F0uLL)
      {
LABEL_162:
        __assert_rtn("parameterValue", "SpeechEnhancerCore.h", 278, "index >= 0 && index < mParameterInfoTable.size()");
      }

      v110 = (*(a1 + 148) - *(*a1 + 508)) * 0.25;
      if (v110 < 1.0)
      {
        v111 = *v114;
        if (*v114)
        {
          v112 = *v57;
          do
          {
            *v112 = powf(*v112, v110);
            ++v112;
            --v111;
          }

          while (v111);
        }
      }
    }

    else
    {
      v58 = 0.0;
      if (*v114)
      {
        memmove(*(a1 + 360), *(a1 + 888), 4 * *v114);
      }
    }
  }

  else
  {
    LODWORD(__A.realp) = 1065353216;
    vDSP_vfill(&__A, *(a1 + 360), 1, *(a1 + 328));
    vDSP_vfill(&__A, *(a1 + 888), 1, *(a1 + 328));
    v58 = 0.0;
  }

  v59 = *(a1 + 360);
  v60 = (*(a1 + 368) - v59) >> 2;
  LODWORD(__A.realp) = 0;
  vDSP_sve(v59, 1, &__A, v60);
  if ((__A.realp & 0x7FFFFFFF) >= 0x7F800000)
  {
    LODWORD(__A.realp) = 1065353216;
    vDSP_vfill(&__A, *v57, 1, *v114);
  }

  *(a1 + 355) = 0;
  v61 = *(a1 + 328);
  if (!v61)
  {
    goto LABEL_88;
  }

  v62 = 0;
  v63 = *(a1 + 360);
  v64 = *(a1 + 888);
  v65 = *(a1 + 240);
  v66 = *(a1 + 312);
  do
  {
    v67 = v64[v62];
    v68 = v63[v62] / v67;
    v69 = exp(((*(a1 + 172) * v65) / (*(a1 + 108) / v66)) * 0.115129255);
    if (v68 > v69)
    {
      v63[v62] = v67 * v69;
      *(a1 + 355) = 1;
    }

    ++v62;
  }

  while (v61 != v62);
  memmove(v64, v63, 4 * v61);
  if (*v114)
  {
    memmove(*(a1 + 888), *(a1 + 360), 4 * *v114);
    v70 = *(a1 + 328);
    v71 = (a1 + 600);
    if (v70)
    {
      memmove(*v71, *v57, 4 * v70);
    }
  }

  else
  {
LABEL_88:
    v71 = (a1 + 600);
  }

  v72 = *a1;
  v73 = *(a1 + 8) - *a1;
  if ((v73 >> 4) <= 0x16)
  {
    goto LABEL_162;
  }

  v72[91] = v55;
  if (v73 == 368)
  {
    goto LABEL_162;
  }

  v72[95] = v58;
  if ((v73 >> 4) <= 0x19)
  {
    goto LABEL_162;
  }

  if (v72[103] > 0.5)
  {
    v74 = a1 + 1128;
    vDSP_vclr((a1 + 1128), 1, 0x10uLL);
    v75 = *(a1 + 328);
    if (v75)
    {
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = *(a1 + 624);
      do
      {
        if (*(v79 + 4 * v76) >= *(a1 + 248 + 4 * v78))
        {
          v80 = *(v74 + 4 * v78) / fmaxf(v77, 1.0);
          *(v74 + 4 * v78) = v80;
          if (v78 + 33 >= ((*(a1 + 8) - *a1) >> 4))
          {
            goto LABEL_162;
          }

          *(*a1 + 16 * (v78 + 33) + 12) = v80;
          if (++v78 == 16)
          {
            break;
          }

          v77 = 0;
        }

        *(v74 + 4 * v78) = *(v74 + 4 * v78) + (log10f(*(*v71 + v76) + 2.2204e-16) * 20.0);
        ++v77;
        ++v76;
      }

      while (v75 != v76);
    }
  }

LABEL_100:
  if (*(a1 + 8) - *a1 <= 0x110uLL)
  {
    goto LABEL_162;
  }

  if (*(*a1 + 284) <= 0.5)
  {
    MEMORY[0x1E12BE940](*(a1 + 600), 1, v113, *(a1 + 360), 1, *(a1 + 328));
    v81 = *(a1 + 328);
    if (v81)
    {
      memmove(*(a1 + 1032), *(a1 + 360), 4 * v81);
    }
  }

  else
  {
    LODWORD(__A.realp) = *v113;
    vDSP_vfill(&__A, *(a1 + 1032), 1, *v114);
  }

  v82 = *a1;
  v83 = (*(a1 + 8) - *a1) >> 4;
  if (v83 <= 9)
  {
    goto LABEL_162;
  }

  v82[39] = *(a1 + 148);
  if (v83 <= 0xF)
  {
    goto LABEL_162;
  }

  v84 = *(a1 + 128);
  *(v82 + 63) = v84;
  if (v83 <= 0x20)
  {
    goto LABEL_162;
  }

  LOBYTE(v84) = *(a1 + 353);
  v82[131] = v84;
  v85 = *(a1 + 112);
  v82[67] = v85;
  v82[111] = v85 + v82[107];
  return a1 + 1032;
}

float SPLMeter<float,AWeight>::process<std::vector<float>>(uint64_t a1, const float *__A, uint64_t a3)
{
  v3 = a3 - __A;
  v4 = *(a1 + 8);
  if (v3 != *(a1 + 16) - v4)
  {
    __assert_rtn("process", "SPLMeter.h", 98, "a.size() == mWeightCurve.size()");
  }

  __C = 0.0;
  vDSP_dotpr(__A, 1, v4, 1, &__C, v3 >> 2);
  return *a1 + (log10f(fabsf(__C) + 0.00000011921) * 10.0);
}

void SpeechEnhancerFilterBank<float>::convertFilterBankToLinear(unint64_t *a1, const float *__A, float *__C, uint64_t a4)
{
  v8 = a1[4];
  v9 = *a1;
  v10 = a1[10];
  v11 = a1[11];
  v12 = v11 - v10;
  if (a4)
  {
    v13 = v9 - 2;
    if (v9 < 2)
    {
      vDSP_vfill(__A, __C, 1, v11 - v10);
    }

    else
    {
      v14 = (*v8 + v8[1]) * 0.5;
      v15 = 0;
      if (*v10 > v14)
      {
        v16 = v8 + 2;
        while (v13 != v15)
        {
          ++v15;
          v14 = (*v16 + *(v16 - 1)) * 0.5;
          ++v16;
          if (*v10 <= v14)
          {
            goto LABEL_11;
          }
        }

        v14 = v8[v9 - 1];
        v15 = v9 - 1;
      }

LABEL_11:
      if (v11 == v10)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        while (v10[v17] < *v8)
        {
          __C[v17++] = 0.0;
          if (v12 == v17)
          {
            return;
          }
        }
      }

      if (v17 >= v12)
      {
LABEL_27:
        v21 = v12 - v17;
        if (v12 > v17)
        {
          v22 = 0;
          v23 = vdupq_n_s64(v21 - 1);
          v24 = &__C[v17 + 2];
          do
          {
            v25 = vdupq_n_s64(v22);
            v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1DE095160)));
            if (vuzp1_s16(v26, *v23.i8).u8[0])
            {
              *(v24 - 2) = 1.0;
            }

            if (vuzp1_s16(v26, *&v23).i8[2])
            {
              *(v24 - 1) = 1.0;
            }

            if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_1DE095150)))).i32[1])
            {
              *v24 = 1.0;
              v24[1] = 1.0;
            }

            v22 += 4;
            v24 += 4;
          }

          while (((v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v22);
        }
      }

      else
      {
        v18 = v9 - 1;
        do
        {
          v19 = v10[v17];
          if (v19 > v14)
          {
            if (v19 >= v8[v18])
            {
              goto LABEL_27;
            }

            v20 = &v8[v15 + 2];
            do
            {
              v14 = v8[v18];
              if (v13 != v15)
              {
                v14 = (*v20 + *(v20 - 1)) * 0.5;
              }

              ++v20;
              ++v15;
            }

            while (v19 > v14);
          }

          __C[v17++] = __A[v15];
        }

        while (v17 != v12);
      }
    }
  }

  else
  {
    SpeechEnhancerFilterBank<float>::interp1(v8, v9, __A, v10, v12, __C, 0.0, 1.0);
  }
}

void SpeechEnhancerFilterBank<float>::interp1(float *a1, unint64_t a2, const float *__A, uint64_t a4, vDSP_Length __N, float *__C, float a7, float a8)
{
  if (a2 > 1)
  {
    v9 = *__A;
    v8 = __A[1];
    v11 = *a1;
    v10 = a1[1];
    v12 = 0;
    if (__N)
    {
      while (*(a4 + 4 * v12) < *a1)
      {
        __C[v12++] = a7;
        if (__N == v12)
        {
          return;
        }
      }
    }

    if (v12 >= __N)
    {
LABEL_21:
      v22 = __N - v12;
      if (__N > v12)
      {
        v23 = 0;
        v24 = vdupq_n_s64(v22 - 1);
        v25 = &__C[v12 + 2];
        do
        {
          v26 = vdupq_n_s64(v23);
          v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1DE095160)));
          if (vuzp1_s16(v27, *v24.i8).u8[0])
          {
            *(v25 - 2) = a8;
          }

          if (vuzp1_s16(v27, *&v24).i8[2])
          {
            *(v25 - 1) = a8;
          }

          if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1DE095150)))).i32[1])
          {
            *v25 = a8;
            v25[1] = a8;
          }

          v23 += 4;
          v25 += 4;
        }

        while (((v22 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v23);
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
      v15 = (v8 - v9) / (v10 - v11);
      do
      {
        v16 = *(a4 + 4 * v12);
        v17 = a1[v14];
        if (v16 >= v17)
        {
          if (v16 <= v17 || v16 >= a1[a2 - 1])
          {
            if (v16 == a1[v13])
            {
              v18 = __A[v13];
            }

            else
            {
              if (v16 != v17)
              {
                goto LABEL_21;
              }

              v18 = __A[v14];
            }
          }

          else
          {
            do
            {
              v19 = a1[++v14];
              ++v13;
            }

            while (v16 > v19);
            v20 = __A[v13];
            v21 = a1[v13];
            v15 = (__A[v14] - v20) / (v19 - v21);
            v18 = v20 + (v15 * (v16 - v21));
          }
        }

        else
        {
          v18 = __A[v13] + (v15 * (v16 - a1[v13]));
        }

        __C[v12++] = v18;
      }

      while (v12 != __N);
    }
  }

  else
  {
    vDSP_vfill(__A, __C, 1, __N);
  }
}

uint64_t SpeechEnhancerCore<float>::setParameterLight(uint64_t result, uint64_t a2, unint64_t a3, float a4)
{
  if (a3 >= (a2 - result) >> 4)
  {
    __assert_rtn("setParameterLight", "SpeechEnhancerCore.h", 181, "index >= 0 && index < mParameterInfoTable.size()");
  }

  v4 = (result + 16 * a3);
  if (v4[1] < a4)
  {
    a4 = v4[1];
  }

  if (a4 < *v4)
  {
    a4 = *v4;
  }

  v4[3] = a4;
  return result;
}

void SpeechEnhancerFilterBank<float>::createFilterBank(uint64_t a1, uint64_t a2, long double a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = (v4 - v5) >> 2;
  *a1 = v6;
  if (*(a1 + 16) != a2)
  {
    *(a1 + 16) = a2;
    v8 = *(a1 + 152);
    v9 = *(a1 + 160) - v8;
    if (v9 >= 1)
    {
      bzero(*(a1 + 152), v9);
    }

    if (a2 == 1)
    {
      if (v4 != v5)
      {
        v24 = 0;
        v25 = *(a1 + 56);
        v26 = *(a1 + 80);
        v38 = *(a1 + 88);
        v36 = (v4 - v5) >> 2;
        v37 = v38 - v26;
        if ((v38 - v26) <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v38 - v26;
        }

        do
        {
          *(v25 + 4 * v24) = *(a1 + 192) * (*(a1 + 180) + (*(a1 + 184) * *(v5 + 4 * v24)));
          *(a1 + 176) = 0;
          if (v38 != v26)
          {
            LODWORD(a3) = *(a1 + 188);
            v28 = *&a3;
            v29 = v26;
            v30 = v26;
            v31 = v8;
            v32 = v27;
            do
            {
              v33 = (*v30 - *(v5 + 4 * v24));
              a3 = 1.0 / pow(v33 * v33 / (*(v25 + 4 * v24) * *(v25 + 4 * v24)) + 1.0, v28);
              *&a3 = a3;
              *v31 = LODWORD(a3);
              if (*(a1 + 176) < *&a3)
              {
                *(a1 + 176) = LODWORD(a3);
              }

              ++v31;
              ++v30;
              --v32;
            }

            while (v32);
            v34 = 0;
            v6 = v36;
            v26 = v29;
            do
            {
              v35 = *(a1 + 176);
              if (v35 != 0.0)
              {
                *&v8[v34] = *&v8[v34] / v35;
              }

              ++v34;
            }

            while (v27 != v34);
          }

          ++v24;
          v8 = (v8 + v37);
        }

        while (v24 != v6);
      }
    }

    else if (!a2 && v4 != v5)
    {
      v10 = 0;
      v11 = *(a1 + 56);
      v13 = *(a1 + 80);
      v12 = *(a1 + 88);
      v14 = v12 - v13;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      do
      {
        v15 = *(a1 + 180) + (*(a1 + 184) * *(v5 + 4 * v10));
        *(v11 + 4 * v10) = v15;
        if (v12 != v13)
        {
          v16 = *(v5 + 4 * v10);
          v17 = v15 * 0.5;
          v18 = v16 - (v15 * 0.5);
          v19 = v17 + v16;
          v20 = v13;
          v21 = v8;
          v22 = v14;
          do
          {
            if (*v20 >= v18 && *v20 <= v19)
            {
              *v21 = 1065353216;
            }

            ++v21;
            ++v20;
            --v22;
          }

          while (v22);
        }

        ++v10;
        v8 = (v8 + v12 - v13);
      }

      while (v10 != v6);
    }
  }

  SpeechEnhancerFilterBank<float>::calculateBandImportance(a1);
}

void SpeechEnhancerFilterBank<float>::calculateBandImportance(uint64_t a1)
{
  vDSP_mmul(*(a1 + 152), 1, *(a1 + 128), 1, *(a1 + 104), 1, *a1, 1uLL, (*(a1 + 136) - *(a1 + 128)) >> 2);
  __C = 0.0;
  vDSP_sve(*(a1 + 104), 1, &__C, *a1);
  vDSP_vsdiv(*(a1 + 104), 1, &__C, *(a1 + 104), 1, *a1);
}

uint64_t AUSpeechEnhancer::SetParameter(AUSpeechEnhancer *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v5 = *(this + 82);
  if (a2 > ((*(this + 83) - v5) >> 5))
  {
    return 4294956418;
  }

  if ((*(v5 + 32 * a2 + 13) & 0x80) != 0)
  {
    if (a2 == 52)
    {
      v15 = *(this + 74);
      if (v15)
      {
        SpeechEnhancerCore<float>::setParameterLight(*v15, v15[1], 0x34uLL, a5);
      }
    }

    else if (a2 == 26)
    {
      v12 = *(this + 74);
      if (v12)
      {
        SpeechEnhancerCore<float>::setParameterLight(*v12, v12[1], 0x1AuLL, a5);
        v13 = *(this + 74);
        if (*(v13 + 8) - *v13 <= 0x1A0uLL)
        {
          __assert_rtn("parameterValue", "SpeechEnhancerCore.h", 278, "index >= 0 && index < mParameterInfoTable.size()");
        }

        v14 = exp(*(*v13 + 428) * 0.230258509);
        *(v13 + 140) = v14;
      }
    }
  }

  else
  {
    ++*(this + 162);
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

double AUSpeechEnhancer::SetProperty(AUSpeechEnhancer *this, int a2, int a3, unsigned int a4, unsigned int *a5, unsigned int a6, double result)
{
  if (!a3)
  {
    if (a2 <= 1001)
    {
      if (a2 == 21)
      {
        if (a6 == 4)
        {
          *(this + 544) = *a5 != 0;
        }
      }

      else if (a2 == 1001 && *(this + 17) == 1)
      {
        if (a5)
        {
          v8 = a6 >> 2;
          v9 = *(this + 140);
          if (v8 == v9 + 1)
          {
            if (v9)
            {
              result = *(this + 69);
              if (result > 0.0)
              {
                v10 = *(this + 71);
                if (v10)
                {
                  v11 = *(this + 135);
                  if (*(this + 132) == result && v11 == v9)
                  {
                    memmove(*(*(this + 74) + 648), a5, 4 * v9 + 4);
                  }

                  else
                  {
                    SpeechEnhancerCore<float>::resampleSpectrum(v10, v8, a5, *(*(this + 74) + 624), (v11 + 1), *(*(this + 74) + 648));
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (a2 == 1002)
    {
      if (*(this + 17) == 1 && a5)
      {
        SpeechEnhancerCore<float>::setParameterLight(**(this + 74), *(*(this + 74) + 8), 1uLL, *a5);
      }
    }

    else if (a2 == 1003)
    {
      if (a5 && (*(this + 17) & 1) == 0)
      {
        result = *a5;
        *(this + 69) = *a5;
      }
    }

    else if (a2 == 1004 && a5 && (*(this + 17) & 1) == 0)
    {
      *(this + 140) = *a5;
    }
  }

  return result;
}

uint64_t SpeechEnhancerCore<float>::resampleSpectrum(float *a1, unint64_t a2, const float *a3, float *a4, vDSP_Length __N, float *a6)
{
  if (a2 <= 1)
  {
    __assert_rtn("resampleSpectrum", "SpeechEnhancerCore.h", 344, "DFTFrequenciesSizeIn > 1");
  }

  if (__N <= 1)
  {
    __assert_rtn("resampleSpectrum", "SpeechEnhancerCore.h", 345, "DFTFrequenciesSizeOut > 1");
  }

  SpeechEnhancerFilterBank<float>::interp1(a1, a2, a3, a4, __N, a6, *a3, a3[a2 - 1]);
  v11 = (a4[1] - *a4) / (a1[1] - *a1);
  return MEMORY[0x1E12BE940](a6, 1, &v11, a6, 1, __N);
}

uint64_t AUSpeechEnhancer::GetProperty(AUSpeechEnhancer *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 544;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUSpeechEnhancer::GetPropertyInfo(AUSpeechEnhancer *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 1002)
  {
    if (a2 != 21)
    {
      if (a2 != 1001)
      {
        return result;
      }

      *a6 = 1;
      v8 = 4 * *(this + 84) + 4;
LABEL_13:
      result = 0;
      *a5 = v8;
      return result;
    }

LABEL_11:
    *a6 = 1;
    v8 = 4;
    goto LABEL_13;
  }

  if (a2 == 1003)
  {
    *a6 = 1;
    v8 = 8;
    goto LABEL_13;
  }

  if (a2 == 1004 || a2 == 3700)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t AUSpeechEnhancer::Reset(AUSpeechEnhancer *this, int16x4_t a2)
{
  if (*(this + 17) == 1)
  {
    v2 = *(this + 74);
    if (v2)
    {
      v3 = *(v2 + 328);
      v8 = 629145600;
      std::vector<float>::assign((v2 + 936), v3, &v8, a2);
      *(v2 + 1436) = 0;
      *(v2 + 1420) = 0;
      SpeechEnhancerCore<float>::getAverageSpeechSpectrum(*(v2 + 624), *(v2 + 328), *(v2 + 960));
      v4 = *(v2 + 188);
      v5 = *(v2 + 192);
      *(v2 + 132) = v4;
      v9 = (v4 / 10000000.0) / v5;
      MEMORY[0x1E12BE940](*(v2 + 960), 1, &v9, *(v2 + 912), 1, *(v2 + 328));
      *(v2 + 344) = 0;
      *(v2 + 48) = 0;
      *(v2 + 116) = 0;
      *(v2 + 354) = 257;
      __A = 1.0;
      vDSP_vfill(&__A, *(v2 + 888), 1, *(v2 + 328));
      operator new();
    }
  }

  return 0;
}

void SpeechEnhancerCore<float>::getAverageSpeechSpectrum(float *a1, vDSP_Length a2, float *a3)
{
  *&v28[4] = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    __assert_rtn("getAverageSpeechSpectrum", "SpeechEnhancerCore.h", 892, "DFTFrequenciesSize > 1");
  }

  v23 = xmmword_1DE0A0E44;
  v24 = unk_1DE0A0E54;
  v25 = xmmword_1DE0A0E64;
  v26 = unk_1DE0A0E74;
  v21 = xmmword_1DE0A0E24;
  v22 = unk_1DE0A0E34;
  v27 = 1182400512;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v18, &v21, v28, 0x19uLL);
  v23 = xmmword_1DE0A0EA8;
  v24 = unk_1DE0A0EB8;
  v25 = xmmword_1DE0A0EC8;
  v26 = unk_1DE0A0ED8;
  v21 = xmmword_1DE0A0E88;
  v22 = unk_1DE0A0E98;
  v27 = 1109576909;
  v16 = 0;
  v17 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v21, v28, 0x19uLL);
  v6 = v18;
  v7 = __p;
  v8 = (v19 - v18) >> 2;
  if (v19 != v18)
  {
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v19 - v18) >> 2;
    }

    v10 = v18;
    v11 = __p;
    do
    {
      v12 = *v10++;
      v13 = (a1[1] - *a1) / (v12 * 0.23156);
      v14 = exp(*v11 * 0.230258509);
      *v11++ = v13 * v14;
      --v9;
    }

    while (v9);
  }

  SpeechEnhancerFilterBank<float>::interp1(v6, v8, v7, a1, a2, a3, *v7, *(v16 - 1));
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_1DDC72E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpeechEnhancer::Initialize(AUSpeechEnhancer *this)
{
  v25 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_34;
  }

  v3 = Element;
  v4 = *(Element + 88);
  if (v4 != 1819304813 && v4 != 1718773105)
  {
    return 4294956428;
  }

  *(this + 133) = *(Element + 108);
  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = v6;
  v8 = *(v6 + 88);
  if (v8 != 1819304813 && v8 != 1718773105)
  {
    return 4294956428;
  }

  v10 = *(v6 + 108);
  *(this + 134) = v10;
  result = 4294956428;
  if ((v4 == 1718773105) == (v8 == 1718773105) && (v4 == 1819304813) == (v8 == 1819304813) && *(this + 133) == v10 && *(v3 + 80) == *(v7 + 80))
  {
    v13 = v4 == 1718773105 && v8 == 1718773105;
    *(this + 545) = v13;
    v14 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v14)
    {
      *(this + 132) = (*(v14 + 80) + 0.5);
      v15 = *(this + 84);
      *(this + 135) = v15;
      v16 = *(this + 69);
      if (v16 > 0.0)
      {
        v17 = *(this + 140);
        if (v17)
        {
          v18 = (v17 + 1);
          std::vector<float>::vector[abi:ne200100](&v23, v18);
          v19 = v16;
          __A[0] = 0.0;
          __B[0] = (v19 * 0.5) / (v18 - 1);
          vDSP_vramp(__A, __B, v23, 1, v18);
          v20 = *(this + 71);
          if (v20)
          {
            *(this + 72) = v20;
            operator delete(v20);
          }

          *(this + 568) = v23;
          *(this + 73) = v24;
          v15 = *(this + 135);
        }
      }

      if (v15)
      {
        operator new();
      }

      return 0;
    }

LABEL_34:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

void sub_1DDC73D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  v61 = *(v59 - 240);
  if (v61)
  {
    *(v59 - 232) = v61;
    operator delete(v61);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<SpeechEnhancerCore<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v42 = (v2 + 1512);
    std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v42 = (v2 + 1488);
    std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v3 = *(v2 + 1480);
    *(v2 + 1480) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 1456);
    if (v4)
    {
      *(v2 + 1464) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 1344);
    if (v5)
    {
      *(v2 + 1352) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 1320);
    if (v6)
    {
      *(v2 + 1328) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 1296);
    if (v7)
    {
      *(v2 + 1304) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 1272);
    if (v8)
    {
      *(v2 + 1280) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 1248);
    if (v9)
    {
      *(v2 + 1256) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 1224);
    if (v10)
    {
      *(v2 + 1232) = v10;
      operator delete(v10);
    }

    v42 = (v2 + 1104);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v42 = (v2 + 1080);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v11 = *(v2 + 1056);
    if (v11)
    {
      *(v2 + 1064) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 1032);
    if (v12)
    {
      *(v2 + 1040) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 1008);
    if (v13)
    {
      *(v2 + 1016) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 984);
    if (v14)
    {
      *(v2 + 992) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 960);
    if (v15)
    {
      *(v2 + 968) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 936);
    if (v16)
    {
      *(v2 + 944) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 912);
    if (v17)
    {
      *(v2 + 920) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 888);
    if (v18)
    {
      *(v2 + 896) = v18;
      operator delete(v18);
    }

    v19 = *(v2 + 864);
    if (v19)
    {
      *(v2 + 872) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 840);
    if (v20)
    {
      *(v2 + 848) = v20;
      operator delete(v20);
    }

    v21 = *(v2 + 816);
    if (v21)
    {
      *(v2 + 824) = v21;
      operator delete(v21);
    }

    v22 = *(v2 + 792);
    if (v22)
    {
      *(v2 + 800) = v22;
      operator delete(v22);
    }

    v23 = *(v2 + 768);
    if (v23)
    {
      *(v2 + 776) = v23;
      operator delete(v23);
    }

    v24 = *(v2 + 744);
    if (v24)
    {
      *(v2 + 752) = v24;
      operator delete(v24);
    }

    v25 = *(v2 + 720);
    if (v25)
    {
      *(v2 + 728) = v25;
      operator delete(v25);
    }

    v26 = *(v2 + 696);
    if (v26)
    {
      *(v2 + 704) = v26;
      operator delete(v26);
    }

    v27 = *(v2 + 672);
    if (v27)
    {
      *(v2 + 680) = v27;
      operator delete(v27);
    }

    v28 = *(v2 + 648);
    if (v28)
    {
      *(v2 + 656) = v28;
      operator delete(v28);
    }

    v29 = *(v2 + 624);
    if (v29)
    {
      *(v2 + 632) = v29;
      operator delete(v29);
    }

    v30 = *(v2 + 600);
    if (v30)
    {
      *(v2 + 608) = v30;
      operator delete(v30);
    }

    v31 = *(v2 + 576);
    if (v31)
    {
      *(v2 + 584) = v31;
      operator delete(v31);
    }

    v32 = *(v2 + 552);
    if (v32)
    {
      *(v2 + 560) = v32;
      operator delete(v32);
    }

    v33 = *(v2 + 528);
    if (v33)
    {
      *(v2 + 536) = v33;
      operator delete(v33);
    }

    v34 = *(v2 + 504);
    if (v34)
    {
      *(v2 + 512) = v34;
      operator delete(v34);
    }

    v35 = *(v2 + 480);
    if (v35)
    {
      *(v2 + 488) = v35;
      operator delete(v35);
    }

    v36 = *(v2 + 456);
    if (v36)
    {
      *(v2 + 464) = v36;
      operator delete(v36);
    }

    v37 = *(v2 + 432);
    if (v37)
    {
      *(v2 + 440) = v37;
      operator delete(v37);
    }

    v38 = *(v2 + 408);
    if (v38)
    {
      *(v2 + 416) = v38;
      operator delete(v38);
    }

    v39 = *(v2 + 384);
    if (v39)
    {
      *(v2 + 392) = v39;
      operator delete(v39);
    }

    v40 = *(v2 + 360);
    if (v40)
    {
      *(v2 + 368) = v40;
      operator delete(v40);
    }

    v41 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v41;
      operator delete(v41);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<std::span<float,18446744073709551615ul>>::resize(uint64_t *a1, unint64_t a2)
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

        std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *AWeight<float>::Generate(void *a1, unint64_t a2, float a3)
{
  result = std::vector<float>::vector[abi:ne200100](a1, a2);
  if (a2)
  {
    *v6.i32 = a3 / (2 * a2 - 2);
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v9 = xmmword_1DE095150;
    v10 = xmmword_1DE095160;
    v11 = (*result + 8);
    v12 = vdupq_n_s32(0x43D428CAu);
    v13 = vdupq_n_s32(0x4D0DCF73u);
    v14 = vdupq_n_s32(0x4D328586u);
    v15 = vdupq_n_s32(0x4635145Fu);
    v16 = vdupq_n_s32(0x4904EB8Bu);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v18.i64[0] = v9.i64[0] * v9.i64[0];
      v18.i64[1] = v9.i64[1] * v9.i64[1];
      v19 = vmovn_s64(vcgeq_u64(v7, v10));
      v20.i64[0] = v10.i64[0] * v10.i64[0];
      v20.i64[1] = v10.i64[1] * v10.i64[1];
      v21 = vmulq_n_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v20)), vcvtq_f64_u64(v18)), *v6.i32), *v6.i32);
      v22 = vmulq_f32(vdivq_f32(v21, vaddq_f32(v21, v12)), vdivq_f32(v14, vaddq_f32(v21, v13)));
      v23 = vmulq_f32(vdivq_f32(v21, vaddq_f32(v21, v16)), vmulq_f32(vdivq_f32(v21, vaddq_f32(v21, v15)), vmulq_f32(v22, v22)));
      if (vuzp1_s16(v19, v6).u8[0])
      {
        *(v11 - 2) = v23.i32[0];
      }

      if (vuzp1_s16(v19, v6).i8[2])
      {
        *(v11 - 1) = v23.i32[1];
      }

      if (vuzp1_s16(v6, vmovn_s64(vcgeq_u64(v7, *&v9))).i32[1])
      {
        *v11 = v23.i64[1];
      }

      v9 = vaddq_s64(v9, v17);
      v10 = vaddq_s64(v10, v17);
      v11 += 2;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void std::vector<std::unique_ptr<VPTimeFreqConverter>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 8 * a2);
      while (v4 != v11)
      {
        std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100](--v4, 0);
      }

      a1[1] = v11;
    }
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
    a1[1] = &v4[v6];
  }
}

void *SpeechEnhancerFilterBank<float>::~SpeechEnhancerFilterBank(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<VPTimeFreqConverter>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AUSpeechEnhancer::~AUSpeechEnhancer(AUSpeechEnhancer *this)
{
  AUSpeechEnhancer::~AUSpeechEnhancer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591DE08;
  v2 = *(this + 82);
  if (v2)
  {
    *(this + 83) = v2;
    operator delete(v2);
  }

  v3 = *(this + 78);
  if (v3)
  {
    *(this + 79) = v3;
    operator delete(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    *(this + 76) = v4;
    operator delete(v4);
  }

  std::unique_ptr<SpeechEnhancerCore<float>>::reset[abi:ne200100](this + 74, 0);
  v5 = *(this + 71);
  if (v5)
  {
    *(this + 72) = v5;
    operator delete(v5);
  }

  ausdk::AUBase::~AUBase(this);
}

void AUSpeechEnhancer::SpeechEnhancer::~SpeechEnhancer(AUSpeechEnhancer::SpeechEnhancer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  std::unique_ptr<SpeechEnhancerCore<float>>::reset[abi:ne200100](this, 0);
}

void std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t BassKoenig::SupportedNumChannels(BassKoenig *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &BassKoenig::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 2;
}

uint64_t BassKoenig::ProcessBufferLists(BassKoenig *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  v5 = a5;
  v13 = a4;
  v14 = a3;
  v8 = (*(*this + 184))(this, a2, a5, 1, &v14, 1, &v13);
  v9 = v8;
  if ((*(this + 2113) & 1) == 0 && !v8)
  {
    mData = a4->mBuffers[0].mData;
    v11 = *(this + 265);
    if (v11 != *(this + 266) && *v11 == 2 && !*(this + 397))
    {
      DspLib::multiply(a4->mBuffers[0].mData, v5, *&a4[1].mBuffers[0].mNumberChannels, *(this + 537));
    }

    DspLib::multiply(mData, v5, *(this + 536));
  }

  return v9;
}

uint64_t BassKoenig::SetParameter(BassKoenig *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2 == 48)
  {
    *(this + 537) = DspLib::dB2Amp(this, a5);
  }

  else if (a2 == 47)
  {
    *(this + 536) = DspLib::dB2Amp(this, a5);
  }

  return AUDspLib::SetParameter(this, a2, a3, a4, a5);
}

void BassKoenig::~BassKoenig(BassKoenig *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUBSS2::SetMaxFramesPerSlice(AUBSS2 *this, int a2)
{
  result = ausdk::AUBase::SetMaxFramesPerSlice(this, a2);
  if (*(this + 136) != a2)
  {
    *(this + 136) = a2;
  }

  return result;
}

char *AUBSS2::GetScopeExtended(AUBSS2 *this, int a2)
{
  v2 = this + 552;
  if (a2 != 4)
  {
    v2 = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return this + 32;
  }
}

uint64_t AUBSS2::ChangeStreamFormat(AUBSS2 *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (a4->mSampleRate != a5->mSampleRate)
  {
    *(this + 135) = a5->mSampleRate;
  }

  return 0;
}

uint64_t AUBSS2::ValidFormat(AUBSS2 *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2 || a2 == 1)
  {
    if (a4->mChannelsPerFrame - 2 < 7)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUBSS2::SupportedNumChannels(AUBSS2 *this, const AUChannelInfo **a2)
{
  v2 = 0;
  v3 = &word_1ECDA7F32;
  do
  {
    *(v3 - 1) = v2 + 2;
    *v3 = v2 + 2;
    v3 += 2;
    ++v2;
  }

  while (v2 != 7);
  if (a2)
  {
    *a2 = &AUBSS2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 7;
}

uint64_t AUBSS2::GetParameterValueStrings(AUBSS2 *this, int a2, int a3, const __CFArray **a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = a3;
  if (!a4)
  {
    if (AUBSS2LogScope(void)::once != -1)
    {
      dispatch_once(&AUBSS2LogScope(void)::once, &__block_literal_global_2138);
    }

    if (AUBSS2LogScope(void)::scope)
    {
      v5 = *AUBSS2LogScope(void)::scope;
      if (!*AUBSS2LogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    *&buf[4] = "AUBSS2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 515;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ERROR: Failed accessing strings in GetParameterValueStrings.", buf, 0x12u);
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  result = 0;
  if (a3 <= 9)
  {
    if (a3 != 2)
    {
      if (a3 != 7)
      {
        return result;
      }

      if (*(this + 17))
      {
        v8 = (*(this + 150) + 1);
        MEMORY[0x1EEE9AC00](0);
        v11 = (&v40.__r_.__value_.__l.__data_ - v10);
        if (v9 >= 0x200)
        {
          v12 = 512;
        }

        else
        {
          v12 = v9;
        }

        bzero(&v40 - v10, v12);
        *v11 = @"Multiple Reference MDP";
        if (v8 > 1)
        {
          for (i = 1; i != v8; ++i)
          {
            std::to_string(&v40, i);
            v14 = std::string::insert(&v40, 0, "Mic", 3uLL);
            v15 = *&v14->__r_.__value_.__l.__data_;
            *&buf[16] = *(&v14->__r_.__value_.__l + 2);
            *buf = v15;
            v14->__r_.__value_.__l.__size_ = 0;
            v14->__r_.__value_.__r.__words[2] = 0;
            v14->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }

            if (buf[23] >= 0)
            {
              v16 = buf;
            }

            else
            {
              v16 = *buf;
            }

            v11[i] = CFStringCreateWithCString(0, v16, 0x8000100u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          *a4 = CFArrayCreate(0, v11, v8, 0);
          v17 = v8 - 1;
          v18 = v11 + 1;
          do
          {
            CFRelease(*v18++);
            --v17;
          }

          while (v17);
          return 0;
        }

        goto LABEL_75;
      }

      if (std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 78, 7u))
      {
        *buf = &v41;
        v30 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 78, 7u);
        v8 = (*(v30 + 10) + 1.0);
        MEMORY[0x1EEE9AC00](v30);
        v11 = (&v40.__r_.__value_.__l.__data_ - v32);
        if (v31 >= 0x200)
        {
          v33 = 512;
        }

        else
        {
          v33 = v31;
        }

        bzero(&v40 - v32, v33);
        *v11 = @"Multiple Reference MDP";
        if (v8 > 1)
        {
          for (j = 1; j != v8; ++j)
          {
            std::to_string(&v40, j);
            v35 = std::string::insert(&v40, 0, "Mic", 3uLL);
            v36 = *&v35->__r_.__value_.__l.__data_;
            *&buf[16] = *(&v35->__r_.__value_.__l + 2);
            *buf = v36;
            v35->__r_.__value_.__l.__size_ = 0;
            v35->__r_.__value_.__r.__words[2] = 0;
            v35->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }

            if (buf[23] >= 0)
            {
              v37 = buf;
            }

            else
            {
              v37 = *buf;
            }

            v11[j] = CFStringCreateWithCString(0, v37, 0x8000100u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          *a4 = CFArrayCreate(0, v11, v8, 0);
          v38 = v8 - 1;
          v39 = v11 + 1;
          do
          {
            CFRelease(*v39++);
            --v38;
          }

          while (v38);
          return 0;
        }

        goto LABEL_75;
      }

      return 4294956418;
    }

    if (!std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 78, 2u))
    {
      return 4294956418;
    }

    *buf = &v41;
    if (*(std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 78, 2u) + 10) != 1.0)
    {
      __assert_rtn("GetParameterValueStrings", "AUBSS2.cpp", 591, "std::get<3>(param) == 1");
    }

    *buf = xmmword_1E8669EE0;
    v20 = CFArrayCreate(0, buf, 2, 0);
LABEL_39:
    v21 = v20;
    result = 0;
    *a4 = v21;
    return result;
  }

  if (a3 != 10)
  {
    if (a3 != 16)
    {
      return result;
    }

    if (!std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 78, 0x10u))
    {
      return 4294956418;
    }

    *buf = &v41;
    v19 = (*(std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 78, 0x10u) + 10) + 1.0);
    *buf = xmmword_1E8669EF0;
    *&buf[16] = @"Others";
    v20 = CFArrayCreate(0, buf, v19, 0);
    goto LABEL_39;
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 78, 0xAu))
  {
    return 4294956418;
  }

  *buf = &v41;
  v22 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 78, 0xAu);
  v8 = (*(v22 + 10) + 1.0);
  MEMORY[0x1EEE9AC00](v22);
  v11 = (&v40.__r_.__value_.__l.__data_ - v24);
  if (v23 >= 0x200)
  {
    v25 = 512;
  }

  else
  {
    v25 = v23;
  }

  bzero(&v40 - v24, v25);
  if (v8)
  {
    for (k = 0; k != v8; ++k)
    {
      std::to_string(&v40, k);
      v27 = std::string::insert(&v40, 0, "Speed ", 6uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v27->__r_.__value_.__l + 2);
      *buf = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (buf[23] >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      v11[k] = CFStringCreateWithCString(0, v29, 0x8000100u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    *a4 = CFArrayCreate(0, v11, v8, 0);
    do
    {
      CFRelease(*v11++);
      --v8;
    }

    while (v8);
    return 0;
  }

LABEL_75:
  *a4 = CFArrayCreate(0, v11, v8, 0);
  return 0;
}

void sub_1DDC75670(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__rehash<true>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t AUBSS2::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUBSS2::SaveExtendedScopes(AUBSS2 *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUBSS2::GetParameterInfo(AUBSS2 *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  v20 = a3;
  a4->flags = 0;
  a4->unitName = 0;
  if (a2 || a3 > 0x11)
  {
    result = 4294956418;
    if (a2 != 4 || a3 > 1)
    {
      return result;
    }

    if (std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 83, a3))
    {
      v21 = &v20;
      v14 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 83, a3);
      v15 = v14[3];
      v16 = *(v14 + 8);
      v17 = *(v14 + 11);
      v18 = *(v14 + 12);
      a4->cfNameString = v15;
      a4->flags |= 0x8000000u;
      v19 = *(v14 + 36);
      CFStringGetCString(v15, a4->name, 52, 0x8000100u);
      result = 0;
      a4->defaultValue = v16;
      *&a4->minValue = v19;
      a4->unit = v17;
      a4->flags |= v18;
      return result;
    }

    return 4294956418;
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(this + 78, a3))
  {
    return 4294956418;
  }

  v21 = &v20;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 78, a3);
  v8 = v7[3];
  v9 = *(v7 + 8);
  v10 = *(v7 + 11);
  v11 = *(v7 + 12);
  a4->cfNameString = v8;
  a4->flags |= 0x8000000u;
  v12 = *(v7 + 36);
  CFStringGetCString(v8, a4->name, 52, 0x8000100u);
  a4->defaultValue = v9;
  *&a4->minValue = v12;
  a4->unit = v10;
  a4->flags |= v11;
  if (v20 != 7 || *(this + 17) != 1)
  {
    return 0;
  }

  result = 0;
  a4->maxValue = *(this + 150);
  return result;
}

uint64_t AUBSS2::SetBusCount(AUBSS2 *this, int a2, unsigned int a3)
{
  v3 = a3 - 1;
  if (a2 == 1 && v3 < 8)
  {
    v4 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v4), a3);
    return 0;
  }

  v5 = 4294956445;
  if (a2 == 2 && v3 <= 7)
  {
    v4 = 128;
    goto LABEL_7;
  }

  return v5;
}

ausdk::AUInputElement *AUBSS2::Render(AUBSS2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = *(this + 15);
  if (v8)
  {
    v9 = (*(*v8 + 24))(v8);
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v10 = 0;
  if (v9)
  {
    v11 = 0;
    do
    {
      Element = ausdk::AUScope::GetElement((this + 80), v11);
      if (Element && *(Element + 172))
      {
        result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v11);
        if (v14)
        {
          result = ausdk::AUInputElement::PullInput(result, a2, a3, v11, a4);
        }

        if (result)
        {
          return result;
        }
      }

      else
      {
        v10 = 1;
      }

      v11 = (v11 + 1);
    }

    while (v9 != v11);
  }

  v15 = *(this + 21);
  if (v15)
  {
    v15 = (*(*v15 + 24))(v15);
    LODWORD(v16) = v15;
  }

  else
  {
    v16 = (*(this + 19) - *(this + 18)) >> 3;
  }

  v17 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = v31 - v19;
  if (v18 >= 0x200)
  {
    v21 = 512;
  }

  else
  {
    v21 = v18;
  }

  bzero(v31 - v19, v21);
  if (v16)
  {
    v23 = 0;
    while (1)
    {
      v24 = ausdk::AUScope::GetElement((this + 128), v23);
      if (!v24)
      {
        break;
      }

      v22 = ausdk::AUIOElement::PrepareBuffer(v24, a4);
      *&v20[8 * v23++] = v22;
      if (v17 == v23)
      {
        goto LABEL_24;
      }
    }

LABEL_36:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_24:
  if (v10)
  {
    return 0;
  }

  v31[0] = v31;
  MEMORY[0x1EEE9AC00](v22);
  v27 = v31 - v26;
  if (v25 >= 0x200)
  {
    v28 = 512;
  }

  else
  {
    v28 = v25;
  }

  bzero(v31 - v26, v28);
  if (v9)
  {
    v29 = 0;
    while (1)
    {
      v30 = ausdk::AUScope::GetElement((this + 80), v29);
      if (!v30)
      {
        break;
      }

      if (!*(v30 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      *&v27[8 * v29++] = *(v30 + 152) + 48;
      if (v9 == v29)
      {
        return (*(*this + 184))(this, a2, a4, v9, v27, v17, v20);
      }
    }

    goto LABEL_36;
  }

  return (*(*this + 184))(this, a2, a4, v9, v27, v17, v20);
}

uint64_t AUBSS2::ProcessMultipleBufferLists(AUBSS2 *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7, double a8)
{
  if (*(this + 376) == 1 && *(this + 84) != a3)
  {
    return 4294956422;
  }

  LOBYTE(v39.mSampleRate) = 0;
  v12 = *(this + 136);
  LODWORD(a8) = *(this + 135);
  v13 = *(this + 150);
  *&v35.mNumberBuffers = *&a8;
  v35.mBuffers[0] = xmmword_1DE09BD50;
  v36 = 4;
  v37 = v13;
  v38 = 32;
  v14 = a4;
  if (a4)
  {
    v15 = (2 * v12);
    v16 = a4 - 1;
    v17 = a5;
    while (1)
    {
      v18 = *v17;
      if (!*v17)
      {
        return 4294956420;
      }

      v19 = v16;
      if (v18->mNumberBuffers != *(this + 150))
      {
        return 4294956428;
      }

      AudioDSP::Utility::DetectNonFinites(v15, v18, &v35, &v39, a5);
      mSampleRate_low = LOBYTE(v39.mSampleRate);
      if ((LOBYTE(v39.mSampleRate) & 1) == 0)
      {
        v16 = v19 - 1;
        ++v17;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  mSampleRate_low = 0;
LABEL_11:
  v21 = a6;
  if (a6)
  {
    v22 = a6;
    v23 = a7;
    while (*v23)
    {
      if ((*v23)->mNumberBuffers != *(this + 150))
      {
        return 4294956428;
      }

      ++v23;
      if (!--v22)
      {
        goto LABEL_16;
      }
    }

    return 4294956420;
  }

LABEL_16:
  if (*(this + 134) || mSampleRate_low && (*(this + 608) & 1) != 0 || (v30 = *(this + 77)) == 0)
  {
    if (a6)
    {
      v24 = 0;
      do
      {
        if (v24 >= v14)
        {
          v25 = a7[v24];
          if (v25->mNumberBuffers)
          {
            v26 = 0;
            v27 = 0;
            do
            {
              bzero(v25->mBuffers[v26].mData, v25->mBuffers[v26].mDataByteSize);
              ++v27;
              v25 = a7[v24];
              ++v26;
            }

            while (v27 < v25->mNumberBuffers);
          }
        }

        else
        {
          CopyBufferList(a5[v24], a7[v24]);
        }

        ++v24;
      }

      while (v24 != v21);
    }

    return 0;
  }

  else
  {
    if (*(this + 133) != *(this + 132))
    {
      AUBSS2::UpdateState(this);
      *(this + 133) = *(this + 132);
      v30 = *(this + 77);
    }

    v28 = (*(*v30 + 8))(v30, *a5, *a7);
    if (v28)
    {
      CopyBufferList(*a5, *a7);
    }

    if (a6 >= 2)
    {
      v31 = 1;
      do
      {
        if (v31 >= v14)
        {
          v32 = a7[v31];
          if (v32->mNumberBuffers)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              bzero(v32->mBuffers[v33].mData, v32->mBuffers[v33].mDataByteSize);
              ++v34;
              v32 = a7[v31];
              ++v33;
            }

            while (v34 < v32->mNumberBuffers);
          }
        }

        else
        {
          v28 = (*(**(this + 77) + 16))(*(this + 77), a5[v31], a7[v31]);
          if (v28)
          {
            CopyBufferList(a5[v31], a7[v31]);
          }
        }

        ++v31;
      }

      while (v31 != v21);
    }
  }

  return v28;
}

const void **CopyBufferList(const void **result, AudioBufferList *a2)
{
  v2 = *result;
  if (v2 == a2->mNumberBuffers && v2 != 0)
  {
    v4 = result;
    v5 = 0;
    p_mData = &a2->mBuffers[0].mData;
    v7 = result + 2;
    do
    {
      v8 = *(v7 - 1);
      if (v8 <= *(p_mData - 1))
      {
        result = *p_mData;
        if (*v7 != *p_mData)
        {
          result = memcpy(result, *v7, v8);
          v2 = *v4;
        }
      }

      ++v5;
      p_mData += 2;
      v7 += 2;
    }

    while (v5 < v2);
  }

  return result;
}

char *AUBSS2::UpdateState(char *this)
{
  if (*(this + 77))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v3 = *(v1 + 77);
      v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((v1 + 32), 0);
      if ((v5 & 1) == 0)
      {
        abort();
      }

      Parameter = ausdk::AUElement::GetParameter(v4, v2);
      this = (*(*v3 + 24))(v3, v2, Parameter);
      v2 = (v2 + 1);
    }

    while (v2 != 18);
    if (*(v1 + 150))
    {
      for (i = 0; i < *(v1 + 150); ++i)
      {
        this = ausdk::AUScope::GetElement((v1 + 552), i);
        if (!this)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v8 = this;
        if (this[40] == 1)
        {
          if (*(this + 7) == *(this + 6) || *(this + 7) - *(this + 6) <= 4uLL)
          {
            continue;
          }
        }

        else
        {
          v9 = *(this + 3);
          this = ausdk::flat_map<unsigned int,ausdk::AtomicValue<float>>::find(*(this + 2), v9, 0);
          if (v9 == this)
          {
            continue;
          }

          v10 = *(v8 + 24);
          this = ausdk::flat_map<unsigned int,ausdk::AtomicValue<float>>::find(*(v8 + 16), v10, 1u);
          if (v10 == this)
          {
            continue;
          }
        }

        v11 = ausdk::AUElement::GetParameter(v8, 0);
        v12 = ausdk::AUElement::GetParameter(v8, 1u);
        this = (*(**(v1 + 77) + 32))(*(v1 + 77), i, v11, v12);
      }
    }
  }

  return this;
}

uint64_t AUBSS2::ProcessBufferLists(AUBSS2 *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7[0] = a3;
  return (*(*this + 184))(this, a2, a5, 1, v7, 1, &v6);
}

uint64_t AUBSS2::SetParameter(AUBSS2 *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 552), a4);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    goto LABEL_6;
  }

  if (!a3)
  {
    Element = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

LABEL_6:
    ausdk::AUElement::SetParameter(Element, a2, a5);
    result = 0;
    ++*(this + 132);
    return result;
  }

  return 4294956418;
}

uint64_t AUBSS2::SetProperty(AUBSS2 *this, int a2, int a3, unsigned int a4, const __CFNumber **a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  valuePtr[3] = v6;
  valuePtr[4] = v7;
  switch(a2)
  {
    case 4501:
      v10 = *a5;
      valuePtr[0] = 0;
      CFNumberGetValue(v10, kCFNumberSInt64Type, valuePtr);
      if (LODWORD(valuePtr[0]) <= 2)
      {
        result = 0;
        *(this + 151) = valuePtr[0];
        return result;
      }

      return 4294956445;
    case 3700:
      result = 4294956445;
      if (a6 >= 4)
      {
        if (*a5)
        {
          return 0;
        }

        else
        {
          return 4294956445;
        }
      }

      break;
    case 21:
      if (a6 == 4)
      {
        result = 0;
        *(this + 134) = *a5;
        return result;
      }

      return 4294956445;
    default:
      return 4294956417;
  }

  return result;
}

uint64_t AUBSS2::GetProperty(AUBSS2 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 4501:
      result = 0;
      v7 = *(this + 151);
      break;
    case 3700:
      result = 0;
      v7 = *(this + 376);
      break;
    case 21:
      result = 0;
      v7 = *(this + 134);
      break;
    default:
      return 4294956417;
  }

  *a5 = v7;
  return result;
}

uint64_t AUBSS2::GetPropertyInfo(AUBSS2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 21 && a2 != 4501 && a2 != 3700)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUBSS2::Reset(AUBSS2 *this)
{
  if (*(this + 77))
  {
    AUBSS2::UpdateState(this);
    (*(**(this + 77) + 40))(*(this + 77));
  }

  return 0;
}

uint64_t AUBSS2::Cleanup(AUBSS2 *this)
{
  result = *(this + 77);
  *(this + 77) = 0;
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t AUBSS2::Initialize(AUBSS2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(v3 + 108);
  if (v5 != *(v4 + 108))
  {
    return 4294956421;
  }

  *(this + 150) = v5;
  v6 = (*(*this + 408))(this, 4);
  if (!v6)
  {
    ausdk::ThrowQuiet(0);
  }

  ausdk::AUScope::SetNumberOfElements(v6, v5);
  ausdk::AUScope::SetNumberOfElements((this + 32), 1u);
  v7 = *(this + 151);
  switch(v7)
  {
    case 2:
      operator new();
    case 1:
      if (*(this + 150) <= 3u)
      {
        operator new();
      }

      return 4294956421;
    case 0:
      operator new();
  }

  v8 = *(this + 77);
  if (v8 && (**v8)(v8, *(this + 84), (*(this + 84) + 1), *(this + 150), *(this + 135)))
  {
    return 4294956421;
  }

  v10 = *(*this + 72);

  return v10(this, 0, 0);
}

void AU::BSS2::AUXIVARLS<float>::~AUXIVARLS(uint64_t a1)
{
  AU::BSS2::AUXIVARLS<float>::~AUXIVARLS(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AU::BSS2::AUXIVARLS<float>::~AUXIVARLS(uint64_t a1)
{
  *a1 = &unk_1F591E5D8;
  std::unique_ptr<t3l::RTensor3<float>>::reset[abi:ne200100]((a1 + 336), 0);
  std::unique_ptr<t3l::RTensor3<float>>::reset[abi:ne200100]((a1 + 328), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 320), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 312), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 304), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 296), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 288), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 280), 0);
  v5 = (a1 + 256);
  std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 232);
  std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 224), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 216), 0);
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *std::unique_ptr<t3l::RTensor3<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 80);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      *(v2 + 40) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 104);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (v2 + 80);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      *(v2 + 40) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t AU::BSS2::AUXIVARLS<float>::Reset(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      t3l::tDSP_ztfilldiag<float>(*(*(a1 + 232) + 8 * v2), *(a1 + 88));
      t3l::tDSP_ztfilldiag<float>(*(*(a1 + 256) + 8 * v2), 1.0 / *(a1 + 88));
      *(*(a1 + 168) + 4 * v2++) = 1065353216;
    }

    while (*(a1 + 16) > v2);
  }

  v3 = *(a1 + 216);
  v4 = v3[1];
  if (v4 != v3[2])
  {
    goto LABEL_25;
  }

  v5 = v3[3];
  __A = 1.0;
  if (v4)
  {
    v6 = 0;
    v7 = 1;
    v8 = v4;
    do
    {
      if (v7)
      {
        v9 = 0;
        for (i = 0; i < v7; ++i)
        {
          v11 = (*(*v3 + 8 * v6) + v9);
          vDSP_vclr(*v11, 1, v5);
          vDSP_vclr(v11[1], 1, v5);
          v7 = v3[2];
          v9 += 16;
        }

        v8 = v3[1];
      }

      ++v6;
    }

    while (v8 > v6);
    v12 = 0;
    for (j = 0; j != v4; ++j)
    {
      vDSP_vfill(&__A, *(*(*v3 + 8 * j) + v12), 1, v5);
      v12 += 16;
    }
  }

  v14 = *(a1 + 224);
  v15 = v14[1];
  if (v15 != v14[2])
  {
LABEL_25:
    __assert_rtn("tDSP_zmeye", "Tensor3Lib.h", 513, "N == X.cols");
  }

  v16 = v14[3];
  v27 = 1.0;
  if (v15)
  {
    v17 = 0;
    v18 = 1;
    v19 = v15;
    do
    {
      if (v18)
      {
        v20 = 0;
        for (k = 0; k < v18; ++k)
        {
          v22 = (*(*v14 + 8 * v17) + v20);
          vDSP_vclr(*v22, 1, v16);
          vDSP_vclr(v22[1], 1, v16);
          v18 = v14[2];
          v20 += 16;
        }

        v19 = v14[1];
      }

      ++v17;
    }

    while (v19 > v17);
    v23 = 0;
    for (m = 0; m != v15; ++m)
    {
      vDSP_vfill(&v27, *(*(*v14 + 8 * m) + v23), 1, v16);
      v23 += 16;
    }
  }

  *(a1 + 160) = 1;
  *(a1 + 104) = 0;
  return 0;
}

void t3l::tDSP_ztfilldiag<float>(void *a1, float a2)
{
  __A = a2;
  v13 = 0.0;
  v2 = a1[1];
  if (v2)
  {
    v4 = 0;
    v5 = a1[2];
    v6 = a1[3];
    do
    {
      if (v5)
      {
        v7 = 0;
        for (i = 0; i < v5; ++i)
        {
          v9 = (*(*a1 + 8 * v4) + v7);
          vDSP_vclr(*v9, 1, v6);
          vDSP_vclr(v9[1], 1, v6);
          v5 = a1[2];
          v7 += 16;
        }

        v2 = a1[1];
      }

      ++v4;
    }

    while (v2 > v4);
    if (v2)
    {
      v10 = 0;
      v11 = 0;
      v12 = a1[3];
      do
      {
        vDSP_vfill(&__A, *(*(*a1 + 8 * v11) + v10), 1, v12);
        vDSP_vfill(&v13, *(*(*a1 + 8 * v11++) + v10 + 8), 1, v12);
        v10 += 16;
      }

      while (a1[1] > v11);
    }
  }
}

uint64_t AU::BSS2::AUXIVARLS<float>::UpdatePrior(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 168);
  if (a2 > (*(a1 + 176) - v4) >> 2)
  {
    __assert_rtn("UpdatePrior", "AUBSS2Algorithm+XIVARLS.h", 366, "index <= priors.size()");
  }

  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  *(v4 + 4 * a2) = expf((a3 + -0.5) * a4);
  return 0;
}

uint64_t AU::BSS2::AUXIVARLS<float>::UpdateParam(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  switch(a2)
  {
    case 0:
      result = 0;
      *(a1 + 120) = a3 != 0.0;
      break;
    case 1:
      *(a1 + 68) = a3;
      v15 = 0.0;
      if (a3 > 0.0)
      {
        v16 = *(a1 + 36);
        if (v16 <= 0.0)
        {
          __assert_rtn("ComputeCoefFromTC", "Tensor3Lib.h", 30, "blockFs > 0");
        }

        v15 = expf(-1.0 / (v16 * a3));
      }

      result = 0;
      *(a1 + 72) = v15;
      break;
    case 2:
      result = 0;
      *(a1 + 132) = a3 != 0.0;
      break;
    case 3:
      v14 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 52) = v14;
      break;
    case 4:
      v9 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 56) = v9;
      break;
    case 5:
      v17 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 60) = v17;
      break;
    case 6:
      v19 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 64) = v19;
      break;
    case 7:
      result = 0;
      *(a1 + 112) = a3;
      break;
    case 8:
      result = 0;
      *(a1 + 48) = a3;
      break;
    case 9:
      v10 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 124) = v10;
      break;
    case 10:
      result = 0;
      *(a1 + 96) = a3;
      break;
    case 11:
      v8 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 128) = v8;
      break;
    case 12:
      result = 0;
      *(a1 + 80) = vcvtas_u32_f32((*(a1 + 32) * a3) / *(a1 + 40));
      break;
    case 13:
      v18 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 88) = v18;
      break;
    case 14:
      result = 0;
      v5 = *(a1 + 24) - 1;
      v6 = *(a1 + 32) / (*(a1 + 40) + *(a1 + 40));
      v7 = vcvtas_u32_f32(fabsf(a3 / v6));
      if (v7 < v5)
      {
        v5 = v7;
      }

      *(a1 + 136) = v5;
      break;
    case 15:
      result = 0;
      v11 = *(a1 + 24) - 1;
      v12 = *(a1 + 32) / (*(a1 + 40) + *(a1 + 40));
      v13 = vcvtas_u32_f32(fabsf(a3 / v12));
      if (v13 < v11)
      {
        v11 = v13;
      }

      *(a1 + 144) = v11;
      break;
    default:
      return 1;
  }

  return result;
}

uint64_t AU::BSS2::AUXIVARLS<float>::SideChain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  t3l::tDSP_copy_freq_abl_to_ztensor<float>(a2, **(a1 + 288), *(*(a1 + 288) + 8), *(a1 + 40), *(a1 + 16));
  AU::BSS2::GenerateOutput<float>(*(a1 + 216), *(a1 + 224), *(a1 + 288), *(a1 + 296), *(a1 + 112));
  if ((*(a1 + 133) & 1) != 0 || *(a1 + 132) == 1)
  {
    if (*(a1 + 16))
    {
      v5 = 0;
      do
      {
        v6 = *(**(a1 + 288) + 8 * v5);
        v7 = **(**(a1 + 336) + 8 * v5);
        v8 = *(a1 + 24);
        v15 = 629145600;
        vDSP_zvmags(v6, 1, v7, 1, v8);
        MEMORY[0x1E12BE8A0](v7, 1, &v15, v7, 1, v8);
        ++v5;
        v9 = *(a1 + 16);
      }

      while (v9 > v5);
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *(**(a1 + 296) + 8 * v10);
          v12 = **(**(a1 + 328) + 8 * v10);
          v13 = *(a1 + 24);
          v16 = 629145600;
          vDSP_zvmags(v11, 1, v12, 1, v13);
          MEMORY[0x1E12BE8A0](v12, 1, &v16, v12, 1, v13);
          ++v10;
        }

        while (*(a1 + 16) > v10);
      }
    }
  }

  if (*(a1 + 133) == 1)
  {
    AU::BSS2::FixWNG<float>(*(a1 + 296), *(a1 + 336), *(a1 + 328), *(a1 + 320), *(a1 + 112), *(a1 + 124));
  }

  if (*(a1 + 132) == 1)
  {
    AU::BSS2::MixturePhase<float>(*(a1 + 288), *(a1 + 336), *(a1 + 296), *(a1 + 328), **(a1 + 320), *(*(a1 + 320) + 24));
  }

  t3l::tDSP_copy_ztensor_to_freq_abl<float>(**(a1 + 296), a3, *(a1 + 40), *(a1 + 16));
  return 0;
}

float t3l::tDSP_copy_freq_abl_to_ztensor<float>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a3 < a5)
  {
    __assert_rtn("tDSP_copy_freq_abl_to_ztensor", "Tensor3Lib.h", 218, "XInput.rows >= numBuffs");
  }

  if (a5)
  {
    for (i = 0; i < a5; i = (i + 1))
    {
      v6 = *(a2 + 8 * i);
      if (a4)
      {
        v7 = 0;
        v8 = *(a1 + 8 + 16 * i + 8);
        v10 = *v6;
        v9 = v6[1];
        do
        {
          *(v10 + 4 * v7) = *(v8 + 4 * v7);
          v9[v7] = *(v8 + 4 * a4 + 4 * v7);
          ++v7;
        }

        while (a4 > v7);
      }

      else
      {
        v9 = v6[1];
      }

      result = *v9;
      *(*v6 + 4 * a4) = *v9;
      v9[a4] = 0.0;
      *v9 = 0.0;
    }
  }

  return result;
}

void AU::BSS2::GenerateOutput<float>(void *a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v8 = *(a3 + 8);
  v9 = *(a3 + 24);
  t3l::tDSP_zmzvmult<float>(a1, a3, a4);
  if (a5)
  {
    v10 = a5 + -1.0;
    if (v8 + -1.0 < v10)
    {
      v10 = v8 + -1.0;
    }

    if (v8)
    {
      v11 = 0;
      v12 = 0;
      v13 = v10;
      do
      {
        vDSP_zvmul(*(*a4 + 8 * v12), 1, (*(*a2 + 8 * v13) + v11), 1, *(*a4 + 8 * v12), 1, v9, 1);
        ++v12;
        v11 += 16;
      }

      while (v8 != v12);
    }
  }

  else if (v8)
  {
    v14 = 0;
    for (i = 0; i != v8; ++i)
    {
      vDSP_zvmul(*(*a4 + 8 * i), 1, (*(*a2 + 8 * i) + v14), 1, *(*a4 + 8 * i), 1, v9, 1);
      v14 += 16;
    }
  }
}

uint64_t AU::BSS2::FixWNG<float>(uint64_t result, void *a2, void *a3, uint64_t a4, unint64_t a5, float a6)
{
  __A = a6;
  v6 = a2[3];
  __B = 1.0;
  v19 = v6;
  if (v6 != *(result + 24))
  {
    __assert_rtn("FixWNG", "AUBSS2IVALib.h", 325, "Nf == YOutput.len");
  }

  if (v6 != a3[3])
  {
    __assert_rtn("FixWNG", "AUBSS2IVALib.h", 326, "Nf == YMag2.len");
  }

  if (v6 != *(a4 + 24))
  {
    __assert_rtn("FixWNG", "AUBSS2IVALib.h", 327, "Nf == temp1xNf.len");
  }

  v9 = result;
  v10 = *(result + 8);
  if (a2[1] < v10)
  {
    __assert_rtn("FixWNG", "AUBSS2IVALib.h", 328, "XMag2.rows >= Nm");
  }

  if (a3[1] < v10)
  {
    __assert_rtn("FixWNG", "AUBSS2IVALib.h", 329, "YMag2.rows >= Nm");
  }

  if (!*(a4 + 8))
  {
    __assert_rtn("FixWNG", "AUBSS2IVALib.h", 331, "temp1xNf.rows >= 1");
  }

  if (v10)
  {
    v12 = 0;
    v13 = ***a4;
    v14 = a5 + -1.0;
    if (v10 + -1.0 < v14)
    {
      v14 = v10 + -1.0;
    }

    v15 = v14;
    do
    {
      if (a5)
      {
        v16 = v15;
      }

      else
      {
        v16 = v12;
      }

      vDSP_vdiv(**(*a2 + 8 * v16), 1, **(*a3 + 8 * v16), 1, v13, 1, v6);
      vvsqrtf(v13, v13, &v19);
      vDSP_svdiv(&__A, v13, 1, v13, 1, v6);
      vDSP_vmin(v13, 1, &__B, 0, v13, 1, v6);
      vDSP_zrvmul(*(*v9 + 8 * v12), 1, v13, 1, *(*v9 + 8 * v12), 1, v6);
      v17 = **(*a3 + 8 * v12);
      result = MEMORY[0x1E12BE7F0](v17, 1, v13, 1, v17, 1, v6);
      ++v12;
    }

    while (v10 != v12);
  }

  return result;
}

void AU::BSS2::MixturePhase<float>(void *a1, void *a2, void *a3, void *a4, float ***a5, vDSP_Length __N)
{
  v6 = a1[3];
  v15 = v6;
  if (v6 != a2[3])
  {
    __assert_rtn("MixturePhase", "AUBSS2IVALib.h", 296, "Nf == XMag2.len");
  }

  if (v6 != a3[3])
  {
    __assert_rtn("MixturePhase", "AUBSS2IVALib.h", 297, "Nf == YOutput.len");
  }

  if (v6 != a4[3])
  {
    __assert_rtn("MixturePhase", "AUBSS2IVALib.h", 298, "Nf == YMag2.len");
  }

  if (v6 != __N)
  {
    __assert_rtn("MixturePhase", "AUBSS2IVALib.h", 299, "Nf == temp1xNf.len");
  }

  v12 = a1[1];
  if (v12 != a2[1])
  {
    __assert_rtn("MixturePhase", "AUBSS2IVALib.h", 300, "Nm == XMag2.rows");
  }

  if (v12 != a3[1])
  {
    __assert_rtn("MixturePhase", "AUBSS2IVALib.h", 301, "Nm == YOutput.rows");
  }

  if (v12 != a4[1])
  {
    __assert_rtn("MixturePhase", "AUBSS2IVALib.h", 302, "Nm == YMag2.rows");
  }

  if (v12)
  {
    v13 = 0;
    v14 = **a5;
    do
    {
      vDSP_vdiv(**(*a2 + 8 * v13), 1, **(*a4 + 8 * v13), 1, v14, 1, __N);
      vvsqrtf(v14, v14, &v15);
      vDSP_zrvmul(*(*a1 + 8 * v13), 1, v14, 1, *(*a3 + 8 * v13), 1, __N);
      ++v13;
    }

    while (v12 != v13);
  }
}

float t3l::tDSP_copy_ztensor_to_freq_abl<float>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v5 = *(a2 + 8 + 16 * i + 8);
      v6 = *(a1 + 8 * i);
      v7 = *v6;
      if (a3)
      {
        v8 = 0;
        v9 = v6[1];
        do
        {
          *(v5 + 4 * v8) = *(v7 + 4 * v8);
          *(v5 + 4 * a3 + 4 * v8) = *(v9 + 4 * v8);
          ++v8;
        }

        while (a3 > v8);
      }

      result = *(v7 + 4 * a3);
      *(v5 + 4 * a3) = result;
    }
  }

  return result;
}

void t3l::tDSP_zmzvmult<float>(void *a1, uint64_t a2, void *a3)
{
  __N = a1[3];
  if (__N != *(a2 + 24) || __N != a3[3])
  {
    __assert_rtn("tDSP_zmzvmult", "Tensor3Lib.h", 603, "A.len == b.len && (A.len == c.len)");
  }

  v7 = a1[2];
  if (v7 != *(a2 + 8))
  {
    __assert_rtn("tDSP_zmzvmult", "Tensor3Lib.h", 604, "A.cols == b.rows");
  }

  if (*(a2 + 16) != 1)
  {
    __assert_rtn("tDSP_zmzvmult", "Tensor3Lib.h", 605, "b.cols == 1");
  }

  if (a3[2] != 1)
  {
    __assert_rtn("tDSP_zmzvmult", "Tensor3Lib.h", 606, "c.cols == 1");
  }

  v9 = a1[1];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      vDSP_zvmul(*(*a1 + 8 * i), 1, **a2, 1, *(*a3 + 8 * i), 1, __N, 1);
      if (v7 >= 2)
      {
        v11 = 16;
        for (j = 1; j != v7; ++j)
        {
          vDSP_zvma((*(*a1 + 8 * i) + v11), 1, *(*a2 + 8 * j), 1, *(*a3 + 8 * i), 1, *(*a3 + 8 * i), 1, __N);
          v11 += 16;
        }
      }
    }
  }
}

uint64_t AU::BSS2::AUXIVARLS<float>::Process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  v4 = a1;
  ++*(a1 + 160);
  t3l::tDSP_copy_freq_abl_to_ztensor<float>(a2, **(a1 + 288), *(*(a1 + 288) + 8), *(a1 + 40), *(a1 + 16));
  if (*(v4 + 16))
  {
    v5 = 0;
    do
    {
      v6 = *(**(v4 + 288) + 8 * v5);
      v7 = **(**(v4 + 336) + 8 * v5);
      v8 = *(v4 + 24);
      v103 = 2.2204e-16;
      vDSP_zvmags(v6, 1, v7, 1, v8);
      MEMORY[0x1E12BE8A0](v7, 1, &v103, v7, 1, v8);
      ++v5;
    }

    while (*(v4 + 16) > v5);
  }

  if ((*(v4 + 120) & 1) != 0 && AU::BSS2::AboveMinEnergyThreshold<float>(*(v4 + 336), *(v4 + 128)))
  {
    v9 = *(v4 + 16);
    v10 = *(v4 + 288);
    if (v9)
    {
      v11 = *v10;
      do
      {
        v12 = *v11++;
        **v12 = (*v12)[1];
        *v12[1] = v12[1][1];
        --v9;
      }

      while (v9);
    }

    t3l::tDSP_zmzvmult<float>(*(v4 + 216), v10, *(v4 + 296));
    if (*(v4 + 16))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(**(v4 + 296) + 8 * v14);
        vDSP_zvmags(v15, 1, v15->realp, 1, *(v4 + 24));
        vDSP_sve((**(**(v4 + 296) + 8 * v14) + 4 * *(v4 + 136)), 1, (*(v4 + 192) + v13), *(v4 + 144) - *(v4 + 136));
        v16 = *(v4 + 192);
        v17 = (*(v4 + 48) * 0.5);
        v18 = log2((*(v16 + 4 * v14) + *(v4 + 52)));
        v19 = exp2(v18 * v17);
        *(v16 + 4 * v14) = v19;
        *(v16 + 4 * v14) = *(*(v4 + 168) + 4 * v14) * v19;
        ++v14;
        v13 += 4;
      }

      while (*(v4 + 16) > v14);
    }

    t3l::tDSP_ztvztvhmultupper<float>(*(v4 + 288), *(v4 + 288), *(v4 + 304));
    v20.n128_u32[0] = *(v4 + 56);
    if (v20.n128_f32[0] > 0.0)
    {
      t3l::tDSP_zmsreg<float>(*(v4 + 304), (v4 + 56), v20);
    }

    v96 = v4;
    v93 = a3;
    if (*(v4 + 16))
    {
      v21 = 0;
      do
      {
        v20.n128_u32[0] = *(*(v4 + 192) + 4 * v21);
        AU::BSS2::UpdateVj<float>(*(v4 + 304), *(*(v4 + 232) + 8 * v21++), *(v4 + 296), 1, v20, *(v4 + 72), *(v4 + 60));
        v22 = *(v4 + 16);
      }

      while (v22 > v21);
      v23 = *(v4 + 152);
      if ((v23 & 1) == 0)
      {
        if (!v22)
        {
          goto LABEL_58;
        }

        v92 = *(v4 + 152);
        v27 = 0;
        do
        {
          v28 = *(*(v4 + 256) + 8 * v27);
          v29 = *(*(v4 + 192) + 4 * v27);
          v30 = *(v4 + 72);
          v32 = *(v4 + 296);
          v31 = *(v4 + 304);
          v33 = *(v4 + 288);
          v34 = *(v4 + 320);
          v35 = *(v33 + 24);
          v36 = *(v33 + 8);
          __A = (1.0 - v30) / v29;
          v103 = v30 * v30;
          v100 = __A * v30;
          v101 = 1.0 / v30;
          if (v36 != v28[1])
          {
            __assert_rtn("tDSP_zvtzmzvmult", "Tensor3Lib.h", 776, "a.rows == B.rows");
          }

          if (v36 != v28[2])
          {
            __assert_rtn("tDSP_zvtzmzvmult", "Tensor3Lib.h", 777, "a.rows == B.cols");
          }

          if (v34[1] != 1)
          {
            __assert_rtn("tDSP_zvtzmzvmult", "Tensor3Lib.h", 778, "1 == c.rows");
          }

          if (v34[2] != 1)
          {
            __assert_rtn("tDSP_zvtzmzvmult", "Tensor3Lib.h", 779, "1 == c.cols");
          }

          if (v32[1] != v36)
          {
            __assert_rtn("tDSP_zvtzmzvmult", "Tensor3Lib.h", 780, "Ba.rows == a.rows");
          }

          if (v32[2] != 1)
          {
            __assert_rtn("tDSP_zvtzmzvmult", "Tensor3Lib.h", 781, "Ba.cols == 1");
          }

          if (v35 != v28[3] || v35 != v32[3] || v35 != v34[3])
          {
            __assert_rtn("tDSP_zvtzmzvmult", "Tensor3Lib.h", 782, "a.len == B.len && a.len == Ba.len && a.len == c.len");
          }

          t3l::tDSP_zmzvmult<float>(v28, v33, v32);
          __N = *(v33 + 24);
          if (__N != v32[3] || __N != v34[3])
          {
            __assert_rtn("tDSP_zvhzvmult", "Tensor3Lib.h", 753, "a.len == b.len && a.len == c.len");
          }

          v38 = *(v33 + 8);
          if (v38 != v32[1])
          {
            __assert_rtn("tDSP_zvhzvmult", "Tensor3Lib.h", 754, "a.rows == b.rows");
          }

          if (*(v33 + 16) != 1 || v32[2] != 1)
          {
            __assert_rtn("tDSP_zvhzvmult", "Tensor3Lib.h", 755, "a.cols == b.cols && a.cols == 1");
          }

          v94 = v27;
          vDSP_zvmul(**v33, 1, **v32, 1, **v34, 1, __N, -1);
          if (v38 >= 2)
          {
            for (i = 1; i != v38; ++i)
            {
              vDSP_zvcma(*(*v33 + 8 * i), 1, (*v32)[i], 1, **v34, 1, **v34, 1, __N);
            }
          }

          MEMORY[0x1E12BE940](***v34, 1, &v100, ***v34, 1, v35);
          MEMORY[0x1E12BE8A0](***v34, 1, &v103, ***v34, 1, v35);
          vDSP_svdiv(&__A, ***v34, 1, ***v34, 1, v35);
          MEMORY[0x1E12BE810](***v34, 1, ***v34, 1, v35);
          t3l::tDSP_ztvztvhmultupper<float>(v32, v32, v31);
          if (v36)
          {
            v40 = 0;
            v41 = 0;
            v42 = v36;
            v97 = v36;
            do
            {
              v43 = v40;
              v44 = v42;
              do
              {
                v45 = (*(*v31 + 8 * v41) + v43);
                vDSP_zrvmul(v45, 1, ***v34, 1, v45, 1, v35);
                v46 = (*(*v28 + 8 * v41) + v43);
                MEMORY[0x1E12BE940](*v46, 1, &v101, *v46, 1, v35);
                MEMORY[0x1E12BE940](v46[1], 1, &v101, v46[1], 1, v35);
                v47 = (*(*v28 + 8 * v41) + v43);
                vDSP_zvadd(v47, 1, (*(*v31 + 8 * v41) + v43), 1, v47, 1, v35);
                v43 += 16;
                v44 = (v44 - 1);
              }

              while (v44);
              v41 = (v41 + 1);
              v42 = (v42 - 1);
              v40 += 16;
            }

            while (v41 != v97);
          }

          t3l::tDSP_ztsymmetric<float>(v28);
          v4 = v96;
          v27 = v94 + 1;
          v25 = *(v96 + 16);
        }

        while (v25 > v94 + 1);
        if (!v92)
        {
          goto LABEL_58;
        }

LABEL_54:
        if (v25)
        {
          v48 = 0;
          do
          {
            AU::BSS2::UpdateWProject<float>(*(v4 + 216), v48, *(*(v4 + 232) + 8 * v48), *(v4 + 328), *(v4 + 304), *(v4 + 296), *(v4 + 320), *(v4 + 64));
            AU::BSS2::UpdateWScale<float>(*(v4 + 216), v48, *(*(v4 + 232) + 8 * v48), *(v4 + 216), *(v4 + 296), *(v4 + 304));
            ++v48;
          }

          while (*(v4 + 16) > v48);
        }

        goto LABEL_57;
      }

      if (v22)
      {
        for (j = 0; j < v25; ++j)
        {
          t3l::tDSP_zminverselu<float>(*(*(v4 + 232) + 8 * j), *(*(v4 + 256) + 8 * j), *(v4 + 328), *(v4 + 304), *(v4 + 296), *(v4 + 320));
          v25 = *(v4 + 16);
        }

        if (!v23)
        {
LABEL_58:
          t3l::tDSP_ztmov<float>(*(v4 + 216), *(v4 + 280));
          if (*(v4 + 16))
          {
            v49 = 0;
            do
            {
              v50 = *(*(v4 + 256) + 8 * v49);
              v51 = *(v4 + 216);
              v52 = *(v4 + 224);
              v53 = v50[3];
              if (v53 != *(v52 + 24) || v53 != v51[3])
              {
                __assert_rtn("tDSP_zmzmekmulth", "Tensor3Lib.h", 693, "A.len == B.len && A.len == C.len");
              }

              v55 = v50[2];
              if (v55 <= v49)
              {
                __assert_rtn("tDSP_zmzmekmulth", "Tensor3Lib.h", 694, "BcolInd < A.cols");
              }

              v56 = v50[1];
              if (v56)
              {
                for (k = 0; k != v56; ++k)
                {
                  vDSP_zvmul(*(*v50 + 8 * k), 1, (**v52 + 16 * v49), 1, (*(*v51 + 8 * v49) + 16 * k), 1, v53, 1);
                  if (v55 >= 2)
                  {
                    v58 = 16;
                    for (m = 1; m != v55; ++m)
                    {
                      v60 = (*(*v51 + 8 * v49) + 16 * k);
                      vDSP_zvma((*(*v50 + 8 * k) + v58), 1, (*(*v52 + 8 * m) + 16 * v49), 1, v60, 1, v60, 1, v53);
                      v58 += 16;
                    }
                  }

                  v61 = *(*(*v51 + 8 * v49) + 16 * k + 8);
                  MEMORY[0x1E12BE810](v61, 1, v61, 1, v53);
                }

                v4 = v96;
                v51 = *(v96 + 216);
              }

              AU::BSS2::UpdateWScale<float>(v51, v49, *(*(v4 + 232) + 8 * v49), v51, *(v4 + 296), *(v4 + 320));
              v62 = *(v4 + 280);
              v63 = *(v4 + 216);
              v64 = *(v4 + 224);
              v66 = *(v4 + 296);
              v65 = *(v4 + 304);
              v67 = *(v4 + 312);
              v95 = *(v4 + 320);
              v68 = v63[1];
              v69 = v63[3];
              v103 = 1.0;
              if (v68)
              {
                v70 = 0;
                v71 = 0;
                v98 = v63;
                do
                {
                  vDSP_zvsub((*(*v63 + 8 * v49) + v70), 1, (*(*v62 + 8 * v49) + v70), 1, (*v66)[v71], 1, v69);
                  v63 = v98;
                  ++v71;
                  v70 += 16;
                }

                while (v68 != v71);
              }

              v99 = v68;
              v72 = v66[3];
              if (v72 != v64[3] || v72 != v67[3])
              {
                __assert_rtn("tDSP_zvtzmmult", "Tensor3Lib.h", 726, "a.len == B.len && a.len == c.len");
              }

              v74 = v66[1];
              if (v74 != v64[2])
              {
                __assert_rtn("tDSP_zvtzmmult", "Tensor3Lib.h", 727, "arows == bcols");
              }

              if (v74 != v67[1])
              {
                __assert_rtn("tDSP_zvtzmmult", "Tensor3Lib.h", 728, "a.rows == c.rows");
              }

              if (v66 == v67)
              {
                __assert_rtn("tDSP_zvtzmmult", "Tensor3Lib.h", 729, "&a != &c");
              }

              if (v74)
              {
                for (n = 0; n != v74; n = (n + 1))
                {
                  vDSP_zvmul(**v66, 1, (**v64 + 16 * n), 1, (*v67)[n], 1, v72, 1);
                  if (v74 != 1)
                  {
                    for (ii = 1; ii != v74; ++ii)
                    {
                      vDSP_zvma((*v66)[ii], 1, (*(*v64 + 8 * ii) + 16 * n), 1, (*v67)[n], 1, (*v67)[n], 1, v72);
                    }
                  }
                }
              }

              MEMORY[0x1E12BE8A0]((*v67)[v49]->realp, 1, &v103, ***v95, 1, v69);
              vDSP_svdiv(&v103, ***v95, 1, ***v95, 1, v69);
              if (v99)
              {
                v77 = 0;
                v4 = v96;
                do
                {
                  vDSP_zrvmul((*v67)[v77], 1, ***v95, 1, (*v67)[v77], 1, v69);
                  ++v77;
                }

                while (v99 != v77);
                AU::BSS2::vDSP_zmekzvhmultT<float>(v64, v49, v67, v65);
                for (jj = 0; jj != v99; ++jj)
                {
                  v79 = 0;
                  v80 = v99;
                  do
                  {
                    v81 = (*(*v64 + 8 * jj) + v79);
                    vDSP_zvsub(v81, 1, (*(*v65 + 8 * jj) + v79), 1, v81, 1, v69);
                    v79 += 16;
                    --v80;
                  }

                  while (v80);
                }
              }

              else
              {
                AU::BSS2::vDSP_zmekzvhmultT<float>(v64, v49, v67, v65);
                v4 = v96;
              }

              ++v49;
            }

            while (*(v4 + 16) > v49);
          }

          goto LABEL_100;
        }

        goto LABEL_54;
      }
    }

    else if ((*(v4 + 152) & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_57:
    t3l::tDSP_zminverselu<float>(*(v4 + 216), *(v4 + 224), *(v4 + 328), *(v4 + 304), *(v4 + 296), *(v4 + 320));
LABEL_100:
    AU::BSS2::GenerateOutput<float>(*(v4 + 216), *(v4 + 224), *(v4 + 288), *(v4 + 296), *(v4 + 112));
    if (*(v4 + 16))
    {
      v82 = 0;
      do
      {
        v83 = *(**(v4 + 296) + 8 * v82);
        v84 = **(**(v4 + 328) + 8 * v82);
        v85 = *(v4 + 24);
        v103 = 2.2204e-16;
        vDSP_zvmags(v83, 1, v84, 1, v85);
        MEMORY[0x1E12BE8A0](v84, 1, &v103, v84, 1, v85);
        ++v82;
      }

      while (*(v4 + 16) > v82);
    }

    if (*(v4 + 133))
    {
      AU::BSS2::FixWNG<float>(*(v4 + 296), *(v4 + 336), *(v4 + 328), *(v4 + 304), *(v4 + 112), *(v4 + 124));
    }

    if (*(v4 + 132) == 1)
    {
      AU::BSS2::MixturePhase<float>(*(v4 + 288), *(v4 + 336), *(v4 + 296), *(v4 + 328), **(v4 + 304), *(*(v4 + 304) + 24));
    }

    *(v4 + 152) = 0;
    if (*(v4 + 16))
    {
      v86 = 0;
      v87 = *(v4 + 24);
      v88 = ****(v4 + 304);
      do
      {
        v89 = *(**(v4 + 296) + 8 * v86);
        MEMORY[0x1E12BE5D0](*v89, 1, v89[1], 1, v88, 1, v87);
        if (v87)
        {
            ;
          }
        }

        ++v86;
        v91 = *(v4 + 16);
      }

      while (v91 > v86);
    }

    else
    {
      v91 = 0;
    }

    t3l::tDSP_copy_ztensor_to_freq_abl<float>(**(v4 + 296), v93, *(v4 + 40), v91);
    return 0;
  }

  AU::BSS2::GenerateOutput<float>(*(v4 + 216), *(v4 + 224), *(v4 + 288), *(v4 + 296), *(v4 + 112));
  return 0;
}

BOOL AU::BSS2::AboveMinEnergyThreshold<float>(void *a1, float a2)
{
  if (a1[1])
  {
    v4 = 0;
    v5 = a1[3];
    v6 = 3.4028e38;
    do
    {
      __C = 0.0;
      vDSP_sve(**(*a1 + 8 * v4), 1, &__C, v5);
      v7 = sqrtf((fabsf(__C) / (v5 + 2.2204e-16)) + 2.2204e-16);
      if (v7 < v6)
      {
        v6 = v7;
      }

      ++v4;
    }

    while (v4 < a1[1]);
  }

  else
  {
    v6 = 3.4028e38;
  }

  return v6 >= a2;
}

void t3l::tDSP_ztvztvhmultupper<float>(void *a1, void *a2, void *a3)
{
  v3 = a1[1];
  if (v3 != a2[1])
  {
    __assert_rtn("tDSP_ztvztvhmultupper", "Tensor3Lib.h", 832, "a.rows == b.rows");
  }

  if (a1[2] != a2[2])
  {
    __assert_rtn("tDSP_ztvztvhmultupper", "Tensor3Lib.h", 833, "a.cols == b.cols");
  }

  if (a3[1] != v3)
  {
    __assert_rtn("tDSP_ztvztvhmultupper", "Tensor3Lib.h", 834, "C.rows == a.rows");
  }

  if (a3[2] != v3)
  {
    __assert_rtn("tDSP_ztvztvhmultupper", "Tensor3Lib.h", 835, "C.cols == a.rows");
  }

  v7 = a1[3];
  if (v7 != a3[3])
  {
    __assert_rtn("tDSP_ztvztvhmultupper", "Tensor3Lib.h", 836, "a.len == C.len");
  }

  if (a2[3] != v7)
  {
    __assert_rtn("tDSP_ztvztvhmultupper", "Tensor3Lib.h", 837, "b.len == C.len");
  }

  if (v3)
  {
    v8 = 0;
    for (i = 0; i != v3; ++i)
    {
      v10 = v8;
      v11 = i;
      do
      {
        vDSP_zvmul(*(*a2 + 8 * v11++), 1, *(*a1 + 8 * i), 1, (*(*a3 + 8 * i) + v10), 1, v7, -1);
        v10 += 16;
      }

      while (v3 != v11);
      v8 += 16;
    }

    v12 = 0;
    v13 = 8;
    do
    {
      vDSP_vclr(*(*(*a3 + 8 * v12++) + v13), 1, v7);
      v13 += 16;
    }

    while (v3 != v12);
  }
}

void *t3l::tDSP_zmsreg<float>(void *result, unsigned __int32 *a2, __n128 a3)
{
  v3 = result[1];
  if (v3 != result[2])
  {
    __assert_rtn("tDSP_zmsreg", "Tensor3Lib.h", 880, "Nm == A.cols");
  }

  a3.n128_u32[0] = *a2;
  if (*a2 < 0.0)
  {
    __assert_rtn("tDSP_zmsreg", "Tensor3Lib.h", 881, "reg >= 0");
  }

  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = result[3];
    do
    {
      v9 = *(*(*v5 + 8 * v7) + v6);
      result = MEMORY[0x1E12BE8A0](v9, 1, a2, v9, 1, v8, a3);
      ++v7;
      v6 += 16;
    }

    while (v3 != v7);
  }

  return result;
}

void AU::BSS2::UpdateVj<float>(void *a1, void *a2, const float ****a3, char a4, __n128 a5, float a6, float a7)
{
  v26 = a7;
  if (a5.n128_f32[0] <= 0.0)
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 231, "rk > 0");
  }

  if (a6 < 0.0)
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 232, "covAlpha >= 0");
  }

  if (a7 < 0.0)
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 233, "weightedCovReg >= 0");
  }

  v10 = a1[3];
  if (v10 != a2[3])
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 234, "Nv == Vj.len");
  }

  if (v10 != a3[3])
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 235, "Nv == temp1x1xNf.len");
  }

  if (!a3[1] || !a3[2])
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 236, "temp1x1xNf.rows >= 1 && temp1x1xNf.cols >= 1");
  }

  v12 = a1[1];
  if (a1[2] != v12)
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 237, "xxt.cols == Nm");
  }

  if (a2[1] != v12)
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 238, "Vj.rows == Nm");
  }

  if (a2[2] != v12)
  {
    __assert_rtn("UpdateVj", "AUBSS2IVALib.h", 239, "Vj.cols == Nm");
  }

  a5.n128_f32[0] = 1.0 / a5.n128_f32[0];
  v24 = a5.n128_u32[0];
  __B = a6 / (1.0 - a6);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = v12;
    v22 = v12;
    do
    {
      v23 = v13;
      v16 = v15;
      do
      {
        v17 = (*(*a1 + 8 * v14) + v13);
        v18 = **a3;
        MEMORY[0x1E12BE940](*v17, 1, &v24, *v18, 1, v10);
        MEMORY[0x1E12BE940](v17[1], 1, &v24, v18[1], 1, v10);
        v19 = **a3;
        v20 = (*(*a2 + 8 * v14) + v13);
        vDSP_vavlin(*v19, 1, &__B, *v20, 1, v10);
        vDSP_vavlin(v19[1], 1, &__B, v20[1], 1, v10);
        v13 += 16;
        --v16;
      }

      while (v16);
      ++v14;
      --v15;
      v13 = v23 + 16;
    }

    while (v14 != v22);
  }

  if (a4)
  {
    t3l::tDSP_ztsymmetric<float>(a2);
  }

  if (a7 > 0.0)
  {
    t3l::tDSP_zmsreg<float>(a2, &v26, a5);
  }
}

void *t3l::tDSP_zmeyef<float>(void *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 != result[2])
  {
    __assert_rtn("tDSP_zmeyef", "Tensor3Lib.h", 527, "X.rows == X.cols");
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = 0;
      v5 = (*(*result + 8 * i) + 8);
      do
      {
        if (i == v4)
        {
          v6 = 1.0;
        }

        else
        {
          v6 = 0.0;
        }

        v7 = *v5;
        *(*(v5 - 1) + 4 * a2) = v6;
        *(v7 + 4 * a2) = 0;
        ++v4;
        v5 += 2;
      }

      while (v2 != v4);
    }
  }

  return result;
}

void t3l::tDSP_ztsymmetric<float>(void *a1)
{
  v1 = a1[1];
  if (v1 != a1[2])
  {
    __assert_rtn("tDSP_ztsymmetric", "Tensor3Lib.h", 576, "A.rows == A.cols");
  }

  if (v1)
  {
    v3 = 0;
    v4 = a1[3];
    do
    {
      if (v3)
      {
        v5 = 0;
        for (i = 0; i != v3; ++i)
        {
          vDSP_zvconj((*(*a1 + 8 * i) + 16 * v3), 1, (*(*a1 + 8 * v3) + v5), 1, v4);
          v5 += 16;
        }
      }

      vDSP_vclr(*(*(*a1 + 8 * v3) + 16 * v3 + 8), 1, v4);
      ++v3;
    }

    while (v3 != v1);
  }
}

void t3l::tDSP_zminverselu<float>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  t3l::tDSP_ztmov<float>(a1, a4);
  v22 = a3;
  v24 = a6;
  t3l::tDSP_zmlu<float>(a4, a3, a5, a6);
  v11 = a4[1];
  v23 = a4;
  if (a4[2] < v11)
  {
    __assert_rtn("tDSP_zminverse_from_lu", "Tensor3Lib.h", 1117, "lu.cols >= n");
  }

  if (a5[1] < v11)
  {
    __assert_rtn("tDSP_zminverse_from_lu", "Tensor3Lib.h", 1118, "tempNx1xNf.rows >= n");
  }

  if (!*(a6 + 8))
  {
    __assert_rtn("tDSP_zminverse_from_lu", "Tensor3Lib.h", 1119, "temp1x1xNf.rows >= 1");
  }

  if (a2[1] < v11)
  {
    __assert_rtn("tDSP_zminverse_from_lu", "Tensor3Lib.h", 1120, "inv.rows >= n");
  }

  if (a2[2] < v11)
  {
    __assert_rtn("tDSP_zminverse_from_lu", "Tensor3Lib.h", 1121, "inv.cols >= n");
  }

  v12 = a4[3];
  if (v12 != a2[3] || v12 != a3[3] || v12 != a5[3] || v12 != *(a6 + 24))
  {
    __assert_rtn("tDSP_zminverse_from_lu", "Tensor3Lib.h", 1126, "lu.len == inv.len && lu.len == pivotNx1xNf.len && lu.len == tempNx1xNf.len && lu.len == temp1x1xNf.len && lu.len == inv.len");
  }

  __A = 1.0;
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = a5[1];
      if (v14)
      {
        v15 = 0;
        v16 = a5[2];
        v17 = a5[3];
        do
        {
          if (v16)
          {
            v18 = 0;
            for (j = 0; j < v16; ++j)
            {
              v20 = (*(*a5 + 8 * v15) + v18);
              vDSP_vclr(*v20, 1, v17);
              vDSP_vclr(v20[1], 1, v17);
              v16 = a5[2];
              v18 += 16;
            }

            v14 = a5[1];
          }

          ++v15;
        }

        while (v14 > v15);
      }

      vDSP_vfill(&__A, **(*a5 + 8 * i), 1, v12);
      t3l::tDSP_zmsolvelu<float>(v23, v22, a5, v24);
      for (k = 0; k != v11; ++k)
      {
        vDSP_zvmov(*(*a5 + 8 * k), 1, (*(*a2 + 8 * k) + 16 * i), 1, v12);
      }
    }
  }
}

void t3l::tDSP_ztmov<float>(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    __assert_rtn("tDSP_ztmov", "Tensor3Lib.h", 355, "rows == lhs.rows");
  }

  v5 = a1[2];
  if (v5 != a2[2])
  {
    __assert_rtn("tDSP_ztmov", "Tensor3Lib.h", 356, "cols == lhs.cols");
  }

  v6 = a1[3];
  if (v6 != a2[3])
  {
    __assert_rtn("tDSP_ztmov", "Tensor3Lib.h", 357, "Nv == lhs.len");
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (v5)
      {
        v8 = 0;
        v9 = v5;
        do
        {
          vDSP_zvmov((*(*a1 + 8 * i) + v8), 1, (*(*a2 + 8 * i) + v8), 1, v6);
          v8 += 16;
          --v9;
        }

        while (v9);
      }
    }
  }
}

void AU::BSS2::UpdateWScale<float>(void *a1, unint64_t a2, uint64_t a3, void *a4, const DSPSplitComplex ***a5, const DSPSplitComplex ***a6)
{
  v6 = a1[3];
  v7 = a1[1];
  __A = 1.0;
  v26 = v6;
  __N = v6;
  if (v6 != *(a3 + 24))
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 41, "Nf == Vj.len");
  }

  if (v6 != a4[3])
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 42, "Nf == Wout.len");
  }

  if (v6 != a5[3])
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 43, "Nf == tempNx1xNf.len");
  }

  if (v6 != a6[3])
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 44, "Nf == temp1x1xNf.len");
  }

  if (v7 <= a2)
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 46, "j < Nm");
  }

  if (*(a3 + 8) != v7)
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 47, "Vj.rows == Nm");
  }

  if (*(a3 + 16) != v7)
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 48, "Vj.cols == Nm");
  }

  if (a4[1] != v7)
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 49, "Wout.rows == Nm");
  }

  if (a4[2] != v7)
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 50, "Wout.cols == Nm");
  }

  if (a1[2] != v7)
  {
    __assert_rtn("UpdateWScale", "AUBSS2IVALib.h", 51, "Win.cols == Nm");
  }

  v14 = 0;
  do
  {
    if (v14)
    {
      vDSP_zvconj((**a3 + 16 * v14), 1, **a6, 1, __N);
      v15 = *(*a1 + 8 * a2);
      v16 = **a6;
      v17 = (*a5)[v14];
    }

    else
    {
      v15 = *(*a1 + 8 * a2);
      v16 = **a3;
      v17 = **a5;
    }

    vDSP_zvmul(v15, 1, v16, 1, v17, 1, __N, -1);
    if (v7 >= 2)
    {
      v18 = 16;
      for (i = 1; i != v7; ++i)
      {
        if (v14 <= i)
        {
          vDSP_zvcma((*(*a1 + 8 * a2) + v18), 1, (*(*a3 + 8 * v14) + v18), 1, (*a5)[v14], 1, (*a5)[v14], 1, __N);
        }

        else
        {
          vDSP_zvconj((*(*a3 + 8 * i) + 16 * v14), 1, **a6, 1, __N);
          vDSP_zvcma((*(*a1 + 8 * a2) + v18), 1, **a6, 1, (*a5)[v14], 1, (*a5)[v14], 1, __N);
        }

        v18 += 16;
      }
    }

    ++v14;
  }

  while (v14 != v7);
  vDSP_zvmul(*(*a1 + 8 * a2), 1, **a5, 1, **a6, 1, __N, 1);
  if (v7 >= 2)
  {
    v20 = 1;
    v21 = 16;
    do
    {
      vDSP_zvma((*(*a1 + 8 * a2) + v21), 1, (*a5)[v20++], 1, **a6, 1, **a6, 1, __N);
      v21 += 16;
    }

    while (v7 != v20);
  }

  realp = (**a6)->realp;
  v27 = 619091349;
  vDSP_vabs(realp, 1, realp, 1, __N);
  MEMORY[0x1E12BE8A0](realp, 1, &v27, realp, 1, __N);
  vvsqrtf((**a6)->realp, (**a6)->realp, &v26);
  vDSP_svdiv(&__A, (**a6)->realp, 1, (**a6)->realp, 1, v26);
  v23 = 0;
  do
  {
    vDSP_zrvmul((*(*a1 + 8 * a2) + v23), 1, (**a6)->realp, 1, (*(*a4 + 8 * a2) + v23), 1, v26);
    v23 += 16;
    --v7;
  }

  while (v7);
}

void AU::BSS2::UpdateWProject<float>(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, const DSPSplitComplex ***a7, float a8)
{
  v31 = a8;
  v16 = a1[2];
  v15 = a1[3];
  __A = 1.0;
  t3l::tDSP_zmzmuppermult<float>(a1, a3, a5);
  if (a8 > 0.0)
  {
    t3l::tDSP_zmsreg<float>(a5, &v31, v17);
  }

  v27 = a5;
  v28 = a4;
  v29 = a7;
  t3l::tDSP_zmlu<float>(a5, a4, a6, a7);
  v18 = a6[1];
  if (v18)
  {
    v19 = 0;
    v20 = a6[2];
    v21 = a6[3];
    do
    {
      if (v20)
      {
        v22 = 0;
        for (i = 0; i < v20; ++i)
        {
          v24 = (*(*a6 + 8 * v19) + v22);
          vDSP_vclr(*v24, 1, v21);
          vDSP_vclr(v24[1], 1, v21);
          v20 = a6[2];
          v22 += 16;
        }

        v18 = a6[1];
      }

      ++v19;
    }

    while (v18 > v19);
  }

  vDSP_vfill(&__A, **(*a6 + 8 * a2), 1, v15);
  t3l::tDSP_zmsolvelu<float>(v27, v28, a6, v29);
  if (v16)
  {
    v25 = 0;
    for (j = 0; j != v16; ++j)
    {
      vDSP_zvconj(*(*a6 + 8 * j), 1, (*(*a1 + 8 * a2) + v25), 1, v15);
      v25 += 16;
    }
  }
}

void t3l::tDSP_zmzmuppermult<float>(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[2];
  if (v3 != *(a2 + 8) || a3[1] < v3)
  {
    __assert_rtn("tDSP_zmzmuppermult", "Tensor3Lib.h", 629, "A.cols == B.rows && C.rows >= A.cols");
  }

  __N = a1[3];
  if (__N != *(a2 + 24) || __N != a3[3])
  {
    __assert_rtn("tDSP_zmzmuppermult", "Tensor3Lib.h", 630, "A.len == B.len && (A.len == C.len)");
  }

  v16 = a1[1];
  if (v16)
  {
    v10 = 0;
    v11 = *(a2 + 16);
    do
    {
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          vDSP_zvmul(*(*a1 + 8 * v10), 1, (**a2 + 16 * i), 1, (*(*a3 + 8 * v10) + 16 * i), 1, __N, 1);
          if (v3 >= 2)
          {
            v13 = 16;
            for (j = 1; j != v3; ++j)
            {
              v15 = (*(*a3 + 8 * v10) + 16 * i);
              if (j <= i)
              {
                vDSP_zvma((*(*a1 + 8 * v10) + v13), 1, (*(*a2 + 8 * j) + 16 * i), 1, v15, 1, v15, 1, __N);
              }

              else
              {
                vDSP_zvcma((*(*a2 + 8 * i) + v13), 1, (*(*a1 + 8 * v10) + v13), 1, v15, 1, v15, 1, __N);
              }

              v13 += 16;
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v16);
  }
}

void t3l::tDSP_zmlu<float>(uint64_t *a1, void *a2, void *a3, const DSPSplitComplex ***a4)
{
  v4 = a1[2];
  __N = a1[3];
  v6 = a1[1];
  v55 = 629145600;
  __A = 1.0;
  if (v4 != v6)
  {
    __assert_rtn("tDSP_zmlu", "Tensor3Lib.h", 923, "lu.cols == n");
  }

  v7 = a3;
  if (a3[1] < v6)
  {
    __assert_rtn("tDSP_zmlu", "Tensor3Lib.h", 924, "tempNx1xNf.rows >= n");
  }

  if (!a4[1])
  {
    __assert_rtn("tDSP_zmlu", "Tensor3Lib.h", 925, "temp1x1xNf.rows >= 1");
  }

  if (__N > a2[3] || __N > a3[3] || __N > a4[3])
  {
    __assert_rtn("tDSP_zmlu", "Tensor3Lib.h", 928, "Nv <= pivotNx1xNf.len && Nv <= tempNx1xNf.len && Nv <= temp1x1xNf.len");
  }

  v52 = v6 - 1;
  if (v6 <= 1)
  {
    __assert_rtn("tDSP_zmlu", "Tensor3Lib.h", 929, "n > 1");
  }

  v12 = 0;
  v13 = *(**a3 + 8);
  v14 = **a4;
  realp = v14->realp;
  imagp = v14->imagp;
  for (i = v6; i != v12; v6 = i)
  {
    vDSP_vclr(**(*v7 + 8 * v12), 1, __N);
    v17 = 0;
    do
    {
      vDSP_zvabs((*(*a1 + 8 * v12) + v17), 1, *(**v7 + 8), 1, __N);
      v18 = **(*v7 + 8 * v12);
      vDSP_vmax(v18, 1, *(**v7 + 8), 1, v18, 1, __N);
      v17 += 16;
      --v6;
    }

    while (v6);
    v19 = **(*v7 + 8 * v12);
    MEMORY[0x1E12BE8A0](v19, 1, &v55, v19, 1, __N);
    v20 = **(*v7 + 8 * v12);
    vDSP_svdiv(&__A, v20, 1, v20, 1, __N);
    ++v12;
  }

  v21 = 0;
  v46 = v7;
  v49 = 1;
  v51 = 16;
  do
  {
    vDSP_vclr(realp, 1, __N);
    v53 = v21;
    vDSP_vfill(&v53, imagp, 1, __N);
    v22 = v21;
    do
    {
      while (1)
      {
        vDSP_zvabs((*(*a1 + 8 * v22) + 16 * v21), 1, v13, 1, __N);
        MEMORY[0x1E12BE7F0](v13, 1, **(*v7 + 8 * v22), 1, v13, 1, __N);
        if (__N)
        {
          break;
        }

        if (++v22 == v6)
        {
          goto LABEL_32;
        }
      }

      for (j = 0; j != __N; ++j)
      {
        v24 = v13[j];
        if (v24 > realp[j])
        {
          realp[j] = v24;
          imagp[j] = v22;
        }
      }

      ++v22;
    }

    while (v22 != v6);
    v25 = 0;
    v26 = *a1;
    v27 = *v7;
    do
    {
      v28 = imagp[v25];
      if (v21 != v28)
      {
        v29 = (*(v26 + 8 * v21) + 8);
        v30 = (*(v26 + 8 * v28) + 8);
        v31 = v6;
        do
        {
          v32 = *(v30 - 1);
          v33 = *v30;
          v34 = *(v32 + 4 * v25);
          v36 = *(v29 - 1);
          v35 = *v29;
          *(v32 + 4 * v25) = *(v36 + 4 * v25);
          *(v36 + 4 * v25) = v34;
          v37 = *(v33 + 4 * v25);
          *(v33 + 4 * v25) = *(v35 + 4 * v25);
          *(v35 + 4 * v25) = v37;
          v29 += 2;
          v30 += 2;
          --v31;
        }

        while (v31);
        *(**(v27 + 8 * v28) + 4 * v25) = *(**(v27 + 8 * v21) + 4 * v25);
      }

      ++v25;
    }

    while (v25 != __N);
LABEL_32:
    memcpy(**(*a2 + 8 * v21), imagp, 4 * __N);
    vDSP_zvabs((*(*a1 + 8 * v21) + 16 * v21), 1, v13, 1, __N);
    if (__N)
    {
      v38 = *(*(*a1 + 8 * v21) + 16 * v21);
      v39 = v13;
      v40 = __N;
      do
      {
        if (*v39 <= 0.0)
        {
          *v38 = v55;
        }

        ++v38;
        ++v39;
        --v40;
      }

      while (v40);
    }

    v41 = v49;
    v48 = v21 + 1;
    if (v6 > v21 + 1)
    {
      do
      {
        v42 = (*(*a1 + 8 * v41) + 16 * v21);
        vDSP_zvdiv((*(*a1 + 8 * v21) + 16 * v21), 1, v42, 1, v42, 1, __N);
        vDSP_zvneg((*(*a1 + 8 * v41) + 16 * v21), 1, **a4, 1, __N);
        v44 = v51;
        v43 = v52;
        do
        {
          v45 = (*(*a1 + 8 * v41) + v44);
          vDSP_zvma(**a4, 1, (*(*a1 + 8 * v21) + v44), 1, v45, 1, v45, 1, __N);
          v44 += 16;
          --v43;
        }

        while (v43);
        ++v41;
        v6 = i;
      }

      while (v41 != i);
    }

    ++v49;
    v51 += 16;
    --v52;
    ++v21;
    v7 = v46;
  }

  while (v48 != v6);
}

void t3l::tDSP_zmsolvelu<float>(void *a1, void *a2, uint64_t *a3, const DSPSplitComplex ***a4)
{
  v4 = a1[1];
  if (v4 < a1[2])
  {
    __assert_rtn("tDSP_zmsolvelu", "Tensor3Lib.h", 1041, "n >= lu.cols");
  }

  if (a3[1] < v4)
  {
    __assert_rtn("tDSP_zmsolvelu", "Tensor3Lib.h", 1042, "b.rows >= n");
  }

  if (!a4[1])
  {
    __assert_rtn("tDSP_zmsolvelu", "Tensor3Lib.h", 1043, "temp1x1xNf.rows >= 1");
  }

  __N = a1[3];
  v9 = __N > a2[3] || __N > a3[3];
  if (v9 || __N > a4[3])
  {
    __assert_rtn("tDSP_zmsolvelu", "Tensor3Lib.h", 1048, "Nv <= pivotNx1xNf.len && Nv <= b.len && Nv <= x.len && Nv <= temp1x1xNf.len");
  }

  if (v4)
  {
    v11 = 0;
    v12 = 0;
    v13 = **a4;
    realp = v13->realp;
    imagp = v13->imagp;
    do
    {
      if (__N)
      {
        v16 = 0;
        v17 = **(*a2 + 8 * v12);
        v18 = *a3;
        v19 = *(*a3 + 8 * v12);
        v20 = *v19;
        v21 = v19[1];
        do
        {
          v22 = *(v18 + 8 * *(v17 + 4 * v16));
          v24 = *v22;
          v23 = v22[1];
          realp[v16] = *(v24 + 4 * v16);
          imagp[v16] = *(v23 + 4 * v16);
          *(v24 + 4 * v16) = *(v20 + 4 * v16);
          *(v23 + 4 * v16) = *(v21 + 4 * v16);
          ++v16;
        }

        while (__N != v16);
      }

      if (v11)
      {
        vDSP_zvneg(**a4, 1, **a4, 1, __N);
        v33 = v11;
        v25 = (v11 + -1.0);
        if (v12 > v25)
        {
          v26 = 16 * v25;
          do
          {
            vDSP_zvma((*(*a1 + 8 * v12) + v26), 1, *(*a3 + 8 * v25++), 1, **a4, 1, **a4, 1, __N);
            v26 += 16;
          }

          while (v12 != v25);
        }

        vDSP_zvneg(**a4, 1, **a4, 1, __N);
        v27 = v12 + 1;
        v11 = v33;
      }

      else
      {
        v27 = v12 + 1;
        v11 = v12 + 1;
      }

      vDSP_zvmov(**a4, 1, *(*a3 + 8 * v12), 1, __N);
      v12 = v27;
    }

    while (v27 != v4);
  }

  v28 = (v4 + -1.0);
  if ((v28 & 0x80000000) == 0)
  {
    v29 = 16 * (v4 + -1.0) + 16;
    do
    {
      vDSP_zvneg(*(*a3 + 8 * v28), 1, **a4, 1, __N);
      v30 = v28 + 1;
      for (i = v29; v30 < v4; i += 16)
      {
        vDSP_zvma((*(*a1 + 8 * v28) + i), 1, *(*a3 + 8 * v30++), 1, **a4, 1, **a4, 1, __N);
      }

      vDSP_zvneg(**a4, 1, **a4, 1, __N);
      vDSP_zvdiv((*(*a1 + 8 * v28) + 16 * v28), 1, **a4, 1, *(*a3 + 8 * v28), 1, __N);
      v29 -= 16;
      v9 = v28-- <= 0;
    }

    while (!v9);
  }
}

void AU::BSS2::vDSP_zmekzvhmultT<float>(void *a1, uint64_t a2, void *a3, void *a4)
{
  v4 = a1[1];
  if (v4)
  {
    v9 = 0;
    v10 = a1[3];
    do
    {
      v11 = 0;
      for (i = 0; i != v4; ++i)
      {
        vDSP_zvmul(*(*a3 + 8 * i), 1, (*(*a1 + 8 * v9) + 16 * a2), 1, (*(*a4 + 8 * v9) + v11), 1, v10, 1);
        v11 += 16;
      }

      ++v9;
    }

    while (v9 != v4);
  }
}

uint64_t AU::BSS2::AUXIVARLS<float>::Initialize(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, float a5)
{
  if (a5 >= 0.0)
  {
    *(a1 + 40) = a2;
    *(a1 + 160) = 0;
    *(a1 + 16) = a4;
    v9 = a5 / a2;
    *(a1 + 32) = a5;
    *(a1 + 36) = v9;
    v10 = *(a1 + 68);
    v11 = 0;
    if (v10 > 0.0)
    {
      if (v9 <= 0.0)
      {
        __assert_rtn("ComputeCoefFromTC", "Tensor3Lib.h", 30, "blockFs > 0");
      }

      *v11.i32 = expf(-1.0 / (v9 * v10));
    }

    *(a1 + 72) = v11.i32[0];
    *(a1 + 36) = v9;
    *(a1 + 24) = a3;
    LODWORD(v12) = 0;
    std::vector<float>::resize((a1 + 192), a4, &v12, v11);
    t3l::tDSP_create_vec_tensors<float>(&v12, *(a1 + 16));
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__vdeallocate((a1 + 232));
    *(a1 + 232) = v12;
    *(a1 + 248) = v13;
    v13 = 0;
    v12 = 0uLL;
    v14 = &v12;
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
    t3l::tDSP_create_vec_tensors<float>(&v12, *(a1 + 16));
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__vdeallocate((a1 + 256));
    *(a1 + 256) = v12;
    *(a1 + 272) = v13;
    v13 = 0;
    v12 = 0uLL;
    v14 = &v12;
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
    operator new();
  }

  return 1;
}

void *t3l::tDSP_create_vec_tensors<float>(void *result, unint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDC7B3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void **a14)
{
  a14 = a12;
  std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__vdeallocate(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100](--v3, 0);
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

uint64_t t3l::ZTensor3<float>::ZTensor3(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  v5 = (a1 + 104);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 8) * *(a1 + 16);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = (v7 - v8) >> 4;
  if (v6 <= v9)
  {
    if (v6 >= v9)
    {
      goto LABEL_19;
    }

    v14 = (v8 + 16 * v6);
  }

  else
  {
    v10 = *(a1 + 72);
    if (v6 - v9 > (v10 - v7) >> 4)
    {
      if (!(v6 >> 60))
      {
        v11 = v10 - v8;
        v12 = v11 >> 3;
        if (v11 >> 3 <= v6)
        {
          v12 = *(a1 + 8) * *(a1 + 16);
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (!(v13 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v14 = &v7[2 * (v6 - v9)];
    v15 = 16 * v6 - 16 * v9;
    do
    {
      *v7 = 0;
      v7[1] = 0;
      v7 += 2;
      v15 -= 16;
    }

    while (v15);
  }

  *(a1 + 64) = v14;
LABEL_19:
  v16 = *(a1 + 32);
  *a1 = v16;
  *v16 = *(a1 + 56);
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (v17)
  {
    v19 = 0;
    for (i = 0; i != v17; ++i)
    {
      *(*a1 + 8 * i) = **a1 + v19;
      v19 += 16 * v18;
    }
  }

  std::vector<std::vector<float>>::resize((a1 + 80), v18 * v17);
  std::vector<std::vector<float>>::resize(v5, *(a1 + 16) * *(a1 + 8));
  v21 = *(a1 + 80);
  if (*(a1 + 88) != v21)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      std::vector<float>::resize((v21 + v22), *(a1 + 24));
      std::vector<float>::resize((*(a1 + 104) + v22), *(a1 + 24));
      ++v23;
      v21 = *(a1 + 80);
      v22 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - v21) >> 3) > v23);
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = *(a1 + 16);
    do
    {
      if (v27)
      {
        v28 = 0;
        v29 = v25;
        v30 = v27;
        do
        {
          v31 = *(*(a1 + 104) + v29);
          v32 = (*(*a1 + 8 * v26) + v28);
          *v32 = *(*(a1 + 80) + v29);
          v32[1] = v31;
          v28 += 16;
          v29 += 24;
          --v30;
        }

        while (v30);
      }

      ++v26;
      v25 += 24 * v27;
    }

    while (v26 != v24);
  }

  return a1;
}

void sub_1DDC7B78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = v9[7];
  if (v12)
  {
    v9[8] = v12;
    operator delete(v12);
  }

  v13 = *v10;
  if (*v10)
  {
    v9[5] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t t3l::RTensor3<float>::RTensor3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  v4 = (a1 + 80);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  std::vector<float **>::resize((a1 + 32), a2);
  std::vector<float *>::resize((a1 + 56), *(a1 + 8) * *(a1 + 16));
  v5 = *(a1 + 32);
  *a1 = v5;
  *v5 = *(a1 + 56);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = **a1 + v8;
      v8 += 8 * v7;
    }
  }

  std::vector<std::vector<float>>::resize(v4, v7 * v6);
  v10 = *(a1 + 80);
  if (*(a1 + 88) != v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      std::vector<float>::resize((v10 + v11), *(a1 + 24));
      ++v12;
      v10 = *(a1 + 80);
      v11 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - v10) >> 3) > v12);
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a1 + 16);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = v14;
        do
        {
          *(*(*a1 + 8 * v15) + 8 * v17++) = *(*(a1 + 80) + v18);
          v18 += 24;
        }

        while (v16 != v17);
      }

      ++v15;
      v14 += 24 * v16;
    }

    while (v15 != v13);
  }

  return a1;
}

void sub_1DDC7B948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = v2[7];
  if (v5)
  {
    v2[8] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v2[5] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void AU::BSS2::AUXIVACramer23<float>::~AUXIVACramer23(uint64_t a1)
{
  AU::BSS2::AUXIVACramer23<float>::~AUXIVACramer23(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AU::BSS2::AUXIVACramer23<float>::~AUXIVACramer23(uint64_t a1)
{
  *a1 = &unk_1F591E588;
  std::unique_ptr<t3l::RTensor3<float>>::reset[abi:ne200100]((a1 + 296), 0);
  std::unique_ptr<t3l::RTensor3<float>>::reset[abi:ne200100]((a1 + 288), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 280), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 272), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 264), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 256), 0);
  v5 = (a1 + 232);
  std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 224), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 216), 0);
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t AU::BSS2::AUXIVACramer23<float>::Reset(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      t3l::tDSP_ztfilldiag<float>(*(*(a1 + 232) + 8 * v2), *(a1 + 88));
      *(*(a1 + 168) + 4 * v2++) = 1065353216;
    }

    while (*(a1 + 16) > v2);
  }

  v3 = *(a1 + 216);
  v4 = v3[1];
  if (v4 != v3[2])
  {
    __assert_rtn("tDSP_zmeye", "Tensor3Lib.h", 513, "N == X.cols");
  }

  v5 = v3[3];
  __A = 1.0;
  if (v4)
  {
    v6 = 0;
    v7 = 1;
    v8 = v4;
    do
    {
      if (v7)
      {
        v9 = 0;
        for (i = 0; i < v7; ++i)
        {
          v11 = (*(*v3 + 8 * v6) + v9);
          vDSP_vclr(*v11, 1, v5);
          vDSP_vclr(v11[1], 1, v5);
          v7 = v3[2];
          v9 += 16;
        }

        v8 = v3[1];
      }

      ++v6;
    }

    while (v8 > v6);
    v12 = 0;
    for (j = 0; j != v4; ++j)
    {
      vDSP_vfill(&__A, *(*(*v3 + 8 * j) + v12), 1, v5);
      v12 += 16;
    }
  }

  *(a1 + 160) = 1;
  *(a1 + 104) = 0;
  return 0;
}

uint64_t AU::BSS2::AUXIVACramer23<float>::UpdatePrior(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 168);
  if (a2 > (*(a1 + 176) - v4) >> 2)
  {
    __assert_rtn("UpdatePrior", "AUBSS2Algorithm+XIVACramer23.h", 343, "index <= priors.size()");
  }

  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  *(v4 + 4 * a2) = expf((a3 + -0.5) * a4);
  return 0;
}

uint64_t AU::BSS2::AUXIVACramer23<float>::UpdateParam(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  switch(a2)
  {
    case 0:
      result = 0;
      *(a1 + 120) = a3 != 0.0;
      break;
    case 1:
      *(a1 + 68) = a3;
      v15 = 0.0;
      if (a3 > 0.0)
      {
        v16 = *(a1 + 36);
        if (v16 <= 0.0)
        {
          __assert_rtn("ComputeCoefFromTC", "Tensor3Lib.h", 30, "blockFs > 0");
        }

        v15 = expf(-1.0 / (v16 * a3));
      }

      result = 0;
      *(a1 + 72) = v15;
      break;
    case 2:
      result = 0;
      *(a1 + 136) = a3 != 0.0;
      break;
    case 3:
      v14 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 52) = v14;
      break;
    case 4:
      v9 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 56) = v9;
      break;
    case 5:
      v17 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 60) = v17;
      break;
    case 6:
      v19 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 64) = v19;
      break;
    case 7:
      result = 0;
      *(a1 + 112) = a3;
      break;
    case 8:
      result = 0;
      *(a1 + 48) = a3;
      break;
    case 9:
      v10 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 124) = v10;
      break;
    case 10:
      result = 0;
      *(a1 + 96) = a3;
      break;
    case 11:
      v8 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 132) = v8;
      break;
    case 12:
      result = 0;
      *(a1 + 80) = vcvtas_u32_f32((*(a1 + 32) * a3) / *(a1 + 40));
      break;
    case 13:
      v18 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 88) = v18;
      break;
    case 14:
      result = 0;
      v5 = *(a1 + 24) - 1;
      v6 = *(a1 + 32) / (*(a1 + 40) + *(a1 + 40));
      v7 = vcvtas_u32_f32(fabsf(a3 / v6));
      if (v7 < v5)
      {
        v5 = v7;
      }

      *(a1 + 144) = v5;
      break;
    case 15:
      result = 0;
      v11 = *(a1 + 24) - 1;
      v12 = *(a1 + 32) / (*(a1 + 40) + *(a1 + 40));
      v13 = vcvtas_u32_f32(fabsf(a3 / v12));
      if (v13 < v11)
      {
        v11 = v13;
      }

      *(a1 + 152) = v11;
      break;
    default:
      return 1;
  }

  return result;
}

uint64_t AU::BSS2::AUXIVACramer23<float>::SideChain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  t3l::tDSP_copy_freq_abl_to_ztensor<float>(a2, **(a1 + 256), *(*(a1 + 256) + 8), *(a1 + 40), *(a1 + 16));
  AU::BSS2::GenerateOutput<float>(*(a1 + 216), *(a1 + 224), *(a1 + 256), *(a1 + 264), *(a1 + 112));
  if ((*(a1 + 137) & 1) != 0 || *(a1 + 136) == 1)
  {
    if (*(a1 + 16))
    {
      v5 = 0;
      do
      {
        v6 = *(**(a1 + 256) + 8 * v5);
        v7 = **(**(a1 + 296) + 8 * v5);
        v8 = *(a1 + 24);
        v15 = 629145600;
        vDSP_zvmags(v6, 1, v7, 1, v8);
        MEMORY[0x1E12BE8A0](v7, 1, &v15, v7, 1, v8);
        ++v5;
        v9 = *(a1 + 16);
      }

      while (v9 > v5);
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *(**(a1 + 264) + 8 * v10);
          v12 = **(**(a1 + 288) + 8 * v10);
          v13 = *(a1 + 24);
          v16 = 629145600;
          vDSP_zvmags(v11, 1, v12, 1, v13);
          MEMORY[0x1E12BE8A0](v12, 1, &v16, v12, 1, v13);
          ++v10;
        }

        while (*(a1 + 16) > v10);
      }
    }
  }

  if (*(a1 + 137) == 1)
  {
    AU::BSS2::FixWNG<float>(*(a1 + 264), *(a1 + 296), *(a1 + 288), *(a1 + 272), *(a1 + 112), *(a1 + 124));
  }

  if (*(a1 + 136) == 1)
  {
    AU::BSS2::MixturePhase<float>(*(a1 + 256), *(a1 + 296), *(a1 + 264), *(a1 + 288), **(a1 + 272), *(*(a1 + 272) + 24));
  }

  t3l::tDSP_copy_ztensor_to_freq_abl<float>(**(a1 + 264), a3, *(a1 + 40), *(a1 + 16));
  return 0;
}

uint64_t AU::BSS2::AUXIVACramer23<float>::Process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  ++*(a1 + 160);
  t3l::tDSP_copy_freq_abl_to_ztensor<float>(a2, **(a1 + 256), *(*(a1 + 256) + 8), *(a1 + 40), *(a1 + 16));
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      v6 = *(**(a1 + 256) + 8 * v5);
      v7 = **(**(a1 + 296) + 8 * v5);
      v8 = *(a1 + 24);
      v50 = 629145600;
      vDSP_zvmags(v6, 1, v7, 1, v8);
      MEMORY[0x1E12BE8A0](v7, 1, &v50, v7, 1, v8);
      ++v5;
    }

    while (*(a1 + 16) > v5);
  }

  if ((*(a1 + 120) & 1) != 0 && AU::BSS2::AboveMinEnergyThreshold<float>(*(a1 + 296), *(a1 + 132)))
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 256);
    if (v9)
    {
      v11 = *v10;
      do
      {
        v12 = *v11++;
        v13 = v12[1];
        **v12 = *(*v12 + 4);
        *v13 = v13[1];
        --v9;
      }

      while (v9);
    }

    t3l::tDSP_zmzvmult<float>(*(a1 + 216), v10, *(a1 + 264));
    if (*(a1 + 16))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(**(a1 + 264) + 8 * v15);
        vDSP_zvmags(v16, 1, v16->realp, 1, *(a1 + 24));
        vDSP_sve((**(**(a1 + 264) + 8 * v15) + 4 * *(a1 + 144)), 1, (*(a1 + 192) + v14), *(a1 + 152) - *(a1 + 144));
        v17 = *(a1 + 192);
        v18 = (*(a1 + 48) * 0.5);
        v19 = log2((*(v17 + 4 * v15) + *(a1 + 52)));
        v20 = exp2(v19 * v18);
        *(v17 + 4 * v15) = v20;
        *(v17 + 4 * v15) = *(*(a1 + 168) + 4 * v15) * v20;
        ++v15;
        v14 += 4;
      }

      while (*(a1 + 16) > v15);
    }

    t3l::tDSP_ztvztvhmultupper<float>(*(a1 + 256), *(a1 + 256), *(a1 + 272));
    v21.n128_u32[0] = *(a1 + 56);
    if (v21.n128_f32[0] > 0.0)
    {
      t3l::tDSP_zmsreg<float>(*(a1 + 272), (a1 + 56), v21);
    }

    v22 = *(a1 + 16);
    if (v22)
    {
      for (i = 0; i < v22; ++i)
      {
        v21.n128_u32[0] = *(*(a1 + 192) + 4 * i);
        AU::BSS2::UpdateVj<float>(*(a1 + 272), *(*(a1 + 232) + 8 * i), *(a1 + 264), *(a1 + 128), v21, *(a1 + 72), *(a1 + 60));
        v22 = *(a1 + 16);
      }
    }

    v24 = *(a1 + 96);
    if (v24)
    {
      v25 = (*(a1 + 104) + 1) % (v24 + 1);
      *(a1 + 104) = v25;
      if (*(a1 + 160) < *(a1 + 80) || v25)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(a1 + 104) = 0;
      if (*(a1 + 160) < *(a1 + 80))
      {
LABEL_40:
        AU::BSS2::GenerateOutput<float>(*(a1 + 216), *(a1 + 224), *(a1 + 256), *(a1 + 264), *(a1 + 112));
        if (*(a1 + 16))
        {
          v41 = 0;
          do
          {
            v42 = *(**(a1 + 264) + 8 * v41);
            v43 = **(**(a1 + 288) + 8 * v41);
            v44 = *(a1 + 24);
            v51 = 629145600;
            vDSP_zvmags(v42, 1, v43, 1, v44);
            MEMORY[0x1E12BE8A0](v43, 1, &v51, v43, 1, v44);
            ++v41;
          }

          while (*(a1 + 16) > v41);
        }

        if (*(a1 + 137))
        {
          AU::BSS2::FixWNG<float>(*(a1 + 264), *(a1 + 296), *(a1 + 288), *(a1 + 272), *(a1 + 112), *(a1 + 124));
        }

        if (*(a1 + 136) == 1)
        {
          AU::BSS2::MixturePhase<float>(*(a1 + 256), *(a1 + 296), *(a1 + 264), *(a1 + 288), **(a1 + 272), *(*(a1 + 272) + 24));
        }

        if (*(a1 + 16))
        {
          v45 = 0;
          v46 = *(a1 + 24);
          v47 = ****(a1 + 272);
          do
          {
            v48 = *(**(a1 + 264) + 8 * v45);
            MEMORY[0x1E12BE5D0](*v48, 1, v48[1], 1, v47, 1, v46);
            if (v46)
            {
                ;
              }
            }

            ++v45;
            v27 = *(a1 + 16);
          }

          while (v27 > v45);
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_24;
      }
    }

    if (v22 == 2)
    {
      v36 = 0;
      do
      {
        AU::BSS2::UpdateWProject23<float>(*(a1 + 216), v36, *(*(a1 + 232) + 8 * v36), *(a1 + 272), *(a1 + 264), *(a1 + 64));
        AU::BSS2::UpdateWScale<float>(*(a1 + 216), v36, *(*(a1 + 232) + 8 * v36), *(a1 + 216), *(a1 + 264), *(a1 + 272));
        ++v36;
      }

      while (*(a1 + 16) > v36);
      v37 = *(a1 + 216);
      if (v37[1] != 2)
      {
        __assert_rtn("tDSP_inverse2x2", "Tensor3Lib.h", 1183, "MatIn.rows == 2");
      }

      v38 = *(a1 + 264);
      v39 = *(a1 + 224);
      v40 = v37[3];
      vDSP_zvmul(**v37 + 1, 1, (*v37)[1], 1, **v38, 1, v40, 1);
      vDSP_zvneg(**v38, 1, **v38, 1, v40);
      vDSP_zvma(**v37, 1, (*v37)[1] + 1, 1, **v38, 1, **v38, 1, v40);
      t3l::tDSP_zvreciprocal<float>((**v38)->realp, (**v38)->imagp, (**v38)->realp, (**v38)->imagp, v40);
      vDSP_zvmul(**v37, 1, **v38, 1, (*v39)[1] + 1, 1, v40, 1);
      vDSP_zvmul((*v37)[1] + 1, 1, **v38, 1, **v39, 1, v40, 1);
      vDSP_zvneg(**v38, 1, **v38, 1, v40);
      vDSP_zvmul((*v37)[1], 1, **v38, 1, (*v39)[1], 1, v40, 1);
      vDSP_zvmul(**v37 + 1, 1, **v38, 1, **v39 + 1, 1, v40, 1);
    }

    else
    {
      if (v22 != 3)
      {
        __assert_rtn("UpdateUmixing", "AUBSS2Algorithm+XIVACramer23.h", 205, "0");
      }

      v28 = 0;
      do
      {
        AU::BSS2::UpdateWProject23<float>(*(a1 + 216), v28, *(*(a1 + 232) + 8 * v28), *(a1 + 272), *(a1 + 264), *(a1 + 64));
        AU::BSS2::UpdateWScale<float>(*(a1 + 216), v28, *(*(a1 + 232) + 8 * v28), *(a1 + 216), *(a1 + 264), *(a1 + 272));
        ++v28;
      }

      while (*(a1 + 16) > v28);
      v29 = *(a1 + 216);
      if (v29[1] != 3)
      {
        __assert_rtn("tDSP_inverse3x3", "Tensor3Lib.h", 1244, "MIn.rows == 3");
      }

      v30 = *(a1 + 224);
      v31 = *(a1 + 264);
      __N = v29[3];
      vDSP_zvmul((*v29)[1] + 2, 1, (*v29)[2] + 1, 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma((*v29)[1] + 1, 1, (*v29)[2] + 2, 1, **v31, 1, **v30, 1, __N);
      vDSP_zvmul((*v29)[1], 1, (*v29)[2] + 2, 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma((*v29)[1] + 2, 1, (*v29)[2], 1, **v31, 1, (*v30)[1], 1, __N);
      vDSP_zvmul((*v29)[1] + 1, 1, (*v29)[2], 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma((*v29)[1], 1, (*v29)[2] + 1, 1, **v31, 1, (*v30)[2], 1, __N);
      vDSP_zvmul(**v29 + 1, 1, (*v29)[2] + 2, 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma(**v29 + 2, 1, (*v29)[2] + 1, 1, **v31, 1, **v30 + 1, 1, __N);
      vDSP_zvmul(**v29 + 2, 1, (*v29)[2], 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma(**v29, 1, (*v29)[2] + 2, 1, **v31, 1, (*v30)[1] + 1, 1, __N);
      vDSP_zvmul(**v29, 1, (*v29)[2] + 1, 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma(**v29 + 1, 1, (*v29)[2], 1, **v31, 1, (*v30)[2] + 1, 1, __N);
      vDSP_zvmul(**v29 + 2, 1, (*v29)[1] + 1, 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma(**v29 + 1, 1, (*v29)[1] + 2, 1, **v31, 1, **v30 + 2, 1, __N);
      vDSP_zvmul(**v29, 1, (*v29)[1] + 2, 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma(**v29 + 2, 1, (*v29)[1], 1, **v31, 1, (*v30)[1] + 2, 1, __N);
      vDSP_zvmul(**v29 + 1, 1, (*v29)[1], 1, **v31, 1, __N, 1);
      vDSP_zvneg(**v31, 1, **v31, 1, __N);
      vDSP_zvma(**v29, 1, (*v29)[1] + 1, 1, **v31, 1, (*v30)[2] + 2, 1, __N);
      vDSP_zvmul(**v29, 1, **v30, 1, **v31, 1, __N, 1);
      vDSP_zvma(**v29 + 1, 1, (*v30)[1], 1, **v31, 1, **v31, 1, __N);
      vDSP_zvma(**v29 + 2, 1, (*v30)[2], 1, **v31, 1, **v31, 1, __N);
      t3l::tDSP_zvreciprocal<float>((**v31)->realp, (**v31)->imagp, (**v31)->realp, (**v31)->imagp, __N);
      for (k = 0; k != 3; ++k)
      {
        for (m = 0; m != 3; ++m)
        {
          v35 = &(*v30)[k][m];
          vDSP_zvmul(v35, 1, **v31, 1, v35, 1, __N, 1);
        }
      }
    }

    goto LABEL_40;
  }

  AU::BSS2::GenerateOutput<float>(*(a1 + 216), *(a1 + 224), *(a1 + 256), *(a1 + 264), *(a1 + 112));
  v27 = *(a1 + 16);
LABEL_24:
  t3l::tDSP_copy_ztensor_to_freq_abl<float>(**(a1 + 264), a3, *(a1 + 40), v27);
  return 0;
}

void AU::BSS2::UpdateWProject23<float>(const DSPSplitComplex ***a1, unint64_t a2, uint64_t a3, const DSPSplitComplex ***a4, const DSPSplitComplex ***a5, float a6)
{
  v31 = a6;
  v6 = a1[2];
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    __assert_rtn("UpdateWProject23", "AUBSS2IVALib.h", 111, "Nm == 2 || Nm == 3");
  }

  v12 = a1[3];
  t3l::tDSP_zmzmuppermult<float>(a1, a3, a4);
  __A = 1.0;
  v13 = 1;
  vDSP_zvmov(**a4, 1, **a5, 1, v12);
  v14 = 1;
  do
  {
    vDSP_zvadd(&(*a4)[v13++][v14++], 1, **a5, 1, **a5, 1, v12);
  }

  while (v6 != v13);
  vDSP_zvabs(**a5, 1, (**a5)->realp, 1, v12);
  vDSP_svdiv(&__A, (**a5)->realp, 1, (**a5)->realp, 1, v12);
  v15 = 0;
  do
  {
    v16 = 0;
    v17 = v6;
    do
    {
      v18 = &(*a4)[v15][v16];
      vDSP_zrvmul(v18, 1, (**a5)->realp, 1, v18, 1, v12);
      ++v16;
      v17 = (v17 - 1);
    }

    while (v17);
    v15 = (v15 + 1);
  }

  while (v15 != v6);
  if (a6 > 0.0)
  {
    t3l::tDSP_zmsreg<float>(a4, &v31, v19);
  }

  if (v6)
  {
    if (v6 == 2)
    {
      if (a4[1] != 2)
      {
        __assert_rtn("tDSP_inversecolt2x2", "Tensor3Lib.h", 1381, "MIn.rows == 2");
      }

      if (a4[2] != 2)
      {
        __assert_rtn("tDSP_inversecolt2x2", "Tensor3Lib.h", 1382, "MIn.cols == MIn.rows");
      }

      if (a1[1] != 2)
      {
        __assert_rtn("tDSP_inversecolt2x2", "Tensor3Lib.h", 1383, "MOut.rows == MIn.rows");
      }

      if (a1[2] != 2)
      {
        __assert_rtn("tDSP_inversecolt2x2", "Tensor3Lib.h", 1384, "MOut.cols == MIn.rows");
      }

      v22 = a4[3];
      if (v22 != a1[3])
      {
        __assert_rtn("tDSP_inversecolt2x2", "Tensor3Lib.h", 1385, "MIn.len == MOut.len");
      }

      if (a2 >= 2)
      {
        __assert_rtn("tDSP_inversecolt2x2", "Tensor3Lib.h", 1386, "jSource < MIn.rows");
      }

      v23 = *a4;
      if (a2)
      {
        vDSP_zvmov(*v23 + 1, 1, (*a1)[1], 1, a4[3]);
        vDSP_zvneg((*a1)[1], 1, (*a1)[1], 1, v22);
        vDSP_zvmov(**a4, 1, (*a1)[1] + 1, 1, v22);
      }

      else
      {
        vDSP_zvmov(v23[1] + 1, 1, **a1, 1, a4[3]);
        vDSP_zvmov((*a4)[1], 1, **a1 + 1, 1, v22);
        vDSP_zvneg(**a1 + 1, 1, **a1 + 1, 1, v22);
      }

      goto LABEL_32;
    }

    if (v6 == 3)
    {
      if (a4[1] != 3)
      {
        __assert_rtn("tDSP_inversecolt3x3", "Tensor3Lib.h", 1412, "MIn.rows == 3");
      }

      if (a4[2] != 3)
      {
        __assert_rtn("tDSP_inversecolt3x3", "Tensor3Lib.h", 1413, "MIn.cols == 3");
      }

      if (a2 >= 3)
      {
        __assert_rtn("tDSP_inversecolt3x3", "Tensor3Lib.h", 1414, "jSource < 3");
      }

      __N = a4[3];
      if (__N != a1[3])
      {
        __assert_rtn("tDSP_inversecolt3x3", "Tensor3Lib.h", 1415, "MIn.len == MOut.len");
      }

      v21 = *a4;
      if (a2 == 2)
      {
        vDSP_zvmul(*v21 + 2, 1, v21[1] + 1, 1, **a5, 1, a4[3], 1);
        vDSP_zvneg(**a5, 1, **a5, 1, __N);
        vDSP_zvma(**a4 + 1, 1, (*a4)[1] + 2, 1, **a5, 1, (*a1)[2], 1, __N);
        vDSP_zvmul(**a4, 1, (*a4)[1] + 2, 1, **a5, 1, __N, 1);
        vDSP_zvneg(**a5, 1, **a5, 1, __N);
        vDSP_zvma(**a4 + 2, 1, (*a4)[1], 1, **a5, 1, (*a1)[2] + 1, 1, __N);
        vDSP_zvmul(**a4 + 1, 1, (*a4)[1], 1, **a5, 1, __N, 1);
        vDSP_zvneg(**a5, 1, **a5, 1, __N);
        v24 = **a4;
        v25 = (*a4)[1];
        v26 = **a5;
        v27 = (*a1)[2];
      }

      else
      {
        if (a2 == 1)
        {
          vDSP_zvmul(*v21 + 1, 1, v21[2] + 2, 1, **a5, 1, a4[3], 1);
          vDSP_zvneg(**a5, 1, **a5, 1, __N);
          vDSP_zvma(**a4 + 2, 1, (*a4)[2] + 1, 1, **a5, 1, (*a1)[1], 1, __N);
          vDSP_zvmul(**a4 + 2, 1, (*a4)[2], 1, **a5, 1, __N, 1);
          vDSP_zvneg(**a5, 1, **a5, 1, __N);
          vDSP_zvma(**a4, 1, (*a4)[2] + 2, 1, **a5, 1, (*a1)[1] + 1, 1, __N);
          vDSP_zvmul(**a4, 1, (*a4)[2] + 1, 1, **a5, 1, __N, 1);
          vDSP_zvneg(**a5, 1, **a5, 1, __N);
          vDSP_zvma(**a4 + 1, 1, (*a4)[2], 1, **a5, 1, (*a1)[1] + 2, 1, __N);
          goto LABEL_32;
        }

        vDSP_zvmul(v21[1] + 2, 1, v21[2] + 1, 1, **a5, 1, a4[3], 1);
        vDSP_zvneg(**a5, 1, **a5, 1, __N);
        vDSP_zvma((*a4)[1] + 1, 1, (*a4)[2] + 2, 1, **a5, 1, **a1, 1, __N);
        vDSP_zvmul((*a4)[1], 1, (*a4)[2] + 2, 1, **a5, 1, __N, 1);
        vDSP_zvneg(**a5, 1, **a5, 1, __N);
        vDSP_zvma((*a4)[1] + 2, 1, (*a4)[2], 1, **a5, 1, **a1 + 1, 1, __N);
        vDSP_zvmul((*a4)[1] + 1, 1, (*a4)[2], 1, **a5, 1, __N, 1);
        vDSP_zvneg(**a5, 1, **a5, 1, __N);
        v24 = (*a4)[1];
        v25 = (*a4)[2];
        v26 = **a5;
        v27 = **a1;
      }

      vDSP_zvma(v24, 1, v25 + 1, 1, v26, 1, v27 + 2, 1, __N);
    }

LABEL_32:
    v28 = 0;
    do
    {
      v29 = &(*a1)[a2][v28];
      vDSP_zvconj(v29, 1, v29, 1, v12);
      ++v28;
      v6 = (v6 - 1);
    }

    while (v6);
  }
}

void t3l::tDSP_zvreciprocal<float>(float *a1, float *a2, float *a3, float *a4, vDSP_Length __N)
{
  __B.realp = a1;
  __B.imagp = a2;
  __C.realp = a3;
  __C.imagp = a4;
  v6 = 0;
  v7 = 1065353216;
  __A.realp = &v7;
  __A.imagp = &v6;
  vDSP_zvdiv(&__B, 1, &__A, 0, &__C, 1, __N);
}

uint64_t AU::BSS2::AUXIVACramer23<float>::Initialize(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, float a5)
{
  if (a5 >= 0.0)
  {
    *(a1 + 40) = a2;
    *(a1 + 160) = 0;
    *(a1 + 16) = a4;
    v8 = a5 / a2;
    *(a1 + 32) = a5;
    *(a1 + 36) = v8;
    v9 = *(a1 + 68);
    v10 = 0;
    if (v9 > 0.0)
    {
      if (v8 <= 0.0)
      {
        __assert_rtn("ComputeCoefFromTC", "Tensor3Lib.h", 30, "blockFs > 0");
      }

      *v10.i32 = expf(-1.0 / (v8 * v9));
    }

    *(a1 + 72) = v10.i32[0];
    *(a1 + 36) = v8;
    *(a1 + 24) = a3;
    LODWORD(v12) = 0;
    std::vector<float>::resize((a1 + 192), a4, &v12, v10);
    t3l::tDSP_create_vec_tensors<float>(&v12, *(a1 + 16));
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__vdeallocate((a1 + 232));
    *(a1 + 232) = v12;
    *(a1 + 248) = v13;
    v13 = 0;
    v12 = 0uLL;
    v14 = &v12;
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
    operator new();
  }

  return 1;
}

void AU::BSS2::AUXIVALU<float>::~AUXIVALU(uint64_t a1)
{
  AU::BSS2::AUXIVALU<float>::~AUXIVALU(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AU::BSS2::AUXIVALU<float>::~AUXIVALU(uint64_t a1)
{
  *a1 = &unk_1F591E538;
  std::unique_ptr<t3l::RTensor3<float>>::reset[abi:ne200100]((a1 + 304), 0);
  std::unique_ptr<t3l::RTensor3<float>>::reset[abi:ne200100]((a1 + 296), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 288), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 280), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 272), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 264), 0);
  v5 = (a1 + 240);
  std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 232), 0);
  std::unique_ptr<t3l::ZTensor3<float>>::reset[abi:ne200100]((a1 + 224), 0);
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

  return a1;
}

uint64_t AU::BSS2::AUXIVALU<float>::Reset(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      t3l::tDSP_ztfilldiag<float>(*(*(a1 + 240) + 8 * v2), *(a1 + 88));
      *(*(a1 + 176) + 4 * v2++) = 1065353216;
    }

    while (*(a1 + 16) > v2);
  }

  v3 = *(a1 + 224);
  v4 = v3[1];
  if (v4 != v3[2])
  {
    __assert_rtn("tDSP_zmeye", "Tensor3Lib.h", 513, "N == X.cols");
  }

  v5 = v3[3];
  __A = 1.0;
  if (v4)
  {
    v6 = 0;
    v7 = 1;
    v8 = v4;
    do
    {
      if (v7)
      {
        v9 = 0;
        for (i = 0; i < v7; ++i)
        {
          v11 = (*(*v3 + 8 * v6) + v9);
          vDSP_vclr(*v11, 1, v5);
          vDSP_vclr(v11[1], 1, v5);
          v7 = v3[2];
          v9 += 16;
        }

        v8 = v3[1];
      }

      ++v6;
    }

    while (v8 > v6);
    v12 = 0;
    for (j = 0; j != v4; ++j)
    {
      vDSP_vfill(&__A, *(*(*v3 + 8 * j) + v12), 1, v5);
      v12 += 16;
    }
  }

  *(a1 + 168) = 1;
  *(a1 + 104) = 0;
  return 0;
}

uint64_t AU::BSS2::AUXIVALU<float>::UpdatePrior(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 176);
  if (a2 > (*(a1 + 184) - v4) >> 2)
  {
    __assert_rtn("UpdatePrior", "AUBSS2Algorithm+XIVALU.h", 358, "index <= priors.size()");
  }

  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  *(v4 + 4 * a2) = expf((a3 + -0.5) * a4);
  return 0;
}

uint64_t AU::BSS2::AUXIVALU<float>::UpdateParam(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  switch(a2)
  {
    case 0:
      result = 0;
      *(a1 + 120) = a3 != 0.0;
      break;
    case 1:
      *(a1 + 68) = a3;
      v15 = 0.0;
      if (a3 > 0.0)
      {
        v16 = *(a1 + 36);
        if (v16 <= 0.0)
        {
          __assert_rtn("ComputeCoefFromTC", "Tensor3Lib.h", 30, "blockFs > 0");
        }

        v15 = expf(-1.0 / (v16 * a3));
      }

      result = 0;
      *(a1 + 72) = v15;
      break;
    case 2:
      result = 0;
      *(a1 + 132) = a3 != 0.0;
      break;
    case 3:
      v14 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 52) = v14;
      break;
    case 4:
      v9 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 56) = v9;
      break;
    case 5:
      v17 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 60) = v17;
      break;
    case 6:
      v19 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 64) = v19;
      break;
    case 7:
      result = 0;
      *(a1 + 112) = a3;
      break;
    case 8:
      result = 0;
      *(a1 + 48) = a3;
      break;
    case 9:
      v10 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 124) = v10;
      break;
    case 10:
      result = 0;
      *(a1 + 96) = a3;
      break;
    case 11:
      v8 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 128) = v8;
      break;
    case 12:
      result = 0;
      *(a1 + 80) = vcvtas_u32_f32((*(a1 + 32) * a3) / *(a1 + 40));
      break;
    case 13:
      v18 = __exp10f(a3 / 20.0);
      result = 0;
      *(a1 + 88) = v18;
      break;
    case 14:
      result = 0;
      v5 = *(a1 + 24) - 1;
      v6 = *(a1 + 32) / (*(a1 + 40) + *(a1 + 40));
      v7 = vcvtas_u32_f32(fabsf(a3 / v6));
      if (v7 < v5)
      {
        v5 = v7;
      }

      *(a1 + 136) = v5;
      break;
    case 15:
      result = 0;
      v11 = *(a1 + 24) - 1;
      v12 = *(a1 + 32) / (*(a1 + 40) + *(a1 + 40));
      v13 = vcvtas_u32_f32(fabsf(a3 / v12));
      if (v13 < v11)
      {
        v11 = v13;
      }

      *(a1 + 144) = v11;
      break;
    case 16:
      result = 0;
      *(a1 + 152) = a3;
      break;
    case 17:
      if (*(a1 + 160) <= *(a1 + 16))
      {
        result = 0;
        *(a1 + 160) = a3;
      }

      else
      {
        result = 0;
      }

      break;
    default:
      return 1;
  }

  return result;
}

uint64_t AU::BSS2::AUXIVALU<float>::SideChain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  t3l::tDSP_copy_freq_abl_to_ztensor<float>(a2, **(a1 + 264), *(*(a1 + 264) + 8), *(a1 + 40), *(a1 + 16));
  AU::BSS2::GenerateOutput<float>(*(a1 + 224), *(a1 + 232), *(a1 + 264), *(a1 + 272), *(a1 + 112));
  if ((*(a1 + 133) & 1) != 0 || *(a1 + 132) == 1)
  {
    if (*(a1 + 16))
    {
      v5 = 0;
      do
      {
        v6 = *(**(a1 + 264) + 8 * v5);
        v7 = **(**(a1 + 304) + 8 * v5);
        v8 = *(a1 + 24);
        v15 = 629145600;
        vDSP_zvmags(v6, 1, v7, 1, v8);
        MEMORY[0x1E12BE8A0](v7, 1, &v15, v7, 1, v8);
        ++v5;
        v9 = *(a1 + 16);
      }

      while (v9 > v5);
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *(**(a1 + 272) + 8 * v10);
          v12 = **(**(a1 + 296) + 8 * v10);
          v13 = *(a1 + 24);
          v16 = 629145600;
          vDSP_zvmags(v11, 1, v12, 1, v13);
          MEMORY[0x1E12BE8A0](v12, 1, &v16, v12, 1, v13);
          ++v10;
        }

        while (*(a1 + 16) > v10);
      }
    }
  }

  if (*(a1 + 133) == 1)
  {
    AU::BSS2::FixWNG<float>(*(a1 + 272), *(a1 + 304), *(a1 + 296), *(a1 + 288), *(a1 + 112), *(a1 + 124));
  }

  if (*(a1 + 132) == 1)
  {
    AU::BSS2::MixturePhase<float>(*(a1 + 264), *(a1 + 304), *(a1 + 272), *(a1 + 296), **(a1 + 288), *(*(a1 + 288) + 24));
  }

  AU::BSS2::AUXIVALU<float>::Mixing(a1, *(a1 + 272), a3, *(a1 + 40), *(a1 + 16), *(a1 + 152), *(a1 + 160));
  return 0;
}

float AU::BSS2::AUXIVALU<float>::Mixing(uint64_t a1, uint64_t *a2, uint64_t a3, vDSP_Length __N, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6 == 1)
  {
    v13 = a5 - a7;
    if (*(a1 + 16))
    {
      v14 = 0;
      v15 = (a3 + 16);
      do
      {
        v16 = *v15;
        v15 += 2;
        vDSP_vclr(v16, 1, 2 * __N);
        ++v14;
      }

      while (*(a1 + 16) > v14);
    }

    v18 = (*(a3 + 16) + 4 * __N);
    v26.realp = *(a3 + 16);
    v26.imagp = v18;
    if (a5 != a7)
    {
      v19 = 0;
      v20 = 1;
      do
      {
        vDSP_zvadd(*(*a2 + 8 * v19), 1, &v26, 1, &v26, 1, __N);
        v19 = v20;
      }

      while (v13 > v20++);
    }

    v22 = (*(a3 + 32) + 4 * __N);
    v26.realp = *(a3 + 32);
    v26.imagp = v22;
    v23 = v13;
    if (v13 < a5)
    {
      v24 = a5 - a7 + 1;
      do
      {
        vDSP_zvadd(*(*a2 + 8 * v23), 1, &v26, 1, &v26, 1, __N);
        v23 = v24++;
      }

      while (v23 < a5);
    }
  }

  else
  {
    v25 = *a2;

    return t3l::tDSP_copy_ztensor_to_freq_abl<float>(v25, a3, __N, a5);
  }

  return result;
}

uint64_t AU::BSS2::AUXIVALU<float>::Process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  v45 = v6;
  v46 = v5;
  v47 = v3;
  v48 = v4;
  ++*(a1 + 168);
  t3l::tDSP_copy_freq_abl_to_ztensor<float>(a2, **(a1 + 264), *(*(a1 + 264) + 8), *(a1 + 40), *(a1 + 16));
  if (*(a1 + 16))
  {
    v9 = 0;
    do
    {
      v10 = *(**(a1 + 264) + 8 * v9);
      v11 = **(**(a1 + 304) + 8 * v9);
      v12 = *(a1 + 24);
      v43 = 629145600;
      vDSP_zvmags(v10, 1, v11, 1, v12);
      MEMORY[0x1E12BE8A0](v11, 1, &v43, v11, 1, v12);
      ++v9;
    }

    while (*(a1 + 16) > v9);
  }

  if ((*(a1 + 120) & 1) != 0 && AU::BSS2::AboveMinEnergyThreshold<float>(*(a1 + 304), *(a1 + 128)))
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 264);
    if (v13)
    {
      v15 = *v14;
      do
      {
        v16 = *v15++;
        v17 = v16[1];
        **v16 = *(*v16 + 4);
        *v17 = v17[1];
        --v13;
      }

      while (v13);
    }

    t3l::tDSP_zmzvmult<float>(*(a1 + 224), v14, *(a1 + 272));
    if (*(a1 + 16))
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(**(a1 + 272) + 8 * v19);
        vDSP_zvmags(v20, 1, v20->realp, 1, *(a1 + 24));
        vDSP_sve((**(**(a1 + 272) + 8 * v19) + 4 * *(a1 + 136)), 1, (*(a1 + 200) + v18), *(a1 + 144) - *(a1 + 136));
        v21 = *(a1 + 200);
        v22 = (*(a1 + 48) * 0.5);
        v23 = log2((*(v21 + 4 * v19) + *(a1 + 52)));
        v24 = exp2(v23 * v22);
        *(v21 + 4 * v19) = v24;
        *(v21 + 4 * v19) = *(*(a1 + 176) + 4 * v19) * v24;
        ++v19;
        v18 += 4;
      }

      while (*(a1 + 16) > v19);
    }

    t3l::tDSP_ztvztvhmultupper<float>(*(a1 + 264), *(a1 + 264), *(a1 + 280));
    v25.n128_u32[0] = *(a1 + 56);
    if (v25.n128_f32[0] > 0.0)
    {
      t3l::tDSP_zmsreg<float>(*(a1 + 280), (a1 + 56), v25);
    }

    if (*(a1 + 16))
    {
      v26 = 0;
      do
      {
        v25.n128_u32[0] = *(*(a1 + 200) + 4 * v26);
        AU::BSS2::UpdateVj<float>(*(a1 + 280), *(*(a1 + 240) + 8 * v26++), *(a1 + 272), 1, v25, *(a1 + 72), *(a1 + 60));
        v27 = *(a1 + 16);
      }

      while (v27 > v26);
      v28 = v27 == 0;
    }

    else
    {
      v28 = 1;
    }

    v31 = *(a1 + 96);
    if (v31)
    {
      v32 = (*(a1 + 104) + 1) % (v31 + 1);
      *(a1 + 104) = v32;
      if (*(a1 + 168) < *(a1 + 80) || v32)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *(a1 + 104) = 0;
      if (*(a1 + 168) < *(a1 + 80))
      {
LABEL_32:
        AU::BSS2::GenerateOutput<float>(*(a1 + 224), *(a1 + 232), *(a1 + 264), *(a1 + 272), *(a1 + 112));
        if (*(a1 + 16))
        {
          v34 = 0;
          do
          {
            v35 = *(**(a1 + 272) + 8 * v34);
            v36 = **(**(a1 + 296) + 8 * v34);
            v37 = *(a1 + 24);
            v44 = 629145600;
            vDSP_zvmags(v35, 1, v36, 1, v37);
            MEMORY[0x1E12BE8A0](v36, 1, &v44, v36, 1, v37);
            ++v34;
          }

          while (*(a1 + 16) > v34);
        }

        if (*(a1 + 133))
        {
          AU::BSS2::FixWNG<float>(*(a1 + 272), *(a1 + 304), *(a1 + 296), *(a1 + 280), *(a1 + 112), *(a1 + 124));
        }

        if (*(a1 + 132) == 1)
        {
          AU::BSS2::MixturePhase<float>(*(a1 + 264), *(a1 + 304), *(a1 + 272), *(a1 + 296), **(a1 + 280), *(*(a1 + 280) + 24));
        }

        if (*(a1 + 16))
        {
          v38 = 0;
          v39 = *(a1 + 24);
          v40 = ****(a1 + 280);
          do
          {
            v41 = *(**(a1 + 272) + 8 * v38);
            MEMORY[0x1E12BE5D0](*v41, 1, v41[1], 1, v40, 1, v39);
            if (v39)
            {
                ;
              }
            }

            ++v38;
            v30 = *(a1 + 16);
          }

          while (v30 > v38);
        }

        else
        {
          v30 = 0;
        }

        goto LABEL_21;
      }
    }

    if (!v28)
    {
      v33 = 0;
      do
      {
        AU::BSS2::UpdateWProject<float>(*(a1 + 224), v33, *(*(a1 + 240) + 8 * v33), *(a1 + 296), *(a1 + 280), *(a1 + 272), *(a1 + 288), *(a1 + 64));
        AU::BSS2::UpdateWScale<float>(*(a1 + 224), v33, *(*(a1 + 240) + 8 * v33), *(a1 + 224), *(a1 + 272), *(a1 + 280));
        ++v33;
      }

      while (*(a1 + 16) > v33);
    }

    t3l::tDSP_zminverselu<float>(*(a1 + 224), *(a1 + 232), *(a1 + 296), *(a1 + 280), *(a1 + 272), *(a1 + 288));
    goto LABEL_32;
  }

  AU::BSS2::GenerateOutput<float>(*(a1 + 224), *(a1 + 232), *(a1 + 264), *(a1 + 272), *(a1 + 112));
  v30 = *(a1 + 16);
LABEL_21:
  AU::BSS2::AUXIVALU<float>::Mixing(a1, *(a1 + 272), a3, *(a1 + 40), v30, *(a1 + 152), *(a1 + 160));
  return 0;
}

uint64_t AU::BSS2::AUXIVALU<float>::Initialize(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, float a5)
{
  if (a5 >= 0.0)
  {
    *(a1 + 40) = a2;
    *(a1 + 168) = 0;
    *(a1 + 16) = a4;
    v9 = a5 / a2;
    *(a1 + 32) = a5;
    *(a1 + 36) = v9;
    v10 = *(a1 + 68);
    v11 = 0;
    if (v10 > 0.0)
    {
      if (v9 <= 0.0)
      {
        __assert_rtn("ComputeCoefFromTC", "Tensor3Lib.h", 30, "blockFs > 0");
      }

      *v11.i32 = expf(-1.0 / (v9 * v10));
    }

    *(a1 + 72) = v11.i32[0];
    *(a1 + 36) = v9;
    *(a1 + 24) = a3;
    LODWORD(v12) = 0;
    std::vector<float>::resize((a1 + 200), a4, &v12, v11);
    t3l::tDSP_create_vec_tensors<float>(&v12, *(a1 + 16));
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__vdeallocate((a1 + 240));
    *(a1 + 240) = v12;
    *(a1 + 256) = v13;
    v13 = 0;
    v12 = 0uLL;
    v14 = &v12;
    std::vector<std::unique_ptr<t3l::ZTensor3<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
    operator new();
  }

  return 1;
}

void AUBSS2::CreateExtendedElements(AUBSS2 *this)
{
  ausdk::AUScope::Initialize((this + 552), this, 4, 8);
  for (i = 0; ; ++i)
  {
    v3 = *(this + 74);
    if (v3)
    {
      LODWORD(v4) = (*(*v3 + 24))(v3);
    }

    else
    {
      v4 = (*(this + 72) - *(this + 71)) >> 3;
    }

    if (i >= v4)
    {
      break;
    }

    std::to_string(&v15, i);
    v5 = std::string::insert(&v15, 0, "Mic", 3uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v17 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 552), i);
    if (!Element || (ausdk::Owned<__CFString const*>::operator=((Element + 72), v8), (v10 = ausdk::AUScope::GetElement((this + 552), i)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v10 + 40))(v10, 2);
    CFRelease(v8);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = ausdk::AUScope::GetElement((this + 32), 0);
  if (v11)
  {
    v12 = v11;
    std::string::basic_string[abi:ne200100]<0>(__p, "Global");
    v13 = v17 >= 0 ? __p : __p[0];
    v14 = CFStringCreateWithCString(0, v13, 0x8000100u);
    ausdk::Owned<__CFString const*>::operator=((v12 + 72), v14);
    CFRelease(v14);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDC7F050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUBSS2::~AUBSS2(AUBSS2 *this)
{
  AUBSS2::~AUBSS2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591E2E8;
  v2 = *(this + 77);
  *(this + 77) = 0;
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 664);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 624);
  v3 = *(this + 77);
  *(this + 77) = 0;
  if (v3)
  {
    (*(*v3 + 56))(v3);
  }

  v4 = (this + 568);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v4);

  ausdk::AUBase::~AUBase(this);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(uint64_t a1)
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

void std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__assign_unique<std::pair<unsigned int const,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>> const*>(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v9 = (a1 + 16);
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v8)
    {
      v10 = a2 == a3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      while (1)
      {
        v12 = *v4;
        *(v8 + 4) = v12;
        v8[3] = *(v4 + 1);
        *(v8 + 8) = v4[4];
        *(v8 + 9) = v4[5];
        *(v8 + 10) = v4[6];
        *(v8 + 44) = *(v4 + 7);
        v11 = *v8;
        v8[1] = v12;
        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = vcnt_s8(v13);
          v14.i16[0] = vaddlv_u8(v14);
          if (v14.u32[0] > 1uLL)
          {
            v15 = v12;
            if (v13 <= v12)
            {
              v15 = v12 % v13;
            }
          }

          else
          {
            v15 = (v13 - 1) & v12;
          }

          v16 = *(*a1 + 8 * v15);
          if (v16)
          {
            for (j = *v16; j; j = *j)
            {
              v18 = j[1];
              if (v18 == v12)
              {
                if (*(j + 4) == v12)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v14.u32[0] > 1uLL)
                {
                  if (v18 >= v13)
                  {
                    v18 %= v13;
                  }
                }

                else
                {
                  v18 &= v13 - 1;
                }

                if (v18 != v15)
                {
                  break;
                }
              }
            }
          }
        }

        v19 = (*(a1 + 24) + 1);
        v20 = *(a1 + 32);
        if (!v13 || (v20 * v13) < v19)
        {
          v21 = 2 * v13;
          v22 = v13 < 3 || (v13 & (v13 - 1)) != 0;
          v23 = v22 | v21;
          v24 = vcvtps_u32_f32(v19 / v20);
          if (v23 <= v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v23;
          }

          std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__rehash<true>(a1, v25);
          v13 = *(a1 + 8);
          v12 = v8[1];
        }

        v26 = vcnt_s8(v13);
        v26.i16[0] = vaddlv_u8(v26);
        if (v26.u32[0] > 1uLL)
        {
          if (v12 >= v13)
          {
            v12 %= v13;
          }
        }

        else
        {
          v12 &= v13 - 1;
        }

        v27 = *a1;
        v28 = *(*a1 + 8 * v12);
        if (v28)
        {
          *v8 = *v28;
        }

        else
        {
          *v8 = *v9;
          *v9 = v8;
          *(v27 + 8 * v12) = v9;
          if (!*v8)
          {
            goto LABEL_48;
          }

          v29 = *(*v8 + 8);
          if (v26.u32[0] > 1uLL)
          {
            if (v29 >= v13)
            {
              v29 %= v13;
            }
          }

          else
          {
            v29 &= v13 - 1;
          }

          v28 = (*a1 + 8 * v29);
        }

        *v28 = v8;
LABEL_48:
        ++*(a1 + 24);
LABEL_49:
        v4 += 10;
        if (v11)
        {
          v8 = v11;
          if (v4 != a3)
          {
            continue;
          }
        }

        goto LABEL_51;
      }
    }

    v11 = v8;
LABEL_51:
    if (v11)
    {
      do
      {
        v30 = *v11;
        operator delete(v11);
        v11 = v30;
      }

      while (v30);
    }
  }

  if (v4 == a3)
  {
    return;
  }

  do
  {
    v31 = *v4;
    v32 = *(a1 + 8);
    if (!*&v32)
    {
      goto LABEL_70;
    }

    v33 = vcnt_s8(v32);
    v33.i16[0] = vaddlv_u8(v33);
    if (v33.u32[0] > 1uLL)
    {
      v34 = *v4;
      if (*&v32 <= v31)
      {
        v34 = v31 % v32.i32[0];
      }
    }

    else
    {
      v34 = (v32.i32[0] - 1) & v31;
    }

    v35 = *(*a1 + 8 * v34);
    if (!v35 || (v36 = *v35) == 0)
    {
LABEL_70:
      operator new();
    }

    while (1)
    {
      v37 = v36[1];
      if (v37 == v31)
      {
        break;
      }

      if (v33.u32[0] > 1uLL)
      {
        if (v37 >= *&v32)
        {
          v37 %= *&v32;
        }
      }

      else
      {
        v37 &= *&v32 - 1;
      }

      if (v37 != v34)
      {
        goto LABEL_70;
      }

LABEL_69:
      v36 = *v36;
      if (!v36)
      {
        goto LABEL_70;
      }
    }

    if (*(v36 + 4) != v31)
    {
      goto LABEL_69;
    }

    v4 += 10;
  }

  while (v4 != a3);
}

void sub_1DDC7F674(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t AULeanSpatial::ValidFormat(AULeanSpatial *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v6 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v5 == 2)
  {
    v7 = a4->mChannelsPerFrame >= 3;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_12;
    }

    v7 = a4->mChannelsPerFrame >= 5;
  }

  if (v7)
  {
    v6 = 0;
  }

LABEL_12:
  v8 = a4->mSampleRate == 24000.0;
  if (a4->mSampleRate == 48000.0)
  {
    v8 = 1;
  }

  return v8 & v6;
}

uint64_t AULeanSpatial::SupportedNumChannels(AULeanSpatial *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULeanSpatial::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

double AULeanSpatial::GetTailTime(AULeanSpatial *this)
{
  v1 = *(this + 66);
  if (!v1)
  {
    return 0.0;
  }

  v3 = v1 + 24;
  if (_ZNSt3__18__any_ofB8ne200100INS_21__list_const_iteratorIN11LeanSpatial10SourceDescIDF16_EEPvEES6_NS_10__identityEZNKS2_8LSEngineIDF16_E17shouldProcessLateEvEUlS4_E_EEbT_T0_RT2_RT1_(*(v1 + 32), (v1 + 24)))
  {
    if (*(v1 + 224) == 1)
    {
      v4 = *v1;
    }

    else
    {
      v4 = *(v1 + 16);
    }

    v9 = _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(v4);
  }

  else
  {
    v6 = *(v1 + 32);
    if (v6 == v3)
    {
      v6 = v1 + 24;
    }

    else
    {
      for (i = *(v6 + 8); i != v3; i = *(i + 8))
      {
        v8 = _ZNK11LeanSpatial8LSEngineIDF16_E13getTailLengthEj(v1, *(v6 + 16));
        if (v8 < _ZNK11LeanSpatial8LSEngineIDF16_E13getTailLengthEj(v1, *(i + 16)))
        {
          v6 = i;
        }
      }
    }

    v9 = _ZNK11LeanSpatial8LSEngineIDF16_E13getTailLengthEj(v1, *(v6 + 16));
  }

  v10 = v9;
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return v10 / *(Element + 80);
}

uint64_t AULeanSpatial::CopyClumpName(AULeanSpatial *this, int a2, unsigned int a3, unsigned int a4, const __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3 - 1 > 0xA)
  {
    return 4294956418;
  }

  result = 0;
  *a5 = *(&kAULeanSpatialClumpNamesPtr + a3);
  return result;
}

uint64_t AULeanSpatial::GetParameterInfo(AULeanSpatial *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  if (a3 > 0x10)
  {
    v25 = vcvts_n_f32_u32(a3 - 17, 3uLL);
    v26 = &(&AULeanSpatialSrcParamInfo)[4 * ((a3 - 17) & 7)];
    v21 = *(v26 + 2);
    v22 = *(v26 + 3);
    v23 = *(v26 + 4);
    v19 = *(v26 + 5);
    v18 = v25 + 4;
    MutableCopy = CFStringCreateMutableCopy(0, 0, *v26);
    v28 = CFStringCreateWithFormat(0, 0, @" (src %u)", v25);
    CFStringAppend(MutableCopy, v28);
    CFRelease(v28);
    buffer->cfNameString = MutableCopy;
    buffer->flags |= 0x8000000u;
    CFStringGetCString(MutableCopy, buffer->name, 52, 0x8000100u);
    flags = buffer->flags | 0x10;
  }

  else
  {
    v6 = &(&AULeanSpatialGlobalParamInfo)[4 * a3];
    v7 = (v6 + 1);
    v8 = v6 + 3;
    v9 = (v6 + 2);
    v10 = v6 + 5;
    v11 = (v6 + 3);
    v12 = (this + 624);
    v13 = (this + 632);
    v14 = (this + 636);
    v15 = (this + 640);
    v16 = (this + 644);
    v17 = (this + 648);
    if (a3 == 13)
    {
      v9 = v15;
      v8 = v14;
      v7 = v13;
      v6 = v12;
      v10 = v16;
      v11 = v17;
    }

    v18 = *v11;
    v19 = *v10;
    v20 = *v6;
    v21 = *v7;
    v22 = *v8;
    v23 = *v9;
    buffer->cfNameString = *v6;
    buffer->flags = 0x8000000;
    CFStringGetCString(v20, buffer->name, 52, 0x8000100u);
    flags = buffer->flags;
  }

  result = 0;
  buffer->clumpID = v18;
  buffer->unit = v19;
  buffer->minValue = v22;
  buffer->maxValue = v23;
  buffer->defaultValue = v21;
  buffer->flags = flags | 0xC0100000;
  return result;
}

ausdk::AUInputElement *AULeanSpatial::Render(AULeanSpatial *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

uint64_t AULeanSpatial::ProcessMultipleBufferLists(AULeanSpatial *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 == 1 && a5 && (*a5 ? (v7 = a6 == 1) : (v7 = 0), v7 ? (v8 = a7 == 0) : (v8 = 1), !v8 && *a7))
  {
    return (*(*this + 176))(this, a2);
  }

  else
  {
    return 4294956418;
  }
}

uint64_t AULeanSpatial::ProcessBufferLists(AULeanSpatial *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  mNumberBuffers = a4->mNumberBuffers;
  if (mNumberBuffers != *(*(this + 66) + 120))
  {
    return 4294956428;
  }

  v11 = a3->mNumberBuffers;
  if (*(this + 720) == 1 && AudioDSP::Core::HeadTracker::HasActiveRMConnection((this + 664)) && AudioDSP::Core::HeadTracker::GetCurrentHeadPose((this + 664), &v86) != 102 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*(this + 44), v86)))) & 1) != 0)
  {
    *(this + 44) = v86;
    AULeanSpatial::UpdateEulerAnglesParameters(this);
  }

  if (*(this + 656) == 1)
  {
    v5 = AULeanSpatial::PropagateParameters(this);
    if (v5)
    {
      return v5;
    }

    *(this + 656) = 0;
  }

  v12 = (*(this + 74) + 2 * a5);
  v85[0] = *(this + 74);
  v85[1] = v12;
  if (v11)
  {
    v13 = 0;
    mBuffers = a3->mBuffers;
    v82 = a3->mBuffers;
    v83 = v11;
    while (1)
    {
      vDSP_vsphp(mBuffers[v13].mData, *(this + 71), a5);
      v15 = *(this + 66);
      if (*(v15 + 120) != mNumberBuffers)
      {
        return 4294956445;
      }

      if (*(v15 + 132) != 1)
      {
        return 4294956429;
      }

      if (*(v15 + 112) < a5)
      {
        return 4294956422;
      }

      v16 = (v15 + 24);
      v17 = *(v15 + 32);
      if (v17 == v15 + 24)
      {
        return 4294956445;
      }

      v18 = *(*(this + 68) + 4 * v13);
      v19 = *(this + 71);
      while (*(v17 + 16) != v18)
      {
        v17 = *(v17 + 8);
        if (v17 == v16)
        {
          return 4294956445;
        }
      }

      if (v17 == v16)
      {
        return 4294956445;
      }

      v81 = v13;
      v21 = *(v17 + 24);
      v20 = *(v17 + 32);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (!v21)
      {
        return 4294956445;
      }

      if (*(v15 + 196) == 1)
      {
        if (mNumberBuffers)
        {
          v22 = v85;
          v23 = mNumberBuffers;
          do
          {
            v24 = *v22++;
            v86.vector.i16[0] = 14760;
            vDSP_vsma_fp16(v19, &v86, v24, v24, a5);
            --v23;
          }

          while (v23);
        }

        goto LABEL_95;
      }

      v80 = std::recursive_mutex::try_lock((v15 + 48));
      if (v80)
      {
        break;
      }

      if (mNumberBuffers)
      {
        v28 = v85;
        v29 = mNumberBuffers;
        do
        {
          v30 = *v28++;
          bzero(v30, 2 * a5);
          --v29;
        }

        while (v29);
      }

      v5 = 0;
LABEL_92:
      if (v80)
      {
        std::recursive_mutex::unlock((v15 + 48));
      }

      if (v5)
      {
        return v5;
      }

LABEL_95:
      mBuffers = v82;
      v13 = v81 + 1;
      if (v81 + 1 == v83)
      {
        goto LABEL_96;
      }
    }

    if (_ZNK11LeanSpatial8LSEngineIDF16_E16hasBeenProcessedEj(v15, v18))
    {
      v26 = *(v15 + 112);
      if (v26)
      {
        bzero(*(v15 + 136), 2 * v26);
      }

      for (i = *(v15 + 32); i != v16; i = i[1])
      {
        *(i[3] + 89) = 0;
      }
    }

    *(v15 + 133) = 0;
    for (j = *(v15 + 32); ; j = *(j + 8))
    {
      if (j == v16)
      {
        goto LABEL_49;
      }

      if (*(j + 16) == v18)
      {
        break;
      }
    }

    if (j == v16)
    {
LABEL_49:
      v33 = 0;
      goto LABEL_50;
    }

    v33 = *(j + 24);
    v32 = *(j + 32);
    if (v32)
    {
      v79 = v32;
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_51;
    }

LABEL_50:
    v79 = 0;
LABEL_51:
    v78 = *(v33 + 83);
    v86.vector.i16[0] = 0;
    vDSP_maxmgv_fp16(v19, &v86, a5, v25);
    _H0 = v86.vector.i16[0];
    __asm { FCVT            S11, H0 }

    if (*(v33 + 80) == 1)
    {
      v40 = (_S11 <= 0.00001) | v78 & 1;
      *(*v33 + 576) = v40;
      *(*(v33 + 8) + 576) = v40;
    }

    v86 = 0;
    v41 = *(v15 + 120);
    if (v41)
    {
      v42 = *(v15 + 160);
      v43 = &v86;
      do
      {
        v44 = *v42;
        v42 += 3;
        v43->vector.i64[0] = v44;
        v43 = (v43 + 8);
        --v41;
      }

      while (v41);
    }

    v77 = v33;
    if ((*(v33 + 85) & 1) != 0 || *(v33 + 86) == 1)
    {
      v5 = _ZN11LeanSpatial8LSSourceIDF16_E19processAccumulatingEPKDF16_PKPDF16_jS6_jj(v33, v19, v85, mNumberBuffers, &v86, mNumberBuffers, a5);
      if (v5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      _ZN11LeanSpatial8LSSourceIDF16_E5resetEv(v33);
    }

    _ZN11LeanSpatial8LSEngineIDF16_E20setSourceProcessFlagEjb(v15, v18);
    if (_S11 > 0.00001 && (*(v77 + 87) & 1) != 0 && (v78 & 1) == 0)
    {
      v45 = 1.0;
      if (*(v77 + 88) == 1)
      {
        v47 = *(v77 + 168);
        if (v47 < *(v77 + 100))
        {
          v47 = *(v77 + 100);
        }

        v46 = *(v77 + 112);
        v45 = v46 / powf(v47, *(v77 + 124));
      }

      _S0 = (v45 * *(v77 + 140)) * *(v77 + 128);
      __asm { FCVT            H0, S0 }

      v49 = *(v15 + 136);
      v84 = LOWORD(_S0);
      vDSP_vsma_fp16(v19, &v84, v49, v49, a5);
    }

    v50 = *(v15 + 32);
    if (v50 == v16)
    {
LABEL_74:
      if (_ZNSt3__18__any_ofB8ne200100INS_21__list_const_iteratorIN11LeanSpatial10SourceDescIDF16_EEPvEES6_NS_10__identityEZNKS2_8LSEngineIDF16_E17shouldProcessLateEvEUlS4_E_EEbT_T0_RT2_RT1_(v50, (v15 + 24)))
      {
        if (*(v15 + 224) == 1)
        {
          v54 = *v15;
          v55 = *(v15 + 136);
          v84 = 0;
          vDSP_maxmgv_fp16(v55, &v84, a5, v53);
          _H0 = v84;
          __asm { FCVT            S0, H0 }

          *(v54 + 576) = _S0 <= 0.00001;
          _S0 = *(v15 + 192);
          __asm { FCVT            H0, S0 }

          v5 = _ZN11LeanSpatial17LSFilterProcessorIDF16_E7processEPKDF16_PKPDF16_jjDF16_(v54, v55, &v86, mNumberBuffers, a5);
          v59 = *v15;
        }

        else
        {
          v60 = *(v15 + 16);
          v61 = *(v15 + 136);
          v84 = 0;
          vDSP_maxmgv_fp16(v61, &v84, a5, v53);
          _H0 = v84;
          __asm { FCVT            S0, H0 }

          *(v60 + 576) = _S0 <= 0.00001;
          _S0 = *(v15 + 192);
          __asm { FCVT            H0, S0 }

          v5 = _ZN11LeanSpatial17LSFilterProcessorIDF16_E7processEPKDF16_PKPDF16_jjDF16_(v60, v61, &v86, mNumberBuffers, a5);
          v59 = *(v15 + 16);
        }

        v65 = *(v59 + 556);
        v66 = *(v59 + 568);
        if (v66 < _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(v59))
        {
          v67 = v65 >= mNumberBuffers ? mNumberBuffers : v65;
          if (v67)
          {
            for (k = 0; k != v67; ++k)
            {
              if (a5)
              {
                v69 = v86.vector.i64[k];
                v70 = v85[k];
                v71 = a5;
                do
                {
                  v72 = *v69++;
                  *v70 = *v70 + v72;
                  ++v70;
                  --v71;
                }

                while (v71);
              }
            }
          }
        }

        *(v15 + 133) = 1;
        goto LABEL_90;
      }
    }

    else
    {
      v51 = *(v15 + 32);
      while (1)
      {
        v52 = v51[3];
        if (*(v52 + 89) & 1) == 0 && (*(v52 + 84))
        {
          break;
        }

        v51 = v51[1];
        if (v51 == v16)
        {
          goto LABEL_74;
        }
      }
    }

    v5 = 0;
LABEL_90:
    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }

    goto LABEL_92;
  }

LABEL_96:
  if (mNumberBuffers)
  {
    p_mData = &a4->mBuffers[0].mData;
    v74 = v85;
    do
    {
      v75 = *v74;
      vDSP_vhpsp(*v74, *p_mData, a5);
      if (a5)
      {
        bzero(v75, 2 * a5);
      }

      ++v74;
      p_mData += 2;
      --mNumberBuffers;
    }

    while (mNumberBuffers);
  }

  return 0;
}