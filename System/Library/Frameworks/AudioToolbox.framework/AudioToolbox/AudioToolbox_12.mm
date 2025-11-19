uint64_t AUDspLib::initializeDspLibAlgorithms(uint64_t this, double a2)
{
  v2 = this;
  v3 = 0;
  for (i = (this + 528); ; i += 7)
  {
    v5 = *(v2 + 1588);
    if (v5)
    {
      v6 = *(v2 + 2120);
      v7 = v6 == *(v2 + 2128) ? 0 : *v6;
    }

    else
    {
      v7 = 1;
    }

    if (v3 >= v7)
    {
      break;
    }

    v8 = *i;
    if (!*i)
    {
      goto LABEL_17;
    }

    if (v5 == 1)
    {
      v11 = 6553601;
    }

    else
    {
      if (v5)
      {
        goto LABEL_17;
      }

      v9 = *(v2 + 2120);
      if (v9 == *(v2 + 2128))
      {
        v10 = 0;
      }

      else
      {
        v10 = *v9;
      }

      v11 = DspLibFinalChannelLayout(*(v2 + 1800), *(v2 + 1804), v10);
    }

    LODWORD(a2) = *(v2 + 1812);
    this = (*(*v8 + 24))(v8, v11, *&a2);
LABEL_17:
    ++v3;
  }

  return this;
}

uint64_t AUDspLib::SetAudioChannelLayout(AUDspLib *this, unsigned int a2, unsigned int a3, const AudioChannelLayout *a4)
{
  mChannelLayoutTag = a4->mChannelLayoutTag;
  if ((a4->mChannelLayoutTag | 0x10000) == 0x10000)
  {
    return 4294956428;
  }

  if (*(this + 450) != mChannelLayoutTag)
  {
    *(this + 450) = mChannelLayoutTag;
    if (*(this + 17) == 1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(Element + 108) != LOWORD(a4->mChannelLayoutTag))
      {
        return 4294956428;
      }

      caulk::pooled_semaphore_mutex::_lock((this + 1824));
      AUDspLib::initializeDspLibAlgorithms(this, v9);
      caulk::pooled_semaphore_mutex::_unlock((this + 1824));
    }
  }

  return 0;
}

uint64_t AUDspLib::SupportedNumChannels(AUDspLib *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDspLib::SupportedNumChannels(AUChannelInfo const**)::kSupportedNumChannels;
  }

  return 18;
}

double AUDspLib::GetTailTime(AUDspLib *this, __n128 a2)
{
  a2.n128_u64[0] = 0;
  if ((*(this + 2113) & 1) == 0)
  {
    v3 = 0.0;
    if (*(this + 1585) == 1)
    {
      v4 = *(this + 66);
      if (v4)
      {
        a2.n128_f64[0] = (*(*v4 + 80))(v4, 0.0);
        v3 = a2.n128_f64[0];
      }

      for (i = 0; i != 952; i += 56)
      {
        v6 = *(this + i + 584);
        if (v6)
        {
          a2.n128_f64[0] = (*(*v6 + 80))(v6, a2);
          if (v3 < a2.n128_f64[0])
          {
            v3 = a2.n128_f64[0];
          }
        }
      }
    }

    a2.n128_f64[0] = v3 / AUDspLib::GetSampleRate(this);
  }

  return a2.n128_f64[0];
}

double AUDspLib::GetSampleRate(AUDspLib *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return *(Element + 80);
}

void AUDspLib::GetLatency(AUDspLib *this)
{
  if ((*(this + 2113) & 1) == 0)
  {
    if (*(this + 1585) == 1 && *(this + 1820) == 1)
    {
      *(this + 1820) = 0;
      caulk::pooled_semaphore_mutex::_lock((this + 1824));
      v2 = 0;
      for (i = (this + 572); ; i += 14)
      {
        if (*(this + 397))
        {
          v4 = *(this + 265);
          v5 = v4 == *(this + 266) ? 0 : *v4;
        }

        else
        {
          v5 = 1;
        }

        if (v2 >= v5)
        {
          break;
        }

        v6 = *(i - 1);
        if (v6 != *i)
        {
          *i = v6;
          if (*(i - 11))
          {
            (*(*this + 616))(this, v2);
          }
        }

        ++v2;
      }

      v7 = *(this + 66);
      if (v7)
      {
        v8 = (*(*v7 + 72))(v7);
      }

      else
      {
        v8 = 0.0;
      }

      for (j = 0; j != 952; j += 56)
      {
        v10 = *(this + j + 584);
        if (v10)
        {
          v11 = (*(*v10 + 72))(v10);
          if (v11 != v8 && v8 < v11)
          {
            v8 = v11;
          }
        }
      }

      *(this + 454) = v8;
      caulk::pooled_semaphore_mutex::_unlock((this + 1824));
    }

    AUDspLib::GetSampleRate(this);
  }
}

uint64_t AUDspLib::NewFactoryPresetSet(AUDspLib *this, const AUPreset *a2)
{
  v3 = *(this + 444);
  if (v3)
  {
    v4 = 0;
    presetNumber = a2->presetNumber;
    v6 = *(this + 224);
    v7 = v6;
    while (1)
    {
      v8 = *v7;
      v7 += 4;
      if (presetNumber == v8)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }

    v10 = *(this + 439);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *(this + 397);
        if (v12)
        {
          if (v12 == 1)
          {
            for (i = 0; ; ++i)
            {
              v14 = *(this + 265);
              v15 = v14 == *(this + 266) ? 0 : *v14;
              if (i >= v15)
              {
                break;
              }

              Element = ausdk::AUScope::GetElement((this + 1536), i);
              ausdk::AUElement::SetParameter(Element, v11, *(*(this + 221) + 4 * (v11 + *(this + 439) * presetNumber)));
            }
          }
        }

        else
        {
          (*(*this + 152))(this, v11, 0, 0, 0, *(*(this + 221) + 4 * (v11 + v10 * presetNumber)));
        }

        v11 = (v11 + 1);
        v10 = *(this + 439);
      }

      while (v11 < v10);
      v6 = *(this + 224);
    }

    ausdk::AUBase::SetAFactoryPresetAsCurrent(this, &v6[4 * v4]);
    return 0;
  }

  else
  {
LABEL_5:
    *(this + 1820) = 1;
    return 4294956445;
  }
}

uint64_t AUDspLib::GetPresets(AUDspLib *this, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(0, *(this + 444), 0);
    if (*(this + 444))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        CFArrayAppendValue(Mutable, (*(this + 224) + v5));
        ++v6;
        v5 += 16;
      }

      while (v6 < *(this + 444));
    }

    *a2 = Mutable;
  }

  return 0;
}

uint64_t AUDspLib::CopyClumpName(AUDspLib *this, unsigned int a2, unsigned int a3, unsigned int a4, const __CFString **a5)
{
  if (*(this + 218) <= a3)
  {
    return 4294956419;
  }

  result = 0;
  *a5 = *(*(this + 217) + 8 * a3);
  return result;
}

uint64_t AUDspLib::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::RestoreState(this, a2);
  v4 = *(this + 397);
  if (v4 == 1)
  {
    for (i = 0; ; i = v9 + 1)
    {
      v10 = i;
      v7 = this[265];
      v8 = v7 == this[266] ? 0 : *v7;
      if (i >= v8)
      {
        break;
      }

      v11[0] = &unk_1F591D508;
      v11[1] = this;
      v11[2] = &v10;
      v11[3] = v11;
      (*(*this + 78))(this);
      std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](v11);
      v9 = v10;
      ++LODWORD(this[7 * v10 + 71]);
    }
  }

  else if (!v4)
  {
    v12[0] = &unk_1F591D4C0;
    v12[1] = this;
    v12[3] = v12;
    (*(*this + 78))(this, 0, v12);
    std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](v12);
    ++*(this + 142);
  }

  *(this + 1820) = 1;
  return v3;
}

void sub_1DDC4F96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

float std::__function::__func<AUDspLib::RestoreState(void const*)::$_1,std::allocator<AUDspLib::RestoreState(void const*)::$_1>,void ()(unsigned int,unsigned int,float)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, float *a4)
{
  result = *a4;
  *(*(*(a1 + 8) + 56 * **(a1 + 16) + 544) + 4 * *a2) = *a4;
  return result;
}

__n128 std::__function::__func<AUDspLib::RestoreState(void const*)::$_1,std::allocator<AUDspLib::RestoreState(void const*)::$_1>,void ()(unsigned int,unsigned int,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F591D508;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<AUDspLib::RestoreState(void const*)::$_0,std::allocator<AUDspLib::RestoreState(void const*)::$_0>,void ()(unsigned int,unsigned int,float)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, float *a4)
{
  result = *a4;
  *(*(*(a1 + 8) + 544) + 4 * *a2) = *a4;
  return result;
}

uint64_t std::__function::__func<AUDspLib::RestoreState(void const*)::$_0,std::allocator<AUDspLib::RestoreState(void const*)::$_0>,void ()(unsigned int,unsigned int,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F591D4C0;
  a2[1] = v2;
  return result;
}

uint64_t AUDspLib::SaveExtendedScopes(AUDspLib *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

void ausdk::ThrowQuiet(ausdk *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  ausdk::AUException::AUException(exception, -10866);
}

uint64_t AUDspLib::SaveState(AUDspLib *this, ausdk **a2)
{
  ausdk::AUBase::SaveState(this, a2);
  if (a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDictionaryGetTypeID())
    {
      valuePtr = *(this + 451);
      v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(*a2, @"DefaultAudioChannelLayout", v5);
      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t AUDspLib::GetParameterInfo(AUDspLib *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if ((a2 & 0xFFFFFFFB) != 0)
  {
    return 4294956418;
  }

  if (*(this + 439) <= a3)
  {
    return 4294956418;
  }

  v6 = *(*(this + 211) + 4 * a3);
  if (v6 >= *(this + 438))
  {
    return 4294956418;
  }

  v8 = a3;
  v9 = *(*(this + 205) + 4 * v6);
  v10 = *(*(this + 203) + 4 * v6);
  buffer->unit = *(*(this + 201) + 4 * v6);
  buffer->minValue = v9;
  buffer->maxValue = *(*(this + 207) + 4 * v6);
  buffer->defaultValue = *(*(this + 213) + 4 * a3);
  v11 = *(*(this + 199) + 8 * v6);
  buffer->cfNameString = v11;
  buffer->flags = (v10 - 1048576000) | 0x8000000;
  CFStringGetCString(v11, buffer->name, 52, 0x8000100u);
  result = 0;
  if (*(this + 216))
  {
    buffer->clumpID = *(*(this + 215) + 4 * v8);
    buffer->flags |= 0x100000u;
  }

  return result;
}

ausdk::AUInputElement *AUDspLib::Render(AUDspLib *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_12;
      }

      v11 = *(Element + 152);
      v12 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v12)
      {
        if (*(v12 + 144))
        {
          v13 = *(*this + 176);
          v14 = *(v12 + 152) + 48;

          return v13(this, a2, v11 + 48, v14, a4);
        }

LABEL_12:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUDspLib::ProcessMultipleBufferLists(AUDspLib *this, unsigned int *a2, uint64_t a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, const AudioBufferList **a7)
{
  v64 = a4;
  v71 = *MEMORY[0x1E69E9840];
  if (*(this + 452) < a3)
  {
    return 4294956422;
  }

  if (*(this + 1585) != 1)
  {
    return 4294956429;
  }

  result = SimpleMeters::ProcessInputBufferList((this + 1832), a3, *a5);
  if (!result)
  {
    v60 = a2;
    if (a5 != a7)
    {
      v13 = 0;
      for (i = 16; ; i += 16)
      {
        v15 = *(this + 265);
        v16 = v15 == *(this + 266) ? 0 : *v15;
        if (v13 >= v16)
        {
          break;
        }

        v17 = *(&(*a5)->mNumberBuffers + i);
        result = *(&(*a7)->mNumberBuffers + i);
        if (v17 != result)
        {
          result = memcpy(result, v17, 4 * a3);
        }

        ++v13;
      }
    }

    v18 = v64;
    if (v64)
    {
      v19 = 0;
      LODWORD(v20) = 1;
      do
      {
        Element = ausdk::AUScope::GetElement((this + 80), v19);
        if (!Element)
        {
          goto LABEL_70;
        }

        v22 = *(Element + 108);
        if (v22 <= v20)
        {
          v20 = v20;
        }

        else
        {
          v20 = v22;
        }

        ++v19;
      }

      while (v64 != v19);
      v63 = &v60;
      MEMORY[0x1EEE9AC00](Element);
      v24 = &v60 - v23;
      MEMORY[0x1EEE9AC00](v25);
      v27 = (&v60 - ((v26 + 15) & 0x3FFFFFFFF0));
      bzero(v27, 24 * ((v26 - 24) / 0x18uLL) + 24);
    }

    else
    {
      v63 = &v60;
      MEMORY[0x1EEE9AC00](result);
      v24 = &v60 - ((v28 + 15) & 0xFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v29);
      v27 = (&v60 - ((v30 + 15) & 0x3FFFFFFFF0));
      v20 = 1;
    }

    v31 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v31)
    {
LABEL_70:
      ausdk::Throw(0xFFFFD583);
    }

    v32 = *(v31 + 108);
    v61 = a7;
    if (v32)
    {
      p_mData = &(*a7)->mBuffers[0].mData;
      v34 = v24;
      v35 = v32;
      do
      {
        v36 = *p_mData;
        p_mData += 2;
        *v34++ = v36;
        --v35;
      }

      while (v35);
      v37 = v18;
    }

    else
    {
      v37 = v18;
      v32 = 0;
    }

    v62 = a3;
    *v27 = v24;
    v27[1] = v32;
    v38 = v27;
    v65 = a3;
    v27[2] = a3;
    if (v64 >= 2)
    {
      v39 = 1;
      v40 = &v24[8 * v20];
      do
      {
        v41 = ausdk::AUScope::GetElement((this + 80), v39);
        if (!v41)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v42 = *(v41 + 108);
        if (v42)
        {
          v43 = &a5[v39]->mBuffers[0].mData;
          v44 = v40;
          v45 = *(v41 + 108);
          do
          {
            v46 = *v43;
            v43 += 2;
            *v44 = v46;
            v44 += 8;
            --v45;
          }

          while (v45);
        }

        else
        {
          v42 = 0;
        }

        v47 = &v38[3 * v39];
        *v47 = &v24[8 * v20 * v39];
        v47[1] = v42;
        v47[2] = v65;
        ++v39;
        v40 += 8 * v20;
      }

      while (v39 != v37);
    }

    v48 = caulk::pooled_semaphore_mutex::try_lock((this + 1824));
    v49 = v48;
    if ((*(this + 2113) & 1) == 0)
    {
      if (!v48)
      {
        SimpleMeters::ProcessOutputBufferList((this + 1832), v62, *v61);
        return 0;
      }

      v50 = 0;
      for (j = (this + 528); ; j += 7)
      {
        v52 = *(this + 397);
        if (v52)
        {
          v53 = *(this + 265);
          v54 = v53 == *(this + 266) ? 0 : *v53;
        }

        else
        {
          v54 = 1;
        }

        if (v50 >= v54)
        {
          break;
        }

        if (*j)
        {
          if (j[3] != j[2] && *(j + 10) != *(j + 11))
          {
            (*(*this + 616))(this, v50);
            *(j + 11) = *(j + 10);
            v52 = *(this + 397);
          }

          if (v52)
          {
            if (v52 == 1)
            {
              (*(**j + 184))(*j, *(*v38 + 8 * v50), v38[2]);
            }
          }

          else
          {
            v55 = *j;
            v69 = *v38;
            v70 = v38[2];
            if (v64 == 2)
            {
              v66 = v38[3];
              v67 = *(v38 + 2);
              v56 = 1;
            }

            else
            {
              v56 = 0;
              LOBYTE(v66) = 0;
            }

            v68 = v56;
            (*(*v55 + 176))(v55, &v69, &v66);
          }

          AUDspLib::enqueueStatusForInstance(this, v50, *j, v65);
        }

        ++v50;
      }

      if (*(this + 66))
      {
        v57 = v38[1];
        if (v57)
        {
          v58 = v38[2];
          if (v58)
          {
            v66 = *v38;
            *&v67 = v57;
            *(&v67 + 1) = v58;
            v59 = DspLib::maxMagnitude(&v66) == 0.0;
            *v60 = *v60 & 0xFFFFFFEF | (16 * (v59 & 1));
            atomic_store(v59, this + 1821);
          }
        }
      }
    }

    SimpleMeters::ProcessOutputBufferList((this + 1832), v62, *v61);
    if (v49)
    {
      caulk::pooled_semaphore_mutex::_unlock((this + 1824));
    }

    return 0;
  }

  return result;
}

uint64_t SimpleMeters::ProcessInputBufferList(SimpleMeters *this, int a2, const AudioBufferList *a3)
{
  if (!*(this + 12))
  {
    return 0;
  }

  v5 = *this;
  v6 = *(this + 1);
  if ((*(this + 68) & 0x20) != 0 && a3->mNumberBuffers != (v6 - v5) >> 7)
  {
    return 4294967246;
  }

  if (v6 != v5)
  {
    v7 = 0;
    v8 = 0;
    mBuffers = a3->mBuffers;
    do
    {
      v10 = *(this + 17);
      if ((v10 & 0x20) != 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      if ((v10 & 0x20) != 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

      if ((v10 & 0x20) != 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = *(this + 21);
      }

      PowerMeter::Process((v5 + v7), mBuffers[v11].mData + v12, v13, a2);
      ++v8;
      v5 = *this;
      v7 += 128;
    }

    while (v8 < (*(this + 1) - *this) >> 7);
  }

  return 0;
}

uint64_t SimpleMeters::ProcessOutputBufferList(SimpleMeters *this, int a2, const AudioBufferList *a3)
{
  if (!*(this + 13))
  {
    return 0;
  }

  if ((*(this + 108) & 0x20) != 0)
  {
    v5 = *(this + 3);
    v6 = *(this + 4);
    if (a3->mNumberBuffers != (v6 - v5) >> 7)
    {
      return 4294967246;
    }
  }

  else
  {
    v5 = *(this + 3);
    v6 = *(this + 4);
  }

  if (v6 != v5)
  {
    v8 = 0;
    v9 = 0;
    mBuffers = a3->mBuffers;
    do
    {
      v11 = *(this + 27);
      if ((v11 & 0x20) != 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      if ((v11 & 0x20) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      if ((v11 & 0x20) != 0)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(this + 31);
      }

      PowerMeter::Process((v5 + v8), mBuffers[v12].mData + v13, v14, a2);
      ++v9;
      v5 = *(this + 3);
      v8 += 128;
    }

    while (v9 < (*(this + 4) - v5) >> 7);
  }

  return 0;
}

void *AUDspLib::enqueueStatusForInstance(void *result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = result;
    result = result[a2 + 246];
    if (result)
    {
      if (*(v4 + 2112) == 1)
      {
        v5 = result[7];
        v6 = result[6] + a4;
        result[6] = v6;
        result[9] = a4;
        if (v6 + (a4 >> 1) >= v5)
        {
          result[8] = v6;
          result[6] = 0;

          return AUDspLibStatus::Queue::push(result, a3);
        }
      }

      else
      {
        v7 = &v4[7 * a2];
        if (*(v7 + 576) == 1)
        {
          result = AUDspLibStatus::Queue::push(result, a3);
          *(v7 + 576) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t AUDspLibStatus::Queue::push(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 40);
  v4 = (a1 + 32);
  v5 = atomic_load((a1 + 32));
  v6 = (*(a1 + 8) + 24 * v5);
  v7 = *v6;
  v8 = (v6[1] - *v6) >> 2;
  v26 = 0u;
  v27 = 0u;
  (*(*a2 + 224))(v25, a2);
  v10 = v25[0];
  v9 = v25[1];
  v11 = v25[2];
  (*(*a2 + 200))(a2, v7, v8);
  v12 = *(a1 + 40);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  result = (*(*a2 + 72))(a2);
  v17 = *(a1 + 80);
  v18 = *(a1 + 96);
  v19 = 4;
  if ((v18 + 1) < 4)
  {
    v19 = v18 + 1;
  }

  v20 = (v18 - v19 + 5) % 5uLL - (5 - v19) + 1;
  if (v20 != atomic_load_explicit((a1 + 160), memory_order_acquire))
  {
    v21 = v16 / v17 * 1000.0;
    v22 = a1 + 104 * v18;
    *(v22 + 168) = vrev64_s32(v10);
    *(v22 + 176) = v9;
    *(v22 + 184) = v14;
    *(v22 + 192) = v12;
    *(v22 + 200) = v13;
    v23 = v27;
    *(v22 + 208) = v26;
    *(v22 + 224) = v23;
    *(v22 + 240) = v21;
    *(v22 + 244) = v11;
    *(v22 + 256) = v7;
    *(v22 + 264) = v8;
    atomic_store(v20, (a1 + 96));
    v24 = atomic_load(v4);
    atomic_store((v24 + 1) % (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3)), v4);
  }

  return result;
}

uint64_t AUDspLib::ProcessBufferLists(AUDspLib *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  return (*(*this + 184))(this, a2, a5, 1, &v7, 1, &v6);
}

uint64_t AUDspLib::SetParameter(AUDspLib *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a4 > 0x11)
  {
    return 4294956419;
  }

  if (*(this + 439) <= a2)
  {
    if (a2 != 1937141612 && a2 != 1869769061)
    {
      return 4294956418;
    }
  }

  else
  {
    v11 = *(this + 397);
    if (!(v11 | a3))
    {
      *(*(this + 68) + 4 * *(*(this + 211) + 4 * a2)) = a5;
      ++*(this + 142);
    }

    if (a3 == 4 && v11 == 1)
    {
      Element = ausdk::AUScope::GetElement((this + 1536), a4);
      ausdk::AUElement::SetParameter(Element, a2, a5);
      v13 = this + 56 * a4;
      *(*(v13 + 68) + 4 * *(*(this + 211) + 4 * a2)) = a5;
      ++*(v13 + 142);
    }
  }

  *(this + 1820) = 1;

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

uint64_t AUDspLib::SetProperty(AUDspLib *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  v7 = a6;
  v28 = 0;
  if (SimpleMeters::HandleSetProperty((this + 1832), a2, a3, a5, a6, &v28, a7))
  {
    return v28;
  }

  if (a2 == 21 && !a3)
  {
    if (v7 < 4)
    {
      return 4294956445;
    }

    v16 = *a5;
    if ((v16 != 0) != *(this + 2113))
    {
      if (!v16 && *(this + 2113) && *(this + 17) == 1)
      {
        (*(*this + 72))(this, 0, 0);
      }

      result = 0;
      *(this + 2113) = v16 != 0;
      return result;
    }

    return 0;
  }

  result = 4294956417;
  if (a2 <= 6603)
  {
    if (a2 != 6601)
    {
      v14 = 6602;
      goto LABEL_12;
    }

    v17 = *(this + 397);
    if ((!a3 || v17) && (a3 == 4 || v17 != 1))
    {
      if (a4 <= 0x11)
      {
        buffer = 0;
        if (v7 != 8)
        {
          return 4294956445;
        }

        if (v17)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }

        v31.location = 0;
        v31.length = 1;
        CFDataGetBytes(*a5, v31, &buffer);
        v19 = buffer;
        v20 = buffer != 0;
        *(this + 2112) = buffer > 1u;
        v21 = this + 56 * v18;
        v21[536] = v20;
        (*(*this + 632))(this, v18);
        AUDspLib::allocateStatusQueueForInstance(this, v18);
        caulk::pooled_semaphore_mutex::_lock((this + 1824));
        v22 = *(v21 + 66);
        if (v22)
        {
          (*(*v22 + 216))(v22, v19 != 0);
        }

LABEL_42:
        caulk::pooled_semaphore_mutex::_unlock((this + 1824));
        return 0;
      }

      return 4294956419;
    }

    return 4294956430;
  }

  if (a2 == 6626)
  {
    v23 = *(this + 397);
    if ((!a3 || v23) && (a3 == 4 || v23 != 1))
    {
      if (a4 <= 0x11)
      {
        result = CFDictionaryGetValue(*a5, @"DefaultAudioChannelLayout");
        if (!result)
        {
          return result;
        }

        v24 = result;
        v25 = CFGetTypeID(result);
        if (v25 != CFNumberGetTypeID())
        {
          return 0;
        }

        v27 = 0;
        CFNumberGetValue(v24, kCFNumberSInt64Type, &v27);
        if (HIDWORD(v27))
        {
          return 4294901760;
        }

        if (*(this + 451) == v27)
        {
          return 0;
        }

        *(this + 451) = v27;
        if (*(this + 450) != -65536)
        {
          return 0;
        }

        caulk::pooled_semaphore_mutex::_lock((this + 1824));
        AUDspLib::initializeDspLibAlgorithms(this, v26);
        goto LABEL_42;
      }

      return 4294956419;
    }

    return 4294956430;
  }

  v14 = 6604;
LABEL_12:
  if (a2 == v14)
  {
    if (*(this + 1586) == 1)
    {
      if (*(this + 1585))
      {
        result = 4294956447;
      }

      else
      {
        result = 4294956430;
      }

      if (!a3 && (*(this + 1585) & 1) == 0)
      {
        if (a2 == 6604)
        {
          if (v7 != 8)
          {
            return 4294956445;
          }

          v15 = *a5;

          return AUDspLib::setChannelSplitMode(this, v15);
        }

        else
        {
          if (v7 != 4)
          {
            return 4294956445;
          }

          result = 0;
          *(this + 397) = *a5;
        }
      }
    }

    else
    {
      return 4294956446;
    }
  }

  return result;
}

BOOL SimpleMeters::HandleSetProperty(SimpleMeters *this, int a2, int a3, int *a4, const void *a5, int *a6, int *a7)
{
  *a6 = 0;
  if (a2 == 3007)
  {
    if (a5 <= 3)
    {
      v8 = -50;
LABEL_4:
      *a6 = v8;
      return a2 == 3007;
    }

    if (a3 == 2)
    {
      v10 = *a4;
      v11 = *(this + 12);
    }

    else if (a3 == 1)
    {
      v10 = *(this + 13);
      v11 = *a4;
    }

    else
    {
      if (a3)
      {
        v8 = -10866;
        goto LABEL_4;
      }

      v10 = *a4;
      v11 = *a4;
    }

    if (v11 && !*(this + 12))
    {
      v12 = *(this + 1);
      if (v12 == *this)
      {
        std::vector<PowerMeter>::resize(this, *(this + 21));
      }

      else
      {
        v13 = *this + 52;
        do
        {
          *(v13 + 12) = 0;
          *(v13 + 4) = 0;
          *(v13 + 36) = 0;
          *(v13 + 28) = 0;
          *(v13 + 52) = 0;
          *(v13 + 44) = 0;
          *(v13 + 68) = 0;
          v14 = v13 + 76;
          *(v13 + 60) = 0;
          *(v13 - 4) = 0xFFFFFFFFLL;
          v13 += 128;
        }

        while (v14 != v12);
      }

      v15 = *this;
      v16 = *(this + 1);
      if (*this != v16)
      {
        v17 = *(this + 7);
        v18 = -6.90775528 / fmax(v17 * 2.5, 2.22507386e-308);
        v19 = exp(v18);
        if (v18 >= -708.4)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0.0;
        }

        v21 = -6.90775528 / fmax(v17 * 1.24, 2.22507386e-308);
        v22 = exp(v21);
        if (v21 < -708.4)
        {
          v22 = 0.0;
        }

        do
        {
          v15[1] = v17;
          v15[2] = v20;
          v15[4] = v22;
          v15 += 16;
        }

        while (v15 != v16);
      }
    }

    if (v10 && !*(this + 13))
    {
      v23 = *(this + 4);
      v24 = *(this + 3);
      if (v23 == v24)
      {
        std::vector<PowerMeter>::resize(this + 3, *(this + 31));
      }

      else
      {
        v25 = v24 + 52;
        do
        {
          *(v25 + 12) = 0;
          *(v25 + 4) = 0;
          *(v25 + 36) = 0;
          *(v25 + 28) = 0;
          *(v25 + 52) = 0;
          *(v25 + 44) = 0;
          *(v25 + 68) = 0;
          v26 = v25 + 76;
          *(v25 + 60) = 0;
          *(v25 - 4) = 0xFFFFFFFFLL;
          v25 += 128;
        }

        while (v26 != v23);
      }

      v27 = *(this + 3);
      v28 = *(this + 4);
      if (v27 != v28)
      {
        v29 = *(this + 12);
        v30 = -6.90775528 / fmax(v29 * 2.5, 2.22507386e-308);
        v31 = exp(v30);
        if (v30 >= -708.4)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0.0;
        }

        v33 = -6.90775528 / fmax(v29 * 1.24, 2.22507386e-308);
        v34 = exp(v33);
        if (v33 < -708.4)
        {
          v34 = 0.0;
        }

        do
        {
          v27[1] = v29;
          v27[2] = v32;
          v27[4] = v34;
          v27 += 16;
        }

        while (v27 != v28);
      }
    }

    __dmb(0xBu);
    *(this + 12) = v11;
    *(this + 13) = v10;
  }

  return a2 == 3007;
}

uint64_t AUDspLib::setChannelSplitMode(AUDspLib *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"channelSplitMode");
  if (!Value)
  {
    return 4294956445;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr) || HIDWORD(valuePtr))
  {
    return 4294956445;
  }

  result = 0;
  *(this + 397) = valuePtr;
  return result;
}

_BYTE *AUDspLib::allocateStatusQueueForInstance(_BYTE *result, int a2)
{
  if (result[56 * a2 + 536] == 1)
  {
    v2 = result;
    if (result[1585] == 1)
    {
      (*(*result + 608))(result);
      if (ausdk::AUScope::GetElement((v2 + 80), 0))
      {
        operator new();
      }

      ausdk::Throw(0xFFFFD583);
    }
  }

  return result;
}

void sub_1DDC513C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  explicit = atomic_load_explicit((v14 + 96), memory_order_acquire);
  v17 = *(v14 + 160);
  v18 = v17 - explicit;
  v21 = v17 > explicit;
  v19 = 5;
  if (!v21)
  {
    v19 = 0;
  }

  if (v19 != v18)
  {
    v20 = v19 + explicit;
    v22 = v20 - 5;
    v21 = v20 > 5;
    if (v20 == 5)
    {
      v20 = 0;
    }

    if (v21)
    {
      v20 = v22;
    }

    atomic_store(v20, (v14 + 160));
  }

  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  MEMORY[0x1E12BD160](v14, 0x1020C406132200BLL);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AUDspLibStatus::Queue>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    explicit = atomic_load_explicit((v2 + 96), memory_order_acquire);
    v4 = *(v2 + 160);
    v8 = v4 >= explicit;
    v5 = v4 - explicit;
    v9 = v4 == explicit;
    v6 = 5;
    if (v9 || !v8)
    {
      v6 = 0;
    }

    if (v6 != v5)
    {
      v7 = v6 + explicit;
      v8 = v7 >= 5;
      v10 = v7 - 5;
      v9 = v7 == 5;
      if (v7 == 5)
      {
        v7 = 0;
      }

      if (!v9 && v8)
      {
        v7 = v10;
      }

      atomic_store(v7, (v2 + 160));
    }

    v11 = (v2 + 8);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v11);
    return MEMORY[0x1E12BD160](v2, 0x1020C406132200BLL);
  }

  return result;
}

void std::vector<PowerMeter>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 7;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = v4 + (a2 << 7);
    }
  }

  else
  {
    v6 = a1[2];
    if (a2 - v5 > (v6 - v3) >> 7)
    {
      if (!(a2 >> 57))
      {
        v7 = v6 - v4;
        v8 = (v6 - v4) >> 6;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFF80)
        {
          v9 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 57))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 + 128 * (a2 - v5);
    v11 = (a2 << 7) - (v5 << 7);
    do
    {
      PowerMeter::PowerMeter(v3);
      v3 = (v3 + 128);
      v11 -= 128;
    }

    while (v11);
    a1[1] = v10;
  }
}

uint64_t AUDspLib::GetProperty(AUDspLib *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (SimpleMeters::HandleGetProperty((this + 1832), a2, a3, a5, &v22, a6))
  {
    return v22;
  }

  if (a2 == 21 && !a3)
  {
    result = 0;
    v12 = *(this + 2113);
LABEL_6:
    *a5 = v12;
    return result;
  }

  if (a2 == 6610)
  {
    v28 = 0;
    v27 = 0;
    LODWORD(bytes) = (*(*this + 576))(this);
    strcpy(&bytes + 4, "Oct 12 2025");
    strcpy(v26, "21:27:54");
    v26[3] = *(this + 397);
    v13 = CFDataCreate(0, &bytes, 44);
    result = 0;
    *a5 = v13;
    return result;
  }

  result = 4294956417;
  if (a2 > 6603)
  {
    if (a2 == 6650)
    {

      return AUDspLib::getPropertyDspLibAUParameters(this, a3, a4, a5);
    }

    if (a2 != 6626)
    {
      v14 = 6604;
      goto LABEL_17;
    }

    v17 = *(this + 397);
    if (a3 && !v17 || a3 != 4 && v17 == 1)
    {
      return 4294956430;
    }

    if (a4 > 0x11)
    {
      return 4294956419;
    }

    v18 = *(ausdk::AUBase::Input(this, 0) + 108);
    if (v18 == 1)
    {
      v19 = 6553601;
    }

    else
    {
      if (v18 != 2)
      {
        v19 = *(this + 450);
        goto LABEL_56;
      }

      v19 = 6619138;
    }

    *(this + 450) = v19;
LABEL_56:
    *&bytes = @"SelectedAudioChannelLayout";
    *(&bytes + 1) = @"DefaultAudioChannelLayout";
    valuePtr = v19;
    v20 = *(this + 451);
    values = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    v24 = CFNumberCreate(0, kCFNumberSInt64Type, &v20);
    *a5 = CFDictionaryCreate(0, &bytes, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
    CFRelease(v24);
    return 0;
  }

  if (a2 == 6600)
  {

    return AUDspLib::getPropertyStatus(this, a3, a4, a5);
  }

  if (a2 == 6601)
  {
    v15 = *(this + 397);
    if ((!a3 || v15) && (a3 == 4 || v15 != 1))
    {
      if (a4 <= 0x11)
      {
        LOBYTE(bytes) = 0;
        if (!v15)
        {
          a4 = 0;
        }

        caulk::pooled_semaphore_mutex::_lock((this + 1824));
        v16 = *(this + 7 * a4 + 66);
        if (v16)
        {
          LOBYTE(bytes) = (*(*v16 + 208))(v16);
        }

        *a5 = CFDataCreate(0, &bytes, 1);
        caulk::pooled_semaphore_mutex::_unlock((this + 1824));
        return 0;
      }

      return 4294956419;
    }

    return 4294956430;
  }

  v14 = 6602;
LABEL_17:
  if (a2 == v14)
  {
    result = *(this + 1586) ? 4294956430 : 4294956446;
    if (!a3 && *(this + 1586))
    {
      if (a2 != 6604)
      {
        result = 0;
        v12 = *(this + 397);
        goto LABEL_6;
      }

      AUDspLib::getChannelSplitMode(this, a5);
      return 0;
    }
  }

  return result;
}

uint64_t SimpleMeters::HandleGetProperty(SimpleMeters *this, int a2, unsigned int a3, unint64_t *a4, _DWORD *a5, int *a6)
{
  v6 = a4;
  *a5 = 0;
  if (a2 == 3099)
  {
    if (a3 <= 1)
    {
      v11 = *this;
      v12 = *(this + 1);
      if (*this != v12)
      {
        do
        {
          Value = PowerMeter::GetValue(v11);
          v14 = v6 + 2;
          *v6 = Value;
          v6[1] = v15;
          *(v11 + 56) = 0;
          *(v11 + 52) = 0;
          v11 += 128;
          v6 += 2;
        }

        while (v11 != v12);
        v6 = v14;
      }
    }

    if ((a3 & 0xFFFFFFFD) == 0)
    {
      v17 = *(this + 3);
      v16 = *(this + 4);
      while (v17 != v16)
      {
        *v6 = PowerMeter::GetValue(v17);
        v6[1] = v18;
        v6 += 2;
        *(v17 + 56) = 0;
        *(v17 + 52) = 0;
        v17 += 128;
      }
    }

    return 1;
  }

  result = 0;
  if (a2 != 3007)
  {
    return result;
  }

  if (a3 == 2)
  {
    v10 = *(this + 13);
  }

  else if (a3 == 1)
  {
    v10 = *(this + 12);
  }

  else
  {
    if (a3)
    {
      *a5 = -10866;
      return 1;
    }

    v10 = *(this + 12);
    if (v10)
    {
      v10 = *(this + 13) != 0;
    }
  }

  *a4 = v10;
  return 1;
}

void AUDspLib::getChannelSplitMode(AUDspLib *this, const __CFDictionary **a2)
{
  v3 = CFNumberCreate(0, kCFNumberIntType, this + 1588);
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"channelSplitMode", v3);
  *a2 = CFDictionaryCreateCopy(0, Mutable);
  CFRelease(v3);

  CFRelease(Mutable);
}

uint64_t AUDspLib::getPropertyStatus(AUDspLib *this, int a2, unsigned int a3, CFDictionaryRef *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = *(this + 397);
  if (a2 && !v6 || a2 != 4 && v6 == 1)
  {
    return 4294956430;
  }

  if (a3 > 0x11)
  {
    return 4294956419;
  }

  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  v29 = *(this + v8 + 246);
  if (!v29)
  {
    return 4294956417;
  }

  if (*(this + 2112) == 1)
  {
    std::vector<float>::vector[abi:ne200100](&v41, *v29);
    *__p = 0u;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v37 = 0u;
    v38 = 0;
    v39 = v41;
    v40 = (v42 - v41) >> 2;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v33 = Mutable;
    while (1)
    {
      *&v44 = __p;
      if (!boost::lockfree::detail::compile_time_sized_ringbuffer<AUDspLibStatus::Status,4ul>::consume_one<boost::lockfree::detail::consume_via_copy<AUDspLibStatus::Status>>((v29 + 12), &v44))
      {
        break;
      }

      v10 = CFDataCreate(0, v39, 4 * v40);
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      cf = v10;
      v11 = CFGetTypeID(v10);
      if (v11 != CFDataGetTypeID())
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v25, "Could not construct");
      }

      applesauce::CF::TypeRef::TypeRef(&v44, "buffer");
      CFRetain(cf);
      *(&v44 + 1) = cf;
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long &>(&v45, "statusCounter", &v35 + 1);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long &>(&v46, "audioBlockSize", v36);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long &>(&v47, "numFramesForStatus", &v35);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(&v48, "percentCPUAverage", __p + 1);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(&v49, "percentCPUPeak", __p);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(&v51, "megaCyclesPerSecondAverage", &__p[1]);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(&v52, "megaCyclesPerSecondPeak", (__p | 0xC));
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(&v53, "latencyInMilliseconds", &v37 + 2);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(&v54, "megaInstructionsPerSecondAverage", &v37 + 3);
      applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(v55, "megaInstructionsPerSecondPeak", &v38);
      v31 = &v44;
      v32 = 11;
      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v31);
      v13 = 0;
      valuePtr = CFDictionaryRef;
      do
      {
        v14 = *&v55[v13 + 8];
        if (v14)
        {
          CFRelease(v14);
        }

        v15 = *&v55[v13];
        if (v15)
        {
          CFRelease(v15);
        }

        v13 -= 16;
      }

      while (v13 != -176);
      CFRelease(cf);
      CFArrayAppendValue(Mutable, CFDictionaryRef);
      CFRelease(CFDictionaryRef);
    }

    applesauce::CF::TypeRef::TypeRef(&v44, "queueSize");
    valuePtr = 4;
    *(&v44 + 1) = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (!*(&v44 + 1))
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
    }

    applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long &>(&v45, "numAudioChannels", v29 + 11);
    applesauce::CF::TypeRef::TypeRef(&v46, "audioSampleRate");
    valuePtr = v29[10];
    *(&v46 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (!*(&v46 + 1))
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
    }

    if (Mutable)
    {
      CFRetain(Mutable);
      valuePtr = Mutable;
      v18 = CFGetTypeID(Mutable);
      if (v18 != CFArrayGetTypeID())
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v19, "Could not construct");
      }
    }

    else
    {
      valuePtr = 0;
    }

    applesauce::CF::TypeRef::TypeRef(&v47, "arrayOfDictionaries");
    v20 = valuePtr;
    if (valuePtr)
    {
      CFRetain(valuePtr);
    }

    *(&v47 + 1) = v20;
    v31 = &v44;
    v32 = 4;
    v21 = applesauce::CF::details::make_CFDictionaryRef(&v31);
    for (i = 0; i != -64; i -= 16)
    {
      v23 = *(&v47 + i + 8);
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = *(&v47 + i);
      if (v24)
      {
        CFRelease(v24);
      }
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    result = 0;
    *a4 = v21;
  }

  else
  {
    v16 = (*(*this + 608))(this);
    std::vector<float>::vector[abi:ne200100](__p, v16);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    v50 = __p[0];
    v51 = (__p[1] - __p[0]) >> 2;
    do
    {
      v17 = *(this + v8 + 246);
      v41 = &v44;
    }

    while (boost::lockfree::detail::compile_time_sized_ringbuffer<AUDspLibStatus::Status,4ul>::consume_one<boost::lockfree::detail::consume_via_copy<AUDspLibStatus::Status>>(v17 + 96, &v41));
    *(this + 56 * v8 + 576) = 1;
    *a4 = CFDataCreate(0, __p[0], __p[1] - __p[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_1DDC52290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, const void *a38, __int16 a39, char a40, char a41)
{
  __cxa_free_exception(v41);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a38);
  while (v42 != &a39)
  {
    v42 = (v42 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v42);
  }

  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(&a20);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AUDspLib::getPropertyDspLibAUParameters(AUDspLib *this, int a2, unsigned int a3, CFMutableDictionaryRef *a4)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v7 = *(this + 397);
  if (a2 && !v7 || a2 != 4 && v7 == 1)
  {
    return 4294956430;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(this + 397))
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = Mutable;
  v12[0] = &unk_1F591D550;
  v12[1] = &v11;
  v12[3] = v12;
  (*(*this + 624))(this, v10, v12);
  std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](v12);
  result = 0;
  *a4 = v11;
  return result;
}

void sub_1DDC525F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<AUDspLib::getPropertyDspLibAUParameters(unsigned int,unsigned int,void *)::$_0,std::allocator<AUDspLib::getPropertyDspLibAUParameters(unsigned int,unsigned int,void *)::$_0>,void ()(unsigned int,unsigned int,float)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3, int *a4)
{
  v5 = *a3;
  valuePtr = *a4;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v5);
  v8 = CFNumberCreate(v6, kCFNumberFloatType, &valuePtr);
  CFDictionaryAddValue(**(a1 + 8), v7, v8);
  CFRelease(v7);
  CFRelease(v8);
}

uint64_t std::__function::__func<AUDspLib::getPropertyDspLibAUParameters(unsigned int,unsigned int,void *)::$_0,std::allocator<AUDspLib::getPropertyDspLibAUParameters(unsigned int,unsigned int,void *)::$_0>,void ()(unsigned int,unsigned int,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F591D550;
  a2[1] = v2;
  return result;
}

BOOL boost::lockfree::detail::compile_time_sized_ringbuffer<AUDspLibStatus::Status,4ul>::consume_one<boost::lockfree::detail::consume_via_copy<AUDspLibStatus::Status>>(uint64_t a1, uint64_t *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v3 = *(a1 + 64);
  if (explicit != v3)
  {
    v5 = a1 + 104 * v3;
    v6 = *a2;
    v7 = *(*a2 + 88);
    v8 = *(v5 + 160);
    v9 = *(v5 + 168);
    *(v6 + 96) = v9;
    DspLib::copy(v8, v9, v7);
    v10 = *(v5 + 88);
    *v6 = *(v5 + 72);
    *(v6 + 16) = v10;
    *(v6 + 32) = *(v5 + 104);
    *(v6 + 40) = *(v5 + 112);
    *(v6 + 48) = *(v5 + 120);
    *(v6 + 72) = *(v5 + 144);
    *(v6 + 80) = *(v5 + 152);
    v11 = 4;
    if ((v3 + 1) < 4)
    {
      v11 = v3 + 1;
    }

    atomic_store((v3 - v11 + 5) % 5uLL - (5 - v11) + 1, (a1 + 64));
  }

  return explicit != v3;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1DDC52914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDC529E8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,float &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDC52AB4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_1DDC52D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

unint64_t PowerMeter::GetValue(PowerMeter *this)
{
  v2 = *(this + 14);
  if (v2 <= 0.000001)
  {
    v4 = 3270508544;
  }

  else
  {
    *&v3 = log10(v2) * 20.0;
    v4 = v3;
  }

  v5 = *(this + 15);
  if (v5 <= 0.000001)
  {
    v7 = 0xC2F0000000000000;
  }

  else
  {
    *&v6 = log10(v5) * 20.0;
    v7 = v6 << 32;
  }

  return v7 | v4;
}

uint64_t AUDspLib::GetPropertyInfo(AUDspLib *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 3007)
  {
    v8 = 1;
    v9 = 4;
LABEL_13:
    result = 0;
    *a5 = v9;
    *a6 = v8;
    return result;
  }

  if (a2 == 3099)
  {
    if (a3 > 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = (*(this + 230) - *(this + 229)) >> 7;
    }

    if ((a3 & 0xFFFFFFFD) == 0)
    {
      v7 += (*(this + 233) - *(this + 232)) >> 7;
    }

    v8 = 0;
    v9 = 16 * v7;
    goto LABEL_13;
  }

  if (a2 == 21 && !a3)
  {
    result = 0;
    *a6 = 1;
    v11 = 4;
LABEL_38:
    *a5 = v11;
    return result;
  }

  result = 4294956417;
  if (a2 > 6603)
  {
    if (a2 <= 6625)
    {
      if (a2 != 6604)
      {
        if (a2 != 6610)
        {
          return result;
        }

        goto LABEL_36;
      }

      goto LABEL_22;
    }

    if (a2 != 6626 && a2 != 6650)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (a2 == 6600)
  {
    if ((a3 & 0xFFFFFFFB) == 0)
    {
LABEL_36:
      result = 0;
      *a6 = 0;
      goto LABEL_37;
    }

    return 4294956430;
  }

  if (a2 == 6601)
  {
LABEL_32:
    if ((a3 & 0xFFFFFFFB) == 0)
    {
      result = 0;
      *a6 = 1;
LABEL_37:
      v11 = 8;
      goto LABEL_38;
    }

    return 4294956430;
  }

  if (a2 != 6602)
  {
    return result;
  }

LABEL_22:
  v12 = *(this + 1586);
  if (v12)
  {
    result = 4294956430;
  }

  else
  {
    result = 4294956446;
  }

  if (!a3 && v12)
  {
    result = 0;
    *a6 = 1;
    if (a2 == 6604)
    {
      v11 = 8;
    }

    else
    {
      v11 = 4;
    }

    goto LABEL_38;
  }

  return result;
}

uint64_t AUDspLib::Reset(AUDspLib *this)
{
  if (*(this + 1585) == 1)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 1824));
    for (i = 0; i != 1008; i += 56)
    {
      v3 = *(this + i + 528);
      if (v3)
      {
        (*(*v3 + 168))(v3);
      }
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 1824));
  }

  SimpleMeters::Reset(this + 1832);
  return 0;
}

uint64_t SimpleMeters::Reset(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = *(this + 8);
    if (*this != v1)
    {
      v2 = *this + 52;
      do
      {
        *(v2 + 12) = 0;
        *(v2 + 4) = 0;
        *(v2 + 36) = 0;
        *(v2 + 28) = 0;
        *(v2 + 52) = 0;
        *(v2 + 44) = 0;
        *(v2 + 68) = 0;
        v3 = v2 + 76;
        *(v2 + 60) = 0;
        *(v2 - 4) = 0xFFFFFFFFLL;
        v2 += 128;
      }

      while (v3 != v1);
    }
  }

  if (*(this + 52))
  {
    v5 = *(this + 24);
    v4 = *(this + 32);
    if (v5 != v4)
    {
      v6 = v5 + 52;
      do
      {
        *(v6 + 12) = 0;
        *(v6 + 4) = 0;
        *(v6 + 36) = 0;
        *(v6 + 28) = 0;
        *(v6 + 52) = 0;
        *(v6 + 44) = 0;
        *(v6 + 68) = 0;
        v7 = v6 + 76;
        *(v6 + 60) = 0;
        *(v6 - 4) = 0xFFFFFFFFLL;
        v6 += 128;
      }

      while (v7 != v4);
    }
  }

  return this;
}

double AUDspLib::Cleanup(AUDspLib *this)
{
  (*(*this + 592))(this);
  *(this + 1585) = 0;
  result = 0.0;
  *(this + 226) = 0;
  *(this + 230) = *(this + 229);
  *(this + 233) = *(this + 232);
  *(this + 266) = *(this + 265);
  return result;
}

uint64_t AUDspLib::Initialize(AUDspLib *this)
{
  v49[4] = *MEMORY[0x1E69E9840];
  if (*(this + 1585) == 1)
  {
    (*(*this + 64))(this);
  }

  *(this + 1584) = 0;
  v46[0] = 0;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"FactoryDiagsMode", @"com.apple.coreaudio", v46);
  if (v46[0])
  {
    *(this + 1584) = AppBooleanValue;
  }

  v3 = *(this + 21);
  if (v3)
  {
    LODWORD(v4) = (*(*v3 + 24))(v3);
  }

  else
  {
    v4 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v4 > 1)
  {
    return 4294956428;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(Element + 108);
  v7 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v7)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = *(v7 + 108);
  *v46 = 0;
  v9 = (*(*this + 376))(this, v46);
  if (!v9)
  {
    return 4294956428;
  }

  v10 = v9;
  for (i = (*v46 + 2); v6 != *(i - 1) || v8 != *i; i += 2)
  {
    if (*(i - 1) == 0xFFFF && *i == -1 && v6 == v8)
    {
      break;
    }

    if (!--v10)
    {
      return 4294956428;
    }
  }

  result = 4294956428;
  if (v6 <= 0x40 && v8 <= 0x40)
  {
    v14 = 0;
    v15 = (this + 2120);
    *(this + 266) = *(this + 265);
    while (1)
    {
      v16 = *(this + 15);
      if (v16)
      {
        LODWORD(v17) = (*(*v16 + 24))(v16);
      }

      else
      {
        v17 = (*(this + 13) - *(this + 12)) >> 3;
      }

      if (v14 >= v17)
      {
        break;
      }

      v18 = ausdk::AUScope::GetElement((this + 80), v14);
      if (!v18)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v19 = *(this + 266);
      v20 = *(this + 267);
      if (v19 >= v20)
      {
        v22 = *v15;
        v23 = v19 - *v15;
        v24 = (v23 >> 2) + 1;
        if (v24 >> 62)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v20 - v22;
        if (v25 >> 1 > v24)
        {
          v24 = v25 >> 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::allocator<float>::allocate_at_least[abi:ne200100](this + 2120, v26);
        }

        v27 = (4 * (v23 >> 2));
        *v27 = *(v18 + 108);
        v21 = v27 + 1;
        memcpy(0, v22, v23);
        v28 = *(this + 265);
        *(this + 265) = 0;
        *(this + 266) = v21;
        *(this + 267) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v19 = *(v18 + 108);
        v21 = v19 + 4;
      }

      *(this + 266) = v21;
      ++v14;
    }

    if (AUDspLib::GetSampleRate(this) > 0.0)
    {
      *(this + 453) = vcvtad_u64_f64(AUDspLib::GetSampleRate(this));
      v29 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v29)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v30 = *(v29 + 80);
      v31 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v31)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (v30 == *(v31 + 80))
      {
        *(this + 452) = *(this + 84);
        if (*(this + 397))
        {
          v32 = *(this + 265);
          v33 = *(this + 266);
          if (v32 == v33)
          {
            goto LABEL_62;
          }

          v34 = *v32;
          *v46 = 0;
          if (!v34)
          {
LABEL_56:
            if (v32 != v33)
            {
              v36 = *v32;
              if (v36 == 1)
              {
                v37 = 6553601;
                goto LABEL_61;
              }

              if (v36 == 2)
              {
                v37 = 6619138;
LABEL_61:
                *(this + 450) = v37;
              }
            }

LABEL_62:
            (*(*this + 584))(this);
            v38 = ausdk::AUScope::GetElement((this + 80), 0);
            if (!v38)
            {
              ausdk::Throw(0xFFFFD583);
            }

            v39 = *(v38 + 96);
            *v46 = *(v38 + 80);
            v47 = v39;
            v48 = *(v38 + 112);
            v40 = ausdk::AUScope::GetElement((this + 128), 0);
            if (!v40)
            {
              ausdk::Throw(0xFFFFD583);
            }

            v41 = *(v40 + 96);
            v44[0] = *(v40 + 80);
            v44[1] = v41;
            v45 = *(v40 + 112);
            SimpleMeters::Initialize(this + 1832, v46, v44);
            v42 = 0;
            *(this + 1585) = 1;
            v43 = this + 528;
            do
            {
              AUDspLib::allocateStatusQueueForInstance(this, v42);
              result = 0;
              ++v42;
              v43 += 56;
            }

            while (v42 != 18);
            return result;
          }
        }

        else
        {
          *v46 = 0;
          v34 = 1;
        }

        v35 = 0;
        do
        {
          v49[0] = &unk_1F591D478;
          v49[1] = this;
          v49[2] = v46;
          v49[3] = v49;
          (*(*this + 624))(this, v35, v49);
          std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](v49);
          v35 = (*v46 + 1);
          *v46 = v35;
        }

        while (v35 < v34);
        v32 = *(this + 265);
        v33 = *(this + 266);
        goto LABEL_56;
      }
    }

    return 4294956428;
  }

  return result;
}

void sub_1DDC53910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(unsigned int,unsigned int,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SimpleMeters::Initialize(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 88) = *(a2 + 4);
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  v6 = *a3;
  v7 = a3[1];
  *(a1 + 128) = *(a3 + 4);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  if (*(a1 + 48))
  {
    std::vector<PowerMeter>::resize(a1, *(a1 + 84));
    v8 = *a1;
    v9 = *(a1 + 8);
    if (*a1 != v9)
    {
      v10 = *(a1 + 56);
      v11 = -6.90775528 / fmax(v10 * 2.5, 2.22507386e-308);
      v12 = exp(v11);
      if (v11 >= -708.4)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = -6.90775528 / fmax(v10 * 1.24, 2.22507386e-308);
      v15 = exp(v14);
      if (v14 < -708.4)
      {
        v15 = 0.0;
      }

      do
      {
        v8[1] = v10;
        v8[2] = v13;
        v8[4] = v15;
        v8 += 16;
      }

      while (v8 != v9);
    }
  }

  if (*(a1 + 52))
  {
    std::vector<PowerMeter>::resize((a1 + 24), *(a1 + 124));
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    if (v16 != v17)
    {
      v18 = *(a1 + 96);
      v19 = -6.90775528 / fmax(v18 * 2.5, 2.22507386e-308);
      v20 = exp(v19);
      if (v19 >= -708.4)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0.0;
      }

      v22 = -6.90775528 / fmax(v18 * 1.24, 2.22507386e-308);
      v23 = exp(v22);
      if (v22 < -708.4)
      {
        v23 = 0.0;
      }

      do
      {
        v16[1] = v18;
        v16[2] = v21;
        v16[4] = v23;
        v16 += 16;
      }

      while (v16 != v17);
    }
  }
}

float std::__function::__func<AUDspLib::Initialize(void)::$_0,std::allocator<AUDspLib::Initialize(void)::$_0>,void ()(unsigned int,unsigned int,float)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, float *a4)
{
  result = *a4;
  *(*(*(a1 + 8) + 56 * **(a1 + 16) + 544) + 4 * *a2) = *a4;
  return result;
}

__n128 std::__function::__func<AUDspLib::Initialize(void)::$_0,std::allocator<AUDspLib::Initialize(void)::$_0>,void ()(unsigned int,unsigned int,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F591D478;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AUDspLib::CreateExtendedElements(AUDspLib *this)
{
  if (*(this + 1586) == 1)
  {
    ausdk::AUScope::Initialize((this + 1536), this, 4, 18);
    v2 = 0;
    do
    {
      v3 = CFStringCreateWithFormat(0, 0, @"channel %d", v2);
      Element = ausdk::AUScope::GetElement((this + 1536), v2);
      ausdk::Owned<__CFString const*>::operator=((Element + 72), v3);
      CFRelease(v3);
      v2 = (v2 + 1);
    }

    while (v2 != 18);
  }
}

uint64_t ausdk::AUScope::Initialize(ausdk::AUScope *this, ausdk::AUBase *a2, int a3, uint64_t a4)
{
  *this = a2;
  *(this + 2) = a3;
  v5 = *(this + 5);
  if (!v5)
  {
    return ausdk::AUScope::SetNumberOfElements(this, a4);
  }

  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  return (*(*v5 + 16))(v5, a4);
}

uint64_t AUDspLibWithNewParameters::gatherParametersForInstance(uint64_t a1, unsigned int a2, uint64_t a3)
{
  for (i = 0; ; i = (i + 1))
  {
    result = DspLib::algorithmOffset(a1 + 2152, *(a1 + 2168) + 1);
    if (i >= result)
    {
      break;
    }

    v8 = DspLib::parameterAddress(a1 + 2152, i);
    v10 = (***(a1 + 2144))(*(a1 + 2144), v8, v9);
    Parameter = 0.0;
    if (*(a1 + 1588) == 1)
    {
      Element = ausdk::AUScope::GetElement((a1 + 1536), a2);
      Parameter = ausdk::AUElement::GetParameter(Element, v10);
    }

    else
    {
      ausdk::AUBase::GetParameter(a1, v10, 0, 0, &Parameter);
    }

    v12 = *(a3 + 24);
    if (v12)
    {
      std::function<void ()(unsigned int,unsigned int,float)>::operator()(v12, i, v10, Parameter);
    }
  }

  return result;
}

uint64_t AUDspLibWithNewParameters::CopyClumpName(AUDspLibWithNewParameters *this, unsigned int a2, uint64_t a3, unsigned int a4, CFMutableStringRef *a5)
{
  v8 = (*(**(this + 268) + 24))(*(this + 268), a3);
  if (*(this + 542) + 1 <= v8 || (!v8 ? (v9 = (this + 2152)) : (v9 = (*(this + 270) + 8 * (v8 - 1))), v10 = *v9, v11 = *MEMORY[0x1E695E480], v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], **v9, 0x8000100u), v13 = (*(**(this + 268) + 32))(*(this + 268), a3), v14 = v10[1], v13 >= *(v14 + 2)))
  {
    abort();
  }

  v15 = CFStringCreateWithCString(v11, *(*v14 + 16 * v13), 0x8000100u);
  Mutable = CFStringCreateMutable(v11, 0);
  CFStringAppend(Mutable, v12);
  CFStringAppend(Mutable, @", ");
  CFStringAppend(Mutable, v15);
  CFRelease(v12);
  CFRelease(v15);
  *a5 = Mutable;
  return 0;
}

uint64_t AUDspLibWithNewParameters::GetParameterInfo(AUDspLibWithNewParameters *this, unsigned int a2, uint64_t a3, AudioUnitParameterInfo *a4)
{
  v7 = (*(**(this + 268) + 8))(*(this + 268), a3);
  v9 = v8;
  v17 = v7;
  v18 = v8;
  if (DspLib::isValid(this + 2152, &v17))
  {
    v10 = DspLib::SystemParametersDefinition::operator[](this + 2152, v7, v9);
    v11 = *(v10 + 8);
    if (v11 > 0x18)
    {
      v12 = kAudioUnitParameterUnit_Decibels;
    }

    else
    {
      v12 = dword_1DE0A0554[v11];
    }

    a4->unit = v12;
    a4->flags = -1048576000;
    *&a4->minValue = *(v10 + 16);
    a4->defaultValue = *(v10 + 12);
    v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], *v10, 0x8000100u);
    a4->cfNameString = v15;
    a4->flags |= 0x8000010u;
    CFStringGetCString(v15, a4->name, 52, 0x8000100u);
    v13 = (*(**(this + 268) + 16))(*(this + 268), a3);
    v14 = 0;
  }

  else
  {
    *&a4->unit = 0;
    *&a4->maxValue = 0;
    a4->cfNameString = @"Invalid Parameter";
    a4->flags = 0x8000000;
    CFStringGetCString(@"Invalid Parameter", a4->name, 52, 0x8000100u);
    v13 = 0;
    v14 = 4294956418;
  }

  a4->clumpID = v13;
  a4->flags |= 0x100000u;
  return v14;
}

BOOL DspLib::isValid(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 >= (*(a1 + 16) + 1))
  {
    return 0;
  }

  v3 = (v2 ? *(a1 + 8) + 8 * (v2 - 1) : a1);
  v4 = *v3;
  v5 = a2[1];
  v6 = *(v4 + 8);
  return v5 < *(v6 + 8) && a2[2] < *(*(*v6 + 16 * v5 + 8) + 8);
}

uint64_t AUDspLibWithNewParameters::SetParameter(AUDspLibWithNewParameters *this, uint64_t a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a4 > 0x11)
  {
    return 4294956419;
  }

  v9 = a2;
  if (a2 == 1869769061 || a2 == 1937141612)
  {
    goto LABEL_16;
  }

  v11 = (*(**(this + 268) + 8))(*(this + 268), a2);
  v13 = v12;
  v22 = v11;
  v23 = v12;
  if (!DspLib::isValid(this + 2152, &v22))
  {
    return 4294956418;
  }

  v24 = v11;
  v25 = v13;
  if (*(this + 542) + 1 <= v11)
  {
    abort();
  }

  v14 = (*(this + 270) + 8 * (v11 - 1));
  if (!v11)
  {
    v14 = (this + 2152);
  }

  v15 = v25;
  v16 = DspLib::groupOffset(*v14, HIDWORD(v24));
  v17 = v16 + v15 + DspLib::algorithmOffset(this + 2152, v11);
  v18 = *(this + 397);
  if (!(v18 | a3))
  {
    *(*(this + 68) + 4 * v17) = a5;
    v21 = (this + 568);
    goto LABEL_15;
  }

  if (a3 == 4 && v18 == 1)
  {
    Element = ausdk::AUScope::GetElement((this + 1536), a4);
    ausdk::AUElement::SetParameter(Element, v9, a5);
    v20 = this + 56 * a4;
    *(*(v20 + 68) + 4 * v17) = a5;
    v21 = v20 + 568;
LABEL_15:
    ++*v21;
  }

LABEL_16:
  *(this + 1820) = 1;

  return ausdk::AUBase::SetParameter(this, v9, a3, a4, a5);
}

uint64_t AUDspLib::AUDspLib(uint64_t a1, OpaqueAudioComponentInstance *a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6)
{
  v11 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  v12 = 0;
  *v11 = &unk_1F591CF50;
  do
  {
    v13 = a1 + v12;
    *(v13 + 528) = 0;
    *(v13 + 536) = 0;
    *(v13 + 544) = 0uLL;
    *(v13 + 560) = 0uLL;
    v12 += 56;
    *(v13 + 576) = 0;
  }

  while (v12 != 1008);
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1586) = a6;
  *(a1 + 1588) = 0;
  v14 = *(a3 + 16);
  *(a1 + 1592) = *a3;
  *(a1 + 1608) = v14;
  v15 = *(a3 + 32);
  v16 = *(a3 + 48);
  v17 = *(a3 + 80);
  *(a1 + 1656) = *(a3 + 64);
  *(a1 + 1672) = v17;
  *(a1 + 1624) = v15;
  *(a1 + 1640) = v16;
  v18 = *(a3 + 96);
  v19 = *(a3 + 112);
  v20 = *(a3 + 144);
  *(a1 + 1720) = *(a3 + 128);
  *(a1 + 1736) = v20;
  *(a1 + 1688) = v18;
  *(a1 + 1704) = v19;
  *(a1 + 1752) = *(a3 + 88);
  *(a1 + 1756) = *(a3 + 104);
  v21 = *a4;
  *(a1 + 1776) = *(a4 + 2);
  *(a1 + 1760) = v21;
  *(a1 + 1784) = a5;
  *(a1 + 1792) = 0;
  *(a1 + 1800) = 0xFFFF0000FFFF0000;
  *(a1 + 1808) = 0;
  *(a1 + 1813) = 0;
  *(a1 + 1821) = 1;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 1824));
  *(a1 + 2136) = 0;
  *(a1 + 2120) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2098) = 0u;
  ausdk::AUBase::CreateElements(a1);
  LODWORD(v22) = *(a1 + 1756);
  if (v22)
  {
    v23 = 0;
    do
    {
      ausdk::AUBase::SetParameter(a1, v23, 0, 0, *(*(a1 + 1704) + 4 * v23));
      ++v23;
      v22 = *(a1 + 1756);
    }

    while (v23 < v22);
  }

  if (*(a1 + 1586) == 1)
  {
    v24 = 0;
    v25 = 18;
    do
    {
      if (v22)
      {
        v26 = 0;
        do
        {
          Element = ausdk::AUScope::GetElement((a1 + 1536), v24);
          ausdk::AUElement::SetParameter(Element, v26, *(*(a1 + 1704) + 4 * v26));
          ++v26;
          v22 = *(a1 + 1756);
        }

        while (v26 < v22);
      }

      ++v24;
    }

    while (v24 != 18);
  }

  else
  {
    v25 = 1;
  }

  v28 = (a1 + 544);
  do
  {
    std::vector<float>::resize(v28, *(a1 + 1752));
    v29 = *(a1 + 1752);
    if ((v28[1] - *v28) >> 2 != v29)
    {
      goto LABEL_27;
    }

    if (v29)
    {
      DspLib::copy(*(a1 + 1672), *(a1 + 1680), *v28);
    }

    v28 += 7;
    --v25;
  }

  while (v25);
  v30 = *(a1 + 1776);
  if (v30)
  {
    v31 = malloc_type_malloc(16 * v30, 0x10600407B16006EuLL);
    *(a1 + 1792) = v31;
    if (v31)
    {
      goto LABEL_21;
    }

LABEL_27:
    (*(*a1 + 64))(a1);
    return a1;
  }

  v31 = *(a1 + 1792);
  if (!v31)
  {
    goto LABEL_27;
  }

LABEL_21:
  v32 = *(a1 + 1776);
  if (v32)
  {
    v33 = 0;
    v34 = *(a1 + 1760);
    v35 = v31 + 8;
    do
    {
      *(v35 - 2) = v33;
      *v35 = *(v34 + 8 * v33);
      v35 += 2;
      ++v33;
    }

    while (v32 != v33);
  }

  return a1;
}

void sub_1DDC545F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *v12;
  if (*v12)
  {
    *(v10 + 2128) = v14;
    operator delete(v14);
  }

  v15 = (v10 + 2104);
  v16 = -144;
  do
  {
    std::unique_ptr<AUDspLibStatus::Queue>::reset[abi:ne200100](v15--, 0);
    v16 += 8;
  }

  while (v16);
  SimpleMeters::~SimpleMeters(v11);
  a10 = (v10 + 1552);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v17 = (v10 + 1504);
  v18 = -1008;
  while (1)
  {
    v19 = *(v17 - 1);
    if (v19)
    {
      *v17 = v19;
      operator delete(v19);
    }

    v17 -= 7;
    v18 += 56;
    if (!v18)
    {
      ausdk::AUBase::~AUBase(v10);
      _Unwind_Resume(a1);
    }
  }
}

void SimpleMeters::~SimpleMeters(SimpleMeters *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void AUDspLib::~AUDspLib(AUDspLib *this)
{
  *this = &unk_1F591CF50;
  AUDspLib::deleteAlgorithms(this);
  v2 = 0;
  *(this + 1585) = 0;
  *(this + 226) = 0;
  *(this + 230) = *(this + 229);
  *(this + 233) = *(this + 232);
  *(this + 266) = *(this + 265);
  do
  {
    caulk::pooled_semaphore_mutex::_lock((this + 1824));
    *(this + v2 + 552) = *(this + v2 + 544);
    caulk::pooled_semaphore_mutex::_unlock((this + 1824));
    v2 += 56;
  }

  while (v2 != 1008);
  v3 = *(this + 224);
  if (v3)
  {
    free(v3);
    *(this + 224) = 0;
  }

  v4 = *(this + 265);
  if (v4)
  {
    *(this + 266) = v4;
    operator delete(v4);
  }

  for (i = 2104; i != 1960; i -= 8)
  {
    std::unique_ptr<AUDspLibStatus::Queue>::reset[abi:ne200100]((this + i), 0);
  }

  v6 = *(this + 232);
  if (v6)
  {
    *(this + 233) = v6;
    operator delete(v6);
  }

  v7 = *(this + 229);
  if (v7)
  {
    *(this + 230) = v7;
    operator delete(v7);
  }

  v10 = (this + 1552);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v8 = 1008;
  do
  {
    v9 = *(this + v8 + 488);
    if (v9)
    {
      *(this + v8 + 496) = v9;
      operator delete(v9);
    }

    v8 -= 56;
  }

  while (v8);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUDspLib::loadDefaultAudioChannelLayout(AUDspLib *this, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, @"DefaultAudioChannelLayout");
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
      if (HIDWORD(valuePtr))
      {
        return 4294956428;
      }

      if (*(this + 450) == -65536)
      {
        v6 = *(this + 265);
        if (v6 == *(this + 266))
        {
          v7 = 0;
        }

        else
        {
          v7 = *v6;
        }

        if (v7 != valuePtr)
        {
          return 4294956428;
        }

        if (*(this + 451) != valuePtr)
        {
          *(this + 451) = valuePtr;
          caulk::pooled_semaphore_mutex::_lock((this + 1824));
          AUDspLib::initializeDspLibAlgorithms(this, v8);
          caulk::pooled_semaphore_mutex::_unlock((this + 1824));
        }
      }

      else if (*(this + 451) != valuePtr)
      {
        *(this + 451) = valuePtr;
      }
    }

    return 0;
  }

  return result;
}

__CFArray *AUDspLib::CFArrayOfStringsCreateWithCArrayOfStrings(const char **this, CFIndex capacity)
{
  v3 = *MEMORY[0x1E695E480];
  v4 = capacity;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
  do
  {
    v6 = *this++;
    v7 = CFStringCreateWithCString(v3, v6, 0x8000100u);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
    --v4;
  }

  while (v4);
  return Mutable;
}

uint64_t AUDspLibWithNewParameters::AUDspLibWithNewParameters(uint64_t a1, OpaqueAudioComponentInstance *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v12 = 0uLL;
  v13 = 0;
  AUDspLib::AUDspLib(a1, a2, &v14, &v12, a5, 0);
  *a1 = &unk_1F591D1E0;
  v8 = *a4;
  *(a1 + 2168) = *(a4 + 2);
  *(a1 + 2152) = v8;
  ausdk::AUBase::CreateElements(a1);
  *(a1 + 2144) = a3;
  for (i = 544; i != 1552; i += 56)
  {
    v10 = DspLib::algorithmOffset(a1 + 2152, *(a1 + 2168) + 1);
    std::vector<float>::resize((a1 + i), v10);
  }

  *&v14 = &unk_1F591D598;
  *(&v14 + 1) = a1;
  *(&v15 + 1) = &v14;
  DspLib::forAllParametersOf(a1 + 2152, &v14);
  std::__function::__value_func<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](&v14);
  return a1;
}

void sub_1DDC54B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](va);
  AUDspLib::~AUDspLib(v5);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<AUDspLibWithNewParameters::registerParameters(void)::$_0,std::allocator<AUDspLibWithNewParameters::registerParameters(void)::$_0>,void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *(a1 + 8);
  v5 = (***(v4 + 2144))(*(v4 + 2144), *a2, *(a2 + 8));
  ausdk::AUBase::SetParameter(v4, v5, 0, 0, v3);
  if (*(v4 + 1586) == 1)
  {
    for (i = 0; i != 18; ++i)
    {
      Element = ausdk::AUScope::GetElement((v4 + 1536), i);
      ausdk::AUElement::SetParameter(Element, v5, v3);
    }
  }
}

uint64_t std::__function::__func<AUDspLibWithNewParameters::registerParameters(void)::$_0,std::allocator<AUDspLibWithNewParameters::registerParameters(void)::$_0>,void ()(DspLib::SystemParameterAddress,DspLib::ParameterDefinition)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F591D598;
  a2[1] = v2;
  return result;
}

void dspLibMessenger(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = dspLibMessenger(void)::sMessengerCache;
  if (!dspLibMessenger(void)::sMessengerCache || (v2 = std::__shared_weak_count::lock(dspLibMessenger(void)::sMessengerCache), (a1[1] = v2) == 0) || (v3 = dspLibMessenger(void)::sMessengerCache, *a1 = dspLibMessenger(void)::sMessengerCache, v4 = v2, !v3))
  {
    v10 = 1;
    v5 = caulk::concurrent::messenger::shared_high_priority(v2);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v5);
    v6 = v5[2];
    *&v9[13] = *(v5 + 45);
    *v9 = v6;
    std::optional<std::string>::operator=[abi:ne200100]<char const(&)[17],void>(&__p, "DspLib messenger");
    std::allocate_shared[abi:ne200100]<caulk::concurrent::messenger,std::allocator<caulk::concurrent::messenger>,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &,0>();
  }

  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  dspLibMessenger(void)::sMessengerCache = v3;
  v7 = dspLibMessenger(void)::sMessengerCache;
  dspLibMessenger(void)::sMessengerCache = v4;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1DDC54ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

BOOL AULevelDrivenSuppressor::ValidFormat(AULevelDrivenSuppressor *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  if (a2 != 1)
  {
    if (a2 != 2 || a3)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (a4->mBytesPerFrame != 8 || a4->mFormatID != 1718773105)
    {
      return 0;
    }

    return a4->mChannelsPerFrame == 1;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    if (a4->mBytesPerFrame != 4 || a4->mFormatID != 1819304813)
    {
      return 0;
    }

    return a4->mChannelsPerFrame == 1;
  }

LABEL_17:
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (!result)
  {
    return result;
  }

  if ((a4->mFormatFlags & 0x20) == 0)
  {
    return a4->mChannelsPerFrame == 1;
  }

  return 1;
}

uint64_t AULevelDrivenSuppressor::SupportedNumChannels(AULevelDrivenSuppressor *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULevelDrivenSuppressor::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AULevelDrivenSuppressor::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 134);
    ++*(this + 136);
  }

  return result;
}

uint64_t AULevelDrivenSuppressor::GetParameterInfo(AULevelDrivenSuppressor *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 4)
  {
    v6 = off_1E8669970[a3];
    v7 = dword_1DE0A05BC[a3];
    v8 = flt_1DE0A05D0[a3];
    v9 = flt_1DE0A05E4[a3];
    v10 = flt_1DE0A05F8[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= 0x80000000;
  }

  return result;
}

uint64_t AULevelDrivenSuppressor::GetParameterList(AULevelDrivenSuppressor *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    a3[4] = 4;
  }

  result = 0;
  *a4 = 5;
  return result;
}

uint64_t AULevelDrivenSuppressor::Render(AULevelDrivenSuppressor *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
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

  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  v12 = v11;
  if (v13)
  {
    v12 = ausdk::AUInputElement::PullInput(v11, a2, a3, 0, a4);
  }

  if (!v12)
  {
    v14 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v14)
    {
      if (!*(v14 + 144))
      {
        goto LABEL_26;
      }

      v15 = *(v14 + 152);
      v16 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!v16 || !*(v16 + 172))
      {
        v20 = 0;
LABEL_22:
        v23[0] = v15 + 48;
        v23[1] = v20;
        if (*(v9 + 144))
        {
          v22 = *(v9 + 152) + 48;
          return (*(*this + 184))(this, a2, a4, 2, v23, 1, &v22);
        }

LABEL_26:
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
      v12 = (v18 & 1) != 0 ? ausdk::AUInputElement::PullInput(v17, a2, a3, 1, a4) : v17;
      v19 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (v19)
      {
        if (!*(v19 + 144))
        {
          goto LABEL_26;
        }

        if (!v12)
        {
          v20 = *(v19 + 152) + 48;
          goto LABEL_22;
        }

        return v12;
      }
    }

LABEL_24:
    ausdk::Throw(0xFFFFD583);
  }

  return v12;
}

uint64_t AULevelDrivenSuppressor::ProcessMultipleBufferLists(AULevelDrivenSuppressor *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  v193 = v14;
  v194 = v13;
  v195 = v12;
  v196 = v11;
  v197 = v10;
  v198 = v9;
  v199 = v7;
  v200 = v8;
  v19 = *(this + 134);
  if (*(this + 135) != v19)
  {
    AULevelDrivenSuppressor::InitializeInternals(this);
    *(this + 135) = v19;
  }

  v20 = *(this + 136);
  if (*(this + 137) != v20)
  {
    *(this + 137) = v20;
  }

  mData = (*a5)->mBuffers[0].mData;
  v22 = (*a7)->mBuffers[0].mData;
  if (*(this + 557) != 1)
  {
    memcpy(*(this + 88), (*a5)->mBuffers[0].mData, *(this + 173));
    if (a4 >= 2)
    {
      if (*(this + 141))
      {
        if (*(this + 140) >= 2u)
        {
          v27 = a5[1];
          if (v27)
          {
            memcpy(*(this + 74), v27->mBuffers[0].mData, 4 * *(this + 162));
            *(*(this + 74) + 4 * *(this + 162)) = 0;
          }
        }
      }
    }

    v29 = *(this + 162);
    v30 = *(this + 91);
    __A.realp = *(this + 88);
    realp = __A.realp;
    __A.imagp = &__A.realp[v29];
    vDSP_zvmags(&__A, 1, v30, 1, v29);
    *v30 = *realp * *realp;
    v30[v29] = realp[v29] * realp[v29];
    MEMORY[0x1E12BE940](v30, 1, this + 684, v30, 1, *(this + 165));
    v31 = *(this + 165);
    LODWORD(__A.realp) = 0;
    if (v31)
    {
      vDSP_sve(v30, 1, &__A, v31);
      v32 = (*&__A.realp / v31) + 1.0e-20;
    }

    else
    {
      v32 = 1.0e-20;
    }

    v33 = log10f(v32) * 10.0;
    *(this + 172) = v33;
    v34 = *(this + 157) - v33;
    v191 = v34;
    __B = 0.0316;
    v35 = *(this + 141);
    if (v35 == 3)
    {
      v36 = *(this + 140);
      v37 = *(this + 74);
      goto LABEL_21;
    }

    if (v35 == 6)
    {
      v36 = *(this + 140);
      v37 = *(this + 71);
LABEL_21:
      memcpy(v36, v37, 4 * *(this + 165));
      goto LABEL_22;
    }

    v191 = __exp10f(v34 * 0.1);
    v56 = *(this + 164);
    v57 = *(this + 167);
    v58 = *(this + 140);
    v59 = *(this + 143);
    MEMORY[0x1E12BE940](v30, 1, &v191, v56, 1, *(this + 165));
    MEMORY[0x1E12BE940](v59, 1, &__B, v57, 1, *(this + 165));
    MEMORY[0x1E12BE5D0](v56, 1, v57, 1, v58, 1, *(this + 165));
    v60 = *(this + 141);
    if (v60 > 3)
    {
      if (v60 == 5)
      {
        v61 = *(this + 71);
LABEL_149:
        vDSP_vmax(v58, 1, v61, 1, v58, 1, *(this + 165));
LABEL_22:
        v186 = v22;
        v187 = mData;
        if (*(this + 532) == 1)
        {
          v38 = *(this + 88);
          v39 = *(this + 162);
          v40 = *(this + 164);
          v41 = &v40[v39];
          __A.realp = v40;
          __A.imagp = v41;
          v42 = *(this + 167);
          v43 = 1.0e-20;
          *v40 = logf((*v38 * *v38) + 1.0e-20);
          v44 = *(this + 163);
          if (v44 >= 2)
          {
            v45 = v44 - 1;
            v46 = v40 + 1;
            v47 = v38 + 1;
            do
            {
              v188 = ((v47[v39] * v47[v39]) + (*v47 * *v47)) + 1.0e-20;
              *v46++ = logf(v188) * 0.5;
              ++v47;
              --v45;
            }

            while (v45);
          }

          v188 = 0.0;
          vDSP_vfill(&v188, v41, 1, v44);
          MultiRadixRealFFT::RealOutOfPlaceInverseTransform(this + 215, &__A, v42);
          MEMORY[0x1E12BE7F0](v42, 1, *(this + 217), 1, v42, 1, *(this + 164));
          MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 1720), v42, &__A, 1.0);
          v48 = *(this + 220);
          v49 = *(this + 162);
          if (v49)
          {
            v50 = __A.realp;
            v51 = *(this + 220);
            do
            {
              v52 = *v51 + 1.0e-20;
              v53 = *v50++;
              *v51++ = (v52 + expf(v53)) * 0.5;
              --v49;
            }

            while (v49);
          }

          v54 = *(this + 165);
          v48[(v54 - 1)] = 0.0;
          __C = 0.0;
          if (v54)
          {
            vDSP_sve(v48, 1, &__C, v54);
            v43 = (__C / v54) + 1.0e-20;
            v55 = *(this + 165);
          }

          else
          {
            v55 = 0;
          }

          v188 = log10f(v43) * 10.0;
          __B = fminf(__exp10f(((*(this + 154) + 6.0) - v188) * 0.1), 1.0e10);
          MEMORY[0x1E12BE940](v48, 1, &__B, *(this + 223), 1, v55);
        }

        else
        {
          v191 = 0.0;
          vDSP_vfill(&v191, *(this + 223), 1, *(this + 165));
        }

        v62 = 1.0 - *(this + 266);
        *&__A.realp = v62 * 0.333;
        __C = v62 * 0.667;
        v63 = *(this + 164);
        v64 = *(this + 167);
        v65 = *(this + 91);
        v66 = *(this + 152);
        v67 = *(this + 155);
        v68 = *(this + 158);
        v69 = *(this + 161);
        v70 = *(this + 165);
        *v63 = 0.0;
        MEMORY[0x1E12BE940](v65, 1, &__A, v63 + 1, 1, (v70 - 1));
        MEMORY[0x1E12BE8F0](v65 + 4, 1, &__A, v63, 1, v63, 1, (v70 - 1));
        MEMORY[0x1E12BE8F0](v65, 1, &__C, v63, 1, v63, 1, v70);
        MEMORY[0x1E12BE8F0](v66, 1, this + 1064, v63, 1, v66, 1, v70);
        v71 = *(this + 166);
        v72 = v71 * 0.2;
        v73 = *(this + 273);
        if (v73 >= (v71 * 0.2))
        {
          v72 = v71 * 0.5;
          if (v73 >= (v71 * 0.5))
          {
            v72 = v71 + v71;
          }
        }

        if (v72 < *(this + 274) || *(this + 1100) == 1)
        {
          *(this + 274) = 0;
          vDSP_vmin(v68, 1, v66, 1, v67, 1, *(this + 165));
          memcpy(v68, v66, *(this + 174));
        }

        else
        {
          vDSP_vmin(v67, 1, v66, 1, v67, 1, *(this + 165));
          vDSP_vmin(v68, 1, v66, 1, v68, 1, *(this + 165));
        }

        v191 = 1.0e-20;
        MEMORY[0x1E12BE8A0](v66, 1, &v191, v63, 1, *(this + 165));
        MEMORY[0x1E12BE8A0](v67, 1, &v191, v64, 1, *(this + 165));
        vDSP_vdiv(v64, 1, v63, 1, v69, 1, *(this + 165));
        MEMORY[0x1E12BE7F0](v67, 1, *(this + 183), 1, v63, 1, *(this + 165));
        MEMORY[0x1E12BE9A0](v63, 1, v66, 1, *(this + 186), 1, *(this + 165));
        v74 = *(this + 273) + 1.0;
        if ((*(this + 166) * 30.0) < v74)
        {
          v74 = *(this + 166) * 30.0;
        }

        *(this + 273) = v74;
        ++*(this + 274);
        v75 = *(this + 91);
        v76 = *(this + 167);
        v77 = *(this + 140);
        v78 = *(this + 170);
        MEMORY[0x1E12BE940](v75, 1, this + 1080, v78, 1, *(this + 165));
        v79 = *(this + 149);
        MEMORY[0x1E12BE8F0](v79, 1, this + 1084, v78, 1, v78, 1, *(this + 165));
        v80 = *(this + 155);
        MEMORY[0x1E12BE940](v80, 1, this + 1076, v76, 1, *(this + 165));
        v81 = *(this + 189);
        MEMORY[0x1E12BE9A0](v76, 1, v75, 1, v81, 1, *(this + 165));
        v82 = *(this + 192);
        vDSP_vmax(*(this + 186), 1, v81, 1, v82, 1, *(this + 165));
        v83 = *(this + 165);
        if (v83)
        {
          v84 = 0;
          v85 = *(this + 152);
          do
          {
            if (v82[v84] <= 0.0 && (v86 = v75, !*(this + 1101)) || (v86 = v78, *(v85 + v84 * 4) < (*(this + 272) * *(v80 + v84 * 4))))
            {
              v79[v84] = *(v86 + v84 * 4);
            }

            ++v84;
          }

          while (v83 != v84);
        }

        else
        {
          v83 = 0;
        }

        vDSP_vmax(v79, 1, v77, 1, v79, 1, v83);
        v87 = *(this + 124);
        v88 = *(this + 127);
        v89 = *(this + 94);
        v90 = *(this + 149);
        v91 = *(this + 167);
        v185 = *(this + 170);
        v92 = *(this + 130);
        v93 = *(this + 164);
        vDSP_vmax(*(this + 91), 1, v90, 1, v93, 1, *(this + 165));
        LODWORD(__A.realp) = 507307272;
        v94 = *(this + 170);
        MEMORY[0x1E12BE8A0](v90, 1, &__A, v94, 1, *(this + 165));
        v96 = *(this + 167);
        v97 = *(this + 165);
        if (v97)
        {
          v95.n128_u32[0] = 1.0;
          v98 = v94;
          v99 = *(this + 167);
          v100 = *(this + 165);
          do
          {
            v101 = *v98++;
            *v99++ = 1.0 / v101;
            --v100;
          }

          while (v100);
        }

        else
        {
          v97 = 0;
        }

        v102 = *(this + 173);
        MEMORY[0x1E12BE5D0](v89, 1, v94, 1, v102, 1, v97, v95);
        vDSP_vdiv(v102, 1, v89, 1, v102, 1, *(this + 165));
        MEMORY[0x1E12BE7F0](v102, 1, v102, 1, v102, 1, *(this + 165));
        LODWORD(__A.realp) = 1063507722;
        MEMORY[0x1E12BE940](v102, 1, &__A, v102, 1, *(this + 165));
        LODWORD(__A.realp) = 1036831949;
        MEMORY[0x1E12BE8A0](v102, 1, &__A, v102, 1, *(this + 165));
        MEMORY[0x1E12BE7F0](v93, 1, v96, 1, v87, 1, *(this + 165));
        LODWORD(__A.realp) = -1082130432;
        MEMORY[0x1E12BE8A0](v87, 1, &__A, v87, 1, *(this + 165));
        LODWORD(__A.realp) = 1120403456;
        __C = 0.0;
        vDSP_vclip(v87, 1, &__C, &__A, v88, 1, *(this + 165));
        vDSP_vmin(v87, 1, v88, 1, v87, 1, *(this + 165));
        MEMORY[0x1E12BE7F0](v88, 1, v102, 1, v88, 1, *(this + 165));
        LODWORD(__A.realp) = -1082130432;
        MEMORY[0x1E12BE8A0](v102, 1, &__A, v102, 1, *(this + 165));
        MEMORY[0x1E12BE7F0](v89, 1, v102, 1, v102, 1, *(this + 165));
        MEMORY[0x1E12BE7F0](v96, 1, v102, 1, v102, 1, *(this + 165));
        MEMORY[0x1E12BE9A0](v102, 1, v88, 1, v88, 1, *(this + 165));
        LODWORD(__A.realp) = 1120403456;
        __C = -1.0e20;
        vDSP_vclip(v88, 1, &__C, &__A, v88, 1, *(this + 165));
        MEMORY[0x1E12BE9A0](v88, 1, v92, 1, v91, 1, *(this + 165));
        LODWORD(__A.realp) = 0;
        vDSP_vfill(&__A, v185, 1, *(this + 165));
        vDSP_vmax(v185, 1, v91, 1, v185, 1, *(this + 165));
        MEMORY[0x1E12BE9A0](v185, 1, v91, 1, v91, 1, *(this + 165));
        MEMORY[0x1E12BE940](v91, 1, this + 968, v91, 1, *(this + 165));
        MEMORY[0x1E12BE5D0](v91, 1, v88, 1, v91, 1, *(this + 165));
        MEMORY[0x1E12BE940](v185, 1, this + 972, v93, 1, 5);
        MEMORY[0x1E12BE5D0](v93, 1, v91, 1, v92, 1, 5);
        MEMORY[0x1E12BE940](v185 + 5, 1, this + 976, v93 + 5, 1, (*(this + 165) - 5));
        MEMORY[0x1E12BE5D0](v93 + 5, 1, v91 + 5, 1, v92 + 5, 1, (*(this + 165) - 5));
        v103 = *(this + 165);
        if (v103)
        {
          v104 = 0.0;
          v105 = *(this + 165);
          do
          {
            v106 = *v92++;
            v107 = v104 + v106;
            if (v106 > 3.0)
            {
              v104 = v107;
            }

            --v105;
          }

          while (v105);
        }

        else
        {
          v104 = 0.0;
        }

        *(this + 138) = ((1.0 / ((0.5 / (v104 / v103)) + 1.0)) * 0.899) + 0.1;
        if (*(this + 532) == 1)
        {
          MEMORY[0x1E12BE9A0](*(this + 223), 1, *(this + 91), 1, *(this + 109), 1);
          LODWORD(__A.realp) = 0;
          vDSP_vthr(*(this + 109), 1, &__A, *(this + 109), 1, *(this + 165));
          memcpy(*(this + 112), *(this + 109), *(this + 174));
          MEMORY[0x1E12BE5D0](*(this + 112), 1, *(this + 112), 1, *(this + 112), 1, *(this + 165));
          MEMORY[0x1E12BE5D0](*(this + 112), 1, *(this + 109) + 4, 1, *(this + 112), 1, *(this + 162));
          MEMORY[0x1E12BE5D0](*(this + 112) + 4, 1, *(this + 109), 1, *(this + 112), 1, *(this + 162));
          __C = 0.0079;
          MEMORY[0x1E12BE940](*(this + 112), 1, &__C, *(this + 112), 1, *(this + 165));
          __C = 0.1;
          MEMORY[0x1E12BE940](*(this + 115), 1, &__C, *(this + 170), 1, *(this + 165));
          memcpy(*(this + 115), *(this + 112), *(this + 165));
          MEMORY[0x1E12BE5D0](*(this + 112), 1, *(this + 170), 1, *(this + 112), 1, *(this + 165));
        }

        else
        {
          LODWORD(__A.realp) = 0;
          vDSP_vfill(&__A, *(this + 115), 1, v103);
        }

        v109 = *(this + 132);
        v108.n128_u32[0] = 995049017;
        if (v109 == 1)
        {
          v113 = *(this + 172);
          v114 = *(this + 154);
          if (v113 > (v114 + 6.0))
          {
            v112 = 0.25119;
            goto LABEL_83;
          }

          v112 = 0.1;
          if (v113 > v114 || v113 > (v114 + -6.0))
          {
LABEL_83:
            v115 = *(this + 127);
            v116 = *(this + 124);
            v117 = *(this + 130);
            v118 = *(this + 97);
            v119 = *(this + 100);
            v120 = *(this + 164);
            v121 = *(this + 167);
            v122 = *(this + 170);
            v123 = *(this + 173);
            LODWORD(__A.realp) = 1065353216;
            MEMORY[0x1E12BE8A0](v115, 1, &__A, v123, 1, *(this + 165), v108);
            vDSP_vdiv(v123, 1, v115, 1, v121, 1, *(this + 165));
            MEMORY[0x1E12BE8A0](v116, 1, &__A, v120, 1, *(this + 165));
            MEMORY[0x1E12BE7F0](v120, 1, v121, 1, v120, 1, *(this + 165));
            v128 = *(this + 165);
            if (v128)
            {
              v124.n128_u32[0] = 1040496093;
              v125.n128_u32[0] = 1.0;
              v126.n128_u32[0] = 2.0;
              v127.n128_u32[0] = 953267991;
              v129 = v120;
              v130 = v118;
              v131 = *(this + 165);
              do
              {
                v132 = *v129;
                v133 = vcvtms_s32_f32(v132 + v132);
                v134 = 1.0;
                if ((v133 & 0x80000000) == 0)
                {
                  if (*(this + 408) - 2 >= v133)
                  {
                    v135 = -(floorf(v132 + v132) - (v132 * 2.0));
                    v134 = ((v135 * *(this + v133 + 410)) + ((1.0 - v135) * *(this + v133 + 409))) / sqrtf(v132 + 0.0001);
                  }

                  else
                  {
                    v134 = (0.1296 / v132) + 1.0;
                  }
                }

                *v130++ = v134;
                ++v129;
                --v131;
              }

              while (v131);
            }

            else
            {
              v128 = 0;
            }

            MEMORY[0x1E12BE7F0](v121, 1, v118, 1, v118, 1, v128, v124, v125, v126, v127);
            __C = -1.0e20;
            vDSP_vclip(v118, 1, &__C, &__A, v118, 1, *(this + 165));
            v136 = *(this + 165);
            if (v136)
            {
              v137 = *(this + 165);
              do
              {
                if (*v121 == 0.0)
                {
                  v138 = 0.0;
                }

                else
                {
                  v138 = *v118 / *v121;
                }

                *v122++ = v138;
                ++v118;
                ++v121;
                --v137;
              }

              while (v137);
              v139 = *(this + 170);
              v140 = &loc_1DE092000;
              for (i = 0; i != v136; ++i)
              {
                v139[i] = ((1.0 / ((0.5 / *(v117 + i * 4)) + 1.0)) * 0.899) + 0.1;
              }
            }

            else
            {
              v136 = 0;
              v139 = *(this + 170);
              v140 = &loc_1DE092000;
            }

            v142 = *(this + 173);
            LODWORD(__A.realp) = *(this + 138);
            MEMORY[0x1E12BE940](v139, 1, &__A, v142, 1, v136);
            MEMORY[0x1E12BE810](v120, 1, v120, 1, *(this + 165));
            LODWORD(__A.realp) = 1065353216;
            MEMORY[0x1E12BE8A0](v115, 1, &__A, v139, 1, *(this + 165));
            v143 = *(this + 165);
            if (v143)
            {
              v144 = v119;
              v145 = *(this + 165);
              do
              {
                v146 = *v142++;
                v147 = (1.0 - v146) / v146;
                if (v146 == 0.0)
                {
                  v148 = 1.0e20;
                }

                else
                {
                  v148 = v147;
                }

                v149 = *v139++;
                v150 = v148 * v149;
                v151 = *v120++;
                v152 = (v150 * expf(v151)) + 1.0;
                if (v152 == 0.0)
                {
                  v153 = 1.0;
                }

                else
                {
                  v153 = 1.0 / v152;
                }

                *v144++ = v153;
                --v145;
              }

              while (v145);
            }

            else
            {
              v143 = 0;
            }

            __C = 0.0;
            LODWORD(__A.realp) = 1065353216;
            vDSP_vclip(v119, 1, &__C, &__A, v119, 1, v143);
            v191 = 1.0;
            __B = v112;
            v154 = *(this + 97);
            v155 = *(this + 100);
            vDSP_vclip(v155, 1, &__B, &v191, v155, 1, *(this + 165));
            v156 = *(this + 100);
            LODWORD(__A.realp) = 1048576000;
            __C = 0.5;
            v157 = *(this + 167);
            v158 = *(this + 170);
            *v157 = 0.0;
            *v158 = 0;
            MEMORY[0x1E12BE940](v156 + 1, 1, &__A, v158 + 1, 1, (*(this + 165) - 1));
            memcpy(v157, v158, 4 * *(this + 165));
            MEMORY[0x1E12BE5D0](v157, 1, v158 + 1, 1, v157, 1, (*(this + 165) - 1));
            MEMORY[0x1E12BE940](v156, 1, &__C, v158, 1, *(this + 165));
            MEMORY[0x1E12BE5D0](v157, 1, v158, 1, v157, 1, *(this + 165));
            *v157 = (*v156 + v156[1]) * 0.5;
            v159 = *(this + 165);
            v157[(v159 - 1)] = (v156[(v159 - 1)] + v156[(v159 - 2)]) * 0.5;
            memcpy(v156, v157, 4 * v159);
            memcpy(v154, v155, 4 * *(this + 165));
            LODWORD(__A.realp) = 0;
            if (*(this + 532) == 1)
            {
              v160 = *(this + 165);
              v161 = v187;
              if (v160)
              {
                v162 = *(this + 112);
                v163 = *(this + 91);
                v164 = *(this + 118);
                v165 = *(this + 165);
                do
                {
                  v166 = *v162++;
                  v167 = v166;
                  v168 = *v163++;
                  v169 = v167 / (v168 + 1.0e-20);
                  if (v169 > 1.0)
                  {
                    v169 = 1.0;
                  }

                  *v164++ = sqrtf(v169);
                  --v165;
                }

                while (v165);
              }
            }

            else
            {
              vDSP_vfill(&__A, *(this + 118), 1, *(this + 165));
              v160 = *(this + 165);
              v161 = v187;
              if ((*(this + 532) & 1) == 0)
              {
                goto LABEL_122;
              }
            }

            vDSP_vmax(v154, 1, *(this + 118), 1, v154, 1, v160);
            v160 = *(this + 165);
LABEL_122:
            v170 = *(this + 94);
            v171 = *(this + 91);
            v172 = *(this + 164);
            __C = 0.8;
            v188 = 0.2;
            MEMORY[0x1E12BE7F0](v154, 1, v154, 1, v172, 1, v160);
            MEMORY[0x1E12BE7F0](v172, 1, v171, 1, v172, 1, *(this + 165));
            MEMORY[0x1E12BE940](v172, 1, &__C, v172, 1, *(this + 165));
            MEMORY[0x1E12BE940](v170, 1, &v188, v170, 1, *(this + 165));
            MEMORY[0x1E12BE5D0](v170, 1, v172, 1, v170, 1, *(this + 165));
            MEMORY[0x1E12BE7F0](v171, 1, v154, 1, v172, 1, *(this + 165));
            MEMORY[0x1E12BE7F0](v172, 1, v154, 1, v172, 1, *(this + 165));
            v173 = *(this + 165);
            LODWORD(__A.realp) = 0;
            if (v173)
            {
              vDSP_sve(v172, 1, &__A, v173);
              v174 = (*&__A.realp / v173) + v140[1019];
            }

            else
            {
              v174 = v140[1019];
            }

            v175 = log10f(v174) * 10.0;
            *(this + 277) = v175;
            v176 = v175;
            if ((*(this + 1100) & 1) == 0)
            {
              v176 = (v175 * 0.8) + (*(this + 278) * 0.2);
            }

            *(this + 278) = v176;
            __C = 1.0;
            v177 = *(this + 156);
            if (v175 >= (v177 + -10.0))
            {
              if (v176 >= (v177 + -5.0))
              {
                if (v176 >= v177)
                {
LABEL_134:
                  MEMORY[0x1E12BE940](v154, 1, &__C, v154, 1, *(this + 165));
                  if (*(this + 532) == 1)
                  {
                    vDSP_vmax(v154, 1, *(this + 118), 1, v154, 1, *(this + 165));
                  }

                  v179 = *(this + 103);
                  if (*(this + 1100))
                  {
                    memcpy(*(this + 103), v154, 4 * *(this + 165));
                  }

                  else
                  {
                    __C = 0.1;
                    MEMORY[0x1E12BE940](v179, 1, &__C, v179, 1, *(this + 165));
                    __C = 0.9;
                    MEMORY[0x1E12BE940](v154, 1, &__C, v154, 1, *(this + 165));
                    MEMORY[0x1E12BE5D0](v154, 1, v179, 1, v179, 1, *(this + 165));
                  }

                  __B = 0.0;
                  vDSP_vclip(*(this + 97), 1, &__B, &v191, *(this + 97), 1, *(this + 165));
                  v180 = *(this + 97);
                  v181 = *(this + 162);
                  v182 = &v161[4 * v181];
                  v183 = &v186[4 * v181];
                  MEMORY[0x1E12BE7F0](v161, 1, v180, 1, v186, 1, v181);
                  MEMORY[0x1E12BE7F0](v182 + 1, 1, v180 + 4, 1, v183 + 1, 1, (v181 - 1));
                  *v183 = *v182 * *(v180 + 4 * v181);
                  *(this + 1100) = 0;
                  std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 106, *(this + 97), *(this + 98), (*(this + 98) - *(this + 97)) >> 2);
                  *(this + 276) = *(this + 277);
                  memcpy(*(this + 143), *(this + 140), 4 * *(this + 165));
                  v25 = *(this + 91);
                  v24 = *(this + 94);
                  v23 = 4 * *(this + 165);
                  goto LABEL_140;
                }

                v178 = 0.0065;
              }

              else
              {
                v178 = 0.0045;
              }
            }

            else
            {
              v178 = 0.0025;
            }

            __C = v178;
            goto LABEL_134;
          }

          if (v113 > (v114 + -14.0))
          {
LABEL_151:
            v112 = 0.031623;
            goto LABEL_83;
          }
        }

        else if (!v109)
        {
          v110 = *(this + 172);
          v111 = *(this + 154);
          if (v110 > (v111 + 6.0))
          {
            v112 = 0.50119;
            goto LABEL_83;
          }

          if (v110 > v111)
          {
            v112 = 0.31623;
            goto LABEL_83;
          }

          if (v110 > (v111 + -6.0))
          {
            v112 = 0.1;
            goto LABEL_83;
          }

          if (v110 > (v111 + -12.0))
          {
            goto LABEL_151;
          }

          if (v110 > (v111 + -20.0))
          {
            v112 = 0.01;
            goto LABEL_83;
          }
        }

        v112 = 0.0031623;
        goto LABEL_83;
      }

      if (v60 != 4)
      {
        goto LABEL_22;
      }

      v184 = *(this + 71);
    }

    else
    {
      if (v60 != 1)
      {
        if (v60 != 2)
        {
          goto LABEL_22;
        }

        v61 = *(this + 74);
        goto LABEL_149;
      }

      v184 = *(this + 74);
    }

    vDSP_vmin(v58, 1, v184, 1, v58, 1, *(this + 165));
    goto LABEL_22;
  }

  v23 = *(this + 173);
  v24 = (*a7)->mBuffers[0].mData;
  v25 = (*a5)->mBuffers[0].mData;
LABEL_140:
  memcpy(v24, v25, v23);
  return 0;
}

float AULevelDrivenSuppressor::InitializeInternals(AULevelDrivenSuppressor *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_18;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0);
  if (Parameter >= 2)
  {
    Parameter = 2;
  }

  *(this + 132) = Parameter;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = ausdk::AUElement::GetParameter(v5, 1u);
  *(this + 154) = v7;
  v8 = 0;
  if (v7 > 0.0 || (v8 = -1024458752, v7 < -120.0))
  {
    *(this + 154) = v8;
    v7 = *&v8;
  }

  *(this + 158) = __exp10f(v7 * 0.1);
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = ausdk::AUElement::GetParameter(v9, 2u);
  *(this + 155) = v11;
  v12 = 0;
  if (v11 > 0.0 || (v12 = -1018691584, v11 < -200.0))
  {
    *(this + 155) = v12;
    v11 = *&v12;
  }

  *(this + 160) = __exp10f(v11 * 0.1);
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = ausdk::AUElement::GetParameter(v13, 3u);
  *(this + 156) = v15;
  v16 = 0;
  if (v15 > 0.0 || (v16 = -1024458752, v15 < -120.0))
  {
    *(this + 156) = v16;
  }

  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v18 & 1) == 0)
  {
LABEL_18:
    abort();
  }

  *(this + 532) = ausdk::AUElement::GetParameter(v17, 4u) != 0;
  *(this + 157) = *(this + 154) + *(this + 155);
  result = *(this + 158) * 0.25;
  *(this + 159) = result;
  return result;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(void *result, char *__src, char *a3, unint64_t a4)
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

uint64_t AULevelDrivenSuppressor::SetParameter(AULevelDrivenSuppressor *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  else
  {
    v8 = ausdk::AUBase::SetParameter(this, a2, 0, a4, a5);
    if (a2 <= 4 && !v8)
    {
      ++*(this + 134);
    }

    return 0;
  }
}

uint64_t AULevelDrivenSuppressor::SetProperty(AULevelDrivenSuppressor *this, int a2, int a3, unsigned int a4, _DWORD *__src, size_t __n)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 8000)
  {
    if (a2 != 8001)
    {
      if (a2 != 8020)
      {
        return result;
      }

      if (*(this + 17) == 1)
      {
        if (__n != 4 * (*(this + 84) + 1))
        {
          return 4294956445;
        }

        memcpy(*(this + 71), __src, __n);
      }

      return 0;
    }

    if (__n == 4 && *(this + 141) <= 6u)
    {
      result = 0;
      *(this + 141) = *__src;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 21)
  {
    if (__n == 4)
    {
      *(this + 557) = *__src != 0;
      v8 = MEMORY[0x1E69E9858];
      fprintf(*MEMORY[0x1E69E9858], "%4d %s %s \n", 585, "SetProperty", "21:27:31");
      fflush(*v8);
      return 0;
    }

    return 4294956445;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (__n >= 4)
    {
      if (*__src)
      {
        return 0;
      }

      else
      {
        return 4294956445;
      }
    }
  }

  return result;
}

uint64_t AULevelDrivenSuppressor::GetProperty(AULevelDrivenSuppressor *this, int a2, int a3, unsigned int a4, float *__C)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 8000)
  {
    if (a2 == 21)
    {
      result = 0;
      v7 = *(this + 557);
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

    goto LABEL_13;
  }

  if (a2 == 8001)
  {
    result = 0;
    v7 = *(this + 141);
LABEL_13:
    *__C = v7;
    return result;
  }

  if (a2 == 8020)
  {
    if (*(this + 17) == 1)
    {
      memcpy(__C, *(this + 71), 4 * (*(this + 84) + 1));
    }

    else
    {
      vDSP_vclr(__C, 1, (*(this + 84) + 1));
    }

    return 0;
  }

  return result;
}

uint64_t AULevelDrivenSuppressor::GetPropertyInfo(AULevelDrivenSuppressor *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 8000)
  {
    if (a2 != 21)
    {
      if (a2 != 3700)
      {
        return result;
      }

      *a6 = 0;
      goto LABEL_13;
    }

    v9 = 1;
LABEL_12:
    *a6 = v9;
LABEL_13:
    v8 = 4;
    goto LABEL_14;
  }

  if (a2 == 8001)
  {
    v9 = *(this + 17) ^ 1;
    goto LABEL_12;
  }

  if (a2 != 8020)
  {
    return result;
  }

  *a6 = 1;
  v8 = 4 * *(this + 84) + 4;
LABEL_14:
  result = 0;
  *a5 = v8;
  return result;
}

uint64_t AULevelDrivenSuppressor::Reset(AULevelDrivenSuppressor *this)
{
  *(this + 536) = xmmword_1DE095FA0;
  if (*(this + 17) == 1)
  {
    v2 = *(this + 74);
    v3 = *(this + 75) - v2;
    if (v3 >= 1)
    {
      bzero(v2, v3);
    }

    v4 = *(this + 88);
    v5 = *(this + 89) - v4;
    if (v5 >= 1)
    {
      bzero(v4, v5);
    }

    v6 = *(this + 91);
    v7 = *(this + 92) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v8 = *(this + 94);
    v9 = *(this + 95) - v8;
    if (v9 >= 1)
    {
      bzero(v8, v9);
    }

    v10 = *(this + 97);
    v11 = *(this + 98) - v10;
    if (v11 >= 1)
    {
      memset_pattern16(v10, &unk_1DE095DF0, v11);
    }

    v12 = *(this + 100);
    v13 = *(this + 101) - v12;
    if (v13 >= 1)
    {
      memset_pattern16(v12, &unk_1DE095DF0, v13);
    }

    v14 = *(this + 103);
    v15 = *(this + 104) - v14;
    if (v15 >= 1)
    {
      memset_pattern16(v14, &unk_1DE095DF0, v15);
    }

    v16 = *(this + 106);
    v17 = *(this + 107) - v16;
    if (v17 >= 1)
    {
      memset_pattern16(v16, &unk_1DE095DF0, v17);
    }

    v18 = *(this + 124);
    v19 = *(this + 125) - v18;
    if (v19 >= 1)
    {
      bzero(v18, v19);
    }

    v20 = *(this + 127);
    v21 = *(this + 128) - v20;
    if (v21 >= 1)
    {
      bzero(v20, v21);
    }

    v22 = *(this + 130);
    v23 = *(this + 131) - v22;
    if (v23 >= 1)
    {
      bzero(v22, v23);
    }

    v24 = *(this + 140);
    v25 = *(this + 141) - v24;
    if (v25 >= 1)
    {
      bzero(v24, v25);
    }

    v26 = *(this + 143);
    v27 = *(this + 144) - v26;
    if (v27 >= 1)
    {
      bzero(v26, v27);
    }

    v28 = *(this + 146);
    v29 = *(this + 147) - v28;
    if (v29 >= 1)
    {
      bzero(v28, v29);
    }

    v30 = *(this + 149);
    v31 = *(this + 150) - v30;
    if (v31 >= 1)
    {
      bzero(v30, v31);
    }

    v32 = *(this + 152);
    v33 = *(this + 153) - v32;
    if (v33 >= 1)
    {
      bzero(v32, v33);
    }

    v34 = *(this + 155);
    v35 = *(this + 156) - v34;
    if (v35 >= 1)
    {
      bzero(v34, v35);
    }

    v36 = *(this + 158);
    v37 = *(this + 159) - v36;
    if (v37 >= 1)
    {
      bzero(v36, v37);
    }

    v38 = *(this + 161);
    v39 = *(this + 162) - v38;
    if (v39 >= 1)
    {
      bzero(v38, v39);
    }

    v40 = *(this + 186);
    v41 = *(this + 187) - v40;
    if (v41 >= 1)
    {
      bzero(v40, v41);
    }

    v42 = *(this + 220);
    v43 = *(this + 221) - v42;
    if (v43 >= 1)
    {
      bzero(v42, v43);
    }

    v44 = *(this + 112);
    v45 = *(this + 113) - v44;
    if (v45 >= 1)
    {
      bzero(v44, v45);
    }

    v46 = *(this + 115);
    v47 = *(this + 116) - v46;
    if (v47 >= 1)
    {
      bzero(v46, v47);
    }

    v48 = *(this + 118);
    v49 = *(this + 119) - v48;
    if (v49 >= 1)
    {
      bzero(v48, v49);
    }
  }

  *(this + 1092) = 0;
  *(this + 1100) = 1;
  *(this + 138) = 0;
  *(this + 276) = 0;
  *(this + 278) = 0;
  return 0;
}

uint64_t AULevelDrivenSuppressor::Initialize(AULevelDrivenSuppressor *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = (*(*v2 + 24))(v2);
    v4 = *(this + 15);
    *(this + 140) = v3;
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = (*(this + 13) - *(this + 12)) >> 3;
    }
  }

  else
  {
    v5 = (*(this + 13) - *(this + 12)) >> 3;
    *(this + 140) = v5;
  }

  if (v5 >= 2)
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

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

LABEL_19:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_12:
  v10 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v10)
  {
    goto LABEL_19;
  }

  if (*(v10 + 108) == 1)
  {
    v11 = *(this + 84);
    *(this + 162) = v11;
    *(this + 163) = v11;
    *(this + 164) = 2 * v11;
    *(this + 165) = v11 + 1;
    v12 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v12)
    {
      v13 = *(v12 + 80);
      *(this + 161) = v13;
      *(this + 166) = v13 / *(this + 162);
      v14 = *(this + 656);
      *(this + 170) = 1.0 / v14.u32[0];
      *(this + 692) = vshl_n_s32(v14, 2uLL);
      std::vector<float>::resize(this + 164, v14.u32[0]);
      std::vector<float>::resize(this + 167, *(this + 164));
      *(this + 171) = 1065353216;
      CreateMagicalWindow(*(this + 167), *(this + 164));
      v15 = *(this + 84);
      if (v15)
      {
        MultiRadixFFT_Dispose(v15);
      }

      *(this + 84) = 0;
      MultiRadixRealFFT_Create();
    }

    goto LABEL_19;
  }

  return 4294956428;
}

void AULevelDrivenSuppressor::~AULevelDrivenSuppressor(AULevelDrivenSuppressor *this)
{
  AULevelDrivenSuppressor::~AULevelDrivenSuppressor(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = &unk_1F591D600;
  *this = &unk_1F591D600;
  v3 = *(this + 84);
  if (v3)
  {
    MultiRadixFFT_Dispose(v3);
    v2 = *this;
  }

  v2[8](this);
  v4 = *(this + 223);
  if (v4)
  {
    *(this + 224) = v4;
    operator delete(v4);
  }

  v5 = *(this + 220);
  if (v5)
  {
    *(this + 221) = v5;
    operator delete(v5);
  }

  v6 = *(this + 217);
  if (v6)
  {
    *(this + 218) = v6;
    operator delete(v6);
  }

  v7 = *(this + 216);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 201);
  if (v8)
  {
    *(this + 202) = v8;
    operator delete(v8);
  }

  v9 = *(this + 198);
  if (v9)
  {
    *(this + 199) = v9;
    operator delete(v9);
  }

  v10 = *(this + 195);
  if (v10)
  {
    *(this + 196) = v10;
    operator delete(v10);
  }

  v11 = *(this + 192);
  if (v11)
  {
    *(this + 193) = v11;
    operator delete(v11);
  }

  v12 = *(this + 189);
  if (v12)
  {
    *(this + 190) = v12;
    operator delete(v12);
  }

  v13 = *(this + 186);
  if (v13)
  {
    *(this + 187) = v13;
    operator delete(v13);
  }

  v14 = *(this + 183);
  if (v14)
  {
    *(this + 184) = v14;
    operator delete(v14);
  }

  v15 = *(this + 180);
  if (v15)
  {
    *(this + 181) = v15;
    operator delete(v15);
  }

  v16 = *(this + 177);
  if (v16)
  {
    *(this + 178) = v16;
    operator delete(v16);
  }

  v17 = *(this + 173);
  if (v17)
  {
    *(this + 174) = v17;
    operator delete(v17);
  }

  v18 = *(this + 170);
  if (v18)
  {
    *(this + 171) = v18;
    operator delete(v18);
  }

  v19 = *(this + 167);
  if (v19)
  {
    *(this + 168) = v19;
    operator delete(v19);
  }

  v20 = *(this + 164);
  if (v20)
  {
    *(this + 165) = v20;
    operator delete(v20);
  }

  v21 = *(this + 161);
  if (v21)
  {
    *(this + 162) = v21;
    operator delete(v21);
  }

  v22 = *(this + 158);
  if (v22)
  {
    *(this + 159) = v22;
    operator delete(v22);
  }

  v23 = *(this + 155);
  if (v23)
  {
    *(this + 156) = v23;
    operator delete(v23);
  }

  v24 = *(this + 152);
  if (v24)
  {
    *(this + 153) = v24;
    operator delete(v24);
  }

  v25 = *(this + 149);
  if (v25)
  {
    *(this + 150) = v25;
    operator delete(v25);
  }

  v26 = *(this + 146);
  if (v26)
  {
    *(this + 147) = v26;
    operator delete(v26);
  }

  v27 = *(this + 143);
  if (v27)
  {
    *(this + 144) = v27;
    operator delete(v27);
  }

  v28 = *(this + 140);
  if (v28)
  {
    *(this + 141) = v28;
    operator delete(v28);
  }

  v29 = *(this + 130);
  if (v29)
  {
    *(this + 131) = v29;
    operator delete(v29);
  }

  v30 = *(this + 127);
  if (v30)
  {
    *(this + 128) = v30;
    operator delete(v30);
  }

  v31 = *(this + 124);
  if (v31)
  {
    *(this + 125) = v31;
    operator delete(v31);
  }

  v32 = *(this + 118);
  if (v32)
  {
    *(this + 119) = v32;
    operator delete(v32);
  }

  v33 = *(this + 115);
  if (v33)
  {
    *(this + 116) = v33;
    operator delete(v33);
  }

  v34 = *(this + 112);
  if (v34)
  {
    *(this + 113) = v34;
    operator delete(v34);
  }

  v35 = *(this + 109);
  if (v35)
  {
    *(this + 110) = v35;
    operator delete(v35);
  }

  v36 = *(this + 106);
  if (v36)
  {
    *(this + 107) = v36;
    operator delete(v36);
  }

  v37 = *(this + 103);
  if (v37)
  {
    *(this + 104) = v37;
    operator delete(v37);
  }

  v38 = *(this + 100);
  if (v38)
  {
    *(this + 101) = v38;
    operator delete(v38);
  }

  v39 = *(this + 97);
  if (v39)
  {
    *(this + 98) = v39;
    operator delete(v39);
  }

  v40 = *(this + 94);
  if (v40)
  {
    *(this + 95) = v40;
    operator delete(v40);
  }

  v41 = *(this + 91);
  if (v41)
  {
    *(this + 92) = v41;
    operator delete(v41);
  }

  v42 = *(this + 88);
  if (v42)
  {
    *(this + 89) = v42;
    operator delete(v42);
  }

  v43 = *(this + 74);
  if (v43)
  {
    *(this + 75) = v43;
    operator delete(v43);
  }

  v44 = *(this + 71);
  if (v44)
  {
    *(this + 72) = v44;
    operator delete(v44);
  }

  ausdk::AUBase::~AUBase(this);
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef,std::string>(void *a1, const __CFDictionary *a2, const __CFString *a3, void *a4)
{
  v6 = applesauce::CF::details::at_key<std::string>(a2, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFDictionaryGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void *applesauce::CF::DictionaryRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::DataRef,std::string>(void *a1, const __CFDictionary *a2, const __CFString *a3, void *a4)
{
  v6 = applesauce::CF::details::at_key<std::string>(a2, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFDataGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

const void **applesauce::CF::ObjectRef<__CFReadStream *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *applesauce::CF::details::at_key<std::string>(const __CFDictionary *a1, CFStringRef a2)
{
  v3 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (!a2)
  {
    cf = 0;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  info = v3->info;
  if ((data_high & 0x80u) == 0)
  {
    v7 = data_high;
  }

  else
  {
    v7 = info;
  }

  a2 = CFStringCreateWithBytes(0, a2, v7, 0x8000100u, 0);
  cf = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_9:
  Value = CFDictionaryGetValue(a1, a2);
  a2 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(a2);
  }

LABEL_14:
  if (!a1)
  {
    return 0;
  }

  return Value;
}

void sub_1DDC58464(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC58410);
}

void *std::vector<long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t SubbandDOA::Set(uint64_t this, unsigned int a2, float a3, float a4)
{
  v4 = *this + 1;
  if (v4 <= a2)
  {
    __assert_rtn("Set", "SubbandDOA.h", 49, "bandIdx < GetNumBands()");
  }

  if (fabsf(a4) > 90.0)
  {
    __assert_rtn("Set", "SubbandDOA.h", 50, "elevation >= -90.0 && elevation <= 90.0");
  }

  v5 = *(this + 8);
  v6 = (*(this + 16) - v5) >> 2;
  if (v6 <= a2 || (*(v5 + 4 * a2) = a3, v7 = a2 + v4, v6 <= v7))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  *(v5 + 4 * v7) = a4;
  return this;
}

uint64_t CmhBEAM::initialize(int32x2_t *this, int a2, __int32 a3, __int32 a4)
{
  v8 = this[4];
  if (v8)
  {
    MEMORY[0x1E12BD130](*&v8, 0x80C80B8603338);
    this[4] = 0;
  }

  v9 = this[5];
  if (v9)
  {
    MEMORY[0x1E12BD130](*&v9, 0x80C80B8603338);
    this[5] = 0;
  }

  v10 = this[6];
  if (v10)
  {
    MEMORY[0x1E12BD130](*&v10, 0x80C80B8603338);
    this[6] = 0;
  }

  v11 = this[10];
  if (v11)
  {
    MEMORY[0x1E12BD130](*&v11, 0x1000C8052888210);
    this[10] = 0;
  }

  v12 = this[7];
  if (v12)
  {
    MEMORY[0x1E12BD130](*&v12, 0x80C80B8603338);
    this[7] = 0;
  }

  v13 = this[8];
  if (v13)
  {
    MEMORY[0x1E12BD130](*&v13, 0x80C80B8603338);
    this[8] = 0;
  }

  v14 = this[9];
  if (v14)
  {
    MEMORY[0x1E12BD130](*&v14, 0x80C80B8603338);
    this[9] = 0;
  }

  if (this[15].i32[1])
  {
    if (this[7])
    {
      v15 = this->i32[0];
      if (this->i32[0] >= 1)
      {
        v16 = 0;
        do
        {
          v17 = *(*&this[7] + 8 * v16);
          if (v17)
          {
            MEMORY[0x1E12BD130](v17, 0x1000C8052888210);
            v15 = this->i32[0];
          }

          ++v16;
        }

        while (v16 < v15);
      }
    }

    if (this[8])
    {
      v18 = this[1].i32[0];
      if (v18 >= 1)
      {
        for (i = 0; i < v18; ++i)
        {
          v20 = *(*&this[8] + 8 * i);
          if (v20)
          {
            MEMORY[0x1E12BD130](v20, 0x1000C8052888210);
            v18 = this[1].i32[0];
          }
        }
      }
    }

    if (this[9])
    {
      v21 = this->i32[1];
      if (v21 >= 1)
      {
        for (j = 0; j < v21; ++j)
        {
          v23 = *(*&this[9] + 8 * j);
          if (v23)
          {
            MEMORY[0x1E12BD130](v23, 0x1000C8052888210);
            v21 = this->i32[1];
          }
        }
      }
    }
  }

  v24 = this[7];
  if (v24)
  {
    MEMORY[0x1E12BD130](*&v24, 0x80C80B8603338);
    this[7] = 0;
  }

  v25 = this[8];
  if (v25)
  {
    MEMORY[0x1E12BD130](*&v25, 0x80C80B8603338);
    this[8] = 0;
  }

  if (this->i32[1] >= 1)
  {
    v26 = this[9];
    if (v26)
    {
      MEMORY[0x1E12BD130](*&v26, 0x80C80B8603338);
      this[9] = 0;
    }
  }

  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 5;
  }

  if ((a3 - 46) < 0xFFFFFFDC)
  {
    return 6;
  }

  if (a2 <= 23999)
  {
    if (a2 <= 11999)
    {
      if (a2 == 8000)
      {
        v28 = 0;
        v29 = 64;
        goto LABEL_65;
      }

      if (a2 != 11025)
      {
LABEL_187:
        this[13] = 0;
        return 1;
      }
    }

    else if (a2 != 12000 && a2 != 16000)
    {
      if (a2 == 22050)
      {
        goto LABEL_55;
      }

      goto LABEL_187;
    }

    v28 = 0;
    v29 = 128;
    goto LABEL_65;
  }

  if (a2 <= 47999)
  {
    if (a2 != 24000 && a2 != 32000)
    {
      if (a2 != 44100)
      {
        goto LABEL_187;
      }

      goto LABEL_63;
    }

LABEL_55:
    v28 = 0;
    v29 = 256;
    goto LABEL_65;
  }

  if (a2 == 48000)
  {
LABEL_63:
    v28 = 0;
    v29 = 512;
    goto LABEL_65;
  }

  if (a2 != 88200 && a2 != 96000)
  {
    goto LABEL_187;
  }

  v29 = 1024;
  v28 = 1;
LABEL_65:
  this[13].i32[0] = a2;
  this[13].i32[1] = v29;
  v30 = v29 >> 1;
  v31 = (5 * v29) >> 3;
  this[14].i32[1] = 0;
  this[16].i32[0] = 0;
  if (!v28)
  {
    if (((v30 - 1) & 0x100) != 0)
    {
      if (0x100 % v31)
      {
        return 2;
      }

      v32 = 4;
    }

    else
    {
      v32 = 3;
      v31 = v29 >> 1;
    }

    this[14].i32[1] = v31;
    this[15].i32[1] = 0;
    this[16].i32[0] = v32;
    v33 = 0x100 / v31;
    goto LABEL_77;
  }

  if ((v29 & 0x1C0) == 0)
  {
    v32 = 3;
    v31 = v29 >> 1;
    goto LABEL_74;
  }

  if (((5 * v29) & 0x7C0) != 0)
  {
    return 2;
  }

  v32 = 4;
LABEL_74:
  v33 = 0;
  this[14].i32[1] = v31;
  this[15].i32[1] = v31 >> 8;
  this[16].i32[0] = v32;
LABEL_77:
  this[15].i32[0] = v33;
  this[18].i32[1] = a3;
  this[17] = vadd_s32(vdup_n_s32(v30), 0x1FFFFFFFFLL);
  v34 = -1;
  LOWORD(v35) = v29;
  do
  {
    v35 = v35 >> 1;
    ++v34;
  }

  while (v35);
  this[14].i32[0] = v34;
  this[16].i32[1] = v32 * v29;
  CmhBEAMprocOpt::deallocate_memory(&this[11]);
  this[12].i32[1] = a4;
  v36 = this[14].i32[0];
  if (v36 < 1)
  {
    v38 = 1;
  }

  else
  {
    v37 = 1;
    do
    {
      v37 *= 2;
      --v36;
    }

    while (v36);
    v38 = v37;
  }

  v39 = this[13].i32[1];
  this[22].i32[0] = v39 != v38;
  if (this[11].i32[0])
  {
    LODWORD(v40) = this[18].i32[0];
    LODWORD(v41) = a4;
  }

  else
  {
    this[11].i32[0] = 1;
    v40 = this[18].i32[0];
    if (v40 < 0)
    {
      v64 = -1;
    }

    else
    {
      v64 = 8 * v40;
    }

    v65 = operator new[](v64, MEMORY[0x1E69E5398]);
    this[28] = v65;
    if (!v65)
    {
      return 4;
    }

    bzero(v65, 8 * v40);
    if (v40 >= 1)
    {
      v66 = 0;
      v67 = MEMORY[0x1E69E5398];
      while (1)
      {
        v68 = this[13].i32[1];
        v69 = 4 * v68;
        v70 = v68 < 0 ? -1 : 4 * v68;
        *(*&this[28] + 8 * v66) = operator new[](v70, v67);
        v71 = *(*&this[28] + 8 * v66);
        if (!v71)
        {
          return 4;
        }

        bzero(v71, v69);
        ++v66;
        v40 = this[18].i32[0];
        if (v66 >= v40)
        {
          v39 = this[13].i32[1];
          break;
        }
      }
    }

    v72 = 4 * v39;
    v73 = v39 < 0 ? -1 : 4 * v39;
    v74 = operator new[](v73, MEMORY[0x1E69E5398]);
    this[31] = v74;
    if (!v74)
    {
      return 4;
    }

    bzero(v74, v72);
    v75 = operator new[](v73, MEMORY[0x1E69E5398]);
    this[32] = v75;
    if (!v75)
    {
      return 4;
    }

    bzero(v75, v72);
    v41 = this[12].i32[1];
    v76 = v41 < 0 ? -1 : 8 * v41;
    v77 = operator new[](v76, MEMORY[0x1E69E5398]);
    this[27] = v77;
    if (!v77)
    {
      return 4;
    }

    bzero(v77, 8 * v41);
    if (v41 >= 1)
    {
      v78 = 0;
      v79 = MEMORY[0x1E69E5398];
      while (1)
      {
        v80 = this[13].i32[1];
        v81 = 4 * v80;
        v82 = v80 < 0 ? -1 : 4 * v80;
        *(*&this[27] + 8 * v78) = operator new[](v82, v79);
        v83 = *(*&this[27] + 8 * v78);
        if (!v83)
        {
          return 4;
        }

        bzero(v83, v81);
        if (++v78 >= this[12].i32[1])
        {
          LODWORD(v40) = this[18].i32[0];
          LODWORD(v41) = this[12].i32[1];
          break;
        }
      }
    }

    v84 = v40 + 1;
    v85 = v40 < -1 ? -1 : 16 * v84;
    v86 = operator new[](v85, MEMORY[0x1E69E5398]);
    this[30] = v86;
    if (!v86)
    {
      return 4;
    }

    v119 = v84;
    if ((v40 & 0x80000000) == 0)
    {
      v87 = this[13].i32[1];
      if (v87 < 0)
      {
        v88 = -1;
      }

      else
      {
        v88 = 4 * v87;
      }

      v89 = (v87 + (v87 >> 31)) >> 1;
      v90 = v119;
      v91 = v86 + 8;
      do
      {
        v92 = operator new[](v88, MEMORY[0x1E69E5398]);
        *(v91 - 1) = v92;
        if (!v92)
        {
          return 4;
        }

        *v91 = &v92[4 * v89];
        v91 += 2;
      }

      while (--v90);
    }

    v93 = v41 < 0 ? -1 : 16 * v41;
    v94 = operator new[](v93, MEMORY[0x1E69E5398]);
    this[29] = v94;
    if (!v94)
    {
      return 4;
    }

    v95 = this[13].i32[1];
    v96 = 4 * v95;
    if (v41 > 0)
    {
      v117 = 4 * v95;
      v118 = this[13].i32[1];
      if (v95 < 0)
      {
        v97 = -1;
      }

      else
      {
        v97 = 4 * v95;
      }

      v98 = (v95 + (v95 >> 31)) >> 1;
      v99 = v41;
      v100 = v94 + 8;
      while (1)
      {
        v101 = operator new[](v97, MEMORY[0x1E69E5398]);
        *(v100 - 1) = v101;
        if (!v101)
        {
          return 4;
        }

        *v100 = &v101[4 * v98];
        v100 += 2;
        if (!--v99)
        {
          v96 = v117;
          v95 = v118;
          break;
        }
      }
    }

    v102 = v95 < 0 ? -1 : v96;
    v103 = operator new[](v102, MEMORY[0x1E69E5398]);
    this[33] = v103;
    if (!v103)
    {
      return 4;
    }

    bzero(v103, v96);
    v104 = v40 < -1 ? -1 : 8 * v119;
    v105 = operator new[](v104, MEMORY[0x1E69E5398]);
    this[23] = v105;
    if (!v105)
    {
      return 4;
    }

    v106 = 8 * v40 + 8;
    bzero(v105, v106);
    v107 = operator new[](v104, MEMORY[0x1E69E5398]);
    this[24] = v107;
    if (!v107)
    {
      return 4;
    }

    bzero(v107, v106);
    if ((v40 & 0x80000000) == 0)
    {
      v108 = 0;
      do
      {
        *(*&this[23] + v108) = 0;
        *(*&this[24] + v108) = 0;
        v108 += 8;
      }

      while (8 * v119 != v108);
    }

    v109 = operator new[](v104, MEMORY[0x1E69E5398]);
    this[25] = v109;
    if (!v109)
    {
      return 4;
    }

    bzero(v109, v106);
    if ((v40 & 0x80000000) == 0)
    {
      v110 = 0;
      v111 = MEMORY[0x1E69E5398];
      while (1)
      {
        v112 = this[13].i32[1];
        v113 = 4 * v112;
        v114 = v112 < 0 ? -1 : 4 * v112;
        *(*&this[25] + 8 * v110) = operator new[](v114, v111);
        v115 = *(*&this[25] + 8 * v110);
        if (!v115)
        {
          return 4;
        }

        bzero(v115, v113);
        v40 = this[18].i32[0];
        if (v110++ >= v40)
        {
          LODWORD(v41) = this[12].i32[1];
          v39 = this[13].i32[1];
          goto LABEL_86;
        }
      }
    }

    v39 = v95;
  }

LABEL_86:
  if (LPFilterBank::Initialize(&this[185], v40 + 1, v41, v39, this[14].i32[1], this[16].i32[0]))
  {
    return 4;
  }

  if (CmhBEAM2NOpt::initialize(&this[34], this[13].i32[0], this[13].i32[1], this[14].i32[1], this[18].i32[1], this[12].i32[1]))
  {
    return 4;
  }

  v42 = this[12].i32[1];
  Cns::deallocate_memory(&this[143]);
  this[146].i32[1] = v42;
  if (Cns::init(&this[143]))
  {
    return 4;
  }

  v43 = this[14].i32[1];
  Cns::deallocate_memory(&this[143]);
  this[145].i32[1] = v43;
  if (Cns::init(&this[143]))
  {
    return 4;
  }

  v44 = this[13].i32[0];
  Cns::deallocate_memory(&this[143]);
  *this[145].i32 = v44;
  if (Cns::init(&this[143]))
  {
    return 4;
  }

  v45 = this[13].i32[1];
  Cns::deallocate_memory(&this[143]);
  this[146].i32[0] = v45;
  if (Cns::init(&this[143]))
  {
    return 4;
  }

  CmhBEAMprocOpt::init_dc_block(&this[11]);
  *this = 2;
  this[1].i32[0] = a4;
  this[1].i32[1] = a2;
  this[2].i32[0] = 256;
  this[2].i32[1] = a3;
  this[3].i32[0] = 0;
  v46 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
  this[4] = v46;
  if (v46)
  {
    v47 = (8 * a4);
    v48 = operator new[](v47, MEMORY[0x1E69E5398]);
    this[5] = v48;
    if (v48)
    {
      v49 = operator new[](0x800uLL, MEMORY[0x1E69E5398]);
      this[10] = v49;
      if (v49)
      {
        v50 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
        this[7] = v50;
        if (v50)
        {
          *v50 = 0;
          v50[1] = 0;
          v51 = operator new[](v47, MEMORY[0x1E69E5398]);
          this[8] = v51;
          if (v51)
          {
            bzero(v51, v47);
            if (!this[15].i32[1])
            {
LABEL_112:
              result = 0;
              this[3].i32[1] = 0;
              return result;
            }

            v52 = 0;
            v53 = this[14].i32[1];
            if (v53 < 0)
            {
              v54 = -1;
            }

            else
            {
              v54 = 4 * v53;
            }

            v55 = 4 * v53;
            v56 = MEMORY[0x1E69E5398];
            while (1)
            {
              *(*&this[7] + 8 * v52) = operator new[](v54, v56);
              v57 = *(*&this[7] + 8 * v52);
              if (!v57)
              {
                break;
              }

              bzero(v57, v55);
              if (++v52 >= this->i32[0])
              {
                if (this[1].i32[0] < 1)
                {
LABEL_108:
                  if (this->i32[1] < 1)
                  {
                    goto LABEL_112;
                  }

                  v61 = 0;
                  v62 = MEMORY[0x1E69E5398];
                  while (1)
                  {
                    *(*&this[9] + 8 * v61) = operator new[](v54, v62);
                    v63 = *(*&this[9] + 8 * v61);
                    if (!v63)
                    {
                      break;
                    }

                    bzero(v63, v55);
                    if (++v61 >= this->i32[1])
                    {
                      goto LABEL_112;
                    }
                  }
                }

                else
                {
                  v58 = 0;
                  v59 = MEMORY[0x1E69E5398];
                  while (1)
                  {
                    *(*&this[8] + 8 * v58) = operator new[](v54, v59);
                    v60 = *(*&this[8] + 8 * v58);
                    if (!v60)
                    {
                      break;
                    }

                    bzero(v60, v55);
                    if (++v58 >= this[1].i32[0])
                    {
                      goto LABEL_108;
                    }
                  }
                }

                return 4294967294;
              }
            }
          }
        }
      }
    }
  }

  return 4294967294;
}

uint64_t CmhBEAM::deinterleave(uint64_t this, float **a2, float **a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = *(this + 16);
    v5 = v4;
    if (v4)
    {
      v6 = v4 * a4;
      v7 = *a2;
      v8 = *(this + 80);
      do
      {
        v9 = *v7++;
        *v8++ = v9;
        --v6;
      }

      while (v6);
    }

    v10 = 0;
    v11 = 4 * v4;
    v12 = a3;
    v13 = a4;
    do
    {
      *v12++ = (*a2 + v10);
      v10 += v11;
      --v13;
    }

    while (v13);
    v14 = 0;
    for (i = 0; i != a4; ++i)
    {
      if (v5 >= 1)
      {
        v16 = a3[i];
        v17 = (*(this + 80) + v14);
        v18 = v5;
        do
        {
          *v16++ = *v17;
          v17 += a4;
          --v18;
        }

        while (v18);
      }

      v14 += 4;
    }
  }

  return this;
}

float CmhBEAM::interleave(CmhBEAM *this, float **a2, float **a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v6 >= 1)
      {
        v7 = a2[v5];
        v8 = (*(this + 10) + v4);
        v9 = v6;
        do
        {
          v10 = *v7++;
          result = v10;
          *v8 = v10;
          v8 += a4;
          --v9;
        }

        while (v9);
      }

      ++v5;
      v4 += 4;
    }

    while (v5 != a4);
    if (v6)
    {
      v12 = v6 * a4;
      v13 = *(this + 10);
      v14 = *a3;
      do
      {
        v15 = *v13++;
        result = v15;
        *v14++ = v15;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

int16x4_t CmhBEAM::setParameter(CmhBEAM *this, int a2, CmhBEAM2NOpt *a3, int16x4_t result)
{
  switch(a2)
  {
    case 3:
      *(*(this + 137) + 44) = *a3;
      return result;
    case 4:
      v50 = *a3;
      *(this + 133) = *a3;
      goto LABEL_134;
    case 5:
      *(this + 162) = *a3;
      return result;
    case 6:
      if (*(this + 287) + *(this + 293) >= 1)
      {
        v59 = 0;
        v60 = *a3;
        v61 = *(this + 144);
        do
        {
          *(v61 + 4 * v59++) = v60;
        }

        while (v59 < *(this + 287) + *(this + 293));
      }

      return result;
    case 7:
      v63 = *a3;
      v64 = this + 1144;

      Cns::setMinGain(v64, v63);
      return result;
    case 11:
      v48 = this + 272;

      CmhBEAM2NOpt::setSpatialFilterReal(v48, a3);
      return result;
    case 12:
      v51 = this + 272;

      CmhBEAM2NOpt::setSpatialFilterImag(v51, a3);
      return result;
    case 15:
      v52 = (this + 272);
      v53 = a3;
      v54 = 0;
      goto LABEL_97;
    case 16:
      v23 = (this + 272);
      v24 = a3;
      v25 = 0;
      goto LABEL_102;
    case 17:
      v52 = (this + 272);
      v53 = a3;
      v54 = 1;
LABEL_97:

      CmhBEAM2NOpt::setModelSpatialFilterReal(v52, v53, v54);
      return result;
    case 18:
      v23 = (this + 272);
      v24 = a3;
      v25 = 1;
LABEL_102:

      CmhBEAM2NOpt::setModelSpatialFilterImag(v23, v24, v25);
      return result;
    case 19:
      v49 = (this + 88);

      *result.i32 = CmhBEAMprocOpt::setModelFreqCompVector(v49, a3);
      return result;
    case 20:
      v37 = (this + 272);

      CmhBEAM2NOpt::setModelOmniEQVector(v37, a3);
      return result;
    case 21:
      v18 = (this + 272);
      v19 = a3;
      v20 = 0;
      goto LABEL_78;
    case 22:
      v56 = (this + 272);
      v57 = a3;
      v58 = 0;
      goto LABEL_108;
    case 23:
      v18 = (this + 272);
      v19 = a3;
      v20 = 1;
LABEL_78:

      *result.i32 = CmhBEAM2NOpt::setModelFreqCompVector(v18, v19, v20);
      return result;
    case 24:
      v56 = (this + 272);
      v57 = a3;
      v58 = 1;
LABEL_108:

      CmhBEAM2NOpt::setModelOmniEQVector(v56, v57, v58);
      return result;
    case 34:
      v68 = *a3;
      *result.i32 = v68;
      CmhBEAM2NOpt::setParameter((this + 272), 29, &v68, result);
      return result;
    case 35:
      v14 = __exp10(*a3 * 0.1);
      *(this + 138) = v14;

      CmhBEAM2NOpt::calc_wng_beta_bound(this + 34, v14);
      return result;
    case 36:
      v38 = (this + 88);

      CmhBEAMprocOpt::setModelFreqEQVector(v38, a3);
      return result;
    case 37:
      v15 = (this + 272);
      v16 = a3;
      v17 = 0;
      goto LABEL_116;
    case 38:
      v15 = (this + 272);
      v16 = a3;
      v17 = 1;
LABEL_116:

      CmhBEAM2NOpt::setModelFreqEQVector(v15, v16, v17);
      return result;
    case 39:
      v35 = *a3;
      v36 = *(this + 85);
      *(v36 + 108) = *a3;
      if (*(this + 70) >= 2)
      {
        *(v36 + 244) = v35;
      }

      return result;
    case 42:
      result.i32[0] = *a3;
      v22 = *(this + 85);
      *(v22 + 112) = *a3;
      if (*(this + 70) >= 2)
      {
        *(v22 + 248) = result.i32[0];
      }

      return result;
    case 43:
      *(this + 139) = *a3;
      return result;
    case 44:
      result.i32[0] = *a3;
      *(this + 140) = *a3;
      return result;
    case 45:
      v66 = *a3;
      if (*a3 <= 1u)
      {
        *(this + 69) = v66;
      }

      *(this + 23) = v66;
      return result;
    case 46:
      v65 = this + 272;

      CmhBEAM2NOpt::setABFVector(v65, a3);
      return result;
    case 47:
      v26 = *(this + 74);
      if (v26 >= 1)
      {
        v27 = *(this + 70);
        if (v27 >= 1)
        {
          v27 = 1;
        }

        v28 = *(this + 85) + 136 * v27;
        v29 = *(v28 - 88);
        v30 = (*(v28 - 80) + 4);
        v31 = (v29 + 4);
        do
        {
          v32 = *a3;
          a3 = (a3 + 4);
          *result.i32 = v32;
          *v31++ = v32;
          *v30++ = v32;
          --v26;
        }

        while (v26);
      }

      return result;
    case 48:
      v41 = *(this + 74);
      if (v41 >= 1)
      {
        v42 = *(this + 70);
        if (v42 >= 2)
        {
          v42 = 2;
        }

        v43 = *(this + 85) + 136 * v42;
        v44 = *(v43 - 88);
        v45 = (*(v43 - 80) + 4);
        v46 = (v44 + 4);
        do
        {
          v47 = *a3;
          a3 = (a3 + 4);
          *result.i32 = v47;
          *v46++ = v47;
          *v45++ = v47;
          --v41;
        }

        while (v41);
      }

      return result;
    case 51:
      *(this + 52) = *a3;
      return result;
    case 65:
      result.i32[0] = *a3;
      *(this + 100) = *a3;
      return result;
    case 66:
      *(this + 128) = *a3;
      return result;
    case 67:
      *(this + 193) = *a3;
      goto LABEL_143;
    case 68:
      *(this + 133) = *a3;
      return result;
    case 69:
      v50 = *a3;
LABEL_134:
      *(this + 134) = v50;
      return result;
    case 70:
      v10 = *a3;
      v11 = *(this + 144);
      v12 = (*(this + 293) + *(this + 287) - 1) & ((*(this + 293) + *(this + 287) - 1) >> 31);
      goto LABEL_95;
    case 71:
      v10 = *a3;
      v11 = *(this + 144);
      v12 = *(this + 293) + *(this + 287) - 1;
      if (v12 >= 1)
      {
        v12 = 1;
      }

LABEL_95:
      *(v11 + 4 * v12) = v10;
      return result;
    case 72:
      v7 = *a3;
      v8 = this + 1144;
      v9 = 0;
      goto LABEL_12;
    case 73:
      v7 = *a3;
      v8 = this + 1144;
      v9 = 1;
LABEL_12:

      Cns::setMinGain(v8, v7, v9);
      return result;
    case 74:
      v33 = *a3;
      v34 = *(this + 70);
      if (v34 >= 1)
      {
        v34 = 1;
      }

      goto LABEL_68;
    case 75:
      v33 = *a3;
      v34 = *(this + 70);
      if (v34 >= 2)
      {
        v34 = 2;
      }

LABEL_68:
      *(*(this + 85) + 136 * v34 - 28) = v33;
      return result;
    case 76:
      result.i32[0] = *a3;
      v6 = *(this + 70);
      if (v6 >= 1)
      {
        v6 = 1;
      }

      goto LABEL_114;
    case 77:
      result.i32[0] = *a3;
      v6 = *(this + 70);
      if (v6 >= 2)
      {
        v6 = 2;
      }

LABEL_114:
      *(*(this + 85) + 136 * v6 - 24) = result.i32[0];
      return result;
    case 78:
      *result.i32 = (*a3 / *(this + 71)) * *(this + 72);
      *(this + 76) = *a3;
      v13 = *(this + 74) - 1;
      if (v13 >= *result.i32)
      {
        v13 = *result.i32;
      }

      *(this + 132) = v13;
      return result;
    case 81:
      v55 = *a3;
      *(this + 102) = *a3;
      *(this + 211) = v55;
      goto LABEL_143;
    case 82:
      v62 = __exp10((*a3 / -20.0));
      *(this + 158) = v62;

      CmhBEAM2NOpt::loadRVSSSuppressionLimits((this + 272));
      return result;
    case 83:
      *(this + 194) = *a3;
      goto LABEL_143;
    case 84:
      *(this + 195) = *a3;
      goto LABEL_143;
    case 85:
      *(this + 196) = *a3;
      goto LABEL_143;
    case 86:
      *(this + 197) = *a3;
      goto LABEL_143;
    case 87:
      *(this + 198) = *a3;
      goto LABEL_143;
    case 88:
      *(this + 199) = *a3;
      goto LABEL_143;
    case 89:
      *(this + 200) = *a3;
      goto LABEL_143;
    case 90:
      *(this + 201) = *a3;
      goto LABEL_143;
    case 91:
      *(this + 202) = *a3;
      goto LABEL_143;
    case 92:
      *(this + 203) = *a3;
      goto LABEL_143;
    case 93:
      *(this + 204) = *a3;
      goto LABEL_143;
    case 94:
      *(this + 205) = *a3;
      goto LABEL_143;
    case 95:
      *(this + 206) = *a3;
      goto LABEL_143;
    case 96:
      *(this + 207) = *a3;
      goto LABEL_143;
    case 97:
      *(this + 208) = *a3;
      goto LABEL_143;
    case 98:
      *(this + 209) = *a3;
      goto LABEL_143;
    case 99:
      *(this + 210) = *a3;
      goto LABEL_143;
    case 100:
      v21 = 0;
      do
      {
        *(this + v21 + 772) = *(a3 + v21);
        v21 += 4;
      }

      while (v21 != 76);
LABEL_143:
      v67 = (this + 736);

      return CmhMicCheck::init_check_mics(v67);
    case 101:
      v5 = *a3;
      *(this + 78) = *a3;
      goto LABEL_131;
    case 102:
      v5 = *a3;
LABEL_131:
      *(this + 262) = v5;
      break;
    case 103:
    case 106:
      result.i32[0] = *a3;
      *(this + 163) = *a3;
      break;
    case 104:
      v39 = *a3;
      *(this + 103) = *a3;
      v40 = ((v39 / *(this + 71)) * *(this + 72));
      if (*(this + 74) - 1 < v40)
      {
        v40 = *(this + 74) - 1;
      }

      *result.i32 = v40;
      *(this + 164) = v40;
      break;
    case 105:
      result.i32[0] = *a3;
      *(this + 165) = *a3;
      break;
    case 107:
      *(this + 104) = *a3;
      break;
    default:
      return result;
  }

  return result;
}

void ParametricProcessorV2Synthesiser::ParametricProcessorV2Synthesiser(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = xmmword_1DE09BE60;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (getParametricProcessorV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
  }

  v3 = getParametricProcessorV2Log(void)::gLog;
  if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315138;
    *&buf[1] = "ParametricProcessorV2Synthesiser";
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "[%s] Constructing", buf, 0xCu);
  }

  if (fabsf(cblas_sasum(*(a2 + 20), *(a2 + 80), 1) + -1.0) < 0.001)
  {
    operator new();
  }

  __assert_rtn("ParametricProcessorV2Synthesiser", "ParametricProcessorV2Synthesiser.cpp", 98, "std::abs(cblas_sasum(inConfig->numGridDirections, inConfig->gridWeights.data(), 1)-1.0f) < 0.001f");
}

void sub_1DDC5CCAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DDC5C1DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ParametricProcessorV2Synthesiser::Data>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 960);
    *(v2 + 960) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 936);
    if (v4)
    {
      *(v2 + 944) = v4;
      operator delete(v4);
    }

    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 848);
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 760);
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 672);
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 584);
    v5 = *(v2 + 560);
    if (v5)
    {
      *(v2 + 568) = v5;
      operator delete(v5);
    }

    std::unique_ptr<PPUtils::SubBandLatticeAllPassDecorrelator>::reset[abi:ne200100]((v2 + 552), 0);
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 464);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 408));
    v6 = *(v2 + 384);
    if (v6)
    {
      *(v2 + 392) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 360);
    if (v7)
    {
      *(v2 + 368) = v7;
      operator delete(v7);
    }

    std::unique_ptr<PPUtils::DirectionalTransformations>::reset[abi:ne200100]((v2 + 352), 0);
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 264);
    std::unique_ptr<PPUtils::MoorePenrosePseudoInverseReal>::reset[abi:ne200100]((v2 + 256), 0);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 200));
    v8 = *(v2 + 176);
    if (v8)
    {
      *(v2 + 184) = v8;
      operator delete(v8);
    }

    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 120));
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(v2 + 32);
    std::unique_ptr<PPUtils::AliasingRobustComplexValuedFilterbank>::reset[abi:ne200100]((v2 + 16), 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

int **std::unique_ptr<PPUtils::AliasingRobustComplexValuedFilterbank>::reset[abi:ne200100](int ***a1, int **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    PPUtils::AliasingRobustComplexValuedFilterbank::~AliasingRobustComplexValuedFilterbank(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void **std::unique_ptr<PPUtils::MoorePenrosePseudoInverseReal>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<PPUtils::MoorePenrosePseudoInverseReal::Data>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<PPUtils::DirectionalTransformations>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 42);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 35);
    v3 = v2[32];
    if (v3)
    {
      v2[33] = v3;
      operator delete(v3);
    }

    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 25);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 18);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 11);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 4);
    v4 = v2[1];
    v2[1] = 0;
    if (v4)
    {
      v5 = v4;
      std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](&v5);
      MEMORY[0x1E12BD160](v4, 0x20C40960023A9);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<PPUtils::SubBandLatticeAllPassDecorrelator>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 54);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 47);
    PPUtils::ContiguousArray3D<float>::~ContiguousArray3D((v2 + 36));
    PPUtils::ContiguousArray2D<std::vector<std::complex<float>>>::~ContiguousArray2D(v2 + 28);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 21);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v2 + 14);
    v3 = v2[11];
    if (v3)
    {
      v2[12] = v3;
      operator delete(v3);
    }

    v4 = v2[8];
    if (v4)
    {
      v2[9] = v4;
      operator delete(v4);
    }

    v5 = v2[5];
    if (v5)
    {
      v2[6] = v5;
      operator delete(v5);
    }

    v6 = v2[2];
    if (v6)
    {
      v2[3] = v6;
      operator delete(v6);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<std::byte>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::vector[abi:ne200100](void *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = *a3;
  v4 = (a1 + 3);
  if (a2)
  {
    v6 = std::pmr::polymorphic_allocator<std::complex<float>>::allocate[abi:ne200100](v4, a2);
    *a1 = v6;
    v7 = &v6[8 * a2];
    a1[2] = v7;
    bzero(v6, 8 * a2);
    a1[1] = v7;
  }

  return a1;
}

void std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v4 - *a1;
  v6 = v5 >> 3;
  if (a2 <= v5 >> 3)
  {
    if (a2 >= v6)
    {
      return;
    }

    v22 = &v3[8 * a2];
    goto LABEL_20;
  }

  v7 = a2 - v6;
  v8 = *(a1 + 16);
  if (v7 <= (v8 - v4) >> 3)
  {
    bzero(*(a1 + 8), 8 * v7);
    v22 = (v4 + 8 * v7);
LABEL_20:
    *(a1 + 8) = v22;
    return;
  }

  if (a2 >> 61)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v9 = v8 - v3;
  v10 = v9 >> 2;
  if (v9 >> 2 <= a2)
  {
    v10 = a2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v12 = std::pmr::polymorphic_allocator<std::complex<float>>::allocate[abi:ne200100](a1 + 24, v11);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = (v12 + v5);
  v16 = v12 + 8 * v11;
  bzero(v15, 8 * v7);
  v17 = &v15[v13 - v14];
  if (v13 != v14)
  {
    v18 = &v15[v13 - v14];
    do
    {
      v19 = *v13;
      v13 += 8;
      *v18 = v19;
      v18 += 8;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v17;
  *(a1 + 8) = &v15[8 * v7];
  v20 = *(a1 + 16);
  *(a1 + 16) = v16;
  if (v13)
  {
    v21 = *(a1 + 24);

    std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](v21, v13, (v20 - v13) >> 3);
  }
}

void *std::vector<float,std::pmr::polymorphic_allocator<float>>::vector[abi:ne200100](void *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = *a3;
  v4 = (a1 + 3);
  if (a2)
  {
    v6 = std::pmr::polymorphic_allocator<float>::allocate[abi:ne200100](v4, a2);
    *a1 = v6;
    v7 = &v6[4 * a2];
    a1[2] = v7;
    bzero(v6, 4 * a2);
    a1[1] = v7;
  }

  return a1;
}

uint64_t *std::vector<float,std::pmr::polymorphic_allocator<float>>::~vector[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    std::allocator_traits<std::pmr::polymorphic_allocator<float>>::deallocate[abi:ne200100](a1[3], v2, (a1[2] - v2) >> 2);
  }

  return a1;
}

uint64_t std::pmr::polymorphic_allocator<float>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(**a1 + 16);

  return v3();
}

uint64_t *std::vector<float,std::pmr::polymorphic_allocator<float>>::__destroy_vector::operator()[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    result[1] = v1;
    return std::allocator_traits<std::pmr::polymorphic_allocator<float>>::deallocate[abi:ne200100](result[3], v1, (result[2] - v1) >> 2);
  }

  return result;
}

uint64_t std::pmr::polymorphic_allocator<std::complex<float>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(**a1 + 16);

  return v3();
}

uint64_t *std::vector<std::complex<float>,std::pmr::polymorphic_allocator<std::complex<float>>>::__destroy_vector::operator()[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    result[1] = v1;
    return std::allocator_traits<std::pmr::polymorphic_allocator<std::complex<float>>>::deallocate[abi:ne200100](result[3], v1, (result[2] - v1) >> 3);
  }

  return result;
}

uint64_t *std::unique_ptr<ParametricProcessorV2Analyser::Data>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 408);
    if (v3)
    {
      *(v2 + 416) = v3;
      operator delete(v3);
    }

    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 352));
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 288));
    v4 = *(v2 + 264);
    if (v4)
    {
      *(v2 + 272) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 240);
    if (v5)
    {
      *(v2 + 248) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 216);
    if (v6)
    {
      *(v2 + 224) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 192);
    if (v7)
    {
      *(v2 + 200) = v7;
      operator delete(v7);
    }

    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 128));
    std::unique_ptr<PPUtils::IterativeGridScanningIndices>::reset[abi:ne200100]((v2 + 120), 0);
    std::unique_ptr<PPUtils::SphericalCoordinateTree>::reset[abi:ne200100]((v2 + 112), 0);
    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 56));
    v8 = *(v2 + 32);
    if (v8)
    {
      *(v2 + 40) = v8;
      operator delete(v8);
    }

    std::unique_ptr<PPUtils::AliasingRobustComplexValuedFilterbank>::reset[abi:ne200100]((v2 + 16), 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<PPUtils::IterativeGridScanningIndices>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4 = (v2 + 24);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void ParametricProcessorV2Analyser::ParametricProcessorV2Analyser(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0x467A000000000000;
  *(a1 + 16) = 1065353216;
  if (getParametricProcessorV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getParametricProcessorV2Log(void)::onceToken, &__block_literal_global_31029);
  }

  v1 = getParametricProcessorV2Log(void)::gLog;
  if (os_log_type_enabled(getParametricProcessorV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315138;
    *&buf[1] = "ParametricProcessorV2Analyser";
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "[%s] Constructing", buf, 0xCu);
  }

  operator new();
}

void sub_1DDC5E9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(&a35);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(&__p);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v36 - 176));
  std::unique_ptr<ParametricProcessorV2Analyser::Data>::reset[abi:ne200100](v35, 0);
  _Unwind_Resume(a1);
}

double InitValuesOnMusicCode(uint64_t a1)
{
  *a1 = 0x46BB800000000000;
  *(a1 + 8) = vdup_n_s32(0xBB8u);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0xC1F000003CA3D70ALL;
  memset_pattern16((a1 + 40), &unk_1DE09E810, 8uLL);
  *(a1 + 48) = 0x45BB8000C0200000;
  *(a1 + 56) = 1174011904;
  memset_pattern16((a1 + 60), &unk_1DE09E960, 0x28uLL);
  memset_pattern16((a1 + 220), &unk_1DE09E860, 0x28uLL);
  memset_pattern16((a1 + 260), &unk_1DE09E800, 0x28uLL);
  v2 = (a1 + 104);
  v3 = 10;
  do
  {
    *(v2 - 1) = 1140457472;
    *v2 = 0;
    v2 = (v2 + 12);
    --v3;
  }

  while (v3);
  *(a1 + 300) = 0;
  *(a1 + 304) = 0x30000000ALL;
  result = 0.0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 340) = 0u;
  return result;
}

void InitValuesOnPlist(uint64_t a1)
{
  *(a1 + 4) = 0;
  *(a1 + 536) = 0;
  *(a1 + 528) = 0xBB800000000;
  *(a1 + 8) = 1186693120;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 40) = -1041235968;
  memset_pattern16((a1 + 44), &unk_1DE09E810, 8uLL);
  *(a1 + 24) = xmmword_1DE09BEA0;
  *(a1 + 620) = 0;
  memset_pattern16((a1 + 52), &unk_1DE09E860, 0x28uLL);
  v2 = 10;
  v3 = a1;
  do
  {
    v3[23] = 1130954752;
    v3[135] = 0;
    v3[145] = 0;
    ++v3;
    --v2;
  }

  while (v2);
  *(a1 + 524) = 0;
  *(a1 + 520) = 0;
}

void BandPassFFT(float *__C, float *a2, _BYTE *a3, unsigned int a4, vDSP_Length __N, unsigned int a6)
{
  *a3 = 0;
  if (__N - 1 < a6 - 1)
  {
    v11 = __N;
    vDSP_vclr(__C, 1, __N);
    vDSP_vclr(a2, 1, v11);
    *a3 = 1;
  }

  if (a4)
  {
    v12 = a6 >= a4;
    v13 = a6 - a4;
    if (v13 != 0 && v12)
    {
      vDSP_vclr(&__C[a4], 1, v13);
      vDSP_vclr(&a2[a4], 1, v13);
      *a3 = 1;
    }
  }
}

uint64_t ConvertBitstreamToSymbolStream(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  if (a5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = 0;
      v9 = *(a3 + 4 * v6);
      if (v7 < a6 && v9)
      {
        v8 = 0;
        v10 = *(a3 + 4 * v6);
        v11 = v7;
        do
        {
          v8 = (*(a2 + v11) != 48) | (2 * v8);
          if (v11 < a6)
          {
            ++v11;
          }

          --v10;
        }

        while (v10);
      }

      if (v8 >= *(a4 + 4 * v6) - 1)
      {
        v8 = *(a4 + 4 * v6) - 1;
      }

      v7 += v9;
      if (v7 >= a6)
      {
        v7 = a6;
      }

      *(result + 4 * v6++) = v8;
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t ConvertSymbolStreamToBitStream(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a3 + 4 * v5);
      if (v7)
      {
        v8 = *(a2 + 4 * v5);
        v9 = 1 << (v7 - 1);
        do
        {
          if (v6 < a5)
          {
            if ((v9 & v8) != 0)
            {
              v10 = 49;
            }

            else
            {
              v10 = 48;
            }

            *(result + v6) = v10;
            v9 >>= 1;
            ++v6;
          }

          --v7;
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 != a4);
  }

  return result;
}

uint64_t GenerateNextCode(float *a1, float *a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v24 = *(a5 + 8);
  v10 = v24;
  v11 = 1;
  vDSP_vclr(a1, 1, v24);
  if ((a3 & 1) == 0)
  {
    v11 = *(a5 + 28) == 0;
  }

  v12 = *(a5 + 308);
  if (v12)
  {
    v13 = *(a5 + 4 * a4 + 60) * a3;
    v14 = 12 * a4 + 100;
    v15 = 41;
    do
    {
      v16 = *(a5 + 52);
      v17 = *(a5 + 56);
      v18 = v13 + (*(a5 + v14) + v16);
      __C = v18;
      if (v18 > v17)
      {
        v18 = v16 + (v18 - v17);
        __C = v18;
      }

      if (v18 >= v16)
      {
        v22 = powf(v18 - v16, *(a5 + 48));
        MEMORY[0x1E12BE940](*(a5 + 312), 1, &__C, a2, 1, v24);
        v19 = *(a5 + 320);
        if (v11)
        {
          MEMORY[0x1E12BE5D0](a2, 1, v19, 1, a2, 1, v24);
        }

        else
        {
          MEMORY[0x1E12BE9A0](a2, 1, v19, 1, a2, 1, v24);
        }

        vvsinf(a2, a2, &v24);
        MEMORY[0x1E12BE940](a2, 1, &v22, a2, 1, v24);
        MEMORY[0x1E12BE7F0](a2, 1, *(a5 + 8 * v15), 1, a2, 1, v24);
        MEMORY[0x1E12BE5D0](a2, 1, a1, 1, a1, 1, v24);
        v12 = *(a5 + 308);
      }

      v20 = v15 - 40;
      ++v15;
      v14 += 4;
    }

    while (v20 < v12);
    v10 = v24;
  }

  __C = 0.0;
  vDSP_svesq(a1, 1, &__C, v10);
  __C = *(a5 + 352) / sqrtf((__C / v24) + 1.0e-20);
  return MEMORY[0x1E12BE940](a1, 1, &__C, a1, 1);
}

void InitializePasscodeShape(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a1;
  v6 = 6.2832;
  v7 = *(a1 + 8);
  v8 = *(a1 + 320);
  if (v7)
  {
    a2.n128_f32[0] = 1.0 / *(v5 + 4);
    a3.n128_f32[0] = a2.n128_f32[0] * 6.2832;
    v9 = *(v5 + 312);
    a4.n128_u64[0] = 0;
    v10 = v8;
    v11 = v7;
    a5.n128_u64[0] = 0;
    do
    {
      *v10++ = a4.n128_u32[0];
      *v9++ = a5.n128_u32[0];
      a4.n128_f32[0] = a2.n128_f32[0] + a4.n128_f32[0];
      a5.n128_f32[0] = a3.n128_f32[0] + a5.n128_f32[0];
      --v11;
    }

    while (v11);
  }

  MEMORY[0x1E12BE990](v8, 1, v8, 1, a2, a3, a4, a5);
  v42 = *(v5 + 24) * 6.2832;
  MEMORY[0x1E12BE940](*(v5 + 320), 1, &v42, *(v5 + 320), 1, *(v5 + 8));
  v12 = *(v5 + 308);
  if (v12)
  {
    v13 = 0;
    v14 = v5 + 36;
    v15 = v5 + 328;
    v16 = *(v5 + 20);
    v17 = *(v5 + 8);
    if (v17 - 2 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = (v17 - 2);
    }

    v41 = v18;
    v39 = *(v5 + 308);
    v40 = v5;
    v37 = v5 + 328;
    v38 = v5 + 36;
    while (1)
    {
      v19 = expf(*(v14 + 4 * v13) / *(v5 + 4));
      v20 = *(v15 + 8 * v13);
      v21 = fminf(*(v5 + 32), 0.999);
      if (v21 <= 0.001)
      {
        v21 = 0.001;
      }

      v22 = vcvtas_u32_f32(v21 * v17);
      if ((v17 - v18) >> 1 < v22)
      {
        v22 = (v17 - v18) >> 1;
      }

      v23 = v22 <= 1 ? 1 : v22;
      if (v17 >= 2)
      {
        break;
      }

      if (v17 == 1)
      {
        *v20 = 1.0;
LABEL_31:
        v35 = 1.0;
        v36 = v17;
        do
        {
          *v20 = v35 * *v20;
          ++v20;
          v35 = v35 * v19;
          --v36;
        }

        while (v36);
      }

      if (++v13 == v12)
      {
        return;
      }
    }

    if (v18)
    {
      bzero(*(v15 + 8 * v13), v41 * 4);
    }

    v24 = v6;
    v25 = v6 / (2 * v23);
    v26 = v23 + v18;
    if (v23 + v18 > v18)
    {
      v27 = v18 - v26;
      v28 = &v20[v41];
      v29 = 3.1416;
      do
      {
        *v28++ = (cosf(v29) + 1.0) * 0.5;
        v29 = v25 + v29;
      }

      while (!__CFADD__(v27++, 1));
    }

    v31 = v17 - v23;
    if (v26 < v17 - v23)
    {
      memset_pattern16(&v20[v26], &unk_1DE095DF0, 4 * (v17 + ~v18 - 2 * v23) + 4);
    }

    if (v17 >= v23)
    {
      v32 = v17 - v31;
      v33 = 0.0;
      v34 = &v20[v31];
      do
      {
        *v34++ = (cosf(v33) + 1.0) * 0.5;
        v33 = v25 + v33;
        --v32;
      }

      while (v32);
    }

    v12 = v39;
    v5 = v40;
    v6 = v24;
    v15 = v37;
    v14 = v38;
    goto LABEL_31;
  }
}

void InitializePasscode(uint64_t a1, int a2, int a3, char a4, float a5, float a6)
{
  v9 = 0;
  *(a1 + 4) = a5;
  *(a1 + 352) = a6;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 32) = xmmword_1DE09BEB0;
  *(a1 + 48) = 0x45BB8000C0200000;
  *(a1 + 56) = 1174011904;
  *(a1 + 304) = 10;
  do
  {
    *(a1 + 220 + 4 * v9++) = 2;
    v10 = *(a1 + 304);
  }

  while (v9 < v10);
  if (v10 <= 9)
  {
    bzero((a1 + 4 * v10 + 220), (40 - 4 * v10));
  }

  v11 = (a1 + 260);
  v12 = 10;
  do
  {
    v13 = *(v11 - 10) - 1;
    if (v13 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = dword_1DE0A068C[v13];
    }

    *v11++ = v14;
    --v12;
  }

  while (v12);
  v15 = *(a1 + 304);
  if (!v15 || (memset_pattern16((a1 + 60), &unk_1DE09E960, 4 * v15), v15 <= 9))
  {
    bzero((a1 + 4 * v15 + 60), (36 - 4 * v15) + 4);
  }

  v16 = *(a1 + 308);
  *(a1 + 300) = (v16 + 2) * a2;
  if ((a4 & 1) == 0)
  {
    *(a1 + 304) = 10;
    *(a1 + 100) = xmmword_1DE09BEC0;
    *(a1 + 116) = xmmword_1DE09BED0;
    *(a1 + 132) = xmmword_1DE09BEE0;
    *(a1 + 148) = 0x4484200044300000;
    *(a1 + 156) = 1155989504;
    v17 = (a1 + 160);
    for (i = 5; i != 10; ++i)
    {
      v19 = v17;
      v20 = v16;
      if (v16)
      {
        do
        {
          *v19 = *(v19 - 15);
          ++v19;
          --v20;
        }

        while (v20);
      }

      v17 += 3;
    }

    v21 = 0;
    v22 = a1 + 4 * v16 + 100;
    do
    {
      if (v16 <= 2)
      {
        bzero((v22 + v21), 4 * (2 - v16) + 4);
      }

      v21 += 12;
    }

    while (v21 != 120);
  }
}

void CopyInputCircBufferToBuffer(float *__dst, char *a2, int a3, unsigned int a4, unsigned int a5)
{
  v8 = __dst;
  if (a4 >= a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a4;
  }

  v10 = v9 + a3 - a5;
  if (v9 + a3 <= a5)
  {
    v12 = &a2[4 * a3];
    v11 = 4 * v9;
  }

  else
  {
    memcpy(__dst, &a2[4 * a3], 4 * (a5 - a3));
    v11 = 4 * v10;
    __dst = &v8[v9 - v10];
    v12 = a2;
  }

  memcpy(__dst, v12, v11);
  if (a5 < a4)
  {

    vDSP_vclr(&v8[v9], 1, a4 - v9);
  }
}

void BandPassEnergyFFT(float *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a5 - 1 >= a6 - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a5;
  }

  if (v7 > a4 || a4 >= a6 || a4 == 0)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  __C = 0;
  v11 = 0.0;
  v12 = v10 - v7;
  if (v10 > v7)
  {
    vDSP_svesq((a2 + 4 * v7), 1, &__C, v10 - v7);
    vDSP_svesq((a3 + 4 * v7), 1, &__C + 1, v12);
    v11 = *&__C + *(&__C + 1);
  }

  *a1 = v11;
}

void BandPass_zvmul(void *a1, void *a2, float **a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a5 - 1 >= a6 - 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  if (a4)
  {
    v10 = a6 > a4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v9 <= a4;
  v13 = v11 & v12;
  if ((v11 & v12) != 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = a6;
  }

  if (v14 != v9)
  {
    v15 = (a1[1] + 4 * v9);
    __A.realp = (*a1 + 4 * v9);
    __A.imagp = v15;
    v16 = (a2[1] + 4 * v9);
    __B.realp = (*a2 + 4 * v9);
    __B.imagp = v16;
    v17 = &a3[1][v9];
    v19.realp = &(*a3)[v9];
    v19.imagp = v17;
    vDSP_zvmul(&__A, 1, &__B, 1, &v19, 1, v14 - v9, -1);
  }

  if (v9)
  {
    vDSP_vclr(*a3, 1, v9);
    vDSP_vclr(a3[1], 1, v9);
  }

  if (v13)
  {
    v18 = a6 - a4;
    vDSP_vclr(&(*a3)[a4], 1, v18);
    vDSP_vclr(&a3[1][a4], 1, v18);
  }
}

void ShiftedMatchedFilterSearch_FreqLim(float *a1, _DWORD *a2, float *a3, _DWORD *a4, char a5, DSPComplex *__C, DSPComplex *a7, DSPComplex *a8, DSPSplitComplex *a9, DSPSplitComplex *a10, MultiRadixRealFFT *a11, float *a12, unsigned int a13)
{
  v15 = *(a12 + 4);
  v47 = *(a12 + 5);
  __N = *(a12 + 7);
  v16 = __N >> 1;
  v17 = *(a12 + 3);
  if (v15 - 1 >= (__N >> 1) - 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v19 = v18 > v17 || v17 >= v16;
  if (v19 || v17 == 0)
  {
    v21 = __N >> 1;
  }

  else
  {
    v21 = *(a12 + 3);
  }

  v22 = *a12;
  v23 = a12[1];
  MultiRadixRealFFT::RealOutOfPlaceForwardTransform(a11, __C, a9, 1.0);
  if ((a5 & 1) == 0)
  {
    MultiRadixRealFFT::RealOutOfPlaceForwardTransform(a11, a7, a10, 1.0);
  }

  v24 = __N;
  *v59 = 0;
  BandPassFFT(a9->realp, a9->imagp, &v59[1], v21, v18, v16);
  BandPassFFT(a10->realp, a10->imagp, v59, v21, v18, v16);
  __Ca = 0.0;
  if ((LODWORD(v22) | 2) == 3)
  {
    LODWORD(__I) = 0;
    if (v59[1] == 1)
    {
      v25 = v21;
      v26 = v18;
    }

    else
    {
      v25 = __N >> 1;
      v26 = 0;
    }

    BandPassEnergyFFT(&__I, a9->realp, a9->imagp, v25, v26, v16);
    v27 = *&__I != 0.0;
    if (*&__I == 0.0)
    {
      v28 = 1.0e-10;
    }

    else
    {
      v28 = sqrtf((v23 * ((2.0 / v24) * *&__I)) + 1.0e-20);
    }

    __Ca = v28;
  }

  else
  {
    v27 = 1;
  }

  v29 = 0.0;
  if ((LODWORD(v22) & 0xFFFFFFFE) == 2)
  {
    LODWORD(__I) = 0;
    if (v59[0] == 1)
    {
      v30 = v21;
      v31 = v18;
    }

    else
    {
      v30 = __N >> 1;
      v31 = 0;
    }

    BandPassEnergyFFT(&__I, a10->realp, a10->imagp, v30, v31, v16);
    if (*&__I == 0.0)
    {
      v27 = 0;
      v29 = 1.0e-10;
    }

    else
    {
      v32 = ((2.0 / v24) * *&__I) + 1.0e-20;
      v29 = sqrtf(v32);
    }
  }

  BandPass_zvmul(a10, a9, &a9->realp, v21, v18, v16);
  MultiRadixRealFFT::RealOutOfPlaceInverseTransform(a11, a9, a8);
  if (LODWORD(v22) != 4)
  {
LABEL_35:
    v33 = 0;
    __I = 0;
    v56 = 0.0;
    v55 = 0;
    v54 = 0.0;
    v36 = v47 - a13;
    v37 = !v27;
    v34 = 0.0;
    if (v47 <= a13)
    {
      v37 = 1;
    }

    v38 = 0.0;
    v39 = 0.0;
    if ((v37 & 1) == 0)
    {
      v40 = *(a12 + 6);
      v41 = v47 - v40;
      if (v47 < v40)
      {
        vDSP_maxvi(a8 + a13, 1, &v56, &__I, v36);
        v33 = __I + a13;
        v55 = __I + a13;
        v38 = v56;
LABEL_45:
        v43 = v38;
        goto LABEL_47;
      }

      v19 = v40 >= a13;
      v42 = v40 - a13;
      if (v42 != 0 && v19)
      {
        vDSP_maxvi(a8 + a13, 1, &v54, &v55, v42);
        v55 += a13;
        vDSP_maxvi(a8 + *(a12 + 6), 1, &v56, &__I, v41);
        v33 = __I + *(a12 + 6);
        v38 = v54;
      }

      else
      {
        vDSP_maxvi(a8 + a13, 1, &v56, &__I, v36);
        v33 = __I + a13;
        v38 = 0.0;
      }

      v39 = v56;
      if (v38 > v56)
      {
        v33 = v55;
        goto LABEL_45;
      }
    }

    v43 = v38;
    v38 = v39;
    v35 = 0.0;
    if (!v27)
    {
      goto LABEL_56;
    }

LABEL_47:
    if (LODWORD(v22) != 3)
    {
      if (LODWORD(v22) == 2)
      {
        v45 = v29 * v24;
      }

      else
      {
        if (LODWORD(v22) == 1)
        {
          v44 = __Ca;
LABEL_53:
          v45 = v44 * v24;
          goto LABEL_54;
        }

        v46 = 1.0;
        if (LODWORD(v22) != 4)
        {
          goto LABEL_55;
        }

        v45 = __Ca;
      }

LABEL_54:
      v46 = 1.0 / v45;
LABEL_55:
      v34 = v46 * v38;
      v35 = v46 * v43;
      goto LABEL_56;
    }

    v44 = v29 * __Ca;
    goto LABEL_53;
  }

  vDSP_svesq(a8, 1, &__Ca, __N);
  if (__Ca != 0.0)
  {
    __Ca = sqrtf((__Ca / v24) + 0.001);
    goto LABEL_35;
  }

  v33 = 0;
  v55 = 0;
  v34 = 0.0;
  v35 = 0.0;
LABEL_56:
  *a1 = v34;
  *a3 = v35;
  *a2 = v33;
  *a4 = v55;
}

void ShiftedMatchedFilterSearch_TimeLim(float *a1, _DWORD *a2, char a3, DSPComplex *__C, DSPComplex *a5, DSPSplitComplex *a6, DSPSplitComplex *a7, MultiRadixRealFFT *this, int *a9)
{
  v13 = a9[4];
  v14 = a9[5];
  v15 = a9[7];
  v16 = a9[8];
  v17 = a9[3];
  if (v13 - 1 >= (v15 >> 1) - 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  if (v18 > v17 || v17 >= v15 >> 1 || v17 == 0)
  {
    v21 = v15 >> 1;
  }

  else
  {
    v21 = a9[3];
  }

  v70 = *a9;
  MultiRadixRealFFT::RealOutOfPlaceForwardTransform(this, __C, a6, 1.0);
  if ((a3 & 1) == 0)
  {
    MultiRadixRealFFT::RealOutOfPlaceForwardTransform(this, a5, a7, 1.0);
  }

  v77 = 0;
  BandPassFFT(a6->realp, a6->imagp, v78, v21, v18, v15 >> 1);
  BandPassFFT(a7->realp, a7->imagp, &v77, v21, v18, v15 >> 1);
  v76 = 0.0;
  v23 = v70 != 1 && v70 != 3;
  v69 = v23;
  if ((v70 | 2) == 3)
  {
    MEMORY[0x1E12BE990](__C, 1, __C, 1, v15);
  }

  v24 = v15;
  v25 = 0.0;
  if ((v70 & 0xFFFFFFFE) == 2)
  {
    if (v77 == 1)
    {
      v26 = v21;
      v27 = v18;
    }

    else
    {
      v26 = v15 >> 1;
      v27 = 0;
    }

    BandPassEnergyFFT(&v76, a7->realp, a7->imagp, v26, v27, v15 >> 1);
    v28 = 2.0 / v24 * v76;
    v29 = v28 + 1.0e-20;
    v25 = sqrtf(v29);
  }

  BandPass_zvmul(a7, a6, &a6->realp, v21, v18, v15 >> 1);
  MultiRadixRealFFT::RealOutOfPlaceInverseTransform(this, a6, a5);
  __Ca = 0.0;
  if (v70 == 4)
  {
    vDSP_svesq(a5, 1, &__Ca, v15);
    __Ca = sqrtf((__Ca / v24) + 0.001);
  }

  v30 = v16 - 120;
  if (v16 - 120 >= v15 - 120)
  {
    v30 = v15 - 120;
  }

  v73 = 0.0;
  v74 = 0.0;
  if (v16 > 0x78 && v15 > 0x78)
  {
    v32 = v30;
  }

  else
  {
    v32 = 1;
  }

  v33 = v32;
  vDSP_sve(__C, 1, &v73, v32);
  if (v14)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = v16;
    v38 = 120;
    v39 = v15;
    v66 = v16;
    real = 0.0;
    v41 = v33;
    while (1)
    {
      if (v15 >= v16)
      {
        v42 = v16;
      }

      else
      {
        v42 = v15;
      }

      if (v14 >= v38)
      {
        v43 = v38;
      }

      else
      {
        v43 = v14;
      }

      v44 = v43 + v34;
      if ((v70 | 2) != 3)
      {
        goto LABEL_64;
      }

      v45 = v36;
      v46 = v14;
      v47 = v15;
      v15 = v66 + v35 >= v15 ? v15 : v66 + v35;
      __Ca = 0.0;
      if (v15 > v41)
      {
        __N = v43 + v34;
        if (v15 >= v41)
        {
          v48 = (v15 - v41);
        }

        else
        {
          v48 = 0;
        }

        vDSP_sve(__C + v41, 1, &__Ca, v48);
        v49 = __Ca;
        v50 = fmaxf((v73 + __Ca) - v74, 0.0);
        v73 = v50;
        if (v15 > v35 && __Ca > 0.0)
        {
          v51 = v42 + v34;
          if ((v42 + v34) <= 1)
          {
            v51 = 1;
          }

          if (v51 < v66)
          {
            v50 = (v50 * v37) / v51;
          }

          v52 = v50 + 1.0e-20;
          v49 = 1.0 / sqrtf(v52);
          __Ca = v49;
        }

        if (v49 != 0.0)
        {
          break;
        }
      }

      v53 = 0;
      __I = 0;
      v71 = 0.0;
      v54 = 0.0;
      v41 = v15;
      v15 = v47;
      v14 = v46;
      v36 = v45;
LABEL_67:
      v56 = v35 + 120;
      v57 = v53 + v35;
      if (real < v54)
      {
        real = v54;
        v36 = v57;
      }

      v58 = v69;
      if (v56 >= v14)
      {
        v58 = 1;
      }

      if ((v58 & 1) == 0)
      {
        if (v39 >= 0x78)
        {
          v59 = 120;
        }

        else
        {
          v59 = v39;
        }

        v60 = v41;
        vDSP_sve(&__C[v35 / 2], 1, &v74, v59);
        v41 = v60;
      }

      v16 += 120;
      v34 -= 120;
      v39 -= 120;
      v38 += 120;
      v35 += 120;
      if (v56 >= v14)
      {
        goto LABEL_79;
      }
    }

    MEMORY[0x1E12BE940](&a5[v35 / 2], 1, &__Ca, &a5[v35 / 2], 1, __N);
    v44 = __N;
    v41 = v15;
    v15 = v47;
    v14 = v46;
    v36 = v45;
LABEL_64:
    v55 = v41;
    if (!v35)
    {
      v36 = 0;
      real = a5->real;
    }

    __I = 0;
    v71 = 0.0;
    vDSP_maxvi(&a5[v35 / 2], 1, &v71, &__I, v44);
    v54 = v71;
    v53 = __I;
    v41 = v55;
    goto LABEL_67;
  }

  v36 = 0;
  real = 0.0;
LABEL_79:
  v61 = real / (v25 * v24);
  if (v70 == 3)
  {
    v62 = real / (v25 * v24);
  }

  else
  {
    v62 = real;
  }

  if (v70 != 2)
  {
    v61 = v62;
  }

  if (v70 == 1)
  {
    v61 = real / v24;
  }

  *a1 = v61;
  *a2 = v36;
}

const UInt8 *ReadVectorFromDictionary(const __CFDictionary *a1, CFDictionaryRef theDict, const __CFString *a3, const void *a4)
{
  v4 = a3;
  Value = CFDictionaryGetValue(theDict, a4);
  v7 = CFDataGetLength(Value) >> 2;
  if (v7 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  std::vector<float>::vector[abi:ne200100](a1, v4);
  result = CFDataGetBytePtr(Value);
  if (v8)
  {
    v10 = *a1;
    do
    {
      v11 = *result;
      result += 4;
      *v10++ = bswap32(v11);
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_1DDC60168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SetBits(int *a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"NumOfBits");
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v5 = valuePtr;
  if (valuePtr >= 0x14)
  {
    v5 = 20;
  }

  valuePtr = v5;
  *a1 = v5;
  std::string::basic_string[abi:ne200100]<0>(v18, "BitValues");
  if (v19 >= 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v18[0];
  }

  v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
  v8 = CFDictionaryGetValue(theDict, v7);
  if (!v8)
  {
    CFRelease(v7);
    v15 = 4294900555;
    goto LABEL_18;
  }

  CFRelease(v7);
  ReadVectorFromDictionary(__p, v8, valuePtr, @"Values");
  v9 = valuePtr;
  v10 = __p[0];
  if (valuePtr)
  {
    v11 = (a1 + 1);
    v12 = __p[0];
    do
    {
      v13 = *v12++;
      if (v13 == 0.0)
      {
        v14 = 48;
      }

      else
      {
        v14 = 49;
      }

      *v11++ = v14;
      --v9;
    }

    while (v9);
    goto LABEL_16;
  }

  if (__p[0])
  {
LABEL_16:
    __p[1] = v10;
    operator delete(v10);
  }

  v15 = 0;
LABEL_18:
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return v15;
}

void sub_1DDC602CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CopyToPulse32(void *a1, unsigned int a2, const float *__A, unsigned int a4)
{
  if (a2)
  {
    if (a2 >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a2;
    }

    __C = 0.0;
    vDSP_svesq(__A, 1, &__C, v8);
    v9 = __C + 1.0e-20;
    __C = 1.0 / sqrtf(v9);
    MEMORY[0x1E12BE940](__A, 1, &__C, __A, 1, v8);
    memcpy(a1, __A, 4 * v8);
    if (a4 < a2)
    {
      vDSP_vclr(a1 + v8, 1, a2 - v8);
    }
  }
}

void CopyInputToPulseTimeOrFFT(uint64_t a1, float *__A, unsigned int a3, DSPComplex *__dst, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 424);
  if (*(a1 + 1632))
  {
    if (v10)
    {
      if (v10 >= a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = v10;
      }

      memcpy(__dst, __A, 4 * v14);
      if (v10 > a3)
      {
        vDSP_vclr(__dst + v14, 1, v10 - v14);
      }

      __C = 0.0;
      vDSP_svesq(__dst, 1, &__C, v14);
      v15 = __C + 1.0e-20;
      __C = 1.0 / sqrtf(v15);
      MEMORY[0x1E12BE940](__dst, 1, &__C, __dst, 1, v14);
      v16 = *(a1 + 424);
    }

    else
    {
      v16 = 0;
    }

    vDSP_vclr(__dst + v16, 1, *(a1 + 528) - v16);
    v21 = *(a7 + 16);
    v22 = (4 * (*(a7 + 12) + ~v21));
    v24 = *a6;
    v23 = *(a6 + 8);
    MultiRadixRealFFT::RealOutOfPlaceForwardTransform((a1 + 1768), __dst, (a1 + 240), 1.0);
    memcpy(v24, (*(a1 + 240) + 4 * v21), v22);
    v25 = (*(a1 + 248) + 4 * v21);

    memcpy(v23, v25, v22);
  }

  else if (v10)
  {
    v18 = *(a1 + 216);
    v19 = v10 >= a3 ? a3 : v10;
    v26 = 0.0;
    vDSP_svesq(__A, 1, &v26, v19);
    v20 = v26 + 1.0e-20;
    v26 = 1.0 / sqrtf(v20);
    MEMORY[0x1E12BE940](__A, 1, &v26, v18, 1, v19);
    memcpy(a5, v18, 4 * v19);
    if (v10 > a3)
    {
      vDSP_vclr(a5 + v19, 1, v10 - v19);
    }
  }
}

uint64_t StoreMusicCodeTuningInPlist(uint64_t a1, CFDictionaryRef theDict)
{
  v4 = 4294900555;
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"PlistType");
  if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    return v4;
  }

  v6 = valuePtr;
  *(a1 + 4) = valuePtr;
  *a1 = v6 != 1;
  v114 = 0;
  v7 = CFDictionaryGetValue(theDict, @"FsOfSyncCode");
  if (!CFNumberGetValue(v7, kCFNumberIntType, &v114))
  {
    return v4;
  }

  v113 = 0;
  v112 = 0;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  if (*a1 == 1)
  {
    v8 = CFDictionaryGetValue(theDict, @"Gamma");
    if (!CFNumberGetValue(v8, kCFNumberFloatType, &v113))
    {
      return v4;
    }

    v9 = CFDictionaryGetValue(theDict, @"DelayStartBitsMsec");
    if (!CFNumberGetValue(v9, kCFNumberFloatType, &v112))
    {
      return v4;
    }

    v10 = CFDictionaryGetValue(theDict, @"ChirpHzPerSec");
    if (!CFNumberGetValue(v10, kCFNumberFloatType, &v111 + 4))
    {
      return v4;
    }

    v11 = CFDictionaryGetValue(theDict, @"EnablePolaritySwitch");
    if (!CFNumberGetValue(v11, kCFNumberIntType, &v111))
    {
      return v4;
    }

    v12 = CFDictionaryGetValue(theDict, @"RampUp");
    if (!CFNumberGetValue(v12, kCFNumberFloatType, &v110 + 4))
    {
      return v4;
    }

    v13 = CFDictionaryGetValue(theDict, @"Fshift");
    if (!CFNumberGetValue(v13, kCFNumberFloatType, &v110))
    {
      return v4;
    }

    v14 = CFDictionaryGetValue(theDict, @"Fmax");
    if (!CFNumberGetValue(v14, kCFNumberFloatType, &v109))
    {
      return v4;
    }
  }

  v108 = 0;
  v15 = CFDictionaryGetValue(theDict, @"NumSyncPulses");
  if (!CFNumberGetValue(v15, kCFNumberIntType, &v108))
  {
    return v4;
  }

  v16 = v108;
  if (v108 >= 3)
  {
    v16 = 3;
  }

  v107 = 0;
  v108 = v16;
  v17 = CFDictionaryGetValue(theDict, @"nPulseSamples");
  if (!CFNumberGetValue(v17, kCFNumberIntType, &v107))
  {
    return v4;
  }

  v106 = 0;
  v18 = CFDictionaryGetValue(theDict, @"NumAuxPulses");
  if (!CFNumberGetValue(v18, kCFNumberIntType, &v106))
  {
    return v4;
  }

  v19 = v106;
  if (v106 >= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v106;
  }

  v106 = v20;
  *(a1 + 536) = v20;
  *(a1 + 1) = v19 != 0;
  if (!v108)
  {
LABEL_37:
    if (v20)
    {
      v29 = 0;
      v30 = (a1 + 208);
      v31 = (a1 + 523);
      do
      {
        std::to_string(&v103, v29);
        v32 = std::string::insert(&v103, 0, "AuxPulse", 8uLL);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v105 = v32->__r_.__value_.__r.__words[2];
        *__p = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        v34 = v105 >= 0 ? __p : __p[0];
        v35 = CFStringCreateWithCString(0, v34, 0x8000100u);
        v36 = CFDictionaryGetValue(theDict, v35);
        if (v36)
        {
          CFRelease(v35);
          ReadVectorFromDictionary(&v103, v36, v107, @"Values");
          if (v30 != &v103)
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v30, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_, (v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]) >> 2);
          }

          *v31 = 1;
          if (v103.__r_.__value_.__r.__words[0])
          {
            v103.__r_.__value_.__l.__size_ = v103.__r_.__value_.__r.__words[0];
            operator delete(v103.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          CFRelease(v35);
          *v31 = 0;
        }

        if (SHIBYTE(v105) < 0)
        {
          operator delete(__p[0]);
        }

        if (!v36)
        {
          return v4;
        }

        ++v29;
        ++v31;
        ++v30;
      }

      while (v29 < v106);
    }

    v102 = 0;
    if (*a1 != 1)
    {
LABEL_122:
      if (*(a1 + 1) != 1)
      {
        goto LABEL_157;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "AuxUsedInInt");
      if (v105 >= 0)
      {
        v74 = __p;
      }

      else
      {
        v74 = __p[0];
      }

      v75 = CFStringCreateWithCString(0, v74, 0x8000100u);
      v76 = CFDictionaryGetValue(theDict, v75);
      if (!v76)
      {
        CFRelease(v75);
        goto LABEL_137;
      }

      CFRelease(v75);
      ReadVectorFromDictionary(&v103, v76, HIDWORD(v102), @"Values");
      v77 = HIDWORD(v102);
      v78 = v103.__r_.__value_.__r.__words[0];
      if (HIDWORD(v102))
      {
        v79 = (a1 + 540);
        v80 = v103.__r_.__value_.__r.__words[0];
        v81 = HIDWORD(v102);
        do
        {
          v82 = *v80++;
          v83 = v82;
          if (v82 >= 2)
          {
            v83 = 2;
          }

          *v79++ = v83;
          --v81;
        }

        while (v81);
        if (v77 <= 9)
        {
          bzero((a1 + 4 * v77 + 540), 36 - 4 * v77 + 4);
        }
      }

      else
      {
        bzero((a1 + 540), 0x28uLL);
        if (!v78)
        {
          goto LABEL_137;
        }
      }

      v103.__r_.__value_.__l.__size_ = v78;
      operator delete(v78);
LABEL_137:
      if (SHIBYTE(v105) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v76)
      {
        return v4;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "AuxSymbolInInt");
      if (v105 >= 0)
      {
        v84 = __p;
      }

      else
      {
        v84 = __p[0];
      }

      v85 = CFStringCreateWithCString(0, v84, 0x8000100u);
      v86 = CFDictionaryGetValue(theDict, v85);
      if (!v86)
      {
        CFRelease(v85);
        goto LABEL_154;
      }

      CFRelease(v85);
      ReadVectorFromDictionary(&v103, v86, HIDWORD(v102), @"Values");
      v87 = HIDWORD(v102);
      v88 = v103.__r_.__value_.__r.__words[0];
      if (HIDWORD(v102))
      {
        v89 = v106 - 1;
        v90 = (a1 + 580);
        v91 = v103.__r_.__value_.__r.__words[0];
        v92 = HIDWORD(v102);
        do
        {
          v93 = *v91++;
          v94 = v93;
          if (v89 < v93)
          {
            v94 = v89;
          }

          *v90++ = v94;
          --v92;
        }

        while (v92);
        if (v87 <= 9)
        {
          bzero((a1 + 4 * v87 + 580), 36 - 4 * v87 + 4);
        }
      }

      else
      {
        bzero((a1 + 580), 0x28uLL);
        if (!v88)
        {
          goto LABEL_154;
        }
      }

      v103.__r_.__value_.__l.__size_ = v88;
      operator delete(v88);
LABEL_154:
      if (SHIBYTE(v105) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v86)
      {
        return v4;
      }

LABEL_157:
      v4 = 0;
      v95 = v112;
      *(a1 + 8) = v114;
      *(a1 + 12) = v95;
      *(a1 + 16) = HIDWORD(v111);
      *(a1 + 20) = v111 != 0;
      v96 = *(&v110 + 1) * 0.01;
      if ((*(&v110 + 1) * 0.01) < 0.01)
      {
        v96 = 0.01;
      }

      v97 = v107;
      *(a1 + 528) = v108;
      *(a1 + 532) = v97;
      v98 = v102;
      *(a1 + 620) = HIDWORD(v102);
      *(a1 + 624) = v98;
      v99 = v113;
      *(a1 + 24) = fminf(v96, 0.99);
      *(a1 + 28) = v99;
      v100 = v109;
      *(a1 + 32) = v110;
      *(a1 + 36) = v100;
      return v4;
    }

    v37 = CFDictionaryGetValue(theDict, @"NumIntervals");
    if (!CFNumberGetValue(v37, kCFNumberIntType, &v102 + 4))
    {
      return v4;
    }

    v38 = HIDWORD(v102);
    if (HIDWORD(v102) >= 0xA)
    {
      v38 = 10;
    }

    HIDWORD(v102) = v38;
    v39 = CFDictionaryGetValue(theDict, @"NumFreqs");
    if (!CFNumberGetValue(v39, kCFNumberIntType, &v102))
    {
      return v4;
    }

    v40 = v102;
    if (v102 >= 3)
    {
      v40 = 3;
    }

    LODWORD(v102) = v40;
    std::string::basic_string[abi:ne200100]<0>(__p, "AL");
    if (v105 >= 0)
    {
      v41 = __p;
    }

    else
    {
      v41 = __p[0];
    }

    v42 = CFStringCreateWithCString(0, v41, 0x8000100u);
    v43 = CFDictionaryGetValue(theDict, v42);
    if (!v43)
    {
      CFRelease(v42);
      goto LABEL_72;
    }

    CFRelease(v42);
    ReadVectorFromDictionary(&v103, v43, v107, @"Values");
    v44 = v102;
    v45 = v103.__r_.__value_.__r.__words[0];
    if (v102)
    {
      v46 = (a1 + 40);
      v47 = v103.__r_.__value_.__r.__words[0];
      do
      {
        v48 = *v47++;
        *v46++ = v48;
        --v44;
      }

      while (v44);
    }

    else if (!v103.__r_.__value_.__r.__words[0])
    {
      goto LABEL_72;
    }

    v103.__r_.__value_.__l.__size_ = v45;
    operator delete(v45);
LABEL_72:
    if (SHIBYTE(v105) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v43)
    {
      return v4;
    }

    if (HIDWORD(v102))
    {
      v49 = 0;
      v50 = (a1 + 280);
      do
      {
        std::to_string(&v103, v49);
        v51 = std::string::insert(&v103, 0, "FreqInIntervals", 0xFuLL);
        v52 = *&v51->__r_.__value_.__l.__data_;
        v105 = v51->__r_.__value_.__r.__words[2];
        *__p = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        v53 = v105 >= 0 ? __p : __p[0];
        v54 = CFStringCreateWithCString(0, v53, 0x8000100u);
        v55 = CFDictionaryGetValue(theDict, v54);
        if (v55)
        {
          CFRelease(v54);
          ReadVectorFromDictionary(&v103, v55, v102, @"FreqValues");
          if (v50 != &v103)
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v50, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_, (v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]) >> 2);
          }

          if (v103.__r_.__value_.__r.__words[0])
          {
            v103.__r_.__value_.__l.__size_ = v103.__r_.__value_.__r.__words[0];
            operator delete(v103.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          CFRelease(v54);
        }

        if (SHIBYTE(v105) < 0)
        {
          operator delete(__p[0]);
        }

        if (!v55)
        {
          return v4;
        }

        ++v49;
        ++v50;
      }

      while (v49 < HIDWORD(v102));
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "BitsPerInt");
    if (v105 >= 0)
    {
      v56 = __p;
    }

    else
    {
      v56 = __p[0];
    }

    v57 = CFStringCreateWithCString(0, v56, 0x8000100u);
    v58 = CFDictionaryGetValue(theDict, v57);
    if (!v58)
    {
      CFRelease(v57);
      goto LABEL_104;
    }

    CFRelease(v57);
    ReadVectorFromDictionary(&v103, v58, HIDWORD(v102), @"Values");
    v59 = HIDWORD(v102);
    v60 = v103.__r_.__value_.__r.__words[0];
    if (HIDWORD(v102))
    {
      v61 = (a1 + 52);
      v62 = v103.__r_.__value_.__r.__words[0];
      v63 = HIDWORD(v102);
      do
      {
        v64 = *v62++;
        *v61++ = v64;
        --v63;
      }

      while (v63);
      if (v59 <= 9)
      {
        bzero((a1 + 4 * v59 + 52), 36 - 4 * v59 + 4);
      }
    }

    else
    {
      bzero((a1 + 52), 0x28uLL);
      if (!v60)
      {
        goto LABEL_104;
      }
    }

    v103.__r_.__value_.__l.__size_ = v60;
    operator delete(v60);
LABEL_104:
    if (SHIBYTE(v105) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v58)
    {
      return v4;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ShiftsPerInt");
    if (v105 >= 0)
    {
      v65 = __p;
    }

    else
    {
      v65 = __p[0];
    }

    v66 = CFStringCreateWithCString(0, v65, 0x8000100u);
    v67 = CFDictionaryGetValue(theDict, v66);
    if (!v67)
    {
      CFRelease(v66);
      goto LABEL_119;
    }

    CFRelease(v66);
    ReadVectorFromDictionary(&v103, v67, HIDWORD(v102), @"Values");
    v68 = HIDWORD(v102);
    v69 = v103.__r_.__value_.__r.__words[0];
    if (HIDWORD(v102))
    {
      v70 = (a1 + 92);
      v71 = v103.__r_.__value_.__r.__words[0];
      v72 = HIDWORD(v102);
      do
      {
        v73 = *v71++;
        *v70++ = v73;
        --v72;
      }

      while (v72);
      if (v68 <= 9)
      {
        bzero((a1 + 4 * v68 + 92), 36 - 4 * v68 + 4);
      }
    }

    else
    {
      bzero((a1 + 92), 0x28uLL);
      if (!v69)
      {
        goto LABEL_119;
      }
    }

    v103.__r_.__value_.__l.__size_ = v69;
    operator delete(v69);
LABEL_119:
    if (SHIBYTE(v105) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v67)
    {
      return v4;
    }

    goto LABEL_122;
  }

  v21 = 0;
  v22 = (a1 + 136);
  v23 = (a1 + 520);
  while (1)
  {
    std::to_string(&v103, v21);
    v24 = std::string::insert(&v103, 0, "Pulse", 5uLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v105 = v24->__r_.__value_.__r.__words[2];
    *__p = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }

    v26 = v105 >= 0 ? __p : __p[0];
    v27 = CFStringCreateWithCString(0, v26, 0x8000100u);
    v28 = CFDictionaryGetValue(theDict, v27);
    if (v28)
    {
      CFRelease(v27);
      ReadVectorFromDictionary(&v103, v28, v107, @"Values");
      if (v22 != &v103)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v22, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_, (v103.__r_.__value_.__l.__size_ - v103.__r_.__value_.__r.__words[0]) >> 2);
      }

      *v23 = 1;
      if (v103.__r_.__value_.__r.__words[0])
      {
        v103.__r_.__value_.__l.__size_ = v103.__r_.__value_.__r.__words[0];
        operator delete(v103.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      CFRelease(v27);
      *v23 = 0;
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v28)
    {
      return v4;
    }

    ++v21;
    ++v23;
    ++v22;
    if (v21 >= v108)
    {
      v20 = v106;
      goto LABEL_37;
    }
  }
}