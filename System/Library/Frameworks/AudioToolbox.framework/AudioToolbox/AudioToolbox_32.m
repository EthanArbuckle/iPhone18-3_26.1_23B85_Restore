void sub_1DDDC295C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LoudnessMeter::LoudnessMeter(uint64_t a1, int a2, unsigned int a3, int a4, unsigned int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v24 = 0;
  std::vector<float>::vector[abi:ne200100](__p, a5);
  std::vector<std::vector<float>>::vector[abi:ne200100]((a1 + 72), a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = 0;
  std::vector<float *>::vector[abi:ne200100]((a1 + 96), a3);
  *(a1 + 124) = a4;
  *(a1 + 128) = a3;
  *(a1 + 132) = a5;
  DspLib::Biquad::Filter::initialize(a1, a3, 3uLL);
  *(a1 + 120) = a2;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = 3;
      do
      {
        v20 = 0;
        *__p = DspLib::Biquad::kBypassSection;
        DspLib::Biquad::Filter::setCoefficients(a1, __p, 1, 0, 0x41uLL);
        --v12;
      }

      while (v12);
    }

    else
    {
      v24 = 15;
      v25 = 1108869120;
      v26 = 1056964608;
      DspLib::Biquad::Design::ParametricEQ::design(&v24, *(a1 + 124), 0, v10, __p);
      DspLib::Biquad::Filter::setCoefficients(a1, __p, 1, 0, 0x41uLL);
      v21 = 12;
      v22 = 0x4080000044D20000;
      v23 = 0;
      DspLib::Biquad::Design::ParametricEQ::design(&v21, *(a1 + 124), 0, v13, __p);
      DspLib::Biquad::Filter::setCoefficients(a1, __p, 1, 1, 0x41uLL);
    }
  }

  else
  {
    LODWORD(v11) = *(a1 + 124);
    if (a2)
    {
      DspLib::Biquad::Design::cWeighting(v11, __p);
      DspLib::Biquad::Filter::setCoefficients(a1, __p, 2, 0, 0x41uLL);
      *__p = DspLib::Biquad::kBypassSection;
      v20 = 0;
      DspLib::Biquad::Filter::setCoefficients(a1, __p, 1, 2, 0x41uLL);
    }

    else
    {
      DspLib::Biquad::Design::aWeighting(v11, __p);
      DspLib::Biquad::Filter::setCoefficients(a1, __p, 3, 0, 0x41uLL);
    }
  }

  DspLib::Biquad::SetupWrapper::reset((a1 + 48));
  v14 = *(a1 + 128);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 24 * v14;
    do
    {
      *(*(a1 + 96) + v15) = *(*(a1 + 72) + v16);
      v16 += 24;
      v15 += 8;
    }

    while (v17 != v16);
  }

  return a1;
}

void sub_1DDDC2C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  DspLib::Biquad::Filter::~Filter(v14);
  _Unwind_Resume(a1);
}

float LoudnessMeter::Process(LoudnessMeter *this, float **a2, unsigned int a3)
{
  v5 = *(this + 32);
  v6 = a3;
  *&__C = a2;
  *(&__C + 1) = v5;
  v13 = a3;
  *&v10 = *(this + 12);
  *(&v10 + 1) = v5;
  v11 = a3;
  DspLib::Biquad::Filter::process(this, &__C, &v10);
  LODWORD(__C) = 0;
  if (*(this + 32))
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      vDSP_svesq(*(*(this + 12) + 8 * v7), 1, &__C, v6);
      v8 = v8 + *&__C;
      ++v7;
    }

    while (v7 < *(this + 32));
  }

  else
  {
    v8 = 0.0;
  }

  return v8 / a3;
}

uint64_t AUDCBlocker::SupportedNumChannels(AUDCBlocker *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDCBlocker::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUDCBlocker::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  ++*(this + 132);
  return result;
}

uint64_t AUDCBlocker::GetParameterInfo(AUDCBlocker *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 2)
  {
    v6 = off_1E866B2E8[a3];
    v7 = dword_1DE0BB104[a3];
    v8 = flt_1DE0BB110[a3];
    v9 = flt_1DE0BB11C[a3];
    v10 = flt_1DE0BB128[a3];
    buffer->cfNameString = v6;
    buffer->flags = 0x8000000;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= 0xC0000000;
  }

  return result;
}

uint64_t AUDCBlocker::GetParameterList(AUDCBlocker *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = 0x100000000;
    a3[2] = 2;
  }

  result = 0;
  *a4 = 3;
  return result;
}

ausdk::AUInputElement *AUDCBlocker::Render(AUDCBlocker *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUDCBlocker::ProcessBufferLists(AUDCBlocker *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, vDSP_Length __N)
{
  v9 = *(this + 132);
  if (*(this + 133) != v9)
  {
    v10 = AUDCBlocker::SetCoefficients(this, this + 68);
    (*(**(this + 71) + 16))(*(this + 71), 1, *(this + 68), v10);
    *(this + 133) = v9;
  }

  if (!*(this + 134))
  {
    v17 = *(this + 71);
    if (v17[4])
    {
      if (!*(this + 135))
      {
LABEL_42:
        (*(*v17 + 32))(v17, __N, a3, a4);
        if (*(this + 146) < 1.0)
        {
          __B = 1.0;
          __C = 0.0;
          vDSP_vramp(this + 146, this + 147, *(this + 74), 1, __N);
          vDSP_vclip(*(this + 74), 1, &__C, &__B, *(this + 74), 1, __N);
          if (a3->mNumberBuffers)
          {
            v40 = 0;
            p_mData = &a4->mBuffers[0].mData;
            do
            {
              v42 = *p_mData;
              p_mData += 2;
              MEMORY[0x1E12BE7F0](v42, 1, *(this + 74), 1, v42, 1, __N);
              ++v40;
            }

            while (v40 < a3->mNumberBuffers);
          }

          *(this + 146) = *(*(this + 74) + 4 * (__N - 1));
        }

        return 0;
      }

      if (!a3->mNumberBuffers)
      {
        return 0;
      }

      v18 = 0;
      for (i = 16; ; i += 16)
      {
        __C = 0.0;
        vDSP_svemg(*(&a3->mNumberBuffers + i), 1, &__C, __N);
        if (__C != 0.0)
        {
          break;
        }

        ++v18;
        mNumberBuffers = a3->mNumberBuffers;
        if (v18 >= mNumberBuffers)
        {
          if (mNumberBuffers == a4->mNumberBuffers && mNumberBuffers != 0)
          {
            v22 = 0;
            v23 = &a4->mBuffers[0].mData;
            v24 = &a3->mBuffers[0].mData;
            do
            {
              v25 = *(v24 - 1);
              if (v25 == *(v23 - 1))
              {
                memcpy(*v23, *v24, v25);
                mNumberBuffers = a3->mNumberBuffers;
              }

              ++v22;
              v23 += 2;
              v24 += 2;
            }

            while (v22 < mNumberBuffers);
          }

          return 0;
        }
      }

      *(this + 135) = 0;
      v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v27 & 1) == 0)
      {
        abort();
      }

      Parameter = ausdk::AUElement::GetParameter(v26, 1u);
      if (Parameter == 0.0)
      {
        *(this + 146) = 1065353216;
        v29 = 0.0;
      }

      else
      {
        v30 = Parameter;
        *(this + 146) = 0;
        Element = ausdk::AUScope::GetElement((this + 80), 0);
        if (!Element)
        {
          goto LABEL_48;
        }

        v29 = 1.0 / (*(Element + 80) * v30 * 0.001);
      }

      *(this + 147) = v29;
      v32 = *(this + 72);
      v33 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v33)
      {
        v34 = ausdk::AUBufferList::PrepareBufferOrError(v32, v33 + 2, __N);
        v35 = v34;
        if ((v36 & 1) == 0)
        {
          ausdk::Throw(v34);
        }

        if (a3->mNumberBuffers && *v34)
        {
          v37 = 1;
          v38 = 4;
          do
          {
            __C = 0.0;
            vDSP_meanv(*(&a3->mNumberBuffers + v38 * 4), 1, &__C, __N);
            __B = (__C - **(&a3->mNumberBuffers + v38 * 4)) / __N;
            vDSP_vramp(&__C, &__B, *&v35[v38], 1, __N);
            if (v37 >= a3->mNumberBuffers)
            {
              break;
            }

            v38 += 4;
          }

          while (v37++ < *v35);
        }

        (*(**(this + 71) + 24))(*(this + 71));
        (*(**(this + 71) + 32))(*(this + 71), __N, v35, v35);
        v17 = *(this + 71);
        goto LABEL_42;
      }

LABEL_48:
      ausdk::Throw(0xFFFFD583);
    }
  }

  v11 = a3->mNumberBuffers;
  if (v11 == a4->mNumberBuffers && v11 != 0)
  {
    v13 = 0;
    v14 = &a4->mBuffers[0].mData;
    v15 = &a3->mBuffers[0].mData;
    do
    {
      v16 = *(v15 - 1);
      if (v16 == *(v14 - 1))
      {
        memcpy(*v14, *v15, v16);
        v11 = a3->mNumberBuffers;
      }

      ++v13;
      v14 += 2;
      v15 += 2;
    }

    while (v13 < v11);
  }

  return 0;
}

double AUDCBlocker::SetCoefficients(uint64_t a1, float64x2_t **a2)
{
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  Parameter = ausdk::AUElement::GetParameter(v4, 2u);
  Element = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = *(Element + 80);
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v10 & 1) == 0)
  {
LABEL_8:
    abort();
  }

  v11 = ausdk::AUElement::GetParameter(v9, 0) * 6.28318531 / v8;
  v12 = *a2;
  if (v11 <= 0.0)
  {
    v12->f64[0] = 0.0;
    v12->f64[1] = 0.0;
    v12[1].f64[1] = 0.0;
    v12[2].f64[0] = 0.0;
    v18 = *a2;
    v17 = v18[2].f64[0];
    v16 = 1.0;
  }

  else
  {
    v13 = __sincos_stret(fmin(v11, 3.11017673));
    v14 = v13.__cosval * 0.5 + 0.5;
    v15 = 1.0 / (v13.__sinval * 0.707106781 + 1.0);
    v12->f64[0] = v13.__cosval * -2.0 * v15;
    v12->f64[1] = v15 - v13.__sinval * 0.707106781 * v15;
    v16 = v14 * v15;
    v12[1].f64[1] = v14 * -2.0 * v15;
    v12[2].f64[0] = v14 * v15;
    v17 = v14 * v15;
    v18 = v12;
  }

  v12[1].f64[0] = v16;
  v19 = __exp10(Parameter * 0.05);
  v18[1] = vmulq_n_f64(v18[1], v19);
  result = v17 * v19;
  v18[2].f64[0] = result;
  return result;
}

uint64_t AUDCBlocker::SetParameter(AUDCBlocker *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  ++*(this + 132);
  return result;
}

uint64_t AUDCBlocker::SetProperty(AUDCBlocker *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 134) = *a5;
      *(this + 135) = 1;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUDCBlocker::GetProperty(AUDCBlocker *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    result = 0;
    *a5 = *(this + 134);
  }

  return result;
}

uint64_t AUDCBlocker::GetPropertyInfo(AUDCBlocker *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUDCBlocker::Reset(AUDCBlocker *this)
{
  v2 = *(this + 71);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 135) = 1;
    v3 = AUDCBlocker::SetCoefficients(this, this + 68);
    (*(**(this + 71) + 16))(*(this + 71), 1, *(this + 68), v3);
  }

  return 0;
}

void *AUDCBlocker::Cleanup(AUDCBlocker *this)
{
  v2 = *(this + 71);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 71) = 0;
  }

  return CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(this + 72, 0);
}

void *CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result != a2)
  {
    v4 = result;
    if (v2)
    {
      if (*(v2 + 8))
      {
        (*(ausdk::BufferAllocator::instance(void)::global + 3))();
        *(v2 + 8) = 0;
      }

      *(v2 + 16) = 0;
      *v2 = 0;
      result = MEMORY[0x1E12BD160](v2, 0x1020C409F4E64B8);
    }

    *v4 = a2;
  }

  return result;
}

uint64_t AUDCBlocker::Initialize(AUDCBlocker *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), *&v11.mSampleRate = *(Element + 80), *&v11.mBytesPerPacket = v3, *&v11.mBitsPerChannel = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v10.mSampleRate = *(v4 + 80);
  *&v10.mBytesPerPacket = v6;
  *&v10.mBitsPerChannel = *(v4 + 112);
  if (v11.mSampleRate == v10.mSampleRate && v11.mFormatID == v10.mFormatID && *&v11.mBytesPerPacket == *&v10.mBytesPerPacket && *&v11.mChannelsPerFrame == *&v10.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(&v11, &v10, v5))
  {
    v7 = NewIIRFilter(&v11, &v10);
    v8 = *(this + 71);
    if (v8 != v7)
    {
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      *(this + 71) = v7;
    }

    if (v7)
    {
      (*(*this + 72))(this, 0, 0);
      *(this + 135) = 1;
      operator new();
    }
  }

  return 4294956428;
}

void AUDCBlocker::~AUDCBlocker(AUDCBlocker *this)
{
  AUDCBlocker::~AUDCBlocker(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5922DB8;
  v2 = *(this + 74);
  if (v2)
  {
    free(v2);
    *(this + 74) = 0;
  }

  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(this + 72, 0);
  v3 = *(this + 71);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 71) = 0;
  }

  v4 = *(this + 68);
  if (v4)
  {
    *(this + 69) = v4;
    operator delete(v4);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t *std::vector<BiquadCoefficients>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    v7 = result[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v2) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x333333333333333)
        {
          v10 = 0x666666666666666;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<BiquadCoefficients>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v11 = &v2[5 * v6];
    do
    {
      *v2 = 0;
      v2[1] = 0;
      v2[3] = 0;
      v2[4] = 0;
      v2[2] = 0x3FF0000000000000;
      v2 += 5;
    }

    while (v2 != v11);
    result[1] = v11;
  }

  else if (!v5)
  {
    result[1] = v3 + 40 * a2;
  }

  return result;
}

uint64_t AURotationShading::ChangeStreamFormat(AURotationShading *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  mSampleRate = a4->mSampleRate;
  if (a4->mSampleRate != a5->mSampleRate)
  {
    ++*(this + 132);
    (*(*this + 432))(this, 3, 0, 0, mSampleRate);
  }

  return 0;
}

uint64_t AURotationShading::SupportedNumChannels(AURotationShading *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AURotationShading::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 6;
}

uint64_t AURotationShading::GetParameterValueStrings(AURotationShading *this, int a2, int a3, const __CFArray **a4)
{
  values[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    return 4294956418;
  }

  if (!a4)
  {
    return 0;
  }

  values[0] = @"Portrait";
  values[1] = @"Portrait Upside Down";
  values[2] = @"Landscape Left";
  values[3] = @"Landscape Right";
  v6 = CFArrayCreate(0, values, 4, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AURotationShading::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (!v3)
  {
    (*(*this + 19))(this, 0, 0, 0, 0, AURotationShading::mOrientationCachedPrevious);
    ++*(this + 132);
  }

  return v3;
}

uint64_t AURotationShading::GetParameterInfo(AURotationShading *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  if (a3 > 3)
  {
    return 4294956418;
  }

  v6 = off_1E866B300[a3];
  v7 = dword_1DE09E920[a3];
  v8 = flt_1DE09E930[a3];
  v9 = flt_1DE09E940[a3];
  v10 = flt_1DE09E950[a3];
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

uint64_t AURotationShading::GetParameterList(AURotationShading *this, int a2, unsigned int *a3, unsigned int *a4)
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

ausdk::AUInputElement *AURotationShading::Render(AURotationShading *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AURotationShading::ProcessMultipleBufferLists(AURotationShading *this, unsigned int *a2, uint64_t a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v10 = *(this + 132);
  if (*(this + 133) != v10)
  {
    AURotationShading::UpdateState(this);
    *(this + 133) = v10;
  }

  if ((*(this + 605) & 1) == 0)
  {
    v11 = *(this + 134);
    if (*(this + 135) != v11)
    {
      v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v13 & 1) == 0)
      {
        goto LABEL_69;
      }

      *(this + 149) = ausdk::AUElement::GetParameter(v12, 0);
      *(this + 135) = v11;
    }
  }

  *(this + 605) = 1;
  v14 = *a5;
  mNumberBuffers = (*a5)->mNumberBuffers;
  v51 = (*a7)->mNumberBuffers;
  if (mNumberBuffers)
  {
    v16 = 0;
    v17 = 16;
    do
    {
      memcpy(*(this + v16++ + 76), *(v14 + v17), 4 * a3);
      v14 = *a5;
      v18 = (*a5)->mNumberBuffers;
      v17 += 16;
    }

    while (v16 < v18);
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (*(this + 150) == 2)
  {
    v19 = *a7;
    LODWORD(v20) = (*a7)->mNumberBuffers;
    if (v20 >= 2)
    {
      v21 = 0;
      v24 = 16;
      do
      {
        v53.mNumberBuffers = 1;
        v53.mBuffers[0].mNumberChannels = 1;
        v53.mBuffers[0].mDataByteSize = 4 * a3;
        LODWORD(__C) = 1;
        v55 = 1;
        v56 = 4 * a3;
        v57 = *(this + 76);
        v53.mBuffers[0].mData = *(v19 + v24);
        CopyBufferList(&__C, &v53);
        ++v21;
        v19 = *a7;
        v20 = (*a7)->mNumberBuffers;
        v24 += 16;
      }

      while (v21 < v20 >> 1);
    }

    else
    {
      LODWORD(v21) = 0;
    }

    if ((v20 & 1) != 0 && (*a5)->mNumberBuffers >= 2)
    {
      LODWORD(__C) = 1060439283;
      v25 = v19 + 16 * v21;
      LODWORD(v21) = v21 + 1;
      vDSP_vasm(*(this + 76), 1, *(this + 77), 1, &__C, *(v25 + 16), 1, a3);
      v19 = *a7;
      LODWORD(v20) = (*a7)->mNumberBuffers;
    }

    if (v21 < v20)
    {
      v26 = this + 608;
      v27 = v21;
      v28 = 16 * v21 + 16;
      do
      {
        v53.mNumberBuffers = 1;
        v53.mBuffers[0].mNumberChannels = 1;
        v53.mBuffers[0].mDataByteSize = 4 * a3;
        LODWORD(__C) = 1;
        v55 = 1;
        v56 = 4 * a3;
        v57 = *&v26[8 * ((*a5)->mNumberBuffers > 1)];
        v53.mBuffers[0].mData = *(v19 + v28);
        CopyBufferList(&__C, &v53);
        ++v27;
        v19 = *a7;
        v28 += 16;
      }

      while (v27 < (*a7)->mNumberBuffers);
    }

    return 0;
  }

  if ((*(this + 606) & 1) == 0)
  {
    if (!v18)
    {
      goto LABEL_45;
    }

    v29 = 0;
    v30 = (*a7)->mNumberBuffers;
    while (!v30)
    {
LABEL_44:
      if (++v29 >= v18)
      {
        goto LABEL_45;
      }
    }

    v31 = 0;
    while (1)
    {
      v53.mNumberBuffers = 1;
      v53.mBuffers[0].mNumberChannels = 1;
      v53.mBuffers[0].mDataByteSize = 4 * a3;
      LODWORD(__C) = 1;
      v55 = 1;
      v56 = 4 * a3;
      v57 = *(this + v29 + 76);
      HardwareChannelFromOrientation = AURotationShading::GetHardwareChannelFromOrientation(this, v31 + v29);
      mData = (*a7)->mBuffers[HardwareChannelFromOrientation].mData;
      v53.mBuffers[0].mData = mData;
      if (*(this + 150))
      {
        if ((*(this + 149) - 3) > 1)
        {
          if (HardwareChannelFromOrientation >= 2)
          {
LABEL_36:
            bzero(mData, v53.mBuffers[0].mDataByteSize);
            goto LABEL_39;
          }
        }

        else if ((HardwareChannelFromOrientation & 0xFFFFFFFD) != 0)
        {
          goto LABEL_36;
        }
      }

      CopyBufferList(&__C, &v53);
LABEL_39:
      BottomChannelFromOrientation = AURotationShading::GetBottomChannelFromOrientation(this, HardwareChannelFromOrientation);
      if (BottomChannelFromOrientation && mNumberBuffers != v51 && !*(this + 150))
      {
        v35 = *(*(this + 71) + 8 * (BottomChannelFromOrientation - 1));
        (*(*v35 + 32))(v35, a3, &v53, &v53);
      }

      LODWORD(v18) = (*a5)->mNumberBuffers;
      v31 += v18;
      v30 = (*a7)->mNumberBuffers;
      if (v31 >= v30)
      {
        goto LABEL_44;
      }
    }
  }

  if ((*a7)->mNumberBuffers)
  {
    v22 = 0;
    v23 = 16;
    do
    {
      v53.mNumberBuffers = 1;
      v53.mBuffers[0].mNumberChannels = 1;
      v53.mBuffers[0].mDataByteSize = 4 * a3;
      LODWORD(__C) = 1;
      v55 = 1;
      v56 = 4 * a3;
      v57 = *(this + AURotationShading::GetHardwareChannelFromOrientation(this, v22) + 76);
      AURotationShading::GetHardwareChannelFromOrientation(this, v22);
      v53.mBuffers[0].mData = *(&(*a7)->mNumberBuffers + v23);
      CopyBufferList(&__C, &v53);
      ++v22;
      v23 += 16;
    }

    while (v22 < (*a7)->mNumberBuffers);
  }

LABEL_45:
  v36 = *(this + 134);
  if (*(this + 135) == v36)
  {
    return 0;
  }

  v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v38 & 1) == 0)
  {
LABEL_69:
    abort();
  }

  *(this + 149) = ausdk::AUElement::GetParameter(v37, 0);
  *(this + 135) = v36;
  (*(*this + 72))(this, 0, 0);
  if ((*(this + 606) & 1) == 0)
  {
    v41 = (*a5)->mNumberBuffers;
    if (!v41)
    {
      return 0;
    }

    v42 = 0;
    v43 = (*a7)->mNumberBuffers;
    while (!v43)
    {
LABEL_67:
      if (++v42 >= v41)
      {
        return 0;
      }
    }

    v44 = 0;
    while (1)
    {
      v52.mNumberBuffers = 1;
      v52.mBuffers[0].mNumberChannels = 1;
      v52.mBuffers[0].mDataByteSize = 4 * a3;
      v53.mNumberBuffers = 1;
      v53.mBuffers[0].mNumberChannels = 1;
      v53.mBuffers[0].mDataByteSize = 4 * a3;
      LODWORD(__C) = 1;
      v55 = 1;
      v56 = 4 * a3;
      v57 = *(this + v42 + 76);
      v52.mBuffers[0].mData = *(this + 80);
      v45 = AURotationShading::GetHardwareChannelFromOrientation(this, v44 + v42);
      v46 = v45;
      v53.mBuffers[0].mData = (*a7)->mBuffers[v45].mData;
      if (*(this + 150))
      {
        if ((*(this + 149) - 3) > 1)
        {
          if (v45 >= 2)
          {
LABEL_59:
            bzero(v52.mBuffers[0].mData, v52.mBuffers[0].mDataByteSize);
            goto LABEL_62;
          }
        }

        else if ((v45 & 0xFFFFFFFD) != 0)
        {
          goto LABEL_59;
        }
      }

      CopyBufferList(&__C, &v52);
LABEL_62:
      v47 = AURotationShading::GetBottomChannelFromOrientation(this, v46);
      if (v47 && mNumberBuffers != v51 && !*(this + 150))
      {
        v48 = *(*(this + 71) + 8 * (v47 - 1));
        (*(*v48 + 32))(v48, a3, &v52, &v52);
      }

      FadeBufferLists(&v52.mNumberBuffers, &v53, a3);
      v41 = (*a5)->mNumberBuffers;
      v44 += v41;
      v43 = (*a7)->mNumberBuffers;
      if (v44 >= v43)
      {
        goto LABEL_67;
      }
    }
  }

  if ((*a7)->mNumberBuffers)
  {
    v39 = 0;
    v40 = 16;
    do
    {
      v52.mNumberBuffers = 1;
      v52.mBuffers[0].mNumberChannels = 1;
      v52.mBuffers[0].mDataByteSize = 4 * a3;
      v53.mNumberBuffers = 1;
      v53.mBuffers[0].mNumberChannels = 1;
      v53.mBuffers[0].mDataByteSize = 4 * a3;
      LODWORD(__C) = 1;
      v55 = 1;
      v56 = 4 * a3;
      v57 = *(this + AURotationShading::GetHardwareChannelFromOrientation(this, v39) + 76);
      v52.mBuffers[0].mData = *(this + 80);
      CopyBufferList(&__C, &v52);
      v53.mBuffers[0].mData = *(&(*a7)->mNumberBuffers + v40);
      FadeBufferLists(&v52.mNumberBuffers, &v53, a3);
      ++v39;
      v40 += 16;
    }

    while (v39 < (*a7)->mNumberBuffers);
  }

  return 0;
}

void AURotationShading::UpdateState(AURotationShading *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_18;
  }

  *(this + 604) = ausdk::AUElement::GetParameter(v2, 1u) != 0.0;
  v4 = *(this + 72);
  v5 = *(this + 71);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v9 = *(Element + 80);
      v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v11 & 1) == 0)
      {
        break;
      }

      Parameter = ausdk::AUElement::GetParameter(v10, v7 + 1);
      if (v9 * 0.49 >= Parameter && (*(this + 604) & 1) != 0)
      {
        v13 = Parameter * 6.28318531 / v9;
        v14 = (*(this + 68) + 40 * v6);
        if (v13 <= 0.0)
        {
          *v14 = 0.0;
          v14[1] = 0.0;
          v14[3] = 0.0;
          v14[4] = 0.0;
          v14[2] = 1.0;
        }

        else
        {
          v15 = __sincos_stret(fmin(v13, 3.11017673));
          v16 = 0.5 - v15.__cosval * 0.5;
          v17 = 1.0 / (v15.__sinval * 0.707106781 + 1.0);
          *v14 = v15.__cosval * -2.0 * v17;
          v14[1] = v17 - v15.__sinval * 0.707106781 * v17;
          v14[2] = v16 * v17;
          v14[3] = v16 * (v17 + v17);
          v14[4] = v16 * v17;
        }
      }

      else
      {
        v18 = (*(this + 68) + 40 * v6);
        *v18 = 0;
        v18[1] = 0;
        v18[3] = 0;
        v18[4] = 0;
        v18[2] = 0x3FF0000000000000;
      }

      v6 = v7;
      v4 = *(this + 72);
      v5 = *(this + 71);
      ++v7;
      if (v6 >= (v4 - v5) >> 3)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    abort();
  }

LABEL_14:
  if (v4 != v5)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      (*(**(v5 + 8 * v19) + 16))(*(v5 + 8 * v19), 1, *(this + 68) + 40 * v19);
      v19 = v20;
      v5 = *(this + 71);
      ++v20;
    }

    while (v19 < (*(this + 72) - v5) >> 3);
  }
}

const void **CopyBufferList(const void **result, _DWORD *a2)
{
  v2 = *result;
  if (v2 == *a2 && v2 != 0)
  {
    v4 = result;
    v5 = 0;
    v6 = (a2 + 4);
    v7 = result + 2;
    do
    {
      v8 = *(v7 - 1);
      if (v8 == *(v6 - 1))
      {
        result = *v6;
        if (*v7 != *v6)
        {
          result = memcpy(result, *v7, v8);
          v2 = *v4;
        }
      }

      ++v5;
      v6 += 2;
      v7 += 2;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t AURotationShading::GetHardwareChannelFromOrientation(AURotationShading *this, uint64_t a2)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_25;
  }

  if (*(Element + 108) == 1 || *(this + 148))
  {
    return a2;
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
LABEL_25:
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v6 + 108) != 2)
  {
    v10 = *(this + 149);
    switch(v10)
    {
      case 2:
        v11 = &unk_1DE0BB14C;
        break;
      case 4:
        v11 = &unk_1DE09E8E0;
        break;
      case 3:
        v11 = &unk_1DE09E8D0;
        break;
      default:
        return a2;
    }

    return v11[a2];
  }

  v7 = *(this + 149);
  if (*(this + 606) == 1)
  {
    v8 = 2 * (a2 != 0);
    v9 = 2 * (a2 == 0);
    if (v7 != 3)
    {
      v9 = a2;
    }

    if (v7 != 4)
    {
      v8 = v9;
    }

    if (v7 == 2)
    {
      return a2 == 0;
    }

    else
    {
      return v8;
    }
  }

  else if ((v7 & 0xFFFFFFFE) == 2)
  {
    return a2 == 0;
  }

  else
  {
    return a2;
  }
}

uint64_t AURotationShading::GetBottomChannelFromOrientation(AURotationShading *this, int a2)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_14;
  }

  if (*(Element + 108) == 1 || *(this + 148))
  {
    return 0;
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
LABEL_14:
    ausdk::Throw(0xFFFFD583);
  }

  v7 = *(this + 149);
  if (*(v6 + 108) == 2)
  {
    if (v7 == 2)
    {
      return (a2 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v7 - 2;
    if (v8 > 2)
    {
      v9 = &unk_1DE09E910;
    }

    else
    {
      v9 = *(&off_1E866B320 + v8);
    }

    return v9[a2];
  }
}

uint64_t AURotationShading::SetParameter(AURotationShading *this, unsigned int a2, int a3, double a4)
{
  if (a3)
  {
    return 4294956430;
  }

  v5 = a2;
  if (a2)
  {
    v11 = *&a4;
    v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v8)
    {
      v9 = 528;
LABEL_9:
      ausdk::AUElement::SetParameter(v7, v5, v11);
      result = 0;
      ++*(this + v9);
      return result;
    }

    goto LABEL_11;
  }

  if (vmaxv_u16(vmovn_s32(vceqq_f32(vdupq_lane_s32(*&a4, 0), xmmword_1DE09CDA0))))
  {
    v11 = *&a4;
    AURotationShading::mOrientationCachedPrevious = *&a4;
    v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v10)
    {
      v5 = 0;
      v9 = 536;
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return 0;
}

uint64_t AURotationShading::SetProperty(AURotationShading *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 64002)
  {
    v8 = 600;
LABEL_9:
    v6 = 0;
    *(this + v8) = *a5;
    return v6;
  }

  if (a2 == 21)
  {
    if (a6 != 4)
    {
      return 4294956445;
    }

    v8 = 592;
    goto LABEL_9;
  }

  return 4294956417;
}

uint64_t AURotationShading::GetProperty(AURotationShading *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 592;
    goto LABEL_7;
  }

  if (a2 == 64002)
  {
    v6 = 600;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AURotationShading::GetPropertyInfo(AURotationShading *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 64002 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AURotationShading::Reset(uint64_t **this)
{
  AURotationShading::UpdateState(this);
  v2 = this[71];
  v3 = this[72];
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 24))(v4);
  }

  return 0;
}

uint64_t AURotationShading::Cleanup(AURotationShading *this)
{
  v2 = *(this + 72);
  for (i = *(this + 71); v2 != i; i = *(this + 71))
  {
    v4 = *i;
    v5 = v2 - (i + 8);
    if (v2 != i + 8)
    {
      memmove(i, i + 8, v2 - (i + 8));
    }

    v2 = &i[v5];
    *(this + 72) = &i[v5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v2 = *(this + 72);
    }
  }

  v6 = 0;
  v7 = this + 608;
  do
  {
    v8 = *&v7[v6];
    if (v8)
    {
      MEMORY[0x1E12BD130](v8, 0x1000C8052888210);
      *&v7[v6] = 0;
    }

    v6 += 8;
  }

  while (v6 != 32);
  result = *(this + 80);
  if (result)
  {
    result = MEMORY[0x1E12BD130](result, 0x1000C8052888210);
    *(this + 80) = 0;
  }

  return result;
}

uint64_t AURotationShading::Initialize(AURotationShading *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(v3 + 108);
  v6 = *(v4 + 108);
  v7 = v5 == 1 && v6 == 1;
  if (v7 || ((v5 - 1) <= 1 ? (v8 = v6 == 2) : (v8 = 0), v8 || (v5 == 4 ? (v9 = v6 == 2) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), v6 == 4 ? (v11 = v5 == 1) : (v11 = 0), v6 == 4 ? (v12 = v5 == 2) : (v12 = 0), v11 || (v10 & 1) != 0 || v12)))
  {
    v15 = v5 == 4 && v6 == 2;
    *(this + 606) = v15;
    for (i = 1; ; i = 0)
    {
      v17 = i;
      v35.mSampleRate = *(v3 + 80);
      *&v35.mFormatID = xmmword_1DE09BD50;
      *&v35.mBytesPerFrame = xmmword_1DE09BD60;
      v18 = NewIIRFilter(&v35, &v35);
      if (!v18)
      {
        break;
      }

      v19 = v18;
      v20 = *(this + 72);
      v21 = *(this + 73);
      if (v20 >= v21)
      {
        v23 = *(this + 71);
        v24 = (v20 - v23) >> 3;
        if ((v24 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v21 - v23;
        v26 = v25 >> 2;
        if (v25 >> 2 <= (v24 + 1))
        {
          v26 = v24 + 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v27);
        }

        v28 = (8 * v24);
        *v28 = v19;
        v22 = 8 * v24 + 8;
        v29 = *(this + 71);
        v30 = *(this + 72) - v29;
        v31 = v28 - v30;
        memcpy(v28 - v30, v29, v30);
        v32 = *(this + 71);
        *(this + 71) = v31;
        *(this + 72) = v22;
        *(this + 73) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v20 = v18;
        v22 = (v20 + 1);
      }

      *(this + 72) = v22;
      if ((v17 & 1) == 0)
      {
        if (*(v3 + 108))
        {
          v33 = *(this + 76);
          if (v33)
          {
            MEMORY[0x1E12BD130](v33, 0x1000C8052888210);
          }

          operator new[]();
        }

        v34 = *(this + 80);
        if (v34)
        {
          MEMORY[0x1E12BD130](v34, 0x1000C8052888210);
        }

        operator new[]();
      }
    }
  }

  return 4294956428;
}

void AURotationShading::~AURotationShading(AURotationShading *this)
{
  AURotationShading::~AURotationShading(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5923008;
  AURotationShading::Cleanup(this);
  v2 = *(this + 71);
  if (v2)
  {
    *(this + 72) = v2;
    operator delete(v2);
  }

  v3 = *(this + 68);
  if (v3)
  {
    *(this + 69) = v3;
    operator delete(v3);
  }

  ausdk::AUBase::~AUBase(this);
}

BOOL AULinearEchoCancelerV3::ValidFormat(AULinearEchoCancelerV3 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
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

uint64_t AULinearEchoCancelerV3::SupportedNumChannels(AULinearEchoCancelerV3 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULinearEchoCancelerV3::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AULinearEchoCancelerV3::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AULinearEchoCancelerV3::GetParameterInfo(AULinearEchoCancelerV3 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x29)
  {
    v6 = off_1E866B338[a3];
    v7 = dword_1DE0BB160[a3];
    v8 = flt_1DE0BB208[a3];
    v9 = flt_1DE0BB2B0[a3];
    v10 = flt_1DE0BB358[a3];
    v11 = dword_1DE0BB400[a3];
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

uint64_t AULinearEchoCancelerV3::Render(AULinearEchoCancelerV3 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AULinearEchoCancelerV3::ProcessMultipleBufferLists(AULinearEchoCancelerV3 *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v532 = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  v11 = this;
  v12 = *(this + 133);
  if (*(this + 134) != v12)
  {
    AULinearEchoCancelerV3::InitializeEC(this);
    *(v11 + 134) = v12;
  }

  v13 = *a7;
  if (a6 < 2)
  {
    mData = 0;
    goto LABEL_9;
  }

  mData = a7[1]->mBuffers[0].mData;
  if (a6 == 2)
  {
LABEL_9:
    v517 = 0;
    goto LABEL_10;
  }

  v517 = a7[2]->mBuffers[0].mData;
LABEL_10:
  v15 = (*a5)->mBuffers[0].mData;
  v16 = *(v13 + 16);
  v17 = a5[1]->mBuffers[0].mData;
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v11 + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_416;
  }

  Parameter = ausdk::AUElement::GetParameter(v18, 2u);
  if (((*(*v11 + 576))(v11) & 1) == 0 && *(v11 + 86))
  {
    v14 = 0xFFFFFFFFLL;
    v21 = 0.0;
    v521 = v11;
    if (!v15 || !v17)
    {
LABEL_394:
      v440 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v11 + 32, 0);
      if (v441)
      {
        v442 = ausdk::AUElement::GetParameter(v440, 0x23u);
        v443 = *(v521 + 170);
        if (v21 >= v443)
        {
          v444 = v21;
        }

        else
        {
          v444 = *(v521 + 170);
        }

        if (v444 < *(v521 + 171))
        {
          v444 = *(v521 + 171);
        }

        *(v521 + 171) = v443;
        *(v521 + 170) = v21;
        v445 = v444 > v442;
        v446 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v521 + 32, 0);
        if (v445)
        {
          if (v447)
          {
            ausdk::AUElement::SetParameter(v446, 0x24u, 1.0);
            return v14;
          }
        }

        else if (v447)
        {
          ausdk::AUElement::SetParameter(v446, 0x24u, 0.0);
          return v14;
        }
      }

LABEL_416:
      abort();
    }

    v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v11 + 32, 0);
    if ((v23 & 1) == 0)
    {
      goto LABEL_416;
    }

    v24 = ausdk::AUElement::GetParameter(v22, 4u);
    v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v11 + 32, 0);
    if ((v26 & 1) == 0)
    {
      goto LABEL_416;
    }

    *(v11 + 140) = ausdk::AUElement::GetParameter(v25, 5u);
    v27 = *(v11 + 86);
    v475 = v24;
    v28 = *v27;
    v520 = v27[1];
    v30 = v27[6];
    v29 = v27[7];
    v31 = v27[9];
    v32 = v27[3];
    v515 = v27[8];
    v516 = v27[2];
    v489 = v27;
    v470 = v27[4];
    v512 = *(v29 + 8);
    v513 = *v29;
    v514 = *(v29 + 32);
    v33 = *(v29 + 56);
    v505 = *(v29 + 48);
    v507 = *(v29 + 64);
    v34 = v28[4];
    v35 = v28[7];
    v500 = v28[9];
    *(v30 + 580) = 0;
    v36 = *(v30 + 544);
    if (v36 < 100.0 && (*(v30 + 20) / v34) > 0.00000001)
    {
      v36 = v36 + *(v28 + 5);
      *(v30 + 544) = v36;
    }

    v37 = v28[25];
    if (v37 >= 1)
    {
      if (v37 == 2)
      {
        v38 = 1;
        goto LABEL_33;
      }

      if (v37 == 1)
      {
        v38 = v36 < (*(v30 + 528) + 2.0);
LABEL_33:
        v474 = v38;
        goto LABEL_34;
      }
    }

    v474 = 0;
LABEL_34:
    v480 = v16;
    v481 = v32;
    v479 = v34;
    *v30 = v24 == 0;
    *(v30 + 492) = *(v30 + 32);
    *(v30 + 532) = *(v30 + 384);
    v469 = (v30 + 276);
    *(v30 + 508) = *(v30 + 500);
    *(v30 + 568) = 0;
    v522 = v28;
    v477 = v35;
    v478 = v33;
    v519 = v29;
    v499 = (v30 + 20);
    v467 = v34;
    if (v28[24] || *(v30 + 140))
    {
      *(v30 + 348) = *(v30 + 4);
      memcpy(*(v29 + 96), v17, 4 * v34);
    }

    else
    {
      v468 = v31;
      v94 = *(v520 + 56);
      v93 = *(v520 + 64);
      v95 = v28[18];
      v96 = v95 - v34;
      if (v95 != v34)
      {
        v97 = 0;
        do
        {
          memcpy((v94 + 4 * v97), (v94 + 4 * (v34 + v97)), (4 * v34));
          memcpy((v93 + 4 * v97), (v93 + 4 * (v34 + v97)), (4 * v34));
          v97 += v34;
        }

        while (v97 < v96);
      }

      v98 = (v94 + 4 * v96);
      v462 = v17;
      memcpy(v98, v17, (4 * v34));
      MEMORY[0x1E12BE990](v98, 1, v93 + 4 * v96, 1, v34);
      v99 = *(v520 + 64);
      v490 = *(v520 + 56);
      v100 = v28[4];
      v101 = v28[18];
      v102 = *(v519 + 104);
      v103 = *(v468 + 16);
      v456 = v100;
      v104 = &v102[4 * v100];
      v105 = 4 * v100;
      memcpy(v102, v104, v105);
      __n = v105;
      memcpy(v104, v15, v105);
      v106 = v522[17];
      __B = *(v519 + 104);
      __dst = *(v519 + 112);
      v466 = *(v519 + 120);
      HIDWORD(v453) = v101;
      v107 = v101 - v103 - v106;
      LODWORD(__A.realp) = 0;
      LODWORD(__Z.realp) = 0;
      v108 = ((v101 - v103) / 3.0) + ((v101 - v103) / 3.0);
      LODWORD(__C.realp) = 0;
      LODWORD(v109) = (v107 - v108 + 1) & ~((v107 - v108 + 1) >> 31);
      if (v107 >= v108)
      {
        v109 = v109;
      }

      else
      {
        v109 = 0;
      }

      v471 = v99;
      v484 = v109;
      __Na = v103;
      vDSP_sve((v99 + 4 * v109), 1, &__Z, v103);
      vDSP_dotpr(__B, 1, __B, 1, &__A, v103);
      v110 = *&__Z.realp;
      v111 = (v107 + 2);
      if (v484 >= v111)
      {
        v116 = v484;
      }

      else
      {
        v112 = v484 + v103 - v106;
        v113 = v484 - v106;
        v114 = 0.0;
        v115 = v484;
        v116 = v484;
        do
        {
          vDSP_dotpr((v490 + 4 * v115), 1, __B, 1, &__C, __Na);
          v118 = v115 <= v484 || v115 < v106 || v106 < 1;
          v119 = *&__Z.realp;
          if (!v118)
          {
            v120 = (v471 + 4 * v113);
            v121 = v106;
            v122 = (v471 + 4 * v112);
            do
            {
              v123 = *v120++;
              v124 = v119 - v123;
              v125 = *v122++;
              v119 = v124 + v125;
              --v121;
            }

            while (v121);
            *&__Z.realp = v119;
          }

          v126 = *&__C.realp / (sqrtf(v119 * *&__A.realp) + 2.2204e-16);
          v127 = fabsf(v126);
          if (v127 > v114)
          {
            v110 = v119;
            v114 = v127;
            v116 = v115;
          }

          v115 += v106;
          v112 += v106;
          v113 += v106;
        }

        while (v115 < v111);
      }

      memcpy(__dst, (v490 + 4 * v116), 4 * __Na);
      memcpy(v466, __B, 4 * __Na);
      *(v30 + 348) = v110;
      *(v30 + 352) = v116;
      v128 = *(v519 + 128);
      __Z = *(v519 + 144);
      __A = v128;
      v129 = *(v519 + 224);
      v130 = *(v468 + 16);
      v132 = *(v519 + 112);
      v131 = *(v519 + 120);
      v134 = *(v519 + 160);
      v133 = *(v519 + 168);
      v135 = *(v519 + 176);
      v136 = *(v519 + 200);
      __Ba = *(v519 + 192);
      v528 = *(v519 + 208);
      __C = v135;
      v485 = *(v30 + 324);
      __Nc = *(v30 + 328);
      MEMORY[0x1E12BE7F0](v132, 1, v129, 1, v132, 1, v130);
      dft_v3::dftGenericAnalysis2ndHalf(v132, __A.realp, __A.imagp, v468, 0);
      MEMORY[0x1E12BE7F0](v131, 1, v129, 1, v131, 1, v130);
      dft_v3::dftGenericAnalysis2ndHalf(v131, __Z.realp, __Z.imagp, v468, 0);
      vDSP_zvmags(&__A, 1, v134, 1, __Nc);
      vDSP_zvmags(&__Z, 1, v133, 1, __Nc);
      vDSP_zvcmul(&__Z, 1, &__A, 1, &__C, 1, __Nc);
      v527 = *(v30 + 344);
      v526 = 1.0 - v527;
      MEMORY[0x1E12BE940](v134, 1, &v526, v134, 1, __Nc);
      MEMORY[0x1E12BE8F0](__Ba, 1, &v527, v134, 1, __Ba, 1, __Nc);
      MEMORY[0x1E12BE940](v133, 1, &v526, v133, 1, __Nc);
      MEMORY[0x1E12BE8F0](v136, 1, &v527, v133, 1, v136, 1, __Nc);
      MEMORY[0x1E12BE940](__C.realp, 1, &v526, __C.realp, 1, __Nc);
      MEMORY[0x1E12BE940](__C.imagp, 1, &v526, __C.imagp, 1, __Nc);
      MEMORY[0x1E12BE940](v528.realp, 1, &v527, v528.realp, 1, __Nc);
      MEMORY[0x1E12BE940](v528.imagp, 1, &v527, v528.imagp, 1, __Nc);
      vDSP_zvadd(&v528, 1, &__C, 1, &v528, 1, __Nc);
      vDSP_zvabs(&v528, 1, v133, 1, __Nc);
      v137 = HIDWORD(v453) - v456;
      v138 = 0.0;
      v139 = __Nc - v485;
      if (__Nc >= v485)
      {
        v140 = v139 + 1;
        v141 = &__Ba[v485 - 1];
        v142 = (v136 + 4 * (v485 - 1));
        v143 = &v133[v485 - 1];
        do
        {
          v144 = *v143++;
          v145 = v144;
          v146 = *v142++;
          v147 = v146;
          v148 = *v141++;
          v138 = v145 / (sqrtf(v147 * v148) + 1.0e-20) + v138;
          --v140;
        }

        while (v140);
      }

      *(v30 + 304) = v138 / (v139 + 1);
      if (*(v30 + 352) < v137)
      {
        v137 = *(v30 + 352);
      }

      v29 = v519;
      memcpy(*(v519 + 96), (v490 + 4 * v137), __n);
      v28 = v522;
      v34 = v467;
      v17 = v462;
    }

    v46 = *(v520 + 80);
    v47 = *(v520 + 32);
    v48 = *(v29 + 72);
    v49 = v46 == 0;
    if (v46)
    {
      v50 = (v47 + 4 * v34);
    }

    else
    {
      v50 = *(v520 + 32);
    }

    if (v46)
    {
      v51 = *(v520 + 32);
    }

    else
    {
      v51 = v47 + 4 * v34;
    }

    if (v49)
    {
      v52 = *(v29 + 72);
    }

    else
    {
      v52 = v48 + 4 * v34;
    }

    if (v49)
    {
      v53 = v48 + 4 * v34;
    }

    else
    {
      v53 = *(v29 + 72);
    }

    *(v520 + 40) = v50;
    *(v520 + 48) = v51;
    *(v29 + 80) = v52;
    *(v29 + 88) = v53;
    v55 = v28[4];
    v54 = v28 + 4;
    lmsfilt_v3::preemphasisFilter(v17, v55, v515, v50, v45);
    lmsfilt_v3::preemphasisFilter(v15, *v54, v515 + 1, *(v29 + 80), v56);
    v57 = *(v520 + 72);
    *(v520 + 76) = v57;
    dft_v3::GetIndexSequence(*(v520 + 88), v57, v522[11], v522[12]);
    v58 = *(v520 + 40);
    v59 = *(v30 + 48);
    v60 = v522[9];
    v61 = *v54;
    __N = *(v520 + 76);
    v62 = (*(v520 + 16) + 4 * __N * v61);
    v63 = (*(v520 + 24) + 4 * __N * v61);
    memcpy(v62, *v520, 4 * v60);
    memcpy(v63, *(v520 + 8), 4 * v60);
    v64 = &v62[v60];
    v65 = &v63[v60];
    __Z.realp = v64;
    __Z.imagp = v65;
    vDSP_ctoz(v58, 2, &__Z, 1, v60);
    v60 *= 4;
    memcpy(*v520, v64, v60);
    memcpy(*(v520 + 8), v65, v60);
    __Z.realp = v62;
    __Z.imagp = v63;
    v67 = *(v522 + 1);
    if (v67)
    {
      MultiRadixRealFFT::RealInPlaceTransform(v67, &__Z, 1, v66);
    }

    MEMORY[0x1E12BE940](v62, 1, v522 + 21, v62, 1, *v522 >> 1);
    MEMORY[0x1E12BE940](v63, 1, v522 + 21, v63, 1, *v522 >> 1);
    __A.realp = v62;
    __A.imagp = v63;
    vDSP_zvmags(&__A, 1, v59, 1, v61);
    *v59 = *v62 * *v62;
    v59[v61] = *v63 * *v63;
    v68 = v522;
    v69 = v522[11];
    v70 = v522[10];
    v71 = *(v520 + 96);
    v72 = (v71 + 4 * v70 * __N);
    *v72 = *v59 + 0.000000009;
    v72[v70 - 1] = v59[v70 - 1] + 0.000000009;
    if (v70 >= 3)
    {
      v73 = v59 + 2;
      v74 = v70 - 2;
      v75 = (v71 + 4 * v70 * __N + 4);
      do
      {
        v76 = *(v73 - 1) + *(v73 - 2);
        v77 = *v73++;
        *v75++ = ((v76 + v77) * 0.33333) + 0.000000009;
        --v74;
      }

      while (v74);
    }

    if (v69 == 1)
    {
      **(v520 + 104) = 1065353216;
    }

    else
    {
      LODWORD(__A.realp) = 0;
      vDSP_sve(v72, 1, &__A, v70);
      v78 = log10f(*&__A.realp) * 10.0;
      *&__A.realp = v78;
      v79 = *(v520 + 104);
      if (v69 >= 2)
      {
        memmove(*(v520 + 104), (v79 + 4), 4 * (v69 - 1));
        v78 = *&__A.realp;
      }

      *(v79 + 4 * (v69 - 1)) = v78;
      v68 = v522;
    }

    v80 = v519;
    v81 = v516;
    if (*(v516 + 68) != 1)
    {
LABEL_132:
      v158 = v68[4];
      v157 = v68 + 4;
      LODWORD(v453) = *(v81 + 76);
      lmsfilt_v3::runLmsFilter_v3(v80 + 1, v158, *(v81 + 16), *(v81 + 24), *(v520 + 16), *(v520 + 24), *(v520 + 88), *(v81 + 72), v453, v456, __n, SHIDWORD(__n));
      dft_v3::dftSynthesis(*(v519 + 16), *(v519 + 24), v522);
      aec_v5::get_EchoEst_Err(v505, v507, (*(v519 + 16) + 4 * v500), (*(v519 + 24) + 4 * v500), *(v519 + 80), v522);
      v159 = *(v519 + 80);
      v160 = *v157;
      vDSP_svesq(*(v520 + 40), 1, (v30 + 4), v160);
      vDSP_svesq(v159, 1, v499, v160);
      __dsta = *(v30 + 20);
      v161 = *v157;
      v162 = log10((*(v30 + 4) / *v157) + 1.0e-20) * 10.0;
      *(v30 + 8) = v162;
      learnrate_v3::updateStatistics_echo(v161, v507, v505, v30);
      v163 = *(v30 + 16);
      v164 = (v163 + 1.0e-13) / (*(v30 + 28) + 1.0e-13);
      v165 = log10f(v164);
      v166 = 0;
      *(v30 + 580) = v165 * 10.0;
      v167 = *(v519 + 64);
      v168 = *(v519 + 48);
      __Nb = *(v519 + 232);
      v506 = *(v519 + 240);
      v170 = *(v30 + 252);
      v169 = *(v30 + 256);
      v171 = *(v30 + 260);
      v172 = *(v30 + 264);
      v173 = *(v30 + 268);
      v174 = v522;
      v175 = v522[9];
      v176 = *(v522 + 8);
      v177 = v481;
      *(v481 + 60) = 0;
      v178 = *(v30 + 224);
      if (v178 <= 1)
      {
        if (v178 != 1)
        {
          goto LABEL_136;
        }

        v166 = 2;
      }

      *(v30 + 224) = v166;
LABEL_136:
      v179 = v176 * v163;
      if (*(v481 + 56) == 1)
      {
        *(v481 + 56) = 0x100000000;
        **(v30 + 184) = 1;
        v180 = 0.0;
        goto LABEL_188;
      }

      v463 = v169;
      v472 = v171;
      v486 = v172;
      v491 = v179;
      __Bb = v173;
      LODWORD(v454) = *(v481 + 76);
      lmsfilt_v3::runLmsFilter_v3((v519 + 248), v522[4], *(v481 + 16), *(v481 + 24), *(v520 + 16), *(v520 + 24), *(v520 + 88), *(v481 + 72), v454, v457, __na, SHIDWORD(__na));
      dft_v3::dftSynthesis(*(v519 + 248), *(v519 + 256), v522);
      aec_v5::get_EchoEst_Err(__Nb, v506, (*(v519 + 248) + 4 * v175), (*(v519 + 256) + 4 * v175), *(v519 + 80), v522);
      vDSP_svesq(v506, 1, (v30 + 208), v522[4]);
      v181 = *(v30 + 208);
      *(v30 + 212) = v181;
      v182 = (*v522 * 100.0) * 9.3132e-10;
      if (v181 < v182)
      {
        *(v30 + 208) = v181 + v182;
      }

      LODWORD(__A.realp) = 0;
      vDSP_svesq(__Nb, 1, &__A, v522[4]);
      v183 = *(v30 + 212) + 1.0e-13;
      v184 = (*&__A.realp + 1.0e-13) / v183;
      LODWORD(__na) = log10f(v184);
      v185 = *(v30 + 28) + 1.0e-13;
      v186 = *(v30 + 20) + 0.000000001;
      v187 = v170;
      v188 = v185 / v186 + v170;
      v189 = log10f(v188) * 10.0;
      v190 = v183 / v186 + v187;
      v191 = log10f(v190) * 10.0;
      v192 = v185 / (*(v30 + 16) + 0.000000001) + v187;
      v193 = log10f(v192) * 10.0;
      v194 = *(v30 + 228);
      v196 = *(v30 + 152);
      v195 = *(v30 + 160);
      v198 = *(v30 + 168);
      v197 = *(v30 + 176);
      v199 = *(v30 + 184);
      v200 = *(v30 + 192);
      v201 = v194 - 1;
      if (v194 != 1)
      {
        v202 = 0;
        v203 = *(v30 + 200);
        v204 = v203 + 4 * v201;
        v205 = v194 - 2;
        v206 = v201 - 1;
        v207 = &v200[v201];
        v208 = &v199[v201];
        v209 = &v197[v201];
        v210 = &v198[v201];
        v211 = &v195[v201];
        v212 = &v196[v201];
        do
        {
          v212[v202] = v196[(v205 + v202)];
          v211[v202] = v195[(v205 + v202)];
          v210[v202] = v198[(v205 + v202)];
          v209[v202] = v197[(v205 + v202)];
          v208[v202] = v199[(v205 + v202)];
          v207[v202] = v200[(v205 + v202)];
          *(v204 + 4 * v202) = *(v203 + 4 * (v205 + v202));
        }

        while (v206 + v202--);
      }

      *v196 = v189 - v191;
      *v195 = v189;
      *v198 = v193;
      v214 = *v196;
      v215 = (v463 + *v196) < 0.0;
      v173 = __Bb;
      v179 = v491;
      if (v491 < __Bb)
      {
        v215 = 1;
      }

      *v197 = v215;
      *v199 = v214 < v472;
      *v200 = *(v30 + 28) > *(v30 + 212);
      v216 = v193 < v486 && *(v30 + 8) < -9.0;
      v177 = v481;
      v217 = *(v30 + 200);
      *v217 = v216;
      v218 = *(v30 + 244);
      if (v218 > *(v30 + 228))
      {
        goto LABEL_159;
      }

      if (v218 < 1)
      {
        goto LABEL_155;
      }

      v219 = 0;
      v220 = *(v30 + 244);
      do
      {
        v221 = *v197++;
        v219 += v221;
        --v220;
      }

      while (v220);
      if (v219)
      {
        v222 = *(v30 + 220);
      }

      else
      {
LABEL_155:
        v222 = *(v30 + 220);
        if (v222 > 1)
        {
LABEL_157:
          if (*v30 == 1)
          {
            v223 = 4 * *(v516 + 36);
            memcpy(*v516, *v481, v223);
            memcpy(*(v516 + 8), *(v481 + 8), v223);
            memcpy(*(v516 + 16), *(v481 + 16), v223);
            memcpy(*(v516 + 24), *(v481 + 24), v223);
            memcpy(*(v516 + 48), *(v481 + 48), v223);
            *(v516 + 72) = *(v481 + 72);
            *(v30 + 224) = 1;
            v168 = *(v519 + 232);
            v224 = *(v519 + 240);
            v225 = 4 * v522[4];
            memcpy(v167, v506, v225);
            memcpy(*(v519 + 16), *(v519 + 248), v225);
            memcpy(*(v519 + 24), *(v519 + 256), v225);
            *(v30 + 80) = *v469;
            v226 = 4 * v522[10];
            memcpy(*(v30 + 64), *(v30 + 288), v226);
            memcpy(*(v30 + 72), *(v30 + 296), v226);
            **(v30 + 176) = 1;
            *(v30 + 220) = 0;
            v167 = v224;
            v174 = v522;
LABEL_187:
            v180 = *&__na * 10.0;
LABEL_188:
            v245 = *(v177 + 60);
            if (v245 == 1)
            {
              *(v30 + 216) = 0;
              v246 = 4 * *(v177 + 36);
              memcpy(*v177, *v516, v246);
              memcpy(*(v177 + 8), *(v516 + 8), v246);
              memcpy(*(v177 + 16), *(v516 + 16), v246);
              memcpy(*(v177 + 24), *(v516 + 24), v246);
              memcpy(*(v177 + 48), *(v516 + 48), v246);
              *(v177 + 72) = *(v516 + 72);
              *v469 = *(v30 + 80);
              v247 = 4 * *(v174 + 40);
              memcpy(*(v30 + 288), *(v30 + 64), v247);
              memcpy(*(v30 + 296), *(v30 + 72), v247);
              **(v30 + 176) = 0;
              **(v30 + 184) = 0;
              **(v30 + 192) = 0;
              **(v30 + 200) = 0;
              v248 = *(v30 + 600);
              if (v248 <= 3)
              {
                *(v30 + 600) = v248 + 1;
              }
            }

            else
            {
              if (*v30 != 1)
              {
                goto LABEL_194;
              }

              *(v30 + 216) = *(v30 + 216) + 1.0;
            }

            v245 = *(v177 + 60);
LABEL_194:
            if (!v245)
            {
              v249 = *(v30 + 232);
              if (v249 < 1)
              {
                v250 = 0;
              }

              else
              {
                v250 = 0;
                v251 = *(v30 + 192);
                v252 = *(v30 + 232);
                do
                {
                  v253 = *v251++;
                  v250 += v253;
                  --v252;
                }

                while (v252);
              }

              if (v250 == v249)
              {
                *(v30 + 28) = *(v30 + 212);
                if (v179 >= v173 && *v30 == 1)
                {
                  ++*(v30 + 220);
                }

                *(v30 + 224) = 1;
                *(v30 + 580) = v180;
LABEL_207:
                dft_v3::dftGenericAnalysis2ndHalf(v507, v514.realp, v514.imagp, v174, 1);
                dft_v3::dftGenericAnalysis2ndHalf_dsc((*(v519 + 16) + 4 * v500), (*(v519 + 24) + 4 * v500), v513, v512, v522);
                v508 = v489[10];
                v254 = v519;
                v256 = *(v519 + 328);
                v255 = *(v519 + 336);
                v257 = *(v519 + 344);
                v258 = v522[4];
                v259 = *(v30 + 400) - v258;
                v260 = *(v519 + 280);
                __C = *(v519 + 296);
                __Z = v260;
                v528 = *(v519 + 312);
                v473 = *(v30 + 412);
                v261 = *(v30 + 420);
                v262 = *(v30 + 472);
                v482 = *(v30 + 408);
                v487 = *(v30 + 456);
                v492 = *(v30 + 480);
                __Bc = *(v30 + 464);
                v527 = *(v30 + 392);
                v526 = 1.0 - v527;
                if (v259 >= 1)
                {
                  memmove(v256, v256 + 4 * v258, 4 * v259);
                  memmove(v255, v255 + 4 * v258, 4 * v259);
                  v254 = v519;
                  memmove(v257, v257 + 4 * v258, 4 * v259);
                }

                memcpy(v256 + 4 * v259, v254[10], 4 * v258);
                memcpy(v255 + 4 * v259, v254[6], 4 * v258);
                memcpy(v257 + 4 * v259, v254[8], 4 * v258);
                dft_v3::dftGenericAnalysis2ndHalf(v256, __Z.realp, __Z.imagp, v508, 0);
                dft_v3::dftGenericAnalysis2ndHalf(v255, __C.realp, __C.imagp, v508, 0);
                realp = v528.realp;
                imagp = v528.imagp;
                vDSP_zvmags(&__Z, 1, v262, 1, v261);
                MEMORY[0x1E12BE940](v262, 1, &v526, realp, 1, v261);
                MEMORY[0x1E12BE940](v492, 1, &v527, imagp, 1, v261);
                MEMORY[0x1E12BE5D0](realp, 1, imagp, 1, v492, 1, v261);
                vDSP_zvcmul(&__Z, 1, &__C, 1, &v528, 1, v261);
                vDSP_zvabs(&v528, 1, v487, 1, v261);
                MEMORY[0x1E12BE940](v487, 1, &v526, realp, 1, v261);
                MEMORY[0x1E12BE940](__Bc, 1, &v527, imagp, 1, v261);
                MEMORY[0x1E12BE5D0](realp, 1, imagp, 1, __Bc, 1, v261);
                v525 = 2.2204e-16;
                MEMORY[0x1E12BE8A0](v492, 1, &v525, realp, 1, v261);
                vDSP_vdiv(realp, 1, __Bc, 1, imagp, 1, v261);
                vDSP_meanv(&imagp[v482], 1, (v30 + 384), v473 - v482 + 1);
                *(v30 + 384) = fmaxf(fminf(*(v30 + 384), 1.0), 0.0);
                dft_v3::dftGenericAnalysis2ndHalf(v257, v528.realp, v528.imagp, v508, 0);
                v265 = v528.realp;
                v266 = v528.imagp;
                v267 = __C.realp;
                v268 = __C.imagp;
                v269 = *(v30 + 424);
                v270 = *(v30 + 432);
                v271 = *(v30 + 448);
                v509 = *(v30 + 440);
                v524 = 0.0;
                v523 = 0.0;
                v272 = *(v30 + 388);
                v273 = *(v30 + 396);
                v274 = *(v30 + 400);
                v275 = *(v30 + 404);
                __Bd = *(v30 + 416);
                __A = v528;
                vDSP_zvmags(&__A, 1, v270, 1, v274);
                *v270 = *v265 * *v265;
                v270[v274] = *v266 * *v266;
                __A.realp = v267;
                __A.imagp = v268;
                vDSP_zvmags(&__A, 1, v269, 1, v274);
                *v269 = *v267 * *v267;
                v269[v274] = *v268 * *v268;
                learnrate_v3::crossCorrSpec_raw(v270, v271, v269, v509, &v524, &v523, ((v275 >> 1) + 1));
                v276 = sqrtf(v523);
                v277 = (v524 / v276) / (v276 + v525);
                if (v277 <= 0.001)
                {
                  v277 = 0.001;
                }

                *(v30 + 376) = v277;
                *(v30 + 380) = ((1.0 - v272) * v277) + (v272 * *(v30 + 380));
                VPEchoGateV3::GatesmoothPowerSpectrum(v271, v270, __Bd, v273);
                VPEchoGateV3::GatesmoothPowerSpectrum(v509, v269, __Bd, v273);
                *(v521 + 190) = *(v30 + 384);
                v278 = *v522;
                v280 = *(v520 + 88);
                v279 = *(v520 + 96);
                LODWORD(__Z.realp) = 0;
                LODWORD(__C.realp) = 0;
                v281 = v522[4];
                v282 = v522[10];
                v283 = *(v30 + 40);
                __A = v514;
                vDSP_zvmags(&__A, 1, v283, 1, v281);
                *v283 = *v514.realp * *v514.realp;
                v283[v281] = *v514.imagp * *v514.imagp;
                v284 = *(v30 + 56);
                __A.realp = v513;
                __A.imagp = v512;
                vDSP_zvmags(&__A, 1, v284, 1, v281);
                *v284 = *v513 * *v513;
                v284[v281] = *v512 * *v512;
                learnrate_v3::crossCorrSpec_raw(*(v30 + 40), *(v30 + 64), *(v30 + 56), *(v30 + 72), &__Z, &__C, ((v278 >> 1) + 1));
                v285 = sqrtf(*&__C.realp);
                LODWORD(v286) = *(v30 + 16);
                v287 = *(v30 + 128);
                v288 = *(v30 + 124) * *&v286;
                v289 = *(v30 + 24);
                if (v288 > (v287 * v289))
                {
                  v288 = v287 * v289;
                }

                v290 = v288 / v289;
                if (v289 >= 9.3132e-19)
                {
                  v287 = v290;
                }

                v291 = ((*&__Z.realp / v285) * v287) + ((1.0 - v287) * *(v30 + 80));
                v292 = (v285 * v287) + ((1.0 - v287) * *(v30 + 84));
                if (v292 < 9.3132e-10)
                {
                  v292 = 9.3132e-10;
                }

                if (v291 >= (v292 * 0.005))
                {
                  v293 = v291;
                }

                else
                {
                  v293 = v292 * 0.005;
                }

                if (v293 <= v292)
                {
                  v294 = v293;
                }

                else
                {
                  v294 = v292;
                }

                *(v30 + 80) = v291;
                *(v30 + 84) = v292;
                if (v291 < (v292 * 0.005) || v293 > v292)
                {
                  *(v30 + 80) = v294;
                }

                v296 = v294 / v292;
                v297 = ((*&v286 * (v296 * 3.0)) + (*(v30 + 4) * 0.0001)) / v289;
                *&v286 = (*(v30 + 12) * *(v30 + 12)) / ((v289 * *&v286) + 8.6736e-19);
                if (v297 >= *&v286)
                {
                  *&v286 = v297;
                }

                if (*&v286 > 0.5)
                {
                  *&v286 = 0.5;
                }

                *(v30 + 132) = v296;
                *(v30 + 136) = LODWORD(v286);
                v298 = *(v30 + 140);
                if (v298)
                {
                  if (v298 == 1)
                  {
                    LODWORD(v286) = *(v30 + 380);
                    if (*&v286 < *(v30 + 368))
                    {
                      LODWORD(v286) = *(v30 + 384);
                      if (*&v286 < *(v30 + 372))
                      {
                        *(v30 + 136) = 0;
                      }
                    }
                  }

                  v299 = v522[11];
                }

                else
                {
                  LODWORD(v286) = *(v30 + 144);
                  v299 = v522[11];
                  if (*&v286 > v299)
                  {
                    LODWORD(v286) = *(v30 + 364);
                    if (v296 > *&v286)
                    {
                      *(v30 + 140) = 1;
                    }
                  }
                }

                learnrate_v3::getAdaptationRate3_v6(v30, (v279 + 4 * *v280 * v282), v299, v282, 0, v522[24], v286);
                VPEchoGateV3::GatesmoothPowerSpectrum(*(v30 + 64), *(v30 + 40), v282, *(v30 + 120));
                VPEchoGateV3::GatesmoothPowerSpectrum(*(v30 + 72), *(v30 + 56), v282, *(v30 + 120));
                if (v475)
                {
                  v301 = *(v30 + 28);
                  v302 = v522;
                  v303 = v516;
                  if (!v474)
                  {
                    goto LABEL_347;
                  }

                  v304 = 0;
                  LOBYTE(v305) = 0;
                  v306 = v516;
                  v516 = v470;
LABEL_309:
                  v369 = *(v519 + 272);
                  v511 = *(v519 + 264);
                  v370 = *(v30 + 32);
                  *(v30 + 552) = 0;
                  v371 = v370 + 1.0e-20;
                  *(v30 + 516) = log10f((v370 + 1.0e-20) / (*(v30 + 20) + 1.0e-20)) * 10.0;
                  *(v30 + 524) = 0;
                  LODWORD(v454) = *(v306 + 76);
                  lmsfilt_v3::runLmsFilter_v3((v519 + 248), *(v302 + 4), *(v306 + 16), *(v306 + 24), *(v520 + 16), *(v520 + 24), *(v520 + 88), *(v306 + 72), v454, v457, __na, SHIDWORD(__na));
                  dft_v3::dftSynthesis(*(v519 + 248), *(v519 + 256), v522);
                  aec_v5::get_EchoEst_Err(v511, v369, (*(v519 + 248) + 4 * v500), (*(v519 + 256) + 4 * v500), *(v519 + 80), v522);
                  v372 = *(v302 + 4);
                  vDSP_svesq(v369, 1, (v30 + 488), v372);
                  vDSP_svesq(v511, 1, (v30 + 540), v372);
                  v373 = *(v30 + 488);
                  *(v30 + 520) = log10f((v373 + 1.0e-20) / (*(v30 + 20) + 1.0e-20)) * 10.0;
                  v374 = log10f((v373 + 1.0e-20) / v371) * -10.0;
                  *(v30 + 572) = v374;
                  v375 = *(v30 + 32);
                  *(v30 + 32) = v373;
                  if (*(v30 + 140) == 1)
                  {
                    v376 = v480;
                    v302 = v522;
                    if (*(v30 + 544) <= *(v30 + 528) || *(v30 + 516) >= -20.0 || v374 >= -2.0)
                    {
                      v303 = v306;
                    }

                    else
                    {
                      *(v30 + 556) = 1;
                      v378 = v522[12];
                      if (v378 <= 1)
                      {
                        v379 = 1;
                      }

                      else
                      {
                        v379 = v522[12];
                      }

                      v377 = *(v520 + 72) - 1;
                      LODWORD(v380) = v377 + v378 + v378 * (((v377 & ~(v377 >> 31)) - (v377 + (v377 >> 31))) / v379 + (v377 >> 31));
                      do
                      {
                        v380 = (v380 - v378);
                      }

                      while (v380 >= v378);
                      *(v520 + 76) = v380;
                      dft_v3::GetIndexSequence(*(v520 + 88), v380, v522[11], v378);
                      LODWORD(v455) = *(v306 + 76);
                      lmsfilt_v3::runLmsFilter_v3((v519 + 248), v522[4], *(v306 + 16), *(v306 + 24), *(v520 + 16), *(v520 + 24), *(v520 + 88), *(v306 + 72), v455, v458, __nb, SHIDWORD(__nb));
                      dft_v3::dftSynthesis(*(v519 + 248), *(v519 + 256), v522);
                      aec_v5::get_EchoEst_Err(v511, v369, (*(v519 + 248) + 4 * v500), (*(v519 + 256) + 4 * v500), *(v519 + 88), v522);
                      LODWORD(__A.realp) = 0;
                      vDSP_svesq(v369, 1, &__A, v467);
                      v381 = log10f((*&__A.realp + 1.0e-20) / (*(v30 + 492) + 1.0e-20)) * -10.0;
                      *(v30 + 576) = v381;
                      if (v381 >= -0.5)
                      {
                        v303 = v306;
                      }

                      else
                      {
                        *(v30 + 552) = 1;
                        v303 = v516;
                        v489[2] = v516;
                        v489[4] = v306;
                        *(v30 + 32) = v375;
                        *(v30 + 488) = v375;
                      }

                      v376 = v480;
                      v302 = v522;
                    }

                    v382 = v521;
                  }

                  else
                  {
                    v303 = v306;
                    v382 = v521;
                    v302 = v522;
                    v376 = v480;
                  }

                  *(v30 + 560) = 0;
                  if (*(v30 + 556))
                  {
                    goto LABEL_327;
                  }

                  if (v304)
                  {
                    if (*(v30 + 380) > 0.02)
                    {
                      goto LABEL_332;
                    }
                  }

                  else if (v305)
                  {
LABEL_332:
                    *(v30 + 560) = 1;
                    v385 = v489[5];
                    if (*(v30 + 564) == 1)
                    {
                      *(v30 + 564) = 0;
                      v386 = 4 * *(v385 + 36);
                      memcpy(*v385, *v303, v386);
                      memcpy(*(v385 + 8), v303[1], v386);
                      memcpy(*(v385 + 16), v303[2], v386);
                      memcpy(*(v385 + 24), v303[3], v386);
                      memcpy(*(v385 + 48), v303[6], v386);
                      v387 = v303[9];
                      *(v385 + 72) = v387;
                    }

                    else
                    {
                      v387 = *(v385 + 72);
                    }

                    LODWORD(v455) = HIDWORD(v387);
                    lmsfilt_v3::runLmsFilter_v3((v519 + 248), *(v302 + 4), *(v385 + 16), *(v385 + 24), *(v520 + 16), *(v520 + 24), *(v520 + 88), v387, v455, v458, __nb, SHIDWORD(__nb));
                    dft_v3::dftSynthesis(*(v519 + 248), *(v519 + 256), v522);
                    aec_v5::get_EchoEst_Err(v511, v369, (*(v519 + 248) + 4 * v500), (*(v519 + 256) + 4 * v500), *(v519 + 80), v522);
                    v388 = *(v302 + 4);
                    vDSP_svesq(v369, 1, (v30 + 496), v388);
                    v389 = (v30 + 536);
                    vDSP_svesq(v511, 1, (v30 + 536), v388);
                    v390 = *(v30 + 496);
                    v391 = log10((v390 + 1.0e-20) / (*(v30 + 28) + 1.0e-20)) * 10.0;
                    *(v30 + 500) = v391;
                    v392 = log10((v390 + 1.0e-20) / (*(v30 + 212) + 1.0e-20)) * 10.0;
                    *(v30 + 504) = v392;
                    *(v30 + 524) = 0;
                    if (v391 < -1.0 && v392 < -1.0)
                    {
                      v302 = v522;
                      if (*(v30 + 508) < 0.0 && *(v30 + 512) < 0.0)
                      {
                        v394 = *v389;
                        if ((*v389 / v479) > 0.0000001 && v394 < (*(v30 + 16) * 10.0))
                        {
                          *(v30 + 524) = 1065353216;
                          v395 = (v394 + 1.0e-13) / (v390 + 1.0e-13);
                          *(v30 + 580) = log10f(v395) * 10.0;
                          *(v30 + 568) = 1;
                          __Nb = v511;
                          v506 = v369;
                          v301 = v390;
                        }
                      }
                    }

                    else
                    {
                      v302 = v522;
                    }

                    if (v391 <= 4.0)
                    {
                      learnrate_v3::updateStatistics_echo(*(v302 + 4), v369, v511, v30);
                      dft_v3::dftGenericAnalysis2ndHalf(v369, v514.realp, v514.imagp, v522, 1);
                      dft_v3::dftGenericAnalysis2ndHalf_dsc((*(v519 + 248) + 4 * v500), (*(v519 + 256) + 4 * v500), v513, v512, v522);
                      v449 = *(v30 + 136) * 2.5;
                      v450 = 0.5;
                      v451 = v449 <= 0.5;
                      v452 = v449 < 1.0 || v449 <= 0.5;
                      if (v449 >= 1.0)
                      {
                        v451 = 1;
                      }

                      if (!v452)
                      {
                        v450 = 1.0;
                      }

                      if (v451)
                      {
                        v449 = v450;
                      }

                      *&v448 = fminf(*(v30 + 132) * 2.5, 1.0);
                      *(v30 + 132) = LODWORD(v448);
                      *(v30 + 136) = v449;
                      learnrate_v3::getAdaptationRate3_v6(v30, (*(v520 + 96) + 4 * v522[10] * **(v520 + 88)), v522[11], v522[10], 2, v522[24], v448);
                      learnrate_v3::adaptLmsFilter_v3(v514.realp);
                      v382 = v521;
                      v302 = v522;
                      goto LABEL_348;
                    }

                    v396 = 4 * *(v385 + 36);
                    memcpy(*v385, *v303, v396);
                    memcpy(*(v385 + 8), v303[1], v396);
                    memcpy(*(v385 + 16), v303[2], v396);
                    memcpy(*(v385 + 24), v303[3], v396);
                    memcpy(*(v385 + 48), v303[6], v396);
                    *(v385 + 72) = v303[9];
LABEL_347:
                    v382 = v521;
LABEL_348:
                    v376 = v480;
                    goto LABEL_349;
                  }

LABEL_327:
                  *(v30 + 564) = 1;
LABEL_349:
                  v384 = v477;
                  v383 = v478;
                  goto LABEL_350;
                }

                v307 = *(v30 + 96);
                v308 = v522;
                v309 = v522[11];
                v310 = v516;
                if (v522[24])
                {
                  v311 = -0.1;
                }

                else if (*(v30 + 140))
                {
                  v311 = flt_1DE09B188[*(v30 + 380) > 2.6];
                }

                else
                {
                  v311 = 0.65;
                }

                v312 = *(v522 + 6);
                if (v309 == 1)
                {
                  *v307 = 1.0;
                  *(v521 + 167) = v312 * 0.5;
LABEL_289:
                  v362 = v308[11];
                  if (v362 != 1)
                  {
                    v363 = *(v30 + 88);
                    v364 = v308[10];
                    v365 = (*(v520 + 96) + 4 * **(v520 + 88) * v364);
                    if (v362 <= 1)
                    {
                      if (v364 >= 1)
                      {
                        do
                        {
                          v368 = *v365++;
                          *v363++ = 1.0 / v368;
                          --v364;
                        }

                        while (v364);
                      }
                    }

                    else
                    {
                      LODWORD(__A.realp) = **(v30 + 96);
                      MEMORY[0x1E12BE940](v365, 1, &__A, v363, 1, v364);
                      v366 = 4 * v362;
                      v367 = 4;
                      do
                      {
                        LODWORD(__A.realp) = *(*(v30 + 96) + v367);
                        if (*&__A.realp != 0.0)
                        {
                          MEMORY[0x1E12BE8F0](*(v520 + 96) + 4 * *(*(v520 + 88) + v367) * v364, 1, &__A, v363, 1, v363, 1, v364);
                        }

                        v367 += 4;
                      }

                      while (v366 != v367);
                      if (v364 >= 1)
                      {
                        do
                        {
                          *v363 = 1.0 / *v363;
                          ++v363;
                          --v364;
                        }

                        while (v364);
                      }
                    }

                    v310 = v516;
                  }

                  v304 = *(v30 + 544) < *(v30 + 528) || *(v30 + 140) == 0;
                  v305 = *(v30 + 380) > 0.15 && *(v30 + 384) > 0.65;
                  if (!v474 || !v304 && !v305)
                  {
                    learnrate_v3::adaptLmsFilter_v3(v514.realp);
                    v301 = *(v30 + 28);
                    v382 = v521;
                    v302 = v522;
                    v376 = v480;
                    v384 = v477;
                    v383 = v478;
                    v303 = v516;
LABEL_350:
                    v397 = v506;
                    v398 = *v499;
                    v399 = *v499 * 3.0;
                    if (v301 > v399)
                    {
                      v397 = *(v519 + 80);
                    }

                    if (*(v302 + 30) >= 1)
                    {
                      if (*(v30 + 32) <= v399 || *(v30 + 580) <= -3.0 || *(v30 + 8) <= -70.0 || (v400 = *(v30 + 16), v400 <= (v398 * 8.0)) || (__dsta / v479) <= 0.00000001 || *(v30 + 600) < 2)
                      {
                        *(v30 + 592) = 0;
                      }

                      else
                      {
                        v401 = v302[6];
                        v402 = v401 + *(v30 + 592);
                        *(v30 + 592) = v402;
                        if (v400 > (v398 * 32.0))
                        {
                          *(v30 + 596) = v401 + *(v30 + 596);
                        }

                        if (v402 > 100.0)
                        {
                          LODWORD(__A.realp) = 1056964608;
                          if (*(v30 + 596) > 100.0)
                          {
                            LODWORD(__A.realp) = 1048576000;
                          }

                          v403 = *(v303 + 9);
                          MEMORY[0x1E12BE940](*v303, 1, &__A, *v303, 1, v403);
                          MEMORY[0x1E12BE940](v303[1], 1, &__A, v303[1], 1, v403);
                          MEMORY[0x1E12BE940](v303[2], 1, &__A, v303[2], 1, v403);
                          MEMORY[0x1E12BE940](v303[3], 1, &__A, v303[3], 1, v403);
                          MEMORY[0x1E12BE940](v303[6], 1, &__A, v303[6], 1, v403);
                          *(v30 + 592) = 0;
                          v382 = v521;
                          v302 = v522;
                          v376 = v480;
                          v384 = v477;
                          v383 = v478;
                        }
                      }
                    }

                    *v383 = __Nb->real + (v515[3] * 0.9);
                    *v376 = *v397 + (v515[2] * 0.9);
                    if (v384 > 1)
                    {
                      v404 = v384 - 1;
                      p_imag = &__Nb->imag;
                      v406 = v397 + 1;
                      v407 = v383 + 1;
                      v408 = v376 + 1;
                      do
                      {
                        v409 = *p_imag++;
                        *v407 = v409 + (*(v407 - 1) * 0.9);
                        ++v407;
                        v410 = *v406++;
                        *v408 = v410 + (*(v408 - 1) * 0.9);
                        ++v408;
                        --v404;
                      }

                      while (v404);
                    }

                    v411 = 4 * v384 - 4;
                    v515[3] = *(v383 + v411);
                    v515[2] = *(v376 + v411);
                    *(v382 + 168) = *(v30 + 140);
                    *(v382 + 169) = *(v30 + 348);
                    v21 = *(v30 + 580);
                    v413 = *(v302 + 12);
                    if (v413 <= 1)
                    {
                      v414 = 1;
                    }

                    else
                    {
                      v414 = *(v302 + 12);
                    }

                    v412 = *(v520 + 72) + 1;
                    v415 = v412 + v413 + v413 * (((v412 & ~(v412 >> 31)) - (v412 + (v412 >> 31))) / v414 + (v412 >> 31));
                    do
                    {
                      v415 -= v413;
                    }

                    while (v415 >= v413);
                    *(v520 + 72) = v415;
                    v416 = *(v520 + 80);
                    v417 = v416 + 1;
                    v418 = (((v416 + 1) & ~((v416 + 1) >> 31)) - (v416 + 1 + ((v416 + 1) >> 31)) + 2 * ((v416 + 1) >> 31)) & 0xFFFFFFFE;
                    v419 = v416 + v418;
                    v420 = v418 + v417;
                    if (v420 >= 1)
                    {
                      v420 = 1;
                    }

                    *(v520 + 80) = v419 - ((v419 - v420 + 2) & 0xFFFFFFFE) + 1;
                    v421 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v382 + 32, 0);
                    if ((v422 & 1) == 0)
                    {
                      goto LABEL_416;
                    }

                    ausdk::AUElement::SetParameter(v421, 8u, *(v521 + 167));
                    v423 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v521 + 32, 0);
                    if ((v424 & 1) == 0)
                    {
                      goto LABEL_416;
                    }

                    ausdk::AUElement::SetParameter(v423, 0x21u, *(v521 + 168));
                    v425 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v521 + 32, 0);
                    if ((v426 & 1) == 0)
                    {
                      goto LABEL_416;
                    }

                    ausdk::AUElement::SetParameter(v425, 0x22u, *(v521 + 169));
                    v427 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v521 + 32, 0);
                    if ((v428 & 1) == 0)
                    {
                      goto LABEL_416;
                    }

                    ausdk::AUElement::SetParameter(v427, 0x25u, *(v521 + 190));
                    v429 = v521;
                    if (v517)
                    {
                      memcpy(v517, *(*(*(v521 + 86) + 56) + 96), 4 * *(v521 + 84));
                    }

                    if (mData)
                    {
                      memcpy(mData, *(*(*(v521 + 86) + 56) + 56), 4 * *(v521 + 84));
                    }

                    if (Parameter == 0.0)
                    {
                      LODWORD(__A.realp) = 0;
                      LODWORD(__Z.realp) = 0;
                      LODWORD(__C.realp) = 0;
                      v430 = *(v521 + 88);
                      v431 = *(v521 + 87);
                      v432 = *(v521 + 86);
                      v433 = 16;
                      if (*(*(v432 + 48) + 568) > 0)
                      {
                        v433 = 40;
                      }

                      memcpy(*(v521 + 87), *(*(v432 + v433) + 48), 4 * *(*(v432 + v433) + 36));
                      *&v434 = 0.0;
                      if (*(*(*(v521 + 86) + 48) + 224) || (v435 = ((v430 - v431) >> 2), MEMORY[0x1E12BE9A0](*(v521 + 87), 1, *(v521 + 89), 1, *(v521 + 91), 1, v435, 0.0), MEMORY[0x1E12BE990](*(v521 + 91), 1, *(v521 + 91), 1, v435), vDSP_sve(*(v521 + 91), 1, &__A, v435), MEMORY[0x1E12BE990](*(v521 + 89), 1, *(v521 + 93), 1, v435), vDSP_sve(*(v521 + 93), 1, &__Z, v435), MEMORY[0x1E12BE990](*(v521 + 87), 1, *(v521 + 93), 1, v435), vDSP_sve(*(v521 + 93), 1, &__C, v435), v436 = *&__Z.realp + 0.00000001, *&__Z.realp = (*&__C.realp * 0.2) + (v436 * 0.8), v437 = *&__A.realp * 100.0 / *&__Z.realp, *&v434 = 800.0, v429 = v521, v437 > 800.0))
                      {
                        v437 = *&v434;
                      }

                      std::valarray<float>::__assign_range(v429 + 712, *(v429 + 87), *(v429 + 88));
                      v429 = v521;
                    }

                    else
                    {
                      v437 = 0.0;
                    }

                    v438 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v429 + 32, 0);
                    if ((v439 & 1) == 0)
                    {
                      goto LABEL_416;
                    }

                    ausdk::AUElement::SetParameter(v438, 3u, v437);
                    v14 = 0;
                    v11 = v521;
                    goto LABEL_394;
                  }

                  v489[2] = v470;
                  v489[4] = v310;
                  learnrate_v3::adaptLmsFilter_v3(v514.realp);
                  v301 = *(v30 + 28);
                  v306 = v470;
                  v302 = v522;
                  goto LABEL_309;
                }

                v313 = *(v520 + 104);
                if (v309 <= 1)
                {
                  v314 = 0;
                  v318 = *v313;
                  v317 = *(v520 + 104);
                }

                else
                {
                  v314 = 0;
                  v315 = *v307;
                  for (i = 1; i != v309; ++i)
                  {
                    if (v307[i] >= v315)
                    {
                      v314 = i;
                      v315 = v307[i];
                    }
                  }

                  v317 = &v313[v314];
                  v318 = *v317;
                  if (v314 >= 1)
                  {
                    v319 = &v313[v314];
                    v320 = *(v319 - 1);
                    if (v314 == 1)
                    {
                      v321 = *(v319 - 1);
                    }

                    else
                    {
                      v321 = *(v319 - 2);
                    }

                    goto LABEL_261;
                  }
                }

                v320 = v318;
                v321 = v318;
LABEL_261:
                *&v300 = v318;
                if (v314 < v309 - 1)
                {
                  *&v300 = v317[1];
                }

                LODWORD(v322) = v300;
                if (v314 < v309 - 2)
                {
                  v322 = v317[2];
                }

                if (fabsf(v318 - v322) <= 10.0)
                {
                  v323.i64[0] = __PAIR64__(LODWORD(v322), LODWORD(v320));
                  v323.i64[1] = __PAIR64__(LODWORD(v320), LODWORD(v318));
                  v324 = v300;
                  *&v324.i32[1] = v318;
                  v325 = vzip1q_s32(v324, v324);
                  v325.i32[2] = v300;
                  v326 = vabds_f32(v321, v320);
                  v327 = fabsf(v321 - v318);
                  v328 = (vaddvq_s32(vandq_s8(vcgtq_f32(vabsq_f32(vsubq_f32(v323, v325)), xmmword_1DE09CC90), xmmword_1DE098920)) & 0xF) == 0 && v327 <= 10.0;
                  if (v328 && v326 <= 8.0)
                  {
                    v330 = v522[4];
                    v510 = *(v30 + 112);
                    LODWORD(__Z.realp) = 0;
                    LODWORD(__C.realp) = 0;
                    LODWORD(v528.realp) = 0;
                    v331 = *(v516 + 72);
                    v332 = *(v516 + 76);
                    if (*(v516 + 68) == 1)
                    {
                      if (v331 >= 1)
                      {
                        v333 = *(v516 + 76);
                        v334 = v307;
                        v335 = *(v516 + 72);
                        vDSP_vfill(&v528, v307, 1, v331);
                        vDSP_vfill(&v528, v510, 1, v335);
                        v310 = v516;
                        v307 = v334;
                        v332 = v333;
                        LODWORD(v331) = v335;
                      }

                      v336 = v332 + 1;
                      if (v309 - (v332 + 1) >= 1)
                      {
                        v337 = v331;
                        v338 = v332;
                        v339 = v307;
                        vDSP_vfill(&v528, &v307[v336], 1, (v309 - v336));
                        vDSP_vfill(&v528, v510 + v336, 1, (v309 - v336));
                        v310 = v516;
                        v307 = v339;
                        v332 = v338;
                        LODWORD(v331) = v337;
                      }
                    }

                    v340 = v331;
                    if (v331 <= v332)
                    {
                      __Be = v307;
                      v488 = v332;
                      v344 = v332 + 1;
                      v345 = 4 * v331 * v330;
                      v346 = &__A + v331;
                      v476 = v331;
                      v347 = v510 + v331;
                      v343 = 0.0;
                      v483 = v331;
                      v348 = v331;
                      v349 = 0.0;
                      do
                      {
                        v350 = *(v516 + 8);
                        vDSP_svesq((*v516 + v345), 1, &__Z, v330);
                        vDSP_svesq((v350 + v345), 1, &__C, v330);
                        v351 = *&__Z.realp + *&__C.realp;
                        v352 = (1.0 / v330) * (*&__Z.realp + *&__C.realp);
                        *v347++ = (*&__Z.realp + *&__C.realp) + 1.0e-20;
                        v353 = sqrtf(v352) + 0.02;
                        *v346++ = v353;
                        v343 = v343 + (v348 * v351);
                        v342 = v351 + *&v528.realp;
                        *&v528.realp = v342;
                        v349 = v349 + v353;
                        v345 += 4 * v330;
                        ++v348;
                      }

                      while (v344 != v348);
                      v341 = v349 + v349;
                      v310 = v516;
                      v307 = __Be;
                      v332 = v488;
                      LODWORD(v331) = v483;
                      v340 = v476;
                    }

                    else
                    {
                      v341 = 0.0;
                      v342 = *&v528.realp;
                      v343 = 0.0;
                    }

                    v308 = v522;
                    *(v521 + 166) = v342;
                    v354 = 1.0 / (v342 + 1.0e-20);
                    v355 = ((v309 + -0.5) - (v343 * v354)) * v312;
                    if (v355 < 0.0)
                    {
                      v355 = 0.0;
                    }

                    *(v521 + 167) = v355;
                    if (v331 <= v332)
                    {
                      v356 = v332 - v331 + 1;
                      v357 = v510 + v340;
                      v358 = &v307[v340];
                      v359 = &__A + v340;
                      v360 = (v311 + 1.0) / v341;
                      do
                      {
                        v361 = *v359++;
                        *v358++ = ((1.0 - v311) / (v309 + v309)) + (v360 * v361);
                        *v357 = v354 * *v357;
                        ++v357;
                        --v356;
                      }

                      while (v356);
                    }
                  }
                }

                goto LABEL_289;
              }

              *(v30 + 220) = 0;
            }

            __Nb = v168;
            v506 = v167;
            goto LABEL_207;
          }

LABEL_159:
          v227 = *(v30 + 236);
          if (v227 < 1)
          {
            v228 = 0;
            v174 = v522;
          }

          else
          {
            v228 = 0;
            v229 = v199;
            v230 = *(v30 + 236);
            v174 = v522;
            do
            {
              v231 = *v229++;
              v228 += v231;
              --v230;
            }

            while (v230);
          }

          v232 = *(v30 + 240);
          if (v232 < 1)
          {
            v236 = 0.0;
          }

          else
          {
            v233 = 0;
            v234 = *(v30 + 240);
            do
            {
              v235 = *v199++;
              v233 += v235;
              --v234;
            }

            while (v234);
            v236 = v233 * 1.5;
          }

          v237 = *(v30 + 248);
          if (v237 < 1)
          {
            v238 = 0;
          }

          else
          {
            v238 = 0;
            v239 = *(v30 + 248);
            do
            {
              v240 = *v217++;
              v238 += v240;
              --v239;
            }

            while (v239);
          }

          v241 = v195[1];
          if (*v195 < v241 || v241 < v195[2])
          {
            v242 = *v30 == 1 && v228 == v227;
            v243 = v242 && v238 == v237;
            if (v243 && v236 > v232)
            {
              *(v481 + 60) = 1;
            }
          }

          goto LABEL_187;
        }
      }

      if (v222 < v218)
      {
        goto LABEL_159;
      }

      goto LABEL_157;
    }

    if (*(v30 + 140) != 1)
    {
LABEL_130:
      if (v68[25] >= 1)
      {
        *(v489[5] + 72) = *(v81 + 72);
      }

      goto LABEL_132;
    }

    LODWORD(__A.realp) = 0;
    v83 = *(v516 + 72);
    v82 = *(v516 + 76);
    v84 = v68[11];
    v85 = 1.0;
    if (v84 < 1)
    {
      v87 = 0;
      v90 = 0;
      v89 = 0.0;
LABEL_105:
      v149 = *(v30 + 584) * 0.95;
      *(v30 + 584) = v149;
      if ((v89 * 0.9) <= v149)
      {
        v87 = *(v30 + 588);
      }

      else
      {
        *(v30 + 588) = v87;
        *(v30 + 584) = v89;
      }

      v150 = (v87 - *(v516 + 80)) & ~((v87 - *(v516 + 80)) >> 31);
      if (v150 + *(v516 + 84) >= v84)
      {
        v151 = v84;
      }

      else
      {
        v151 = v150 + *(v516 + 84);
      }

      vDSP_sve((*(v30 + 112) + 4 * v150), 1, &__A, v151 - v150);
      v152 = v151 - 1 - v150 + v90;
      if (v152 <= 1)
      {
        v152 = 1;
      }

      v153 = v89 / ((v85 * (*&__A.realp - v89)) / v152);
      v154 = *(v30 + 544);
      if (v154 <= 2.0 || v153 <= 5.0)
      {
        v68 = v522;
        v80 = v519;
        if (v154 > 2.0 && v153 < 3.0)
        {
          ++v82;
          --v83;
        }
      }

      else
      {
        if (v83 <= v150)
        {
          v155 = 0;
        }

        else
        {
          v155 = -1;
        }

        if (v83 < v150)
        {
          v155 = 1;
        }

        v83 += v155;
        v68 = v522;
        if (v82 >= v151 - 1)
        {
          v82 -= v82 >= v151;
        }

        else
        {
          ++v82;
        }

        v80 = v519;
      }

      v156 = v84 - 1;
      if (v82 < v84)
      {
        v156 = v82;
      }

      v81 = v516;
      *(v516 + 72) = v83 & ~(v83 >> 31);
      *(v516 + 76) = v156;
      goto LABEL_130;
    }

    v86 = 0;
    v87 = 0;
    v88 = *(v30 + 112);
    v89 = 0.0;
    do
    {
      if (*(v88 + 4 * v86) > v89)
      {
        v87 = v86;
        v89 = *(v88 + 4 * v86);
      }

      ++v86;
    }

    while (v84 != v86);
    v90 = 0;
    if (v84 < 4 || *(v522 + 6) >= 12.0)
    {
      goto LABEL_105;
    }

    v91 = v87 + 1;
    if (v91 == v84)
    {
      v92 = *(v88 + 4 * v87 - 4);
    }

    else
    {
      if (v87)
      {
        v89 = v89 + ((*(v88 + 4 * v87 - 4) + *(v88 + 4 * v91)) * 0.5);
LABEL_104:
        v85 = 2.0;
        v90 = -1;
        goto LABEL_105;
      }

      v92 = *(v88 + 4);
    }

    v89 = v89 + v92;
    goto LABEL_104;
  }

  if (v15 != v16)
  {
    Element = ausdk::AUScope::GetElement((v11 + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    memcpy(v16, v15, (*(Element + 104) * a3));
    v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v11 + 32, 0);
    if ((v41 & 1) == 0)
    {
      goto LABEL_416;
    }

    ausdk::AUElement::SetParameter(v40, 3u, 0.0);
    v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v11 + 32, 0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_416;
    }

    ausdk::AUElement::SetParameter(v42, 0x24u, 0.0);
  }

  return 0;
}

uint64_t AULinearEchoCancelerV3::InitializeEC(AULinearEchoCancelerV3 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 80);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v4, 0), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0) || (v9 = ausdk::AUElement::GetParameter(v7, 0x28u), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (v12 = ausdk::AUElement::GetParameter(v10, 0x29u), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v14 & 1) == 0))
  {
LABEL_42:
    abort();
  }

  *(this + 136) = ausdk::AUElement::GetParameter(v13, 0x27u);
  if (Parameter)
  {
    if (v9 <= 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = v9;
    }

    (*(*this + 64))(this);
    *(this + 139) = v3;
    v16 = *(this + 84);
    v17 = v3 / (v16 * 1000.0);
    v18 = (ceilf(v17 * Parameter) * v16);
    *(this + 135) = v18;
    v19 = (ceilf(v17 * v15) * v16);
    v20 = (ceilf(v17 * v12) * v16);
    *(this + 137) = v19;
    v21 = v16 + v19;
    if (v19 < v20)
    {
      v21 = v20;
    }

    *(this + 138) = v21;
    if (v21 >= v18)
    {
      *(this + 138) = v18;
      *(this + 68) = 0;
    }

    v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v23)
    {
      *(this + 140) = ausdk::AUElement::GetParameter(v22, 5u);
      v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v25)
      {
        *(this + 142) = ausdk::AUElement::GetParameter(v24, 9u);
        v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v27)
        {
          *(this + 143) = ausdk::AUElement::GetParameter(v26, 0xAu);
          v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v29)
          {
            *(this + 144) = ausdk::AUElement::GetParameter(v28, 0xBu);
            v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v31)
            {
              *(this + 145) = ausdk::AUElement::GetParameter(v30, 0xCu);
              v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v33)
              {
                *(this + 146) = ausdk::AUElement::GetParameter(v32, 0xDu);
                v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v35)
                {
                  *(this + 147) = ausdk::AUElement::GetParameter(v34, 0xEu);
                  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v37)
                  {
                    *(this + 148) = ausdk::AUElement::GetParameter(v36, 0xFu);
                    v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v39)
                    {
                      *(this + 149) = ausdk::AUElement::GetParameter(v38, 0x10u);
                      v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v41)
                      {
                        *(this + 150) = ausdk::AUElement::GetParameter(v40, 0x11u);
                        v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v43)
                        {
                          *(this + 151) = ausdk::AUElement::GetParameter(v42, 0x12u);
                          v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v45)
                          {
                            *(this + 152) = ausdk::AUElement::GetParameter(v44, 0x13u);
                            v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v47)
                            {
                              *(this + 153) = ausdk::AUElement::GetParameter(v46, 0x14u);
                              v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v49)
                              {
                                *(this + 154) = ausdk::AUElement::GetParameter(v48, 0x15u);
                                v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v51)
                                {
                                  *(this + 155) = ausdk::AUElement::GetParameter(v50, 0x16u);
                                  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v53)
                                  {
                                    *(this + 158) = ausdk::AUElement::GetParameter(v52, 0x17u);
                                    v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if (v55)
                                    {
                                      *(this + 159) = ausdk::AUElement::GetParameter(v54, 0x18u);
                                      v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if (v57)
                                      {
                                        *(this + 156) = ausdk::AUElement::GetParameter(v56, 0x19u);
                                        v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                        if (v59)
                                        {
                                          *(this + 157) = ausdk::AUElement::GetParameter(v58, 0x1Au);
                                          v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if (v61)
                                          {
                                            *(this + 160) = ausdk::AUElement::GetParameter(v60, 0x1Bu);
                                            v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                            if (v63)
                                            {
                                              *(this + 644) = ausdk::AUElement::GetParameter(v62, 0x1Cu) != 0.0;
                                              v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                              if (v65)
                                              {
                                                *(this + 162) = ausdk::AUElement::GetParameter(v64, 0x1Du);
                                                v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                if (v67)
                                                {
                                                  *(this + 163) = ausdk::AUElement::GetParameter(v66, 0x1Eu);
                                                  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                  if (v69)
                                                  {
                                                    *(this + 164) = ausdk::AUElement::GetParameter(v68, 0x1Fu);
                                                    v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                    if (v71)
                                                    {
                                                      *(this + 165) = ausdk::AUElement::GetParameter(v70, 0x20u);
                                                      v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                      if (v73)
                                                      {
                                                        v74 = ausdk::AUElement::GetParameter(v72, 0x26u);
                                                        *(this + 141) = v74;
                                                        aec_v3::aec_init(this + 86, *(this + 139), *(this + 135), *(this + 84), *(this + 142), *(this + 143), *(this + 644), v74);
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
              }
            }
          }
        }
      }
    }

    goto LABEL_42;
  }

  return 4294956428;
}

uint64_t std::valarray<float>::__assign_range(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v4 = a3 - __src;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 - v5 != a3 - __src)
  {
    if (v5)
    {
      if (v6 != v5)
      {
        *(a1 + 8) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      operator delete(v5);
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (a3 != __src)
  {
    memmove(v5, __src, a3 - __src);
  }

  return a1;
}

uint64_t AULinearEchoCancelerV3::SetParameter(AULinearEchoCancelerV3 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {
LABEL_2:

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  if (a2 > 0x29 || ((1 << a2) & 0x30000000001) == 0)
  {
    a3 = 0;
    goto LABEL_2;
  }

  if (*(this + 17) == 1)
  {
    ++*(this + 133);
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a5);
  return 0;
}

uint64_t AULinearEchoCancelerV3::SetProperty(AULinearEchoCancelerV3 *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
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

uint64_t AULinearEchoCancelerV3::GetProperty(AULinearEchoCancelerV3 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v7 = *(this + 376);
    goto LABEL_7;
  }

  if (a2 == 21)
  {
    v7 = (*(*this + 576))(this);
LABEL_7:
    result = 0;
    *a5 = v7;
    return result;
  }

  return 4294956417;
}

uint64_t AULinearEchoCancelerV3::GetPropertyInfo(AULinearEchoCancelerV3 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

void AULinearEchoCancelerV3::Cleanup(void ***this)
{
  if (this[86])
  {
    v1 = this + 86;
    aec_v3::aec_remove(this + 86);
    *v1 = 0;
  }
}

uint64_t AULinearEchoCancelerV3::Initialize(AULinearEchoCancelerV3 *this)
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

  v4 = *(this + 21);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(v4);
  }

  else
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v3 >= 2)
  {
    v6 = 1;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), v6 - 1);
      if (!Element)
      {
        break;
      }

      v8 = Element;
      v9 = ausdk::AUScope::GetElement((this + 80), v6);
      if (!v9)
      {
        break;
      }

      if (*(v8 + 80) != *(v9 + 80))
      {
        return 4294956428;
      }

      if (v3 == ++v6)
      {
        goto LABEL_13;
      }
    }

LABEL_26:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_13:
  if (v5 >= 2)
  {
    v10 = 1;
    do
    {
      v11 = ausdk::AUScope::GetElement((this + 128), v10 - 1);
      if (!v11)
      {
        goto LABEL_26;
      }

      v12 = v11;
      v13 = ausdk::AUScope::GetElement((this + 128), v10);
      if (!v13)
      {
        goto LABEL_26;
      }

      if (*(v12 + 80) != *(v13 + 80))
      {
        return 4294956428;
      }
    }

    while (v5 != ++v10);
  }

  v14 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = *(v14 + 80);
  v16 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v16)
  {
    goto LABEL_26;
  }

  if (v15 != *(v16 + 80))
  {
    return 4294956428;
  }

  *(this + 134) = *(this + 133);
  *(this + 664) = 0u;
  *(this + 85) = vdup_n_s32(0xC2C80000);

  return AULinearEchoCancelerV3::InitializeEC(this);
}

void AULinearEchoCancelerV3::~AULinearEchoCancelerV3(void ***this)
{
  AULinearEchoCancelerV3::~AULinearEchoCancelerV3(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5923258;
  if (this[86])
  {
    aec_v3::aec_remove(this + 86);
    this[86] = 0;
  }

  v2 = this[93];
  if (v2)
  {
    v3 = this[94];
    if (v3 != v2)
    {
      this[94] = (v3 + ((v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    }

    operator delete(v2);
    this[93] = 0;
    this[94] = 0;
  }

  v4 = this[91];
  if (v4)
  {
    v5 = this[92];
    if (v5 != v4)
    {
      this[92] = (v5 + ((v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    }

    operator delete(v4);
    this[91] = 0;
    this[92] = 0;
  }

  v6 = this[89];
  if (v6)
  {
    v7 = this[90];
    if (v7 != v6)
    {
      this[90] = (v7 + ((v6 - v7 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    }

    operator delete(v6);
    this[89] = 0;
    this[90] = 0;
  }

  v8 = this[87];
  if (v8)
  {
    v9 = this[88];
    if (v9 != v8)
    {
      this[88] = (v9 + ((v8 - v9 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    }

    operator delete(v8);
    this[87] = 0;
    this[88] = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t std::valarray<float>::~valarray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t IR::Source::initialize(IR::Source *this, float a2)
{
  *(this + 4) = a2;
  *(this + 176) = 1;
  return 0;
}

uint64_t IR::DataLoaderSource::getModelingDelay(IR::DataLoaderSource *this)
{
  if (*(this + 176) != 1)
  {
    JUMPOUT(0x1E12BBF00);
  }

  return *(this + 43);
}

IR::IRData *IR::DataLoaderSource::getLatency(IR::DataLoaderSource *this)
{
  result = *(this + 28);
  if (result)
  {
    result = IR::IRData::getProcessingDelay(result);
  }

  if ((*(this + 24) & 1) == 0)
  {
    return (*(this + 5) + result);
  }

  return result;
}

uint64_t *IR::DataLoaderSource::getUserData@<X0>(IR::DataLoaderSource *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = IR::IRDataLoader::instance(this);

  return IR::IRDataLoader::getUserData(a2, v4, (this + 8));
}

__n128 IR::DataLoaderSource::setCoordinates(uint64_t a1, uint64_t a2)
{
  if (IR::IRCoordinates::operator!=())
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(a1 + 216) = *(a2 + 32);
    *(a1 + 200) = v5;
    *(a1 + 184) = result;
    *(a1 + 221) = 1;
  }

  return result;
}

uint64_t IR::DataLoaderSource::setCoordinate(uint64_t a1, int a2, float a3)
{
  result = IR::IRCoordinates::get();
  if (v7 != a3)
  {
    IR::IRCoordinates::set();
    result = IR::IRData::canInterpolateInDimension();
    if (a2 == 8 || result)
    {
      *(a1 + 221) = 1;
    }
  }

  return result;
}

uint64_t IR::DataLoaderSource::initialize(IR::DataLoaderSource *this, float a2)
{
  v3 = *(this + 1);
  *(this + 4) = a2;
  *(this + 176) = 1;
  if (v3)
  {
    IR::IRDataLoader::instance(this);
    __dst[23] = 19;
    strcpy(__dst, "IRDataInterpolator|");
    v18 = 0;
    cf = 0;
    __p = 0;
    v17 = 0;
    IR::IRDataLoader::load();
    v4 = v20;
    v20 = 0uLL;
    v5 = *(this + 29);
    *(this + 14) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
      }
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  else
  {
    v6 = *(this + 29);
    *(this + 28) = 0;
    *(this + 29) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v7 = *(this + 28);
  if (v7)
  {
    *(this + 42) = IR::IRData::getNumFiltersPerSpatialPoint(v7);
    *(this + 40) = IR::IRData::getFilterLength(*(this + 28));
    IR::IRData::getMaxDelay(*(this + 28));
    *(this + 41) = vcvtps_u32_f32(v8);
    *(this + 45) = IR::IRData::getAudioChannelLayoutTag(*(this + 28));
    *(this + 43) = IR::IRData::getModelingDelay(*(this + 28));
    IR::IRData::getDefaultCoordinates(__dst, *(this + 28));
    v9 = *&__dst[16];
    *(this + 184) = *__dst;
    *(this + 200) = v9;
    *(this + 54) = v15;
    v10 = *(this + 28);
    if (v10)
    {
      DataLayout = IR::IRData::getDataLayout(v10);
      memset(__dst, 0, 24);
      v12 = DataLayout[1];
      if (v12 != *DataLayout)
      {
        std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](__dst, (v12 - *DataLayout) >> 2);
      }
    }

    result = 0;
    *(this + 220) = 0;
  }

  else
  {
    *(this + 20) = 0;
    *(this + 21) = 0;
    result = 4294956425;
    *(this + 176) = 0;
  }

  return result;
}

void sub_1DDDC9424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::DataLoaderSourceWithSizeAverage::getCoefficients(uint64_t a1, void *a2)
{
  Coefficients = IR::DataLoaderSource::getCoefficients(a1);
  if (!Coefficients)
  {
    IR::IRCoordinates::get();
    if (v5 > 0.0)
    {
      if (IR::IRData::isAverageIRComputed(*(a1 + 224)))
      {
        AverageIR = IR::IRData::getAverageIR(*(a1 + 224));
        if (-858993459 * ((a2[1] - *a2) >> 3) >= -858993459 * ((AverageIR[1] - *AverageIR) >> 3))
        {
          v7 = -858993459 * ((AverageIR[1] - *AverageIR) >> 3);
        }

        else
        {
          v7 = -858993459 * ((a2[1] - *a2) >> 3);
        }

        if (v7)
        {
          IR::FFTFilterKernel<float>::scale();
        }
      }
    }
  }

  return Coefficients;
}

void IR::DataLoaderSourceWithSizeAverage::~DataLoaderSourceWithSizeAverage(IR::DataLoaderSourceWithSizeAverage *this)
{
  *this = &unk_1F59308E8;
  v2 = *(this + 29);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59308E8;
  v2 = *(this + 29);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));
}

uint64_t std::__split_buffer<IR::FFTFilterKernel<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    MEMORY[0x1E12BBDC0]();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = MEMORY[0x1E12BBDC0](v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t IR::WeightedSumOfCache::getCoefficients(uint64_t a1, void *a2)
{
  v2 = 1852793972;
  *(a1 + 232) = 0;
  v3 = *(a1 + 184);
  *(a1 + 236) = *(v3 + 280);
  if (*(a1 + 176) == 1)
  {
    if (*(v3 + 160))
    {
      v5 = v3 + 184;
      v4 = *(v3 + 184);
      if (-1431655765 * ((*(v5 + 8) - v4) >> 3))
      {
        v7 = *v4;
        v6 = v4[1];
        v8 = v6 - v7;
        if (v6 != v7)
        {
          v9 = *(a1 + 200);
          if (v9 != *(a1 + 208))
          {
            if (-858993459 * (v8 >> 3) >= -858993459 * ((a2[1] - *a2) >> 3))
            {
              v10 = -858993459 * ((a2[1] - *a2) >> 3);
            }

            else
            {
              v10 = -858993459 * (v8 >> 3);
            }

            if (fabsf(*v9) <= 0.0001)
            {
              if (v10)
              {
                IR::FFTFilterKernel<float>::reset();
              }
            }

            else if (v10)
            {
              IR::FFTFilterKernel<float>::overwrite();
            }

            if (v10 < -858993459 * ((a2[1] - *a2) >> 3))
            {
              IR::FFTFilterKernel<float>::reset();
            }

            v12 = *(a1 + 184);
            v13 = *(v12 + 176);
            v15 = *(a1 + 200);
            v14 = *(a1 + 208);
            if (v13 >= ((v14 - v15) >> 2))
            {
              v13 = (v14 - v15) >> 2;
            }

            if (v13 >= 2)
            {
              v16 = 1;
              do
              {
                ++v16;
                LODWORD(v17) = *(v12 + 176);
                v18 = (v14 - v15) >> 2;
                if (v17 >= v18)
                {
                  v17 = v18;
                }

                else
                {
                  v17 = v17;
                }
              }

              while (v16 < v17);
            }

            return 0;
          }

          v2 = 4294956429;
        }
      }
    }
  }

  if (-858993459 * ((a2[1] - *a2) >> 3))
  {
    IR::FFTFilterKernel<float>::reset();
  }

  return v2;
}

uint64_t IR::WeightedSumOfCache::needToUpdateCoeffs(IR::WeightedSumOfCache *this, int a2)
{
  v2 = *(this + 60) + a2;
  *(this + 60) = v2;
  v3 = v2 % *(this + 56);
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    *(this + 60) = v3;
    if (*(this + 59) == *(*(this + 23) + 280))
    {
      v4 = *(this + 232);
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

IR::IRData *IR::WeightedSumOfCache::getLatency(IR::WeightedSumOfCache *this)
{
  v1 = *(this + 23);
  result = *(v1 + 160);
  if (result)
  {
    result = IR::IRData::getProcessingDelay(result);
  }

  if ((*(v1 + 24) & 1) == 0)
  {
    return (*(v1 + 20) + result);
  }

  return result;
}

uint64_t *IR::WeightedSumOfCache::getUserData@<X0>(IR::WeightedSumOfCache *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = IR::IRDataLoader::instance(this);

  return IR::IRDataLoader::getUserData(a2, v4, (this + 8));
}

uint64_t IR::WeightedSumOfCache::initialize(IR::WeightedSumOfCache *this, float a2)
{
  v3 = *(this + 23);
  if (v3 && *(v3 + 160))
  {
    IR::IRDataAttributes::operator=(this + 8, v3 + 8);
    *(this + 42) = IR::IRData::getNumFiltersPerSpatialPoint(*(*(this + 23) + 160));
    *(this + 40) = IR::IRData::getFilterLength(*(*(this + 23) + 160));
    IR::IRData::getMaxDelay(*(*(this + 23) + 160));
    *(this + 41) = vcvtps_u32_f32(v4);
    *(this + 45) = IR::IRData::getAudioChannelLayoutTag(*(*(this + 23) + 160));
    *(this + 43) = IR::IRData::getModelingDelay(*(*(this + 23) + 160));
    v5 = *(*(this + 23) + 176);
    v8 = 0;
    std::vector<float>::resize(this + 25, v5, &v8, v6);
    result = 0;
    *(this + 60) = *(this + 57) % *(this + 56);
    *(this + 176) = 1;
  }

  else
  {
    *(this + 20) = 0;
    *(this + 21) = 0;
    result = 1852793972;
    *(this + 176) = 0;
  }

  return result;
}

void IR::WeightedSumOfCache::~WeightedSumOfCache(IR::WeightedSumOfCache *this)
{
  *this = &unk_1F592D5F8;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592D5F8;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));
}

void IR::DataLoaderSourceWithTruncation::getCoefficients(uint64_t a1)
{
  *(a1 + 221) = 0;
  IR::IRData::getFilterLength(*(a1 + 224));
  IR::IRData::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
}

uint64_t IR::DataLoaderSourceWithTruncation::initialize(IR::DataLoaderSourceWithTruncation *this, float a2)
{
  v3 = IR::DataLoaderSource::initialize(this, a2);
  std::vector<float>::resize(this + 34, *(this + 42));
  std::vector<std::vector<float>>::resize(this + 31, *(this + 42));
  v4 = *(this + 31);
  v5 = *(this + 32);
  while (v4 != v5)
  {
    std::vector<float>::resize(v4, *(this + 40));
    v4 += 3;
  }

  return v3;
}

void IR::DataLoaderSourceWithTruncation::~DataLoaderSourceWithTruncation(IR::DataLoaderSourceWithTruncation *this)
{
  *this = &unk_1F59234B8;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v4 = (this + 248);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = &unk_1F59308E8;
  v3 = *(this + 29);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));
  MEMORY[0x1E12BD160](this, 0x10E1C40F0CA8365);
}

{
  *this = &unk_1F59234B8;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v4 = (this + 248);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = &unk_1F59308E8;
  v3 = *(this + 29);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));
}

float IR::WeightedSumOfCache::calculateSumOfWeights(IR::WeightedSumOfCache *this)
{
  result = 0.0;
  if (*(this + 176) == 1)
  {
    v7 = v1;
    v8 = v2;
    v4 = *(this + 25);
    v5 = (*(this + 26) - v4) >> 2;
    v6 = 0.0;
    vDSP_sve(v4, 1, &v6, v5);
    return v6;
  }

  return result;
}

BOOL AUMidSide::ValidFormat(AUMidSide *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (a4->mChannelsPerFrame != 2)
  {
    return 0;
  }

  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    return (LOBYTE(a4->mFormatFlags) >> 5) & 1;
  }

  return result;
}

uint64_t AUMidSide::SupportedNumChannels(AUMidSide *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMidSide::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUMidSide::GetParameterInfo(AUMidSide *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  if (!a3)
  {
    v6 = @"Mid gain";
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v6 = @"Side gain";
LABEL_7:
    buffer->cfNameString = v6;
    buffer->flags = 0x8000000;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 0x40C00000C2700000;
    v7 = buffer->flags | 0xC0000000;
    buffer->defaultValue = 0.0;
    buffer->flags = v7;
    return result;
  }

  return 4294956418;
}

ausdk::AUInputElement *AUMidSide::Render(AUMidSide *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUMidSide::ProcessBufferLists(AUMidSide *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  mNumberBuffers = a3->mNumberBuffers;
  if (*(this + 544) == 1)
  {
    if (mNumberBuffers == a4->mNumberBuffers && a3->mNumberBuffers)
    {
      v8 = 0;
      p_mData = &a4->mBuffers[0].mData;
      v10 = &a3->mBuffers[0].mData;
      do
      {
        v11 = *(v10 - 1);
        if (v11 == *(p_mData - 1) && *v10 != *p_mData)
        {
          memcpy(*p_mData, *v10, v11);
          mNumberBuffers = a3->mNumberBuffers;
        }

        ++v8;
        p_mData += 2;
        v10 += 2;
      }

      while (v8 < mNumberBuffers);
    }
  }

  else
  {
    if (mNumberBuffers != 2 || a4->mNumberBuffers != 2)
    {
      return 4294956428;
    }

    v16 = *(this + 134);
    if (v16 == *(this + 135))
    {
      v17 = *(this + 133);
    }

    else
    {
      *(this + 135) = v16;
      v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v19 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v18, 0), *(this + 132) = __exp10f(Parameter * 0.05), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v22 & 1) == 0))
      {
        abort();
      }

      v23 = ausdk::AUElement::GetParameter(v21, 1u);
      v17 = __exp10f(v23 * 0.05);
      *(this + 133) = v17;
    }

    mData = a3->mBuffers[0].mData;
    v25 = *&a3[1].mBuffers[0].mNumberChannels;
    v26 = a4->mBuffers[0].mData;
    v27 = *&a4[1].mBuffers[0].mNumberChannels;
    v28 = *(this + 132);
    v29 = v28 - v17;
    v30 = v28 + v17;
    MEMORY[0x1E12BE930](mData, 1, &v30, v25, 1, &v29, v26, 1, a5);
    MEMORY[0x1E12BE930](v25, 1, &v30, mData, 1, &v29, v27, 1, a5);
  }

  return 0;
}

uint64_t AUMidSide::SetParameter(AUMidSide *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  ++*(this + 134);
  return result;
}

uint64_t AUMidSide::SetProperty(AUMidSide *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 544) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUMidSide::GetProperty(AUMidSide *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    result = 0;
    *a5 = *(this + 544);
  }

  return result;
}

uint64_t AUMidSide::GetPropertyInfo(AUMidSide *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUMidSide::Initialize(AUMidSide *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), v11 = *(Element + 80), *v12 = v3, *&v12[16] = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v10.mSampleRate = *(v4 + 80);
  *&v10.mBytesPerPacket = v6;
  *&v10.mBitsPerChannel = *(v4 + 112);
  if (*&v11 != v10.mSampleRate)
  {
    return 4294956428;
  }

  if (DWORD2(v11) != v10.mFormatID)
  {
    return 4294956428;
  }

  if (*v12 != *&v10.mBytesPerPacket)
  {
    return 4294956428;
  }

  v7 = *&v12[12];
  if (*&v12[12] != *&v10.mChannelsPerFrame)
  {
    return 4294956428;
  }

  v8 = CA::Implementation::EquivalentFormatFlags(&v11, &v10, v5);
  result = 4294956428;
  if (v8)
  {
    if (v7 == 2)
    {
      return 0;
    }

    else
    {
      return 4294956428;
    }
  }

  return result;
}

void AUMidSide::~AUMidSide(AUMidSide *this)
{
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUVolumeCompressorV2::ValidFormat(AUVolumeCompressorV2 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (!ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    goto LABEL_7;
  }

  mChannelsPerFrame = a4->mChannelsPerFrame;
  if ((a4->mFormatFlags & 0x20) != 0)
  {
    if (mChannelsPerFrame <= 8)
    {
      goto LABEL_6;
    }

LABEL_7:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (mChannelsPerFrame != 1)
  {
    goto LABEL_7;
  }

  LOBYTE(mChannelsPerFrame) = 1;
LABEL_6:
  v6 = 0x176u >> mChannelsPerFrame;
  return v6 & 1;
}

uint64_t AUVolumeCompressorV2::SupportedNumChannels(AUVolumeCompressorV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUVolumeCompressorV2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 6;
}

uint64_t AUVolumeCompressorV2::NewFactoryPresetSet(AUVolumeCompressorV2 *this, const AUPreset *a2)
{
  presetNumber = a2->presetNumber;
  if (presetNumber > 3)
  {
    return 4294956445;
  }

  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if (presetNumber > 1)
  {
    if (presetNumber == 2)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v6)
    {
      ausdk::AUElement::SetParameter(v5, 1u, -200.0);
      v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v17)
      {
        ausdk::AUElement::SetParameter(v16, 0xBu, -199.0);
        v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v19)
        {
          ausdk::AUElement::SetParameter(v18, 0xAu, -200.0);
          v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v21)
          {
            ausdk::AUElement::SetParameter(v20, 0x14u, 0.5);
            v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v22)
            {
              v15 = -199.5;
              goto LABEL_18;
            }
          }
        }
      }
    }

LABEL_19:
    abort();
  }

  if (presetNumber)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  ausdk::AUElement::SetParameter(v5, 1u, -9.0);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  ausdk::AUElement::SetParameter(v7, 0xBu, 24.0);
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

  ausdk::AUElement::SetParameter(v9, 0xAu, -15.0);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  ausdk::AUElement::SetParameter(v11, 0x14u, 0.8125);
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_19;
  }

  v15 = 6.0;
LABEL_18:
  ausdk::AUElement::SetParameter(v13, 0x1Eu, v15);
  ++*(this + 135);
  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, &sAUVolumeCompressorV2Presets + presetNumber);
  return 0;
}

uint64_t AUVolumeCompressorV2::GetPresets(AUVolumeCompressorV2 *this, const __CFArray **a2)
{
  if (a2)
  {
    v3 = 4;
    Mutable = CFArrayCreateMutable(0, 4, 0);
    v5 = &sAUVolumeCompressorV2Presets;
    do
    {
      CFArrayAppendValue(Mutable, v5);
      v5 += 16;
      --v3;
    }

    while (v3);
    *a2 = Mutable;
  }

  return 0;
}

uint64_t AUVolumeCompressorV2::GetParameterValueStrings(AUVolumeCompressorV2 *this, int a2, int a3, const __CFArray **a4)
{
  values[6] = *MEMORY[0x1E69E9840];
  if (a2 || a3 != 14 && a3 != 13)
  {
    return 4294956417;
  }

  if (!a4)
  {
    return 0;
  }

  values[0] = @"0";
  values[1] = @"1";
  values[2] = @"2";
  values[3] = @"3";
  values[4] = @"4";
  values[5] = @"5";
  v6 = CFArrayCreate(0, values, 6, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AUVolumeCompressorV2::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 135);
  }

  return result;
}

uint64_t AUVolumeCompressorV2::GetParameterInfo(AUVolumeCompressorV2 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0u:
      buffer->cfNameString = @"SoundGaindB";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"SoundGaindB", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42700000C3480000;
      v7 = 3276210176;
      goto LABEL_46;
    case 1u:
      v17 = @"MaxOutputPower";
      goto LABEL_32;
    case 2u:
      v15 = @"MaxNoiseRelGain";
      goto LABEL_34;
    case 3u:
      v15 = @"MaxNoiseAbsGain";
LABEL_34:
      buffer->cfNameString = v15;
      buffer->flags = 0x8000000;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v8 = 0x42700000C3480000;
      goto LABEL_40;
    case 4u:
      buffer->cfNameString = @"MinSoundThresh";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"MinSoundThresh", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3267362816;
      v13 = 3263954944;
      goto LABEL_53;
    case 5u:
      buffer->cfNameString = @"MaxNoiseThresh";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"MaxNoiseThresh", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0xC2200000C3480000;
      v13 = 3264741376;
      goto LABEL_53;
    case 6u:
      buffer->cfNameString = @"UpSlewRate";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"UpSlewRate", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v14 = 0x412000003C23D70ALL;
      goto LABEL_44;
    case 7u:
      buffer->cfNameString = @"DownSlewRate";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"DownSlewRate", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0xBC23D70AC1200000;
      v13 = 3212836864;
      goto LABEL_53;
    case 8u:
      buffer->cfNameString = @"SmoothWinMs";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"SmoothWinMs", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x43C8000040800000;
      v13 = 1128792064;
      goto LABEL_53;
    case 9u:
      buffer->cfNameString = @"WinMs";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"WinMs", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000040C00000;
      v13 = 1094713344;
      goto LABEL_53;
    case 0xAu:
      buffer->cfNameString = @"MinVolume";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"MinVolume", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x41900000C3960000;
      v13 = 3262119936;
      goto LABEL_53;
    case 0xBu:
      buffer->cfNameString = @"MaxVolume";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"MaxVolume", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v8 = 0x42B40000C1F00000;
      goto LABEL_40;
    case 0xCu:
      buffer->cfNameString = @"Volume";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Volume", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v14 = 0x3F80000000000000;
      goto LABEL_44;
    case 0xDu:
      v10 = @"Number of volume knees";
      goto LABEL_27;
    case 0xEu:
      v10 = @"Number of compression knees";
LABEL_27:
      buffer->cfNameString = v10;
      buffer->flags = 0x8000000;
      CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x40A0000000000000;
      v18 = 1084227584;
      goto LABEL_28;
    case 0xFu:
      buffer->cfNameString = @"SoundGaindB Offset";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"SoundGaindB Offset", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      __asm { FMOV            V0.2S, #-12.0 }

      v9 = -_D0;
      goto LABEL_30;
    case 0x10u:
      v26 = @"UpwardsCompRatio";
      buffer->cfNameString = @"UpwardsCompRatio";
      v27 = 0x8000000;
      goto LABEL_43;
    case 0x11u:
      v11 = @"A-Weighting Enabled";
      goto LABEL_39;
    case 0x12u:
      buffer->cfNameString = @"Lookahead (ms)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Lookahead (ms)", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v8 = 0x4120000000000000;
      goto LABEL_40;
    case 0x3Cu:
      buffer->cfNameString = @"MinSoundThresh";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"MinSoundThresh", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3267362816;
      v7 = 3263954944;
      goto LABEL_46;
    case 0x3Du:
      buffer->cfNameString = @"MaxNoiseThresh";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"MaxNoiseThresh", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3267362816;
      v7 = 3264741376;
LABEL_46:
      v25 = v7 & 0xFFFF0000FFFFFFFFLL | 0x800000000000;
      goto LABEL_47;
    case 0x3Eu:
      buffer->cfNameString = @"Compression Amount";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Compression Amount", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v9 = 2.0615843e11;
      goto LABEL_30;
    case 0x3Fu:
      v12 = @"Input Amplitude";
      goto LABEL_14;
    case 0x40u:
      v12 = @"Output Amplitude";
LABEL_14:
      buffer->cfNameString = v12;
      buffer->flags = 0x8000000;
      CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v9 = 2097153.52;
LABEL_30:
      *&buffer->minValue = v9;
      v25 = 0x800000000000;
LABEL_47:
      v19 = v25 & 0xFFFFFFFFFFFFLL | 0x4800000000000000;
      goto LABEL_54;
    case 0x41u:
      v11 = @"ShortWin Enabled";
      goto LABEL_39;
    case 0x42u:
      v11 = @"ShortWin Peak";
      goto LABEL_39;
    case 0x43u:
      buffer->cfNameString = @"ShortWinMs";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"ShortWinMs", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4248000040400000;
      v13 = 1082130432;
      goto LABEL_53;
    case 0x44u:
      buffer->cfNameString = @"ShortWin Attack";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"ShortWin Attack", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3D23D70A3A03126FLL;
      v13 = 998445679;
      goto LABEL_53;
    case 0x45u:
      buffer->cfNameString = @"ShortWin Decay";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"ShortWin Decay", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x400000003A83126FLL;
      v13 = 1006834287;
      goto LABEL_53;
    case 0x46u:
      v16 = @"ShortWin Max dBRMS";
      goto LABEL_51;
    case 0x47u:
      v17 = @"ShortWin Max dBFS";
LABEL_32:
      buffer->cfNameString = v17;
      buffer->flags = 0x8000000;
      CFStringGetCString(v17, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v8 = 3276275712;
      goto LABEL_40;
    case 0x48u:
      v11 = @"LongWin Enabled";
LABEL_39:
      buffer->cfNameString = v11;
      buffer->flags = 0x8000000;
      CFStringGetCString(v11, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      v8 = 0x3F80000000000000;
LABEL_40:
      *&buffer->minValue = v8;
      v19 = 0xC800000000000000;
      goto LABEL_54;
    case 0x49u:
      buffer->cfNameString = @"LongWinSec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"LongWinSec", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x43B400003F800000;
      v13 = 1135869952;
      goto LABEL_53;
    case 0x4Au:
      buffer->cfNameString = @"LongWin Attack";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"LongWin Attack", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3D23D70A3A03126FLL;
      v13 = 994352038;
      goto LABEL_53;
    case 0x4Bu:
      buffer->cfNameString = @"LongWin Decay";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"LongWin Decay", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x412000003A83126FLL;
      v13 = 1011129254;
      goto LABEL_53;
    case 0x4Cu:
      v16 = @"LongWin MaxOutputPower";
LABEL_51:
      buffer->cfNameString = v16;
      buffer->flags = 0x8000000;
      CFStringGetCString(v16, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3276275712;
      v13 = 3233808384;
      goto LABEL_53;
    default:
      v28 = a3 % 0xA;
      v29 = 10 * (a3 / 0xA);
      result = 4294956418;
      if (v29 > 39)
      {
        if (v29 == 40)
        {
          v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v40)
          {
            if (ausdk::AUElement::GetParameter(v39, 0xEu) > v28)
            {
              buffer->cfNameString = @"CompKneeX";
              buffer->flags |= 0x8000000u;
              CFStringGetCString(@"CompKneeX", buffer->name, 52, 0x8000100u);
              result = 0;
              buffer->unit = kAudioUnitParameterUnit_Generic;
              v32 = 3276275712;
LABEL_73:
              *&buffer->minValue = v32;
              v18 = 3253731328;
LABEL_28:
              v19 = v18 & 0xFFFFFFFFFFFFLL | 0xD800000000000000;
LABEL_54:
              *&buffer->defaultValue = v19;
              return result;
            }

            return 4294956418;
          }

LABEL_77:
          abort();
        }

        if (v29 == 50)
        {
          v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v34)
          {
            if (ausdk::AUElement::GetParameter(v33, 0xEu) > v28)
            {
              v26 = @"CompKneeRatio";
              buffer->cfNameString = @"CompKneeRatio";
              v27 = buffer->flags | 0x8000000;
LABEL_43:
              buffer->flags = v27;
              CFStringGetCString(v26, buffer->name, 52, 0x8000100u);
              result = 0;
              buffer->unit = kAudioUnitParameterUnit_Generic;
              v14 = 0x412000003F800000;
LABEL_44:
              *&buffer->minValue = v14;
              v13 = 1065353216;
LABEL_53:
              v19 = v13 & 0xFFFFFFFFFFFFLL | 0xC800000000000000;
              goto LABEL_54;
            }

            return 4294956418;
          }

          goto LABEL_77;
        }
      }

      else if (v29 == 20)
      {
        v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v36 & 1) == 0)
        {
          goto LABEL_77;
        }

        Parameter = ausdk::AUElement::GetParameter(v35, 0xDu);
        if (Parameter <= v28)
        {
          result = 4294956418;
        }

        else
        {
          v38 = kAUVolumeCompressorV2ParamName_VolumeKneeXstr[v28];
          buffer->cfNameString = v38;
          buffer->flags |= 0x8000000u;
          CFStringGetCString(v38, buffer->name, 52, 0x8000100u);
          result = 0;
          buffer->unit = kAudioUnitParameterUnit_Generic;
          *&buffer->minValue = 0x3F80000000000000;
          *&buffer->defaultValue = 0xD80000003F000000;
        }

        if ((Parameter + -1.0) == v28)
        {
          buffer->maxValue = 1.0;
        }
      }

      else if (v29 == 30)
      {
        v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v31)
        {
          if (ausdk::AUElement::GetParameter(v30, 0xDu) > v28)
          {
            buffer->cfNameString = @"VolumeKneeY";
            buffer->flags |= 0x8000000u;
            CFStringGetCString(@"VolumeKneeY", buffer->name, 52, 0x8000100u);
            result = 0;
            buffer->unit = kAudioUnitParameterUnit_Generic;
            v32 = 0x42B40000C3960000;
            goto LABEL_73;
          }

          return 4294956418;
        }

        goto LABEL_77;
      }

      return result;
  }
}

uint64_t AUVolumeCompressorV2::GetParameterList(AUVolumeCompressorV2 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  for (i = 0; i != 17; ++i)
  {
    if (a3)
    {
      a3[i] = i;
    }
  }

  for (j = 0; j != 17; ++j)
  {
    if (a3)
    {
      a3[j + 17] = j + 60;
    }
  }

  v7 = *(this + 419);
  if (v7)
  {
    v8 = 34;
    do
    {
      if (a3)
      {
        a3[v8] = v8 - 14;
        v7 = *(this + 419);
      }

      v9 = v8 + 1;
      v10 = v8 - 33;
      ++v8;
    }

    while (v10 < v7);
    if (v7)
    {
      for (k = 0; k < v7; ++k)
      {
        if (a3)
        {
          a3[v9 + k] = k + 30;
          v7 = *(this + 419);
        }
      }

      v9 += k;
    }
  }

  else
  {
    v9 = 34;
  }

  v12 = *(this + 428);
  if (v12)
  {
    for (m = 0; m < v12; ++m)
    {
      if (a3)
      {
        a3[v9 + m] = m + 40;
        v12 = *(this + 428);
      }
    }

    if (v12)
    {
      for (n = 0; n < v12; ++n)
      {
        if (a3)
        {
          a3[v9 + m + n] = n + 50;
          v12 = *(this + 428);
        }
      }

      v9 += m + n;
    }

    else
    {
      v9 += m;
    }
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t AUVolumeCompressorV2::Render(AUVolumeCompressorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
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
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
    return 0;
  }

  return result;
}

uint64_t AUVolumeCompressorV2::ProcessBufferLists(float32x2_t *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v9 = this[67].i32[1];
  if (v9 != this[68].i32[0])
  {
    AUVolumeCompressorV2::ApplyParameters(this);
    AUVolumeCompressorV2::ComputeNumbers(this);
    this[68].i32[0] = v9;
  }

  v10 = this[68].i32[1];
  if (v10 != this[69].i32[0])
  {
    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
    if ((v12 & 1) == 0 || (this[78].f32[1] = ausdk::AUElement::GetParameter(v11, 0xCu), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v14 & 1) == 0) || (this[74].f32[0] = ausdk::AUElement::GetParameter(v13, 4u), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v16 & 1) == 0))
    {
      abort();
    }

    *&v17 = ausdk::AUElement::GetParameter(v15, 5u);
    this[74].i32[1] = LODWORD(v17);
    AUVolumeCompressorV2::AdjustForVolume(this, v17, v18);
    v19 = this[219];
    v20 = *v19;
    v21 = this[215];
    v22 = *v21;
    v23 = this[74].f32[0] + (1.0 - *v19) * (v21[1] - *v21);
    v24 = this[214].u32[0];
    v25 = this[217];
    if (v24)
    {
      v26 = v21 + 1;
      v27 = this[219];
      v28 = this[217];
      v29 = this[214].u32[0];
      do
      {
        v30 = v23 - (*v27 * v22);
        *v28++ = v30;
        v31 = *v27++;
        v32 = v31;
        v33 = *v26++;
        v22 = v33;
        v23 = v30 + (v32 * v33);
        --v29;
      }

      while (v29);
      v20 = v19[v24];
      v22 = v21[v24];
    }

    else
    {
      v24 = 0;
    }

    *(*&v25 + 4 * v24) = v23 - (v20 * v22);
    v34 = this[73].f32[0];
    this[79].f32[1] = v34;
    v35 = v34 + this[70].f32[0];
    v36 = this[73].f32[1];
    if (v35 > v36)
    {
      v34 = v34 + (v36 - v35);
      this[79].f32[1] = v34;
    }

    this[89].i32[0] = 1065353216;
    this[90].i32[1] = 0;
    v37 = this[74].f32[0];
    v38 = this[74].f32[1];
    v39 = ((v21[1] - (*v19 * (v21[1] - v37))) - (v34 + v38)) / (v37 - v38);
    this[89].f32[1] = v39;
    this[91].f32[0] = (v34 + v38) - (v39 * v38);
    this[90].i32[0] = 1065353216;
    this[91].f32[1] = v34;
    this[92].f32[0] = v37;
    this[92].f32[1] = v38;
    this[69].i32[0] = v10;
  }

  if (this[67].i8[1] == 1)
  {
    this[67].i8[1] = 0;
  }

  if ((*(*this + 576))(this))
  {
    if (a3->mNumberBuffers)
    {
      v40 = 0;
      v41 = 16;
      do
      {
        memcpy(*(&a4->mNumberBuffers + v41), *(&a3->mNumberBuffers + v41), 4 * a5);
        ++v40;
        v41 += 16;
      }

      while (v40 < a3->mNumberBuffers);
    }
  }

  else if (this[82].i8[0])
  {
    if (a5)
    {
      v42 = 0;
      p_mData = &a4->mBuffers[0].mData;
      v44 = &a3->mBuffers[0].mData;
      do
      {
        v90 = 0u;
        v91 = 0u;
        *v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *v84 = 0u;
        v85 = 0u;
        v45 = this[221].i32[0];
        if (v45)
        {
          v46 = v84;
          v47 = v88;
          v48 = v44;
          v49 = p_mData;
          v50 = this[221].u32[0];
          do
          {
            v51 = *v48;
            v48 += 2;
            *v47++ = &v51[4 * v42];
            v52 = *v49;
            v49 += 2;
            *v46++ = &v52[4 * v42];
            --v50;
          }

          while (v50);
        }

        AUVolumeCompressorV2::ProcessAudioBlock(this, v88, v84, v45);
        if ((this[82].i8[1] & 1) != 0 && this[82].i8[3] == 1)
        {
          AUVolumeCompressorV2::ProcessShortAudioBlocks(this, v84, this[221].u32[0]);
        }

        v53 = this[75].i32[0];
        v42 += v53;
        a5 -= v53;
      }

      while (a5);
    }
  }

  else
  {
    v54 = 0;
    v82 = &a3->mBuffers[0].mData;
    do
    {
      v55 = this[207].i32[0];
      for (i = this[75].i32[0]; ; this[207].i32[1] += i)
      {
        v57 = i - v55;
        if (i != v55)
        {
          break;
        }

        v90 = 0u;
        v91 = 0u;
        *v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *v84 = 0u;
        v85 = 0u;
        v58 = this[221].i32[0];
        if (v58)
        {
          v59 = v84;
          v60 = v88;
          v61 = this + 183;
          v62 = this[221].u32[0];
          do
          {
            *v60++ = v61[-16];
            v63 = *v61;
            v61 += 2;
            *v59++ = v63;
            --v62;
          }

          while (v62);
        }

        AUVolumeCompressorV2::ProcessAudioBlock(this, v88, v84, v58);
        if ((this[82].i8[1] & 1) != 0 && this[82].i8[3] == 1)
        {
          AUVolumeCompressorV2::ProcessShortAudioBlocks(this, v84, this[221].u32[0]);
        }

        v55 = 0;
        this[207].i32[0] = 0;
        this[88].i32[1] = 0;
        i = this[75].i32[0];
      }

      if (a5 >= v57)
      {
        v64 = i - v55;
      }

      else
      {
        v64 = a5;
      }

      if (this[221].i32[0])
      {
        v65 = 0;
        v67 = v82;
        v66 = this + 167;
        do
        {
          v68 = *v67;
          v67 += 2;
          v69 = &v68[4 * v54];
          v70 = *v66;
          v66 += 2;
          memcpy((*&v70 + 4 * this[207].u32[0]), v69, 4 * v64);
          ++v65;
          v71 = this[221].u32[0];
        }

        while (v65 < v71);
        this[207].i32[0] += v64;
        v72 = this[207].u32[1];
        if (v72 >= v64)
        {
          v73 = v64;
        }

        else
        {
          v73 = this[207].u32[1];
        }

        if (v71)
        {
          v83 = a5;
          v74 = 0;
          v75 = &a4->mBuffers[0].mData;
          v76 = this + 183;
          do
          {
            v77 = *v75;
            v75 += 2;
            v78 = &v77[4 * v54];
            v79 = *v76;
            v76 += 2;
            memcpy(v78, (*&v79 + 4 * this[88].u32[1]), 4 * v73);
            ++v74;
          }

          while (v74 < this[221].u32[0]);
          v72 = this[207].u32[1];
          a5 = v83;
        }
      }

      else
      {
        this[207].i32[0] = v55 + v64;
        v72 = this[207].u32[1];
        if (v72 >= v64)
        {
          v73 = v64;
        }

        else
        {
          v73 = this[207].u32[1];
        }
      }

      this[88].i32[1] += v73;
      this[207].i32[1] = v72 - v73;
      v54 += v64;
      v80 = a5 > v57;
      a5 -= v64;
    }

    while (v80);
  }

  return 0;
}

float AUVolumeCompressorV2::ApplyParameters(float32x2_t *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[72].f32[1] = ausdk::AUElement::GetParameter(v2, 1u);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[73].f32[0] = ausdk::AUElement::GetParameter(v4, 2u);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[73].f32[1] = ausdk::AUElement::GetParameter(v6, 3u);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[74].f32[0] = ausdk::AUElement::GetParameter(v8, 4u);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[74].f32[1] = ausdk::AUElement::GetParameter(v10, 5u);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[81].f32[0] = ausdk::AUElement::GetParameter(v12, 6u);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[81].f32[1] = ausdk::AUElement::GetParameter(v14, 7u);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[80].f32[0] = ausdk::AUElement::GetParameter(v16, 8u);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[76].f32[1] = ausdk::AUElement::GetParameter(v18, 0xBu);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[77].f32[0] = ausdk::AUElement::GetParameter(v20, 0xAu);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[77].f32[1] = ausdk::AUElement::GetParameter(v22, 0x14u);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[78].f32[0] = ausdk::AUElement::GetParameter(v24, 0x1Eu);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[78].f32[1] = ausdk::AUElement::GetParameter(v26, 0xCu);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[209].i32[1] = ausdk::AUElement::GetParameter(v28, 0xDu);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[214].i32[0] = ausdk::AUElement::GetParameter(v30, 0xEu);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[72].f32[0] = ausdk::AUElement::GetParameter(v32, 0xFu);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[79].f32[0] = ausdk::AUElement::GetParameter(v34, 0x10u);
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_94;
  }

  v38 = ausdk::AUElement::GetParameter(v36, 0x11u) != 0.0;
  if (this[94].u8[0] != v38)
  {
    v39 = this[93];
    if (v39)
    {
      (*(**&v39 + 24))(v39);
      this[94].i8[0] = v38;
    }
  }

  v40 = this[76].f32[0];
  v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_94;
  }

  Parameter = ausdk::AUElement::GetParameter(v41, 9u);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[76].f32[0] = ausdk::AUElement::GetParameter(v44, 9u);
  v46 = this[82].u8[1];
  v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_94;
  }

  v49 = ausdk::AUElement::GetParameter(v47, 0x41u) != v46 || v40 != Parameter;
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[82].i8[1] = ausdk::AUElement::GetParameter(v50, 0x41u) != 0.0;
  v52 = this[82].f32[1];
  v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v52 != ausdk::AUElement::GetParameter(v53, 0x43u))
  {
    v49 = 1;
  }

  v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[82].f32[1] = ausdk::AUElement::GetParameter(v55, 0x43u);
  v57 = this[97].f32[0];
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v57 != ausdk::AUElement::GetParameter(v58, 0x12u))
  {
    v49 = 1;
  }

  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_94;
  }

  v62 = ausdk::AUElement::GetParameter(v60, 0x12u);
  this[97].f32[0] = v62;
  v63 = this[66].u32[1];
  if (v63)
  {
    v63 = ((v62 * this[69].f32[1]) / 1000.0);
  }

  this[97].i32[1] = v63;
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[82].i8[3] = ausdk::AUElement::GetParameter(v64, 0x42u) != 0.0;
  v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[86].f32[0] = ausdk::AUElement::GetParameter(v66, 0x46u);
  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[87].f32[0] = ausdk::AUElement::GetParameter(v68, 0x47u);
  v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_94;
  }

  v72 = ausdk::AUElement::GetParameter(v70, 0x44u) * this[69].f32[1];
  if (v72 < 2.22507386e-308)
  {
    v72 = 2.22507386e-308;
  }

  v73 = -6.90775528 / v72;
  v74 = exp(-6.90775528 / v72);
  if (v73 < -708.4)
  {
    v74 = 0.0;
  }

  v75 = v74;
  this[83].f32[1] = 1.0 - v75;
  v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_94;
  }

  v78 = ausdk::AUElement::GetParameter(v76, 0x45u) * this[69].f32[1];
  if (v78 < 2.22507386e-308)
  {
    v78 = 2.22507386e-308;
  }

  v79 = -6.90775528 / v78;
  v80 = exp(-6.90775528 / v78);
  if (v79 < -708.4)
  {
    v80 = 0.0;
  }

  v81 = v80;
  this[84].f32[0] = 1.0 - v81;
  v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v83 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[82].i8[2] = ausdk::AUElement::GetParameter(v82, 0x48u) != 0.0;
  v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_94;
  }

  this[86].f32[1] = ausdk::AUElement::GetParameter(v84, 0x4Cu);
  v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_94;
  }

  v88 = ausdk::AUElement::GetParameter(v86, 0x4Au) * this[69].f32[1];
  if (v88 < 2.22507386e-308)
  {
    v88 = 2.22507386e-308;
  }

  v89 = -6.90775528 / v88;
  v90 = exp(-6.90775528 / v88);
  if (v89 < -708.4)
  {
    v90 = 0.0;
  }

  v91 = v90;
  this[84].f32[1] = 1.0 - v91;
  v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v93 & 1) == 0)
  {
LABEL_94:
    abort();
  }

  v94 = ausdk::AUElement::GetParameter(v92, 0x4Bu) * this[69].f32[1];
  if (v94 < 2.22507386e-308)
  {
    v94 = 2.22507386e-308;
  }

  v95 = -6.90775528 / v94;
  v96 = exp(-6.90775528 / v94);
  if (v95 < -708.4)
  {
    v96 = 0.0;
  }

  v98 = v96;
  this[85].f32[0] = 1.0 - v98;
  if (v49)
  {
    v99 = this[221].u32[0];
    if (v99)
    {
      v100 = this + 135;
      v101 = this[82].i8[0];
      v102 = this[66].i32[1];
      do
      {
        v103 = *&v100[1] - *v100;
        if (v103 >= 1)
        {
          bzero(*v100, v103);
        }

        if ((v101 & 1) == 0)
        {
          v104 = v100[32];
          v105 = *&v100[33] - v104;
          if (v105 >= 1)
          {
            bzero(v104, v105);
          }

          v106 = v100[48];
          v107 = *&v100[49] - v106;
          if (v107 >= 1)
          {
            bzero(v106, v107);
          }
        }

        if (v102)
        {
          v108 = v100[16];
          v109 = *&v100[17] - v108;
          if (v109 >= 1)
          {
            bzero(v108, v109);
          }
        }

        v100 += 2;
        --v99;
      }

      while (v99);
    }

    HIDWORD(v96) = 0;
    this[207] = 0;
    this[88].i32[1] = 0;
    this[67].i8[1] = 1;
  }

  if (this[209].i32[1])
  {
    v110 = 1;
    do
    {
      v111 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
      if ((v112 & 1) == 0)
      {
        goto LABEL_94;
      }

      *(*&this[210] + 4 * v110) = ausdk::AUElement::GetParameter(v111, v110 + 19);
      v113 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
      if ((v114 & 1) == 0)
      {
        goto LABEL_94;
      }

      *&v96 = ausdk::AUElement::GetParameter(v113, v110 + 29);
      if (*&v96 < this[77].f32[0])
      {
        LODWORD(v96) = this[77].i32[0];
      }

      LODWORD(v97) = this[76].i32[1];
      if (*&v96 > *&v97)
      {
        LODWORD(v96) = this[76].i32[1];
      }

      v115 = this[212];
      v115[v110] = LODWORD(v96);
      v116 = this[209].u32[1];
    }

    while (v110++ < v116);
    v118 = (v116 + 1);
  }

  else
  {
    v115 = this[212];
    v118 = 1;
  }

  v119 = this[210];
  *v119 = 0;
  v119[v118] = 1065353216;
  *v115 = this[77].i32[0];
  LODWORD(v96) = this[76].i32[1];
  v115[v118] = LODWORD(v96);

  return AUVolumeCompressorV2::AdjustForVolume(this, v96, v97);
}

void AUVolumeCompressorV2::ComputeNumbers(AUVolumeCompressorV2 *this)
{
  v2 = *(this + 219);
  v3 = *v2;
  v4 = *(this + 215);
  v5 = *v4;
  v6 = *(this + 148) + (1.0 - *v2) * (v4[1] - *v4);
  v7 = *(this + 428);
  v8 = *(this + 217);
  if (v7)
  {
    v9 = v4 + 1;
    v10 = *(this + 219);
    v11 = *(this + 217);
    v12 = *(this + 428);
    do
    {
      v13 = v6 - (*v10 * v5);
      *v11++ = v13;
      v14 = *v10++;
      v15 = v14;
      v16 = *v9++;
      v5 = v16;
      v6 = v13 + (v15 * v16);
      --v12;
    }

    while (v12);
    v3 = v2[v7];
    v5 = v4[v7];
  }

  else
  {
    v7 = 0;
  }

  *(v8 + 4 * v7) = v6 - (v3 * v5);
  v17 = *(this + 146);
  *(this + 159) = v17;
  v18 = v17 + *(this + 140);
  v19 = *(this + 147);
  if (v18 > v19)
  {
    v17 = v17 + (v19 - v18);
    *(this + 159) = v17;
  }

  *(this + 178) = 1065353216;
  *(this + 181) = 0;
  v20 = *(this + 148);
  v21 = *(this + 149);
  v22 = ((v4[1] - (*v2 * (v4[1] - v20))) - (v17 + v21)) / (v20 - v21);
  *(this + 179) = v22;
  *(this + 182) = (v17 + v21) - (v22 * v21);
  *(this + 180) = 1065353216;
  *(this + 183) = v17;
  *(this + 184) = v20;
  *(this + 185) = v21;
  v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_39;
  }

  Parameter = ausdk::AUElement::GetParameter(v23, 9u);
  if (*(this + 656) == 1)
  {
    v26 = *(this + 84);
    v27 = 1;
    v28 = v26;
    do
    {
      if (v26 / v27 < ((Parameter * *(this + 139)) / 1000.0))
      {
        break;
      }

      if (v26 == v26 / v27 * v27)
      {
        v28 = v26 / v27;
      }

      ++v27;
    }

    while (v27 != 33);
  }

  else
  {
    v28 = ((Parameter * *(this + 139)) / 1000.0) & 0xFFFFFFFC;
  }

  *(this + 150) = v28;
  v29 = vcvtas_u32_f32((*(this + 160) / Parameter) + 0.25);
  if (v29 <= 1)
  {
    v29 = 1;
  }

  *(this + 161) = v29;
  v30 = Parameter * v29;
  if (v30 > 400.0)
  {
    v30 = 399.0;
  }

  *(this + 160) = v30;
  v31 = *(this + 442);
  if (v31)
  {
    v32 = (this + 792);
    do
    {
      *v32 = v29;
      *(v32 - 1) = 0;
      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v34 & 1) == 0)
  {
LABEL_39:
    abort();
  }

  v35 = ausdk::AUElement::GetParameter(v33, 0x49u);
  v36 = *(this + 150);
  v37 = v35 * (*(this + 139) / v36);
  v38 = 0.0;
  if (v37 >= 0.00001)
  {
    v38 = expf(-4.6052 / v37);
  }

  *(this + 176) = 1.0 - v38;
  if (v36)
  {
    v39 = 0;
    v40 = *(this + 130);
    v41 = *(this + 131);
    if ((v36 + 1) > 2)
    {
      v42 = (v36 + 1);
    }

    else
    {
      v42 = 2;
    }

    v43 = v42 - 1;
    do
    {
      v44 = (v39 + 1);
      v40[v39] = ((*(this + 162) * v44) * 1000.0) / *(this + 139);
      *(v41 + 4 * v39++) = ((*(this + 163) * v44) * 1000.0) / *(this + 139);
    }

    while (v43 != v39);
  }

  else
  {
    v40 = *(this + 130);
  }

  __B = 20.0;
  vDSP_vsdiv(v40, 1, &__B, v40, 1, v36);
  vDSP_vsdiv(*(this + 131), 1, &__B, *(this + 131), 1, *(this + 150));
  v45 = *(this + 150);
  if (v45)
  {
    v46 = *(this + 130);
    v47 = *(this + 131);
    do
    {
      *v46 = __exp10f(*v46);
      ++v46;
      *v47 = __exp10f(*v47);
      ++v47;
      --v45;
    }

    while (v45);
  }
}

void AUVolumeCompressorV2::ProcessAudioBlock(AUVolumeCompressorV2 *this, const float **a2, float **a3, int a4)
{
  LODWORD(v4) = a4;
  v118 = *MEMORY[0x1E69E9840];
  v8 = *(this + 143) + *(this + 140);
  v9 = *(this + 145);
  v10 = 1.0;
  if (v8 >= v9)
  {
    v11 = v9 - v8;
    if (v11 < -4.0)
    {
      v11 = -4.0;
    }

    v10 = __exp10f(v11 / 20.0);
  }

  v12 = *(this + 141);
  v113 = v4;
  if ((v10 * v12) != 1.0)
  {
    v13 = *(this + 142);
    if ((v10 * v12) == v13)
    {
      __B[0] = v10 * v12;
      if (v4)
      {
        v4 = v4;
        v16 = a2;
        do
        {
          MEMORY[0x1E12BE940](*v16, 1, __B, *v16, 1, *(this + 150));
          ++v16;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      v14 = *(this + 150);
      __B[0] = -(v13 - (v12 * v10)) / v14;
      vDSP_vramp(this + 142, __B, *(this + 132), 1, v14);
      if (v4)
      {
        v4 = v4;
        v15 = a2;
        do
        {
          MEMORY[0x1E12BE7F0](*v15, 1, *(this + 132), 1, *v15, 1, *(this + 150));
          ++v15;
          --v4;
        }

        while (v4);
      }
    }

    LODWORD(v4) = v113;
  }

  *(this + 142) = v10 * *(this + 141);
  v116[0] = xmmword_1DE0BB4C4;
  v116[1] = unk_1DE0BB4D4;
  if (v4 <= 4)
  {
    HIDWORD(v116[0]) = 1065353216;
  }

  if (*(this + 752))
  {
    if (v4)
    {
      v17 = 0;
      v18 = 4 * *(this + 150);
      v19 = *(this + 96);
      v20 = *(this + 95);
      v21 = (this + 1592);
      v22 = a2;
      do
      {
        v23 = v19 + v17;
        *(v23 + 12) = v18;
        v24 = v20 + v17;
        *(v24 + 12) = v18;
        v25 = *v22++;
        *(v24 + 16) = v25;
        v26 = *v21++;
        *(v23 + 16) = v26;
        v17 += 16;
      }

      while (16 * v4 != v17);
    }

    (*(**(this + 93) + 32))(*(this + 93));
    if (v4)
    {
      v36 = (this + 1592);
      v37 = this + 784;
      v38 = *(this + 150);
      v39 = __B;
      v40 = v116;
      v41 = v113;
      do
      {
        vDSP_svesq(*v36, 1, v39, v38);
        v38 = *(this + 150);
        v42 = (*v40 * *v39) / v38;
        *v39 = v42;
        v43 = *(v37 + 1);
        *(*(v37 + 2) + 4 * v43) = v42;
        v44 = *(v37 + 2);
        *(v37 + 1) = (v43 + 1) % v44;
        if (*v37 < v44)
        {
          ++*v37;
        }

        v37 += 32;
        ++v36;
        ++v39;
        ++v40;
        --v41;
      }

      while (v41);
      goto LABEL_33;
    }

LABEL_39:
    v51 = SlidingRMSWindow::ComputeRMS(this + 98);
    v46 = *&v51;
    goto LABEL_40;
  }

  if (!v4)
  {
    goto LABEL_39;
  }

  v27 = this + 784;
  v28 = *(this + 150);
  v29 = __B;
  v30 = v116;
  v31 = a2;
  v32 = v4;
  do
  {
    vDSP_svesq(*v31, 1, v29, v28);
    v28 = *(this + 150);
    v33 = (*v30 * *v29) / v28;
    *v29 = v33;
    v34 = *(v27 + 1);
    *(*(v27 + 2) + 4 * v34) = v33;
    v35 = *(v27 + 2);
    *(v27 + 1) = (v34 + 1) % v35;
    if (*v27 < v35)
    {
      ++*v27;
    }

    v27 += 32;
    ++v31;
    ++v29;
    ++v30;
    --v32;
  }

  while (v32);
LABEL_33:
  v45 = SlidingRMSWindow::ComputeRMS(this + 98);
  v46 = *&v45;
  if (v113 < 2)
  {
LABEL_40:
    v50 = 0;
    goto LABEL_41;
  }

  v47 = v113 - 1;
  v48 = (this + 816);
  do
  {
    v49 = SlidingRMSWindow::ComputeRMS(v48);
    if (v46 < *&v49)
    {
      v46 = *&v49;
    }

    v48 += 4;
    --v47;
  }

  while (v47);
  v50 = 1;
LABEL_41:
  v52 = v46 + 1.0e-20;
  v53 = log10f(v52) * 10.0;
  if (v53 >= *(this + 184))
  {
    v56 = 0;
    do
    {
      if (v53 < *(*(this + 215) + 4 * v56))
      {
        break;
      }

      ++v56;
    }

    while (v56 <= *(this + 428));
    v57 = v56 - 1;
    v54 = *(*(this + 219) + 4 * v57);
    v55 = *(*(this + 217) + 4 * v57);
  }

  else if (v53 >= *(this + 185))
  {
    v54 = *(this + 179);
    v55 = *(this + 182);
  }

  else
  {
    v54 = *(this + 180);
    v55 = *(this + 183);
  }

  v58 = v55 + (v54 * v53);
  *(this + 143) = v58;
  if (v58 <= *(this + 145))
  {
    v59 = v58;
  }

  else
  {
    v59 = *(this + 145);
  }

  v60 = v59 - v53;
  if (*(this + 658) == 1)
  {
    v61 = *(this + 442);
    __C = 0.0;
    vDSP_svesq(*a2, 1, &__C, *(this + 150));
    v62 = *(this + 150);
    v63 = __C / v62;
    __C = v63;
    if (v61 >= 2)
    {
      v64 = v61 - 1;
      v65 = a2 + 1;
      do
      {
        v114 = 0.0;
        vDSP_svesq(*v65, 1, &v114, v62);
        v62 = *(this + 150);
        v63 = v114 / v62;
        if (__C >= v63)
        {
          v63 = __C;
        }

        __C = v63;
        ++v65;
        --v64;
      }

      while (v64);
    }

    v66 = *(this + 175) + (*(this + 176) * (v63 - *(this + 175)));
    *(this + 175) = v66;
    v67 = v66 + 1.0e-20;
    v68 = log10f(v67) * 10.0;
    v69 = *(this + 173);
    if (v68 <= v69)
    {
      v69 = v68;
    }

    v70 = v69 - v68;
    if (v70 != 0.0 && v70 < v60)
    {
      v59 = v53 + v70;
      v60 = v70;
    }
  }

  if (*(this + 657) == 1)
  {
    v71 = *(this + 150);
    v72 = 2;
    v73 = v71;
    do
    {
      if (v71 / v72 < ((*(this + 165) * *(this + 139)) / 1000.0))
      {
        break;
      }

      if (v71 == v71 / v72 * v72)
      {
        v73 = v71 / v72;
      }

      ++v72;
    }

    while (v72 != 33);
    *(this + 151) = v73;
    if (v71)
    {
      v74 = 0;
      do
      {
        __C = 0.0;
        vDSP_svesq(&(*a2)[v74], 1, &__C, v73);
        v73 = *(this + 151);
        v75 = __C / v73;
        __C = v75;
        v76 = (a2 + 1);
        v77 = v113 - 1;
        if (v50)
        {
          do
          {
            v114 = 0.0;
            vDSP_svesq(&(*v76)[v74], 1, &v114, v73);
            v73 = *(this + 151);
            v75 = v114 / v73;
            if (__C >= v75)
            {
              v75 = __C;
            }

            __C = v75;
            ++v76;
            --v77;
          }

          while (v77);
        }

        v78 = v75 + 1.0e-20;
        v79 = log10f(v78) * 10.0;
        v80 = *(this + 172);
        if (v79 <= v80)
        {
          v80 = v79;
        }

        v81 = v80 - v79;
        if (v81 != 0.0 && v81 < v60)
        {
          v59 = v53 + v81;
          v60 = v81;
        }

        v74 += v73;
      }

      while (v74 < *(this + 150));
    }
  }

  v82 = *(this + 416) + 1.0e-20;
  v83 = v60 + (log10f(v82) * -20.0);
  v84 = *(this + 195);
  if (!v84 || v83 <= 0.0 || (v85 = *(this + 443), v86 = v85 - 1, v85 == 1))
  {
    *(this + 443) = 0;
  }

  else
  {
    if (v85)
    {
LABEL_90:
      *(this + 443) = v86;
      *(this + 444) = 0;
      v83 = 0.0;
      goto LABEL_91;
    }

    if (*(this + 444) < 0.0)
    {
      v87 = *(this + 150);
      if (v87)
      {
        v86 = v84 / v87 + 1;
      }

      else
      {
        v86 = 1;
      }

      goto LABEL_90;
    }
  }

  *(this + 444) = v83;
  if (v83 < 0.0)
  {
    __C = __exp10f(v83 / 20.0);
    v88 = 1.0;
    v89 = 1048;
    goto LABEL_92;
  }

LABEL_91:
  __C = 1.0;
  v88 = __exp10f(v83 / 20.0);
  v89 = 1040;
LABEL_92:
  v114 = v88;
  vDSP_vclip(*(this + v89), 1, &__C, &v114, *(this + 132), 1, *(this + 150));
  MEMORY[0x1E12BE940](*(this + 132), 1, this + 1664, *(this + 132), 1, *(this + 150));
  *(this + 416) = *(*(this + 132) + 4 * (*(this + 150) - 1));
  if (*(this + 536) == 1)
  {
    v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v91 & 1) == 0 || (v92 = v90, v93 = *(this + 416) + 1.0e-20, v94 = log10f(v93), ausdk::AUElement::SetParameter(v92, 0x3Eu, fabsf(v94 * 20.0)), v95 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v96 & 1) == 0) || (ausdk::AUElement::SetParameter(v95, 0x3Fu, v53), v97 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v98 & 1) == 0))
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v97, 0x40u, v59);
  }

  if (*(this + 195) && *(this + 133) && v113)
  {
    v99 = (this + 1208);
    v100 = v113;
    v101 = a2;
    do
    {
      memcpy(*(this + 134), *v101, 4 * *(this + 150));
      v102 = *(this + 150);
      v103 = *(this + 195);
      v104 = *v101;
      v105 = *v99;
      if (v102 >= v103)
      {
        memcpy(v104, v105, 4 * v103);
        v110 = *(this + 195);
        v111 = v102 - v110;
        memcpy(*v101 + 4 * v110, *(this + 134), 4 * v111);
        v107 = *v99;
        v108 = (*(this + 134) + 4 * v111);
        v109 = 4 * *(this + 195);
      }

      else
      {
        memcpy(v104, v105, 4 * v102);
        memmove(*v99, *v99 + 4 * *(this + 150), 4 * (*(this + 195) - *(this + 150)));
        v106 = *(this + 150);
        v107 = *v99 + 4 * (*(this + 195) - v106);
        v108 = *(this + 134);
        v109 = 4 * v106;
      }

      memcpy(v107, v108, v109);
      v99 += 2;
      ++v101;
      --v100;
    }

    while (v100);
  }

  if (v113)
  {
    v112 = v113;
    do
    {
      MEMORY[0x1E12BE7F0](*a2++, 1, *(this + 132), 1, *a3++, 1, *(this + 150));
      --v112;
    }

    while (v112);
  }
}

void AUVolumeCompressorV2::ProcessShortAudioBlocks(AUVolumeCompressorV2 *this, float **a2, unsigned int a3)
{
  v6 = *(this + 150);
  v7 = 2;
  v8 = v6;
  do
  {
    if (v6 / v7 < ((*(this + 165) * *(this + 139)) / 1000.0))
    {
      break;
    }

    if (v6 == v6 / v7 * v7)
    {
      v8 = v6 / v7;
    }

    ++v7;
  }

  while (v7 != 33);
  *(this + 151) = v8;
  if (v6)
  {
    v9 = 0;
    v44 = a3;
    v45 = (this + 1080);
    v42 = a2 + 1;
    v43 = a3 - 1;
    do
    {
      __C = 0;
      v10 = &(*a2)[v9];
      if (*(this + 659) == 1)
      {
        vDSP_maxmgv(v10, 1, &__C + 1, v8);
      }

      else
      {
        vDSP_svesq(v10, 1, &__C, v8);
        *&__C = *&__C / *(this + 151);
      }

      v11 = v42;
      v12 = v43;
      if (a3 >= 2)
      {
        do
        {
          __B = 0;
          v13 = &(*v11)[v9];
          v14 = *(this + 151);
          if (*(this + 659) == 1)
          {
            vDSP_maxmgv(v13, 1, &__B + 1, v14);
            v15 = *(&__C + 1);
            if (*(&__C + 1) < *(&__B + 1))
            {
              v15 = *(&__B + 1);
            }

            *(&__C + 1) = v15;
          }

          else
          {
            vDSP_svesq(v13, 1, &__B, v14);
            v16 = *&__B / *(this + 151);
            if (*&__C >= v16)
            {
              v16 = *&__C;
            }

            *&__C = v16;
          }

          ++v11;
          --v12;
        }

        while (v12);
      }

      if (*(this + 659))
      {
        v17 = *(&__C + 1) + 1.0e-20;
        v18 = log10f(v17) * 20.0;
        v19 = *(this + 174);
        if (v18 <= v19)
        {
          v19 = v18;
        }

        v20 = v19 - v18;
        v21 = *(this + 417);
        if ((*(this + 684) & (v20 > v21)) != 0)
        {
          v22 = *(this + 417);
        }

        else
        {
          v22 = v20;
        }

        if ((*(this + 684) & (v20 > v21)) == 0 && v20 > v21)
        {
          v22 = *(this + 166);
          if (v22 >= v20)
          {
            v22 = v20;
          }
        }

        *(this + 166) = v20;
        v23 = v22 < v21;
      }

      else
      {
        v24 = *&__C + 1.0e-20;
        v25 = log10f(v24);
        v23 = 0;
        v26 = v25 * 10.0;
        v27 = *(this + 172);
        if (v26 <= v27)
        {
          v27 = v26;
        }

        v22 = v27 - v26;
        *(this + 166) = v22;
      }

      *(this + 684) = v23;
      v28 = *(this + 151);
      v29 = *(this + 132);
      v30 = v29;
      v31 = v28;
      if (v28)
      {
        do
        {
          v32 = *(this + 417);
          if (v22 >= v32)
          {
            v33 = 672;
          }

          else
          {
            v33 = 668;
          }

          v34 = v32 + (*(this + v33) * (v22 - v32));
          *(this + 417) = v34;
          *v30++ = v34;
          --v31;
        }

        while (v31);
      }

      else
      {
        v28 = 0;
      }

      HIDWORD(__B) = 1101004800;
      vDSP_vsdiv(v29, 1, &__B + 1, v29, 1, v28);
      v8 = *(this + 151);
      if (v8)
      {
        v35 = *(this + 132);
        v36 = *(this + 151);
        do
        {
          *v35 = __exp10f(*v35);
          ++v35;
          --v36;
        }

        while (v36);
      }

      v37 = v44;
      v38 = v45;
      v39 = a2;
      if (a3)
      {
        do
        {
          MEMORY[0x1E12BE7F0](*v38, 1, *(this + 132), 1, *v38, 1, *(this + 151));
          memcpy(*(this + 133), &(*v39)[v9], 4 * *(this + 151));
          v40 = *v39++;
          memcpy((v40 + 4 * v9), *v38, 4 * *(this + 151));
          v41 = *v38;
          v38 += 2;
          memcpy(v41, *(this + 133), 4 * *(this + 151));
          --v37;
        }

        while (v37);
        v8 = *(this + 151);
      }

      v9 += v8;
    }

    while (v9 < *(this + 150));
  }
}

double SlidingRMSWindow::ComputeRMS(const float **this)
{
  __C = 0.0;
  v1 = *this;
  if (!v1)
  {
    return 0.0;
  }

  vDSP_sve(this[2], 1, &__C, v1);
  *&result = __C / *this;
  return result;
}

float AUVolumeCompressorV2::AdjustForVolume(float32x2_t *this, double a2, double a3)
{
  v4 = this[210];
  v5 = this[212];
  v6 = this[209].u32[1];
  v8 = *v4;
  v7 = v4[1];
  v10 = *v5;
  v9 = v5[1];
  if (v6)
  {
    v11 = this[78].f32[1];
    if (v11 > v7)
    {
      v12 = 2;
      do
      {
        v10 = v9;
        v8 = v7;
        v7 = v4[v12];
        v9 = v5[v12];
        if (v12 > v6)
        {
          break;
        }

        ++v12;
      }

      while (v11 > v7);
    }
  }

  if (v7 != v8)
  {
    v9 = (v9 - (((v9 - v10) / (v7 - v8)) * v7)) + (((v9 - v10) / (v7 - v8)) * this[78].f32[1]);
  }

  *&a3 = this[76].f32[1] - v9;
  this[74] = vsub_f32(this[74], vdup_lane_s32(*&a3, 0));
  v13 = v9 + this[72].f32[0];
  this[70].f32[0] = v13;
  v14 = __exp10f(v13 / 20.0);
  this[70].f32[1] = v14;
  if (this[67].i8[1] == 1)
  {
    this[71].f32[0] = v14;
  }

  if (this[67].i8[0] == 1)
  {
    v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }

    ausdk::AUElement::SetParameter(v15, 0, this[70].f32[0]);
    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
    if ((v18 & 1) == 0)
    {
      goto LABEL_26;
    }

    ausdk::AUElement::SetParameter(v17, 0x3Cu, this[74].f32[0]);
    v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }

    ausdk::AUElement::SetParameter(v19, 0x3Du, this[74].f32[1]);
  }

  if (this[214].i32[0])
  {
    v21 = 1;
    while (1)
    {
      v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
      if ((v23 & 1) == 0)
      {
        break;
      }

      Parameter = ausdk::AUElement::GetParameter(v22, v21 + 39);
      if (Parameter < this[74].f32[0])
      {
        Parameter = this[74].f32[0];
      }

      *(*&this[215] + 4 * v21) = Parameter;
      v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = ausdk::AUElement::GetParameter(v25, v21 + 49);
      v28 = this[219];
      v28[v21] = 1.0 / v27;
      v29 = this[214].u32[0];
      if (v21++ >= v29)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    abort();
  }

  LODWORD(v29) = 0;
  v28 = this[219];
LABEL_25:
  v31 = this[215];
  *v31 = this[74].i32[0];
  *&v31[(v29 + 1)] = *&v31[v29] + 100.0;
  result = 1.0 / this[79].f32[0];
  *v28 = result;
  return result;
}

uint64_t AUVolumeCompressorV2::SetParameter(AUVolumeCompressorV2 *this, int a2, int a3, float a4)
{
  if (a3)
  {
    goto LABEL_52;
  }

  if (a2 <= 16)
  {
    if (a2 > 9)
    {
      if (a2 <= 12)
      {
        if ((a2 - 10) >= 2)
        {
          if (a2 == 12)
          {
            v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v17)
            {
              ausdk::AUElement::SetParameter(v16, 0xCu, a4);
              result = 0;
              ++*(this + 137);
              return result;
            }

            goto LABEL_99;
          }

          goto LABEL_68;
        }
      }

      else if ((a2 - 15) >= 2)
      {
        if (a2 == 13)
        {
          if (a4 > 5.0 || a4 < 0.0)
          {
            goto LABEL_52;
          }

          v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v27 & 1) == 0)
          {
            goto LABEL_99;
          }

          if (ausdk::AUElement::GetParameter(v26, 0xDu) == a4)
          {
            goto LABEL_52;
          }

          v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v28 & 1) == 0)
          {
            goto LABEL_99;
          }

          v15 = 13;
        }

        else
        {
          if (a2 != 14)
          {
            goto LABEL_68;
          }

          if (a4 > 5.0 || a4 < 0.0)
          {
            goto LABEL_52;
          }

          v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v12 & 1) == 0)
          {
            goto LABEL_99;
          }

          if (ausdk::AUElement::GetParameter(v11, 0xEu) == a4)
          {
LABEL_52:
            result = 0;
            ++*(this + 135);
            return result;
          }

          v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v14 & 1) == 0)
          {
            goto LABEL_99;
          }

          v15 = 14;
        }

        ausdk::AUElement::SetParameter(v13, v15, a4);
        (*(*this + 432))(this, 4, 0, 0);
        goto LABEL_52;
      }
    }

    else if ((a2 - 2) >= 7)
    {
      if (a2 == 1)
      {
        v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v35)
        {
          ausdk::AUElement::SetParameter(v34, 1u, a4);
          result = 0;
          *(this + 145) = a4;
          return result;
        }

        goto LABEL_99;
      }

      if (a2 == 9)
      {
        result = 0;
        if (a4 >= 6.0 && a4 <= 100.0)
        {
          v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v9)
          {
            v10 = 9;
LABEL_51:
            ausdk::AUElement::SetParameter(v8, v10, a4);
            goto LABEL_52;
          }

          goto LABEL_99;
        }

        return result;
      }

LABEL_68:
      if ((a2 - 20) > 0x27)
      {
        return 4294956418;
      }

      v29 = a2 % 0xAu;
      v30 = a2 - v29;
      result = 4294956418;
      if ((a2 - v29) > 39)
      {
        if (v30 == 40)
        {
          v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v45)
          {
            if (ausdk::AUElement::GetParameter(v44, 0xEu) <= v29)
            {
              goto LABEL_52;
            }

            v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v46)
            {
              v10 = v29 + 40;
              goto LABEL_51;
            }
          }

          goto LABEL_99;
        }

        if (v30 == 50)
        {
          v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v39)
          {
            if (ausdk::AUElement::GetParameter(v38, 0xEu) <= v29)
            {
              goto LABEL_52;
            }

            v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v40)
            {
              v10 = v29 + 50;
              goto LABEL_51;
            }
          }

          goto LABEL_99;
        }
      }

      else
      {
        if (v30 == 20)
        {
          v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v42)
          {
            if (ausdk::AUElement::GetParameter(v41, 0xDu) <= v29)
            {
              goto LABEL_52;
            }

            v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v43)
            {
              v10 = v29 + 20;
              goto LABEL_51;
            }
          }

          goto LABEL_99;
        }

        if (v30 == 30)
        {
          v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v32)
          {
            if (ausdk::AUElement::GetParameter(v31, 0xDu) <= v29)
            {
              goto LABEL_52;
            }

            v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v33)
            {
              v10 = v29 + 30;
              goto LABEL_51;
            }
          }

          goto LABEL_99;
        }
      }

      return result;
    }

LABEL_49:
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v21)
    {
      v10 = a2;
      goto LABEL_51;
    }

    goto LABEL_99;
  }

  if (a2 > 69)
  {
    if (a2 > 72)
    {
      if ((a2 - 74) >= 2)
      {
        if (a2 == 73)
        {
          result = 0;
          if (a4 >= 1.0 && a4 <= 360.0)
          {
            v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v36)
            {
              v10 = 73;
              goto LABEL_51;
            }

            goto LABEL_99;
          }

          return result;
        }

        if (a2 == 76)
        {
          v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v20)
          {
            ausdk::AUElement::SetParameter(v19, 0x4Cu, a4);
            result = 0;
            *(this + 173) = a4;
            return result;
          }

          goto LABEL_99;
        }

        goto LABEL_68;
      }

      goto LABEL_49;
    }

    if (a2 == 70)
    {
      v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v25)
      {
        ausdk::AUElement::SetParameter(v24, 0x46u, a4);
        result = 0;
        *(this + 172) = a4;
        return result;
      }

      goto LABEL_99;
    }

    if (a2 == 71)
    {
      v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v23)
      {
        ausdk::AUElement::SetParameter(v22, 0x47u, a4);
        result = 0;
        *(this + 174) = a4;
        return result;
      }

      goto LABEL_99;
    }

    goto LABEL_30;
  }

  if (a2 <= 65)
  {
    if (a2 == 17)
    {
      if (a4 == 0.0 || a4 == 1.0)
      {
        v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v37)
        {
          v10 = 17;
          goto LABEL_51;
        }

        goto LABEL_99;
      }

      return 0;
    }

    if (a2 == 18)
    {
      goto LABEL_49;
    }

    if (a2 != 65)
    {
      goto LABEL_68;
    }

LABEL_30:
    if (a4 == 0.0 || a4 == 1.0)
    {
      goto LABEL_49;
    }

    return 0;
  }

  if ((a2 - 68) < 2 || a2 == 66)
  {
    goto LABEL_49;
  }

  if (a2 != 67)
  {
    goto LABEL_68;
  }

  result = 0;
  if (a4 >= 3.0 && a4 <= 50.0)
  {
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v18)
    {
      v10 = 67;
      goto LABEL_51;
    }

LABEL_99:
    abort();
  }

  return result;
}

uint64_t AUVolumeCompressorV2::GetParameter(AUVolumeCompressorV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a2 - 62 <= 2)
  {
    *(this + 536) = 1;
  }

  return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
}

uint64_t AUVolumeCompressorV2::SetProperty(AUVolumeCompressorV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 64001)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 133) = *a5;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 3700)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 376) = *a5;
      return result;
    }

    return 4294956445;
  }

  if (a2 != 21)
  {
    return 4294956417;
  }

  if (a6 < 4)
  {
    return 4294956445;
  }

  v8 = *a5;
  v9 = *a5 != 0;
  if (v9 != (*(*this + 576))(this))
  {
    (*(*this + 584))(this, v8 != 0);
  }

  return 0;
}

uint64_t AUVolumeCompressorV2::GetProperty(AUVolumeCompressorV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 64001:
      v7 = *(this + 133);
      goto LABEL_9;
    case 3700:
      v7 = *(this + 376);
      goto LABEL_9;
    case 21:
      v7 = (*(*this + 576))(this);
LABEL_9:
      result = 0;
      *a5 = v7;
      return result;
  }

  return 4294956417;
}

uint64_t AUVolumeCompressorV2::GetPropertyInfo(AUVolumeCompressorV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUVolumeCompressorV2::Reset(AUVolumeCompressorV2 *this)
{
  v2 = *(this + 442);
  if (v2)
  {
    v3 = (this + 784);
    v4 = this + 1080;
    v5 = *(this + 133);
    v6 = *(this + 656);
    do
    {
      *v3 = 0;
      v7 = *(v4 + 1) - *v4;
      if (v7 >= 1)
      {
        bzero(*v4, v7);
      }

      if (v5)
      {
        v8 = *(v4 + 16);
        v9 = *(v4 + 17) - v8;
        if (v9 >= 1)
        {
          bzero(v8, v9);
        }
      }

      if ((v6 & 1) == 0)
      {
        v10 = *(v4 + 32);
        v11 = *(v4 + 33) - v10;
        if (v11 >= 1)
        {
          bzero(v10, v11);
        }

        v12 = *(v4 + 48);
        v13 = *(v4 + 49) - v12;
        if (v13 >= 1)
        {
          bzero(v12, v13);
        }
      }

      v3 += 4;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  *(this + 207) = 0;
  *(this + 177) = 0;
  *(this + 537) = 1;
  v14 = *(this + 93);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  *(this + 175) = 0;
  *(this + 143) = -1018691584;
  *(this + 1772) = 0;
  if ((*(this + 416) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    *(this + 416) = 1065353216;
  }

  return 0;
}

uint64_t AUVolumeCompressorV2::Cleanup(void **this)
{
  free(this[95]);
  this[95] = 0;
  free(this[96]);
  this[96] = 0;
  v2 = this[130];
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8052888210);
    this[130] = 0;
  }

  v3 = this[131];
  if (v3)
  {
    MEMORY[0x1E12BD130](v3, 0x1000C8052888210);
    this[131] = 0;
  }

  v4 = this[132];
  if (v4)
  {
    MEMORY[0x1E12BD130](v4, 0x1000C8052888210);
    this[132] = 0;
  }

  v5 = this[133];
  if (v5)
  {
    MEMORY[0x1E12BD130](v5, 0x1000C8052888210);
    this[133] = 0;
  }

  v6 = this[134];
  if (v6)
  {
    MEMORY[0x1E12BD130](v6, 0x1000C8052888210);
    this[134] = 0;
  }

  v7 = 0;
  v8 = (this + 199);
  do
  {
    result = *&v8[v7];
    if (result)
    {
      result = MEMORY[0x1E12BD130](result, 0x1000C8052888210);
      *&v8[v7] = 0;
    }

    v7 += 8;
  }

  while (v7 != 64);
  return result;
}

uint64_t AUVolumeCompressorV2::Initialize(AUVolumeCompressorV2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), v13 = *(Element + 80), *v14 = v3, *&v14[16] = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v12.mSampleRate = *(v4 + 80);
  *&v12.mBytesPerPacket = v6;
  *&v12.mBitsPerChannel = *(v4 + 112);
  v7 = *&v13;
  if (*&v13 == v12.mSampleRate && DWORD2(v13) == v12.mFormatID && *v14 == *&v12.mBytesPerPacket)
  {
    v8 = *&v14[12];
    if (*&v14[12] == *&v12.mChannelsPerFrame)
    {
      v9 = CA::Implementation::EquivalentFormatFlags(&v13, &v12, v5);
      if (v8 <= 8 && v9)
      {
        v10 = v7;
        *(this + 139) = v10;
        *(this + 442) = v8;
        *(this + 150) = *(this + 84);
        *(this + 656) = *(this + 376);
        operator new[]();
      }
    }
  }

  return 4294956428;
}

uint64_t AUVolumeCompressorV2::InitializeAWeightingFilter(AUVolumeCompressorV2 *this)
{
  v31 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element || (v3 = *(Element + 80), (v4 = ausdk::AUScope::GetElement((this + 80), 0)) == 0) || (v5 = *(v4 + 96), *&v21.mSampleRate = *(v4 + 80), *&v21.mBytesPerPacket = v5, *&v21.mBitsPerChannel = *(v4 + 112), (v6 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = *(v6 + 96);
  *&v20.mSampleRate = *(v6 + 80);
  *&v20.mBytesPerPacket = v7;
  *&v20.mBitsPerChannel = *(v6 + 112);
  v8 = NewIIRFilter(&v21, &v20);
  v9 = *(this + 93);
  if (v9 != v8)
  {
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(this + 93) = v8;
    v9 = v8;
  }

  if (!v8)
  {
    return 4294956428;
  }

  v10 = 0;
  v11 = v3;
  do
  {
    v12 = (&v22 + v10);
    *v12 = 0;
    v12[1] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v10 += 40;
    v12[2] = 0x3FF0000000000000;
  }

  while (v10 != 120);
  if (v11 <= 12000.0)
  {
    v22 = 0xBFF7834F28302BC1;
    v13 = xmmword_1DE09CDB0;
    v14 = xmmword_1DE09CDC0;
    v15 = xmmword_1DE09CDD0;
    v16 = xmmword_1DE09CDE0;
    v17 = xmmword_1DE09CDF0;
    v18 = xmmword_1DE09CE00;
    goto LABEL_24;
  }

  if (v11 <= 18000.0)
  {
    v22 = 0x3FEA4A403439C8C0;
    v13 = xmmword_1DE09CE10;
    v14 = xmmword_1DE09CE20;
    v15 = xmmword_1DE09CE30;
    v16 = xmmword_1DE09CE40;
    v17 = xmmword_1DE09CE50;
    v18 = xmmword_1DE09CE60;
    goto LABEL_24;
  }

  if (v11 <= 23000.0)
  {
    v22 = 0x3FE13D6FAE466E9ALL;
    v13 = xmmword_1DE09CE70;
    v14 = xmmword_1DE09CE80;
    v15 = xmmword_1DE09CE90;
    v16 = xmmword_1DE09CEA0;
    v17 = xmmword_1DE09CEB0;
    v18 = xmmword_1DE09CEC0;
    goto LABEL_24;
  }

  if (v11 <= 32000.0)
  {
    v22 = 0xBFFCBC9FA7C3C51BLL;
    v13 = xmmword_1DE09CED0;
    v14 = xmmword_1DE09CEE0;
    v15 = xmmword_1DE09CEF0;
    v16 = xmmword_1DE09CF00;
    v17 = xmmword_1DE09CF10;
    v18 = xmmword_1DE09CF20;
    goto LABEL_24;
  }

  if (v11 <= 46000.0)
  {
    v22 = 0xBFC1FD161AF3D43BLL;
    v13 = xmmword_1DE09CF30;
    v14 = xmmword_1DE09CF40;
    v15 = xmmword_1DE09CF50;
    v16 = xmmword_1DE09CF60;
    v17 = xmmword_1DE09CF70;
    v18 = xmmword_1DE09CF80;
    goto LABEL_24;
  }

  if (v11 <= 50000.0)
  {
    v22 = 0xBFFE4D4B25EBE525;
    v13 = xmmword_1DE09CF90;
    v14 = xmmword_1DE09CFA0;
    v15 = xmmword_1DE09CFB0;
    v16 = xmmword_1DE09CFC0;
    v17 = xmmword_1DE09CFD0;
    v18 = xmmword_1DE09CFE0;
LABEL_24:
    v23 = v18;
    v24 = v17;
    v25 = v16;
    v26 = 0x3FF0000000000000;
    v27 = v15;
    v28 = v14;
    v29 = 0x3FF0000000000000;
    v30 = v13;
  }

  (*(*v9 + 16))(v9, 3, &v22);
  return 0;
}

void AUVolumeCompressorV2::~AUVolumeCompressorV2(void **this)
{
  AUVolumeCompressorV2::~AUVolumeCompressorV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59237B0;
  AUVolumeCompressorV2::Cleanup(this);
  v2 = this[219];
  if (v2)
  {
    v3 = this[220];
    if (v3 != v2)
    {
      this[220] = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    this[219] = 0;
    this[220] = 0;
  }

  v4 = this[217];
  if (v4)
  {
    v5 = this[218];
    if (v5 != v4)
    {
      this[218] = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    this[217] = 0;
    this[218] = 0;
  }

  v6 = this[215];
  if (v6)
  {
    v7 = this[216];
    if (v7 != v6)
    {
      this[216] = &v7[(v6 - v7 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v6);
    this[215] = 0;
    this[216] = 0;
  }

  v8 = this[212];
  if (v8)
  {
    v9 = this[213];
    if (v9 != v8)
    {
      this[213] = &v9[(v8 - v9 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v8);
    this[212] = 0;
    this[213] = 0;
  }

  v10 = this[210];
  if (v10)
  {
    v11 = this[211];
    if (v11 != v10)
    {
      this[211] = &v11[(v10 - v11 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v10);
    this[210] = 0;
    this[211] = 0;
  }

  for (i = 0; i != -16; i -= 2)
  {
    v13 = &this[i];
    v14 = this[i + 197];
    if (v14)
    {
      v15 = v13[198];
      if (v15 != v14)
      {
        v13[198] = &v15[(v14 - v15 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      v16 = v13 + 197;
      operator delete(v14);
      *v16 = 0;
      v16[1] = 0;
    }
  }

  for (j = 0; j != -16; j -= 2)
  {
    v18 = &this[j];
    v19 = this[j + 181];
    if (v19)
    {
      v20 = v18[182];
      if (v20 != v19)
      {
        v18[182] = &v20[(v19 - v20 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      v21 = v18 + 181;
      operator delete(v19);
      *v21 = 0;
      v21[1] = 0;
    }
  }

  for (k = 0; k != -16; k -= 2)
  {
    v23 = &this[k];
    v24 = this[k + 165];
    if (v24)
    {
      v25 = v23[166];
      if (v25 != v24)
      {
        v23[166] = &v25[(v24 - v25 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      v26 = v23 + 165;
      operator delete(v24);
      *v26 = 0;
      v26[1] = 0;
    }
  }

  for (m = 0; m != -16; m -= 2)
  {
    v28 = &this[m];
    v29 = this[m + 149];
    if (v29)
    {
      v30 = v28[150];
      if (v30 != v29)
      {
        v28[150] = &v30[(v29 - v30 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      v31 = v28 + 149;
      operator delete(v29);
      *v31 = 0;
      v31[1] = 0;
    }
  }

  for (n = 126; n != 94; n -= 4)
  {
    CDSPSplitComplex::~CDSPSplitComplex(&this[n]);
  }

  v33 = this[93];
  if (v33)
  {
    (*(*v33 + 8))(v33);
    this[93] = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUTweakaLeakIR::ValidFormat(AUTweakaLeakIR *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v5 == 1 || v5 == 2)
  {
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

uint64_t AUTweakaLeakIR::SupportedNumChannels(AUTweakaLeakIR *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUTweakaLeakIR::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUTweakaLeakIR::GetParameterInfo(AUTweakaLeakIR *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x1D)
  {
    v6 = off_1E866B510[a3];
    v7 = dword_1DE0BB558[a3];
    v8 = flt_1DE0BB5D0[a3];
    v9 = flt_1DE0BB648[a3];
    v10 = flt_1DE0BB6C0[a3];
    v11 = dword_1DE0BB738[a3];
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

uint64_t AUTweakaLeakIR::GetParameterList(AUTweakaLeakIR *this, int a2, unsigned int *a3, unsigned int *a4)
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
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09C1F0;
    *(a3 + 5) = xmmword_1DE09C200;
    *(a3 + 6) = xmmword_1DE09C210;
    *(a3 + 14) = 0x1D0000001CLL;
  }

  result = 0;
  *a4 = 30;
  return result;
}

uint64_t AUTweakaLeakIR::Render(AUTweakaLeakIR *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_22;
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
        goto LABEL_25;
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
LABEL_19:
            if (*(v17 + 144))
            {
              v18 = *(v17 + 152) + 48;
              v20[0] = v14 + 48;
              v20[1] = v18;
              if (*(v9 + 144))
              {
                v19 = *(v9 + 152) + 48;
                return (*(*this + 184))(this, a2, a4, 2, v20, 1, &v19);
              }
            }

LABEL_25:
            ausdk::Throw(0xFFFFFFFFLL);
          }
        }

        else if (!result)
        {
          goto LABEL_14;
        }

        return result;
      }

      v17 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v17)
      {
        goto LABEL_19;
      }
    }

LABEL_22:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUTweakaLeakIR::ProcessMultipleBufferLists(AUTweakaLeakIR *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v76[1] = *MEMORY[0x1E69E9840];
  if ((*(this + 856) & 1) != 0 || (*(this + 676) & 1) == 0)
  {
    memcpy((*a7)->mBuffers[0].mData, (*a5)->mBuffers[0].mData, 4 * *(this + 135));
  }

  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  if ((*(this + 886) & 1) == 0 && (*(this + 859) & 1) == 0 && *(this + 860) != 1 || (result = AUTweakaLeakIR::InitializeFFTWindowInternals(this), !result))
  {
    AUTweakaLeakIR::ApplyDymamicTLIRParams(this);
    result = 4294956428;
    if (a4)
    {
      if (a6 == 1)
      {
        if (a4 > 1)
        {
          __A = 0.0;
          if (*(this + 1128) == 1 && *(this + 1072) == 1)
          {
            v73[0] = *(this + 138);
            v18 = (*(this + 139) - v73[0]) >> 2;
            v76[0] = *(this + 135);
            ExpectedNumberOfOutputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(this + 133));
            v20 = *(this + 136) - *(this + 135);
            if (ExpectedNumberOfOutputFrames <= (v20 >> 2))
            {
              v21 = ExpectedNumberOfOutputFrames;
            }

            else
            {
              v21 = (v20 >> 2);
              RequiredNumberOfInputFrames = CA::AudioSampleRateConverter::GetRequiredNumberOfInputFrames(*(this + 133));
              if (RequiredNumberOfInputFrames > ((*(this + 139) - *(this + 138)) >> 2))
              {
                CAAssertRtn();
              }

              LODWORD(v18) = RequiredNumberOfInputFrames;
            }

            v24 = CA::AudioSampleRateConverter::Process(*(this + 133), v73, v18, v76, v21);
            v25 = *(this + 136);
            if (v24)
            {
              vDSP_vclr(*(this + 135), 1, (v25 - *(this + 135)) >> 2);
            }

            else
            {
              v26 = *(this + 135);
              v27 = (v25 - v26) >> 2;
              if (v27 > v21)
              {
                vDSP_vclr((v26 + 4 * v21), 1, v27 - v21);
              }
            }

            mData = *(this + 135);
            *(this + 1128) = 0;
          }

          else
          {
            mData = a5[1]->mBuffers[0].mData;
          }

          memcpy(*(this + 101), mData, 4 * *(this + 138));
          if (*(this + 768) == 1 && (memcpy((*(this + 101) + 4 * *(this + 139)), mData, 4 * *(this + 138)), (*(this + 768) & 1) != 0))
          {
            MEMORY[0x1E12BE7F0](*(this + 101), 1, *(this + 102), 1, *(this + 101), 1, *(this + 137));
          }

          else
          {
            MEMORY[0x1E12BE7F0](*(this + 101), 1, *(this + 102), 1, *(this + 101), 1, *(this + 138));
            v28 = *(this + 137);
            v29 = *(this + 138);
            if (v28 > v29)
            {
              vDSP_vfill(&__A, (*(this + 101) + 4 * v29), 1, v28 - v29);
            }
          }

          MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 840), *(this + 101), (this + 824), 1.0);
          v30 = *(this + 174);
          v31 = (*(this + 103) + 4 * v30);
          v32 = *(this + 104);
          MEMORY[0x1E12BE990](v31, 1, v31, 1, *(this + 176));
          v33 = v32 + 4 * v30;
          MEMORY[0x1E12BE990](v33, 1, v33, 1, *(this + 176));
          MEMORY[0x1E12BE5D0](v31, 1, v33, 1, v31, 1, *(this + 176));
          v34 = *(this + 176);
          if (v34)
          {
            v35 = 0.0;
            do
            {
              v36 = *v31++;
              v35 = v35 + sqrtf(v36);
              --v34;
            }

            while (v34);
          }

          else
          {
            v35 = 0.0;
          }

          v37 = *(this + 140);
          if (*(this + 768) == 1)
          {
            v38 = (v37 * v35) + 1.0e-15;
          }

          else
          {
            v38 = ((v35 * v37) * *(this + 177)) + 1.0e-15;
          }

          v39 = log10f(v38) * 20.0;
          v40 = *(this + 178);
          v41 = v39 - v40;
          if ((v39 - v40) >= *(this + 182))
          {
            if (v41 >= *(this + 183))
            {
              v42 = v38;
              if (v41 > *(this + 184))
              {
                v42 = *(this + 186);
              }
            }

            else
            {
              v42 = *(this + 187);
            }
          }

          else
          {
            v42 = *(this + 185);
          }

          v43 = *(this + 537);
          if (v43 == 1)
          {
            v44 = *(this + 195);
            v45 = *(this + 193);
          }

          else
          {
            v45 = *(this + 193);
            *(this + 195) = v45;
            v44 = v42;
          }

          v46 = 724;
          if (v44 > v45)
          {
            v46 = 720;
          }

          v47 = *(this + 222);
          v48 = *(this + 223);
          v49 = *(this + 904) == 1 && v47 > (v48 - *(this + 224));
          v50 = *(this + v46);
          *(this + 904) = v47 > v48 || v49;
          if (v47 > v48 || v49 || (*(this + 887) & 1) == 0)
          {
            v50 = *(this + 225);
            v44 = *(this + 185);
          }

          if ((v43 & 1) == 0)
          {
            v45 = (v50 * v44) + (1.0 - v50) * v45;
            *(this + 193) = v45;
          }

          v51 = log10f(v45 + 1.0e-10) * 20.0;
          v52 = v40 - v51;
          if (*(this + 536))
          {
            v53 = *(this + 179);
          }

          else
          {
            v54 = *(this + 171);
            if (v52 >= v54)
            {
              v54 = v40 - v51;
            }

            if (*(this + 170) >= v54)
            {
              v53 = v54;
            }

            else
            {
              v53 = *(this + 170);
            }
          }

          v55 = *(this + 126);
          if (v55 && *(this + 538) != 1)
          {
            BiquadInterpolator::GetCoefficientsAtPosition(v55, *(this + 127), *(this + 128), v53);
            v57 = 0.0;
            if (*(this + 227))
            {
              v61 = 0;
              v62 = 0;
              do
              {
                DspLib::Biquad::read(v61 + *(this + 127), v73);
                v63 = *(this + 114);
                v64 = *v73;
                *(v63 + 16) = v74;
                *v63 = v64;
                DspLib::Biquad::Filter::setCoefficients(this + 936, *(this + 114), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 115) - *(this + 114)) >> 2), v62++, 0x41uLL);
                v61 += 20;
              }

              while (v62 < *(this + 227));
            }
          }

          else
          {
            v56 = v53 * *(this + 191);
            if (v56 < *(this + 171))
            {
              v56 = *(this + 171);
            }

            if (*(this + 170) >= v56)
            {
              v57 = v56;
            }

            else
            {
              v57 = *(this + 170);
            }

            v58 = *(this + 190);
            AUTweakaLeakIR::CalcPeakingShelfCoeffs(this, v57, *(this + 189), *(this + 188));
            DspLib::Biquad::Filter::setCoefficients(this + 936, *(this + 114), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 115) - *(this + 114)) >> 2), 0, 0x41uLL);
            if (*(this + 227) >= 2u)
            {
              AUTweakaLeakIR::CalcPeakingShelfCoeffs(this, -v57, v58, *(this + 188));
              DspLib::Biquad::Filter::setCoefficients(this + 936, *(this + 114), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 115) - *(this + 114)) >> 2), 1, 0x41uLL);
              if (*(this + 227) >= 3u)
              {
                v59 = *(this + 114);
                *v59 = DspLib::Biquad::kBypassSection;
                *(v59 + 16) = 0;
                if (*(this + 227) >= 3u)
                {
                  v60 = 2;
                  do
                  {
                    DspLib::Biquad::Filter::setCoefficients(this + 936, *(this + 114), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 115) - *(this + 114)) >> 2), v60++, 0x41uLL);
                  }

                  while (v60 < *(this + 227));
                }
              }
            }
          }

          DspLib::Biquad::Filter::process(this + 117, (*a5)->mBuffers[0].mData, a3, (*a7)->mBuffers[0].mData, a3);
          *(this + 194) = v53;
          v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v66 & 1) == 0 || (ausdk::AUElement::SetParameter(v65, 0x18u, v38), v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v68 & 1) == 0) || (ausdk::AUElement::SetParameter(v67, 0x19u, v51), v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v70 & 1) == 0))
          {
            abort();
          }

          ausdk::AUElement::SetParameter(v69, 0x1Au, v53);
          v71 = *(this + 66);
          if (v71)
          {
            *v73 = v39;
            *(v73 + 1) = log10f(v42) * 20.0;
            v73[1] = __PAIR64__(LODWORD(v52), LODWORD(v51));
            v74 = v53;
            v75 = v57;
            AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>::Buffer::Write(*v71, v73);
          }
        }

        else
        {
          v14 = 0;
          v15 = 4 * a3;
          for (i = 16; ; i += 16)
          {
            Element = ausdk::AUScope::GetElement((this + 128), 0);
            if (!Element)
            {
              ausdk::Throw(0xFFFFD583);
            }

            if (v14 >= *(Element + 108))
            {
              break;
            }

            memcpy(*(&(*a7)->mNumberBuffers + i), *(&(*a5)->mNumberBuffers + i), v15);
            ++v14;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t AUTweakaLeakIR::InitializeFFTWindowInternals(AUTweakaLeakIR *this)
{
  *(this + 99) = *(this + 98);
  std::unique_ptr<AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>>::reset[abi:ne200100](this + 66, 0);
  *(this + 879) = 0x101010101010101;
  *(this + 865) = 0x101010101010101;
  *(this + 873) = 0x101010101010101;
  *(this + 857) = 0x101010101010101;
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_52;
  }

  *(this + 768) = ausdk::AUElement::GetParameter(v2, 0x1Du) != 0.0;
  *(this + 886) = 0;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_52;
  }

  Parameter = ausdk::AUElement::GetParameter(v4, 2u);
  *(this + 137) = Parameter;
  *(this + 859) = 0;
  if (*(this + 768) == 1)
  {
    v7 = *(this + 135);
    if (v7 <= Parameter)
    {
      v7 = Parameter;
    }

    Parameter = 2 * v7;
    *(this + 137) = 2 * v7;
  }

  __A = 0;
  *(this + 139) = Parameter >> 1;
  if (MultiRadixRealFFT::Initialize((this + 840), Parameter))
  {
    v8 = 512;
    if (*(this + 768) == 1)
    {
      v9 = *(this + 135);
      if (v9 >= 0x301)
      {
        v10 = 2048;
      }

      else
      {
        v10 = 1024;
      }

      if (v9 < 0x181)
      {
        v10 = 512;
      }

      if (v10 > v9)
      {
        v9 = v10;
      }

      v8 = 2 * v9;
    }

    else
    {
      v9 = 256;
    }

    *(this + 139) = v9;
    *(this + 137) = v8;
    v11 = MultiRadixRealFFT::Initialize((this + 840), v8);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = 2 * *(this + 135);
      while (1)
      {
        v15 = *(this + v13 + 564);
        if (v15 >= v14)
        {
          *(this + 137) = v15;
          *(this + 139) = v15 >> 1;
          v12 = MultiRadixRealFFT::Initialize((this + 840), v15);
          if (!v12)
          {
            break;
          }
        }

        v13 += 4;
        if (v13 == 112)
        {
          *(this + 676) = 0;
          if (AUTweakaLeakIR::getAUSLog(void)::onceToken != -1)
          {
            dispatch_once(&AUTweakaLeakIR::getAUSLog(void)::onceToken, &__block_literal_global_9095);
          }

          v16 = AUTweakaLeakIR::getAUSLog(void)::gLog;
          if (os_log_type_enabled(AUTweakaLeakIR::getAUSLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "AUTeakaLeakIR can not find an appropriate FFT Size, going into bypass", buf, 2u);
          }

          goto LABEL_28;
        }
      }
    }
  }

  v12 = 0;
  *(this + 676) = 1;
LABEL_28:
  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v18 & 1) == 0)
  {
LABEL_52:
    abort();
  }

  v19 = ausdk::AUElement::GetParameter(v17, 3u);
  *(this + 138) = v19;
  *(this + 860) = 0;
  if (*(this + 768) == 1)
  {
    v20 = *(this + 139);
    if (*(this + 135) < v20)
    {
      v20 = *(this + 135);
    }

LABEL_36:
    *(this + 138) = v20;
    goto LABEL_37;
  }

  v21 = *(this + 137);
  if (v21 < v19)
  {
    *(this + 138) = v21;
    v19 = v21;
  }

  v20 = *(this + 135);
  if (v19 > v20)
  {
    goto LABEL_36;
  }

LABEL_37:
  *(this + 861) = 257;
  AUTweakaLeakIR::ApplyDymamicTLIRParams(this);
  v22 = *(this + 137);
  v44 = 0;
  std::vector<float>::assign(this + 98, 3 * v22, &v44, v23);
  v24 = *(this + 98);
  *(this + 101) = v24;
  *(this + 102) = &v24[v22];
  v25 = &v24[2 * v22];
  *(this + 103) = v25;
  v26 = *(this + 137);
  *(this + 104) = v25 + ((2 * v26) & 0x1FFFFFFFCLL);
  HIDWORD(__A) = 0;
  vDSP_vfill(&__A + 1, v24, 1, v26);
  vDSP_vfill(&__A + 1, *(this + 102), 1, *(this + 137));
  v27 = *(this + 101);
  v27->real = 1.0;
  v28 = 1.0;
  if (*(this + 676) == 1)
  {
    MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 840), v27, (this + 824), 1.0);
    v29 = *(this + 103);
    if (*(this + 768) == 1)
    {
      v30 = *(this + 174);
      v31 = &v29[v30];
      v32 = *(this + 104) + 4 * v30;
      MEMORY[0x1E12BE990](v31, 1, v31, 1, *(this + 176));
      MEMORY[0x1E12BE990](v32, 1, v32, 1, *(this + 176));
      MEMORY[0x1E12BE5D0](v31, 1, v32, 1, v31, 1, *(this + 176));
      v33 = *(this + 176);
      if (v33)
      {
        v34 = 0.0;
        do
        {
          v35 = *v31++;
          v34 = v34 + sqrtf(v35);
          --v33;
        }

        while (v33);
        v36 = v34 + 1.0e-30;
      }

      else
      {
        v36 = 1.0e-30;
      }

      v12 = 0;
      v28 = 1.0 / v36;
    }

    else
    {
      vDSP_svesq(v29, 1, &__A + 1, *(this + 139));
      vDSP_svesq(*(this + 104), 1, &__A, *(this + 139));
      v12 = 0;
      v28 = sqrtf(*(this + 139) / (*(&__A + 1) + *&__A));
    }
  }

  *(this + 140) = v28;
  **(this + 101) = 0;
  v37 = 552;
  if (*(this + 768))
  {
    v37 = 548;
  }

  v38 = *(this + v37);
  __A = 0x3F0A3D713EEB851FLL;
  if (v38)
  {
    v39 = 6.2832 / (2 * v38 - 1);
    v40 = *(this + 102);
    v41 = v38;
    do
    {
      v42 = __A;
      *v40++ = *(&v42 + 1) - (*&v42 * cosf(v39 * v41++));
      --v38;
    }

    while (v38);
  }

  return v12;
}

void AUTweakaLeakIR::ApplyDymamicTLIRParams(AUTweakaLeakIR *this)
{
  v2 = *(this + 137);
  v3 = *(this + 136);
  if (*(this + 857) == 1)
  {
    v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v5 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 536) = ausdk::AUElement::GetParameter(v4, 0) != 0.0;
    *(this + 857) = 0;
  }

  if (*(this + 878) == 1)
  {
    v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v7 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 537) = ausdk::AUElement::GetParameter(v6, 0x15u) != 0.0;
    *(this + 878) = 0;
  }

  if (*(this + 858) == 1)
  {
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 538) = ausdk::AUElement::GetParameter(v8, 1u) != 0.0;
    *(this + 858) = 0;
  }

  v10 = v2 / v3;
  if (*(this + 861) == 1)
  {
    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v12 & 1) == 0)
    {
      goto LABEL_88;
    }

    Parameter = ausdk::AUElement::GetParameter(v11, 4u);
    *(this + 172) = Parameter;
    *(this + 861) = 0;
    *(this + 174) = vcvtms_u32_f32(v10 * Parameter);
    if ((*(this + 862) & 1) == 0)
    {
      v14 = *(this + 175);
      goto LABEL_17;
    }
  }

  else if (*(this + 862) != 1)
  {
    goto LABEL_24;
  }

  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_88;
  }

  v17 = ausdk::AUElement::GetParameter(v15, 5u);
  *(this + 173) = v17;
  *(this + 862) = 0;
  v14 = vcvtms_u32_f32(v10 * v17);
  *(this + 175) = v14;
LABEL_17:
  v18 = *(this + 139);
  if (v14 > v18)
  {
LABEL_20:
    *(this + 175) = v18;
    v14 = v18;
    goto LABEL_21;
  }

  if (v14 <= 1)
  {
    v18 = 2;
    goto LABEL_20;
  }

LABEL_21:
  v19 = *(this + 174);
  if (v19 > v14)
  {
    *(this + 174) = v14;
    v19 = v14;
  }

  v20 = v14 - v19 + 1;
  *(this + 176) = v20;
  *(this + 177) = 1.0 / v20;
LABEL_24:
  v21 = *(this + 863);
  if (v21 == 1)
  {
    v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v23 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 178) = ausdk::AUElement::GetParameter(v22, 6u);
    *(this + 863) = 0;
  }

  if (*(this + 864) == 1)
  {
    v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v25 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 179) = ausdk::AUElement::GetParameter(v24, 7u);
    *(this + 864) = 0;
  }

  if (*(this + 865) == 1)
  {
    v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v27 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 170) = ausdk::AUElement::GetParameter(v26, 8u);
    *(this + 865) = 0;
  }

  if (*(this + 866) == 1)
  {
    v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v29 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 171) = ausdk::AUElement::GetParameter(v28, 9u);
    *(this + 866) = 0;
  }

  if (*(this + 867) != 1)
  {
    if ((*(this + 868) & 1) == 0)
    {
      if (!v21)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_88;
  }

  *(this + 184) = ausdk::AUElement::GetParameter(v30, 0xAu);
  *(this + 867) = 0;
  if (*(this + 868) == 1)
  {
LABEL_41:
    v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v33 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 183) = ausdk::AUElement::GetParameter(v32, 0xBu);
    *(this + 868) = 0;
  }

LABEL_44:
  v34 = *(this + 178);
  *(this + 185) = __exp10f(v34 * 0.05);
  *(this + 186) = __exp10f((v34 + *(this + 184)) * 0.05);
  *(this + 187) = __exp10f((v34 + *(this + 183)) * 0.05);
LABEL_45:
  if (*(this + 869) == 1)
  {
    v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v36 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 182) = ausdk::AUElement::GetParameter(v35, 0xCu);
    *(this + 869) = 0;
  }

  if (*(this + 870) == 1)
  {
    v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_88;
    }

    v39 = ausdk::AUElement::GetParameter(v37, 0xDu);
    *(this + 180) = v39;
    v40 = 1.0;
    if (v39 > 1.0 || (v40 = 0.0, v39 < 0.0))
    {
      *(this + 180) = v40;
    }

    *(this + 870) = 0;
  }

  if (*(this + 871) == 1)
  {
    v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_88;
    }

    v43 = ausdk::AUElement::GetParameter(v41, 0xEu);
    *(this + 181) = v43;
    v44 = 1.0;
    if (v43 > 1.0 || (v44 = 0.0, v43 < 0.0))
    {
      *(this + 181) = v44;
    }

    *(this + 871) = 0;
  }

  if (*(this + 872) == 1)
  {
    v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v46 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 188) = ausdk::AUElement::GetParameter(v45, 0xFu);
    *(this + 872) = 0;
  }

  if (*(this + 873) == 1)
  {
    v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v48 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 189) = ausdk::AUElement::GetParameter(v47, 0x10u);
    *(this + 873) = 0;
  }

  if (*(this + 874) == 1)
  {
    v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v50 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 190) = ausdk::AUElement::GetParameter(v49, 0x11u);
    *(this + 874) = 0;
  }

  if (*(this + 879) == 1)
  {
    v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v52 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 887) = ausdk::AUElement::GetParameter(v51, 0x16u) != 0.0;
    *(this + 879) = 0;
  }

  if (*(this + 880) == 1)
  {
    v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v54 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 222) = ausdk::AUElement::GetParameter(v53, 0x17u);
    *(this + 880) = 0;
  }

  if (*(this + 875) == 1)
  {
    v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v56 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 223) = ausdk::AUElement::GetParameter(v55, 0x12u);
    *(this + 875) = 0;
  }

  if (*(this + 876) == 1)
  {
    v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v58 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 224) = ausdk::AUElement::GetParameter(v57, 0x13u);
    *(this + 876) = 0;
  }

  if (*(this + 877) == 1)
  {
    v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v60 & 1) == 0)
    {
      goto LABEL_88;
    }

    *(this + 225) = ausdk::AUElement::GetParameter(v59, 0x14u);
    *(this + 877) = 0;
  }

  if (*(this + 885) == 1)
  {
    v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v62)
    {
      *(this + 191) = ausdk::AUElement::GetParameter(v61, 0x1Cu);
      *(this + 885) = 0;
      goto LABEL_87;
    }

LABEL_88:
    abort();
  }

LABEL_87:
  *(this + 881) = 0;
}