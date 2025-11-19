void sub_1DDFCEC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a78 < 0)
  {
    operator delete(__p);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (*(v78 - 161) < 0)
  {
    operator delete(*(v78 - 184));
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (*(v78 - 137) < 0)
  {
    operator delete(*(v78 - 160));
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (*(v78 - 105) < 0)
  {
    operator delete(*(v78 - 128));
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void cpms::controllers::LUT<float,cpms::smoothers::Exponential>::LUT(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = *a3;
  if (*a3 != a3 + 8)
  {
    do
    {
      v5 = v4 + 7;
      v6 = a1[1];
      v7 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v8 = a1[1];
      v9 = a1 + 1;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      v11 = *v5;
      if (*(v7 + 7) < *v5)
      {
LABEL_8:
        if (v6)
        {
          v12 = v7 + 1;
        }

        else
        {
          v12 = a1 + 1;
        }
      }

      else
      {
        v12 = a1 + 1;
        if (v6)
        {
          v12 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v15 = v6;
              v16 = *(v6 + 7);
              if (v11 >= v16)
              {
                break;
              }

              v6 = *v6;
              v12 = v15;
              if (!*v15)
              {
                goto LABEL_12;
              }
            }

            if (v16 >= v11)
            {
              break;
            }

            v12 = v6 + 1;
            v6 = v6[1];
            if (!v6)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v12)
      {
LABEL_12:
        operator new();
      }

      v13 = v4[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v4[2];
          v10 = *v14 == v4;
          v4 = v14;
        }

        while (!v10);
      }

      v4 = v14;
    }

    while (v14 != (a3 + 8));
  }

  (*(**(a3 + 24) + 32))(&cf);
  cpms::efficiency::AmpModelFactory((a1 + 3), &cf);
}

void sub_1DDFCF1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t cpms::SmoothedGainApplicator<float,cpms::smoothers::Exponential_asymmetric,cpms::controllers::LUT<float,cpms::smoothers::Exponential>>::SmoothedGainApplicator(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  *a1 = 0;
  *(a1 + 4) = expf(-1.0 / (a4 * 100.0));
  *(a1 + 8) = expf(-1.0 / (a5 * 100.0));
  *(a1 + 12) = 1120403456;
  *(a1 + 24) = *a2;
  v9 = (a2 + 8);
  v10 = *(a2 + 8);
  *(a1 + 16) = 1;
  *(a1 + 32) = v10;
  v11 = a1 + 32;
  v12 = *(a2 + 16);
  *(a1 + 40) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *a2 = v9;
    *v9 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *(a1 + 24) = v11;
  }

  v13 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 48) = v13;
  *(a1 + 56) = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  *(a1 + 96) = *(a2 + 72);
  LODWORD(v13) = (a3 / 100.0);
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *(a1 + 104) = v13;
  *(a1 + 108) = v13;
  *(a1 + 112) = 1065353216;
  return a1;
}

uint64_t *std::unique_ptr<cpms::SmoothedGainApplicator<float,cpms::smoothers::Exponential_asymmetric,cpms::controllers::LUT<float,cpms::smoothers::Exponential>>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v2 + 32));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t cpms::controllers::LUT<float,cpms::smoothers::Exponential>::~LUT(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(a1 + 8));
  return a1;
}

void AUCPMSVolumeV1::~AUCPMSVolumeV1(AUCPMSVolumeV1 *this)
{
  *this = &unk_1F59339E8;
  std::unique_ptr<cpms::SmoothedGainApplicator<float,cpms::smoothers::Exponential_asymmetric,cpms::controllers::LUT<float,cpms::smoothers::Exponential>>>::reset[abi:ne200100](this + 78, 0);
  *this = &unk_1F5933C38;
  if (*(this + 584) == 1)
  {
    v2 = *(this + 71);
    *(this + 71) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 69));
  }

  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59339E8;
  std::unique_ptr<cpms::SmoothedGainApplicator<float,cpms::smoothers::Exponential_asymmetric,cpms::controllers::LUT<float,cpms::smoothers::Exponential>>>::reset[abi:ne200100](this + 78, 0);
  *this = &unk_1F5933C38;
  if (*(this + 584) == 1)
  {
    v2 = *(this + 71);
    *(this + 71) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 69));
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t *BiquadInterpolator::BiquadInterpolator(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v19, 0xFFFFFFCE);
      *buf = 136315906;
      v21 = "BiquadInterpolator.cpp";
      v22 = 1024;
      v23 = 59;
      v24 = 2080;
      v25 = v19;
      v26 = 2080;
      v27 = "No anchor points";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "No anchor points", -50);
  }

  v7 = (v5 - v6) >> 2;
  v8 = a1[3];
  if (v7 != 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v8) >> 3))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v19, 0xFFFFFFCE);
      *buf = 136315906;
      v21 = "BiquadInterpolator.cpp";
      v22 = 1024;
      v23 = 60;
      v24 = 2080;
      v25 = v19;
      v26 = 2080;
      v27 = "Anchor points must be paired with an anchor biquad";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v18 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v18, "Anchor points must be paired with an anchor biquad", -50);
  }

  v9 = v7 - 1;
  v10 = (v8 + 24);
  v11 = (v6 + 4);
  while (v9)
  {
    if (*v11 < *(v11 - 1))
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v19, 0xFFFFFFFF);
        *buf = 136315906;
        v21 = "BiquadInterpolator.cpp";
        v22 = 1024;
        v23 = 64;
        v24 = 2080;
        v25 = v19;
        v26 = 2080;
        v27 = "Anchor points must monotonically ascend";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v16 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v16, "Anchor points must monotonically ascend", -1);
    }

    v12 = v10[1] - *v10;
    v13 = *(v10 - 2) - *(v10 - 3);
    --v9;
    v10 += 3;
    ++v11;
    if (v12 != v13)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v19, 0xFFFFFFFF);
        *buf = 136315906;
        v21 = "BiquadInterpolator.cpp";
        v22 = 1024;
        v23 = 67;
        v24 = 2080;
        v25 = v19;
        v26 = 2080;
        v27 = "Anchor filters must be the same size";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v14 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v14, "Anchor filters must be the same size", -1);
    }
  }

  return a1;
}

void sub_1DDFCF9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t BiquadInterpolator::GetCoefficientsAtPosition(uint64_t result, float *a2, uint64_t a3, float a4)
{
  v4 = *(result + 24);
  v5 = *(result + 32);
  if (v4 == v5)
  {
    __assert_rtn("GetCoefficientsAtPosition", "BiquadInterpolator.cpp", 74, "!mAnchorBiquads.empty()");
  }

  v6 = *result;
  v7 = *(result + 8);
  if (*result == v7)
  {
    __assert_rtn("GetCoefficientsAtPosition", "BiquadInterpolator.cpp", 75, "!mAnchorPoints.empty()");
  }

  v8 = *v4;
  v9 = v4[1];
  v10 = v9 - *v4;
  if (a3 - a2 != v10)
  {
    __assert_rtn("GetCoefficientsAtPosition", "BiquadInterpolator.cpp", 76, "outCoeffs.size() == mAnchorBiquads.front().size()");
  }

  if (*v6 >= a4)
  {
    if (v9 != v8)
    {
      v15 = v10 >> 2;
      if ((v10 >> 2) <= 1)
      {
        v15 = 1;
      }

      do
      {
        v16 = *v8++;
        *a2++ = v16;
        --v15;
      }

      while (v15);
    }
  }

  else if (*(v7 - 4) <= a4)
  {
    v17 = *(v5 - 3);
    v18 = *(v5 - 2) - v17;
    if (v18)
    {
      v19 = v18 >> 2;
      if (v19 <= 1)
      {
        v19 = 1;
      }

      do
      {
        v20 = *v17++;
        *a2++ = v20;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v11 = (v7 - v6) >> 2;
    v12 = v11 - 1;
    if (v11 != 1)
    {
      for (i = 0; ; ++i)
      {
        v14 = i + 1;
        if (v6[i] <= a4 && v6[i + 1] > a4)
        {
          break;
        }

        if (v12 == v14)
        {
          return result;
        }
      }

      v21 = v4[3 * i];
      v22 = v4[3 * i + 1] - v21;
      if (v22)
      {
        v23 = v22 >> 2;
        v24 = v4[3 * v14];
        if (v23 <= 1)
        {
          v23 = 1;
        }

        do
        {
          v25 = *v21++;
          v26 = v25;
          v27 = *v24++;
          *a2++ = v26 + ((a4 - v6[i]) * ((v27 - v26) / (v6[v14] - v6[i])));
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

void sub_1DDFCFC3C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<clsp::CLSP_Log>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5933FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUHapticsProtection::SupportedNumChannels(AUHapticsProtection *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUHapticsProtection::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUHapticsProtection::GetTailTime(AUHapticsProtection *this)
{
  v1 = *(this + 66);
  result = 0.0;
  if (v1)
  {
    if (!*(this + 135))
    {
      return (*(v1 + 324) * *(v1 + 320));
    }
  }

  return result;
}

double AUHapticsProtection::GetLatency(AUHapticsProtection *this)
{
  v1 = *(this + 66);
  result = 0.0;
  if (v1)
  {
    if (!*(this + 135))
    {
      return (*(v1 + 324) * *(v1 + 320));
    }
  }

  return result;
}

uint64_t AUHapticsProtection::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 136);
  }

  return result;
}

uint64_t AUHapticsProtection::GetParameterInfo(AUHapticsProtection *this, int a2, int a3, AudioUnitParameterInfo *a4)
{
  if (a2)
  {
    return 4294956418;
  }

  a4->flags = 0;
  a4->unitName = 0;
  v6 = a3 - 4096;
  if ((a3 - 4096) > 0x2E)
  {
    return 4294956418;
  }

  v7 = &(&HapticTravelLimiter::HTL::paramInfo)[2 * v6];
  v8 = *v7;
  Default = CFAllocatorGetDefault();
  v10 = CFStringCreateWithCString(Default, v8, 0x600u);
  a4->cfNameString = v10;
  a4->flags |= 0x8000010u;
  CFStringGetCString(v10, a4->name, 52, 0x8000100u);
  result = 0;
  *&a4->minValue = v7[1];
  v11 = htlDefaultCoeffs[v6];
  a4->unit = kAudioUnitParameterUnit_Generic;
  a4->defaultValue = v11;
  a4->flags |= 0xC1000000;
  return result;
}

uint64_t AUHapticsProtection::GetParameterList(AUHapticsProtection *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
    result = 4294956430;
  }

  else
  {
    if (a3)
    {
      v6 = 0;
      v7 = xmmword_1DE095150;
      v8 = xmmword_1DE095160;
      v9 = a3 + 2;
      v10 = vdupq_n_s64(0x2FuLL);
      v11 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v10, v8)), *v7.i8).u8[0])
        {
          *(v9 - 2) = v6 | 0x1000;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2FuLL), *&v8)), *&v7).i8[2])
        {
          *(v9 - 1) = v6 | 0x1001;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2FuLL), *&v7))).i32[1])
        {
          *v9 = v6 | 0x1002;
          v9[1] = v6 | 0x1003;
        }

        v6 += 4;
        v7 = vaddq_s64(v7, v11);
        v8 = vaddq_s64(v8, v11);
        v9 += 4;
      }

      while (v6 != 48);
    }

    result = 0;
    v4 = 47;
  }

  *a4 = v4;
  return result;
}

ausdk::AUInputElement *AUHapticsProtection::Render(AUHapticsProtection *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUHapticsProtection::ProcessMultipleBufferLists(AUHapticsProtection *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, const AudioBufferList **a7)
{
  v9 = a3;
  v10 = this;
  if (*(this + 137) != *(this + 136))
  {
    AUHapticsProtection::CreateHTLFromParams(&ioData, this);
  }

  v11 = SimpleMeters::ProcessInputBufferList((this + 600), a3, *a5);
  if (!v11)
  {
    v68 = *&(*a5)[1].mBuffers[0].mNumberChannels;
    mData = (*a5)->mBuffers[0].mData;
    v67 = (*a7)->mBuffers[0].mData;
    if (*(v10 + 552) == 1)
    {
      if (v9)
      {
        v12 = 0;
        v13 = *(v10 + 72);
        v14 = *&(*a5)[1].mBuffers[0].mNumberChannels;
        v15 = (*a5)->mBuffers[0].mData;
        do
        {
          v16 = *v15++;
          *(v13 + 4 * v12) = v16;
          v17 = *v14++;
          *(v13 + 4 * (v12 + 1)) = v17;
          v12 += 2;
        }

        while (2 * v9 != v12);
      }

      ioData.mNumberBuffers = 1;
      Element = ausdk::AUScope::GetElement((v10 + 80), 0);
      if (!Element || (ioData.mBuffers[0].mNumberChannels = *(Element + 108), (v19 = ausdk::AUScope::GetElement((v10 + 80), 0)) == 0))
      {
        ausdk::Throw(0xFFFFD583);
      }

      ioData.mBuffers[0].mDataByteSize = 4 * v9 * *(v19 + 108);
      ioData.mBuffers[0].mData = *(v10 + 72);
      ExtAudioFileWriteAsync(*(v10 + 70), v9, &ioData);
    }

    if (*(v10 + 135))
    {
      ioData.mNumberBuffers = -1082130432;
      LODWORD(v111) = 1065353216;
      MEMORY[0x1E12BE5D0](mData, 1, v68, 1, v67, 1, v9);
      vDSP_vclip(v67, 1, &ioData.mNumberBuffers, &v111, v67, 1, v9);
    }

    else if (v9)
    {
      v20 = 0;
      v21 = v9;
      v65 = a7;
      v66 = v9;
      v64 = v10;
      do
      {
        if (v21 >= 0x100)
        {
          v22 = 256;
        }

        else
        {
          v22 = v21;
        }

        v23 = *(v10 + 66);
        if (*(v23 + 300) < v22)
        {
          __assert_rtn("run", "htl.hpp", 741, "nFrames <= _allocator.getChunkSize()");
        }

        v70 = v21 - 256;
        v24 = &mData[4 * v20];
        v25 = v68 + 4 * v20;
        Chunk = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v105 = Chunk;
        v106 = v23 + 296;
        MEMORY[0x1E12BE5D0](v24, 1, v25, 1, Chunk, 1, v22);
        v27 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v72 = v20;
        v103 = v27;
        v104 = v23 + 296;
        v28 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v101 = v28;
        v102 = v23 + 296;
        v29 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v99 = v29;
        v100 = v23 + 296;
        MEMORY[0x1E12BE940](v24, 1, v23 + 8, v27, 1, v22);
        MEMORY[0x1E12BE940](v25, 1, v23 + 8, v28, 1, v22);
        MEMORY[0x1E12BE940](Chunk, 1, v23 + 8, v29, 1, v22);
        vDSP_vabs(v29, 1, v29, 1, v22);
        v30 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v97 = v30;
        v98 = v23 + 296;
        v31 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v95 = v31;
        v96 = v23 + 296;
        vDSP_biquad(*(v23 + 16), *(v23 + 24), v27, 1, v30, 1, v22);
        vDSP_biquad(*(v23 + 40), *(v23 + 48), v28, 1, v31, 1, v22);
        v32 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v93 = v32;
        v94 = v23 + 296;
        v33 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v91 = v33;
        v92 = v23 + 296;
        v34 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v89 = v34;
        v90 = v23 + 296;
        HapticTravelLimiter::PlantModel::run((v23 + 88), v30, v32, v22, (v23 + 296));
        HapticTravelLimiter::PlantModel::run((v23 + 112), v31, v33, v22, (v23 + 296));
        HapticTravelLimiter::PlantModel::run((v23 + 136), v31, v34, v22, (v23 + 296));
        v35 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v87 = v35;
        v88 = v23 + 296;
        v36 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        *&ioData.mNumberBuffers = v36;
        *&ioData.mBuffers[0].mNumberChannels = v23 + 296;
        v37 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v111 = v37;
        v112 = v23 + 296;
        MEMORY[0x1E12BE5D0](v32, 1, v33, 1, v36, 1, v22);
        vDSP_vabs(v36, 1, v36, 1, v22);
        MEMORY[0x1E12BE5D0](v32, 1, v34, 1, v37, 1, v22);
        vDSP_vabs(v37, 1, v37, 1, v22);
        vDSP_vmax(v36, 1, v37, 1, v35, 1, v22);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v23 + 296, v37);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v23 + 296, v36);
        v38 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        __A = v38;
        v86 = v23 + 296;
        v39 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        __C = v39;
        v84 = v23 + 296;
        HapticTravelLimiter::SlidingWindowMax::update((v23 + 240), v35, v38, v22);
        HapticTravelLimiter::SlidingWindowMax::update((v23 + 256), v29, v39, v22);
        v40 = atomic_load((v23 + 13));
        if (v40)
        {
          vDSP_vclr(__A, 1, v22);
        }

        __B = 0.000000001;
        v41 = __C;
        vDSP_vthr(__C, 1, &__B, __C, 1, v22);
        v42 = __A;
        vDSP_vthr(__A, 1, &__B, __A, 1, v22);
        v43 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        __Y = v43;
        v81 = (v23 + 296);
        v44 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v78 = v44;
        v79 = v23 + 296;
        v45 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v76 = v45;
        v77 = v23 + 296;
        HapticTravelLimiter::ActivityDetector::run((v23 + 160), v103, v44, v22);
        HapticTravelLimiter::ActivityDetector::run((v23 + 184), v101, v45, v22);
        v46 = atomic_load((v23 + 12));
        v113 = 0.0;
        v114[0] = 1.0;
        v71 = v42;
        v47 = v41;
        v74 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        *&ioData.mNumberBuffers = v74;
        *&ioData.mBuffers[0].mNumberChannels = v23 + 296;
        v48 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        __D = v43;
        v111 = v48;
        v112 = v23 + 296;
        v49 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v109 = v49;
        v110 = v23 + 296;
        v50 = HapticTravelLimiter::ChunkAllocator::allocateChunk((v23 + 296));
        v107 = v50;
        v108 = v23 + 296;
        HapticTravelLimiter::Compressor::generateLimits(v44, v45, v49, *(v23 + 280), *(v23 + 288), *(v23 + 272), v22, (v23 + 296), (v46 & 1));
        HapticTravelLimiter::Compressor::generateLimits(v44, v45, v50, *(v23 + 284), *(v23 + 292), *(v23 + 276), v22, (v23 + 296), (v46 & 1));
        vDSP_vdiv(v47, 1, v49, 1, v74, 1, v22);
        vDSP_vdiv(v71, 1, v50, 1, v48, 1, v22);
        vDSP_vmin(v74, 1, v48, 1, __D, 1, v22);
        vDSP_vclip(__D, 1, &v113, v114, __D, 1, v22);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v23 + 296, v50);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v23 + 296, v49);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v23 + 296, v48);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v23 + 296, v74);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v77, v76);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v79, v78);
        v51 = __Y;
        vDSP_biquad(*(v23 + 64), *(v23 + 72), __Y, 1, __Y, 1, v22);
        if (*(v23 + 212) < v22)
        {
          __assert_rtn("push", "htl.hpp", 93, "n <= _maxInputSize");
        }

        v52 = &v67[v72];
        v53 = v105;
        v54 = *(v23 + 216);
        v55 = *(v23 + 232);
        v56 = &v55[4 * v54];
        v57 = *(v23 + 224) - v54;
        if (v57 >= v22)
        {
          v58 = v22;
        }

        else
        {
          v58 = v57;
        }

        memcpy(v56, v105, 4 * v58);
        memcpy(v55, &v53[v58], 4 * (v22 - v58));
        v59 = *(v23 + 220);
        v60 = *(v23 + 224);
        *(v23 + 216) = (*(v23 + 216) + v22) % v60;
        v61 = *(v23 + 232);
        if (v60 - v59 >= v22)
        {
          v62 = v22;
        }

        else
        {
          v62 = v60 - v59;
        }

        MEMORY[0x1E12BE7F0](v61 + 4 * v59, 1, v51, 1, v52, 1, v62);
        MEMORY[0x1E12BE7F0](v61, 1, &v51[v62], 1, &v52[v62], 1, (v22 - v62));
        if (*(v23 + 212) < v22)
        {
          __assert_rtn("pop", "htl.hpp", 112, "n <= _maxInputSize");
        }

        *(v23 + 220) = (*(v23 + 220) + v22) % *(v23 + 224);
        ioData.mNumberBuffers = 1065353216;
        LODWORD(v111) = -1082130432;
        vDSP_vclip(v52, 1, &v111, &ioData.mNumberBuffers, v52, 1, v22);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v81, v51);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v84, __C);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v86, __A);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v88, v87);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v90, v89);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v92, v91);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v94, v93);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v96, v95);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v98, v97);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v100, v99);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v102, v101);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v104, v103);
        HapticTravelLimiter::ChunkAllocator::freeChunk(v106, v53);
        v20 = v72 + 256;
        v21 = v70;
        a7 = v65;
        v9 = v66;
        v10 = v64;
      }

      while (v72 + 256 < v66);
    }

    v11 = SimpleMeters::ProcessOutputBufferList((v10 + 600), v9, *a7);
    if (*(v10 + 552) == 1)
    {
      ExtAudioFileWriteAsync(*(v10 + 71), v9, *a7);
    }
  }

  return v11;
}

void sub_1DDFD0A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41)
{
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(&a28);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(&a31);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(&a33);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(&a35);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(&a37);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(&a39);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(&a41);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk((v41 - 240));
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk((v41 - 224));
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk((v41 - 208));
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk((v41 - 192));
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk((v41 - 176));
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk((v41 - 160));
  _Unwind_Resume(a1);
}

void AUHapticsProtection::CreateHTLFromParams(AUHapticsProtection *this, uint64_t a2)
{
  v3 = 0;
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, 188);
  while (1)
  {
    v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a2 + 32, 0);
    if ((v5 & 1) == 0)
    {
      break;
    }

    *(v6 + v3) = ausdk::AUElement::GetParameter(v4, v3 + 4096);
    if (++v3 == 47)
    {
      operator new();
    }
  }

  abort();
}

void sub_1DDFD0F4C(_Unwind_Exception *a1)
{
  v4 = *(v2 + 312);
  if (v4)
  {
    free(v4);
  }

  v5 = *(v2 + 264);
  if (v5)
  {
    free(v5);
  }

  v6 = *(v2 + 248);
  if (v6)
  {
    free(v6);
  }

  v7 = *(v2 + 232);
  if (v7)
  {
    free(v7);
  }

  v8 = *(v2 + 200);
  if (v8)
  {
    free(v8);
  }

  v9 = *(v2 + 176);
  if (v9)
  {
    free(v9);
  }

  HapticTravelLimiter::Biquad::~Biquad((v2 + 64));
  HapticTravelLimiter::Biquad::~Biquad((v2 + 40));
  HapticTravelLimiter::Biquad::~Biquad((v2 + 16));
  MEMORY[0x1E12BD160](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<HapticTravelLimiter::HTL>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 312);
    if (v3)
    {
      free(v3);
    }

    v4 = *(v2 + 264);
    if (v4)
    {
      free(v4);
    }

    v5 = *(v2 + 248);
    if (v5)
    {
      free(v5);
    }

    v6 = *(v2 + 232);
    if (v6)
    {
      free(v6);
    }

    v7 = *(v2 + 200);
    if (v7)
    {
      free(v7);
    }

    v8 = *(v2 + 176);
    if (v8)
    {
      free(v8);
    }

    HapticTravelLimiter::Biquad::~Biquad((v2 + 64));
    HapticTravelLimiter::Biquad::~Biquad((v2 + 40));
    HapticTravelLimiter::Biquad::~Biquad((v2 + 16));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t HapticTravelLimiter::ChunkAllocator::allocateChunk(HapticTravelLimiter::ChunkAllocator *this)
{
  v1 = *(this + 1);
  v2 = *this;
  if (*(this + 2) - v2 < v1)
  {
    __assert_rtn("allocateChunk", "htl.hpp", 231, "(_dataSize - _current) >= _chunkSize");
  }

  v3 = *(this + 2) + 4 * v2;
  *this = v1 + v2;
  return v3;
}

uint64_t HapticTravelLimiter::PlantModel::run(HapticTravelLimiter::PlantModel *this, const float *a2, float *a3, unsigned int a4, HapticTravelLimiter::ChunkAllocator *a5)
{
  Chunk = HapticTravelLimiter::ChunkAllocator::allocateChunk(a5);
  v13 = HapticTravelLimiter::ChunkAllocator::allocateChunk(a5);
  v10 = (*a2 - *this) * *(this + 5);
  *Chunk = v10;
  *v13 = (v10 - *(this + 1)) * *(this + 5);
  v11 = a4 - 1;
  MEMORY[0x1E12BE9A0](a2, 1, a2 + 1, 1, Chunk + 1, 1, v11);
  MEMORY[0x1E12BE940](Chunk + 1, 1, this + 20, Chunk + 1, 1, v11);
  MEMORY[0x1E12BE9A0](Chunk, 1, Chunk + 1, 1, v13 + 1, 1, v11);
  MEMORY[0x1E12BE940](v13 + 1, 1, this + 20, v13 + 1, 1, v11);
  *this = a2[v11];
  *(this + 1) = Chunk[v11];
  MEMORY[0x1E12BE930](a2, 1, this + 16, Chunk, 1, this + 12, a3, 1, a4);
  MEMORY[0x1E12BE8F0](v13, 1, this + 8, a3, 1, a3, 1, a4);
  HapticTravelLimiter::ChunkAllocator::freeChunk(a5, v13);
  return HapticTravelLimiter::ChunkAllocator::freeChunk(a5, Chunk);
}

void sub_1DDFD12C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(va);
  _Unwind_Resume(a1);
}

uint64_t HapticTravelLimiter::ChunkAllocator::freeChunk(uint64_t this, float *a2)
{
  v2 = *(this + 4);
  v3 = *this - v2;
  if (*this < v2)
  {
    __assert_rtn("freeChunk", "htl.hpp", 239, "_current >= _chunkSize");
  }

  *this = v3;
  if ((*(this + 16) + 4 * v3) != a2)
  {
    __assert_rtn("freeChunk", "htl.hpp", 241, "chunkBegin == &_data[_current]");
  }

  return this;
}

void *HapticTravelLimiter::SlidingWindowMax::update(HapticTravelLimiter::SlidingWindowMax *this, const float *a2, float *a3, unsigned int a4)
{
  if (*(this + 1) < a4)
  {
    __assert_rtn("update", "htl.hpp", 574, "n <= _maxInputSize");
  }

  v7 = 4 * (*this - 1);
  v8 = a4;
  memcpy((*(this + 1) + v7), a2, 4 * a4);
  vDSP_vswmax(*(this + 1), 1, a3, 1, v8, *this);
  v9 = *(this + 1);

  return memmove(v9, &v9[4 * a4], v7);
}

void *HapticTravelLimiter::ActivityDetector::run(HapticTravelLimiter::ActivityDetector *this, const float *__A, float *a3, vDSP_Length __N)
{
  if (*(this + 2) < __N)
  {
    __assert_rtn("run", "htl.hpp", 515, "n <= _maxInputLength");
  }

  v4 = __N;
  __C = 1.0;
  v7 = *(this + 1) - 1;
  v8 = 4 * v7;
  v9 = __N;
  vDSP_vabs(__A, 1, (*(this + 2) + v8), 1, __N);
  vDSP_vthrsc((*(this + 2) + v8), 1, this, &__C, (*(this + 2) + v8), 1, v9);
  vDSP_vthres((*(this + 2) + v8), 1, &__C, (*(this + 2) + v8), 1, v9);
  vDSP_vswmax(*(this + 2), 1, a3, 1, v9, *(this + 1));
  return memmove(*(this + 2), (*(this + 2) + 4 * v4), v8);
}

void HapticTravelLimiter::Compressor::generateLimits(HapticTravelLimiter::Compressor *this, const float *a2, float *__C, float a4, float a5, float a6, float *a7, HapticTravelLimiter::ChunkAllocator *a8, HapticTravelLimiter::ChunkAllocator *a9)
{
  v9 = a9;
  v18 = a5;
  v19 = a4;
  __A = a6;
  v14 = a7;
  vDSP_vfill(&__A, __C, 1, a7);
  if ((v9 & 1) == 0)
  {
    Chunk = HapticTravelLimiter::ChunkAllocator::allocateChunk(a8);
    v15 = HapticTravelLimiter::ChunkAllocator::allocateChunk(a8);
    MEMORY[0x1E12BE940](this, 1, &v19, Chunk, 1, v14);
    MEMORY[0x1E12BE940](a2, 1, &v18, v15, 1, v14);
    vDSP_vmax(Chunk, 1, v15, 1, Chunk, 1, v14);
    MEMORY[0x1E12BE9A0](Chunk, 1, __C, 1, __C, 1, v14);
    HapticTravelLimiter::ChunkAllocator::freeChunk(a8, v15);
    HapticTravelLimiter::ChunkAllocator::freeChunk(a8, Chunk);
  }
}

void sub_1DDFD1688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HapticTravelLimiter::ChunkAllocator::Chunk::~Chunk(va);
  _Unwind_Resume(a1);
}

void HapticTravelLimiter::Biquad::~Biquad(vDSP_biquad_SetupStruct **this)
{
  v2 = *this;
  if (v2)
  {
    vDSP_biquad_DestroySetup(v2);
  }

  v3 = this[1];
  if (v3)
  {
    free(v3);
  }
}

uint64_t HapticTravelLimiter::Biquad::Biquad(uint64_t a1, float32x2_t *a2, uint64_t a3)
{
  v6 = 2 * a3 + 2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 8) = HapticTravelLimiter::allocateAligned<float>(v6);
  std::vector<double>::vector[abi:ne200100](__Coefficients, (5 * a3));
  v7 = __Coefficients[0];
  if (a3)
  {
    v8 = (a2 + 20 * a3);
    v9 = __Coefficients[0] + 4;
    do
    {
      v10 = vcvtq_f64_f32(a2[1]);
      *(v9 - 2) = vcvtq_f64_f32(*a2);
      *(v9 - 1) = v10;
      *v9 = a2[2].f32[0];
      v9 += 5;
      a2 = (a2 + 20);
    }

    while (a2 != v8);
  }

  *a1 = vDSP_biquad_CreateSetup(v7, a3);
  if (__Coefficients[0])
  {
    __Coefficients[1] = __Coefficients[0];
    operator delete(__Coefficients[0]);
  }

  return a1;
}

void sub_1DDFD17A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

HapticTravelLimiter::ActivityDetector *HapticTravelLimiter::ActivityDetector::ActivityDetector(HapticTravelLimiter::ActivityDetector *this, float a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 256;
  *(this + 2) = 0;
  if (a2 <= 0.0)
  {
    __assert_rtn("ActivityDetector", "htl.hpp", 484, "_threshold > 0");
  }

  if (!a3)
  {
    __assert_rtn("ActivityDetector", "htl.hpp", 485, "_timeout > 0");
  }

  *(this + 2) = HapticTravelLimiter::allocateAligned<float>(a3 + 255);
  return this;
}

void *HapticTravelLimiter::allocateAligned<float>(int a1)
{
  v1 = (4 * a1 + 60) & 0xFFFFFFC0;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x40uLL, v1, 0x64C439F5uLL))
  {
    __assert_rtn("allocateAligned", "htl.hpp", 37, "ret == 0");
  }

  if (!memptr)
  {
    __assert_rtn("allocateAligned", "htl.hpp", 38, "alignedMemory != nullptr");
  }

  bzero(memptr, v1);
  return memptr;
}

HapticTravelLimiter::SlidingWindowMax *HapticTravelLimiter::SlidingWindowMax::SlidingWindowMax(HapticTravelLimiter::SlidingWindowMax *this, int a2)
{
  *this = a2;
  *(this + 1) = 256;
  *(this + 1) = 0;
  if (!a2)
  {
    __assert_rtn("SlidingWindowMax", "htl.hpp", 557, "_windowSize");
  }

  *(this + 1) = HapticTravelLimiter::allocateAligned<float>(a2 + 255);
  return this;
}

void HapticTravelLimiter::HTL::reset(float **this)
{
  __A = 0.0;
  vDSP_vfill(&__A, this[3], 1, *(this + 8));
  v3 = 0.0;
  vDSP_vfill(&v3, this[6], 1, *(this + 14));
  v4 = 1.0;
  vDSP_vfill(&v4, this[9], 1, *(this + 20));
  this[11] = 0;
  this[14] = 0;
  this[17] = 0;
  vDSP_vclr(this[22], 1, (*(this + 41) + *(this + 42) - 1));
  vDSP_vclr(this[25], 1, (*(this + 47) + *(this + 48) - 1));
  this[27] = *(this + 52);
  vDSP_vclr(this[29], 1, *(this + 56));
  vDSP_vclr(this[31], 1, (*(this + 60) + *(this + 61) - 1));
  vDSP_vclr(this[33], 1, (*(this + 64) + *(this + 65) - 1));
}

uint64_t AUHapticsProtection::SetParameter(AUHapticsProtection *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 136);
  return result;
}

uint64_t AUHapticsProtection::SetProperty(AUHapticsProtection *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  v7 = a6;
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (SimpleMeters::HandleSetProperty((this + 600), a2, a3, a5, a6, &v20, a7))
  {
    return v20;
  }

  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 88000)
  {
    v15 = *a5;
    if (getAUHPLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUHPLog(void)::onceToken, &__block_literal_global_28192);
    }

    v16 = getAUHPLog(void)::gLog;
    if (os_log_type_enabled(getAUHPLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      if (v15 > 2)
      {
        v17 = "Invalid";
      }

      else
      {
        v17 = off_1E86707B0[v15];
      }

      *buf = 136315138;
      v22 = v17;
      _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "Setting ProtectionLevel to %s", buf, 0xCu);
    }

    if (*(this + 134) == v15)
    {
      return 0;
    }

    *(this + 134) = v15;
    if (v15 == 2)
    {
      v18 = 1;
    }

    else
    {
      if (v15 != 1)
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_29;
      }

      v18 = 0;
    }

    v19 = 1;
LABEL_29:
    result = 0;
    atomic_store(v18, (*(this + 66) + 13));
    atomic_store(v19, (*(this + 66) + 12));
    return result;
  }

  if (a2 != 21)
  {
    return 4294956417;
  }

  if (v7 != 4)
  {
    return 4294956445;
  }

  *(this + 135) = *a5;
  if (getAUHPLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHPLog(void)::onceToken, &__block_literal_global_28192);
  }

  v13 = getAUHPLog(void)::gLog;
  result = os_log_type_enabled(getAUHPLog(void)::gLog, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v14 = *(this + 135);
    *buf = 67109120;
    LODWORD(v22) = v14;
    _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, "Setting bypass to %u", buf, 8u);
    return 0;
  }

  return result;
}

os_log_t ___ZL10getAUHPLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUHapticsProtection");
  getAUHPLog(void)::gLog = result;
  return result;
}

uint64_t AUHapticsProtection::GetProperty(AUHapticsProtection *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  v12 = 0;
  if (SimpleMeters::HandleGetProperty((this + 600), a2, a3, a5, &v12, a6))
  {
    return v12;
  }

  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 88000)
  {
    result = 0;
    v11 = *(this + 134);
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    result = 0;
    v11 = *(this + 135);
  }

  *a5 = v11;
  return result;
}

uint64_t AUHapticsProtection::GetPropertyInfo(AUHapticsProtection *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 3007)
  {
    v7 = 1;
    v8 = 4;
LABEL_12:
    result = 0;
    *a5 = v8;
    *a6 = v7;
    return result;
  }

  if (a2 == 3099)
  {
    if (a3 > 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*(this + 76) - *(this + 75)) >> 7;
    }

    if ((a3 & 0xFFFFFFFD) == 0)
    {
      v6 += (*(this + 79) - *(this + 78)) >> 7;
    }

    v7 = 0;
    v8 = 16 * v6;
    goto LABEL_12;
  }

  if (a3 || a2 != 88000 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUHapticsProtection::Reset(AUHapticsProtection *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    HapticTravelLimiter::HTL::reset(v2);
  }

  SimpleMeters::Reset(this + 600);
  return 0;
}

OpaqueExtAudioFile *AUHapticsProtection::Cleanup(AUHapticsProtection *this)
{
  std::unique_ptr<HapticTravelLimiter::HTL>::reset[abi:ne200100](this + 66, 0);
  v2 = *(this + 70);
  if (v2)
  {
    ExtAudioFileDispose(v2);
    *(this + 70) = 0;
  }

  result = *(this + 71);
  if (result)
  {
    result = ExtAudioFileDispose(result);
    *(this + 71) = 0;
  }

  *(this + 76) = *(this + 75);
  *(this + 79) = *(this + 78);
  return result;
}

uint64_t AUHapticsProtection::Initialize(AUHapticsProtection *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), v11 = *(Element + 80), v12 = v3, v13 = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(v4 + 96);
  v8 = *(v4 + 80);
  v9 = v5;
  v10 = *(v4 + 112);
  result = 4294956428;
  if (HIDWORD(v12) == 2 && HIDWORD(v9) == 1)
  {
    AUHapticsProtection::CreateHTLFromParams(&v7, this);
  }

  return result;
}

void CreateExtDebugCapture(const char *a1, const AudioStreamBasicDescription *a2, ExtAudioFileRef *a3)
{
  v6 = strlen(a1);
  v7 = CFURLCreateFromFileSystemRepresentation(0, a1, v6, 0);
  ExtAudioFileCreateWithURL(v7, 0x63616666u, a2, 0, 1u, a3);
  ExtAudioFileSetProperty(*a3, 0x63666D74u, 0x28u, a2);

  CFRelease(v7);
}

void AUHapticsProtection::~AUHapticsProtection(AUHapticsProtection *this)
{
  AUHapticsProtection::~AUHapticsProtection(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5933FE0;
  AUHapticsProtection::Cleanup(this);
  v2 = *(this + 78);
  if (v2)
  {
    *(this + 79) = v2;
    operator delete(v2);
  }

  v3 = *(this + 75);
  if (v3)
  {
    *(this + 76) = v3;
    operator delete(v3);
  }

  v4 = *(this + 72);
  if (v4)
  {
    *(this + 73) = v4;
    operator delete(v4);
  }

  std::unique_ptr<HapticTravelLimiter::HTL>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

uint64_t IVA_DirectiV_Rank1A::CovarianceUpdate(uint64_t this)
{
  if (*(this + 44))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v13 = *(v1 + 16) / (*(*(v1 + 840) + 4 * v2) + *(v1 + 120));
      v12 = sqrtf(fmaxf(v13, 0.0));
      MEMORY[0x1E12BE940](*(*(v1 + 1080) + 24 * v2), 1, v1 + 12, *(v1 + 512), 1, (*(v1 + 48) * *(v1 + 52)));
      MEMORY[0x1E12BE940](*(*(v1 + 1104) + 24 * v2), 1, v1 + 12, *(v1 + 536), 1, (*(v1 + 48) * *(v1 + 52)));
      MEMORY[0x1E12BE940](*(v1 + 320), 1, &v12, *(v1 + 656), 1, (*(v1 + 48) * *(v1 + 44)));
      this = MEMORY[0x1E12BE940](*(v1 + 344), 1, &v12, *(v1 + 680), 1, (*(v1 + 48) * *(v1 + 44)));
      v3 = *(v1 + 44);
      if (!v3)
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 16;
      do
      {
        v7 = v5 + 1;
        v8 = v6;
        for (i = v5 + 1; i < v3; v8 += 16)
        {
          vDSP_zvcma((*(v1 + 776) + v8), 1, (*(v1 + 776) + 16 * v5), 1, (*(v1 + 560) + 16 * (i + v5 * v3)), 1, (*(*(v1 + 1128) + 24 * v2) + 16 * (i + v5 * v3)), 1, *(v1 + 48));
          v10 = *(*(v1 + 1128) + 24 * v2);
          vDSP_zvconj((v10 + v4 * *(v1 + 44) + v8), 1, (v10 + 16 * i * *(v1 + 44) + 16 * v5), 1, *(v1 + 48));
          ++i;
          v3 = *(v1 + 44);
        }

        vDSP_zvmgsa((*(v1 + 440) + 16 * v5), 1, *(v1 + 1152), 1, *(v1 + 800), 1, *(v1 + 48));
        v11 = 16 * (v5 + v5 * *(v1 + 44));
        this = MEMORY[0x1E12BE8F0](*(v1 + 800), 1, &v13, *(*(v1 + 560) + v11), 1, *(*(*(v1 + 1128) + 24 * v2) + v11), 1, *(v1 + 48));
        v3 = *(v1 + 44);
        v4 += 16;
        v6 += 16;
        ++v5;
      }

      while (v7 < v3);
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

void IVA_DirectiV_Rank1A::WAUpdate(IVA_DirectiV_Rank1A *this)
{
  if (*(this + 11))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 141);
      v4 = *(this + 13);
      v54 = *(this + 12);
      memcpy(**(this + 165), **(v3 + 24 * v2), 4 * (v4 * v54));
      memcpy(*(*(this + 165) + 8), *(*(v3 + 24 * v2) + 8), 4 * (*(this + 12) * *(this + 13)));
      vDSP_vclr(*(this + 150), 1, (*(this + 12) * *(this + 13)));
      vDSP_vclr(*(this + 159), 1, (*(this + 12) * *(this + 13)));
      v5 = *(this + 11);
      if (v5)
      {
        v6 = 0;
        do
        {
          vDSP_zvabs((*(this + 165) + 16 * (v6 + v6 * v5)), 1, *(*(this + 168) + 16 * (v6 + v6 * v5)), 1, *(this + 12));
          v7 = *(*(this + 168) + 16 * (v6 + v6 * *(this + 11)));
          vDSP_vthr(v7, 1, *(this + 19), v7, 1, *(this + 12));
          v8 = *(*(this + 168) + 16 * (v6 + v6 * *(this + 11)));
          vvsqrtf(v8, v8, &v54);
          v9 = *(*(this + 168) + 16 * (v6 + v6 * *(this + 11)));
          vDSP_vthr(v9, 1, this + 25, v9, 1, *(this + 12));
          vDSP_vdiv(*(*(this + 168) + 16 * (v6 + v6 * *(this + 11))), 1, *(this + 16), 1, *(this + 100), 1, *(this + 12));
          v10 = v6 + 1;
          v5 = *(this + 11);
          for (i = v6 + 1; i < v5; v5 = *(this + 11))
          {
            vDSP_zrvmul((*(this + 165) + 16 * (i + v6 * v5)), 1, *(this + 100), 1, (*(this + 168) + 16 * (i + v6 * v5)), 1, *(this + 12));
            ++i;
          }

          __C.realp = 0;
          __C.imagp = 0;
          v12 = *(this + 73);
          v13 = *v12;
          v14 = v12[3];
          __C.realp = v13;
          __C.imagp = v14;
          v15 = v6 + 1;
          if (v10 < v5)
          {
            do
            {
              v16 = v6 + 1;
              if (v10 < v5)
              {
                do
                {
                  vDSP_zvmul((*(this + 168) + 16 * (v5 * v6 + v15)), 1, (*(this + 168) + 16 * (v16 + v5 * v6)), 1, &__C, 1, *(this + 12), -1);
                  v17 = (*(this + 165) + 16 * (v16 + v15 * *(this + 11)));
                  vDSP_zvsub(v17, 1, &__C, 1, v17, 1, *(this + 12));
                  ++v16;
                  v5 = *(this + 11);
                }

                while (v16 < v5);
              }

              ++v15;
            }

            while (v15 < v5);
          }

          ++v6;
        }

        while (v10 < v5);
      }

      vDSP_vclr(*(this + 153), 1, (*(this + 12) * *(this + 13)));
      vDSP_vclr(*(this + 162), 1, (*(this + 12) * *(this + 13)));
      v18 = *(this + 19);
      __C.realp = *(this + 16);
      __C.imagp = v18;
      v19 = *(this + 11);
      if (v19)
      {
        for (j = 0; j < v19; ++j)
        {
          vDSP_zvdiv((*(this + 168) + 16 * (j + j * v19)), 1, &__C, 1, (*(this + 171) + 16 * (j + j * v19)), 1, *(this + 12));
          if (j)
          {
            for (k = 0; k != j; ++k)
            {
              for (m = 0; m != j; ++m)
              {
                v23 = *(this + 11);
                v24 = *(this + 171);
                v25 = (v24 + 16 * (v23 * k + j));
                vDSP_zvma((v24 + 16 * (m + v23 * k)), 1, (*(this + 168) + 16 * (j + v23 * m)), 1, v25, 1, v25, 1, *(this + 12));
              }
            }

            for (n = 0; n != j; ++n)
            {
              v27 = *(this + 11);
              v28 = *(this + 171);
              v29 = (v28 + 16 * (j + v27 * n));
              vDSP_zvmul((v28 + 16 * (j + j * v27)), 1, v29, 1, v29, 1, *(this + 12), 1);
              v30 = (*(this + 171) + 16 * (j + *(this + 11) * n));
              vDSP_zvneg(v30, 1, v30, 1, *(this + 12));
            }
          }

          v19 = *(this + 11);
        }
      }

      vDSP_vclr(**(this + 70), 1, (*(this + 12) * *(this + 13)));
      vDSP_vclr(*(*(this + 70) + 8), 1, (*(this + 12) * *(this + 13)));
      v31 = *(this + 11);
      if (v31)
      {
        for (ii = 0; ii < v31; ++ii)
        {
          v33 = 0;
          do
          {
            for (jj = ii; jj < v31; v31 = *(this + 11))
            {
              v35 = *(this + 171);
              v36 = (v35 + 16 * (jj + v33 * v31));
              v37 = v31 * ii;
              v38 = (*(this + 70) + 16 * (v37 + v33));
              vDSP_zvcma(v36, 1, (v35 + 16 * (jj + v37)), 1, v38, 1, v38, 1, *(this + 12));
              ++jj;
            }

            ++v33;
          }

          while (v33 < v31);
        }
      }

      vDSP_vclr(*(this + 76), 1, *(this + 12) * v31);
      vDSP_vclr(*(this + 79), 1, (*(this + 12) * *(this + 11)));
      v39 = *(this + 11);
      if (v39)
      {
        v40 = 0;
        for (kk = 0; kk < v39; ++kk)
        {
          if (v39)
          {
            v42 = 0;
            for (mm = 0; mm < v39; ++mm)
            {
              vDSP_zvma((*(this + 70) + v40 * v39 + v42), 1, (*(this + 132) + 16 * v39 * mm + 16 * v2), 1, (*(this + 94) + 16 * kk), 1, (*(this + 94) + 16 * kk), 1, *(this + 12));
              v39 = *(this + 11);
              v42 += 16;
            }
          }

          v40 += 16;
        }
      }

      vDSP_vclr(**(this + 73), 1, *(this + 12));
      vDSP_vclr(*(*(this + 73) + 24), 1, *(this + 12));
      __C.realp = 0;
      __C.imagp = 0;
      v44 = *(this + 73);
      v45 = *v44;
      v46 = v44[3];
      __C.realp = v45;
      __C.imagp = v46;
      v47 = *(this + 11);
      if (v47)
      {
        v48 = 0;
        for (nn = 0; nn < v47; ++nn)
        {
          vDSP_zvcma((*(this + 94) + v48), 1, (*(this + 132) + 16 * v47 * nn + 16 * v2), 1, &__C, 1, &__C, 1, *(this + 12));
          v47 = *(this + 11);
          v48 += 16;
        }
      }

      vDSP_zvabs(&__C, 1, *(this + 100), 1, *(this + 12));
      MEMORY[0x1E12BE8A0](*(this + 100), 1, this + 96, *(this + 100), 1, *(this + 12));
      vDSP_svdiv(this + 27, *(this + 100), 1, *(this + 100), 1, *(this + 12));
      v50 = *(this + 11);
      if (v50)
      {
        v51 = 0;
        v52 = 0;
        do
        {
          vDSP_zrvmul((*(this + 94) + v51), 1, *(this + 100), 1, (*(this + 94) + v51), 1, *(this + 12));
          ++v52;
          v53 = *(this + 11);
          v51 += 16;
        }

        while (v52 < v53);
        v50 = *(this + 11);
      }

      else
      {
        v53 = 0;
      }

      MEMORY[0x1E12BE9A0](*(this + 111) + 4 * v53 * v2 * *(this + 12), 1, *(this + 76), 1, *(this + 82), 1, (*(this + 12) * v50));
      MEMORY[0x1E12BE5D0](*(this + 120) + 4 * v2 * *(this + 11) * *(this + 12), 1, *(this + 79), 1, *(this + 85), 1, (*(this + 12) * *(this + 11)));
      vDSP_zvconj(*(this + 94), 1, (*(this + 129) + 16 * v2 * *(this + 11)), 1, (*(this + 12) * *(this + 11)));
      SeparationBase::rank1WInverseA(this, v2++);
    }

    while (v2 < *(this + 11));
  }

  SeparationBase::minimumDistrotionPrinciple(this);
}

void SeparationBase::~SeparationBase(SeparationBase *this)
{
  *this = &unk_1F5937B50;
  v40 = (this + 1128);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v40);
  v40 = (this + 1104);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v40);
  v40 = (this + 1080);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v40);
  v2 = *(this + 132);
  if (v2)
  {
    *(this + 133) = v2;
    operator delete(v2);
  }

  v3 = *(this + 129);
  if (v3)
  {
    *(this + 130) = v3;
    operator delete(v3);
  }

  v4 = *(this + 126);
  if (v4)
  {
    *(this + 127) = v4;
    operator delete(v4);
  }

  v5 = *(this + 123);
  if (v5)
  {
    *(this + 124) = v5;
    operator delete(v5);
  }

  v6 = *(this + 120);
  if (v6)
  {
    *(this + 121) = v6;
    operator delete(v6);
  }

  v7 = *(this + 117);
  if (v7)
  {
    *(this + 118) = v7;
    operator delete(v7);
  }

  v8 = *(this + 114);
  if (v8)
  {
    *(this + 115) = v8;
    operator delete(v8);
  }

  v9 = *(this + 111);
  if (v9)
  {
    *(this + 112) = v9;
    operator delete(v9);
  }

  v10 = *(this + 108);
  if (v10)
  {
    *(this + 109) = v10;
    operator delete(v10);
  }

  v11 = *(this + 105);
  if (v11)
  {
    *(this + 106) = v11;
    operator delete(v11);
  }

  v12 = *(this + 102);
  if (v12)
  {
    *(this + 103) = v12;
    operator delete(v12);
  }

  v13 = *(this + 97);
  if (v13)
  {
    *(this + 98) = v13;
    operator delete(v13);
  }

  v14 = *(this + 94);
  if (v14)
  {
    *(this + 95) = v14;
    operator delete(v14);
  }

  v15 = *(this + 91);
  if (v15)
  {
    *(this + 92) = v15;
    operator delete(v15);
  }

  v16 = *(this + 88);
  if (v16)
  {
    *(this + 89) = v16;
    operator delete(v16);
  }

  v17 = *(this + 85);
  if (v17)
  {
    *(this + 86) = v17;
    operator delete(v17);
  }

  v18 = *(this + 82);
  if (v18)
  {
    *(this + 83) = v18;
    operator delete(v18);
  }

  v19 = *(this + 79);
  if (v19)
  {
    *(this + 80) = v19;
    operator delete(v19);
  }

  v20 = *(this + 76);
  if (v20)
  {
    *(this + 77) = v20;
    operator delete(v20);
  }

  v40 = (this + 584);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v40);
  v21 = *(this + 70);
  if (v21)
  {
    *(this + 71) = v21;
    operator delete(v21);
  }

  v22 = *(this + 67);
  if (v22)
  {
    *(this + 68) = v22;
    operator delete(v22);
  }

  v23 = *(this + 64);
  if (v23)
  {
    *(this + 65) = v23;
    operator delete(v23);
  }

  v24 = *(this + 61);
  if (v24)
  {
    *(this + 62) = v24;
    operator delete(v24);
  }

  v25 = *(this + 58);
  if (v25)
  {
    *(this + 59) = v25;
    operator delete(v25);
  }

  v26 = *(this + 55);
  if (v26)
  {
    *(this + 56) = v26;
    operator delete(v26);
  }

  v27 = *(this + 52);
  if (v27)
  {
    *(this + 53) = v27;
    operator delete(v27);
  }

  v28 = *(this + 49);
  if (v28)
  {
    *(this + 50) = v28;
    operator delete(v28);
  }

  v29 = *(this + 46);
  if (v29)
  {
    *(this + 47) = v29;
    operator delete(v29);
  }

  v30 = *(this + 43);
  if (v30)
  {
    *(this + 44) = v30;
    operator delete(v30);
  }

  v31 = *(this + 40);
  if (v31)
  {
    *(this + 41) = v31;
    operator delete(v31);
  }

  v32 = *(this + 37);
  if (v32)
  {
    *(this + 38) = v32;
    operator delete(v32);
  }

  v33 = *(this + 34);
  if (v33)
  {
    *(this + 35) = v33;
    operator delete(v33);
  }

  v34 = *(this + 31);
  if (v34)
  {
    *(this + 32) = v34;
    operator delete(v34);
  }

  v35 = *(this + 28);
  if (v35)
  {
    *(this + 29) = v35;
    operator delete(v35);
  }

  v36 = *(this + 25);
  if (v36)
  {
    *(this + 26) = v36;
    operator delete(v36);
  }

  v37 = *(this + 22);
  if (v37)
  {
    *(this + 23) = v37;
    operator delete(v37);
  }

  v38 = *(this + 19);
  if (v38)
  {
    *(this + 20) = v38;
    operator delete(v38);
  }

  v39 = *(this + 16);
  if (v39)
  {
    *(this + 17) = v39;
    operator delete(v39);
  }
}

uint64_t AUBassQueen::GetParameterValueStrings(AUBassQueen *this, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*(*(this + 211) + 4 * a3) != 50)
  {
    return 4294956418;
  }

  result = 0;
  *a4 = &unk_1F595D3E8;
  return result;
}

uint64_t AUBassQueen::GetParameterInfo(AUBassQueen *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  if ((a2 & 0xFFFFFFFB) != 0)
  {
    return 4294956418;
  }

  if (*(this + 439) <= a3)
  {
    return 4294956418;
  }

  v8 = *(*(this + 211) + 4 * a3);
  v9 = *(*(this + 203) + 4 * v8);
  a4->unit = *(*(this + 201) + 4 * v8);
  v10 = *(*(this + 209) + 4 * v8);
  a4->flags = v9 - 1065353216;
  a4->defaultValue = v10;
  a4->minValue = DspLib::BassQueen::Parameters::min(*(this + 68), (*(this + 69) - *(this + 68)) >> 2, v8);
  a4->maxValue = DspLib::BassQueen::Parameters::max(*(this + 68), (*(this + 69) - *(this + 68)) >> 2, v8);
  if (v8 <= 0x31)
  {
    v11 = DspLib::BassQueen::Parameters::kNames[v8];
    goto LABEL_19;
  }

  v12 = DspLib::BassQueen::Parameters::loudspeakerModelMode(*(this + 68));
  if ((v8 - 50) <= 4)
  {
    v11 = *(&DspLib::LoudspeakerModel::Parameters::kGeneralNames + (v8 - 50));
    goto LABEL_19;
  }

  v13 = v12;
  v11 = @"--";
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 4)
      {
        v11 = &stru_1F593E800;
      }

      goto LABEL_19;
    }

    v14 = v8 - 55;
    v15 = &DspLib::LoudspeakerModel::Parameters::Sdomain_1::kNames;
  }

  else if (v13 == 1)
  {
    v14 = v8 - 55;
    v15 = &DspLib::LoudspeakerModel::Parameters::ThieleSmall::kNames;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = v8 - 55;
    v15 = &DspLib::LoudspeakerModel::Parameters::Sdomain_0::kNames;
  }

  v11 = v15[v14];
LABEL_19:
  a4->cfNameString = v11;
  a4->flags |= 0x8000000u;
  CFStringGetCString(v11, a4->name, 52, 0x8000100u);
  result = 0;
  if (*(this + 216))
  {
    a4->clumpID = *(*(this + 215) + 4 * a3);
    a4->flags |= 0x100000u;
  }

  return result;
}

uint64_t AUBassQueen::SetParameter(AUBassQueen *this, unsigned int a2, unsigned int a3, unsigned int a4, __n128 a5)
{
  if (*(this + 439) <= a2)
  {
    return 4294956418;
  }

  v5 = a5.n128_f32[0];
  v10 = *(*(this + 211) + 4 * a2);
  v11 = *(this + 66);
  if (v11)
  {
    v12 = (v10 - 31) >= 2;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {

    return AUDspLib::SetParameter(this, a2, a3, a4, a5.n128_f32[0]);
  }

  else
  {
    *(*(this + 68) + 4 * v10) = a5.n128_u32[0];
    (*(*v11 + 120))(v11, a5);

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, v5);
  }
}

void AUBassQueen::~AUBassQueen(AUBassQueen *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECRMGS::ValidFormat(AUECRMGS *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel != 64 || a4->mFormatID != 1718773105 || a4->mChannelsPerFrame >= 0xD)
  {
    return 0;
  }

  else
  {
    return (a4->mFormatFlags >> 5) & 1;
  }
}

uint64_t AUECRMGS::SupportedNumChannels(AUECRMGS *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUECRMGS::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 12;
}

uint64_t AUECRMGS::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUECRMGS::GetParameterInfo(AUECRMGS *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 8)
  {
    v6 = *(&off_1E8670EA8 + a3);
    v7 = dword_1DE113820[a3];
    v8 = flt_1DE113844[a3];
    v9 = flt_1DE113868[a3];
    v10 = flt_1DE11388C[a3];
    v11 = dword_1DE1138B0[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
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

uint64_t AUECRMGS::GetParameterList(AUECRMGS *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    a3[8] = 8;
  }

  result = 0;
  *a4 = 9;
  return result;
}

uint64_t AUECRMGS::Render(AUECRMGS *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUECRMGS::ProcessMultipleBufferLists(AUECRMGS *this, unsigned int *a2, int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v8 = *(this + 84);
  if (v8 != a3)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v25 = *(this + 75);
      v26 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v26 + 16) = 0;
      *(v26 + 24) = a3;
      *(v26 + 28) = v8;
      *v26 = &unk_1F5934758;
      *(v26 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v25, v26);
      return 4294956422;
    }

    goto LABEL_107;
  }

  result = 4294956428;
  if (a4 == 2 && a6 == 3)
  {
    v10 = *a5;
    v11 = a5[1];
    v12 = *a7;
    v13 = a7[1];
    v14 = a7[2];
    if (*(this + 528) == 1)
    {
      if (v12 != v10 && *(this + 137))
      {
        v15 = 0;
        v16 = (v10 + 16);
        p_mData = &v13->mBuffers[0].mData;
        v18 = (v12 + 16);
        do
        {
          v20 = *v18;
          v18 += 2;
          v19 = v20;
          v22 = *p_mData;
          p_mData += 2;
          v21 = v22;
          v23 = *v16;
          v16 += 2;
          memcpy(v19, v23, 8 * *(this + 136));
          vDSP_vclr(v21, 1, (2 * *(this + 136)));
          ++v15;
        }

        while (v15 < *(this + 137));
      }

      if (v11 != v14)
      {
        memcpy(v14->mBuffers[0].mData, v11->mBuffers[0].mData, 8 * *(this + 136));
      }

      return 0;
    }

    v181 = a5[1];
    v173 = *a5;
    v174 = a7[1];
    v170 = *a7;
    v171 = this;
    v172 = a7[2];
    v27 = *(this + 76);
    v184 = 1.0;
    __C = 0.0;
    if (v27[6])
    {
      v28 = 0;
      v29 = 0;
      v30 = &v13->mBuffers[0].mData;
      v31 = (v10 + 16);
      do
      {
        v32 = *v31;
        memcpy(*v30, *v31, 8 * v27[8]);
        memcpy(*(*(v27 + 48) + v28), v32, 4 * v27[8]);
        v33 = v27[8];
        v34 = *(*(v27 + 48) + v28);
        *(v34 + 4 * v33) = *&v32[4 * v33];
        v35 = v27[13];
        *(v34 + 4 * v35) = 0;
        memcpy((v34 + 4 * (v35 + 1)), &v32[4 * (v33 + 1)], 4 * (v33 - 1));
        v36 = *(*(v27 + 48) + v28);
        *(v36 + 4 * (2 * v27[13] - 1)) = 0;
        MEMORY[0x1E12BE940](v36, 1, v27 + 15, v36, 1);
        v37 = *(v27 + 21);
        v38 = v27[13];
        __A.realp = *(*(v27 + 48) + v28);
        __A.imagp = &__A.realp[v38];
        vDSP_zvmags(&__A, 1, v37, 1, v38);
        vDSP_meanv(*(v27 + 21), 1, &__C, v27[13]);
        v39 = *(v27 + 15);
        v40 = *(v39 + 8 * (v29 >> 6));
        *(v39 + 8 * (v29 >> 6)) = v40 & ~(1 << v29);
        if ((log10f(__C + *(v27 + 17)) * 10.0) > *(v27 + 3))
        {
          *(v39 + 8 * (v29 >> 6)) = v40 | (1 << v29);
        }

        ++v29;
        v28 += 24;
        v30 += 2;
        v31 += 2;
      }

      while (v29 < v27[6]);
    }

    mData = v172->mBuffers[0].mData;
    vDSP_vclr(mData, 1, 2 * v27[8]);
    v42 = v27[7];
    __C = 1.0 / v42;
    if (v42)
    {
      for (i = 0; i < v50; ++i)
      {
        v44 = v181->mBuffers[i].mData;
        MEMORY[0x1E12BE8F0](v44, 1, &__C, mData, 1, mData, 1, 2 * v27[8]);
        memcpy(**(*(v27 + 51) + 24 * i), v44, 4 * v27[8]);
        v45 = v27[8];
        v46 = **(*(v27 + 51) + 24 * i);
        *(v46 + 4 * v45) = *&v44[4 * v45];
        v47 = v27[13];
        *(v46 + 4 * v47) = 0;
        memcpy((v46 + 4 * (v47 + 1)), &v44[4 * (v45 + 1)], 4 * (v45 - 1));
        v48 = *(*(v27 + 51) + 24 * i);
        v49 = *v48;
        *(*v48 + 4 * (2 * v27[13] - 1)) = 0;
        MEMORY[0x1E12BE940](v49, 1, v27 + 15, v49, 1);
        v50 = v27[7];
        if (v27[16] >= 2)
        {
          v51 = *(v27 + 51);
          v52 = **(v51 + 24 * i);
          v53 = v27[13];
          v54 = -2;
          v55 = 4;
          v56 = 1;
          do
          {
            v187.realp = v52;
            v187.imagp = &v52[v53];
            v57 = 2 * v56;
            v58 = 2 * v56 - 1;
            v59 = **(v51 + 24 * (i + v50 * v58));
            v186.realp = (v59 + 4 * v56);
            v186.imagp = (v59 + 4 * (v53 + v56));
            vDSP_zvmov(&v187, 1, &v186, 1, v53 - v56);
            v60 = *(v27 + 51);
            v61 = **(v60 + 24 * i);
            v62 = v27[7];
            v63 = **(v60 + 24 * (i + v62 * v58));
            v64 = v27[13];
            v65 = v64 + v56;
            v66 = v63;
            v67 = v27[13];
            v68 = v55;
            do
            {
              *v66++ = *(v61 + v68);
              *&v63[v67++] = -*(v61 + 4 * v65--);
              v68 -= 4;
            }

            while (v68);
            v187.realp = (v61 + 4 * v56);
            v187.imagp = (v61 + 4 * (v64 + v56));
            v186.realp = **(v60 + 24 * (i + v62 * v57));
            v186.imagp = &v186.realp[v64];
            vDSP_zvmov(&v187, 1, &v186, 1, (v64 - v56));
            v51 = *(v27 + 51);
            v53 = v27[13];
            v50 = v27[7];
            v52 = **(v51 + 24 * i);
            v69 = **(v51 + 24 * (i + v50 * v57));
            v70 = -1;
            v71 = v54;
            v72 = v56;
            do
            {
              *(v69 + 4 * (v53 + v70)) = v52[v53 + v71];
              *(v69 + 4 * (2 * v53 + v70--)) = -v52[2 * v53 + v71++];
              --v72;
            }

            while (v72);
            v73 = v56++ >= v27[16] >> 1;
            v55 += 4;
            --v54;
          }

          while (!v73);
        }
      }
    }

    if (v27[10])
    {
      v74 = 0;
      v75 = 0;
      do
      {
        v76 = **(*(v27 + 51) + v74);
        memcpy((v76 + 8 * v27[13]), (v76 + 4 * v27[13]), 4 * v27[13]);
        v77 = **(*(v27 + 51) + v74);
        memcpy((v77 + 12 * v27[13]), (v77 + 4 * v27[13]), 4 * v27[13]);
        v78 = **(*(v27 + 51) + v74);
        memcpy(&v78[4 * v27[13]], v78, 4 * v27[13]);
        v79 = *(v27 + 21);
        v80 = v27[13];
        __A.realp = **(*(v27 + 51) + v74);
        __A.imagp = &__A.realp[(2 * v80)];
        vDSP_zvmags(&__A, 1, v79, 1, v80);
        vDSP_meanv(*(v27 + 21), 1, &__C, v27[13]);
        v81 = *(v27 + 18);
        v82 = (*(v27 + 21) * __C) + (*(v27 + 20) * *(v81 + 4 * v75));
        *(v81 + 4 * v75) = v82;
        v83 = *(v27 + 12);
        v84 = *(v83 + 8 * (v75 >> 6));
        *(v83 + 8 * (v75 >> 6)) = v84 & ~(1 << v75);
        if ((log10f(v82 + *(v27 + 17)) * 10.0) > *(v27 + 3))
        {
          *(v83 + 8 * (v75 >> 6)) = v84 | (1 << v75);
        }

        ++v75;
        v74 += 24;
      }

      while (v75 < v27[10]);
    }

    vDSP_vfill(&v184, *(v27 + 42), 1, v27[13]);
    if (*v27)
    {
      v85 = 0;
      do
      {
        v86 = v27[10];
        if (v86)
        {
          v87 = 0;
          for (j = 0; j < v86; ++j)
          {
            if ((*(*(v27 + 12) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j))
            {
              memcpy(*(*(v27 + 24) + v87), *(*(*(v27 + 51) + v87) + 24 * v85), 16 * v27[13]);
              v86 = v27[10];
            }

            v87 += 24;
          }
        }

        vDSP_vfill(&v184, *(v27 + 39), 1, 2 * v27[13]);
        vDSP_vdiv(*(v27 + 33), 1, *(v27 + 39), 1, *(v27 + 39), 1, v27[13]);
        vDSP_vdiv(*(v27 + 33), 1, (*(v27 + 39) + 4 * v27[13]), 1, (*(v27 + 39) + 4 * v27[13]), 1, v27[13]);
        v175 = v85;
        v89 = 3 * v85;
        if (v27[10])
        {
          v90 = 0;
          v91 = 24;
          v92 = 1;
          do
          {
            if ((*(*(v27 + 12) + 8 * (v90 >> 6)) & (1 << v90)) != 0)
            {
              v176 = v92;
              v177 = v91;
              v93 = 2 * v27[13];
              v94 = (*(*(v27 + 24) + 24 * v90) + 4 * v93);
              v187.realp = *(*(v27 + 24) + 24 * v90);
              v187.imagp = v94;
              v95 = *(*(v27 + 63) + 24 * v90);
              v96 = *(*(*(v27 + 78) + 24 * v90) + 8 * v89);
              MEMORY[0x1E12BE940](v96, 1, v27 + 1, v96, 1, v93);
              vDSP_zvmags(&v187, 1, *(v27 + 30), 1, 2 * v27[13]);
              MEMORY[0x1E12BE780](*(v27 + 30), 1, *(v27 + 39), 1, *(*(*(v27 + 78) + 24 * v90) + 8 * v89), 1, *(*(*(v27 + 78) + 24 * v90) + 8 * v89), 1, 2 * v27[13]);
              vDSP_meanv(*(*(*(v27 + 78) + 24 * v90) + 8 * v89), 1, &__C, v27[13]);
              if (__C <= 0.00000011921)
              {
                *(*(v27 + 12) + 8 * (v90 >> 6)) &= ~(1 << v90);
              }

              else
              {
                v97.realp = v95;
                v97.imagp = &v95[v93];
                v182 = v97;
                __C = 0.00000011921;
                vDSP_vthr(*(*(*(v27 + 78) + 24 * v90) + 8 * v89), 1, &__C, *(*(*(v27 + 78) + 24 * v90) + 8 * v89), 1, 2 * v27[13]);
                vDSP_vdiv(*(*(*(v27 + 78) + 24 * v90) + 8 * v89), 1, *(v27 + 39), 1, *(v27 + 21), 1, 2 * v27[13]);
                MEMORY[0x1E12BE7F0](*(v27 + 21), 1, *(*(v27 + 24) + 24 * v90), 1, *(*(v27 + 63) + 24 * v90), 1, 2 * v27[13]);
                MEMORY[0x1E12BE7F0](*(v27 + 21), 1, *(*(v27 + 24) + 24 * v90) + 8 * v27[13], 1, *(*(v27 + 63) + 24 * v90) + 8 * v27[13], 1);
                MEMORY[0x1E12BE810](*(*(v27 + 63) + 24 * v90), 1, *(*(v27 + 63) + 24 * v90), 1, 2 * v27[13]);
                MEMORY[0x1E12BE7F0](*(v27 + 21), 1, *(v27 + 30), 1, *(v27 + 21), 1, 2 * v27[13]);
                vDSP_vabs(*(v27 + 21), 1, *(v27 + 21), 1, 2 * v27[13]);
                MEMORY[0x1E12BE810](*(v27 + 21), 1, *(v27 + 21), 1, 2 * v27[13]);
                MEMORY[0x1E12BE780](*(v27 + 39), 1, *(v27 + 21), 1, *(v27 + 39), 1, *(v27 + 39), 1, 2 * v27[13]);
                vDSP_vabs(*(v27 + 39), 1, *(v27 + 39), 1, 2 * v27[13]);
                vDSP_vthr(*(v27 + 39), 1, v27 + 2, *(v27 + 39), 1, 2 * v27[13]);
                v98 = v27[10];
                v100 = v176;
                v99 = v177;
                if (v90 + 1 < v98)
                {
                  do
                  {
                    if ((*(*(v27 + 12) + ((v100 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v100))
                    {
                      v101 = 2 * v27[13];
                      v186.realp = *(*(v27 + 24) + v99);
                      v186.imagp = &v186.realp[v101];
                      *&v102 = *(*(*(*(v27 + 66) + 24 * v90) + v99) + 24 * v175);
                      *(&v102 + 1) = v102 + 4 * v101;
                      *v191 = v102;
                      __A = v187;
                      v189 = v182;
                      v190 = v186;
                      v188 = v102;
                      aDSP_zvmama(&__A, 1, v191, 1, &v190, 1, &v189, 1, &v188, 1, v101);
                      v98 = v27[10];
                    }

                    ++v100;
                    v99 += 24;
                  }

                  while (v100 < v98);
                }

                v103 = v27[6];
                if (v103)
                {
                  v104 = 0;
                  for (k = 0; k < v103; ++k)
                  {
                    if ((*(*(v27 + 15) + ((k >> 3) & 0x1FFFFFFFFFFFFFF8)) >> k))
                    {
                      v106 = v27[13];
                      v107.realp = *(*(v27 + 48) + v104);
                      v107.imagp = &v107.realp[v106];
                      *&v108 = *(*(*(*(v27 + 69) + v104) + 24 * v90) + 24 * v175);
                      *(&v108 + 1) = v108 + 4 * v106;
                      *v191 = v108;
                      __A = v187;
                      v190 = v107;
                      v188 = v108;
                      v189 = v182;
                      aDSP_zvmama(&__A, 1, v191, 1, &v190, 1, &v189, 1, &v188, 1, v106);
                      v103 = v27[6];
                    }

                    v104 += 24;
                  }

                  v98 = v27[10];
                }

                v109 = v27[13];
                v110 = *(*(*(v27 + 57) + 24 * v90) + 8 * v89);
                v111 = *(*(v27 + 24) + 24 * v90);
                if (v98)
                {
                  v112 = 0;
                  v113 = 0;
                  v114.realp = *(*(*(v27 + 60) + 24 * v90) + 8 * v89);
                  v114.imagp = &v114.realp[v109];
                  v183 = v114;
                  v114.realp = *(*(*(v27 + 57) + 24 * v90) + 8 * v89);
                  v114.imagp = &v110[4 * v109];
                  v180 = v114;
                  v115 = *(*(v27 + 63) + 24 * v90);
                  v114.realp = (v115 + 4 * v109);
                  v114.imagp = (v115 + 4 * (3 * v109));
                  v179 = v114;
                  v114.realp = &v111[4 * v109];
                  v114.imagp = &v111[4 * (3 * v109)];
                  v178 = v114;
                  do
                  {
                    if ((*(*(v27 + 12) + ((v113 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v113))
                    {
                      v116 = v27[13];
                      v117.realp = *(*(*(v27 + 54) + v112) + 8 * v89);
                      v117.imagp = &v117.realp[v116];
                      *&v118 = *(*(*(*(v27 + 72) + v112) + 24 * v90) + 8 * v89);
                      *(&v118 + 1) = v118 + 4 * v116;
                      *v191 = v118;
                      __A = v178;
                      v190 = v117;
                      v188 = v118;
                      v189 = v179;
                      aDSP_zvmama(&__A, 1, v191, 1, &v190, 1, &v189, 1, &v188, 1, v116);
                      v119 = v27[13];
                      v120 = *(*(*(v27 + 51) + v112) + 8 * v89);
                      v121.realp = (v120 + 4 * v119);
                      v121.imagp = (v120 + 4 * (3 * v119));
                      *&v122 = *(*(*(*(v27 + 75) + v112) + 24 * v90) + 8 * v89);
                      *(&v122 + 1) = v122 + 4 * v119;
                      *v191 = v122;
                      __A = v180;
                      v190 = v121;
                      v188 = v122;
                      v189 = v183;
                      aDSP_zvmama(&__A, 1, v191, 1, &v190, 1, &v189, 1, &v188, 1, v119);
                      v98 = v27[10];
                    }

                    ++v113;
                    v112 += 24;
                  }

                  while (v113 < v98);
                  v109 = v27[13];
                  v110 = *(*(*(v27 + 57) + 24 * v90) + 24 * v175);
                  v111 = *(*(v27 + 24) + 24 * v90);
                }

                memcpy(v110, v111, 4 * v109);
                memcpy((*(*(*(v27 + 57) + 24 * v90) + 8 * v89) + 4 * v27[13]), (*(*(v27 + 24) + 24 * v90) + 8 * v27[13]), 4 * v27[13]);
                memcpy(*(*(*(v27 + 60) + 24 * v90) + 8 * v89), *(*(v27 + 63) + 24 * v90), 4 * v27[13]);
                memcpy((*(*(*(v27 + 60) + 24 * v90) + 8 * v89) + 4 * v27[13]), (*(*(v27 + 63) + 24 * v90) + 8 * v27[13]), 4 * v27[13]);
              }

              v92 = v176;
              v91 = v177;
            }

            ++v90;
            ++v92;
            v91 += 24;
          }

          while (v90 < v27[10]);
        }

        MEMORY[0x1E12BE7F0](*(v27 + 33), 1, *(v27 + 39), 1, *(v27 + 39), 1, v27[13]);
        v123 = *(v27 + 39) + 4 * v27[13];
        MEMORY[0x1E12BE7F0](*(v27 + 33), 1, v123, 1, v123, 1);
        MEMORY[0x1E12BE7F0](*(v27 + 39), 1, *(v27 + 42), 1, *(v27 + 42), 1, v27[13]);
        LODWORD(__A.realp) = 2 * v27[13];
        vvsqrtf(*(v27 + 21), *(v27 + 39), &__A);
        v191[0] = v27[13];
        v124 = *(*(v27 + 45) + 24 * v175);
        vvsqrtf(v124, v124, v191);
        v125 = v27[10];
        if (v125)
        {
          v126 = 0;
          v127 = 0;
          v128 = v175 + 1;
          do
          {
            if ((*(*(v27 + 12) + ((v127 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v127))
            {
              MEMORY[0x1E12BE7F0](*(*(*(v27 + 54) + v126) + 8 * v89), 1, *(v27 + 21) + 4 * v27[13], 1, *(*(*(v27 + 51) + v126) + 24 * v128), 1);
              MEMORY[0x1E12BE7F0](*(*(*(v27 + 54) + v126) + 8 * v89) + 4 * v27[13], 1, *(v27 + 21) + 4 * v27[13], 1, *(*(*(v27 + 51) + v126) + 24 * v128) + 8 * v27[13], 1);
              MEMORY[0x1E12BE7F0](*(*(*(v27 + 51) + v126) + 8 * v89) + 4 * v27[13], 1, *(*(v27 + 45) + 8 * v89), 1, *(*(*(v27 + 51) + v126) + 24 * v128) + 4 * v27[13], 1);
              MEMORY[0x1E12BE7F0](*(*(*(v27 + 51) + v126) + 8 * v89) + 12 * v27[13], 1, *(*(v27 + 45) + 8 * v89), 1, *(*(*(v27 + 51) + v126) + 24 * v128) + 12 * v27[13], 1);
              memcpy(*(*(*(v27 + 54) + v126) + 8 * v89), *(*(*(v27 + 51) + v126) + 8 * v89), 4 * v27[13]);
              memcpy((*(*(*(v27 + 54) + v126) + 8 * v89) + 4 * v27[13]), (*(*(*(v27 + 51) + v126) + 8 * v89) + 8 * v27[13]), 4 * v27[13]);
              v125 = v27[10];
            }

            ++v127;
            v126 += 24;
          }

          while (v127 < v125);
        }

        v129 = v27[6];
        if (v129)
        {
          v130 = 0;
          for (m = 0; m < v129; ++m)
          {
            if ((*(*(v27 + 15) + ((m >> 3) & 0x1FFFFFFFFFFFFFF8)) >> m))
            {
              MEMORY[0x1E12BE7F0](*(*(v27 + 48) + v130), 1, *(v27 + 21), 1, *(*(v27 + 48) + v130), 1, v27[13]);
              v132 = *(*(v27 + 48) + v130) + 4 * v27[13];
              MEMORY[0x1E12BE7F0](v132, 1, *(v27 + 21), 1, v132, 1);
              v129 = v27[6];
            }

            v130 += 24;
          }
        }

        memcpy(*(*(v27 + 45) + 24 * v175), *(v27 + 39), 4 * v27[13]);
        v85 = v175 + 1;
      }

      while (v175 + 1 < *v27);
    }

    LODWORD(__A.realp) = v27[13];
    vvsqrtf(*(v27 + 42), *(v27 + 42), &__A);
    vDSP_vclr(*(v27 + 33), 1, v27[13]);
    v133 = v27[6];
    if (v133)
    {
      for (n = 0; n < v133; ++n)
      {
        if ((*(*(v27 + 15) + ((n >> 3) & 0x1FFFFFFFFFFFFFF8)) >> n))
        {
          MEMORY[0x1E12BE7F0](*(v27 + 42), 1, *(*(v27 + 48) + 24 * n), 1, *(v27 + 30), 1, v27[13]);
          MEMORY[0x1E12BE780](*(v27 + 30), 1, *(v27 + 30), 1, *(v27 + 33), 1, *(v27 + 33), 1, v27[13]);
          MEMORY[0x1E12BE7F0](*(v27 + 42), 1, *(*(v27 + 48) + 24 * n) + 4 * v27[13], 1, *(v27 + 30), 1);
          MEMORY[0x1E12BE780](*(v27 + 30), 1, *(v27 + 30), 1, *(v27 + 33), 1, *(v27 + 33), 1, v27[13]);
          if (*(v27 + 88) == 1)
          {
            v135 = *(*(v27 + 48) + 24 * n);
            vDSP_vdiv(*(v27 + 42), 1, v135, 1, v135, 1, v27[13]);
            v136 = v27[13];
            v137 = (*(*(v27 + 48) + 24 * n) + 4 * v136);
            vDSP_vdiv(*(v27 + 42), 1, v137, 1, v137, 1, v136);
            if (v27[19])
            {
              v138 = 0;
              do
              {
                vvsqrtf(*(v27 + 42), *(v27 + 42), &__A);
                ++v138;
              }

              while (v138 < v27[19]);
            }
          }

          v139 = *(*(v27 + 48) + 24 * n);
          MEMORY[0x1E12BE7F0](v139, 1, *(v27 + 42), 1, v139, 1, v27[13]);
          v140 = *(*(v27 + 48) + 24 * n) + 4 * v27[13];
          MEMORY[0x1E12BE7F0](v140, 1, *(v27 + 42), 1, v140, 1);
          v141 = *(v170 + 8 + 16 * n + 8);
          v142 = *(v173 + 8 + 16 * n + 8);
          v143 = v174->mBuffers[n].mData;
          memcpy(v141, *(*(v27 + 48) + 24 * n), 4 * v27[8]);
          v144 = *(*(v27 + 48) + 24 * n);
          v145 = v27[8];
          *&v141[4 * v145] = *(v144 + 4 * v145);
          memcpy(&v141[4 * (v145 + 1)], (v144 + 4 * (v27[13] + 1)), 4 * (v145 - 1));
          MEMORY[0x1E12BE940](v141, 1, v27 + 14, v141, 1, 2 * v27[8]);
          vDSP_dotpr(v141, 1, v141, 1, &__C, 2 * v27[8]);
          v191[0] = 0;
          vDSP_dotpr(v142, 1, v142, 1, v191, 2 * v27[8]);
          v146.n128_f32[0] = __C;
          if (__C > (*v191 * *(v27 + 5)))
          {
            memcpy(v141, v142, 8 * v27[8]);
          }

          MEMORY[0x1E12BE9A0](v141, 1, v142, 1, v143, 1, 2 * v27[8], v146);
          v133 = v27[6];
        }
      }
    }

    MEMORY[0x1E12BE940](*(v27 + 33), 1, v27 + 23, *(v27 + 33), 1, v27[13]);
    vDSP_vthr(*(v27 + 33), 1, v27 + 2, *(v27 + 33), 1, v27[13]);
    if (v27[18])
    {
      v147 = 0;
      do
      {
        vvsqrtf(*(v27 + 33), *(v27 + 33), &__A);
        ++v147;
      }

      while (v147 < v27[18]);
    }

    v148 = *(v171 + 76);
    LODWORD(__A.realp) = 0;
    v149 = 0.0;
    if (*(v148 + 28))
    {
      v150 = 0;
      v151 = 0;
      v152 = 0.0;
      do
      {
        v153 = **(*(v148 + 408) + v150);
        vDSP_dotpr(v153, 1, v153, 1, &__A, *(v148 + 52));
        v154 = v152 + *&__A.realp;
        v155 = *(v148 + 52);
        v156 = (**(*(v148 + 408) + v150) + 4 * (2 * v155));
        vDSP_dotpr(v156, 1, v156, 1, &__A, v155);
        v152 = v154 + *&__A.realp;
        ++v151;
        v150 += 24;
      }

      while (v151 < *(v148 + 28));
      v148 = *(v171 + 76);
    }

    else
    {
      v152 = 0.0;
    }

    LODWORD(__A.realp) = 0;
    if (*(v148 + 24))
    {
      v157 = 0;
      v158 = 0;
      v149 = 0.0;
      do
      {
        vDSP_dotpr(*(*(v148 + 384) + v157), 1, *(*(v148 + 384) + v157), 1, &__A, (2 * *(v148 + 52)));
        v149 = v149 + *&__A.realp;
        ++v158;
        v157 += 24;
      }

      while (v158 < *(v148 + 24));
    }

    if ((LODWORD(v152) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v149) & 0x7FFFFFFFu) < 0x7F800000)
    {
      return 0;
    }

    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v159 = *(v171 + 75);
      v160 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v160 + 16) = 0;
      *(v160 + 21) = (LODWORD(v152) & 0x7FFFFFFFu) < 0x7F800000;
      *(v160 + 22) = (LODWORD(v149) & 0x7FFFFFFFu) < 0x7F800000;
      *v160 = &unk_1F5934780;
      *(v160 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v159, v160);
      ecRMGS::ec_state_reset(*(v171 + 76));
      if (*(v171 + 137))
      {
        v161 = 0;
        v162 = (v173 + 16);
        v163 = &v174->mBuffers[0].mData;
        v164 = (v170 + 16);
        do
        {
          v166 = *v164;
          v164 += 2;
          v165 = v166;
          v168 = *v163;
          v163 += 2;
          v167 = v168;
          v169 = *v162;
          v162 += 2;
          memcpy(v165, v169, 8 * *(v171 + 136));
          vDSP_vclr(v167, 1, (2 * *(v171 + 136)));
          ++v161;
        }

        while (v161 < *(v171 + 137));
      }

      vDSP_vclr(v172->mBuffers[0].mData, 1, (2 * *(v171 + 136)));
      return 0;
    }

LABEL_107:
    __break(1u);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<AUECRMGS::ResetMaster(AudioBufferList const*,AudioBufferList const*,AudioBufferList*,AudioBufferList*,AudioBufferList*)::$_0,BOOL &,BOOL &>::perform(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1[21];
  v3 = a1[22];
  v4 = AUECRMGSLogScope();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = v2;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "AUECRMGS: ********* Reset begins *********\nAUECRMGS: ref-signal buffers have finite values (1 if True): %u\nAUECRMGS: EC output buffers have valid values (1 if True): %u\n", v6, 0xEu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

uint64_t AUECRMGSLogScope(void)
{
  v0 = &xmmword_1ECDA9000;
  {
    v0 = &xmmword_1ECDA9000;
    if (v2)
    {
      AUECRMGSLogScope(void)::gLog = os_log_create("com.apple.coreaudio", " AUECRMGS");
      v0 = &xmmword_1ECDA9000;
    }
  }

  return *(v0 + 498);
}

void caulk::concurrent::details::rt_message_call<AUECRMGS::ResetMaster(AudioBufferList const*,AudioBufferList const*,AudioBufferList*,AudioBufferList*,AudioBufferList*)::$_0,BOOL &,BOOL &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t caulk::concurrent::details::rt_message_call<AUECRMGS::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0,unsigned int &,unsigned int>::perform(caulk::concurrent::message *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 6);
  v2 = *(a1 + 7);
  v4 = AUECRMGSLogScope();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "AUECRMGS::ProcessMultipleBufferLists error - wrong (%u) block size expected (%u)\n", v6, 0xEu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AUECRMGS::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0,unsigned int &,unsigned int>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECRMGS::SetParameter(AUECRMGS *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  ++*(this + 133);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  return 0;
}

uint64_t AUECRMGS::SetProperty(AUECRMGS *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 528) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUECRMGS::GetProperty(AUECRMGS *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 528;
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

uint64_t AUECRMGS::GetPropertyInfo(AUECRMGS *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

caulk::rt_safe_memory_resource *AUECRMGS::Reset(AUECRMGS *this)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v3 = *(this + 75);
    v4 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v4 + 16) = 0;
    *v4 = &unk_1F5934730;
    *(v4 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v3, v4);
    if (*(this + 17) == 1)
    {
      ecRMGS::ec_state_reset(*(this + 76));
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECRMGS::Reset(unsigned int,unsigned int)::$_0>::perform(caulk::concurrent::message *a1)
{
  v2 = AUECRMGSLogScope();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "AUECRMGS: Reset.\n", v4, 2u);
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  __break(1u);
  return result;
}

void caulk::concurrent::details::rt_message_call<AUECRMGS::Reset(unsigned int,unsigned int)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECRMGS::Initialize(AUECRMGS *this)
{
  v2 = AUECRMGSLogScope();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v73[0]) = 0;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "AUECRMGS: Initialize.\n", v73, 2u);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v4 = Element, (v5 = ausdk::AUScope::GetElement((this + 80), 1u)) == 0) || (v6 = v5, (v7 = ausdk::AUScope::GetElement((this + 128), 0)) == 0) || (v8 = v7, (v9 = ausdk::AUScope::GetElement((this + 128), 1u)) == 0) || (v10 = v9, (v11 = ausdk::AUScope::GetElement((this + 128), 2u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v12 = *(v4 + 108);
  *(this + 137) = v12;
  *(this + 138) = *(v6 + 108);
  v13 = *(v4 + 80);
  *(this + 135) = v13;
  if (v13 != *(v6 + 80))
  {
    return 4294956428;
  }

  v15 = v11;
  v16 = *(v8 + 80);
  result = 4294956428;
  if (v16 == v13 && v16 == *(v15 + 80) && v16 == *(v10 + 80))
  {
    v17 = *(v8 + 108);
    if (v17 == v12 && v17 == *(v10 + 108))
    {
      *(this + 136) = *(this + 84);
      v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v19 & 1) == 0 || (*(this + 140) = ausdk::AUElement::GetParameter(v18, 0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0) || (*(this + 141) = ausdk::AUElement::GetParameter(v20, 1u), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0) || (*(this + 142) = ausdk::AUElement::GetParameter(v22, 2u), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0) || (*(this + 143) = ausdk::AUElement::GetParameter(v24, 3u), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0) || (*(this + 144) = ausdk::AUElement::GetParameter(v26, 4u), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0) || (*(this + 145) = ausdk::AUElement::GetParameter(v28, 5u), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0) || (*(this + 146) = ausdk::AUElement::GetParameter(v30, 6u), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v33 & 1) == 0) || (*(this + 147) = ausdk::AUElement::GetParameter(v32, 7u), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v35 & 1) == 0))
      {
        abort();
      }

      v36 = ausdk::AUElement::GetParameter(v34, 8u) != 0.0;
      *(this + 592) = v36;
      *(this + 134) = *(this + 133);
      v37 = *(this + 76);
      if (!v37)
      {
        operator new();
      }

      v38 = *(this + 136);
      v39 = v38;
      v40 = *(this + 135);
      v41 = v38 / v40;
      v42 = vcvtps_u32_f32(*(this + 140) / (v41 * 1000.0));
      *(this + 139) = v42;
      v43 = *(this + 143);
      v44 = *(this + 141);
      v45 = *(this + 144);
      v46 = *(this + 142);
      v47 = *(this + 137);
      v48 = *(this + 138);
      v49 = *(this + 145);
      *(v37 + 88) = v36;
      *(v37 + 20) = 1082130432;
      *(v37 + 72) = *(this + 73);
      *(v37 + 68) = 619091349;
      *v37 = v42;
      *(v37 + 8) = __exp10f(v44 / 10.0);
      v50 = __exp10f(v46 / 10.0);
      if (v49 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v49;
      }

      v52 = v51 + (v51 & 1) - 1;
      *(v37 + 64) = v52;
      *(v37 + 24) = v47;
      *(v37 + 28) = v48;
      *(v37 + 32) = v38;
      *(v37 + 36) = v40;
      *(v37 + 44) = 2 * v38;
      *(v37 + 48) = v38 & 0x7FFFFFFF;
      *(v37 + 52) = (v38 & 0x7FFFFFFF) + 1;
      *(v37 + 12) = v45;
      *(v37 + 16) = v50;
      *(v37 + 56) = 1.0 / (v39 + v39);
      *(v37 + 60) = v39 + v39;
      *(v37 + 92) = 1.0 / v47;
      v53 = 0.0;
      if (v43 > 0.0)
      {
        v53 = expf((-v39 / v40) / v43);
      }

      *(v37 + 4) = v53;
      v54 = expf(v41 / ((v41 * v42) / -10.0));
      *(v37 + 80) = v54;
      *(v37 + 84) = 1.0 - v54;
      v55 = (v52 * v48);
      *(v37 + 40) = v55;
      LOBYTE(v73[0]) = 1;
      std::vector<BOOL>::assign((v37 + 96), v55, v73);
      v56 = *(v37 + 24);
      LOBYTE(v73[0]) = 1;
      std::vector<BOOL>::assign((v37 + 120), v56, v73);
      v57 = *(v37 + 40);
      v73[0] = 0;
      std::vector<float>::assign((v37 + 144), v57, v73, v58);
      v59 = (4 * *(v37 + 52));
      v73[0] = 0;
      std::vector<float>::assign((v37 + 168), v59, v73, v60);
      ecutils::fcn_vector_init<float>((v37 + 192), *(v37 + 40), 4 * *(v37 + 52), 0.0);
      v61 = (4 * *(v37 + 52));
      v73[0] = 0;
      std::vector<float>::assign((v37 + 216), v61, v73, v62);
      v63 = (4 * *(v37 + 52));
      v73[0] = 0;
      std::vector<float>::assign((v37 + 240), v63, v73, v64);
      v65 = *(v37 + 52);
      v73[0] = 1065353216;
      std::vector<float>::assign((v37 + 264), v65, v73, v66);
      v67 = (2 * *(v37 + 52));
      v73[0] = 0;
      std::vector<float>::assign((v37 + 312), v67, v73, v68);
      ecutils::fcn_vector_init<float>((v37 + 360), *v37, *(v37 + 52), 1.0);
      v69 = *(v37 + 52);
      v73[0] = 1065353216;
      std::vector<float>::assign((v37 + 336), v69, v73, v70);
      ecutils::fcn_vector_init<float>((v37 + 384), *(v37 + 24), 2 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 408, *(v37 + 40), *v37 + 1, 4 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 432, *(v37 + 40), *v37 + 1, 2 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 456, *(v37 + 40), *v37 + 1, 2 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>((v37 + 504), *(v37 + 40), 4 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 480, *(v37 + 40), *v37, 2 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 528, *(v37 + 40), *(v37 + 40), *v37, 4 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 552, *(v37 + 24), *(v37 + 40), *v37, 2 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 576, *(v37 + 40), *(v37 + 40), *v37, 2 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 600, *(v37 + 40), *(v37 + 40), *v37, 2 * *(v37 + 52), 0.0);
      ecutils::fcn_vector_init<float>(v37 + 624, *(v37 + 40), *v37, 2 * *(v37 + 52), *(v37 + 16));
      ecRMGS::ec_state_reset(v37);
      (*(*this + 72))(this, 0, 0);
      v71 = AUECRMGSLogScope();
      v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v72)
      {
        LOWORD(v73[0]) = 0;
        _os_log_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_DEFAULT, "AUECRMGS: Successfully initialized.\n", v73, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::unique_ptr<ecRMGS>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v12 = (v2 + 624);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 600);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 576);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 552);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 528);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 504);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 480);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 456);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 432);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 408);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 384);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = (v2 + 360);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v3 = *(v2 + 336);
    if (v3)
    {
      *(v2 + 344) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 312);
    if (v4)
    {
      *(v2 + 320) = v4;
      operator delete(v4);
    }

    v12 = (v2 + 288);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v5 = *(v2 + 264);
    if (v5)
    {
      *(v2 + 272) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 240);
    if (v6)
    {
      *(v2 + 248) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 216);
    if (v7)
    {
      *(v2 + 224) = v7;
      operator delete(v7);
    }

    v12 = (v2 + 192);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v8 = *(v2 + 168);
    if (v8)
    {
      *(v2 + 176) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 144);
    if (v9)
    {
      *(v2 + 152) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 120);
    if (v10)
    {
      operator delete(v10);
    }

    v11 = *(v2 + 96);
    if (v11)
    {
      operator delete(v11);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUECRMGS::~AUECRMGS(AUECRMGS *this)
{
  AUECRMGS::~AUECRMGS(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59344E0;
  std::unique_ptr<ecRMGS>::reset[abi:ne200100](this + 76, 0);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 75, 0);

  ausdk::AUBase::~AUBase(this);
}

_BYTE *audiodsp::espresso::v1::espresso_error_category::message@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 != 0 && a1 < 0xFFFFFFF5)
  {
    v3 = "Unknown error";
  }

  else
  {
    v3 = off_1E8670EF0[a1 + 11];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void audiodsp::espresso::v1::espresso_error_category::~espresso_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12BD160);
}

BOOL AUOneChannelNoiseEstimator::ValidFormat(AUOneChannelNoiseEstimator *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v5 == 2)
  {
    mFormatID = a4->mFormatID;
    mBytesPerFrame = a4->mBytesPerFrame;
    mChannelsPerFrame = a4->mChannelsPerFrame;
    if (mBytesPerFrame == 8 && mFormatID == 1718773105 && mChannelsPerFrame == 1)
    {
      return 1;
    }

    return mBytesPerFrame == 4 && mFormatID == 1819304813 && mChannelsPerFrame == 1;
  }

  if (v5 == 1)
  {
    result = 0;
    if (a4->mBytesPerFrame == 8 && a4->mFormatID == 1718773105)
    {
      return a4->mChannelsPerFrame == 1;
    }
  }

  return result;
}

uint64_t AUOneChannelNoiseEstimator::SupportedNumChannels(AUOneChannelNoiseEstimator *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUOneChannelNoiseEstimator::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUOneChannelNoiseEstimator::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (!v3)
  {
    AUOneChannelNoiseEstimator::RefreshKernelParamValue(this, 0);
    AUOneChannelNoiseEstimator::RefreshKernelParamValue(this, 1u);
  }

  return v3;
}

void AUOneChannelNoiseEstimator::RefreshKernelParamValue(uint64_t a1, unsigned int a2)
{
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v4, a2);
  if (a2 == 1)
  {
    v7 = *(a1 + 544);
    if (v7)
    {
      v7[72] = expf(-1.0 / (Parameter * *v7));
    }
  }

  else if (!a2)
  {
    *(a1 + 616) = __exp10f(Parameter / 10.0);
  }
}

uint64_t AUOneChannelNoiseEstimator::GetParameterInfo(AUOneChannelNoiseEstimator *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->unitName = 0;
  buffer->flags = 0x40000000;
  if (a3 > 3)
  {
    return 4294956418;
  }

  v6 = off_1E8670F50[a3];
  v7 = dword_1DE09E9F0[a3];
  v8 = flt_1DE09EA00[a3];
  v9 = flt_1DE09EA10[a3];
  v10 = flt_1DE09EA20[a3];
  v11 = dword_1DE09EA30[a3];
  buffer->cfNameString = v6;
  buffer->flags = 1207959552;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v7;
  buffer->minValue = v8;
  buffer->maxValue = v9;
  buffer->defaultValue = v10;
  buffer->flags |= v11;
  return result;
}

uint64_t AUOneChannelNoiseEstimator::GetParameterList(AUOneChannelNoiseEstimator *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
    result = 4294956430;
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = xmmword_1DE096230;
    }

    v4 = 4;
  }

  *a4 = v4;
  return result;
}

ausdk::AUInputElement *AUOneChannelNoiseEstimator::Render(AUOneChannelNoiseEstimator *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUOneChannelNoiseEstimator::ProcessMultipleBufferLists(AUOneChannelNoiseEstimator *this, unsigned int *a2, vDSP_Length __N, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (*(this + 84) != __N)
  {
    return 4294956422;
  }

  v22 = v7;
  v23 = v8;
  result = 4294956428;
  if (a4 == 1 && a6 == 1)
  {
    v13 = __N;
    if (*(this + 536) == 1 && 2 * __N != 0)
    {
      memmove((*a7)->mBuffers[0].mData, (*a5)->mBuffers[0].mData, 4 * (2 * __N));
    }

    if (!*(this + 132))
    {
      v21.realp = (*a5)->mBuffers[0].mData;
      v21.imagp = &v21.realp[v13];
      vDSP_zvmags(&v21, 1, *(this + 74), 1, v13);
      imagp = v21.imagp;
      **(this + 74) = *v21.realp * *v21.realp;
      *(*(this + 75) - 4) = *imagp * *imagp;
      v18 = SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>::process<std::vector<float>>(*(this + 68), this + 74);
      MEMORY[0x1E12BE940](*v18, 1, this + 616);
      v19 = SPLMeter<float,AWeight>::process<std::vector<float>>(*(this + 69), *(this + 71), *(this + 72));
      (*(*this + 152))(this, 2, 0, 0, 0, v19);
      v20 = SPLMeter<float,AWeight>::process<std::vector<float>>(*(this + 70), *(this + 71), *(this + 72));
      (*(*this + 152))(this, 3, 0, 0, 0, v20);
      if ((*(this + 536) & 1) == 0)
      {
        memcpy((*a7)->mBuffers[0].mData, *(this + 71), 4 * *(this + 135));
      }

      return 0;
    }

    v15 = *(this + 71);
    v16 = *(this + 72) - v15;
    if (v16 >= 1)
    {
      bzero(v15, v16);
    }

    (*(*this + 152))(this, 2, 0, 0, 0, 0.0);
    (*(*this + 152))(this, 3, 0, 0, 0, 0.0);
    result = 0;
    if ((*(this + 536) & 1) == 0)
    {
      vDSP_vclr((*a7)->mBuffers[0].mData, 1, *(this + 135));
      return 0;
    }
  }

  return result;
}

uint64_t AUOneChannelNoiseEstimator::SetParameter(AUOneChannelNoiseEstimator *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  AUOneChannelNoiseEstimator::RefreshKernelParamValue(this, a2);
  return 0;
}

uint64_t AUOneChannelNoiseEstimator::SetProperty(AUOneChannelNoiseEstimator *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 5201)
  {
    if (*(this + 17))
    {
      return 4294956447;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 133) = *a5;
      return result;
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
      *(this + 132) = *a5;
      return result;
    }
  }

  return 4294956445;
}

uint64_t AUOneChannelNoiseEstimator::GetProperty(AUOneChannelNoiseEstimator *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 5199)
  {
    if (a2 == 5200)
    {
      if (*(this + 17) == 1)
      {
        v8 = *(this + 71);
        v9 = *(this + 72);
        if (v9 == v8)
        {
          return 0;
        }

        else
        {
          memmove(__dst, v8, v9 - v8);
          return 0;
        }
      }

      else
      {
        return 4294956429;
      }
    }

    else if (a2 == 5201)
    {
      result = 0;
      v7 = *(this + 133);
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 21)
    {
      result = 0;
      v7 = *(this + 132);
      goto LABEL_11;
    }

    if (a2 == 3700)
    {
      result = 0;
      v7 = *(this + 376);
LABEL_11:
      *__dst = v7;
    }
  }

  return result;
}

uint64_t AUOneChannelNoiseEstimator::GetPropertyInfo(AUOneChannelNoiseEstimator *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 5199)
  {
    if (a2 == 5200)
    {
      *a6 = 0;
      v9 = 4 * *(this + 84) + 4;
      goto LABEL_14;
    }

    if (a2 != 5201)
    {
      return result;
    }

    v8 = *(this + 17) ^ 1;
  }

  else
  {
    if (a2 != 21)
    {
      if (a2 != 3700)
      {
        return result;
      }

      *a6 = 0;
      goto LABEL_12;
    }

    v8 = 1;
  }

  *a6 = v8;
LABEL_12:
  v9 = 4;
LABEL_14:
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t AUOneChannelNoiseEstimator::Initialize(AUOneChannelNoiseEstimator *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_24;
  }

  if (Element[22] == 1718773105 && Element[27] == 1 && Element[26] == 8)
  {
    *(this + 135) = *(this + 84);
    v5 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v5)
    {
      if (v5[27] != 1)
      {
        return 4294956428;
      }

      v6 = v5[26];
      if (v6 != 8 && v6 != 4)
      {
        return 4294956428;
      }

      v8 = v5[22];
      if (v8 == 1718773105)
      {
        v9 = 1;
      }

      else
      {
        if (v8 != 1819304813)
        {
          goto LABEL_23;
        }

        v9 = 0;
      }

      *(this + 536) = v9;
LABEL_23:
      operator new();
    }

LABEL_24:
    ausdk::Throw(0xFFFFD583);
  }

  return 4294956428;
}

void AUOneChannelNoiseEstimator::~AUOneChannelNoiseEstimator(AUOneChannelNoiseEstimator *this)
{
  AUOneChannelNoiseEstimator::~AUOneChannelNoiseEstimator(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59347F0;
  v2 = *(this + 74);
  if (v2)
  {
    *(this + 75) = v2;
    operator delete(v2);
  }

  v3 = *(this + 71);
  if (v3)
  {
    *(this + 72) = v3;
    operator delete(v3);
  }

  v4 = *(this + 70);
  *(this + 70) = 0;
  if (v4)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 69);
  *(this + 69) = 0;
  if (v5)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v5);
  }

  std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::reset[abi:ne200100](this + 68, 0);

  ausdk::AUBase::~AUBase(this);
}

BOOL AUTTYEchoSuppressor::ValidFormat(AUTTYEchoSuppressor *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v5 = 0;
  }

  return a4->mChannelsPerFrame == 1 && v5;
}

uint64_t AUTTYEchoSuppressor::SupportedNumChannels(AUTTYEchoSuppressor *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUTTYEchoSuppressor::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUTTYEchoSuppressor::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUTTYEchoSuppressor::GetParameterInfo(AUTTYEchoSuppressor *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956418;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  if (a3 > 8)
  {
    return 4294956418;
  }

  v6 = off_1E8670F70[a3];
  v7 = dword_1DE1138DC[a3];
  v8 = flt_1DE113900[a3];
  v9 = flt_1DE113924[a3];
  v10 = flt_1DE113948[a3];
  buffer->cfNameString = v6;
  buffer->flags = 0x8000000;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v7;
  buffer->minValue = v8;
  buffer->maxValue = v9;
  buffer->defaultValue = v10;
  buffer->flags |= 0xC0000000;
  return result;
}

uint64_t AUTTYEchoSuppressor::GetParameterList(AUTTYEchoSuppressor *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
    result = 4294956418;
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09BC60;
      a3[8] = 8;
    }

    v4 = 9;
  }

  *a4 = v4;
  return result;
}

uint64_t AUTTYEchoSuppressor::Render(AUTTYEchoSuppressor *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_21;
  }

  v9 = Element;
  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  *(this + 528) = 0;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144))
    {
      goto LABEL_24;
    }

    v15 = *(v9 + 152);
    v16 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v16 || !*(v16 + 172))
    {
      v19 = 0;
      *(this + 528) = 1;
      goto LABEL_19;
    }

    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
    if (v17)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else if (!result)
    {
LABEL_13:
      v18 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (v18)
      {
        if (!*(v18 + 144))
        {
          goto LABEL_24;
        }

        v19 = *(v18 + 152) + 48;
LABEL_19:
        if (*(v11 + 144))
        {
          v20 = *(v11 + 152) + 48;
          v22[0] = v15 + 48;
          v22[1] = v19;
          v21 = v20;
          return (*(*this + 184))(this, a2, a4, 2, v22, 1, &v21);
        }

LABEL_24:
        ausdk::Throw(0xFFFFFFFFLL);
      }

LABEL_21:
      ausdk::Throw(0xFFFFD583);
    }
  }

  return result;
}

uint64_t AUTTYEchoSuppressor::ProcessMultipleBufferLists(AUTTYEchoSuppressor *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 135) || *(this + 528) == 1)
  {
    memcpy((*a7)->mBuffers[0].mData, (*a5)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
  }

  else
  {
    LODWORD(v9) = a3;
    mData = (*a5)->mBuffers[0].mData;
    v11 = a5[1]->mBuffers[0].mData;
    v12 = (*a7)->mBuffers[0].mData;
    v13 = *(this + 133);
    if (*(this + 134) != v13)
    {
      AUTTYEchoSuppressor::UpdateState(this);
      *(this + 134) = v13;
    }

    if (v9)
    {
      v9 = v9;
      do
      {
        TTYSignalTracker::Gain(this + 544, *mData);
        v15 = v14;
        TTYSignalTracker::Gain(this + 596, *v11);
        v17 = 1.0 - v16;
        if (*(this + 161) && *(this + 148))
        {
          v17 = v15;
        }

        v18 = *mData++;
        *v12++ = v17 * v18;
        ++v11;
        --v9;
      }

      while (v9);
    }
  }

  return 0;
}

float32x2_t AUTTYEchoSuppressor::UpdateState(AUTTYEchoSuppressor *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v44 = *(Element + 80);
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v3, 0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (v8 = ausdk::AUElement::GetParameter(v6, 1u), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v10 & 1) == 0) || (v11 = ausdk::AUElement::GetParameter(v9, 2u), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (v43 = ausdk::AUElement::GetParameter(v12, 3u), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (v42 = ausdk::AUElement::GetParameter(v14, 4u), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0) || (v41 = ausdk::AUElement::GetParameter(v16, 5u), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0) || (v40 = ausdk::AUElement::GetParameter(v18, 6u), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0) || (v45 = ausdk::AUElement::GetParameter(v20, 7u), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0))
  {
    abort();
  }

  v46 = __PAIR64__(COERCE_UNSIGNED_INT(ausdk::AUElement::GetParameter(v22, 8u)), LODWORD(v45));
  *(this + 86) = v44;
  v24 = __exp10(Parameter * 0.05);
  *(this + 162) = v24;
  v25 = __exp10(v8 * 0.05);
  *(this + 163) = v25;
  *v26.i32 = __exp10(v11 * 0.05);
  *(this + 164) = v26.i32[0];
  __asm { FMOV            V3.2D, #1.0 }

  v32 = vcvtq_f32_s32(vuzp1q_s32(vcvtq_s64_f64(vmlaq_n_f64(_Q3, vcvtq_f64_f32(__PAIR64__(LODWORD(v42), LODWORD(v43))), v44)), vcvtq_s64_f64(vmlaq_n_f64(_Q3, vcvtq_f64_f32(__PAIR64__(LODWORD(v40), LODWORD(v41))), v44))));
  *(this + 660) = v32;
  v33 = vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(_Q3, vcvtq_f64_f32(v46), v44))));
  *(this + 676) = v33;
  *(this + 136) = v24;
  *(this + 137) = v24;
  *(this + 145) = *&v32.i32[1];
  *(this + 138) = v26.i32[0];
  *(this + 139) = 1065353216;
  *&_Q3.f64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
  *v32.i8 = vcvt_u32_f32(vzip1_s32(*v32.i8, *&_Q3.f64[0]));
  *(this + 146) = v32.i32[1];
  v34 = vdup_lane_s32(v26, 0);
  *(this + 144) = v32.i32[0];
  __asm { FMOV            V4.2S, #1.0 }

  _D4.f32[0] = vsub_f32(_D4, v34).f32[0];
  __asm { FMOV            V5.2S, #-1.0 }

  *(this + 152) = _D4.i32[0];
  _D4.i32[1] = vadd_f32(v34, _D5).i32[1];
  v37 = vcvt_f32_u32(*v32.i8);
  *v32.i8 = vdup_n_s32(0x3727C5ACu);
  *(this + 71) = vdiv_f32(_D4, vadd_f32(v37, *v32.i8));
  *(this + 149) = v25;
  *(this + 150) = v25;
  *(this + 158) = *v33.i32;
  *(this + 151) = 0;
  v38 = vcvt_u32_f32(vzip2_s32(*&_Q3.f64[0], v33));
  *(this + 157) = v38.i32[0];
  *(this + 159) = v38.i32[1];
  _D4.f32[1] = 0.0 - _D4.f32[0];
  result = vdiv_f32(_D4, vadd_f32(vcvt_f32_u32(v38), *v32.i8));
  *(this + 620) = result;
  return result;
}

uint64_t AUTTYEchoSuppressor::SetParameter(AUTTYEchoSuppressor *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 133);
  return result;
}

uint64_t AUTTYEchoSuppressor::SetProperty(AUTTYEchoSuppressor *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 135) = *a5;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUTTYEchoSuppressor::GetProperty(AUTTYEchoSuppressor *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    result = 0;
    *a5 = *(this + 135);
  }

  return result;
}

uint64_t AUTTYEchoSuppressor::GetPropertyInfo(AUTTYEchoSuppressor *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUTTYEchoSuppressor::Initialize(AUTTYEchoSuppressor *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_12;
  }

  v3 = *(Element + 96);
  v10 = *(Element + 80);
  *v11 = v3;
  *&v11[16] = *(Element + 112);
  v4 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (*&v10 != *(v4 + 80))
  {
    return 4294956428;
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
LABEL_12:
    ausdk::Throw(0xFFFFD583);
  }

  v8 = *(v6 + 96);
  *&v9.mSampleRate = *(v6 + 80);
  *&v9.mBytesPerPacket = v8;
  *&v9.mBitsPerChannel = *(v6 + 112);
  if (*&v10 != v9.mSampleRate || DWORD2(v10) != v9.mFormatID || *v11 != *&v9.mBytesPerPacket || *&v11[12] != *&v9.mChannelsPerFrame || !CA::Implementation::EquivalentFormatFlags(&v10, &v9, v7))
  {
    return 4294956428;
  }

  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUTTYEchoSuppressor::~AUTTYEchoSuppressor(AUTTYEchoSuppressor *this)
{
  *this = &unk_1F5934AD8;
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5934AD8;
  ausdk::AUBase::~AUBase(this);
}

uint64_t ecutils::fcn_otplace_fftReal_inverse(const vDSP_DFT_SetupStruct ***this, const DSPSplitComplex *a2, DSPComplex *a3, vDSP_Length __N, float a5)
{
  v5 = __N;
  v8 = a5;
  if (this)
  {
    MultiRadixRealFFT::RealOutOfPlaceInverseTransform(this, a2, a3);
  }

  vDSP_vclr(a3, 1, v5);
  return MEMORY[0x1E12BE940](a3 + 4 * v5, 1, &v8, a3 + 4 * v5, 1, v5);
}

void ecutils::fcn_smooth_psd(ecutils *this, float *a2, float a3, float a4, float *a5, float a6, unsigned int a7)
{
  v7 = a5;
  v13 = a4;
  v14 = a3;
  v12 = a6;
  v11 = a7;
  MEMORY[0x1E12BE940](this, 1, &v14, this, 1, a7);
  MEMORY[0x1E12BE8F0](a2, 1, &v13, this, 1, this, 1, v11);
  if (v7)
  {
    vDSP_vabs(this, 1, this, 1, v11);
  }

  if (a6 > 0.0)
  {
    MEMORY[0x1E12BE8A0](this, 1, &v12, this, 1, v11);
  }
}

float ecutils::fcn_complex_mult_by_psd(ecutils *this, float *a2, float *a3, float *a4)
{
  v4 = a4;
  MEMORY[0x1E12BE7F0](this, 1, a2, 1, a3, 1, a4);
  MEMORY[0x1E12BE7F0](this + 4 * v4 + 4, 1, a2 + 1, 1, &a3[v4 + 1], 1, v4 - 1);
  result = *(this + v4) * a2[v4];
  a3[v4] = result;
  return result;
}

float ecutils::fcn_complex_mult_add(int64x2_t *this, int64x2_t *a2, int64x2_t *a3, int64x2_t *a4, DSPSplitComplex *a5)
{
  v9 = vdupq_n_s64(4uLL);
  __A = vaddq_s64(*this, v9);
  v10 = vaddq_s64(*a2, v9);
  __C = vaddq_s64(*a3, v9);
  __B = v10;
  __D = vaddq_s64(*a4, v9);
  vDSP_zvma(&__A, 1, &__B, 1, &__C, 1, &__D, 1, (a5 - 1));
  v11 = this->i64[1];
  v12 = a2->i64[1];
  v13 = a3->i64[1];
  v14 = a4->i64[1];
  *a4->i64[0] = *a3->i64[0] + (*this->i64[0] * *a2->i64[0]);
  result = *v13 + (*v11 * *v12);
  *v14 = result;
  return result;
}

float ecutils::fcn_complex_mult_add_mult_add(int64x2_t *this, int64x2_t *a2, int64x2_t *a3, int64x2_t *a4, int64x2_t *a5, DSPSplitComplex *a6)
{
  v11 = vdupq_n_s64(4uLL);
  v27 = vaddq_s64(*this, v11);
  v12 = vaddq_s64(*a2, v11);
  v25 = vaddq_s64(*a3, v11);
  v26 = v12;
  v13 = vaddq_s64(*a4, v11);
  v23 = vaddq_s64(*a5, v11);
  v24 = v13;
  aDSP_zvmama(&v27, 1, &v26, 1, &v25, 1, &v24, 1, &v23, 1, (a6 - 1));
  v14 = this->i64[1];
  v15 = a2->i64[0];
  v16 = a2->i64[1];
  v17 = a3->i64[0];
  v18 = a3->i64[1];
  *v17 = *a3->i64[0] + (*this->i64[0] * *a2->i64[0]);
  *v18 = *v18 + (*v14 * *v16);
  v19 = *v17;
  v20 = a4->i64[1];
  v21 = a5->i64[1];
  *a5->i64[0] = *v15 + (v19 * *a4->i64[0]);
  result = *v16 + (*v18 * *v20);
  *v21 = result;
  return result;
}

_DWORD *AUsubMAEC::dftBuffer::GetIndexSequence(_DWORD *this, int a2)
{
  if (a2)
  {
    v2 = (this + 8);
    v3 = this[14];
    v4 = v3;
  }

  else
  {
    v2 = (this + 10);
    v4 = this[14];
    v3 = this[15];
  }

  v5 = *v2;
  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  v6 = this[12];
  v8 = v6 + v4 + v4 * ((~(v6 - v3) + ((v6 - v3 + 1) >> 31) + ((v6 - v3 + 1) & ~((v6 - v3 + 1) >> 31))) / v7 + ((v6 - v3 + 1) >> 31)) - v3 + 1;
  do
  {
    v8 -= v4;
  }

  while (v8 >= v4);
  *v5 = v8;
  if (v3 >= 2)
  {
    for (i = 1; i != v3; v5[i++] = v8)
    {
      v8 += 1 + v4 + v4 * ((~v8 + ((v8 + 1) >> 31) + ((v8 + 1) & ~((v8 + 1) >> 31))) / v7 + ((v8 + 1) >> 31));
      do
      {
        v8 -= v4;
      }

      while (v8 >= v4);
    }
  }

  return this;
}

void *PPUtils::ContiguousArray2D<std::vector<std::complex<float>>>::~ContiguousArray2D(void *a1)
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
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      v6 = a1[2];
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

void AUSM::SoundStage::RenderingParameters::getMutableDictionary(AUSM::SoundStage::RenderingParameters *this, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  *this = Mutable;
  v6 = *MEMORY[0x1E695E4D0];
  v7 = *MEMORY[0x1E695E4C0];
  if (*a2)
  {
    v8 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, AUSM::kUsePresentationDistanceKey, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (*(a2 + 1))
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  CFDictionaryAddValue(v5, AUSM::kAllowHeadLockingKey, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (*(a2 + 2))
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  CFDictionaryAddValue(v5, AUSM::kAllowInternalizedKey, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*(a2 + 3))
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  CFDictionaryAddValue(v5, AUSM::kAllowTranslationInAmbienceBedKey, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  if (*(a2 + 4))
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  CFDictionaryAddValue(v5, AUSM::kForceEnablePostProcReverbKey, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  if (*(a2 + 5))
  {
    v13 = v6;
  }

  else
  {
    v13 = v7;
  }

  CFDictionaryAddValue(v5, AUSM::kUseRotationMatrixWithOBHDKey, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = AUSM::kOverallGainKey;
  valuePtr = *(a2 + 8);
  v15 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  cf = v15;
  if (!v15)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionaryAddValue(v5, v14, v15);
  CFRelease(cf);
  v16 = AUSM::kDistanceCompressionKey;
  valuePtr = *(a2 + 12);
  v17 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  cfa = v17;
  if (!v17)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
  }

  CFDictionaryAddValue(v5, v16, v17);
  CFRelease(cfa);
}

void sub_1DDFD79E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a9);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(v9);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::find_at_key<BOOL,__CFString const*&>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<BOOL,0>(v2);
}

float applesauce::CF::details::find_at_key<float,__CFString const*&>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<float,0>(v2);
}

float AUSM::SoundStage::TransitionParameters::transition(int a1, float result, float a3, float a4, float a5)
{
  if (result != a3)
  {
    v5 = 1.0;
    if (a4 <= 1.0)
    {
      v5 = a4;
    }

    v6 = a4 < 0.0;
    v7 = 0.0;
    if (!v6)
    {
      v7 = v5;
    }

    v8 = 0.1;
    if (a5 <= 0.1)
    {
      return result + (v7 * (a3 - result));
    }

    if (a1 > 2)
    {
      v9 = a5 + -0.1;
      if (a1 == 3)
      {
        if (v9 >= 0.1)
        {
          v8 = a5 + -0.1;
        }

        v7 = v7 * (a5 / v8);
        goto LABEL_14;
      }

      if (v9 >= 0.1)
      {
        v8 = a5 + -0.1;
      }
    }

    else if (a1 == 1)
    {
      v7 = (a5 / 0.1) * v7;
LABEL_14:
      if (v7 > 1.0)
      {
        v7 = 1.0;
      }

      return result + (v7 * (a3 - result));
    }

    v7 = 1.0 - ((a5 / v8) - ((a5 / v8) * v7));
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    return result + (v7 * (a3 - result));
  }

  return result;
}

uint64_t AUSM::SoundStage::setWarpingParameters(uint64_t a1, int a2, uint64_t *a3, const std::string *a4)
{
  v201 = *MEMORY[0x1E69E9840];
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1);
  v8 = *(a1 + 168);
  v9 = a1 + 168;
  if (*(a1 + 176) != v8 && a3[1] - *a3 != *(v8 + 40) - *(v8 + 32))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v10 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v160 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v160 = *v160;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v160;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "setWarpingParameters";
      _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "[%s|%s] Provided vector of parameters does not match size of SoundStage parameter vectors.", &buf, 0x16u);
    }
  }

  AUSM::SoundStage::getDefaultWarpingParameters(&__p, a2);
  size = __p.__r_.__value_.__l.__size_;
  v11 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v13 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v159 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v159 = *v159;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v159;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "setWarpingParameters";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      v186 = a2;
      _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "[%s|%s] No default for enum value %u. Building on top of Neutral instead", &buf, 0x1Cu);
    }

    AUSM::SoundStage::getDefaultWarpingParameters(&buf, 5);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = buf.__r_.__value_.__r.__words[0];
    __p = buf;
    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ == buf.__r_.__value_.__r.__words[0])
    {
      __assert_rtn("setWarpingParameters", "AUSMSoundStage.cpp", 671, "params.size() > 0");
    }
  }

  v15 = size - v11;
  v14 = v15 == 0;
  v16 = v15 >> 5;
  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = a3[1] - *a3;
      if (v20)
      {
        v21 = 0;
        v22 = v20 >> 5;
        v23 = v11 + 32 * v17;
        v24 = 1;
        while (1)
        {
          v25 = *a3 + 32 * v21;
          if (*(v25 + 28) == *(v23 + 28))
          {
            break;
          }

          v21 = v24;
          v26 = v22 > v24++;
          if (!v26)
          {
            goto LABEL_21;
          }
        }

        v27 = *(v25 + 16);
        *v23 = *v25;
        *(v23 + 16) = v27;
        ++v18;
      }

LABEL_21:
      v17 = ++v19;
    }

    while (v16 > v19);
  }

  v28 = v18;
  if (v18 >= ((a3[1] - *a3) >> 5))
  {
    if (v16 > v18)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v32 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        v162 = (a1 + 200);
        if (*(a1 + 223) < 0)
        {
          v162 = *v162;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v162;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "setWarpingParameters";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        v186 = ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 5) - v28;
        _os_log_debug_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEBUG, "[%s|%s] %u channel parameters using default values", &buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v29 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v30 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v30 = *v30;
      }

      v31 = ((a3[1] - *a3) >> 5) - v28;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v30;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "setWarpingParameters";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      v186 = v31;
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEFAULT, "[%s|%s] %u incoming channel parameters dropped", &buf, 0x1Cu);
    }
  }

  v33 = *(a1 + 168);
  v34 = *(a1 + 176) - v33;
  if (v34)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0xD37A6F4DE9BD37A7 * (v34 >> 3);
    while (*(v33 + 184 * v35 + 24) != a2)
    {
      v35 = ++v36;
      if (v37 <= v36)
      {
        goto LABEL_39;
      }
    }

    v45 = (v33 + 184 * v36 + 32);
    if (v45 != &__p)
    {
      std::vector<AUSMChannelParameters>::__assign_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 5);
      v33 = *v9;
    }

    v46 = v36;
    std::string::operator=((v33 + 184 * v36), a4);
    v47 = v36 | 0x100000000;
    *(*v9 + 184 * v46 + 160) = 1;
  }

  else
  {
LABEL_39:
    memset(&buf, 0, sizeof(buf));
    *v187 = 0u;
    *v188 = 0u;
    v189 = 0u;
    *v190 = 0u;
    v191 = 0u;
    v192 = xmmword_1DE097D00;
    v193 = 0xFFFFFFFF00000001;
    v195 = 0;
    v196 = 0;
    v194 = 0;
    v198 = 65793;
    v199 = 256;
    v200 = 1065353216;
    std::vector<AUSMChannelParameters>::__assign_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(v187, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 5);
    std::string::operator=(&buf, a4);
    v186 = a2;
    v197 = 1;
    v39 = *(a1 + 176);
    v38 = *(a1 + 184);
    if (v39 >= v38)
    {
      v41 = 0xD37A6F4DE9BD37A7 * ((v39 - *v9) >> 3);
      v42 = v41 + 1;
      if (v41 + 1 > 0x1642C8590B21642)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v43 = 0xD37A6F4DE9BD37A7 * ((v38 - *v9) >> 3);
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0xB21642C8590B21)
      {
        v44 = 0x1642C8590B21642;
      }

      else
      {
        v44 = v42;
      }

      *&v184 = a1 + 168;
      if (v44)
      {
        if (v44 <= 0x1642C8590B21642)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v181 = 0;
      v182 = 184 * v41;
      v183 = 184 * v41;
      AUSM::SoundStage::SoundStageParameters::SoundStageParameters((184 * v41), &buf);
      *&v183 = v183 + 184;
      v49 = *(a1 + 168);
      v48 = *(a1 + 176);
      v50 = v182 + v49 - v48;
      if (v49 != v48)
      {
        v51 = *(a1 + 168);
        v52 = v182 + v49 - v48;
        do
        {
          v53 = *v51;
          *(v52 + 16) = *(v51 + 2);
          *v52 = v53;
          *(v51 + 1) = 0;
          *(v51 + 2) = 0;
          *v51 = 0;
          *(v52 + 24) = *(v51 + 6);
          *(v52 + 40) = 0;
          *(v52 + 48) = 0;
          *(v52 + 32) = 0;
          *(v52 + 32) = v51[2];
          *(v52 + 48) = *(v51 + 6);
          *(v51 + 4) = 0;
          *(v51 + 5) = 0;
          *(v51 + 6) = 0;
          *(v52 + 56) = 0;
          *(v52 + 64) = 0;
          *(v52 + 72) = 0;
          *(v52 + 56) = *(v51 + 56);
          *(v52 + 72) = *(v51 + 9);
          *(v51 + 7) = 0;
          *(v51 + 8) = 0;
          *(v51 + 9) = 0;
          *(v52 + 80) = 0;
          *(v52 + 88) = 0;
          *(v52 + 96) = 0;
          *(v52 + 80) = v51[5];
          *(v52 + 96) = *(v51 + 12);
          *(v51 + 10) = 0;
          *(v51 + 11) = 0;
          *(v51 + 12) = 0;
          v54 = *(v51 + 104);
          *(v52 + 120) = *(v51 + 120);
          *(v52 + 104) = v54;
          *(v52 + 144) = 0;
          *(v52 + 152) = 0;
          *(v52 + 136) = 0;
          *(v52 + 136) = *(v51 + 136);
          *(v52 + 152) = *(v51 + 19);
          *(v51 + 17) = 0;
          *(v51 + 18) = 0;
          *(v51 + 19) = 0;
          v55 = v51[10];
          *(v52 + 176) = *(v51 + 44);
          *(v52 + 160) = v55;
          v51 = (v51 + 184);
          v52 += 184;
        }

        while (v51 != v48);
        do
        {
          std::allocator_traits<std::allocator<AUSM::SoundStage::SoundStageParameters>>::destroy[abi:ne200100]<AUSM::SoundStage::SoundStageParameters,void,0>(v49);
          v49 += 184;
        }

        while (v49 != v48);
      }

      v56 = *(a1 + 168);
      *(a1 + 168) = v50;
      v57 = *(a1 + 184);
      v163 = v183;
      *(a1 + 176) = v183;
      *&v183 = v56;
      *(&v183 + 1) = v57;
      v181 = v56;
      v182 = v56;
      std::__split_buffer<AUSM::SoundStage::SoundStageParameters>::~__split_buffer(&v181);
      v40 = v163;
    }

    else
    {
      AUSM::SoundStage::SoundStageParameters::SoundStageParameters(*(a1 + 176), &buf);
      v40 = v39 + 184;
      *(a1 + 176) = v39 + 184;
    }

    *(a1 + 176) = v40;
    v58 = *(a1 + 168);
    v59 = v40 - v58;
    if (v59)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0xD37A6F4DE9BD37A7 * (v59 >> 3);
      while (*(v58 + 184 * v60 + 24) != a2)
      {
        v60 = ++v61;
        if (v62 <= v61)
        {
          goto LABEL_62;
        }
      }

      v64 = v61;
      v63 = 0x100000000;
    }

    else
    {
LABEL_62:
      v63 = 0;
      v64 = 0;
    }

    if (v194)
    {
      v195 = v194;
      operator delete(v194);
    }

    if (v190[0])
    {
      v190[1] = v190[0];
      operator delete(v190[0]);
    }

    if (v188[1])
    {
      *&v189 = v188[1];
      operator delete(v188[1]);
    }

    if (v187[0])
    {
      v187[1] = v187[0];
      operator delete(v187[0]);
    }

    v47 = v64 | v63;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if ((v47 & 0x100000000) != 0)
  {
    v65 = *a3;
    v66 = a3[1];
    if (*a3 != v66)
    {
      while (*(v65 + 28) != 1751474532)
      {
        v65 += 32;
        if (v65 == v66)
        {
          goto LABEL_80;
        }
      }
    }

    if (v65 == v66)
    {
LABEL_80:
      v67 = *v9 + 184 * v47;
      v68 = *(v67 + 32);
      v69 = *(v67 + 40);
      if (v68 == v69)
      {
        goto LABEL_84;
      }

      v70 = *(v67 + 32);
      while (*(v70 + 28) != 1751474532)
      {
        v70 += 32;
        if (v70 == v69)
        {
          goto LABEL_84;
        }
      }

      if (v70 == v69)
      {
LABEL_84:
        __assert_rtn("setWarpingParameters", "AUSMSoundStage.cpp", 713, "inHeadParams != mSoundStages[*ssIndex].parameters.end()");
      }

      v71 = 0;
      v72 = 0;
      v73 = 1.0;
      v74 = 0.0;
      v75 = 0.0;
      v76 = 0.0;
      do
      {
        v77 = v68[7];
        if (v77 > 0x3E || ((0x4000002000000010uLL >> v77) & 1) == 0)
        {
          v71 = vadd_f32(v71, *(v68 + 3));
          v76 = v76 + *(v68 + 5);
          if (v77 == 3)
          {
            v75 = *v68;
            v74 = *(v68 + 1);
            v73 = v74;
          }

          *v72.i32 = *v72.i32 + 1.0;
        }

        v68 += 8;
      }

      while (v68 != v69);
      if (a2 == 1)
      {
        *v70 = v75;
        *(v70 + 4) = v74;
        *(v70 + 8) = v73;
      }

      if (*v72.i32 <= 0.0)
      {
        v78 = 1065353216;
        v79 = 0.0;
      }

      else
      {
        v78 = vdiv_f32(v71, vdup_lane_s32(v72, 0));
        v79 = v76 / *v72.i32;
      }

      *(v70 + 12) = v78;
      *(v70 + 20) = v79;
    }
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1);
  v82 = *(a1 + 168);
  v83 = *(a1 + 176);
  v84 = 0xD37A6F4DE9BD37A7 * ((v83 - v82) >> 3);
  if (v84 >= 2)
  {
    v85 = 2;
    v86 = 1;
    do
    {
      if (*(v82 + 184 * v86 + 40) - *(v82 + 184 * v86 + 32) != *(v82 + 40) - *(v82 + 32))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v155 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v161 = (a1 + 200);
          if (*(a1 + 223) < 0)
          {
            v161 = *v161;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v161;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = "initializeSoundStage";
          _os_log_error_impl(&dword_1DDB85000, v155, OS_LOG_TYPE_ERROR, "[%s|%s] SoundStages found to have different number of parameters.", &buf, 0x16u);
        }

        if (*(*v9 + 184 * v86 + 40) - *(*v9 + 184 * v86 + 32) != *(*v9 + 40) - *(*v9 + 32))
        {
          __assert_rtn("initializeSoundStage", "AUSMSoundStage.cpp", 413, "mSoundStages[i].parameters.size() == mSoundStages[0].parameters.size()");
        }

        v150 = 0;
        goto LABEL_182;
      }

      v86 = v85;
      v26 = v84 > v85++;
    }

    while (v26);
  }

  if (v83 == v82)
  {
LABEL_107:
    __assert_rtn("initializeSoundStage", "AUSMSoundStage.cpp", 419, "neutralIndex");
  }

  v87 = 0;
  v88 = 0;
  while (*(v82 + 184 * v87 + 24) != 5)
  {
    v87 = ++v88;
    if (v84 <= v88)
    {
      goto LABEL_107;
    }
  }

  v89 = 0;
  v164 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v166 = 0;
  v167 = 0;
  v90 = 0.5;
  v168 = 0;
  while (1)
  {
    v91 = v82 + 184 * v89;
    if (*(v91 + 160) == 1)
    {
      break;
    }

LABEL_155:
    v89 = ++v164;
    if (0xD37A6F4DE9BD37A7 * ((v83 - v82) >> 3) <= v164)
    {
      v150 = 1;
      goto LABEL_167;
    }
  }

  *(v91 + 88) = *(v91 + 80);
  *(v91 + 64) = *(v91 + 56);
  *(v91 + 144) = *(v91 + 136);
  if (v164 == v88)
  {
    *(a1 + 72) = *(a1 + 64);
  }

  v92 = *(v91 + 32);
  if (*(v91 + 40) != v92)
  {
    v93 = 0;
    v94 = 1;
    do
    {
      v95 = (v92 + 32 * v93);
      v96 = *(v95 + 7);
      if (v96 == 1751474532)
      {
        v97 = *v95;
        v80 = v95[1];
        v98 = v82 + 184 * v89;
        *(v98 + 120) = v80;
        *(v98 + 104) = v97;
      }

      else if (v96 <= 0x3E && ((0x4000002000000010uLL >> v96) & 1) != 0)
      {
        std::vector<AUSMChannelParameters>::push_back[abi:ne200100](v82 + 184 * v89 + 80, (*(v82 + 184 * v89 + 32) + 32 * v93));
      }

      else
      {
        if (v164 == v88)
        {
          std::vector<float>::push_back[abi:ne200100](&v178, (*(v82 + 184 * v89 + 32) + 32 * v93));
          std::vector<float>::push_back[abi:ne200100](&v175, (*(*v9 + 184 * v89 + 32) + 32 * v93 + 4));
          v99 = (*(*v9 + 184 * v89 + 32) + 32 * v93);
          v100 = v99[1] * 0.017453;
          v101 = __sincosf_stret(*v99 * 0.017453);
          v102 = __sincosf_stret(v100);
          *&buf.__r_.__value_.__l.__data_ = v101.__cosval * v102.__cosval;
          std::vector<float>::push_back[abi:ne200100]((a1 + 64), &buf);
          *&buf.__r_.__value_.__l.__data_ = v101.__sinval * v102.__cosval;
          std::vector<float>::push_back[abi:ne200100]((a1 + 64), &buf);
          *&buf.__r_.__value_.__l.__data_ = -v102.__sinval;
          std::vector<float>::push_back[abi:ne200100]((a1 + 64), &buf);
          *&buf.__r_.__value_.__l.__data_ = (v101.__cosval * v102.__cosval);
          std::vector<double>::push_back[abi:ne200100](&v172, &buf);
          *&buf.__r_.__value_.__l.__data_ = (v101.__sinval * v102.__cosval);
          std::vector<double>::push_back[abi:ne200100](&v169, &buf);
          v90 = 0.5;
          *&buf.__r_.__value_.__l.__data_ = -v102.__sinval;
          std::vector<double>::push_back[abi:ne200100](&v166, &buf);
          v82 = *v9;
        }

        std::vector<AUSMChannelParameters>::push_back[abi:ne200100](v82 + 184 * v89 + 56, (*(v82 + 184 * v89 + 32) + 32 * v93));
        v103 = (*v9 + 184 * v89);
        v104 = (v103[4] + 32 * v93);
        v105 = v104[1];
        v106 = __sincosf_stret((*v104 * 0.017453) * v90);
        v107 = __sincosf_stret((v105 * 0.017453) * v90);
        *&v108 = -((v106.__sinval * v107.__sinval) - ((v106.__cosval * v107.__cosval) * 0.0));
        *(&v108 + 1) = (v106.__sinval * (v107.__cosval * 0.0)) + (v107.__sinval * v106.__cosval);
        *(&v108 + 2) = (v106.__cosval * (v107.__sinval * -0.0)) + (v107.__cosval * v106.__sinval);
        *(&v108 + 3) = (v106.__cosval * v107.__cosval) + ((v106.__sinval * v107.__sinval) * 0.0);
        v110 = v103[18];
        v109 = v103[19];
        if (v110 >= v109)
        {
          v112 = v103[17];
          v113 = (v110 - v112) >> 4;
          if ((v113 + 1) >> 60)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v114 = v109 - v112;
          v115 = v114 >> 3;
          if (v114 >> 3 <= (v113 + 1))
          {
            v115 = v113 + 1;
          }

          if (v114 >= 0x7FFFFFFFFFFFFFF0)
          {
            v116 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v116 = v115;
          }

          if (v116)
          {
            std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](v116);
          }

          *(16 * v113) = v108;
          v111 = 16 * v113 + 16;
          v117 = v103[17];
          v118 = v103[18] - v117;
          v119 = (16 * v113 - v118);
          memcpy(v119, v117, v118);
          v120 = v103[17];
          v103[17] = v119;
          v103[18] = v111;
          v103[19] = 0;
          if (v120)
          {
            operator delete(v120);
          }
        }

        else
        {
          *v110 = v108;
          v111 = (v110 + 1);
        }

        v103[18] = v111;
      }

      v93 = v94;
      v82 = *v9;
      v92 = *(*v9 + 184 * v89 + 32);
      ++v94;
    }

    while (v93 < (*(*v9 + 184 * v89 + 40) - v92) >> 5);
  }

  if (v164 != v88)
  {
    *(v82 + 184 * v89 + 160) = 0;
    v83 = *(a1 + 176);
    goto LABEL_155;
  }

  v121 = (v173 - v172) >> 3;
  if (v121 >= 4)
  {
    v122 = 0;
    v123 = ((v173 - v172) >> 3);
    v124 = 2;
    v125 = 1;
    v126 = 1;
    do
    {
      if (v122 + 2 < v123)
      {
        v127.f64[0] = *(v172 + v122);
        v127.f64[1] = *(v169 + v122);
        v80.f64[0] = *(v166 + v122);
        v128.f64[0] = v127.f64[0];
        *&v128.f64[1] = vextq_s8(v127, v127, 8uLL).u64[0];
        v129 = v125;
        v130 = v126;
        v131 = v124;
        while (2)
        {
          v132 = v131;
          v133.f64[0] = *(v172 + v130);
          v133.f64[1] = *(v169 + v130);
          v81.f64[0] = *(v166 + v130);
          v136 = vsubq_f64(v133, v128);
          v134 = vextq_s8(v136, v136, 8uLL);
          v135 = vsubq_f64(v81, v80);
          v137.f64[0] = v135.f64[0];
          v137.f64[1] = v136.f64[0];
          v136.f64[1] = v134.f64[0];
          *&v137.f64[1] = vextq_s8(v137, v137, 8uLL).u64[0];
          v138 = v131;
          do
          {
            v139.f64[0] = *(v172 + v132);
            v139.f64[1] = *(v169 + v132);
            v81.f64[0] = *(v166 + v132);
            v140 = vsubq_f64(v139, __PAIR128__(*&v128.f64[1], *&v127.f64[0]));
            v141 = vsubq_f64(v81, v80);
            v142 = vmulq_f64(v141, v134);
            v141.f64[1] = v140.f64[0];
            v143 = vmlaq_f64(vnegq_f64(vmulq_f64(v140, v137)), v136, v141);
            v144 = vmlaq_laneq_f64(vnegq_f64(v142), v135, v140, 1);
            v81.f64[0] = v144.f64[0];
            v81.f64[1] = v143.f64[0];
            if (vaddvq_f64(vabsq_f64(v81)) + vabsq_f64(vdupq_laneq_s64(v143, 1)).f64[0] > 0.05)
            {
              v145 = 0;
              v146.f64[0] = v143.f64[0];
              *&v146.f64[1] = vextq_s8(v143, v143, 8uLL).u64[0];
              v147 = vmulq_f64(v146, v146);
              *v147.f64 = sqrt(vmulq_f64(v144, v144).f64[0] + v147.f64[0] + v147.f64[1]);
              v148 = 1.0 / *v147.f64;
              do
              {
                if (v122 != v145 && v129 != v145 && v138 != v145)
                {
                  v149.f64[0] = *(v172 + v145);
                  v149.f64[1] = *(v169 + v145);
                  v136.f64[0] = *(v166 + v145);
                  v136 = vmulq_laneq_f64(vsubq_f64(v136, v80), v143, 1);
                  if (fabs((vaddvq_f64(vmulq_f64(vsubq_f64(v149, v127), v81)) + v136.f64[0]) * v148) > 0.01)
                  {
                    CDelaunayTriangles3D::find_delaunay_triangles((a1 + 16), v172, v169, v166, (a1 + 88), v121);
                  }
                }

                ++v145;
              }

              while (v123 != v145);
              goto LABEL_157;
            }

            ++v132;
            ++v138;
          }

          while (v132 < v121);
          ++v130;
          ++v131;
          ++v129;
          if (v130 != v121 - 1)
          {
            continue;
          }

          break;
        }
      }

      ++v122;
      ++v124;
      ++v126;
      ++v125;
    }

    while (v122 != v121 - 2);
  }

LABEL_157:
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v151 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v158 = (a1 + 200);
    if (*(a1 + 223) < 0)
    {
      v158 = *v158;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v158;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "initializeTriangulation";
    _os_log_error_impl(&dword_1DDB85000, v151, OS_LOG_TYPE_ERROR, "[%s|%s] Control Points found to be coplanar. Unable to compute triangulation.", &buf, 0x16u);
  }

  v152 = *(a1 + 168);
  for (i = *(a1 + 176); i != v152; std::allocator_traits<std::allocator<AUSM::SoundStage::SoundStageParameters>>::destroy[abi:ne200100]<AUSM::SoundStage::SoundStageParameters,void,0>(i))
  {
    i -= 184;
  }

  *(a1 + 176) = v152;
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v154 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v157 = (a1 + 200);
    if (*(a1 + 223) < 0)
    {
      v157 = *v157;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v157;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "initializeSoundStage";
    _os_log_error_impl(&dword_1DDB85000, v154, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to initialize Delaunay triangulation.", &buf, 0x16u);
  }

  v150 = 0;
LABEL_167:
  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (v169)
  {
    v170 = v169;
    operator delete(v169);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

LABEL_182:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1);
  return v150;
}

void sub_1DDFD917C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  std::__split_buffer<AUSM::SoundStage::SoundStageParameters>::~__split_buffer(&a33);
  AUSM::SoundStage::SoundStageParameters::~SoundStageParameters(&a45);
  if (__p)
  {
    operator delete(__p);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a10);
  _Unwind_Resume(a1);
}

void AUSM::SoundStage::getDefaultWarpingParameters(AUSM::SoundStage *this, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (a2 <= 2)
  {
    v34 = 0;
    if (a2 == 1)
    {
      __s1 = xmmword_1DE1141E4;
      v32 = unk_1DE1141F4;
      v33 = xmmword_1DE114204;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v28, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE11421C;
      v32 = *algn_1DE11422C;
      v33 = xmmword_1DE11423C;
      v34 = 0;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v25, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE114254;
      v32 = unk_1DE114264;
      v33 = xmmword_1DE114274;
      v34 = 0x3F80000000000000;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v22, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE11428C;
      v32 = unk_1DE11429C;
      v33 = xmmword_1DE1142AC;
      v34 = 0x3F80000000000000;
    }

    else
    {
      __s1 = xmmword_1DE1142C4;
      v32 = unk_1DE1142D4;
      v33 = xmmword_1DE1142E4;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v28, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE1143DC;
      v32 = *algn_1DE1143EC;
      v33 = xmmword_1DE1143FC;
      v34 = 0;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v25, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE1142FC;
      v32 = unk_1DE11430C;
      v33 = xmmword_1DE11431C;
      v34 = 0x3F8000003F000000;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v22, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE11444C;
      v32 = unk_1DE11445C;
      v33 = xmmword_1DE11446C;
      v34 = 0;
    }

    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v19, &__s1, &v35, 0xEuLL);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    __s1 = 0u;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v16, &__s1, &v35, 0xEuLL);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    __s1 = 0u;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, &__s1, &v35, 0xEuLL);
  }

  else if (a2 == 3)
  {
    v34 = 0;
    __s1 = xmmword_1DE114334;
    v32 = unk_1DE114344;
    v33 = xmmword_1DE114354;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v28, &__s1, &v35, 0xEuLL);
    __s1 = xmmword_1DE11436C;
    v32 = *algn_1DE11437C;
    v33 = xmmword_1DE11438C;
    v34 = 0;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v25, &__s1, &v35, 0xEuLL);
    __s1 = xmmword_1DE114414;
    v32 = unk_1DE114424;
    v33 = xmmword_1DE114434;
    v34 = 0x3F8000003F800000;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v22, &__s1, &v35, 0xEuLL);
    __s1 = xmmword_1DE11444C;
    v32 = unk_1DE11445C;
    v33 = xmmword_1DE11446C;
    v34 = 0;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v19, &__s1, &v35, 0xEuLL);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    __s1 = 0u;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v16, &__s1, &v35, 0xEuLL);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    __s1 = 0u;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, &__s1, &v35, 0xEuLL);
  }

  else
  {
    v34 = 0;
    if (a2 == 4)
    {
      __s1 = xmmword_1DE1143A4;
      v32 = unk_1DE1143B4;
      v33 = xmmword_1DE1143C4;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v28, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE1143DC;
      v32 = *algn_1DE1143EC;
      v33 = xmmword_1DE1143FC;
    }

    else
    {
      __s1 = xmmword_1DE114334;
      v32 = unk_1DE114344;
      v33 = xmmword_1DE114354;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v28, &__s1, &v35, 0xEuLL);
      __s1 = xmmword_1DE11436C;
      v32 = *algn_1DE11437C;
      v33 = xmmword_1DE11438C;
    }

    v34 = 0;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v25, &__s1, &v35, 0xEuLL);
    __s1 = xmmword_1DE114414;
    v32 = unk_1DE114424;
    v33 = xmmword_1DE114434;
    v34 = 0x3F8000003F800000;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v22, &__s1, &v35, 0xEuLL);
    __s1 = xmmword_1DE11444C;
    v32 = unk_1DE11445C;
    v33 = xmmword_1DE11446C;
    v34 = 0;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v19, &__s1, &v35, 0xEuLL);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    __s1 = 0u;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&v16, &__s1, &v35, 0xEuLL);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    __s1 = 0u;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, &__s1, &v35, 0xEuLL);
  }

  *&v32 = (v26 - v25) >> 2;
  *(&v32 + 1) = (v20 - v19) >> 2;
  v3 = (v29 - v28) >> 2;
  *&__s1 = 14;
  *(&__s1 + 1) = v3;
  *&v33 = (v23 - v22) >> 2;
  *(&v33 + 1) = (v17 - v16) >> 2;
  v34 = (v14 - __p) >> 2;
  if (memcmp(&__s1, &__s1 + 8, 0x30uLL))
  {
    __assert_rtn("getDefaultWarpingParameters", "AUSMSoundStage.cpp", 312, "are_all_equal({channelLabels.size(), soundStageAzimsDefault.size(), soundStageElevsDefault.size(), soundStageDistancesDefault.size(), soundStageGainsDefault.size(), soundStageDRRsDefault.size(), soundStageDelaysDefault.size()})");
  }

  std::vector<AUSMChannelParameters>::vector[abi:ne200100](this, v3);
  v4 = v28;
  v5 = __p;
  if (v29 == v28)
  {
    if (!__p)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0;
    v7 = (v29 - v28) >> 2;
    v8 = v25;
    v9 = v19;
    v10 = v22;
    v11 = v16;
    v12 = (*this + 16);
    do
    {
      *(v12 - 4) = v4[v6];
      *(v12 - 3) = v8[v6];
      *(v12 - 2) = v9[v6];
      *(v12 - 1) = v10[v6];
      *v12 = v11[v6];
      v12[1] = *&v5[4 * v6];
      v12[3] = AUSM::SoundStage::getDefaultWarpingParameters::channelLabels[v6++];
      v12 += 8;
    }

    while (v7 > v6);
  }

  v14 = v5;
  operator delete(v5);
LABEL_19:
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_1DDFD9A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

std::string *AUSM::SoundStage::SoundStageParameters::SoundStageParameters(std::string *this, const AUSM::SoundStage::SoundStageParameters *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<AUSMChannelParameters>::__init_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<AUSMChannelParameters>::__init_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 5);
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  std::vector<AUSMChannelParameters>::__init_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(&this[3].__r_.__value_.__l.__size_, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 5);
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  this[5].__r_.__value_.__r.__words[2] = 0;
  *&this[4].__r_.__value_.__r.__words[1] = v6;
  *&this[5].__r_.__value_.__l.__data_ = v7;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  v9 = *(a2 + 17);
  v8 = *(a2 + 18);
  v10 = v8 - v9;
  if (v8 != v9)
  {
    if (!((v10 >> 4) >> 60))
    {
      std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](v10 >> 4);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a2 + 10);
  LODWORD(this[7].__r_.__value_.__r.__words[1]) = *(a2 + 44);
  *&this[6].__r_.__value_.__r.__words[2] = v11;
  return this;
}

void sub_1DDFD9C3C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::SoundStage::SoundStageParameters::~SoundStageParameters(AUSM::SoundStage::SoundStageParameters *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<AUSMChannelParameters>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
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

void std::allocator_traits<std::allocator<AUSM::SoundStage::SoundStageParameters>>::destroy[abi:ne200100]<AUSM::SoundStage::SoundStageParameters,void,0>(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 40) = v5;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    v6 = *a1;

    operator delete(v6);
  }
}

uint64_t std::__split_buffer<AUSM::SoundStage::SoundStageParameters>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 184;
    std::allocator_traits<std::allocator<AUSM::SoundStage::SoundStageParameters>>::destroy[abi:ne200100]<AUSM::SoundStage::SoundStageParameters,void,0>(v3 - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<AUSMChannelParameters>::__init_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AUSMChannelParameters>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDFD9F30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::SoundStage::SoundStage(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 12));
  *(a1 + 136) = 0u;
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 40;
  *(a1 + 168) = 0;
  *(a1 + 48) = a1 + 40;
  v6 = (a1 + 200);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 200), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 216) = *(a3 + 2);
    *v6 = v7;
  }

  *(a1 + 224) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 376) = xmmword_1DE097D00;
  *(a1 + 392) = xmmword_1DE09E610;
  *(a1 + 408) = 0;
  *(a1 + 412) = xmmword_1DE09E620;
  *(a1 + 428) = xmmword_1DE097D00;
  *(a1 + 444) = 1065353216;
  *(a1 + 448) = 0x3F80000000000000;
  applesauce::CF::StringRef::from_get(&cf, @"Neutral");
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(&__p, cf);
  v8 = AUSM::SoundStage::setWarpingParameters(a1, 5, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((v8 & 1) == 0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v11 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v12 = a1 + 200;
      if (*(a1 + 223) < 0)
      {
        v12 = *v6;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v12;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = "SoundStage";
      _os_log_error_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to initialize SoundStage.", &__p, 0x16u);
    }

    __assert_rtn("SoundStage", "AUSMSoundStage.cpp", 230, "result");
  }

  return a1;
}

void sub_1DDFDA1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::vector<AUSM::SoundStage::SoundStageParameters>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v19 = v16[14];
  if (v19)
  {
    v16[15] = v19;
    operator delete(v19);
  }

  v20 = v16[11];
  if (v20)
  {
    v16[12] = v20;
    operator delete(v20);
  }

  v21 = v16[8];
  if (v21)
  {
    v16[9] = v21;
    operator delete(v21);
  }

  CDelaunayTriangles3D::~CDelaunayTriangles3D(v17);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDFDA3BC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDFDA4A0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AUSM::SoundStage::setAllSoundStages(AUSM::SoundStage *this, CFArrayRef *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    v5 = Count;
    v6 = *a2;
    if (*a2)
    {
      v7 = CFArrayGetCount(*a2);
      if (v5)
      {
LABEL_4:
        v8 = 0;
        v9 = 0;
        v53 = (this + 200);
        while (1)
        {
          if (v2 == v6 && v9 == v7)
          {
            return v8 & 1;
          }

          applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v59, v2, v9);
          if (!v59)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          v10 = applesauce::CF::details::at_key<__CFString const*&>(v59, AUSM::kSoundStageLabelKey);
          if (v10)
          {
            v11 = v10;
            CFRetain(v10);
            v12 = CFGetTypeID(v11);
            if (v12 == CFStringGetTypeID())
            {
              CFRetain(v11);
              theString1 = v11;
              CFRelease(v11);
              if (CFStringCompare(v11, @"Small", 0))
              {
                v13 = theString1;
                if (CFStringCompare(theString1, @"Medium", 0))
                {
                  if (CFStringCompare(v13, @"Large", 0))
                  {
                    if (CFStringCompare(v13, @"AIVPortal", 0))
                    {
                      if (CFStringCompare(v13, @"Neutral", 0))
                      {
                        if (!v13)
                        {
                          goto LABEL_68;
                        }

                        goto LABEL_67;
                      }

                      v14 = 5;
                    }

                    else
                    {
                      v14 = 4;
                    }
                  }

                  else
                  {
                    v14 = 3;
                  }
                }

                else
                {
                  v14 = 2;
                }
              }

              else
              {
                v14 = 1;
              }

              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v15 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
              {
                v38 = this + 200;
                if (*(this + 223) < 0)
                {
                  v38 = *v53;
                }

                LODWORD(cf.__r_.__value_.__l.__data_) = 136315650;
                *(cf.__r_.__value_.__r.__words + 4) = v38;
                WORD2(cf.__r_.__value_.__r.__words[1]) = 2080;
                *(&cf.__r_.__value_.__r.__words[1] + 6) = "setAllSoundStages";
                HIWORD(cf.__r_.__value_.__r.__words[2]) = 2112;
                v61 = theString1;
                _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] Parsing SoundStage %@ dictionary", &cf, 0x20u);
              }

              if (!v59)
              {
                v50 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v50, "Could not construct");
              }

              applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v59, AUSM::kWarpingParametersKey);
              if (cf.__r_.__value_.__s.__data_[8] == 1 && (v16 = cf.__r_.__value_.__r.__words[0]) != 0)
              {
                CFRetain(cf.__r_.__value_.__l.__data_);
                theArray = v16;
                CFRelease(v16);
                if (CFArrayGetCount(v16))
                {
                  memset(__p, 0, sizeof(__p));
                  v17 = theArray;
                  if (theArray)
                  {
                    v18 = CFArrayGetCount(theArray);
                    v19 = CFArrayGetCount(v17);
                    if (v18)
                    {
                      v20 = v19;
                      for (i = 0; i != v18; ++i)
                      {
                        if (v20 == i)
                        {
                          break;
                        }

                        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v55, v17, i);
                        cf.__r_.__value_.__r.__words[2] = 0;
                        v61 = 0xFFFFFFFF00000001;
                        if (!v55)
                        {
                          v44 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v44, "Could not construct");
                        }

                        v22 = applesauce::CF::details::at_key<__CFString const*&>(v55, kPresetKeyChannelLabel);
                        if (!v22)
                        {
                          v43 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v43, "Could not find item");
                        }

                        HIDWORD(v61) = applesauce::CF::convert_to<unsigned int,0>(v22);
                        if (!v55)
                        {
                          v42 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v42, "Could not construct");
                        }

                        LODWORD(cf.__r_.__value_.__l.__data_) = applesauce::CF::details::find_at_key<float,__CFString const*&>(v55, kPresetKeyAzimuth);
                        if (!v55)
                        {
                          v49 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v49, "Could not construct");
                        }

                        HIDWORD(cf.__r_.__value_.__r.__words[0]) = applesauce::CF::details::find_at_key<float,__CFString const*&>(v55, kPresetKeyElevation);
                        if (!v55)
                        {
                          v48 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v48, "Could not construct");
                        }

                        LODWORD(cf.__r_.__value_.__r.__words[1]) = applesauce::CF::details::find_at_key<float,__CFString const*&>(v55, kPresetKeyDistance);
                        if (!v55)
                        {
                          v47 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v47, "Could not construct");
                        }

                        HIDWORD(cf.__r_.__value_.__r.__words[1]) = applesauce::CF::details::find_at_key<float,__CFString const*&>(v55, kPresetKeyGain);
                        if (!v55)
                        {
                          v46 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v46, "Could not construct");
                        }

                        v23 = applesauce::CF::details::at_key<__CFString const*&>(v55, kPresetKeyDRRAdjustment);
                        if (v23)
                        {
                          v24 = applesauce::CF::convert_as<float,0>(v23);
                          if (HIDWORD(v24))
                          {
                            LODWORD(cf.__r_.__value_.__r.__words[2]) = v24;
                          }
                        }

                        if (!v55)
                        {
                          v45 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v45, "Could not construct");
                        }

                        v25 = applesauce::CF::details::at_key<__CFString const*&>(v55, kPresetKeyDelay);
                        if (v25)
                        {
                          v26 = applesauce::CF::convert_as<float,0>(v25);
                          if (HIDWORD(v26))
                          {
                            HIDWORD(cf.__r_.__value_.__r.__words[2]) = v26;
                          }
                        }

                        std::vector<AUSMChannelParameters>::push_back[abi:ne200100](__p, &cf);
                        if (v55)
                        {
                          CFRelease(v55);
                        }
                      }
                    }
                  }

                  if (!theString1)
                  {
                    v51 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v51, "Could not construct");
                  }

                  applesauce::CF::convert_to<std::string,0>(&cf, theString1);
                  v8 = AUSM::SoundStage::setWarpingParameters(this, v14, __p, &cf);
                  if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(cf.__r_.__value_.__l.__data_);
                  }

                  v27 = *(this + 21);
                  v28 = *(this + 22);
                  v29 = v28 - v27;
                  if (v28 != v27)
                  {
                    v30 = 0;
                    v31 = 0;
                    v32 = 0xD37A6F4DE9BD37A7 * (v29 >> 3);
                    while (*(v27 + 184 * v30 + 24) != v14)
                    {
                      v30 = ++v31;
                      if (v32 <= v31)
                      {
                        goto LABEL_110;
                      }
                    }

                    if (!v59)
                    {
                      goto LABEL_132;
                    }

                    v34 = v27 + 184 * v31 + 164;
                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kUsePresentationDistanceKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      *v34 = applesauce::CF::details::find_at_key<BOOL,__CFString const*&>(v59, AUSM::kUsePresentationDistanceKey);
                    }

                    if (!v59)
                    {
                      goto LABEL_132;
                    }

                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kAllowHeadLockingKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      *(v34 + 1) = applesauce::CF::details::find_at_key<BOOL,__CFString const*&>(v59, AUSM::kAllowHeadLockingKey);
                    }

                    if (!v59)
                    {
                      goto LABEL_132;
                    }

                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kAllowInternalizedKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      *(v34 + 2) = applesauce::CF::details::find_at_key<BOOL,__CFString const*&>(v59, AUSM::kAllowInternalizedKey);
                    }

                    if (!v59)
                    {
                      goto LABEL_132;
                    }

                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kAllowTranslationInAmbienceBedKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      *(v34 + 3) = applesauce::CF::details::find_at_key<BOOL,__CFString const*&>(v59, AUSM::kAllowTranslationInAmbienceBedKey);
                    }

                    if (!v59)
                    {
                      goto LABEL_132;
                    }

                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kForceEnablePostProcReverbKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      *(v34 + 4) = applesauce::CF::details::find_at_key<BOOL,__CFString const*&>(v59, AUSM::kForceEnablePostProcReverbKey);
                    }

                    if (!v59)
                    {
                      goto LABEL_132;
                    }

                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kUseRotationMatrixWithOBHDKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      *(v34 + 5) = applesauce::CF::details::find_at_key<BOOL,__CFString const*&>(v59, AUSM::kUseRotationMatrixWithOBHDKey);
                    }

                    if (!v59)
                    {
                      goto LABEL_132;
                    }

                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kOverallGainKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      *(v34 + 8) = applesauce::CF::details::find_at_key<float,__CFString const*&>(v59, AUSM::kOverallGainKey);
                    }

                    if (!v59)
                    {
LABEL_132:
                      v52 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v52, "Could not construct");
                    }

                    if (applesauce::CF::details::has_key<__CFString const*&>(v59, AUSM::kDistanceCompressionKey))
                    {
                      if (!v59)
                      {
                        goto LABEL_132;
                      }

                      v35 = applesauce::CF::details::find_at_key<float,__CFString const*&>(v59, AUSM::kDistanceCompressionKey);
                      if (v35 <= 1.0)
                      {
                        v36 = v35;
                      }

                      else
                      {
                        v36 = 1.0;
                      }

                      if (v35 >= 0.0)
                      {
                        v37 = v36;
                      }

                      else
                      {
                        v37 = 0.0;
                      }

                      *(v34 + 12) = v37;
                    }
                  }

LABEL_110:
                  if (__p[0])
                  {
                    operator delete(__p[0]);
                  }

LABEL_64:
                  if (theArray)
                  {
                    CFRelease(theArray);
                  }

                  v13 = theString1;
                  if (!theString1)
                  {
                    goto LABEL_68;
                  }

LABEL_67:
                  CFRelease(v13);
                  goto LABEL_68;
                }
              }

              else
              {
                theArray = 0;
              }

              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v33 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                v39 = this + 200;
                if (*(this + 223) < 0)
                {
                  v39 = *v53;
                }

                LODWORD(cf.__r_.__value_.__l.__data_) = 136315650;
                *(cf.__r_.__value_.__r.__words + 4) = v39;
                WORD2(cf.__r_.__value_.__r.__words[1]) = 2080;
                *(&cf.__r_.__value_.__r.__words[1] + 6) = "setAllSoundStages";
                HIWORD(cf.__r_.__value_.__r.__words[2]) = 2112;
                v61 = theString1;
                _os_log_error_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to extract SoundStage preset: %@", &cf, 0x20u);
              }

              goto LABEL_64;
            }

            CFRelease(v11);
          }

          theString1 = 0;
LABEL_68:
          if (v59)
          {
            CFRelease(v59);
          }

          if (++v9 == v5)
          {
            return v8 & 1;
          }
        }
      }
    }

    else
    {
      v7 = 0;
      if (Count)
      {
        goto LABEL_4;
      }
    }
  }

  v8 = 0;
  return v8 & 1;
}

void sub_1DDFDB0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, uint64_t a17, const void *a18, const void *a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a18);
  applesauce::CF::StringRef::~StringRef(&a19);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a20);
  _Unwind_Resume(a1);
}

pthread_t AUSM::SoundStage::getWarpingParameterArray(AUSM::SoundStage *this, uint64_t a2, int a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
  v6 = *(a2 + 168);
  v7 = *(a2 + 176) - v6;
  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0xD37A6F4DE9BD37A7 * (v7 >> 3);
  while (*(v6 + 184 * v8 + 24) != a3)
  {
    v8 = ++v9;
    if (v10 <= v9)
    {
      goto LABEL_32;
    }
  }

  if (v10 > v9)
  {
    v21 = this;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v12 = *(a2 + 168) + 184 * v9;
    v14 = *(v12 + 32);
    for (i = *(v12 + 40); v14 != i; v14 += 8)
    {
      applesauce::CF::StringRef::from_get(&v28, kPresetKeyAzimuth);
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(v30, v28, v14);
      applesauce::CF::StringRef::from_get(&v27, kPresetKeyElevation);
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v31, v27, v14 + 1);
      applesauce::CF::StringRef::from_get(&v26, kPresetKeyDistance);
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v32, v26, v14 + 2);
      applesauce::CF::StringRef::from_get(&v25, kPresetKeyDRRAdjustment);
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v33, v25, v14 + 4);
      applesauce::CF::StringRef::from_get(&v24, kPresetKeyGain);
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v34, v24, v14 + 3);
      applesauce::CF::StringRef::from_get(&v23, kPresetKeyDelay);
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v35, v23, v14 + 5);
      applesauce::CF::StringRef::from_get(&cf, kPresetKeyChannelLabel);
      applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(v36, cf, v14 + 7);
      v29[0] = v30;
      v29[1] = 7;
      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v29);
      for (j = 0; j != -14; j -= 2)
      {
        v17 = v36[j + 1];
        if (v17)
        {
          CFRelease(v17);
        }

        v18 = v36[j];
        if (v18)
        {
          CFRelease(v18);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      CFArrayAppendValue(Mutable, CFDictionaryRef);
      CFRelease(CFDictionaryRef);
    }

    if (Mutable)
    {
      CFRetain(Mutable);
      v19 = CFGetTypeID(Mutable);
      if (v19 == CFArrayGetTypeID())
      {
        *v21 = Mutable;
      }

      else
      {
        *v21 = 0;
        CFRelease(Mutable);
      }

      CFRelease(Mutable);
    }

    else
    {
      *v21 = 0;
    }
  }

  else
  {
LABEL_32:
    *this = 0;
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
}

void sub_1DDFDB5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, applesauce::CF::TypeRefPair *a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

pthread_t AUSM::SoundStage::getWarpingParameterDictionary(AUSM::SoundStage *this, uint64_t a2, int a3)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
  v6 = *(a2 + 168);
  v7 = *(a2 + 176);
  v8 = v7 - v6;
  if (v7 == v6)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
  while (*(v6 + 184 * v9 + 24) != a3)
  {
    v9 = ++v10;
    if (v11 <= v10)
    {
      goto LABEL_14;
    }
  }

  if (v11 <= v10)
  {
LABEL_14:
    *this = 0;
  }

  else
  {
    AUSM::SoundStage::RenderingParameters::getMutableDictionary(&theDict, v6 + 184 * v10 + 164);
    applesauce::CF::StringRef::from_get(&value, off_1E8670FB8[a3 - 1]);
    if (value)
    {
      CFDictionarySetValue(theDict, AUSM::kSoundStageLabelKey, value);
      if (value)
      {
        CFRelease(value);
      }
    }

    AUSM::SoundStage::getWarpingParameterArray(&value, a2, a3);
    v12 = value;
    CFDictionarySetValue(theDict, AUSM::kWarpingParametersKey, value);
    applesauce::CF::DictionaryRef::from_get(this, theDict);
    if (v12)
    {
      CFRelease(v12);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
}

void sub_1DDFDB8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a10);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v10);
  _Unwind_Resume(a1);
}

pthread_t AUSM::SoundStage::getWarpingParameterVector(AUSM::SoundStage *this, uint64_t a2, int a3)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
  v6 = *(a2 + 168);
  v7 = *(a2 + 176);
  v8 = v7 - v6;
  if (v7 == v6)
  {
    goto LABEL_8;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
  while (*(v6 + 184 * v9 + 24) != a3)
  {
    v9 = ++v10;
    if (v11 <= v10)
    {
      goto LABEL_8;
    }
  }

  if (v11 <= v10)
  {
LABEL_8:
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    std::vector<AUSMChannelParameters>::__init_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(this, *(v6 + 184 * v10 + 32), *(v6 + 184 * v10 + 40), (*(v6 + 184 * v10 + 40) - *(v6 + 184 * v10 + 32)) >> 5);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
}

__n128 AUSM::SoundStage::setParameters(uint64_t a1, int a2, uint64_t *a3, const std::string *a4, __n128 *a5)
{
  AUSM::SoundStage::setWarpingParameters(a1, a2, a3, a4);
  v9 = *(a1 + 168);
  v10 = *(a1 + 176);
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0xD37A6F4DE9BD37A7 * (v11 >> 3);
    while (*(v9 + 184 * v12 + 24) != a2)
    {
      v12 = ++v13;
      if (v14 <= v13)
      {
        return result;
      }
    }

    result = *a5;
    *(v9 + 184 * v13 + 164) = *a5;
  }

  return result;
}

pthread_t AUSM::SoundStage::initialize(AUSM::SoundStage *this, float a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this);
  *(this + 105) = a2;
  if (a2 <= 0.0)
  {
    __assert_rtn("initialize", "AUSMSoundStage.cpp", 852, "mSampleRate > 0.f");
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 28, *(this + 8), *(this + 9), (*(this + 9) - *(this + 8)) >> 2);
  v4 = *(this + 28);
  v5 = (*(this + 29) - v4) >> 2;
  if (v5 >= 3)
  {
    v6 = 5;
    v7 = 2;
    do
    {
      *(v4 + 4 * v7) = -*(v4 + 4 * v7);
      v7 = v6;
      v8 = v5 > v6;
      v6 += 3;
    }

    while (v8);
  }

  v9 = atomic_load(this + 102);
  v10 = *(this + 21);
  v11 = *(this + 22) - v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0xD37A6F4DE9BD37A7 * (v11 >> 3);
    do
    {
      if (*(v10 + 184 * v12 + 24) == v9)
      {
        v18 = v13 | 0x100000000;
        v19 = atomic_load(this + 102);
        atomic_store(v19, this + 100);
        goto LABEL_17;
      }

      v12 = ++v13;
    }

    while (v14 > v13);
    v15 = 0;
    v16 = 0;
    while (*(v10 + 184 * v15 + 24) != 5)
    {
      v15 = ++v16;
      if (v14 <= v16)
      {
        v17 = 0;
        v11 = 0;
        goto LABEL_16;
      }
    }

    v11 = v16;
    v17 = 0x100000000;
  }

  else
  {
    v17 = 0;
  }

LABEL_16:
  v18 = v11 | v17;
LABEL_17:
  if ((v18 & 0x100000000) == 0)
  {
    v29 = "soundStageToBeInitialized";
    v30 = 869;
    goto LABEL_38;
  }

  v20 = *(this + 31);
  *(this + 32) = v20;
  *(this + 35) = *(this + 34);
  *(this + 38) = *(this + 37);
  *(this + 41) = *(this + 40);
  v21 = v18;
  v22 = *(this + 21) + 184 * v18;
  v23 = *(v22 + 56);
  if (*(v22 + 64) == v23)
  {
    v26 = v20;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      std::vector<float>::push_back[abi:ne200100](this + 31, (v23 + 32 * v24 + 8));
      std::vector<float>::push_back[abi:ne200100](this + 34, (*(*(this + 21) + 184 * v21 + 56) + 32 * v24 + 12));
      std::vector<float>::push_back[abi:ne200100](this + 37, (*(*(this + 21) + 184 * v21 + 56) + 32 * v24 + 16));
      std::vector<float>::push_back[abi:ne200100](this + 40, (*(*(this + 21) + 184 * v21 + 56) + 32 * v24 + 20));
      v24 = v25;
      v22 = *(this + 21) + 184 * v21;
      v23 = *(v22 + 56);
      ++v25;
    }

    while (v24 < (*(v22 + 64) - v23) >> 5);
    v20 = *(this + 31);
    v26 = *(this + 32);
  }

  v27 = v26 - v20;
  if (v27 >> 2 != ((*(this + 29) - *(this + 28)) >> 2) / 3uLL)
  {
    v29 = "mSoundStageBasisDistances.size() == mSoundStageBasisVertices.size()/3";
    v30 = 882;
    goto LABEL_38;
  }

  if (*(this + 35) - *(this + 34) != v27)
  {
    v29 = "mSoundStageBasisGains.size() == mSoundStageBasisVertices.size()/3";
    v30 = 883;
    goto LABEL_38;
  }

  if (*(this + 38) - *(this + 37) != v27)
  {
    v29 = "mSoundStageBasisDRRs.size() == mSoundStageBasisVertices.size()/3";
    v30 = 884;
    goto LABEL_38;
  }

  if (*(this + 41) - *(this + 40) != v27)
  {
    v29 = "mSoundStageBasisDelays.size() == mSoundStageBasisVertices.size()/3";
    v30 = 885;
LABEL_38:
    __assert_rtn("initialize", "AUSMSoundStage.cpp", v30, v29);
  }

  if ((this + 344) != (v22 + 80))
  {
    std::vector<AUSMChannelParameters>::__assign_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(this + 43, *(v22 + 80), *(v22 + 88), (*(v22 + 88) - *(v22 + 80)) >> 5);
  }

  *(this + 104) = 1065353216;
  AUSM::SoundStage::incrementSoundStageVerticesAndGains(this, 1u);

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this);
}

uint64_t AUSM::SoundStage::incrementSoundStageVerticesAndGains(AUSM::SoundStage *this, unsigned int a2)
{
  v163 = *MEMORY[0x1E69E9840];
  v4 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this);
  v8 = v4;
  if (v4)
  {
    v10 = *(this + 21);
    v9 = *(this + 22);
    v11 = v9 - v10;
    if (v9 == v10)
    {
LABEL_6:
      __assert_rtn("incrementSoundStageVerticesAndGains", "AUSMSoundStage.cpp", 906, "neutralIndex");
    }

    v12 = 0;
    v13 = 0;
    v14 = 0xD37A6F4DE9BD37A7 * (v11 >> 3);
    while (*(v10 + 184 * v12 + 24) != 5)
    {
      v12 = ++v13;
      if (v14 <= v13)
      {
        goto LABEL_6;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = v13;
    while (*(v10 + 184 * v17 + 24) != *(this + 101))
    {
      v17 = ++v18;
      if (v14 <= v18)
      {
        v18 = v13;
        break;
      }
    }

    v20 = atomic_load(this + 100);
    v22 = *(this + 21);
    v21 = *(this + 22);
    v23 = v21 - v22;
    if (v21 == v22)
    {
LABEL_21:
      v27 = 0;
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0xD37A6F4DE9BD37A7 * (v23 >> 3);
      while (1)
      {
        v27 = *(v22 + 184 * v24 + 24) == v20;
        if (*(v22 + 184 * v24 + 24) == v20)
        {
          break;
        }

        v24 = ++v25;
        if (v26 <= v25)
        {
          goto LABEL_21;
        }
      }
    }

    v28 = *(this + 103);
    v29 = 1.0;
    if (v28 > 0.0)
    {
      v29 = a2 / (v28 * *(this + 105));
    }

    v30 = v29 + *(this + 104);
    *(this + 104) = v30;
    if (v30 <= 1.0)
    {
      *v7.i32 = v30;
    }

    else
    {
      *v7.i32 = 1.0;
    }

    if (v27)
    {
      v31 = v25;
    }

    else
    {
      v31 = v13;
    }

    v32 = *(v22 + 184 * v13 + 136);
    v33 = *(v22 + 184 * v13 + 144);
    v34 = v18;
    v155 = v7;
    if (v33 != v32)
    {
      v140 = v13;
      v141 = v18;
      v144 = v4;
      v35 = 0;
      v36 = 0;
      v37 = v22 + 184 * v18;
      v145 = *(v37 + 136);
      v142 = v31;
      v143 = v22;
      v38 = v22 + 184 * v31;
      v153 = *(v38 + 136);
      v154 = (v33 - v32) >> 4;
      v149 = 1.0 - *v7.i32;
      v39 = *(this + 28);
      v40 = *(this + 31);
      v41 = *(this + 34);
      v42 = *(this + 37);
      v43 = *(this + 40);
      v44 = (*(v38 + 56) + 12);
      v45 = (*(v37 + 56) + 12);
      do
      {
        v47 = *(v45 - 1);
        v46 = *v45;
        v48 = *(v153 + 16 * v36);
        v50 = v45[1];
        v49 = v45[2];
        v51 = *(v44 - 1);
        v156 = v44[1];
        v157 = *v44;
        v158 = v44[2];
        if (*v7.i32 != 1.0)
        {
          v52 = *(v145 + 16 * v36);
          v53 = vmulq_f32(v52, v48);
          v54 = vextq_s8(v53, v53, 8uLL);
          *v53.f32 = vadd_f32(*v53.f32, *v54.f32);
          v53.f32[0] = vaddv_f32(*v53.f32);
          v54.i64[0] = 0;
          v55 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v53, v54)), 0), vnegq_f32(v48), v48);
          v56 = vsubq_f32(v52, v55);
          v57 = vmulq_f32(v56, v56);
          v150 = v52;
          v148 = v55;
          v58 = vaddq_f32(v52, v55);
          v59 = vmulq_f32(v58, v58);
          v60 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)))));
          v61 = v60 + v60;
          v62 = 1.0;
          v63 = 1.0;
          if ((v60 + v60) != 0.0)
          {
            v63 = sinf(v60 + v60) / v61;
          }

          if ((v149 * v61) != 0.0)
          {
            v146 = v63;
            v64 = sinf(v149 * v61);
            v63 = v146;
            v62 = v64 / (v149 * v61);
          }

          v65 = *v155.i32;
          v66 = *v155.i32 * v61;
          v67 = 1.0;
          if (v66 != 0.0)
          {
            v147 = v63;
            v68 = sinf(v66);
            v63 = v147;
            v65 = *v155.i32;
            v67 = v68 / v66;
          }

          v69 = v63;
          v70 = vrecpe_f32(LODWORD(v63));
          v71 = vmul_f32(v70, vrecps_f32(LODWORD(v69), v70));
          v72 = vmul_f32(v71, vrecps_f32(LODWORD(v69), v71)).f32[0];
          v71.f32[0] = v149 * (v72 * v62);
          v73 = vmlaq_f32(vmulq_n_f32(v148, v65 * (v72 * v67)), v150, vdupq_lane_s32(v71, 0));
          v74 = vmulq_f32(v73, v73);
          v75 = vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
          if (vaddv_f32(v75) == 0.0)
          {
            v48 = xmmword_1DE097CE0;
          }

          else
          {
            v76 = vadd_f32(v75, vdup_lane_s32(v75, 1)).u32[0];
            v77 = vrsqrte_f32(v76);
            v78 = vmul_f32(v77, vrsqrts_f32(v76, vmul_f32(v77, v77)));
            v48 = vmulq_n_f32(v73, vmul_f32(v78, vrsqrts_f32(v76, vmul_f32(v78, v78))).f32[0]);
          }
        }

        v79 = vmulq_f32(v48, v48);
        v80 = vadd_f32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
        v81 = vaddv_f32(v80);
        v82 = 0.0;
        v83 = 0.0;
        if (sqrtf(v81) >= 0.0001)
        {
          _Q1 = xmmword_1DE097CE0;
          if (v81 != 0.0)
          {
            v85 = vadd_f32(v80, vdup_lane_s32(v80, 1)).u32[0];
            v86 = vrsqrte_f32(v85);
            v87 = vmul_f32(v86, vrsqrts_f32(v85, vmul_f32(v86, v86)));
            _Q1 = vmulq_n_f32(v48, vmul_f32(v87, vrsqrts_f32(v85, vmul_f32(v87, v87))).f32[0]);
          }

          _S9 = _Q1.i32[2];
          _S10 = _Q1.i32[1];
          __asm { FMLA            S0, S9, V1.S[3] }

          _V2.S[1] = _Q1.i32[1];
          v152 = _Q1.i32[3];
          __asm { FMLA            S1, S10, V2.S[1] }

          v97 = atan2f(_S0 + _S0, (_S1 * -2.0) + 1.0);
          _V1.S[3] = v152;
          __asm { FMLA            S0, S10, V1.S[3] }

          *v100.i32 = _S0 + _S0;
          v151 = v100;
          if (fabsf(*v100.i32) >= nexttowardf(1.0, 0.0))
          {
            v101.i32[0] = 1119092736;
            v102.i64[0] = 0x8000000080000000;
            v102.i64[1] = 0x8000000080000000;
            LODWORD(v83) = vbslq_s8(v102, v101, v151).u32[0];
          }

          else
          {
            v83 = asinf(*v151.i32) * 57.296;
          }

          v82 = v97 * 57.296;
        }

        v103 = v83 * 0.017453;
        v104 = __sincosf_stret(v82 * 0.017453);
        v105 = __sincosf_stret(v103);
        *(v39 + 4 * v35) = v104.__cosval * v105.__cosval;
        *(v39 + 4 * (v35 + 1)) = v104.__sinval * v105.__cosval;
        *(v39 + 4 * (v35 + 2)) = -v105.__sinval;
        v7 = v155;
        *(v40 + 4 * v36) = v47 + (*v155.i32 * (v51 - v47));
        *(v41 + 4 * v36) = v46 + (*v155.i32 * (v157 - v46));
        *(v42 + 4 * v36) = v50 + (*v155.i32 * (v156 - v50));
        *(v43 + 4 * v36++) = v49 + (*v155.i32 * (v158 - v49));
        v35 += 3;
        v44 += 8;
        v45 += 8;
      }

      while (v154 > v36);
      v28 = *(this + 103);
      v8 = v144;
      v31 = v142;
      v22 = v143;
      v19 = v140;
      v34 = v141;
    }

    v106 = v22 + 184 * v34;
    v107 = v22 + 184 * v31;
    v108 = vdupq_lane_s32(v7, 0);
    v5.i32[0] = *(v106 + 164);
    v6.i32[0] = *(v107 + 164);
    __asm { FMOV            V4.4S, #1.0 }

    v110 = vandq_s8(_Q4, vcltzq_s32(vshlq_n_s32(vmovl_u16(*&vmovl_u8(v5)), 0x1FuLL)));
    v111 = vandq_s8(_Q4, vcltzq_s32(vshlq_n_s32(vmovl_u16(*&vmovl_u8(v6)), 0x1FuLL)));
    *(this + 424) = vbslq_s8(vceqq_f32(v110, v111), v110, vmlaq_f32(v110, vsubq_f32(v111, v110), vbicq_s8(v108, vcltzq_f32(v108))));
    *(this + 56) = vrev64_s32(vbsl_s8(vceq_f32(*(v106 + 172), *(v107 + 172)), *(v106 + 172), vmla_f32(*(v106 + 172), vsub_f32(*(v107 + 172), *(v106 + 172)), vbic_s8(*v108.f32, vcltz_f32(*v108.f32)))));
    if (*(v106 + 169))
    {
      v112 = 1;
    }

    else
    {
      v112 = 2;
    }

    if (*(v106 + 169))
    {
      v113 = 1.0;
    }

    else
    {
      v113 = 0.0;
    }

    if (*(v107 + 169))
    {
      v114 = 1.0;
    }

    else
    {
      v114 = 0.0;
    }

    *(this + 111) = AUSM::SoundStage::TransitionParameters::transition(v112, v113, v114, *v7.i32, v28);
    if (*(v106 + 168))
    {
      v115 = 3;
    }

    else
    {
      v115 = 4;
    }

    if (*(v106 + 168))
    {
      v116 = 1.0;
    }

    else
    {
      v116 = 0.0;
    }

    if (*(v107 + 168))
    {
      v117 = 1.0;
    }

    else
    {
      v117 = 0.0;
    }

    *(this + 110) = AUSM::SoundStage::TransitionParameters::transition(v115, v116, v117, *v155.i32, v28);
    v118 = v22 + 184 * v19;
    v119 = *(v118 + 80);
    v120 = *(v118 + 88);
    if (v119 == v120)
    {
      v126 = vdupq_lane_s32(v155, 0);
    }

    else
    {
      v121 = 0;
      v122 = 0;
      v123 = (v120 - v119) >> 5;
      v124 = *(v22 + 184 * v34 + 80);
      v125 = *(v22 + 184 * v31 + 80);
      v126 = vdupq_lane_s32(v155, 0);
      do
      {
        v127 = v124 + 32 * v121;
        v128 = v125 + 32 * v121;
        v129 = *(v127 + 28);
        if (v129 != *(v128 + 28))
        {
          __assert_rtn("incrementSoundStageVerticesAndGains", "AUSMSoundStage.cpp", 964, "loc_start_lfe_params.channelLabel == loc_target_lfe_params.channelLabel");
        }

        v130 = *(this + 43);
        v131 = *(this + 44) - v130;
        if (v131)
        {
          v132 = 0;
          v133 = 0;
          v134 = v131 >> 5;
          while (*(v130 + 32 * v132 + 28) != v129)
          {
            v132 = ++v133;
            if (v134 <= v133)
            {
              goto LABEL_78;
            }
          }

          v135 = v130 + 32 * v133;
          *v135 = vmlaq_f32(*v127, vsubq_f32(*v128, *v127), v126);
          *(v135 + 16) = vmla_f32(*(v127 + 16), vsub_f32(*(v128 + 16), *(v127 + 16)), *v126.f32);
        }

LABEL_78:
        v121 = ++v122;
      }

      while (v123 > v122);
    }

    v136 = v22 + 184 * v34;
    v137 = v22 + 184 * v31;
    *(this + 23) = vmlaq_f32(*(v136 + 104), vsubq_f32(*(v137 + 104), *(v136 + 104)), v126);
    *(this + 48) = vmla_f32(*(v136 + 120), vsub_f32(*(v137 + 120), *(v136 + 120)), *v126.f32);
    if (*(this + 104) >= 1.0)
    {
      *(this + 104) = 0;
      v138 = atomic_load(this + 100);
      *(this + 101) = v138;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v15 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v16 = (this + 200);
      if (*(this + 223) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315394;
      v160 = v16;
      v161 = 2080;
      v162 = "incrementSoundStageVerticesAndGains";
      _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not acquire the lock. Vertices and gains not incremented.", buf, 0x16u);
    }
  }

  return v8;
}

uint64_t AUSM::SoundStage::warp(uint64_t a1, float32x4_t *a2, float *a3, float *a4, unsigned int a5, float a6)
{
  v123 = *MEMORY[0x1E69E9840];
  v11 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1);
  if (v11)
  {
    v12 = *(a1 + 168);
    v13 = *(a1 + 176) - v12;
    if (!v13)
    {
LABEL_6:
      __assert_rtn("warp", "AUSMSoundStage.cpp", 1009, "neutralIndex");
    }

    v14 = 0;
    v15 = 0xD37A6F4DE9BD37A7 * (v13 >> 3);
    v16 = 1;
    while (*(v12 + 184 * v14 + 24) != 5)
    {
      v14 = v16;
      if (v15 <= v16++)
      {
        goto LABEL_6;
      }
    }

    if (a5 <= 0x3E && ((0x4000002000000010uLL >> a5) & 1) != 0)
    {
      v20 = *(a1 + 344);
      v21 = *(a1 + 352);
      if (v20 == v21)
      {
LABEL_76:
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1);
        return v11;
      }

      v22 = 0;
      v23 = 0;
      v24 = (v21 - v20) >> 5;
      while (*(v20 + 32 * v22 + 28) != a5)
      {
        v22 = ++v23;
        if (v24 <= v23)
        {
          goto LABEL_76;
        }
      }

      v32 = v23;
      v99 = *a2;
      v33 = *a3;
      v34 = *a4;
      v35 = (v20 + 32 * v23);
      v103 = v35[2];
      v36 = v35[1] * 0.017453;
      v37 = __sincosf_stret(*v35 * 0.017453);
      v38 = __sincosf_stret(v36);
      *v39.f32 = vmul_n_f32(__PAIR64__(LODWORD(v37.__sinval), LODWORD(v37.__cosval)), v38.__cosval);
      v39.f32[2] = -v38.__sinval;
      *a2 = vmulq_n_f32(v39, v103);
      v40 = *(a1 + 344) + 32 * v32;
      *a3 = *(v40 + 12) * *a3;
      *a4 = *a4 * __exp10f(*(v40 + 16) / 20.0);
      if (a6 == 0.0)
      {
LABEL_75:
        *a3 = *(a1 + 452) * *a3;
        goto LABEL_76;
      }

      v41 = 1.0 - a6;
      *a2 = vmlaq_n_f32(vmulq_n_f32(v99, a6), *a2, 1.0 - a6);
      *a3 = (v33 * a6) + ((1.0 - a6) * *a3);
      v42 = *a4;
      v43 = v34 * a6;
LABEL_74:
      *a4 = v43 + (v41 * v42);
      goto LABEL_75;
    }

    v25 = *a2;
    v26 = *a3;
    v27 = *a4;
    v28 = *(a1 + 448);
    if (v28 <= 0.0)
    {
      v31 = *a2;
    }

    else
    {
      v29 = vmulq_f32(v25, v25);
      v30 = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
      if (v30 <= 0.001)
      {
        v31 = *(a1 + 448);
      }

      else
      {
        v31 = vmulq_n_f32(v25, (v28 + ((1.0 - v28) * v30)) / v30);
      }

      *a2 = v31;
    }

    v44 = vmulq_f32(v31, v31);
    v45 = sqrtf(v44.f32[2] + vaddv_f32(*v44.f32));
    v46 = 0.0;
    v47 = 1.0;
    if (v45 <= 0.001)
    {
LABEL_70:
      v105 = v25;
      if (v45 < 1.0)
      {
        v102 = *(a1 + 376);
        v94 = *(a1 + 372) * 0.017453;
        v100 = v31;
        v95 = __sincosf_stret(*(a1 + 368) * 0.017453);
        v96 = __sincosf_stret(v94);
        *v97.f32 = vmul_n_f32(__PAIR64__(LODWORD(v95.__sinval), LODWORD(v95.__cosval)), v96.__cosval);
        v97.f32[2] = -v96.__sinval;
        *a2 = vmlaq_n_f32(v100, vmulq_n_f32(v97, v102), 1.0 - v45);
        v47 = ((1.0 - v45) * *(a1 + 380)) + (v45 * v47);
        v46 = ((1.0 - v45) * *(a1 + 384)) + (v45 * v46);
      }

      *a3 = v47 * *a3;
      *a4 = __exp10f(v46 / 20.0) * *a4;
      if (a6 == 0.0)
      {
        goto LABEL_75;
      }

      v41 = 1.0 - a6;
      *a2 = vmlaq_n_f32(vmulq_n_f32(v105, a6), *a2, 1.0 - a6);
      *a3 = (v26 * a6) + ((1.0 - a6) * *a3);
      v42 = *a4;
      v43 = v27 * a6;
      goto LABEL_74;
    }

    if (*(a1 + 168) == *(a1 + 176))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v67 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_59;
      }

      v68 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v68 = *v68;
      }

      *buf = 136315394;
      *&buf[4] = v68;
      v115 = 2080;
      v116 = "triangleLookup";
      v63 = "[%s|%s] SoundStages not initialized";
      v65 = v67;
      v66 = 22;
    }

    else
    {
      v104 = v25;
      v48 = vmulq_f32(v31, v31);
      *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
      *v48.f32 = vrsqrte_f32(v49);
      *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
      v50 = vmulq_n_f32(v31, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
      v51 = *v50.i32;
      v52 = vcvtq_f64_f32(*&vextq_s8(v50, v50, 4uLL));
      v53 = v52.f64[1];
      v101 = v52;
      subtriangle_containment = CDelaunayTriangles3D::find_subtriangle_containment(*(a1 + 160), *v50.i32, v52.f64[0], v52.f64[1]);
      if ((subtriangle_containment & 0x80000000) != 0 || (v55 = *(a1 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - v55) >> 3) <= subtriangle_containment))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v61 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        v64 = (a1 + 200);
        if (*(a1 + 223) < 0)
        {
          v64 = *v64;
        }

        *buf = 136316162;
        *&buf[4] = v64;
        v115 = 2080;
        v116 = "triangleLookup";
        v117 = 2048;
        v118 = v51;
        v119 = 2048;
        v120 = v101.f64[0];
        v121 = 2048;
        v122 = v53;
        v63 = "[%s|%s] Triangle containment not found for coordinates %f, %f, %f";
      }

      else
      {
        __B = v51;
        v113 = v101;
        v56 = v55 + 24 * subtriangle_containment;
        v57 = *(v56 + 8);
        if (v57 != v56)
        {
          while (1)
          {
            v58 = *(v57 + 16);
            *buf = 0;
            v59 = 9 * v58;
            vDSP_dotprD((*(a1 + 112) + 72 * v58), 1, &__B, 1, buf, 3uLL);
            if (*buf > -0.00000011920929)
            {
              __C = 0.0;
              vDSP_dotprD((*(a1 + 112) + 8 * v59 + 24), 1, &__B, 1, &__C, 3uLL);
              if (__C > -0.00000011920929)
              {
                v110 = 0.0;
                vDSP_dotprD((*(a1 + 112) + 8 * v59 + 48), 1, &__B, 1, &v110, 3uLL);
                if (v110 > -0.00000011920929)
                {
                  break;
                }
              }
            }

            v57 = *(v57 + 8);
            if (v57 == v56)
            {
              goto LABEL_37;
            }
          }

          v71 = 0;
          v72 = *(a1 + 88);
          v73 = *(v72 + 12 * v58);
          v74 = *(a1 + 224);
          v75 = (v74 + 12 * v73);
          v76 = 3 * v58 + 1;
          v77 = *(v72 + 4 * v76);
          v78 = 3 * v58 + 2;
          v79 = *(v72 + 4 * v78);
          v80 = (v74 + 12 * v77);
          v81 = (v74 + 12 * v79);
          v82 = *buf;
          v83 = __C;
          v107 = v82;
          v108 = v83;
          v84 = v110;
          v109 = v84;
          v85 = 0.0;
          do
          {
            v85 = v85 + fabsf(*(&v107 + v71));
            v71 += 4;
          }

          while (v71 != 12);
          *v60.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(*v80, v83), *v75, v82), *v81, v84);
          v86 = ((v80[1].f32[0] * v83) + (v82 * v75[1].f32[0])) + (v84 * v81[1].f32[0]);
          if (v85 > 0.0)
          {
            for (i = 0; i != 12; i += 4)
            {
              *(&v107 + i) = (1.0 / v85) * *(&v107 + i);
            }

            v82 = v107;
            v83 = v108;
            v84 = v109;
          }

          v60.f32[2] = v86;
          v88 = vmulq_f32(v60, v60);
          *&v89 = v88.f32[2] + vaddv_f32(*v88.f32);
          *v88.f32 = vrsqrte_f32(v89);
          *v88.f32 = vmul_f32(*v88.f32, vrsqrts_f32(v89, vmul_f32(*v88.f32, *v88.f32)));
          v31 = vmulq_n_f32(vmulq_n_f32(v60, vmul_f32(*v88.f32, vrsqrts_f32(v89, vmul_f32(*v88.f32, *v88.f32))).f32[0]), v45 * (((v83 * *(*(a1 + 248) + 4 * v77)) + (v82 * *(*(a1 + 248) + 4 * v73))) + (v84 * *(*(a1 + 248) + 4 * v79))));
          *a2 = v31;
          v90 = *(a1 + 88);
          v91 = *(v90 + 12 * v58);
          v92 = *(v90 + 4 * v76);
          v93 = *(v90 + 4 * v78);
          v47 = ((v83 * *(*(a1 + 272) + 4 * v92)) + (v82 * *(*(a1 + 272) + 4 * v91))) + (v84 * *(*(a1 + 272) + 4 * v93));
          v46 = ((v83 * *(*(a1 + 296) + 4 * v92)) + (v82 * *(*(a1 + 296) + 4 * v91))) + (v84 * *(*(a1 + 296) + 4 * v93));
          v25 = v104;
          goto LABEL_70;
        }

LABEL_37:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v61 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }

        v62 = (a1 + 200);
        if (*(a1 + 223) < 0)
        {
          v62 = *v62;
        }

        *buf = 136316162;
        *&buf[4] = v62;
        v115 = 2080;
        v116 = "triangleLookup";
        v117 = 2048;
        v118 = v51;
        v119 = 2048;
        v120 = v101.f64[0];
        v121 = 2048;
        v122 = v53;
        v63 = "[%s|%s] Triangle lookup failed for coordinates %f, %f, %f";
      }

      v65 = v61;
      v66 = 52;
    }

    _os_log_error_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_ERROR, v63, buf, v66);
LABEL_57:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

LABEL_59:
    v69 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v70 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v70 = *v70;
      }

      *buf = 136315394;
      *&buf[4] = v70;
      v115 = 2080;
      v116 = "warpNonLFE";
      _os_log_debug_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_DEBUG, "[%s|%s] Triangle lookup failed. Unable to complete SoundStage warping.", buf, 0x16u);
    }

    goto LABEL_76;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v18 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v19 = (a1 + 200);
    if (*(a1 + 223) < 0)
    {
      v19 = *v19;
    }

    *buf = 136315394;
    *&buf[4] = v19;
    v115 = 2080;
    v116 = "warp";
    _os_log_debug_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not acquire the lock. SoundStage warping not done.", buf, 0x16u);
  }

  return v11;
}

uint64_t AUSM::SoundStage::getPostProcReverbOverride(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    LODWORD(a2) = *(a1 + 404);
  }

  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  v4 = v3 - v2;
  if (v3 == v2)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xD37A6F4DE9BD37A7 * (v4 >> 3);
    while (*(v2 + 184 * v5 + 24) != a2)
    {
      v5 = ++v6;
      if (v7 <= v6)
      {
        goto LABEL_7;
      }
    }

    v8 = *(v2 + 184 * v6 + 168);
  }

  return v8 & 1;
}

uint64_t ParametricFilters::ParametricFilters(uint64_t a1, int a2, char a3, unsigned int a4, __int128 *a5, float a6)
{
  v64 = *MEMORY[0x1E69E9840];
  *a1 = a6;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 5;
  *(a1 + 16) = 0u;
  v59 = (a1 + 16);
  *(a1 + 64) = 0u;
  v10 = (a1 + 64);
  v11 = (a1 + 88);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a3;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  v12 = MEMORY[0x1E6958BA0];
  *(a1 + 128) = 0;
  *(a1 + 136) = v12;
  *(a1 + 144) = 0;
  *(a1 + 152) = v12;
  *(a1 + 160) = 0;
  v13 = a1 + 160;
  *(a1 + 168) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 172));
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 188));
  v14 = (a1 + 192);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 192), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 208) = *(a5 + 2);
    *v14 = v15;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v16 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v58 = a1 + 192;
    if (*(a1 + 215) < 0)
    {
      v58 = *v14;
    }

    *buf = 136315394;
    v61 = v58;
    v62 = 2080;
    v63 = "ParametricFilters";
    _os_log_debug_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "[%s|%s] Constructing", buf, 0x16u);
  }

  if (*a1 <= 0.0)
  {
    v17 = "mSampleRate > 0";
    v18 = 19;
    v19 = "ParametricFilters";
    goto LABEL_64;
  }

  v17 = "inNumChannels > 0 && inMaxStages > 0";
  v18 = 26;
  v19 = "initialize";
  if (!a2 || !a4)
  {
LABEL_64:
    __assert_rtn(v19, "ParametricFilters.cpp", v18, v17);
  }

  std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(a1 + 176, v13);
  *(a1 + 12) = a4;
  *(a1 + 4) = a2;
  v20 = a4;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 3);
  v24 = v20 - v23;
  if (v20 <= v23)
  {
    if (v20 >= v23)
    {
      goto LABEL_23;
    }

    v28 = v21 + 56 * v20;
  }

  else
  {
    v25 = *(a1 + 32);
    if (0x6DB6DB6DB6DB6DB7 * ((v25 - v22) >> 3) < v24)
    {
      v26 = 0x6DB6DB6DB6DB6DB7 * ((v25 - v21) >> 3);
      if (2 * v26 > v20)
      {
        v20 = 2 * v26;
      }

      if (v26 >= 0x249249249249249)
      {
        v27 = 0x492492492492492;
      }

      else
      {
        v27 = v20;
      }

      if (v27 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(a1 + 24), 56 * ((56 * v24 - 56) / 0x38) + 56);
    v28 = v22 + 56 * ((56 * v24 - 56) / 0x38) + 56;
  }

  *(a1 + 24) = v28;
LABEL_23:
  std::vector<unsigned long>::resize((a1 + 40), (5 * *(a1 + 12)));
  std::vector<std::vector<float>>::resize(v11, *(a1 + 4));
  std::vector<std::vector<float>>::resize(v10, *(a1 + 4));
  if (*(a1 + 4))
  {
    v30 = 0;
    v31 = 0;
    v32 = (2 * *(a1 + 12) + 2);
    do
    {
      v33 = *v11;
      *buf = 0;
      std::vector<float>::assign((v33 + v30), v32, buf, v29);
      v34 = *v10;
      *buf = 0;
      std::vector<float>::assign((v34 + v30), v32, buf, v35);
      ++v31;
      v30 += 24;
    }

    while (v31 < *(a1 + 4));
  }

  v36 = *(a1 + 12);
  if (v36)
  {
    v37 = *v59;
    v38 = (v36 + 15) & 0x1FFFFFFF0;
    v39 = xmmword_1DE095290;
    v40 = xmmword_1DE0952A0;
    v41 = xmmword_1DE0952B0;
    v42 = xmmword_1DE0952C0;
    v43 = xmmword_1DE0952D0;
    v44 = xmmword_1DE095220;
    v45 = xmmword_1DE095150;
    v46 = xmmword_1DE095160;
    v47 = vdupq_n_s64(v36 - 1);
    v48 = vdupq_n_s64(0x10uLL);
    do
    {
      v49 = vmovn_s64(vcgeq_u64(v47, v46));
      if (vuzp1_s8(vuzp1_s16(v49, *v39.i8), *v39.i8).u8[0])
      {
        v37[48] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v49, *&v39), *&v39).i8[1])
      {
        v37[104] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v47, *&v45))), *&v39).i8[2])
      {
        v37[160] = 0;
        v37[216] = 0;
      }

      v50 = vmovn_s64(vcgeq_u64(v47, v44));
      if (vuzp1_s8(*&v39, vuzp1_s16(v50, *&v39)).i32[1])
      {
        v37[272] = 0;
      }

      if (vuzp1_s8(*&v39, vuzp1_s16(v50, *&v39)).i8[5])
      {
        v37[328] = 0;
      }

      if (vuzp1_s8(*&v39, vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v47, *&v43)))).i8[6])
      {
        v37[384] = 0;
        v37[440] = 0;
      }

      v51 = vmovn_s64(vcgeq_u64(v47, v42));
      if (vuzp1_s8(vuzp1_s16(v51, *v39.i8), *v39.i8).u8[0])
      {
        v37[496] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v51, *&v39), *&v39).i8[1])
      {
        v37[552] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v47, *&v41))), *&v39).i8[2])
      {
        v37[608] = 0;
        v37[664] = 0;
      }

      v52 = vmovn_s64(vcgeq_u64(v47, v40));
      if (vuzp1_s8(*&v39, vuzp1_s16(v52, *&v39)).i32[1])
      {
        v37[720] = 0;
      }

      if (vuzp1_s8(*&v39, vuzp1_s16(v52, *&v39)).i8[5])
      {
        v37[776] = 0;
      }

      if (vuzp1_s8(*&v39, vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v47, *&v39)))).i8[6])
      {
        v37[832] = 0;
        v37[888] = 0;
      }

      v44 = vaddq_s64(v44, v48);
      v45 = vaddq_s64(v45, v48);
      v46 = vaddq_s64(v46, v48);
      v43 = vaddq_s64(v43, v48);
      v42 = vaddq_s64(v42, v48);
      v41 = vaddq_s64(v41, v48);
      v40 = vaddq_s64(v40, v48);
      v37 += 896;
      v39 = vaddq_s64(v39, v48);
      v38 -= 16;
    }

    while (v38);
  }

  else
  {
    v36 = 0;
  }

  atomic_store(0, (a1 + 116));
  atomic_store(0, (a1 + 120));
  Setup = vDSP_biquad_CreateSetup(*(a1 + 40), v36);
  v54 = *(a1 + 144);
  *(a1 + 144) = Setup;
  if (v54)
  {
    (*(a1 + 152))(v54);
  }

  v55 = vDSP_biquad_CreateSetup(*(a1 + 40), *(a1 + 12));
  v56 = *(a1 + 128);
  *(a1 + 128) = v55;
  if (v56)
  {
    (*(a1 + 136))(v56);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 176);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v13);
  return a1;
}

void sub_1DDFDD870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

pthread_t ParametricFilters::clear(ParametricFilters *this)
{
  std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 160, this + 176);
  ParametricFilters::reset(this);
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = (v2 + 15) & 0x1FFFFFFF0;
    v5 = xmmword_1DE095290;
    v6 = xmmword_1DE0952A0;
    v7 = xmmword_1DE0952B0;
    v8 = xmmword_1DE0952C0;
    v9 = xmmword_1DE0952D0;
    v10 = xmmword_1DE095220;
    v11 = xmmword_1DE095150;
    v12 = xmmword_1DE095160;
    v13 = vdupq_n_s64(v2 - 1);
    v14 = vdupq_n_s64(0x10uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, v12));
      if (vuzp1_s8(vuzp1_s16(v15, *v5.i8), *v5.i8).u8[0])
      {
        v3[48] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v5), *&v5).i8[1])
      {
        v3[104] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v13, *&v11))), *&v5).i8[2])
      {
        v3[160] = 0;
        v3[216] = 0;
      }

      v16 = vmovn_s64(vcgeq_u64(v13, v10));
      if (vuzp1_s8(*&v5, vuzp1_s16(v16, *&v5)).i32[1])
      {
        v3[272] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v16, *&v5)).i8[5])
      {
        v3[328] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v13, *&v9)))).i8[6])
      {
        v3[384] = 0;
        v3[440] = 0;
      }

      v17 = vmovn_s64(vcgeq_u64(v13, v8));
      if (vuzp1_s8(vuzp1_s16(v17, *v5.i8), *v5.i8).u8[0])
      {
        v3[496] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v5), *&v5).i8[1])
      {
        v3[552] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v13, *&v7))), *&v5).i8[2])
      {
        v3[608] = 0;
        v3[664] = 0;
      }

      v18 = vmovn_s64(vcgeq_u64(v13, v6));
      if (vuzp1_s8(*&v5, vuzp1_s16(v18, *&v5)).i32[1])
      {
        v3[720] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v18, *&v5)).i8[5])
      {
        v3[776] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v13, *&v5)))).i8[6])
      {
        v3[832] = 0;
        v3[888] = 0;
      }

      v10 = vaddq_s64(v10, v14);
      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v9 = vaddq_s64(v9, v14);
      v8 = vaddq_s64(v8, v14);
      v7 = vaddq_s64(v7, v14);
      v6 = vaddq_s64(v6, v14);
      v3 += 896;
      v5 = vaddq_s64(v5, v14);
      v4 -= 16;
    }

    while (v4);
  }

  atomic_store(0, this + 29);
  atomic_store(0, this + 30);
  atomic_store(0, this + 8);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 160);

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 176);
}

void sub_1DDFDDBB8(_Unwind_Exception *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 160);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 176);
  _Unwind_Resume(a1);
}

pthread_t ParametricFilters::reset(ParametricFilters *this)
{
  std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 160, this + 176);
  v2 = *(this + 8);
  if (*(this + 9) != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      vDSP_vclr(*(v2 + 24 * v3), 1, (*(v2 + 24 * v3 + 8) - *(v2 + 24 * v3)) >> 2);
      v3 = v4;
      v2 = *(this + 8);
      v5 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - v2) >> 3) > v4++;
    }

    while (v5);
  }

  v6 = *(this + 11);
  if (*(this + 12) != v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      vDSP_vclr(*(v6 + 24 * v7), 1, (*(v6 + 24 * v7 + 8) - *(v6 + 24 * v7)) >> 2);
      v7 = v8;
      v6 = *(this + 11);
      v5 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 12) - v6) >> 3) > v8++;
    }

    while (v5);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 160);

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 176);
}

void sub_1DDFDDCDC(_Unwind_Exception *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 160);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 176);
  _Unwind_Resume(a1);
}

uint64_t ParametricFilters::process(uint64_t this, float *const *a2, float *const *a3, unsigned int a4, float **a5)
{
  if (a4)
  {
    v8 = this;
    v9 = atomic_load((this + 8));
    if (v9 & 1) != 0 && (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 160))
    {
      atomic_store(0, (v8 + 8));
      v11 = *(v8 + 64);
      *(v8 + 64) = *(v8 + 88);
      *(v8 + 88) = v11;
      v12 = *(v8 + 80);
      *(v8 + 80) = *(v8 + 104);
      *(v8 + 104) = v12;
      v13 = atomic_load((v8 + 116));
      v14 = atomic_load((v8 + 120));
      atomic_store(v14, (v8 + 116));
      atomic_store(v13, (v8 + 120));
      v15 = *(v8 + 128);
      *(v8 + 128) = *(v8 + 144);
      *(v8 + 144) = v15;
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v8 + 160);
      v16 = v8 + 176;
      this = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(v8 + 176);
      if (!this)
      {
        return this;
      }

      if (*(v8 + 112) == 1)
      {
        __Step = 1.0 / a4;
        v31 = -1.0 / a4;
        if (*(v8 + 4))
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          __n = 4 * a4;
          v21 = a3;
          do
          {
            v22 = &a2[v18];
            if (a3)
            {
              v22 = v21;
            }

            v23 = *v22;
            __Start = 0.0;
            v29 = 1.0;
            if (*(v8 + 128) && (v24 = atomic_load((v8 + 116))) != 0)
            {
              vDSP_biquad(*(v8 + 128), *(*(v8 + 64) + v19), a2[v20], 1, *a5, 1, a4);
            }

            else
            {
              memcpy(a5[v20], a2[v20], __n);
            }

            vDSP_vrampmul(*a5, 1, &__Start, &__Step, *a5, 1, a4);
            if (*(v8 + 144) && (v25 = atomic_load((v8 + 120))) != 0)
            {
              vDSP_biquad(*(v8 + 144), *(*(v8 + 88) + v19), a2[v20], 1, v23, 1, a4);
            }

            else
            {
              memcpy(v23, a2[v20], __n);
            }

            vDSP_vrampmul(v23, 1, &v29, &v31, v23, 1, a4);
            v26 = v23;
            if (!a3)
            {
              v26 = a2[v20];
            }

            MEMORY[0x1E12BE5D0](*a5, 1, v23, 1, v26, 1, a4);
            ++v20;
            v19 += 24;
            ++v21;
            ++v18;
          }

          while (v20 < *(v8 + 4));
        }

        v16 = v8 + 176;
        return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v16);
      }
    }

    else
    {
      v16 = v8 + 176;
      this = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(v8 + 176);
      if ((this & 1) == 0)
      {
        return this;
      }
    }

    ParametricFilters::processCurrentBiquads(v8, a2, a3, a4, a3 == 0, v17);
    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v16);
  }

  return this;
}

void sub_1DDFDDFAC(_Unwind_Exception *a1)
{
  v3 = v1;
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v3);
  _Unwind_Resume(a1);
}

pthread_t ParametricFilters::processCurrentBiquads(ParametricFilters *this, float *const *a2, float *const *a3, unsigned int a4, char a5, float *const *a6)
{
  result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 176);
  if (result)
  {
    if (*(this + 16) && (v12 = atomic_load(this + 29)) != 0)
    {
      if (*(this + 1))
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = a2[v14];
          if ((a5 & 1) == 0)
          {
            v15 = a3[v14];
          }

          vDSP_biquad(*(this + 16), *(*(this + 8) + v13), a2[v14++], 1, v15, 1, a4);
          v13 += 24;
        }

        while (v14 < *(this + 1));
      }
    }

    else if ((a5 & 1) == 0 && *(this + 1))
    {
      v16 = 0;
      do
      {
        memcpy(a3[v16], a2[v16], 4 * a4);
        ++v16;
      }

      while (v16 < *(this + 1));
    }

    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 176);
  }

  return result;
}

uint64_t ParametricFilters::setSingleParametricFilter(ParametricFilters *this, int a2, float a3, float a4, float a5, int a6, char a7)
{
  v62 = *MEMORY[0x1E69E9840];
  if ((LODWORD(a3) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000 || (LODWORD(a5) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v16 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v49 = (this + 192);
      if (*(this + 215) < 0)
      {
        v49 = *v49;
      }

      *buf = 136315394;
      *&buf[4] = v49;
      *&buf[12] = 2080;
      *&buf[14] = "setSingleParametricFilter";
      _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid parameter(s).", buf, 0x16u);
    }

    return 1;
  }

  else if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 160))
  {
    if (a7)
    {
      if (a6)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v14 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = (this + 192);
          if (*(this + 215) < 0)
          {
            v15 = *v15;
          }

          *buf = 136315394;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "setSingleParametricFilter";
          _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "[%s|%s] Update biquad mode selected", buf, 0x16u);
        }

        ParametricFilters::removeFiltersWithTag(this, a6);
      }
    }

    else
    {
      v19 = *(this + 3);
      if (v19)
      {
        v20 = *(this + 2);
        v21 = (v19 + 15) & 0x1FFFFFFF0;
        v22 = xmmword_1DE095290;
        v23 = xmmword_1DE0952A0;
        v24 = xmmword_1DE0952B0;
        v25 = xmmword_1DE0952C0;
        v26 = xmmword_1DE0952D0;
        v27 = xmmword_1DE095220;
        v28 = xmmword_1DE095150;
        v29 = xmmword_1DE095160;
        v30 = vdupq_n_s64(v19 - 1);
        v31 = vdupq_n_s64(0x10uLL);
        do
        {
          v32 = vmovn_s64(vcgeq_u64(v30, v29));
          if (vuzp1_s8(vuzp1_s16(v32, *v22.i8), *v22.i8).u8[0])
          {
            v20[48] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v32, *&v22), *&v22).i8[1])
          {
            v20[104] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v30, *&v28))), *&v22).i8[2])
          {
            v20[160] = 0;
            v20[216] = 0;
          }

          v33 = vmovn_s64(vcgeq_u64(v30, v27));
          if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i32[1])
          {
            v20[272] = 0;
          }

          if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i8[5])
          {
            v20[328] = 0;
          }

          if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v30, *&v26)))).i8[6])
          {
            v20[384] = 0;
            v20[440] = 0;
          }

          v34 = vmovn_s64(vcgeq_u64(v30, v25));
          if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
          {
            v20[496] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
          {
            v20[552] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v30, *&v24))), *&v22).i8[2])
          {
            v20[608] = 0;
            v20[664] = 0;
          }

          v35 = vmovn_s64(vcgeq_u64(v30, v23));
          if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
          {
            v20[720] = 0;
          }

          if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
          {
            v20[776] = 0;
          }

          if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v30, *&v22)))).i8[6])
          {
            v20[832] = 0;
            v20[888] = 0;
          }

          v27 = vaddq_s64(v27, v31);
          v28 = vaddq_s64(v28, v31);
          v29 = vaddq_s64(v29, v31);
          v26 = vaddq_s64(v26, v31);
          v25 = vaddq_s64(v25, v31);
          v24 = vaddq_s64(v24, v31);
          v23 = vaddq_s64(v23, v31);
          v20 += 896;
          v22 = vaddq_s64(v22, v31);
          v21 -= 16;
        }

        while (v21);
      }
    }

    v36 = *(this + 3);
    if (v36)
    {
      v37 = 0;
      v38 = *(this + 2);
      v39 = 48;
      while ((*(v38 + v39) & 1) != 0)
      {
        ++v37;
        v39 += 56;
        if (v36 == v37)
        {
          goto LABEL_63;
        }
      }

      v40 = (a3 + a3) / *this;
      if (v40 > 0.99)
      {
        v40 = 0.99;
      }

      *buf = 0;
      *&buf[8] = 0;
      *&buf[24] = 0;
      v61 = 0;
      *&buf[16] = 0x3FF0000000000000;
      v41 = BiquadCoefficients::SetQ(buf, a2, v40 * 3.14159265, a4, a5);
      if (v41)
      {
        v42 = v41;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v43 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v51 = (this + 192);
          if (*(this + 215) < 0)
          {
            v51 = *v51;
          }

          v52 = 136315906;
          v53 = v51;
          v54 = 2080;
          v55 = "setSingleParametricFilter";
          v56 = 1024;
          v57 = v37;
          v58 = 1024;
          v59 = v42;
          _os_log_error_impl(&dword_1DDB85000, v43, OS_LOG_TYPE_ERROR, "[%s|%s] Biquad Stage %u error %d; replacing with bypass filter", &v52, 0x22u);
        }

        v44 = xmmword_1DE095300;
        v38 = *(this + 2);
        v45 = 0uLL;
        v46 = 0;
      }

      else
      {
        v46 = v61;
        v45 = *buf;
        v44 = *&buf[16];
      }

      v47 = v38 + 56 * v37;
      *(v47 + 44) = a6;
      *v47 = v44;
      *(v47 + 16) = v46;
      *(v47 + 24) = v45;
      *(v47 + 40) = 1;
      *(v47 + 48) = 1;
    }

LABEL_63:
    v17 = ParametricFilters::setParametricFilters(this, this + 2);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 160);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v18 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v50 = (this + 192);
      if (*(this + 215) < 0)
      {
        v50 = *v50;
      }

      *buf = 136315394;
      *&buf[4] = v50;
      *&buf[12] = 2080;
      *&buf[14] = "setSingleParametricFilter";
      _os_log_debug_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquads not updated - lock not acquired", buf, 0x16u);
    }

    return 0;
  }

  return v17;
}

void ParametricFilters::removeFiltersWithTag(ParametricFilters *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 160))
    {
      v4 = *(this + 3);
      if (v4)
      {
        v5 = (*(this + 2) + 48);
        do
        {
          if (*(v5 - 1) == a2)
          {
            *v5 = 0;
          }

          v5 += 56;
          --v4;
        }

        while (v4);
      }

      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 160);
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v6 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        v7 = (this + 192);
        if (*(this + 215) < 0)
        {
          v7 = *v7;
        }

        v8 = 136315394;
        v9 = v7;
        v10 = 2080;
        v11 = "removeFiltersWithTag";
        _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquads not removed - lock not acquired", &v8, 0x16u);
      }
    }
  }
}

uint64_t ParametricFilters::setParametricFilters(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1 + 160);
  if (v4)
  {
    if (*(a1 + 12))
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (*a2 + v5);
        if (*(v9 + 40) == 1 && *(v9 + 48) == 1)
        {
          v10 = *(a1 + 40) + 8 * v6;
          v11 = *v9;
          v12 = v9[1];
          *(v10 + 32) = *(v9 + 4);
          *v10 = v11;
          *(v10 + 16) = v12;
          ++v8;
        }

        else
        {
          v13 = *(a1 + 40) + 8 * v6;
          *v13 = 0x3FF0000000000000;
          *(v13 + 8) = 0uLL;
          *(v13 + 24) = 0uLL;
        }

        ++v7;
        v14 = *(a1 + 12);
        v6 += 5;
        v5 += 56;
      }

      while (v7 < v14);
    }

    else
    {
      v8 = 0;
      v14 = 0;
    }

    vDSP_biquad_SetCoefficientsDouble(*(a1 + 144), *(a1 + 40), 0, v14);
    atomic_store(v8, (a1 + 120));
    atomic_store(1u, (a1 + 8));
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 160);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v15 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v16 = (a1 + 192);
      if (*(a1 + 215) < 0)
      {
        v16 = *v16;
      }

      v18 = 136315394;
      v19 = v16;
      v20 = 2080;
      v21 = "setParametricFilters";
      _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquads not updated - lock not acquired", &v18, 0x16u);
    }
  }

  return v4;
}

pthread_t ParametricFilters::setParametricFiltersBlocking(uint64_t a1, const void **a2, char a3)
{
  v91 = *MEMORY[0x1E69E9840];
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1 + 160);
  v6 = *a2;
  if (!v6)
  {
    cf = 0;
LABEL_26:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v25 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v26 = (a1 + 192);
    if (*(a1 + 215) < 0)
    {
      v26 = *v26;
    }

    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = "setParametricFiltersPrivate";
    v27 = "[%s|%s] Biquad dictionary invalid";
LABEL_41:
    _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
    goto LABEL_35;
  }

  CFRetain(v6);
  cf = v6;
  if (fabsf(*a1) <= 0.00000011921 || v6 == 0)
  {
    goto LABEL_26;
  }

  if (!applesauce::CF::details::has_key<__CFString const*>(v6, @"Frequency") || !applesauce::CF::details::has_key<__CFString const*>(v6, @"Type") || !applesauce::CF::details::has_key<__CFString const*>(v6, @"Quality") || !applesauce::CF::details::has_key<__CFString const*>(v6, @"Gain"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v25 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v29 = (a1 + 192);
    if (*(a1 + 215) < 0)
    {
      v29 = *v29;
    }

    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = "setParametricFiltersPrivate";
    v27 = "[%s|%s] Biquad dictionary misses one or multiple entries";
    goto LABEL_41;
  }

  v8 = applesauce::CF::DictionaryRef::operator->(&cf);
  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v82, *v8, @"Frequency", buf);
  applesauce::CF::ArrayRef::~ArrayRef(buf);
  v9 = applesauce::CF::DictionaryRef::operator->(&cf);
  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v81, *v9, @"Type", buf);
  applesauce::CF::ArrayRef::~ArrayRef(buf);
  v10 = applesauce::CF::DictionaryRef::operator->(&cf);
  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v80, *v10, @"Quality", buf);
  applesauce::CF::ArrayRef::~ArrayRef(buf);
  v11 = applesauce::CF::DictionaryRef::operator->(&cf);
  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v79, *v11, @"Gain", buf);
  applesauce::CF::ArrayRef::~ArrayRef(buf);
  v12 = applesauce::CF::DictionaryRef::operator->(&cf);
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(&v77, *v12, @"Tag");
  v13 = applesauce::CF::ArrayRef::operator->(&v82);
  size = applesauce::CF::ArrayRef_proxy::get_size(*v13);
  *buf = size;
  v15 = applesauce::CF::ArrayRef::operator->(&v81);
  *&buf[8] = applesauce::CF::ArrayRef_proxy::get_size(*v15);
  v16 = applesauce::CF::ArrayRef::operator->(&v80);
  *&buf[16] = applesauce::CF::ArrayRef_proxy::get_size(*v16);
  v17 = applesauce::CF::ArrayRef::operator->(&v79);
  *&buf[24] = applesauce::CF::ArrayRef_proxy::get_size(*v17);
  v18 = 8;
  v19 = buf;
  do
  {
    if (*&buf[v18] < size)
    {
      size = *&buf[v18];
      v19 = &buf[v18];
    }

    v18 += 8;
  }

  while (v18 != 32);
  v75 = *v19;
  if (v78 == 1)
  {
    v20 = applesauce::CF::ArrayRef::operator->(&v77);
    v21 = applesauce::CF::ArrayRef_proxy::get_size(*v20);
    v22 = v75;
    if (v75 >= v21)
    {
      v22 = v21;
    }

    v75 = v22;
  }

  if (a3)
  {
    if (v78)
    {
      applesauce::CF::ArrayRef::ArrayRef(buf, v77);
      if (v75)
      {
        for (i = 0; i != v75; ++i)
        {
          if (!*buf)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          v24 = applesauce::CF::details::at_to<unsigned int>(*buf, i);
          ParametricFilters::removeFiltersWithTag(a1, v24);
        }
      }

      applesauce::CF::ArrayRef::~ArrayRef(buf);
    }
  }

  else
  {
    v30 = *(a1 + 12);
    if (v30)
    {
      v31 = *(a1 + 16);
      v32 = (v30 + 15) & 0x1FFFFFFF0;
      v33 = xmmword_1DE095290;
      v34 = xmmword_1DE0952A0;
      v35 = xmmword_1DE0952B0;
      v36 = xmmword_1DE0952C0;
      v37 = xmmword_1DE0952D0;
      v38 = xmmword_1DE095220;
      v39 = xmmword_1DE095150;
      v40 = xmmword_1DE095160;
      v41 = vdupq_n_s64(v30 - 1);
      v42 = vdupq_n_s64(0x10uLL);
      do
      {
        v43 = vmovn_s64(vcgeq_u64(v41, v40));
        if (vuzp1_s8(vuzp1_s16(v43, *v33.i8), *v33.i8).u8[0])
        {
          v31[48] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v43, *&v33), *&v33).i8[1])
        {
          v31[104] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v41, *&v39))), *&v33).i8[2])
        {
          v31[160] = 0;
          v31[216] = 0;
        }

        v44 = vmovn_s64(vcgeq_u64(v41, v38));
        if (vuzp1_s8(*&v33, vuzp1_s16(v44, *&v33)).i32[1])
        {
          v31[272] = 0;
        }

        if (vuzp1_s8(*&v33, vuzp1_s16(v44, *&v33)).i8[5])
        {
          v31[328] = 0;
        }

        if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v41, *&v37)))).i8[6])
        {
          v31[384] = 0;
          v31[440] = 0;
        }

        v45 = vmovn_s64(vcgeq_u64(v41, v36));
        if (vuzp1_s8(vuzp1_s16(v45, *v33.i8), *v33.i8).u8[0])
        {
          v31[496] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v45, *&v33), *&v33).i8[1])
        {
          v31[552] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v41, *&v35))), *&v33).i8[2])
        {
          v31[608] = 0;
          v31[664] = 0;
        }

        v46 = vmovn_s64(vcgeq_u64(v41, v34));
        if (vuzp1_s8(*&v33, vuzp1_s16(v46, *&v33)).i32[1])
        {
          v31[720] = 0;
        }

        if (vuzp1_s8(*&v33, vuzp1_s16(v46, *&v33)).i8[5])
        {
          v31[776] = 0;
        }

        if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v41, *&v33)))).i8[6])
        {
          v31[832] = 0;
          v31[888] = 0;
        }

        v38 = vaddq_s64(v38, v42);
        v39 = vaddq_s64(v39, v42);
        v40 = vaddq_s64(v40, v42);
        v37 = vaddq_s64(v37, v42);
        v36 = vaddq_s64(v36, v42);
        v35 = vaddq_s64(v35, v42);
        v34 = vaddq_s64(v34, v42);
        v31 += 896;
        v33 = vaddq_s64(v33, v42);
        v32 -= 16;
      }

      while (v32);
    }
  }

  v47 = *(a1 + 12);
  if (v47)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v74 = (a1 + 192);
    v51 = *(a1 + 16);
    while ((*(v51 + v48 + 48) & 1) != 0)
    {
LABEL_98:
      ++v49;
      v48 += 56;
      if (v49 >= v47)
      {
        goto LABEL_104;
      }
    }

    if (v50 >= v75)
    {
      goto LABEL_104;
    }

    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = 0x3FF0000000000000uLL;
    v90 = 0;
    if (!v82)
    {
      v71 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v71, "Could not construct");
    }

    v52 = applesauce::CF::details::at_to<float>(v82, v50);
    if (!v80)
    {
      v70 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v70, "Could not construct");
    }

    v53 = v52;
    v54 = applesauce::CF::details::at_to<float>(v80, v50);
    if (!v79)
    {
      v69 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v69, "Could not construct");
    }

    v55 = v54;
    v56 = applesauce::CF::details::at_to<float>(v79, v50);
    if (!v81)
    {
      v68 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v68, "Could not construct");
    }

    v57 = v56;
    v58 = applesauce::CF::details::at_to<unsigned int>(v81, v50);
    if ((LODWORD(v53) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v55) & 0x7FFFFFFFu) >= 0x7F800000 || (LODWORD(v57) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v64 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      v67 = a1 + 192;
      if (*(a1 + 215) < 0)
      {
        v67 = *v74;
      }

      *v83 = 136315650;
      v84 = v67;
      v85 = 2080;
      v86 = "setParametricFiltersPrivate";
      v87 = 1024;
      v88 = v49;
      v62 = v64;
      v63 = "[%s|%s] Biquad Stage %u error -- non-finite parameter; replacing with bypass filter";
    }

    else
    {
      v59 = (v53 + v53) / *a1;
      if (v59 > 0.99)
      {
        v59 = 0.99;
      }

      if (!BiquadCoefficients::SetQ(buf, v58, v59 * 3.14159265, v55, v57))
      {
        goto LABEL_93;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v60 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
LABEL_92:
        *buf = 0;
        *&buf[8] = 0;
        v90 = 0;
        *&buf[16] = 0x3FF0000000000000uLL;
LABEL_93:
        if (v78 == 1)
        {
          if (!v77)
          {
            v73 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v73, "Could not construct");
          }

          v65 = applesauce::CF::details::at_to<unsigned int>(v77, v50);
        }

        else
        {
          v65 = 0;
        }

        v51 = *(a1 + 16);
        v66 = v51 + v48;
        *(v66 + 44) = v65;
        *v66 = *&buf[16];
        *(v66 + 16) = v90;
        *(v66 + 24) = *buf;
        *(v66 + 40) = 1;
        *(v66 + 48) = 1;
        ++v50;
        v47 = *(a1 + 12);
        goto LABEL_98;
      }

      v61 = a1 + 192;
      if (*(a1 + 215) < 0)
      {
        v61 = *v74;
      }

      *v83 = 136315650;
      v84 = v61;
      v85 = 2080;
      v86 = "setParametricFiltersPrivate";
      v87 = 1024;
      v88 = v49;
      v62 = v60;
      v63 = "[%s|%s] Biquad Stage %u error; replacing with bypass filter";
    }

    _os_log_error_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_ERROR, v63, v83, 0x1Cu);
    goto LABEL_92;
  }

LABEL_104:
  ParametricFilters::setParametricFilters(a1, (a1 + 16));
  std::optional<applesauce::CF::ArrayRef>::~optional(&v77);
  applesauce::CF::ArrayRef::~ArrayRef(&v79);
  applesauce::CF::ArrayRef::~ArrayRef(&v80);
  applesauce::CF::ArrayRef::~ArrayRef(&v81);
  applesauce::CF::ArrayRef::~ArrayRef(&v82);
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 160);
}