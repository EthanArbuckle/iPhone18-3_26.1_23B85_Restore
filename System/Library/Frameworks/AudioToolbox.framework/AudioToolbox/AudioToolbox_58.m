float CNoiseSuppressorV4::AweightSPL(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = (&v9 - ((v4 + 15) & 0x7FFFFFFF0));
  HIDWORD(v9) = 0;
  MEMORY[0x1E12BE7F0](*(v6 + 344), 1, v3);
  vDSP_sve(v5, 1, &v9 + 1, v2);
  v7 = *(a1 + 356) + (log10f(*(a1 + 352) * *(&v9 + 1)) * 10.0);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  return fminf(v7, 100.0);
}

void CNoiseSuppressorV4::speex_preprocess_state_init(int a1, int a2, int a3, int a4, int a5, uint64_t a6, char a7)
{
  v13 = malloc_type_malloc(0x2C8uLL, 0x1D1F3D53uLL);
  if (v13)
  {
    v14 = v13;
    bzero(v13 + 8, 0x2C0uLL);
    *v14 = a1;
    *(v14 + 4) = a1;
    *(v14 + 428) = a3;
    if (a4)
    {
      operator new();
    }

    std::unique_ptr<NoiseSuppression::Noise::LPCore>::reset[abi:ne200100]((v14 + 688), 0);
    if (a7)
    {
      *(v14 + 8) = a2;
      *(v14 + 12) = 24;
      CNoiseSuppressorV4::SetNoiseEstimator(v14, a5);
    }

    MultiRadixRealFFT_Create();
  }

  exception = __cxa_allocate_exception(8uLL);
  v16 = std::bad_alloc::bad_alloc(exception);
}

uint64_t *std::unique_ptr<NoiseSuppression::Noise::LPCore>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 608);
    if (v3)
    {
      *(v2 + 616) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 584);
    if (v4)
    {
      *(v2 + 592) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 560);
    if (v5)
    {
      *(v2 + 568) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 536);
    if (v6)
    {
      *(v2 + 544) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 512);
    if (v7)
    {
      *(v2 + 520) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 488);
    if (v8)
    {
      *(v2 + 496) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 464);
    if (v9)
    {
      *(v2 + 472) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 440);
    if (v10)
    {
      *(v2 + 448) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 416);
    if (v11)
    {
      *(v2 + 424) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 392);
    if (v12)
    {
      *(v2 + 400) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 368);
    if (v13)
    {
      *(v2 + 376) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 344);
    if (v14)
    {
      *(v2 + 352) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 320);
    if (v15)
    {
      *(v2 + 328) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 296);
    if (v16)
    {
      *(v2 + 304) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 272);
    if (v17)
    {
      *(v2 + 280) = v17;
      operator delete(v17);
    }

    std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100]((v2 + 264), 0);
    std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100]((v2 + 256), 0);
    std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100]((v2 + 248), 0);
    v18 = *(v2 + 240);
    *(v2 + 240) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    std::unique_ptr<NoiseSuppression::Noise::LPCPitch>::reset[abi:ne200100]((v2 + 232), 0);
    v19 = *(v2 + 224);
    *(v2 + 224) = 0;
    if (v19)
    {
      (*(*v19 + 16))(v19);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void CNoiseSuppressorV4::SetNoiseEstimator(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

void sub_1DDF8C48C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E12BD160](v13, 0x10B1C40E3F849BDLL);
  v16 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v17 = v16;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CAXException::FormatError(v17[66], &buf, 0x100uLL);
      LODWORD(a9) = 136315906;
      *(&a9 + 4) = "suppressor_classV4.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 1801;
      WORD1(a10) = 2080;
      *(&a10 + 4) = v17 + 2;
      WORD6(a10) = 2080;
      *(&a10 + 14) = &buf;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%25s:%-5d Error in SetNoiseEstimator(): %s (%s)\n";
      p_buf = &a9;
      v21 = 38;
LABEL_7:
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, v19, p_buf, v21);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315394;
    *(&buf + 4) = "suppressor_classV4.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 1803;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d Unspecified error in SetNoiseEstimator().\n";
    p_buf = &buf;
    v21 = 18;
    goto LABEL_7;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DDF8C458);
}

void CNoiseSuppressorV4::speex_preprocess_state_destroy(uint64_t a1)
{
  free(*(a1 + 120));
  free(*(a1 + 128));
  free(*(a1 + 136));
  free(*(a1 + 144));
  free(*(a1 + 152));
  free(*(a1 + 160));
  free(*(a1 + 168));
  free(*(a1 + 176));
  free(*(a1 + 184));
  free(*(a1 + 192));
  free(*(a1 + 216));
  free(*(a1 + 224));
  free(*(a1 + 200));
  free(*(a1 + 208));
  free(*(a1 + 232));
  free(*(a1 + 240));
  free(*(a1 + 248));
  free(*(a1 + 256));
  free(*(a1 + 264));
  free(*(a1 + 376));
  free(*(a1 + 272));
  free(*(a1 + 280));
  free(*(a1 + 288));
  free(*(a1 + 296));
  free(*(a1 + 304));
  free(*(a1 + 312));
  free(*(a1 + 320));
  free(*(a1 + 368));
  free(*(a1 + 80));
  free(*(a1 + 88));
  free(*(a1 + 96));
  free(*(a1 + 112));
  free(*(a1 + 536));
  free(*(a1 + 544));
  free(*(a1 + 552));
  free(*(a1 + 384));
  free(*(a1 + 344));
  free(*(a1 + 496));
  free(*(a1 + 656));
  free(*(a1 + 664));
  free(*(a1 + 672));
  free(*(a1 + 680));
  MultiRadixFFT_Dispose(*(a1 + 576));
  free(*(a1 + 584));
  free(*(a1 + 592));
  CFilterBank::filterbank_destroy(*(a1 + 16));
  std::unique_ptr<NoiseSuppression::Noise::LPCore>::reset[abi:ne200100]((a1 + 688), 0);
  v2 = *(a1 + 696);
  *(a1 + 696) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 704);
  *(a1 + 704) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  free(a1);
}

float CNoiseSuppressorV4::speex_preprocess_run(int *a1, char *a2, char *a3, const float *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a1[1];
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v9);
  __Z.realp = v10;
  __Z.imagp = &v10[v8];
  v26.realp = (&v26 - v11);
  v26.imagp = (&v26 + 4 * v8 - v11);
  if (v12)
  {
    v13 = 2 * v8 - *a1;
    v14 = *a1 - v13;
    memcpy(*(a1 + 15), *(a1 + 67), 4 * v13);
    memcpy((*(a1 + 15) + 4 * v13), a2, 4 * *a1);
    memcpy(*(a1 + 67), &a2[4 * v14], 4 * v13);
    MEMORY[0x1E12BE7F0](*(a1 + 15), 1, *(a1 + 23), 1, *(a1 + 15), 1, 2 * v8);
    vDSP_ctoz(*(a1 + 15), 2, &__Z, 1, v8);
    v16 = *(a1 + 72);
    if (v16)
    {
      MultiRadixRealFFT::RealInPlaceTransform(v16, &__Z, 1, v15);
LABEL_4:
      __B = v8 + v8;
      vDSP_vsdiv(__Z.realp, 1, &__B, __Z.realp, 1, v8);
      vDSP_vsdiv(__Z.imagp, 1, &__B, __Z.imagp, 1, v8);
      goto LABEL_5;
    }

    if (SuppressorClassLogScope(void)::once != -1)
    {
      dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
    }

    if (SuppressorClassLogScope(void)::scope)
    {
      v24 = *SuppressorClassLogScope(void)::scope;
      if (!*SuppressorClassLogScope(void)::scope)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __B = 4.8151e-34;
      v29 = "suppressor_classV4.cpp";
      v30 = 1024;
      v31 = 479;
      _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d MultiRadixRealFFT_RealInPlaceTransform() returned an error.", &__B, 0x12u);
    }

    goto LABEL_4;
  }

LABEL_5:
  if (a3)
  {
    v17 = a1[1];
    v18 = 2 * v17 - *a1;
    v19 = *a1 - v18;
    memcpy(*(a1 + 16), *(a1 + 68), 4 * v18);
    memcpy((*(a1 + 16) + 4 * v18), a3, 4 * *a1);
    memcpy(*(a1 + 68), &a3[4 * v19], 4 * v18);
    MEMORY[0x1E12BE7F0](*(a1 + 16), 1, *(a1 + 23), 1, *(a1 + 16), 1, 2 * v17);
    vDSP_ctoz(*(a1 + 16), 2, &v26, 1, v17);
    v21 = *(a1 + 72);
    if (v21)
    {
      MultiRadixRealFFT::RealInPlaceTransform(v21, &v26, 1, v20);
LABEL_8:
      __B = v17 + v17;
      vDSP_vsdiv(v26.realp, 1, &__B, v26.realp, 1, v17);
      vDSP_vsdiv(v26.imagp, 1, &__B, v26.imagp, 1, v17);
      v22 = &v26;
      goto LABEL_10;
    }

    if (SuppressorClassLogScope(void)::once != -1)
    {
      dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
    }

    if (SuppressorClassLogScope(void)::scope)
    {
      v25 = *SuppressorClassLogScope(void)::scope;
      if (!*SuppressorClassLogScope(void)::scope)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __B = 4.8151e-34;
      v29 = "suppressor_classV4.cpp";
      v30 = 1024;
      v31 = 509;
      _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d MultiRadixRealFFT_RealInPlaceTransform() returned an error.", &__B, 0x12u);
    }

    goto LABEL_8;
  }

  v22 = 0;
LABEL_10:
  CNoiseSuppressorV4::speex_preprocess_run_freq(a1, &__Z, v22, a4);
  if (a2)
  {
    return CNoiseSuppressorV4::speex_synthesis(a1, a2);
  }

  return result;
}

void *CNoiseSuppressorV4::speex_preprocess_load_known_noise(void *result, uint64_t a2, int a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = *(result + 2);
    v6 = *a2;
    v7 = *(a2 + 4);
    v8 = *(result + 1);
    v9 = v8;
    if (v5 == v7 && v8 == v6)
    {
      memcpy(*(result + 24), *(a2 + 8), 4 * v8);
    }

    else if (v8 >= 1)
    {
      v11 = v5 / (v8 + v8);
      v12 = (v6 + v6) / v7;
      v13 = *(result + 24);
      v14 = 0.0;
      do
      {
        v15 = (v12 * v14);
        if (v15 + 1 >= v6)
        {
          v16 = *(*(a2 + 8) + 4 * v6 - 4);
        }

        else
        {
          v16 = (((v15 + 1) - (v14 * v12)) * *(*(a2 + 8) + 4 * v15)) + (*(*(a2 + 8) + 4 * (v15 + 1)) * ((v14 * v12) - v15));
        }

        *v13++ = v16;
        v14 = v14 + v11;
        --v9;
      }

      while (v9);
    }

    v17 = 28;
    if (a3 == 1)
    {
      v17 = 27;
    }

    v18 = v4[v17];
    v19 = v4[24];
    v20 = 4 * *(v4 + 1);

    return memcpy(v18, v19, v20);
  }

  return result;
}

uint64_t AULoudspeakerManagerV2::SupportedNumChannels(AULoudspeakerManagerV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULoudspeakerManagerV2::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 6;
}

uint64_t AULoudspeakerManagerV2::GetParameterInfo(AULoudspeakerManagerV2 *this, unsigned int a2, uint64_t a3, AudioUnitParameterInfo *buffer)
{
  if (a3 > 1073741825)
  {
    if (a3 == 1073741826)
    {
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x447A000000000000;
      *&buffer->defaultValue = 0x4880A00000000000;
      v4 = @"AmplifierInputPowerPerSpeaker";
      goto LABEL_13;
    }

    if (a3 == 1073741827)
    {
      buffer->unit = kAudioUnitParameterUnit_Degrees;
      *&buffer->minValue = 0x447A0000C2C80000;
      *&buffer->defaultValue = 0x4880A00041A00000;
      v4 = @"TemperaturePerSpeaker";
      goto LABEL_13;
    }
  }

  else
  {
    if (a3 == 0x40000000)
    {
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x447A000000000000;
      *&buffer->defaultValue = 0x4880A00000000000;
      v4 = @"ModeledAmplifierPower";
      goto LABEL_13;
    }

    if (a3 == 1073741825)
    {
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x477FFF0000000000;
      *&buffer->defaultValue = 0x4880A00000000000;
      v4 = @"LoudspeakerHealthBitField";
LABEL_13:
      buffer->cfNameString = v4;
      CFStringGetCString(v4, buffer->name, 52, 0x8000100u);
      return 0;
    }
  }

  return AUDspLibWithNewParameters::GetParameterInfo(this, a2, a3, buffer);
}

uint64_t AULoudspeakerManagerV2::SetParameter(AULoudspeakerManagerV2 *this, uint64_t a2, unsigned int a3, unsigned int a4, float a5)
{
  v7 = AUDspLibWithNewParameters::SetParameter(this, a2, a3, a4, a5);
  v8 = (*(*this + 640))(this);
  v9 = (*(*v8 + 8))(v8, a2);
  if (v9 != 1)
  {
    return v7;
  }

  if (!HIDWORD(v9))
  {
    if (v10 != 9)
    {
      return v7;
    }

    goto LABEL_9;
  }

  if ((v9 - 0xA00000000) >> 35)
  {
    v11 = 1;
  }

  else
  {
    v11 = (v10 - 29) >= 2;
  }

  if (!v11)
  {
LABEL_9:
    if (*(this + 1585) == 1)
    {
      AULoudspeakerManagerV2::ReadModelData(this);
    }
  }

  return v7;
}

uint64_t AULoudspeakerManagerV2::ReadModelData(AULoudspeakerManagerV2 *this)
{
  if (!*(this + 272))
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "ChannelData", 0x8000100u);
  v53 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v5 = v53;
  }

  else
  {
    v5 = 0;
  }

  Value = CFDictionaryGetValue(*(this + 272), v5);
  applesauce::CF::ArrayRef::from_get(&theArray, Value);
  if (!theArray)
  {
    v9 = 1;
    goto LABEL_58;
  }

  Count = CFArrayGetCount(theArray);
  v8 = Count;
  if (Count > 8)
  {
    goto LABEL_8;
  }

  if (Count)
  {
    v10 = 0;
    v47 = (this + 528);
    v11 = "PressureResponse";
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      v13 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        goto LABEL_8;
      }

      CFRetain(ValueAtIndex);
      theDict = v13;
      v14 = CFGetTypeID(v13);
      if (v14 != CFDictionaryGetTypeID())
      {
        v43 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v43, "Could not construct");
      }

      if (!theDict)
      {
        goto LABEL_8;
      }

      v15 = CFStringCreateWithCString(v2, v11, 0x8000100u);
      v50 = v15;
      if (v15)
      {
        v16 = CFGetTypeID(v15);
        if (v16 != CFStringGetTypeID())
        {
          v44 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v44, "Could not construct");
        }

        v17 = v50;
      }

      else
      {
        v17 = 0;
      }

      v18 = CFDictionaryGetValue(theDict, v17);
      applesauce::CF::DataRef::from_get(&theData, v18);
      if (!theData)
      {
        goto LABEL_65;
      }

      if (CFDataGetLength(theData) != 4096)
      {
        break;
      }

      if (applesauce::CF::details::has_key<char const* const&>(theDict, "TweeterResponse"))
      {
        v19 = CFStringCreateWithCString(v2, "TweeterResponse", 0x8000100u);
        v48.imagp = v19;
        if (v19)
        {
          v20 = CFGetTypeID(v19);
          if (v20 != CFStringGetTypeID())
          {
            v46 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v46, "Could not construct");
          }

          imagp = v48.imagp;
        }

        else
        {
          imagp = 0;
        }

        v30 = CFDictionaryGetValue(theDict, imagp);
        applesauce::CF::DataRef::from_get(&v48, v30);
        if (!v48.realp)
        {
          goto LABEL_71;
        }

        if (CFDataGetLength(v48.realp) != 4096)
        {
          if (v48.realp)
          {
            CFRelease(v48.realp);
          }

LABEL_71:
          if (v48.imagp)
          {
            CFRelease(v48.imagp);
          }

          if (theData)
          {
            CFRelease(theData);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          v42 = theDict;
          if (theDict)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        }

        BytePtr = CFDataGetBytePtr(v48.realp);
        v32 = v11;
        v33 = 0;
        for (i = v47; ; i += 7)
        {
          if (*(this + 397))
          {
            v35 = *(this + 265);
            v36 = v35 == *(this + 266) ? 0 : *v35;
          }

          else
          {
            v36 = 1;
          }

          if (v33 >= v36)
          {
            break;
          }

          v37 = *i;
          v38 = CFDataGetBytePtr(theData);
          DspLib::LoudspeakerManagerV2::Algorithm::setPressureResponse(v37, v38, 1024, v10, BytePtr, 1024, v39, v40, v47, v48, theData, v50, theDict, theArray, v53);
          ++v33;
        }

        if (v48.realp)
        {
          CFRelease(v48.realp);
        }

        v11 = v32;
        if (v48.imagp)
        {
          CFRelease(v48.imagp);
        }
      }

      else
      {
        v22 = 0;
        for (j = v47; ; j += 7)
        {
          if (*(this + 397))
          {
            v24 = *(this + 265);
            v25 = v24 == *(this + 266) ? 0 : *v24;
          }

          else
          {
            v25 = 1;
          }

          if (v22 >= v25)
          {
            break;
          }

          v26 = *j;
          v27 = CFDataGetBytePtr(theData);
          DspLib::LoudspeakerManagerV2::Algorithm::setPressureResponse(v26, v27, 1024, v10, 0, 0, v28, v29, v47, v48, theData, v50, theDict, theArray, v53);
          ++v22;
        }
      }

      if (theData)
      {
        CFRelease(theData);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

      if (++v10 == v8)
      {
        goto LABEL_55;
      }
    }

    if (theData)
    {
      CFRelease(theData);
    }

LABEL_65:
    if (v50)
    {
      CFRelease(v50);
    }

    v42 = theDict;
    if (theDict)
    {
LABEL_68:
      CFRelease(v42);
    }

LABEL_8:
    v9 = 1;
    goto LABEL_56;
  }

LABEL_55:
  v9 = 0;
LABEL_56:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_58:
  if (v53)
  {
    CFRelease(v53);
  }

  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_1DDF8D51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va5, a3);
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v12 = va_arg(va5, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::DataRef::~DataRef(va1);
  applesauce::CF::StringRef::~StringRef(va2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va3);
  applesauce::CF::ArrayRef::~ArrayRef(va4);
  applesauce::CF::StringRef::~StringRef(va5);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DataRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDataGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DDF8D6F4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::setPressureResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, DSPSplitComplex a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = a4;
  v18 = *(a1 + 264);
  v19 = *(a1 + 272);
  if (a5)
  {
    if (v19 != v18)
    {
      v23 = *v18;
      v24 = DspLib::LoudspeakerController::Algorithm::channelForDriver(*v18, 1, a4);
      DspLib::LoudspeakerController::MaskingEstimator::setPressureMapping(*(v23 + 624) + 4608 * v24 + 1312, a2, a3, v25, v26, v27, v28, v29, v34, v35, v36, v37, v38, v39, v40);
      v30 = *(a1 + 264);
      if (*(a1 + 272) != v30)
      {
        v31 = *v30;
        v15 = DspLib::LoudspeakerController::Algorithm::channelForDriver(*v30, 2, v15);
        a2 = a5;
        a3 = a6;
        goto LABEL_7;
      }
    }

LABEL_10:
    abort();
  }

  if (v19 == v18)
  {
    goto LABEL_10;
  }

  v31 = *v18;
LABEL_7:
  v32 = *(v31 + 624) + 4608 * v15 + 1312;

  return DspLib::LoudspeakerController::MaskingEstimator::setPressureMapping(v32, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

unint64_t DspLib::LoudspeakerController::Algorithm::channelForDriver(void *a1, int a2, uint64_t a3)
{
  if (!a1[69])
  {
    return a3;
  }

  if (!(*(*a1 + 64))(a1))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = a1[70];
    if (*(v8 + v6) == a2 && *(v8 + v6 + 8) == a3)
    {
      break;
    }

    ++v7;
    v6 += 16;
    if (v7 >= (*(*a1 + 64))(a1))
    {
      return 0;
    }
  }

  return v7;
}

uint64_t AULoudspeakerManagerV2::GetParameter(AULoudspeakerManagerV2 *this, signed int a2, unsigned int a3, unsigned int a4, float *a5)
{
  v7 = *(this + 66);
  if (!v7)
  {
    goto LABEL_11;
  }

  if (a2 > 1073741825)
  {
    if (a2 == 1073741826)
    {
      v12 = a4 >> 30;
      if ((a4 & 0x20000000) != 0)
      {
        v15 = v7[33];
        if (v7[34] != v15)
        {
          v8 = *(*v15 + 4 * v12 + 520);
          goto LABEL_22;
        }

        goto LABEL_24;
      }

      v13 = a4 & 0x1FFFFFFF;
      *a5 = 0.0;
      if ((a4 & 0x1FFFFFFF) < (*(*v7 + 64))(v7))
      {
        v14 = v7[33];
        if (v7[34] != v14)
        {
          v8 = *(*(*v14 + 624) + 4608 * v13 + 4 * v12 + 4396);
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (a2 != 1073741827)
      {
        goto LABEL_11;
      }

      *a5 = 0.0;
      if ((*(*v7 + 64))(v7) > a4)
      {
        v9 = v7[33];
        if (v7[34] != v9)
        {
          v8 = *(*(*v9 + 624) + 4608 * a4 + 4340);
          goto LABEL_22;
        }

LABEL_24:
        abort();
      }
    }

    return 0;
  }

  if (a2 == 0x40000000)
  {
    v11 = v7[33];
    if (v7[34] != v11)
    {
      v8 = *(*v11 + 528);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (a2 == 1073741825)
  {
    v8 = DspLib::LoudspeakerHealth::speakerHealthStatus((v7 + 73));
LABEL_22:
    *a5 = v8;
    return 0;
  }

LABEL_11:

  return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
}

uint64_t AULoudspeakerManagerV2::SetProperty(AULoudspeakerManagerV2 *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, void *a6, int *a7)
{
  if (a2 <= 64003)
  {
    if (a2 <= 6632)
    {
      if (a2 == 6630)
      {
        if (!a3)
        {
          if (*(this + 17) != 1)
          {
            return 0;
          }

          v31 = *(this + 66);
          if (!v31)
          {
            return 0;
          }

          v32 = *(v31 + 344);
          if (*(v31 + 352) != v32)
          {
            v33 = 0;
            v34 = 1;
            do
            {
              v35 = &a5[27 * v33];
              v36 = v32 + 2632 * v33;
              v37 = *v35;
              *(v36 + 2416) = *(v35 + 1);
              *(v36 + 2400) = v37;
              v38 = *(v35 + 2);
              v39 = *(v35 + 3);
              v40 = *(v35 + 4);
              *(v36 + 2480) = *(v35 + 5);
              *(v36 + 2464) = v40;
              *(v36 + 2448) = v39;
              *(v36 + 2432) = v38;
              v41 = *(v35 + 6);
              v42 = *(v35 + 7);
              v43 = *(v35 + 8);
              *(v36 + 2544) = *(v35 + 9);
              *(v36 + 2528) = v43;
              *(v36 + 2512) = v42;
              *(v36 + 2496) = v41;
              v44 = *(v35 + 10);
              v45 = *(v35 + 11);
              v46 = *(v35 + 12);
              *(v36 + 2608) = v35[26];
              *(v36 + 2592) = v46;
              *(v36 + 2576) = v45;
              *(v36 + 2560) = v44;
              v33 = v34;
              v32 = *(v31 + 344);
            }

            while (0xE719AD850EC8C0F9 * ((*(v31 + 352) - v32) >> 3) > v34++);
          }

          result = 0;
          *(v31 + 340) = 1;
          return result;
        }
      }

      else
      {
        if (a2 != 6632)
        {
          goto LABEL_50;
        }

        if (!a3)
        {
          if (a6 == 8)
          {
            v12 = *a5;
            applesauce::CF::details::Retain<__CFDictionary const*>(*a5);
            applesauce::CF::DictionaryRef::DictionaryRef(&v65, v12);
            v13 = *(this + 272);
            *(this + 272) = v65;
            v65 = v13;
            applesauce::CF::DictionaryRef::~DictionaryRef(&v65);
            if (*(this + 17) != 1)
            {
              return 0;
            }

            return AULoudspeakerManagerV2::ReadModelData(this);
          }

          return 4294956445;
        }
      }

      return 4294956430;
    }

    if (a2 == 6633)
    {
      if (a6 < 4)
      {
        return 4294956445;
      }

      v19 = *a5 != 0;
      *(this + 2360) = v19;
      if (*(this + 17) != 1)
      {
        return 0;
      }

      v20 = *(this + 66);
      if (!v20)
      {
        return 0;
      }

      v22 = v20 + 264;
      v21 = *(v20 + 264);
      if (*(v22 + 8) == v21)
      {
        abort();
      }

      result = 0;
      *(*v21 + 545) = v19;
    }

    else
    {
      if (a2 != 6634)
      {
        goto LABEL_50;
      }

      if (a6 < 4)
      {
        return 4294956445;
      }

      if (*(this + 17) != 1)
      {
        return 0;
      }

      v15 = *(this + 66);
      if (!v15)
      {
        return 0;
      }

      DspLib::LoudspeakerManagerV2::Algorithm::resetNVM(*(v15 + 264), *(v15 + 272));
      result = 0;
      *(this + 2361) = 1;
    }
  }

  else
  {
    if (a2 > 64008)
    {
      if (a2 != 64009)
      {
        if (a2 == 1835889523)
        {
          if (*(this + 17) == 1)
          {
            v23 = *(this + 66);
            if (v23)
            {
              v24 = *a5;
              if (*a5)
              {
                CFRetain(*a5);
                v65 = v24;
                v25 = CFGetTypeID(v24);
                if (v25 != CFDictionaryGetTypeID())
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                }

                v26 = v65;
              }

              else
              {
                v26 = 0;
                v65 = 0;
              }

              Value = CFDictionaryGetValue(v26, @"ModelManagerSpeakerForStatus");
              v55 = CFDictionaryGetValue(v65, @"ModelManagerModelTypeForStatus");
              v56 = CFDictionaryGetValue(v65, @"ModelManagerMappingMethodForStatus");
              valuePtr = 0;
              v63 = 0;
              if (Value)
              {
                if (v55)
                {
                  v57 = v56;
                  if (v56)
                  {
                    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
                    CFNumberGetValue(v55, kCFNumberIntType, &valuePtr);
                    CFNumberGetValue(v57, kCFNumberIntType, &v63);
                    v58 = v63;
                    *(v23 + 316) = HIDWORD(valuePtr) | (valuePtr << 32);
                    *(v23 + 324) = v58;
                  }
                }
              }

              if (v65)
              {
                CFRelease(v65);
              }
            }
          }

          return 0;
        }

        if (a2 == 1886679923)
        {
          if (*(this + 17) == 1)
          {
            v8 = *(this + 66);
            if (v8)
            {
              v9 = *a5;
              if (*a5)
              {
                CFRetain(*a5);
                v65 = v9;
                v10 = CFGetTypeID(v9);
                if (v10 != CFDictionaryGetTypeID())
                {
                  v60 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v60, "Could not construct");
                }

                v11 = v65;
              }

              else
              {
                v11 = 0;
                v65 = 0;
              }

              v53 = CFDictionaryGetValue(v11, @"PilotToneSpeakerForStatus");
              HIDWORD(valuePtr) = 0;
              if (v53)
              {
                CFNumberGetValue(v53, kCFNumberIntType, &valuePtr + 4);
                *(v8 + 512) = HIDWORD(valuePtr);
              }

              if (v65)
              {
                CFRelease(v65);
              }
            }
          }

          return 0;
        }

        goto LABEL_50;
      }

      if (a6 >= 8)
      {
        result = DspLib::Loudspeaker::Calibration::SpTS::InterpretSpeakerCalibration(*a5);
        if (!result)
        {
          if (*(this + 17) != 1)
          {
            return 0;
          }

          result = *(this + 66);
          if (result)
          {
            DspLib::LoudspeakerManagerV2::Algorithm::setCalibrationData(result, this + 273);
            return 0;
          }
        }

        return result;
      }

      return 4294956445;
    }

    if (a2 != 64004)
    {
      if (a2 == 64008)
      {
        result = 4294956445;
        if (!a5 || a6 != 8)
        {
          return result;
        }

        v16 = *a5;
        if (*a5)
        {
          CFRetain(*a5);
          cf = v16;
          v17 = CFGetTypeID(v16);
          if (v17 != CFDictionaryGetTypeID())
          {
            v18 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v18, "Could not construct");
          }
        }

        else
        {
          cf = 0;
        }

        v48 = 0;
        v49 = this + 2208;
        while (1)
        {
          if (!cf)
          {
            v59 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v59, "Could not construct");
          }

          AULoudspeakerManagerV2::TimeScale<float>::getKey(&v65, *&v49[8 * v48 + 24]);
          v50 = v65;
          v51 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(cf, v65);
          if (!v51)
          {
            break;
          }

          v52 = applesauce::CF::convert_as<float,0>(v51);
          if (v50)
          {
            goto LABEL_69;
          }

LABEL_70:
          if (HIDWORD(v52) && *&v49[v48] != (*&v52 / 1000.0))
          {
            *&v49[v48] = *&v52 / 1000.0;
            *(this + 1112) = 257;
          }

          v48 += 4;
          if (v48 == 16)
          {
            if ((*(this + 2224) & 1) != 0 && *(this + 17) == 1)
            {
              DspLib::LoudspeakerManagerV2::Algorithm::setCPMSBudgets(*(*(this + 66) + 264), *(*(this + 66) + 272), this + 2208);
              *(this + 2224) = 0;
            }

            CFRelease(cf);
            return 0;
          }
        }

        v52 = 0;
        if (!v50)
        {
          goto LABEL_70;
        }

LABEL_69:
        CFRelease(v50);
        goto LABEL_70;
      }

LABEL_50:

      return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
    }

    if (a6 < 4)
    {
      return 4294956445;
    }

    v27 = *a5;
    v28 = *(*(*this + 640))(this);
    v29 = (*v28)();
    v30.n128_u64[0] = 0;
    if (v27)
    {
      v30.n128_f32[0] = 1.0;
    }

    (*(*this + 152))(this, v29, 0, 0, 0, v30);
    return 0;
  }

  return result;
}

void sub_1DDF8E1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t DspLib::Loudspeaker::Calibration::SpTS::InterpretSpeakerCalibration(CFTypeRef cf)
{
  applesauce::CF::ArrayRef::from_get(&theArray, cf);
  v1 = theArray;
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v3 = Count;
  v4 = theArray;
  if (!theArray)
  {
    v21 = 0;
    if (!Count)
    {
      goto LABEL_20;
    }

LABEL_6:
    if (v1 != v4 || v21)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cfa, v1, 0);
      v5 = cfa;
      if (cfa)
      {
        CFRetain(cfa);
        v22 = v5;
        v6 = applesauce::CF::details::at_key<char const*&>(v5, "thiele_small_data_source_id");
        if (v6 && (applesauce::CF::convert_as<unsigned int,0>(v6) & 0x100000000) != 0)
        {
          if (DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v5, "thiele_small_fs"))
          {
            if (DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v5, "thiele_small_qts"))
            {
              if (DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v5, "thiele_small_re"))
              {
                if (DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v5, "thiele_small_t"))
                {
                  v7 = DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v5, "thiele_small_le");
                  v8 = DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_kms");
                  v9 = DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_mms");
                  v10 = DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_bi");
                  if ((v7 & v8 & v9 & v10 & DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_rms")) == 1)
                  {
                    operator new();
                  }

                  v11 = DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_crest");
                  v12 = DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_coffset");
                  v13 = DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_cmin");
                  if ((v11 & v12 & v13 & DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(v22, "thiele_small_cmax")) == 1)
                  {
                    operator new();
                  }

                  operator new();
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::string::basic_string[abi:ne200100]<0>(&v25, "thiele_small_t");
                std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, "Speaker calibration data is missing '", &v25);
                std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v27, &v26, "' key");
                std::runtime_error::runtime_error(exception, &v27);
              }

              v16 = __cxa_allocate_exception(0x10uLL);
              std::string::basic_string[abi:ne200100]<0>(&v25, "thiele_small_re");
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, "Speaker calibration data is missing '", &v25);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v27, &v26, "' key");
              std::runtime_error::runtime_error(v16, &v27);
            }

            v20 = __cxa_allocate_exception(0x10uLL);
            std::string::basic_string[abi:ne200100]<0>(&v25, "thiele_small_qts");
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, "Speaker calibration data is missing '", &v25);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v27, &v26, "' key");
            std::runtime_error::runtime_error(v20, &v27);
          }

          v17 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v25, "thiele_small_fs");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, "Speaker calibration data is missing '", &v25);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v27, &v26, "' key");
          std::runtime_error::runtime_error(v17, &v27);
        }

        v15 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v25, "thiele_small_data_source_id");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, "Speaker calibration data is missing '", &v25);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v27, &v26, "' key");
        std::runtime_error::runtime_error(v15, &v27);
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "Could not construct");
    }

    goto LABEL_20;
  }

  v21 = CFArrayGetCount(theArray);
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return 0;
}

void sub_1DDF8EB14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, __int16 a13, char a14, char a15, int a16, const void *a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v37 & 1) == 0)
    {
LABEL_10:
      applesauce::CF::DictionaryRef::~DictionaryRef(&a12);
      applesauce::CF::DictionaryRef::~DictionaryRef(&a17);
      applesauce::CF::ArrayRef::~ArrayRef(&a18);
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      JUMPOUT(0x1DDF8E7E8);
    }
  }

  else if (!v37)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v36);
  goto LABEL_10;
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::setCalibrationData(uint64_t result, void *a2)
{
  if (0xE719AD850EC8C0F9 * ((*(result + 352) - *(result + 344)) >> 3) == (a2[1] - *a2) >> 3)
  {
    return DspLib::LoudspeakerManagerV2::ModelManager::setSpTSCalibration(result + 312, a2);
  }

  *(result + 328) = 0;
  return result;
}

double DspLib::LoudspeakerManagerV2::Algorithm::resetNVM(DspLib::LoudspeakerController::Algorithm **this, DspLib::LoudspeakerManagerV2::Algorithm *a2)
{
  if (a2 == this)
  {
    abort();
  }

  v3 = *this;

  return DspLib::LoudspeakerController::Algorithm::resetNVM(v3);
}

void *AULoudspeakerManagerV2::TimeScale<float>::getKey(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::setCPMSBudgets(uint64_t *a1, uint64_t *a2, void *__src)
{
  if (a2 == a1)
  {
    abort();
  }

  v4 = *a1;

  return DspLib::LoudspeakerController::Algorithm::setCPMSBudgets(v4, __src);
}

uint64_t *std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12BD160](v2, 0x1020C404691B19CLL);
  }

  return a1;
}

void DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::~Speaker(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

float DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::get<float>(const __CFDictionary *a1, char *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v2 = applesauce::CF::details::at_key<char const*&>(a1, a2);
  if (!v2 || (v3 = applesauce::CF::convert_as<float,0>(v2), !HIDWORD(v3)))
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return *&v3;
}

uint64_t std::__shared_ptr_pointer<DspLib::Loudspeaker::Calibration::SpTS::ConvoyCalibrationProperties  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::__shared_ptr_pointer<DspLib::Loudspeaker::Calibration::SpTS::ConvoyCalibrationProperties  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

const void *DspLib::Loudspeaker::Calibration::SpTS::v2::Speaker::has<float>(const __CFDictionary *a1, char *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  result = applesauce::CF::details::at_key<char const*&>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) >> 32 != 0);
  }

  return result;
}

void std::__shared_ptr_emplace<DspLib::Loudspeaker::Calibration::SpTS::DispCalibrationProperties>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5937040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AULoudspeakerManagerV2::GetProperty(uint64_t **this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  if (a2 > 6633)
  {
    if (a2 <= 64007)
    {
      if (a2 == 6634)
      {
        result = 0;
        v11 = *(this + 2361);
        goto LABEL_27;
      }

      if (a2 == 64004)
      {
        LODWORD(v54[0]) = 0;
        v8 = *((*this)[80])(this);
        v9 = (*v8)();
        ((*this)[18])(this, v9, 0, 0, v54);
        result = 0;
        v11 = *v54 != 0.0;
LABEL_27:
        *a5 = v11;
        return result;
      }

      goto LABEL_23;
    }

    if (a2 != 64008)
    {
      if (a2 == 64009)
      {
        SpeakerCalibrationDictionary = DspLib::Loudspeaker::Calibration::SpTS::CreateSpeakerCalibrationDictionary(this[273], this[274]);
        result = 0;
        *a5 = SpeakerCalibrationDictionary;
        return result;
      }

LABEL_23:

      return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
    }

    v41 = 0;
    memset(v54, 0, 32);
    LODWORD(v54[2]) = 1065353216;
    v42 = (this + 279);
    do
    {
      v43 = *&v42[v41 - 24];
      AULoudspeakerManagerV2::TimeScale<float>::getKey(&cf, *&v42[8 * v41]);
      p_cf = &cf;
      *(std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,float>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,float>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,float>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,float>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::piecewise_construct_t const&,std::tuple<applesauce::CF::StringRef&&>,std::tuple<>>(v54, &cf) + 6) = v43 * 1000.0;
      if (cf)
      {
        CFRelease(cf);
      }

      v41 += 4;
    }

    while (v41 != 16);
    p_cf = 0;
    *v51 = 0;
    v52 = 0;
    std::vector<applesauce::CF::TypeRefPair>::reserve(&p_cf, *(&v54[1] + 1));
    v44 = *&v54[1];
    if (*&v54[1])
    {
      v45 = *v51;
      do
      {
        if (v45 >= v52)
        {
          v45 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,float const&>(&p_cf, v44 + 2, v44 + 6);
        }

        else
        {
          applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef const&,float const&>(v45, v44[2], v44 + 6);
          v45 += 2;
        }

        *v51 = v45;
        v44 = *v44;
      }

      while (v44);
    }

    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&p_cf);
    cf = &p_cf;
    std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&cf);
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,float>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,float>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,float>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,float>>>::~__hash_table(v54);
LABEL_39:
    result = 0;
    *a5 = CFDictionaryRef;
    return result;
  }

  if (a2 != 6630)
  {
    if (a2 != 6632)
    {
      if (a2 == 6633)
      {
        result = 0;
        v11 = *(this + 2360);
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    if (!a3)
    {
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], this[272]);
      CFDictionaryRef = Copy;
      *&v54[0] = Copy;
      if (Copy)
      {
        v48 = CFGetTypeID(Copy);
        if (v48 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      goto LABEL_39;
    }

    return 4294956430;
  }

  if (a3)
  {
    return 4294956430;
  }

  v13 = this[66];
  if (v13)
  {
    v14 = v13[43];
    if (v13[44] != v14)
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = v14 + 2632 * v15;
        v18 = &a5[27 * v15];
        v19 = *(v17 + 2416);
        *v18 = *(v17 + 2400);
        *(v18 + 1) = v19;
        v20 = *(v17 + 2432);
        v21 = *(v17 + 2448);
        v22 = *(v17 + 2480);
        *(v18 + 4) = *(v17 + 2464);
        *(v18 + 5) = v22;
        *(v18 + 2) = v20;
        *(v18 + 3) = v21;
        v23 = *(v17 + 2496);
        v24 = *(v17 + 2512);
        v25 = *(v17 + 2544);
        *(v18 + 8) = *(v17 + 2528);
        *(v18 + 9) = v25;
        *(v18 + 6) = v23;
        *(v18 + 7) = v24;
        v26 = *(v17 + 2560);
        v27 = *(v17 + 2576);
        v28 = *(v17 + 2592);
        v18[26] = *(v17 + 2608);
        *(v18 + 11) = v27;
        *(v18 + 12) = v28;
        *(v18 + 10) = v26;
        v15 = v16;
        v14 = v13[43];
      }

      while (0xE719AD850EC8C0F9 * ((v13[44] - v14) >> 3) > v16++);
    }
  }

  v30 = 0;
  v31 = vdup_n_s32(0xC2C80000);
  do
  {
    v32 = 0;
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    LODWORD(v54[0]) = 1;
    memset(v54 + 4, 0, 24);
    memset(&v54[1] + 9, 0, 23);
    *(&v54[2] + 4) = 0;
    BYTE12(v54[2]) = 0;
    do
    {
      v33 = v54 + v32;
      *(v33 + 60) = 0;
      *(v33 + 52) = 0;
      v33[76] = 0;
      *(v33 + 68) = 0;
      *(v33 + 10) = 0;
      v33[88] = 0;
      v32 += 44;
      v33[92] = 0;
    }

    while (v32 != 132);
    *(&v63 + 1) = v31;
    LODWORD(v64) = 1065353216;
    BYTE4(v64) = 0;
    DWORD2(v64) = 1112014848;
    BYTE12(v64) = 0;
    v65 = 0;
    v34 = &a5[27 * v30];
    v35 = v63;
    *(v34 + 10) = v62;
    *(v34 + 11) = v35;
    *(v34 + 12) = v64;
    v34[26] = v65;
    v36 = v59;
    *(v34 + 6) = v58;
    *(v34 + 7) = v36;
    v37 = v61;
    *(v34 + 8) = v60;
    *(v34 + 9) = v37;
    v38 = v55;
    *(v34 + 2) = v54[2];
    *(v34 + 3) = v38;
    v39 = v57;
    *(v34 + 4) = v56;
    *(v34 + 5) = v39;
    v40 = v54[1];
    ++v30;
    *v34 = v54[0];
    *(v34 + 1) = v40;
  }

  while (v30 != 8);
  return 0;
}

void sub_1DDF8F528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

CFArrayRef DspLib::Loudspeaker::Calibration::SpTS::CreateSpeakerCalibrationDictionary(uint64_t *a1, uint64_t *a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a1 == a2)
  {
    goto LABEL_55;
  }

  v3 = a1;
  do
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    applesauce::CF::StringRef::from_get(&cf, @"thiele_small_data_source_id");
    v4 = std::hash<applesauce::CF::StringRef>::operator()(cf);
    v5 = v4;
    v6 = *(&v19[0] + 1);
    if (!*(&v19[0] + 1))
    {
      goto LABEL_19;
    }

    v7 = vcnt_s8(*(v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19[0] + 1))
      {
        v9 = v4 % *(&v19[0] + 1);
      }
    }

    else
    {
      v9 = (*(&v19[0] + 1) - 1) & v4;
    }

    v10 = *(*&v19[0] + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v11[2], &cf))
    {
      goto LABEL_18;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    applesauce::CF::StringRef::from_get(&cf, @"thiele_small_fs");
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    applesauce::CF::StringRef::from_get(&cf, @"thiele_small_qts");
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    applesauce::CF::StringRef::from_get(&cf, @"thiele_small_re");
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    applesauce::CF::StringRef::from_get(&cf, @"thiele_small_t");
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v13 = *v3;
    if (*(*v3 + 24))
    {
      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_kms");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_le");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_bi");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_mms");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_rms");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      v13 = *v3;
    }

    if (*(v13 + 40))
    {
      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_crest");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_coffset");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_cmin");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      applesauce::CF::StringRef::from_get(&cf, @"thiele_small_cmax");
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef,float &>(v19, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    v14 = v22;
    if (v22 >= v23)
    {
      v15 = std::vector<applesauce::CF::DictionaryRef>::__emplace_back_slow_path<std::unordered_map<applesauce::CF::StringRef,applesauce::CF::NumberRef> &>(&v21, v19);
    }

    else
    {
      std::vector<applesauce::CF::DictionaryRef>::__construct_one_at_end[abi:ne200100]<std::unordered_map<applesauce::CF::StringRef,applesauce::CF::NumberRef> &>(&v21, v19);
      v15 = v14 + 8;
    }

    v22 = v15;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::NumberRef>>>::~__hash_table(v19);
    ++v3;
  }

  while (v3 != a2);
LABEL_55:
  v16 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v21);
  *&v19[0] = &v21;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v19);
  return v16;
}

void sub_1DDF8FBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a11 = &a17;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t AULoudspeakerManagerV2::GetPropertyInfo(AULoudspeakerManagerV2 *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 > 64003)
  {
    if (a2 > 64008)
    {
      if (a2 == 64009 || a2 == 1835889523)
      {
        goto LABEL_17;
      }

      v6 = 1886679923;
LABEL_16:
      if (a2 == v6)
      {
LABEL_17:
        result = 0;
        *a6 = 1;
        v9 = 8;
LABEL_19:
        *a5 = v9;
        return result;
      }

      return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
    }

    if (a2 != 64004)
    {
      v6 = 64008;
      goto LABEL_16;
    }

LABEL_18:
    result = 0;
    *a6 = 1;
    v9 = 4;
    goto LABEL_19;
  }

  if (a2 > 6632)
  {
    if (a2 == 6633 || a2 == 6634)
    {
      goto LABEL_18;
    }

    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a2 == 6630)
  {
    if (!a3)
    {
      result = 0;
      v8 = 1728;
      goto LABEL_24;
    }

    return 4294956430;
  }

  if (a2 != 6632)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a3)
  {
    return 4294956430;
  }

  result = 0;
  v8 = 8;
LABEL_24:
  *a5 = v8;
  *a6 = 1;
  return result;
}

uint64_t AULoudspeakerManagerV2::Initialize(uint64_t ***this)
{
  result = AUDspLib::Initialize(this);
  if (result)
  {
    return result;
  }

  if (AULoudspeakerManagerV2::ReadModelData(this))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = this[66];
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  DspLib::LoudspeakerManagerV2::Algorithm::setCalibrationData(this[66], this + 273);
  if (*(this + 2225) == 1)
  {
    DspLib::LoudspeakerManagerV2::Algorithm::setCPMSBudgets(v3[33], v3[34], this + 276);
    *(this + 2224) = 0;
  }

  cf[0] = @"com.apple.coreaudio";
  v4 = CFGetTypeID(@"com.apple.coreaudio");
  if (v4 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!cf[0])
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cf[0]);
  CFRelease(cf[0]);
  std::string::basic_string[abi:ne200100]<0>(cf, "LSMv2EnableLogging");
  v6 = GetPreference<long long>(__p, cf);
  v7 = v5;
  if ((v12 & 0x80000000) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  operator delete(cf[0]);
  if (v7)
  {
LABEL_15:
    DspLib::LoudspeakerManagerV2::Algorithm::configureLogging(v3, v6);
  }

LABEL_16:
  v8 = v3[33];
  if (v3[34] == v8)
  {
    abort();
  }

  *(*v8 + 545) = *(this + 2360);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1DDF8FF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AULoudspeakerManagerV2::~AULoudspeakerManagerV2(AULoudspeakerManagerV2 *this)
{
  *this = &unk_1F5930EF0;
  v2 = 2328;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
      CFRelease(v3);
    }

    v2 -= 32;
    if (v2 == 2200)
    {
      v5 = (this + 2184);
      std::vector<std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&v5);
      v4 = *(this + 272);
      if (v4)
      {
        CFRelease(v4);
      }

      AUDspLib::~AUDspLib(this);

      JUMPOUT(0x1E12BD160);
    }
  }
}

{
  *this = &unk_1F5930EF0;
  for (i = 2328; i != 2200; i -= 32)
  {
    v3 = *(this + i);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v5 = (this + 2184);
  std::vector<std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *(this + 272);
  if (v4)
  {
    CFRelease(v4);
  }

  AUDspLib::~AUDspLib(this);
}

void std::vector<std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t AULoudspeakerManagerV2::TimeScale<float>::TimeScale(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    *a1 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  return a1;
}

__n128 AULoudspeakerManagerV2::TimeScale<float>::withPowerSmootherTC(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v6;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = a3;
  *(a1 + 28) = 1;
  return result;
}

const void **AULoudspeakerManagerV2::TimeScale<float>::~TimeScale(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::array<AULoudspeakerManagerV2::TimeScale<float>,4ul>::~array(uint64_t a1)
{
  for (i = 96; i != -32; i -= 32)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return a1;
}

BOOL AULoudnessInNoise::ValidFormat(AULoudnessInNoise *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if ((a2 == 2 || a2 == 1 && a3 <= 2) && (a4->mBytesPerFrame == 8 ? (v4 = a4->mFormatID == 1718773105) : (v4 = 0), v4))
  {
    return a4->mChannelsPerFrame == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AULoudnessInNoise::SupportedNumChannels(AULoudnessInNoise *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULoudnessInNoise::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AULoudnessInNoise::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 140);
    ++*(this + 142);
  }

  return result;
}

uint64_t AULoudnessInNoise::GetParameterInfo(AULoudnessInNoise *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a3 > 59)
  {
    if (a3 <= 62)
    {
      if (a3 == 60)
      {
        v8 = @"(output) Raw Loudness for current frame";
      }

      else if (a3 == 61)
      {
        v8 = @"(output) Normalized Loudness for current frame";
      }

      else
      {
        v8 = @"(output) Percentile loudness ";
      }

      buffer->cfNameString = v8;
      buffer->flags = 1207959552;
      CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0x4120000000000000;
      goto LABEL_42;
    }

    if (a3 > 64)
    {
      if (a3 == 65)
      {
        buffer->cfNameString = @"(output) Index which increments (wraps at 32,000) when Audibility/Percentiles are updated";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(output) Index which increments (wraps at 32,000) when Audibility/Percentiles are updated", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v7 = 0x46FA000000000000;
        goto LABEL_42;
      }

      if (a3 != 66)
      {
        return result;
      }

      buffer->cfNameString = @"(output) Mean Power of estimated noise spectrum (dB) ";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(output) Mean Power of estimated noise spectrum (dB) ", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C80000C3480000;
      v9 = -200.0;
    }

    else
    {
      if (a3 != 63)
      {
        buffer->cfNameString = @"(output) Used Level from array of available Levels in plist";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(output) Used Level from array of available Levels in plist", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v7 = 0x459C400000000000;
LABEL_42:
        *&buffer->minValue = v7;
        buffer->defaultValue = 0.0;
        return result;
      }

      buffer->cfNameString = @"(output) Audible Level: -1-Not Calculated 0-InAudible, 1-Maybe Audible, 2 Audible";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(output) Audible Level: -1-Not Calculated 0-InAudible, 1-Maybe Audible, 2 Audible", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x40000000BF800000;
      v9 = -1.0;
    }

    buffer->defaultValue = v9;
    return result;
  }

  switch(a3)
  {
    case 0:
      v6 = @"Operating mode: 0-Assess current lev, 1-Estimate all levs";
      goto LABEL_24;
    case 1:
      v6 = @"Matching criterion to find current loudness (0=closest exceeding 1=closest)";
LABEL_24:
      buffer->cfNameString = v6;
      buffer->flags = 1207959552;
      CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      goto LABEL_34;
    case 2:
      buffer->cfNameString = @"Index of the noise spectrum in Q used to normalize loudness";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Index of the noise spectrum in Q used to normalize loudness", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v12 = 0x41A0000000000000;
      goto LABEL_26;
    case 3:
      buffer->cfNameString = @"Loudness Percentile Interval [sec]";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Loudness Percentile Interval [sec]", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v12 = 0x412000003F000000;
LABEL_26:
      *&buffer->minValue = v12;
      v11 = 1.0;
      goto LABEL_32;
    case 4:
      buffer->cfNameString = @"Percentile to use (0-100%)";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Percentile to use (0-100%)", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000000000000;
      v11 = 90.0;
      goto LABEL_32;
    case 5:
      buffer->cfNameString = @"0-Ignore VAD, 1-Use Extern VAD with Thresh, 2-Threshold CV, 3-Threshold Echo/Play, 4=1or2, 5=1or3, 6=1or2or3";
      buffer->flags = 1207959552;
      CFStringGetCString(@"0-Ignore VAD, 1-Use Extern VAD with Thresh, 2-Threshold CV, 3-Threshold Echo/Play, 4=1or2, 5=1or3, 6=1or2or3", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v10 = 0x40C0000000000000;
      goto LABEL_35;
    case 6:
      buffer->cfNameString = @"(input) Threshold on Soft VAD";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(input) Threshold on Soft VAD", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v11 = 0.5;
      goto LABEL_32;
    case 7:
      v13 = @"(input) Threshold on Clean Voice for a VAD (dBfs)";
      goto LABEL_30;
    case 8:
      v13 = @"(input) Threshold on Echo/Play for a VAD (dBfs)";
LABEL_30:
      buffer->cfNameString = v13;
      buffer->flags = 1207959552;
      CFStringGetCString(v13, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x41200000C3480000;
      v11 = -80.0;
      goto LABEL_32;
    case 9:
      buffer->cfNameString = @"(input) Minimum frequency used for sensing (Hz) ";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(input) Minimum frequency used for sensing (Hz) ", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x45FA000000000000;
      v11 = 200.0;
      goto LABEL_32;
    case 10:
      buffer->cfNameString = @"(input) Maximum frequency used for sensing (Hz) ";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(input) Maximum frequency used for sensing (Hz) ", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x45FA000000000000;
      v11 = 5005.0;
      goto LABEL_32;
    case 11:
      buffer->cfNameString = @"(input) Power law p used in loudness ";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(input) Power law p used in loudness ", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4080000000000000;
      v11 = 2.0;
      goto LABEL_32;
    case 12:
      buffer->cfNameString = @"(input) Power law Q used in loudness ";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(input) Power law Q used in loudness ", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4080000000000000;
      v11 = 0.25;
LABEL_32:
      v14 = buffer->flags | 0x80000000;
      buffer->defaultValue = v11;
      buffer->flags = v14;
      return result;
    case 30:
      buffer->cfNameString = @"(input dyn) Current Level";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(input dyn) Current Level", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v10 = 0x459C400000000000;
      goto LABEL_35;
    case 32:
      buffer->cfNameString = @"(input dyn) External Soft VAD value";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(input dyn) External Soft VAD value", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
LABEL_34:
      v10 = 0x3F80000000000000;
LABEL_35:
      *&buffer->minValue = v10;
      v15 = buffer->flags | 0x80000000;
      buffer->defaultValue = 0.0;
      buffer->flags = v15;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AULoudnessInNoise::GetParameterList(AULoudnessInNoise *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09E3C0;
    *(a3 + 4) = xmmword_1DE09E3D0;
    *(a3 + 10) = 0x4100000040;
    a3[22] = 66;
  }

  result = 0;
  *a4 = 23;
  return result;
}

uint64_t AULoudnessInNoise::Render(AULoudnessInNoise *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_29;
  }

  v9 = Element;
  v10 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v10 || !*(v10 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v12)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v13 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v13)
    {
      goto LABEL_29;
    }

    if (!*(v13 + 144))
    {
      goto LABEL_34;
    }

    v14 = *(v13 + 152);
    v15 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (v15 && *(v15 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
      if (v16)
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

      v17 = ausdk::AUBase::Input(this, 1u);
    }

    else
    {
      v17 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    if (!*(v17 + 144))
    {
      goto LABEL_34;
    }

    v18 = *(v17 + 152);
    v19 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (v19 && *(v19 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 2u);
      if (v20)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, 2, a4);
        if (!result)
        {
LABEL_24:
          v21 = ausdk::AUBase::Input(this, 2u);
LABEL_26:
          if (*(v21 + 144))
          {
            v23[0] = v14 + 48;
            v23[1] = v18 + 48;
            v23[2] = v18 + 48;
            if (*(v9 + 144))
            {
              v22 = *(v9 + 152) + 48;
              return (*(*this + 184))(this, a2, a4, 3, v23, 1, &v22);
            }
          }

LABEL_34:
          ausdk::Throw(0xFFFFFFFFLL);
        }
      }

      else if (!result)
      {
        goto LABEL_24;
      }

      return result;
    }

    v21 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v21)
    {
      goto LABEL_26;
    }

LABEL_29:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AULoudnessInNoise::ProcessMultipleBufferLists(AULoudnessInNoise *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  v105 = v7;
  v106 = v8;
  v11 = *(this + 140);
  if (*(this + 141) != v11)
  {
    AULoudnessInNoise::InitializeInternals(this);
    *(this + 141) = v11;
  }

  v12 = *(this + 142);
  if (*(this + 143) != v12)
  {
    AULoudnessInNoise::UpdateDynParams(this);
    *(this + 143) = v12;
  }

  if (*(this + 577))
  {
    return 0;
  }

  *(this + 173) = 0;
  v14 = (*(this + 145) - 1);
  if (!*(this + 138))
  {
    if (*(this + 145) == 1)
    {
      goto LABEL_27;
    }

    v19 = 0;
    v20 = 0;
    v21 = *(this + 172);
    v22 = *(this + 210);
    v23 = 0.0;
    while (1)
    {
      v24 = *(v22 + 4 * v19);
      if (v21 >= v24)
      {
        if ((v20 & 1) == 0)
        {
          *(this + 173) = v19;
          v23 = v21 - v24;
LABEL_25:
          v20 = 1;
          goto LABEL_26;
        }

        v25 = v21 - v24;
        if (v25 >= v23)
        {
          goto LABEL_25;
        }

        *(this + 173) = v19;
        v20 = 1;
        v23 = v25;
      }

LABEL_26:
      if (v14 == ++v19)
      {
        goto LABEL_27;
      }
    }
  }

  if (*(this + 145) != 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    do
    {
      if (v16)
      {
        v18 = vabds_f32(*(this + 172), *(*(this + 210) + 4 * v15));
        if (v18 < v17)
        {
          *(this + 173) = v15;
          v17 = v18;
        }
      }

      else
      {
        *(this + 173) = v15;
        v17 = vabds_f32(*(this + 172), *(*(this + 210) + 4 * v15));
      }

      ++v15;
      v16 = 1;
    }

    while (v14 != v15);
  }

LABEL_27:
  mData = (*a5)->mBuffers[0].mData;
  v27 = a5[1]->mBuffers[0].mData;
  v28 = a5[2]->mBuffers[0].mData;
  memcpy(*(this + 191), mData, 4 * *(this + 148));
  memcpy(*(this + 194), v27, 4 * *(this + 148));
  memcpy(*(this + 197), v28, 4 * *(this + 148));
  MEMORY[0x1E12BE940](*(this + 191), 1, this + 624, *(this + 191), 1, *(this + 148));
  MEMORY[0x1E12BE940](*(this + 194), 1, this + 624, *(this + 194), 1, *(this + 148));
  MEMORY[0x1E12BE940](*(this + 197), 1, this + 624, *(this + 197), 1, *(this + 148));
  *(this + 600) = 0;
  v29 = *(this + 152);
  if (v29)
  {
    if (v29 == 1)
    {
      goto LABEL_38;
    }

    LODWORD(__C.realp) = -1013579776;
    v104 = -300.0;
    if (v29 <= 6 && ((1 << v29) & 0x54) != 0)
    {
      vDSP_svesq(*(this + 194), 1, &__C, *(this + 148));
      *&__C.realp = log10f((*&__C.realp / *(this + 147)) + 1.0e-20) * 10.0;
      if (*&__C.realp >= *(this + 154))
      {
        *(this + 600) = 1;
      }
    }

    v30 = *(this + 152);
    if (v30 <= 6 && ((1 << v30) & 0x68) != 0)
    {
      vDSP_svesq(*(this + 197), 1, &v104, *(this + 148));
      if ((log10f((v104 / *(this + 147)) + 1.0e-20) * 10.0) >= *(this + 155))
      {
        *(this + 600) = 1;
      }
    }

    if ((*(this + 152) - 4) <= 2)
    {
LABEL_38:
      if (*(this + 151) >= *(this + 153))
      {
        *(this + 600) = 1;
      }
    }
  }

  if (*(this + 136) == 1)
  {
    *(this + 380) = 0;
    *(this + 381) = *(this + 145);
  }

  if (*(this + 600))
  {
    goto LABEL_103;
  }

  __B = 0.0;
  v32 = *(this + 147);
  v33 = *(this + 200);
  __C.realp = *(this + 191);
  realp = __C.realp;
  __C.imagp = &__C.realp[v32];
  vDSP_zvmags(&__C, 1, v33, 1, v32);
  *v33 = *realp * *realp;
  v33[v32] = realp[v32] * realp[v32];
  memcpy(*(this + 501), *(this + 200), 4 * *(this + 149));
  *&__C.realp = 1.0 - *(this + 408);
  MEMORY[0x1E12BE940](*(this + 501), 1, &__C, *(this + 501), 1, *(this + 149));
  MEMORY[0x1E12BE940](*(this + 525), 1, this + 1632, *(this + 525), 1, *(this + 149));
  MEMORY[0x1E12BE5D0](*(this + 501), 1, *(this + 525), 1, *(this + 501), 1, *(this + 149));
  memcpy(*(this + 525), *(this + 501), 4 * *(this + 149));
  MEMORY[0x1E12BE9A0](*(this + 3 * *(this + 173) + 309), 1, *(this + 501), 1, *(this + 528), 1, *(this + 149));
  vDSP_vthr(*(this + 528), 1, &__B, *(this + 507), 1, *(this + 149));
  MEMORY[0x1E12BE7F0](*(this + 507), 1, *(this + 213), 1, *(this + 510), 1, *(this + 149));
  LODWORD(v32) = *(this + 149);
  MEMORY[0x1E12BE940](*(this + 510), 1, this + 4272, *(this + 537), 1, v32);
  *(this + 1184) = fminf((*(this + 1184) + 1), floorf((*(this + 146) * 30.0) / v32));
  ++*(this + 1185);
  v34 = *(this + 1071);
  v35 = 0;
  if (v34 <= 0x63)
  {
    *(this + 1071) = v34 + 1;
    if (!v34)
    {
      v35 = 1;
    }
  }

  *(this + 4288) = v35;
  v36 = *(this + 149);
  v37 = 1.0 - *(this + 1178);
  *&__C.realp = v37 * 0.333;
  v104 = v37 * 0.667;
  v38 = *(this + 576);
  *v38 = 0;
  MEMORY[0x1E12BE940](*(this + 537), 1, &__C, v38 + 1, 1, (v36 - 1));
  MEMORY[0x1E12BE8F0](*(this + 537) + 4, 1, &__C, *(this + 576), 1, *(this + 576), 1, (v36 - 1));
  MEMORY[0x1E12BE8F0](*(this + 537), 1, &v104, *(this + 576), 1, *(this + 576), 1, v36);
  MEMORY[0x1E12BE8F0](*(this + 552), 1, this + 4712, *(this + 576), 1, *(this + 552), 1, v36);
  v39 = *(this + 1184);
  if (v39 == 1)
  {
    vDSP_vclr(*(this + 555), 1, v36);
    vDSP_vclr(*(this + 558), 1, v36);
    v39 = *(this + 1184);
  }

  v40 = *(this + 146) / v36;
  v41 = v40 * 0.5;
  v42 = roundf(v40 * 0.2);
  v43 = roundf(v40 + v40);
  if (v41 > v39)
  {
    v43 = v42;
  }

  if (*(this + 1185) > v43 || *(this + 4288) == 1)
  {
    *(this + 1185) = 0;
    vDSP_vmin(*(this + 558), 1, *(this + 552), 1, *(this + 555), 1, v36);
    memcpy(*(this + 558), *(this + 552), 4 * v36);
  }

  else
  {
    vDSP_vmin(*(this + 555), 1, *(this + 552), 1, *(this + 555), 1, v36);
    vDSP_vmin(*(this + 558), 1, *(this + 552), 1, *(this + 558), 1, v36);
  }

  v103 = 507307272;
  MEMORY[0x1E12BE8A0](*(this + 552), 1, &v103, *(this + 576), 1, v36);
  MEMORY[0x1E12BE8A0](*(this + 555), 1, &v103, *(this + 579), 1, v36);
  vDSP_vdiv(*(this + 579), 1, *(this + 576), 1, *(this + 561), 1, v36);
  MEMORY[0x1E12BE7F0](*(this + 555), 1, *(this + 573), 1, *(this + 576), 1, v36);
  MEMORY[0x1E12BE9A0](*(this + 576), 1, *(this + 552), 1, *(this + 564), 1, v36);
  v44 = *(this + 149);
  *&__C.realp = 1.0 - *(this + 1182);
  v104 = *(this + 1181);
  v45 = *(this + 1184);
  v46 = vcvtas_u32_f32((*(this + 146) / v44) * 30.0);
  if (v45 + 1 < v46)
  {
    v47 = v45 + 1;
  }

  else
  {
    v47 = v46;
  }

  *(this + 1184) = v47;
  ++*(this + 1185);
  vDSP_vclr(*(this + 576), 1, v44);
  vDSP_vclr(*(this + 579), 1, v44);
  vDSP_vclr(*(this + 570), 1, v44);
  MEMORY[0x1E12BE940](*(this + 537), 1, this + 4728, *(this + 579), 1, v44);
  MEMORY[0x1E12BE8F0](*(this + 549), 1, &__C, *(this + 579), 1, *(this + 579), 1, v44);
  MEMORY[0x1E12BE940](*(this + 555), 1, &v104, *(this + 576), 1, v44);
  MEMORY[0x1E12BE9A0](*(this + 576), 1, *(this + 537), 1, *(this + 567), 1, v44);
  vDSP_vmax(*(this + 567), 1, *(this + 564), 1, *(this + 570), 1, v44);
  v48 = 4 * v44;
  if (v44)
  {
    v49 = 0;
    v50 = *(this + 570);
    do
    {
      if (*(v50 + v49) <= 0.0 && (v51 = this + 4296, !*(this + 407)) || (v51 = this + 4632, *(*(this + 552) + v49) < (*(this + 1183) * *(*(this + 555) + v49))))
      {
        *(*(this + 549) + v49) = *(*v51 + v49);
      }

      v49 += 4;
    }

    while (v48 != v49);
  }

  memcpy(*(this + 543), *(this + 537), v48);
  MEMORY[0x1E12BE940](*(this + 549), 1, this + 4276, *(this + 546), 1, v44);
  vDSP_sve(*(this + 546), 1, this + 175, *(this + 149));
  v52 = *(this + 149);
  v53 = log10((*(this + 175) / v52) + 1.0e-20) * 10.0;
  *(this + 175) = v53;
  v54 = *(this + 546);
  v55 = *(this + 516);
  LODWORD(__C.realp) = 0;
  if (v52)
  {
    v56 = 0;
    v57 = 0;
    do
    {
      v58 = *(*(this + 405) + 4 * v56);
      MEMORY[0x1E12BE7F0](v54 + 4 * (*(*(this + 402) + 4 * v56) - 1), 1, *(this + 399) + 4 * v57, 1, *(this + 528), 1, v58);
      vDSP_sve(*(this + 528), 1, &__C, v58);
      *(v55 + 4 * v56) = __C.realp;
      v57 += v58;
      ++v56;
      v59 = *(this + 149);
    }

    while (v56 < v59);
    v55 = *(this + 516);
  }

  else
  {
    v59 = 0;
  }

  MEMORY[0x1E12BE940](v55, 1, this + 1640, *(this + 519), 1, v59);
  vDSP_vmax(*(this + 531), 1, *(this + 519), 1, *(this + 522), 1, *(this + 149));
  v60 = AULoudnessInNoise::Loudness(this, *(this + 173));
  *(this + 161) = v60;
  v61 = *(this + 136);
  if (v61 == 1)
  {
    v62 = *(this + 380);
    v63 = *(this + 381);
    if (v62 >= v63)
    {
      v64 = (this + 696);
      *(this + 162) = v60 / (*(this + 174) + 1.0e-20);
      v61 = 1;
LABEL_79:
      v65 = *(this + 380);
      v66 = *(this + 381);
      if (v65 < v66)
      {
        v67 = v66 - v65;
        v68 = (*(this + 91) + 4 * v65);
        v69 = (*(this + 88) + 4 * v65);
        do
        {
          v70 = *v69++;
          *v68++ = v70 / (*v64 + 1.0e-20);
          --v67;
        }

        while (v67);
      }

      goto LABEL_82;
    }

    do
    {
      if (v62 == *(this + 173))
      {
        *(*(this + 88) + 4 * v62) = *(this + 161);
      }

      else
      {
        *(*(this + 88) + 4 * v62) = AULoudnessInNoise::Loudness(this, v62);
        v63 = *(this + 381);
      }

      ++v62;
    }

    while (v62 < v63);
    v61 = *(this + 136);
    *(this + 162) = *(this + 161) / (*(this + 174) + 1.0e-20);
    if (v61 == 1)
    {
      v64 = (this + 696);
      goto LABEL_79;
    }
  }

  else
  {
    *(this + 162) = v60 / (*(this + 174) + 1.0e-20);
  }

LABEL_82:
  v71 = *(this + 416);
  v72 = *(this + 415);
  if (v71 >= v72)
  {
    v71 = 0;
    *(this + 416) = 0;
  }

  v73 = *(this + 82);
  v73[v71] = *(this + 162);
  v74 = v71 % v72;
  if (!(v71 % v72))
  {
    vDSP_vsort(v73, v72, 1);
    *(this + 170) = *(*(this + 82) + 4 * *(this + 418));
    v75 = *(this + 419);
    if ((v75 + 1) >> 8 <= 0x7C)
    {
      v76 = v75 + 1;
    }

    else
    {
      v76 = 0;
    }

    *(this + 419) = v76;
    v61 = *(this + 136);
  }

  if (v61 == 1)
  {
    v77 = *(this + 380);
    v78 = *(this + 381);
    if (v77 < v78)
    {
      v79 = *(this + 416);
      v80 = v78 - v77;
      v81 = (this + 24 * v77 + 752);
      v82 = (*(this + 91) + 4 * v77);
      do
      {
        v83 = *v82++;
        v84 = v83;
        v85 = *v81;
        v81 += 3;
        *(v85 + 4 * v79) = v84;
        --v80;
      }

      while (v80);
      if (!v74)
      {
        v86 = (this + 24 * v77 + 752);
        do
        {
          if (v77 == *(this + 173))
          {
            *(*(this + 184) + 4 * v77) = *(this + 170);
          }

          else
          {
            vDSP_vsort(*v86, *(this + 415), 1);
            *(*(this + 184) + 4 * v77) = (*v86)[*(this + 418)];
            v78 = *(this + 381);
          }

          ++v77;
          v86 += 3;
        }

        while (v77 < v78);
      }
    }
  }

  v87 = *(this + 416);
  if ((v87 + 1) % *(this + 415))
  {
    v88 = v87 + 1;
  }

  else
  {
    v88 = 0;
  }

  *(this + 416) = v88;
LABEL_103:
  v89 = *(this + 173);
  *(this + 171) = 2 * (*(this + 170) >= *(*(this + 408) + 4 * v89));
  if (*(this + 136) == 1)
  {
    v90 = *(this + 380);
    v91 = *(this + 381);
    if (v90 < v91)
    {
      v92 = this + 24 * v89;
      v93 = (*(this + 187) + 4 * v90);
      v94 = v91 - v90;
      v95 = (*(v92 + 411) + 4 * v90);
      v96 = (*(this + 184) + 4 * v90);
      do
      {
        v97 = *v96++;
        v98 = v97;
        v99 = *v95++;
        if (v98 >= v99)
        {
          v100 = 2.0;
        }

        else
        {
          v100 = 0.0;
        }

        *v93++ = v100;
        --v94;
      }

      while (v94);
    }
  }

  AULoudnessInNoise::UpdateOutputParams(this);
  result = 0;
  ++*(this + 1186);
  return result;
}

void AULoudnessInNoise::InitializeInternals(AULoudnessInNoise *this)
{
  *(this + 137) = *(this + 136);
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_66;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0);
  *(this + 136) = Parameter != 0;
  if (Parameter)
  {
    *(this + 380) = 0;
    *(this + 381) = *(this + 145);
  }

  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_66;
  }

  *(this + 138) = ausdk::AUElement::GetParameter(v5, 1u) != 0;
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_66;
  }

  v9 = ausdk::AUElement::GetParameter(v7, 2u);
  if (v9 >= 0x14)
  {
    v9 = 20;
  }

  *(this + 139) = v9;
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_66;
  }

  v12 = ausdk::AUElement::GetParameter(v10, 4u);
  *(this + 417) = v12;
  v13 = 1120403456;
  if (v12 > 100.0 || (v13 = 0, v12 < 0.0))
  {
    *(this + 417) = v13;
  }

  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_66;
  }

  *v16.i32 = ausdk::AUElement::GetParameter(v14, 3u);
  if (*(this + 413) != *v16.i32 || !*(this + 1656) || *(this + 137) != *(this + 136))
  {
    *(this + 413) = v16.i32[0];
    v17 = 10.0;
    if (*v16.i32 > 10.0 || (v17 = 0.5, *v16.i32 < 0.5))
    {
      *(this + 413) = v17;
      *v16.i32 = v17;
    }

    *v16.i32 = *v16.i32 / (*(this + 147) / *(this + 146));
    v18 = *v16.i32 - 1;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    *(this + 415) = v19;
    v58 = 0;
    std::vector<float>::assign(this + 82, v19, &v58, v16);
    if (*(this + 136) == 1)
    {
      v21 = *(this + 380);
      if (v21 < *(this + 381))
      {
        v22 = (this + 24 * v21 + 752);
        do
        {
          v23 = *(this + 415);
          v57 = 0;
          std::vector<float>::assign(v22, v23, &v57, v20);
          ++v21;
          v22 += 3;
        }

        while (v21 < *(this + 381));
      }
    }

    *(this + 416) = 0;
    v24 = *(this + 415);
    v25 = (*(this + 417) * v24) / 100.0;
    if (v25 <= 0.0)
    {
      v25 = 0.0;
    }

    if (v24 <= v25)
    {
      v26 = v24 - 1;
    }

    else
    {
      v26 = v25;
    }

    *(this + 418) = v26;
    *(this + 1656) = 1;
  }

  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_66;
  }

  v29 = ausdk::AUElement::GetParameter(v27, 5u);
  if (v29 >= 6)
  {
    v29 = 6;
  }

  *(this + 152) = v29;
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_66;
  }

  v32 = ausdk::AUElement::GetParameter(v30, 6u);
  *(this + 153) = v32;
  v33 = 1.0;
  if (v32 > 1.0 || (v33 = 0.0, v32 < 0.0))
  {
    *(this + 153) = v33;
  }

  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_66;
  }

  v36 = ausdk::AUElement::GetParameter(v34, 7u);
  *(this + 154) = v36;
  v37 = 10.0;
  if (v36 > 10.0 || (v37 = -200.0, v36 < -200.0))
  {
    *(this + 154) = v37;
  }

  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_66;
  }

  v40 = ausdk::AUElement::GetParameter(v38, 8u);
  *(this + 155) = v40;
  v41 = 10.0;
  if (v40 > 10.0 || (v41 = -200.0, v40 < -200.0))
  {
    *(this + 155) = v41;
  }

  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_66;
  }

  v44 = ausdk::AUElement::GetParameter(v42, 9u);
  *(this + 157) = v44;
  v45 = 1174011904;
  if (v44 > 8000.0 || (v45 = 0, v44 < 0.0))
  {
    *(this + 157) = v45;
  }

  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_66;
  }

  v48 = ausdk::AUElement::GetParameter(v46, 0xAu);
  *(this + 158) = v48;
  v49 = 1174011904;
  if (v48 > 8000.0 || (v49 = 0, v48 < 0.0))
  {
    *(this + 158) = v49;
  }

  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_66;
  }

  v52 = ausdk::AUElement::GetParameter(v50, 0xBu);
  *(this + 159) = v52;
  v53 = 4.0;
  if (v52 > 4.0 || (v53 = 0.0, v52 < 0.0))
  {
    *(this + 159) = v53;
  }

  v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v55 & 1) == 0)
  {
LABEL_66:
    abort();
  }

  v56 = ausdk::AUElement::GetParameter(v54, 0xCu);
  *(this + 160) = v56;
  if (v56 <= 4.0)
  {
    if (v56 < 0.0)
    {
      *(this + 160) = 0;
    }
  }

  else
  {
    *(this + 159) = 1082130432;
  }
}

void AULoudnessInNoise::UpdateDynParams(AULoudnessInNoise *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0x1Eu);
  if (Parameter > 5000.0)
  {
    Parameter = 5000.0;
  }

  if (Parameter < 0.0)
  {
    Parameter = 0.0;
  }

  *(this + 172) = Parameter;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
LABEL_12:
    abort();
  }

  v7 = ausdk::AUElement::GetParameter(v5, 0x20u);
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  *(this + 151) = v7;
}

void AULoudnessInNoise::UpdateOutputParams(AULoudnessInNoise *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (ausdk::AUElement::SetParameter(v2, 0x3Cu, *(this + 161)), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (ausdk::AUElement::SetParameter(v4, 0x3Du, *(this + 162)), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0x3Eu, *(this + 170)), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0x3Fu, *(this + 171)), v10 = *(*(this + 210) + 4 * *(this + 173)), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 0x40u, v10), v13 = *(this + 419), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 0x41u, v13), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0))
  {
    abort();
  }

  v18 = *(this + 175);

  ausdk::AUElement::SetParameter(v16, 0x42u, v18);
}

float AULoudnessInNoise::Loudness(AULoudnessInNoise *this, unsigned int a2)
{
  v3 = *(this + 159);
  v4 = *(this + 160);
  v5 = this + 24 * a2;
  MEMORY[0x1E12BE9A0](*(this + 522), 1, *(v5 + 216), 1, *(this + 528), 1, *(this + 149));
  v6 = *(this + 411);
  v7 = *(this + 412);
  v8 = 0.0;
  if (v6 < v7)
  {
    v9 = *(this + 528);
    v10 = *(this + 516);
    v11 = *(v5 + 216);
    v12 = *(this + 306);
    v13 = v7 - v6;
    v14 = (v12 + 4 * v6);
    v15 = (v11 + 4 * v6);
    v16 = (v10 + 4 * v6);
    v17 = (v9 + 4 * v6);
    do
    {
      v18 = *v17++;
      v19 = fmaxf(v18, 0.0);
      v20 = *v16++;
      v21 = v20;
      v22 = *v15++;
      v23 = powf(v21 / (v22 + 1.0e-30), v3);
      v24 = powf(v19 / (v23 + 1.0), v4);
      v25 = *v14++;
      v8 = v8 + (v25 * v24);
      --v13;
    }

    while (v13);
  }

  return v8;
}

uint64_t AULoudnessInNoise::SetParameter(AULoudnessInNoise *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  if (*(this + 17) == 1)
  {
    if (a2 >= 0xD)
    {
      v8 = 568;
      if (a2 != 32 && a2 != 30)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 560;
    }

    ++*(this + v8);
  }

LABEL_11:
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v10 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v9, a2, a5);
  return 0;
}

uint64_t AULoudnessInNoise::SetProperty(AULoudnessInNoise *this, int a2, int a3, unsigned int a4, const __CFDictionary **a5, unsigned int a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 4000)
  {
    if (AULINNLogScope(void)::once != -1)
    {
      dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
    }

    if (AULINNLogScope(void)::scope)
    {
      v9 = *AULINNLogScope(void)::scope;
      if (!*AULINNLogScope(void)::scope)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AULoudnessInNoise.cpp";
      v43 = 1024;
      v44 = 1172;
      v45 = 1024;
      LODWORD(v46) = 4000;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Setting property DATA (prop id: %d).", buf, 0x18u);
    }

LABEL_21:
    if (a5)
    {
      v10 = *a5;
      valuePtr = 0;
      Value = CFDictionaryGetValue(v10, @"SampleRate");
      if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
      {
        if (AULINNLogScope(void)::once != -1)
        {
          dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
        }

        if (AULINNLogScope(void)::scope)
        {
          if (*(AULINNLogScope(void)::scope + 8))
          {
            v30 = *AULINNLogScope(void)::scope;
            if (*AULINNLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "AULoudnessInNoise.cpp";
                v43 = 1024;
                v44 = 1005;
                _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve sample rate.\n", buf, 0x12u);
              }
            }
          }
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "Failed to retrieve sample rate from input dictionary.", -1);
      }

      if (AULINNLogScope(void)::once != -1)
      {
        dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
      }

      if (AULINNLogScope(void)::scope)
      {
        if (*(AULINNLogScope(void)::scope + 8))
        {
          v12 = *AULINNLogScope(void)::scope;
          if (*AULINNLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "AULoudnessInNoise.cpp";
              v43 = 1024;
              v44 = 1003;
              v45 = 1024;
              LODWORD(v46) = valuePtr;
              _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved sample rate (%iHz).\n", buf, 0x18u);
            }
          }
        }
      }

      if (*(this + 146) != valuePtr)
      {
        return 4294956417;
      }

      v40 = -1;
      v13 = CFDictionaryGetValue(v10, @"HearingThreshold");
      if (!CFNumberGetValue(v13, kCFNumberIntType, &v40))
      {
        if (AULINNLogScope(void)::once != -1)
        {
          dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
        }

        if (AULINNLogScope(void)::scope)
        {
          if (*(AULINNLogScope(void)::scope + 8))
          {
            v32 = *AULINNLogScope(void)::scope;
            if (*AULINNLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "AULoudnessInNoise.cpp";
                v43 = 1024;
                v44 = 1023;
                _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve Microphone Sensitivity/Hearing Threshold !\n", buf, 0x12u);
              }
            }
          }
        }

        v33 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v33, "Failed to retrieve Microphone Sensitivity/Hearing Threshold from input dictionary !", -1);
      }

      if (AULINNLogScope(void)::once != -1)
      {
        dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
      }

      if (AULINNLogScope(void)::scope)
      {
        if (*(AULINNLogScope(void)::scope + 8))
        {
          v14 = *AULINNLogScope(void)::scope;
          if (*AULINNLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "AULoudnessInNoise.cpp";
              v43 = 1024;
              v44 = 1019;
              v45 = 1024;
              LODWORD(v46) = v40;
              _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved Microphone Sensitivity/Hearing Threshold (%d) dB.\n", buf, 0x18u);
            }
          }
        }
      }

      *(this + 135) = v40;
      *(this + 174) = 1014887350;
      v39 = 0;
      v15 = CFDictionaryGetValue(v10, @"nRefLevs");
      if (!CFNumberGetValue(v15, kCFNumberIntType, &v39))
      {
        if (AULINNLogScope(void)::once != -1)
        {
          dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
        }

        if (AULINNLogScope(void)::scope)
        {
          if (*(AULINNLogScope(void)::scope + 8))
          {
            v34 = *AULINNLogScope(void)::scope;
            if (*AULINNLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "AULoudnessInNoise.cpp";
                v43 = 1024;
                v44 = 1050;
                _os_log_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve number of Ref Levels.\n", buf, 0x12u);
              }
            }
          }
        }

        v35 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v35, "Failed to retrieve number of Levels from input dictionary.", -1);
      }

      if (AULINNLogScope(void)::once != -1)
      {
        dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
      }

      if (AULINNLogScope(void)::scope)
      {
        if (*(AULINNLogScope(void)::scope + 8))
        {
          v16 = *AULINNLogScope(void)::scope;
          if (*AULINNLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "AULoudnessInNoise.cpp";
              v43 = 1024;
              v44 = 1048;
              v45 = 1024;
              LODWORD(v46) = v39;
              _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved number of Ref Levels (%i).\n", buf, 0x18u);
            }
          }
        }
      }

      if (*(this + 145) > 0x1Eu)
      {
        v36 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v36, "Too many Reference Spectrums.", -1);
      }

      *(this + 145) = v39;
      AULoudnessInNoise::ReadVectorFromDictionary(v10, @"RefLevels", this + 210);
      AULoudnessInNoise::ReadVectorFromDictionary(v10, @"DecisionThresholds", this + 408);
      AULoudnessInNoise::ReadVectorFromDictionary(v10, @"spreadingMatrixSmall", this + 399);
      AULoudnessInNoise::ReadUInt32VectorFromDictionary(v10, @"spread_left_UInt32", this + 134);
      AULoudnessInNoise::ReadUInt32VectorFromDictionary(v10, @"spreadingMatrixSmall_Lengths_UInt32", this + 135);
      AULoudnessInNoise::ReadVectorFromDictionary(v10, @"Mic2ErpTx", this + 213);
      AULoudnessInNoise::ReadVectorFromDictionary(v10, @"FreqWeight", this + 306);
      if (*(this + 145))
      {
        v17 = 0;
        v18 = (this + 1728);
        do
        {
          std::to_string(buf, *(*(this + 210) + 4 * v17));
          v19 = std::string::insert(buf, 0, "lev", 3uLL);
          v20 = *&v19->__r_.__value_.__l.__data_;
          v38 = v19->__r_.__value_.__r.__words[2];
          *__p = v20;
          v19->__r_.__value_.__l.__size_ = 0;
          v19->__r_.__value_.__r.__words[2] = 0;
          v19->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE3(v46) < 0)
          {
            operator delete(*buf);
          }

          v21 = v38 >= 0 ? __p : __p[0];
          v22 = CFStringCreateWithCString(0, v21, 0x8000100u);
          v23 = CFDictionaryGetValue(v10, v22);
          if (v23)
          {
            if (AULINNLogScope(void)::once != -1)
            {
              dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
            }

            if (AULINNLogScope(void)::scope)
            {
              if (*(AULINNLogScope(void)::scope + 8))
              {
                v24 = *AULINNLogScope(void)::scope;
                if (*AULINNLogScope(void)::scope)
                {
                  if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
                  {
                    if (v38 >= 0)
                    {
                      v25 = __p;
                    }

                    else
                    {
                      v25 = __p[0];
                    }

                    *buf = 136315650;
                    *&buf[4] = "AULoudnessInNoise.cpp";
                    v43 = 1024;
                    v44 = 1106;
                    v45 = 2080;
                    v46 = v25;
                    _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary: %s\n", buf, 0x1Cu);
                  }
                }
              }
            }

            CFRelease(v22);
            AULoudnessInNoise::ReadVectorFromDictionary(v23, @"RefSpecAtRefMic", v18 + 93);
            AULoudnessInNoise::ReadVectorFromDictionary(v23, @"RefSpecSpreadAtErp", v18);
            if (AULoudnessInNoise::ReadVectorFromDictionary(v23, @"DecisionThresholdsMixed", v18 + 195))
            {
              v18[196] = v18[195];
            }
          }

          else
          {
            if (AULINNLogScope(void)::once != -1)
            {
              dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
            }

            if (AULINNLogScope(void)::scope)
            {
              if (*(AULINNLogScope(void)::scope + 8))
              {
                v26 = *AULINNLogScope(void)::scope;
                if (*AULINNLogScope(void)::scope)
                {
                  if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
                  {
                    if (v38 >= 0)
                    {
                      v27 = __p;
                    }

                    else
                    {
                      v27 = __p[0];
                    }

                    *buf = 136315650;
                    *&buf[4] = "AULoudnessInNoise.cpp";
                    v43 = 1024;
                    v44 = 1100;
                    v45 = 2080;
                    v46 = v27;
                    _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Missing dictionary: %s\n", buf, 0x1Cu);
                  }
                }
              }
            }

            CFRelease(v22);
          }

          if (SHIBYTE(v38) < 0)
          {
            operator delete(__p[0]);
          }

          if (!v23)
          {
            return 4294956417;
          }

          ++v17;
          v18 += 3;
        }

        while (v17 < *(this + 145));
      }

      if (AULoudnessInNoise::Validate_Level_Spreading_PropertyRelatedValues(this))
      {
        return 4294956417;
      }

      *(this + 1624) = 1;
      if (AULINNLogScope(void)::once != -1)
      {
        dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
      }

      if (AULINNLogScope(void)::scope)
      {
        v29 = *AULINNLogScope(void)::scope;
        if (!*AULINNLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 136315394;
      *&buf[4] = "AULoudnessInNoise.cpp";
      v43 = 1024;
      v44 = 1184;
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d Linn Data successfully set.", buf, 0x12u);
      return 0;
    }

    if (AULINNLogScope(void)::once != -1)
    {
      dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
    }

    if (AULINNLogScope(void)::scope)
    {
      v28 = *AULINNLogScope(void)::scope;
      if (!*AULINNLogScope(void)::scope)
      {
        return 4294956445;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AULoudnessInNoise.cpp";
      v43 = 1024;
      v44 = 1175;
      _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.", buf, 0x12u);
    }

    return 4294956445;
  }

  if (a2 != 3700)
  {
    if (a2 == 21)
    {
      if (a6 == 4)
      {
        result = 0;
        *(this + 577) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    return 4294956417;
  }

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

  return result;
}

uint64_t AULoudnessInNoise::ReadVectorFromDictionary(const __CFDictionary *a1, const __CFString *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v6 = Value;
    Length = CFDataGetLength(Value);
    v8 = Length >> 2;
    v17 = 0;
    std::vector<float>::assign(a3, Length >> 2, &v17, v9);
    BytePtr = CFDataGetBytePtr(v6);
    if (Length >= 4)
    {
      v11 = *a3;
      if (v8 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8;
      }

      do
      {
        v13 = *BytePtr;
        BytePtr += 4;
        *v11++ = bswap32(v13);
        --v12;
      }

      while (v12);
    }

    return 0;
  }

  else
  {
    if (AULINNLogScope(void)::once != -1)
    {
      dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
    }

    v14 = 4294900555;
    if (AULINNLogScope(void)::scope)
    {
      if (*(AULINNLogScope(void)::scope + 8))
      {
        v16 = *AULINNLogScope(void)::scope;
        if (*AULINNLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v17 = 136315650;
            v18 = "AULoudnessInNoise.cpp";
            v19 = 1024;
            v20 = 1216;
            v21 = 2080;
            CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
            _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve %s.\n", &v17, 0x1Cu);
          }
        }
      }
    }
  }

  return v14;
}

void AULoudnessInNoise::ReadUInt32VectorFromDictionary(const __CFDictionary *a1, const __CFString *a2, std::vector<unsigned int> *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v6 = Value;
    Length = CFDataGetLength(Value);
    v8 = Length >> 2;
    v14 = 0;
    std::vector<unsigned int>::assign(a3, Length >> 2, &v14);
    BytePtr = CFDataGetBytePtr(v6);
    if (Length >= 4)
    {
      begin = a3->__begin_;
      if (v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      do
      {
        v12 = *BytePtr;
        BytePtr += 4;
        *begin++ = v12;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    if (AULINNLogScope(void)::once != -1)
    {
      dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
    }

    if (AULINNLogScope(void)::scope)
    {
      if (*(AULINNLogScope(void)::scope + 8))
      {
        v13 = *AULINNLogScope(void)::scope;
        if (*AULINNLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AULINNLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v14 = 136315650;
            v15 = "AULoudnessInNoise.cpp";
            v16 = 1024;
            v17 = 954;
            v18 = 2080;
            CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
            _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve %s.\n", &v14, 0x1Cu);
          }
        }
      }
    }
  }
}

uint64_t AULoudnessInNoise::Validate_Level_Spreading_PropertyRelatedValues(AULoudnessInNoise *this)
{
  v1 = *(this + 145);
  if (v1 <= 0x1E)
  {
    LODWORD(v2) = 0;
  }

  else
  {
    LODWORD(v2) = 1836020332;
  }

  if (v1 <= (*(this + 211) - *(this + 210)) >> 2)
  {
    v2 = v2;
  }

  else
  {
    v2 = 1717925740;
  }

  if (!v2)
  {
    v2 = 1936745827;
    v3 = *(this + 402);
    v4 = *(this + 403) - v3;
    v5 = v4 >> 2;
    v6 = *(this + 149);
    if (v4 >> 2 == v6 && *(this + 307) - *(this + 306) == v4)
    {
      v7 = *(this + 405);
      if (*(this + 406) - v7 == v4 && *(this + 214) - *(this + 213) == v4)
      {
        if (!v1)
        {
          goto LABEL_26;
        }

        LODWORD(v8) = 0;
        v9 = (this + 1728);
        v10 = *(this + 145);
        do
        {
          if (v9[1] - *v9 == v4 && v9[94] - v9[93] == v4)
          {
            v8 = v8;
          }

          else
          {
            v8 = 1936745827;
          }

          if (*(this + 136) == 1)
          {
            if (v1 <= (v9[196] - v9[195]) >> 2)
            {
              v8 = v8;
            }

            else
            {
              v8 = 1717925740;
            }
          }

          v9 += 3;
          --v10;
        }

        while (v10);
        v2 = v8;
        if (!v8)
        {
LABEL_26:
          v12 = 0;
          if (v6)
          {
            v13 = *(this + 405);
            v14 = v4 >> 2;
            do
            {
              v15 = *v13++;
              v12 += v15;
              --v14;
            }

            while (v14);
          }

          if ((*(this + 400) - *(this + 399)) >> 2 < v12 || v12 > 0x7023)
          {
            v2 = 1650815602;
          }

          else
          {
            v2 = 0;
          }

          if (v6)
          {
            do
            {
              v18 = *v7++;
              v17 = v18;
              v19 = *v3++;
              if (v17 + v19 - 1 <= v6)
              {
                v2 = v2;
              }

              else
              {
                v2 = 1650815602;
              }

              --v5;
            }

            while (v5);
          }
        }
      }
    }
  }

  return v2;
}

uint64_t AULoudnessInNoise::GetProperty(AULoudnessInNoise *this, int a2, int a3, unsigned int a4, CFDictionaryRef *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 70009)
  {
    if (a2 <= 70012)
    {
      if (a2 == 70010)
      {
        v9 = *(this + 210);
      }

      else if (a2 == 70011)
      {
        v9 = *(this + 88);
      }

      else
      {
        v9 = *(this + 91);
      }
    }

    else
    {
      if (a2 > 70999)
      {
        if (a2 == 71000)
        {
          result = 0;
          v8 = *(this + 172);
          goto LABEL_77;
        }

        if (a2 != 80000)
        {
          return result;
        }

        v40 = 0;
        *&v41 = 0;
        __p = &v40;
        std::string::basic_string[abi:ne200100]<0>(&p_p, "RawLoudness");
        v34 = &p_p;
        v26 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &p_p) + 7;
        if (v26 != (this + 704))
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v26, *(this + 88), *(this + 89), (*(this + 89) - *(this + 88)) >> 2);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(p_p);
        }

        std::string::basic_string[abi:ne200100]<0>(&p_p, "NormLoudness");
        v34 = &p_p;
        v27 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &p_p) + 7;
        if (v27 != (this + 728))
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v27, *(this + 91), *(this + 92), (*(this + 92) - *(this + 91)) >> 2);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(p_p);
        }

        std::string::basic_string[abi:ne200100]<0>(&p_p, "LoudnessPercentile");
        v34 = &p_p;
        v28 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &p_p) + 7;
        if (v28 != (this + 1472))
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v28, *(this + 184), *(this + 185), (*(this + 185) - *(this + 184)) >> 2);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(p_p);
        }

        std::string::basic_string[abi:ne200100]<0>(&p_p, "Audibility");
        v34 = &p_p;
        v29 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &p_p) + 7;
        if (v29 != (this + 1496))
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v29, *(this + 187), *(this + 188), (*(this + 188) - *(this + 187)) >> 2);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(p_p);
        }

        std::string::basic_string[abi:ne200100]<0>(&p_p, "Levels");
        v34 = &p_p;
        v30 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__p, &p_p) + 7;
        if (v30 != (this + 1680))
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v30, *(this + 210), *(this + 211), (*(this + 211) - *(this + 210)) >> 2);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(p_p);
        }

        v31 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::vector<float>>(&__p);
        p_p = v31;
        CFRetain(v31);
        *__dst = v31;
        CFRelease(v31);
        std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v40);
        return 0;
      }

      if (a2 == 70013)
      {
        v9 = *(this + 184);
      }

      else
      {
        if (a2 != 70014)
        {
          return result;
        }

        v9 = *(this + 187);
      }
    }

    memcpy(__dst, v9, 4 * *(this + 145));
    return 0;
  }

  if (a2 <= 70000)
  {
    switch(a2)
    {
      case 21:
        result = 0;
        v32 = *(this + 577);
        break;
      case 3700:
        result = 0;
        v32 = *(this + 376);
        break;
      case 70000:
        v35 = 0;
        v36 = 0;
        v34 = &v35;
        v10 = *(this + 161);
        std::string::basic_string[abi:ne200100]<0>(&__p, "RawLoudness");
        p_p = &__p;
        *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v34, &__p) + 14) = v10;
        if (SBYTE7(v41) < 0)
        {
          operator delete(__p);
        }

        v11 = *(this + 162);
        std::string::basic_string[abi:ne200100]<0>(&__p, "NormLoudness");
        p_p = &__p;
        *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v34, &__p) + 14) = v11;
        if (SBYTE7(v41) < 0)
        {
          operator delete(__p);
        }

        v12 = *(this + 170);
        std::string::basic_string[abi:ne200100]<0>(&__p, "LoudnessPercentile");
        p_p = &__p;
        *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v34, &__p) + 14) = v12;
        if (SBYTE7(v41) < 0)
        {
          operator delete(__p);
        }

        v13 = *(this + 171);
        std::string::basic_string[abi:ne200100]<0>(&__p, "Audibility");
        p_p = &__p;
        *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v34, &__p) + 14) = v13;
        if (SBYTE7(v41) < 0)
        {
          operator delete(__p);
        }

        p_p = 0;
        v38 = 0uLL;
        std::vector<applesauce::CF::TypeRefPair>::reserve(&p_p, v36);
        v14 = v34;
        if (v34 != &v35)
        {
          v15 = v38;
          do
          {
            if (v15 >= *(&v38 + 1))
            {
              v16 = (v15 - p_p) >> 4;
              if ((v16 + 1) >> 60)
              {
                std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
              }

              v17 = (*(&v38 + 1) - p_p) >> 3;
              if (v17 <= v16 + 1)
              {
                v17 = v16 + 1;
              }

              if (*(&v38 + 1) - p_p >= 0x7FFFFFFFFFFFFFF0uLL)
              {
                v18 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v18 = v17;
              }

              p_p_p = &p_p;
              if (v18)
              {
                std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v18);
              }

              __p = 0;
              v40 = (16 * v16);
              v41 = (16 * v16);
              applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,float const&>((16 * v16), v14 + 32, v14 + 14);
              *&v41 = v41 + 16;
              v19 = p_p + v40 - v38;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&p_p, p_p, v38, v19);
              v20 = p_p;
              v21 = *(&v38 + 1);
              p_p = v19;
              v33 = v41;
              v38 = v41;
              *&v41 = v20;
              *(&v41 + 1) = v21;
              __p = v20;
              v40 = v20;
              std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&__p);
              v15 = v33;
            }

            else
            {
              applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,float const&>(v15, v14 + 32, v14 + 14);
              v15 += 2;
            }

            *&v38 = v15;
            v22 = v14[1];
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = v14[2];
                v24 = *v23 == v14;
                v14 = v23;
              }

              while (!v24);
            }

            v14 = v23;
          }

          while (v23 != &v35);
        }

        CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&p_p);
        __p = &p_p;
        std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&__p);
        CFRetain(CFDictionaryRef);
        *__dst = CFDictionaryRef;
        CFRelease(CFDictionaryRef);
        std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v35);
        return 0;
      default:
        return result;
    }

    *__dst = v32;
    return result;
  }

  if (a2 <= 70002)
  {
    result = 0;
    if (a2 == 70001)
    {
      v8 = *(this + 161);
    }

    else
    {
      v8 = *(this + 162);
    }

    goto LABEL_77;
  }

  if (a2 == 70003)
  {
    result = 0;
    v8 = *(this + 170);
    goto LABEL_77;
  }

  if (a2 == 70004)
  {
    result = 0;
    v8 = *(this + 171);
LABEL_77:
    *__dst = v8;
  }

  return result;
}

void sub_1DDF938E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, char *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a12);
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a14);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,float const&>(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr = *a3;
  v8 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  return a1;
}

void sub_1DDF93BDC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AULoudnessInNoise::GetPropertyInfo(AULoudnessInNoise *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 70009)
  {
    if ((a2 - 70010) < 5)
    {
      *a6 = 0;
      v9 = 4 * *(this + 145);
      goto LABEL_17;
    }

    if (a2 == 71000)
    {
      goto LABEL_6;
    }

    v8 = 80000;
  }

  else
  {
    v8 = 70000;
    if (a2 > 70000)
    {
      if ((a2 - 70001) >= 4)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (a2 == 21)
    {
      *a6 = 1;
      goto LABEL_7;
    }

    if (a2 == 3700)
    {
LABEL_6:
      *a6 = 0;
LABEL_7:
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (a2 != v8)
  {
    return result;
  }

  *a6 = 0;
  v9 = 8;
LABEL_17:
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t AULoudnessInNoise::Reset(AULoudnessInNoise *this)
{
  *(this + 35) = xmmword_1DE095FA0;
  *(this + 419) = 0;
  if (*(this + 17) == 1)
  {
    v2 = *(this + 191);
    v3 = *(this + 192) - v2;
    if (v3 >= 1)
    {
      bzero(v2, v3);
    }

    v4 = *(this + 194);
    v5 = *(this + 195) - v4;
    if (v5 >= 1)
    {
      bzero(v4, v5);
    }

    v6 = *(this + 197);
    v7 = *(this + 198) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v8 = *(this + 200);
    v9 = *(this + 201) - v8;
    if (v9 >= 1)
    {
      bzero(v8, v9);
    }

    v10 = *(this + 501);
    v11 = *(this + 502) - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    v12 = *(this + 504);
    v13 = *(this + 505) - v12;
    if (v13 >= 1)
    {
      bzero(v12, v13);
    }

    v14 = *(this + 507);
    v15 = *(this + 508) - v14;
    if (v15 >= 1)
    {
      bzero(v14, v15);
    }

    v16 = *(this + 510);
    v17 = *(this + 511) - v16;
    if (v17 >= 1)
    {
      bzero(v16, v17);
    }

    v18 = *(this + 513);
    v19 = *(this + 514) - v18;
    if (v19 >= 1)
    {
      bzero(v18, v19);
    }

    v20 = *(this + 516);
    v21 = *(this + 517) - v20;
    if (v21 >= 1)
    {
      bzero(v20, v21);
    }

    v22 = *(this + 519);
    v23 = *(this + 520) - v22;
    if (v23 >= 1)
    {
      bzero(v22, v23);
    }

    v24 = *(this + 522);
    v25 = *(this + 523) - v24;
    if (v25 >= 1)
    {
      bzero(v24, v25);
    }

    v26 = *(this + 525);
    v27 = *(this + 526) - v26;
    if (v27 >= 1)
    {
      bzero(v26, v27);
    }

    v28 = *(this + 528);
    v29 = *(this + 529) - v28;
    if (v29 >= 1)
    {
      bzero(v28, v29);
    }

    v30 = *(this + 531);
    v31 = *(this + 532) - v30;
    if (v31 >= 1)
    {
      bzero(v30, v31);
    }

    v32 = *(this + 82);
    v33 = *(this + 83) - v32;
    if (v33 >= 1)
    {
      bzero(v32, v33);
    }

    if (*(this + 136) == 1)
    {
      v34 = *(this + 380);
      v35 = *(this + 381);
      if (v34 < v35)
      {
        v36 = v35 - v34;
        v37 = (this + 24 * v34 + 760);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37 - v38;
          if (v39 >= 1)
          {
            bzero(v38, v39);
          }

          v37 += 3;
          --v36;
        }

        while (v36);
      }

      v40 = *(this + 88);
      v41 = *(this + 89) - v40;
      if (v41 >= 1)
      {
        bzero(v40, v41);
      }

      v42 = *(this + 91);
      v43 = *(this + 92) - v42;
      if (v43 >= 1)
      {
        bzero(v42, v43);
      }

      v44 = *(this + 184);
      v45 = *(this + 185) - v44;
      if (v45 >= 1)
      {
        bzero(v44, v45);
      }

      v46 = *(this + 187);
      v47 = *(this + 188) - v46;
      if (v47 >= 1)
      {
        bzero(v46, v47);
      }
    }

    v48 = *(this + 543);
    v49 = *(this + 544) - v48;
    if (v49 >= 1)
    {
      bzero(v48, v49);
    }

    v50 = *(this + 546);
    v51 = *(this + 547) - v50;
    if (v51 >= 1)
    {
      bzero(v50, v51);
    }

    v52 = *(this + 549);
    v53 = *(this + 550) - v52;
    if (v53 >= 1)
    {
      bzero(v52, v53);
    }

    v54 = *(this + 552);
    v55 = *(this + 553) - v54;
    if (v55 >= 1)
    {
      bzero(v54, v55);
    }

    v56 = *(this + 555);
    v57 = *(this + 556) - v56;
    if (v57 >= 1)
    {
      bzero(v56, v57);
    }

    v58 = *(this + 558);
    v59 = *(this + 559) - v58;
    if (v59 >= 1)
    {
      bzero(v58, v59);
    }

    v60 = *(this + 561);
    v61 = *(this + 562) - v60;
    if (v61 >= 1)
    {
      bzero(v60, v61);
    }

    *(this + 1071) = 0;
    *(this + 4288) = 0;
    *(this + 1073) = 0;
    AULoudnessInNoise::SetOutputParamRelatedDefaults(this);
  }

  *(this + 1186) = 0;
  return 0;
}

void AULoudnessInNoise::SetOutputParamRelatedDefaults(AULoudnessInNoise *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (ausdk::AUElement::SetParameter(v2, 0x3Du, 0.0), *(this + 162) = 0, v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (ausdk::AUElement::SetParameter(v4, 0x3Cu, 0.0), *(this + 161) = 0, v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0x3Eu, 0.0), *(this + 170) = 0, v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0x3Fu, -1.0), *(this + 171) = -1, v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 0x40u, 0.0), *(this + 173) = 0, v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 0x41u, 0.0), *(this + 419) = 0, v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v14, 0x42u, -200.0);
  *(this + 175) = -1018691584;
}

uint64_t AULoudnessInNoise::Initialize(AULoudnessInNoise *this)
{
  *(this + 376) = 1;
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v3 >= 2)
  {
    v4 = 1;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), v4 - 1);
      if (!Element)
      {
        break;
      }

      v6 = Element;
      v7 = ausdk::AUScope::GetElement((this + 80), v4);
      if (!v7)
      {
        break;
      }

      if (*(v6 + 80) != *(v7 + 80))
      {
        return 4294956428;
      }

      if (v3 == ++v4)
      {
        goto LABEL_10;
      }
    }

LABEL_49:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_10:
  v8 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v8)
  {
    goto LABEL_49;
  }

  if (*(v8 + 108) != 1)
  {
    return 4294956428;
  }

  v9 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v9)
  {
    goto LABEL_49;
  }

  if (*(v9 + 108) != 1)
  {
    return 4294956428;
  }

  AULoudnessInNoise::InitializeInternals(this);
  *(this + 419) = 0;
  v11 = *(this + 84);
  if (*(this + 147) != v11)
  {
    *(this + 147) = v11;
    *(this + 148) = 2 * v11;
    *(this + 149) = v11 + 1;
    if ((*(this + 1624) & 1) == 0)
    {
      AULoudnessInNoise::Set_Level_Spreading_PropertyRelatedDefaults(this, v10);
    }
  }

  v12 = AULoudnessInNoise::Validate_Level_Spreading_PropertyRelatedValues(this);
  v13 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v13)
  {
    goto LABEL_49;
  }

  v14 = *(v13 + 80);
  *(this + 146) = v14;
  v15 = *(this + 148);
  *(this + 156) = sqrtf(v15);
  std::vector<float>::resize(this + 191, v15);
  std::vector<float>::resize(this + 194, *(this + 148));
  std::vector<float>::resize(this + 197, *(this + 148));
  std::vector<float>::resize(this + 200, *(this + 149));
  AULoudnessInNoise::UpdateDynParams(this);
  AULoudnessInNoise::SetOutputParamRelatedDefaults(this);
  AULoudnessInNoise::UpdateOutputParams(this);
  *(this + 204) = 0xC12000003E99999ALL;
  *(this + 410) = 1050798235;
  v16 = *(this + 147);
  v17 = *(this + 146) * 0.5 / v16;
  *&v17 = v17;
  v18 = vcvtms_u32_f32(*(this + 157) / *&v17);
  if (v16 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(this + 147);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(this + 411) = v20;
  *&v17 = *(this + 158) / *&v17;
  v21 = vcvtps_u32_f32(*&v17);
  if (v21 + 1 < v16)
  {
    v16 = v21 + 1;
  }

  if (v16 <= v20 + 1)
  {
    v16 = v20 + 1;
  }

  *(this + 412) = v16;
  v22 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 501, v22, &v101, *&v17);
  v23 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 504, v23, &v101, v24);
  v25 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 507, v25, &v101, v26);
  v27 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 510, v27, &v101, v28);
  v29 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 513, v29, &v101, v30);
  v31 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 516, v31, &v101, v32);
  v33 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 519, v33, &v101, v34);
  v35 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 522, v35, &v101, v36);
  v37 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 525, v37, &v101, v38);
  v39 = *(this + 149);
  v101 = 0;
  std::vector<float>::assign(this + 528, v39, &v101, v40);
  v41 = __exp10f(*(this + 135) / 20.0);
  *v42.i32 = v41 * v41;
  v101 = v42.i32[0];
  std::vector<float>::assign(this + 531, *(this + 149), &v101, v42);
  *(this + 600) = 0;
  *(this + 534) = 0x308000004E800000;
  *(this + 1071) = 0;
  *(this + 4288) = 0;
  *(this + 1073) = 0;
  v43 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 537, v43, &v100, 0x308000004E800000);
  v44 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 543, v44, &v100, v45);
  v46 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 546, v46, &v100, v47);
  v48 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 549, v48, &v100, v49);
  v50 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 552, v50, &v100, v51);
  v52 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 555, v52, &v100, v53);
  v54 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 558, v54, &v100, v55);
  v56 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 561, v56, &v100, v57);
  v58 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 564, v58, &v100, v59);
  v60 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 567, v60, &v100, v61);
  v62 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 570, v62, &v100, v63);
  *(this + 1070) = 7;
  v64 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 573, v64, &v100, v65);
  v67 = *(this + 149);
  v68 = (*(this + 1070) - 1);
  if (*(this + 1070) != 1)
  {
    v69 = 0;
    v70 = 0;
    v71 = this + 4656;
    v72 = *(this + 573);
    v73 = *(this + 1164);
    *v66.i32 = v67 / (*(this + 2 * (*(this + 1070) - 1) + 1164) - v73);
    v74 = v73 * *v66.i32;
    do
    {
      v75 = &v71[8 * v69++];
      v76 = &v71[8 * v69];
      v77 = v75[1];
      v79 = *v76;
      v78 = v76[1];
      v80 = *v66.i32 * ((*v75 + *v76) * 0.5);
      v81 = (v77 + v78) * 0.5;
      if (v74 >= v80)
      {
        v83 = v70;
      }

      else
      {
        v82 = *v66.i32 * *v75;
        do
        {
          v83 = (v70 + 1);
          *(v72 + 4 * v70) = v77 + ((((v74 - v82) / (v80 - v82)) * ((v74 - v82) / (v80 - v82))) * (v81 - v77));
          v74 = v74 + 1.0;
          LODWORD(v70) = v70 + 1;
        }

        while (v74 < v80);
      }

      v84 = *v66.i32 * v79;
      if (v74 < v84 && v83 < v67)
      {
        v86 = v80 - v84;
        v87 = v78 - v81;
        v83 = v83;
        do
        {
          *(v72 + 4 * v83++) = v81 + ((1.0 - (((v74 - v84) / v86) * ((v74 - v84) / v86))) * v87);
          v74 = v74 + 1.0;
        }

        while (v74 < v84 && v83 < v67);
      }

      v70 = v83;
    }

    while (v69 != v68);
  }

  v100 = 0;
  std::vector<float>::assign(this + 576, (2 * v67), &v100, v66);
  v89 = *(this + 149);
  v100 = 0;
  std::vector<float>::assign(this + 579, v89, &v100, v90);
  v91 = *(this + 146) / *(this + 149);
  *(this + 1178) = expf(-1.0 / (v91 * 0.04));
  *(this + 1179) = 1.0 - expf(-1.0 / (v91 * 0.1));
  *(this + 1180) = 1.0 - expf(-1.0 / (v91 * 0.05));
  *(this + 1181) = 1094713344;
  *(this + 1182) = 1.0 - expf(-1.0 / (v91 * 0.5));
  *(this + 1183) = 1112014848;
  *(this + 592) = 0;
  *(this + 407) = 1;
  v92 = *(this + 145);
  v100 = 0;
  std::vector<float>::assign(this + 88, v92, &v100, 0);
  v93 = *(this + 145);
  v100 = 0;
  std::vector<float>::assign(this + 91, v93, &v100, v94);
  v95 = *(this + 145);
  v100 = 0;
  std::vector<float>::assign(this + 184, v95, &v100, v96);
  v97 = *(this + 145);
  v100 = 0;
  std::vector<float>::assign(this + 187, v97, &v100, v98);
  AULoudnessInNoise::Reset(this);
  *(this + 576) = 1;
  return v12;
}

_DWORD *AULoudnessInNoise::Set_Level_Spreading_PropertyRelatedDefaults(AULoudnessInNoise *this, int16x4_t a2)
{
  *(this + 145) = 1;
  *(this + 174) = 1014887350;
  *(this + 135) = -1023148032;
  __u = 1065353216;
  std::vector<float>::assign(this + 210, 0x1EuLL, &__u, a2);
  v3 = *(this + 149);
  __u = 1065353216;
  std::vector<float>::assign(this + 213, v3, &__u, v4);
  v5 = *(this + 149);
  __u = 1065353216;
  std::vector<float>::assign(this + 399, v5, &__u, v6);
  v7 = *(this + 149);
  __u = 1;
  std::vector<unsigned int>::assign(this + 135, v7, &__u);
  v8 = *(this + 149);
  __u = 0;
  std::vector<unsigned int>::assign(this + 134, v8, &__u);
  LODWORD(v10) = *(this + 149);
  if (v10)
  {
    v11 = 0;
    v12 = *(this + 402);
    do
    {
      *(v12 + 4 * v11) = v11 + 1;
      v10 = *(this + 149);
      ++v11;
    }

    while (v11 < v10);
  }

  if (*(this + 145))
  {
    v13 = 0;
    v14 = (this + 3288);
    do
    {
      v15 = *(this + 149);
      __u = 1065353216;
      std::vector<float>::assign(v14 - 195, v15, &__u, v9);
      v16 = *(this + 149);
      __u = 1065353216;
      std::vector<float>::assign(v14 - 102, v16, &__u, v17);
      v18 = *(this + 145);
      __u = 0;
      std::vector<float>::assign(v14, v18, &__u, v19);
      ++v13;
      v14 += 3;
    }

    while (v13 < *(this + 145));
    LODWORD(v10) = *(this + 149);
  }

  __u = 1065353216;
  std::vector<float>::assign(this + 306, v10, &__u, v9);
  __u = 0;
  return std::vector<float>::assign(this + 408, 0x1EuLL, &__u, v20);
}

void AULoudnessInNoise::~AULoudnessInNoise(AULoudnessInNoise *this)
{
  AULoudnessInNoise::~AULoudnessInNoise(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5931300;
  v2 = *(this + 579);
  if (v2)
  {
    *(this + 580) = v2;
    operator delete(v2);
  }

  v3 = *(this + 576);
  if (v3)
  {
    *(this + 577) = v3;
    operator delete(v3);
  }

  v4 = *(this + 573);
  if (v4)
  {
    *(this + 574) = v4;
    operator delete(v4);
  }

  v5 = *(this + 570);
  if (v5)
  {
    *(this + 571) = v5;
    operator delete(v5);
  }

  v6 = *(this + 567);
  if (v6)
  {
    *(this + 568) = v6;
    operator delete(v6);
  }

  v7 = *(this + 564);
  if (v7)
  {
    *(this + 565) = v7;
    operator delete(v7);
  }

  v8 = *(this + 561);
  if (v8)
  {
    *(this + 562) = v8;
    operator delete(v8);
  }

  v9 = *(this + 558);
  if (v9)
  {
    *(this + 559) = v9;
    operator delete(v9);
  }

  v10 = *(this + 555);
  if (v10)
  {
    *(this + 556) = v10;
    operator delete(v10);
  }

  v11 = *(this + 552);
  if (v11)
  {
    *(this + 553) = v11;
    operator delete(v11);
  }

  v12 = *(this + 549);
  if (v12)
  {
    *(this + 550) = v12;
    operator delete(v12);
  }

  v13 = *(this + 546);
  if (v13)
  {
    *(this + 547) = v13;
    operator delete(v13);
  }

  v14 = *(this + 543);
  if (v14)
  {
    *(this + 544) = v14;
    operator delete(v14);
  }

  v15 = *(this + 540);
  if (v15)
  {
    *(this + 541) = v15;
    operator delete(v15);
  }

  v16 = *(this + 537);
  if (v16)
  {
    *(this + 538) = v16;
    operator delete(v16);
  }

  v17 = *(this + 531);
  if (v17)
  {
    *(this + 532) = v17;
    operator delete(v17);
  }

  v18 = *(this + 528);
  if (v18)
  {
    *(this + 529) = v18;
    operator delete(v18);
  }

  v19 = *(this + 525);
  if (v19)
  {
    *(this + 526) = v19;
    operator delete(v19);
  }

  v20 = *(this + 522);
  if (v20)
  {
    *(this + 523) = v20;
    operator delete(v20);
  }

  v21 = *(this + 519);
  if (v21)
  {
    *(this + 520) = v21;
    operator delete(v21);
  }

  v22 = *(this + 516);
  if (v22)
  {
    *(this + 517) = v22;
    operator delete(v22);
  }

  v23 = *(this + 513);
  if (v23)
  {
    *(this + 514) = v23;
    operator delete(v23);
  }

  v24 = *(this + 510);
  if (v24)
  {
    *(this + 511) = v24;
    operator delete(v24);
  }

  v25 = *(this + 507);
  if (v25)
  {
    *(this + 508) = v25;
    operator delete(v25);
  }

  v26 = *(this + 504);
  if (v26)
  {
    *(this + 505) = v26;
    operator delete(v26);
  }

  v27 = *(this + 501);
  if (v27)
  {
    *(this + 502) = v27;
    operator delete(v27);
  }

  for (i = 0; i != -720; i -= 24)
  {
    v29 = *(this + i + 3984);
    if (v29)
    {
      *(this + i + 3992) = v29;
      operator delete(v29);
    }
  }

  v30 = *(this + 408);
  if (v30)
  {
    *(this + 409) = v30;
    operator delete(v30);
  }

  v31 = *(this + 405);
  if (v31)
  {
    *(this + 406) = v31;
    operator delete(v31);
  }

  v32 = *(this + 402);
  if (v32)
  {
    *(this + 403) = v32;
    operator delete(v32);
  }

  v33 = *(this + 399);
  if (v33)
  {
    *(this + 400) = v33;
    operator delete(v33);
  }

  for (j = 0; j != -720; j -= 24)
  {
    v35 = *(this + j + 3168);
    if (v35)
    {
      *(this + j + 3176) = v35;
      operator delete(v35);
    }
  }

  v36 = *(this + 306);
  if (v36)
  {
    *(this + 307) = v36;
    operator delete(v36);
  }

  for (k = 0; k != -720; k -= 24)
  {
    v38 = *(this + k + 2424);
    if (v38)
    {
      *(this + k + 2432) = v38;
      operator delete(v38);
    }
  }

  v39 = *(this + 213);
  if (v39)
  {
    *(this + 214) = v39;
    operator delete(v39);
  }

  v40 = *(this + 210);
  if (v40)
  {
    *(this + 211) = v40;
    operator delete(v40);
  }

  v41 = *(this + 200);
  if (v41)
  {
    *(this + 201) = v41;
    operator delete(v41);
  }

  v42 = *(this + 197);
  if (v42)
  {
    *(this + 198) = v42;
    operator delete(v42);
  }

  v43 = *(this + 194);
  if (v43)
  {
    *(this + 195) = v43;
    operator delete(v43);
  }

  v44 = *(this + 191);
  if (v44)
  {
    *(this + 192) = v44;
    operator delete(v44);
  }

  v45 = *(this + 187);
  if (v45)
  {
    *(this + 188) = v45;
    operator delete(v45);
  }

  v46 = *(this + 184);
  if (v46)
  {
    *(this + 185) = v46;
    operator delete(v46);
  }

  for (m = 0; m != -720; m -= 24)
  {
    v48 = *(this + m + 1448);
    if (v48)
    {
      *(this + m + 1456) = v48;
      operator delete(v48);
    }
  }

  v49 = *(this + 91);
  if (v49)
  {
    *(this + 92) = v49;
    operator delete(v49);
  }

  v50 = *(this + 88);
  if (v50)
  {
    *(this + 89) = v50;
    operator delete(v50);
  }

  v51 = *(this + 82);
  if (v51)
  {
    *(this + 83) = v51;
    operator delete(v51);
  }

  v52 = *(this + 66);
  *(this + 66) = 0;
  if (v52)
  {
    MEMORY[0x1E12BD160](v52, 0x60C4044C4A2DFLL);
  }

  ausdk::AUBase::~AUBase(this);
}

float LimitWindBoost::initialize(LimitWindBoost *this, unsigned int a2, int a3, double a4, int a5)
{
  if (!a2)
  {
    __assert_rtn("initialize", "LimitWindBoost.cpp", 27, "numChans > 0");
  }

  if (!a3)
  {
    __assert_rtn("initialize", "LimitWindBoost.cpp", 28, "blockSize > 0");
  }

  if (a4 <= 0.0)
  {
    __assert_rtn("initialize", "LimitWindBoost.cpp", 29, "sampleRate > 0.0f");
  }

  *(this + 104) = 1;
  *(this + 6) = a3;
  *(this + 7) = a2;
  *(this + 4) = a4;
  *(this + 40) = ChannelLayoutTagIsSupportedHOA(a5);
  std::vector<std::vector<float>>::resize(this + 44, a2);
  std::vector<WindUtility::EventTracker<float>>::resize(this + 47, *(this + 7));
  v7 = *(this + 7);
  __u = 0;
  std::vector<float>::assign(this + 32, v7, &__u, v8);
  v9 = *(this + 7);
  __u = 0;
  std::vector<float>::assign(this + 35, v9, &__u, v10);
  v11 = *(this + 7);
  __u = 0;
  std::vector<float>::assign(this + 41, v11, &__u, v12);
  v13 = *(this + 7);
  __u = 0;
  std::vector<unsigned int>::assign((this + 304), v13, &__u);
  v14 = (2 * *(this + 6));
  __u = 0;
  std::vector<float>::assign(this + 20, v14, &__u, v15);
  v16 = (2 * *(this + 6));
  __u = 0;
  std::vector<float>::assign(this + 23, v16, &__u, v17);
  v18 = (2 * *(this + 6));
  __u = 0;
  std::vector<float>::assign(this + 26, v18, &__u, v19);
  v20 = (2 * *(this + 6));
  __u = 0;
  std::vector<float>::assign(this + 17, v20, &__u, v21);
  v22 = (2 * *(this + 6));
  __u = 1065353216;
  std::vector<float>::assign(this + 29, v22, &__u, v23);
  if (*(this + 7))
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(this + 44);
      v28 = (2 * *(this + 6));
      __u = 1065353216;
      std::vector<float>::assign((v27 + v25), v28, &__u, v24);
      ++v26;
      v25 += 24;
    }

    while (v26 < *(this + 7));
  }

  v29 = *(this + 6);
  v30 = *(this + 4) * 0.5;
  v31 = 3000.0 / v30 * v29;
  *(this + 13) = vcvtas_u32_f32(v31);
  *&v29 = *"" / v30 * v29;
  result = roundf(*&v29);
  *(this + 25) = result;
  return result;
}

void LimitWindBoost::LimitWindBoost(LimitWindBoost *this)
{
  *(this + 7) = 0u;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 89) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  v1[0] = 0;
  std::vector<float>::assign(this, 0x12uLL, v1, 0);
}

void sub_1DDF95030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v2 + 376);
  if (v5)
  {
    *(v2 + 384) = v5;
    operator delete(v5);
  }

  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *(v2 + 328);
  if (v6)
  {
    *(v2 + 336) = v6;
    operator delete(v6);
  }

  v7 = *(v2 + 304);
  if (v7)
  {
    *(v2 + 312) = v7;
    operator delete(v7);
  }

  v8 = *(v2 + 280);
  if (v8)
  {
    *(v2 + 288) = v8;
    operator delete(v8);
  }

  v9 = *(v2 + 256);
  if (v9)
  {
    *(v2 + 264) = v9;
    operator delete(v9);
  }

  v10 = *(v2 + 232);
  if (v10)
  {
    *(v2 + 240) = v10;
    operator delete(v10);
  }

  v11 = *(v2 + 208);
  if (v11)
  {
    *(v2 + 216) = v11;
    operator delete(v11);
  }

  v12 = *(v2 + 184);
  if (v12)
  {
    *(v2 + 192) = v12;
    operator delete(v12);
  }

  v13 = *(v2 + 160);
  if (v13)
  {
    *(v2 + 168) = v13;
    operator delete(v13);
  }

  v14 = *(v2 + 136);
  if (v14)
  {
    *(v2 + 144) = v14;
    operator delete(v14);
  }

  v15 = *v3;
  if (*v3)
  {
    *(v2 + 120) = v15;
    operator delete(v15);
  }

  v16 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void LimitWindBoost::~LimitWindBoost(LimitWindBoost *this)
{
  v2 = *(this + 47);
  if (v2)
  {
    *(this + 48) = v2;
    operator delete(v2);
  }

  v14 = (this + 352);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(this + 39) = v4;
    operator delete(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  v7 = *(this + 29);
  if (v7)
  {
    *(this + 30) = v7;
    operator delete(v7);
  }

  v8 = *(this + 26);
  if (v8)
  {
    *(this + 27) = v8;
    operator delete(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    *(this + 24) = v9;
    operator delete(v9);
  }

  v10 = *(this + 20);
  if (v10)
  {
    *(this + 21) = v10;
    operator delete(v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    *(this + 18) = v11;
    operator delete(v11);
  }

  v12 = *(this + 14);
  if (v12)
  {
    *(this + 15) = v12;
    operator delete(v12);
  }

  v13 = *this;
  if (*this)
  {
    *(this + 1) = v13;
    operator delete(v13);
  }
}

void LimitWindBoost::propagateParameterChanges(LimitWindBoost *this)
{
  if ((*(this + 104) & 1) == 0)
  {
    __assert_rtn("propagateParameterChanges", "LimitWindBoost.cpp", 124, "mInitialized");
  }

  v2 = *(this + 6);
  v3 = *this;
  v4 = *(this + 4);
  v5 = *(*this + 4) / (v4 * 0.5) * v2;
  *(this + 14) = roundf(v5);
  v6.i32[0] = *(v3 + 32);
  v6.i32[1] = *(v3 + 52);
  *(this + 44) = vcvt_u32_f32(vrnda_f32(vcvt_f32_f64(vmulq_n_f64(vdivq_f64(vcvtq_f64_f32(v6), vdupq_lane_s64(COERCE__INT64(v4 * 0.5), 0)), v2))));
  *&v2 = v4 / v2;
  v19 = *&v2;
  *(this + 18) = expf(-1.0 / (*(v3 + 24) * *&v2));
  *(this + 20) = expf(-1.0 / (*(v3 + 36) * v19));
  *(this + 21) = expf(-1.0 / (*(v3 + 40) * v19));
  *(this + 23) = expf(-1.0 / (*(v3 + 48) * v19));
  v7 = *(v3 + 44) * v19;
  *(this + 22) = v7;
  *(this + 15) = __exp10f(*(v3 + 8) / 20.0);
  *(this + 16) = __exp10f(*(v3 + 12) / 20.0);
  *(this + 17) = __exp10f(*(v3 + 20) / 20.0);
  *(this + 19) = __exp10f(*(v3 + 28) / 20.0);
  *(this + 24) = __exp10f(*(v3 + 56) / 10.0);
  v8 = *(this + 47);
  v9 = *(this + 48) - v8;
  if (v9)
  {
    v10 = 0x8E38E38E38E38E39 * (v9 >> 3);
    v11 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(v3 + 60), v19)));
    __asm { FMOV            V2.2S, #1.0 }

    v17 = vdiv_f32(COERCE_FLOAT32X2_T(-_D2), vadd_f32(vcvt_f32_f64(vcvtq_f64_u64(v11)), vdup_n_s32(0x25800000u)));
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v18 = (v8 + 48);
    do
    {
      *(v18 - 2) = v11.i64[0];
      *(v18 - 1) = v7;
      *v18 = v11.i64[1];
      *(v18 - 3) = xmmword_1DE09E3E0;
      *(v18 - 3) = v17;
      v18 += 9;
      --v10;
    }

    while (v10);
  }
}

void LimitWindBoost::process(uint64_t a1, uint64_t *a2, float **a3, unsigned int *a4, const float **a5, unsigned int a6)
{
  if ((*(a1 + 104) & 1) == 0)
  {
    __assert_rtn("process", "LimitWindBoost.cpp", 189, "mInitialized");
  }

  v8 = *(a1 + 56);
  if (v8 > ((a2[1] - *a2) >> 2))
  {
    __assert_rtn("process", "LimitWindBoost.cpp", 190, "refMicEnergy.size() >= mFcBinLimitWindBoost");
  }

  if (v8 > (a3[1] - *a3))
  {
    __assert_rtn("process", "LimitWindBoost.cpp", 191, "beam.size() >= mFcBinLimitWindBoost");
  }

  v13 = &(*a3)[*(a1 + 24)];
  __A.realp = *a3;
  __A.imagp = v13;
  vDSP_zvmags(&__A, 1, *(a1 + 136), 1, v8);
  v14 = *(a1 + 160);
  v15 = *(a1 + 56);
  if (v15 > 0.0)
  {
    v16 = *(a1 + 136);
    v17 = *a2;
    v18 = 1;
    do
    {
      v19 = v18 - 1;
      v20 = sqrtf(*(v16 + 4 * v19) / *(v17 + 4 * v19));
      v21 = 1.0;
      if (v20 > *(a1 + 60))
      {
        v22 = *(a1 + 64);
        if (v20 > v22)
        {
          v23 = 1.0 / (v20 / v22);
          v21 = *(a1 + 68);
          if (v23 >= v21)
          {
            v21 = v23;
          }
        }
      }

      *(v14 + 4 * v19) = v21;
      v24 = v18;
      v15 = *(a1 + 56);
      ++v18;
    }

    while (v15 > v24);
  }

  MEMORY[0x1E12BE7F0](*a3, 1, v14, 1, *a3, 1, v15);
  MEMORY[0x1E12BE7F0](&(*a3)[*(a1 + 24)], 1, v14, 1, &(*a3)[*(a1 + 24)], 1, *(a1 + 56));
  vDSP_zvabs(&__A, 1, *(a1 + 136), 1, *(a1 + 56));
  v25 = *(a1 + 56);
  if (*(a1 + 52) <= (2 * *(a1 + 44)))
  {
    v26 = 2 * *(a1 + 44);
  }

  else
  {
    v26 = *(a1 + 52);
  }

  if (v26 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v58 = 1.0 - *(a1 + 72);
  v28 = *(*(a1 + 352) + 24 * a6);
  MEMORY[0x1E12BE930](v28, 1, a1 + 72, v14, 1, &v58, v28, 1, v27);
  v29 = *(a1 + 184);
  vDSP_vthrsc(*(*(a1 + 352) + 24 * a6), 1, (a1 + 76), &LimitWindBoost::kMinusOnef, v29, 1, v27);
  vDSP_vthr(v29, 1, &LimitWindBoost::kZerof, v29, 1, v27);
  v56 = 0.0;
  __C = 0.0;
  if ((*(a1 + 104) & 1) == 0)
  {
    __assert_rtn("isSensorNoise", "LimitWindBoost.cpp", 324, "mInitialized");
  }

  vDSP_vclr(*(a1 + 208), 1, *(a1 + 24));
  v30 = *a4;
  if (v30)
  {
    v31 = 0;
    v32 = 4;
    do
    {
      if (v31 != **a1)
      {
        v33 = (*&a4[v32] + 4 * *(a1 + 24));
        v60.realp = *&a4[v32];
        v60.imagp = v33;
        vDSP_zvmags(&v60, 1, *(a1 + 160), 1, *(a1 + 44));
        vDSP_vmax(*(a1 + 208), 1, *(a1 + 160), 1, *(a1 + 208), 1, *(a1 + 44));
        v30 = *a4;
      }

      ++v31;
      v32 += 4;
    }

    while (v31 < v30);
  }

  MEMORY[0x1E12BE7F0](v29, 1, *(a1 + 208), 1, *(a1 + 208), 1, *(a1 + 44));
  vDSP_sve((*(a1 + 208) + 4), 1, &__C, *(a1 + 44));
  if (__C > *(a1 + 96))
  {
    vDSP_sve(v29, 1, &v56, v27);
    v34 = v56;
  }

  else
  {
    v34 = 0;
  }

  if (*(a1 + 44) < v34)
  {
    v34 = *(a1 + 44);
  }

  if (v34 >= *(a1 + 48))
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  if ((*(a1 + 104) & 1) == 0)
  {
    __assert_rtn("getSmoothedCrossoverIndex", "LimitWindBoost.cpp", 355, "mInitialized");
  }

  WindUtility::EventTracker<float>::update(*(a1 + 376) + 72 * a6, v35);
  if ((*(*(a1 + 376) + 72 * a6 + 64) - 3) > 1)
  {
    v36 = 1.0;
    if (*(*(a1 + 280) + 4 * a6) >= *(a1 + 48))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v36 = *(a1 + 80);
  }

  *(*(a1 + 328) + 4 * a6) = v36;
LABEL_36:
  v37 = *(a1 + 92);
  v38 = *(a1 + 256);
  v39 = *(v38 + 4 * a6);
  if (v39 >= v35)
  {
    v40 = *(a1 + 84);
    if (v39 > v35)
    {
      v41 = *(a1 + 304);
      v42 = *(v41 + 4 * a6);
      if (*(a1 + 88) > v42)
      {
        *(v41 + 4 * a6) = v42 + 1;
        v40 = 1.0;
        if ((v39 * 0.9) <= v35)
        {
          *(v41 + 4 * a6) = 0;
        }
      }
    }
  }

  else
  {
    v40 = *(*(a1 + 328) + 4 * a6);
    *(*(a1 + 304) + 4 * a6) = 0;
    if (*(*(a1 + 280) + 4 * a6) < v35)
    {
      v37 = *(a1 + 80);
    }
  }

  v43 = ((1.0 - v40) * v35) + (v40 * v39);
  *(v38 + 4 * a6) = v43;
  v44 = *(a1 + 280);
  v45 = ((1.0 - v37) * v43) + (v37 * *(v44 + 4 * a6));
  *(v44 + 4 * a6) = v45;
  vDSP_vclr(v29, 1, v27);
  v46 = v45 * *(*a1 + 68);
  if (v46 >= *(a1 + 100))
  {
    v46 = *(a1 + 100);
  }

  v47 = v46;
  if (v47)
  {
    v48 = v46;
    v49 = fmaxf(v45 + (v48 * -0.5), 0.0);
    v50 = v49;
    if (v50)
    {
      vDSP_vfill(&LimitWindBoost::kOnef, v29, 1, v49);
      LODWORD(v60.realp) = 1065353216;
      __B = -1.0 / v48;
      vDSP_vramp(&v60, &__B, &v29[v50], 1, v47);
      MEMORY[0x1E12BE9A0](v29, 1, *(a1 + 232), 1, *(a1 + 160), 1, v27);
      MEMORY[0x1E12BE940](v29, 1, a1 + 64, *(a1 + 184), 1, v27);
      if (a6 && *(a1 + 40) == 1)
      {
        MEMORY[0x1E12BE7F0](*(a1 + 160), 1, *a3, 1, *a3, 1, v27);
        MEMORY[0x1E12BE7F0](*(a1 + 160), 1, &(*a3)[*(a1 + 24)], 1, &(*a3)[*(a1 + 24)], 1, v27);
      }

      else
      {
        vDSP_vmma(*(a1 + 160), 1, *a3, 1, *(a1 + 184), 1, *a5, 1, *a3, 1, v27);
        __E = &(*a3)[*(a1 + 24)];
        vDSP_vmma(*(a1 + 160), 1, __E, 1, *(a1 + 184), 1, a5[1], 1, __E, 1, v27);
      }

      vDSP_zvabs(&__A, 1, *(a1 + 160), 1, v27);
      MEMORY[0x1E12BE8A0](*(a1 + 160), 1, &LimitWindBoost::kEpsf, *(a1 + 160), 1, v27);
      vDSP_vdiv(*(a1 + 160), 1, *(a1 + 136), 1, *(a1 + 184), 1, v27);
      if (v50 + v47 >= v27)
      {
        v51 = (v27 - v50);
      }

      else
      {
        v51 = v47;
      }

      MEMORY[0x1E12BE7F0](*(a1 + 184) + 4 * v50, 1, &(*a3)[v50], 1, &(*a3)[v50], 1, v51);
      v52 = &(*a3)[*(a1 + 24) + v50];
      MEMORY[0x1E12BE7F0](*(a1 + 184) + 4 * v50, 1, v52, 1, v52, 1, v51);
      v53 = *(a1 + 32) * 0.5 * (v45 / *(a1 + 24));
      if (*(*a1 + 16) >= v53)
      {
        v53 = *(*a1 + 16);
      }

      *(*a1 + 16) = v53;
    }
  }
}

char *std::vector<double>::assign(char **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<double>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_1DE095160)));
      if (v15.i8[0])
      {
        *&result[8 * v12] = v13;
      }

      if (v15.i8[4])
      {
        *&result[8 * v12 + 8] = v13;
      }

      v12 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  v16 = a2 >= v10;
  v17 = a2 - v10;
  if (v17 != 0 && v16)
  {
    v18 = 0;
    v19 = *a3;
    v20 = (8 * a2 - (v9 - result) - 8) >> 3;
    v21 = vdupq_n_s64(v20);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v18), xmmword_1DE095160)));
      if (v22.i8[0])
      {
        *&v9[8 * v18] = v19;
      }

      if (v22.i8[4])
      {
        *&v9[8 * v18 + 8] = v19;
      }

      v18 += 2;
    }

    while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v18);
    v23 = &v9[8 * v17];
  }

  else
  {
    v23 = &result[8 * a2];
  }

  a1[1] = v23;
  return result;
}

void *std::unique_ptr<MicSenseUtils::DynamicFIR<float>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[21];
    if (v3)
    {
      v2[22] = v3;
      operator delete(v3);
    }

    v4 = v2[16];
    if (v4)
    {
      v2[17] = v4;
      operator delete(v4);
    }

    v5 = v2[13];
    if (v5)
    {
      v2[14] = v5;
      operator delete(v5);
    }

    v6 = v2[10];
    if (v6)
    {
      v2[11] = v6;
      operator delete(v6);
    }

    v7 = v2[7];
    if (v7)
    {
      v2[8] = v7;
      operator delete(v7);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void MicSense_Core::setSampleRate(MicSense_Core *this, double a2)
{
  *(this + 34) = LODWORD(a2);
  v3 = *(this + 76);
  if (v3)
  {
    *v3 = *&a2;
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 77);
    do
    {
      if (*v5)
      {
        **v5 = *&a2;
      }

      ++v5;
      --v4;
    }

    while (v4);
  }

  v6 = *&a2;
  if (*&a2 > 44099)
  {
    if (v6 > 95999)
    {
      if (v6 == 96000)
      {
LABEL_34:
        v8 = 48;
        goto LABEL_36;
      }

      if (v6 == 176400 || v6 == 192000)
      {
        v8 = 96;
        goto LABEL_36;
      }
    }

    else
    {
      v7 = v6 == 44100 || v6 == 48000;
      if (!v7 && v6 == 88200)
      {
        goto LABEL_34;
      }
    }

LABEL_15:
    v8 = 24;
    goto LABEL_36;
  }

  if (v6 > 22049)
  {
    v9 = v6 == 22050 || v6 == 24000;
    if (v9 || v6 == 32000)
    {
      v8 = 20;
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  if (v6 != 8000)
  {
    if (v6 == 16000)
    {
      v8 = 16;
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  v8 = 12;
LABEL_36:
  *(this + 11) = v8;
  v15 = 0;
  std::vector<float>::assign(this + 51, v8 | 1, &v15, *&a2);
  v11 = ((*(this + 34) * 0.000625) + 0.5);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  if (v11 >= 0x64)
  {
    v12 = 100;
  }

  else
  {
    v12 = v11;
  }

  if (v12 != *(this + 81))
  {
    *(this + 81) = v12;
    std::vector<float>::resize(this + 82, v12);
    std::vector<float>::resize(this + 85, v12);
  }

  v13 = *(this + 80);
  if (v13)
  {
    CFilterBank::filterbank_destroy(v13);
    *(this + 80) = 0;
  }

  *(this + 80) = CFilterBank::filterbank_new(*(this + 162), *(this + 10), *(this + 34));
  std::vector<float>::resize(this + 88, *(this + 81));
  CFilterBank::filterbank_compute_bank32(*(this + 80), *(this + 36), *(this + 88));
  MicSense_Core::setParameters(this, v14);
}

void MicSense_Core::setParameters(MicSense_Core *this, const float *a2)
{
  v3 = *this;
  v4 = exp(*(*this + 8) * 0.115129255);
  *(this + 31) = v4;
  v5 = *(this + 34);
  v6 = *(this + 3);
  v7 = v5 / v6;
  *(this + 32) = expf(-1.0 / ((v3[5] * 0.001) * v7));
  v8 = exp(v3[3] * 0.115129255);
  *(this + 30) = v8;
  *(this + 10) = 1;
  *(this + 33) = expf(-1.0 / (v7 * (v3[6] * 0.001)));
  v9 = (v3[1] + 0.5);
  v10 = vcvtps_u32_f32(v3[3] / -6.0206);
  *(this + 7) = v9;
  *(this + 9) = v10;
  v11 = v3[7];
  if (v9 == 5)
  {
    v11 = 8.0;
  }

  v12 = (((((v5 * v11) * 0.001) + 0.5) - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v12 >= v6)
  {
    v12 = v6;
  }

  if (*(this + 12) != v12)
  {
    *(this + 12) = v12;
    if (*(this + 8))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        vDSP_vfill(&MicSenseUtils::kZerof, *(*(this + 66) + v13), 1, (*(*(this + 66) + v13 + 8) - *(*(this + 66) + v13)) >> 2);
        MicSenseUtils::DynamicFIR<float>::setCoefficients(*(*(this + 77) + 8 * v14++), (*(this + 66) + v13), *(this + 12));
        v13 += 24;
      }

      while (*(this + 8) > v14);
      v9 = *(this + 7);
    }
  }

  switch(v9)
  {
    case 3uLL:
      v15 = (*(this + 12) >> 1);
      v16 = *(this + 34);
      v17 = -0.001;
      break;
    case 2uLL:
      v15 = (*(this + 12) >> 1);
      v16 = *(this + 34);
      v17 = -0.0005;
      break;
    case 1uLL:
      v15 = (*(this + 12) >> 1);
      v16 = *(this + 34);
      v17 = -0.00025;
      break;
    default:
      goto LABEL_17;
  }

  *(this + 13) = (v15 + (v16 * v17));
LABEL_17:
  v18 = *(*this + 40);
  if (*(this + 141) != v18 > 0.5)
  {
    if (v18 <= 0.5)
    {
      v21 = 0;
    }

    else
    {
      v19 = *(this + 69);
      v20 = *(this + 70) - v19;
      if (v20 >= 1)
      {
        bzero(v19, v20);
      }

      v21 = 1;
    }

    *(this + 141) = v21;
  }
}

void MicSense_Core::MicSense_Core(MicSense_Core *this, unint64_t a2, uint64_t a3, char a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v7 = (this + 432);
  *(this + 104) = 0u;
  v8 = (this + 456);
  v9 = (this + 480);
  *(this + 120) = 0u;
  *(this + 34) = 1195081728;
  v34 = (this + 552);
  v35 = (this + 504);
  v10 = (this + 576);
  *(this + 142) = a4;
  v33 = (this + 528);
  v36 = this + 616;
  v11 = 2 * a3;
  *(this + 70) = 0;
  bzero(this + 144, 0x248uLL);
  *(this + 4) = v11;
  *(this + 5) = a3 + 1;
  std::vector<std::unique_ptr<VPTimeFreqConverter>>::resize(v10, a2);
  v12 = *(this + 78);
  v13 = *(this + 77);
  v14 = (v12 - v13) >> 3;
  if (a2 <= v14)
  {
    if (a2 < v14)
    {
      v20 = (v13 + 8 * a2);
      while (v12 != v20)
      {
        std::unique_ptr<MicSenseUtils::DynamicFIR<float>>::reset[abi:ne200100](--v12, 0);
      }

      *(this + 78) = v20;
    }
  }

  else
  {
    v15 = a2 - v14;
    v16 = *(this + 79);
    if (v15 > (v16 - v12) >> 3)
    {
      if (!(a2 >> 61))
      {
        v37[4] = v36;
        v17 = v16 - v13;
        v18 = v17 >> 2;
        if (v17 >> 2 <= a2)
        {
          v18 = a2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v19);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(this + 78), 8 * v15);
    *(this + 78) = &v12[v15];
  }

  std::vector<std::vector<float>>::resize(v8, a2);
  std::vector<std::vector<float>>::resize(v35, a2);
  std::vector<unsigned long>::resize(v34, a2);
  std::vector<std::vector<float>>::resize(v33, a2);
  std::vector<std::vector<float>>::resize(v9, a2);
  std::vector<std::vector<float>>::resize(v7, a2);
  v21 = *(this + 4);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 18, v21, v37, v22);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 21, v21, v37, v23);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 24, v21, v37, v24);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 27, v21, v37, v25);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 30, v21, v37, v26);
  v37[0] = 0;
  std::vector<double>::assign(this + 33, v21, v37);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 39, v21, v37, v27);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 48, v21, v37, v28);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 42, v21, v37, v29);
  LODWORD(v37[0]) = 0;
  std::vector<float>::assign(this + 45, v21, v37, v30);
  v31 = *(this + 4);
  LODWORD(v37[0]) = 1065353216;
  std::vector<float>::assign(this + 36, v31, v37, v32);
  if (*(this + 8))
  {
    operator new();
  }

  operator new();
}

void sub_1DDF969DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void *a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19)
{
  MEMORY[0x1E12BD160](v20, 0x10A0C40A3058978);
  v22 = *(v19 + 704);
  if (v22)
  {
    *(v19 + 712) = v22;
    operator delete(v22);
  }

  v23 = *(v19 + 680);
  if (v23)
  {
    *(v19 + 688) = v23;
    operator delete(v23);
  }

  v24 = *(v19 + 656);
  if (v24)
  {
    *(v19 + 664) = v24;
    operator delete(v24);
  }

  a19 = a18;
  std::vector<std::unique_ptr<MicSenseUtils::DynamicFIR<float>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::unique_ptr<MicSenseUtils::GainsToFIR>::reset[abi:ne200100](a13, 0);
  v25 = *(v19 + 600);
  *(v19 + 600) = 0;
  if (v25)
  {
    std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v25);
  }

  a19 = a17;
  std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&a19);
  v26 = *a15;
  if (*a15)
  {
    *(v19 + 560) = v26;
    operator delete(v26);
  }

  a19 = a14;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = a16;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = a10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = a11;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = a12;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a19);
  v27 = *(v19 + 408);
  if (v27)
  {
    *(v19 + 416) = v27;
    operator delete(v27);
  }

  v28 = *(v19 + 384);
  if (v28)
  {
    *(v19 + 392) = v28;
    operator delete(v28);
  }

  v29 = *(v19 + 360);
  if (v29)
  {
    *(v19 + 368) = v29;
    operator delete(v29);
  }

  v30 = *(v19 + 336);
  if (v30)
  {
    *(v19 + 344) = v30;
    operator delete(v30);
  }

  v31 = *(v19 + 312);
  if (v31)
  {
    *(v19 + 320) = v31;
    operator delete(v31);
  }

  v32 = *(v19 + 288);
  if (v32)
  {
    *(v19 + 296) = v32;
    operator delete(v32);
  }

  v33 = *(v19 + 264);
  if (v33)
  {
    *(v19 + 272) = v33;
    operator delete(v33);
  }

  v34 = *(v19 + 240);
  if (v34)
  {
    *(v19 + 248) = v34;
    operator delete(v34);
  }

  v35 = *(v19 + 216);
  if (v35)
  {
    *(v19 + 224) = v35;
    operator delete(v35);
  }

  v36 = *(v19 + 192);
  if (v36)
  {
    *(v19 + 200) = v36;
    operator delete(v36);
  }

  v37 = *(v19 + 168);
  if (v37)
  {
    *(v19 + 176) = v37;
    operator delete(v37);
  }

  v38 = *(v19 + 144);
  if (v38)
  {
    *(v19 + 152) = v38;
    operator delete(v38);
  }

  v39 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void *MicSense_Core::setNoiseProfile(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v3 = result;
    v4 = result[8];
    if (v4)
    {
      v6 = 0;
      for (i = 0; i < v4; ++i)
      {
        v8 = v3[5];
        if (v8)
        {
          result = memmove(*(v3[63] + v6), *(v2 + v6), 4 * v8);
          v4 = v3[8];
          v2 = *a2;
        }

        v6 += 24;
      }
    }
  }

  return result;
}

unint64_t MicSense_Core::getPreferredBlockProcessorSize(MicSense_Core *this)
{
  if (this > 44099)
  {
    if (this > 95999)
    {
      if (this != 96000)
      {
        if (this == 176400 || this == 192000)
        {
          return 2048;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (this == 44100 || this == 48000)
      {
        return 512;
      }

      if (this != 88200)
      {
        goto LABEL_22;
      }
    }

    return 1024;
  }

  if (this <= 22049)
  {
    if (this == 8000)
    {
      return 80;
    }

    if (this == 16000)
    {
      return 192;
    }
  }

  else
  {
    if (this == 22050 || this == 24000)
    {
      return 240;
    }

    if (this == 32000)
    {
      return 256;
    }
  }

LABEL_22:
  v2 = vcvtmd_u64_f64(this * 0.008);
  v3 = vcvtpd_u64_f64(this * 0.016);
  if (v2 > v3)
  {
    return 512;
  }

  v5 = 2 * v2;
  v1 = 512;
  for (i = -2 * v2; ; i -= 2)
  {
    if (i)
    {
      if ((v5 & (v5 - 1)) == 0)
      {
        break;
      }

      v7 = vcnt_s8((v5 / 3));
      v7.i16[0] = vaddlv_u8(v7);
      v8 = i == -3 * (v5 / 3) && v5 >= 3;
      v9 = !v8 || v7.u32[0] > 1uLL;
      if (!v9 && log2((v5 / 3)) >= 4.0)
      {
        break;
      }

      v10 = vcnt_s8((v5 / 5));
      v10.i16[0] = vaddlv_u8(v10);
      v11 = i == -5 * (v5 / 5) && v5 >= 5;
      v12 = !v11 || v10.u32[0] > 1uLL;
      if (!v12 && log2((v5 / 5)) >= 4.0)
      {
        break;
      }

      v13 = v5 / 0xF;
      if (i == -15 * (v5 / 0xF) && v5 >= 0xF)
      {
        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] <= 1uLL && log2(v13) >= 4.0)
        {
          break;
        }
      }
    }

    ++v2;
    v5 += 2;
    if (v2 > v3)
    {
      return v1;
    }
  }

  return v2;
}

unint64_t MicSense_Core::getPreferredBlockSize(MicSense_Core *this, unint64_t a2)
{
  v2 = vcvtmd_u64_f64(this * 0.008);
  v3 = vcvtpd_u64_f64(this * 0.016);
  if (v2 > v3)
  {
    return 0;
  }

  v6 = 2 * v2;
  for (i = -2 * v2; ; i -= 2)
  {
    if (!(a2 % v2) && i != 0)
    {
      if ((v6 & (v6 - 1)) == 0)
      {
        break;
      }

      v9 = v6 / 3;
      if (i == -3 * (v6 / 3) && v6 >= 3)
      {
        v10 = vcnt_s8(v9);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] <= 1uLL && log2(v9) >= 4.0)
        {
          break;
        }
      }

      v11 = v6 / 5;
      if (i == -5 * (v6 / 5) && v6 >= 5)
      {
        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        if (v12.u32[0] <= 1uLL && log2(v11) >= 4.0)
        {
          break;
        }
      }

      v13 = v6 / 0xF;
      if (i == -15 * (v6 / 0xF) && v6 >= 0xF)
      {
        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] <= 1uLL && log2(v13) >= 4.0)
        {
          break;
        }
      }
    }

    ++v2;
    v6 += 2;
    if (v2 > v3)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t MicSense_Core::psdFFT(uint64_t a1, DSPSplitComplex *__A, float **a3, float a4)
{
  v11 = a4;
  v6 = *a3;
  v7 = *__A->realp;
  v8 = *__A->imagp;
  v9 = *(a1 + 40) - 1;
  vDSP_zvmags(__A, 1, *a3, 1, v9);
  *v6 = v7 * v7;
  v6[v9] = v8 * v8;
  return MEMORY[0x1E12BE940](*a3, 1, &v11, *a3, 1, *(a1 + 40));
}

float MicSense_Core::arburg(MicSense_Core *this, const float *__A, vDSP_Length __N, uint64_t a4, float *a5)
{
  if (!__N)
  {
    __assert_rtn("arburg", "MicSense_Core.cpp", 530, "length > 0");
  }

  v6 = *(this + 30);
  if (__N > (*(this + 31) - v6) >> 2)
  {
    __assert_rtn("arburg", "MicSense_Core.cpp", 531, "mTmpVector5.size() >= length");
  }

  v7 = *(this + 21);
  if (__N > (*(this + 22) - v7) >> 2)
  {
    __assert_rtn("arburg", "MicSense_Core.cpp", 532, "mTmpVector2.size() >= length");
  }

  v8 = *(this + 24);
  if (__N > (*(this + 25) - v8) >> 2)
  {
    __assert_rtn("arburg", "MicSense_Core.cpp", 533, "mTmpVector3.size() >= length");
  }

  v9 = a4;
  v10 = *(this + 33);
  v11 = a4 + 1;
  if ((*(this + 34) - v10) >> 3 < (2 * (a4 + 1)))
  {
    __assert_rtn("arburg", "MicSense_Core.cpp", 534, "mTmpVector1D.size() >= 2 * (order + 1)");
  }

  v26 = a5;
  LODWORD(__C) = 0;
  vDSP_svesq(__A, 1, &__C, __N);
  v13 = *&__C / __N;
  memcpy(v6, __A, 4 * __N);
  memcpy(v7, __A, 4 * __N);
  v25 = v11;
  bzero(v10, 8 * v11);
  *v10 = 0x3FF0000000000000;
  __Aa = v10;
  if (v9)
  {
    v14 = __N - 1;
    v15 = 1;
    v16 = 4;
    v17 = v10;
    v18 = v10;
    v19 = v6;
    v20 = v8;
    v27 = &v18[v9];
    do
    {
      LODWORD(__C) = 0;
      vDSP_dotpr(v7, 1, &v19[v16], 1, &__C, v14);
      v21 = *&__C * -2.0;
      LODWORD(__C) = 0;
      vDSP_svesq(&v19[v16], 1, &__C, v14);
      v22 = *&__C;
      LODWORD(__C) = 0;
      vDSP_svesq(v7, 1, &__C, v14);
      __C = v21 / ((v22 + *&__C) + 2.22044605e-16);
      v23 = __C;
      v29 = v23;
      MEMORY[0x1E12BE8F0](v7, 1, &v29, &v19[v16], 1, &v20[v16], 1, v14, v25, v26);
      MEMORY[0x1E12BE8F0](&v19[v16], 1, &v29, v7, 1, v7, 1, v14);
      vDSP_vsmulD(v17, -1, &__C, v27 + 1, 1, v15);
      vDSP_vaddD(v27 + 1, 1, __Aa + 1, 1, __Aa + 1, 1, v15);
      if (v19 == v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v8;
      }

      if (v19 == v6)
      {
        v19 = v8;
      }

      else
      {
        v19 = v6;
      }

      ++v15;
      v13 = v13 * (1.0 - (v29 * v29));
      ++v17;
      v16 += 4;
      --v14;
      --v9;
    }

    while (v9);
  }

  vDSP_vdpsp(__Aa, 1, v26, 1, v25);
  return v13;
}

void MicSense_Core::psdburg(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, float a5)
{
  if (*(a1 + 40) > ((*(a4 + 8) - *a4) >> 2))
  {
    __assert_rtn("psdburg", "MicSense_Core.cpp", 502, "psd.size() >= mCplxVectorSize");
  }

  memcpy(*(a1 + 312), a2, 4 * a3 + 4);
  v8 = *(a1 + 168);
  __A.realp = *(a1 + 144);
  __A.imagp = v8;
  MultiRadixRealFFT::RealOutOfPlaceForwardTransform(*(a1 + 600), *(a1 + 312), &__A, 1.0);
  v9 = *a4;
  v10 = *__A.realp;
  v11 = *__A.imagp;
  v12 = *(a1 + 40) - 1;
  vDSP_zvmags(&__A, 1, *a4, 1, v12);
  *v9 = v10 * v10;
  v9[v12] = v11 * v11;
  vDSP_vthr(*a4, 1, &MicSenseUtils::kepsf, *a4, 1, *(a1 + 40));
  v13 = a5;
  if (*(a1 + 56) != 6 && *(a1 + 80) != 1)
  {
    v13 = a5 + a5;
  }

  vDSP_svdiv(&v13, *a4, 1, *a4, 1, *(a1 + 40));
}

void MicSense_Core::computeSuppressionGains(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 3 * a3;
  if (*(a1 + 141) == 1)
  {
    *(&__C + 1) = *(*(a1 + 552) + 8 * a3);
    MEMORY[0x1E12BE940](*(*(a1 + 504) + 24 * a3), 1, &__C + 4, *(*(a1 + 504) + 24 * a3), 1, *(a1 + 40));
    v7 = *(*(a1 + 504) + 8 * v6);
    MEMORY[0x1E12BE5D0](v7, 1, *a2, 1, v7, 1, *(a1 + 40));
    v8 = *(a1 + 552);
    v9 = *(v8 + 8 * a3) + 1;
    *(v8 + 8 * a3) = v9;
    *(&__C + 1) = 1.0 / v9;
    v10 = *(*(a1 + 504) + 8 * v6);
    MEMORY[0x1E12BE940](v10, 1, &__C + 4, v10, 1, *(a1 + 40));
  }

  v25 = *(a1 + 128);
  v24 = 1.0 - v25;
  MEMORY[0x1E12BE930](*(*(a1 + 456) + 8 * v6), 1, &v25, *a2, 1, &v24, *(*(a1 + 456) + 8 * v6), 1, *(a1 + 40));
  v23 = *(*a1 + 16);
  MEMORY[0x1E12BE940](*(*(a1 + 504) + 8 * v6), 1, &v23, *(a1 + 144), 1, *(a1 + 40));
  vDSP_vthr(*(*(a1 + 456) + 8 * v6), 1, &MicSenseUtils::kepsf, *(a1 + 168), 1, *(a1 + 40));
  vDSP_vdiv(*(a1 + 168), 1, *(a1 + 144), 1, *(a1 + 192), 1, *(a1 + 40));
  if (*(a1 + 72))
  {
    MEMORY[0x1E12BE5D0](*(a1 + 192), 1, *(a1 + 288), 1, *(a1 + 144), 1, *(a1 + 40));
    vDSP_vdiv(*(a1 + 144), 1, *(a1 + 288), 1, *(a1 + 144), 1, *(a1 + 40));
    vDSP_vclip(*(a1 + 144), 1, (a1 + 120), &MicSenseUtils::kOnef, *(a1 + 144), 1, *(a1 + 40));
    if (*(a1 + 72) != 1)
    {
      v11 = 0;
      do
      {
        MEMORY[0x1E12BE990](*(a1 + 144), 1, *(a1 + 168), 1, *(a1 + 40));
        MEMORY[0x1E12BE940](*(a1 + 168), 1, &MicSenseUtils::kFourf, *(a1 + 168), 1, *(a1 + 40));
        vDSP_vthr(*(a1 + 168), 1, &MicSenseUtils::kepsf, *(a1 + 168), 1, *(a1 + 40));
        vDSP_vdiv(*(a1 + 168), 1, *(a1 + 192), 1, *(a1 + 192), 1, *(a1 + 40));
        MEMORY[0x1E12BE5D0](*(a1 + 192), 1, *(a1 + 288), 1, *(a1 + 168), 1, *(a1 + 40));
        vDSP_vdiv(*(a1 + 168), 1, *(a1 + 288), 1, *(a1 + 168), 1, *(a1 + 40));
        MEMORY[0x1E12BE7F0](*(a1 + 168), 1, *(a1 + 144), 1, *(a1 + 144), 1, *(a1 + 40));
        vDSP_vclip(*(a1 + 144), 1, (a1 + 120), &MicSenseUtils::kOnef, *(a1 + 144), 1, *(a1 + 40));
        ++v11;
      }

      while (*(a1 + 72) - 1 > v11);
    }

    v12 = *a1;
    if (*(*a1 + 48) <= 0.5)
    {
      v20 = *(a1 + 40);
      if (v20)
      {
        memmove(*(a1 + 192), *(a1 + 144), 4 * v20);
      }
    }

    else
    {
      v14 = v12[13];
      v13 = v12[14];
      v15 = v12[15];
      MEMORY[0x1E12BE990](*(a1 + 144), 1, *(a1 + 168), 1, *(a1 + 40));
      MEMORY[0x1E12BE7F0](*(a1 + 168), 1, *(*(a1 + 456) + 8 * v6), 1, *(a1 + 168), 1, *(a1 + 40));
      __C = 0;
      vDSP_sve(*(a1 + 168), 1, &__C + 1, *(a1 + 40));
      vDSP_sve(*(*(a1 + 456) + 8 * v6), 1, &__C, *(a1 + 40));
      v16 = *(&__C + 1) / (*&__C + 0.00000011921);
      if (*(*a1 + 64) > 0.5)
      {
        CFilterBank::filterbank_compute_bank32(*(a1 + 640), *(a1 + 168), *(a1 + 656));
        CFilterBank::filterbank_compute_bank32(*(a1 + 640), *(*(a1 + 456) + 24 * a3), *(a1 + 680));
        vDSP_vthr(*(a1 + 680), 1, &MicSenseUtils::kepsf, *(a1 + 680), 1, *(a1 + 648));
        vDSP_vdiv(*(a1 + 680), 1, *(a1 + 656), 1, *(a1 + 656), 1, *(a1 + 648));
        __A = -v14;
        v26 = -1049624576;
        MEMORY[0x1E12BE8A0](*(a1 + 656), 1, &__A, *(a1 + 656), 1, *(a1 + 648));
        MEMORY[0x1E12BE940](*(a1 + 656), 1, &v26, *(a1 + 656), 1, *(a1 + 648));
        vvexpf(*(a1 + 656), *(a1 + 656), (a1 + 648));
        MEMORY[0x1E12BE5D0](*(a1 + 288), 1, *(a1 + 656), 1, *(a1 + 656), 1, *(a1 + 648));
        vDSP_svdiv(*(a1 + 288), *(a1 + 656), 1, *(a1 + 656), 1, *(a1 + 648));
        v17 = CFilterBank::filterbank_compute_psd16(*(a1 + 640), *(a1 + 656), *(a1 + 168));
        MEMORY[0x1E12BE7F0](*(a1 + 144), 1, *(a1 + 168), 1, *(a1 + 144), 1, *(a1 + 40), v17);
      }

      if (v16 >= v14)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = v16;
      }

      if (v18 == 1.0)
      {
        v19 = 1;
      }

      else
      {
        v19 = ((roundf(v13 * (1.0 - (v18 / v14))) * 2.0) + 1.0);
      }

      if (v19 <= (v15 + 0.5))
      {
        v19 = (v15 + 0.5);
      }

      if (*(a1 + 40) >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = *(a1 + 40);
      }

      __A = 1.0 / v21;
      vDSP_vfill(&__A, *(a1 + 168), 1, v21);
      vDSP_conv(*(a1 + 144), 1, (*(a1 + 168) + 4 * v21 - 4), -1, *(a1 + 192), 1, *(a1 + 40), v21);
    }

    v25 = *(a1 + 132);
    v24 = 1.0 - v25;
    MEMORY[0x1E12BE930](*(*(a1 + 480) + 24 * a3), 1, &v25, *(a1 + 192), 1, &v24, *(*(a1 + 480) + 24 * a3), 1, *(a1 + 40));
  }

  else
  {
    vDSP_vfill(&MicSenseUtils::kOnef, *(*(a1 + 480) + 24 * a3), 1, *(a1 + 40));
  }

  v22 = *(*(a1 + 480) + 24 * a3);
  vDSP_vclip(v22, 1, (a1 + 120), &MicSenseUtils::kOnef, v22, 1, *(a1 + 40));
}

void MicSense_Core::process(MicSense_Core *this, uint64_t a2, uint64_t *a3, vDSP_Length a4, __n128 a5)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v6 - *a2;
  if (v7 != a3[1] - *a3)
  {
    __assert_rtn("process", "MicSense_Core.cpp", 771, "numChannels == output.size()");
  }

  if (a4 > (v5[1] - *v5) >> 2)
  {
    __assert_rtn("process", "MicSense_Core.cpp", 772, "input[0].size() >= numFrames");
  }

  v46 = *a2;
  v47 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  if (v6 != v5)
  {
    v12 = 0;
    v13 = 0;
    __len = 8 * a4;
    if (v47 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    }

    do
    {
      if (*(this + 142) == 1)
      {
        v15 = *a3;
        if (a4)
        {
          memmove(*(v15 + v12), *(*a2 + v12), __len);
          v15 = *a3;
        }

        __A.realp = 0;
        __A.imagp = 0;
        __A.realp = *(v15 + v12);
        __A.imagp = &__A.realp[a4];
        MicSense_Core::psdFFT(this, &__A, this + 18, *(this + 4) * 4.0);
        MicSense_Core::computeSuppressionGains(this, this + 18, v13);
        v16 = *(*(this + 60) + v12);
        v17 = *__A.imagp;
        v18 = *(this + 5) - 1;
        MEMORY[0x1E12BE7F0](__A.realp, 1, v16, 1, __A.realp, 1, v18);
        MEMORY[0x1E12BE7F0](__A.imagp, 1, v16, 1, __A.imagp, 1, v18);
        *__A.imagp = v17 * *(v16 + 4 * v18);
        goto LABEL_32;
      }

      if (*(this + 7) == 6)
      {
        v19 = *(this + 140);
      }

      else
      {
        v19 = *(this + 140);
        if (*(this + 10) != 1 && (*(this + 140) & 1) == 0)
        {
          v21 = *(*a2 + v12);
          v22 = *(this + 3);
LABEL_20:
          v23 = MicSense_Core::arburg(this, v21, v22, *(this + 11), *(this + 51));
          MicSense_Core::psdburg(this, *(this + 51), *(this + 11), this + 144, v23);
          goto LABEL_21;
        }
      }

      if (v19)
      {
        goto LABEL_22;
      }

      memcpy(*(*(this + 54) + v12), (*(*(this + 54) + v12) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
      memcpy((*(*(this + 54) + v12) + 4 * (*(this + 4) - *(this + 3))), *(*a2 + v12), 4 * *(this + 3));
      MEMORY[0x1E12BE7F0](*(this + 48), 1, *(*(this + 54) + v12), 1, *(this + 27), 1, *(this + 4));
      v49 = 2.0;
      MEMORY[0x1E12BE940](*(this + 27), 1, &v49, *(this + 27), 1, *(this + 4));
      v20 = *(this + 45);
      __A.realp = *(this + 42);
      __A.imagp = v20;
      MultiRadixRealFFT::RealOutOfPlaceForwardTransform(*(this + 75), *(this + 27), &__A, 1.0);
      if (!*(this + 10))
      {
        v21 = *(this + 27);
        v22 = *(this + 4);
        goto LABEL_20;
      }

      MicSense_Core::psdFFT(this, &__A, this + 18, 1.0 / *(this + 4));
LABEL_21:
      MicSense_Core::computeSuppressionGains(this, this + 18, v13);
LABEL_22:
      if (**this > 0.5)
      {
        v24 = *a2 + v12;
        v25 = *v24;
        v26 = *(v24 + 8);
        if (v26 != v25)
        {
          memmove(*(*a3 + v12), v25, v26 - v25);
        }

        goto LABEL_32;
      }

      v27 = *(this + 7);
      if (v27 > 3)
      {
        if ((v27 - 4) >= 2)
        {
          if (v27 == 6)
          {
            v35 = *(this + 45);
            __A.realp = *(this + 42);
            __A.imagp = v35;
            v36 = *(*(this + 60) + v12);
            v37 = *v35;
            v45 = v6;
            v38 = *(this + 5) - 1;
            MEMORY[0x1E12BE7F0](__A.realp, 1, v36, 1, __A.realp, 1, v38);
            MEMORY[0x1E12BE7F0](v35, 1, v36, 1, v35, 1, v38);
            v39 = *(v36 + 4 * v38);
            v6 = v45;
            *v35 = v37 * v39;
            VPTimeFreqConverter::Synthesize(*(*(this + 72) + 8 * v13), &__A, *(*a3 + v12));
            v49 = 1.0 / (*(this + 4) + *(this + 4));
            MEMORY[0x1E12BE940](*(*a3 + v12), 1, &v49, *(*a3 + v12), 1, a4);
          }

          goto LABEL_32;
        }

        v28 = *(this + 76);
        v29 = *(this + 12);
        v31 = (*(this + 60) + v12);
        v32 = (*(this + 66) + v12);
        v30 = 0;
        goto LABEL_30;
      }

      if ((v27 - 1) < 3)
      {
        v28 = *(this + 76);
        v29 = *(this + 12);
        v30 = *(this + 13);
        v31 = (*(this + 60) + v12);
        v32 = (*(this + 66) + v12);
LABEL_30:
        MicSenseUtils::GainsToFIR::gainsToLinearPhaseFilter(v28, v31, v32, v29, v30);
        goto LABEL_31;
      }

      if (v27)
      {
        goto LABEL_32;
      }

      MicSenseUtils::GainsToFIR::gainsToMinimumPhaseFilter(*(this + 76), *(this + 60) + v12, (*(this + 66) + v12), *(this + 12));
LABEL_31:
      v33 = *a2;
      v34 = *a3;
      MicSenseUtils::DynamicFIR<float>::setCoefficients(*(*(this + 77) + 8 * v13), (*(this + 66) + v12), *(this + 12));
      MicSenseUtils::DynamicFIR<float>::process(*(*(this + 77) + 8 * v13), v33[v12 / 8], *(v34 + v12), a4);
LABEL_32:
      ++v13;
      v12 += 24;
    }

    while (v14 != v13);
  }

  v41 = *(this + 31);
  v40 = this + 124;
  a5.n128_f32[0] = v41;
  if (v41 != 1.0 && v6 != v46)
  {
    v43 = 0;
    if (v47 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v47;
    }

    do
    {
      MEMORY[0x1E12BE940](*(*a3 + v43), 1, v40, *(*a3 + v43), 1, (*(*a3 + v43 + 8) - *(*a3 + v43)) >> 2, a5);
      v43 += 24;
      --v44;
    }

    while (v44);
  }
}

BOOL clsp::readPLKey(clsp *this, const __CFString *a2, const __CFString *a3, float *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0.0;
  if (CACFDictionary::GetFloat32(this, a2, &v13))
  {
    *&a3->isa = v13;
    v6 = spp3Subsystem();
    if (v6)
    {
      v7 = *v6;
      if (!*v6)
      {
        return 0;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    *buf = 136315906;
    v15 = "CLSPKernel_v4.cpp";
    v16 = 1024;
    v17 = 25;
    v18 = 2080;
    v19 = CStringPtr;
    v20 = 2048;
    v21 = v13;
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read plist key: %s = %f", buf, 0x26u);
    return 0;
  }

  v8 = spp3Subsystem();
  if (!v8)
  {
    v9 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringGetCStringPtr(a2, 0x8000100u);
      *buf = 136315650;
      v15 = "CLSPKernel_v4.cpp";
      v16 = 1024;
      v17 = 29;
      v18 = 2080;
      v19 = v12;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot read plist key: %s", buf, 0x1Cu);
    }

    return 1;
  }

  v9 = *v8;
  if (*v8)
  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t *std::unique_ptr<clsp::ConvoyParameters>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<CACFArray>::reset[abi:ne200100]((v2 + 96), 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

CACFArray *std::unique_ptr<CACFArray>::reset[abi:ne200100](CACFArray **a1, CACFArray *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CACFArray::~CACFArray(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

CACFDictionary *std::unique_ptr<CACFDictionary>::reset[abi:ne200100](CACFDictionary **a1, CACFDictionary *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CACFDictionary::~CACFDictionary(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<clsp::ClosedLoopParameters>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    std::unique_ptr<CACFDictionary>::reset[abi:ne200100]((v1 + 56), 0);
    std::unique_ptr<clsp::ConvoyParameters>::reset[abi:ne200100]((v1 + 48), 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *clsp::ClosedLoopParameters::dump(uint64_t a1, void *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "VMONScale = ", 12);
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\nIMONScale = ", 13);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nRdcScale = ", 12);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\nTempCo20 = ", 12);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nTempCo35 = ", 12);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\nRebMin = ", 10);
  v9 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\nRebMax = ", 10);
  v10 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\nCalTempMin = ", 14);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\nCalTempMax = ", 14);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\nTlimAdjCap = ", 14);
  v13 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nVPwrThres = ", 13);
  v14 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\nIPwrThres = ", 13);
  v15 = std::ostream::operator<<();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nParameterUpdaterConfig present = ", 34);
  v17 = MEMORY[0x1E12BCBE0](v16, *(a1 + 56) != 0);
  v31 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v31, 1);
  if (*(a1 + 48))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "capScale = ", 11);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\nminExcursion = ", 16);
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\nmaxExcursion = ", 16);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\ndelay ms = ", 12);
    v21 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\npeakFinderWindowTime ms = ", 27);
    v22 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\nposPeakFinderThreshold = ", 26);
    v23 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\nnegPeakFinderThreshold = ", 26);
    v24 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "\nxLimUpper = ", 13);
    v25 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\nxLimLower = ", 13);
    v26 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "\nxLimIncrement_dB = ", 20);
    v27 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\nnormFactorAtk = ", 17);
    v28 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\nnormFactorRel = ", 17);
    v29 = std::ostream::operator<<();
    v33 = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, &v33, 1);
  }

  v32 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, &v32, 1);
  return a2;
}

float16x8_t *vDSP_maxmgv_fp16(float16x8_t *result, _WORD *a2, unint64_t a3, float16x8_t a4)
{
  if (!a3)
  {
    *a2 = 0x8000;
    return result;
  }

  if (a3 >= 4)
  {
    if (a3 >= 0x10)
    {
      v4 = a3 & 0xFFFFFFFFFFFFFFF0;
      v5 = result + 1;
      v6.i64[0] = 0x8000800080008000;
      v6.i64[1] = 0x8000800080008000;
      v7 = a3 & 0xFFFFFFFFFFFFFFF0;
      v8.i64[0] = 0x8000800080008000;
      v8.i64[1] = 0x8000800080008000;
      do
      {
        v6 = vmaxnmq_f16(vabsq_f16(v5[-1]), v6);
        v8 = vmaxnmq_f16(vabsq_f16(*v5), v8);
        v5 += 2;
        v7 -= 16;
      }

      while (v7);
      a4 = vmaxnmq_f16(v6, v8);
      *a4.i16 = vmaxnmvq_f16(a4);
      if (v4 == a3)
      {
        goto LABEL_16;
      }

      if ((a3 & 0xC) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 0;
      a4.i16[0] = 0x8000;
    }

    v9 = v4;
    v4 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    *a4.i8 = vdup_lane_s16(*a4.i8, 0);
    v10 = v9 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v11 = (result + 2 * v9);
    do
    {
      v12 = *v11++;
      *a4.i8 = vmaxnm_f16(vabs_f16(v12), *a4.i8);
      v10 += 4;
    }

    while (v10);
    *a4.i16 = vmaxnmv_f16(*a4.i8);
    if (v4 == a3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v4 = 0;
  a4.i16[0] = 0x8000;
LABEL_14:
  v13 = a3 - v4;
  v14 = &result->i16[v4];
  do
  {
    v15 = *v14++;
    *a4.i16 = fmaxl(fabsl(v15), *a4.i16);
    --v13;
  }

  while (v13);
LABEL_16:
  *a2 = a4.i16[0];
  return result;
}

float16x8_t vDSP_vmul_fp16(short float *a1, short float *a2, uint64_t a3, float16x8_t *a4, unint64_t a5)
{
  if (a3 == 1)
  {
    if (!a5)
    {
      return result;
    }

    if (a5 < 0x20)
    {
      v5 = 0;
LABEL_5:
      v6 = a5 - v5;
      v7 = v5;
      v8 = &a4->i16[v5];
      v9 = &a2[v7];
      v10 = &a1[v7];
      do
      {
        v11 = *v10++;
        v12 = v11;
        v13 = *v9++;
        *result.i16 = v13 * v12;
        *v8++ = result.i16[0];
        --v6;
      }

      while (v6);
      return result;
    }

    v5 = 0;
    if ((a4 - a1) < 0x40)
    {
      goto LABEL_5;
    }

    if ((a4 - a2) < 0x40)
    {
      goto LABEL_5;
    }

    v5 = a5 & 0xFFFFFFFFFFFFFFE0;
    v16 = a4 + 2;
    v17 = (a2 + 16);
    v18 = (a1 + 16);
    v19 = a5 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v20 = v18[-2];
      v21 = v18[-1];
      v22 = *v18;
      v23 = v18[1];
      v18 += 4;
      v24 = v17[-2];
      v25 = v17[-1];
      v26 = *v17;
      v27 = v17[1];
      v17 += 4;
      result = vmulq_f16(v24, v20);
      v16[-2] = result;
      v16[-1] = vmulq_f16(v25, v21);
      *v16 = vmulq_f16(v26, v22);
      v16[1] = vmulq_f16(v27, v23);
      v16 += 4;
      v19 -= 32;
    }

    while (v19);
    if (v5 != a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    for (; a5; --a5)
    {
      v15 = *a1++;
      *result.i16 = *a2 * v15;
      a4->i16[0] = result.i16[0];
      a4 = (a4 + 2);
      a2 += a3;
    }
  }

  return result;
}

float16x8_t *vDSP_vsma_fp16(float16x8_t *result, const __int16 *a2, float16x8_t *a3, unint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (a5 < 0x20)
    {
      v5 = 0;
LABEL_4:
      v6 = a5 - v5;
      v7 = v5;
      v8 = (a4 + 2 * v5);
      v9 = &a3->i16[v7];
      v10 = &result->i16[v7];
      do
      {
        v11 = *v10++;
        v12 = v11;
        v13 = *v9++;
        *v8++ = v13 + (*a2 * v12);
        --v6;
      }

      while (v6);
      return result;
    }

    v5 = 0;
    v14 = a4 + 2 * a5;
    v16 = (a2 + 1) > a4 && v14 > a2;
    v18 = a3 + 2 * a5 > a4 && v14 > a3;
    if (v14 > result && result + 2 * a5 > a4)
    {
      goto LABEL_4;
    }

    if (v16)
    {
      goto LABEL_4;
    }

    if (v18)
    {
      goto LABEL_4;
    }

    v5 = a5 & 0xFFFFFFFFFFFFFFE0;
    v20 = vld1q_dup_s16(a2);
    v21 = (a4 + 32);
    v22 = a3 + 2;
    v23 = result + 2;
    v24 = a5 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v26 = v23[-2];
      v25 = v23[-1];
      v28 = *v23;
      v27 = v23[1];
      v23 += 4;
      v30 = v22[-2];
      v29 = v22[-1];
      v32 = *v22;
      v31 = v22[1];
      v22 += 4;
      v21[-2] = vmlaq_f16(v30, v26, v20);
      v21[-1] = vmlaq_f16(v29, v25, v20);
      *v21 = vmlaq_f16(v32, v28, v20);
      v21[1] = vmlaq_f16(v31, v27, v20);
      v21 += 4;
      v24 -= 32;
    }

    while (v24);
    if (v5 != a5)
    {
      goto LABEL_4;
    }
  }

  return result;
}

float16x8_t *vDSP_vsmsma_fp16(float16x8_t *result, const __int16 *a2, float16x8_t *a3, const __int16 *a4, unint64_t a5, unint64_t a6)
{
  if (a6)
  {
    if (a6 < 0x10)
    {
      v6 = 0;
LABEL_4:
      v7 = a6 - v6;
      v8 = v6;
      v9 = (a5 + 2 * v6);
      v10 = &a3->i16[v8];
      v11 = &result->i16[v8];
      do
      {
        v12 = *v11++;
        v13 = v12;
        v14 = *v10++;
        *v9++ = (*a2 * v13) + (*a4 * v14);
        --v7;
      }

      while (v7);
      return result;
    }

    v6 = 0;
    v15 = a5 + 2 * a6;
    v17 = (a2 + 1) > a5 && v15 > a2;
    v19 = a3 + 2 * a6 > a5 && v15 > a3;
    v21 = (a4 + 1) > a5 && v15 > a4;
    if (v15 > result && result + 2 * a6 > a5)
    {
      goto LABEL_4;
    }

    if (v17)
    {
      goto LABEL_4;
    }

    if (v19)
    {
      goto LABEL_4;
    }

    if (v21)
    {
      goto LABEL_4;
    }

    v6 = a6 & 0xFFFFFFFFFFFFFFF0;
    v23 = vld1q_dup_s16(a2);
    v24 = vld1q_dup_s16(a4);
    v25 = result;
    v26 = a3;
    v27 = a5;
    v28 = a6 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v29 = *v25;
      v30 = v25[1];
      v25 += 2;
      v32 = *v26;
      v31 = v26[1];
      v26 += 2;
      *v27 = vmlaq_f16(vmulq_f16(v23, v29), v32, v24);
      v27[1] = vmlaq_f16(vmulq_f16(v23, v30), v31, v24);
      v27 += 2;
      v28 -= 16;
    }

    while (v28);
    if (v6 != a6)
    {
      goto LABEL_4;
    }
  }

  return result;
}

void vDSP_conv_fp16(_WORD *a1, short float *a2, short float *a3, uint64_t a4, unint64_t a5)
{
  if (a4)
  {
    if (a5)
    {
      if (a5 >= 0x20)
      {
        v13 = 0;
        v14 = a1 + 16;
        v15 = (2 * a5) & 0xFFFFFFFFFFFFFFC0;
        v16 = (a2 - v15);
        v17 = (a1 + v15);
        do
        {
          v18 = 0uLL;
          v19 = v14;
          v20 = (a2 - 15);
          v21 = a5 & 0xFFFFFFFFFFFFFFE0;
          v22 = 0uLL;
          v23 = 0uLL;
          v24 = 0uLL;
          do
          {
            v25 = v19[-2];
            v26 = v19[-1];
            v27 = *v19;
            v28 = v19[1];
            v19 += 4;
            v29 = vrev64q_s16(v20[1]);
            v30 = vrev64q_s16(*v20);
            v31 = vrev64q_s16(v20[-1]);
            v32 = vrev64q_s16(v20[-2]);
            v22 = vmlaq_f16(v22, v26, vextq_s8(v30, v30, 8uLL));
            v18 = vmlaq_f16(v18, v25, vextq_s8(v29, v29, 8uLL));
            v24 = vmlaq_f16(v24, v28, vextq_s8(v32, v32, 8uLL));
            v23 = vmlaq_f16(v23, v27, vextq_s8(v31, v31, 8uLL));
            v20 -= 4;
            v21 -= 32;
          }

          while (v21);
          v33 = vaddq_f16(vaddq_f16(v23, v18), vaddq_f16(v24, v22));
          v34 = vaddv_f16(*&vpaddq_f16(vpaddq_f16(v33, v33), v33));
          if (a5 != (a5 & 0xFFFFFFFFFFFFFFE0))
          {
            v35 = v17;
            v36 = v16;
            v37 = a5 - (a5 & 0xFFFFFFFFFFFFFFE0);
            do
            {
              v38 = *v35++;
              v39 = v38;
              v40 = *v36--;
              v34 = v34 + (v40 * v39);
              --v37;
            }

            while (v37);
          }

          a3[v13++] = v34;
          v14 = (v14 + 2);
          ++v17;
        }

        while (v13 != a4);
      }

      else
      {
        for (i = 0; i != a4; ++i)
        {
          LOWORD(v6) = 0;
          v7 = a1;
          v8 = a2;
          v9 = a5;
          do
          {
            v10 = *v7++;
            v11 = v10;
            v12 = *v8--;
            v6 = v6 + (v12 * v11);
            --v9;
          }

          while (v9);
          a3[i] = v6;
          ++a1;
        }
      }
    }

    else
    {
      bzero(a3, 2 * a4);
    }
  }
}

float32_t vDSP_vhpsp(float16x8_t *a1, float32x4_t *a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 0x20)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = &a2->i32[v3];
      v15 = &a1->i16[v3];
      do
      {
        v16 = *v15++;
        _H0 = v16;
        __asm { FCVT            S0, H0 }

        *v14++ = _Q0.i32[0];
        --v13;
      }

      while (v13);
      return _Q0.f32[0];
    }

    v3 = a3 & 0xFFFFFFFFFFFFFFE0;
    v4 = a2 + 4;
    v5 = a1 + 2;
    v6 = a3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v8 = v5[-2];
      v7 = v5[-1];
      v10 = *v5;
      v9 = v5[1];
      v5 += 4;
      v11 = vcvtq_f32_f16(*v7.i8);
      _Q0 = vcvt_hight_f32_f16(v7);
      v4[-2] = v11;
      v4[-1] = _Q0;
      v4[-4] = vcvtq_f32_f16(*v8.i8);
      v4[-3] = vcvt_hight_f32_f16(v8);
      v4[2] = vcvtq_f32_f16(*v9.i8);
      v4[3] = vcvt_hight_f32_f16(v9);
      *v4 = vcvtq_f32_f16(*v10.i8);
      v4[1] = vcvt_hight_f32_f16(v10);
      v4 += 8;
      v6 -= 32;
    }

    while (v6);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return _Q0.f32[0];
}

__int16 vDSP_vsphp@<H0>(float32x4_t *a1@<X0>, float16x8_t *a2@<X1>, unint64_t a3@<X2>)
{
  if (a3)
  {
    if (a3 < 0x20)
    {
      v3 = 0;
LABEL_7:
      v17 = a3 - v3;
      v18 = &a2->i16[v3];
      v19 = &a1->i32[v3];
      do
      {
        v20 = *v19++;
        _Q0.i32[0] = v20;
        __asm { FCVT            H0, S0 }

        *v18++ = _Q0.i16[0];
        --v17;
      }

      while (v17);
      return _Q0.i16[0];
    }

    v3 = a3 & 0xFFFFFFFFFFFFFFE0;
    v4 = a2 + 2;
    v5 = a1 + 4;
    v6 = a3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v8 = v5[-2];
      v7 = v5[-1];
      v10 = v5[-4];
      v9 = v5[-3];
      v12 = v5[2];
      v11 = v5[3];
      v14 = *v5;
      v13 = v5[1];
      v5 += 8;
      v15 = vcvt_hight_f16_f32(vcvt_f16_f32(v8), v7);
      _Q0 = vcvt_hight_f16_f32(vcvt_f16_f32(v14), v13);
      v4[-2] = vcvt_hight_f16_f32(vcvt_f16_f32(v10), v9);
      v4[-1] = v15;
      *v4 = _Q0;
      v4[1] = vcvt_hight_f16_f32(vcvt_f16_f32(v12), v11);
      v4 += 4;
      v6 -= 32;
    }

    while (v6);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return _Q0.i16[0];
}

uint64_t BiNeural::process(uint64_t a1, void *a2, vDSP_Length __N)
{
  v3 = __N;
  v6 = *(a1 + 328);
  if (v6)
  {
    v7 = atomic_load((v6 + 400));
    v8 = *(a1 + 728);
    if (v7 != v8)
    {
      *(a1 + 732) = v8;
      v9 = atomic_load((v6 + 400));
      *(a1 + 728) = v9;
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 744), *(a1 + 792), *(a1 + 800), (*(a1 + 800) - *(a1 + 792)) >> 2);
      v10 = *(a1 + 728);
      if (v10)
      {
        AUSM::SoundStage::getWarpingParameterVector(__p, v6, v10);
        v11 = *(a1 + 848);
        v12 = *(a1 + 840);
        v13 = v11 - v12;
        if (v11 != v12)
        {
          v14 = 0;
          v15 = v13 >> 2;
          v16 = *(a1 + 864);
          v17 = (__p[0] + 4);
          do
          {
            *(v12 + 4 * v14) = *(v17 - 1);
            v18 = *v17;
            v17 += 8;
            *(v16 + 4 * v14++) = v18;
          }

          while (v15 > v14);
        }

        HOA::createEncoder(a1 + 336, a1 + 840, a1 + 864);
        vDSP_mmul(*(a1 + 392), 1, *(a1 + 368), 1, *(a1 + 768), 1, 4uLL, 4uLL, 0xCuLL);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((a1 + 768), kUnityMatrix, &kUnityMatrix[64], 0x10uLL);
      }
    }
  }

  v19 = *(a1 + 328);
  *(a1 + 736) = *(v19 + 416);
  LODWORD(v19) = atomic_load((v19 + 400));
  if (v19 != *(*(a1 + 328) + 404))
  {
    v20 = *(a1 + 736);
    v21 = *(a1 + 740);
    if (v20 >= v21)
    {
      v23 = *(a1 + 736);
    }

    else
    {
      v23 = 1.0;
    }

    if (v23 <= 0.0)
    {
      goto LABEL_25;
    }

LABEL_24:
    if (v20 == v21)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

  v20 = *(a1 + 736);
  v21 = *(a1 + 740);
  v22 = v20 < v21 || *(a1 + 728) != *(a1 + 732);
  v23 = 1.0;
  if (v22)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = *(a1 + 736);
  }

  if (v24 > 0.0)
  {
    v23 = v24;
    if (*(a1 + 728) != *(a1 + 732))
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  if (*(a1 + 728) == *(a1 + 732))
  {
LABEL_25:
    v25 = 0;
    for (i = 0; i != 4; ++i)
    {
      vDSP_vclr(*(*(a1 + 256) + 32 * i), 1, v3);
      v27 = 0;
      v28 = v25;
      do
      {
        MEMORY[0x1E12BE8F0](*(*a2 + v27), 1, *(a1 + 792) + v28, *(*(a1 + 256) + 32 * i), 1, *(*(a1 + 256) + 32 * i), 1, v3);
        v27 += 32;
        v28 += 16;
      }

      while (v27 != 128);
      v25 += 4;
    }

    goto LABEL_40;
  }

LABEL_31:
  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 816), *(a1 + 792), *(a1 + 800), (*(a1 + 800) - *(a1 + 792)) >> 2);
  v29 = *(a1 + 800);
  v30 = *(a1 + 792);
  v31 = v29 - v30;
  if (v29 != v30)
  {
    v32 = 0;
    v33 = v31 >> 2;
    v34 = *(a1 + 744);
    v35 = *(a1 + 768);
    do
    {
      *(v30 + 4 * v32) = (v23 * *(v35 + 4 * v32)) + (*(v34 + 4 * v32) * (1.0 - v23));
      ++v32;
    }

    while (v33 > v32);
  }

  v36 = 0;
  for (j = 0; j != 4; ++j)
  {
    vDSP_vclr(*(*(a1 + 256) + 32 * j), 1, v3);
    vDSP_vclr(*(a1 + 224), 1, v3);
    v38 = 0;
    *(a1 + 248) = 1;
    v39 = v36;
    do
    {
      MEMORY[0x1E12BE8F0](*(*a2 + v38), 1, *(a1 + 816) + v39, *(a1 + 224), 1, *(a1 + 224), 1, v3);
      v38 += 32;
      v39 += 16;
    }

    while (v38 != 128);
    v40 = *(a1 + 224);
    v41 = *(*(a1 + 256) + 32 * j);
    LODWORD(__p[0]) = 1065353216;
    __Step = -(1.0 / v3);
    vDSP_vrampmul(v40, 1, __p, &__Step, v41, 1, v3);
    vDSP_vclr(*(a1 + 224), 1, v3);
    v42 = 0;
    *(a1 + 248) = 1;
    v43 = v36;
    do
    {
      MEMORY[0x1E12BE8F0](*(*a2 + v42), 1, *(a1 + 792) + v43, *(a1 + 224), 1, *(a1 + 224), 1, v3);
      v42 += 32;
      v43 += 16;
    }

    while (v42 != 128);
    v44 = *(a1 + 224);
    v45 = *(*(a1 + 256) + 32 * j);
    LODWORD(__p[0]) = 0;
    __Step = 1.0 / v3;
    vDSP_vrampmuladd(v44, 1, __p, &__Step, v45, 1, v3);
    v36 += 4;
  }

LABEL_40:
  *(a1 + 740) = *(a1 + 736);
  if (*(a1 + 320) == 1 && *(a1 + 304))
  {
    v46 = 0;
    for (k = 0; k != 4; ++k)
    {
      if (*(a1 + 321) == 1)
      {
        vDSP_vclr(*(a1 + 224), 1, v3);
        *(a1 + 248) = 1;
        AUSM::MatrixMix::rotateHOA((a1 + 256), (a1 + 224), 4u, k, v3, *(a1 + 304), 4u);
        v48 = *(a1 + 224);
        v49 = *(*(a1 + 280) + v46);
        LODWORD(__p[0]) = 1065353216;
        __Step = -(1.0 / v3);
        vDSP_vrampmul(v48, 1, __p, &__Step, v49, 1, v3);
        vDSP_vclr(*(a1 + 224), 1, v3);
        *(a1 + 248) = 1;
        AUSM::MatrixMix::rotateHOA((a1 + 256), (a1 + 224), 4u, k, v3, *(a1 + 312), 4u);
        v50 = *(a1 + 224);
        v51 = *(*(a1 + 280) + v46);
        LODWORD(__p[0]) = 0;
        __Step = 1.0 / v3;
        vDSP_vrampmuladd(v50, 1, __p, &__Step, v51, 1, v3);
      }

      else
      {
        v52 = *(a1 + 280);
        vDSP_vclr(*(v52 + v46), 1, v3);
        *(v52 + v46 + 24) = 1;
        AUSM::MatrixMix::rotateHOA((a1 + 256), (*(a1 + 280) + v46), 4u, k, v3, *(a1 + 304), 4u);
      }

      v46 += 32;
    }

    for (m = 0; m != 128; m += 32)
    {
      memcpy(*(*(a1 + 256) + m), *(*(a1 + 280) + m), 4 * v3);
    }
  }

  return Neuralizer::process(a1, (a1 + 256), v3);
}

void sub_1DDF99E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BiNeural::~BiNeural(BiNeural *this)
{
  BiNeural::~BiNeural(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59315F0;
  v2 = *(this + 108);
  if (v2)
  {
    *(this + 109) = v2;
    operator delete(v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    *(this + 106) = v3;
    operator delete(v3);
  }

  v4 = *(this + 102);
  if (v4)
  {
    *(this + 103) = v4;
    operator delete(v4);
  }

  v5 = *(this + 99);
  if (v5)
  {
    *(this + 100) = v5;
    operator delete(v5);
  }

  v6 = *(this + 96);
  if (v6)
  {
    *(this + 97) = v6;
    operator delete(v6);
  }

  v7 = *(this + 93);
  if (v7)
  {
    *(this + 94) = v7;
    operator delete(v7);
  }

  HOA::~HOA((this + 336));
  v9 = (this + 280);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 256);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v9);
  v8 = *(this + 28);
  if (v8)
  {
    *(this + 29) = v8;
    operator delete(v8);
  }

  Neuralizer::~Neuralizer(this);
}

void Neuralizer::~Neuralizer(Neuralizer *this)
{
  *this = &unk_1F5937868;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  if (*(this + 176) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  if (*(this + 160) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v6 = (this + 64);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    NeuralNet::~NeuralNet(v5);
    MEMORY[0x1E12BD160]();
  }
}

{
  Neuralizer::~Neuralizer(this);

  JUMPOUT(0x1E12BD160);
}

void PMWF_FAST_GS_vDSP::PMWF_FAST_GS_vDSP(PMWF_FAST_GS_vDSP *this, unsigned int a2, int a3, int32x2_t a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, int a12, int a13, unsigned int a14, int a15, char a16, float a17, float a18, float a19, float a20, float a21, unsigned int a22, char a23, BOOL a24)
{
  v84 = a8;
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4.i32[0];
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
  *(this + 6) = a8;
  *(this + 7) = a9;
  *(this + 8) = a10;
  *(this + 9) = a11;
  *(this + 10) = 629145600;
  *(this + 11) = a17;
  *(this + 12) = a2;
  *(this + 13) = a3;
  *(this + 14) = 2 * a2;
  *(this + 15) = a3 * a2;
  *(this + 16) = 2 * a2 * a3;
  *(this + 17) = 2 * a2 * a3 * a2;
  *(this + 20) = -1082130432;
  v26 = (this + 80);
  *(this + 21) = a2;
  *(this + 9) = 0x3F80000000000000;
  *(this + 22) = -a2;
  *(this + 23) = (1.0 - a9) / a9;
  v27 = __PAIR64__(LODWORD(a5), a4.u32[0]);
  __asm { FMOV            V1.2S, #1.0 }

  v33 = vsub_f32(_D1, v27);
  *(this + 12) = v33;
  *(this + 26) = 1.0 - a6;
  *(this + 27) = a12;
  *(this + 28) = a14;
  *(this + 29) = a13;
  *(this + 120) = *&a18;
  *(this + 34) = a15;
  *(this + 140) = a16;
  *(this + 18) = a22;
  *(this + 19) = vdiv_f32(_D1, vzip1_s32(a4, v33));
  *(this + 160) = a23;
  v34 = (a3 - 1) + (a3 - 1);
  *(this + 41) = v34;
  *(this + 42) = 1.0 / v34;
  *(this + 43) = a2;
  LOBYTE(v82) = 0;
  std::vector<BOOL>::vector(this + 22, 2 * a2);
  v35 = *(this + 12);
  std::vector<float>::vector[abi:ne200100](&v82, *(this + 13));
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 25, v35);
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  v36 = *(this + 12);
  std::vector<float>::vector[abi:ne200100](&v82, *(this + 13));
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 28, v36);
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  v37 = *(this + 14);
  v38 = *(this + 12);
  std::vector<float>::vector[abi:ne200100](&v80, *(this + 13));
  std::vector<std::vector<float>>::vector[abi:ne200100](&v82, v37);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](this + 31, v38);
  v85[0] = &v82;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v85);
  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  v39 = *(this + 14);
  v40 = *(this + 12);
  std::vector<float>::vector[abi:ne200100](&v80, *(this + 13));
  std::vector<std::vector<float>>::vector[abi:ne200100](&v82, v39);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](this + 34, v40);
  v85[0] = &v82;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v85);
  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  v41 = *(this + 12);
  std::vector<DSPSplitComplex>::vector[abi:ne200100](&v82, *(this + 14));
  std::vector<std::vector<DSPSplitComplex>>::vector[abi:ne200100](this + 37, v41);
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  v42 = *(this + 14);
  v43 = *(this + 12);
  std::vector<float>::vector[abi:ne200100](&v80, *(this + 13));
  std::vector<std::vector<float>>::vector[abi:ne200100](&v82, v42);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](this + 40, v43);
  v44 = a14;
  v85[0] = &v82;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v85);
  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  v45 = *(this + 14);
  v46 = *(this + 12);
  std::vector<float>::vector[abi:ne200100](&v80, *(this + 13));
  std::vector<std::vector<float>>::vector[abi:ne200100](&v82, v45);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](this + 43, v46);
  v85[0] = &v82;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v85);
  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  v47 = *(this + 12);
  std::vector<DSPSplitComplex>::vector[abi:ne200100](&v82, *(this + 14));
  std::vector<std::vector<DSPSplitComplex>>::vector[abi:ne200100](this + 46, v47);
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  std::vector<float>::vector[abi:ne200100](this + 49, *(this + 13));
  v48 = *(this + 13);
  LODWORD(v82) = 1056964608;
  std::vector<float>::vector[abi:ne200100](this + 52, v48);
  *(this + 110) = 0;
  std::vector<float>::vector[abi:ne200100](this + 56, (2 * *(this + 15)));
  std::vector<float>::vector[abi:ne200100](this + 59, *(this + 16));
  std::vector<float>::vector[abi:ne200100](this + 62, *(this + 16));
  std::vector<DSPSplitComplex>::vector[abi:ne200100](this + 65, *(this + 14));
  std::vector<float>::vector[abi:ne200100](this + 68, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 71, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 74, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 77, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 80, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 83, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 86, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 89, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 92, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 95, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 98, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 101, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 104, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 107, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 110, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 113, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 116, *(this + 13));
  *(this + 119) = *(this + 113);
  *(this + 120) = *(this + 116);
  std::vector<float>::vector[abi:ne200100](this + 121, (2 * *(this + 15)));
  std::vector<float>::vector[abi:ne200100](this + 124, (2 * *(this + 15)));
  std::vector<float>::vector[abi:ne200100](this + 127, (2 * *(this + 15)));
  std::vector<float>::vector[abi:ne200100](this + 130, (2 * *(this + 15)));
  std::vector<float>::vector[abi:ne200100](this + 133, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 136, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 139, (2 * *(this + 15)));
  std::vector<float>::vector[abi:ne200100](this + 142, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 145, *(this + 13));
  std::vector<float>::vector[abi:ne200100](this + 148, *(this + 13));
  v49 = *(this + 13);
  LODWORD(v82) = 1065353216;
  std::vector<float>::vector[abi:ne200100](this + 151, v49);
  v50 = *(this + 13);
  LODWORD(v82) = 1065353216;
  std::vector<float>::vector[abi:ne200100](this + 154, v50);
  std::vector<float>::vector[abi:ne200100](this + 157, (2 * *(this + 15)));
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 160, v44);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 163, v44);
  v51 = *(this + 13);
  LODWORD(v82) = 1056964608;
  std::vector<float>::vector[abi:ne200100](this + 166, v51);
  v52 = *(this + 13);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 169, v52);
  v53 = *(this + 13);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 172, v53);
  v54 = *(this + 13);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 175, v54);
  v55 = *(this + 13);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 178, v55);
  v56 = *(this + 13);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 181, v56);
  v57 = *(this + 13);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 184, v57);
  v58 = *(this + 13);
  LODWORD(v82) = 0;
  std::vector<float>::vector[abi:ne200100](this + 187, v58);
  *(this + 380) = 0;
  LODWORD(v59) = *(this + 12);
  if (v59)
  {
    v60 = 0;
    do
    {
      v61 = *(this + 14);
      v62 = *(this + 37);
      if (v61)
      {
        v63 = *(*(this + 31) + 24 * v60);
        v64 = *(v62 + 24 * v60);
        v65 = *(*(this + 34) + 24 * v60);
        v66 = *(*(this + 40) + 24 * v60);
        v67 = *(*(this + 43) + 24 * v60);
        v68 = (*(*(this + 46) + 24 * v60) + 8);
        v69 = (v64 + 8);
        do
        {
          v70 = *v63;
          v63 += 3;
          *(v69 - 1) = v70;
          v71 = *v65;
          v65 += 3;
          *v69 = v71;
          v69 += 2;
          v72 = *v66;
          v66 += 3;
          *(v68 - 1) = v72;
          v73 = *v67;
          v67 += 3;
          *v68 = v73;
          v68 += 2;
          --v61;
        }

        while (v61);
      }

      else
      {
        v64 = *(v62 + 24 * v60);
      }

      vDSP_vfill(v26, *(v64 + 16 * (v59 + v60)), 1, *(this + 13));
      vDSP_vfill(v26, *(*(*(this + 46) + 24 * v60) + 16 * (*(this + 12) + v60)), 1, *(this + 13));
      ++v60;
      v59 = *(this + 12);
    }

    while (v60 < v59);
  }

  v74 = *(this + 14);
  if (v74)
  {
    v75 = 0;
    v76 = *(this + 13);
    v77 = *(this + 59);
    v78 = *(this + 62);
    v79 = (*(this + 65) + 8);
    do
    {
      *(v79 - 1) = v77 + 4 * v75;
      *v79 = v78 + 4 * v75;
      v79 += 2;
      v75 += v76;
      --v74;
    }

    while (v74);
  }
}

void sub_1DDF9A890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, void **a28, void **a29, void **a30, void **a31, void **a32, void **a33, void **a34, void **a35, void **a36, void **a37, void **a38, void **a39, void **a40)
{
  v48 = *v41;
  if (*v41)
  {
    v40[185] = v48;
    operator delete(v48);
  }

  v49 = *v45;
  if (*v45)
  {
    v40[182] = v49;
    operator delete(v49);
  }

  v50 = *a9;
  if (*a9)
  {
    v40[179] = v50;
    operator delete(v50);
  }

  v51 = *a10;
  if (*a10)
  {
    v40[176] = v51;
    operator delete(v51);
  }

  v52 = *a11;
  if (*a11)
  {
    v40[173] = v52;
    operator delete(v52);
  }

  v53 = *a12;
  if (*a12)
  {
    v40[170] = v53;
    operator delete(v53);
  }

  v54 = *a13;
  if (*a13)
  {
    v40[167] = v54;
    operator delete(v54);
  }

  v55 = *a14;
  if (*a14)
  {
    v40[164] = v55;
    operator delete(v55);
  }

  v56 = *a15;
  if (*a15)
  {
    v40[161] = v56;
    operator delete(v56);
  }

  v57 = *a16;
  if (*a16)
  {
    v40[158] = v57;
    operator delete(v57);
  }

  v58 = *a17;
  if (*a17)
  {
    v40[155] = v58;
    operator delete(v58);
  }

  v59 = *a18;
  if (*a18)
  {
    v40[152] = v59;
    operator delete(v59);
  }

  v60 = *a19;
  if (*a19)
  {
    v40[149] = v60;
    operator delete(v60);
  }

  v61 = *a20;
  if (*a20)
  {
    v40[146] = v61;
    operator delete(v61);
  }

  v62 = *a21;
  if (*a21)
  {
    v40[143] = v62;
    operator delete(v62);
  }

  v63 = *a22;
  if (*a22)
  {
    v40[140] = v63;
    operator delete(v63);
  }

  v64 = *a23;
  if (*a23)
  {
    v40[137] = v64;
    operator delete(v64);
  }

  v65 = *a24;
  if (*a24)
  {
    v40[134] = v65;
    operator delete(v65);
  }

  v66 = *a25;
  if (*a25)
  {
    v40[131] = v66;
    operator delete(v66);
  }

  v67 = *a26;
  if (*a26)
  {
    v40[128] = v67;
    operator delete(v67);
  }

  v68 = *a27;
  if (*a27)
  {
    v40[125] = v68;
    operator delete(v68);
  }

  v69 = *a28;
  if (*a28)
  {
    v40[122] = v69;
    operator delete(v69);
  }

  v70 = *a29;
  if (*a29)
  {
    v40[117] = v70;
    operator delete(v70);
  }

  v71 = *a30;
  if (*a30)
  {
    v40[114] = v71;
    operator delete(v71);
  }

  v72 = *a31;
  if (*a31)
  {
    v40[111] = v72;
    operator delete(v72);
  }

  v73 = *a32;
  if (*a32)
  {
    v40[108] = v73;
    operator delete(v73);
  }

  v74 = *a33;
  if (*a33)
  {
    v40[105] = v74;
    operator delete(v74);
  }

  v75 = *a34;
  if (*a34)
  {
    v40[102] = v75;
    operator delete(v75);
  }

  v76 = *a35;
  if (*a35)
  {
    v40[99] = v76;
    operator delete(v76);
  }

  v77 = *a36;
  if (*a36)
  {
    v40[96] = v77;
    operator delete(v77);
  }

  v78 = *a37;
  if (*a37)
  {
    v40[93] = v78;
    operator delete(v78);
  }

  v79 = *a38;
  if (*a38)
  {
    v40[90] = v79;
    operator delete(v79);
  }

  v80 = *a39;
  if (*a39)
  {
    v40[87] = v80;
    operator delete(v80);
  }

  v81 = *a40;
  if (*a40)
  {
    v40[84] = v81;
    operator delete(v81);
  }

  v82 = **(v46 - 240);
  if (v82)
  {
    v40[81] = v82;
    operator delete(v82);
  }

  v83 = **(v46 - 232);
  if (v83)
  {
    v40[78] = v83;
    operator delete(v83);
  }

  v84 = **(v46 - 224);
  if (v84)
  {
    v40[75] = v84;
    operator delete(v84);
  }

  v85 = **(v46 - 216);
  if (v85)
  {
    v40[72] = v85;
    operator delete(v85);
  }

  v86 = **(v46 - 208);
  if (v86)
  {
    v40[69] = v86;
    operator delete(v86);
  }

  v87 = **(v46 - 200);
  if (v87)
  {
    v40[66] = v87;
    operator delete(v87);
  }

  v88 = v40[62];
  if (v88)
  {
    v40[63] = v88;
    operator delete(v88);
  }

  v89 = v40[59];
  if (v89)
  {
    v40[60] = v89;
    operator delete(v89);
  }

  v90 = v40[56];
  if (v90)
  {
    v40[57] = v90;
    operator delete(v90);
  }

  v91 = v40[52];
  if (v91)
  {
    v40[53] = v91;
    operator delete(v91);
  }

  v92 = v40[49];
  if (v92)
  {
    v40[50] = v92;
    operator delete(v92);
  }

  *(v46 - 128) = v44;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  *(v46 - 128) = v43;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  *(v46 - 128) = v42;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  *(v46 - 128) = *(v46 - 192);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  *(v46 - 128) = *(v46 - 168);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  *(v46 - 128) = *(v46 - 160);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  *(v46 - 128) = *(v46 - 184);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  *(v46 - 128) = *(v46 - 176);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  v93 = v40[22];
  if (v93)
  {
    operator delete(v93);
  }

  _Unwind_Resume(a1);
}