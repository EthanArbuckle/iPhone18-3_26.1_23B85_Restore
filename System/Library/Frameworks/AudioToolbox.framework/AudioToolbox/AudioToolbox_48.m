BOOL AUSoftClip::ValidFormat(AUSoftClip *this, unsigned int a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v7 = 0;
  v6 = 0;
  CAStreamBasicDescription::IdentifyCommonPCMFormat(a4, &v6, &v7);
  return v6 == 1 && (a4->mChannelsPerFrame < 3 || !v7);
}

uint64_t AUSoftClip::SupportedNumChannels(AUSoftClip *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSoftClip::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUSoftClip::GetParameterInfo(AUSoftClip *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  if (a3 == 1751216740)
  {
    v7 = -24.0;
    v6 = @"hard clip level dB";
    goto LABEL_7;
  }

  if (a3 == 1936680564)
  {
    v6 = @"soft clip level dB";
    v7 = -48.0;
LABEL_7:
    buffer->cfNameString = v6;
    buffer->flags = -939524096;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    buffer->minValue = v7;
    *&buffer->maxValue = 0;
    return result;
  }

  return 4294956418;
}

uint64_t AUSoftClip::ProcessBufferLists(AUSoftClip *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  if (a3->mNumberBuffers == 2)
  {
    v9 = *(this + 66);
    if (!*v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F593B0D8;
      exception[2] = -10868;
    }

    IsInputSilent = ausdk::AUEffectBase::IsInputSilent(this, *a2, a5);
    (*(**v9 + 32))(*v9, a3, a4, a5, &IsInputSilent);
    if ((IsInputSilent & 1) == 0)
    {
      *a2 &= ~0x10u;
    }
  }

  else
  {
    ausdk::AUEffectBase::ProcessBufferLists(this, a2, a3, a4, a5);
  }

  return 0;
}

uint64_t ausdk::AUEffectBase::IsInputSilent(ausdk::AUEffectBase *this, char a2, unsigned int a3)
{
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
  if ((v7 & 1) == 0)
  {
    abort();
  }

  v8 = *(v6 + 80);
  v9 = (*(*this + 344))(this);
  (*(*this + 352))(this);
  if ((a2 & 0x10) == 0)
  {
    result = 0;
    *(this + 560) = 1;
    return result;
  }

  if (*(this + 560) != 1)
  {
    v12 = *(this + 139);
    if (v12)
    {
      goto LABEL_6;
    }

    return 1;
  }

  v12 = (v8 * (v9 + v10));
  *(this + 139) = v12;
  *(this + 560) = 0;
  if (!v12)
  {
    return 1;
  }

LABEL_6:
  result = 0;
  v13 = v12 >= a3;
  v14 = v12 - a3;
  if (!v13)
  {
    v14 = 0;
  }

  *(this + 139) = v14;
  return result;
}

uint64_t AUSoftClip::SetParameter(AUSoftClip *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  ++*(this + 148);
  return result;
}

uint64_t AUSoftClip::Reset(AUSoftClip *this, int a2)
{
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

  if (!a2)
  {
    v7 = *(this + 66);
    if (*(this + 67) != v7)
    {
      if (*v7)
      {
        (*(**v7 + 16))(*v7);
      }
    }
  }

  return 0;
}

double AUSoftClip::Cleanup(AUSoftClip *this)
{
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  result = 0.0;
  *(this + 568) = 0u;
  return result;
}

uint64_t AUSoftClip::Initialize(AUSoftClip *this)
{
  v2 = ausdk::AUEffectBase::Initialize(this);
  if (!v2)
  {
    (*(*this + 72))(this, 0, 0);
  }

  return v2;
}

void AUSoftClip::~AUSoftClip(AUSoftClip *this)
{
  AUSoftClip::~AUSoftClip(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592BFD0;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  *(this + 568) = 0u;
  *this = &unk_1F593A7A8;
  v3 = v2;
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v3);

  ausdk::AUBase::~AUBase(this);
}

void DirectionalVAD::setTargetDirection(DirectionalVAD *this, float a2, float a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *this = a2;
  if (fabsf(a3) <= 90.0)
  {
    *(this + 1) = a3;
    return;
  }

  if (AUNeuralNetVADLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_18142);
  }

  if (AUNeuralNetVADLogScope(void)::scope)
  {
    v5 = *AUNeuralNetVADLogScope(void)::scope;
    if (!*AUNeuralNetVADLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 1);
    v7 = 136315906;
    v8 = "DirectionalVAD.cpp";
    v9 = 1024;
    v10 = 82;
    v11 = 2048;
    v12 = a3;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Target elevation not set to (%f), it remains at the current value (%f). Elevation must be in range [-90, 90].\n", &v7, 0x26u);
  }
}

void DirectionalVAD::setCurrentDirection(float **this, float a2, float a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *this[9] = a2;
  if (fabsf(a3) <= 90.0)
  {
    *this[12] = a3;
    return;
  }

  if (AUNeuralNetVADLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_18142);
  }

  if (AUNeuralNetVADLogScope(void)::scope)
  {
    v5 = *AUNeuralNetVADLogScope(void)::scope;
    if (!*AUNeuralNetVADLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *this[12];
    v7 = 136315906;
    v8 = "DirectionalVAD.cpp";
    v9 = 1024;
    v10 = 110;
    v11 = 2048;
    v12 = a3;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Current elevation not set to (%f), it remains at the current value (%f). Elevation must be in range [-90, 90].\n", &v7, 0x26u);
  }
}

void DirectionalVAD::setShapeParameter(DirectionalVAD *this, float a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 >= 0.0)
  {
    *(this + 14) = a2;
    return;
  }

  if (AUNeuralNetVADLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_18142);
  }

  if (AUNeuralNetVADLogScope(void)::scope)
  {
    v4 = *AUNeuralNetVADLogScope(void)::scope;
    if (!*AUNeuralNetVADLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 14);
    v6 = 136315906;
    v7 = "DirectionalVAD.cpp";
    v8 = 1024;
    v9 = 127;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Shape parameter not set to (%f), it remains at the current value (%f). Valid range is >= 0.\n", &v6, 0x26u);
  }
}

void DirectionalVAD::setConditionalTargetPrior(DirectionalVAD *this, float a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    *(this + 15) = a2;
    return;
  }

  if (AUNeuralNetVADLogScope(void)::once != -1)
  {
    dispatch_once(&AUNeuralNetVADLogScope(void)::once, &__block_literal_global_18142);
  }

  if (AUNeuralNetVADLogScope(void)::scope)
  {
    v5 = *AUNeuralNetVADLogScope(void)::scope;
    if (!*AUNeuralNetVADLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 15);
    v7 = 136315906;
    v8 = "DirectionalVAD.cpp";
    v9 = 1024;
    v10 = 136;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Conditional target prior not set to (%f), it remains at the current value (%f). Valid range is [0, 1].\n", &v7, 0x26u);
  }
}

void AUHOAZoom::GetChannelLayoutTags(uint64_t a1@<X8>)
{
  v8 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v5, &v8, &v9, 1uLL);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = v5;
  if (v6 != v5)
  {
    v4 = 0;
    do
    {
      v8 = ((*&v3[4 * v4] + 1) * (*&v3[4 * v4] + 1)) | 0xBF0000;
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v8);
      if (v4 >= (v6 - v5) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = ((*&v5[4 * v4] + 1) * (*&v5[4 * v4] + 1)) | 0xBE0000;
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v8);
      ++v4;
      v3 = v5;
    }

    while (v4 < (v6 - v5) >> 2);
  }

  if (v3)
  {
    v6 = v3;
    operator delete(v3);
  }
}

void sub_1DDED04E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUHOAZoom::SetAudioChannelLayout(AUHOAZoom *this, unsigned int a2, unsigned int a3, const AudioChannelLayout *a4)
{
  if (!a4)
  {
    return 4294956428;
  }

  mChannelLayoutTag = a4->mChannelLayoutTag;
  if (!ChannelLayoutTagIsSupportedHOA(a4->mChannelLayoutTag))
  {
    return 4294956428;
  }

  AUHOAZoom::UpdateChannelLayoutTag(this, mChannelLayoutTag);
  return 0;
}

uint64_t AUHOAZoom::UpdateChannelLayoutTag(AUHOAZoom *this, int a2)
{
  if (!ChannelLayoutTagIsSupportedHOA(a2))
  {
    __assert_rtn("UpdateChannelLayoutTag", "AUHOAZoom.mm", 126, "ChannelLayoutTagIsSupportedHOA(tag)");
  }

  *(this + 162) = a2;
  if ((a2 & 0xFFFF0000) == 0xBE0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * ((a2 & 0xFFFF0000) != 12517376);
  }

  *(this + 136) = v4;
  *(this + 79) = a2;
  result = GetHOAOrderForNumberOfChannels(a2);
  *(this + 160) = result;
  return result;
}

void AUHOAZoom::GetAudioChannelLayout(AUHOAZoom *this, unsigned int a2, int a3, AudioChannelLayout *a4, BOOL *a5)
{
  if (!a3)
  {
    *a5 = 1;
    v6 = 0;
    std::vector<char>::vector[abi:ne200100](&__p, 32);
  }

  ausdk::Throw(0xFFFFD583);
}

uint64_t AUHOAZoom::ValidFormat(AUHOAZoom *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  mChannelsPerFrame = a4->mChannelsPerFrame;
  v6 = a4->mFormatID == 1718773105 && a4->mBitsPerChannel == 64;
  v7 = v6 & (a4->mFormatFlags >> 5);
  HOAOrderForNumberOfChannels = GetHOAOrderForNumberOfChannels(a4->mChannelsPerFrame);
  if ((HOAOrderForNumberOfChannels + 1) * (HOAOrderForNumberOfChannels + 1) == mChannelsPerFrame)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t AUHOAZoom::SupportedNumChannels(AUHOAZoom *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUHOAZoom::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUHOAZoom::RestoreState(OpaqueAudioComponentInstance **this, CFTypeRef cf)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 4294956445;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  v5 = ausdk::AUBase::RestoreState(this, cf);
  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "HOAZoomCurve");
    std::string::basic_string[abi:ne200100]<0>(&v16, "HOAZoomInDominanceCurve");
    std::string::basic_string[abi:ne200100]<0>(&v17, "HOAZoomOutDominanceCurve");
    memset(v9, 0, sizeof(v9));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v9, &buf, &v18, 3uLL);
  }

  v6 = v5;
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
  }

  v7 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    buf = 136315650;
    buf_4 = "AUHOAZoom.mm";
    v12 = 1024;
    v13 = 406;
    v14 = 1024;
    v15 = v6;
    _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%s:%i Error %i while restoring state", &buf, 0x18u);
  }

  return v6;
}

void sub_1DDED0A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22)
{
  a22 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t ___Z15getAUHOAZoomLogv_block_invoke()
{
  getAUHOAZoomLog(void)::gLog = os_log_create("com.apple.coreaudio", "hoaz");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AUHOAZoom::SaveState(std::vector<std::string> *this, ausdk **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  ausdk::AUBase::SaveState(this, a2);
  v4 = *a2;
  if (v4)
  {
    end = this[22].__end_;
    if (end)
    {
      DominanceZoom::CopyZoomCurveValue(&buf, end);
      p_end = &this[23].__end_;
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(this[23].__end_->__r_.__value_.__r.__words);
      size = buf.__r_.__value_.__l.__size_;
      this[23].__begin_ = buf.__r_.__value_.__r.__words[0];
      this[23].__end_ = size;
      v8 = buf.__r_.__value_.__r.__words[2];
      this[23].__end_cap_.__value_ = buf.__r_.__value_.__r.__words[2];
      if (v8)
      {
        *(size + 16) = p_end;
        buf.__r_.__value_.__r.__words[0] = &buf.__r_.__value_.__l.__size_;
        *&buf.__r_.__value_.__r.__words[1] = 0uLL;
      }

      else
      {
        this[23].__begin_ = p_end;
      }

      std::vector<std::string>::__vdeallocate(this + 24);
      *&this[24].__begin_ = v14;
      this[24].__end_cap_.__value_ = v15;
      v15 = 0;
      v14 = 0uLL;
      p_begin = &this[25].__begin_;
      if (SHIBYTE(this[25].__end_cap_.__value_) < 0)
      {
        operator delete(*p_begin);
      }

      *p_begin = v16;
      this[25].__end_cap_.__value_ = v17;
      HIBYTE(v17) = 0;
      LOBYTE(v16) = 0;
      v12 = &v14;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(buf.__r_.__value_.__l.__size_);
    }

    ZoomCurveValue::SaveToDictionary(&this[23], v4);
    return 0;
  }

  else
  {
    if (getAUHOAZoomLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
    }

    v9 = getAUHOAZoomLog(void)::gLog;
    if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "AUHOAZoom.mm";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 422;
      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "%s:%i AUBase::SaveState didn't produce valid dictionary?", &buf, 0x12u);
    }

    return 4294956445;
  }
}

__n128 AUHOAZoom::GetParameterInfo(AUHOAZoom *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  if (!a2)
  {
    ParameterMap = AUHOAZoom::GetParameterMap(this);
    v10 = *(ParameterMap + 8);
    v8 = ParameterMap + 8;
    v9 = v10;
    if (v10)
    {
      v11 = v8;
      v12 = v9;
      do
      {
        v13 = *(v12 + 32);
        v14 = v13 >= a3;
        v15 = v13 < a3;
        if (v14)
        {
          v11 = v12;
        }

        v12 = *(v12 + 8 * v15);
      }

      while (v12);
      if (v11 != v8 && *(v11 + 32) <= a3)
      {
        while (1)
        {
          while (1)
          {
            v16 = *(v9 + 8);
            if (v16 <= a3)
            {
              break;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_16;
            }
          }

          if (v16 >= a3)
          {
            break;
          }

          v9 = v9[1];
          if (!v9)
          {
LABEL_16:
            std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
          }
        }

        v17 = *(v9 + 5);
        v18 = *(v9 + 9);
        *&a4->name[16] = *(v9 + 7);
        *&a4->name[32] = v18;
        *a4->name = v17;
        result = *(v9 + 11);
        v19 = *(v9 + 13);
        v20 = *(v9 + 15);
        *&a4->flags = v9[17];
        *&a4->clumpID = v19;
        *&a4->unit = v20;
        *&a4->name[48] = result;
      }
    }
  }

  return result;
}

uint64_t AUHOAZoom::GetParameterMap(AUHOAZoom *this)
{
  result = *(this + 66);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1DDED0F0C(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::map<unsigned int,HOAZoomParameterInfo>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned int,HOAZoomParameterInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HOAZoomParameterInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HOAZoomParameterInfo>>>::destroy(*(v2 + 8));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUHOAZoom::AddParameterToMap(uint64_t a1, unsigned int a2, int a3, const __CFString *a4, std::vector<std::string> *a5, float a6, float a7, float a8)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v28, 0, sizeof(v28));
  bzero(buffer, 0x80uLL);
  v23 = 0;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  LODWORD(v27) = a3;
  if (&v28 != a5)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v28, a5->__begin_, a5->__end_, 0xAAAAAAAAAAAAAAABLL * ((a5->__end_ - a5->__begin_) >> 3));
    a3 = v27;
  }

  v22 = a4;
  LODWORD(v27) = a3 | 0x8000000;
  CFStringGetCString(a4, buffer, 52, 0x8000100u);
  v21 = 0;
  LODWORD(v27) = v27 | 0x100000;
  v16 = *(a1 + 8);
  if (!v16)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v17 = v16;
      v18 = *(v16 + 32);
      if (v18 <= a2)
      {
        break;
      }

      v16 = *v17;
      if (!*v17)
      {
        goto LABEL_9;
      }
    }

    if (v18 >= a2)
    {
      break;
    }

    v16 = v17[1];
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v19 = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1DDED11C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,HOAZoomParameterInfo>,void *>>>::operator()[abi:ne200100](0, v9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,HOAZoomParameterInfo>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::__tree<std::__value_type<unsigned int,HOAZoomParameterInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HOAZoomParameterInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HOAZoomParameterInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,HOAZoomParameterInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HOAZoomParameterInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HOAZoomParameterInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,HOAZoomParameterInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HOAZoomParameterInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HOAZoomParameterInfo>>>::destroy(*(a1 + 1));
    v2 = (a1 + 144);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

uint64_t AUHOAZoom::GetParameterList(AUHOAZoom *this, int a2, unsigned int *a3, unsigned int *a4)
{
  *a4 = 0;
  if (!a2)
  {
    ParameterMap = AUHOAZoom::GetParameterMap(this);
    *a4 = ParameterMap[2];
    if (a3)
    {
      v9 = *ParameterMap;
      v7 = ParameterMap + 1;
      v8 = v9;
      if (v9 != v7)
      {
        v10 = 0;
        do
        {
          a3[v10] = *(v8 + 8);
          v11 = v8[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v8[2];
              v13 = *v12 == v8;
              v8 = v12;
            }

            while (!v13);
          }

          ++v10;
          v8 = v12;
        }

        while (v12 != v7);
      }
    }
  }

  return 0;
}

ausdk::AUInputElement *AUHOAZoom::Render(AUHOAZoom *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_11;
      }

      v13 = *(Element + 152) + 48;
      v11 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v11)
      {
        if (*(v11 + 144))
        {
          v12 = *(v11 + 152) + 48;
          return (*(*this + 184))(this, a2, a4, 1, &v12, 1, &v13);
        }

LABEL_11:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUHOAZoom::ProcessMultipleBufferLists(AUHOAZoom *this, unsigned int *a2, int a3, CLiteMatrix *a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v69 = *MEMORY[0x1E69E9840];
  result = 4294956428;
  if (a4 != 1 || a6 != 1)
  {
    return result;
  }

  v9 = *(this + 78);
  if (v9 != a3)
  {
    return 4294956422;
  }

  v10 = *(this + 67);
  if (!v10)
  {
    return 4294956429;
  }

  v11 = *a5;
  v12 = *a7;
  if (*(this + 652) != 1)
  {
    if (atomic_exchange((v10 + 336), 0))
    {
      if (caulk::pooled_semaphore_mutex::try_lock((v10 + 192)))
      {
        DominanceCurveCoordinator::UpdateEffectiveDominanceCurve(v10);
        v19 = *(v10 + 280);
        v18 = *(v10 + 288);
        v62 = v12;
        if (0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 3) == (*(v10 + 80) - *(v10 + 72)) >> 2)
        {
          if (v18 != v19)
          {
            v20 = 0;
            v21 = 0;
            do
            {
              v22 = *(v10 + 72);
              if (v21 >= (*(v10 + 80) - v22) >> 2)
              {
                std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
              }

              v23 = *(v10 + 320);
              v24 = *(v10 + 304);
              v25 = *(v22 + 4 * v21);
              v26 = v25;
              if (v25 < 0.0 || v25 > 1.0)
              {
                if (getAUHOAZoomLog(void)::onceToken != -1)
                {
                  dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
                }

                v28 = getAUHOAZoomLog(void)::gLog;
                if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v64 = "DominanceZoom.cpp";
                  v65 = 1024;
                  v66 = 22;
                  v67 = 2048;
                  v68 = v25;
                  _os_log_error_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, "%s:%i illegal dominance parameter value: %f", buf, 0x1Cu);
                }
              }

              if (v24 != 1)
              {
                if (getAUHOAZoomLog(void)::onceToken != -1)
                {
                  dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
                }

                v29 = getAUHOAZoomLog(void)::gLog;
                if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v64 = "DominanceZoom.cpp";
                  v65 = 1024;
                  v66 = 23;
                  _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "%s:%i only first order is supported now", buf, 0x12u);
                }
              }

              v30 = ((v24 + 1) * (v24 + 1));
              if (*(v19 + v20 + 8) != v30)
              {
                if (getAUHOAZoomLog(void)::onceToken != -1)
                {
                  dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
                }

                v31 = getAUHOAZoomLog(void)::gLog;
                if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v64 = "DominanceZoom.cpp";
                  v65 = 1024;
                  v66 = 26;
                  _os_log_error_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_ERROR, "%s:%i bad outMatrix num cols", buf, 0x12u);
                }
              }

              if (*(v19 + v20) != v30)
              {
                if (getAUHOAZoomLog(void)::onceToken != -1)
                {
                  dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
                }

                v32 = getAUHOAZoomLog(void)::gLog;
                if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v64 = "DominanceZoom.cpp";
                  v65 = 1024;
                  v66 = 27;
                  _os_log_error_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_ERROR, "%s:%i bad outMatrix num rows", buf, 0x12u);
                }
              }

              if (v24 != 1)
              {
                goto LABEL_55;
              }

              v33 = 1.0 - v26 * 0.9 * (v26 * 0.9);
              v34 = sqrtf(v33);
              if (v23 == 1)
              {
                v39 = v26 * 1.33333333;
                v37 = *(v19 + v20 + 16);
                v36 = *(v19 + v20 + 24);
                *v37 = 1065353216;
                *(v37 + 4) = 0;
                *(v37 + 12) = v39;
                *(v37 + 16) = 0;
                v38 = v25 / -3.0;
              }

              else
              {
                if (v23)
                {
                  if (getAUHOAZoomLog(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
                  }

                  v40 = getAUHOAZoomLog(void)::gLog;
                  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    v64 = "DominanceZoom.cpp";
                    v65 = 1024;
                    v66 = 75;
                    v67 = 1024;
                    LODWORD(v68) = v23;
                    _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, "%s:%i unsupported normalization %i", buf, 0x18u);
                  }

                  goto LABEL_55;
                }

                v35 = v26 * 0.769800373;
                v37 = *(v19 + v20 + 16);
                v36 = *(v19 + v20 + 24);
                *v37 = 1065353216;
                *(v37 + 4) = 0;
                *(v37 + 12) = v35;
                *(v37 + 16) = 0;
                v38 = v25 / -1.7321;
              }

              *(v37 + 20) = v34;
              *(v37 + 24) = 0;
              *(v37 + 32) = 0;
              *(v37 + 40) = v34;
              *(v37 + 44) = 0;
              *(v37 + 48) = v38;
              *(v37 + 52) = 0;
              *(v37 + 60) = 1065353216;
              bzero((v37 + 4 * ((v36 - v37) >> 3)), 0x40uLL);
LABEL_55:
              ++v21;
              v19 = *(v10 + 280);
              v20 += 40;
            }

            while (v21 < 0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 288) - v19) >> 3));
          }
        }

        else
        {
          if (getAUHOAZoomLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
          }

          v41 = getAUHOAZoomLog(void)::gLog;
          if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v64 = "DominanceZoom.cpp";
            v65 = 1024;
            v66 = 116;
            _os_log_error_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_ERROR, "%s:%i bad dominanceValues size", buf, 0x12u);
          }
        }

        caulk::pooled_semaphore_mutex::_unlock((v10 + 192));
        v12 = v62;
      }

      else
      {
        atomic_fetch_add((v10 + 336), 1u);
      }
    }

    v42 = *v11;
    if (*(v10 + 312) != v42)
    {
      __assert_rtn("Process", "DominanceZoom.cpp", 122, "inBuffer->mNumberBuffers == mNumChannels");
    }

    if (v42 != *v12)
    {
      __assert_rtn("Process", "DominanceZoom.cpp", 123, "outBuffer->mNumberBuffers == mNumChannels");
    }

    v43 = *(v10 + 328);
    if (((v43 ^ v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      __assert_rtn("Process", "DominanceZoom.cpp", 124, "numSamples == mBlockSize * 2");
    }

    if (v43 != -1)
    {
      v44 = 0;
      v45 = (v11 + 4);
      v46 = v12 + 4;
      do
      {
        if (v42)
        {
          v47 = 0;
          v48 = v45;
          do
          {
            if (v44)
            {
              v49 = *(v10 + 328);
              v50 = (*v48)[v44];
              LODWORD(CLiteMatrix::Get((v10 + 200), v47, 0)->isa) = v50;
              v51 = 0;
              if (v44 != v49)
              {
                v51 = (*v48)[v44 + *(v10 + 328)];
              }
            }

            else
            {
              v52 = **v48;
              LODWORD(CLiteMatrix::Get((v10 + 200), v47, 0)->isa) = v52;
              v51 = 0;
            }

            CLiteMatrix::Get((v10 + 200), v47, 0);
            *v53 = v51;
            ++v47;
            v48 += 2;
          }

          while (v47 < *(v10 + 312));
        }

        v54 = *(v10 + 280);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 288) - v54) >> 3) <= v44)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        CLiteMatrix::MatrixMultiply((v54 + 40 * v44), (v10 + 200), (v10 + 240), a4);
        v42 = *(v10 + 312);
        if (v42)
        {
          v55 = 0;
          v56 = v46;
          do
          {
            if (v44)
            {
              v57 = *(v10 + 328);
              isa = CLiteMatrix::Get((v10 + 240), v55, 0)->isa;
              v59 = *v56;
              if (v44 == v57)
              {
                v60 = *(v10 + 328);
              }

              else
              {
                v59[v44] = isa;
                CLiteMatrix::Get((v10 + 240), v55, 0);
                isa = *v61;
                v60 = *(v10 + 328);
                v59 = (*v56 + 4 * v44);
              }

              v59[v60] = isa;
            }

            else
            {
              **v56 = CLiteMatrix::Get((v10 + 240), v55, 0)->isa;
            }

            ++v55;
            v42 = *(v10 + 312);
            v56 += 2;
          }

          while (v55 < v42);
        }

        ++v44;
      }

      while (v44 < *(v10 + 328) + 1);
    }

    return 0;
  }

  v13 = *v11;
  if (v13 != *v12 || !*v11)
  {
    return 0;
  }

  v14 = 0;
  v15 = (v12 + 4);
  v16 = (v11 + 4);
  do
  {
    v17 = *(v16 - 1);
    if (v17 == *(v15 - 1) && *v16 != *v15)
    {
      memcpy(*v15, *v16, v17);
      v13 = *v11;
    }

    result = 0;
    ++v14;
    v15 += 2;
    v16 += 2;
  }

  while (v14 < v13);
  return result;
}

uint64_t AUHOAZoom::SetParameter(DominanceZoom **this, unsigned int a2, int a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956430;
  }

  if (a2 == 1)
  {
    if (this[67])
    {
      if (getAUHOAZoomLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
      }

      v10 = getAUHOAZoomLog(void)::gLog;
      if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "AUHOAZoom.mm";
        v15 = 1024;
        v16 = 512;
        v17 = 2048;
        v18 = a4;
        _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "%s:%i Setting FOV %f on mDominanceZoom", &v13, 0x1Cu);
      }

      DominanceZoom::SetFOV(this[67], a4);
    }

    LOBYTE(v8) = 1;
    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v8 = this[67];
    if (v8)
    {
      if (getAUHOAZoomLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
      }

      v9 = getAUHOAZoomLog(void)::gLog;
      if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "AUHOAZoom.mm";
        v15 = 1024;
        v16 = 505;
        v17 = 2048;
        v18 = a4;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "%s:%i Setting manual zoom amount %f on mDominanceZoom", &v13, 0x1Cu);
      }

      DominanceZoom::SetZoomAmount(this[67], a4);
      LOBYTE(v8) = 0;
    }

LABEL_18:
    *(this + 644) = v8;
  }

  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
  if ((v12 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v11, a2, a4);
  return 0;
}

uint64_t AUHOAZoom::GetParameter(float **this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  Parameter = ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
  if (a3)
  {
    return Parameter;
  }

  v10 = this[67];
  if (v10)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        goto LABEL_33;
      }

      if (getAUHOAZoomLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
      }

      v11 = getAUHOAZoomLog(void)::gLog;
      if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315394;
        v29 = "DominanceZoom.cpp";
        v30 = 1024;
        v31 = 224;
        _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%s:%i --", &v28, 0x12u);
      }

      caulk::pooled_semaphore_mutex::_lock((v10 + 48));
      if (getAUHOAZoomLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
      }

      v12 = getAUHOAZoomLog(void)::gLog;
      if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315394;
        v29 = "DominanceZoom.cpp";
        v30 = 1024;
        v31 = 224;
        _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "%s:%i locked", &v28, 0x12u);
      }

      v13 = v10[46];
      caulk::pooled_semaphore_mutex::_unlock((v10 + 48));
      if (getAUHOAZoomLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
      }

      v14 = getAUHOAZoomLog(void)::gLog;
      if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315906;
        v29 = "AUHOAZoom.mm";
        v30 = 1024;
        v31 = 475;
        v32 = 1024;
        v33 = 0;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "%s:%i Read param %i val %f from mDominanceZoom", &v28, 0x22u);
      }

      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
      if (v16)
      {
        ausdk::AUElement::SetParameter(v15, 0, v13);
        goto LABEL_33;
      }

LABEL_39:
      abort();
    }

    if (getAUHOAZoomLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
    }

    v17 = getAUHOAZoomLog(void)::gLog;
    if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315394;
      v29 = "DominanceZoom.cpp";
      v30 = 1024;
      v31 = 211;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEFAULT, "%s:%i --", &v28, 0x12u);
    }

    caulk::pooled_semaphore_mutex::_lock((v10 + 48));
    if (getAUHOAZoomLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
    }

    v18 = getAUHOAZoomLog(void)::gLog;
    if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315394;
      v29 = "DominanceZoom.cpp";
      v30 = 1024;
      v31 = 211;
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEFAULT, "%s:%i locked", &v28, 0x12u);
    }

    v19 = v10[47];
    caulk::pooled_semaphore_mutex::_unlock((v10 + 48));
    if (getAUHOAZoomLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
    }

    v20 = getAUHOAZoomLog(void)::gLog;
    if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315906;
      v29 = "AUHOAZoom.mm";
      v30 = 1024;
      v31 = 480;
      v32 = 1024;
      v33 = 1;
      v34 = 2048;
      v35 = v19;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "%s:%i Read param %i val %f from mDominanceZoom", &v28, 0x22u);
    }

    v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
    if ((v22 & 1) == 0)
    {
      goto LABEL_39;
    }

    ausdk::AUElement::SetParameter(v21, 1u, v19);
  }

LABEL_33:
  v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_39;
  }

  *a5 = ausdk::AUElement::GetParameter(v23, a2);
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
  }

  v25 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *a5;
    v28 = 136315906;
    v29 = "AUHOAZoom.mm";
    v30 = 1024;
    v31 = 488;
    v32 = 1024;
    v33 = a2;
    v34 = 2048;
    v35 = v26;
    _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEFAULT, "%s:%i param ID %i outValue %f", &v28, 0x22u);
  }

  return Parameter;
}

uint64_t AUHOAZoom::SetProperty(AUHOAZoom *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    *(this + 652) = *a5 != 0;
    return 4294956417;
  }

  if (a2 != 2000)
  {
    return 4294956417;
  }

  result = 4294956445;
  if (a6 == 8)
  {
    if (*a5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v8, "HOAZoomCurve");
      std::string::basic_string[abi:ne200100]<0>(&v9, "HOAZoomInDominanceCurve");
      std::string::basic_string[abi:ne200100]<0>(&v10, "HOAZoomOutDominanceCurve");
      memset(v7, 0, sizeof(v7));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v7, &v8, &v11, 3uLL);
    }
  }

  return result;
}

void sub_1DDED2708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22)
{
  a22 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t AUHOAZoom::GetProperty(std::vector<std::string> *this, int a2, int a3, unsigned int a4, __CFDictionary **a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = 4294956417;
    if (a2 > 2000)
    {
      if (a2 == 2001)
      {
        v17 = objc_opt_new();
        v10 = v17;
        if (v17)
        {
          if (this[22].__end_)
          {
            v18 = v17;
            end = this[22].__end_;
            if (getAUHOAZoomLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
            }

            v20 = getAUHOAZoomLog(void)::gLog;
            if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "DominanceZoom.cpp";
              v41 = 1024;
              v42 = 230;
              _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "%s:%i --", buf, 0x12u);
            }

            caulk::pooled_semaphore_mutex::_lock(&end[8]);
            if (getAUHOAZoomLog(void)::onceToken != -1)
            {
              dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
            }

            v21 = getAUHOAZoomLog(void)::gLog;
            if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "DominanceZoom.cpp";
              v41 = 1024;
              v42 = 230;
              _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEFAULT, "%s:%i locked", buf, 0x12u);
            }

            if (atomic_load(&end[14]))
            {
              DominanceCurveCoordinator::UpdateEffectiveDominanceCurve(end);
            }

            memset(&__p, 0, sizeof(__p));
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, end[3].__r_.__value_.__l.__data_, end[3].__r_.__value_.__l.__size_, (end[3].__r_.__value_.__l.__size_ - end[3].__r_.__value_.__r.__words[0]) >> 2);
            caulk::pooled_semaphore_mutex::_unlock(&end[8]);
            begin = this[26].__begin_;
            Element = ausdk::AUScope::GetElement(&this[3].__end_, 0);
            if (!Element)
            {
              ausdk::Throw(0xFFFFD583);
            }

            v25 = *(Element + 80);
            v26 = v18;
            v27 = objc_opt_new();
            size = __p.__r_.__value_.__l.__size_;
            for (i = __p.__r_.__value_.__r.__words[0]; i != size; ++i)
            {
              LODWORD(v28) = *i;
              v31 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
              [v27 addObject:v31];
            }

            [v26 setObject:v27 forKeyedSubscript:@"DominanceValues"];
            v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:begin];
            [v26 setObject:v32 forKeyedSubscript:@"BlockSize"];

            v33 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
            [v26 setObject:v33 forKeyedSubscript:@"SampleRate"];

            *a5 = v26;
            if (__p.__r_.__value_.__r.__words[0])
            {
              __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v5 = 0;
          }

          else
          {
            v5 = 4294956429;
          }
        }

        else
        {
          v5 = 4294956433;
        }

        goto LABEL_42;
      }

      if (a2 != 3700)
      {
        return v5;
      }

      v5 = 0;
      value_low = LOBYTE(this[15].__end_cap_.__value_);
    }

    else
    {
      if (a2 != 21)
      {
        if (a2 != 2000)
        {
          return v5;
        }

        v9 = objc_opt_new();
        v10 = v9;
        if (v9)
        {
          v11 = v9;
          v12 = this[22].__end_;
          if (v12)
          {
            DominanceZoom::CopyZoomCurveValue(&__p, v12);
            p_end = &this[23].__end_;
            std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(this[23].__end_->__r_.__value_.__r.__words);
            v14 = __p.__r_.__value_.__l.__size_;
            this[23].__begin_ = __p.__r_.__value_.__r.__words[0];
            this[23].__end_ = v14;
            v15 = __p.__r_.__value_.__r.__words[2];
            this[23].__end_cap_.__value_ = __p.__r_.__value_.__r.__words[2];
            if (v15)
            {
              *(v14 + 16) = p_end;
              __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
              *&__p.__r_.__value_.__r.__words[1] = 0uLL;
            }

            else
            {
              this[23].__begin_ = p_end;
            }

            std::vector<std::string>::__vdeallocate(this + 24);
            *&this[24].__begin_ = v36;
            this[24].__end_cap_.__value_ = v37;
            v37 = 0;
            v36 = 0uLL;
            p_begin = &this[25].__begin_;
            if (SHIBYTE(this[25].__end_cap_.__value_) < 0)
            {
              operator delete(*p_begin);
            }

            *p_begin = v38;
            this[25].__end_cap_.__value_ = v39;
            HIBYTE(v39) = 0;
            LOBYTE(v38) = 0;
            *buf = &v36;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
            std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(__p.__r_.__value_.__l.__size_);
          }

          ZoomCurveValue::SaveToDictionary(&this[23], v11);
          v5 = 0;
          *a5 = v11;
        }

        else
        {
          v5 = 4294956433;
        }

LABEL_42:

        return v5;
      }

      v5 = 0;
      value_low = BYTE4(this[27].__begin_);
    }

    *a5 = value_low;
    return v5;
  }

  return 4294956417;
}

void sub_1DDED2C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AUHOAZoom::GetPropertyInfo(AUHOAZoom *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (!a3)
  {
    if (a2 > 2000)
    {
      if (a2 == 2001)
      {
        v7 = 0;
LABEL_13:
        v8 = 8;
        goto LABEL_14;
      }

      if (a2 != 3700)
      {
        return result;
      }

      v7 = 0;
    }

    else
    {
      if (a2 != 21)
      {
        if (a2 != 2000)
        {
          return result;
        }

        v7 = 1;
        goto LABEL_13;
      }

      v7 = 1;
    }

    v8 = 4;
LABEL_14:
    result = 0;
    *a5 = v8;
    *a6 = v7;
  }

  return result;
}

uint64_t *AUHOAZoom::Cleanup(AUHOAZoom *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
  }

  v2 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUHOAZoom.mm";
    v6 = 1024;
    v7 = 197;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%s:%i ----", &v4, 0x12u);
  }

  return std::unique_ptr<DominanceZoom>::reset[abi:ne200100](this + 67, 0);
}

uint64_t *std::unique_ptr<DominanceZoom>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 280);
    std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(v2 + 256);
    if (v3)
    {
      *(v2 + 264) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 216);
    if (v4)
    {
      *(v2 + 224) = v4;
      operator delete(v4);
    }

    DominanceCurveCoordinator::~DominanceCurveCoordinator(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void DominanceCurveCoordinator::~DominanceCurveCoordinator(void **this)
{
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v3 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(this[1]);
}

uint64_t AUHOAZoom::Initialize(AUHOAZoom *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_18227);
  }

  v2 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AUHOAZoom.mm";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 144;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%s:%i ---", &buf, 0x12u);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 96);
  *&buf.mSampleRate = *(Element + 80);
  *&buf.mBytesPerPacket = v4;
  *&buf.mBitsPerChannel = *(Element + 112);
  v5 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v5)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = *(v5 + 96);
  v14 = *(v5 + 80);
  *v15 = v7;
  *&v15[16] = *(v5 + 112);
  if (*&v14 == buf.mSampleRate && DWORD2(v14) == buf.mFormatID && *v15 == *&buf.mBytesPerPacket)
  {
    v8 = *&v15[12];
    if (*&v15[12] == *&buf.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(&v14, &buf, v6) && *(this + 79) == v8)
    {
      *v16 = 1;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, v16, &v17, 1uLL);
      v9 = __p;
      if (__p != v12)
      {
        v9 = __p;
        while (*v9 != *(this + 160))
        {
          if (++v9 == v12)
          {
            goto LABEL_21;
          }
        }
      }

      if (v9 != v12)
      {
        *(this + 78) = *(this + 84);
        operator new();
      }

LABEL_21:
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }
    }
  }

  return 4294956428;
}

void sub_1DDED35F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1E12BD160](v11, 0x10B2C4085F10906);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AUHOAZoom::~AUHOAZoom(AUHOAZoom *this)
{
  *this = &unk_1F592C440;
  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  v2 = (this + 576);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(this + 70));
  std::unique_ptr<DominanceZoom>::reset[abi:ne200100](this + 67, 0);
  std::unique_ptr<std::map<unsigned int,HOAZoomParameterInfo>>::reset[abi:ne200100](this + 66, 0);
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592C440;
  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  v2 = (this + 576);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(this + 70));
  std::unique_ptr<DominanceZoom>::reset[abi:ne200100](this + 67, 0);
  std::unique_ptr<std::map<unsigned int,HOAZoomParameterInfo>>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

void sub_1DDED37DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUDeesser::SupportedNumChannels(AUDeesser *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDeesser::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

uint64_t AUDeesser::CopyClumpName(AUDeesser *this, int a2, int a3, unsigned int a4, __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if ((a3 - 1) > 2)
  {
    return 4294956418;
  }

  v7 = off_1E866CC78[a3 - 1];
  CFRetain(v7);
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUDeesser::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 135);
  }

  return result;
}

uint64_t AUDeesser::GetParameterInfo(AUDeesser *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956418;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  v6 = 2;
  switch(a3)
  {
    case 0:
      buffer->clumpID = 1;
      v7 = @"Low Suppression Band Start Frequency";
      buffer->cfNameString = @"Low Suppression Band Start Frequency";
      v8 = 0x467A000042C80000;
      v9 = -1073741824;
      v10 = kAudioUnitParameterUnit_Hertz;
      v11 = 2500.0;
      goto LABEL_27;
    case 1:
    case 2:
      buffer->clumpID = 1;
      if (a3 == 1)
      {
        v7 = @"Low Suppression Band End Frequency";
      }

      else
      {
        v7 = @"High Suppression Band End Frequency";
      }

      buffer->cfNameString = v7;
      v8 = 0x473B800043480000;
      v9 = -1073741824;
      v10 = kAudioUnitParameterUnit_Hertz;
      v11 = 6000.0;
      goto LABEL_27;
    case 3:
      goto LABEL_13;
    case 4:
      v6 = 3;
LABEL_13:
      buffer->clumpID = v6;
      v7 = @"Suppression RMS Level";
      buffer->cfNameString = @"Suppression RMS Level";
      v8 = 0x41400000C2C00000;
      v9 = -1073741824;
      v10 = kAudioUnitParameterUnit_Decibels;
      v12 = -1038614528;
      goto LABEL_16;
    case 5:
      goto LABEL_19;
    case 6:
      v6 = 3;
LABEL_19:
      buffer->clumpID = v6;
      v7 = @"Threshold Ratio (RMS)";
      buffer->cfNameString = @"Threshold Ratio (RMS)";
      v8 = 0x41400000C2C00000;
      v9 = -1073741824;
      v11 = -9.0;
      goto LABEL_20;
    case 7:
      goto LABEL_26;
    case 8:
      v6 = 3;
LABEL_26:
      v10 = kAudioUnitParameterUnit_Generic;
      v7 = @"Threshold Smoothing Time (ms)";
      buffer->clumpID = v6;
      buffer->cfNameString = @"Threshold Smoothing Time (ms)";
      v8 = 0x42C8000040C00000;
      v9 = -1073741824;
      v11 = 24.0;
      goto LABEL_27;
    case 9:
      goto LABEL_24;
    case 10:
      v6 = 3;
LABEL_24:
      v10 = kAudioUnitParameterUnit_Generic;
      v7 = @"Suppression Attack Time (ms)";
      buffer->clumpID = v6;
      buffer->cfNameString = @"Suppression Attack Time (ms)";
      v8 = 0x4496000040C00000;
      v9 = -1073741824;
      v11 = 10.0;
      goto LABEL_27;
    case 11:
      goto LABEL_15;
    case 12:
      v6 = 3;
LABEL_15:
      v10 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = v6;
      v7 = @"Suppression Release Time (ms)";
      buffer->cfNameString = @"Suppression Release Time (ms)";
      v8 = 0x4496000040C00000;
      v9 = -1073741824;
      v12 = 1120403456;
      goto LABEL_16;
    case 13:
      goto LABEL_11;
    case 14:
      v6 = 3;
LABEL_11:
      v9 = 1073774592;
      buffer->clumpID = v6;
      v7 = @"Measured Threshold Ratio (RMS)";
      buffer->cfNameString = @"Measured Threshold Ratio (RMS)";
      v8 = 0x41400000C2C00000;
      v10 = kAudioUnitParameterUnit_Decibels;
      v12 = -1027604480;
LABEL_16:
      v11 = *&v12;
      goto LABEL_27;
    case 15:
      goto LABEL_9;
    case 16:
      v6 = 3;
LABEL_9:
      v9 = 1073774592;
      v7 = @"S Band Compression";
      buffer->clumpID = v6;
      buffer->cfNameString = @"S Band Compression";
      v8 = 0x41A0000000000000;
      v11 = 0.0;
LABEL_20:
      v10 = kAudioUnitParameterUnit_Decibels;
      goto LABEL_27;
    case 17:
      goto LABEL_22;
    case 18:
      v6 = 3;
LABEL_22:
      buffer->clumpID = v6;
      v7 = @"Monitor S Detection";
      buffer->cfNameString = @"Monitor S Detection";
      v8 = 0x3F80000000000000;
      v9 = -1073741824;
      v11 = 0.0;
      v10 = kAudioUnitParameterUnit_Boolean;
LABEL_27:
      buffer->flags = 135266304;
      CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = v10;
      *&buffer->minValue = v8;
      buffer->defaultValue = v11;
      buffer->flags |= v9;
      break;
    default:
      result = 4294956418;
      break;
  }

  return result;
}

ausdk::AUInputElement *AUDeesser::Render(AUDeesser *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUDeesser::ProcessBufferLists(AUDeesser *this, unsigned int *a2, AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v10 = *(this + 135);
  if (*(this + 136) != v10)
  {
    AUDeesser::UpdateParameters(this);
    *(this + 136) = v10;
  }

  if (*(this + 134) || *(this + 137) <= 1u)
  {
    goto LABEL_5;
  }

  v12 = *(this + 66);
  if (v12)
  {
    v17 = a4;
    v18 = a3;
    return BlockProcessor::Process(v12, a5, &v18, &v17);
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v14 = ausdk::AUBufferList::PrepareBufferOrError((this + 896), Element + 2, a5);
  if ((v15 & 1) == 0)
  {
    ausdk::Throw(v14);
  }

  CopyBufferList(a3, v14);
  v16 = *(this + 137);
  if (v16 == 4)
  {
    AUDeesser::Crossover4Way(this, a2, (this + 672), a4, a5);
    goto LABEL_6;
  }

  if (v16 == 3)
  {
    AUDeesser::Crossover3Way(this, a2, (this + 672), a4, a5);
    goto LABEL_6;
  }

  if (v16 != 2)
  {
LABEL_5:
    CopyBufferList(a3, a4);
  }

  else
  {
    AUDeesser::Crossover2Way(this, a2, (this + 672), a4, a5);
  }

LABEL_6:
  result = 0;
  *(this + 84) = *(this + 84) + a5;
  return result;
}

uint64_t AUDeesser::UpdateParameters(AUDeesser *this)
{
  for (i = 0; i != 8; ++i)
  {
    for (j = 736; j != 816; j += 8)
    {
      AudioUnitSetParameter(*(this + j), i | 0x3E8, 0, 0, 1.0, 0);
    }
  }

  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v4, 0), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0) || (v9 = ausdk::AUElement::GetParameter(v7, 1u), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0))
  {
    abort();
  }

  v12 = ausdk::AUElement::GetParameter(v10, 2u);
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v14 = *(Element + 80) * 0.49000001;
  if (Parameter >= v14)
  {
    v15 = 1;
LABEL_14:
    *(this + 137) = v15;
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = v17;
      AudioUnitSetParameter(*(this + 92), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 92), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 92), v16 | 0xBB8, 0, 0, v9, 0);
      AudioUnitSetParameter(*(this + 92), v16 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 93), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 93), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 93), v16 | 0xBB8, 0, 0, v9, 0);
      AudioUnitSetParameter(*(this + 93), v16 | 0x7D0, 0, 0, 2.0, 0);
      AudioUnitSetParameter(*(this + 94), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 94), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 94), v16 | 0xBB8, 0, 0, v12, 0);
      AudioUnitSetParameter(*(this + 94), v16 | 0x7D0, 0, 0, 2.0, 0);
      AudioUnitSetParameter(*(this + 95), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 95), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 95), v16 | 0xBB8, 0, 0, v12, 0);
      AudioUnitSetParameter(*(this + 95), v16 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 96), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 96), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 96), v16 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 96), v16 | 0x7D0, 0, 0, 2.0, 0);
      AudioUnitSetParameter(*(this + 97), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 97), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 97), v16 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 97), v16 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 98), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 98), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 98), v16 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 98), v16 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 99), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 99), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 99), v16 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 99), v16 | 0x7D0, 0, 0, 2.0, 0);
      AudioUnitSetParameter(*(this + 100), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 100), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 100), v16 | 0xBB8, 0, 0, v12, 0);
      AudioUnitSetParameter(*(this + 100), v16 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 101), v16 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 101), v16 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 101), v16 | 0xBB8, 0, 0, v12, 0);
      AudioUnitSetParameter(*(this + 101), v16 | 0x7D0, 0, 0, 2.0, 0);
      v17 = 0;
      v16 = 1;
    }

    while ((v18 & 1) != 0);
    goto LABEL_22;
  }

  if (v9 >= v14)
  {
    v19 = 0;
    *(this + 137) = 2;
    v20 = 1;
    do
    {
      v21 = v20;
      AudioUnitSetParameter(*(this + 92), v19 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 92), v19 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 92), v19 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 93), v19 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 93), v19 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 93), v19 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 92), v19 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 93), v19 | 0x7D0, 0, 0, 2.0, 0);
      v20 = 0;
      v19 = 1;
    }

    while ((v21 & 1) != 0);
  }

  else
  {
    if (v12 < v14)
    {
      v15 = 4;
      goto LABEL_14;
    }

    v22 = 0;
    *(this + 137) = 3;
    v23 = 1;
    do
    {
      v24 = v23;
      AudioUnitSetParameter(*(this + 92), v22 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 92), v22 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 92), v22 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 92), v22 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 93), v22 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 93), v22 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 93), v22 | 0xBB8, 0, 0, Parameter, 0);
      AudioUnitSetParameter(*(this + 93), v22 | 0x7D0, 0, 0, 2.0, 0);
      AudioUnitSetParameter(*(this + 94), v22 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 94), v22 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 94), v22 | 0xBB8, 0, 0, v9, 0);
      AudioUnitSetParameter(*(this + 94), v22 | 0x7D0, 0, 0, 2.0, 0);
      AudioUnitSetParameter(*(this + 95), v22 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 95), v22 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 95), v22 | 0xBB8, 0, 0, v9, 0);
      AudioUnitSetParameter(*(this + 95), v22 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 96), v22 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 96), v22 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 96), v22 | 0xBB8, 0, 0, v9, 0);
      AudioUnitSetParameter(*(this + 96), v22 | 0x7D0, 0, 0, 1.0, 0);
      AudioUnitSetParameter(*(this + 97), v22 | 0xFA0, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 97), v22 | 0x3E8, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*(this + 97), v22 | 0xBB8, 0, 0, v9, 0);
      AudioUnitSetParameter(*(this + 97), v22 | 0x7D0, 0, 0, 2.0, 0);
      v23 = 0;
      v22 = 1;
    }

    while ((v24 & 1) != 0);
  }

LABEL_22:
  ausdk::AUBase::GetParameter(this, 3u, 0, 0, this + 163);
  ausdk::AUBase::GetParameter(this, 5u, 0, 0, this + 165);
  ausdk::AUBase::GetParameter(this, 4u, 0, 0, this + 164);
  ausdk::AUBase::GetParameter(this, 6u, 0, 0, this + 166);
  inValue = 0.0;
  ausdk::AUBase::GetParameter(this, 9u, 0, 0, &inValue);
  inValue = (1000.0 / inValue) * -0.06;
  AudioUnitSetParameter(*(this + 102), 7u, 0, 0, inValue, 0);
  ausdk::AUBase::GetParameter(this, 0xBu, 0, 0, &inValue);
  inValue = (1000.0 / inValue) * 0.06;
  AudioUnitSetParameter(*(this + 102), 6u, 0, 0, inValue, 0);
  ausdk::AUBase::GetParameter(this, 7u, 0, 0, &inValue);
  AudioUnitSetParameter(*(this + 102), 8u, 0, 0, inValue, 0);
  v26 = 0.0;
  ausdk::AUBase::GetParameter(this, 0x11u, 0, 0, &v26);
  *(this + 648) = v26 > 0.0;
  ausdk::AUBase::GetParameter(this, 0xAu, 0, 0, &inValue);
  inValue = (1000.0 / inValue) * -0.06;
  AudioUnitSetParameter(*(this + 103), 7u, 0, 0, inValue, 0);
  ausdk::AUBase::GetParameter(this, 0xCu, 0, 0, &inValue);
  inValue = (1000.0 / inValue) * 0.06;
  AudioUnitSetParameter(*(this + 103), 6u, 0, 0, inValue, 0);
  ausdk::AUBase::GetParameter(this, 8u, 0, 0, &inValue);
  AudioUnitSetParameter(*(this + 103), 8u, 0, 0, inValue, 0);
  v26 = 0.0;
  result = ausdk::AUBase::GetParameter(this, 0x12u, 0, 0, &v26);
  *(this + 649) = v26 > 0.0;
  return result;
}

void AUDeesser::Crossover2Way(AUDeesser *this, unsigned int *a2, const AudioTimeStamp *a3, AudioBufferList *a4, UInt32 a5)
{
  v5 = *&a3->mRateScalar;
  *&inTimeStamp.mSampleTime = *&a3->mSampleTime;
  *&inTimeStamp.mRateScalar = v5;
  v6 = *&a3->mSMPTETime.mHours;
  *&inTimeStamp.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&inTimeStamp.mSMPTETime.mHours = v6;
  if (!*(this + 224))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v11 = *(this + 113);
  CopyBufferList((v11 + 48), a4);
  __C = 0.0;
  v12 = a5;
  vDSP_svesq(a4->mBuffers[0].mData, 1, &__C, a5);
  __C = __C / a5;
  v13 = (this + 552);
  v14 = *(this + 139);
  *(*(this + 71) + 4 * v14) = __C;
  v15 = *(this + 140);
  *(this + 139) = (v14 + 1) % v15;
  v16 = *(this + 138);
  if (v16 < v15)
  {
    *v13 = v16 + 1;
  }

  v17 = SlidingRMSWindow::ComputeRMS(v13);
  *&v17 = *&v17 + 1.0e-20;
  v18 = log10f(*&v17) * 10.0;
  AudioUnitProcess(*(this + 93), a2, &inTimeStamp, a5, (v11 + 48));
  __C = 0.0;
  vDSP_svesq(*(v11 + 64), 1, &__C, a5);
  __C = __C / a5;
  v19 = (this + 584);
  v20 = *(this + 147);
  *(*(this + 75) + 4 * v20) = __C;
  v21 = *(this + 148);
  *(this + 147) = (v20 + 1) % v21;
  v22 = *(this + 146);
  if (v22 < v21)
  {
    *v19 = v22 + 1;
  }

  v23 = SlidingRMSWindow::ComputeRMS(v19);
  *&v23 = *&v23 + 1.0e-20;
  v24 = log10f(*&v23) * 10.0;
  v25 = 0.0;
  if (v18 >= -50.0 && (v24 - v18) >= *(this + 165))
  {
    v25 = *(this + 163);
    if (*(this + 232))
    {
      v25 = v24 + v25;
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  AudioUnitSetParameter(*(this + 102), 1u, 0, 0, v25, 0);
  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_25;
  }

  ausdk::AUElement::SetParameter(v27, 0xDu, v24 - v18);
  AudioUnitProcess(*(this + 92), a2, &inTimeStamp, a5, a4);
  if ((*(this + 648) & 1) == 0)
  {
    AudioUnitProcess(*(this + 102), a2, &inTimeStamp, a5, (v11 + 48));
  }

  if (a4->mNumberBuffers)
  {
    v29 = 0;
    p_mData = &a4->mBuffers[0].mData;
    v31 = (v11 + 64);
    do
    {
      if (*(this + 648) == 1)
      {
        bzero(*p_mData, *(p_mData - 1));
      }

      if ((v26 & 1) != 0 || (*(this + 648) & 1) == 0)
      {
        MEMORY[0x1E12BE5D0](*v31, 1, *p_mData, 1, *p_mData, 1, v12);
      }

      ++v29;
      p_mData += 2;
      v31 += 2;
    }

    while (v29 < a4->mNumberBuffers);
  }

  outValue = 0.0;
  AudioUnitGetParameter(*(this + 102), 0x3Eu, 0, 0, &outValue);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
LABEL_25:
    abort();
  }

  ausdk::AUElement::SetParameter(v32, 0xFu, outValue);
}

void AUDeesser::Crossover3Way(AUDeesser *this, unsigned int *a2, const AudioTimeStamp *a3, AudioBufferList *a4, unsigned int a5)
{
  v9 = *&a3->mRateScalar;
  *&inTimeStamp.mSampleTime = *&a3->mSampleTime;
  *&inTimeStamp.mRateScalar = v9;
  v10 = *&a3->mSMPTETime.mHours;
  *&inTimeStamp.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&inTimeStamp.mSMPTETime.mHours = v10;
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v12 = ausdk::AUBufferList::PrepareBufferOrError((this + 832), Element + 2, a5);
  if ((v13 & 1) == 0)
  {
    ausdk::Throw(v12);
  }

  if (!*(this + 224))
  {
    goto LABEL_34;
  }

  v14 = *(this + 113);
  CopyBufferList((v14 + 48), a4);
  __C = 0.0;
  v15 = a5;
  vDSP_svesq(a4->mBuffers[0].mData, 1, &__C, a5);
  __C = __C / a5;
  v16 = (this + 552);
  v17 = *(this + 139);
  *(*(this + 71) + 4 * v17) = __C;
  v18 = *(this + 140);
  *(this + 139) = (v17 + 1) % v18;
  v19 = *(this + 138);
  if (v19 < v18)
  {
    *v16 = v19 + 1;
  }

  v20 = SlidingRMSWindow::ComputeRMS(v16);
  *&v20 = *&v20 + 1.0e-20;
  v21 = log10f(*&v20);
  if (!*(this + 208))
  {
LABEL_34:
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v22 = v21;
  v23 = *(this + 105);
  AudioUnitProcess(*(this + 92), a2, &inTimeStamp, a5, a4);
  CopyBufferList(a4, &v23[2].mNumberBuffers);
  AUDeesser::ApplyAllpassFilter(this, a2, &inTimeStamp, a4, v23 + 2, 2u, 3, a5);
  CopyBufferList((v14 + 48), a4);
  AudioUnitProcess(*(this + 93), a2, &inTimeStamp, a5, a4);
  CopyBufferList(a4, (v14 + 48));
  AudioUnitProcess(*(this + 97), a2, &inTimeStamp, a5, a4);
  if (v23[2].mNumberBuffers)
  {
    v24 = 0;
    p_mData = &v23[2].mBuffers[0].mData;
    v26 = &a4->mBuffers[0].mData;
    do
    {
      v28 = *v26;
      v26 += 2;
      v27 = v28;
      v29 = *p_mData;
      p_mData += 2;
      MEMORY[0x1E12BE5D0](v27, 1, v29, 1, v29, 1, a5);
      ++v24;
    }

    while (v24 < v23[2].mNumberBuffers);
  }

  v30 = v22 * 10.0;
  AudioUnitProcess(*(this + 96), a2, &inTimeStamp, a5, (v14 + 48));
  __C = 0.0;
  vDSP_svesq(*(v14 + 64), 1, &__C, a5);
  __C = __C / a5;
  v31 = (this + 584);
  v32 = *(this + 147);
  *(*(this + 75) + 4 * v32) = __C;
  v33 = *(this + 148);
  *(this + 147) = (v32 + 1) % v33;
  v34 = *(this + 146);
  if (v34 < v33)
  {
    *v31 = v34 + 1;
  }

  v35 = SlidingRMSWindow::ComputeRMS(v31);
  *&v35 = *&v35 + 1.0e-20;
  v36 = log10f(*&v35) * 10.0;
  v37 = 0.0;
  if (v30 >= -50.0 && (v36 - v30) >= *(this + 165))
  {
    v37 = *(this + 163);
    if (*(this + 232))
    {
      v37 = v36 + v37;
    }

    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  AudioUnitSetParameter(*(this + 102), 1u, 0, 0, v37, 0);
  v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  ausdk::AUElement::SetParameter(v39, 0xDu, v36 - v30);
  if ((*(this + 648) & 1) == 0)
  {
    AudioUnitProcess(*(this + 102), a2, &inTimeStamp, a5, (v14 + 48));
  }

  if (v23[2].mNumberBuffers)
  {
    v41 = 0;
    v42 = &v23[2].mBuffers[0].mData;
    v43 = (v14 + 64);
    do
    {
      if (*(this + 648) == 1)
      {
        bzero(*v42, *(v42 - 1));
      }

      if ((v38 & 1) != 0 || (*(this + 648) & 1) == 0)
      {
        MEMORY[0x1E12BE5D0](*v43, 1, *v42, 1, *v42, 1, v15);
      }

      ++v41;
      v42 += 2;
      v43 += 2;
    }

    while (v41 < v23[2].mNumberBuffers);
  }

  CopyBufferList(&v23[2], a4);
  outValue = 0.0;
  AudioUnitGetParameter(*(this + 102), 0x3Eu, 0, 0, &outValue);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
LABEL_31:
    abort();
  }

  ausdk::AUElement::SetParameter(v44, 0xFu, outValue);
}

const void **AUDeesser::Crossover4Way(AUDeesser *this, unsigned int *a2, const AudioTimeStamp *a3, AudioBufferList *a4, unsigned int a5)
{
  v9 = *&a3->mRateScalar;
  *&inTimeStamp.mSampleTime = *&a3->mSampleTime;
  *&inTimeStamp.mRateScalar = v9;
  v10 = *&a3->mSMPTETime.mHours;
  *&inTimeStamp.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&inTimeStamp.mSMPTETime.mHours = v10;
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_63;
  }

  v12 = ausdk::AUBufferList::PrepareBufferOrError((this + 832), Element + 2, a5);
  if ((v13 & 1) == 0)
  {
    goto LABEL_64;
  }

  v14 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v14)
  {
LABEL_63:
    ausdk::Throw(0xFFFFD583);
  }

  v12 = ausdk::AUBufferList::PrepareBufferOrError((this + 864), v14 + 2, a5);
  if ((v15 & 1) == 0)
  {
LABEL_64:
    ausdk::Throw(v12);
  }

  if (!*(this + 224))
  {
    goto LABEL_65;
  }

  v16 = *(this + 113);
  CopyBufferList((v16 + 48), a4);
  __C = 0.0;
  v17 = a5;
  vDSP_svesq(a4->mBuffers[0].mData, 1, &__C, a5);
  v18 = a5;
  __C = __C / a5;
  v19 = (this + 552);
  v20 = *(this + 139);
  *(*(this + 71) + 4 * v20) = __C;
  v21 = *(this + 140);
  *(this + 139) = (v20 + 1) % v21;
  v22 = *(this + 138);
  if (v22 < v21)
  {
    *v19 = v22 + 1;
  }

  v23 = SlidingRMSWindow::ComputeRMS(v19);
  *&v23 = *&v23 + 1.0e-20;
  v24 = log10f(*&v23);
  AudioUnitProcess(*(this + 92), a2, &inTimeStamp, a5, a4);
  if (!*(this + 208) || (v25 = *(this + 105), CopyBufferList(a4, (v25 + 48)), AUDeesser::ApplyAllpassFilter(this, a2, &inTimeStamp, (v25 + 48), a4, 2u, 3, a5), CopyBufferList(a4, (v25 + 48)), AudioUnitProcess(*(this + 98), a2, &inTimeStamp, a5, a4), !*(this + 216)))
  {
LABEL_65:
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v26 = *(this + 109);
  if (*(this + 648) & 1) != 0 || (*(this + 649))
  {
    if (*(v26 + 48))
    {
      v27 = 0;
      v28 = (v26 + 64);
      do
      {
        bzero(*v28, *(v28 - 1));
        ++v27;
        v28 += 2;
      }

      while (v27 < *(v26 + 48));
    }
  }

  else
  {
    CopyBufferList(a4, (v26 + 48));
  }

  v29 = v24 * 10.0;
  AudioUnitProcess(*(this + 99), a2, &inTimeStamp, a5, (v25 + 48));
  __C = 0.0;
  vDSP_svesq(*(v25 + 64), 1, &__C, a5);
  __C = __C / v18;
  v30 = (this + 584);
  v31 = *(this + 147);
  *(*(this + 75) + 4 * v31) = __C;
  v32 = *(this + 148);
  *(this + 147) = (v31 + 1) % v32;
  v33 = *(this + 146);
  if (v33 < v32)
  {
    *v30 = v33 + 1;
  }

  v34 = SlidingRMSWindow::ComputeRMS(v30);
  *&v34 = *&v34 + 1.0e-20;
  v35 = log10f(*&v34) * 10.0;
  v36 = 0.0;
  v37 = v35 - v29;
  v71 = v16;
  if (v29 >= -50.0 && v37 >= *(this + 165))
  {
    v36 = *(this + 163);
    v39 = v35 + v36;
    if (*(this + 232))
    {
      v36 = v39;
    }

    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  AudioUnitSetParameter(*(this + 102), 1u, 0, 0, v36, 0);
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_62;
  }

  ausdk::AUElement::SetParameter(v40, 0xDu, v37);
  if ((*(this + 648) & 1) == 0)
  {
    AudioUnitProcess(*(this + 102), a2, &inTimeStamp, a5, (v25 + 48));
  }

  outValue = 0.0;
  AudioUnitGetParameter(*(this + 102), 0x3Eu, 0, 0, &outValue);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_62;
  }

  ioActionFlags = a2;
  ausdk::AUElement::SetParameter(v42, 0xFu, outValue);
  if ((*(this + 648) & 1) == 0)
  {
    v38 = *(this + 649) ^ 1;
  }

  v44 = *(v26 + 48);
  if (v44)
  {
    v45 = 0;
    v46 = (v26 + 64);
    v47 = (v25 + 64);
    do
    {
      if (v38)
      {
        MEMORY[0x1E12BE5D0](*v47, 1, *v46, 1, *v46, 1, a5);
        v44 = *(v26 + 48);
      }

      ++v45;
      v46 += 2;
      v47 += 2;
    }

    while (v45 < v44);
  }

  CopyBufferList((v71 + 48), a4);
  AudioUnitProcess(*(this + 93), ioActionFlags, &inTimeStamp, a5, a4);
  CopyBufferList(a4, (v25 + 48));
  AUDeesser::ApplyAllpassFilter(this, ioActionFlags, &inTimeStamp, (v25 + 48), a4, 4u, 5, a5);
  CopyBufferList(a4, (v25 + 48));
  AudioUnitProcess(*(this + 100), ioActionFlags, &inTimeStamp, a5, a4);
  __C = 0.0;
  vDSP_svesq(a4->mBuffers[0].mData, 1, &__C, a5);
  __C = __C / v18;
  v48 = (this + 616);
  v49 = *(this + 155);
  *(*(this + 79) + 4 * v49) = __C;
  v50 = *(this + 156);
  *(this + 155) = (v49 + 1) % v50;
  v51 = *(this + 154);
  if (v51 < v50)
  {
    *v48 = v51 + 1;
  }

  v52 = SlidingRMSWindow::ComputeRMS(v48);
  *&v52 = *&v52 + 1.0e-20;
  v53 = log10f(*&v52) * 10.0;
  v54 = 0.0;
  v55 = v53 - v29;
  if (v29 >= -50.0 && v55 >= *(this + 166))
  {
    v54 = *(this + 164);
    v57 = v53 + v54;
    if (*(this + 232))
    {
      v54 = v57;
    }

    v56 = 1;
  }

  else
  {
    v56 = 0;
  }

  AudioUnitSetParameter(*(this + 103), 1u, 0, 0, v54, 0);
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_62;
  }

  ausdk::AUElement::SetParameter(v58, 0xEu, v55);
  if ((*(this + 649) & 1) == 0)
  {
    AudioUnitProcess(*(this + 103), ioActionFlags, &inTimeStamp, a5, a4);
  }

  AudioUnitGetParameter(*(this + 103), 0x3Eu, 0, 0, &outValue);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
LABEL_62:
    abort();
  }

  ausdk::AUElement::SetParameter(v60, 0x10u, outValue);
  if ((*(this + 649) & 1) == 0)
  {
    v56 = *(this + 648) ^ 1;
  }

  v62 = *(v26 + 48);
  if (v62)
  {
    v63 = 0;
    v64 = (v26 + 64);
    p_mData = &a4->mBuffers[0].mData;
    do
    {
      if (v56)
      {
        MEMORY[0x1E12BE5D0](*p_mData, 1, *v64, 1, *v64, 1, a5);
        v62 = *(v26 + 48);
      }

      ++v63;
      v64 += 2;
      p_mData += 2;
    }

    while (v63 < v62);
  }

  AudioUnitProcess(*(this + 101), ioActionFlags, &inTimeStamp, a5, (v25 + 48));
  v66 = *(v26 + 48);
  if (v66)
  {
    v67 = 0;
    v68 = (v26 + 64);
    v69 = (v25 + 64);
    do
    {
      if ((*(this + 649) & 1) == 0 && (*(this + 648) & 1) == 0)
      {
        MEMORY[0x1E12BE5D0](*v69, 1, *v68, 1, *v68, 1, v17);
        v66 = *(v26 + 48);
      }

      ++v67;
      v68 += 2;
      v69 += 2;
    }

    while (v67 < v66);
  }

  return CopyBufferList((v26 + 48), a4);
}

uint64_t AUDeesser::ApplyAllpassFilter(AudioUnit *this, unsigned int *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioBufferList *a5, unsigned int a6, int a7, UInt32 inNumberFrames)
{
  v14 = (this + 92);
  AudioUnitProcess(this[a6 + 92], a2, a3, inNumberFrames, a5);
  result = AudioUnitProcess(*&v14[8 * a7], a2, a3, inNumberFrames, a4);
  if (a5->mNumberBuffers)
  {
    v16 = 0;
    v17 = 16;
    do
    {
      result = MEMORY[0x1E12BE5D0](*(&a5->mNumberBuffers + v17), 1, *(&a4->mNumberBuffers + v17), 1, *(&a5->mNumberBuffers + v17), 1, inNumberFrames);
      ++v16;
      v17 += 16;
    }

    while (v16 < a5->mNumberBuffers);
  }

  return result;
}

uint64_t AUDeesser::SetParameter(AUDeesser *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result)
  {
    ++*(this + 135);
  }

  return result;
}

uint64_t AUDeesser::SetProperty(AUDeesser *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 64001)
  {
    if (a2 == 3700)
    {
      if (a6 >= 4)
      {
        result = 0;
        *(this + 376) = *a5;
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
        *(this + 134) = *a5;
        return result;
      }
    }

    return 4294956445;
  }

  if (a6 < 4)
  {
    return 4294956445;
  }

  result = 0;
  *(this + 232) = *a5;
  return result;
}

uint64_t AUDeesser::GetProperty(AUDeesser *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 64001:
      v6 = *(this + 232);
      break;
    case 3700:
      v6 = *(this + 376);
      break;
    case 21:
      v6 = *(this + 134);
      break;
    default:
      return 4294956417;
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t AUDeesser::GetPropertyInfo(AUDeesser *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 21 && a2 != 64001 && a2 != 3700)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUDeesser::Reset(AUDeesser *this)
{
  *(this + 69) = 0;
  *(this + 73) = 0;
  *(this + 77) = 0;
  result = AudioUnitReset(*(this + 102), 0, 0);
  if (!result)
  {
    result = AudioUnitReset(*(this + 103), 0, 0);
    if (!result)
    {
      v3 = 0;
      v4 = this + 736;
      while (1)
      {
        result = AudioUnitReset(*&v4[v3], 0, 0);
        if (result)
        {
          break;
        }

        v3 += 8;
        if (v3 == 80)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t AUDeesser::Cleanup(AUDeesser *this)
{
  v2 = 0;
  v3 = this + 736;
  while (1)
  {
    v4 = *&v3[v2];
    if (v4)
    {
      result = AudioUnitUninitialize(v4);
      if (result)
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 80)
    {
      v6 = *(this + 102);
      if (!v6 || (result = AudioUnitUninitialize(v6), !result))
      {
        result = *(this + 103);
        if (result)
        {
          result = AudioUnitUninitialize(result);
        }
      }

      break;
    }
  }

  v7 = *(this + 66);
  if (v7)
  {
    BlockBuffer::~BlockBuffer((v7 + 24));
    BlockBuffer::~BlockBuffer(v7);
    result = MEMORY[0x1E12BD160]();
    *(this + 66) = 0;
  }

  return result;
}

uint64_t AUDeesser::Initialize(AUDeesser *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_26;
  }

  v3 = *(Element + 96);
  v17 = *(Element + 80);
  *v18 = v3;
  *&v18[16] = *(Element + 112);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_26;
  }

  v6 = *(v4 + 96);
  *&v16.mSampleRate = *(v4 + 80);
  *&v16.mBytesPerPacket = v6;
  *&v16.mBitsPerChannel = *(v4 + 112);
  v7 = *&v17;
  mSampleRate = v16.mSampleRate;
  if (*&v17 != v16.mSampleRate || DWORD2(v17) != v16.mFormatID || *v18 != *&v16.mBytesPerPacket || *&v18[12] != *&v16.mChannelsPerFrame || !CA::Implementation::EquivalentFormatFlags(&v17, &v16, v5))
  {
    return 4294956428;
  }

  v9 = *(this + 84);
  inData = v9;
  if (*(this + 376) != 1 || (v10 = v9 / mSampleRate, v10 > 0.02))
  {
    inData = (mSampleRate * dbl_1DE09DF00[*(this + 232) == 0]) & 0xFFFFFFFC;
    if (ausdk::AUScope::GetElement((this + 80), 0))
    {
      if (ausdk::AUScope::GetElement((this + 128), 0))
      {
        operator new();
      }
    }

LABEL_26:
    ausdk::Throw(0xFFFFD583);
  }

  _ZNSt3__18optionalIN5ausdk12AUBufferListEE7emplaceB8ne200100IJEvEERS2_DpOT_(this + 832);
  ausdk::AUBufferList::Allocate((this + 832), &v16, v9);
  _ZNSt3__18optionalIN5ausdk12AUBufferListEE7emplaceB8ne200100IJEvEERS2_DpOT_(this + 864);
  ausdk::AUBufferList::Allocate((this + 864), &v16, v9);
  _ZNSt3__18optionalIN5ausdk12AUBufferListEE7emplaceB8ne200100IJEvEERS2_DpOT_(this + 896);
  ausdk::AUBufferList::Allocate((this + 896), &v16, v9);
  if (!(*(*this + 72))(this, 0, 0))
  {
    v12 = 736;
    while (!AudioUnitSetProperty(*(this + v12), 0xEu, 0, 0, &inData, 4u))
    {
      v12 += 8;
      if (v12 == 816)
      {
        if (AudioUnitSetProperty(*(this + 102), 0xEu, 0, 0, &inData, 4u))
        {
          return 4294956421;
        }

        if (AudioUnitSetProperty(*(this + 103), 0xEu, 0, 0, &inData, 4u))
        {
          return 4294956421;
        }

        AUDeesser::UpdateParameters(this);
        *(this + 136) = *(this + 135);
        AUDeesser::InitializeUnderlyingAUs(this);
        if (v13)
        {
          return 4294956421;
        }

        if (((flt_1DE09B558[*(this + 232) == 0] / inData) / v7) <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = ((flt_1DE09B558[*(this + 232) == 0] / inData) / v7);
        }

        std::valarray<float>::resize(this + 568, v7);
        *(this + 140) = v14;
        *(this + 69) = 0;
        std::valarray<float>::resize(this + 600, v7);
        *(this + 148) = v14;
        *(this + 73) = 0;
        std::valarray<float>::resize(this + 632, v7);
        result = 0;
        *(this + 156) = v14;
        *(this + 77) = 0;
        return result;
      }
    }
  }

  return 4294956421;
}

uint64_t _ZNSt3__18optionalIN5ausdk12AUBufferListEE7emplaceB8ne200100IJEvEERS2_DpOT_(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *(a1 + 8))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return a1;
}

double AUDeesser::InitializeUnderlyingAUs(AUDeesser *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = 0;
  v4 = *(Element + 96);
  v12 = *(Element + 80);
  v13 = v4;
  v14 = *(Element + 112);
  while (1)
  {
    v5 = *(this + v3 + 736);
    if (v5)
    {
      v9 = v12;
      v10 = v13;
      v11 = v14;
      if (SetUpAudioUnit(v5, &v9, 0))
      {
        break;
      }
    }

    v3 += 8;
    if (v3 == 80)
    {
      v7 = *(this + 102);
      v9 = v12;
      v10 = v13;
      v11 = v14;
      if (!SetUpAudioUnit(v7, &v9, 1))
      {
        v8 = *(this + 103);
        v9 = v12;
        v10 = v13;
        v11 = v14;
        SetUpAudioUnit(v8, &v9, 1);
        result = 0.0;
        *(this + 44) = 0u;
        *(this + 45) = 0u;
        *(this + 42) = 0u;
        *(this + 43) = 0u;
        *(this + 182) = 1;
      }

      return result;
    }
  }

  return result;
}

uint64_t SetUpAudioUnit(OpaqueAudioComponentInstance *a1, const void *a2, int a3)
{
  inData = a3;
  result = AudioUnitUninitialize(a1);
  if (!result)
  {
    result = AudioUnitSetProperty(a1, 8u, 1u, 0, a2, 0x28u);
    if (!result)
    {
      result = AudioUnitSetProperty(a1, 8u, 2u, 0, a2, 0x28u);
      if (!result)
      {
        if (!a3 || (result = AudioUnitSetProperty(a1, 0xE74u, 0, 0, &inData, 4u), !result))
        {
          ioDataSize = 4;
          outData = 0;
          result = AudioUnitGetProperty(a1, 0xBu, 1u, 0, &outData, &ioDataSize);
          if (!result)
          {
            if (outData)
            {
              for (i = 0; i < outData; ++i)
              {
                v9 = 0;
                AudioUnitSetProperty(a1, 0x33u, 1u, 0, &v9, 4u);
              }
            }

            ioDataSize = 4;
            outData = 0;
            result = AudioUnitGetProperty(a1, 0xBu, 2u, 0, &outData, &ioDataSize);
            if (!result)
            {
              if (outData)
              {
                for (j = 0; j < outData; ++j)
                {
                  v9 = 0;
                  AudioUnitSetProperty(a1, 0x33u, 2u, 0, &v9, 4u);
                }
              }

              return AudioUnitInitialize(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

{
  v11 = a3;
  v6 = AudioUnitUninitialize(a1);
  if (v6)
  {
    return v6;
  }

  v6 = AudioUnitSetProperty(a1, 8u, 1u, 0, a2, 0x28u);
  if (v6)
  {
    return v6;
  }

  v6 = AudioUnitSetProperty(a1, 8u, 2u, 0, a2, 0x28u);
  if (v6)
  {
    return v6;
  }

  if (a3)
  {
    v6 = AudioUnitSetProperty(a1, 0xE74u, 0, 0, &v11, 4u);
    if (v6)
    {
      return v6;
    }
  }

  ioDataSize = 4;
  outData = 0;
  if (!AudioUnitGetProperty(a1, 0xBu, 1u, 0, &outData, &ioDataSize) && outData)
  {
    for (i = 0; i < outData; ++i)
    {
      inData = 0;
      AudioUnitSetProperty(a1, 0x33u, 1u, 0, &inData, 4u);
    }
  }

  outData = 0;
  Property = AudioUnitGetProperty(a1, 0xBu, 2u, 0, &outData, &ioDataSize);
  if (!Property && outData)
  {
    for (j = 0; j < outData; ++j)
    {
      inData = 0;
      AudioUnitSetProperty(a1, 0x33u, 2u, 0, &inData, 4u);
    }
  }

  if (!Property)
  {
    return AudioUnitInitialize(a1);
  }

  return Property;
}

uint64_t AUDeesser::BlockProcessClassFunc(AUDeesser *this, void *a2, const void ***a3, AudioBufferList **a4, AudioBufferList **a5)
{
  v7 = a2;
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v10 = ausdk::AUBufferList::PrepareBufferOrError((this + 896), Element + 2, v7);
  if ((v11 & 1) == 0)
  {
    ausdk::Throw(v10);
  }

  CopyBufferList(*a3, v10);
  v15 = 512;
  v12 = *(this + 137);
  v13 = *a4;
  switch(v12)
  {
    case 4:
      AUDeesser::Crossover4Way(this, &v15, (this + 672), v13, v7);
      break;
    case 3:
      AUDeesser::Crossover3Way(this, &v15, (this + 672), v13, v7);
      break;
    case 2:
      AUDeesser::Crossover2Way(this, &v15, (this + 672), v13, v7);
      break;
    default:
      CopyBufferList(*a3, *a4);
      break;
  }

  *(this + 84) = *(this + 84) + v7;
  return 0;
}

void AUDeesser::~AUDeesser(OpaqueAudioComponentInstance **this)
{
  AUDeesser::~AUDeesser(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592C6B0;
  AUDeesser::Cleanup(this);
  v2 = 0;
  for (i = 92; i != 102; ++i)
  {
    if (this[i])
    {
      v2 = AudioComponentInstanceDispose(this[i]);
      this[i] = 0;
    }
  }

  if (!v2)
  {
    v4 = this[102];
    if (!v4 || (v5 = AudioComponentInstanceDispose(v4), this[102] = 0, !v5))
    {
      v6 = this[103];
      if (v6)
      {
        AudioComponentInstanceDispose(v6);
        this[103] = 0;
      }
    }
  }

  std::__optional_destruct_base<ausdk::AUBufferList,false>::~__optional_destruct_base[abi:ne200100]((this + 112));
  std::__optional_destruct_base<ausdk::AUBufferList,false>::~__optional_destruct_base[abi:ne200100]((this + 108));
  std::__optional_destruct_base<ausdk::AUBufferList,false>::~__optional_destruct_base[abi:ne200100]((this + 104));
  CDSPSplitComplex::~CDSPSplitComplex((this + 77));
  CDSPSplitComplex::~CDSPSplitComplex((this + 73));
  CDSPSplitComplex::~CDSPSplitComplex((this + 69));

  ausdk::AUBase::~AUBase(this);
}

uint64_t std::__optional_destruct_base<ausdk::AUBufferList,false>::~__optional_destruct_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 8))
    {
      (*(ausdk::BufferAllocator::instance(void)::global + 3))();
      *(a1 + 8) = 0;
    }

    *(a1 + 16) = 0;
    *a1 = 0;
  }

  return a1;
}

float learnrate_v4::getAdaptationRate4_v6(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v34 = 0.0;
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v33[-((v2 + 15) & 0x7FFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v33[-v8];
  if (*(v10 + 148) == 1)
  {
    v34 = *(a1 + 140) + *(a1 + 140);
    v11 = v5;
    MEMORY[0x1E12BE940](*(a1 + 64), 1, &v34, v3, 1, v5);
    v34 = 9.0e-10;
    MEMORY[0x1E12BE8A0](*(a1 + 48), 1, &v34, v9, 1, v11);
    vDSP_vmin(v3, 1, v9, 1, v3, 1, v11);
    v34 = 0.35;
    MEMORY[0x1E12BE940](v3, 1, &v34, v3, 1, v11);
    v34 = *(a1 + 144) * 0.3;
    MEMORY[0x1E12BE940](v9, 1, &v34, *(a1 + 112), 1, v11);
    MEMORY[0x1E12BE5D0](v3, 1, *(a1 + 112), 1, v3, 1, v11);
    vDSP_vdiv(v9, 1, v3, 1, *(a1 + 112), 1, v11);
  }

  else
  {
    v13 = (v5 - 1);
    if (v7)
    {
      v14 = *(a1 + 4);
      v15 = (v13 * 2000.0) * 9.3132e-10;
      v12 = 0;
      if (v14 > v15)
      {
        v16 = v14 * 0.25;
        v34 = v16;
        v17 = *(a1 + 32);
        if (v16 > (v17 * 0.25))
        {
          v34 = v17 * 0.25;
          v16 = v17 * 0.25;
        }

        *v12.i32 = v16 / v17;
      }
    }

    else
    {
      v18 = (v13 * 1000.0) * 9.3132e-10;
      v12 = 0;
      if (*(a1 + 376) > v18)
      {
        if (!v6)
        {
          ++*(a1 + 380);
        }

        v19 = *(a1 + 336);
        v20 = *(a1 + 340);
        v12.i32[0] = 0.25;
        if (v19 > v20)
        {
          v21 = *(a1 + 320);
          if (v21 > v19 || v21 < v20)
          {
            if (v21 <= v19)
            {
              v12.i32[0] = *(a1 + 348);
            }

            else
            {
              v12.i32[0] = *(a1 + 344);
            }
          }

          else
          {
            *v12.i32 = *(a1 + 348) + (((v21 - v20) / (v19 - v20)) * (*(a1 + 344) - *(a1 + 348)));
          }

          v23 = 0.25;
          if (*v12.i32 >= 0.25)
          {
            v23 = *v12.i32;
          }

          if (*(a1 + 380) <= *(a1 + 384))
          {
            *v12.i32 = v23;
          }
        }
      }
    }

    v24 = fminf(*v12.i32 * 2.5, 1.0);
    if (v6 != 2)
    {
      v24 = *v12.i32;
    }

    if (v5 >= 1)
    {
      v25 = (v5 + 3) & 0xFFFFFFFC;
      v26 = vdupq_n_s64(v5 - 1);
      v27 = xmmword_1DE095150;
      v28 = xmmword_1DE095160;
      v29 = (*(a1 + 112) + 8);
      v30 = vdupq_n_s64(4uLL);
      do
      {
        v31 = vmovn_s64(vcgeq_u64(v26, v28));
        if (vuzp1_s16(v31, v12).u8[0])
        {
          *(v29 - 2) = v24;
        }

        if (vuzp1_s16(v31, v12).i8[2])
        {
          *(v29 - 1) = v24;
        }

        if (vuzp1_s16(v12, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
        {
          *v29 = v24;
          v29[1] = v24;
        }

        v27 = vaddq_s64(v27, v30);
        v28 = vaddq_s64(v28, v30);
        v29 += 4;
        v25 -= 4;
      }

      while (v25);
    }

    if (!v6)
    {
      *v12.i32 = *v12.i32 + *(a1 + 152);
      *(a1 + 152) = v12.i32[0];
    }
  }

  return *v12.i32;
}

void learnrate_v4::updateStatistics_echo(int a1, const float *a2, const float *__A, float *a4)
{
  v8 = a1;
  vDSP_svesq(__A, 1, a4 + 6, a1);
  vDSP_svesq(a2, 1, a4 + 8, v8);
  v9 = a4[8];
  a4[9] = v9;
  a4[10] = v9;
  v10 = ((2 * a1) * 100.0) * 9.3132e-10;
  if (v9 < v10)
  {
    a4[8] = v10;
  }

  vDSP_dotpr(a2, 1, __A, 1, a4 + 5, v8);
}

void learnrate_v4::adaptLmsFilter_v4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v147 = *MEMORY[0x1E69E9840];
  v16 = v6[4];
  v17 = v6[10];
  v18 = v6[11];
  v19 = v10[23];
  v102 = v10[9];
  v109 = v6[15];
  v20 = v10[19];
  v113 = v10[18];
  *(v8 + 72) = v113;
  *(v8 + 76) = v20;
  v111 = v20;
  __A = 0.0;
  MEMORY[0x1E12BE7F0](v3[12], 1, v3[14], 1, v3[14], 1, v17, v1);
  v95 = v15;
  MEMORY[0x1E12BE7F0](v3[14], 1, v15, 1, v146, 1, v16);
  v96 = v13;
  MEMORY[0x1E12BE7F0](v3[14], 1, v13, 1, v145, 1, v16);
  v21 = v19;
  v22 = *v9;
  v130 = v7;
  if (v19 >= 1)
  {
    v98 = v18;
    v99 = (v111 + 1) * v16;
    v23 = v102;
    v24 = 4 * v16;
    __N = (v113 * v16);
    v94 = v3;
    v25 = 4 * __N;
    v26 = v3[13];
    v27 = 0;
    v29 = v5[2];
    v28 = v5[3];
    v125 = *(v9 + 16);
    v127 = *(v9 + 24);
    v97 = v9;
    v30 = *(v9 + 8);
    v104 = 4 * v18;
    v105 = 4 * v102;
    v32 = *v11;
    v31 = v11[1];
    v100 = v21;
    v101 = v11;
    v33 = v26 + 4 * v113;
    v137 = 4 * v16;
    v34 = v18;
    v107 = v18;
    v128 = v5;
    do
    {
      v121 = v32;
      v123 = v31;
      v119 = v33;
      if (*(v5[16] + v27) == 1)
      {
        __C = v30;
        if (v34 >= 1)
        {
          v35 = 0;
          v36 = v142;
          v37 = v143;
          v38 = v98;
          do
          {
            *v37++ = *(v32 + v35);
            *v36++ = *(v31 + v35);
            v35 += v24;
            --v38;
          }

          while (v38);
        }

        v103 = v27;
        if (*(v101 + 17) == 1)
        {
          __A = 0.0;
          if (__N >= 1)
          {
            v39 = v28;
            v40 = v29;
            vDSP_vfill(&__A, v22, 1, __N);
            vDSP_vfill(&__A, v30, 1, __N);
            vDSP_vfill(&__A, v125, 1, __N);
            vDSP_vfill(&__A, v127, 1, __N);
            v29 = v40;
            v28 = v39;
            v25 = 4 * __N;
            v24 = 4 * v16;
          }

          v41 = *(v97 + 36);
          v42 = (v41 - v99);
          if (v42 >= 1)
          {
            v43 = v28;
            v44 = v29;
            vDSP_vfill(&__A, &v22[v99], 1, (v41 - v99));
            vDSP_vfill(&__A, &__C[v99], 1, v42);
            vDSP_vfill(&__A, &v125[v99], 1, v42);
            vDSP_vfill(&__A, &v127[v99], 1, v42);
            v29 = v44;
            v28 = v43;
            v25 = 4 * __N;
            v24 = 4 * v16;
          }
        }

        v115 = v22;
        v45 = v26;
        v46 = v25;
        if (v113 <= v111)
        {
          v47 = 4 * v113;
          v48 = v111 + 1 - v113;
          v49 = v121;
          v50 = v123;
          v52 = v115;
          v51 = __C;
          v133 = v29;
          v135 = v28;
          v131 = v45;
          do
          {
            __A = *(v45 + v47);
            v53 = *(v5[11] + v47) * v16;
            v54 = &v29[v53];
            v55 = &v28[v53];
            vDSP_vmma(v146, 1, v54, 1, v145, 1, v55, 1, __E, 1, v16);
            MEMORY[0x1E12BE8F0](__E, 1, &__A, v49 + v46, 1, v52 + v46, 1, v16);
            v56 = v55;
            v5 = v128;
            vDSP_vmmsb(v145, 1, v54, 1, v146, 1, v56, 1, __E, 1, v16);
            MEMORY[0x1E12BE8F0](__E, 1, &__A, v50 + v46, 1, v51 + v46, 1, v16);
            v45 = v131;
            v29 = v133;
            v28 = v135;
            v24 = 4 * v16;
            v51 = (v51 + v137);
            v52 += v137;
            v50 += v137;
            v49 += v137;
            v47 += 4;
            --v48;
          }

          while (v48);
        }

        v22 = v115;
        v34 = v107;
        v21 = v100;
        v23 = v102;
        v27 = v103;
        v25 = v46;
        v57 = v45;
        v30 = __C;
        v58 = v119;
        if (v113 <= v111)
        {
          v59 = 0;
          v60 = v94[14];
          v61 = *v95 * *v60;
          v62 = *v96 * v60[v16];
          v63 = v5[11] + 4 * v113;
          v64 = v25;
          do
          {
            v65 = *(v63 + 4 * v59) * v16;
            *(v115 + v64) = *&v143[v113 + v59] + ((v61 * *(v119 + 4 * v59)) * v29[v65]);
            *(__C + v64) = *&v142[v113 + v59] + ((v62 * *(v119 + 4 * v59)) * v28[v65]);
            v64 += v24;
            ++v59;
          }

          while (v111 + 1 - v113 != v59);
        }
      }

      else
      {
        v66 = v26;
        v67 = v21;
        v68 = v28;
        v69 = v29;
        v70 = v23;
        vDSP_vclr(v22, 1, v23);
        vDSP_vclr(v30, 1, v70);
        v23 = v70;
        v21 = v67;
        v57 = v66;
        v58 = v119;
        v34 = v107;
        v29 = v69;
        v28 = v68;
        v25 = 4 * __N;
        v24 = 4 * v16;
      }

      v125 += v23;
      v127 += v23;
      v22 = (v22 + v105);
      v30 = (v30 + v105);
      ++v27;
      v31 = v123 + v105;
      v32 = v121 + v105;
      v26 = v57 + v104;
      v33 = v58 + v104;
      v29 += v109;
      v28 += v109;
    }

    while (v27 != v21);
    v9 = v97;
    v22 = *v97;
    v7 = v130;
  }

  v71 = *v7;
  v114 = v5[16];
  v116 = *(v9 + 36);
  v108 = *(v9 + 72);
  v106 = *(v9 + 76);
  v136 = *(v9 + 16);
  v132 = *(v9 + 8);
  v134 = *(v9 + 24);
  v72 = *(v9 + 92);
  vDSP_vclr(*(v9 + 48), 1, *(v9 + 88));
  v112 = v72;
  if (v72 >= 1)
  {
    v73 = 0;
    v129 = v71 >> 1;
    v74 = 4 * v129;
    v75 = v71 >> 2;
    v124 = (((v71 >> 1) - 1) >> 1) + 1;
    v126 = *(v9 + 48);
    v138 = v71 >> 1;
    v76 = v108 * v129;
    v122 = &v136[v76];
    v110 = 4 * v116;
    v120 = &v134[v76];
    do
    {
      __Ca = v73;
      if (*(v73 + v114) == 1)
      {
        if (v108 <= v106)
        {
          v77 = v120;
          v78 = v122;
          v79 = ~v108;
          v80 = v108;
          do
          {
            v81 = &v136[v80 * v129];
            v82 = &v134[v80 * v129];
            v141.realp = v81;
            v141.imagp = v82;
            memcpy(v81, &v22[v80 * v129], v74);
            memcpy(v82, (v132 + 4 * v80 * v129), v74);
            v84 = *(v130 + 1);
            if (v84)
            {
              MultiRadixRealFFT::RealInPlaceTransform(v84, &v141, -1, v83);
            }

            v140 = *(v130 + 22) * *(v130 + 21);
            MEMORY[0x1E12BE940](v81, 1, &v140, v81, 1, v75);
            MEMORY[0x1E12BE940](v82, 1, &v140, v82, 1, v75);
            vDSP_vclr(&v81[v75], 1, v75);
            vDSP_vclr(&v82[v75], 1, v75);
            if (v138 >= 1)
            {
              v86 = v124;
              v87 = &v126[v138 * (v130[11] + v79)];
              v88 = v77;
              v89 = v78;
              do
              {
                v90 = *v89++;
                *v87 = v90;
                v91 = *v88++;
                v85 = v91;
                v87[1] = v91;
                v87 += 2;
                --v86;
              }

              while (v86);
            }

            v92 = *(v130 + 1);
            if (v92)
            {
              MultiRadixRealFFT::RealInPlaceTransform(v92, &v141, 1, v85);
            }

            ++v80;
            v78 = (v78 + v74);
            --v79;
            v77 = (v77 + v74);
          }

          while (v106 + 1 != v80);
        }
      }

      else
      {
        vDSP_vclr(v136, 1, v116);
        vDSP_vclr(v134, 1, v116);
        vDSP_vclr(v126, 1, v116);
      }

      v22 += v116;
      v132 += 4 * v116;
      v126 = (v126 + v110);
      v73 = (__Ca + 1);
      v136 += v116;
      v122 = (v122 + v110);
      v120 = (v120 + v110);
      v134 += v116;
    }

    while ((__Ca + 1) != v112);
  }
}

uint64_t AUSM::DivergentSpatializers::reset(AUSM::DynamicSpatializer **this)
{
  result = AUSM::DynamicSpatializer::reset(*this);
  if (*(this + 24) == 1)
  {
    AUSM::DynamicSpatializer::reset(this[1]);
    v3 = this[2];

    return AUSM::DynamicSpatializer::reset(v3);
  }

  return result;
}

uint64_t AUSM::DivergentSpatializers::setSpatializer(uint64_t *a1, uint64_t *a2, int a3)
{
  if (a3 == 2)
  {
    v7 = a1[2];
    v8 = *a2;
    *a2 = 0;
    v11 = v8;
    AUSM::DynamicSpatializer::setSpatializer(v7, &v11);
    result = v11;
    if (!v11)
    {
      return result;
    }
  }

  else if (a3 == 1)
  {
    v3 = a1[1];
    v4 = *a2;
    *a2 = 0;
    v12 = v4;
    AUSM::DynamicSpatializer::setSpatializer(v3, &v12);
    result = v12;
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    v9 = *a1;
    v10 = *a2;
    *a2 = 0;
    v13 = v10;
    AUSM::DynamicSpatializer::setSpatializer(v9, &v13);
    result = v13;
    if (!v13)
    {
      return result;
    }
  }

  v6 = *(*result + 8);

  return v6();
}

void sub_1DDED727C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDED72C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a11)
  {
    JUMPOUT(0x1DDED72BCLL);
  }

  JUMPOUT(0x1DDED7298);
}

uint64_t AUSM::DivergentSpatializers::setRenderingFlags(AUSM::DynamicSpatializer **this, int a2)
{
  result = AUSM::DynamicSpatializer::setRenderingFlags(*this, a2);
  if (*(this + 24) == 1)
  {
    AUSM::DynamicSpatializer::setRenderingFlags(this[1], a2);
    v5 = this[2];

    return AUSM::DynamicSpatializer::setRenderingFlags(v5, a2);
  }

  return result;
}

uint64_t AUSM::DivergentSpatializers::setEnableExclusionZones(AUSM::DynamicSpatializer **this, uint64_t a2)
{
  result = AUSM::DynamicSpatializer::setEnableExclusionZones(*this, a2);
  if (*(this + 24) == 1)
  {
    AUSM::DynamicSpatializer::setEnableExclusionZones(this[1], a2);
    v5 = this[2];

    return AUSM::DynamicSpatializer::setEnableExclusionZones(v5, a2);
  }

  return result;
}

void AUSM::DivergentSpatializers::setPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v12 = v5;
  AUSM::DynamicSpatializer::setPropertyDictionary(v4, &v12);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(a1 + 24) == 1)
  {
    v6 = *(a1 + 8);
    v7 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v11 = v7;
    AUSM::DynamicSpatializer::setPropertyDictionary(v6, &v11);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 16);
    v9 = *a2;
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = v9;
    AUSM::DynamicSpatializer::setPropertyDictionary(v8, &v10);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_1DDED7484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void AUSM::DivergentSpatializers::propertyDictionarySetValue(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v6 = *a1;
  v7 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v14 = v7;
  AUSM::DynamicSpatializer::propertyDictionarySetValue(v6, a2, &v14);
  if (v7)
  {
    CFRelease(v7);
  }

  if (*(a1 + 24) == 1)
  {
    v8 = *(a1 + 8);
    v9 = *a3;
    if (*a3)
    {
      CFRetain(*a3);
    }

    v13 = v9;
    AUSM::DynamicSpatializer::propertyDictionarySetValue(v8, a2, &v13);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 16);
    v11 = *a3;
    if (v11)
    {
      CFRetain(v11);
    }

    v12 = v11;
    AUSM::DynamicSpatializer::propertyDictionarySetValue(v10, a2, &v12);
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void sub_1DDED75B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

void AUSM::DivergentSpatializers::setOptionalFeatureSupportDictionary(uint64_t a1, CFTypeRef *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v12 = v5;
  AUSM::DynamicSpatializer::setOptionalFeatureSupportDictionary(v4, &v12);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(a1 + 24) == 1)
  {
    v6 = *(a1 + 8);
    v7 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v11 = v7;
    AUSM::DynamicSpatializer::setOptionalFeatureSupportDictionary(v6, &v11);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 16);
    v9 = *a2;
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = v9;
    AUSM::DynamicSpatializer::setOptionalFeatureSupportDictionary(v8, &v10);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_1DDED76C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t AULowFlow::newDspLibAlgorithm(AULowFlow *this, int a2)
{
  if (a2 == 4 || a2 == 2)
  {
    operator new();
  }

  return 0;
}

uint64_t AULowFlow::SupportedNumChannels(AULowFlow *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULowFlow::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 2;
}

uint64_t AULowFlow::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = AUDspLib::RestoreState(this, a2);
  LODWORD(result) = (*(*this + 19))(this, 4, 0, 0, 0, *(this + 536));
  if (result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t AULowFlow::SetParameter(AULowFlow *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = AUDspLib::SetParameter(this, a2, a3, a4, a5);
  v9 = *(this + 439) - 1;
  if (v9 >= a2)
  {
    v9 = a2;
  }

  if (*(*(this + 211) + 4 * v9) == 4)
  {
    *(this + 536) = a5;
  }

  return result;
}

uint64_t AULowFlow::SetProperty(id *this, int a2, int a3, unsigned int a4, id *a5, void *a6, int *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2 == 6620)
  {
    if (a3)
    {
      return 4294956430;
    }

    if (a6 != 8)
    {
      return 4294956445;
    }

    v34 = applesauce::CF::StringRef::get_ns(*a5);
    obj = [v34 mutableCopy];
    v10 = obj;
    v33 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:@"Name"];
    if (v33 || ([(NSMutableDictionary *)v10 objectForKeyedSubscript:@"AcousticID"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:@"ChannelData"];
      v13 = v12;
      if (v12 && [v12 count] == 2)
      {
        v14 = 0;
        v15 = 1;
        do
        {
          v30 = v15;
          v16 = [v13 objectAtIndexedSubscript:v14];
          v17 = v16;
          if (!v16)
          {
            goto LABEL_46;
          }

          v31 = [v16 objectForKeyedSubscript:@"AnalogGain"];
          if (!v31)
          {
            goto LABEL_45;
          }

          v18 = [v17 objectForKeyedSubscript:@"PressureResponse"];
          if (!v18)
          {
            v19 = 0;
            goto LABEL_44;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            v20 = [v19 length] == 4096;

            if (!v20)
            {
              goto LABEL_44;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_50;
            }

            v21 = v18;
            if ([v21 count] != 1024)
            {
              v19 = v21;
              v26 = v21;
LABEL_43:

              goto LABEL_44;
            }

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
            if (v23)
            {
              v24 = *v36;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v36 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v19 = v22;
                    v26 = v22;
LABEL_42:

                    goto LABEL_43;
                  }
                }

                v23 = [v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }
          }

          v26 = [v17 objectForKeyedSubscript:@"ThieleSmall"];
          if (!v26)
          {
LABEL_50:
            v19 = v18;
LABEL_44:

LABEL_45:
            goto LABEL_46;
          }

          v39[0] = @"Bl";
          v39[1] = @"Reb";
          v39[2] = @"Mms";
          v39[3] = @"MmsFrontPort";
          v39[4] = @"Rms";
          v39[5] = @"RmsFrontPort";
          v39[6] = @"Kms";
          v39[7] = @"KmsFrontPort";
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:8];
          v27 = 0;
          while ([v22 count] > v27)
          {
            v28 = [v22 objectAtIndexedSubscript:v27];
            v29 = [v26 objectForKeyedSubscript:v28];

            ++v27;
            if (!v29)
            {
              v19 = v18;
              goto LABEL_42;
            }
          }

          v15 = 0;
          v14 = 1;
        }

        while ((v30 & 1) != 0);

        updateModelParametersDictionary(v10);
        objc_storeStrong(this + 269, obj);
        if (*(this + 17) == 1)
        {
          AULowFlow::setModelParameters(this);
        }

        v8 = 0;
        goto LABEL_48;
      }

LABEL_46:
    }

    else
    {
    }

    v8 = 4294956445;
LABEL_48:

    return v8;
  }

  return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
}

void updateModelParametersDictionary(NSMutableDictionary *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = a1;
  v34 = [(NSMutableDictionary *)v36 objectForKeyedSubscript:@"AcousticID"];
  if (v34)
  {
    [(NSMutableDictionary *)v36 removeObjectForKey:@"AcousticID"];
    v1 = [(NSMutableDictionary *)v36 objectForKeyedSubscript:@"Name"];
    if (!v1)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Acoustic ID: %@", v34];
      [(NSMutableDictionary *)v36 setObject:v2 forKeyedSubscript:@"Name"];
    }
  }

  v3 = [(NSMutableDictionary *)v36 objectForKeyedSubscript:@"ChannelData"];
  v4 = [v3 objectAtIndexedSubscript:0];
  v35 = [v4 objectForKeyedSubscript:@"PressureResponse"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [(NSMutableDictionary *)v36 objectForKeyedSubscript:@"ChannelData"];
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = 0;
    v39 = v5;
    while ([v38 count] > v6)
    {
      v7 = [v38 objectAtIndexedSubscript:v6];
      v8 = [v7 objectForKeyedSubscript:@"PressureResponse"];
      v9 = [v8 count];
      v37 = &v33;
      *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
      v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      for (i = 0; [v8 count] > i; ++i)
      {
        v14 = [v8 objectAtIndexedSubscript:i];
        [v14 floatValue];
        *&v12[4 * i] = v15;
      }

      v16 = [v8 count];
      v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:4 * v16];
      v18 = MEMORY[0x1E695DF90];
      v19 = [v7 objectForKeyedSubscript:@"AnalogGain"];
      v20 = [v7 objectForKeyedSubscript:@"ThieleSmall"];
      v21 = [v18 dictionaryWithObjectsAndKeys:{v19, @"AnalogGain", v17, @"PressureResponse", v20, @"ThieleSmall", 0}];

      v22 = [v7 objectForKeyedSubscript:@"TweeterResponse"];
      v23 = v39;
      if (v22)
      {
        v24 = [v22 count];
        *&v25 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
        v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        for (j = 0; [v22 count] > j; ++j)
        {
          v29 = [v22 objectAtIndexedSubscript:j];
          [v29 floatValue];
          *&v27[4 * j] = v30;
        }

        v31 = [MEMORY[0x1E695DEF0] dataWithBytes:v27 length:{4 * objc_msgSend(v22, "count")}];
        v32 = [v7 objectForKeyedSubscript:@"TweeterGain"];
        [v21 setValue:v32 forKey:@"TweeterGain"];

        [v21 setValue:v31 forKey:@"TweeterResponse"];
        v23 = v39;
      }

      [v23 addObject:v21];

      ++v6;
      v5 = v39;
    }

    [(NSMutableDictionary *)v36 setObject:v5 forKeyedSubscript:@"ChannelData"];
  }
}

void AULowFlow::setModelParameters(AULowFlow *this)
{
  *&v2 = MEMORY[0x1EEE9AC00](this).n128_u64[0];
  v3 = v1;
  v4 = *(v1 + 2120);
  if (v4 == *(v1 + 2128))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    if (*v4 == 4)
    {
      v5 = &v49;
    }

    else
    {
      v5 = 0;
    }

    if (*v4 == 4)
    {
      v6 = &v48;
    }

    else
    {
      v6 = 0;
    }
  }

  v48 = 0;
  v47 = [*(v1 + 2152) objectForKeyedSubscript:{@"ChannelData", v2}];
  if ([v47 count] == 2)
  {
    v7 = 0;
    v46 = v6;
    v45 = v5;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    v10 = v52;
    v11 = v50;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = [v47 objectAtIndexedSubscript:v7];
      v15 = [v14 objectForKeyedSubscript:@"ThieleSmall"];
      v16 = [v14 objectForKeyedSubscript:@"AnalogGain"];
      [v16 floatValue];
      *v10 = v17;

      v18 = [v15 objectForKeyedSubscript:@"Bl"];
      [v18 floatValue];
      v10[1] = v19;

      v20 = [v15 objectForKeyedSubscript:@"Reb"];
      [v20 floatValue];
      v10[2] = v21;

      v22 = [v15 objectForKeyedSubscript:@"Mms"];
      [v22 floatValue];
      v10[3] = v23;

      v24 = [v15 objectForKeyedSubscript:@"MmsFrontPort"];
      [v24 floatValue];
      v10[4] = v25;

      v26 = [v15 objectForKeyedSubscript:@"Rms"];
      [v26 floatValue];
      v10[5] = v27;

      v28 = [v15 objectForKeyedSubscript:@"RmsFrontPort"];
      [v28 floatValue];
      v10[6] = v29;

      v30 = [v15 objectForKeyedSubscript:@"Kms"];
      [v30 floatValue];
      v10[7] = v31;

      v32 = [v15 objectForKeyedSubscript:@"KmsFrontPort"];
      [v32 floatValue];
      v10[8] = v33;

      v34 = [v14 objectForKeyedSubscript:@"PressureResponse"];
      if ([v34 length] != 4096)
      {
        goto LABEL_33;
      }

      [v34 getBytes:v11 length:4096];
      if (v9)
      {
        v35 = [v14 objectForKeyedSubscript:@"TweeterGain"];
        [v35 floatValue];
        *v46 = v36;

        v37 = [v14 objectForKeyedSubscript:@"TweeterResponse"];
        v38 = v37;
        if (!v37 || [v37 length] != 4096)
        {

LABEL_33:
          goto LABEL_34;
        }

        [v38 getBytes:&v45[4096 * v7] length:4096];
      }

      v12 = 0;
      v11 = &v51;
      v10 = &v53;
      v7 = 1;
    }

    while ((v13 & 1) != 0);

    v39 = (v3 + 528);
    v40 = -1;
    do
    {
      if (*(v3 + 1588))
      {
        v41 = *(v3 + 2120);
        if (v41 == *(v3 + 2128))
        {
          v42 = 0;
        }

        else
        {
          v42 = *v41;
        }
      }

      else
      {
        v42 = 1;
      }

      if (++v40 >= v42)
      {
        break;
      }

      v43 = v39 + 7;
      v44 = DspLib::LowFlow::Algorithm::setModelParameters(*v39, v52, v50, v45, v46);
      v39 = v43;
    }

    while (!v44);
  }

  else
  {
LABEL_34:
  }
}

uint64_t AULowFlow::GetProperty(AULowFlow *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  if (a2 == 6620)
  {
    if (a3)
    {
      return 4294956430;
    }

    else
    {
      v8 = *(this + 269);
      if (v8)
      {
        v9 = v8;
        result = 0;
        *a5 = v9;
      }

      else
      {
        return 4294956433;
      }
    }
  }

  else
  {

    return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t AULowFlow::GetPropertyInfo(AULowFlow *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 6620)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a3)
  {
    return 4294956430;
  }

  result = 0;
  *a5 = 8;
  *a6 = 1;
  return result;
}

uint64_t AULowFlow::Initialize(AULowFlow *this)
{
  v2 = AUDspLib::Initialize(this);
  if (!v2 && *(this + 269))
  {
    AULowFlow::setModelParameters(this);
  }

  return v2;
}

void AULowFlow::~AULowFlow(id *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

{

  AUDspLib::~AUDspLib(this);
}

uint64_t AUWindKill::ValidFormat(AUWindKill *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  mBitsPerChannel = a4->mBitsPerChannel;
  mFormatID = a4->mFormatID;
  if (a2 != 2 || a3 != 2)
  {
    if (mBitsPerChannel == 64 && mFormatID == 1718773105)
    {
      result = (a4->mFormatFlags >> 5) & 1;
    }

    else
    {
      result = 0;
    }

    if (a2 == 1)
    {
      mChannelsPerFrame = a4->mChannelsPerFrame;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      mChannelsPerFrame = a4->mChannelsPerFrame;
      if (a3)
      {
        goto LABEL_48;
      }
    }

    v17 = mChannelsPerFrame == 2;
    goto LABEL_49;
  }

  mBytesPerPacket = a4->mBytesPerPacket;
  mBytesPerFrame = a4->mBytesPerFrame;
  mChannelsPerFrame = a4->mChannelsPerFrame;
  v9 = mFormatID == 1819304813 && a4->mFramesPerPacket == 1;
  v12 = !v9 || mBytesPerFrame != mBytesPerPacket || mBitsPerChannel >> 3 > mBytesPerFrame || mChannelsPerFrame == 0;
  if (!v12 && ((mFormatFlags = a4->mFormatFlags, (mFormatFlags & 0x20) != 0) || (v9 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame, mBytesPerPacket /= mChannelsPerFrame, v9)))
  {
    v19 = 8 * mBytesPerPacket;
    v13 = mBytesPerPacket == 4 && (a4->mFormatFlags & 0x1F84) == 0;
    if (mFormatFlags)
    {
      v20 = (a4->mFormatFlags & 0x1F84) == 0;
    }

    else
    {
      v13 = 0;
      v20 = 1;
    }

    if (v19 == mBitsPerChannel)
    {
      v21 = v20;
    }

    else
    {
      v13 = 0;
      v21 = 1;
    }

    if ((mFormatFlags & 2) != 0)
    {
      v13 = 0;
      v14 = 1;
    }

    else
    {
      v14 = v21;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (mBitsPerChannel == 32)
  {
    LODWORD(result) = v13 & v14;
  }

  else
  {
    LODWORD(result) = 0;
  }

LABEL_48:
  v17 = mChannelsPerFrame == 1;
LABEL_49:
  if (v17)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUWindKill::SupportedNumChannels(AUWindKill *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUWindKill::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUWindKill::GetParameterValueStrings(AUWindKill *this, int a2, int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 != 13)
  {
    return 0;
  }

  v7[0] = xmmword_1E866CEF0;
  v7[1] = *off_1E866CF00;
  v6 = CFArrayCreate(0, v7, 4, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AUWindKill::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUWindKill::GetParameterInfo(AUWindKill *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  if (a3 > 0x27)
  {
    return 4294956418;
  }

  v6 = off_1E866CF10[a3];
  v7 = dword_1DE0EA728[a3];
  v8 = dword_1DE0EA7C8[a3];
  v9 = flt_1DE0EA868[a3];
  v10 = flt_1DE0EA908[a3];
  v11 = flt_1DE0EA9A8[a3];
  v12 = dword_1DE0EAA48[a3];
  buffer->cfNameString = v6;
  buffer->flags = 0x8000000;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->clumpID = v7;
  flags = buffer->flags;
  buffer->unit = v8;
  buffer->minValue = v9;
  buffer->maxValue = v10;
  buffer->defaultValue = v11;
  buffer->flags = flags | v12;
  return result;
}

uint64_t AUWindKill::GetParameterList(AUWindKill *this, int a2, unsigned int *a3, unsigned int *a4)
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
      *a3 = xmmword_1DE09DF10;
      *(a3 + 1) = xmmword_1DE09DF20;
      *(a3 + 2) = xmmword_1DE09DF30;
      *(a3 + 3) = xmmword_1DE09DCD0;
      *(a3 + 4) = xmmword_1DE09DF40;
      *(a3 + 5) = xmmword_1DE09DF50;
      *(a3 + 6) = xmmword_1DE09DF60;
      *(a3 + 7) = xmmword_1DE09DF70;
      *(a3 + 8) = xmmword_1DE09CD50;
      *(a3 + 9) = xmmword_1DE09CD60;
    }

    v4 = 40;
  }

  *a4 = v4;
  return result;
}

uint64_t AUWindKill::SetBusCount(AUWindKill *this, int a2, unsigned int a3)
{
  if (a2 == 1 && a3 == 1)
  {
    v3 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v3), a3);
    return 0;
  }

  v4 = 4294956445;
  if (a2 == 2 && a3 - 1 <= 2)
  {
    v3 = 128;
    goto LABEL_7;
  }

  return v4;
}

uint64_t AUWindKill::BusCountWritable(AUWindKill *this, int a2)
{
  if (a2 == 2)
  {
    v2 = *(this + 17) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

ausdk::AUInputElement *AUWindKill::Render(AUWindKill *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v21[3] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (Element && *(Element + 172))
  {
    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
    if (v10)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
    }

    if (result)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 0;
  memset(v21, 0, 24);
  do
  {
    v13 = *(this + 21);
    if (v13)
    {
      LODWORD(v14) = (*(*v13 + 24))(v13);
    }

    else
    {
      v14 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v12 >= v14)
    {
      v16 = 0;
    }

    else
    {
      v15 = ausdk::AUScope::GetElement((this + 128), v12);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = ausdk::AUIOElement::PrepareBuffer(v15, a4);
    }

    v21[v12++] = v16;
  }

  while (v12 != 3);
  if (v11)
  {
    return 0;
  }

  v17 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v17)
  {
LABEL_26:
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v17 + 144))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v20 = *(v17 + 152) + 48;
  v18 = *(this + 21);
  if (v18)
  {
    v19 = (*(*v18 + 24))(v18);
  }

  else
  {
    v19 = (*(this + 19) - *(this + 18)) >> 3;
  }

  return (*(*this + 184))(this, a2, a4, 1, &v20, v19, v21);
}

uint64_t AUWindKill::ProcessMultipleBufferLists(AUWindKill *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7, double a8, double a9, double a10)
{
  v358 = *MEMORY[0x1E69E9840];
  v15 = *(this + 132);
  if (*(this + 133) != v15)
  {
    v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v17 & 1) == 0
      || (*(this + 1384) = ausdk::AUElement::GetParameter(v16, 0) != 0.0, v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0)
      || (*(this + 347) = ausdk::AUElement::GetParameter(v18, 1u), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0)
      || (*(this + 348) = ausdk::AUElement::GetParameter(v20, 0x1Bu), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0)
      || (*(this + 349) = ausdk::AUElement::GetParameter(v22, 2u), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0)
      || (*(this + 350) = ausdk::AUElement::GetParameter(v24, 3u), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0)
      || (*(this + 351) = ausdk::AUElement::GetParameter(v26, 4u), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0)
      || (*(this + 352) = ausdk::AUElement::GetParameter(v28, 5u), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0)
      || (*(this + 353) = ausdk::AUElement::GetParameter(v30, 6u), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v33 & 1) == 0)
      || (*(this + 354) = ausdk::AUElement::GetParameter(v32, 7u), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v35 & 1) == 0)
      || (*(this + 355) = ausdk::AUElement::GetParameter(v34, 8u), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v37 & 1) == 0)
      || (*(this + 356) = ausdk::AUElement::GetParameter(v36, 0x13u), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v39 & 1) == 0)
      || (*(this + 357) = ausdk::AUElement::GetParameter(v38, 9u), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v41 & 1) == 0)
      || (*(this + 358) = ausdk::AUElement::GetParameter(v40, 0xAu), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v43 & 1) == 0)
      || (*(this + 359) = ausdk::AUElement::GetParameter(v42, 0xBu), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v45 & 1) == 0)
      || (*(this + 360) = ausdk::AUElement::GetParameter(v44, 0xCu), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v47 & 1) == 0)
      || (*(this + 361) = ausdk::AUElement::GetParameter(v46, 0xDu), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v49 & 1) == 0)
      || (*(this + 362) = ausdk::AUElement::GetParameter(v48, 0xEu), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v51 & 1) == 0)
      || (*(this + 363) = ausdk::AUElement::GetParameter(v50, 0xFu), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v53 & 1) == 0)
      || (*(this + 364) = ausdk::AUElement::GetParameter(v52, 0x14u), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v55 & 1) == 0)
      || (*(this + 365) = ausdk::AUElement::GetParameter(v54, 0x1Cu), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v57 & 1) == 0)
      || (*(this + 366) = ausdk::AUElement::GetParameter(v56, 0x1Du), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v59 & 1) == 0)
      || (*(this + 367) = ausdk::AUElement::GetParameter(v58, 0x10u), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v61 & 1) == 0)
      || (*(this + 368) = ausdk::AUElement::GetParameter(v60, 0x15u), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v63 & 1) == 0)
      || (*(this + 369) = ausdk::AUElement::GetParameter(v62, 0x11u), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v65 & 1) == 0)
      || (*(this + 370) = ausdk::AUElement::GetParameter(v64, 0x16u), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v67 & 1) == 0)
      || (*(this + 371) = ausdk::AUElement::GetParameter(v66, 0x12u), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v69 & 1) == 0)
      || (*(this + 372) = ausdk::AUElement::GetParameter(v68, 0x1Eu), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v71 & 1) == 0)
      || (*(this + 373) = ausdk::AUElement::GetParameter(v70, 0x17u), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v73 & 1) == 0)
      || (*(this + 374) = ausdk::AUElement::GetParameter(v72, 0x18u), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v75 & 1) == 0)
      || (*(this + 375) = ausdk::AUElement::GetParameter(v74, 0x19u), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v77 & 1) == 0)
      || (*(this + 376) = ausdk::AUElement::GetParameter(v76, 0x1Au), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v79 & 1) == 0)
      || (*(this + 1508) = ausdk::AUElement::GetParameter(v78, 0x1Fu) != 0.0, v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v81 & 1) == 0)
      || (*(this + 378) = ausdk::AUElement::GetParameter(v80, 0x20u), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v83 & 1) == 0)
      || (*(this + 379) = ausdk::AUElement::GetParameter(v82, 0x21u), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v85 & 1) == 0)
      || (*(this + 380) = ausdk::AUElement::GetParameter(v84, 0x22u), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v87 & 1) == 0)
      || (*(this + 381) = ausdk::AUElement::GetParameter(v86, 0x23u), v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v89 & 1) == 0)
      || (*(this + 382) = ausdk::AUElement::GetParameter(v88, 0x24u), v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v91 & 1) == 0)
      || (*(this + 383) = ausdk::AUElement::GetParameter(v90, 0x25u), v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v93 & 1) == 0)
      || (*(this + 384) = ausdk::AUElement::GetParameter(v92, 0x26u), v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v95 & 1) == 0))
    {
LABEL_268:
      abort();
    }

    *(this + 385) = ausdk::AUElement::GetParameter(v94, 0x27u);
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v97 = *(Element + 80);
    v98 = v97 * 0.5;
    if (*(this + 351) > (v97 * 0.5))
    {
      *(this + 351) = v98;
      v99 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v100 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v99, 4u, *(this + 351));
    }

    v101 = *(this + 352);
    if (v101 > v98)
    {
      *(this + 352) = v98;
      v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v103 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v102, 5u, *(this + 352));
      v101 = *(this + 352);
    }

    if (*(this + 351) > v101)
    {
      *(this + 351) = v101;
      v104 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v105 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v104, 4u, *(this + 351));
    }

    if (*(this + 356) > v98)
    {
      *(this + 356) = v98;
      v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v107 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v106, 0x13u, *(this + 356));
    }

    if (*(this + 357) > v98)
    {
      *(this + 357) = v98;
      v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v109 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v108, 9u, *(this + 357));
    }

    if (*(this + 358) > v98)
    {
      *(this + 358) = v98;
      v110 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v111 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v110, 0xAu, *(this + 358));
    }

    if (*(this + 367) > v98)
    {
      *(this + 367) = v98;
      v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v113 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v112, 0x10u, *(this + 367));
    }

    if (*(this + 368) > v98)
    {
      *(this + 368) = v98;
      v114 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v115 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v114, 0x15u, *(this + 368));
    }

    v116 = *(this + 369);
    if (v116 > v98)
    {
      *(this + 369) = v98;
      v117 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v118 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v117, 0x11u, *(this + 369));
      v116 = *(this + 369);
    }

    v119 = *(this + 367);
    if (v119 > v116)
    {
      *(this + 367) = v116;
      v120 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v121 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v120, 0x10u, *(this + 367));
      v119 = *(this + 367);
    }

    v122 = *(this + 368);
    if (v122 < v119)
    {
      *(this + 368) = v119;
      v123 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v124 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v123, 0x15u, *(this + 368));
      v122 = *(this + 368);
    }

    v125 = *(this + 369);
    if (v122 > v125)
    {
      *(this + 368) = v125;
      v126 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v127 & 1) == 0)
      {
        goto LABEL_268;
      }

      ausdk::AUElement::SetParameter(v126, 0x15u, *(this + 368));
    }

    v128 = *(this + 1496);
    *(this + 760) = *(this + 1480);
    *(this + 776) = v128;
    v129 = *(this + 1528);
    *(this + 792) = *(this + 1512);
    *(this + 808) = v129;
    v130 = *(this + 1432);
    *(this + 696) = *(this + 1416);
    *(this + 712) = v130;
    v131 = *(this + 1464);
    *(this + 728) = *(this + 1448);
    *(this + 744) = v131;
    v132 = *(this + 1400);
    *(this + 664) = *(this + 1384);
    *(this + 680) = v132;
    WindDetectorAndSuppressor::UpdateWindSuppressorCoreState((this + 544));
    *(this + 133) = v15;
  }

  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  v133 = *a5;
  if (!*a5)
  {
    return 4294956420;
  }

  if (*v133 != 2)
  {
    return 4294956428;
  }

  v134 = 0;
  v355 = 0;
  v356 = 0;
  v357 = 0;
  do
  {
    if (v134 >= a6)
    {
      v135 = 0;
    }

    else
    {
      v135 = a7[v134];
    }

    (&v355)[v134++] = &v135->mNumberBuffers;
  }

  while (v134 != 3);
  v136 = v355;
  if (v355)
  {
    if (*v355 != 2)
    {
      return 4294956428;
    }
  }

  v137 = v356;
  if (v356)
  {
    if (*v356 != 1)
    {
      return 4294956428;
    }
  }

  v138 = v357;
  if (v357)
  {
    if (*v357 != 1)
    {
      return 4294956428;
    }
  }

  if (*(this + 536) == 1)
  {
    if (v355 && *v355)
    {
      v139 = 0;
      v140 = 0;
      do
      {
        memcpy(*&v136[v139 / 4 + 4], (*a5)->mBuffers[v139 / 0x10].mData, (*a5)->mBuffers[v139 / 0x10].mDataByteSize);
        ++v140;
        v139 += 16;
      }

      while (v140 < *v136);
    }

    if (v137)
    {
      bzero(v137[2], *(v137 + 3));
    }

    if (v138 && a3)
    {
      memset_pattern16(v138[2], &unk_1DE095DF0, 4 * a3);
    }

    WindDetectorAndSuppressor::ResetOutputPropertiesAndParams((this + 544), *&a8);
    goto LABEL_257;
  }

  if (!*(this + 552))
  {
    goto LABEL_257;
  }

  v346 = v357;
  WindDetectorAndSuppressor::UpdateNonTrivialParameters((this + 544), a8, a9, a10);
  v142 = (this + 824);
  WindDetectorAndSuppressor::GetPSD(this + 544, *(v133 + 16), this + 103);
  v345 = (this + 544);
  v347 = (this + 848);
  WindDetectorAndSuppressor::GetPSD(this + 544, *(v133 + 32), this + 106);
  v143 = *(this + 142);
  __B.realp = *(v133 + 16);
  __B.imagp = &__B.realp[v143];
  v144 = (*(v133 + 32) + 4 * v143);
  __A.realp = *(v133 + 32);
  __A.imagp = v144;
  __C.realp = *(this + 127);
  __C.imagp = &__C.realp[v143];
  vDSP_zvcmul(&__A, 1, &__B, 1, &__C, 1, *(this + 148));
  *__C.realp = *__B.realp * *__A.realp;
  *__C.imagp = *__B.imagp * *__A.imagp;
  v354 = *(this + 152);
  v353 = 1.0 - v354;
  MEMORY[0x1E12BE930](*(this + 109), 1, &v354, *(this + 127), 1, &v353, *(this + 109), 1, *(this + 148));
  MEMORY[0x1E12BE930](*(this + 109) + 4 * *(this + 142), 1, &v354, *(this + 127) + 4 * *(this + 142), 1, &v353, *(this + 109) + 4 * *(this + 142), 1, *(this + 148));
  v145 = (*(this + 109) + 4 * *(this + 142));
  __B.realp = *(this + 109);
  __B.imagp = v145;
  vDSP_zvmags(&__B, 1, *(this + 121), 1, *(this + 148));
  v146 = (this + 968);
  **(this + 121) = *__B.realp * *__B.realp;
  MEMORY[0x1E12BE7E0](*(this + 103), 1, *(this + 106), 1, this + 548, *(this + 124), 1, *(this + 148));
  vDSP_vdiv(*(this + 124), 1, *(this + 121), 1, *(this + 112), 1, *(this + 148));
  LODWORD(__B.realp) = 0;
  vDSP_meanv((*(this + 112) + 4 * *(this + 143)), 1, &__B, (*(this + 144) - *(this + 143) + 1));
  v147 = (*(this + 152) * *(this + 159)) + (1.0 - *(this + 152)) * (1.0 - *&__B.realp);
  *&v147 = v147;
  *(this + 159) = LODWORD(v147);
  v148 = *(this + 142);
  LODWORD(__B.realp) = 0;
  std::vector<float>::assign(this + 121, v148, &__B, *&v147);
  v149 = *(this + 149);
  v150 = *(this + 151);
  if (v149 <= v150)
  {
    v151 = 1.0 - *(this + 169);
    v152 = *(this + 112);
    v153 = *(this + 121);
    v154 = *(this + 149);
    do
    {
      if (*(v152 + 4 * v154) >= v151)
      {
        v155 = 0.0;
      }

      else
      {
        v155 = 1.0;
      }

      *(v153 + 4 * v154++) = v155;
    }

    while (v154 <= v150);
  }

  v156 = *(this + 150);
  v157 = *(this + 153);
  v158 = *(this + 160);
  v159 = *(this + 137);
  v160 = 0.0;
  v161 = 0.0;
  if (v149 <= v156)
  {
    v162 = (*v146 + 4 * v149);
    v163 = (*v142 + 4 * v149);
    v164 = v149;
    do
    {
      v165 = *v163++;
      v166 = v165;
      v167 = *v162++;
      v161 = v161 + (v166 * v167);
      ++v164;
    }

    while (v156 >= v164);
  }

  v168 = log10f(v159 + v161);
  v169 = (v157 * v158);
  v170 = 1.0 - v157;
  v171 = v169 + v170 * (v168 * 10.0);
  *(this + 160) = v171;
  if (v149 <= v156)
  {
    v173 = (*v146 + 4 * v149);
    v174 = (*v347 + 4 * v149);
    v160 = 0.0;
    do
    {
      v175 = *v174++;
      v176 = v175;
      v177 = *v173++;
      v160 = v160 + (v176 * v177);
      ++v149;
    }

    while (v156 >= v149);
  }

  v172 = *(this + 161);
  v178 = (v157 * v172) + v170 * (log10f(v159 + v160) * 10.0);
  *(this + 161) = v178;
  *(this + 183) = v171 - v178;
  v180 = 0.0;
  v181 = 0.0;
  if (v156 <= v150)
  {
    v182 = (*v146 + 4 * v156);
    v183 = (*v142 + 4 * v156);
    v184 = v156;
    do
    {
      v185 = *v183++;
      v186 = v185;
      v187 = *v182++;
      v181 = v181 + (v186 * v187);
      ++v184;
    }

    while (v150 >= v184);
  }

  v179 = *(this + 162);
  v188 = (v157 * v179) + v170 * (log10f(v159 + v181) * 10.0);
  *(this + 162) = v188;
  if (v156 <= v150)
  {
    v190 = (*v146 + 4 * v156);
    v191 = (*v347 + 4 * v156);
    v180 = 0.0;
    do
    {
      v192 = *v191++;
      v193 = v192;
      v194 = *v190++;
      v180 = v180 + (v193 * v194);
      ++v156;
    }

    while (v150 >= v156);
  }

  v189 = *(this + 163);
  v195 = (v157 * v189) + v170 * (log10f(v159 + v180) * 10.0);
  *&v195 = v195;
  *(this + 163) = LODWORD(v195);
  *&v195 = v188 - *&v195;
  *(this + 184) = LODWORD(v195);
  v196 = *(this + 142);
  LODWORD(__B.realp) = 1065353216;
  std::vector<float>::assign(this + 121, v196, &__B, *&v195);
  v197 = *(this + 150);
  v198 = *(this + 151);
  v199 = *(this + 153);
  v201 = *(this + 137);
  v202 = 0.0;
  v203 = 0.0;
  if (v197 <= v198)
  {
    v204 = (*v146 + 4 * v197);
    v205 = (*v142 + 4 * v197);
    v206 = *(this + 150);
    do
    {
      v207 = *v205++;
      v208 = v207;
      v209 = *v204++;
      v203 = v203 + (v208 * v209);
      ++v206;
    }

    while (v198 >= v206);
  }

  v210 = 1.0 - v199;
  v200 = *(this + 185);
  v211 = (v199 * v200) + v210 * (log10f(v201 + v203) * 10.0);
  *(this + 185) = v211;
  if (v197 <= v198)
  {
    v213 = (*v146 + 4 * v197);
    v214 = (*v347 + 4 * v197);
    v202 = 0.0;
    do
    {
      v215 = *v214++;
      v216 = v215;
      v217 = *v213++;
      v202 = v202 + (v216 * v217);
      ++v197;
    }

    while (v198 >= v197);
  }

  v212 = *(this + 186);
  v218 = (v199 * v212) + v210 * (log10f(v201 + v202) * 10.0);
  *&v218 = v218;
  *(this + 186) = LODWORD(v218);
  v219 = *(this + 181);
  if (!v219)
  {
    *(this + 182) = 0;
    LODWORD(v218) = *(this + 159);
    *(this + 167) = LODWORD(v218);
    goto LABEL_153;
  }

  if (v219 != 1)
  {
    LODWORD(v218) = *(this + 159);
    v223 = (this + 668);
    *(this + 167) = LODWORD(v218);
    if (v219 == 3)
    {
      if (!*(this + 182))
      {
        goto LABEL_153;
      }
    }

    else if (v219 != 2 || (*(this + 182) & 0xFFFFFFFE) == 2)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  if (*(this + 159) <= *(this + 169) || (v220 = *(this + 192), v220 >= v211) && v220 >= *&v218)
  {
    v221 = 0;
    goto LABEL_139;
  }

  v221 = *(this + 182);
  if (v221 > 4 || ((1 << v221) & 0x19) == 0)
  {
    goto LABEL_139;
  }

  v268 = *(this + 183);
  v269 = *(this + 191);
  if (fabsf(v268) >= v269 || fabsf(*(this + 184)) >= v269)
  {
    v344 = *(this + 193);
    if (v344 > v211)
    {
      v221 = 1;
      goto LABEL_139;
    }

    v270 = v344 <= *&v218;
    v221 = 5;
    v271 = 2;
  }

  else
  {
    v270 = v268 <= 0.0;
    v221 = 4;
    v271 = 3;
  }

  if (!v270)
  {
    v221 = v271;
  }

LABEL_139:
  if (*(this + 164) == v221)
  {
    v222 = *(this + 157) - 1;
  }

  else
  {
    v222 = *(this + 156);
  }

  *(this + 157) = v222;
  if (!v222)
  {
    *(this + 182) = v221;
    *(this + 157) = *(this + 156);
  }

  *(this + 164) = v221;
  LODWORD(v218) = *(this + 159);
  *(this + 167) = LODWORD(v218);
  if ((*(this + 182) - 3) >= 2)
  {
    v223 = (this + 668);
LABEL_152:
    *v223 = 0;
    v218 = 0.0;
  }

LABEL_153:
  v224 = *(this + 169);
  v225 = *&v218 > v224;
  if (*(this + 660) == v225)
  {
    v226 = *(this + 155) - 1;
  }

  else
  {
    v226 = *(this + 154);
  }

  *(this + 155) = v226;
  if (!v226)
  {
    *(this + 664) = v225;
    *(this + 155) = *(this + 154);
  }

  *(this + 660) = v225;
  if (*(this + 788) == 1)
  {
    if ((*(this + 552) & 1) == 0)
    {
      __assert_rtn("GetGains", "WindDetectorAndSuppressor.cpp", 311, "mInitialized");
    }

    *(this + 1132) = *(this + 664);
    *(this + 277) = LODWORD(v218);
    if ((*(this + 1376) & 1) == 0)
    {
      __assert_rtn("process", "WindSuppressorCore.cpp", 211, "mInitialized");
    }

    v227 = (*(this + 116) - *(this + 115)) >> 2;
    v228 = *(this + 267);
    if (v228 >= v227)
    {
      v229 = v227;
    }

    else
    {
      v229 = v228;
    }

    *(this + 270) = v229;
    v230 = *(this + 103);
    if (v229 > (*(this + 104) - v230) >> 2)
    {
      __assert_rtn("process", "WindSuppressorCore.cpp", 215, "psd1.size() >= mNumBinsToProcess");
    }

    v231 = *(this + 106);
    if (v229 > (*(this + 107) - v231) >> 2)
    {
      __assert_rtn("process", "WindSuppressorCore.cpp", 216, "psd2.size() >= mNumBinsToProcess");
    }

    if (v229 > (*(this + 113) - *(this + 112)) >> 2)
    {
      __assert_rtn("process", "WindSuppressorCore.cpp", 217, "coherence.size() >= mNumBinsToProcess");
    }

    vDSP_vmax(v230, 1, v231, 1, *(this + 154), 1, v229);
    if ((*(this + 1376) & 1) == 0)
    {
      __assert_rtn("computeWindSuppressionGain", "WindSuppressorCore.cpp", 250, "mInitialized");
    }

    v232 = *(this + 270);
    if (v232 > (*(this + 155) - *(this + 154)) >> 2)
    {
      __assert_rtn("computeWindSuppressionGain", "WindSuppressorCore.cpp", 251, "psd.size() >= mNumBinsToProcess");
    }

    if (v232 > (*(this + 113) - *(this + 112)) >> 2)
    {
      __assert_rtn("computeWindSuppressionGain", "WindSuppressorCore.cpp", 252, "coherence.size() >= mNumBinsToProcess");
    }

    if (v232 > (*(this + 116) - *(this + 115)) >> 2)
    {
      __assert_rtn("computeWindSuppressionGain", "WindSuppressorCore.cpp", 253, "gain.size() >= mNumBinsToProcess");
    }

    v233 = *(this + 130);
    v234 = *(v233 + 12);
    v352[1] = -*(v233 + 16);
    v353 = v234;
    MEMORY[0x1E12BE8A0]();
    MEMORY[0x1E12BE940](*(this + 115), 1, &v353, *(this + 115), 1, *(this + 270));
    v235 = (this + 920);
    vvtanhf(*(this + 115), *(this + 115), this + 270);
    MEMORY[0x1E12BE5D0](*(this + 142), 1, *v235, 1, *v235, 1, *(this + 270));
    MEMORY[0x1E12BE940](*v235, 1, &WindSuppressorCore::kPoint5f, *v235, 1, *(this + 270));
    v236 = this + 1040;
    WindUtility::EventTracker<float>::update(*(this + 169), *(this + 277));
    if ((*(*(this + 169) + 64) - 3) >= 2)
    {
      v238 = *(this + 115);
      LODWORD(v237) = *(this + 270);
      v239 = 0.0;
    }

    else
    {
      v237 = *(this + 270);
      v238 = *(this + 115);
      v239 = 0.0;
      if (v237)
      {
        v240 = 0;
        while (*(v238 + 4 * v240) <= *(*v236 + 20))
        {
          if (v237 == ++v240)
          {
            goto LABEL_208;
          }
        }

        v239 = v240;
      }
    }

LABEL_208:
    v272 = *(this + 160);
    v273 = 80;
    if (v239 > *v272)
    {
      v273 = 76;
    }

    v274 = (v239 * (1.0 - *&v236[v273])) + (*&v236[v273] * *v272);
    *v272 = v274;
    v352[0] = 1.0;
    vDSP_vfill(v352, (v238 + 4 * v274), 1, v237 - v274);
    vDSP_vmax(*(this + 148), 1, *(this + 115), 1, *(this + 115), 1, *(this + 270));
    if ((*(this + 1376) & 1) == 0)
    {
      __assert_rtn("refineGainsBasedOnEnergy", "WindSuppressorCore.cpp", 314, "mInitialized");
    }

    v275 = *(this + 270);
    if (v275 > (*(this + 155) - *(this + 154)) >> 2)
    {
      __assert_rtn("refineGainsBasedOnEnergy", "WindSuppressorCore.cpp", 315, "psd.size() >= mNumBinsToProcess");
    }

    if (v275 > (*(this + 116) - *(this + 115)) >> 2)
    {
      __assert_rtn("refineGainsBasedOnEnergy", "WindSuppressorCore.cpp", 316, "gain.size() >= mNumBinsToProcess");
    }

    if (v275 > (*(this + 158) - *(this + 157)) >> 2)
    {
      __assert_rtn("createSmallerThanMask", "WindSuppressorCore.cpp", 447, "vecOut.size() >= numElements");
    }

    MEMORY[0x1E12BE9A0]();
    LODWORD(__B.realp) = 1036831952;
    if ((*(this + 1376) & 1) == 0)
    {
      __assert_rtn("createGreterThanMask", "WindSuppressorCore.cpp", 425, "mInitialized");
    }

    if (v275 > (*(this + 116) - *(this + 115)) >> 2)
    {
      __assert_rtn("createGreterThanMask", "WindSuppressorCore.cpp", 426, "vecIn.size() >= numElements");
    }

    v276 = *(this + 157);
    if (v275 > (*(this + 158) - v276) >> 2)
    {
      __assert_rtn("createGreterThanMask", "WindSuppressorCore.cpp", 427, "vecOut.size() >= numElements");
    }

    vDSP_vthrsc(v276, 1, &__B, &WindSuppressorCore::kOnef, *(this + 157), 1, v275);
    vDSP_vthr(*(this + 157), 1, &WindSuppressorCore::kZerof, *(this + 157), 1, v275);
    v277 = (this + 1256);
    LODWORD(__B.realp) = 0;
    vDSP_sve(*(this + 157), 1, &__B, *(this + 270));
    v278 = (this + 1080);
    MEMORY[0x1E12BE7F0](*(this + 154), 1, *v277, 1, *v277, 1, *(this + 270));
    LODWORD(__A.realp) = 0;
    vDSP_sve(*(this + 157), 1, &__A, *(this + 270));
    v279 = *&__A.realp / *&__B.realp;
    if (fminf(*&__A.realp, *&__B.realp) < 2.2204e-16)
    {
      v279 = 1.0;
    }

    *&__A.realp = v279;
    vDSP_vsdiv(*v277, 1, &__A, *v277, 1, *v278);
    LODWORD(__C.realp) = 1065353216;
    MEMORY[0x1E12BE8A0](*v277, 1, &WindSuppressorCore::kEpsf, *v277, 1, *v278);
    vDSP_vdbcon(*v277, 1, &__C, *v277, 1, *v278, 0);
    v280 = *(this + 160);
    if (*v280 > 0.0)
    {
      v281 = 0;
      v282 = *(this + 130);
      v283 = *(v282 + 44);
      v284 = *(v282 + 48);
      v285 = *(this + 157);
      v286 = *(this + 115);
      v287 = vabds_f32(v283, v284);
      do
      {
        if (v287 >= 2.2204e-16)
        {
          v289 = *(v285 + 4 * v281);
          v288 = 1.0;
          if (v289 < v283)
          {
            goto LABEL_226;
          }

          if (v289 <= v284)
          {
            v288 = (((1.0 - *(v286 + 4 * v281)) / (v283 - v284)) * (v289 - v283)) + 1.0;
            goto LABEL_226;
          }
        }

        v288 = *(v286 + 4 * v281);
LABEL_226:
        *(v286 + 4 * v281++) = v288;
      }

      while (*v280 > v281);
    }

    if ((*(this + 1376) & 1) == 0)
    {
      __assert_rtn("applyFrequencySmoothingWindow", "WindSuppressorCore.cpp", 366, "mInitialized");
    }

    v290 = *(this + 270);
    v291 = *(this + 115);
    if (v290 > (*(this + 116) - v291) >> 2)
    {
      __assert_rtn("applyFrequencySmoothingWindow", "WindSuppressorCore.cpp", 367, "input.size() >= inputSize");
    }

    v292 = *(this + 151);
    v293 = (*(this + 152) - v292) >> 2;
    v294 = *(this + 271);
    if (v293 < v294 + v290)
    {
      __assert_rtn("applyFrequencySmoothingWindow", "WindSuppressorCore.cpp", 369, "mTmpVector1.size() >= inputSize + mFilterSize");
    }

    if (v294 <= 1)
    {
      v295 = 0;
    }

    else
    {
      v295 = (v294 >> 1) - 1;
    }

    vDSP_vfill((v291 + 4 * (v290 - 1)), v292, 1, v293);
    vDSP_vfill(*(this + 115), *(this + 151), 1, v295);
    if (v290)
    {
      memmove((*(this + 151) + 4 * v295), *(this + 115), 4 * v290);
    }

    vDSP_conv(*(this + 151), 1, (*(this + 145) + 4 * *(this + 271) - 4), -1, *(this + 115), 1, v290, *(this + 271));
    if ((*(this + 1376) & 1) == 0)
    {
      __assert_rtn("smoothGainsInTime", "WindSuppressorCore.cpp", 401, "mInitialized");
    }

    if (*(this + 270) > ((*(this + 116) - *(this + 115)) >> 2))
    {
      __assert_rtn("smoothGainsInTime", "WindSuppressorCore.cpp", 402, "gain.size() >= mNumBinsToProcess");
    }

    v296 = *(this + 163);
    LODWORD(__C.realp) = *(this + 281);
    v354 = 1.0 - *&__C.realp;
    MEMORY[0x1E12BE930](*v296);
    if ((*(this + 1376) & 1) == 0)
    {
      __assert_rtn("generateHighPassCutoffIndex", "WindSuppressorCore.cpp", 483, "mInitialized");
    }

    if (*(this + 270) > ((v296[1] - *v296) >> 2))
    {
      __assert_rtn("generateHighPassCutoffIndex", "WindSuppressorCore.cpp", 484, "gain.size() >= mNumBinsToProcess");
    }

    LODWORD(__B.realp) = 1045220557;
    MEMORY[0x1E12BE9A0]();
    vDSP_vthrsc(*(this + 151), 1, &__B, &WindSuppressorCore::kOnef, *(this + 151), 1, *(this + 270));
    vDSP_vthr(*(this + 151), 1, &WindSuppressorCore::kZerof, *(this + 151), 1, *(this + 270));
    LODWORD(__A.realp) = 0;
    vDSP_sve(*(this + 151), 1, &__A, *(this + 270));
    v267 = *(this + 137) / (*(this + 268) + *(this + 268)) * *&__A.realp;
    *(this + 278) = v267;
    v297 = *(this + 270);
    if (v297)
    {
      memmove(*(this + 115), **(this + 163), 4 * v297);
      v267 = *(this + 278);
    }
  }

  else
  {
    if (*&v218 > v224)
    {
      v241 = *(this + 145);
      v242 = *(this + 147);
      if (v241 <= v242)
      {
        v243 = *(this + 112);
        v244 = *(this + 115);
        v245 = *(this + 145);
        do
        {
          v218 = *(this + 158) + (*(this + 136) - *(this + 158)) * ((tanhf(*(this + 175) * (*(v243 + 4 * v245) - *(this + 174))) + 1.0) * 0.5);
          *&v218 = v218;
          *(v244 + 4 * v245++) = LODWORD(v218);
        }

        while (v245 <= v242);
      }

      v246 = *(this + 119);
      v247 = *(this + 118);
      v248 = (v246 - v247) >> 2;
      v249 = v248 >> 1;
      if (v248 >> 1 > v241)
      {
        v241 = v248 >> 1;
      }

      v250 = *(this + 142);
      LODWORD(__B.realp) = 0;
      std::vector<float>::assign(this + 121, v250, &__B, *&v218);
      v251 = *(this + 147);
      v252 = v251 - v249;
      if (v241 <= v251 - v249)
      {
        if (v248 <= 1)
        {
          v253 = 1;
        }

        else
        {
          v253 = (v246 - v247) >> 2;
        }

        v254 = 4 * v241 - 4 * v249;
        do
        {
          if (v246 != v247)
          {
            v255 = *(this + 121);
            v256 = *(v255 + 4 * v241);
            v257 = (*(this + 118) + 4 * v248 - 4 * v249);
            v258 = (*(this + 115) + v254);
            v259 = v253;
            do
            {
              v260 = *v258++;
              v261 = v260;
              v262 = *v257--;
              v256 = v256 + (v261 * v262);
              *(v255 + 4 * v241) = v256;
              --v259;
            }

            while (v259);
          }

          ++v241;
          v254 += 4;
        }

        while (v241 <= v252);
      }

      if (v249 <= v252)
      {
        v263 = *(this + 121);
        v264 = *(this + 115);
        do
        {
          *(v264 + 4 * v249) = *(v263 + 4 * v249);
          ++v249;
        }

        while (v249 <= v252);
      }

      v265 = *(this + 146);
      if (v265 <= v251)
      {
        v266 = *(this + 115);
        while (*(v266 + 4 * v265) <= *(this + 179))
        {
          if (++v265 > v251)
          {
            goto LABEL_242;
          }
        }

        v342 = *(this + 70) / (*(this + 142) + *(this + 142)) * v265;
        *(this + 168) = v342;
        if (v265 <= v251)
        {
          v343 = *v345;
          do
          {
            *(v266 + 4 * v265++) = v343;
          }

          while (v265 <= v251);
        }
      }

      goto LABEL_242;
    }

    std::vector<float>::assign(this + 115, *(this + 142), v345, *&v218);
    v267 = 160.0;
  }

  *(this + 168) = v267;
LABEL_242:
  if (v136)
  {
    v298 = 0;
    v299 = *(this + 142);
    v300 = 1;
    do
    {
      v301 = v300;
      v302 = *(v133 + 8 + 16 * v298 + 8);
      v303 = *&v136[4 * v298 + 4];
      v304 = *(v302 + 4 * v299);
      MEMORY[0x1E12BE7F0](v302, 1, *(this + 115), 1, v303, 1);
      MEMORY[0x1E12BE7F0](v302 + 4 * *(this + 142), 1, *(this + 115), 1, v303 + 4 * *(this + 142), 1);
      v300 = 0;
      v299 = *(this + 142);
      *(v303 + 4 * v299) = v304;
      v298 = 1;
    }

    while ((v301 & 1) != 0);
  }

  v305 = 0x3F0000003F000000;
  if ((*(this + 182) - 3) <= 1)
  {
    v348 = __exp10f(*(this + 160) * 0.1);
    v306.f32[0] = __exp10f(*(this + 161) * 0.1);
    v306.f32[1] = v348;
    v305 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v306), 1.0 / (*(this + 137) + (v348 + v306.f32[0]))));
  }

  *(this + 780) = v305;
  v307 = v346;
  if (v137)
  {
    v308 = *(v133 + 16);
    v309 = *(v133 + 32);
    v310 = v137[2];
    v311 = (2 * *(this + 142));
    if (*(this + 788) == 1)
    {
      if ((*(this + 1376) & 1) == 0)
      {
        __assert_rtn("updateAggregateOmni", "WindSuppressorCore.cpp", 232, "mInitialized");
      }

      v312 = *(this + 166);
      if (*(this + 167) - v312 <= 4uLL)
      {
        __assert_rtn("updateAggregateOmni", "WindSuppressorCore.cpp", 233, "mAggregateOmniMicWeight.size() >= 2");
      }

      v313 = ((1.0 - *(this + 282)) * v305.f32[0]) + (*(this + 282) * *v312);
      *v312 = v313;
      v312[1] = 1.0 - v313;
      MEMORY[0x1E12BE930](v308, 1, v312, v309, 1, v312 + 1, v310, 1, v311);
    }

    else
    {
      MEMORY[0x1E12BE930](v308, 1);
    }

    v307 = v346;
  }

  if (v307)
  {
    v314 = *(this + 115);
    v315 = *(this + 116);
    if (v315 != v314)
    {
      memmove(v307[2], v314, v315 - v314);
    }
  }

LABEL_257:
  v316 = *(this + 776);
  *(this + 1480) = *(this + 760);
  *(this + 1496) = v316;
  v317 = *(this + 808);
  *(this + 1512) = *(this + 792);
  *(this + 1528) = v317;
  v318 = *(this + 712);
  *(this + 1416) = *(this + 696);
  *(this + 1432) = v318;
  v319 = *(this + 744);
  *(this + 1448) = *(this + 728);
  *(this + 1464) = v319;
  v320 = *(this + 680);
  *(this + 1384) = *(this + 664);
  *(this + 1400) = v320;
  v321 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v323 & 1) == 0)
  {
    goto LABEL_268;
  }

  LOBYTE(v322) = *(this + 1384);
  ausdk::AUElement::SetParameter(v321, 0, v322);
  v324 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v325 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v324, 1u, *(this + 347));
  v326 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v327 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v326, 0x1Bu, *(this + 348));
  v328 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v329 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v328, 0xEu, *(this + 362));
  v330 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v331 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v330, 0xFu, *(this + 363));
  v332 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v333 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v332, 0x14u, *(this + 364));
  v334 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v335 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v334, 0x1Cu, *(this + 365));
  v336 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v337 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v336, 0x1Du, *(this + 366));
  v338 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v339 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v338, 0x19u, *(this + 375));
  v340 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v341 & 1) == 0)
  {
    goto LABEL_268;
  }

  ausdk::AUElement::SetParameter(v340, 0x1Au, *(this + 376));
  return 0;
}

uint64_t AUWindKill::SetParameter(AUWindKill *this, unsigned int a2, int a3, float a4)
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
  ++*(this + 132);
  return result;
}

uint64_t AUWindKill::SetProperty(AUWindKill *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
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
      *(this + 536) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUWindKill::GetProperty(AUWindKill *this, int a2, int a3, unsigned int a4, float *__b)
{
  v5 = 4294956417;
  if (a3)
  {
    return v5;
  }

  if (a2 <= 5629)
  {
    if (a2 == 21)
    {
      v5 = 0;
      v8 = *(this + 536);
    }

    else
    {
      if (a2 != 3700)
      {
        return v5;
      }

      v5 = 0;
      v8 = *(this + 376);
    }

    *__b = v8;
    return v5;
  }

  switch(a2)
  {
    case 5630:
      if (*(this + 17) != 1 || *(this + 536) == 1)
      {
        goto LABEL_19;
      }

      v9 = *(this + 115);
      v10 = *(this + 116);
      goto LABEL_24;
    case 5631:
      if (*(this + 17) != 1 || *(this + 536) == 1)
      {
LABEL_19:
        v5 = *(this + 84);
        if (!v5)
        {
          return v5;
        }

        memset_pattern16(__b, &unk_1DE095DF0, 4 * v5);
        return 0;
      }

      v9 = *(this + 112);
      v10 = *(this + 113);
LABEL_24:
      if (v10 != v9)
      {
        memmove(__b, v9, v10 - v9);
      }

      return 0;
    case 5632:
      v7 = 0.0;
      if (*(this + 17) == 1 && (*(this + 536) & 1) == 0)
      {
        LOBYTE(v7) = *(this + 1384);
        v7 = LODWORD(v7);
      }

      v5 = 0;
      *__b = v7;
      break;
  }

  return v5;
}

uint64_t AUWindKill::GetPropertyInfo(AUWindKill *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 5629)
  {
    if (a2 == 5630 || a2 == 5631)
    {
      *a6 = 1;
      v8 = 4 * *(this + 84);
      goto LABEL_13;
    }

    if (a2 != 5632)
    {
      return result;
    }

    *a6 = 0;
LABEL_11:
    v8 = 4;
LABEL_13:
    result = 0;
    *a5 = v8;
    return result;
  }

  if (a2 == 21 || a2 == 3700)
  {
    *a6 = 1;
    goto LABEL_11;
  }

  return result;
}

uint64_t AUWindKill::Reset(AUWindKill *this, int16x4_t a2)
{
  if (*(this + 17) == 1)
  {
    WindDetectorAndSuppressor::Reset((this + 544), a2);
    v3 = *(this + 776);
    *(this + 1480) = *(this + 760);
    *(this + 1496) = v3;
    v4 = *(this + 808);
    *(this + 1512) = *(this + 792);
    *(this + 1528) = v4;
    v5 = *(this + 712);
    *(this + 1416) = *(this + 696);
    *(this + 1432) = v5;
    v6 = *(this + 744);
    *(this + 1448) = *(this + 728);
    *(this + 1464) = v6;
    v7 = *(this + 680);
    *(this + 1384) = *(this + 664);
    *(this + 1400) = v7;
  }

  return 0;
}

uint64_t AUWindKill::Initialize(AUWindKill *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_29;
  }

  if (*(Element + 108) != 2)
  {
    return 4294956421;
  }

  for (i = 0; ; ++i)
  {
    v4 = *(this + 21);
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (i >= v5)
    {
      break;
    }

    if (i - 1 >= 2)
    {
      if (!i)
      {
        v7 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v7)
        {
          goto LABEL_29;
        }

        if (*(v7 + 108) != 2)
        {
          return 4294956421;
        }
      }
    }

    else
    {
      v6 = ausdk::AUScope::GetElement((this + 128), i);
      if (!v6)
      {
        goto LABEL_29;
      }

      if (*(v6 + 108) != 1)
      {
        return 4294956421;
      }
    }
  }

  v9 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v9)
  {
LABEL_29:
    ausdk::Throw(0xFFFFD583);
  }

  v10 = *(v9 + 80);
  v11 = *(this + 84);
  *(this + 70) = v10;
  *(this + 142) = v11;
  if (!v11)
  {
    __assert_rtn("initialize", "WindSuppressorCore.cpp", 28, "blockSize > 0");
  }

  if (v10 <= 0.0)
  {
    __assert_rtn("initialize", "WindSuppressorCore.cpp", 29, "sampleRate > 0.0f");
  }

  *(this + 1376) = 1;
  *(this + 269) = 1;
  *(this + 268) = v11;
  *(this + 137) = v10;
  v12 = (2 * v11);
  *(this + 266) = v12;
  *(this + 267) = v11 + 1;
  __C = 0.0;
  std::vector<float>::assign(this + 151, v12, &__C, *&v10);
  v13 = *(this + 266);
  __C = 0.0;
  std::vector<float>::assign(this + 154, v13, &__C, v14);
  v15 = *(this + 266);
  __C = 0.0;
  std::vector<float>::assign(this + 157, v15, &__C, v16);
  v17 = *(this + 266);
  __C = 0.0;
  std::vector<float>::assign(this + 145, v17, &__C, v18);
  v19 = *(this + 266);
  __C = 0.0;
  std::vector<float>::assign(this + 148, v19, &__C, v20);
  v21 = *(this + 266);
  __C = 1.0;
  std::vector<float>::assign(this + 142, v21, &__C, v22);
  std::vector<WindUtility::EventTracker<float>>::resize(this + 169, *(this + 269));
  v23 = *(this + 269);
  __C = 0.0;
  std::vector<float>::assign(this + 160, v23, &__C, v24);
  std::vector<float>::assign(this + 166, (*(this + 269) + 1), &WindSuppressorCore::kDefaultAggOmniBlendingRatio, v25);
  std::vector<std::vector<float>>::resize(this + 163, *(this + 269));
  if (*(this + 269))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      std::vector<float>::assign((*(this + 163) + v27), *(this + 267), &WindSuppressorCore::kDefaultGains, v26);
      ++v28;
      v27 += 24;
    }

    while (v28 < *(this + 269));
  }

  if ((*(this + 1376) & 1) == 0)
  {
    __assert_rtn("setFrequencySmoothingFilter", "WindSuppressorCore.cpp", 163, "mInitialized");
  }

  *(this + 271) = 5;
  v29 = *(this + 145);
  if (*(this + 146) - v29 <= 0x10uLL)
  {
    __assert_rtn("generateFrequencySmoothingWindow", "WindSuppressorCore.cpp", 466, "window.size() >= N");
  }

  vDSP_hann_window(v29, 5uLL, 0);
  __C = 0.0;
  vDSP_sve(*(this + 145), 1, &__C, 5uLL);
  if (__C < 2.2204e-16)
  {
    __C = 1.0;
  }

  vDSP_vsdiv(*(this + 145), 1, &__C, *(this + 145), 1, 5uLL);
  *v33.i32 = WindDetectorAndSuppressor::UpdateNonTrivialParameters((this + 544), v30, v31, v32);
  v34 = *(this + 142);
  __C = 0.0;
  std::vector<float>::assign(this + 103, v34, &__C, v33);
  v35 = *(this + 142);
  __C = 0.0;
  std::vector<float>::assign(this + 106, v35, &__C, v36);
  v37 = (2 * *(this + 142));
  __C = 0.0;
  std::vector<float>::assign(this + 109, v37, &__C, v38);
  v39 = *(this + 142);
  __C = 1.0;
  std::vector<float>::assign(this + 112, v39, &__C, v40);
  std::vector<float>::assign(this + 115, *(this + 142), this + 136, v41);
  v42 = *(this + 142);
  __C = 0.0;
  std::vector<float>::assign(this + 121, v42, &__C, v43);
  v44 = *(this + 142);
  __C = 1.0;
  std::vector<float>::assign(this + 124, v44, &__C, v45);
  v46 = (2 * *(this + 142));
  __C = 0.0;
  std::vector<float>::assign(this + 127, v46, &__C, v47);
  *(this + 552) = 1;
  WindDetectorAndSuppressor::Reset((this + 544), v48);
  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUWindKill::~AUWindKill(AUWindKill *this)
{
  *this = &unk_1F592CB90;
  WindDetectorAndSuppressor::~WindDetectorAndSuppressor((this + 544));
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592CB90;
  WindDetectorAndSuppressor::~WindDetectorAndSuppressor((this + 544));

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUECMIMOHelper::ValidFormat(AUECMIMOHelper *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v6 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v6 == 2)
  {
    if (a4->mChannelsPerFrame == 1)
    {
      result = result;
    }

    else
    {
      result = 0;
    }
  }

  else if (v6 == 1)
  {
    if (a4->mChannelsPerFrame)
    {
      result = result;
    }

    else
    {
      result = 0;
    }
  }

  if (a3 <= 1)
  {
    if (a4->mChannelsPerFrame < 9)
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

uint64_t AUECMIMOHelper::SupportedNumChannels(AUECMIMOHelper *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUECMIMOHelper::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

uint64_t AUECMIMOHelper::GetParameterInfo(AUECMIMOHelper *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0xE)
  {
    v6 = off_1E866D050[a3];
    v7 = dword_1DE0EAB08[a3];
    v8 = flt_1DE0EAB44[a3];
    v9 = flt_1DE0EAB80[a3];
    v10 = flt_1DE0EABBC[a3];
    v11 = dword_1DE0EABF8[a3];
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

uint64_t AUECMIMOHelper::GetParameterList(AUECMIMOHelper *this, int a2, unsigned int *a3, unsigned int *a4)
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
    *(a3 + 6) = 0xD0000000CLL;
    a3[14] = 14;
  }

  result = 0;
  *a4 = 15;
  return result;
}

uint64_t AUECMIMOHelper::Render(AUECMIMOHelper *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_24;
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
    if (v13)
    {
      if (!*(v13 + 144))
      {
        goto LABEL_27;
      }

      v14 = *(v13 + 152);
      v15 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (v15 && *(v15 + 172))
      {
        result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
        if (v16)
        {
          result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
          if (!result)
          {
LABEL_14:
            v17 = ausdk::AUBase::Input(this, 1u);
            if (*(v17 + 144))
            {
              v18 = *(v17 + 152) + 48;
              v21[0] = v14 + 48;
              v21[1] = v18;
              if (*(v9 + 144))
              {
                v20 = *(v9 + 152) + 48;
                return (*(*this + 184))(this, a2, a4, 2, v21, 1, &v20);
              }
            }

LABEL_27:
            ausdk::Throw(0xFFFFFFFFLL);
          }
        }

        else if (!result)
        {
          goto LABEL_14;
        }

        return result;
      }

      v19 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v19)
      {
        if (!*(v19 + 144) || !*(v9 + 144))
        {
          goto LABEL_27;
        }

        return 0;
      }
    }

LABEL_24:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUECMIMOHelper::ProcessMultipleBufferLists(AUECMIMOHelper *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  v10 = *(this + 197);
  if (*(this + 198) != v10)
  {
    AUECMIMOHelper::update_params(this);
    *(this + 198) = v10;
  }

  if (*(this + 135))
  {
    v11 = 0;
    v12 = 0;
    v13 = 16;
    do
    {
      v14 = *(&a5[1]->mNumberBuffers + v13);
      memcpy(*(*(this + 78) + v11), (*(*(this + 78) + v11) + 4 * *(this + 132)), 4 * *(this + 132));
      memcpy((*(*(this + 78) + v11) + 4 * *(this + 132)), v14, 4 * *(this + 132));
      __C = 0.0;
      vDSP_svesq(*(*(this + 78) + v11), 1, &__C, *(this + 133));
      *(*(*(this + 95) + v11) + 4 * *(this + 155)) = __C;
      ++v12;
      v11 += 24;
      v13 += 16;
    }

    while (v12 < *(this + 135));
  }

  mData = (*a7)->mBuffers[0].mData;
  memcpy(mData, a5[1]->mBuffers[0].mData, 4 * *(this + 132));
  LODWORD(v16) = *(this + 135);
  if (v16 >= 2)
  {
    v17 = 1;
    v18 = 32;
    do
    {
      MEMORY[0x1E12BE5D0](*(&a5[1]->mNumberBuffers + v18), 1, mData, 1, mData, 1, *(this + 132));
      ++v17;
      v16 = *(this + 135);
      v18 += 16;
    }

    while (v17 < v16);
  }

  if (*(this + 576))
  {
    v19 = *(this + 132);
    v71 = 0.0;
    v72 = 0.0;
    v20 = *(this + 137);
    v21 = 0.0;
    if (v20 < 1)
    {
      v27 = 1.0e-30;
      v29 = 0.0;
      v28 = 0.0;
      v44 = 0.0;
      v25 = 1.0e-30;
    }

    else
    {
      v67 = 0;
      v22 = (2 * v19);
      v23 = *(this + 136);
      v24 = 0.0;
      v25 = 1.0e-30;
      v26 = v16;
      v27 = 1.0e-30;
      v28 = 0.0;
      v29 = 0.0;
      do
      {
        if (v26)
        {
          v70 = 0;
          v68 = v26 * v67 * v23 * *(this + 133);
          do
          {
            if (v23 >= 1)
            {
              v30 = 0;
              v31 = 0;
              v69 = v68 + v23 * v70 * *(this + 133);
              do
              {
                v32 = v69 + *(this + 133) * v31;
                vDSP_svesq((*(this + 81) + 4 * v32), 1, &v72, v22);
                v33 = *(this + 155);
                v34 = v30 + v33;
                if (v30 + v33 < 0)
                {
                  v34 = *(this + 136) + v33 - v31;
                }

                v35 = v32;
                v36 = *(*(*(this + 95) + 24 * v70) + 4 * v34);
                v37 = v72;
                MEMORY[0x1E12BE9A0](*(this + 81) + 4 * v32, 1, *(this + 89) + 4 * v32, 1, *(this + 92), 1, v22);
                vDSP_svesq(*(this + 92), 1, &v71, *(this + 133));
                v38 = *(this + 92);
                v39 = (*(this + 84) + 4 * v35);
                v40 = *(this + 133);
                v41 = *(this + 152);
                __C = 0.0;
                vDSP_dotpr(v38, 1, v39, 1, &__C, v40);
                v73 = 0.0;
                v74 = 0.0;
                vDSP_svesq(v38, 1, &v74, v40);
                vDSP_svesq(v39, 1, &v73, v40);
                v42 = sqrtf(v73 * v74);
                v43 = 0.0;
                if (v42 > v41)
                {
                  v43 = __C / ((v41 / 100.0) + v42);
                }

                v25 = v25 + v37;
                v27 = v27 + (v37 * v36);
                v29 = v29 + ((v37 * v36) * v31);
                v28 = v28 + ((v37 * v36) * v43);
                memcpy((*(this + 84) + 4 * v35), *(this + 92), 4 * *(this + 133));
                v24 = v24 + (*(*(*(this + 95) + 24 * v70) + 4 * v34) * v71);
                ++v31;
                v23 = *(this + 136);
                --v30;
              }

              while (v31 < v23);
              LODWORD(v16) = *(this + 135);
            }

            ++v70;
          }

          while (v70 < v16);
          v20 = *(this + 137);
          v26 = v16;
        }

        ++v67;
      }

      while (v67 < v20);
      v44 = v24 * 100.0;
      v21 = 0.0;
    }

    v46 = -1.0;
    if ((v28 / v27) >= -1.0)
    {
      v46 = v28 / v27;
    }

    if (v46 > 1.0)
    {
      v46 = 1.0;
    }

    v47 = *(this + 145);
    v48 = 588;
    if (v46 > v47)
    {
      v48 = 584;
    }

    v49 = (v46 * (1.0 - *(this + v48))) + (*(this + v48) * v47);
    *(this + 145) = v49;
    v50 = *(this + 148);
    if (v49 > v50)
    {
      v21 = (v49 - v50) * *(this + 151);
    }

    *(this + 175) = ((((v29 / v27) + 0.5) * 1000.0) * *(this + 132)) / *(this + 134);
    v51 = *(this + 196);
    v52 = 612;
    if (v51 > v27)
    {
      v52 = 616;
    }

    v53 = v44 / (((*(this + v52) * v51) + 1.0e-20) + ((1.0 - *(this + v52)) * v27));
    *(this + 174) = v53;
    *(this + 176) = v27 / v25;
    *(this + 196) = v27;
    if (v53 <= v21)
    {
      v54 = v21;
    }

    else
    {
      v54 = v53;
    }

    if (*(this + 596))
    {
      v53 = v54;
    }

    *(this + 150) = v53;
    memcpy(*(this + 89), *(this + 81), (4 * *(this + 133) * v20 * v16 * *(this + 136)));
  }

  else
  {
    *(this + 87) = 1148829696;
    *(this + 176) = 1065353216;
  }

  v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v56 & 1) == 0 || (ausdk::AUElement::SetParameter(v55, 1u, *(this + 174)), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v58 & 1) == 0) || (ausdk::AUElement::SetParameter(v57, 2u, *(this + 175)), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v60 & 1) == 0) || (ausdk::AUElement::SetParameter(v59, 3u, *(this + 176)), v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v62 & 1) == 0) || (ausdk::AUElement::SetParameter(v61, 7u, *(this + 145)), v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v64 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v63, 8u, *(this + 150));
  result = 0;
  v65 = *(this + 155);
  if (v65 + 1 < *(this + 136))
  {
    v66 = v65 + 1;
  }

  else
  {
    v66 = 0;
  }

  *(this + 155) = v66;
  return result;
}

void AUECMIMOHelper::update_params(AUECMIMOHelper *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 153) = ausdk::AUElement::GetParameter(v2, 5u), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (*(this + 154) = ausdk::AUElement::GetParameter(v4, 6u), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (*(this + 146) = ausdk::AUElement::GetParameter(v6, 0xAu), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (*(this + 147) = ausdk::AUElement::GetParameter(v8, 0xBu), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (*(this + 148) = fmaxf(ausdk::AUElement::GetParameter(v10, 0xCu), 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (*(this + 596) = ausdk::AUElement::GetParameter(v12, 9u) != 0.0, v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (*(this + 151) = ausdk::AUElement::GetParameter(v14, 0xDu), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0))
  {
    abort();
  }

  v18 = ausdk::AUElement::GetParameter(v16, 0xEu) * 0.1;
  *(this + 152) = __exp10f(v18);
}

uint64_t AUECMIMOHelper::SetParameter(AUECMIMOHelper *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  else
  {
    if (*(this + 17) == 1 && (a2 - 9 < 6 || a2 == 5))
    {
      ++*(this + 197);
    }

    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v8, a2, a5);
    return 0;
  }
}

uint64_t AUECMIMOHelper::SetProperty(AUECMIMOHelper *this, int a2, int a3, unsigned int a4, _DWORD *__src, size_t __n)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 103800)
  {
    if (__n == 4 * *(this + 133) * *(this + 137) * *(this + 135) * *(this + 136))
    {
      *(this + 576) = 1;
      memcpy(*(this + 81), __src, __n);
      return 0;
    }

    else
    {
      v6 = 0;
      *(this + 576) = 0;
    }
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (__n >= 4)
    {
      v6 = 0;
      *(this + 142) = *__src != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return v6;
}

uint64_t AUECMIMOHelper::GetProperty(AUECMIMOHelper *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v6 = *(this + 376);
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    v6 = *(this + 142);
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t AUECMIMOHelper::GetPropertyInfo(AUECMIMOHelper *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 103800)
  {
    *a6 = 1;
    v7 = 4 * *(this + 133) * *(this + 137) * *(this + 135) * *(this + 136);
  }

  else
  {
    if (a2 == 3700)
    {
      *a6 = 0;
    }

    else
    {
      if (a2 != 21)
      {
        return 4294956417;
      }

      *a6 = 1;
    }

    v7 = 4;
  }

  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUECMIMOHelper::Initialize(AUECMIMOHelper *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v3 == 2)
  {
    v4 = *(this + 21);
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v5 == 1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!Element)
      {
        goto LABEL_29;
      }

      v7 = *(Element + 108);
      if ((v7 - 9) >= 0xFFFFFFF8)
      {
        v8 = ausdk::AUScope::GetElement((this + 80), 0);
        if (!v8)
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 108);
        if ((v9 - 9) >= 0xFFFFFFF8)
        {
          v10 = ausdk::AUScope::GetElement((this + 128), 0);
          if (!v10)
          {
            goto LABEL_29;
          }

          if (*(v10 + 108) == 1)
          {
            *(this + 135) = v7;
            *(this + 137) = v9;
            v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v12 & 1) == 0)
            {
              goto LABEL_30;
            }

            *(this + 139) = ausdk::AUElement::GetParameter(v11, 0);
            v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v14 & 1) == 0)
            {
              goto LABEL_30;
            }

            *(this + 174) = ausdk::AUElement::GetParameter(v13, 1u);
            v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v16 & 1) == 0)
            {
              goto LABEL_30;
            }

            *(this + 175) = ausdk::AUElement::GetParameter(v15, 2u);
            v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v18 & 1) == 0)
            {
              goto LABEL_30;
            }

            *(this + 176) = ausdk::AUElement::GetParameter(v17, 3u);
            v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v20 & 1) == 0)
            {
              goto LABEL_30;
            }

            *(this + 140) = ausdk::AUElement::GetParameter(v19, 4u);
            v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v22 & 1) == 0)
            {
              goto LABEL_30;
            }

            *(this + 145) = ausdk::AUElement::GetParameter(v21, 7u);
            v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v24 & 1) == 0)
            {
              goto LABEL_30;
            }

            *(this + 150) = ausdk::AUElement::GetParameter(v23, 8u);
            AUECMIMOHelper::update_params(this);
            *(this + 198) = *(this + 197);
            v25 = *(this + 84);
            *(this + 132) = v25;
            *(this + 133) = 2 * v25;
            *(this + 138) = v25 + 1;
            v26 = ausdk::AUScope::GetElement((this + 80), 0);
            if (v26)
            {
              v27 = *(v26 + 80);
              *(this + 134) = v27;
              v28 = v27;
              v29 = ((v28 * *(this + 139)) / 1000.0);
              v30 = *(this + 132);
              if (v30 > v29)
              {
                v29 = *(this + 132);
              }

              v31 = vcvtps_u32_f32(v29 / v30);
              *(this + 136) = v31;
              v32 = v30 * v31;
              *(this + 141) = v32;
              *(this + 140) = ((v32 / v28) * 1000.0);
              v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v34)
              {
                ausdk::AUElement::SetParameter(v33, 4u, *(this + 140));
                AUECMIMOHelper::fcn_vector_init(this + 78, *(this + 135), *(this + 133));
                v35 = (4 * *(this + 133) * *(this + 137) * *(this + 135) * *(this + 136));
                v44 = 0;
                *(this + 82) = *(this + 81);
                std::vector<float>::resize(this + 81, v35, &v44, v36);
                v37 = (4 * *(this + 133) * *(this + 137) * *(this + 135) * *(this + 136));
                v44 = 0;
                *(this + 90) = *(this + 89);
                std::vector<float>::resize(this + 89, v37, &v44, v38);
                v39 = (4 * *(this + 133) * *(this + 137) * *(this + 135) * *(this + 136));
                v44 = 0;
                *(this + 85) = *(this + 84);
                std::vector<float>::resize(this + 84, v39, &v44, v40);
                AUECMIMOHelper::fcn_vector_init(this + 95, *(this + 135), *(this + 136));
                v41 = *(this + 133);
                v44 = 0;
                *(this + 93) = *(this + 92);
                std::vector<float>::resize(this + 92, v41, &v44, v42);
                result = 0;
                *(this + 196) = 0;
                return result;
              }

LABEL_30:
              abort();
            }

LABEL_29:
            ausdk::Throw(0xFFFFD583);
          }
        }
      }
    }
  }

  return 4294956428;
}

void AUECMIMOHelper::fcn_vector_init(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v10 = 0;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](a1);
  v6 = a2;
  std::vector<std::vector<float>>::resize(a1, a2);
  if (a2)
  {
    v8 = 0;
    v9 = 24 * v6;
    do
    {
      std::vector<float>::resize((*a1 + v8), a3, &v10, v7);
      v8 += 24;
    }

    while (v9 != v8);
  }
}

void AUECMIMOHelper::~AUECMIMOHelper(AUECMIMOHelper *this)
{
  AUECMIMOHelper::~AUECMIMOHelper(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592CDE0;
  v6 = (this + 760);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 93) = v2;
    operator delete(v2);
  }

  v3 = *(this + 89);
  if (v3)
  {
    *(this + 90) = v3;
    operator delete(v3);
  }

  v4 = *(this + 84);
  if (v4)
  {
    *(this + 85) = v4;
    operator delete(v4);
  }

  v5 = *(this + 81);
  if (v5)
  {
    *(this + 82) = v5;
    operator delete(v5);
  }

  v6 = (this + 624);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  ausdk::AUBase::~AUBase(this);
}

uint64_t _ZNK11LeanSpatial8LSEngineIDF16_E16hasBeenProcessedEj(uint64_t a1, int a2)
{
  v3 = a1 + 24;
  for (i = *(a1 + 32); i != v3; i = *(i + 8))
  {
    if (*(i + 16) == a2)
    {
      if (i == v3)
      {
        break;
      }

      v6 = *(i + 24);
      v5 = *(i + 32);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        v2 = *(v6 + 89);
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else if (v5)
      {
LABEL_10:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      if (v6)
      {
        return v2 & 1;
      }

      break;
    }
  }

  v2 = 0;
  return v2 & 1;
}

void _ZN11LeanSpatial8LSEngineIDF16_E20setSourceProcessFlagEjb(uint64_t a1, int a2)
{
  v2 = a1 + 24;
  for (i = *(a1 + 32); i != v2; i = *(i + 8))
  {
    if (*(i + 16) == a2)
    {
      if (i != v2)
      {
        v5 = *(i + 24);
        v4 = *(i + 32);
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v5)
        {
          *(v5 + 89) = 1;
        }

        if (v4)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }
      }

      return;
    }
  }
}

uint64_t _ZNSt3__18__any_ofB8ne200100INS_21__list_const_iteratorIN11LeanSpatial10SourceDescIDF16_EEPvEES6_NS_10__identityEZNKS2_8LSEngineIDF16_E17shouldProcessLateEvEUlS4_E_EEbT_T0_RT2_RT1_(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a1;
    while (1)
    {
      v6 = v4[3];
      v5 = v4[4];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v6 || v6[87] != 1 || v6[84] != 1)
      {
        break;
      }

      v2 = v6[83] ^ 1;
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_13:
      if ((v2 & 1) == 0)
      {
        v4 = v4[1];
        if (v4 != a2)
        {
          continue;
        }
      }

      return v2 & 1;
    }

    v2 = 0;
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    goto LABEL_13;
  }

  v2 = 0;
  return v2 & 1;
}

unint64_t _ZNK11LeanSpatial8LSEngineIDF16_E13getTailLengthEj(uint64_t a1, int a2)
{
  v3 = a1 + 24;
  for (i = *(a1 + 32); i != v3; i = *(i + 8))
  {
    if (*(i + 16) == a2)
    {
      if (i == v3)
      {
        return 0;
      }

      v6 = *(i + 24);
      v5 = *(i + 32);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        v7 = _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(*v6) * *(v6 + 85);
        v2 = fmax(v7, (_ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(*(v6 + 8)) * *(v6 + 86)));
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else if (v5)
      {
LABEL_10:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      if (v6)
      {
        return v2;
      }

      return 0;
    }
  }

  return 0;
}

void _ZN11LeanSpatial8LSEngineIDF16_E13setCoordinateEjNS_16LSCoordinateTypeEf(uint64_t a1, int a2, unsigned int a3, float a4)
{
  v4 = a1 + 24;
  for (i = *(a1 + 32); i != v4; i = *(i + 8))
  {
    if (*(i + 16) == a2)
    {
      if (i != v4)
      {
        v7 = *(i + 24);
        v6 = *(i + 32);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7 && *(v7 + 160 + 4 * a3) != a4)
        {
          *(v7 + 160 + 4 * a3) = a4;
          *(v7 + 81) = 1;
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }
      }

      return;
    }
  }
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN11LeanSpatial8LSSourceIDF16_EENS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LSLog = getLSLog();
  if (os_log_type_enabled(LSLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 224);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_debug_impl(&dword_1DDB85000, LSLog, OS_LOG_TYPE_DEBUG, "LSSource(#%u) destroyed", v5, 8u);
  }

  std::recursive_mutex::~recursive_mutex((a1 + 48));
  _ZNSt3__110unique_ptrIN11LeanSpatial17LSFilterProcessorIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_((a1 + 40), 0);
  return _ZNSt3__110unique_ptrIN11LeanSpatial17LSFilterProcessorIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_((a1 + 32), 0);
}

void _ZNSt3__120__shared_ptr_emplaceIN11LeanSpatial8LSSourceIDF16_EENS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592D030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void _ZN11LeanSpatial8LSEngineIDF16_E20setReferenceDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a1 + 24;
  v7 = *(a1 + 32);
  v8 = v7 == a1 + 24;
  if ((a2 & 0x100000000) != 0)
  {
    while (!v8)
    {
      if (*(v7 + 16) == a2)
      {
        if (v7 != v6)
        {
          v11 = *(v7 + 24);
          v10 = *(v7 + 32);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11)
          {
            v12 = fmaxf(a4, 0.0);
            v13 = v11 + 104;
            if (v12 != *(v13 + 4 * (a3 & 3)))
            {
              *(v13 + 4 * (a3 & 3)) = fmaxf(v12, 0.1);
            }
          }

          if (v10)
          {

            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        return;
      }

      v7 = *(v7 + 8);
      v8 = v7 == v6;
    }
  }

  else if (v7 != a1 + 24)
  {
    do
    {
      _ZN11LeanSpatial8LSEngineIDF16_E20setReferenceDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(a1, *(v7 + 16) | 0x100000000, a3 & 0xFFFFFFFFFFLL, a4);
      v7 = *(v7 + 8);
    }

    while (v7 != v6);
  }
}

void _ZN11LeanSpatial8LSEngineIDF16_E18setMinimumDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a1 + 24;
  v7 = *(a1 + 32);
  v8 = v7 == a1 + 24;
  if ((a2 & 0x100000000) != 0)
  {
    while (!v8)
    {
      if (*(v7 + 16) == a2)
      {
        if (v7 != v6)
        {
          v11 = *(v7 + 24);
          v10 = *(v7 + 32);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11)
          {
            v12 = fmaxf(a4, 0.0);
            v13 = v11 + 92;
            if (v12 != *(v13 + 4 * (a3 & 3)))
            {
              *(v13 + 4 * (a3 & 3)) = fmaxf(v12, 0.1);
            }
          }

          if (v10)
          {

            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        return;
      }

      v7 = *(v7 + 8);
      v8 = v7 == v6;
    }
  }

  else if (v7 != a1 + 24)
  {
    do
    {
      _ZN11LeanSpatial8LSEngineIDF16_E18setMinimumDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(a1, *(v7 + 16) | 0x100000000, a3 & 0xFFFFFFFFFFLL, a4);
      v7 = *(v7 + 8);
    }

    while (v7 != v6);
  }
}

void _ZN11LeanSpatial8LSEngineIDF16_E28setDistanceAttenuationFactorEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a1 + 24;
  v7 = *(a1 + 32);
  v8 = v7 == a1 + 24;
  if ((a2 & 0x100000000) != 0)
  {
    while (!v8)
    {
      if (*(v7 + 16) == a2)
      {
        if (v7 != v6)
        {
          v11 = *(v7 + 24);
          v10 = *(v7 + 32);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11)
          {
            v12 = fmaxf(a4, 0.0);
            v13 = v11 + 116;
            if (v12 != *(v13 + 4 * (a3 & 3)))
            {
              *(v13 + 4 * (a3 & 3)) = v12;
            }
          }

          if (v10)
          {

            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        return;
      }

      v7 = *(v7 + 8);
      v8 = v7 == v6;
    }
  }

  else if (v7 != a1 + 24)
  {
    do
    {
      _ZN11LeanSpatial8LSEngineIDF16_E28setDistanceAttenuationFactorEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(a1, *(v7 + 16) | 0x100000000, a3 & 0xFFFFFFFFFFLL, a4);
      v7 = *(v7 + 8);
    }

    while (v7 != v6);
  }
}

void _ZN11LeanSpatial8LSEngineIDF16_E22setSourceRenderingFlagEjNS_13RenderingTypeEb(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1 + 24;
  v5 = *(a1 + 32);
  if (v5 != a1 + 24)
  {
    while (*(v5 + 16) != a2)
    {
      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        return;
      }
    }

    if (v5 != v4)
    {
      v9 = *(v5 + 24);
      v8 = *(v5 + 32);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v9 || *(v9 + 85 + a3) == a4 || (*(v9 + 85 + a3) = a4, LSLog = getLSLog(), !os_log_type_enabled(LSLog, OS_LOG_TYPE_DEBUG)))
      {
        if (!v8)
        {
          return;
        }

        goto LABEL_12;
      }

      v11 = *(v9 + 192);
      v12 = "false";
      v13[0] = 67109634;
      if (a4)
      {
        v12 = "true";
      }

      v13[1] = v11;
      v14 = 1024;
      v15 = a3;
      v16 = 2080;
      v17 = v12;
      _os_log_debug_impl(&dword_1DDB85000, LSLog, OS_LOG_TYPE_DEBUG, "LSSource::setRenderFlag (id=%u, type=%u): %s", v13, 0x18u);
      if (v8)
      {
LABEL_12:

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }
}

void GetDOAFrequencySmoothingOptions(void)
{
  v7 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v2, "0");
  std::string::basic_string[abi:ne200100]<0>(v3, "1/48");
  std::string::basic_string[abi:ne200100]<0>(v4, "1/24");
  std::string::basic_string[abi:ne200100]<0>(v5, "1/12");
  std::string::basic_string[abi:ne200100]<0>(v6, "1/6");
  v0 = 0uLL;
  v1 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v0, v2, &v7, 5uLL);
}

void sub_1DDEDD2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  a9 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  v39 = &a38;
  v40 = -120;
  v41 = &a38;
  while (1)
  {
    v42 = *v41;
    v41 -= 24;
    if (v42 < 0)
    {
      operator delete(*(v39 - 23));
    }

    v39 = v41;
    v40 += 24;
    if (!v40)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_1DDEDF248(_Unwind_Exception *a1)
{
  *(v2 - 184) = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 184));
  *(v2 - 184) = v2 - 168;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 184));
  *(v2 - 168) = &STACK[0x280];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 168));
  *(v2 - 168) = &STACK[0x400];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 168));
  *(v2 - 168) = &STACK[0xA78];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 168));
  *(v2 - 168) = v2 - 208;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_1DDEDF404()
{
  v1 = (v0 + 47);
  v2 = -48;
  v3 = v1;
  while (1)
  {
    v4 = *v3;
    v3 -= 24;
    if (v4 < 0)
    {
      operator delete(*(v1 - 23));
    }

    v1 = v3;
    v2 += 24;
    if (!v2)
    {
      JUMPOUT(0x1DDEDF3C4);
    }
  }
}

void sub_1DDEDF434()
{
  if (*(v0 - 145) < 0)
  {
    operator delete(*(v0 - 168));
  }

  JUMPOUT(0x1DDEDF3C4);
}

void sub_1DDEDF474()
{
  v1 = (v0 + 47);
  v2 = -48;
  v3 = v1;
  while (1)
  {
    v4 = *v3;
    v3 -= 24;
    if (v4 < 0)
    {
      operator delete(*(v1 - 23));
    }

    v1 = v3;
    v2 += 24;
    if (!v2)
    {
      JUMPOUT(0x1DDEDF3D4);
    }
  }
}

void sub_1DDEDF4A4()
{
  if (*(v0 - 145) < 0)
  {
    operator delete(*(v0 - 168));
  }

  JUMPOUT(0x1DDEDF3D4);
}

void std::vector<std::string>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__vallocate[abi:ne200100](a1, a2);
}

uint64_t std::vector<SCRenderModes>::__init_with_size[abi:ne200100]<SCRenderModes const*,SCRenderModes const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDEDFB5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::vector<std::string>,std::vector<float>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void GetSpatialCaptureDSPGraphSource(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"sampleRate"];
  [v3 doubleValue];
  v5 = v4;

  if (v5 <= 0.0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/AUSpatialCapture/SpatialCapture.mm");
    std::string::basic_string[abi:ne200100]<0>(&v9, "GetSpatialCaptureDSPGraphSource");
    std::string::basic_string[abi:ne200100]<0>(&v8, "bad sample rate");
    DSPGraph::ThrowException();
  }

  else
  {
    v6 = [v2 objectForKeyedSubscript:@"numMics"];
    v7 = [v6 unsignedIntValue];

    if (v7)
    {
      v9.__r_.__value_.__s.__data_[0] = 0;
      std::vector<char>::vector[abi:ne200100](__p, 32);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/AUSpatialCapture/SpatialCapture.mm");
    std::string::basic_string[abi:ne200100]<0>(&v9, "GetSpatialCaptureDSPGraphSource");
    std::string::basic_string[abi:ne200100]<0>(&v8, "bad number of mics");
    DSPGraph::ThrowException();
  }

  __break(1u);
}

void sub_1DDEE7CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a79 < 0)
  {
    operator delete(__p);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (*(a16 + 23) < 0)
  {
    operator delete(*a16);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DSPGraph::NewBoxRegistry::~NewBoxRegistry(DSPGraph::NewBoxRegistry *this)
{
  *this = MEMORY[0x1E698D898] + 16;
  v2 = this + 8;
  v3 = (this + 88);
  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v2);
}

void std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100]((v2 + 5));
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100]((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

void *std::__function::__func<ParameterTransformBox *({block_pointer} {__strong})(unsigned int,unsigned int),std::allocator<ParameterTransformBox *({block_pointer} {__strong})(unsigned int,unsigned int)>,DSPGraph::Box * ()(unsigned int,unsigned int)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F592D178;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<ParameterTransformBox *({block_pointer} {__strong})(unsigned int,unsigned int),std::allocator<ParameterTransformBox *({block_pointer} {__strong})(unsigned int,unsigned int)>,DSPGraph::Box * ()(unsigned int,unsigned int)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E12BD160);
}

void ___Z28GetSpatialCaptureBoxRegistryv_block_invoke_3(uint64_t a1, int a2, int a3)
{
  if (!(a3 | a2))
  {
    operator new();
  }

  __assert_rtn("GetSpatialCaptureBoxRegistry_block_invoke_3", "SpatialCapture.mm", 520, "numInputs == 0 && numOutputs == 0 && Bad number of ins or outs");
}

void sub_1DDEE91C0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 98);
  *(v1 + 98) = 0;
  if (v4)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v4);
  }

  DSPGraph::Box::~Box(v1);
  MEMORY[0x1E12BD160](v1, v2);
  _Unwind_Resume(a1);
}

void *std::__function::__func<ParameterSwitchBox *({block_pointer} {__strong})(unsigned int,unsigned int),std::allocator<ParameterSwitchBox *({block_pointer} {__strong})(unsigned int,unsigned int)>,DSPGraph::Box * ()(unsigned int,unsigned int)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F592D130;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<ParameterSwitchBox *({block_pointer} {__strong})(unsigned int,unsigned int),std::allocator<ParameterSwitchBox *({block_pointer} {__strong})(unsigned int,unsigned int)>,DSPGraph::Box * ()(unsigned int,unsigned int)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E12BD160);
}

void ___Z28GetSpatialCaptureBoxRegistryv_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!(a3 | a2))
  {
    operator new();
  }

  __assert_rtn("GetSpatialCaptureBoxRegistry_block_invoke_2", "SpatialCapture.mm", 516, "numInputs == 0 && numOutputs == 0 && Bad number of ins or outs");
}

void sub_1DDEE93A8(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 98) = v6;
    operator delete(v6);
  }

  DSPGraph::Box::~Box(v2);
  MEMORY[0x1E12BD160](v2, v1);
  _Unwind_Resume(a1);
}

void *std::__function::__func<SCTwoInputMixer *({block_pointer} {__strong})(unsigned int,unsigned int),std::allocator<SCTwoInputMixer *({block_pointer} {__strong})(unsigned int,unsigned int)>,DSPGraph::Box * ()(unsigned int,unsigned int)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F592D0E8;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<SCTwoInputMixer *({block_pointer} {__strong})(unsigned int,unsigned int),std::allocator<SCTwoInputMixer *({block_pointer} {__strong})(unsigned int,unsigned int)>,DSPGraph::Box * ()(unsigned int,unsigned int)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E12BD160);
}

void ___Z28GetSpatialCaptureBoxRegistryv_block_invoke(uint64_t a1, int a2, int a3)
{
  if (a2 == 2 && a3 == 1)
  {
    operator new();
  }

  __assert_rtn("GetSpatialCaptureBoxRegistry_block_invoke", "SpatialCapture.mm", 512, "numInputs == 2 && numOutputs == 1 && Bad number of ins or outs");
}

uint64_t ClampOrientation(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v2 = *SCLogScope(void)::scope;
      if (!v2)
      {
        return 1;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v3 = MEMORY[0x1E69E9C10];
    }

    v4 = 1;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "SpatialCapture.mm";
      v10 = 1024;
      v11 = 562;
      v12 = 1024;
      v13 = 0;
      v14 = 1024;
      v15 = 1;
      v5 = "%25s:%-5d Orientation %u is smaller than the minimum allowed value (%u)";
LABEL_19:
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, v5, &v8, 0x1Eu);
    }

LABEL_20:

    return v4;
  }

  v1 = a1;
  if (a1 >= 6)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v2 = *SCLogScope(void)::scope;
      if (!v2)
      {
        return 5;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v4 = 5;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "SpatialCapture.mm";
      v10 = 1024;
      v11 = 565;
      v12 = 1024;
      v13 = v1;
      v14 = 1024;
      v15 = 5;
      v5 = "%25s:%-5d Orientation %u is larger than the maximum allowed value (%u)";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  return v1;
}

uint64_t ClampCameraDirection(uint64_t a1)
{
  v1 = a1;
  v13 = *MEMORY[0x1E69E9840];
  if (a1 >= 2)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v2 = *SCLogScope(void)::scope;
      if (!v2)
      {
        return 1;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = "SpatialCapture.mm";
      v7 = 1024;
      v8 = 574;
      v9 = 1024;
      v10 = v1;
      v11 = 1024;
      v12 = 1;
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Camera direction %u is larger than the maximum allowed value (%u)", &v5, 0x1Eu);
    }

    return 1;
  }

  return v1;
}

void dft_v4::paramInit_v4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v15 = malloc_type_malloc(0xB0uLL, 0xD33A44BEuLL);
  if (!v15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v27 = std::bad_alloc::bad_alloc(exception);
  }

  v16 = v15;
  v15[10] = 0u;
  *(v15 + 148) = 0u;
  *(v15 + 132) = 0u;
  *(v15 + 116) = 0u;
  *(v15 + 100) = 0u;
  *(v15 + 84) = 0u;
  *(v15 + 68) = 0u;
  *(v15 + 52) = 0u;
  *(v15 + 36) = 0u;
  *(v15 + 20) = 0u;
  *(v15 + 4) = 0u;
  *a1 = v15;
  v17 = 2 * a3;
  v18 = a3 + 1;
  *v15 = 2 * a3;
  if (a8)
  {
    v19 = a4 + 1;
  }

  else
  {
    v19 = a4;
  }

  *(v15 + 11) = a4;
  *(v15 + 12) = v19;
  *(v15 + 4) = a3;
  *(v15 + 7) = a3;
  v20 = a3;
  *(v15 + 8) = 1.0 / a3;
  *(v15 + 16) = a5;
  if (a6 && (v21 = (a5 / 5000.0), *(v15 + 17) = v21, v21 > 0))
  {
    if (v21 < 7)
    {
      goto LABEL_11;
    }

    v22 = 6;
  }

  else
  {
    v22 = 1;
  }

  *(v15 + 17) = v22;
LABEL_11:
  v23 = 0.0;
  v24 = v20 / a5;
  if (a5)
  {
    v23 = v24 * 1000.0;
  }

  else
  {
    v24 = 0.0;
  }

  *(v15 + 5) = v24;
  *(v15 + 6) = v23;
  *(v15 + 9) = a3 >> 1;
  *(v15 + 10) = v18;
  *(v15 + 13) = a4 * a3;
  *(v15 + 14) = v19 * v18;
  *(v15 + 15) = v19 * a3;
  *(v15 + 24) = 0;
  v25 = powf((1.0 / (a2 * -3.0)) + 1.0, v20);
  v16[22] = 1.0 / v17;
  v16[23] = v25;
  *(v16 + 25) = a7;
  *(v16 + 26) = a8;
  *(v16 + 20) = v17;
  v16[21] = 1.0;
  *(v16 + 18) = a4 * a3 + v17;
  MultiRadixRealFFT_Create();
}

uint64_t AUEchoCancelerV5::ValidFormat(AUEchoCancelerV5 *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    if ((a4->mFormatFlags & 0x20) != 0)
    {
      result = 1;
      if (a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    result = a4->mChannelsPerFrame == 1;
  }

  if (a3)
  {
    return result;
  }

LABEL_5:
  if (a4->mChannelsPerFrame == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUEchoCancelerV5::SupportedNumChannels(AUEchoCancelerV5 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUEchoCancelerV5::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUEchoCancelerV5::CopyClumpName(AUEchoCancelerV5 *this, int a2, int a3, unsigned int a4, const __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if ((a3 - 1) > 5)
  {
    return 4294956418;
  }

  result = 0;
  *a5 = kAUEchoCancelerV5ClumpNamesPtr[a3];
  return result;
}

uint64_t AUEchoCancelerV5::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUEchoCancelerV5::GetParameterInfo(AUEchoCancelerV5 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"total modelled filt len";
      buffer->flags = 1207959552;
      CFStringGetCString(@"total modelled filt len", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x453B80003F800000;
      v7 = 79.0;
      goto LABEL_50;
    case 1:
      buffer->cfNameString = @"(I) actual filt sz";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) actual filt sz", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 1;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_SampleFrames;
      v14 = 0x4811500000000000;
      goto LABEL_32;
    case 2:
      buffer->cfNameString = @"delta EIR disable";
      buffer->flags = 1207959552;
      CFStringGetCString(@"delta EIR disable", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x3F80000000000000;
      v20 = -1877999616;
      goto LABEL_99;
    case 3:
      buffer->cfNameString = @"(I) delta EIR";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) delta EIR", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 3;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Ratio;
      v14 = 0x501502F900000000;
      goto LABEL_32;
    case 4:
      v10 = @"(I) Freeze adaptation option";
      goto LABEL_31;
    case 5:
      buffer->cfNameString = @"(I) EC Ref-Mic Delay MilliSec";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) EC Ref-Mic Delay MilliSec", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v31 = 134217728.0;
      goto LABEL_98;
    case 6:
      buffer->cfNameString = @"(I) AGC dynamic gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) AGC dynamic gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      v31 = -_D0;
      goto LABEL_98;
    case 7:
      buffer->cfNameString = @"(I) AGC post gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) AGC post gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      v29 = -_D0;
      goto LABEL_64;
    case 8:
      buffer->cfNameString = @"(I) EC main lobe delay";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) EC main lobe delay", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 3;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v14 = 0x43C8000000000000;
      goto LABEL_32;
    case 9:
      buffer->cfNameString = @"Allow LMS filter scale down for rapid h changes";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Allow LMS filter scale down for rapid h changes", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v23 = 0x4000000000000000;
      goto LABEL_92;
    case 10:
      buffer->cfNameString = @"EC init convergence options";
      buffer->flags = 1207959552;
      CFStringGetCString(@"EC init convergence options", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 4;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x3F80000000000000;
      v20 = -2079326208;
      goto LABEL_99;
    case 11:
      v18 = @"disable search for IR peak";
      goto LABEL_80;
    case 12:
      buffer->cfNameString = @"DualEC DualEcStatDur";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC DualEcStatDur", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x447A000000000000;
      v7 = 220.0;
      goto LABEL_93;
    case 13:
      buffer->cfNameString = @"DualEC MinBackupOverAdapt";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MinBackupOverAdapt", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v33 = 0x447A000000000000;
      goto LABEL_68;
    case 14:
      buffer->cfNameString = @"DualEC MinCopyAdaptToBackup";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MinCopyAdaptToBackup", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x447A000000000000;
      v7 = 100.0;
      goto LABEL_93;
    case 15:
      buffer->cfNameString = @"DualEC MaxCopyAdaptToBackup";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MaxCopyAdaptToBackup", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x447A000000000000;
      v7 = 200.0;
      goto LABEL_93;
    case 16:
      buffer->cfNameString = @"DualEC ResetTime";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC ResetTime", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x447A000000000000;
      v7 = 150.0;
      goto LABEL_93;
    case 17:
      buffer->cfNameString = @"DualEC EPS_EC_ERROR_MIN";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC EPS_EC_ERROR_MIN", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x43960000C3960000;
      v7 = -35.0;
      goto LABEL_93;
    case 18:
      buffer->cfNameString = @"DualEC MIN_ADAPT_DOING_OK";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MIN_ADAPT_DOING_OK", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x43960000C3960000;
      v7 = 0.4;
      goto LABEL_93;
    case 19:
      buffer->cfNameString = @"DualEC MIN_ADAPT_OVER_BACKUP";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MIN_ADAPT_OVER_BACKUP", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x43960000C3960000;
      v7 = -0.5;
      goto LABEL_93;
    case 20:
      buffer->cfNameString = @"DualEC MIN_ADAPT_IN_SINGLETALK";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MIN_ADAPT_IN_SINGLETALK", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v21 = 0x43960000C3960000;
      goto LABEL_52;
    case 21:
      buffer->cfNameString = @"DualEC MIN_ECHO_LEVEL_TO_CHECK";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MIN_ECHO_LEVEL_TO_CHECK", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x43960000C3960000;
      v7 = -90.0;
      goto LABEL_93;
    case 22:
      buffer->cfNameString = @"DualEC MIN_HANG_TIME";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DualEC MIN_HANG_TIME", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v33 = 0x4396000000000000;
LABEL_68:
      *&buffer->minValue = v33;
      v7 = 20.0;
      goto LABEL_93;
    case 23:
      buffer->cfNameString = @"FastInitConverge MaxAdaptRate";
      buffer->flags = 1207959552;
      CFStringGetCString(@"FastInitConverge MaxAdaptRate", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4000000000000000;
      v7 = 0.35;
      goto LABEL_93;
    case 24:
      buffer->cfNameString = @"FastInitConverge MinAdaptRate";
      buffer->flags = 1207959552;
      CFStringGetCString(@"FastInitConverge MinAdaptRate", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4000000000000000;
      v7 = 0.15;
      goto LABEL_93;
    case 25:
      buffer->cfNameString = @"FastInitConverge HighXCorr";
      buffer->flags = 1207959552;
      CFStringGetCString(@"FastInitConverge HighXCorr", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.86;
      goto LABEL_93;
    case 26:
      buffer->cfNameString = @"FastInitConverge LowXCorr";
      buffer->flags = 1207959552;
      CFStringGetCString(@"FastInitConverge LowXCorr", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.5;
      goto LABEL_93;
    case 27:
      buffer->cfNameString = @"FastInitConverge TimeConstForRunningAv";
      buffer->flags = 1207959552;
      CFStringGetCString(@"FastInitConverge TimeConstForRunningAv", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x43FA000000000000;
      v7 = 30.0;
      goto LABEL_93;
    case 28:
      v18 = @"FastInitConverge EnableSubSampForDelayEst";
      goto LABEL_80;
    case 29:
      buffer->cfNameString = @"FastInitConverge LeakThresh";
      buffer->flags = 1207959552;
      CFStringGetCString(@"FastInitConverge LeakThresh", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.01;
      goto LABEL_93;
    case 30:
      buffer->cfNameString = @"(I) IR peak delay in msec 1st ref chan";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) IR peak delay in msec 1st ref chan", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v29 = 3.324546e25;
LABEL_64:
      *&buffer->minValue = v29;
      v20 = 68190208;
      goto LABEL_99;
    case 31:
      buffer->cfNameString = @"RER floor LeakThresh";
      buffer->flags = 1207959552;
      CFStringGetCString(@"RER floor LeakThresh", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.04;
      goto LABEL_93;
    case 32:
      buffer->cfNameString = @"RER floor MicEchoEstXcorrThresh";
      buffer->flags = 1207959552;
      CFStringGetCString(@"RER floor MicEchoEstXcorrThresh", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.79;
      goto LABEL_93;
    case 33:
      v10 = @"(I) EC adaptation state";
      goto LABEL_31;
    case 34:
      buffer->cfNameString = @"(I) EC time aligned ref signal energy";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) EC time aligned ref signal energy", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 3;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v14 = 0x447A000000000000;
      goto LABEL_32;
    case 35:
      buffer->cfNameString = @"Threshold on echo to local voice energy for beam";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Threshold on echo to local voice energy for beam", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x447A0000C47A0000;
      v7 = -3.0;
      goto LABEL_93;
    case 36:
      v10 = @"(I) Echo flag to beam2";
      goto LABEL_31;
    case 37:
      v10 = @"(I) Mic Eclee Xcorr";
      goto LABEL_31;
    case 38:
      buffer->cfNameString = @"Fast Adapt: 0=off, 1=init conv, 2=init+re conv 3= init+re conv + init rate cal, 4=2+resettable";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Fast Adapt: 0=off, 1=init conv, 2=init+re conv 3= init+re conv + init rate cal, 4=2+resettable", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 4;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v23 = 0x4040000000000000;
      goto LABEL_92;
    case 39:
      buffer->cfNameString = @"Crop: Enable crop for long total filter lens";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Crop: Enable crop for long total filter lens", buffer->name, 52, 0x8000100u);
      result = 0;
      v17 = 1;
      goto LABEL_70;
    case 40:
      buffer->cfNameString = @"Crop: Pre-lobe delay for long total filter lens";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Crop: Pre-lobe delay for long total filter lens", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x453B80003F800000;
      v7 = 40.0;
      goto LABEL_50;
    case 41:
      buffer->cfNameString = @"Crop: Copped filter length for long total filter lens";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Crop: Copped filter length for long total filter lens", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x453B80003F800000;
      v7 = 200.0;
LABEL_50:
      v30 = -1877999616;
      goto LABEL_94;
    case 42:
      buffer->cfNameString = @"Multi-chan EC mode: 0-LinearEC, 1-PolyEC, 2-MultiChanEC, 3- MultiChan+PolyEC";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Multi-chan EC mode: 0-LinearEC, 1-PolyEC, 2-MultiChanEC, 3- MultiChan+PolyEC", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 2;
      v35 = buffer->flags | 0x100000;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4040000000000000;
      goto LABEL_100;
    case 43:
      buffer->cfNameString = @"Order to do for Poly EC";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Order to do for Poly EC", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 4;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x404000003F800000;
      v7 = 3.0;
      goto LABEL_93;
    case 44:
      buffer->cfNameString = @"Num of ref channels to use for multi-chan EC";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Num of ref channels to use for multi-chan EC", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 2;
      v16 = buffer->flags | 0x100000;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x412000003F800000;
      v7 = 1.0;
      goto LABEL_95;
    case 45:
      buffer->cfNameString = @"(I) 10*log10(syy/see)";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) 10*log10(syy/see)", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 3;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v14 = 0x42C80000C2C80000;
      goto LABEL_32;
    case 46:
      buffer->cfNameString = @"(I) Echo leakage";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(I) Echo leakage", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v19 = 0x42C8000000000000;
      goto LABEL_88;
    case 47:
      v12 = @"Enable Ref Channel 0";
      goto LABEL_25;
    case 48:
      v12 = @"Enable Ref Channel 1";
LABEL_25:
      buffer->cfNameString = v12;
      buffer->flags = 1207959552;
      CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
      result = 0;
      v17 = 2;
LABEL_70:
      buffer->clumpID = v17;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 1.0;
      goto LABEL_71;
    case 49:
      v8 = @"Enable Ref Channel 2";
      goto LABEL_29;
    case 50:
      v8 = @"Enable Ref Channel 3";
LABEL_29:
      buffer->cfNameString = v8;
      buffer->flags = 1207959552;
      CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v19 = 0x3F80000000000000;
LABEL_88:
      *&buffer->minValue = v19;
      v7 = 1.0;
      v30 = 1081344;
      goto LABEL_94;
    case 51:
      v11 = @"Enable Ref Channel 4";
      goto LABEL_90;
    case 52:
      v11 = @"Enable Ref Channel 5";
      goto LABEL_90;
    case 53:
      v11 = @"Enable Ref Channel 6";
      goto LABEL_90;
    case 54:
      v11 = @"Enable Ref Channel 7";
      goto LABEL_90;
    case 55:
      v11 = @"Enable Ref Channel 8";
LABEL_90:
      buffer->cfNameString = v11;
      buffer->flags = 1207959552;
      CFStringGetCString(v11, buffer->name, 52, 0x8000100u);
      result = 0;
      v36 = 2;
      goto LABEL_91;
    case 56:
      buffer->cfNameString = @"Regularization constant for NLMS Normalization";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Regularization constant for NLMS Normalization", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0xC2480000C3160000;
      v7 = -80.458;
LABEL_71:
      v30 = -2146435072;
      goto LABEL_94;
    case 57:
      v32 = @"Run multiple iteration on Fast EC";
      goto LABEL_76;
    case 58:
      v18 = @"Calculate posterior error";
LABEL_80:
      buffer->cfNameString = v18;
      buffer->flags = 1207959552;
      CFStringGetCString(v18, buffer->name, 52, 0x8000100u);
      result = 0;
      v36 = 6;
LABEL_91:
      buffer->clumpID = v36;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v23 = 0x3F80000000000000;
LABEL_92:
      *&buffer->minValue = v23;
      v7 = 1.0;
      goto LABEL_93;
    case 59:
      v32 = @"Enable Poly EC speedup option";
      goto LABEL_76;
    case 60:
      buffer->cfNameString = @"Leakage threshold for poly EC speedup";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Leakage threshold for poly EC speedup", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v21 = 3253731328;
LABEL_52:
      *&buffer->minValue = v21;
      v7 = -6.0;
      goto LABEL_93;
    case 61:
      buffer->cfNameString = @"Delta IR threshold for poly EC speedup";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Delta IR threshold for poly EC speedup", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000000000000;
      v7 = 10.0;
      goto LABEL_93;
    case 62:
      buffer->cfNameString = @"syy2sdd ratio threshold for Poly EC speedup";
      buffer->flags = 1207959552;
      CFStringGetCString(@"syy2sdd ratio threshold for Poly EC speedup", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000000000000;
      v7 = 6.0;
      goto LABEL_93;
    case 63:
      buffer->cfNameString = @"ir Ratio threshold for poly EC speedup";
      buffer->flags = 1207959552;
      CFStringGetCString(@"ir Ratio threshold for poly EC speedup", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x447A000000000000;
      v7 = 40.0;
      goto LABEL_93;
    case 64:
      v15 = @"split eclee parts for poly EC";
      goto LABEL_36;
    case 65:
      v32 = @"Only use odd order terms in poly EC reference";
LABEL_76:
      buffer->cfNameString = v32;
      buffer->flags = 1207959552;
      CFStringGetCString(v32, buffer->name, 52, 0x8000100u);
      result = 0;
      v22 = 4;
      goto LABEL_77;
    case 66:
      v9 = @"De-emphasized Echo to local voice threshold";
      goto LABEL_97;
    case 67:
      v15 = @"De-emphasized Echo Flag";
LABEL_36:
      buffer->cfNameString = v15;
      buffer->flags = 1207959552;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      result = 0;
      v22 = 6;
LABEL_77:
      buffer->clumpID = v22;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v31 = 0.0078125;
      goto LABEL_98;
    case 68:
      v9 = @"(I)De-emphasized 10*log10(syy/see)";
      goto LABEL_97;
    case 69:
      v9 = @"(I)Eclee engergy in dB";
LABEL_97:
      buffer->cfNameString = v9;
      buffer->flags = 1207959552;
      CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v31 = 7.67384899e21;
LABEL_98:
      *&buffer->minValue = v31;
      v20 = 68157440;
      goto LABEL_99;
    case 70:
      buffer->cfNameString = @"Eclee engergy thresh low in dB";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Eclee engergy thresh low in dB", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x447A0000C47A0000;
      v7 = -26.0;
LABEL_93:
      v30 = 68157440;
LABEL_94:
      v16 = flags | v30;
LABEL_95:
      buffer->defaultValue = v7;
      buffer->flags = v16;
      return result;
    case 71:
      v10 = @"eclee active flag based on low thresh";
LABEL_31:
      buffer->cfNameString = v10;
      buffer->flags = 1207959552;
      CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = 3;
      v13 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v14 = 0x3F80000000000000;
LABEL_32:
      *&buffer->minValue = v14;
      v20 = 1081344;
LABEL_99:
      v35 = v13 | v20;
LABEL_100:
      buffer->defaultValue = 0.0;
      buffer->flags = v35;
      break;
    default:
      return 4294956418;
  }

  return result;
}