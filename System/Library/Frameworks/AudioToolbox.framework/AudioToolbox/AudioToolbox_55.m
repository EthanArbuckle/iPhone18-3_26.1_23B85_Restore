void afSTFTfree(int *a1)
{
  if (a1[28])
  {
    v2 = *(a1 + 13);
    if (*v2 >= 1)
    {
      v3 = 0;
      do
      {
        for (i = 0; i != 112; i += 16)
        {
          free(*(*(*(v2 + 3) + 8 * v3) + i));
          free(*(*(*(v2 + 3) + 8 * v3) + i + 8));
        }

        free(*(*(v2 + 3) + 8 * v3++));
      }

      while (v3 < *v2);
    }

    free(*(v2 + 3));
    free(v2);
  }

  if (*a1 >= 1)
  {
    v5 = 0;
    do
    {
      free(*(*(a1 + 7) + 8 * v5++));
    }

    while (v5 < *a1);
  }

  if (a1[1] >= 1)
  {
    v6 = 0;
    do
    {
      free(*(*(a1 + 10) + 8 * v6++));
    }

    while (v6 < a1[1]);
  }

  free(*(a1 + 5));
  free(*(a1 + 6));
  free(*(a1 + 7));
  free(*(a1 + 10));
  free(*(a1 + 8));
  free(*(a1 + 9));
  v7 = *(a1 + 12);
  vDSP_destroy_fftsetup(v7[3]);
  free(v7);

  free(a1);
}

uint64_t AULando::LRLsRs::algoExtractLsRsPI(vDSP_Length a1, float *__src, float *a3, void *__dst, float *a5, uint64_t a6, uint64_t a7, int a8, IR::IRProcessor **a9)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v14 = a1;
  if (a8)
  {
    MEMORY[0x1EEE9AC00](a1);
    v17 = (&v22 - ((v16 + 15) & 0x7FFFFFFF0));
    v27[0] = v18;
    v27[1] = v17;
    v19 = *a9;
    v26[0] = __src;
    IR::IRProcessor::processMultipleInputs(v19, v26, v27, 1u, 2u, a1, 1.0, 0);
    v24 = -1093700624;
    v23 = -1114422838;
    MEMORY[0x1E12BE940](v17, 1, &v24, a6, 1, v14);
    MEMORY[0x1E12BE940](v17, 1, &v23, a7, 1, v14);
    v26[0] = a5;
    v26[1] = v17;
    v20 = a9[1];
    v25 = a3;
    IR::IRProcessor::processMultipleInputs(v20, &v25, v26, 1u, 2u, a1, 1.0, 0);
    LODWORD(v25) = 1033060810;
    HIDWORD(v22) = 1053783024;
    MEMORY[0x1E12BE8F0](v17, 1, &v25, a6, 1, a6, 1, v14);
    return MEMORY[0x1E12BE8F0](v17, 1, &v22 + 4, a7, 1, a7, 1, v14);
  }

  else
  {
    memcpy(__dst, __src, 4 * a1);
    memcpy(a5, a3, 4 * v14);
    LODWORD(v27[0]) = 1053783024;
    LODWORD(v26[0]) = 1033060810;
    MEMORY[0x1E12BE940](__src, 1, v27, a6, 1, v14);
    MEMORY[0x1E12BE940](__src, 1, v26, a7, 1, v14);
    LODWORD(v25) = -1114422838;
    v24 = -1093700624;
    MEMORY[0x1E12BE8F0](a3, 1, &v25, a6, 1, a6, 1, v14);
    return MEMORY[0x1E12BE8F0](a3, 1, &v24, a7, 1, a7, 1, v14);
  }
}

uint64_t AULando::LRLsRs::algoUpmixPI(vDSP_Length a1, AULando::LRLsRs *this, float *a3, const float *a4, float *a5, float *a6, float *a7, int a8, IR::IRProcessor **a9, unsigned int a10, BOOL a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  if (a8)
  {
    v33 = &v33;
    v34 = a7;
    MEMORY[0x1EEE9AC00](a1);
    v17 = (&v33 - ((v16 + 15) & 0x7FFFFFFF0));
    MEMORY[0x1EEE9AC00](v18);
    v20 = (&v33 - v19);
    MEMORY[0x1EEE9AC00](v21);
    v23 = (&v33 - v22);
    MEMORY[0x1EEE9AC00](v24);
    v26 = (&v33 - v25);
    v37[0] = v17;
    v37[1] = v20;
    v27 = *a9;
    v36[0] = v28;
    IR::IRProcessor::processMultipleInputs(v27, v36, v37, 1u, 2u, a1, 1.0, 0);
    v36[0] = v23;
    v36[1] = v26;
    v29 = a9[1];
    v35 = a3;
    IR::IRProcessor::processMultipleInputs(v29, &v35, v36, 1u, 2u, a1, 1.0, 0);
    BYTE4(v31) = 1;
    LODWORD(v31) = a1;
    return AULando::LRLsRs::decode_PI(v17, v20, v23, v26, a4, a5, a6, v34, v31, *v32, v32[4]);
  }

  else
  {
    BYTE4(a9) = 0;
    LODWORD(a9) = a1;

    return AULando::LRLsRs::decode_PI(this, this, a3, a3, a4, a5, a6, a7, a9, a10, a11);
  }
}

uint64_t AULando::LRLsRs::decode_PI(AULando::LRLsRs *this, const float *a2, const float *a3, const float *a4, const float *a5, float *a6, float *a7, float *a8, float *a9, unsigned int a10, BOOL a11)
{
  v26 = 1048951171;
  v27 = 1058836039;
  MEMORY[0x1E12BE930](this, 1, &v27, a3, 1, &v26, a5, 1, a9);
  v24 = 1058836039;
  v25 = 1048951171;
  MEMORY[0x1E12BE930](this, 1, &v25, a3, 1, &v24, a6, 1, a9);
  if (BYTE4(a9))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = -1.0;
  }

  v22 = v17 * 0.071903;
  v23 = v17 * -0.40518;
  MEMORY[0x1E12BE930](a2, 1, &v23, a4, 1, &v22, a7, 1, a9);
  v20 = v17 * 0.40518;
  v21 = v17 * -0.071903;
  return MEMORY[0x1E12BE930](a2, 1, &v21, a4, 1, &v20, a8, 1, a9);
}

uint64_t AUOneChannelNS::ValidFormat(AUOneChannelNS *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if ((v5 - 1) <= 1)
  {
    if (a4->mFormatID == 1718773105)
    {
      v7 = result;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      v8 = *&a4->mBytesPerPacket;
      v9[0] = *&a4->mSampleRate;
      v9[1] = v8;
      v10 = *&a4->mBitsPerChannel;
      DWORD2(v9[0]) = 1819304813;
      v11 = 0;
      LODWORD(result) = CAStreamBasicDescription::IdentifyCommonPCMFormat(v9, &v11, 0);
      if (v11 != 4)
      {
        LODWORD(result) = 0;
      }
    }

    if (a4->mChannelsPerFrame == 1)
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

uint64_t AUOneChannelNS::SupportedNumChannels(AUOneChannelNS *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUOneChannelNS::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUOneChannelNS::GetLatency(AUOneChannelNS *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 80);
  if (*(this + 376) == 1)
  {
    v4 = *(this + 84);
  }

  else
  {
    if (v3 >= 16000.0)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 512;
    }

    if (v3 >= 32000.0)
    {
      v4 = 2048;
    }
  }

  return v4 / v3;
}

uint64_t AUOneChannelNS::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 135);
  }

  return result;
}

uint64_t AUOneChannelNS::GetParameterInfo(AUOneChannelNS *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        buffer->cfNameString = @"SPL Meter Calibration";
        buffer->flags = 1207959552;
        CFStringGetCString(@"SPL Meter Calibration", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x42C80000C1C80000;
        v14 = 80.0;
      }

      else
      {
        if (a3 != 7)
        {
          return result;
        }

        buffer->cfNameString = @"SPL Time Constant";
        buffer->flags = 1207959552;
        CFStringGetCString(@"SPL Time Constant", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x4120000000000000;
        v14 = 5.0;
      }

      goto LABEL_22;
    }

    if (a3 == 4)
    {
      buffer->cfNameString = @"(I) AGC post gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) AGC post gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      *&buffer->minValue = -_D0;
      buffer->defaultValue = 0.0;
      return result;
    }

    v7 = @"(I) noise SPL (one mic)";
  }

  else
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return result;
        }

        buffer->cfNameString = @"speech prob";
        buffer->flags = 1207959552;
        CFStringGetCString(@"speech prob", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v6 = 0.0078125;
        goto LABEL_13;
      }

      buffer->cfNameString = @"noise supp level";
      buffer->flags = 1207959552;
      CFStringGetCString(@"noise supp level", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x42C80000C2C80000;
      v14 = -6.0;
LABEL_22:
      v16 = buffer->flags | 0x80000000;
      goto LABEL_23;
    }

    if (a3 != 2)
    {
      buffer->cfNameString = @"(I) AGC dynamic gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) AGC dynamic gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      v6 = -_D0;
LABEL_13:
      *&buffer->minValue = v6;
      v13 = buffer->flags | 0x8000;
      buffer->defaultValue = 0.0;
      buffer->flags = v13;
      return result;
    }

    v7 = @"noise SPL (gated PS)";
  }

  buffer->cfNameString = v7;
  buffer->flags = 1207959552;
  CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = kAudioUnitParameterUnit_Generic;
  *&buffer->minValue = 0x42C8000041A00000;
  v14 = 40.0;
  v16 = buffer->flags | 0x8000;
LABEL_23:
  buffer->defaultValue = v14;
  buffer->flags = v16;
  return result;
}

uint64_t AUOneChannelNS::GetParameterList(AUOneChannelNS *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09BC60;
    }

    v4 = 8;
  }

  *a4 = v4;
  return 0;
}

uint64_t AUOneChannelNS::SetBusCount(AUOneChannelNS *this, int a2, unsigned int a3)
{
  v3 = a3 - 1;
  if (a2 == 1 && v3 < 2)
  {
    v4 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v4), a3);
    return 0;
  }

  v5 = 4294956445;
  if (a2 == 2 && v3 <= 1)
  {
    v4 = 128;
    goto LABEL_7;
  }

  return v5;
}

uint64_t AUOneChannelNS::BusCountWritable(AUOneChannelNS *this, int a2)
{
  if ((a2 - 1) > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 17) ^ 1;
  }

  return v2 & 1;
}

uint64_t AUOneChannelNS::Render(AUOneChannelNS *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (*(this + 376) == 1 && *(this + 84) != a4)
  {
    return 4294956422;
  }

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
    v11 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (v11 && *(v11 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
      if (v12)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
        if (result)
        {
          return result;
        }
      }

      else if (result)
      {
        return result;
      }

      v13 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!v13)
      {
        goto LABEL_30;
      }

      if (!*(v13 + 144))
      {
        goto LABEL_33;
      }

      v14 = *(v13 + 152) + 48;
    }

    else
    {
      v14 = 0;
    }

    v15 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v15)
    {
      if (!*(v15 + 144))
      {
        goto LABEL_33;
      }

      v22[0] = *(v15 + 152) + 48;
      v22[1] = v14;
      v16 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v16)
      {
        if (*(v16 + 144))
        {
          v21[0] = *(v16 + 152) + 48;
          v21[1] = 0;
          v17 = *(this + 15);
          if (v17)
          {
            v18 = (*(*v17 + 24))(v17);
          }

          else
          {
            v18 = (*(this + 13) - *(this + 12)) >> 3;
          }

          v19 = *(this + 21);
          if (v19)
          {
            v20 = (*(*v19 + 24))(v19);
          }

          else
          {
            v20 = (*(this + 19) - *(this + 18)) >> 3;
          }

          return (*(*this + 184))(this, a2, a4, v18, v22, v20, v21);
        }

LABEL_33:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

LABEL_30:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUOneChannelNS::ProcessMultipleBufferLists(AUOneChannelNS *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 376) == 1 && *(this + 84) != a3)
  {
    return 4294956422;
  }

  if ((*(*this + 576))(this, a2))
  {
    if (*(this + 548) == *(this + 549))
    {
      mData = (*a5)->mBuffers[0].mData;
      v14 = (*a7)->mBuffers[0].mData;
      if (mData != v14)
      {
        mDataByteSize = (*a7)->mBuffers[0].mDataByteSize;
LABEL_45:
        memcpy(v14, mData, mDataByteSize);
      }
    }

    else
    {
      bzero((*a7)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
    }

    return 0;
  }

  v16 = *(this + 135);
  if (v16 != *(this + 136))
  {
    AUOneChannelNS::UpdateParameters(this);
    *(this + 136) = v16;
  }

  if (a4 < 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a5[1];
    if (v17)
    {
      v17 = v17->mBuffers[0].mData;
    }
  }

  if (*(this + 376) == 1)
  {
    v19 = (*a5)->mBuffers[0].mData;
    if (*(this + 548) == 1)
    {
      v20 = &v19[4 * *(this + 84)];
      v43[0] = v19;
      v43[1] = v20;
      v21 = *(this + 78);
      *(v21 + 600) = v17;
      CNoiseSuppressorV3::speex_preprocess_run_freq(v21, v43, 0);
    }

    else
    {
      v23 = *(this + 78);
      *(v23 + 600) = v17;
      CNoiseSuppressorV3::speex_preprocess_run(v23, v19, 0);
    }

    v24 = *(this + 78);
    if (v24)
    {
      v25 = *(v24 + 332);
    }

    else
    {
      v25 = 0.0;
    }

    v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v27 & 1) == 0 || (ausdk::AUElement::SetParameter(v26, 1u, v25), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 2u, *(*(this + 78) + 336)), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0))
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v30, 5u, *(*(this + 78) + 340));
    v32 = (*a7)->mBuffers[0].mData;
    if (*(this + 549) == 1)
    {
      if (a6 >= 2 && (v33 = a7[1]) != 0)
      {
        v34 = v33->mBuffers[0].mData;
      }

      else
      {
        v34 = 0;
      }

      v36 = *(this + 84);
      v37 = &v32[4 * v36];
      v38 = *(this + 78);
      if (v38)
      {
        v39 = *(v38 + 584);
        v19 = *(v38 + 592);
      }

      else
      {
        v39 = 0;
        v19 = 0;
      }

      memcpy(v32, v39, 4 * v36);
      v40 = 4 * *(this + 84);
      v41 = v37;
    }

    else
    {
      if (a6 >= 2 && (v35 = a7[1]) != 0)
      {
        v34 = v35->mBuffers[0].mData;
      }

      else
      {
        v34 = 0;
      }

      v40 = 4 * *(this + 84);
      v41 = v32;
    }

    memcpy(v41, v19, v40);
    result = 0;
    if (v34 && v34 != v32)
    {
      v42 = *(this + 78);
      mData = *(v42 + 168);
      mDataByteSize = 4 * *(v42 + 4);
      v14 = v34;
      goto LABEL_45;
    }
  }

  else
  {
    *(*(this + 78) + 600) = v17;
    v22 = *(this + 66);

    return BlockProcessor::Process(v22, a3, a5, a7);
  }

  return result;
}

float AUOneChannelNS::UpdateParameters(AUOneChannelNS *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0);
  v5 = *(this + 78);
  if (v5)
  {
    v6 = Parameter;
    if (Parameter >= 0)
    {
      v6 = -v6;
    }

    *(v5 + 52) = v6;
    *(v5 + 476) = 1;
  }

  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0 || (*(*(this + 78) + 356) = ausdk::AUElement::GetParameter(v7, 6u), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v10 & 1) == 0))
  {
LABEL_9:
    abort();
  }

  v11 = ausdk::AUElement::GetParameter(v9, 7u);
  v12 = *(this + 78);
  result = 1.0 - expf(-1.0 / (v11 * (*(v12 + 8) / *(v12 + 4))));
  *(v12 + 360) = result;
  return result;
}

uint64_t AUOneChannelNS::SetParameter(AUOneChannelNS *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (!a3)
  {
    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v10 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v9, a2, a5);
    a3 = 0;
    ++*(this + 135);
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

double AUOneChannelNS::SetProperty(AUOneChannelNS *this, int a2, int a3, unsigned int a4, CFDictionaryRef *a5, size_t size, double result)
{
  if (a3)
  {
    return result;
  }

  v7 = size;
  v8 = a5;
  if (a2 <= 4522)
  {
    if (a2 > 4519)
    {
      if (a2 != 4520)
      {
        if (a2 != 4521)
        {
          return result;
        }

LABEL_17:
        if (size == 4)
        {
          v10 = *a5;
          if (*a5 <= 1u)
          {
            if (a2 == 4521)
            {
              *(this + 146) = v10;
            }

            else if (a2 == 4523)
            {
              *(this + 147) = v10;
            }

            else
            {
              *(this + 148) = v10;
            }
          }
        }

        return result;
      }

      if ((*(this + 17) & 1) == 0)
      {
        if (a5)
        {
          v16 = *a5;
          Value = CFDictionaryGetValue(*a5, @"NoiseUpperBound");
          if (!Value || !AUOneChannelNS::SetNoiseBound(this, 0, Value))
          {
            v18 = CFDictionaryGetValue(v16, @"NoiseLowerBound");
            if (v18)
            {
              AUOneChannelNS::SetNoiseBound(this, 1, v18);
            }
          }
        }
      }
    }

    else if (a2 == 21)
    {
      if (size >= 4)
      {
        v14 = *a5;
        v15 = *a5 != 0;
        if (v15 != (*(*this + 576))(this))
        {
          (*(*this + 584))(this, v14 != 0);
        }
      }
    }

    else if (a2 == 3700 && size >= 4)
    {
      *(this + 376) = *a5;
    }
  }

  else
  {
    if (a2 <= 4525)
    {
      if ((a2 - 4523) >= 2)
      {
        if (a2 == 4525 && (*(this + 17) & 1) == 0 && size == 4)
        {
          LODWORD(result) = *a5;
          if (*a5 >= 0.0)
          {
            *(this + 150) = LODWORD(result);
          }
        }

        return result;
      }

      goto LABEL_17;
    }

    if (a2 == 4526)
    {
      if ((*(this + 17) & 1) == 0)
      {
        if (a5)
        {
          if (size == 4)
          {
            LODWORD(result) = *a5;
            if (*a5 >= 0.0)
            {
              *(this + 151) = LODWORD(result);
            }
          }
        }
      }
    }

    else if (a2 == 4527 && a5 && (*(this + 17) & 1) == 0 && (size & 7) == 0)
    {
      v11 = size >> 3;
      *(this + 152) = size >> 3;
      v12 = *(this + 77);
      v13 = (v12 ? malloc_type_realloc(v12, size, 0x100004000313F17uLL) : malloc_type_malloc(size, 0x100004000313F17uLL));
      v19 = v13;
      *(this + 77) = v13;
      if (v7)
      {
        if (v11 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v11;
        }

        do
        {
          v21 = *v8++;
          result = v21;
          *v19++ = v21;
          --v20;
        }

        while (v20);
      }
    }
  }

  return result;
}

uint64_t AUOneChannelNS::SetNoiseBound(uint64_t a1, int a2, CFTypeRef cf)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = 568;
  }

  else
  {
    v5 = 552;
  }

  CFRetain(cf);
  cfa = cf;
  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!cfa)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
  }

  v7 = COERCE_DOUBLE(applesauce::CF::details::find_at_key_or_optional<double,char const(&)[11]>(cfa, "SampleRate"));
  v9 = v8;
  applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned char>,char const(&)[13]>(&__p, cfa, "NoiseProfile");
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AUOneChannelNS.cpp";
      v28 = 1024;
      v29 = 545;
      v30 = 1024;
      v31 = v7;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d Successfully retrieved sample rate (%iHz).", buf, 0x18u);
    }

    if (v25)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v10 = __p;
        v11 = v24 - __p;
        *buf = 136315650;
        *&buf[4] = "AUOneChannelNS.cpp";
        v28 = 1024;
        v29 = 552;
        v30 = 1024;
        v31 = v24 - __p;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d Successfully retrieved profile vector (length %i).", buf, 0x18u);
      }

      else
      {
        v10 = __p;
        v11 = v24 - __p;
      }

      v14 = v11 >> 2;
      std::vector<float>::vector[abi:ne200100](buf, v11 >> 2);
      v15 = a1 + v5;
      if (v11 >= 4)
      {
        v16 = *buf;
        v17 = v10;
        do
        {
          v18 = *v17++;
          *v16++ = bswap32(v18);
          --v14;
        }

        while (v14);
      }

      v19 = *(v15 + 8);
      if (v19)
      {
        MEMORY[0x1E12BD130](v19, 0x1000C8052888210);
      }

      *(v15 + 8) = 0;
      operator new[]();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AUOneChannelNS.cpp";
      v28 = 1024;
      v29 = 554;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d Profile vector is not present in the dictionary.";
      goto LABEL_16;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AUOneChannelNS.cpp";
    v28 = 1024;
    v29 = 547;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d Sample rate is not present in the dictionary.";
LABEL_16:
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
  }

  if (v25 == 1 && __p)
  {
    operator delete(__p);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return 4294956445;
}

void sub_1DDF5539C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a14);
  _Unwind_Resume(a1);
}

uint64_t AUOneChannelNS::GetProperty(AUOneChannelNS *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  v6 = a5;
  result = 4294956417;
  if (a2 <= 4523)
  {
    if (a2 > 4520)
    {
      if (a2 == 4521)
      {
        result = 0;
        v8 = *(this + 146);
      }

      else
      {
        if (a2 != 4523)
        {
          return result;
        }

        result = 0;
        v8 = *(this + 147);
      }
    }

    else if (a2 == 21)
    {
      v8 = (*(*this + 576))(this);
      result = 0;
    }

    else
    {
      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v8 = *(this + 376);
    }

    goto LABEL_25;
  }

  if (a2 <= 4525)
  {
    result = 0;
    if (a2 == 4524)
    {
      v8 = *(this + 148);
    }

    else
    {
      v8 = *(this + 150);
    }

    goto LABEL_25;
  }

  if (a2 == 4526)
  {
    result = 0;
    v8 = *(this + 151);
LABEL_25:
    *v6 = v8;
    return result;
  }

  if (a2 != 4527)
  {
    return result;
  }

  v9 = *(this + 77);
  v10 = *(this + 152);
  if (!v9)
  {
    if (v10)
    {
      bzero(a5, 8 * v10);
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  result = 0;
  do
  {
    v11 = *v9++;
    *v6 = v11;
    v6 += 2;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t AUOneChannelNS::GetPropertyInfo(AUOneChannelNS *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 4523)
  {
    if (a2 > 4525)
    {
      if (a2 != 4526)
      {
        if (a2 != 4527)
        {
          return result;
        }

        *a6 = *(this + 17) ^ 1;
        v10 = 8 * *(this + 152);
LABEL_21:
        result = 0;
        *a5 = v10;
        return result;
      }

      goto LABEL_19;
    }

    if (a2 == 4524)
    {
LABEL_19:
      v9 = *(this + 17) ^ 1;
      goto LABEL_20;
    }

    v8 = 4525;
LABEL_13:
    if (a2 != v8)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (a2 > 4520)
  {
    if (a2 == 4521)
    {
LABEL_15:
      v9 = 1;
LABEL_20:
      *a6 = v9;
      v10 = 4;
      goto LABEL_21;
    }

    v8 = 4523;
    goto LABEL_13;
  }

  if (a2 == 21 || a2 == 3700)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t *AUOneChannelNS::Cleanup(AUOneChannelNS *this)
{
  v2 = *(this + 78);
  if (v2)
  {
    CNoiseSuppressorV3::speex_preprocess_state_destroy(v2);
    *(this + 78) = 0;
  }

  return std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 66, 0);
}

void AUOneChannelNS::Initialize(AUOneChannelNS *this)
{
  v2 = (this + 80);
  (*(*this + 64))(this);
  Element = ausdk::AUScope::GetElement(v2, 0);
  if (Element)
  {
    *(this + 548) = *(Element + 88) == 1718773105;
    v4 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v4)
    {
      *(this + 549) = *(v4 + 88) == 1718773105;
      v5 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v5)
      {
        if (*(this + 376))
        {
          CNoiseSuppressorV3::speex_preprocess_state_init(*(this + 84), *(v5 + 80), 0);
        }

        if (ausdk::AUScope::GetElement((this + 128), 0) && ausdk::AUScope::GetElement(v2, 0))
        {
          if (ausdk::AUScope::GetElement((this + 128), 0))
          {
            operator new();
          }
        }
      }
    }
  }

  ausdk::Throw(0xFFFFD583);
}

uint64_t AUOneChannelNS::BlockProcessClassFunc(int **this, void *a2, uint64_t a3, const AudioBufferList **a4, AudioBufferList **a5)
{
  v6 = a2;
  v8 = *(*a3 + 16);
  CNoiseSuppressorV3::speex_preprocess_run(this[78], v8, 0);
  v9 = this[78];
  if (v9)
  {
    v10 = *(v9 + 83);
  }

  else
  {
    v10 = 0.0;
  }

  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
  if ((v12 & 1) == 0 || (ausdk::AUElement::SetParameter(v11, 1u, v10), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 2u, *(this[78] + 84)), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v16 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v15, 5u, *(this[78] + 85));
  memcpy((*a4)->mBuffers[0].mData, v8, 4 * v6);
  return 0;
}

void AUOneChannelNS::~AUOneChannelNS(AUOneChannelNS *this)
{
  AUOneChannelNS::~AUOneChannelNS(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592ED10;
  AUOneChannelNS::Cleanup(this);
  v2 = *(this + 70);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8052888210);
  }

  *(this + 69) = 0;
  *(this + 70) = 0;
  v3 = *(this + 72);
  if (v3)
  {
    MEMORY[0x1E12BD130](v3, 0x1000C8052888210);
  }

  *(this + 71) = 0;
  *(this + 72) = 0;
  v4 = *(this + 77);
  if (v4)
  {
    free(v4);
  }

  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUParametricProcessorV2::ValidFormat(AUParametricProcessorV2 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  IsCommonFloat32 = ausdk::ASBD::IsCommonFloat32(a4, a2);
  mFormatFlags = a4->mFormatFlags;
  if (IsCommonFloat32)
  {
    if ((mFormatFlags & 0x20) != 0)
    {
      v9 = 1;
      result = 1;
    }

    else
    {
      v9 = 0;
      result = a4->mChannelsPerFrame == 1;
    }
  }

  else
  {
    result = 0;
    v9 = (mFormatFlags >> 5) & 1;
  }

  if (v5 == 2)
  {
    if (!result)
    {
      return result;
    }

    mChannelsPerFrame = a4->mChannelsPerFrame;
    v14 = sqrt(mChannelsPerFrame);
    v12 = round(v14) == v14 || mChannelsPerFrame == 2;
  }

  else
  {
    if (v5 != 1 || !result)
    {
      return result;
    }

    LODWORD(v7) = a4->mChannelsPerFrame;
    v11 = sqrt(v7);
    v12 = round(v11) == v11;
  }

  v15 = v12;
  return v15 & v9;
}

uint64_t AUParametricProcessorV2::SupportedNumChannels(AUParametricProcessorV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUParametricProcessorV2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 6;
}

double AUParametricProcessorV2::GetLatency(AUParametricProcessorV2 *this)
{
  v1 = *(this + 66);
  if (!v1)
  {
    return 0.0;
  }

  caulk::pooled_semaphore_mutex::_lock(*(this + 66));
  v3 = *(v1 + 19);
  if (v3 && (v4 = *(v1 + 22)) != 0)
  {
    v5 = *(*(*v4 + 16) + 108) + *(*(*v3 + 16) + 104);
  }

  else
  {
    v5 = 0;
  }

  caulk::pooled_semaphore_mutex::_unlock(v1);
  if (*(this + 376))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 84);
  }

  return (v6 + v5) / *(this + 163);
}

uint64_t AUParametricProcessorV2::GetParameterInfo(AUParametricProcessorV2 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x14)
  {
    v6 = off_1E866DAC0[a3];
    v7 = dword_1DE102F58[a3];
    v8 = flt_1DE102FAC[a3];
    v9 = flt_1DE103000[a3];
    v10 = flt_1DE103054[a3];
    v11 = dword_1DE1030A8[a3];
    buffer->cfNameString = v6;
    buffer->flags = 0x8000000;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

ausdk::AUInputElement *AUParametricProcessorV2::Render(AUParametricProcessorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUParametricProcessorV2::ProcessMultipleBufferLists(AUParametricProcessorV2 *this, unsigned int *a2, uint64_t a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 == 1 && a6 == 1)
  {
    return (*(*this + 176))(this, a2, *a5, *a7, a3);
  }

  else
  {
    return 4294956428;
  }
}

uint64_t AUParametricProcessorV2::ProcessBufferLists(AUParametricProcessorV2 *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  if (*(this + 656) == 1)
  {
    v8 = a3->mNumberBuffers != a4->mNumberBuffers || a3->mNumberBuffers == 0;
    if (!v8)
    {
      v9 = 0;
      v10 = 4 * a5;
      v11 = 16;
      do
      {
        memcpy(*(&a4->mNumberBuffers + v11), *(&a3->mNumberBuffers + v11), v10);
        ++v9;
        mNumberBuffers = a4->mNumberBuffers;
        v13 = a3->mNumberBuffers;
        if (a4->mNumberBuffers >= a3->mNumberBuffers)
        {
          v14 = v13;
        }

        else
        {
          v14 = mNumberBuffers;
        }

        v11 += 16;
      }

      while (v9 < v14);
      if (v13 < mNumberBuffers)
      {
        v15 = 16 * v14 + 16;
        do
        {
          bzero(*(&a4->mNumberBuffers + v15), v10);
          ++v14;
          v15 += 16;
        }

        while (v14 < a4->mNumberBuffers);
      }
    }

    return 0;
  }

  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  v18 = *(this + 66);
  if (!v18)
  {
    return 4294956429;
  }

  if (*(*(v18 + 8) + 12) != a5)
  {
    return 4294956428;
  }

  v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_150;
  }

  Parameter = ausdk::AUElement::GetParameter(v19, 0);
  v22 = (Parameter + 1) * (Parameter + 1);
  if (v22 * a5 != ((*(this + 69) - *(this + 68)) >> 2))
  {
    PPUtils::ContiguousArray2D<float>::resize(this + 536, (Parameter + 1) * (Parameter + 1), a5);
  }

  v23 = *(this + 66);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_150;
  }

  v26 = ausdk::AUElement::GetParameter(v24, 0);
  if (v26 >= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  if (v28 != **(v23 + 1))
  {
    caulk::pooled_semaphore_mutex::_lock(v23);
    **(v23 + 1) = v28;
    ParametricProcessorV2Wrapper::recreateAllObjects(v23);
  }

  v29 = *(this + 66);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_150;
  }

  v32 = ausdk::AUElement::GetParameter(v30, 1u) != 0.0;
  if (*(*(v29 + 1) + 18) != v32)
  {
    caulk::pooled_semaphore_mutex::_lock(v29);
    *(*(v29 + 1) + 18) = v32;
    ParametricProcessorV2Wrapper::recreateAllObjects(v29);
  }

  v33 = *(this + 66);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_150;
  }

  v36 = ausdk::AUElement::GetParameter(v34, 2u);
  if (*(v33 + 4) != v36)
  {
    caulk::pooled_semaphore_mutex::_lock(v33);
    *(v33 + 4) = v36;
    operator new();
  }

  v37 = *(this + 66);
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_150;
  }

  v40 = ausdk::AUElement::GetParameter(v38, 6u) != 0.0;
  if (*(v37 + 140) != v40)
  {
    caulk::pooled_semaphore_mutex::_lock(v37);
    *(v37 + 140) = v40;
    operator new();
  }

  v41 = *(this + 66);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_150;
  }

  v44 = ausdk::AUElement::GetParameter(v42, 7u);
  if (*(v41 + 36) != v44)
  {
    caulk::pooled_semaphore_mutex::_lock(v41);
    *(v41 + 36) = v44;
    operator new();
  }

  v45 = *(this + 66);
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_150;
  }

  v48 = ausdk::AUElement::GetParameter(v46, 8u) != 0.0;
  if (*(v45 + 148) != v48)
  {
    caulk::pooled_semaphore_mutex::_lock(v45);
    *(v45 + 148) = v48;
    operator new();
  }

  v49 = *(this + 66);
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_150;
  }

  v52 = ausdk::AUElement::GetParameter(v50, 9u) != 0.0;
  if (*(v49 + 149) != v52)
  {
    caulk::pooled_semaphore_mutex::_lock(v49);
    *(v49 + 149) = v52;
    operator new();
  }

  v53 = *(this + 66);
  v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_150;
  }

  v56 = ausdk::AUElement::GetParameter(v54, 3u);
  v57 = LODWORD(v56);
  if (v56 > 24000.0)
  {
    v57 = 1186693120;
  }

  if (v56 < 0.0)
  {
    v57 = 0;
  }

  atomic_store(v57, (*(v53 + 152) + 8));
  v58 = *(this + 66);
  v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_150;
  }

  v61 = ausdk::AUElement::GetParameter(v59, 4u);
  v62 = LODWORD(v61);
  if (v61 > 24000.0)
  {
    v62 = 1186693120;
  }

  if (v61 < 0.0)
  {
    v62 = 0;
  }

  atomic_store(v62, (*(v58 + 152) + 12));
  v63 = *(this + 66);
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_150;
  }

  v66 = ausdk::AUElement::GetParameter(v64, 5u);
  v67 = LODWORD(v66);
  if (v66 > 1.0)
  {
    v67 = 1065353216;
  }

  if (v66 < 0.0)
  {
    v67 = 0;
  }

  atomic_store(v67, (*(v63 + 152) + 16));
  v68 = *(this + 66);
  v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v70 & 1) == 0)
  {
    goto LABEL_150;
  }

  v71 = ausdk::AUElement::GetParameter(v69, 0xAu);
  v72 = LODWORD(v71);
  if (v71 > 0.999)
  {
    v72 = 1065336439;
  }

  if (v71 < 0.0)
  {
    v72 = 0;
  }

  atomic_store(v72, (*(v68 + 176) + 8));
  v73 = *(this + 66);
  v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_150;
  }

  v76 = ausdk::AUElement::GetParameter(v74, 0xBu);
  v77 = LODWORD(v76);
  if (v76 > 2.0)
  {
    v77 = 0x40000000;
  }

  if (v76 < 0.0)
  {
    v77 = 0;
  }

  atomic_store(v77, (*(v73 + 176) + 12));
  v78 = *(this + 66);
  v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_150;
  }

  v81 = ausdk::AUElement::GetParameter(v79, 0xCu);
  v82 = LODWORD(v81);
  if (v81 > 1.0)
  {
    v82 = 1065353216;
  }

  if (v81 < 0.0)
  {
    v82 = 0;
  }

  atomic_store(v82, (*(v78 + 176) + 16));
  v83 = *(this + 66);
  v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_150;
  }

  v86 = ausdk::AUElement::GetParameter(v84, 0xDu);
  v87 = LODWORD(v86);
  if (v86 > 1.0)
  {
    v87 = 1065353216;
  }

  if (v86 < 0.0)
  {
    v87 = 0;
  }

  atomic_store(v87, (*(v83 + 176) + 20));
  v88 = *(this + 66);
  v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_150;
  }

  atomic_store(ausdk::AUElement::GetParameter(v89, 0xEu), (*(v88 + 176) + 24));
  v91 = *(this + 66);
  v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v93 & 1) == 0)
  {
    goto LABEL_150;
  }

  v94 = ausdk::AUElement::GetParameter(v92, 0xFu);
  v95 = LODWORD(v94);
  if (v94 > 360.0)
  {
    v95 = 1135869952;
  }

  if (v94 < -360.0)
  {
    v95 = -1011613696;
  }

  atomic_store(v95, (*(v91 + 176) + 28));
  v96 = *(this + 66);
  v97 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v98 & 1) == 0)
  {
    goto LABEL_150;
  }

  v99 = ausdk::AUElement::GetParameter(v97, 0x10u);
  v100 = LODWORD(v99);
  if (v99 > 180.0)
  {
    v100 = 1127481344;
  }

  if (v99 < -180.0)
  {
    v100 = -1020002304;
  }

  atomic_store(v100, (*(v96 + 176) + 32));
  v101 = *(this + 66);
  v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v103 & 1) == 0)
  {
    goto LABEL_150;
  }

  v104 = ausdk::AUElement::GetParameter(v102, 0x11u);
  v105 = LODWORD(v104);
  if (v104 > 180.0)
  {
    v105 = 1127481344;
  }

  if (v104 < -180.0)
  {
    v105 = -1020002304;
  }

  atomic_store(v105, (*(v101 + 176) + 36));
  v106 = *(this + 66);
  v107 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v108 & 1) == 0)
  {
    goto LABEL_150;
  }

  v109 = ausdk::AUElement::GetParameter(v107, 0x12u);
  v110 = LODWORD(v109);
  if (v109 > 10.0)
  {
    v110 = 1092616192;
  }

  if (v109 < -10.0)
  {
    v110 = -1054867456;
  }

  atomic_store(v110, (*(v106 + 176) + 40));
  v111 = *(this + 66);
  v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v113 & 1) == 0)
  {
    goto LABEL_150;
  }

  v114 = ausdk::AUElement::GetParameter(v112, 0x13u);
  v115 = LODWORD(v114);
  if (v114 > 10.0)
  {
    v115 = 1092616192;
  }

  if (v114 < -10.0)
  {
    v115 = -1054867456;
  }

  atomic_store(v115, (*(v111 + 176) + 44));
  v116 = *(this + 66);
  v117 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v118 & 1) == 0)
  {
LABEL_150:
    abort();
  }

  v119 = ausdk::AUElement::GetParameter(v117, 0x14u);
  v120 = LODWORD(v119);
  if (v119 > 10.0)
  {
    v120 = 1092616192;
  }

  if (v119 < -10.0)
  {
    v120 = -1054867456;
  }

  atomic_store(v120, (*(v116 + 176) + 48));
  v121 = a3->mNumberBuffers;
  if (v22 >= a3->mNumberBuffers)
  {
    v122 = a3->mNumberBuffers;
  }

  else
  {
    v122 = (Parameter + 1) * (Parameter + 1);
  }

  if (v122)
  {
    v123 = 0;
    v124 = 16;
    while (1)
    {
      v125 = *(this + 71);
      if (v123 >= (*(this + 72) - v125) >> 3)
      {
        break;
      }

      memcpy(*(v125 + 8 * v123++), *(&a3->mNumberBuffers + v124), 4 * a5);
      v121 = a3->mNumberBuffers;
      if (v22 >= a3->mNumberBuffers)
      {
        v126 = v121;
      }

      else
      {
        v126 = v22;
      }

      v124 += 16;
      if (v123 >= v126)
      {
        goto LABEL_124;
      }
    }

LABEL_149:
    __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
  }

LABEL_124:
  if (v121 < v22)
  {
    v127 = a5;
    v128 = v121;
    while (1)
    {
      v129 = *(this + 71);
      if (v128 >= (*(this + 72) - v129) >> 3)
      {
        goto LABEL_149;
      }

      bzero(*(v129 + 8 * v128++), 4 * a5);
      if (v22 == v128)
      {
        goto LABEL_132;
      }
    }
  }

  v127 = a5;
LABEL_132:
  v130 = 0;
  v131 = 0;
  v132 = 1;
  do
  {
    v144 = sqrtf(((2 * v131) | 1u));
    v133 = v132;
    do
    {
      v134 = v130;
      v135 = *(this + 71);
      if (v134 >= (*(this + 72) - v135) >> 3)
      {
        goto LABEL_149;
      }

      MEMORY[0x1E12BE940](*(v135 + 8 * v134), 1, &v144, *(v135 + 8 * v134), 1, v127);
      v130 = v134 + 1;
      --v133;
    }

    while (v133);
    v132 += 2;
    v8 = v131++ == Parameter;
  }

  while (!v8);
  ParametricProcessorV2Wrapper::process(*(this + 66), this + 67, a5, this + 592);
  if (!a4->mNumberBuffers)
  {
    return 0;
  }

  v136 = 0;
  v137 = 4 * v127;
  do
  {
    v138 = *(this + 78);
    if (v136 >= (*(this + 79) - v138) >> 3)
    {
      goto LABEL_149;
    }

    memcpy(a4->mBuffers[v136].mData, *(v138 + 8 * v136), v137);
    v139 = v136 + 1;
    v140 = a4->mNumberBuffers;
    if (a4->mNumberBuffers >= 2)
    {
      v141 = 2;
    }

    else
    {
      v141 = v140;
    }

    v136 = 1;
  }

  while (v139 < v141);
  if (v140 < 3)
  {
    return 0;
  }

  v142 = 2;
  v143 = 48;
  do
  {
    bzero(*(&a4->mNumberBuffers + v143), v137);
    result = 0;
    ++v142;
    v143 += 16;
  }

  while (v142 < a4->mNumberBuffers);
  return result;
}

void sub_1DDF56A58(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BD160](v2, 0x1020C403357C6A3);
  caulk::pooled_semaphore_mutex::_unlock(v1);
  _Unwind_Resume(a1);
}

void ParametricProcessorV2Wrapper::process(caulk::pooled_semaphore_mutex *a1, void *a2, unsigned int a3, uint64_t a4)
{
  v502 = *MEMORY[0x1E69E9840];
  v7 = caulk::pooled_semaphore_mutex::try_lock(a1);
  v431 = a3;
  if (*(*(a1 + 1) + 12) != a3)
  {
    __assert_rtn("process", "ParametricProcessorV2Wrapper.h", 80, "isBlockSizeSupported(inFramesToProcess)");
  }

  if (!v7)
  {
    if (getParametricProcessorV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
    }

    v137 = getParametricProcessorV2Log(void)::gLog;
    if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__Y) = 136315138;
      *(&__Y + 4) = "process";
      _os_log_error_impl(&dword_1DDB85000, v137, OS_LOG_TYPE_ERROR, "[%s] Another thread has a lock on the ParametricProcessorV2 objects. Output buffer was filled with zeros instead.", &__Y, 0xCu);
    }

    bzero(*(a4 + 8), *(a4 + 16) - *(a4 + 8));
    return;
  }

  v8 = *(a1 + 19);
  v9 = *v8;
  v10 = **v8;
  v439 = a1;
  if (*(v10 + 3) != a3)
  {
    v409 = 188;
    v410 = "ParametricProcessorV2Analyser.cpp";
    goto LABEL_356;
  }

  v11 = *(a1 + 21);
  v13 = v9[4];
  v12 = v9[5];
  v434 = *(v10 + 2);
  v14 = *v10;
  *&v15 = COERCE_FLOAT(atomic_load(v8 + 2));
  *&v16 = COERCE_FLOAT(atomic_load(v8 + 3));
  v17 = COERCE_FLOAT(atomic_load(v8 + 4));
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = 0.0;
  if (v17 >= 0.0)
  {
    v19 = v18;
  }

  __N = v19;
  v418 = *(a1 + 20);
  PPUtils::AliasingRobustComplexValuedFilterbank::applyForwardTransform(*(*v8 + 16), a2, *(v10 + 3), v418);
  v424 = ((v12 - v13) >> 2) - 1;
  if (((v12 - v13) >> 2) != 1)
  {
    v21 = 0;
    v22 = v431 / v434;
    v20.n128_f32[0] = 1.0 / (2048.0 / v434);
    v440 = 1.0 - v20.n128_f32[0];
    v443 = v20.n128_f32[0];
    v432 = *&v15;
    v428 = *&v16;
    v426 = *(*(*v8 + 16) + 16);
    __K = (LODWORD(v14) + 1) * (LODWORD(v14) + 1);
    v23 = (2 * __K * v22);
    v437 = vdup_lane_s32(v20.n128_u64[0], 0);
    __n = 8 * (__K * v22);
    v20.n128_u64[0] = vdup_n_s32(0x3F13CD3Bu);
    v446 = v20.n128_u64[0];
    v420 = v23;
    *__ldb = v22;
    while (1)
    {
      v24 = *(*(*v8 + 32) + 4 * v21);
      v25 = (*(v426 + 4 * v24) * v10[1]) * 0.5;
      v26 = v25 > v428 || v25 < v432;
      if (v26)
      {
        if (v434 <= v431)
        {
          v27 = v11[11];
          if (v21 >= (v11[12] - v27) >> 3)
          {
            goto LABEL_347;
          }

          v28 = 0;
          v29 = *(v27 + 8 * v21);
          v30 = v11[4];
          v31 = (v11[5] - v30) >> 3;
          do
          {
            *(v29 + 4 * v28) = 0;
            if (v31 <= v21)
            {
              goto LABEL_347;
            }

            *(*(v30 + 8 * v21) + 4 * v28++) = 0;
          }

          while (v28 < v22);
        }

        goto LABEL_25;
      }

      v32 = *(*v8 + 64);
      v33 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v418, v24);
      memcpy(v32, *v33, __n);
      v34 = *(*v8 + 32);
      for (i = *(v34 + 4 * v21) + 1; i < *(v34 + 4 * (v21 + 1)); ++i)
      {
        v36 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v418, i);
        MEMORY[0x1E12BE5D0](*v36, 1, *(*v8 + 64), 1, *(*v8 + 64), 1, v23);
        v34 = *(*v8 + 32);
      }

      if (v434 <= v431)
      {
        break;
      }

LABEL_25:
      ++v21;
      v23 = v420;
      if (v21 == v424)
      {
        goto LABEL_82;
      }
    }

    v37 = 0;
    while (1)
    {
      v38 = *(*v8 + 88);
      v39 = *(*v8 + 96);
      v40 = v39 - v38;
      if (v39 == v38)
      {
        goto LABEL_347;
      }

      v41 = *(*v38 + 8 * v37);
      *&__Y = v41;
      if (v40 < 0x19)
      {
        goto LABEL_347;
      }

      LODWORD(v42) = HIDWORD(v41) ^ 0x80000000;
      *(&__Y + 1) = vmul_f32(*(*(v38 + 3) + 8 * v37), v446);
      v500 = vmul_f32(*(*(v38 + 1) + 8 * v37), v446);
      v501 = vmul_f32(*(*(v38 + 2) + 8 * v37), v446);
      v43 = *&v41;
      v487.i32[0] = std::operator*[abi:ne200100]<float,0>(*&v41, COERCE_FLOAT(HIDWORD(v41) ^ 0x80000000), *(&__Y + 2), *(&__Y + 3));
      v487.i32[1] = std::operator*[abi:ne200100]<float,0>(v43, v42, v500.f32[0], v500.f32[1]);
      v44 = std::operator*[abi:ne200100]<float,0>(v43, v42, v501.f32[0], v501.f32[1]);
      *&v488 = v44;
      __dotc[0] = 0;
      cblas_cdotc_sub(4, &__Y, 1, &__Y, 1, __dotc);
      v45 = *v8;
      v46 = *(*v8 + 384);
      if (v21 >= (*(*v8 + 392) - v46) >> 3)
      {
        goto LABEL_347;
      }

      v47 = *(v46 + 8 * v21);
      v48 = (v440 * v47[1].f32[0]) + (v443 * v44);
      v49 = v45[51];
      v50 = (v440 * v49[v21]) + (v443 * __dotc[0].f32[0]);
      *v47 = vmla_f32(vmul_n_f32(*v47, v440), v487, v437);
      v47[1].f32[0] = v48;
      v49[v21] = v50;
      v51 = v47->f32[0];
      v52 = v47->f32[1];
      v53 = v47[1].f32[0];
      v54 = fmaxf(fabsf(v47->f32[0]), fmaxf(fabsf(v52), fabsf(v53)));
      if (v54 <= 1.8447e19)
      {
        v56 = 1.0;
        if (v54 >= 5.421e-20)
        {
          goto LABEL_36;
        }

        *&v55 = 1.9343e25;
      }

      else
      {
        *&v55 = 5.1699e-26;
      }

      v56 = *&v55;
LABEL_36:
      v57 = v11[11];
      if (v21 >= (v11[12] - v57) >> 3)
      {
        goto LABEL_347;
      }

      v58 = sqrtf((((v52 * v56) * (v52 * v56)) + ((v51 * v56) * (v51 * v56))) + ((v53 * v56) * (v53 * v56)));
      v59 = 1.0 - (((v58 / v56) + (v58 / v56)) / (v50 + 0.0001));
      *(*(v57 + 8 * v21) + 4 * v37) = v59;
      v60 = v11[4];
      if (v21 >= (v11[5] - v60) >> 3)
      {
        goto LABEL_347;
      }

      v61 = *(v60 + 8 * v21);
      *(v61 + 4 * v37) = 0;
      if (v59 < __N)
      {
        v62 = *(v45 + 3);
        if (v62 == 1)
        {
          v64 = v45[15];
          v65 = *v64;
          v414 = v64[1];
          cblas_cgemm(CblasRowMajor, CblasTrans, CblasNoTrans, (v414 - v65) >> 2, 1, __K, &kComplexOne, v45[17], (v414 - v65) >> 2, &v45[8][2 * v37], __ldb[0], &kComplexZero, v45[24], 1);
          v66 = cblas_icamax((v414 - v65) >> 2, *(*v8 + 192), 1);
          v413 = (v414 - v65) >> 2;
          v67 = *v8;
          **(*v8 + 240) = v66;
          v68 = &v67[24][2 * v66];
          *v67[33] = hypotf(*v68, v68[1]);
          if (*(v67 + 2))
          {
            LODWORD(v69) = 0;
            v70 = 1;
            v412 = v65;
            v459 = v8;
            do
            {
              v71 = LODWORD(v67[30][v69]);
              v72 = (*(v67[15] + 3) + 24 * v71);
              v73 = *v72;
              v74 = v72[1] - *v72;
              if (!v74)
              {
                break;
              }

              v75 = v69;
              __lda = v74 >> 2;
              cblas_cgemm(CblasRowMajor, CblasTrans, CblasNoTrans, __lda, 1, __K, &kComplexOne, *&v67[23][14 * v71 + 2], __lda, &v67[8][2 * v37], __ldb[0], &kComplexZero, v67[27], 1);
              v77 = *(v73 + 4 * cblas_icamax(__lda, *(*v459 + 216), 1));
              v78 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
              v79 = v75;
              *(*(v78 + 8 * v37) + 4 * v75) = v77;
              v80 = v11[4];
              if (v21 >= (v11[5] - v80) >> 3)
              {
                goto LABEL_347;
              }

              ++*(*(v80 + 8 * v21) + 4 * v37);
              v8 = v459;
              v67 = *v459;
              v81 = *(*v459 + 8);
              if (v79 >= v81 - 1)
              {
                LODWORD(v69) = v79 + 1;
              }

              else
              {
                v82 = v79;
                if (v414 != v65)
                {
                  v83 = 0;
                  v84 = v67[40];
                  v85 = (v67[41] - v84) >> 3;
                  v86 = 1;
                  while (v85 > v83)
                  {
                    if (*(*&v84[2 * v83] + 4 * LODWORD(v67[30][v82])) < *(v67 + 86))
                    {
                      *&v67[24][2 * v83] = 0;
                    }

                    v83 = v86;
                    v26 = v413 > v86++;
                    if (!v26)
                    {
                      goto LABEL_53;
                    }
                  }

LABEL_347:
                  __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
                }

LABEL_53:
                v415 = v82;
                v87 = cblas_icamax((v67[25] - v67[24]) >> 3, v67[24], 1);
                v88 = *v459;
                v89 = v415 + 1;
                *(*(*v459 + 240) + 4 * v89) = v87;
                v90 = &v88[24][2 * v87];
                v88[33][v89] = hypotf(*v90, v90[1]);
                LODWORD(v88) = *(v65 + 4 * v87);
                v91 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                v92 = 0;
                v93 = 0;
                v69 = (v415 + 1);
                *(*(v91 + 8 * v37) + 4 * v69) = v88;
                do
                {
                  v94 = 0;
                  do
                  {
                    if (v92 != v94 && !v93)
                    {
                      v95 = *(v10 + 7);
                      if ((*(v10 + 8) - v95) < 9)
                      {
                        goto LABEL_347;
                      }

                      v96 = *(v95 + 8);
                      v97 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v98 = cosf(*(v96 + 4 * *(*(v97 + 8 * v37) + 4 * v92)) * 0.017453);
                      v99 = *(v10 + 7);
                      if (*(v10 + 8) == v99)
                      {
                        goto LABEL_347;
                      }

                      v100 = v98;
                      v101 = *v99;
                      v102 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v103 = cosf(*(v101 + 4 * *(*(v102 + 8 * v37) + 4 * v92)) * 0.017453);
                      v104 = *(v10 + 7);
                      if (*(v10 + 8) == v104)
                      {
                        goto LABEL_347;
                      }

                      v105 = v103;
                      v106 = *v104;
                      v107 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v108 = sinf(*(v106 + 4 * *(*(v107 + 8 * v37) + 4 * v92)) * 0.017453);
                      v109 = *(v10 + 7);
                      if ((*(v10 + 8) - v109) < 9)
                      {
                        goto LABEL_347;
                      }

                      v110 = v108;
                      v111 = *(v109 + 8);
                      v112 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v113 = sinf(*(v111 + 4 * *(*(v112 + 8 * v37) + 4 * v92)) * 0.017453);
                      v114 = *(v10 + 7);
                      if ((*(v10 + 8) - v114) < 9)
                      {
                        goto LABEL_347;
                      }

                      v115 = v113;
                      v116 = *(v114 + 8);
                      v117 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v118 = cosf(*(v116 + 4 * *(*(v117 + 8 * v37) + 4 * v94)) * 0.017453);
                      v119 = *(v10 + 7);
                      if (*(v10 + 8) == v119)
                      {
                        goto LABEL_347;
                      }

                      v120 = v118;
                      v121 = *v119;
                      v122 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v123 = cosf(*(v121 + 4 * *(*(v122 + 8 * v37) + 4 * v94)) * 0.017453);
                      v124 = *(v10 + 7);
                      if (*(v10 + 8) == v124)
                      {
                        goto LABEL_347;
                      }

                      v125 = v123;
                      v126 = *v124;
                      v127 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v128 = *(v10 + 7);
                      if ((*(v10 + 8) - v128) < 9)
                      {
                        goto LABEL_347;
                      }

                      v129 = *(v126 + 4 * *(*(v127 + 8 * v37) + 4 * v94));
                      v130 = *(v128 + 8);
                      v131 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21);
                      v132 = v100 * v105;
                      v133 = v100 * v110;
                      v134 = v120 * v125;
                      v135 = v120 * sinf(v129 * 0.017453);
                      v136 = ((v133 * v135) + (v132 * v134)) + (v115 * sinf(*(v130 + 4 * *(*(v131 + 8 * v37) + 4 * v94)) * 0.017453));
                      if (v136 > 0.9999)
                      {
                        v136 = 0.9999;
                      }

                      v93 = acosf(v136) < *(*v459 + 344);
                      v69 = (v415 + 1);
                    }

                    ++v94;
                  }

                  while (v70 != v94);
                  ++v92;
                }

                while (v92 != v70);
                v65 = v412;
                v8 = v459;
                if (v93)
                {
                  break;
                }

                v67 = *v459;
                if (*(*(*v459 + 264) + 4 * v69) <= (*(*(*v459 + 264) + 4 * v415) * v411))
                {
                  break;
                }

                v81 = *(v67 + 2);
              }

              ++v70;
            }

            while (v69 < v81);
          }
        }

        else if (!v62)
        {
          *(v61 + 4 * v37) = 1;
          GridIndexCorrespondingToDirection = PPUtils::SphericalCoordinateTree::getGridIndexCorrespondingToDirection(v45[14], &v487);
          **(PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v11 + 14, v21) + 8 * v37) = GridIndexCorrespondingToDirection;
        }
      }

      ++v37;
      v22 = v431 / v434;
      if (v37 >= *__ldb)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_82:
  v138 = *(v439 + 22);
  v139 = *v138;
  v140 = **v138;
  if (v140[3] != v431)
  {
    v409 = 217;
    v410 = "ParametricProcessorV2Synthesiser.cpp";
LABEL_356:
    __assert_rtn("process", v410, v409, "inFramesToProcess==config->blockSize");
  }

  v436 = *(v439 + 20);
  v438 = **v138;
  v457 = *(v439 + 21);
  v142 = v139[22];
  v141 = v139[23];
  v425 = v140[2];
  v143 = *v140;
  *&v144 = COERCE_FLOAT(atomic_load(v138 + 3));
  v145 = *&v144;
  *&v146 = COERCE_FLOAT(atomic_load(v138 + 4));
  *&v147 = COERCE_FLOAT(atomic_load(v138 + 5));
  __na = *&v147;
  *&v148 = COERCE_FLOAT(atomic_load(v138 + 2));
  v497 = *&v148;
  v498 = *&v146;
  v149 = atomic_load(v138 + 6);
  v495 = 0;
  v150 = atomic_load(v138 + 7);
  LODWORD(v495) = v150;
  v151 = atomic_load(v138 + 8);
  HIDWORD(v495) = v151;
  v496 = 0;
  v152 = atomic_load(v138 + 9);
  v496 = v152;
  __X = 0;
  v153 = atomic_load(v138 + 10);
  LODWORD(__X) = v153;
  v154 = atomic_load(v138 + 11);
  HIDWORD(__X) = v154;
  v494 = 0;
  v155 = atomic_load(v138 + 12);
  v494 = v155;
  v156 = fminf(v145, 1.0);
  if (v145 >= 1.0)
  {
    v157 = 2.0 - v145;
  }

  else
  {
    v157 = 1.0;
  }

  v491 = v157;
  v492 = v156;
  v20.n128_u32[0] = 1059481190;
  if (v149 != 2)
  {
    v20.n128_f32[0] = 0.0;
  }

  if (v149 == 3)
  {
    v158 = 0.95;
  }

  else
  {
    v158 = v20.n128_f32[0];
  }

  if (v158 > 0.0 || (v20.n128_f32[0] = cblas_sasum(3, &__X, 1), v20.n128_f32[0] > 0.01) || (v20.n128_f32[0] = cblas_sasum(3, &v495, 1), v20.n128_f32[0] > 0.01))
  {
    v159 = *(*v138 + 352);
    v160 = *(*v138 + 416);
    v161 = (*v159 + 1) * (*v159 + 1);
    if ((v161 * v161) > ((*(*v138 + 424) - v160) >> 2))
    {
      __assert_rtn("applyToAmbisonicScene", "DirectionalTransformations.cpp", 172, "outAmbiTransform.size()>=kNumSH*kNumSH");
    }

    if (v159[6])
    {
      *v454 = *(*v138 + 416);
      v162 = 0;
      do
      {
        v163 = *(v159 + 15);
        v164 = *(v159 + 16) - v163;
        if (!v164)
        {
          goto LABEL_347;
        }

        LODWORD(__Y) = *(*v163 + 4 * v162);
        if (v164 < 9)
        {
          goto LABEL_347;
        }

        DWORD1(__Y) = *(v163[1] + 4 * v162);
        if (v164 == 16)
        {
          goto LABEL_347;
        }

        DWORD2(__Y) = *(v163[2] + 4 * v162);
        v20.n128_f32[0] = v158;
        PPUtils::applyFrontWarping(&__Y, &v487, v20.n128_u64[0]);
        PPUtils::applyTranslation(&__X, &v487, __dotc, (*(v159 + 32) + 4 * v162));
        PPUtils::applyRotation(&v495, __dotc, &v480);
        v165 = *(v159 + 22);
        v166 = *(v159 + 23) - v165;
        if (!v166)
        {
          goto LABEL_347;
        }

        *(*v165 + 4 * v162) = v480;
        if (v166 < 9)
        {
          goto LABEL_347;
        }

        *(v165[1] + 4 * v162) = HIDWORD(v480);
        if (v166 == 16)
        {
          goto LABEL_347;
        }

        v20.n128_u32[0] = v481;
        v167 = v165[2];
        *(v167 + 4 * v162++) = v481;
        v168 = v159[6];
      }

      while (v162 < v168);
      if (v168)
      {
        v441 = v161;
        v444 = v142;
        *v447 = v141;
        __Na = v143;
        v169 = *(v159 + 29);
        v460 = *(v159 + 30) - v169;
        if (!v460)
        {
          goto LABEL_354;
        }

        v170 = 0;
        v172 = *v165;
        v171 = v165[1];
        v173 = *v169;
        do
        {
          v174 = *(v172 + v170);
          v175 = *(v171 + v170);
          *(v173 + v170) = atan2f(v175, v174);
          if (v460 < 9)
          {
            goto LABEL_347;
          }

          v176 = hypotf(v174, v175);
          v20.n128_f32[0] = atan2f(*(v167 + v170), v176);
          *(v169[1] + v170) = v20.n128_u32[0];
          v170 += 4;
        }

        while (4 * v168 != v170);
        v143 = __Na;
        v141 = *v447;
        v142 = v444;
        v161 = v441;
      }

      else
      {
        v168 = 0;
      }

      v160 = *v454;
    }

    else
    {
      v168 = 0;
    }

    v177 = *(v159 + 29);
    if (*(v159 + 30) != v177)
    {
      MEMORY[0x1E12BE940](*v177, 1, &PPUtils::kMinusOne, *v177, 1, v168, v20);
      v178 = *(v159 + 29);
      if ((*(v159 + 30) - v178) <= 8)
      {
        goto LABEL_347;
      }

      HOA::sphericalHarmonics(*v178, *(v178 + 8), v159[6], *(v159 + 36), *v159);
      LODWORD(v179) = v159[6];
      if (v179)
      {
        v180 = 0;
        v181 = 0;
        do
        {
          MEMORY[0x1E12BE940](*(v159 + 36) + v180, v179, *(v159 + 32) + v180, *(v159 + 36) + v180, v179, v161);
          ++v181;
          v179 = v159[6];
          v180 += 4;
        }

        while (v181 < v179);
      }

      cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, v161, v161, v179, 1.0, *(v159 + 36), v179, *(v159 + 43), v161, 0.0, v160, v161);
      v433 = 1;
      goto LABEL_119;
    }

LABEL_354:
    __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
  }

  v433 = 0;
LABEL_119:
  v182 = (v143 + 1) * (v143 + 1);
  v183 = *v138;
  v445 = *v138;
  *__ldc = v431 / v425;
  *__Nb = v182;
  v184 = v436;
  *__Ka = ((v141 - v142) >> 2) - 1;
  if (((v141 - v142) >> 2) == 1)
  {
    goto LABEL_227;
  }

  v185 = 0;
  v435 = 16 * v182;
  *v455 = 4 * v182;
  v427 = v182 * v182;
  v186 = 1.0 / v182;
  v419 = 4 * v427;
  v429 = 2 * v182;
  v421 = 4 * v182;
  do
  {
    v442 = v185 + 1;
    if (v425 > v431)
    {
      goto LABEL_122;
    }

    v187 = 0;
    v461 = v185;
    do
    {
      v188 = v457[4];
      if (v185 >= (v457[5] - v188) >> 3)
      {
        goto LABEL_347;
      }

      v189 = *(*(v188 + 8 * v185) + 4 * v187);
      v190 = *(*v138 + 960);
      if (*(v190 + 8))
      {
        *(v190 + 16) = *(v190 + 24);
      }

      v191 = *(v190 + 32);
      if (v191)
      {
        do
        {
          v191 = *v191;
          (*(**(v190 + 40) + 24))(*(v190 + 40));
          *(v190 + 32) = v191;
        }

        while (v191);
        v190 = *(*v138 + 960);
      }

      __Y = 0uLL;
      v500 = 0;
      v501 = v190;
      v488 = 0;
      v487 = 0;
      v489 = 0;
      v490 = v190;
      __dotc[1] = 0;
      __dotc[0] = 0;
      v485 = 0;
      v486 = v190;
      v479[0] = v190;
      std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::vector[abi:ne200100](&v480, v429, v479);
      v476[0] = *(*v138 + 960);
      std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::vector[abi:ne200100](v479, v429, v476);
      v192 = *v138;
      v193 = *(*v138 + 960);
      v476[0] = 0;
      v476[1] = 0;
      v477 = 0;
      v478 = v193;
      v473[0] = 0;
      v473[1] = 0;
      v474 = 0;
      v475 = v193;
      if (v189)
      {
        std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::resize(&__Y, v189 * v182);
        std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::resize(&v487, v427);
        std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::resize(__dotc, (2 * v189));
        v192 = *v138;
      }

      else if (v433)
      {
        std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::resize(v473, v427);
        v192 = *v138;
        v194 = v427;
        if (v427)
        {
          v195 = v192[52];
          v196 = (v473[0] + 4);
          do
          {
            v197 = *v195++;
            *(v196 - 1) = v197;
            *v196 = 0;
            v196 += 2;
            --v194;
          }

          while (v194);
        }
      }

      if ((*(v192 + 13) & 1) == 0)
      {
        std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::resize(v476, v429);
      }

      if (!v189)
      {
        goto LABEL_189;
      }

      if (v433)
      {
        v198 = *(*v138 + 352);
        v199 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v457 + 14, v461);
        v200 = *v138;
        v201 = *(*v138 + 360);
        if (v189 > (*(*v138 + 368) - v201) >> 2)
        {
          v405 = 143;
          v407 = "DirectionalTransformations.cpp";
          v406 = "applyToPlaneWaves";
          v408 = "outIndices.size()>=inNumIndices";
        }

        else
        {
          v202 = v200[48];
          if (v189 > v200[49] - v202)
          {
            v405 = 144;
            v408 = "outGains.size()>=inNumIndices";
            v407 = "DirectionalTransformations.cpp";
            v406 = "applyToPlaneWaves";
          }

          else
          {
            v203 = *(v199 + 8 * v187);
            v204 = v189;
            while (1)
            {
              v205 = *(v438 + 56);
              if (*(v438 + 64) - v205 <= 8uLL)
              {
                break;
              }

              v206 = *v203;
              v207 = __sincosf_stret(*(v205[1] + 4 * v206) * 0.017453);
              v208 = __sincosf_stret(*(*v205 + 4 * v206) * 0.017453);
              *&__A = v207.__cosval * v208.__cosval;
              *(&__A + 1) = v207.__cosval * v208.__sinval;
              *&v470 = v207.__sinval;
              v209.f32[0] = v158;
              PPUtils::applyFrontWarping(&__A, v468, v209);
              PPUtils::applyTranslation(&__X, v468, __C, v202);
              PPUtils::applyRotation(&v495, __C, &v463);
              *v201++ = PPUtils::SphericalCoordinateTree::getGridIndexCorrespondingToDirection(*(v198 + 8), &v463);
              ++v202;
              ++v203;
              if (!--v204)
              {
                v210 = *v138;
                v182 = __Nb[0];
                goto LABEL_149;
              }
            }

            v405 = 61;
            v406 = "operator[]";
            v407 = "MultiDimensionalContiguousArrays.h";
            v408 = "inIdx<mPtrs.size()";
          }
        }

        __assert_rtn(v406, v407, v405, v408);
      }

      for (j = 0; j != v189; ++j)
      {
        v212 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v457 + 14, v461);
        v210 = *v138;
        *(*(*v138 + 360) + j * 4) = *(*(v212 + 8 * v187) + j * 4);
        v210[48][j] = 1.0;
      }

LABEL_149:
      v213 = v182;
      v214 = v189 * v182;
      v468[0] = v210[120];
      std::vector<float,std::pmr::polymorphic_allocator<float>>::vector[abi:ne200100](&__A, v214, v468);
      if (v213)
      {
        v215 = 0;
        v216 = 0;
        do
        {
          v217 = 0;
          v218 = v215;
          v219 = v189;
          do
          {
            v220 = *(*v138 + 232);
            if (v216 >= (*(*v138 + 240) - v220) >> 3)
            {
              __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
            }

            v221 = *(v220 + 8 * v216);
            v222 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v457 + 14, v461);
            __A[v218++] = *(v221 + 4 * *(*(v222 + 8 * v187) + v217));
            v217 += 4;
            --v219;
          }

          while (v219);
          ++v216;
          v215 += v189;
        }

        while (v216 != *__Nb);
      }

      __C[0] = *(*v138 + 960);
      std::vector<float,std::pmr::polymorphic_allocator<float>>::vector[abi:ne200100](v468, v214, __C);
      if (v189 != 1)
      {
        PPUtils::MoorePenrosePseudoInverseReal::compute(*(*v138 + 256), __A, v189, __Nb[0], v468[0]);
        v224 = v468[0];
        v184 = v436;
        if (!v214)
        {
          goto LABEL_164;
        }

LABEL_162:
        v226 = (__Y + 4);
        do
        {
          v227 = *v224++;
          *(v226 - 1) = v227;
          *v226 = 0;
          v226 += 2;
          --v214;
        }

        while (v214);
        goto LABEL_164;
      }

      v184 = v436;
      if (__Nb[0])
      {
        v223 = 0;
        v224 = v468[0];
        v225 = __A;
        do
        {
          v224[v223 / 4] = v186 * v225[v223 / 4];
          v223 += 4;
        }

        while (v421 != v223);
        if (v214)
        {
          goto LABEL_162;
        }
      }

LABEL_164:
      v463 = *(*v138 + 960);
      v228 = v427;
      std::vector<float,std::pmr::polymorphic_allocator<float>>::vector[abi:ne200100](__C, v427, &v463);
      cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, __Nb[0], __Nb[0], v189, 1.0, __A, v189, v468[0], __Nb[0], 0.0, __C[0], __Nb[0]);
      if (__Nb[0])
      {
        v229 = 0;
        v230 = 0;
        v231 = __C[0];
        do
        {
          v232 = __C[0];
          v233 = v230;
          v234 = v229;
          v235 = *__Nb;
          do
          {
            if (v233)
            {
              v236 = v234;
              v237 = -v232[v234];
            }

            else
            {
              v237 = 1.0 - v232[(v230 + __Nb[0] * v230)];
              v236 = (v230 + __Nb[0] * v230);
            }

            v231[v236] = v237;
            ++v234;
            --v233;
            --v235;
          }

          while (v235);
          ++v230;
          v229 += __Nb[0];
        }

        while (v230 != *__Nb);
      }

      v238 = *v138;
      v239 = *(*v138 + 960);
      v463 = 0;
      v464 = 0;
      v465 = 0;
      v466 = v239;
      if (v433)
      {
        if (v427)
        {
          v240 = std::pmr::polymorphic_allocator<float>::allocate[abi:ne200100](&v466, v427);
          bzero(v240, v419);
          v463 = v240;
          v464 = &v240[v419];
          v465 = &v240[4 * v427];
          v238 = *v138;
        }

        else
        {
          v240 = 0;
        }

        cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, __Nb[0], __Nb[0], __Nb[0], 1.0, v238[52], __Nb[0], __C[0], __Nb[0], 0.0, v240, __Nb[0]);
        v241 = &v463;
        if (!v427)
        {
          goto LABEL_181;
        }

LABEL_179:
        v242 = *v241;
        v243 = (*&v487 + 4);
        do
        {
          v244 = *v242++;
          *(v243 - 1) = v244;
          *v243 = 0;
          v243 += 2;
          --v228;
        }

        while (v228);
        goto LABEL_181;
      }

      v241 = __C;
      if (v427)
      {
        goto LABEL_179;
      }

LABEL_181:
      if (v463)
      {
        std::allocator_traits<std::pmr::polymorphic_allocator<float>>::deallocate[abi:ne200100](v466, v463, (v465 - v463) >> 2);
      }

      if (__C[0])
      {
        __C[1] = __C[0];
        std::allocator_traits<std::pmr::polymorphic_allocator<float>>::deallocate[abi:ne200100](__C[3], __C[0], __C[2] - __C[0]);
      }

      if (v468[0])
      {
        v468[1] = v468[0];
        std::allocator_traits<std::pmr::polymorphic_allocator<float>>::deallocate[abi:ne200100](v468[3], v468[0], v468[2] - v468[0]);
      }

      if (__A)
      {
        v470 = __A;
        std::allocator_traits<std::pmr::polymorphic_allocator<float>>::deallocate[abi:ne200100](v472, __A, (v471 - __A) >> 2);
      }

LABEL_189:
      v245 = *v138;
      v246 = *(*v138 + 176);
      for (k = *(v246 + 4 * v461); k < *(v246 + 4 * v442); ++k)
      {
        if (v189)
        {
          v248 = 0;
          v249 = 1;
          v250 = __dotc[0];
          do
          {
            v251 = 0;
            v252 = v249;
            do
            {
              v253 = v245[48];
              v254 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v245 + 33, k);
              v245 = *v138;
              v250[(v189 * v248 + v251)] = vmul_n_f32(*(*(v254 + 8 * v248) + 8 * *(*(*v138 + 360) + 4 * v251)), v253[v251]);
              ++v251;
            }

            while (v189 != v251);
            v249 = 0;
            v248 = 1;
          }

          while ((v252 & 1) != 0);
          cblas_cgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 2, __Nb[0], v189, &kComplexOne, v250, v189, __Y, __Nb[0], &kComplexZero, v480, __Nb[0]);
          v184 = v436;
          v255 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 464), k);
          v256 = &v487;
          goto LABEL_199;
        }

        bzero(v480, v435);
        if (v433)
        {
          v255 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 464), k);
          v256 = v473;
LABEL_199:
          cblas_cgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 2, __Nb[0], __Nb[0], &kComplexOne, *v255, __Nb[0], *v256, __Nb[0], &kComplexZero, v479[0], __Nb[0]);
          goto LABEL_200;
        }

        v272 = v479[0];
        v273 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 464), k);
        memcpy(v272, *v273, v435);
LABEL_200:
        if (fabsf(v492 + -1.0) >= 0.0001)
        {
          MEMORY[0x1E12BE940](v480, 1, &v492, v480, 1, *v455);
        }

        if (fabsf(v491 + -1.0) >= 0.0001)
        {
          MEMORY[0x1E12BE940](v479[0], 1, &v491, v479[0], 1, *v455);
        }

        *&__A = 1.0 - v497;
        MEMORY[0x1E12BE940](v480, 1, &__A, v480, 1, *v455);
        v257 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 760), k);
        v258 = v480;
        v259 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 760), k);
        MEMORY[0x1E12BE8F0](v257, 1, &v497, v258, 1, *v259, 1, *v455);
        MEMORY[0x1E12BE940](v479[0], 1, &__A, v479[0], 1, *v455);
        v260 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 848), k);
        v261 = v479[0];
        v262 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 848), k);
        MEMORY[0x1E12BE8F0](v260, 1, &v497, v261, 1, *v262, 1, *v455);
        v263 = *v138;
        if (*(*v138 + 13) == 1)
        {
          v264 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v263 + 95, k);
          v265 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v184, k);
          v266 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 4, k);
          cblas_cgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 2, 1, __Nb[0], &kComplexOne, v264, __Nb[0], (v265 + 8 * v187), __ldc[0], &kComplexZero, (*v266 + 8 * v187), __ldc[0]);
          v267 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 848), k);
          v268 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v184, k);
          v269 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, k);
        }

        else
        {
          v270 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v263 + 95, k);
          v271 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[]((*v138 + 848), k);
          v267 = v476[0];
          MEMORY[0x1E12BE5D0](v270, 1, *v271, 1, v476[0], 1, *v455);
          v268 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v184, k);
          v269 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 4, k);
        }

        cblas_cgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 2, 1, __Nb[0], &kComplexOne, v267, __Nb[0], (v268 + 8 * v187), __ldc[0], &kComplexZero, (*v269 + 8 * v187), __ldc[0]);
        v245 = *v138;
        v246 = *(*v138 + 176);
      }

      if (v473[0])
      {
        std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](v475, v473[0], (v474 - v473[0]) >> 3);
      }

      v182 = __Nb[0];
      v185 = v461;
      if (v476[0])
      {
        std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](v478, v476[0], (v477 - v476[0]) >> 3);
      }

      if (v479[0])
      {
        v479[1] = v479[0];
        std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](v479[3], v479[0], (v479[2] - v479[0]) >> 3);
      }

      if (v480)
      {
        v481 = v480;
        std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](v483, v480, (v482 - v480) >> 3);
      }

      if (__dotc[0])
      {
        std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](v486, *__dotc, (v485 - *__dotc) >> 3);
      }

      if (v487)
      {
        std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](v490, *&v487, (v489 - *&v487) >> 3);
      }

      if (__Y)
      {
        std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](*&v501, __Y, (*&v500 - __Y) >> 3);
      }

      ++v187;
    }

    while (v187 < *__ldc);
LABEL_122:
    v185 = v442;
  }

  while (v442 != *__Ka);
  v183 = *v138;
LABEL_227:
  if ((*(v183 + 13) & 1) == 0)
  {
    goto LABEL_272;
  }

  v274 = v183[69];
  v275 = *v274;
  if (v275 > 0xC)
  {
    __assert_rtn("apply", "SubBandLatticeAllPassDecorrelator.cpp", 176, "(inFilterCoeffOffset+mNumChannels)<=12");
  }

  if (v425 <= v431)
  {
    v381 = 0;
    v276 = *(v274 + 2);
    v382 = *v274;
    v383 = v276;
    while (!v383)
    {
LABEL_345:
      if (++v381 == *__ldc)
      {
        goto LABEL_231;
      }
    }

    v384 = 0;
    while (1)
    {
      v385 = *(v274 + 5);
      v386 = *(v274 + 6) - v385;
      if (v386)
      {
        break;
      }

LABEL_326:
      LODWORD(v387) = -1;
      if (v382)
      {
        goto LABEL_329;
      }

LABEL_344:
      ++v384;
      v383 = v276;
      if (v384 >= v276)
      {
        goto LABEL_345;
      }
    }

    v387 = 0;
    v388 = v386 >> 2;
    if (v388 <= 1)
    {
      v388 = 1;
    }

    while (*(*(v274 + 11) + 4 * v384) >= *(v385 + 4 * v387))
    {
      if (v388 == ++v387)
      {
        goto LABEL_326;
      }
    }

    if (!v382)
    {
      goto LABEL_344;
    }

LABEL_329:
    v389 = 0;
    do
    {
      if (v387 != -1 && (v274[70] & 1) != 0 && *(*(v274 + 8) + 4 * v387))
      {
        v390 = *(PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, v384) + 8 * v389);
        v391 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v274 + 36, v384);
        v392 = *(v274 + 51);
        if (v384 >= (*(v274 + 52) - v392) >> 3)
        {
          goto LABEL_347;
        }

        *(*(v391 + 8 * v389) + 8 * *(*(v392 + 8 * v384) + 4 * v389)) = *(v390 + 8 * v381);
        v393 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v274 + 36, v384);
        v394 = *(v274 + 58);
        if (v384 >= (*(v274 + 59) - v394) >> 3)
        {
          goto LABEL_347;
        }

        v395 = *(v393 + 8 * v389);
        v396 = *(*(v394 + 8 * v384) + 4 * v389);
        *(*(PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 84, v384) + 8 * v389) + 8 * v381) = *(v395 + 8 * v396);
        v397 = *(v274 + 58);
        if (v384 >= (*(v274 + 59) - v397) >> 3)
        {
          goto LABEL_347;
        }

        v398 = *(v397 + 8 * v384);
        ++*(v398 + 4 * v389);
        v399 = *(v274 + 51);
        if (v384 >= (*(v274 + 52) - v399) >> 3)
        {
          goto LABEL_347;
        }

        v400 = *(v399 + 8 * v384);
        v401 = *(v400 + 4 * v389) + 1;
        *(v400 + 4 * v389) = v401;
        v402 = *(v274 + 8);
        v403 = *(v402 + 4 * v387);
        if (*(v398 + 4 * v389) > v403)
        {
          *(v398 + 4 * v389) = 0;
          v401 = *(v400 + 4 * v389);
          v403 = *(v402 + 4 * v387);
        }

        if (v401 > v403)
        {
          *(v400 + 4 * v389) = 0;
        }
      }

      else
      {
        v404 = *(PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, v384) + 8 * v389);
        *(*(PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 84, v384) + 8 * v389) + 8 * v381) = *(v404 + 8 * v381);
      }

      ++v389;
      v275 = *v274;
    }

    while (v389 < v275);
    v276 = *(v274 + 2);
    v382 = *v274;
    goto LABEL_344;
  }

  v276 = *(v274 + 2);
LABEL_231:
  if (!v276)
  {
    goto LABEL_268;
  }

  v277 = 0;
  v278 = v275;
  while (2)
  {
    v280 = *(v274 + 5);
    v279 = *(v274 + 6);
    v281 = v279 - v280;
    if (v279 == v280)
    {
      goto LABEL_267;
    }

    v282 = 0;
    v283 = v281 >> 2;
    if (v283 <= 1)
    {
      v283 = 1;
    }

    while (2)
    {
      if (*(*(v274 + 11) + 4 * v277) < *(v280 + 4 * v282))
      {
        if (!v278)
        {
          break;
        }

        v284 = 0;
        v285 = v282;
        v286 = *(v274 + 2);
        while (1)
        {
          v287 = *(v286 + 4 * v285);
          if (v287 > 14)
          {
            if (v287 == 15)
            {
              v289 = 60;
              v290 = &PPUtils::kLatticeCoef1;
LABEL_250:
              v288 = &v290[v284 * v289];
LABEL_251:
              if (v425 <= v431)
              {
                v291 = 0;
                do
                {
                  v292 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, v277);
                  v293 = *(v274 + 18);
                  if (v277 >= (*(v274 + 19) - v293) >> 3)
                  {
                    goto LABEL_347;
                  }

                  v294 = (*(v292 + 8 * v284) + 8 * v291);
                  v295 = hypotf(*v294, v294[1]);
                  *(*(v293 + 8 * v277) + 4 * v284) = (*(*(v293 + 8 * v277) + 4 * v284) * 0.8) + ((v295 * 0.2) * v295);
                  v296 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 84, v277);
                  v297 = *(v274 + 32);
                  if (v277 >= (*(v274 + 33) - v297) >> 3)
                  {
                    goto LABEL_347;
                  }

                  v298 = *(*(v296 + 8 * v284) + 8 * v291);
                  v299 = vadd_f32(vmul_n_f32(v298, *v288), **(*(v297 + 8 * v277) + 24 * v284));
                  *(*(PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 84, v277) + 8 * v284) + 8 * v291) = v299;
                  v300 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 84, v277);
                  v301 = *(v274 + 25);
                  if (v277 >= (*(v274 + 26) - v301) >> 3)
                  {
                    goto LABEL_347;
                  }

                  v302 = (*(v300 + 8 * v284) + 8 * v291);
                  v303 = hypotf(*v302, v302[1]);
                  v304 = *(v301 + 8 * v277);
                  v305 = (*(v304 + 4 * v284) * 0.8) + ((v303 * 0.2) * v303);
                  *(v304 + 4 * v284) = v305;
                  v306 = *(v274 + 18);
                  if (v277 >= (*(v274 + 19) - v306) >> 3)
                  {
                    goto LABEL_347;
                  }

                  v307 = *(*(v306 + 8 * v277) + 4 * v284);
                  v308 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 84, v277);
                  v309 = sqrtf(v307 / (v305 + 0.000001));
                  if (v309 > 1.4142)
                  {
                    v309 = 1.4142;
                  }

                  *(*(v308 + 8 * v284) + 8 * v291) = vmul_n_f32(*(*(v308 + 8 * v284) + 8 * v291), v309);
                  v286 = *(v274 + 2);
                  v310 = *(v286 + 4 * v285);
                  v311 = (v310 - 1);
                  if (v310 != 1)
                  {
                    v312 = *(v274 + 32);
                    if (v277 >= (*(v274 + 33) - v312) >> 3)
                    {
                      goto LABEL_347;
                    }

                    v313 = (*(*(v312 + 8 * v277) + 24 * v284) + 8);
                    v314 = v310 - 2;
                    v315 = v288 + 1;
                    do
                    {
                      v316 = *v315++;
                      v313[-1] = vsub_f32(vadd_f32(*v313, vmul_n_f32(v298, v316)), vmul_n_f32(v299, v288[v314]));
                      ++v313;
                      --v314;
                      --v311;
                    }

                    while (v311);
                  }

                  ++v291;
                }

                while (v291 != *__ldc);
                v275 = *v274;
              }

              goto LABEL_265;
            }

            if (v287 == 20)
            {
              v289 = 80;
              v290 = &PPUtils::kLatticeCoef0;
              goto LABEL_250;
            }
          }

          else
          {
            if (v287 == 3)
            {
              v289 = 12;
              v290 = &PPUtils::kLatticeCoef3;
              goto LABEL_250;
            }

            if (v287 == 6)
            {
              v288 = (&PPUtils::kLatticeCoef2 + 24 * v284);
              goto LABEL_251;
            }
          }

LABEL_265:
          if (++v284 >= v275)
          {
            v276 = *(v274 + 2);
            v278 = v275;
            v182 = __Nb[0];
            goto LABEL_267;
          }
        }
      }

      if (v283 != ++v282)
      {
        continue;
      }

      break;
    }

LABEL_267:
    if (++v277 < v276)
    {
      continue;
    }

    break;
  }

LABEL_268:
  v317 = *v138;
  LODWORD(v318) = *(*v138 + 24);
  v319 = (4 * __ldc[0]);
  if (v318)
  {
    for (m = 0; m < v318; ++m)
    {
      LODWORD(__Y) = powf(v317[70][m], __na);
      v487.f32[0] = 1.0 - *&__Y;
      v321 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, m);
      v322 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, m);
      MEMORY[0x1E12BE940](v321, 1, &__Y, *v322, 1, v319);
      v323 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 84, m);
      v324 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, m);
      v325 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 73, m);
      MEMORY[0x1E12BE8F0](v323, 1, &v487, v324, 1, *v325, 1, v319);
      v317 = *v138;
      v318 = *(*v138 + 24);
    }
  }

  MEMORY[0x1E12BE5D0](v445[6], 1, v445[75], 1, v445[6], 1, (v319 * v318));
  v183 = *v138;
LABEL_272:
  v326 = v439;
  if (fabsf(v498 + -1.0) >= 0.0001)
  {
    *&__Y = 1.0 - v498;
    v327 = v438;
    if (*(v183 + 6))
    {
      v328 = 0;
      v329 = (4 * __ldc[0]);
      do
      {
        v330 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v183 + 58, v328);
        v331 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v436, v328);
        cblas_cgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 2, __ldc[0], v182, &kComplexOne, v330, v182, *v331, __ldc[0], &kComplexZero, *(*v138 + 128), __ldc[0]);
        v332 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 4, v328);
        v333 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 4, v328);
        MEMORY[0x1E12BE940](v332, 1, &v498, *v333, 1, v329);
        v334 = *(*v138 + 128);
        v335 = *PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 4, v328);
        v336 = PPUtils::ContiguousArray3D<std::complex<float>>::operator[](v445 + 4, v328);
        MEMORY[0x1E12BE8F0](v334, 1, &__Y, v335, 1, *v336, 1, v329);
        ++v328;
        v183 = *v138;
      }

      while (v328 < *(*v138 + 24));
    }
  }

  else
  {
    v327 = v438;
  }

  v337 = v183[2];
  v338 = *(v337 + 1);
  if (!v338)
  {
    __assert_rtn("applyInverseTransform", "AliasingRobustComplexValuedFilterbank.cpp", 246, "mNumOutputChannels>0");
  }

  v339 = *(v327 + 12);
  v340 = *(v337 + 2);
  v341 = v339 / v340;
  if (v339 / v340 * v340 != v339)
  {
    __assert_rtn("applyInverseTransform", "AliasingRobustComplexValuedFilterbank.cpp", 247, "inBlockSize % mHopSize == 0");
  }

  v342 = v445;
  if (v338 * v339 != ((*(a4 + 16) - *(a4 + 8)) >> 2))
  {
    __assert_rtn("applyInverseTransform", "AliasingRobustComplexValuedFilterbank.cpp", 248, "outBufferTimeDomain.size() == mNumOutputChannels*inBlockSize");
  }

  if (v338 * v341 * *(v337 + 3) != ((v445[7] - v445[6]) >> 3))
  {
    __assert_rtn("applyInverseTransform", "AliasingRobustComplexValuedFilterbank.cpp", 249, "inBufferTimeFrequencyDomain.size() == mNumBands*mNumOutputChannels*kNumHops");
  }

  if (v340 <= v339)
  {
    v343 = 0;
    v344 = 2 * v341;
    *v456 = v339 / v340;
    __Nc = 2 * v341;
    do
    {
      *&v345 = v337[1];
      if (v345)
      {
        v346 = 0;
        v347 = 0;
        do
        {
          vDSP_ctoz(&v342[6][2 * (v341 * v347++) + 2 * v343], (v344 * v345), (*(v337 + 7) + v346), 1, *(v337 + 3));
          v345 = *(v337 + 1);
          v346 += 16;
        }

        while (v347 < v345);
      }

      v458 = v343;
      v348 = *(v337 + 5);
      v349 = *(v337 + 7);
      v350 = *(v337 + 2);
      v462 = *(a4 + 32);
      if (*(v348 + 112))
      {
        v351 = *(v348 + 104);
        if (*(v351 + 4) >= 1)
        {
          v352 = 0;
          do
          {
            v353 = (v349 + 16 * v352);
            v354 = v353 + 1;
            v355 = 1;
            do
            {
              v356 = v355;
              v357 = &(*v353)[2] + 1;
              v358.i32[0] = *v357;
              v359.i32[0] = (*v353)->i32[1];
              v359.i32[1] = (*v353)[2].i32[0];
              v358.i32[1] = (*v353)[4].i32[0];
              v360 = vadd_f32((*v353)[3], v358);
              *(v357 - 2) = vadd_f32((*v353)[1], v359);
              *(v357 - 1) = v360;
              memmove(v357, v357 + 4, 4 * *(v351 + 8) - 16);
              v355 = 0;
              v353 = v354;
            }

            while ((v356 & 1) != 0);
            ++v352;
          }

          while (v352 < *(v351 + 4));
        }
      }

      if (*(v348 + 4) >= 1)
      {
        v361 = 0;
        v362 = v350 * v458;
        do
        {
          v363 = *(v348 + 32);
          v364 = v349 + 16 * v361;
          v365 = *v364;
          v366 = *(v348 + 72);
          *v366 = **v364;
          v367 = *(v348 + 12);
          v366[v367] = v365[v367];
          v368 = *(v364 + 8);
          memcpy(v366 + 1, v365 + 1, 4 * v367 - 4);
          memcpy(&v366[v367 + 1], (v368 + 4), 4 * *(v348 + 12) - 4);
          if (*(v348 + 24) == 1)
          {
            v369 = *(v348 + 12);
            if (v369 > 1)
            {
              v370 = 1;
              do
              {
                *&v366[v370] = -*&v366[v370];
                *&v366[v367 + v370] = -*&v366[v367 + v370];
                v370 += 2;
              }

              while (v370 < v369);
            }
          }

          vtRunFFT(*(v348 + 96), -1);
          vDSP_vclr((*(*(v348 + 80) + 8 * v361) + 4 * *(v348 + 12) * v363), 1, *(v348 + 12));
          v371 = *(v348 + 36);
          if (v363 + 1 < v371)
          {
            v372 = v363 + 1;
          }

          else
          {
            v372 = 0;
          }

          if (v371 >= 1)
          {
            v373 = 0;
            for (n = 0; n < v378; ++n)
            {
              v375 = *(v348 + 12);
              if (v373)
              {
                v377 = *(v348 + 12);
              }

              else
              {
                v377 = 0;
              }

              v373 ^= 1u;
              v376 = *(*(v348 + 80) + 8 * v361) + 4 * v375 * v372;
              MEMORY[0x1E12BE780](*(v348 + 48) + 4 * v375 * n, 1, *(v348 + 64) + 4 * v377, 1, v376, 1, v376, 1, *(v348 + 12));
              v378 = *(v348 + 36);
              if (v372 + 1 < v378)
              {
                ++v372;
              }

              else
              {
                v372 = 0;
              }
            }
          }

          memcpy((*(v462 + 8 * v361) + 4 * v362), (*(*(v348 + 80) + 8 * v361) + 4 * *(v348 + 12) * v372), 4 * *(v348 + 12));
          ++v361;
        }

        while (v361 < *(v348 + 4));
      }

      v379 = *(v348 + 32);
      if (v379 + 1 < *(v348 + 36))
      {
        v380 = v379 + 1;
      }

      else
      {
        v380 = 0;
      }

      *(v348 + 32) = v380;
      v341 = v456[0];
      v343 = v458 + 1;
      v326 = v439;
      v342 = v445;
      v344 = __Nc;
    }

    while ((v458 + 1) < *v456);
  }

  caulk::pooled_semaphore_mutex::_unlock(v326);
}

void sub_1DDF59334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, caulk::pooled_semaphore_mutex *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<float,std::pmr::polymorphic_allocator<float>>::~vector[abi:ne200100](&a53);
  if (a57)
  {
    a58 = a57;
    std::allocator_traits<std::pmr::polymorphic_allocator<float>>::deallocate[abi:ne200100](a60, a57, (a59 - a57) >> 2);
  }

  if (a61)
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](a64, a61, (a63 - a61) >> 3);
  }

  if (a65)
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](a68, a65, (a67 - a65) >> 3);
  }

  if (a69)
  {
    a70 = a69;
    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](a72, a69, (a71 - a69) >> 3);
  }

  v74 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v74;
    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](STACK[0x218], v74, (STACK[0x210] - v74) >> 3);
  }

  if (STACK[0x220])
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](STACK[0x238], STACK[0x220], (STACK[0x230] - STACK[0x220]) >> 3);
  }

  if (STACK[0x240])
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](STACK[0x258], STACK[0x240], (STACK[0x250] - STACK[0x240]) >> 3);
  }

  v75 = *(v72 - 192);
  if (v75)
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](*(v72 - 168), v75, (*(v72 - 176) - v75) >> 3);
  }

  caulk::pooled_semaphore_mutex::_unlock(a34);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<ParametricProcessorV2Synthesiser>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (munlock(*(*v2 + 208), (*(*v2 + 216) - *(*v2 + 208)) & 0x3FFFFFFFCLL))
    {
      if (getParametricProcessorV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
      }

      v3 = getParametricProcessorV2Log(void)::gLog;
      if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315138;
        v7 = "~ParametricProcessorV2Synthesiser";
        _os_log_error_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "[%s] Failed to unlock memory", &v6, 0xCu);
      }
    }

    if (munlock(*(*v2 + 280), (*(*v2 + 288) - *(*v2 + 280)) & 0x7FFFFFFF8))
    {
      if (getParametricProcessorV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
      }

      v4 = getParametricProcessorV2Log(void)::gLog;
      if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315138;
        v7 = "~ParametricProcessorV2Synthesiser";
        _os_log_error_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, "[%s] Failed to unlock memory", &v6, 0xCu);
      }
    }

    if (munlock(*(*v2 + 936), *(*v2 + 944) - *(*v2 + 936)))
    {
      if (getParametricProcessorV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
      }

      v5 = getParametricProcessorV2Log(void)::gLog;
      if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315138;
        v7 = "~ParametricProcessorV2Synthesiser";
        _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, "[%s] Failed to unlock memory", &v6, 0xCu);
      }
    }

    std::unique_ptr<ParametricProcessorV2Synthesiser::Data>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void sub_1DDF59768(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t **std::unique_ptr<ParametricProcessorV2Analyser>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(*v2 + 12) == 1)
    {
      v3 = *(*v2 + 184);
      if (v3)
      {
        v4 = v3 - 16;
        v5 = *(v3 - 8);
        if (v5)
        {
          v6 = -56 * v5;
          v7 = (v3 + 56 * v5 - 56);
          do
          {
            v7 = PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v7) - 7;
            v6 += 56;
          }

          while (v6);
        }

        MEMORY[0x1E12BD130](v4, 0x10A0C80D00A759DLL);
      }
    }

    std::unique_ptr<ParametricProcessorV2Analyser::Data>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void sub_1DDF5A100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DDF59F6CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<ParametricProcessorV2SignalContainer>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void **std::unique_ptr<ParametricProcessorV2ParameterContainer>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    PPUtils::ContiguousArray3D<unsigned int>::~ContiguousArray3D(v2 + 14);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 7);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUParametricProcessorV2::SetProperty(AUParametricProcessorV2 *this, int a2, int a3, unsigned int a4, _BYTE *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (a6 == 4)
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
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 656) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUParametricProcessorV2::GetProperty(AUParametricProcessorV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 656;
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

uint64_t AUParametricProcessorV2::GetPropertyInfo(AUParametricProcessorV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

uint64_t AUParametricProcessorV2::Reset(AUParametricProcessorV2 *this, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v2 = *(this + 66);
    if (v2)
    {
      v3 = *(v2 + 152);
      if (getParametricProcessorV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
      }

      v4 = getParametricProcessorV2Log(void)::gLog;
      if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315138;
        v12 = "reset";
        _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s] Flushing internal buffers with zeros", &v11, 0xCu);
      }

      v5 = *(*v3 + 16);
      if (*v5 || *(v5 + 4))
      {
        afSTFTreset(*(v5 + 40));
      }

      v6 = *(v2 + 176);
      if (getParametricProcessorV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
      }

      v7 = getParametricProcessorV2Log(void)::gLog;
      if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315138;
        v12 = "reset";
        _os_log_debug_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "[%s] Flushing internal buffers with zeros", &v11, 0xCu);
      }

      v8 = *v6;
      v9 = *(*v6 + 16);
      if (*v9 || *(v9 + 4))
      {
        afSTFTreset(*(v9 + 40));
        v8 = *v6;
      }

      bzero(*(v8 + 776), *(v8 + 784) - *(v8 + 776));
      bzero(*(*v6 + 864), *(*v6 + 872) - *(*v6 + 864));
    }
  }

  return 0;
}

uint64_t AUParametricProcessorV2::Initialize(AUParametricProcessorV2 *this)
{
  v21 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_24;
  }

  v3 = *(Element + 80);
  *(this + 163) = v3;
  *(this + 162) = *(this + 84);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v4, 0);
  if ((*(this + 648) & 0x7F) == 0)
  {
    operator new();
  }

  std::unique_ptr<ParametricProcessorV2Wrapper>::reset[abi:ne200100](this + 66, 0);
  PPUtils::ContiguousArray2D<float>::resize(this + 536, (Parameter + 1) * (Parameter + 1), *(this + 162));
  PPUtils::ContiguousArray2D<float>::resize(this + 592, 2u, *(this + 162));
  v7 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v7 || (v8 = *(v7 + 96), *&buf[0].mSampleRate = *(v7 + 80), *&buf[0].mBytesPerPacket = v8, *&buf[0].mBitsPerChannel = *(v7 + 112), (v9 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
LABEL_24:
    ausdk::Throw(0xFFFFD583);
  }

  v11 = *(v9 + 96);
  v17 = *(v9 + 80);
  v18 = v11;
  v19 = *(v9 + 112);
  mChannelsPerFrame = HIDWORD(v11);
  if (HIDWORD(v11) == 2)
  {
    mChannelsPerFrame = buf[0].mChannelsPerFrame;
  }

  else
  {
    if (*&v17 != buf[0].mSampleRate || DWORD2(v17) != buf[0].mFormatID || v18 != buf[0].mBytesPerPacket)
    {
      return 4294956428;
    }

    result = 4294956428;
    if (DWORD1(v18) != buf[0].mFramesPerPacket || __PAIR64__(v19, HIDWORD(v11)) != *&buf[0].mChannelsPerFrame)
    {
      return result;
    }

    if (!CA::Implementation::EquivalentFormatFlags(&v17, buf, v10))
    {
      return 4294956428;
    }
  }

  v13 = sqrt(mChannelsPerFrame);
  v14 = round(v13);
  if (mChannelsPerFrame > 3 && v14 == v13)
  {
    return 0;
  }

  else
  {
    return 4294956428;
  }
}

void sub_1DDF5B500(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ParametricProcessorV2Wrapper>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<ParametricProcessorV2Synthesiser>::reset[abi:ne200100]((v2 + 176), 0);
    std::unique_ptr<ParametricProcessorV2ParameterContainer>::reset[abi:ne200100]((v2 + 168), 0);
    std::unique_ptr<ParametricProcessorV2SignalContainer>::reset[abi:ne200100]((v2 + 160), 0);
    std::unique_ptr<ParametricProcessorV2Analyser>::reset[abi:ne200100]((v2 + 152), 0);
    v3 = *(v2 + 112);
    if (v3)
    {
      *(v2 + 120) = v3;
      operator delete(v3);
    }

    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 24);
    std::unique_ptr<ParametricProcessorV2GlobalConfig>::reset[abi:ne200100]((v2 + 8), 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<ParametricProcessorV2GlobalConfig>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[10];
    if (v3)
    {
      v2[11] = v3;
      operator delete(v3);
    }

    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 3);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUParametricProcessorV2::~AUParametricProcessorV2(AUParametricProcessorV2 *this)
{
  AUParametricProcessorV2::~AUParametricProcessorV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592EF70;
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(this + 74);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(this + 67);
  std::unique_ptr<ParametricProcessorV2Wrapper>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

_OWORD *CResidualSuppressorV5::speex_preprocess_state_res_initV5(CResidualSuppressorV5 *this, int a2, int a3, int a4, char a5, char a6, float a7)
{
  v13 = this;
  v14 = malloc_type_malloc(0x70uLL, 0x978F6BC9uLL);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v16 = 2 * v13;
  *v14 = 0u;
  if (a2)
  {
    v17 = malloc_type_malloc(8 * v13, 0xC3A278B4uLL);
    v18 = v17;
    if (v16 && !v17)
    {
      goto LABEL_24;
    }

    bzero(v17, 8 * v13);
    *v15 = v18;
    *(v15 + 1) = &v18[4 * v13];
  }

  if (a3)
  {
    v19 = malloc_type_malloc(8 * v13, 0x717D6053uLL);
    v20 = v19;
    if (v16 && !v19 || (bzero(v19, 8 * v13), *(v15 + 2) = v20, *(v15 + 3) = &v20[4 * v13], v21 = malloc_type_malloc(8 * v13, 0xAC45F70FuLL), v22 = v21, v16) && !v21)
    {
LABEL_24:
      exception = __cxa_allocate_exception(8uLL);
      v35 = std::bad_alloc::bad_alloc(exception);
    }

    bzero(v21, 8 * v13);
    *(v15 + 4) = v22;
    *(v15 + 5) = &v22[4 * v13];
    if (a4 == 1)
    {
      v23 = malloc_type_malloc(8 * v13, 0x8C84EBB6uLL);
      v24 = v23;
      if (v16 && !v23)
      {
        goto LABEL_24;
      }

      bzero(v23, 8 * v13);
      *(v15 + 6) = v24;
      *(v15 + 7) = &v24[4 * v13];
    }
  }

  v25 = malloc_type_malloc(4 * (v13 + 1), 0x6FEB79D8uLL);
  v26 = v25;
  if (v13 != -1 && !v25)
  {
    goto LABEL_24;
  }

  bzero(v25, 4 * (v13 + 1));
  *(v15 + 11) = v26;
  v27 = malloc_type_malloc(4 * (v13 + 1), 0xF53F7A73uLL);
  v28 = v27;
  if (v13 != -1 && !v27)
  {
    goto LABEL_24;
  }

  bzero(v27, 4 * (v13 + 1));
  *(v15 + 12) = v28;
  *(v15 + 104) = a5;
  *(v15 + 105) = a6;
  *(v15 + 27) = a7;
  *(v15 + 8) = 0;
  v29 = malloc_type_malloc(4 * v13, 0x851E5579uLL);
  v30 = v29;
  if (v13)
  {
    if (!v29)
    {
      goto LABEL_24;
    }
  }

  bzero(v29, 4 * v13);
  *(v15 + 9) = v30;
  v31 = malloc_type_malloc(8 * v13, 0x189AA185uLL);
  v32 = v31;
  if (v16)
  {
    if (!v31)
    {
      goto LABEL_24;
    }
  }

  bzero(v31, 8 * v13);
  *(v15 + 10) = v32;
  return v15;
}

void *CResidualSuppressorV5::speex_preprocess_run_freq(uint64_t a1, DSPSplitComplex *a2, const void **a3, float **a4, uint64_t a5, float *__n, uint64_t a7, int a8, __n128 a9, const DSPSplitComplex *a10, uint64_t a11, float *a12, void *a13, char a14, int a15)
{
  v15 = a8;
  v16 = a7;
  v17 = __n;
  v18 = a4;
  v19 = a3;
  v20 = a2;
  v22 = a15;
  v23 = *a1;
  if (*a1 >= 1)
  {
    *(a1 + 572) = 0;
    if (v23 != 1)
    {
      *(a1 + 496) = 0;
      *(a1 + 540) = 0;
      if (v23 > 2)
      {
        goto LABEL_26;
      }
    }
  }

  imagp = a10->imagp;
  realp = a10->realp;
  if (a14)
  {
    v25 = a13[3];
    v26 = a13[4];
    v27 = a13[5];
    v62 = *(a1 + 8);
    v28 = 4 * v62;
    v67 = a13[2];
    memcpy(v67, a2->realp, 4 * v62);
    v60 = v20;
    v29 = v20->imagp;
    v30 = v25;
    v19 = a3;
    memcpy(v30, v29, 4 * v62);
    memcpy(v26, *a3, 4 * v62);
    memcpy(v27, a3[1], 4 * v62);
    if (a15 == 1)
    {
      v31 = a13[7];
      realp = a13[6];
      memcpy(realp, a10->realp, v28);
      imagp = v31;
      memcpy(v31, a10->imagp, v28);
    }

    if (a5)
    {
      v32 = (v62 - 1);
      MEMORY[0x1E12BE7F0](v67, 1, a5, 1, v67, 1, v62);
      MEMORY[0x1E12BE7F0](v30 + 1, 1, a5 + 4, 1, v30 + 1, 1, v32);
      *v30 = *v30 * *(a5 + 4 * v32);
      MEMORY[0x1E12BE7F0](v26, 1, a5, 1, v26, 1, v62);
      MEMORY[0x1E12BE7F0](v27 + 1, 1, a5 + 4, 1, v27 + 1, 1, v32);
      *v27 = *v27 * *(a5 + 4 * v32);
      if (a15 == 1)
      {
        MEMORY[0x1E12BE7F0]();
        MEMORY[0x1E12BE7F0](imagp + 1, 1, a5 + 4, 1, imagp + 1, 1, v32);
        *imagp = *imagp * *(a5 + 4 * v32);
      }
    }

    v17 = __n;
    v63 = v30;
    CResidualSuppressorV4::GetLeakageForSuppressor(a1, v67, v30, v26, v27, __n);
    v20 = v60;
    v16 = a7;
    v22 = a15;
    v18 = a4;
    v15 = a8;
  }

  else
  {
    CResidualSuppressorV4::GetLeakageForSuppressor(a1, a2->realp, a2->imagp, *a3, a3[1], __n);
    v63 = 0;
    v67 = 0;
  }

  CResidualSuppressorV3::GetResidualForSuppressor(a1, v18);
  if (*(a13 + 17))
  {
    v33 = v15 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  __C = 0;
  vDSP_zvmags(v19, 1, a13[9], 1, *(a1 + 8));
  vDSP_sve(a13[9], 1, &__C + 1, *(a1 + 8));
  vDSP_zvmags(v20, 1, a13[9], 1, *(a1 + 8));
  vDSP_sve(a13[9], 1, &__C, *(a1 + 8));
  v47 = *(&__C + 1) / (*&__C + 1.0e-20) + 1.0e-20;
  v48 = log10f(v47) * 10.0;
  v69 = 0;
  v49 = *(a1 + 8);
  __A.realp = a13[10];
  __A.imagp = &__A.realp[v49];
  vDSP_zvadd(v20, 1, v19, 1, &__A, 1, v49);
  vDSP_zvsub(&__A, 1, a10, 1, &__A, 1, *(a1 + 8));
  vDSP_zvmags(a10, 1, a13[9], 1, *(a1 + 8));
  vDSP_sve(a13[9], 1, &v69 + 1, *(a1 + 8));
  vDSP_zvmags(&__A, 1, a13[9], 1, *(a1 + 8));
  vDSP_sve(a13[9], 1, &v69, *(a1 + 8));
  v50 = *(&v69 + 1) / (*&v69 + 1.0e-20) + 1.0e-20;
  a9.n128_f32[0] = log10f(v50);
  a9.n128_f32[0] = a9.n128_f32[0] * 10.0;
  if (a9.n128_f32[0] >= v48)
  {
LABEL_18:
    v34 = v16;
    v35 = v22;
    v36 = v18;
    v37 = *a13;
    v38 = a13[1];
    MEMORY[0x1E12BE9A0](v19->realp, 1, a10->realp, 1, *a13, 1, *(a1 + 8));
    MEMORY[0x1E12BE9A0](v19->imagp, 1, a10->imagp, 1, v38, 1, *(a1 + 8));
    LODWORD(__A.realp) = *(a13 + 16);
    MEMORY[0x1E12BE940](v37, 1, &__A, v37, 1, *(a1 + 8));
    MEMORY[0x1E12BE940](v38, 1, &__A, v38, 1, *(a1 + 8));
    v39 = v37;
    v22 = v35;
    v16 = v34;
    v17 = __n;
    v40 = v38;
    v18 = v36;
    CResidualSuppressorV4::GetLeakageForSuppressor(a11, v20->realp, v20->imagp, v39, v40, a12);
    CResidualSuppressorV3::GetResidualForSuppressor(a11, v36);
    MEMORY[0x1E12BE5D0](*(a1 + 256), 1, *(a11 + 256), 1, *(a1 + 256), 1, *(a1 + 8));
  }

LABEL_19:
  if (v22 == 1)
  {
    if (a14)
    {
      v41 = a11;
      v42 = a11;
      v43 = v67;
      v44 = v63;
      v46 = imagp;
      v45 = realp;
    }

    else
    {
      v43 = v20->realp;
      v44 = v20->imagp;
      v45 = a10->realp;
      v46 = a10->imagp;
      v41 = a11;
      v42 = a11;
    }

    CResidualSuppressorV4::GetLeakageForSuppressor(v42, v43, v44, v45, v46, a12);
    CResidualSuppressorV3::GetResidualForSuppressor(v41, v18);
    vDSP_vmax(*(a1 + 256), 1, *(v41 + 256), 1, *(a1 + 256), 1, *(a1 + 8));
  }

LABEL_26:
  v51 = a10->realp;
  if (a10->realp && v22 == 2 && (v52 = a10->imagp) != 0 && (a13[13] & 1) == 0)
  {
    v54 = a13[12];
    v55 = *(a1 + 8);
    __A.realp = a10->realp;
    __A.imagp = v52;
    vDSP_zvmags(&__A, 1, v54, 1, v55);
    *v54 = *v51 * *v51;
    a9.n128_f32[0] = *v52 * *v52;
    v54[v55] = a9.n128_f32[0];
    v53 = 12;
    if (a13[13])
    {
      v53 = 11;
    }
  }

  else
  {
    if (*(a13 + 104) != 1)
    {
      goto LABEL_38;
    }

    v53 = 11;
  }

  v56 = a13[v53];
  if (*(a13 + 105) == 1)
  {
    LODWORD(__A.realp) = 0;
    vDSP_sve(*(a1 + 432), 1, &__A, *(a1 + 8));
    *&__A.realp = *&__A.realp * *(a13 + 27);
    HIDWORD(__C) = 0;
    vDSP_sve(v56, 1, &__C + 1, *(a1 + 8));
    a9.n128_u32[0] = HIDWORD(__C);
    if (*(&__C + 1) > *&__A.realp)
    {
      *(&__C + 1) = *&__A.realp / (*(&__C + 1) + 1.0e-20);
      MEMORY[0x1E12BE940](v56, 1, &__C + 4, v56, 1, *(a1 + 460));
    }
  }

  LODWORD(__A.realp) = 1317011456;
  MEMORY[0x1E12BE940](v56, 1, &__A, *(a1 + 744), 1, *(a1 + 460), a9);
  vDSP_vmax(*(a1 + 744), 1, *(a1 + 256), 1, *(a1 + 256), 1, *(a1 + 8));
LABEL_38:
  LODWORD(__A.realp) = 813694976;
  MEMORY[0x1E12BE940](*(a1 + 256), 1, &__A, a13[11], 1, *(a1 + 8));
  *(a13[11] + 4 * *(a1 + 8)) = 0;
  *(a1 + 304) = a5;
  *v17 = v16;
  CResidualSuppressorV4::speex_preprocess_run_res_estimator(a1, v20, v17);
  return CResidualSuppressorV3::speex_preprocess_run_res_suppressor(a1);
}

void CResidualSuppressorV5::speex_preprocess_run(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const DSPSplitComplex *a9, uint64_t a10, float *a11, void *a12, char a13, int a14)
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1EEE9AC00](a1);
  v34.realp = (&v29 - v24);
  v34.imagp = (&v29 + 4 * v23 - v24);
  if (v25)
  {
    v31 = v16;
    v32 = v20;
    v33 = v21;
    v30 = v19;
    v26 = v18;
    v27 = v17;
    CResidualSuppressorV3::speex_analysis(a1, a2, &v34);
    CResidualSuppressorV5::speex_preprocess_run_freq(a1, &v34, v31, v27, v26, v30, v32, v33, v28, a9, a10, a11, a12, a13, a14);
    CResidualSuppressorV3::speex_synthesis(a1, a2);
  }

  else
  {
    CResidualSuppressorV5::speex_preprocess_run_freq(a1, &v34, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t *std::unique_ptr<AUSM::Metadata::PImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*(v2 + 104));
    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v2 + 8));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUSM::ParameterTracksManager::~ParameterTracksManager(AUSM::ParameterTracksManager *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::unique_ptr<AUSM::InputABLBuffer>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v2[9] = v3;
      operator delete(v3);
    }

    v4 = v2[5];
    if (v4)
    {
      v2[6] = v4;
      operator delete(v4);
    }

    std::unique_ptr<ExtendedAudioBufferList,std::integral_constant<void (*)(ExtendedAudioBufferList*),&(ExtendedAudioBufferList_Destroy)>>::reset[abi:ne200100](v2 + 4, 0);
    v5 = v2[1];
    if (v5)
    {
      v2[2] = v5;
      operator delete(v5);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<APAC::Metadata>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1455888);
    if (v3)
    {
      v4 = *(v2 + 1455896);
      v5 = *(v2 + 1455888);
      if (v4 != v3)
      {
        v6 = (v4 - 1248);
        do
        {
          v7 = -40192;
          v8 = v6;
          do
          {
            APAC::Metadata::RendererData::~RendererData(v8);
            v8 = (v9 - 1256);
            v7 += 1256;
          }

          while (v7);
          v4 -= 40200;
          v6 = (v6 - 40200);
        }

        while (v4 != v3);
        v5 = *(v2 + 1455888);
      }

      *(v2 + 1455896) = v3;
      operator delete(v5);
    }

    v16 = (v2 + 1455864);
    std::vector<APAC::Metadata::GroupConfig>::__destroy_vector::operator()[abi:ne200100](&v16);
    v10 = *(v2 + 1455840);
    if (v10)
    {
      *(v2 + 1455848) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 1455720);
    if (v11)
    {
      *(v2 + 1455728) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 1455696);
    if (v12)
    {
      *(v2 + 1455704) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 1455672);
    if (v13)
    {
      *(v2 + 1455680) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 1455648);
    if (v14)
    {
      *(v2 + 1455656) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 1455624);
    if (v15)
    {
      *(v2 + 1455632) = v15;
      operator delete(v15);
    }

    APAC::Metadata::RendererMetadataConfig::~RendererMetadataConfig((v2 + 1446256));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void APAC::Metadata::RendererMetadataConfig::~RendererMetadataConfig(APAC::Metadata::RendererMetadataConfig *this)
{
  v2 = *(this + 600);
  if (v2)
  {
    v3 = *(this + 601);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        APAC::Metadata::RendererData::~RendererData((v3 - 1248));
      }

      while (v3 != v2);
      v4 = *(this + 600);
    }

    *(this + 601) = v2;
    operator delete(v4);
  }

  v11 = (this + 4776);
  std::vector<APAC::Metadata::GroupConfig>::__destroy_vector::operator()[abi:ne200100](&v11);
  v5 = *(this + 594);
  if (v5)
  {
    *(this + 595) = v5;
    operator delete(v5);
  }

  v6 = *(this + 579);
  if (v6)
  {
    *(this + 580) = v6;
    operator delete(v6);
  }

  v7 = *(this + 576);
  if (v7)
  {
    *(this + 577) = v7;
    operator delete(v7);
  }

  v8 = *(this + 573);
  if (v8)
  {
    *(this + 574) = v8;
    operator delete(v8);
  }

  v9 = *(this + 570);
  if (v9)
  {
    *(this + 571) = v9;
    operator delete(v9);
  }

  v10 = *(this + 567);
  if (v10)
  {
    *(this + 568) = v10;
    operator delete(v10);
  }
}

void std::vector<APAC::Metadata::GroupConfig>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void APAC::Metadata::RendererData::~RendererData(APAC::Metadata::RendererData *this)
{
  v2 = *(this + 152);
  if (v2)
  {
    *(this + 153) = v2;
    operator delete(v2);
  }

  v3 = *(this + 125);
  if (v3)
  {
    *(this + 126) = v3;
    operator delete(v3);
  }

  v4 = *(this + 122);
  if (v4)
  {
    *(this + 123) = v4;
    operator delete(v4);
  }

  v5 = *(this + 117);
  if (v5)
  {
    *(this + 118) = v5;
    operator delete(v5);
  }

  v6 = *(this + 114);
  if (v6)
  {
    *(this + 115) = v6;
    operator delete(v6);
  }

  v7 = *(this + 111);
  if (v7)
  {
    *(this + 112) = v7;
    operator delete(v7);
  }

  v8 = *(this + 108);
  if (v8)
  {
    *(this + 109) = v8;
    operator delete(v8);
  }

  v9 = *(this + 105);
  if (v9)
  {
    *(this + 106) = v9;
    operator delete(v9);
  }

  v10 = *(this + 102);
  if (v10)
  {
    *(this + 103) = v10;
    operator delete(v10);
  }
}

uint64_t std::unique_ptr<ExtendedAudioBufferList,std::integral_constant<void (*)(ExtendedAudioBufferList*),&(ExtendedAudioBufferList_Destroy)>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return ExtendedAudioBufferList_Destroy();
  }

  return result;
}

void std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t AUSM::Metadata::ingestImmersiveRendererData(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v69[9] = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v5 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v33 = (v4 + 104);
    if (*(v4 + 127) < 0)
    {
      v33 = *v33;
    }

    v34 = *(v2 + 2) - *v2;
    *buf = 136315650;
    *&buf[4] = v33;
    *&buf[12] = 2080;
    *&buf[14] = "ingestImmersiveRendererData";
    *&buf[22] = 1024;
    *&buf[24] = v34;
    _os_log_debug_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "[%s|%s] ImmersiveRendererData: receiving %u bytes", buf, 0x1Cu);
  }

  v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreaudio"];
  if ([v6 BOOLForKey:@"ausm_capture_ird"])
  {
    v56 = v6;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    *&buf[*(*&buf[16] - 24) + 24] = *&buf[*(*&buf[16] - 24) + 24] & 0xFFFFFFB5 | 8;
    v7 = *v2;
    if (v2[1] != *v2)
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E5318];
      do
      {
        v10 = *&buf[16];
        *(&v60 + *(*&buf[16] - 24) + 8) = 2;
        v11 = &buf[*(v10 - 24) + 16];
        if (*(v11 + 36) == -1)
        {
          std::ios_base::getloc(&buf[*(v10 - 24) + 16]);
          v12 = std::locale::use_facet(v69, v9);
          (v12->__vftable[2].~facet_0)(v12, 32);
          std::locale::~locale(v69);
        }

        *(v11 + 36) = 48;
        MEMORY[0x1E12BCC10](&buf[16], *(v7 + v8++));
      }

      while (v2[1] - *v2 > v8);
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v13 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v37 = (v4 + 104);
    if (*(v4 + 127) < 0)
    {
      v37 = *v37;
    }

    if ((v67 & 0x10) != 0)
    {
      v42 = v66;
      if (v66 < v63)
      {
        v66 = v63;
        v42 = v63;
      }

      v43 = __src;
    }

    else
    {
      if ((v67 & 8) == 0)
      {
        v38 = 0;
        v58 = 0;
LABEL_125:
        *(&__dst + v38) = 0;
        p_dst = &__dst;
        if (v58 < 0)
        {
          p_dst = __dst;
        }

        LODWORD(v69[0].__locale_) = 136315650;
        *(&v69[0].__locale_ + 4) = v37;
        WORD2(v69[1].__locale_) = 2080;
        *(&v69[1].__locale_ + 6) = "ingestImmersiveRendererData";
        HIWORD(v69[2].__locale_) = 2080;
        v69[3].__locale_ = p_dst;
        _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] ImmersiveRendererData: dump %s", v69, 0x20u);
        if (v58 < 0)
        {
          operator delete(__dst);
        }

        v6 = v56;
LABEL_13:

        *buf = *MEMORY[0x1E69E54D8];
        v14 = *(MEMORY[0x1E69E54D8] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
        *&buf[16] = v14;
        *&buf[24] = MEMORY[0x1E69E5548] + 16;
        if (v65 < 0)
        {
          operator delete(__p);
        }

        *&buf[24] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v60);
        std::iostream::~basic_iostream();
        MEMORY[0x1E12BD050](&v68);
        goto LABEL_16;
      }

      v43 = *(&v60 + 1);
      v42 = *(&v61 + 1);
    }

    v38 = v42 - v43;
    if (v42 - v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v38 >= 0x17)
    {
      operator new();
    }

    v58 = v42 - v43;
    if (v38)
    {
      memmove(&__dst, v43, v38);
    }

    goto LABEL_125;
  }

LABEL_16:

  if ((v2[1] - *v2) < 4)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v15 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v36 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v36 = *v36;
      }

      *buf = 136315394;
      *&buf[4] = v36;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererData";
      _os_log_error_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: ImmersiveRendererData struct size too small", buf, 0x16u);
    }

    return 4294956445;
  }

  v16 = **v2;
  if (v16 == 2)
  {
    if (AUSM::Metadata::mTraceLevel >= 1)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v20 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = (v4 + 104);
        if (*(v4 + 127) < 0)
        {
          v21 = *v21;
        }

        *buf = 136315394;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = "ingestImmersiveRendererDataV2";
        _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_INFO, "[%s|%s] ImmersiveRendererData_V2 ingestion has begun", buf, 0x16u);
      }
    }

    atomic_store(0, (v4 + 96));
    atomic_store(1u, (v4 + 97));
    v22 = *v2;
    v23 = v2[1] - *v2;
    if (v23 > 3)
    {
      if (*v22 != 2)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v35 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v51 = (v4 + 104);
          if (*(v4 + 127) < 0)
          {
            v51 = *v51;
          }

          v52 = *v22;
          *buf = 136315650;
          *&buf[4] = v51;
          *&buf[12] = 2080;
          *&buf[14] = "ingestImmersiveRendererDataV2";
          *&buf[22] = 1024;
          *&buf[24] = v52;
          _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: ImmersiveRendererData_V2: Inconsistent workflow: IRD version %u ≠ 2", buf, 0x1Cu);
        }

        goto LABEL_84;
      }

      if (v23 > 0x17)
      {
        if (v23 >= v22[3] + v22[5] + 20 * v22[4] + 24)
        {
          APAC::ImmersiveRendererData_V2_Manager::getACLByteSize();
          operator new[]();
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v19 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v55 = (v4 + 104);
          if (*(v4 + 127) < 0)
          {
            v55 = *v55;
          }

          *buf = 136315394;
          *&buf[4] = v55;
          *&buf[12] = 2080;
          *&buf[14] = "ingestImmersiveRendererDataV2";
          _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: ImmersiveRendererData_V2 struct truncated", buf, 0x16u);
        }

        goto LABEL_110;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      v48 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v48 = *v48;
      }
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      v48 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v48 = *v48;
      }
    }

    *buf = 136315394;
    *&buf[4] = v48;
    *&buf[12] = 2080;
    *&buf[14] = "ingestImmersiveRendererDataV2";
    _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: ImmersiveRendererData_V2 struct too small", buf, 0x16u);
    goto LABEL_110;
  }

  if (v16 != 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v24 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v45 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v45 = *v45;
      }

      *buf = 136315650;
      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererData";
      *&buf[22] = 1024;
      *&buf[24] = v16;
      _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: Unsupported ImmersiveRendererData version %u", buf, 0x1Cu);
    }

    return 4294956428;
  }

  atomic_store(0, (v4 + 96));
  atomic_store(1u, (v4 + 97));
  v17 = *v2;
  v18 = v2[1] - *v2;
  if (v18 <= 7)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v19 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v47 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v47 = *v47;
      }

      *buf = 136315394;
      *&buf[4] = v47;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererDataV1";
      _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: ImmersiveRendererData_V1 struct too small", buf, 0x16u);
    }

    goto LABEL_110;
  }

  if (*v17 != 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v35 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v49 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v49 = *v49;
      }

      v50 = *v17;
      *buf = 136315650;
      *&buf[4] = v49;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererDataV1";
      *&buf[22] = 1024;
      *&buf[24] = v50;
      _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: ImmersiveRendererData_V1: Inconsistent workflow: IRD version %u ≠ 1", buf, 0x1Cu);
    }

LABEL_84:

    atomic_store(0, (v4 + 97));
    return 4294956428;
  }

  v25 = v17[1];
  v26 = 20 * v25 + 8;
  if (v18 != v26)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v19 = getAUSMV2Log(void)::gLog;
    v39 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18 >= v26)
    {
      if (v39)
      {
        v54 = (v4 + 104);
        if (*(v4 + 127) < 0)
        {
          v54 = *v54;
        }

        *buf = 136315394;
        *&buf[4] = v54;
        *&buf[12] = 2080;
        *&buf[14] = "ingestImmersiveRendererDataV1";
        v41 = "[%s|%s] ERROR: ImmersiveRendererData_V1 struct too big";
        goto LABEL_151;
      }
    }

    else if (v39)
    {
      v40 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v40 = *v40;
      }

      *buf = 136315394;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererDataV1";
      v41 = "[%s|%s] ERROR: ImmersiveRendererData_V1 struct truncated";
LABEL_151:
      _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
    }

LABEL_110:

LABEL_111:
    atomic_store(0, (v4 + 97));
    return 4294956445;
  }

  if (AUSM::Metadata::mTraceLevel >= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v27 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315394;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererDataV1";
      _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_INFO, "[%s|%s] ImmersiveRendererData_V1 ingestion has begun", buf, 0x16u);
    }

    v25 = v17[1];
  }

  memset(v69, 0, 24);
  __src = 0;
  v60 = 0u;
  v61 = 0u;
  memset(buf, 0, sizeof(buf));
  v29 = AUSM::Metadata::commonImmersiveRendererDataSetup(v4, v17 + 2, v25, v69, buf);
  if (v29)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v30 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v53 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v53 = *v53;
      }

      *buf = 136315650;
      *&buf[4] = v53;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererDataV1";
      *&buf[22] = 1024;
      *&buf[24] = v29;
      _os_log_error_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData_V1: Error during common configuration, err = %d", buf, 0x1Cu);
    }

    if (v29 == -10851)
    {
      goto LABEL_111;
    }
  }

  atomic_store(1u, (v4 + 96));
  atomic_store(0, (v4 + 97));
  if (AUSM::Metadata::mTraceLevel >= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v31 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = (v4 + 104);
      if (*(v4 + 127) < 0)
      {
        v32 = *v32;
      }

      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2080;
      *&buf[14] = "ingestImmersiveRendererDataV1";
      _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_INFO, "[%s|%s] ImmersiveRendererData_V1 ingestion has ended", buf, 0x16u);
    }
  }

  return v29;
}

void sub_1DDF5DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  APAC::Metadata::RendererMetadataConfig::~RendererMetadataConfig((v11 + 8));
  AUSM::ABLBuffer::~ABLBuffer((v12 - 176));
  if (a9)
  {
    operator delete(a9);
  }

  MEMORY[0x1E12BD130](v10, v9);
  _Unwind_Resume(a1);
}

uint64_t AUSM::Metadata::commonImmersiveRendererDataSetup(void *a1, unsigned int *a2, unsigned int a3, uint64_t *a4, uint64_t *a5)
{
  v157[4] = *MEMORY[0x1E69E9840];
  AUSM::Metadata::prepareParameterTracks(a1, 0x400uLL, 0x1000uLL);
  v10 = (a4[1] - *a4) >> 2;
  v11 = (a5[1] - *a5) >> 2;
  v157[0] = v10;
  v157[1] = v11;
  v12 = (a5[4] - a5[3]) >> 2;
  v13 = (a5[7] - a5[6]) >> 2;
  v157[2] = v12;
  v157[3] = v13;
  if (v10 != v11 || v11 != v12 || v12 != v13)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v16 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v119 = a1 + 13;
      if (*(a1 + 127) < 0)
      {
        v119 = *v119;
      }

      *buf = 136315394;
      *&buf[4] = v119;
      *&buf[12] = 2080;
      *&buf[14] = "commonImmersiveRendererDataSetup";
      _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData: all channel info sizes are not equal", buf, 0x16u);
    }

LABEL_26:

    return 4294956445;
  }

  v132 = a2;
  v17 = 1;
  v18 = v157;
  do
  {
    if (v157[v17] < v10)
    {
      v10 = v157[v17];
      v18 = &v157[v17];
    }

    ++v17;
  }

  while (v17 != 4);
  v138 = *v18;
  v137 = a5;
  v135 = a4;
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v19 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v120 = a1 + 13;
    if (*(a1 + 127) < 0)
    {
      v120 = *v120;
    }

    *buf = 136315650;
    *&buf[4] = v120;
    *&buf[12] = 2080;
    *&buf[14] = "commonImmersiveRendererDataSetup";
    *&buf[22] = 1024;
    *&buf[24] = v138;
    _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] ImmersiveRendererData: %u channel infos retrieved", buf, 0x1Cu);
  }

  (*(**a1 + 392))(buf);
  v20 = *buf;
  Element = ausdk::AUScope::GetElement((*a1 + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  ausdk::AUElement::SetParameter(Element, 3u, -120.0);
  v22 = ausdk::AUScope::GetElement((*a1 + 80), 0);
  if (!v22)
  {
    ausdk::Throw(0xFFFFD583);
  }

  ausdk::AUElement::SetParameter(v22, 5u, 0.0);
  v147 = 5;
  if (!v132 && a3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v16 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v121 = a1 + 13;
      if (*(a1 + 127) < 0)
      {
        v121 = *v121;
      }

      *buf = 136315394;
      *&buf[4] = v121;
      *&buf[12] = 2080;
      *&buf[14] = "commonImmersiveRendererDataSetup";
      _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed: missing renderer descriptions", buf, 0x16u);
    }

    goto LABEL_26;
  }

  *(a1 + 20) = 0;
  if (a3)
  {
    v136 = a1 + 13;
    v131 = a3;
    *&v24 = 136315650;
    v130 = v24;
    *&v24 = 136315906;
    v134 = v24;
    *&v24 = 136316162;
    v129 = v24;
    *&v24 = 136315394;
    v128 = v24;
    v133 = 0;
    v27 = v132;
    v28 = v132[1];
    v29 = v28 - *v132;
    if (v28 <= *v132)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v16 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 127) < 0)
        {
          v124 = *v136;
        }

        else
        {
          v124 = v136;
        }

        v126 = *v132;
        v127 = v132[1];
        *buf = v129;
        *&buf[4] = v124;
        *&buf[12] = 2080;
        *&buf[14] = "commonImmersiveRendererDataSetup";
        *&buf[22] = 1024;
        *&buf[24] = v133;
        *&buf[28] = 1024;
        *&buf[30] = v126;
        *&buf[34] = 1024;
        *&buf[36] = v127;
        _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed: inconsistent rendererDescription channel boundaries for rendererDescription #%u: %u, %u", buf, 0x28u);
      }

      goto LABEL_26;
    }

    if (v29 >= 0x81)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v16 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 127) < 0)
        {
          v125 = *v136;
        }

        else
        {
          v125 = v136;
        }

        *buf = v130;
        *&buf[4] = v125;
        *&buf[12] = 2080;
        *&buf[14] = "commonImmersiveRendererDataSetup";
        *&buf[22] = 1024;
        *&buf[24] = v133;
        _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed: too many channels for rendererDescription #%u", buf, 0x1Cu);
      }

      goto LABEL_26;
    }

    *(a1 + 20) += v29;
    v30 = v27[2];
    v139 = v29;
    if (v30 > 0)
    {
      switch(v30)
      {
        case 1:
          __s2 = 2;
          v49 = AUSM::Metadata::dispatchSetProperty(*a1, 11, 1, &__s2, v23);
          if (v49)
          {
            v50 = v49;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v51 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v102 = v136;
              if (*(a1 + 127) < 0)
              {
                v102 = *v136;
              }

              *buf = v134;
              *&buf[4] = v102;
              *&buf[12] = 2080;
              *&buf[14] = "commonImmersiveRendererDataSetup";
              *&buf[22] = 1024;
              *&buf[24] = 1;
              *&buf[28] = 1024;
              *&buf[30] = v50;
              _os_log_error_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the number of input elements for input #%u, err = %d", buf, 0x22u);
            }
          }

          memset(buf, 0, sizeof(buf));
          (*(**a1 + 392))(*a1, 1, 1);
          v144 = *&buf[16];
          v143.n128_u64[1] = *&buf[8];
          v145 = *&buf[32];
          HIDWORD(v144) = v139;
          v143.n128_u64[0] = v20;
          v52 = (*(**a1 + 400))(*a1, 1, 1, buf, &v143);
          if (v52)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v53 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v104 = v136;
              if (*(a1 + 127) < 0)
              {
                v104 = *v136;
              }

              v148 = v134;
              v149 = v104;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v52;
              _os_log_error_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the stream format for input %u, err = %d", &v148, 0x22u);
            }
          }

          v54 = AUSM::Metadata::PImpl::setParameter(*(a1[2] + 40), 5, 1, 1.0);
          if (v54)
          {
            v55 = v54;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v56 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v106 = v136;
              if (*(a1 + 127) < 0)
              {
                v106 = *v136;
              }

              v148 = v134;
              v149 = v106;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v55;
              _os_log_error_impl(&dword_1DDB85000, v56, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to enable input %u, err = %d", &v148, 0x22u);
            }
          }

          v57 = AUSpatialMixerV2::SetAPACProperty(*a1, 3003, 1, 1, &v147, 4);
          if (v57)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v58 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v108 = v136;
              if (*(a1 + 127) < 0)
              {
                v108 = *v136;
              }

              v148 = v134;
              v149 = v108;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v57;
              _os_log_error_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the rendering flags for input %u, err = %d", &v148, 0x22u);
            }
          }

          v142 = 4;
          v59 = AUSpatialMixerV2::SetAPACProperty(*a1, 3013, 1, 1, &v142, 4);
          if (v59)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v60 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v110 = v136;
              if (*(a1 + 127) < 0)
              {
                v110 = *v136;
              }

              v148 = v134;
              v149 = v110;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v59;
              _os_log_error_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the attenuation law for input %u, err = %d", &v148, 0x22u);
            }
          }

          v141 = 7;
          v61 = AUSpatialMixerV2::SetAPACProperty(*a1, 3000, 1, 1, &v141, 4);
          v62 = v61;
          if (v61)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v63 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v112 = v136;
              if (*(a1 + 127) < 0)
              {
                v112 = *v136;
              }

              v148 = v134;
              v149 = v112;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v62;
              _os_log_error_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the spatialization algorithm for input %u, err = %d", &v148, 0x22u);
            }
          }

          if (v27[1] > v138)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v64 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              v114 = v136;
              if (*(a1 + 127) < 0)
              {
                v114 = *v136;
              }

              v148 = v128;
              v149 = v114;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              _os_log_debug_impl(&dword_1DDB85000, v64, OS_LOG_TYPE_DEBUG, "[%s|%s] ImmersiveRendererData does not provide a channel layout, using the default channel layout for the given number of channels", &v148, 0x16u);
            }

            LOBYTE(v148) = 0;
            std::vector<char>::vector[abi:ne200100](v140, 32);
          }

          MEMORY[0x1EEE9AC00](v61);
          v89 = &v128 - v88;
          v90 = *v27;
          v91 = *v135;
          v92 = *v137;
          v93 = v137[3];
          v94 = v89 + 8;
          v95 = v137[6];
          do
          {
            v96 = *(v92 + 4 * v90);
            v97 = *(v93 + 4 * v90);
            v98 = *(v95 + 4 * v90);
            *(v94 - 2) = *(v91 + 4 * v90);
            *(v94 - 1) = 2;
            *v94 = v96;
            v94[1] = v97;
            v94[2] = v98;
            ++v90;
            v94 += 5;
            --v87;
          }

          while (v87);
          LOBYTE(v148) = 0;
          std::vector<char>::vector[abi:ne200100](v140, (20 * v139 + 12));
        case 2:
LABEL_120:
          v143.n128_u32[0] = v29 + 1;
          v66 = AUSM::Metadata::dispatchSetProperty(*a1, 11, 1, &v143, v23);
          if (v66)
          {
            v67 = v66;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v68 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v99 = v136;
              if (*(a1 + 127) < 0)
              {
                v99 = *v136;
              }

              *buf = v134;
              *&buf[4] = v99;
              *&buf[12] = 2080;
              *&buf[14] = "commonImmersiveRendererDataSetup";
              *&buf[22] = 1024;
              *&buf[24] = 1;
              *&buf[28] = 1024;
              *&buf[30] = v67;
              _os_log_error_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the number of input elements for input #%u, err = %d", buf, 0x22u);
            }
          }

          *buf = v27[3] == 3;
          AUSpatialMixerV2::SetAPACProperty(*a1, 3301, 0, 1, buf, 4);
          v69 = *(a1[2] + 8);
          if (v69)
          {
            do
            {
              v70 = v69;
              if (!*(v69 + 7))
              {
                *(v69 + 8) = 1;
                memset(buf, 0, sizeof(buf));
                (*(**a1 + 392))();
                v144 = *&buf[16];
                v143.n128_u64[1] = *&buf[8];
                v145 = *&buf[32];
                HIDWORD(v144) = 1;
                v143.n128_u64[0] = v20;
                v71 = (*(**a1 + 400))(*a1, 1, 1, buf, &v143);
                if (v71)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v72 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                  {
                    v82 = v136;
                    if (*(a1 + 127) < 0)
                    {
                      v82 = *v136;
                    }

                    v148 = v134;
                    v149 = v82;
                    v150 = 2080;
                    v151 = "commonImmersiveRendererDataSetup";
                    v152 = 1024;
                    v153 = 1;
                    v154 = 1024;
                    v155 = v71;
                    _os_log_error_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the stream format for input #%u, err = %d", &v148, 0x22u);
                  }
                }

                v73 = AUSM::Metadata::PImpl::setParameter(*(a1[2] + 40), 5, 1, 1.0);
                if (v73)
                {
                  v74 = v73;
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v75 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    v83 = v136;
                    if (*(a1 + 127) < 0)
                    {
                      v83 = *v136;
                    }

                    v148 = v134;
                    v149 = v83;
                    v150 = 2080;
                    v151 = "commonImmersiveRendererDataSetup";
                    v152 = 1024;
                    v153 = 1;
                    v154 = 1024;
                    v155 = v74;
                    _os_log_error_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to enable input #%u, err = %d", &v148, 0x22u);
                  }
                }

                v76 = AUSpatialMixerV2::SetAPACProperty(*a1, 3003, 1, 1, &v147, 4);
                if (v76)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v77 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    v84 = v136;
                    if (*(a1 + 127) < 0)
                    {
                      v84 = *v136;
                    }

                    v148 = v134;
                    v149 = v84;
                    v150 = 2080;
                    v151 = "commonImmersiveRendererDataSetup";
                    v152 = 1024;
                    v153 = 1;
                    v154 = 1024;
                    v155 = v76;
                    _os_log_error_impl(&dword_1DDB85000, v77, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the rendering flags for input #%u, err = %d", &v148, 0x22u);
                  }
                }

                __s2 = 4;
                v78 = AUSpatialMixerV2::SetAPACProperty(*a1, 3013, 1, 1, &__s2, 4);
                if (v78)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v79 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v85 = v136;
                    if (*(a1 + 127) < 0)
                    {
                      v85 = *v136;
                    }

                    v148 = v130;
                    v149 = v85;
                    v150 = 2080;
                    v151 = "commonImmersiveRendererDataSetup";
                    v152 = 1024;
                    v153 = v78;
                    _os_log_error_impl(&dword_1DDB85000, v79, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the attenuation law, err = %d", &v148, 0x1Cu);
                  }
                }

                v142 = 7;
                v80 = AUSpatialMixerV2::SetAPACProperty(*a1, 3000, 1, 1, &v142, 4);
                if (v80)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v81 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    v86 = v136;
                    if (*(a1 + 127) < 0)
                    {
                      v86 = *v136;
                    }

                    v148 = v134;
                    v149 = v86;
                    v150 = 2080;
                    v151 = "commonImmersiveRendererDataSetup";
                    v152 = 1024;
                    v153 = 1;
                    v154 = 1024;
                    v155 = v80;
                    _os_log_error_impl(&dword_1DDB85000, v81, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the spatialization algorithm for input %u, err = %d", &v148, 0x22u);
                  }
                }

                if (*v27 < v138)
                {
                  LOBYTE(v148) = 0;
                  std::vector<char>::vector[abi:ne200100](v140, 32);
                }

                LOBYTE(v148) = 0;
                std::vector<char>::vector[abi:ne200100](v140, 32);
              }

              v69 = *v69;
            }

            while (*v70);
          }

          operator new();
        case 3:
          __s2 = 2;
          v31 = AUSM::Metadata::dispatchSetProperty(*a1, 11, 1, &__s2, v23);
          if (v31)
          {
            v32 = v31;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v33 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v103 = v136;
              if (*(a1 + 127) < 0)
              {
                v103 = *v136;
              }

              *buf = v134;
              *&buf[4] = v103;
              *&buf[12] = 2080;
              *&buf[14] = "commonImmersiveRendererDataSetup";
              *&buf[22] = 1024;
              *&buf[24] = 1;
              *&buf[28] = 1024;
              *&buf[30] = v32;
              _os_log_error_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the number of input elements for input #%u, err = %d", buf, 0x22u);
            }
          }

          memset(buf, 0, sizeof(buf));
          (*(**a1 + 392))(*a1, 1, 1);
          v144 = *&buf[16];
          v143.n128_u64[1] = *&buf[8];
          v145 = *&buf[32];
          HIDWORD(v144) = v139;
          v143.n128_u64[0] = v20;
          v34 = (*(**a1 + 400))(*a1, 1, 1, buf, &v143);
          if (v34)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v35 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v105 = v136;
              if (*(a1 + 127) < 0)
              {
                v105 = *v136;
              }

              v148 = v134;
              v149 = v105;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v34;
              _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the stream format for input #%u, err = %d", &v148, 0x22u);
            }
          }

          v36 = AUSM::Metadata::PImpl::setParameter(*(a1[2] + 40), 5, 1, 1.0);
          if (v36)
          {
            v37 = v36;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v38 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v107 = v136;
              if (*(a1 + 127) < 0)
              {
                v107 = *v136;
              }

              v148 = v134;
              v149 = v107;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v37;
              _os_log_error_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to enable input #%u, err = %d", &v148, 0x22u);
            }
          }

          v39 = AUSpatialMixerV2::SetAPACProperty(*a1, 3003, 1, 1, &v147, 4);
          if (v39)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v40 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v109 = v136;
              if (*(a1 + 127) < 0)
              {
                v109 = *v136;
              }

              v148 = v134;
              v149 = v109;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v39;
              _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the rendering flags for input #%u, err = %d", &v148, 0x22u);
            }
          }

          v142 = 4;
          v41 = AUSpatialMixerV2::SetAPACProperty(*a1, 3013, 1, 1, &v142, 4);
          if (v41)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v42 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v111 = v136;
              if (*(a1 + 127) < 0)
              {
                v111 = *v136;
              }

              v148 = v130;
              v149 = v111;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = v41;
              _os_log_error_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to set the attenuation law, err = %d", &v148, 0x1Cu);
            }
          }

          v141 = 7;
          v43 = AUSpatialMixerV2::SetAPACProperty(*a1, 3000, 1, 1, &v141, 4);
          if (v43)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v44 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v113 = v136;
              if (*(a1 + 127) < 0)
              {
                v113 = *v136;
              }

              v148 = v134;
              v149 = v113;
              v150 = 2080;
              v151 = "commonImmersiveRendererDataSetup";
              v152 = 1024;
              v153 = 1;
              v154 = 1024;
              v155 = v43;
              _os_log_error_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData could not set the spatialization algorithm for input %u, err = %d", &v148, 0x22u);
            }
          }

          LOBYTE(v148) = 0;
          std::vector<char>::vector[abi:ne200100](v140, 32);
      }

      goto LABEL_116;
    }

    if (v30 == -1)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v45 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_119;
      }

      v65 = v136;
      if (*(a1 + 127) < 0)
      {
        v65 = *v136;
      }

      *buf = v130;
      *&buf[4] = v65;
      *&buf[12] = 2080;
      *&buf[14] = "commonImmersiveRendererDataSetup";
      *&buf[22] = 1024;
      *&buf[24] = 1;
      v47 = v45;
      v48 = "[%s|%s] ImmersiveRendererData: kImmersiveRendererType_Unknown used for input #%u. Fallback to object.";
    }

    else
    {
      if (v30)
      {
LABEL_116:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v45 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v100 = v136;
          if (*(a1 + 127) < 0)
          {
            v100 = *v136;
          }

          v101 = v27[2];
          *buf = v130;
          *&buf[4] = v100;
          *&buf[12] = 2080;
          *&buf[14] = "commonImmersiveRendererDataSetup";
          *&buf[22] = 1024;
          *&buf[24] = v101;
          _os_log_error_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData does not support render type %u. Fallback to object.", buf, 0x1Cu);
        }

        goto LABEL_119;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v45 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_119;
      }

      v46 = v136;
      if (*(a1 + 127) < 0)
      {
        v46 = *v136;
      }

      *buf = v130;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = "commonImmersiveRendererDataSetup";
      *&buf[22] = 1024;
      *&buf[24] = 1;
      v47 = v45;
      v48 = "[%s|%s] ImmersiveRendererData:  kImmersiveRendererType_Unspecified used for input #%u. Fallback to object.";
    }

    _os_log_impl(&dword_1DDB85000, v47, OS_LOG_TYPE_INFO, v48, buf, 0x1Cu);
LABEL_119:

    LODWORD(v29) = v139;
    goto LABEL_120;
  }

  v143.n128_u32[0] = 2;
  v115 = AUSM::Metadata::dispatchSetProperty(*a1, 3219, 0, &v143, v23);
  if (v115)
  {
    v116 = v115;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v117 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      v122 = a1 + 13;
      if (*(a1 + 127) < 0)
      {
        v122 = *v122;
      }

      *buf = 136315650;
      *&buf[4] = v122;
      *&buf[12] = 2080;
      *&buf[14] = "commonImmersiveRendererDataSetup";
      *&buf[22] = 1024;
      *&buf[24] = v116;
      _os_log_error_impl(&dword_1DDB85000, v117, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData failed to switch to scheduled parameters err = %d", buf, 0x1Cu);
    }
  }

  v148 = 0;
  v25 = (*(**a1 + 88))(*a1, 5677, 0, 0, &v148);
  if (v25)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v118 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v123 = a1 + 13;
      if (*(a1 + 127) < 0)
      {
        v123 = *v123;
      }

      *buf = 136315650;
      *&buf[4] = v123;
      *&buf[12] = 2080;
      *&buf[14] = "commonImmersiveRendererDataSetup";
      *&buf[22] = 1024;
      *&buf[24] = v25;
      _os_log_error_impl(&dword_1DDB85000, v118, OS_LOG_TYPE_ERROR, "[%s|%s] Could not wait for reverb, err = %d", buf, 0x1Cu);
    }
  }

  *(a1[2] + 32) = 1;
  return v25;
}

void sub_1DDF60FF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 352);
  if (v3)
  {
    *(v1 - 344) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::Metadata::PImpl::ParseMetadataConfig(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a2 + 1) != 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v22 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v22 = *v22;
    }

    *buf = 136315394;
    *v27 = v22;
    *&v27[8] = 2080;
    *&v27[10] = "ParseMetadataConfig";
    v23 = "[%s|%s] No renderer metadata config present";
    goto LABEL_47;
  }

  v5 = *(a2 + 16);
  v4 = a2 + 16;
  v6 = *(v4 - 8);
  if (v5 == 1)
  {
    AUSM::Metadata::PImpl::ParseGlobalConfig(a1, v4);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4792) - *(a2 + 4784)) >> 4);
  if (v7 != v6)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v24 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v24 = *v24;
    }

    *buf = 136315394;
    *v27 = v24;
    *&v27[8] = 2080;
    *&v27[10] = "ParseMetadataConfig";
    v23 = "[%s|%s] Error: not enough group config elements";
    goto LABEL_47;
  }

  if (0x6F96F96F96F96F97 * ((*(a2 + 4816) - *(a2 + 4808)) >> 5) != v7)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v25 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v25 = *v25;
    }

    *buf = 136315394;
    *v27 = v25;
    *&v27[8] = 2080;
    *&v27[10] = "ParseMetadataConfig";
    v23 = "[%s|%s] Error: not enough renderer data elements";
LABEL_47:
    _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);
LABEL_48:

    return;
  }

  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = (*(a2 + 4784) + 48 * i);
      AUSM::Metadata::PImpl::ParseGroupConfig(a1, v10);
      v12 = *(a1 + 104);
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *v10;
      v14 = a1 + 104;
      do
      {
        v15 = *(v12 + 32);
        v16 = v15 >= v13;
        v17 = v15 < v13;
        if (v16)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * v17);
      }

      while (v12);
      if (v14 != a1 + 104 && *(v14 + 32) <= v13)
      {
        *buf = *v10;
        *&v27[4] = v14 + 40;
        *&v27[12] = 0;
        AUSM::Metadata::PImpl::ParseRendererData(a1, *(a2 + 4808) + 1248 * i, buf, v11);
      }

      else
      {
LABEL_19:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v18 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = a1 + 48;
          if (*(a1 + 71) < 0)
          {
            v19 = *(a1 + 48);
          }

          v20 = *v10;
          *buf = 136315650;
          *v27 = v19;
          *&v27[8] = 2080;
          *&v27[10] = "ParseMetadataConfig";
          *&v27[18] = 1024;
          v28 = v20;
          _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "[%s|%s] MC: Group %u not found", buf, 0x1Cu);
        }
      }
    }
  }
}

void AUSM::Metadata::PImpl::ParseGlobalConfig(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  if (v4 >= 0x801)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v5 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v37 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v37 = *v37;
      }

      *__s1 = 136315394;
      *&__s1[4] = v37;
      *&__s1[12] = 2080;
      *&__s1[14] = "ParseGlobalConfig";
      _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, "[%s|%s] Too many parameters for GlobalConfig", __s1, 0x16u);
    }

    v4 = *(a2 + 2);
  }

  if (v4)
  {
    v6 = 0;
    v7 = a2 + 4;
    if (v4 >= 0x800)
    {
      v8 = 2048;
    }

    else
    {
      v8 = v4;
    }

    v38 = (a1 + 48);
    do
    {
      v9 = *(v7 + 2 * v6);
      if (v9 > 7)
      {
        if (*(v7 + 2 * v6) <= 0xAu)
        {
          if (v9 != 8)
          {
            if (v9 != 9)
            {
              if (v9 == 10)
              {
                v11 = *(a2 + 4648);
                v41 = 4;
                if (v11 <= 1)
                {
                  if (v11)
                  {
                    goto LABEL_54;
                  }

                  v18 = 5;
LABEL_53:
                  v41 = v18;
                  goto LABEL_54;
                }

                if (v11 == 2)
                {
                  v18 = 1;
                  goto LABEL_53;
                }

                if (v11 == 3)
                {
                  v18 = 3;
                  goto LABEL_53;
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v19 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v36 = a1 + 48;
                  if (*(a1 + 71) < 0)
                  {
                    v36 = *v38;
                  }

                  *__s1 = 136315650;
                  *&__s1[4] = v36;
                  *&__s1[12] = 2080;
                  *&__s1[14] = "ParseDistanceAttenuation";
                  *&__s1[22] = 1024;
                  LODWORD(v43) = v11;
                  _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "[%s|%s] Distance Attenuation: Unsupported attenuation law %u. Defaulting to 'realistic'", __s1, 0x1Cu);
                }

LABEL_54:
                if (*(a1 + 32) < 2u)
                {
                  goto LABEL_22;
                }

                v20 = 1;
                while (2)
                {
                  if (AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3013, 1, v20, &v41, 4))
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v21 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      v28 = a1 + 48;
                      if (*(a1 + 71) < 0)
                      {
                        v28 = *v38;
                      }

                      *__s1 = 136315394;
                      *&__s1[4] = v28;
                      *&__s1[12] = 2080;
                      *&__s1[14] = "ParseDistanceAttenuation";
                      _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "[%s|%s] Distance Attenuation: Failed to set the attenuation law", __s1, 0x16u);
                    }
                  }

                  if ((*(**(a1 + 40) + 88))(*(a1 + 40), 3010, 1, v20, &v39))
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v22 = getAUSMV2Log(void)::gLog;
                    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_65;
                    }

                    v29 = a1 + 48;
                    if (*(a1 + 71) < 0)
                    {
                      v29 = *v38;
                    }

                    *__s1 = 136315394;
                    *&__s1[4] = v29;
                    *&__s1[12] = 2080;
                    *&__s1[14] = "ParseDistanceAttenuation";
                    v26 = v22;
                    v27 = "[%s|%s] Distance Attenuation: Failed to get the distance params";
LABEL_85:
                    _os_log_error_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, v27, __s1, 0x16u);
                    goto LABEL_65;
                  }

                  v23 = *(a2 + 4660);
                  if (v39 != *(a2 + 4656) || v40 != v23)
                  {
                    v39 = *(a2 + 4656);
                    v40 = v23;
                    if (AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3010, 1, v20, &v39, 12))
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v22 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        v25 = a1 + 48;
                        if (*(a1 + 71) < 0)
                        {
                          v25 = *v38;
                        }

                        *__s1 = 136315394;
                        *&__s1[4] = v25;
                        *&__s1[12] = 2080;
                        *&__s1[14] = "ParseDistanceAttenuation";
                        v26 = v22;
                        v27 = "[%s|%s] Distance Attenuation: Failed to set the distance params";
                        goto LABEL_85;
                      }

LABEL_65:
                    }
                  }

                  v20 = (v20 + 1);
                  if (v20 >= *(a1 + 32))
                  {
                    goto LABEL_22;
                  }

                  continue;
                }
              }

LABEL_30:
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v10 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                v30 = a1 + 48;
                if (*(a1 + 71) < 0)
                {
                  v30 = *v38;
                }

                *__s1 = 136315650;
                *&__s1[4] = v30;
                *&__s1[12] = 2080;
                *&__s1[14] = "ParseGlobalConfig";
                *&__s1[22] = 1024;
                LODWORD(v43) = v9;
                _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "[%s|%s] Unknown global param id %u", __s1, 0x1Cu);
              }

LABEL_38:

              goto LABEL_22;
            }

            v12 = *(a2 + 4536) - *(a2 + 4528);
            *__s1 = *(a2 + 4513);
            *&__s1[8] = v12;
            v13 = (*(a2 + 4584) - *(a2 + 4576)) >> 2;
            *&__s1[16] = (*(a2 + 4560) - *(a2 + 4552)) >> 2;
            v43 = v13;
            v14 = *(a2 + 4632) - *(a2 + 4624);
            v44 = (*(a2 + 4608) - *(a2 + 4600)) >> 2;
            v45 = v14;
            if (memcmp(__s1, &__s1[8], 0x28uLL))
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v10 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                v31 = a1 + 48;
                if (*(a1 + 71) < 0)
                {
                  v31 = *v38;
                }

                *__s1 = 136315394;
                *&__s1[4] = v31;
                *&__s1[12] = 2080;
                *&__s1[14] = "ParseFallbackSPAD";
                _os_log_error_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "[%s|%s] FallbackSPAD: inconsistent sizes", __s1, 0x16u);
              }

              goto LABEL_38;
            }
          }
        }

        else if (v9 - 11 >= 5)
        {
          goto LABEL_30;
        }
      }

      else if (v9 - 1 >= 6)
      {
        if (!*(v7 + 2 * v6))
        {
          LODWORD(v15) = *(a2 + 4100);
          *(a1 + 120) = LOBYTE(v15);
          v39 = v15;
          v16 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3267, 0, 0, &v39, 4);
          if (v16)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v17 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v32 = a1 + 48;
              if (*(a1 + 71) < 0)
              {
                v32 = *v38;
              }

              v33 = "disable";
              if (*(a1 + 120))
              {
                v33 = "enable";
              }

              *__s1 = 136315906;
              *&__s1[4] = v32;
              *&__s1[12] = 2080;
              *&__s1[14] = "ParseGlobalConfig";
              *&__s1[22] = 2080;
              v43 = v33;
              LOWORD(v44) = 1024;
              *(&v44 + 2) = v16;
              _os_log_error_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, "[%s|%s] Could not %s post-processing reverb, err = %d", __s1, 0x26u);
            }
          }

          goto LABEL_22;
        }

        if (v9 != 7)
        {
          goto LABEL_30;
        }

        if (*(a2 + 4488) >= 3u)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v10 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v34 = a1 + 48;
            if (*(a1 + 71) < 0)
            {
              v34 = *v38;
            }

            v35 = *(a2 + 4488);
            *__s1 = 136315650;
            *&__s1[4] = v34;
            *&__s1[12] = 2080;
            *&__s1[14] = "ParseBinauralization";
            *&__s1[22] = 1024;
            LODWORD(v43) = v35;
            _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "[%s|%s] Unknown HRTF type %u", __s1, 0x1Cu);
          }

          goto LABEL_38;
        }
      }

LABEL_22:
      ++v6;
    }

    while (v6 != v8);
  }
}

void sub_1DDF61D10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AUSM::Metadata::PImpl::ParseGroupConfig(uint64_t a1, unsigned __int16 *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a1 + 104);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 32);
      if (v7 <= v4)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= v4)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v8 = v6;
  v9 = (v6 + 5);
  v6[6] = v6[5];
  if (a2[1])
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v10 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v39 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v39 = *v39;
      }

      v41 = 136315394;
      v42 = v39;
      v43 = 2080;
      v44 = "ParseGroupConfig";
      _os_log_error_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "[%s|%s] Unexpected all-ASC group. Not Implemented.", &v41, 0x16u);
    }

LABEL_12:

    return;
  }

  if (*(a2 + 3) == 1)
  {
    v41 = a2[2];
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v6 + 5, &v41, &v42, 1uLL);
    if (*(a2 + 6) >= 3u)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v10 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = *(a2 + 6);
        v41 = 136315650;
        v42 = v11;
        v43 = 2080;
        v44 = "ParseGroupConfig";
        v45 = 1024;
        v46 = v12;
        _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "[%s|%s] Unknown ASC type %u", &v41, 0x1Cu);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = a2[9];
    if (*(a2 + 20) == 1)
    {
      v14 = a2[11];
      std::vector<unsigned int>::resize((v8 + 5), v13);
      v16 = v8[5];
      v15 = v8[6];
      if (v16 != v15)
      {
        v17 = 0;
        v18 = (v15 - v16 - 4) >> 2;
        v19 = vdupq_n_s64(v18);
        v20 = (v18 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v21 = (v16 + 8);
        do
        {
          v22 = vdupq_n_s64(v17);
          v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1DE095160)));
          if (vuzp1_s16(v23, *v19.i8).u8[0])
          {
            *(v21 - 2) = v14 + v17;
          }

          if (vuzp1_s16(v23, *&v19).i8[2])
          {
            *(v21 - 1) = v14 + v17 + 1;
          }

          if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1DE095150)))).i32[1])
          {
            *v21 = v14 + v17 + 2;
            v21[1] = v14 + v17 + 3;
          }

          v17 += 4;
          v21 += 4;
        }

        while (v20 != v17);
      }
    }

    else
    {
      v24 = *(a2 + 4) - *(a2 + 3);
      if (v13 != v24 >> 1)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v25 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v40 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v40 = *v40;
          }

          v41 = 136315394;
          v42 = v40;
          v43 = 2080;
          v44 = "ParseGroupConfig";
          _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "[%s|%s] Inconsistent member count in ASC ID list", &v41, 0x16u);
        }

        v24 = *(a2 + 4) - *(a2 + 3);
      }

      v26 = v24 >> 1;
      if (v26 >= v13)
      {
        LODWORD(v26) = v13;
      }

      if (v26)
      {
        v27 = 0;
        v28 = v8[6];
        v29 = 2 * v26;
        do
        {
          v30 = *(*(a2 + 3) + v27);
          v31 = v8[7];
          if (v28 >= v31)
          {
            v32 = *v9;
            v33 = v28 - *v9;
            v34 = v33 >> 2;
            v35 = (v33 >> 2) + 1;
            if (v35 >> 62)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v36 = v31 - v32;
            if (v36 >> 1 > v35)
            {
              v35 = v36 >> 1;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v37 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v37 = v35;
            }

            if (v37)
            {
              std::allocator<float>::allocate_at_least[abi:ne200100]((v8 + 5), v37);
            }

            *(4 * v34) = v30;
            v28 = (4 * v34 + 4);
            memcpy(0, v32, v33);
            v38 = v8[5];
            v8[5] = 0;
            v8[6] = v28;
            v8[7] = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v28 = v30;
            v28 += 4;
          }

          v8[6] = v28;
          v27 += 2;
        }

        while (v29 != v27);
      }
    }
  }
}

void sub_1DDF62270(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AUSM::Metadata::PImpl::ParseRendererData(AUSM *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = a1;
  v154 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 2);
  if (v7 >= 0x20)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v8 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v140 = (v6 + 48);
      if (*(v6 + 71) < 0)
      {
        v140 = *v140;
      }

      *buf = 136315394;
      v148 = v140;
      v149 = 2080;
      v150 = "ParseRendererData";
      _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "[%s|%s] Too many parameters", buf, 0x16u);
    }
  }

  else if (!*(a2 + 2))
  {
    return;
  }

  v9 = 0;
  if (v7 >= 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v7;
  }

  v143 = v10;
  v144 = a2 + 4;
  v142 = (v6 + 48);
  a4.n128_u64[0] = 136316162;
  while (2)
  {
    switch(*(v144 + 2 * v9))
    {
      case 0:
        v44 = *(a2 + 68);
        v45 = *(a2 + 84);
        v46 = 0.0;
        v47 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        if (v44 == 1)
        {
          if (*(a2 + 69) == 1)
          {
            v50 = *(a2 + 88);
            v51 = *(a2 + 92);
            v52 = *(a2 + 96);
            v47 = atan2f(v50, v51) * 57.296;
            v53 = hypotf(v50, v51);
            v48 = atan2f(v52, v53) * 57.296;
            a4.n128_f32[0] = hypotf(v53, v52);
            v49 = a4.n128_f32[0];
          }

          else
          {
            a4.n128_u32[0] = *(a2 + 72);
            v48 = *(a2 + 76);
            v47 = -a4.n128_f32[0];
            v49 = *(a2 + 80);
          }
        }

        v71 = 0.0;
        v72 = 0.0;
        if (v45)
        {
          v73 = *(a2 + 100);
          v74.i64[0] = vrev64q_s32(v73).u64[0];
          v74.i32[2] = vnegq_f32(v73).i32[2];
          v74.i32[3] = v73.i32[3];
          a4.n128_f32[0] = AUSM::auCoordQuaternionToEuler(a1, v74);
          v46 = a4.n128_f32[0];
          v71 = v75;
          v72 = v76;
        }

        v77 = *(a3 + 8);
        v79 = *v77;
        v78 = v77[1];
        while (1)
        {
          if (v79 == v78)
          {
            goto LABEL_13;
          }

          v80 = *v79;
          v81 = *v79 + 1;
          if (v81 >= *(v6 + 32))
          {
            break;
          }

          if (v44)
          {
            AUSM::Metadata::PImpl::setScheduledParameter(v6, 0, v80 + 1, *(a3 + 16), v47, *(a3 + 20));
            AUSM::Metadata::PImpl::setScheduledParameter(v6, 1u, v80 + 1, *(a3 + 16), v48, *(a3 + 20));
            a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, 2u, v80 + 1, *(a3 + 16), v49, *(a3 + 20));
          }

          if (v45)
          {
            AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x16u, v80 + 1, *(a3 + 16), v46, *(a3 + 20));
            AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x17u, v80 + 1, *(a3 + 16), v71, *(a3 + 20));
            a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x18u, v80 + 1, *(a3 + 16), v72, *(a3 + 20));
          }

          ++v79;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v138 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_303;
        }

        if (*(v6 + 71) < 0)
        {
          v141 = *v142;
        }

        else
        {
          v141 = v6 + 48;
        }

        *buf = 136315906;
        v148 = v141;
        v149 = 2080;
        v150 = "ParseRendererData";
        v151 = 1024;
        *v152 = v81;
        *&v152[4] = 1024;
        *&v152[6] = v80;
        goto LABEL_315;
      case 1:
        v17 = *(a3 + 8);
        v18 = *v17;
        v19 = v17[1];
        while (2)
        {
          if (v18 == v19)
          {
            goto LABEL_13;
          }

          v14 = *v18;
          v15 = *v18 + 1;
          if (v15 < *(v6 + 32))
          {
            v20 = *(a2 + 120);
            if (*(a2 + 116) == 1)
            {
              AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x19u, v14 + 1, *(a3 + 16), v20, *(a3 + 20));
              a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x1Au, v14 + 1, *(a3 + 16), *(a2 + 124), *(a3 + 20));
              if ((*(a2 + 117) & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x19u, v14 + 1, *(a3 + 16), v20 / 180.0, *(a3 + 20));
              a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x1Au, v14 + 1, *(a3 + 16), *(a2 + 124) / 90.0, *(a3 + 20));
              if (*(a2 + 117) != 1)
              {
LABEL_31:
                ++v18;
                continue;
              }
            }

            a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x1Bu, v14 + 1, *(a3 + 16), *(a2 + 128), *(a3 + 20));
            goto LABEL_31;
          }

          break;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v138 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          if (*(v6 + 71) < 0)
          {
            v139 = *v142;
          }

          else
          {
            v139 = v6 + 48;
          }

LABEL_312:
          *buf = 136315906;
          v148 = v139;
          v149 = 2080;
          v150 = "ParseRendererData";
          v151 = 1024;
          *v152 = v15;
          *&v152[4] = 1024;
          *&v152[6] = v14;
LABEL_315:
          _os_log_error_impl(&dword_1DDB85000, v138, OS_LOG_TYPE_ERROR, "[%s|%s] ParseRendererData: Input Element #%u for ASC #%u does not exist", buf, 0x22u);
        }

LABEL_303:

        return;
      case 2:
        a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 3u, a3, *(a2 + 132));
        if (!a1)
        {
          goto LABEL_13;
        }

        v21 = a1;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v22 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v97 = v6 + 48;
          if (*(v6 + 71) < 0)
          {
            v97 = *v142;
          }

          v98 = *a3;
          *buf = 136315906;
          v148 = v97;
          v149 = 2080;
          v150 = "ParseRendererData";
          v151 = 1024;
          *v152 = v21;
          *&v152[4] = 1024;
          *&v152[6] = v98;
          _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] Error %d setting Gain on group %u", buf, 0x22u);
        }

        goto LABEL_115;
      case 3:
        a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x21u, a3, *(a2 + 136));
        if (!a1)
        {
          goto LABEL_13;
        }

        v41 = a1;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v22 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v102 = v6 + 48;
          if (*(v6 + 71) < 0)
          {
            v102 = *v142;
          }

          v103 = *a3;
          *buf = 136315906;
          v148 = v102;
          v149 = 2080;
          v150 = "ParseRendererData";
          v151 = 1024;
          *v152 = v41;
          *&v152[4] = 1024;
          *&v152[6] = v103;
          _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] Error %d setting Diffuse on group %u", buf, 0x22u);
        }

        goto LABEL_115;
      case 4:
        v11 = *(a3 + 8);
        v12 = *v11;
        v13 = v11[1];
        while (2)
        {
          if (v12 == v13)
          {
            goto LABEL_13;
          }

          v14 = *v12;
          v15 = *v12 + 1;
          if (v15 < *(v6 + 32))
          {
            if (*(a2 + 140))
            {
              v16 = 1.0;
            }

            else
            {
              v16 = 0.0;
            }

            a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x20u, v14 + 1, *(a3 + 16), v16, *(a3 + 20));
            ++v12;
            continue;
          }

          break;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v138 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_303;
        }

        if (*(v6 + 71) < 0)
        {
          v139 = *v142;
        }

        else
        {
          v139 = v6 + 48;
        }

        goto LABEL_312;
      case 5:
        v24 = *(a3 + 8);
        v25 = *v24;
        v26 = v24[1];
        while (2)
        {
          if (v25 == v26)
          {
            goto LABEL_13;
          }

          v14 = *v25;
          v15 = *v25 + 1;
          if (v15 < *(v6 + 32))
          {
            AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x1Cu, v14 + 1, *(a3 + 16), *(a2 + 148), *(a3 + 20));
            v27 = 164;
            if (*(a2 + 152))
            {
              v27 = 160;
              v28 = 30;
            }

            else
            {
              v28 = 29;
            }

            a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, v28, v14 + 1, *(a3 + 16), *(a2 + v27), *(a3 + 20));
            ++v25;
            continue;
          }

          break;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v138 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_303;
        }

        if (*(v6 + 71) < 0)
        {
          v139 = *v142;
        }

        else
        {
          v139 = v6 + 48;
        }

        goto LABEL_312;
      case 6:
      case 0xE:
      case 0xF:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x15:
      case 0x17:
      case 0x18:
        goto LABEL_13;
      case 7:
        AUSM::Metadata::PImpl::ParseObjectZoneExclusion(v6, (a2 + 172), a3, a4);
        goto LABEL_13;
      case 8:
        v146 = *(a2 + 1037);
        v29 = *(a3 + 8);
        v30 = *v29;
        v31 = v29[1];
        while (v30 != v31)
        {
          v32 = *v30;
          v33 = *v30 + 1;
          a1 = AUSpatialMixerV2::SetAPACProperty(*(v6 + 40), 3242, 1, v33, &v146, 4);
          if (a1)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v34 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v35 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v35 = *v142;
              }

              *buf = 136315906;
              v148 = v35;
              v149 = 2080;
              v150 = "ParseRendererData";
              v151 = 1024;
              *v152 = v32;
              *&v152[4] = 1024;
              *&v152[6] = v33;
              _os_log_debug_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set binaural compatibility mode on sc #%u, input element #%u", buf, 0x22u);
            }
          }

          ++v30;
        }

        goto LABEL_13;
      case 9:
        v42 = *(a2 + 568);
        if ((v42 - 2) < 2)
        {
          goto LABEL_13;
        }

        if (v42 != 1)
        {
          if (*(a2 + 568))
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v116 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v116 = *v142;
              }

              v117 = *(a2 + 568);
              *buf = 136315650;
              v148 = v116;
              v149 = 2080;
              v150 = "ParseSceneReverb";
              v151 = 1024;
              *v152 = v117;
              _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Unknown param id %u", buf, 0x1Cu);
            }
          }

          else
          {
            a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 8u, a3, 0.0);
            if (!a1)
            {
              goto LABEL_13;
            }

            v43 = a1;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v118 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v118 = *v142;
              }

              v119 = *a3;
              *buf = 136315906;
              v148 = v118;
              v149 = 2080;
              v150 = "ParseSceneReverb";
              v151 = 1024;
              *v152 = v119;
              *&v152[4] = 1024;
              *&v152[6] = v43;
              _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not remove reverb by setting reverb blend to 0 for group id = %u, err = %d", buf, 0x22u);
            }
          }

          goto LABEL_209;
        }

        v146 = *(a2 + 570);
        v82 = AUSpatialMixerV2::SetAPACProperty(*(v6 + 40), 10, 0, 0, &v146, 4);
        if (v82)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v83 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            v121 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v121 = *v142;
            }

            v122 = *a3;
            *buf = 136315906;
            v148 = v121;
            v149 = 2080;
            v150 = "ParseSceneReverb";
            v151 = 1024;
            *v152 = v122;
            *&v152[4] = 1024;
            *&v152[6] = v82;
            _os_log_debug_impl(&dword_1DDB85000, v83, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set reverb preset for group id = #%u, err = %d", buf, 0x22u);
          }
        }

        if (*(a2 + 732) == 1)
        {
          v84 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 8u, a3, *(a2 + 728));
          if (v84)
          {
            v85 = v84;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v86 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              v134 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v134 = *v142;
              }

              v135 = *a3;
              *buf = 136315906;
              v148 = v134;
              v149 = 2080;
              v150 = "ParseSceneReverb";
              v151 = 1024;
              *v152 = v135;
              *&v152[4] = 1024;
              *&v152[6] = v85;
              _os_log_debug_impl(&dword_1DDB85000, v86, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set reverb blend for group id = %u, err = %d", buf, 0x22u);
            }
          }
        }

        v145 = 1;
        a1 = AUSpatialMixerV2::SetAPACProperty(*(v6 + 40), 1005, 0, 0, &v145, 4);
        v87 = a1;
        if (a1)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v23 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v125 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v125 = *v142;
            }

            v126 = *a3;
            *buf = 136315906;
            v148 = v125;
            v149 = 2080;
            v150 = "ParseSceneReverb";
            v151 = 1024;
            *v152 = v126;
            *&v152[4] = 1024;
            *&v152[6] = v87;
            _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not enable scene reverb for group id = %u, err = %d", buf, 0x22u);
          }

          goto LABEL_209;
        }

        goto LABEL_13;
      case 0xA:
        if (*(v6 + 120) != 1)
        {
          goto LABEL_13;
        }

        v65 = *(a2 + 780);
        if (v65 == 2)
        {
          v146 = 1;
          v89 = AUSpatialMixerV2::SetAPACProperty(*(v6 + 40), 3267, 0, 0, &v146, 4);
          if (v89)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v90 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              v131 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v131 = *v142;
              }

              *buf = 136315650;
              v148 = v131;
              v149 = 2080;
              v150 = "ParsePostProcessingReverb";
              v151 = 1024;
              *v152 = v89;
              _os_log_debug_impl(&dword_1DDB85000, v90, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not enable the PP reverb: err = %d", buf, 0x1Cu);
            }
          }

          a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x23u, a3, 50.0);
          if (a1)
          {
            v91 = a1;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_209;
            }

            v133 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v133 = *v142;
            }

LABEL_284:
            v137 = *a3;
            *buf = 136315906;
            v148 = v133;
            v149 = 2080;
            v150 = "ParsePostProcessingReverb";
            v151 = 1024;
            *v152 = v137;
            *&v152[4] = 1024;
            *&v152[6] = v91;
            _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set the post-processing reverb blend to 50 on group id = %u, err = %d", buf, 0x22u);
LABEL_209:
          }
        }

        else if (v65 == 1)
        {
          v146 = 1;
          v88 = AUSpatialMixerV2::SetAPACProperty(*(v6 + 40), 3267, 0, 0, &v146, 4);
          if (v88)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v130 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v130 = *v142;
              }

              *buf = 136315650;
              v148 = v130;
              v149 = 2080;
              v150 = "ParsePostProcessingReverb";
              v151 = 1024;
              *v152 = v88;
              _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not enable the PP ERs: err = %d", buf, 0x1Cu);
            }

            goto LABEL_209;
          }

          LOBYTE(v145) = 0;
          v95 = AUSpatialMixerV2::SetAPACProperty(*(v6 + 40), 3262, 0, 0, &v145, 1);
          if (v95)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v96 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              v136 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v136 = *v142;
              }

              *buf = 136315650;
              v148 = v136;
              v149 = 2080;
              v150 = "ParsePostProcessingReverb";
              v151 = 1024;
              *v152 = v95;
              _os_log_debug_impl(&dword_1DDB85000, v96, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not disable the PP late reverb: err = %d", buf, 0x1Cu);
            }
          }

          a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x23u, a3, 50.0);
          if (a1)
          {
            v91 = a1;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v133 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v133 = *v142;
              }

              goto LABEL_284;
            }

            goto LABEL_209;
          }
        }

        else
        {
          if (!*(a2 + 780))
          {
            a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x23u, a3, 0.0);
            if (!a1)
            {
              goto LABEL_13;
            }

            v66 = a1;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v129 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v129 = *v142;
              }

LABEL_272:
              v132 = *a3;
              *buf = 136315906;
              v148 = v129;
              v149 = 2080;
              v150 = "ParsePostProcessingReverb";
              v151 = 1024;
              *v152 = v132;
              *&v152[4] = 1024;
              *&v152[6] = v66;
              _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set the post-processing reverb blend to 0 on group id = %u, err = %d", buf, 0x22u);
              goto LABEL_209;
            }

            goto LABEL_209;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v92 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v120 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v120 = *v142;
            }

            *buf = 136315394;
            v148 = v120;
            v149 = 2080;
            v150 = "ParsePostProcessingReverb";
            _os_log_debug_impl(&dword_1DDB85000, v92, OS_LOG_TYPE_DEBUG, "[%s|%s] Invalid PP reverb", buf, 0x16u);
          }

          a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x23u, a3, 0.0);
          if (a1)
          {
            v66 = a1;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v129 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v129 = *v142;
              }

              goto LABEL_272;
            }

            goto LABEL_209;
          }
        }

LABEL_13:
        if (++v9 == v143)
        {
          return;
        }

        continue;
      case 0xB:
        v36 = *(a2 + 792);
        if (v36 > 1)
        {
          if (v36 == 2)
          {
            goto LABEL_13;
          }

          if (v36 != 3)
          {
LABEL_166:
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v114 = v6 + 48;
              if (*(v6 + 71) < 0)
              {
                v114 = *v142;
              }

              v115 = *(a2 + 792);
              *buf = 136315650;
              v148 = v114;
              v149 = 2080;
              v150 = "ParseRadiationPattern";
              v151 = 1024;
              *v152 = v115;
              _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Unsupported index: %u", buf, 0x1Cu);
            }

            goto LABEL_209;
          }

          if (*(a2 + 808) < 4u)
          {
            goto LABEL_13;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v23 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v127 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v127 = *v142;
            }

            v128 = *(a2 + 808);
            *buf = 136315650;
            v148 = v127;
            v149 = 2080;
            v150 = "ParseParametricRadiationPattern";
            v151 = 1024;
            *v152 = v128;
            _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Unsupported directivity model: %u", buf, 0x1Cu);
          }
        }

        else
        {
          if (!*(a2 + 792))
          {
            goto LABEL_13;
          }

          if (v36 != 1)
          {
            goto LABEL_166;
          }

          v146 = *(a2 + 794);
          a1 = AUSM::Metadata::PImpl::setAPACPropertyOnGroup(v6, 3269, a3, &v146, 4);
          v37 = a1;
          if (!a1)
          {
            goto LABEL_13;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v23 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v123 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v123 = *v142;
            }

            v124 = *a3;
            *buf = 136316162;
            v148 = v123;
            v149 = 2080;
            v150 = "ParseRadiationPattern";
            v151 = 1024;
            *v152 = v146;
            *&v152[4] = 1024;
            *&v152[6] = v124;
            LOWORD(v153[0]) = 1024;
            *(v153 + 2) = v37;
            _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set directivity index %u for group #%u: err = %d", buf, 0x28u);
          }
        }

        goto LABEL_209;
      case 0xC:
        v38 = *(a2 + 1024);
        if (*(a2 + 1024))
        {
          v39 = 1.0;
        }

        else
        {
          v39 = 0.0;
        }

        a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x27u, a3, v39);
        if (!a1)
        {
          goto LABEL_13;
        }

        v40 = a1;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v23 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v99 = v6 + 48;
          if (*(v6 + 71) < 0)
          {
            v99 = *v142;
          }

          v100 = *a3;
          v101 = "non-bypass";
          if (v38)
          {
            v101 = "bypass";
          }

          *buf = 136316162;
          v148 = v99;
          v149 = 2080;
          v150 = "ParseHeadphoneVirtualize";
          v151 = 2080;
          *v152 = v101;
          *&v152[8] = 1024;
          v153[0] = v100;
          LOWORD(v153[1]) = 1024;
          *(&v153[1] + 2) = v40;
          _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set the headphoneVirtualise to %s on group id = %u, err = %d", buf, 0x2Cu);
        }

        goto LABEL_209;
      case 0xD:
        if (*(a2 + 1032))
        {
          v54 = 1.0;
        }

        else
        {
          v54 = 0.0;
        }

        v55 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x1Fu, a3, v54);
        if (v55)
        {
          v56 = v55;
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v57 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v104 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v104 = *v142;
            }

            v105 = *a3;
            v106 = "true";
            if (!*(a2 + 1032))
            {
              v106 = "false";
            }

            *buf = 136316162;
            v148 = v104;
            v149 = 2080;
            v150 = "ParseHeadLock";
            v151 = 1024;
            *v152 = v56;
            *&v152[4] = 1024;
            *&v152[6] = v105;
            LOWORD(v153[0]) = 2080;
            *(v153 + 2) = v106;
            _os_log_debug_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_DEBUG, "[%s|%s] Error %d setting HeadLocked on group id = %u to %s", buf, 0x2Cu);
          }
        }

        v58 = *(a2 + 1033);
        if (*(a2 + 1033))
        {
          v59 = 0.0;
        }

        else
        {
          v59 = 1.0;
        }

        v60 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x27u, a3, v59);
        if (v60)
        {
          v61 = v60;
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v62 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v107 = v6 + 48;
            if (*(v6 + 71) < 0)
            {
              v107 = *v142;
            }

            v108 = *a3;
            v109 = "true";
            if (v58)
            {
              v109 = "false";
            }

            *buf = 136316162;
            v148 = v107;
            v149 = 2080;
            v150 = "ParseHeadLock";
            v151 = 1024;
            *v152 = v61;
            *&v152[4] = 1024;
            *&v152[6] = v108;
            LOWORD(v153[0]) = 2080;
            *(v153 + 2) = v109;
            _os_log_debug_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_DEBUG, "[%s|%s] Error %d setting Internalized on group id = %u to %s", buf, 0x2Cu);
          }
        }

        if (v58)
        {
          v63 = 45.0;
        }

        else
        {
          v63 = 30.0;
        }

        a1 = AUSM::Metadata::PImpl::setParameterOnGroup(v6, 0x28u, a3, v63);
        if (!a1)
        {
          goto LABEL_13;
        }

        v64 = a1;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v22 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v110 = v6 + 48;
          if (*(v6 + 71) < 0)
          {
            v110 = *v142;
          }

          v111 = *a3;
          *buf = 136316162;
          v148 = v110;
          v149 = 2080;
          v150 = "ParseHeadLock";
          v151 = 1024;
          *v152 = v64;
          *&v152[4] = 1024;
          *&v152[6] = v111;
          LOWORD(v153[0]) = 2048;
          *(v153 + 2) = v63;
          _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] Error %d setting StereoPanningRefAngle on group id = %u to %f", buf, 0x2Cu);
        }

LABEL_115:

        goto LABEL_13;
      case 0x10:
        v67 = *(a3 + 8);
        v68 = *v67;
        v69 = v67[1];
        while (v68 != v69)
        {
          v70 = *v68++;
          a1 = AUSM::Metadata::PImpl::setScheduledParameter(v6, 0x29u, v70 + 1, *(a3 + 16), *(a2 + 1040), *(a3 + 20));
        }

        goto LABEL_13;
      case 0x16:
        if (*(a2 + 1200) < 3u)
        {
          goto LABEL_13;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v23 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v112 = v6 + 48;
          if (*(v6 + 71) < 0)
          {
            v112 = *v142;
          }

          v113 = *(a2 + 1200);
          *buf = 136315650;
          v148 = v112;
          v149 = 2080;
          v150 = "ParseHOARenderingMatrix";
          v151 = 1024;
          *v152 = v113;
          _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Unknown data location index %u", buf, 0x1Cu);
        }

        goto LABEL_209;
      default:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v23 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v93 = v6 + 48;
          if (*(v6 + 71) < 0)
          {
            v93 = *v142;
          }

          v94 = *(v144 + 2 * v9);
          *buf = 136315650;
          v148 = v93;
          v149 = 2080;
          v150 = "ParseRendererData";
          v151 = 1024;
          *v152 = v94;
          _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Unknown param id %u", buf, 0x1Cu);
        }

        goto LABEL_209;
    }
  }
}

void sub_1DDF64090(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSM::Metadata::PImpl::setScheduledParameter(AUSM::Metadata::PImpl *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5, unsigned int a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (AUSM::Metadata::mTraceLevel >= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v12 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = (this + 48);
      if (*(this + 71) < 0)
      {
        v13 = *v13;
      }

      v15 = 136316930;
      v16 = v13;
      LOWORD(v17) = 2080;
      *(&v17 + 2) = "setScheduledParameter";
      WORD5(v17) = 1024;
      HIDWORD(v17) = a2;
      *v18 = 1024;
      *&v18[2] = 1;
      v19 = 1024;
      v20 = a3;
      v21 = 2048;
      v22 = a5;
      v23 = 1024;
      v24 = a4;
      v25 = 1024;
      v26 = a6;
      _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_INFO, "[%s|%s] MetadataSetParameter param = %u, scope = %u, element = %u, value = %f, offset = %d, duration = %u", &v15, 0x3Eu);
    }
  }

  if (*(this + 92) == 1 && *(this + 93) <= 2u)
  {
    v15 = 1;
    v16 = __PAIR64__(a2, a3);
    LODWORD(v17) = 3;
    DWORD1(v17) = a4;
    *(&v17 + 1) = 0;
    *v18 = a5;
    return (*(**(this + 5) + 168))(*(this + 5), &v15, 1);
  }

  else
  {
    v15 = 1;
    v16 = __PAIR64__(a2, a3);
    LODWORD(v17) = 4;
    *(&v17 + 4) = __PAIR64__(a6, a4);
    HIDWORD(v17) = 0;
    *v18 = a5;
    return (*(**(this + 5) + 168))(*(this + 5), &v15, 1);
  }
}

void sub_1DDF642E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDF6428CLL);
}

void sub_1DDF64364(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DDF642ECLL);
}

uint64_t AUSM::Metadata::PImpl::setParameterOnGroup(AUSM::Metadata::PImpl *this, unsigned int a2, int *a3, float a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 1);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
    return 0;
  }

  while (1)
  {
    v11 = *v5;
    v12 = *v5 + 1;
    if (v12 >= *(this + 8))
    {
      break;
    }

    result = AUSM::Metadata::PImpl::setScheduledParameter(this, a2, v12, a3[4], a4, a3[5]);
    if (result)
    {
      return result;
    }

    if (++v5 == v6)
    {
      return 0;
    }
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v14 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = (this + 48);
    if (*(this + 71) < 0)
    {
      v15 = *v15;
    }

    v16 = *a3;
    v17 = 136315906;
    v18 = v15;
    v19 = 2080;
    v20 = "setParameterOnGroup";
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = v16;
    _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "[%s|%s] Can't set APAC parameter: ASC #%u referenced for group #%u but no input element exists for it", &v17, 0x22u);
  }

  return 4294956419;
}

void AUSM::Metadata::PImpl::ParseObjectZoneExclusion(uint64_t a1, _BYTE *a2, int *a3, __n128 a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*a2 == 1)
  {
    if ((a2[1] & 1) == 0)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      if (a2[3])
      {
        v7 = 0;
        v35 = a2 + 19;
        v36 = a2 + 36;
        v34 = (a1 + 48);
        a4.n128_u64[0] = 136316162;
        v32 = a4;
        a4.n128_u64[0] = 136315906;
        v33 = a4;
        do
        {
          if (a2[v7 + 4] == 1)
          {
            AUSM::ExclusionZone::getPreset(v35[v7], &v38);
          }

          else
          {
            v9 = &v36[24 * v7];
            if (a2[2] == 1)
            {
              *buf = 1;
              *v42 = *v9;
              *&v42[16] = v9[1].i64[0];
            }

            else
            {
              *buf = 0;
              *v42 = vextq_s8(*v9, *v9, 8uLL);
            }

            std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](&v38, buf);
          }

          v10 = v38;
          if (v38 == v39)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            v12 = v38;
            do
            {
              v14 = *v12;
              v12 += 7;
              v13 = v14;
              v15 = v11 + 5;
              if (v14)
              {
                v15 = v11;
              }

              if (v13 == 1)
              {
                v11 += 7;
              }

              else
              {
                v11 = v15;
              }
            }

            while (v12 != v39);
          }

          MEMORY[0x1EEE9AC00](v8);
          v17 = &v32 - v16;
          AUSM::ExclusionZone::arrayFromZones(v10, v18, &v32 - v16);
          v19 = AUSM::Metadata::PImpl::setAPACPropertyOnGroup(a1, 3226, a3, v17, (4 * v11));
          if (v19)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v20 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v23 = v34;
              if (*(a1 + 71) < 0)
              {
                v23 = *v34;
              }

              v24 = *a3;
              *buf = v33.n128_u32[0];
              *v42 = v23;
              *&v42[8] = 2080;
              *&v42[10] = "ParseObjectZoneExclusion";
              *&v42[18] = 1024;
              *&v42[20] = v24;
              *&v42[24] = 1024;
              *&v42[26] = v19;
              _os_log_error_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "[%s|%s] Could not set exclusion zone array on group %u, err = %d", buf, 0x22u);
            }
          }

          v37 = v19 == 0;
          v21 = AUSM::Metadata::PImpl::setAPACPropertyOnGroup(a1, 3224, a3, &v37, 4);
          if (v21)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v22 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v25 = v34;
              if (*(a1 + 71) < 0)
              {
                v25 = *v34;
              }

              v26 = "enable";
              if (!v37)
              {
                v26 = "disable";
              }

              v27 = *a3;
              *buf = v32.n128_u32[0];
              *v42 = v25;
              *&v42[8] = 2080;
              *&v42[10] = "ParseObjectZoneExclusion";
              *&v42[18] = 2080;
              *&v42[20] = v26;
              *&v42[28] = 1024;
              v43 = v27;
              v44 = 1024;
              v45 = v21;
              _os_log_error_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "[%s|%s] Could not %s exclusion zone on group %u, err = %d", buf, 0x2Cu);
            }
          }

          ++v7;
        }

        while (v7 < a2[3]);
        if (v10)
        {
          operator delete(v10);
        }
      }
    }
  }

  else
  {
    LODWORD(v38) = 0;
    v28 = AUSM::Metadata::PImpl::setAPACPropertyOnGroup(a1, 3224, a3, &v38, 4);
    if (v28)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v29 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v30 = *v30;
        }

        v31 = *a3;
        *buf = 136315906;
        *v42 = v30;
        *&v42[8] = 2080;
        *&v42[10] = "ParseObjectZoneExclusion";
        *&v42[18] = 1024;
        *&v42[20] = v31;
        *&v42[24] = 1024;
        *&v42[26] = v28;
        _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "[%s|%s] Could not disable exclusion zone for group %u, err = %d", buf, 0x22u);
      }
    }
  }
}

void sub_1DDF649A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AUSM::Metadata::PImpl::setAPACPropertyOnGroup(uint64_t a1, uint64_t a2, int *a3, void *a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 1);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    return 0;
  }

  while (1)
  {
    v13 = *v6;
    v14 = (*v6 + 1);
    if (v14 >= *(a1 + 32))
    {
      break;
    }

    result = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), a2, 1, v14, a4, a5);
    if (result)
    {
      return result;
    }

    if (++v6 == v7)
    {
      return 0;
    }
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v16 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v17 = *v17;
    }

    v18 = *a3;
    v19 = 136315906;
    v20 = v17;
    v21 = 2080;
    v22 = "setAPACPropertyOnGroup";
    v23 = 1024;
    v24 = v13;
    v25 = 1024;
    v26 = v18;
    _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] Can't set APAC property: ASC #%u referenced for group #%u but no input element exists for it", &v19, 0x22u);
  }

  return 4294956419;
}

APAC::Metadata *APAC::Metadata::Metadata(APAC::Metadata *this)
{
  v2 = 0;
  v48 = this + 1450369;
  v49 = this + 1455201;
  v47 = this + 1445216;
  v50 = this + 206708;
  *this = 0xFFFF;
  *(this + 2) = 769;
  *(this + 6) = 0;
  v3 = this + 173164;
  *(this + 8) = 0;
  do
  {
    v4 = this + v2;
    *(v4 + 6) = 256;
    *(v4 + 4) = 0;
    v2 += 28;
  }

  while (v2 != 420);
  v5 = 0;
  *(this + 432) = 0;
  *(this + 218) = 0;
  do
  {
    v6 = this + v5;
    v6[578] = 0;
    *(v6 + 147) = 0;
    *(this + v5 + 591) = 0;
    v6[596] = 0;
    *(v6 + 150) = 0;
    *(v6 + 302) = 0;
    v6[608] = 0;
    *(this + v5 + 612) = 0;
    *(v6 + 155) = 0;
    *(v6 + 143) = 0;
    v6[576] = 0;
    *(v6 + 145) = 0;
    *(this + v5 + 583) = 0;
    *(v6 + 110) = 0;
    v5 += 216;
    v6[444] = 0;
  }

  while (v5 != 27432);
  *(this + 27872) = 0;
  v7 = 145288;
  v8 = 27876;
  v9 = 27992;
  v10 = 27990;
  v11 = 27989;
  v12 = 27988;
  v13 = 27952;
  v14 = 27944;
  v15 = 27940;
  v16 = 27937;
  v17 = 27936;
  v18 = 27932;
  v19 = 27928;
  v20 = 27892;
  v21 = 27910;
  v22 = 27896;
  v23 = 27900;
  do
  {
    *(this + v20) = 0;
    *(this + v22) = 0;
    *(this + v23) = 0;
    *(this + v21) = 0;
    v24 = this + v8;
    *(v24 + 47) = 0;
    *(v24 + 11) = 0;
    *(this + v19) = 0;
    *(this + v18) = 0;
    *(this + v17) = 0;
    *(this + v16) = 0;
    *(this + v15) = 0;
    *(this + v14) = 0;
    *(this + v13) = 0;
    v24[32] = 0;
    v8 += 1144;
    *(v24 + 7) = 0;
    *(v24 + 9) = 0;
    *(v24 + 39) = 0;
    *(this + v10) = 0;
    *(this + v9) = 0;
    v9 += 1144;
    v10 += 1144;
    *(this + v12) = 0;
    *(this + v11) = 0;
    v11 += 1144;
    v12 += 1144;
    v13 += 1144;
    v14 += 1144;
    v15 += 1144;
    v16 += 1144;
    v17 += 1144;
    v24[4] = 0;
    v18 += 1144;
    v19 += 1144;
    *v24 = 0;
    v20 += 1144;
    v21 += 1144;
    *(v24 + 2) = 0;
    v22 += 1144;
    v23 += 1144;
    *(v24 + 11) = 0;
    v7 -= 1144;
  }

  while (v7);
  *v3 = 0;
  *(v3 + 1) = 0;
  v25 = v3 + 1253;
  v26 = 32512;
  *(v3 + 514) = 0;
  do
  {
    *(v25 - 89) = 0;
    *(v25 - 85) = 0;
    *(v25 - 78) = 0;
    *(v25 - 221) = 0;
    *(v25 - 217) = 0;
    *(v25 - 37) = 1;
    *(v25 - 45) = 0;
    *(v25 - 5) = 0;
    *(v25 - 41) = 0uLL;
    *(v25 - 25) = 0uLL;
    *(v25 - 9) = 0;
    *(v25 - 1) = 0;
    v25 += 256;
    v26 -= 256;
  }

  while (v26);
  v27 = 206784;
  v28 = 206786;
  *v50 = 0;
  v29 = 206812;
  v30 = 206836;
  v31 = 206844;
  v32 = 206852;
  v33 = 206884;
  v34 = 4;
  do
  {
    v35 = &v50[v34];
    *v35 = 0;
    v35[4] = 0;
    v35[8] = 0;
    *(v35 + 3) = 0;
    *(v35 + 8) = 256;
    *(v35 + 14) = 0;
    *(v35 + 8) = 0;
    *(v35 + 5) = 0;
    *(v35 + 23) = 0;
    v35[36] = 0;
    v35[40] = 0;
    *(v35 + 11) = 0;
    *(v35 + 24) = 256;
    *(v35 + 30) = 0;
    v36 = v30;
    *(v35 + 16) = 0;
    v37 = v31;
    v38 = v29;
    *(v35 + 13) = 0;
    v39 = v28;
    v40 = v32;
    *(v35 + 55) = 0;
    v41 = v27;
    v42 = v33;
    v43 = 7500;
    *(v35 + 34) = 0;
    do
    {
      v44 = this + v41;
      *v44 = 0;
      *(this + v39) = 0;
      v44[4] = 0;
      v44[20] = 0;
      v44[24] = 0;
      *(this + v38) = 0;
      v44[32] = 0;
      v45 = (this + v42);
      *(v45 - 59) = 0;
      *(v45 - 8) = 0;
      v44[49] = 1;
      *(this + v36) = 0;
      *(this + v37) = 0;
      v44[56] = 0;
      *(v44 + 32) = 0;
      *(this + v40) = 0;
      v44[72] = 0;
      v42 += 500;
      *(v45 - 3) = 0;
      *(v45 - 2) = 0;
      v41 += 500;
      v40 += 500;
      *(v45 - 10) = 0;
      v39 += 500;
      v38 += 500;
      *v45 = 0;
      v37 += 500;
      v36 += 500;
      *(v45 + 3) = 0;
      v43 -= 500;
    }

    while (v43);
    *(v35 + 3786) = 0;
    *(v35 + 947) = 0;
    *(v35 + 7583) = 0;
    *(v35 + 7587) = 1;
    v35[7616] = 0;
    *(v35 + 1914) = 0;
    *(v35 + 7620) = 0uLL;
    *(v35 + 7636) = 0uLL;
    v34 += 9752;
    v35[7652] = 0;
    v33 += 9752;
    v27 += 9752;
    v32 += 9752;
    *(v35 + 3830) = 0;
    v35[7696] = 0;
    v28 += 9752;
    v29 += 9752;
    v31 += 9752;
    v30 += 9752;
    *(v35 + 3849) = 0;
    v35[8724] = 0;
    *(v35 + 4363) = 0;
  }

  while (v34 != 1238508);
  *v47 = 0;
  *(v47 + 1) = 0;
  *(v47 + 516) = 0;
  *(v47 + 520) = 0;
  v47[1048] = 0;
  *(v47 + 525) = 0;
  *(this + 362591) = 0;
  *(this + 1450368) = 0;
  *v48 = 4;
  *(v48 + 1) = 0;
  *(v48 + 11) = 1065353216;
  v48[15] = 0;
  *(this + 90652) = 0u;
  *(this + 90653) = 0u;
  *(this + 90654) = 0u;
  *(this + 90655) = 0u;
  *(this + 90656) = 0u;
  *(this + 90657) = 0u;
  *(this + 90658) = 0u;
  *(this + 90659) = 0u;
  *(this + 90660) = 0u;
  *(this + 90661) = 0u;
  *(this + 90662) = 0u;
  *(this + 1450605) = 0;
  v48[375] = 0;
  *(v48 + 393) = 0;
  v48[399] = 0;
  *(v48 + 401) = 0;
  *(v48 + 407) = 0;
  *(this + 1450916) = 0;
  *(this + 1450921) = 0;
  *(v48 + 563) = 0;
  *(this + 181367) = 0;
  *(this + 1450941) = 0;
  v48[611] = 0;
  *(v48 + 613) = 0;
  v48[615] = 0;
  *(this + 1450986) = 0;
  *(this + 725497) = 0;
  *(v48 + 631) = 0;
  *(this + 1450388) = 0u;
  *(this + 1450404) = 0u;
  *(this + 1450419) = 0;
  *(this + 1450753) = 0;
  *(this + 1450748) = 0;
  *(this + 1450897) = 0u;
  *(this + 1450872) = 0u;
  *(this + 1450888) = 0u;
  *(this + 1450840) = 0u;
  *(this + 1450856) = 0u;
  *(this + 1450808) = 0u;
  *(this + 1450824) = 0u;
  *(this + 1450792) = 0u;
  *(v48 + 719) = 0;
  bzero(this + 1451096, 0x1288uLL);
  *(this + 1451066) = 0u;
  *(this + 90690) = 0u;
  *(this + 90691) = 0u;
  *(this + 90688) = 0u;
  *(this + 90689) = 0u;
  *v49 = 4;
  *(v49 + 11) = 1065353216;
  v49[632] = 0;
  *(this + 1455220) = 0u;
  *(this + 1455236) = 0u;
  *(this + 1455251) = 0;
  *(this + 90954) = 0u;
  *(this + 90955) = 0u;
  *(this + 90956) = 0u;
  *(this + 90957) = 0u;
  *(this + 90958) = 0u;
  *(this + 90959) = 0u;
  *(this + 90960) = 0u;
  *(this + 90961) = 0u;
  *(this + 90962) = 0u;
  *(this + 90963) = 0u;
  *(this + 90964) = 0u;
  *(this + 1455437) = 0;
  *(this + 1455585) = 0;
  *(this + 1455580) = 0;
  *(this + 1455624) = 0u;
  *(this + 1455640) = 0u;
  *(this + 1455656) = 0u;
  *(this + 1455672) = 0u;
  *(this + 1455688) = 0u;
  *(this + 1455704) = 0u;
  *(this + 1455720) = 0u;
  *(this + 1455729) = 0u;
  *(this + 1455748) = 0;
  *(this + 1455753) = 0;
  *(this + 181971) = 0;
  *(this + 1455773) = 0;
  *(this + 1455818) = 0;
  *(this + 727913) = 0;
  *(this + 181988) = 0;
  *(this + 90992) = 0u;
  *(this + 90993) = 0u;
  *(this + 90990) = 0u;
  *(this + 90991) = 0u;
  return this;
}

void AUSM::Metadata::PImpl::ParseSceneComponentStaticData(uint64_t a1, unsigned __int8 *a2, __n128 a3)
{
  v99 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    return;
  }

  v4 = a2;
  v6 = 0;
  v84 = a2 + 4;
  v82 = (a1 + 48);
  v7 = a2 + 84;
  a3.n128_u64[0] = 136315394;
  v78 = a3;
  a3.n128_u64[0] = 136315906;
  v79 = a3;
  a3.n128_u64[0] = 136316162;
  v80 = a3;
  a3.n128_u64[0] = 136315650;
  v77 = a3;
  v81 = a2;
  do
  {
    v8 = &v84[1144 * v6];
    v9 = *v8;
    if (v9 + 1 >= *(a1 + 32))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v75 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 71) < 0)
        {
          v76 = *v82;
        }

        else
        {
          v76 = v82;
        }

        *buf = v79.n128_u32[0];
        v90 = v76;
        v91 = 2080;
        v92 = "ParseSceneComponentStaticData";
        v93 = 1024;
        v94 = v9 + 1;
        v95 = 1024;
        v96 = v9;
        _os_log_error_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_ERROR, "[%s|%s] Input Element #%u referenced for sceneComponentID #%u does not exist", buf, 0x22u);
      }

      return;
    }

    v10 = v8[1];
    v86 = *(v8 + 2);
    if (v8[28] != 1)
    {
      goto LABEL_142;
    }

    v11 = v8[29];
    if (v11 >= 0x20)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v12 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v74 = v82;
        if (*(a1 + 71) < 0)
        {
          v74 = *v82;
        }

        *buf = v78.n128_u32[0];
        v90 = v74;
        v91 = 2080;
        v92 = "ParseSceneComponentStaticData";
        _os_log_error_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "[%s|%s] Too many parameters for ProprietaryStaticData", buf, 0x16u);
      }

      v11 = v8[29];
    }

    if (!v11)
    {
LABEL_142:
      v59 = AUSM::Metadata::PImpl::setParameter(*(a1 + 40), 8, v9 + 1, 0.0);
      if (v59)
      {
        v60 = v59;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v61 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v72 = v82;
          if (*(a1 + 71) < 0)
          {
            v72 = *v82;
          }

          *buf = v80.n128_u32[0];
          v90 = v72;
          v91 = 2080;
          v92 = "ParseSceneComponentStaticData";
          v93 = 1024;
          v94 = v9;
          v95 = 1024;
          v96 = v9 + 1;
          v97 = 1024;
          v98 = v60;
          _os_log_debug_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not clear reverb blend on sc #%u, input element #%u, err = %d", buf, 0x28u);
        }
      }

      goto LABEL_147;
    }

    v83 = v10;
    v85 = 0;
    if (v11 >= 0x1F)
    {
      v13 = 31;
    }

    else
    {
      v13 = v11;
    }

    v14 = v7;
    do
    {
      v15 = *v14;
      if (v15 <= 3)
      {
        if (v15 < 3)
        {
          goto LABEL_68;
        }

        v21 = v8[34];
        if (v21 > 1)
        {
          if (v21 != 2 && v21 != 3)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (!v8[34])
          {
            goto LABEL_68;
          }

          if (v21 != 1)
          {
LABEL_70:
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v17 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v34 = v82;
              if (*(a1 + 71) < 0)
              {
                v34 = *v82;
              }

              *buf = v80.n128_u32[0];
              v90 = v34;
              v91 = 2080;
              v92 = "ParseSceneComponentStaticData";
              v93 = 1024;
              v94 = v21;
              v95 = 1024;
              v96 = v9;
              v97 = 1024;
              v98 = v9 + 1;
              v19 = v17;
              v20 = "[%s|%s] Unsupported reverbProcIndex %u on sc #%u, input element #%u";
LABEL_109:
              v33 = 40;
LABEL_110:
              _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, v20, buf, v33);
            }

LABEL_64:

            goto LABEL_68;
          }

          v88 = *(v8 + 18);
          v22 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 10, 0, 0, &v88, 4);
          if (v22)
          {
            v23 = v22;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v24 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v52 = v82;
              if (*(a1 + 71) < 0)
              {
                v52 = *v82;
              }

              *buf = v80.n128_u32[0];
              v90 = v52;
              v91 = 2080;
              v92 = "ParseSceneComponentStaticData";
              v93 = 1024;
              v94 = v9;
              v95 = 1024;
              v96 = v9 + 1;
              v97 = 1024;
              v98 = v23;
              _os_log_debug_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set reverb preset for sc #%u, input element #%u, err = %d", buf, 0x28u);
            }
          }

          LOBYTE(v3) = v8[38];
          v87 = 1;
          v25 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 1005, 0, 0, &v87, 4);
          if (v25)
          {
            v26 = v25;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v27 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v53 = v82;
              if (*(a1 + 71) < 0)
              {
                v53 = *v82;
              }

              *buf = v80.n128_u32[0];
              v90 = v53;
              v91 = 2080;
              v92 = "ParseSceneComponentStaticData";
              v93 = 1024;
              v94 = v9;
              v95 = 1024;
              v96 = v9 + 1;
              v97 = 1024;
              v98 = v26;
              _os_log_debug_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not enable the scene reverb on scene component = %u, input = %u, err = %d", buf, 0x28u);
            }
          }

          if (AUSM::Metadata::PImpl::setParameter(*(a1 + 40), 8, v9 + 1, v3))
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v28 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v54 = v82;
              if (*(a1 + 71) < 0)
              {
                v54 = *v82;
              }

              *buf = v79.n128_u32[0];
              v90 = v54;
              v91 = 2080;
              v92 = "ParseSceneComponentStaticData";
              v93 = 1024;
              v94 = v9;
              v95 = 1024;
              v96 = v9 + 1;
              _os_log_debug_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set reverb blend on sc #%u, input element #%u", buf, 0x22u);
            }
          }
        }

        v85 = 1;
      }

      else
      {
        if (v15 - 6 < 3)
        {
          goto LABEL_68;
        }

        if (v15 == 4)
        {
          if (*(a1 + 120) != 1)
          {
            goto LABEL_53;
          }

          v29 = v8[42];
          if (v29 == 2)
          {
            v88 = 1;
            v39 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3267, 0, 0, &v88, 4);
            if (v39)
            {
              v40 = v39;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v41 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                v57 = v82;
                if (*(a1 + 71) < 0)
                {
                  v57 = *v82;
                }

                *buf = v77.n128_u32[0];
                v90 = v57;
                v91 = 2080;
                v92 = "ParseSceneComponentStaticData";
                v93 = 1024;
                v94 = v40;
                _os_log_debug_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not enable the PP reverb: err = %d", buf, 0x1Cu);
              }
            }

            v42 = AUSM::Metadata::PImpl::setParameter(*(a1 + 40), 35, v9 + 1, 50.0);
            if (v42)
            {
              v43 = v42;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v17 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_64;
              }

              v44 = v82;
              if (*(a1 + 71) < 0)
              {
                v44 = *v82;
              }

              goto LABEL_98;
            }
          }

          else if (v29 == 1)
          {
            v88 = 1;
            v35 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3267, 0, 0, &v88, 4);
            if (v35)
            {
              v36 = v35;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v17 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v37 = v82;
                if (*(a1 + 71) < 0)
                {
                  v37 = *v82;
                }

                *buf = v77.n128_u32[0];
                v90 = v37;
                v91 = 2080;
                v92 = "ParseSceneComponentStaticData";
                v93 = 1024;
                v94 = v36;
                v19 = v17;
                v20 = "[%s|%s] Could not enable the PP ERs: err = %d";
                v33 = 28;
                goto LABEL_110;
              }

              goto LABEL_64;
            }

            LOBYTE(v87) = 0;
            v48 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3262, 0, 0, &v87, 1);
            if (v48)
            {
              v49 = v48;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v50 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v58 = v82;
                if (*(a1 + 71) < 0)
                {
                  v58 = *v82;
                }

                *buf = v77.n128_u32[0];
                v90 = v58;
                v91 = 2080;
                v92 = "ParseSceneComponentStaticData";
                v93 = 1024;
                v94 = v49;
                _os_log_debug_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not disable the PP late reverb: err = %d", buf, 0x1Cu);
              }
            }

            v51 = AUSM::Metadata::PImpl::setParameter(*(a1 + 40), 35, v9 + 1, 50.0);
            if (v51)
            {
              v43 = v51;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v17 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_64;
              }

              v44 = v82;
              if (*(a1 + 71) < 0)
              {
                v44 = *v82;
              }

LABEL_98:
              *buf = v79.n128_u32[0];
              v90 = v44;
              v91 = 2080;
              v92 = "ParseSceneComponentStaticData";
              v93 = 1024;
              v94 = v9 + 1;
              v95 = 1024;
              v96 = v43;
              v19 = v17;
              v20 = "[%s|%s] Could not set the post-processing reverb blend to 50 on input %u, err = %d";
LABEL_60:
              v33 = 34;
              goto LABEL_110;
            }
          }

          else
          {
            if (!v8[42])
            {
LABEL_53:
              v30 = AUSM::Metadata::PImpl::setParameter(*(a1 + 40), 35, v9 + 1, 0.0);
              if (!v30)
              {
                goto LABEL_68;
              }

              v31 = v30;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v17 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_64;
              }

              v32 = v82;
              if (*(a1 + 71) < 0)
              {
                v32 = *v82;
              }

LABEL_59:
              *buf = v79.n128_u32[0];
              v90 = v32;
              v91 = 2080;
              v92 = "ParseSceneComponentStaticData";
              v93 = 1024;
              v94 = v9 + 1;
              v95 = 1024;
              v96 = v31;
              v19 = v17;
              v20 = "[%s|%s] Could not set the post-processing reverb blend to 0 on input %u, err = %d";
              goto LABEL_60;
            }

            v45 = AUSM::Metadata::PImpl::setParameter(*(a1 + 40), 35, v9 + 1, 0.0);
            if (v45)
            {
              v31 = v45;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v17 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_64;
              }

              v32 = v82;
              if (*(a1 + 71) < 0)
              {
                v32 = *v82;
              }

              goto LABEL_59;
            }
          }
        }

        else
        {
          if (v15 != 5)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v17 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v46 = v82;
              if (*(a1 + 71) < 0)
              {
                v46 = *v82;
              }

              v47 = *v14;
              *buf = v80.n128_u32[0];
              v90 = v46;
              v91 = 2080;
              v92 = "ParseSceneComponentStaticData";
              v93 = 1024;
              v94 = v47;
              v95 = 1024;
              v96 = v9;
              v97 = 1024;
              v98 = v9 + 1;
              v19 = v17;
              v20 = "[%s|%s] Unknown proprietaryStaticData param index %u on sc #%u, input element #%u";
              goto LABEL_109;
            }

            goto LABEL_64;
          }

          if ((v8[44] & 1) == 0)
          {
            v16 = v8[45];
            if (v8[45])
            {
              if (v16 != 2)
              {
                if (v16 == 1)
                {
                  v88 = *(v8 + 23);
                  if (!AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3269, 1, v9 + 1, &v88, 4))
                  {
                    goto LABEL_68;
                  }

                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v17 = getAUSMV2Log(void)::gLog;
                  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_64;
                  }

                  v18 = v82;
                  if (*(a1 + 71) < 0)
                  {
                    v18 = *v82;
                  }

                  *buf = v79.n128_u32[0];
                  v90 = v18;
                  v91 = 2080;
                  v92 = "ParseSceneComponentStaticData";
                  v93 = 1024;
                  v94 = v9;
                  v95 = 1024;
                  v96 = v9 + 1;
                  v19 = v17;
                  v20 = "[%s|%s] Could not set directivity index on sc #%u, input element #%u";
                  goto LABEL_60;
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v38 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  v55 = v82;
                  if (*(a1 + 71) < 0)
                  {
                    v55 = *v82;
                  }

                  v56 = v8[45];
                  *buf = v80.n128_u32[0];
                  v90 = v55;
                  v91 = 2080;
                  v92 = "ParseSceneComponentStaticData";
                  v93 = 1024;
                  v94 = v56;
                  v95 = 1024;
                  v96 = v9;
                  v97 = 1024;
                  v98 = v9 + 1;
                  _os_log_debug_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_DEBUG, "[%s|%s] Unsupported AuSMProcIndex %u on sc #%u, input element #%u", buf, 0x28u);
                }
              }
            }
          }
        }
      }

LABEL_68:
      ++v14;
      --v13;
    }

    while (v13);
    v4 = v81;
    v10 = v83;
    if ((v85 & 1) == 0)
    {
      goto LABEL_142;
    }

LABEL_147:
    if (v8[112] == 1)
    {
      v88 = v8[113];
      if (AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3242, 1, v9 + 1, &v88, 4))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v62 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          v63 = v82;
          if (*(a1 + 71) < 0)
          {
            v63 = *v82;
          }

          *buf = v79.n128_u32[0];
          v90 = v63;
          v91 = 2080;
          v92 = "ParseSceneComponentStaticData";
          v93 = 1024;
          v94 = v9;
          v95 = 1024;
          v96 = v9 + 1;
          v64 = v62;
          v65 = "[%s|%s] Could not set binaural compatibility mode on sc #%u, input element #%u";
          goto LABEL_177;
        }

        goto LABEL_159;
      }
    }

    else
    {
      v88 = 4;
      if (AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3242, 1, v9 + 1, &v88, 4))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v62 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          v73 = v82;
          if (*(a1 + 71) < 0)
          {
            v73 = *v82;
          }

          *buf = v79.n128_u32[0];
          v90 = v73;
          v91 = 2080;
          v92 = "ParseSceneComponentStaticData";
          v93 = 1024;
          v94 = v9;
          v95 = 1024;
          v96 = v9 + 1;
          v64 = v62;
          v65 = "[%s|%s] Could not clear binaural compatibility mode on sc #%u, input element #%u";
LABEL_177:
          _os_log_debug_impl(&dword_1DDB85000, v64, OS_LOG_TYPE_DEBUG, v65, buf, 0x22u);
        }

LABEL_159:
      }
    }

    if (!v10)
    {
      LOBYTE(v88) = 1;
      v66 = (*(**(a1 + 40) + 528))(*(a1 + 40), 1, v9 + 1, 0, &v88);
      v67 = MEMORY[0x1EEE9AC00](v66);
      v69 = (&v77 - v68);
      (*(**(a1 + 40) + 528))(v67);
      if (v69->n128_u32[0] != v86)
      {
        v69->n128_u32[0] = v86;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v70 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v71 = v82;
          if (*(a1 + 71) < 0)
          {
            v71 = *v82;
          }

          *buf = v80.n128_u32[0];
          v90 = v71;
          v91 = 2080;
          v92 = "ParseSceneComponentStaticData";
          v93 = 1024;
          v94 = v9;
          v95 = 1024;
          v96 = v86;
          v97 = 1024;
          v98 = v9 + 1;
          _os_log_impl(&dword_1DDB85000, v70, OS_LOG_TYPE_INFO, "[%s|%s] APAC metadata parsing: changing aclt for sc #%u to %u, input element #%u", buf, 0x28u);
        }

        (*(**(a1 + 40) + 536))(*(a1 + 40), 1, v9 + 1, v69);
      }
    }

    ++v6;
    v7 += 1144;
  }

  while (v6 < *v4);
}