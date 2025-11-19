void HRTFConvolution::~HRTFConvolution(void **this)
{
  *this = &unk_1F5939008;
  v1 = this + 2;
  ConvolutionFilter::~ConvolutionFilter(this + 7);
  ConvolutionFilter::~ConvolutionFilter(v1);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5939008;
  v1 = this + 2;
  ConvolutionFilter::~ConvolutionFilter(this + 7);
  ConvolutionFilter::~ConvolutionFilter(v1);
}

uint64_t AUAuxVPDownlink::GetParameterInfo(AUAuxVPDownlink *this, int a2, int a3, AudioUnitParameterInfo *buffer)
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
      v6 = @"Final Gain Channel 0";
      goto LABEL_24;
    case 1:
      buffer->cfNameString = @"DL Mix Block Size";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DL Mix Block Size", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_SampleFrames;
      *&buffer->minValue = 0x470000003F800000;
      buffer->defaultValue = 480.0;
      return result;
    case 2:
      v16 = @"Min Mix Gain";
      goto LABEL_13;
    case 3:
      v16 = @"Max Mix Gain";
LABEL_13:
      buffer->cfNameString = v16;
      buffer->flags = 1207959552;
      CFStringGetCString(v16, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3266576384;
      v9 = -15.0;
      goto LABEL_15;
    case 4:
      buffer->cfNameString = @"Noise Threshold for Vol Boost";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Noise Threshold for Vol Boost", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000000000000;
      v9 = 100.0;
      goto LABEL_15;
    case 5:
      buffer->cfNameString = @"Min Boosting Level";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Min Boosting Level", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0.0078125;
      break;
    case 6:
      buffer->cfNameString = @"Boost Amount";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Boost Amount", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0.0000305175781;
      break;
    case 7:
      buffer->cfNameString = @"Max Non Boosting Level";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Max Non Boosting Level", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v9 = 1.0;
LABEL_15:
      v17 = buffer->flags | 0x80000000;
      buffer->defaultValue = v9;
      buffer->flags = v17;
      return result;
    case 8:
      v6 = @"Final Gain Channel 1";
LABEL_24:
      buffer->cfNameString = v6;
      buffer->flags = 1207959552;
      CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v7 = 1.09951243e12;
      break;
    case 9:
      v15 = @"FEV Gain at Min. Volume";
      goto LABEL_22;
    case 10:
      v15 = @"FEV Gain at Max Volume";
LABEL_22:
      buffer->cfNameString = v15;
      buffer->flags = 1207959552;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v7 = 4294970410.0;
      break;
    case 11:
      v8 = @"DL AGC Target in Music";
      goto LABEL_19;
    case 12:
      buffer->cfNameString = @"DL AGC Max Gain in Music";
      buffer->flags = 1207959552;
      CFStringGetCString(@"DL AGC Max Gain in Music", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-30.0 }

      v7 = -_D0;
      break;
    case 13:
      v8 = @"Threshold for music presence detection";
LABEL_19:
      buffer->cfNameString = v8;
      buffer->flags = 1207959552;
      CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&v7 = 3266576384;
      break;
    case 14:
      buffer->cfNameString = @"Hold time for switching DL AGC params";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Hold time for switching DL AGC params", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 2.99759591e19;
      break;
    case 15:
      buffer->cfNameString = @"Scaling for volume matching";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Scaling for volume matching", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 2.0615843e11;
      break;
    default:
      return 4294956418;
  }

  *&buffer->minValue = v7;
  v18 = buffer->flags | 0x80000000;
  buffer->defaultValue = 0.0;
  buffer->flags = v18;
  return result;
}

void AUAuxVPDownlink::~AUAuxVPDownlink(AUAuxVPDownlink *this)
{
  *this = &unk_1F5939038;
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5939038;
  ausdk::AUBase::~AUBase(this);
}

uint64_t AUAuxVPUplink::GetParameterInfo(AUAuxVPUplink *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"PreProcessingGain";
      buffer->flags = -939524096;
      CFStringGetCString(@"PreProcessingGain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v6 = 8.58993956e10;
      goto LABEL_28;
    case 1:
      buffer->cfNameString = @"PostProcessingGain";
      buffer->flags = -939524096;
      CFStringGetCString(@"PostProcessingGain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-30.0 }

      v6 = -_D0;
      goto LABEL_28;
    case 2:
      buffer->cfNameString = @"ECRefMicDelayMilliSec";
      buffer->flags = -939524096;
      CFStringGetCString(@"ECRefMicDelayMilliSec", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x41A0000000000000;
      buffer->defaultValue = 10.0;
      return result;
    case 3:
      v9 = @"Echo Latency Correction 8000Hz";
      goto LABEL_22;
    case 4:
      v9 = @"Echo Latency Correction 11025Hz";
      goto LABEL_22;
    case 5:
      v9 = @"Echo Latency Correction 12000Hz";
      goto LABEL_22;
    case 6:
      v9 = @"Echo Latency Correction 16000Hz";
LABEL_22:
      buffer->cfNameString = v9;
      buffer->flags = -939524096;
      CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v6 = 2.18573879e27;
      goto LABEL_28;
    case 7:
      v10 = @"Echo Latency Correction 22050Hz";
      goto LABEL_27;
    case 8:
      v10 = @"Echo Latency Correction 24000Hz";
LABEL_27:
      buffer->cfNameString = v10;
      buffer->flags = -939524096;
      CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v6 = 8.51084142e27;
      goto LABEL_28;
    case 9:
      v8 = @"Echo Latency Correction 32000Hz";
      goto LABEL_25;
    case 10:
      v8 = @"Echo Latency Correction 44100Hz";
      goto LABEL_25;
    case 11:
      v8 = @"Echo Latency Correction 48000Hz";
LABEL_25:
      buffer->cfNameString = v8;
      buffer->flags = -939524096;
      CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v6 = 5.59549132e29;
      goto LABEL_28;
    case 12:
      buffer->cfNameString = @"Echo Centroid Offset";
      buffer->flags = -939524096;
      CFStringGetCString(@"Echo Centroid Offset", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v6 = 134217728.0;
LABEL_28:
      *&buffer->minValue = v6;
      buffer->defaultValue = 0.0;
      return result;
    case 13:
      v7 = @"HW Ref Block Size";
      goto LABEL_19;
    case 14:
      v7 = @"HW Mic Block Size";
      goto LABEL_19;
    case 15:
      v7 = @"Echo Processing Block Size";
      goto LABEL_19;
    case 16:
      v7 = @"UpSampling Output Block Size";
LABEL_19:
      buffer->cfNameString = v7;
      buffer->flags = -939524096;
      CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_SampleFrames;
      *&buffer->minValue = 0x470000003F800000;
      v16 = 480.0;
      goto LABEL_20;
    case 17:
      buffer->cfNameString = @"To enable or disable clip detection, disable==0";
      buffer->flags = -939524096;
      CFStringGetCString(@"To enable or disable clip detection, disable==0", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      *&buffer->minValue = 0x4700000000000000;
      v16 = 1.0;
LABEL_20:
      v17 = buffer->flags & 0x7FFFFFFF;
      buffer->defaultValue = v16;
      buffer->flags = v17;
      break;
    case 18:
      buffer->cfNameString = @"Driver Processing Mode";
      buffer->flags = -939524096;
      CFStringGetCString(@"Driver Processing Mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x3F80000000000000;
      v18 = buffer->flags & 0x7FFFFFFF;
      buffer->defaultValue = 0.0;
      buffer->flags = v18;
      break;
    default:
      return 4294956418;
  }

  return result;
}

void AUAuxVPUplink::~AUAuxVPUplink(AUAuxVPUplink *this)
{
  *this = &unk_1F5939288;
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5939288;
  ausdk::AUBase::~AUBase(this);
}

uint64_t AUAuxVP::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (!v3 && this[67])
  {
    v4 = 0;
    do
    {
      Scope = ausdk::AUBase::GetScope(this, v4);
      v6 = *(Scope + 5);
      if (v6)
      {
        LODWORD(v7) = (*(*v6 + 24))(v6);
        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = (*(Scope + 3) - *(Scope + 2)) >> 3;
        if (v7)
        {
LABEL_8:
          v8 = 0;
          do
          {
            Element = ausdk::AUScope::GetElement(Scope, v8);
            v10 = (*(*Element + 16))(Element);
            std::vector<unsigned int>::vector[abi:ne200100](&v15, v10);
            (*(*Element + 24))(Element, v15);
            v11 = v15;
            v12 = v16;
            if (v15 != v16)
            {
              do
              {
                Parameter = ausdk::AUElement::GetParameter(Element, *v11);
                (this[67])(this[66], this[1], *v11++, v4, v8, 0, Parameter);
              }

              while (v11 != v12);
              v11 = v15;
            }

            if (v11)
            {
              v16 = v11;
              operator delete(v11);
            }

            v8 = (v8 + 1);
          }

          while (v8 != v7);
        }
      }

      v4 = (v4 + 1);
    }

    while (v4 != 4);
  }

  return v3;
}

void sub_1DE047E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUAuxVP::SetParameter(uint64_t (**this)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result)
  {
    v14 = this[67];
    if (v14)
    {
      v15 = this[66];
      v16 = this[1];
      v13.n128_f32[0] = a5;

      return v14(v15, v16, a2, a3, a4, a6, v13);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 AUAuxVP::SetProperty(__n128 *this, int a2, int a3, int a4, __n128 *a5, unsigned int a6)
{
  if (!a3 && !a4 && a2 == 3999 && a6 >= 0x10)
  {
    result = *a5;
    this[33] = *a5;
  }

  return result;
}

uint64_t AUAuxVP::GetProperty(AUAuxVP *this, int a2, int a3, int a4, void *a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  if (a2 == 3998)
  {
    result = 0;
    *a5 = this;
    a5[1] = AUAuxVP::UpdateParameterValue;
  }

  else if (a2 == 3999)
  {
    result = 0;
    *a5 = *(this + 33);
  }

  else
  {
    return 4294956417;
  }

  return result;
}

uint64_t AUAuxVP::GetPropertyInfo(AUAuxVP *this, int a2, int a3, int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  if (a2 == 3999)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if (a2 == 3998)
  {
    v7 = 0;
LABEL_9:
    result = 0;
    *a6 = v7;
    *a5 = 16;
    return result;
  }

  return 4294956417;
}

uint64_t (*AUAuxVPLookup::Lookup(AUAuxVPLookup *this))(ausdk *__hidden this, void *)
{
  if ((this - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return off_1F593AA18[(this - 1)];
  }
}

uint64_t AU::ChannelSelector::ChannelMap::Default::read(uint64_t a1, void *__dst)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    memmove(__dst, *(a1 + 40), 4 * v2);
  }

  return 1;
}

void **AU::ChannelSelector::ChannelMap::Default::write(void **result, const void *a2, uint64_t a3)
{
  if (4 * a3)
  {
    return memmove(result[5], a2, 4 * a3);
  }

  return result;
}

void AU::ChannelSelector::ChannelMap::Default::~Default(AU::ChannelSelector::ChannelMap::Default *this)
{
  *this = &unk_1F59394D8;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59394D8;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void aec_v4::aec_init(void **a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v14 = malloc_type_malloc(0x78uLL, 0x14F53CCCuLL);
  if (v14)
  {
    v14[14] = 0;
    *(v14 + 5) = 0u;
    *(v14 + 6) = 0u;
    *(v14 + 3) = 0u;
    *(v14 + 4) = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    *a1 = v14;
    v15 = malloc_type_malloc(0x178uLL, 0xC9F26004uLL);
    if (v15)
    {
      v15[46] = 0;
      *(v15 + 21) = 0u;
      *(v15 + 22) = 0u;
      *(v15 + 19) = 0u;
      *(v15 + 20) = 0u;
      *(v15 + 17) = 0u;
      *(v15 + 18) = 0u;
      *(v15 + 15) = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 13) = 0u;
      *(v15 + 14) = 0u;
      *(v15 + 11) = 0u;
      *(v15 + 12) = 0u;
      *(v15 + 9) = 0u;
      *(v15 + 10) = 0u;
      *(v15 + 7) = 0u;
      *(v15 + 8) = 0u;
      *(v15 + 5) = 0u;
      *(v15 + 6) = 0u;
      *(v15 + 3) = 0u;
      *(v15 + 4) = 0u;
      *(v15 + 1) = 0u;
      *(v15 + 2) = 0u;
      *v15 = 0u;
      if (a3 / a4 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = a3 / a4;
      }

      (*a1)[7] = v15;
      dft_v4::paramInit_v4(*a1, v16 * a4, a4, v16, a2, a7, a6, a8);
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v18 = std::bad_alloc::bad_alloc(exception);
}

void aec_v4::run_aec(float **a1, _DWORD *a2, float *a3, _DWORD *a4, _DWORD *a5, char *__src, void *a7, float *a8, _DWORD *a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v13 = *a1;
  v14 = a1[1];
  v16 = a1[6];
  v15 = a1[7];
  v17 = a1[8];
  v576 = a1[9];
  v18 = a1[2];
  v529 = a1[4];
  v544 = *(v15 + 1);
  v545 = *v15;
  v546 = *(v15 + 3);
  v19 = *(v15 + 8);
  v548 = *(v15 + 10);
  v550 = a1[3];
  v20 = *(*a1 + 4);
  __len = *(*a1 + 34);
  v536 = *(*a1 + 7);
  v537 = *(v15 + 9);
  v547 = *(*a1 + 9);
  v21 = *(*a1 + 32);
  *(v16 + 604) = 0;
  v22 = *(v16 + 568);
  v614 = v20;
  v23 = v20;
  v542 = v19;
  v543 = (v16 + 28);
  if (v22 < 100.0 && (*(v16 + 28) / v23) > 0.00000001)
  {
    v22 = v22 + v13[5];
    *(v16 + 568) = v22;
  }

  v24 = *(v13 + 40);
  if (v24 == 2)
  {
    if (v21 <= 0)
    {
      v14[38] = 0.0;
    }

    else
    {
      v25 = 0;
      v26 = *(v14 + 15);
      v27 = *(v14 + 18);
      do
      {
        if (*(v25 + v26) == 1)
        {
          *&v27[4 * v25] = 0;
          *(v25 + *(v14 + 16)) = 1;
        }

        else
        {
          v28 = *&v27[4 * v25];
          v29 = *(v13 + 11) - 1;
          if (v28 == v29)
          {
            *(v25 + *(v14 + 16)) = 0;
          }

          if (v28 < v29)
          {
            *&v27[4 * v25] = v28 + 1;
          }
        }

        v25 = (v25 + 1);
      }

      while (v21 != v25);
      v30 = 0;
      v14[38] = 0.0;
      v31 = *(v14 + 16);
      v32 = v21;
      do
      {
        v33 = *v31++;
        if (v33 == 1)
        {
          *(v14 + 38) = ++v30;
        }

        v32 = (v32 - 1);
      }

      while (v32);
      if (v30 >= 1)
      {
        v13[42] = 0.0;
LABEL_23:
        v24 = *(v13 + 40);
        goto LABEL_24;
      }
    }

    v34 = *(v13 + 42);
    if (v34 <= 1)
    {
      *(v13 + 42) = v34 + 1;
    }

    goto LABEL_23;
  }

LABEL_24:
  if (v24 < 2)
  {
    v40 = *(v14 + 17);
    *v40 = 1;
    v39 = v21 - 1;
    if (v21 > 1)
    {
      goto LABEL_33;
    }
  }

  else if (v24 == 2)
  {
    if (v21 >= 1)
    {
      v41 = *(v14 + 16);
      v42 = *(v14 + 17);
      v43 = v21;
      do
      {
        v44 = *v41++;
        *v42++ = v44;
        v43 = (v43 - 1);
      }

      while (v43);
    }
  }

  else if (v24 == 3)
  {
    if (v21 >= 1)
    {
      v35 = *(v14 + 16);
      v36 = *(v14 + 17);
      v37 = v21;
      do
      {
        v38 = *v35++;
        *v36++ = v38;
        v37 = (v37 - 1);
      }

      while (v37);
    }

    v39 = *(v13 + 41);
    if (v39 >= 1)
    {
      v40 = *(v14 + 17);
LABEL_33:
      bzero(v40 + 1, v39);
    }
  }

  else if (v21 >= 1)
  {
    v45 = *(v14 + 16);
    v46 = *(v14 + 17);
    v47 = v21;
    do
    {
      v48 = *v45++;
      *v46++ = v48;
      v47 = (v47 - 1);
    }

    while (v47);
  }

  v539 = v16 + 284;
  v49 = *(v13 + 26);
  if (v49 < 1 || *(v14 + 38) < 1)
  {
    v533 = 0;
  }

  else
  {
    v50 = v49 != 1 || v22 < (*(v16 + 552) + 2.0);
    v533 = v50;
  }

  *v16 = a10 == 0;
  *(v16 + 516) = *(v16 + 40);
  *(v16 + 556) = *(v16 + 408);
  *(v16 + 532) = *(v16 + 524);
  *(v16 + 592) = 0;
  v615 = v14;
  v585 = v13;
  v566 = v16;
  v552 = v18;
  v555 = v21;
  v556 = v15;
  v541 = v17;
  if (*(v13 + 25) || *(v16 + 148))
  {
    *(v16 + 376) = *(v16 + 4);
    memcpy(*(v15 + 14), __src, 4 * *(v13 + 4));
    goto LABEL_51;
  }

  v563 = __src;
  v525 = *(v13 + 33);
  v565 = *(v13 + 18);
  if (v525 >= 1)
  {
    v109 = 0;
    v110 = *(v13 + 18) - v614;
    v111 = (4 * v614);
    v112 = __src;
    v113 = *(v13 + 33);
    do
    {
      if (*(*(v14 + 17) + v109) == 1)
      {
        v114 = *(*(v14 + 8) + 8 * v109);
        v115 = *(*(v14 + 7) + 8 * v109);
        v116 = v614;
        if (v565 != v614)
        {
          v117 = 0;
          do
          {
            memcpy((v115 + 4 * v117), (v115 + 4 * (v614 + v117)), v111);
            memcpy((v114 + 4 * v117), (v114 + 4 * (v614 + v117)), v111);
            v117 += v614;
            v116 = v614;
          }

          while (v117 < v110);
        }

        v118 = (v115 + 4 * v110);
        memcpy(v118, v112, v111);
        MEMORY[0x1E12BE990](v118, 1, v114 + 4 * v110, 1, v116);
        v13 = v585;
        v113 = *(v585 + 33);
        v16 = v566;
      }

      v112 += 4 * v614;
      ++v109;
    }

    while (v109 < v113);
    v525 = v113;
    v565 = *(v13 + 18);
    v15 = v556;
  }

  v553 = *(v14 + 8);
  v557 = *(v14 + 17);
  __na = *(v14 + 7);
  v119 = *(v13 + 4);
  v120 = *(v576 + 16);
  HIDWORD(v618) = *(v16 + 372);
  *&v618 = 1.0 - *(&v618 + 1);
  __srcb = v120;
  __Cd = *(v16 + 356);
  v121 = *(v15 + 15);
  v122 = *(v15 + 23);
  v617 = *(v15 + 10);
  v123 = *(v15 + 17);
  v124 = *(v15 + 29);
  v522 = v119;
  v125 = &v121[4 * v119];
  v126 = 4 * v119;
  memcpy(v121, v125, v126);
  v519 = v126;
  memcpy(v125, a7, v126);
  v127 = *(v15 + 27);
  v128 = v121;
  v129 = __srcb;
  MEMORY[0x1E12BE7F0](v128, 1, v124, 1, v123, 1, __srcb);
  dft_v5::dftGenericAnalysis2ndHalf(v123, v617.realp, v617.imagp, v576, 0);
  vDSP_zvmags(&v617, 1, v122, 1, __Cd);
  MEMORY[0x1E12BE940](v122, 1, &v618, v122, 1, __Cd);
  v573 = v122;
  v526 = v127;
  MEMORY[0x1E12BE8F0](v127, 1, &v618 + 4, v122, 1, v127, 1, __Cd);
  if (v525 <= 0)
  {
    v179 = 0;
    v177 = *(v16 + 328);
    v181 = 0.0;
    v17 = v541;
    v21 = v555;
    __src = v563;
LABEL_136:
    v185 = sqrtf(v181);
    if (v185 <= 1.0)
    {
      v180 = v185;
    }

    else
    {
      v180 = 1.0;
    }

    v177 += v179;
    goto LABEL_140;
  }

  v130 = 0;
  v131 = 0;
  __dst = *(v15 + 16);
  v531 = v565 - __srcb;
  v132 = v525;
  v530 = (((v565 - __srcb) / 3.0) + ((v565 - __srcb) / 3.0));
  v133 = 0.0;
  v21 = v555;
  __src = v563;
  v134 = v557;
  do
  {
    if (v134[v130] == 1)
    {
      v599 = v131;
      __Ca = *(__na + 8 * v130);
      v135 = *&v553[8 * v130];
      v591 = *(*(v15 + 26) + 8 * v130);
      v595 = v130;
      v136 = *(v15 + 28) + 16 * v130;
      v582 = *v136;
      __Na = *(v136 + 8);
      v137 = v15;
      v138 = *(v13 + 17);
      v139 = *(v137 + 15);
      v140 = v531 - v138;
      LODWORD(__A.realp) = 0;
      LODWORD(__Z.realp) = 0;
      LODWORD(__B.realp) = 0;
      if (v531 - v138 >= v530)
      {
        v141 = (v140 - v530 + 1) & ~((v140 - v530 + 1) >> 31);
      }

      else
      {
        v141 = 0;
      }

      vDSP_sve((v135 + 4 * v141), 1, &__Z, v129);
      vDSP_dotpr(v139, 1, v139, 1, &__A, v129);
      v142 = *&__Z.realp;
      v143 = (v140 + 2);
      if (v141 >= v143)
      {
        v148 = v141;
      }

      else
      {
        v144 = v141 + v129 - v138;
        v145 = v141 - v138;
        v146 = 0.0;
        v147 = v141;
        v148 = v141;
        do
        {
          vDSP_dotpr(__Ca + v147, 1, v139, 1, &__B, __srcb);
          v149 = *&__Z.realp;
          if (v147 > v141 && v147 >= v138 && v138 >= 1)
          {
            v150 = (v135 + 4 * v145);
            v151 = v138;
            v152 = (v135 + 4 * v144);
            do
            {
              v153 = *v150++;
              v154 = v149 - v153;
              v155 = *v152++;
              v149 = v154 + v155;
              --v151;
            }

            while (v151);
            *&__Z.realp = v149;
          }

          v156 = *&__B.realp / (sqrtf(v149 * *&__A.realp) + 2.2204e-16);
          v157 = fabsf(v156);
          if (v157 > v146)
          {
            v142 = v149;
            v146 = v157;
            v148 = v147;
          }

          v147 += v138;
          v144 += v138;
          v145 += v138;
        }

        while (v147 < v143);
      }

      memcpy(__dst, __Ca + 4 * v148, 4 * __srcb);
      v16 = v566;
      *(v566 + 376) = v142;
      *(v566 + 324) = v148;
      v159 = *(v556 + 10);
      __B = *(v556 + 9);
      __Z = v159;
      __A.realp = v582;
      __A.imagp = __Na;
      v160 = *(v556 + 16);
      v161 = *(v556 + 29);
      v162 = *(v576 + 16);
      v163 = *(v556 + 22);
      v621 = *(v556 + 12);
      v164 = *(v566 + 352);
      v165 = *(v566 + 356);
      v620 = *(v566 + 372);
      v619 = 1.0 - v620;
      MEMORY[0x1E12BE7F0](v160, 1, v161, 1, v160, 1, v162);
      dft_v5::dftGenericAnalysis2ndHalf(v160, __B.realp, __B.imagp, v576, 0);
      vDSP_zvmags(&__B, 1, v163, 1, v165);
      vDSP_zvcmul(&__Z, 1, &__B, 1, &v621, 1, v165);
      MEMORY[0x1E12BE940](v163, 1, &v619, v163, 1, v165);
      MEMORY[0x1E12BE8F0](v591, 1, &v620, v163, 1, v591, 1, v165);
      MEMORY[0x1E12BE940](v621.realp, 1, &v619, v621.realp, 1, v165);
      MEMORY[0x1E12BE940](v621.imagp, 1, &v619, v621.imagp, 1, v165);
      MEMORY[0x1E12BE940](v582, 1, &v620, v582, 1, v165);
      MEMORY[0x1E12BE940](__Na, 1, &v620, __Na, 1, v165);
      vDSP_zvadd(&__A, 1, &v621, 1, &__A, 1, v165);
      vDSP_zvabs(&__A, 1, v573, 1, v165);
      v166 = 0.0;
      v167 = v165 - v164;
      v14 = v615;
      if (v165 >= v164)
      {
        v168 = (v591 + 4 * (v164 - 1));
        v169 = v167 + 1;
        v170 = (v526 + 4 * (v164 - 1));
        v171 = &v573[v164 - 1];
        do
        {
          v172 = *v171++;
          v173 = v172;
          v174 = *v170++;
          v175 = v174;
          v176 = *v168++;
          v166 = v173 / (sqrtf(v175 * v176) + 0.00000001) + v166;
          --v169;
        }

        while (v169);
      }

      v133 = v133 + v142;
      v131 = v599 + 1;
      v158 = v166 / (v167 + 1);
      v13 = v585;
      v21 = v555;
      v15 = v556;
      __src = v563;
      v134 = v557;
      v129 = __srcb;
      v132 = v525;
      v130 = v595;
    }

    else
    {
      v148 = 0;
      v158 = 0.0;
    }

    v177 = *(v16 + 328);
    v177[v130] = v148;
    v178 = *(v16 + 312);
    v178[v130++] = v158;
  }

  while (v130 != v132);
  v17 = v541;
  if (v131 >= 2)
  {
    *(v16 + 376) = v133 / v131;
  }

  if (v525 != 1)
  {
    v182 = 0;
    LODWORD(v179) = 0;
    v183 = 0.0;
    v181 = 0.0;
    do
    {
      if (v134[v182] == 1)
      {
        v184 = v178[v182];
        if (v184 > v183)
        {
          LODWORD(v179) = v182;
          v183 = v178[v182];
        }

        v181 = v181 + (v184 * v184);
      }

      ++v182;
    }

    while (v132 != v182);
    v179 = v179;
    goto LABEL_136;
  }

  v179 = 0;
  v180 = *v178;
LABEL_140:
  v186 = *v177;
  if (v186 >= v565 - v522)
  {
    v186 = v565 - v522;
  }

  memcpy(*(v15 + 14), (*(__na + 8 * v179) + 4 * v186), v519);
  *(v16 + 320) = v180;
LABEL_51:
  v52 = *(v14 + 20);
  v53 = *(v14 + 4);
  v54 = *(v15 + 11);
  v55 = v52 == 0;
  if (v52)
  {
    v56 = &v53[4 * __len];
  }

  else
  {
    v56 = *(v14 + 4);
  }

  if (v52)
  {
    v57 = *(v14 + 4);
  }

  else
  {
    v57 = &v53[4 * __len];
  }

  if (v55)
  {
    v58 = *(v15 + 11);
  }

  else
  {
    v58 = v54 + 4 * v614;
  }

  if (v55)
  {
    v59 = v54 + 4 * v614;
  }

  else
  {
    v59 = *(v15 + 11);
  }

  *(v14 + 5) = v56;
  *(v14 + 6) = v57;
  *(v15 + 12) = v58;
  *(v15 + 13) = v59;
  lmsfilt_v5::preemphasisFilter(__src, *(v13 + 4), *v17, v56, v21, *(v14 + 15), v51);
  v616 = 1;
  lmsfilt_v5::preemphasisFilter(a7, *(v13 + 4), v17 + 2, *(v15 + 12), 1, &v616, v60);
  v61 = *(v14 + 18);
  *(v14 + 19) = v61;
  dft_v3::GetIndexSequence(*(v14 + 11), v61, *(v13 + 11), *(v13 + 12));
  __C = *(v14 + 5);
  v62 = *(v16 + 56);
  v63 = *(v13 + 4);
  v64 = *(v13 + 32);
  v65 = v14;
  v67 = *(v13 + 9);
  v66 = *(v13 + 10);
  v68 = *(v65 + 19);
  v69 = v65[2];
  v70 = v65[3];
  v72 = *v65;
  v71 = v65[1];
  v73 = v13;
  v74 = *(v13 + 11);
  v75 = v65[12];
  v76 = v65[13];
  LODWORD(__B.realp) = 1065353216;
  v581 = v64;
  if (v64 >= 1)
  {
    v77 = 0;
    v78 = &v75[4 * v68 * v66];
    v590 = v63;
    v79 = v68 * v63;
    v80 = &v70[4 * v79];
    v564 = v74;
    __lena = 4 * (v74 - 1);
    v570 = (v74 - 1);
    __n = 4 * v67;
    v562 = 4 * v67;
    v598 = v62 + 1;
    v81 = &v69[4 * v79];
    __N = v67;
    do
    {
      __srca = v71;
      v594 = v77;
      if (*(*(v615 + 16) + v77) == 1)
      {
        memcpy(v81, v72, __n);
        memcpy(v80, __srca, __n);
        __Z.realp = &v81[__N];
        __Z.imagp = &v80[__N];
        vDSP_ctoz(__C, 2, &__Z, 1, __N);
        memcpy(v72, &v81[__N], v562);
        memcpy(__srca, &v80[__N], v562);
        __Z.realp = v81;
        __Z.imagp = v80;
        v83 = *(v585 + 1);
        if (v83)
        {
          MultiRadixRealFFT::RealInPlaceTransform(v83, &__Z, 1, v82);
        }

        MEMORY[0x1E12BE940](v81, 1, v585 + 22, v81, 1, *v585 >> 1);
        MEMORY[0x1E12BE940](v80, 1, v585 + 22, v80, 1, *v585 >> 1);
        __A.realp = v81;
        __A.imagp = v80;
        vDSP_zvmags(&__A, 1, v62, 1, v590);
        *v62 = *v81 * *v81;
        v62[v590] = *v80 * *v80;
        v84 = v585[43];
        *v78 = v84 + *v62;
        v78[v66 - 1] = v84 + v62[v66 - 1];
        if (v66 >= 3)
        {
          v85 = v78 + 1;
          v86 = v598;
          v87 = v66 - 2;
          do
          {
            v89 = *(v86 - 1);
            v88 = *v86;
            v90 = v86[1];
            ++v86;
            *v85++ = v84 + (((v88 + v89) + v90) * 0.33333);
            --v87;
          }

          while (v87);
        }

        if (v564 == 1)
        {
          vDSP_vfill(&__B, v76, 1, 1uLL);
        }

        else
        {
          LODWORD(__A.realp) = 0;
          vDSP_sve(v78, 1, &__A, v66);
          v94 = log10f(*&__A.realp) * 10.0;
          memmove(v76, v76 + 1, __lena);
          v76[v570] = v94;
        }

        v91 = v585;
        v92 = __N;
        v93 = __srca;
      }

      else
      {
        v91 = v73;
        vDSP_vclr(v81, 1, v73[4]);
        vDSP_vclr(v80, 1, v91[4]);
        v92 = __N;
        vDSP_vclr(v72, 1, __N);
        v93 = __srca;
        vDSP_vclr(__srca, 1, __N);
        vDSP_vclr(v62, 1, v66);
        vDSP_vclr(v78, 1, v91[10]);
        memmove(v76, v76 + 1, __lena);
        v76[v570] = -90.458;
      }

      v95 = v91[15];
      v81 += v95;
      v80 += v95;
      v72 += 4 * v92;
      v71 = &v93[4 * v92];
      __C = (__C + 4 * v590);
      v62 += v66;
      v73 = v91;
      v78 += v91[14];
      v77 = v594 + 1;
      v598 += v66;
      v76 += v91[11];
    }

    while (v594 + 1 != v581);
    v74 = v91[11];
    v16 = v566;
    v15 = v556;
  }

  v96 = v552;
  v97 = v73;
  if (*(v552 + 17) == 1)
  {
    if (*(v16 + 148) != 1)
    {
LABEL_173:
      if (v97[26] >= 1)
      {
        *(a1[5] + 9) = *(v96 + 9);
      }

      goto LABEL_175;
    }

    v98 = v74;
    LODWORD(__A.realp) = 0;
    v100 = *(v552 + 18);
    v99 = *(v552 + 19);
    v101 = 1.0;
    if (v74 < 1)
    {
      v103 = 0;
      v106 = 0;
      v105 = 0.0;
      goto LABEL_148;
    }

    v102 = 0;
    v103 = 0;
    v104 = *(v16 + 120);
    v105 = 0.0;
    do
    {
      if (*(v104 + 4 * v102) > v105)
      {
        v103 = v102;
        v105 = *(v104 + 4 * v102);
      }

      ++v102;
    }

    while (v74 != v102);
    v106 = 0;
    if (v74 < 4 || *(v73 + 6) >= 12.0)
    {
LABEL_148:
      v187 = *(v16 + 608) * 0.95;
      *(v16 + 608) = v187;
      if ((v105 * 0.9) <= v187)
      {
        v103 = *(v16 + 612);
      }

      else
      {
        *(v16 + 612) = v103;
        *(v16 + 608) = v105;
      }

      v188 = (v103 - *(v552 + 20)) & ~((v103 - *(v552 + 20)) >> 31);
      if (v188 + *(v552 + 21) >= v74)
      {
        v189 = v74;
      }

      else
      {
        v189 = v188 + *(v552 + 21);
      }

      vDSP_sve((*(v16 + 120) + 4 * v188), 1, &__A, v189 - v188);
      v190 = v189 - 1 - v188 + v106;
      v16 = v566;
      if (v190 <= 1)
      {
        v190 = 1;
      }

      v191 = v105 / ((v101 * (*&__A.realp - v105)) / v190);
      v192 = *(v566 + 568);
      if (v192 <= 2.0 || v191 <= 5.0)
      {
        if (v192 > 2.0)
        {
          v96 = v552;
          v15 = v556;
          if (v191 < 3.0)
          {
            ++v99;
            --v100;
          }

          goto LABEL_170;
        }
      }

      else
      {
        if (v100 <= v188)
        {
          v193 = 0;
        }

        else
        {
          v193 = -1;
        }

        if (v100 < v188)
        {
          v193 = 1;
        }

        v100 += v193;
        if (v99 >= v189 - 1)
        {
          v99 -= v99 >= v189;
        }

        else
        {
          ++v99;
        }
      }

      v96 = v552;
      v15 = v556;
LABEL_170:
      v194 = v98 - 1;
      if (v99 < v98)
      {
        v194 = v99;
      }

      *(v96 + 18) = v100 & ~(v100 >> 31);
      *(v96 + 19) = v194;
      goto LABEL_173;
    }

    v107 = v103 + 1;
    if (v107 == v74)
    {
      v108 = *(v104 + 4 * v103 - 4);
    }

    else
    {
      if (v103)
      {
        v105 = v105 + ((*(v104 + 4 * v103 - 4) + *(v104 + 4 * v107)) * 0.5);
LABEL_147:
        v101 = 2.0;
        v106 = -1;
        goto LABEL_148;
      }

      v108 = *(v104 + 4);
    }

    v105 = v105 + v108;
    goto LABEL_147;
  }

LABEL_175:
  HIDWORD(v509) = v97[15];
  *&v513 = v96[9];
  LODWORD(v509) = v555;
  lmsfilt_v4::runLmsFilter_v4(v15 + 1, v15 + 2, v97[4], *(v96 + 2), *(v96 + 3), *(v615 + 2), *(v615 + 3), *(v615 + 11), *(v96 + 9), v509, v513, *(v615 + 16), v516, SHIDWORD(v516), v519, SHIDWORD(v519), v522);
  dft_v5::dftSynthesis(*(v15 + 4), *(v15 + 5), v97);
  aec_v5::get_EchoEst_Err(v542, v548, (*(v15 + 4) + 4 * v547), (*(v15 + 5) + 4 * v547), *(v15 + 12), v97);
  v195 = (v16 + 4);
  v196 = *(v15 + 12);
  v197 = v97[4];
  vDSP_svesq(*(v615 + 5), 1, (v16 + 4), v197);
  vDSP_svesq(v196, 1, v543, v197);
  v198 = *(v16 + 4);
  v199 = *(v16 + 8);
  *v199 = v198;
  v200 = v97[33];
  if (v200 <= 1)
  {
    if (v555 > 1)
    {
      bzero(v199 + 1, 4 * (v555 - 1));
      v198 = *v195;
    }
  }

  else
  {
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0.0;
    v206 = 4 * v200;
    do
    {
      if (*(*(v615 + 17) + v203) == 1)
      {
        ++v204;
        vDSP_svesq((*(v615 + 5) + v201), 1, &v199[v202 / 4], v97[4]);
        v199 = *(v16 + 8);
        v205 = v205 + v199[v202 / 4];
      }

      else
      {
        v199[v202 / 4] = 0.0;
      }

      ++v203;
      v202 += 4;
      v201 += 4 * v614;
    }

    while (v206 != v202);
    v198 = v205 / v204;
    *v195 = v198;
    v96 = v552;
    v15 = v556;
  }

  v207 = v97[4];
  v208 = *(v16 + 28);
  v209 = log10((v198 / v207) + 1.0e-20) * 10.0;
  *(v16 + 16) = v209;
  learnrate_v4::updateStatistics_echo(v207, v548, v542, v16);
  v210 = *(v16 + 24);
  v211 = (v210 + 1.0e-13) / (*(v16 + 36) + 1.0e-13);
  *(v16 + 604) = log10f(v211) * 10.0;
  v212 = v97;
  v213 = *(v15 + 10);
  v214 = *(v15 + 8);
  if (v615[38] < 1)
  {
    v232 = *(v212 + 42);
    if (v232 == 1)
    {
      v233 = *(v16 + 236);
      vDSP_vclr(*(v16 + 160), 1, v233);
      vDSP_vclr(*(v16 + 168), 1, v233);
      vDSP_vclr(*(v16 + 176), 1, v233);
      if (v233 >= 1)
      {
        v234 = *(v16 + 192);
        v235 = *(v16 + 200);
        v236 = *(v16 + 208);
        do
        {
          *v234++ = 1;
          *v235++ = 1;
          *v236++ = 1;
          --v233;
        }

        while (v233);
      }

      v237 = *(v16 + 236);
      if (v237 <= *(v16 + 252))
      {
        v237 = *(v16 + 252);
      }

      if (v237 >= 1)
      {
        memset_pattern16(*(v16 + 184), &unk_1DE09EA50, 4 * v237);
      }

      v238 = v585;
      vDSP_vclr(**(v615 + 7), 1, *(v585 + 19));
      vDSP_vclr(**(v615 + 8), 1, *(v585 + 19));
      vDSP_vclr(*(v15 + 15), 1, *(v585 + 20));
      vDSP_vclr(**(v15 + 26), 1, *(v238 + 32) * *(v238 + 20));
      vDSP_vclr(*(v15 + 27), 1, *(v585 + 20));
      vDSP_vclr(**(v15 + 28), 1, 2 * *(v238 + 20) * *(v238 + 32));
      v232 = *(v585 + 42);
    }

    if (v232 >= 1)
    {
      *(v16 + 568) = 0;
      *(v16 + 148) = 0;
    }

    goto LABEL_275;
  }

  v215 = 0;
  v216 = *(v15 + 30);
  v217 = *(v15 + 31);
  v218 = *(v212 + 32);
  v219 = *(v96 + 9);
  v220 = *(v212 + 15);
  v221 = *(v16 + 260);
  v222 = *(v16 + 264);
  v223 = *(v16 + 268);
  v224 = *(v16 + 272);
  v225 = *(v16 + 276);
  v226 = *(v212 + 9);
  v227 = v212[8];
  v228 = v550;
  v550[15] = 0.0;
  v229 = *(v16 + 232);
  if (v229 <= 1)
  {
    if (v229 != 1)
    {
      goto LABEL_189;
    }

    v215 = 2;
  }

  *(v16 + 232) = v215;
LABEL_189:
  v230 = v227 * v210;
  if (*(v550 + 14) == 1)
  {
    *(v550 + 7) = 0x100000000;
    **(v16 + 192) = 1;
    v231 = 0.0;
  }

  else
  {
    v577 = v222;
    v583 = v223;
    __Nb = v224;
    v596 = v230;
    v600 = v225;
    v571 = v208;
    LODWORD(v514) = v219;
    lmsfilt_v4::runLmsFilter_v4(v15 + 16, v15 + 17, *(v585 + 4), *(v550 + 2), *(v550 + 3), *(v615 + 2), *(v615 + 3), *(v615 + 11), *(v550 + 9), __PAIR64__(v220, v218), v514, *(v615 + 16), v517, SHIDWORD(v517), v520, SHIDWORD(v520), v523);
    dft_v5::dftSynthesis(*(v15 + 34), *(v15 + 35), v585);
    aec_v5::get_EchoEst_Err(v216, v217, (*(v15 + 34) + 4 * v226), (*(v15 + 35) + 4 * v226), *(v15 + 12), v585);
    vDSP_svesq(v217, 1, (v16 + 216), *(v585 + 4));
    v239 = *(v16 + 216);
    *(v16 + 220) = v239;
    v240 = (*v585 * 100.0) * 9.3132e-10;
    if (v239 < v240)
    {
      *(v16 + 216) = v239 + v240;
    }

    LODWORD(__A.realp) = 0;
    vDSP_svesq(v216, 1, &__A, *(v585 + 4));
    v241 = *(v16 + 220) + 1.0e-13;
    v242 = (*&__A.realp + 1.0e-13) / v241;
    v592 = log10f(v242);
    v243 = *(v16 + 36) + 1.0e-13;
    v244 = *(v16 + 28) + 0.000000001;
    v245 = v221;
    v246 = v243 / v244 + v221;
    v247 = log10f(v246) * 10.0;
    v248 = v241 / v244 + v245;
    v249 = log10f(v248) * 10.0;
    v250 = v243 / (*(v16 + 24) + 0.000000001) + v245;
    v251 = log10f(v250);
    v252 = 10.0;
    v253 = v251 * 10.0;
    v254 = *(v16 + 236);
    v256 = *(v16 + 160);
    v255 = *(v16 + 168);
    v258 = *(v16 + 176);
    v257 = *(v16 + 184);
    v260 = *(v16 + 192);
    v259 = *(v16 + 200);
    v261 = v254 - 1;
    if (v254 != 1)
    {
      v262 = 0;
      v263 = *(v16 + 208);
      v264 = v263 + 4 * v261;
      v265 = v254 - 2;
      v266 = v261 - 1;
      v267 = &v259[v261];
      v268 = &v260[v261];
      v269 = &v257[v261];
      v270 = &v258[v261];
      v271 = &v255[v261];
      v272 = &v256[v261];
      do
      {
        v272[v262] = v256[(v265 + v262)];
        v271[v262] = v255[(v265 + v262)];
        v270[v262] = v258[(v265 + v262)];
        v269[v262] = v257[(v265 + v262)];
        v268[v262] = v260[(v265 + v262)];
        v267[v262] = v259[(v265 + v262)];
        *(v264 + 4 * v262) = *(v263 + 4 * (v265 + v262));
      }

      while (v266 + v262--);
    }

    *v256 = v247 - v249;
    *v255 = v247;
    *v258 = v253;
    v274 = *v256;
    v275 = (v577 + *v256) < 0.0;
    v225 = v600;
    v230 = v596;
    if (v596 < v600)
    {
      v275 = 1;
    }

    *v257 = v275;
    *v260 = v274 < v583;
    *v259 = *(v16 + 36) > *(v16 + 220);
    v276 = v253 < __Nb && *(v16 + 16) < -9.0;
    v208 = v571;
    v277 = *(v16 + 208);
    *v277 = v276;
    v278 = *(v16 + 252);
    if (v278 > *(v16 + 236))
    {
      goto LABEL_228;
    }

    if (v278 < 1)
    {
      v282 = 0;
    }

    else
    {
      v279 = 0;
      v280 = *(v16 + 252);
      do
      {
        v281 = *v257++;
        v279 += v281;
        --v280;
      }

      while (v280);
      v282 = v279 != 0;
    }

    v283 = *(v16 + 228);
    if (v283 < 2)
    {
      v282 = 1;
    }

    v284 = !v282 || v283 >= v278;
    if (v284 && *v16 == 1)
    {
      v285 = 4 * *(v96 + 22);
      memcpy(*v96, *v550, v285);
      memcpy(*(v96 + 1), *(v550 + 1), v285);
      memcpy(*(v96 + 2), *(v550 + 2), v285);
      memcpy(*(v96 + 3), *(v550 + 3), v285);
      memcpy(*(v96 + 6), *(v550 + 6), v285);
      *(v96 + 9) = *(v550 + 9);
      *(v16 + 232) = 1;
      v214 = *(v15 + 30);
      v286 = *(v556 + 31);
      v287 = 4 * *(v585 + 34);
      v288 = 4 * *(v585 + 4);
      memcpy(v213, v217, v288);
      memcpy(*(v556 + 2), *(v556 + 32), v287);
      memcpy(*(v556 + 3), *(v556 + 33), v287);
      memcpy(*(v556 + 4), *(v556 + 34), v288);
      memcpy(*(v556 + 5), *(v556 + 35), v288);
      *(v16 + 88) = *v539;
      v96 = v552;
      v289 = 4 * *(v585 + 10);
      memcpy(*(v16 + 72), *(v16 + 296), v289);
      memcpy(*(v16 + 80), *(v16 + 304), v289);
      v252 = 10.0;
      v228 = v550;
      **(v16 + 184) = 1;
      *(v16 + 228) = 0;
      v213 = v286;
      v15 = v556;
    }

    else
    {
LABEL_228:
      v290 = *(v16 + 192);
      v291 = *(v16 + 244);
      if (v291 < 1)
      {
        v292 = 0;
        v228 = v550;
      }

      else
      {
        v292 = 0;
        v293 = *(v16 + 192);
        v294 = *(v16 + 244);
        v228 = v550;
        do
        {
          v295 = *v293++;
          v292 += v295;
          --v294;
        }

        while (v294);
      }

      v296 = *(v16 + 248);
      if (v296 < 1)
      {
        v300 = 0.0;
      }

      else
      {
        v297 = 0;
        v298 = *(v16 + 248);
        do
        {
          v299 = *v290++;
          v297 += v299;
          --v298;
        }

        while (v298);
        v300 = v297 * 1.5;
      }

      v301 = *(v16 + 256);
      if (v301 < 1)
      {
        v302 = 0;
      }

      else
      {
        v302 = 0;
        v303 = *(v16 + 256);
        do
        {
          v304 = *v277++;
          v302 += v304;
          --v303;
        }

        while (v303);
      }

      v305 = v255[1];
      if (*v255 < v305 || v305 < v255[2])
      {
        v306 = *v16 == 1 && v292 == v291;
        v307 = v306 && v302 == v301;
        if (v307 && v300 > v296)
        {
          *(v228 + 15) = 1;
        }
      }
    }

    v231 = v592 * v252;
  }

  v309 = *(v228 + 15);
  if (v309 == 1)
  {
    *(v16 + 224) = 0;
    v310 = 4 * *(v228 + 22);
    memcpy(*v550, *v96, v310);
    memcpy(*(v550 + 1), *(v96 + 1), v310);
    memcpy(*(v550 + 2), *(v96 + 2), v310);
    memcpy(*(v550 + 3), *(v96 + 3), v310);
    memcpy(*(v550 + 6), *(v96 + 6), v310);
    *(v550 + 9) = *(v96 + 9);
    *v539 = *(v16 + 88);
    v311 = 4 * *(v585 + 10);
    memcpy(*(v16 + 296), *(v16 + 72), v311);
    memcpy(*(v16 + 304), *(v16 + 80), v311);
    v228 = v550;
    **(v16 + 184) = 0;
    **(v16 + 192) = 0;
    **(v16 + 200) = 0;
    **(v16 + 208) = 0;
    v312 = *(v16 + 624);
    if (v312 <= 3)
    {
      *(v16 + 624) = v312 + 1;
    }
  }

  else
  {
    if (*v16 != 1)
    {
      goto LABEL_263;
    }

    *(v16 + 224) = *(v16 + 224) + 1.0;
  }

  v309 = *(v228 + 15);
LABEL_263:
  if (v309)
  {
LABEL_275:
    v217 = v213;
    v593 = v214;
    goto LABEL_276;
  }

  v313 = *(v16 + 240);
  if (v313 < 1)
  {
    v314 = 0;
  }

  else
  {
    v314 = 0;
    v315 = *(v16 + 200);
    v316 = *(v16 + 240);
    do
    {
      v317 = *v315++;
      v314 += v317;
      --v316;
    }

    while (v316);
  }

  if (v314 != v313)
  {
    *(v16 + 228) = 0;
    goto LABEL_275;
  }

  *(v16 + 36) = *(v16 + 220);
  if (v230 >= v225 && *v16 == 1)
  {
    ++*(v16 + 228);
  }

  v593 = v216;
  *(v16 + 232) = 1;
  *(v16 + 604) = v231;
LABEL_276:
  v597 = v217;
  __Nc = (v16 + 408);
  dft_v5::dftGenericAnalysis2ndHalf(v548, v546.realp, v546.imagp, v585, 1);
  dft_v5::dftGenericAnalysis2ndHalf_dsc((*(v15 + 4) + 4 * v547), (*(v15 + 5) + 4 * v547), v545, v544, v585);
  v318 = a1[10];
  v319 = v16;
  v321 = *(v15 + 44);
  v320 = *(v15 + 45);
  v322 = *(v15 + 46);
  v323 = *(v585 + 4);
  v324 = *(v319 + 424) - v323;
  v325 = *(v15 + 19);
  __B = *(v15 + 20);
  __Z = v325;
  v621 = *(v15 + 21);
  v601 = *(v319 + 432);
  __srcc = v318;
  v584 = *(v319 + 436);
  v326 = *(v319 + 444);
  v327 = *(v319 + 496);
  v328 = *(v319 + 504);
  v574 = *(v319 + 480);
  v578 = *(v319 + 488);
  LODWORD(v617.realp) = *(v319 + 416);
  v620 = 1.0 - *&v617.realp;
  if (v324 >= 1)
  {
    memmove(v321, v321 + 4 * v323, 4 * v324);
    memmove(v320, v320 + 4 * v323, 4 * v324);
    memmove(v322, v322 + 4 * v323, 4 * v324);
  }

  memcpy(v321 + 4 * v324, *(v556 + 12), 4 * v323);
  memcpy(v320 + 4 * v324, *(v556 + 8), 4 * v323);
  memcpy(v322 + 4 * v324, *(v556 + 10), 4 * v323);
  dft_v5::dftGenericAnalysis2ndHalf(v321, __Z.realp, __Z.imagp, __srcc, 0);
  dft_v5::dftGenericAnalysis2ndHalf(v320, __B.realp, __B.imagp, __srcc, 0);
  realp = v621.realp;
  imagp = v621.imagp;
  vDSP_zvmags(&__Z, 1, v327, 1, v326);
  MEMORY[0x1E12BE940](v327, 1, &v620, realp, 1, v326);
  MEMORY[0x1E12BE940](v328, 1, &v617, imagp, 1, v326);
  MEMORY[0x1E12BE5D0](realp, 1, imagp, 1, v328, 1, v326);
  vDSP_zvcmul(&__Z, 1, &__B, 1, &v621, 1, v326);
  vDSP_zvabs(&v621, 1, v574, 1, v326);
  MEMORY[0x1E12BE940](v574, 1, &v620, realp, 1, v326);
  MEMORY[0x1E12BE940](v578, 1, &v617, imagp, 1, v326);
  MEMORY[0x1E12BE5D0](realp, 1, imagp, 1, v578, 1, v326);
  v619 = 2.2204e-16;
  MEMORY[0x1E12BE8A0](v328, 1, &v619, realp, 1, v326);
  vDSP_vdiv(realp, 1, v578, 1, imagp, 1, v326);
  vDSP_meanv(&imagp[v601], 1, __Nc, v584 - v601 + 1);
  *(v566 + 408) = fmaxf(fminf(*(v566 + 408), 1.0), 0.0);
  dft_v5::dftGenericAnalysis2ndHalf(v322, v621.realp, v621.imagp, __srcc, 0);
  v331 = v621.realp;
  v332 = v621.imagp;
  v333 = __B.realp;
  v334 = __B.imagp;
  v335 = *(v566 + 448);
  v336 = *(v566 + 456);
  v337 = *(v566 + 472);
  v602 = *(v566 + 464);
  v618 = 0;
  v338 = *(v566 + 412);
  v339 = *(v566 + 420);
  v340 = *(v566 + 424);
  v341 = *(v566 + 428);
  __srcd = *(v566 + 440);
  __A = v621;
  vDSP_zvmags(&__A, 1, v336, 1, v340);
  *v336 = *v331 * *v331;
  v336[v340] = *v332 * *v332;
  __A.realp = v333;
  __A.imagp = v334;
  vDSP_zvmags(&__A, 1, v335, 1, v340);
  *v335 = *v333 * *v333;
  v335[v340] = *v334 * *v334;
  learnrate_v3::crossCorrSpec_raw(v336, v337, v335, v602, &v618 + 1, &v618, ((v341 >> 1) + 1));
  v342 = sqrtf(*&v618);
  v343 = (*(&v618 + 1) / v342) / (v342 + v619);
  if (v343 <= 0.001)
  {
    v343 = 0.001;
  }

  *(v566 + 400) = v343;
  *(v566 + 404) = ((1.0 - v338) * v343) + (v338 * *(v566 + 404));
  VPEchoGateV3::GatesmoothPowerSpectrum(v337, v336, __srcd, v339);
  VPEchoGateV3::GatesmoothPowerSpectrum(v602, v335, __srcd, v339);
  *a11 = *(v566 + 408);
  v344 = v585;
  v345 = *v585;
  LODWORD(__Z.realp) = 0;
  LODWORD(__B.realp) = 0;
  v346 = *(v585 + 4);
  v347 = *(v585 + 10);
  v348 = *(v566 + 48);
  __A = v546;
  vDSP_zvmags(&__A, 1, v348, 1, v346);
  *v348 = *v546.realp * *v546.realp;
  v348[v346] = *v546.imagp * *v546.imagp;
  v349 = *(v566 + 64);
  __A.realp = v545;
  __A.imagp = v544;
  vDSP_zvmags(&__A, 1, v349, 1, v346);
  *v349 = *v545 * *v545;
  v349[v346] = *v544 * *v544;
  learnrate_v3::crossCorrSpec_raw(*(v566 + 48), *(v566 + 72), *(v566 + 64), *(v566 + 80), &__Z, &__B, ((v345 >> 1) + 1));
  v350 = sqrtf(*&__B.realp);
  v351 = *(v566 + 24);
  v352 = *(v566 + 136);
  v353 = *(v566 + 132) * v351;
  v354 = *(v566 + 32);
  if (v353 > (v352 * v354))
  {
    v353 = v352 * v354;
  }

  v355 = v353 / v354;
  if (v354 < 9.3132e-19)
  {
    v355 = *(v566 + 136);
  }

  v356 = ((*&__Z.realp / v350) * v355) + ((1.0 - v355) * *(v566 + 88));
  v357 = (v355 * v350) + ((1.0 - v355) * *(v566 + 92));
  if (v357 < 9.3132e-10)
  {
    v357 = 9.3132e-10;
  }

  if (v356 >= (v357 * 0.005))
  {
    v358 = v356;
  }

  else
  {
    v358 = v357 * 0.005;
  }

  if (v358 <= v357)
  {
    v359 = v358;
  }

  else
  {
    v359 = v357;
  }

  *&__B.realp = v350;
  *&__Z.realp = *&__Z.realp / v350;
  *(v566 + 88) = v356;
  *(v566 + 92) = v357;
  if (v356 < (v357 * 0.005) || v358 > v357)
  {
    *(v566 + 88) = v359;
  }

  v361 = v359 / v357;
  v362 = ((v351 * (v361 * 3.0)) + (*(v566 + 4) * 0.0001)) / v354;
  v363 = (*(v566 + 20) * *(v566 + 20)) / ((v354 * v351) + 8.6736e-19);
  if (v362 >= v363)
  {
    v363 = v362;
  }

  if (v363 > 0.5)
  {
    v363 = 0.5;
  }

  *(v566 + 140) = v361;
  *(v566 + 144) = v363;
  v364 = *(v566 + 148);
  v365 = v615;
  v366 = v541;
  v367 = v593;
  if (v364)
  {
    v368 = v556;
    if (v364 != 1)
    {
      goto LABEL_312;
    }

    if (*(v566 + 404) < *(v566 + 392) && *(v566 + 408) < *(v566 + 396))
    {
      *(v566 + 144) = 0;
    }
  }

  else
  {
    v368 = v556;
    if (*(v566 + 152) <= *(v585 + 11) || v361 <= *(v566 + 388))
    {
      goto LABEL_312;
    }

    *(v566 + 148) = 1;
  }

  if (*(v585 + 26) == 3 && v361 > 0.0631)
  {
    *(v566 + 148) = 0;
    vDSP_vclr(**(v615 + 8), 1, *(v585 + 19));
    vDSP_vclr(**(v615 + 7), 1, *(v585 + 19));
    vDSP_vclr(*(v368 + 15), 1, *(v585 + 20));
    vDSP_vclr(**(v368 + 26), 1, *(v585 + 32) * *(v585 + 20));
    vDSP_vclr(*(v368 + 27), 1, *(v585 + 20));
    vDSP_vclr(**(v368 + 28), 1, 2 * *(v585 + 20) * *(v585 + 32));
  }

LABEL_312:
  v369 = v566;
  learnrate_v4::getAdaptationRate4_v6(v566);
  VPEchoGateV3::GatesmoothPowerSpectrum(*(v369 + 72), *(v369 + 48), v347, *(v369 + 128));
  VPEchoGateV3::GatesmoothPowerSpectrum(*(v369 + 80), *(v369 + 64), v347, *(v369 + 128));
  if (a10)
  {
    v371 = *(v566 + 36);
    if (v533)
    {
      v572 = v208;
      v372 = v23;
      v373 = 0;
      LOBYTE(v374) = 0;
      v375 = 1;
      v376 = v552;
      v552 = v529;
      v377 = v566;
      goto LABEL_396;
    }

LABEL_408:
    v455 = v537;
    v454 = a8;
    v456 = v536;
    v463 = v543;
    goto LABEL_416;
  }

  v378 = *(v566 + 104);
  v379 = *(v585 + 11);
  v380 = v379;
  if (*(v585 + 25))
  {
    v381 = -0.1;
    v382 = v552;
  }

  else
  {
    v382 = v552;
    if (*(v566 + 148))
    {
      v381 = flt_1DE09B188[*(v566 + 404) > 2.6];
    }

    else
    {
      v381 = 0.65;
    }
  }

  v383 = *(v566 + 120);
  v384 = *(v615 + 13);
  v385 = *(v585 + 4);
  v386 = *(v585 + 39);
  v387 = *(v566 + 632);
  __Cb = *(v615 + 16);
  v388 = v615[38];
  v389 = v585[6];
  v390 = *(v382 + 9);
  LODWORD(__A.realp) = 0;
  LODWORD(__Z.realp) = 0;
  LODWORD(v621.realp) = 1065353216;
  if (v379 == 1)
  {
    vDSP_vfill(&v621, v378, 1, v386);
    *a3 = v389 * 0.5;
    goto LABEL_372;
  }

  if (v379 <= 1)
  {
    v391 = 0;
    v395 = *v384;
    v394 = v384;
  }

  else
  {
    v391 = 0;
    v392 = *v378;
    for (i = 1; i != v379; ++i)
    {
      if (v378[i] >= v392)
      {
        v391 = i;
        v392 = v378[i];
      }
    }

    v394 = &v384[v391];
    v395 = *v394;
    if (v391 >= 1)
    {
      v396 = &v384[v391];
      v397 = *(v396 - 1);
      if (v391 == 1)
      {
        v398 = *(v396 - 1);
      }

      else
      {
        v398 = *(v396 - 2);
      }

      goto LABEL_332;
    }
  }

  v397 = v395;
  v398 = v395;
LABEL_332:
  *&v370 = v395;
  if (v391 < v380 - 1)
  {
    *&v370 = v394[1];
  }

  LODWORD(v399) = v370;
  if (v391 < v380 - 2)
  {
    v399 = v394[2];
  }

  if (fabsf(v395 - v399) <= 10.0)
  {
    v400.i64[0] = __PAIR64__(LODWORD(v399), LODWORD(v397));
    v400.i64[1] = __PAIR64__(LODWORD(v397), LODWORD(v395));
    v401 = v370;
    *&v401.i32[1] = v395;
    v402 = vzip1q_s32(v401, v401);
    v402.i32[2] = v370;
    v403 = vabds_f32(v398, v397);
    v404 = fabsf(v398 - v395);
    v405 = (vaddvq_s32(vandq_s8(vcgtq_f32(vabsq_f32(vsubq_f32(v400, v402)), xmmword_1DE09CC90), xmmword_1DE098920)) & 0xF) == 0 && v404 <= 10.0;
    if (v405 && v403 <= 8.0)
    {
      v554 = v383;
      v551 = v388;
      v558 = v387;
      __nb = v380;
      LODWORD(__B.realp) = 0;
      __srce = *(v382 + 18);
      v579 = v390;
      v603 = *(v382 + 19);
      if (*(v382 + 17) == 1 && v555 >= 1)
      {
        v407 = (v380 - (v603 + 1));
        v408 = 4 * v380;
        v409 = v603 + 1;
        v410 = v378;
        v411 = v383;
        v412 = v555;
        do
        {
          if (__srce >= 1)
          {
            vDSP_vfill(&__B, v410, 1, __srce);
            vDSP_vfill(&__B, v411, 1, __srce);
          }

          if (v407 >= 1)
          {
            vDSP_vfill(&__B, &v410[v409], 1, v407);
            vDSP_vfill(&__B, &v411[v409], 1, v407);
          }

          v411 = (v411 + v408);
          v410 = (v410 + v408);
          --v412;
        }

        while (v412);
      }

      v413 = *v552;
      v414 = *(v552 + 1);
      ++learnrate_v4::adjustProp_v4(float *,float *,float *,float *,LMS_FILTER4 *,float *,int,float,int,int,int,float,int,int,float *,BOOL *,int)::count;
      v415 = 0.0;
      v416 = 0.0;
      v417 = v555;
      v418 = __srce;
      v365 = v615;
      if (v555 >= 1)
      {
        *v549 = v378;
        v419 = 0;
        v580 = 4 * v579;
        v420 = v558 + 4 * __srce;
        v575 = 4 * __nb;
        v421 = &v554[__srce];
        v422 = 0.0;
        do
        {
          if (v418 <= v603)
          {
            v423 = 0;
            v424 = 4 * __srce * v385;
            do
            {
              vDSP_svesq(&v413[v424], 1, &__A, v385);
              vDSP_svesq((v414 + v424), 1, &__Z, v385);
              v425 = *&__A.realp + *&__Z.realp;
              v421[v423] = (*&__A.realp + *&__Z.realp) + 1.0e-20;
              v426 = sqrtf((1.0 / v385) * v425) + 0.02;
              *(v420 + 4 * v423) = v426;
              if (!v419)
              {
                v416 = v416 + ((__srce + v423) * v425);
                *&__B.realp = v425 + *&__B.realp;
              }

              v427 = v422 + v426;
              if (*(v419 + __Cb))
              {
                v422 = v427;
              }

              v424 += 4 * v385;
              ++v423;
            }

            while (__srce + ~v603 + v423);
          }

          v419 = (v419 + 1);
          v414 += v580;
          v413 += v580;
          v420 += v575;
          v421 = (v421 + v575);
          v418 = __srce;
        }

        while (v419 != v555);
        v415 = v422 + v422;
        v365 = v615;
        v344 = v585;
        v417 = v555;
        v378 = *v549;
      }

      v428 = *&__B.realp;
      *a2 = __B.realp;
      v429 = v558;
      v430 = ((__nb + -0.5) - (v416 * (1.0 / (v428 + 1.0e-20)))) * v389;
      if (v430 < 0.0)
      {
        v430 = 0.0;
      }

      *a3 = v430;
      if (v417 >= 1)
      {
        v431 = 0;
        v432 = (v381 + 1.0) / v415;
        v433 = 4 * __nb;
        do
        {
          if (v418 <= v603)
          {
            v434 = v418;
            v435 = v603 - __srce + 1;
            do
            {
              v378[v434] = ((1.0 - v381) / ((v551 * __nb) + (v551 * __nb))) + (v432 * *(v429 + v434 * 4));
              ++v434;
              --v435;
            }

            while (v435);
          }

          ++v431;
          v378 = (v378 + v433);
          v429 += v433;
        }

        while (v431 != v417);
      }
    }
  }

LABEL_372:
  __Cc = *(v344 + 14);
  v436 = *(v344 + 10);
  v437 = *(v344 + 11);
  v438 = *(v344 + 32);
  LODWORD(__A.realp) = 0;
  v439 = v365[12];
  v440 = *(v566 + 96);
  v441 = *(v566 + 104);
  vDSP_vclr(v440, 1, v436);
  if (v438 >= 1)
  {
    for (j = 0; j != v438; ++j)
    {
      if (*(*(v615 + 16) + j) == 1 && v437 >= 1)
      {
        v444 = 0;
        do
        {
          LODWORD(__A.realp) = *(v441 + v444);
          if (*&__A.realp != 0.0)
          {
            MEMORY[0x1E12BE8F0](&v439[4 * *(*(v615 + 11) + v444) * v436], 1, &__A, v440, 1, v440, 1, v436);
          }

          v444 += 4;
        }

        while (4 * v437 != v444);
      }

      v439 += 4 * __Cc;
      v441 += 4 * v437;
    }
  }

  LODWORD(__Z.realp) = 1065353216;
  vDSP_svdiv(&__Z, v440, 1, v440, 1, v436);
  v365 = v615;
  v344 = v585;
  v366 = v541;
  v368 = v556;
  v367 = v593;
  v217 = v597;
  if (v615[38] < 1)
  {
    goto LABEL_407;
  }

  v373 = *(v566 + 568) < *(v566 + 552) || *(v566 + 148) == 0;
  v445 = *(v566 + 404) > 0.15 && *__Nc > 0.65;
  v374 = v445;
  if (*(v585 + 26) == 3)
  {
    v374 = *__Nc > 0.9 || v445;
  }

  if ((v533 & (v373 | v374)) != 1)
  {
LABEL_407:
    learnrate_v4::adaptLmsFilter_v4(v546.realp);
    v371 = *(v566 + 36);
    goto LABEL_408;
  }

  v572 = v208;
  v372 = v23;
  v376 = v529;
  a1[2] = v529;
  a1[4] = v552;
  v377 = v566;
  learnrate_v4::adaptLmsFilter_v4(v546.realp);
  v371 = *(v566 + 36);
  v375 = !v445;
LABEL_396:
  v446 = v556;
  v448 = *(v556 + 36);
  v447 = *(v556 + 37);
  *(v377 + 576) = 0;
  v449 = *(v377 + 40) + 1.0e-20;
  *(v377 + 540) = log10f(v449 / (*(v377 + 28) + 1.0e-20)) * 10.0;
  *(v377 + 548) = 0;
  *(&v510 + 1) = v585[15];
  *&v514 = v376[9];
  LODWORD(v510) = v555;
  lmsfilt_v4::runLmsFilter_v4(v446 + 16, v446 + 17, *(v585 + 4), *(v376 + 2), *(v376 + 3), *(v615 + 2), *(v615 + 3), *(v615 + 11), *(v376 + 9), v510, v514, *(v615 + 16), v517, SHIDWORD(v517), v520, SHIDWORD(v520), v523);
  dft_v5::dftSynthesis(*(v446 + 34), *(v446 + 35), v585);
  aec_v5::get_EchoEst_Err(v448, v447, (*(v446 + 34) + 4 * v547), (*(v446 + 35) + 4 * v547), *(v446 + 12), v585);
  v450 = *(v585 + 4);
  vDSP_svesq(v447, 1, (v377 + 512), v450);
  vDSP_svesq(v448, 1, (v377 + 564), v450);
  v451 = *(v377 + 512);
  *(v377 + 544) = log10f((v451 + 1.0e-20) / (*(v377 + 28) + 1.0e-20)) * 10.0;
  v452 = log10f((v451 + 1.0e-20) / v449) * -10.0;
  *(v377 + 596) = v452;
  v453 = *(v377 + 40);
  *(v377 + 40) = v451;
  if (*(v377 + 148) != 1)
  {
    v552 = v376;
    v454 = a8;
LABEL_410:
    v456 = v536;
    v455 = v537;
    goto LABEL_412;
  }

  v455 = v537;
  v454 = a8;
  v456 = v536;
  if (*(v377 + 568) > *(v377 + 552) && *(v377 + 540) < -20.0 && v452 < -2.0)
  {
    *(v377 + 580) = 1;
    v458 = *(v585 + 12);
    if (v458 <= 1)
    {
      v459 = 1;
    }

    else
    {
      v459 = *(v585 + 12);
    }

    v457 = v615[18] - 1;
    LODWORD(v460) = v457 + v458 + v458 * (((v457 & ~(v457 >> 31)) - (v457 + (v457 >> 31))) / v459 + (v457 >> 31));
    do
    {
      v460 = (v460 - v458);
    }

    while (v460 >= v458);
    v615[19] = v460;
    dft_v3::GetIndexSequence(*(v615 + 11), v460, *(v585 + 11), v458);
    *(&v511 + 1) = v585[15];
    *&v515 = v376[9];
    v461 = v556;
    LODWORD(v511) = v555;
    lmsfilt_v4::runLmsFilter_v4(v556 + 16, v556 + 17, *(v585 + 4), *(v376 + 2), *(v376 + 3), *(v615 + 2), *(v615 + 3), *(v615 + 11), *(v376 + 9), v511, v515, *(v615 + 16), v518, SHIDWORD(v518), v521, SHIDWORD(v521), v524);
    dft_v5::dftSynthesis(*(v461 + 34), *(v461 + 35), v585);
    aec_v5::get_EchoEst_Err(v448, v447, (*(v461 + 34) + 4 * v547), (*(v461 + 35) + 4 * v547), *(v461 + 13), v585);
    LODWORD(__A.realp) = 0;
    vDSP_svesq(v447, 1, &__A, v614);
    v462 = log10f((*&__A.realp + 1.0e-20) / (*(v377 + 516) + 1.0e-20)) * -10.0;
    *(v377 + 600) = v462;
    if (v462 >= -0.5)
    {
      v552 = v376;
    }

    else
    {
      *(v377 + 576) = 1;
      a1[2] = v552;
      a1[4] = v376;
      *(v377 + 40) = v453;
      *(v377 + 512) = v453;
    }

    v454 = a8;
    v366 = v541;
    goto LABEL_410;
  }

  v552 = v376;
LABEL_412:
  v368 = v556;
  *(v377 + 584) = 0;
  if (*(v377 + 580))
  {
LABEL_413:
    *(v377 + 588) = 1;
    v365 = v615;
    v344 = v585;
    goto LABEL_414;
  }

  if (v373)
  {
    if (*(v377 + 404) <= 0.02 && *(v585 + 26) != 3)
    {
      goto LABEL_413;
    }
  }

  else if ((v374 & 1) == 0)
  {
    goto LABEL_413;
  }

  *(v377 + 584) = 1;
  v489 = a1[5];
  if (*(v377 + 588) == 1)
  {
    *(v377 + 588) = 0;
    v490 = v552;
    v491 = 4 * *(v489 + 22);
    memcpy(*v489, *v552, v491);
    memcpy(*(v489 + 1), *(v552 + 1), v491);
    memcpy(*(v489 + 2), *(v552 + 2), v491);
    memcpy(*(v489 + 3), *(v552 + 3), v491);
    memcpy(*(v489 + 6), *(v552 + 6), v491);
    v492 = *(v552 + 9);
    *(v489 + 9) = v492;
  }

  else
  {
    v492 = *(v489 + 9);
    v490 = v552;
  }

  *(&v512 + 1) = v585[15];
  *&v515 = v490[9];
  v493 = v556;
  LODWORD(v512) = v555;
  lmsfilt_v4::runLmsFilter_v4(v556 + 16, v556 + 17, *(v585 + 4), *(v489 + 2), *(v489 + 3), *(v615 + 2), *(v615 + 3), *(v615 + 11), v492, v512, v515, *(v615 + 16), v518, SHIDWORD(v518), v521, SHIDWORD(v521), v524);
  dft_v5::dftSynthesis(*(v493 + 34), *(v493 + 35), v585);
  aec_v5::get_EchoEst_Err(v448, v447, (*(v493 + 34) + 4 * v547), (*(v493 + 35) + 4 * v547), *(v493 + 12), v585);
  v494 = (v377 + 560);
  v495 = *(v585 + 4);
  v496 = 1;
  vDSP_svesq(v447, 1, (v377 + 520), v495);
  vDSP_svesq(v448, 1, (v377 + 560), v495);
  v497 = *(v377 + 520);
  v498 = v497 + 1.0e-20;
  v499 = log10(v498 / (*(v377 + 36) + 1.0e-20)) * 10.0;
  *(v377 + 524) = v499;
  v500 = log10(v498 / (*(v377 + 220) + 1.0e-20)) * 10.0;
  *(v377 + 528) = v500;
  *(v377 + 548) = 0;
  v501 = 0.0;
  if (v499 < -1.0 && v500 < -1.0)
  {
    if (*(v539 + 248) >= 0.0 || *(v377 + 536) >= 0.0 || (*v494 / v372) <= 0.0000001 || *v494 >= (*(v377 + 24) * 10.0))
    {
      v496 = 1;
    }

    else
    {
      v496 = 0;
      *(v377 + 548) = 1065353216;
      v501 = 1.0;
    }
  }

  if (*(v585 + 26) == 3 && v499 < -0.25 && v501 == 0.0 && v500 < -0.25 && *(v539 + 248) < 0.0 && *(v377 + 536) < 0.0)
  {
    *(v377 + 548) = 1065353216;
LABEL_470:
    v502 = (*(v377 + 560) + 1.0e-13) / (v497 + 1.0e-13);
    *(v377 + 604) = log10f(v502) * 10.0;
    *(v377 + 592) = 1;
    v593 = v448;
    v597 = v447;
    v371 = v497;
    goto LABEL_471;
  }

  if (v501 == 1.0)
  {
    goto LABEL_470;
  }

LABEL_471:
  if (v499 > 4.0)
  {
    v23 = v372;
    if (((v375 | v496) & 1) == 0)
    {
      v503 = 4 * *(v489 + 22);
      memcpy(*v489, *v552, v503);
      memcpy(*(v489 + 1), *(v552 + 1), v503);
      memcpy(*(v489 + 2), *(v552 + 2), v503);
      memcpy(*(v489 + 3), *(v552 + 3), v503);
      memcpy(*(v489 + 6), *(v552 + 6), v503);
      *(v489 + 9) = *(v552 + 9);
    }

    v365 = v615;
    v344 = v585;
    v455 = v537;
    v454 = a8;
    v456 = v536;
    v368 = v556;
    v463 = v543;
    v367 = v593;
    v217 = v597;
    goto LABEL_415;
  }

  learnrate_v4::updateStatistics_echo(*(v585 + 4), v447, v448, v377);
  v504 = v447;
  v344 = v585;
  dft_v5::dftGenericAnalysis2ndHalf(v504, v546.realp, v546.imagp, v585, 1);
  v368 = v556;
  dft_v5::dftGenericAnalysis2ndHalf_dsc((*(v556 + 34) + 4 * v547), (*(v556 + 35) + 4 * v547), v545, v544, v585);
  v505 = *(v377 + 144) * 2.5;
  v506 = 0.5;
  v507 = v505 <= 0.5;
  v508 = v505 < 1.0 || v505 <= 0.5;
  if (v505 >= 1.0)
  {
    v507 = 1;
  }

  if (!v508)
  {
    v506 = 1.0;
  }

  if (v507)
  {
    v505 = v506;
  }

  *(v377 + 140) = fminf(*(v377 + 140) * 2.5, 1.0);
  *(v377 + 144) = v505;
  learnrate_v4::getAdaptationRate4_v6(v377);
  v365 = v615;
  learnrate_v4::adaptLmsFilter_v4(v546.realp);
  v455 = v537;
  v454 = a8;
  v456 = v536;
LABEL_414:
  v463 = v543;
  v367 = v593;
  v217 = v597;
  v23 = v372;
LABEL_415:
  v208 = v572;
LABEL_416:
  v464 = *v463;
  v465 = *v463 * 3.0;
  if (v371 > v465)
  {
    v217 = *(v368 + 12);
  }

  if (*(v344 + 31) >= 1)
  {
    if (*(v566 + 40) <= v465 || *(v566 + 604) <= -3.0 || *(v566 + 16) <= -70.0 || (v466 = *(v566 + 24), v466 <= (v464 * 8.0)) || (v208 / v23) <= 0.00000001 || *(v566 + 624) < 2)
    {
      *(v566 + 616) = 0;
    }

    else
    {
      v467 = v344[6];
      v468 = v467 + *(v566 + 616);
      *(v566 + 616) = v468;
      if (v466 > (v464 * 32.0))
      {
        *(v566 + 620) = v467 + *(v566 + 620);
      }

      if (v468 > 100.0)
      {
        v469 = v367;
        LODWORD(__A.realp) = 1056964608;
        if (*(v566 + 620) > 100.0)
        {
          LODWORD(__A.realp) = 1048576000;
        }

        v470 = v552;
        v471 = *(v552 + 22);
        MEMORY[0x1E12BE940](*v552, 1, &__A, *v552, 1, v471);
        MEMORY[0x1E12BE940](*(v470 + 1), 1, &__A, *(v470 + 1), 1, v471);
        MEMORY[0x1E12BE940](*(v470 + 2), 1, &__A, *(v470 + 2), 1, v471);
        MEMORY[0x1E12BE940](*(v470 + 3), 1, &__A, *(v470 + 3), 1, v471);
        MEMORY[0x1E12BE940](*(v470 + 6), 1, &__A, *(v470 + 6), 1, v471);
        *(v566 + 616) = 0;
        v455 = v537;
        v454 = a8;
        v456 = v536;
        v367 = v469;
      }
    }
  }

  *v455 = *v367 + (v366[4] * 0.9);
  *v454 = *v217 + (v366[3] * 0.9);
  if (v456 > 1)
  {
    v472 = v456 - 1;
    v473 = v367 + 1;
    v474 = (v217 + 1);
    v475 = v455 + 1;
    v476 = v454 + 1;
    do
    {
      v477 = *v473++;
      *v475 = v477 + (*(v475 - 1) * 0.9);
      ++v475;
      v478 = *v474++;
      *v476 = v478 + (*(v476 - 1) * 0.9);
      ++v476;
      --v472;
    }

    while (v472);
  }

  v479 = 4 * v456 - 4;
  v366[4] = *(v455 + v479);
  v366[3] = *(v454 + v479);
  *a4 = *(v566 + 148);
  *a5 = *(v566 + 376);
  *a9 = *(v566 + 604);
  *a12 = *(v566 + 140);
  v481 = *(v344 + 12);
  if (v481 <= 1)
  {
    v482 = 1;
  }

  else
  {
    v482 = *(v344 + 12);
  }

  v480 = *(v365 + 18) + 1;
  v483 = v480 + v481 + v481 * (((v480 & ~(v480 >> 31)) - (v480 + (v480 >> 31))) / v482 + (v480 >> 31));
  do
  {
    v483 -= v481;
  }

  while (v483 >= v481);
  *(v365 + 18) = v483;
  v484 = *(v365 + 20);
  v485 = v484 + 1;
  v486 = (((v484 + 1) & ~((v484 + 1) >> 31)) - (v484 + 1 + ((v484 + 1) >> 31)) + 2 * ((v484 + 1) >> 31)) & 0xFFFFFFFE;
  v487 = v484 + v486;
  v488 = v486 + v485;
  if (v488 >= 1)
  {
    v488 = 1;
  }

  *(v365 + 20) = v487 - ((v487 - v488 + 2) & 0xFFFFFFFE) + 1;
}

uint64_t AUMozartCompressorSingleBand::SupportedNumChannels(AUMozartCompressorSingleBand *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMozartCompressorSingleBand::SupportedNumChannels(AUChannelInfo const**)::kSupportedNumChannels;
  }

  return 32;
}

uint64_t AUMozartCompressorSingleBand::SetProperty(AUMozartCompressorSingleBand *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  if (a2 == 6625 && a3 == 0)
  {
    v10 = 0;
    v11 = *a5;
    v12 = this + 528;
    do
    {
      v13 = *&v12[v10];
      if (v13)
      {
        DspLib::MozartCompressor::Algorithm::setExcludeChannelMask(v13, v11);
      }

      v10 += 56;
    }

    while (v10 != 1008);
    return 0;
  }

  else
  {

    return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t AUMozartCompressorSingleBand::GetProperty(AUMozartCompressorSingleBand *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  if (a2 != 6625 || a3 != 0)
  {
    return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
  }

  v8 = *(this + 66);
  if (v8)
  {
    LODWORD(v8) = *(v8 + 1276);
  }

  *a5 = v8;
  return 0;
}

uint64_t AUMozartCompressorSingleBand::GetPropertyInfo(AUMozartCompressorSingleBand *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 6625 || a3 != 0)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  *a6 = 1;
  *a5 = 4;
  return 0;
}

uint64_t AUMozartCompressorSingleBand::Reset(AUMozartCompressorSingleBand *this)
{
  if (*(this + 17) == 1)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 1824));
    for (i = 0; i != 1008; i += 56)
    {
      v3 = *(this + i + 528);
      if (v3)
      {
        DspLib::MozartCompressor::Algorithm::clearAudioBuffers(v3);
      }
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 1824));
  }

  return 0;
}

void AUMozartCompressorSingleBand::~AUMozartCompressorSingleBand(AUMozartCompressorSingleBand *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

void AUSoundIsolationGraphAdapter_v1::CreateProcessingAUs(std::string *this, std::vector<std::string> *a2, int a3, uint64_t a4, int a5, unsigned int a6, int a7, uint64_t a8, int a9, int a10)
{
  v12 = this;
  v48 = *MEMORY[0x1E69E9840];
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a4, *(a4 + 8));
  }

  else
  {
    *this = *a4;
  }

  if ((*(a8 + 12) & 0x20) != 0)
  {
    v13 = *(a8 + 28);
  }

  else
  {
    v13 = 1;
  }

  v44 = v12;
  if (a10 != 1)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_33600);
    }

    v20 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *__p = 136316418;
      *&__p[4] = "AUSoundIsolation_v1_GraphAdapter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 307;
      *&__p[18] = 1024;
      *&__p[20] = a10;
      *&__p[24] = 1024;
      *&__p[26] = a6;
      *&__p[30] = 1024;
      *v46 = v13;
      *&v46[4] = 1024;
      *&v46[6] = a9;
      _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "%s:%i processing AUs: minibatch version (minibatch > 1) (batch size %u, numIOchannels %u, numInternalIOchannels %u, and block size %u)", __p, 0x2Au);
    }

    std::vector<std::string>::resize(a2 + 1, 1uLL);
    std::to_string(__p, 0);
    v21 = std::string::insert(__p, 0, "processingAU_", 0xDuLL);
    v22 = v21->__r_.__value_.__r.__words[0];
    __str.__r_.__value_.__r.__words[0] = v21->__r_.__value_.__l.__size_;
    *(__str.__r_.__value_.__r.__words + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    begin = a2[1].__begin_;
    if (SHIBYTE(begin->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(begin->__r_.__value_.__l.__data_);
    }

    begin->__r_.__value_.__r.__words[0] = v22;
    begin->__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
    *(&begin->__r_.__value_.__r.__words[1] + 7) = *(__str.__r_.__value_.__r.__words + 7);
    *(&begin->__r_.__value_.__s + 23) = v23;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    DSPGraph::Graph::add();
    v25 = *(a8 + 12);
    v26 = *(a8 + 32);
    if ((v25 & 0x20) != 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = *(a8 + 28);
      if (!v27)
      {
        v28 = (v26 + 7) >> 3;
LABEL_33:
        if ((v25 & 0x20) != 0)
        {
          v29 = 1;
        }

        else
        {
          v29 = a6;
        }

        *__p = *a8;
        *&__p[8] = *(a8 + 8);
        *&__p[12] = v25;
        *&__p[16] = v28 * v29;
        *&__p[20] = 1;
        *&__p[24] = v28 * v29;
        *&__p[28] = a6;
        *v46 = v26;
        *&v46[8] = a9;
        DSPGraph::Graph::connect();
        std::string::operator=(v12, a2[1].__begin_);
        goto LABEL_59;
      }
    }

    v28 = *(a8 + 24) / v27;
    goto LABEL_33;
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_33600);
  }

  v14 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136316418;
    *&__p[4] = "AUSoundIsolation_v1_GraphAdapter.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 264;
    *&__p[18] = 1024;
    *&__p[20] = 1;
    *&__p[24] = 1024;
    *&__p[26] = a6;
    *&__p[30] = 1024;
    *v46 = v13;
    *&v46[4] = 1024;
    *&v46[6] = a9;
    _os_log_debug_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, "%s:%i processing AUs: default (minibatch = 1) (batch size %u, numIOchannels %u, numInternalIOchannels %u, and block size %u)", __p, 0x2Au);
  }

  if (v13 != 1 && v13 != a6)
  {
    __assert_rtn("CreateProcessingAUs", "AUSoundIsolation_v1_GraphAdapter.cpp", 267, "(numInternalIOChannels == 1 || numInternalIOChannels == numIOChannels) && number of internal IO channels must be equal to one or the same number of IO channels (when internal batch size = 1)");
  }

  v15 = a6 / v13;
  if (v15 <= 1)
  {
    goto LABEL_44;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "inputSplitter");
  std::string::basic_string[abi:ne200100]<0>(__p, "split");
  DSPGraph::NewBoxRegistry::newBox();
  DSPGraph::Graph::add();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v16 = *(a8 + 12);
  v17 = *(a8 + 32);
  if ((v16 & 0x20) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = *(a8 + 28);
    if (!v18)
    {
      v19 = (v17 + 7) >> 3;
      goto LABEL_39;
    }
  }

  v19 = *(a8 + 24) / v18;
LABEL_39:
  if ((v16 & 0x20) != 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = a6;
  }

  *__p = *a8;
  *&__p[8] = *(a8 + 8);
  *&__p[12] = v16;
  *&__p[16] = v19 * v30;
  *&__p[20] = 1;
  *&__p[24] = v19 * v30;
  *&__p[28] = a6;
  *v46 = v17;
  *&v46[8] = a9;
  DSPGraph::Graph::connect();
  std::string::operator=(v12, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_44:
  std::vector<std::string>::resize(a2 + 1, v15);
  if (v13 <= a6)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      std::to_string(__p, v32);
      v33 = std::string::insert(__p, 0, "processingAU_", 0xDuLL);
      v34 = v33->__r_.__value_.__r.__words[0];
      __str.__r_.__value_.__r.__words[0] = v33->__r_.__value_.__l.__size_;
      *(__str.__r_.__value_.__r.__words + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
      v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v36 = &a2[1].__begin_[v31];
      if (SHIBYTE(v36->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36->__r_.__value_.__l.__data_);
      }

      v36->__r_.__value_.__r.__words[0] = v34;
      v36->__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
      *(&v36->__r_.__value_.__r.__words[1] + 7) = *(__str.__r_.__value_.__r.__words + 7);
      *(&v36->__r_.__value_.__s + 23) = v35;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v12 = v44;
      DSPGraph::Graph::add();
      v37 = *(a8 + 16);
      *__p = *a8;
      *&__p[16] = v37;
      *v46 = *(a8 + 32);
      *&v46[8] = a9;
      DSPGraph::Graph::connect();
      ++v32;
      ++v31;
    }

    while (v32 < v15);
  }

  if (v15 == 1)
  {
    std::string::operator=(v12, a2[1].__begin_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "outputJoiner");
    std::string::basic_string[abi:ne200100]<0>(__p, "join");
    DSPGraph::NewBoxRegistry::newBox();
    DSPGraph::Graph::add();
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v38 = 0;
    v39 = 0;
    do
    {
      v40 = *(a8 + 16);
      *__p = *a8;
      *&__p[16] = v40;
      *v46 = *(a8 + 32);
      *&v46[8] = a9;
      DSPGraph::Graph::connect();
      ++v39;
      v38 += 24;
    }

    while (a6 != v39);
    std::string::operator=(v12, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

LABEL_59:
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_33600);
  }

  v41 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    if ((v12->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = v12;
    }

    else
    {
      v42 = v12->__r_.__value_.__r.__words[0];
    }

    *__p = 136315650;
    *&__p[4] = "AUSoundIsolation_v1_GraphAdapter.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 325;
    *&__p[18] = 2080;
    *&__p[20] = v42;
    _os_log_debug_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_DEBUG, "%s:%i processing section output: %s", __p, 0x1Cu);
  }
}

void sub_1DE04E0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___Z22getAUSoundIsolationLogv_block_invoke_33611()
{
  result = os_log_create("com.apple.coreaudio", "AUSoundIsolation");
  getAUSoundIsolationLog(void)::gLog = result;
  return result;
}

void AUSoundIsolationGraphAdapter_v1::CreateBypassGraph()
{
  v4 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_33600);
  }

  v0 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUSoundIsolation_v1_GraphAdapter.cpp";
    v2 = 1024;
    v3 = 449;
    _os_log_debug_impl(&dword_1DDB85000, v0, OS_LOG_TYPE_DEBUG, "%s:%i create bypass graph", buf, 0x12u);
  }

  operator new();
}

void sub_1DE04E5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  DSPGraph::NewBoxRegistry::~NewBoxRegistry(&a42);
  *v42 = 0;
  (*(*v43 + 8))(v43);
  _Unwind_Resume(a1);
}

uint64_t AUMultiBandDynamicsProcessorV2::GetScopeExtended(AUMultiBandDynamicsProcessorV2 *this, int a2)
{
  if (a2 == 4)
  {
    return this + 1320;
  }

  else
  {
    return 0;
  }
}

uint64_t AUMultiBandDynamicsProcessorV2::ValidFormat(AUMultiBandDynamicsProcessorV2 *this, unsigned int a2, int a3, const AudioStreamBasicDescription *a4)
{
  mChannelsPerFrame = a4->mChannelsPerFrame;
  v5 = (a4->mFormatFlags >> 5) & 1;
  if (mChannelsPerFrame == 1)
  {
    v5 = 1;
  }

  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = mChannelsPerFrame >= 9;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t AUMultiBandDynamicsProcessorV2::SupportedNumChannels(AUMultiBandDynamicsProcessorV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMultiBandDynamicsProcessorV2::SupportedNumChannels(AUChannelInfo const**)::chans;
  }

  return 7;
}

double AUMultiBandDynamicsProcessorV2::GetTailTime(AudioUnit *this)
{
  v4 = 0.05;
  outData = 0.05;
  ioDataSize = 8;
  AudioUnitGetProperty(this[102], 0x14u, 0, 0, &outData, &ioDataSize);
  AudioUnitGetProperty(this[86], 0x14u, 0, 0, &v4, &ioDataSize);
  return outData + outData + v4;
}

void AUMultiBandDynamicsProcessorV2::GetLatency(AUMultiBandDynamicsProcessorV2 *this)
{
  if (*(this + 17) == 1 && (*(this + 1256) & 1) == 0)
  {
    v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    ausdk::AUElement::GetParameter(v2, 0xDDu);
    if (*(this + 216))
    {
      v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v5)
      {
        ausdk::AUElement::GetParameter(v4, 0x17u);
        v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v7)
        {
          ausdk::AUElement::GetParameter(v6, 0x18u);
          return;
        }
      }

LABEL_9:
      abort();
    }
  }
}

uint64_t AUMultiBandDynamicsProcessorV2::CopyClumpName(AUMultiBandDynamicsProcessorV2 *this, int a2, int a3, unsigned int a4, __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if ((a3 - 1) > 7)
  {
    return 4294956418;
  }

  v7 = off_1E86720C0[a3 - 1];
  CFRetain(v7);
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::SaveExtendedScopes(AUMultiBandDynamicsProcessorV2 *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUMultiBandDynamicsProcessorV2::GetParameterInfo(AUMultiBandDynamicsProcessorV2 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  ioDataSize = 104;
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  if (a3 > 0x257)
  {
    return 4294956418;
  }

  v6 = a3 / 0x64;
  v7 = a3 % 0x64;
  if (a3 <= 0x63)
  {
    Property = 4294956418;
    v8 = @"Crossover 1";
    switch(v7)
    {
      case 0u:
        buffer->cfNameString = @"Volume";
        buffer->flags = -939524096;
        CFStringGetCString(@"Volume", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        goto LABEL_30;
      case 1u:
        buffer->cfNameString = @"Speaker Trim";
        buffer->flags = -939524096;
        CFStringGetCString(@"Speaker Trim", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        v23 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        __asm { FMOV            V0.2S, #-20.0 }

        v24 = -_D0;
        goto LABEL_38;
      case 2u:
        v22 = @"Allow Speaker Protection";
        goto LABEL_35;
      case 3u:
        v22 = @"Enable Speaker Protection";
LABEL_35:
        buffer->cfNameString = v22;
        buffer->flags = -939524096;
        CFStringGetCString(v22, buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 8;
        flags = buffer->flags;
        *&buffer->unit = 2;
        buffer->maxValue = 0.0;
        goto LABEL_36;
      case 4u:
        buffer->cfNameString = @"Tone detected";
        buffer->flags = -939524096;
        CFStringGetCString(@"Tone detected", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 8;
        v23 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v24 = 0.0078125;
        goto LABEL_38;
      case 5u:
        buffer->cfNameString = @"DL Gain Target";
        buffer->flags = -939524096;
        CFStringGetCString(@"DL Gain Target", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        v23 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v24 = 8192.0059;
LABEL_38:
        *&buffer->minValue = v24;
        buffer->defaultValue = 0.0;
        flags = v23 & 0x7FFFFFFF;
        v32 = 1140883456;
        goto LABEL_48;
      case 6u:
        buffer->cfNameString = @"Gain (dB)";
        buffer->flags = -939524096;
        CFStringGetCString(@"Gain (dB)", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        v20 = 0x41F00000C2C00000;
        goto LABEL_28;
      case 7u:
        buffer->cfNameString = @"Gain before C/L";
        buffer->flags = -939524096;
        CFStringGetCString(@"Gain before C/L", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
LABEL_30:
        *&buffer->minValue = 0x3F80000000000000;
        v21 = 1.0;
        goto LABEL_46;
      case 8u:
        goto LABEL_40;
      case 9u:
        v8 = @"Crossover 2";
        goto LABEL_40;
      case 0xAu:
        v8 = @"Crossover 3";
LABEL_40:
        buffer->cfNameString = v8;
        buffer->flags = -939524096;
        CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 2;
        v33 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x46BB800041A00000;
        buffer->defaultValue = 24000.0;
        v34 = v33 | 0xC0100000;
        goto LABEL_120;
      case 0xCu:
        v17 = @"A-Weighting Enabled";
        goto LABEL_25;
      case 0xDu:
        v18 = @"Primary Ducking Level (dB)";
        goto LABEL_32;
      case 0xEu:
        v18 = @"Game Audio Ducking Level (dB)";
        goto LABEL_32;
      case 0xFu:
        v18 = @"Other Audio Ducking Level (dB)";
LABEL_32:
        buffer->cfNameString = v18;
        buffer->flags = -939524096;
        CFStringGetCString(v18, buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v30 = 3267362816;
        goto LABEL_45;
      case 0x10u:
        v31 = @"System Sound Ducking Threshold (dB)";
        goto LABEL_43;
      case 0x11u:
        v31 = @"Primary Ducking Threshold (dB)";
LABEL_43:
        buffer->cfNameString = v31;
        buffer->flags = -939524096;
        CFStringGetCString(v31, buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 3259498496;
        v21 = -40.0;
        goto LABEL_46;
      case 0x12u:
        buffer->cfNameString = @"Primary Ducking Min Level (dB)";
        buffer->flags = -939524096;
        CFStringGetCString(@"Primary Ducking Min Level (dB)", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 3267362816;
        v21 = -30.0;
        goto LABEL_46;
      case 0x13u:
        v16 = @"Game Audio Ducking Min Level (dB)";
        goto LABEL_21;
      case 0x14u:
        v16 = @"Other Audio Ducking Min Level (dB)";
LABEL_21:
        buffer->cfNameString = v16;
        buffer->flags = -939524096;
        CFStringGetCString(v16, buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 3267362816;
        v21 = -45.0;
        goto LABEL_46;
      case 0x15u:
        buffer->cfNameString = @"Other Audio RMS Limit (dB)";
        buffer->flags = -939524096;
        CFStringGetCString(@"Other Audio RMS Limit (dB)", buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v30 = 3276275712;
LABEL_45:
        *&buffer->minValue = v30;
        v21 = -18.0;
LABEL_46:
        buffer->defaultValue = v21;
        goto LABEL_47;
      case 0x16u:
        v17 = @"Higher Order Crossover Enabled";
LABEL_25:
        buffer->cfNameString = v17;
        buffer->flags = -939524096;
        CFStringGetCString(v17, buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        v20 = 0x3F80000000000000;
        goto LABEL_28;
      case 0x17u:
        v19 = @"Band LookAhead (ms)";
        goto LABEL_18;
      case 0x18u:
        v19 = @"Combiner LookAhead (ms)";
LABEL_18:
        buffer->cfNameString = v19;
        buffer->flags = -939524096;
        CFStringGetCString(v19, buffer->name, 52, 0x8000100u);
        Property = 0;
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v20 = 0x4120000000000000;
LABEL_28:
        *&buffer->minValue = v20;
LABEL_36:
        buffer->defaultValue = 0.0;
LABEL_47:
        v32 = -1006632960;
LABEL_48:
        v35 = flags | v32;
        goto LABEL_119;
      default:
        return Property;
    }
  }

  v10 = v6 + 2;
  v11 = a3 - 100;
  v12 = (this + 8 * v6 + 800);
  if (a3 - 100 < 0x64)
  {
    v12 = (this + 848);
  }

  v13 = *v12;
  switch(v7)
  {
    case 0u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 1u, buffer, &ioDataSize);
      v14 = @"RMS Limit";
      v15 = @"Combiner RMS Limit";
      goto LABEL_72;
    case 1u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 2u, buffer, &ioDataSize);
      v14 = @"Max Noise Rel Gain";
      v15 = @"Combiner Max Noise Rel Gain";
      goto LABEL_72;
    case 2u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 3u, buffer, &ioDataSize);
      v14 = @"Max Noise Abs Gain";
      v15 = @"Combiner Max Noise Abs Gain";
      goto LABEL_72;
    case 3u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 5u, buffer, &ioDataSize);
      v14 = @"Max Noise Thresh";
      v15 = @"Combiner Max Noise Thresh";
      goto LABEL_72;
    case 4u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 5u, buffer, &ioDataSize);
      v41 = @"Max Noise Thresh (Scaled)";
      v42 = @"Combiner Max Noise Thresh (Scaled)";
      goto LABEL_81;
    case 5u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 4u, buffer, &ioDataSize);
      v14 = @"Min Sound Thresh";
      v15 = @"Combiner Min Sound Thresh";
      goto LABEL_72;
    case 6u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 4u, buffer, &ioDataSize);
      v41 = @"Min Sound Thresh (Scaled)";
      v42 = @"Combiner Min Sound Thresh (Scaled)";
LABEL_81:
      if (v11 >= 0x64)
      {
        v46 = v41;
      }

      else
      {
        v46 = v42;
      }

      buffer->cfNameString = v46;
      buffer->flags |= 0x8000000u;
      CFStringGetCString(v46, buffer->name, 52, 0x8000100u);
      v44 = buffer->flags & 0x3BFF7FFF;
      v45 = 1140883456;
      goto LABEL_85;
    case 7u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 6u, buffer, &ioDataSize);
      *&buffer->minValue = vrev64_s32(vmul_f32(vdiv_f32(vdup_n_s32(0x447A0000u), *&buffer->minValue), vdup_n_s32(0x3D75C28Fu)));
      buffer->defaultValue = (1000.0 / buffer->defaultValue) * 0.06;
      v39 = @"Release Time (ms)";
      v40 = @"Combiner Release Time (ms)";
      goto LABEL_89;
    case 8u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 7u, buffer, &ioDataSize);
      *&buffer->minValue = vmul_f32(vdiv_f32(vdup_n_s32(0x447A0000u), *&buffer->minValue), vdup_n_s32(0xBD75C28F));
      buffer->defaultValue = (1000.0 / buffer->defaultValue) * -0.06;
      v39 = @"Attack Time (ms)";
      v40 = @"Combiner Attack Time (ms)";
      goto LABEL_89;
    case 9u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x28u, buffer, &ioDataSize);
      v39 = @"Upwards Threshold";
      v40 = @"Combiner Upwards Threshold";
      goto LABEL_89;
    case 0xAu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x29u, buffer, &ioDataSize);
      v39 = @"Downwards Threshold";
      v40 = @"Combiner Downwards Threshold";
      goto LABEL_89;
    case 0xBu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x10u, buffer, &ioDataSize);
      v39 = @"Upwards Ratio";
      v40 = @"Combiner Upwards Ratio";
      goto LABEL_89;
    case 0xCu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x33u, buffer, &ioDataSize);
      v39 = @"Downwards Ratio";
      v40 = @"Combiner Downwards Ratio";
LABEL_89:
      if (v11 >= 0x64)
      {
        v47 = v39;
      }

      else
      {
        v47 = v40;
      }

      buffer->cfNameString = v47;
      buffer->flags |= 0x8000000u;
      CFStringGetCString(v47, buffer->name, 52, 0x8000100u);
      v35 = buffer->flags | 0xC0000000;
      break;
    case 0xDu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0xBu, buffer, &ioDataSize);
      buffer->cfNameString = @"Max Volume";
      buffer->flags |= 0x8000000u;
      CFStringGetCString(@"Max Volume", buffer->name, 52, 0x8000100u);
      if (v11 >= 0x64)
      {
        v43 = @"Max Volume";
      }

      else
      {
        v43 = @"Combiner Max Volume";
      }

      goto LABEL_75;
    case 0xEu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0xAu, buffer, &ioDataSize);
      v14 = @"Min Volume";
      v15 = @"Combiner Min Volume";
LABEL_72:
      if (v11 >= 0x64)
      {
        v43 = v14;
      }

      else
      {
        v43 = v15;
      }

LABEL_75:
      buffer->cfNameString = v43;
      buffer->flags |= 0x8000000u;
      CFStringGetCString(v43, buffer->name, 52, 0x8000100u);
      v44 = buffer->flags;
      v45 = -1006632960;
LABEL_85:
      v35 = v44 | v45;
      break;
    case 0xFu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x14u, buffer, &ioDataSize);
      v36 = @"Low  Volume Knee X";
      v37 = @"Combiner Low  Volume Knee X";
      goto LABEL_112;
    case 0x10u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x15u, buffer, &ioDataSize);
      v36 = @"High Volume Knee X";
      v37 = @"Combiner High Volume Knee X";
      goto LABEL_112;
    case 0x11u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x1Eu, buffer, &ioDataSize);
      v36 = @"Low  Volume Knee Y";
      v37 = @"Combiner Low  Volume Knee Y";
      goto LABEL_112;
    case 0x12u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x1Fu, buffer, &ioDataSize);
      v36 = @"High Volume Knee Y";
      v37 = @"Combiner High Volume Knee Y";
      goto LABEL_112;
    case 0x13u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0, buffer, &ioDataSize);
      if (v11 >= 0x64)
      {
        v50 = @"Sound Gain";
      }

      else
      {
        v50 = @"Combiner Sound Gain";
      }

      buffer->cfNameString = v50;
      buffer->flags |= 0x8000000u;
      CFStringGetCString(v50, buffer->name, 52, 0x8000100u);
      v51 = buffer->flags & 0x3BFF7FFF;
      v52 = 1140883456;
      goto LABEL_116;
    case 0x14u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 8u, buffer, &ioDataSize);
      v36 = @"Smooth Win (ms)";
      v37 = @"Combiner Smooth Win (ms)";
      goto LABEL_112;
    case 0x15u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 9u, buffer, &ioDataSize);
      v36 = @"BlockSize (ms)";
      v37 = @"Combiner BlockSize (ms)";
      goto LABEL_112;
    case 0x16u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x41u, buffer, &ioDataSize);
      v36 = @"Short Win Enabled";
      v37 = @"Combiner Short Win Enabled";
      goto LABEL_112;
    case 0x17u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x42u, buffer, &ioDataSize);
      v36 = @"Short Win PeakDetector";
      v37 = @"Combiner Short Win PeakDetector";
      goto LABEL_112;
    case 0x18u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x43u, buffer, &ioDataSize);
      v36 = @"Short Win (ms)";
      v37 = @"Combiner Short Win (ms)";
      goto LABEL_112;
    case 0x19u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x44u, buffer, &ioDataSize);
      *&buffer->minValue = vmul_f32(*&buffer->minValue, vdup_n_s32(0x447A0000u));
      buffer->defaultValue = buffer->defaultValue * 1000.0;
      v36 = @"Short Win Attack (ms)";
      v37 = @"Combiner Short Win Attack (ms)";
      goto LABEL_112;
    case 0x1Au:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x45u, buffer, &ioDataSize);
      *&buffer->minValue = vmul_f32(*&buffer->minValue, vdup_n_s32(0x447A0000u));
      buffer->defaultValue = buffer->defaultValue * 1000.0;
      v36 = @"Short Win Release (ms)";
      v37 = @"Combiner Short Win Release (ms)";
      goto LABEL_112;
    case 0x1Bu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x46u, buffer, &ioDataSize);
      v36 = @"Short Win Max dBRMS";
      v37 = @"Combiner Short Win Max dBRMS";
      goto LABEL_112;
    case 0x1Cu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x3Eu, buffer, &ioDataSize);
      v48 = @"Compression Amount";
      v49 = @"Combiner Compression Amount";
      goto LABEL_104;
    case 0x1Du:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x3Fu, buffer, &ioDataSize);
      v48 = @"Input Amplitude";
      v49 = @"Combiner Input Amplitude";
      goto LABEL_104;
    case 0x1Eu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x40u, buffer, &ioDataSize);
      v48 = @"Output Amplitude";
      v49 = @"Combiner Output Amplitude";
LABEL_104:
      if (v11 >= 0x64)
      {
        v53 = v48;
      }

      else
      {
        v53 = v49;
      }

      buffer->cfNameString = v53;
      buffer->flags |= 0x8000000u;
      CFStringGetCString(v53, buffer->name, 52, 0x8000100u);
      v51 = buffer->flags & 0x7FFFFFFF;
      v52 = 1073774592;
      goto LABEL_116;
    case 0x1Fu:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x48u, buffer, &ioDataSize);
      v36 = @"Long Win Enabled";
      v37 = @"Combiner Long Win Enabled";
      goto LABEL_112;
    case 0x20u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x49u, buffer, &ioDataSize);
      v36 = @"Long Win Sec";
      v37 = @"Combiner Long Win Sec";
      goto LABEL_112;
    case 0x21u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x4Au, buffer, &ioDataSize);
      *&buffer->minValue = vmul_f32(*&buffer->minValue, vdup_n_s32(0x447A0000u));
      buffer->defaultValue = buffer->defaultValue * 1000.0;
      v36 = @"Long Win Attack (ms)";
      v37 = @"Combiner Long Win Attack (ms)";
      goto LABEL_112;
    case 0x22u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x4Bu, buffer, &ioDataSize);
      *&buffer->minValue = vmul_f32(*&buffer->minValue, vdup_n_s32(0x447A0000u));
      buffer->defaultValue = buffer->defaultValue * 1000.0;
      v36 = @"Long Win Release (ms)";
      v37 = @"Combiner Long Win Release (ms)";
      goto LABEL_112;
    case 0x23u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x4Cu, buffer, &ioDataSize);
      v36 = @"Long Win Max dBRMS";
      v37 = @"Combiner Long Win Max dBRMS";
      goto LABEL_112;
    case 0x24u:
      buffer->cfNameString = @"Make Up Gain";
      buffer->flags = -939524096;
      CFStringGetCString(@"Make Up Gain", buffer->name, 52, 0x8000100u);
      Property = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v38 = 0x41A0000000000000;
      goto LABEL_109;
    case 0x25u:
      buffer->cfNameString = @"Monitor Band";
      buffer->flags = -939524096;
      CFStringGetCString(@"Monitor Band", buffer->name, 52, 0x8000100u);
      Property = 0;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      *&buffer->minValue = 0x3F80000000000000;
      v35 = buffer->flags | 0xD0000000;
      goto LABEL_110;
    case 0x26u:
      buffer->cfNameString = @"Bypass Band Comp";
      buffer->flags = -939524096;
      CFStringGetCString(@"Bypass Band Comp", buffer->name, 52, 0x8000100u);
      Property = 0;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      v38 = 0x3F80000000000000;
LABEL_109:
      *&buffer->minValue = v38;
      v35 = buffer->flags | 0xC0000000;
LABEL_110:
      buffer->defaultValue = 0.0;
      goto LABEL_117;
    case 0x27u:
      Property = AudioUnitGetProperty(v13, 4u, 0, 0x47u, buffer, &ioDataSize);
      v36 = @"Short Win Max dBFs";
      v37 = @"Combiner Short Win Max dbFS";
LABEL_112:
      if (v11 >= 0x64)
      {
        v54 = v36;
      }

      else
      {
        v54 = v37;
      }

      buffer->cfNameString = v54;
      buffer->flags |= 0x8000000u;
      CFStringGetCString(v54, buffer->name, 52, 0x8000100u);
      v51 = buffer->flags;
      v52 = -1006632960;
LABEL_116:
      v35 = v51 | v52;
LABEL_117:
      buffer->flags = v35;
      break;
    default:
      Property = 4294956418;
      v35 = -1073741824;
      break;
  }

  buffer->clumpID = v10;
LABEL_119:
  v34 = v35 | 0x100000;
LABEL_120:
  buffer->flags = v34;
  return Property;
}

uint64_t AUMultiBandDynamicsProcessorV2::GetParameterList(AUMultiBandDynamicsProcessorV2 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  v8 = AUMultiBandDynamicsProcessorV2::DetermineBandsToProcess(this);
  if (*(this + 1314))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if ((v9 & 7) != 3 && v9 != 2 && v9 != 4)
      {
        if (a3)
        {
          a3[v10] = v9;
        }

        ++v10;
      }

      ++v9;
    }

    while (v9 != 13);
    if (a3)
    {
      a3[v10] = 22;
      a3[v10 + 1] = 23;
      a3[v10 + 2] = 24;
    }

    v17 = 0;
    v14 = v10 + 3;
    do
    {
      if (v17 * 4)
      {
        if (a3)
        {
          a3[v14] = dword_1DE116A38[v17];
        }

        ++v14;
      }

      ++v17;
    }

    while (v17 != 12);
    for (i = 100; i != 140; ++i)
    {
      v19 = 0;
      while (i != dword_1DE116A38[v19])
      {
        if (++v19 == 12)
        {
          if (i != 137)
          {
            if (a3)
            {
              a3[v14] = i;
            }

            ++v14;
          }

          break;
        }
      }
    }

    if (*(this + 138))
    {
      v20 = 0;
      do
      {
        v21 = 0;
        v22 = 100 * v20 + 100;
        do
        {
          if (a3)
          {
            a3[v14] = v22 + dword_1DE116A38[v21];
          }

          ++v14;
          ++v21;
        }

        while (v21 != 12);
        for (j = 100; j != 140; ++j)
        {
          v24 = 0;
          while (j != dword_1DE116A38[v24])
          {
            if (++v24 == 12)
            {
              if (a3)
              {
                a3[v14] = v22 + j;
              }

              ++v14;
              break;
            }
          }
        }

        ++v20;
      }

      while (v20 < *(this + 138));
    }
  }

  else
  {
    for (k = 0; k != 3; ++k)
    {
      if (a3)
      {
        a3[k] = k + 8;
      }
    }

    if (*(this + 138))
    {
      v14 = 3;
      v15 = 1;
      do
      {
        v16 = 2 * (v8 == 1);
        do
        {
          if (a3)
          {
            a3[v14] = dword_1DE116A38[v16] + 100 * v15;
          }

          ++v14;
          ++v16;
        }

        while (v16 != 12);
        ++v15;
      }

      while (v15 <= *(this + 138));
    }

    else
    {
      v14 = 3;
    }
  }

  result = 0;
  *a4 = v14;
  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::DetermineBandsToProcess(AUMultiBandDynamicsProcessorV2 *this)
{
  v13 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 80) * 0.49000001;
  v12[0] = 0;
  *&v12[4] = v3;
  for (i = 1; i != 4; ++i)
  {
    v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v6 & 1) == 0)
    {
      abort();
    }

    Parameter = ausdk::AUElement::GetParameter(v5, i + 7);
    if (Parameter > v3)
    {
      Parameter = v3;
    }

    *&v12[i] = Parameter;
  }

  v8 = 0;
  v9 = 0.0;
  do
  {
    result = v8;
    if (v8 == 4)
    {
      break;
    }

    if (v9 >= v3)
    {
      break;
    }

    ++v8;
    v11 = (v3 - v9) < ((*&v12[result + 1] - v9) * 0.35);
    v9 = *&v12[result + 1];
  }

  while (!v11);
  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::SetBusCount(AUMultiBandDynamicsProcessorV2 *this, int a2, unsigned int a3)
{
  result = 4294956445;
  if (a2 == 1 && a3 - 1 <= 1)
  {
    ausdk::AUScope::SetNumberOfElements((this + 80), a3);
    return 0;
  }

  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::Render(AUMultiBandDynamicsProcessorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    ausdk::AUInputElement::PullInput(v8, &v40, a3, 0, a4);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(Element + 144))
  {
    goto LABEL_34;
  }

  v11 = *(Element + 152);
  v12 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v12)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v12 + 144))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v13 = *(v12 + 152);
  result = SimpleMeters::ProcessInputBufferList((this + 1368), a4, (v11 + 48));
  if (!result)
  {
    v15 = (this + 560);
    v16 = AUMultiBandDynamicsProcessorV2::DoBlockProcess(this, a2, (this + 560), a4, (v11 + 48), (v11 + 48));
    if (!v16)
    {
      if (*(this + 311))
      {
        v17 = 0;
        v18 = (v13 + 64);
        do
        {
          v19 = *(v11 + 48);
          if (v17 >= v19)
          {
            v20 = v19 - 1;
          }

          else
          {
            v20 = v17;
          }

          v21 = *v18;
          v18 += 2;
          v16 = memcpy(v21, *(v11 + 56 + 16 * v20 + 8), (*(this + 312) * a4));
          ++v17;
          v22 = *(this + 311);
        }

        while (v17 < v22);
        if (v22 == 1 && *(v13 + 48) > 1u)
        {
          v16 = memcpy(*(v13 + 80), *(v11 + 64), (*(this + 312) * a4));
        }
      }

      if (*(this + 1256) == 1)
      {
        v24 = *(this + 36);
        *&v39.mSampleTime = *v15;
        *&v39.mRateScalar = v24;
        v25 = *(this + 38);
        *&v39.mSMPTETime.mSubframes = *(this + 37);
        *&v39.mSMPTETime.mHours = v25;
        if (a4)
        {
          v26 = 0;
          v38 = (v13 + 64);
          v27 = a4;
          while (1)
          {
            v28 = *(v13 + 48);
            if ((v28 - 65) <= 0xFFFFFFBF)
            {
              break;
            }

            MEMORY[0x1EEE9AC00](v16);
            v30 = (&v37 - v29);
            bzero(&v37 - v29, v31 + 24);
            v30->mNumberBuffers = v28;
            p_mData = &v30->mBuffers[0].mData;
            v33 = *(this + 313);
            v34 = v38;
            do
            {
              *(p_mData - 2) = 1;
              *(p_mData - 1) = 4 * v33;
              v35 = *v34;
              v34 += 2;
              *p_mData = (v35 + 4 * v26);
              p_mData += 2;
              --v28;
            }

            while (v28);
            v16 = AUMultiBandDynamicsProcessorV2::DoCombinerLimiter(this, a2, &v39, v33, v30);
            if (!v16)
            {
              v36 = *(this + 313);
              v26 += v36;
              v39.mSampleTime = v39.mSampleTime + v36;
              v27 -= v36;
              if (v27)
              {
                continue;
              }
            }

            goto LABEL_29;
          }

          CAAssertRtn();
LABEL_34:
          ausdk::Throw(0xFFFFFFFFLL);
        }
      }
    }

LABEL_29:
    *v15 = *v15 + a4;
    return SimpleMeters::ProcessOutputBufferList((this + 1368), a4, (v13 + 48));
  }

  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::DoBlockProcess(uint64_t this, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, AudioBufferList *a5, AudioBufferList *a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a2;
  v8 = this;
  v47 = *MEMORY[0x1E69E9840];
  v9 = *(this + 528);
  if (v9 != *(this + 532))
  {
    AUMultiBandDynamicsProcessorV2::UpdateMBDPState(this);
    *(v8 + 133) = v9;
  }

  v10 = *(v8 + 134);
  if (v10 != *(v8 + 135))
  {
    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v8 + 32, 0);
    if ((v12 & 1) == 0)
    {
      abort();
    }

    Parameter = ausdk::AUElement::GetParameter(v11, 0);
    if (*(v8 + 138))
    {
      v14 = Parameter;
      v15 = 0;
      do
      {
        this = AudioUnitSetParameter(*(v8 + v15++ + 102), 0xCu, 0, 0, v14, 0);
      }

      while (v15 < *(v8 + 138));
    }

    *(v8 + 135) = v10;
  }

  if (*(v8 + 136))
  {
    CopyBufferList(&v44->mNumberBuffers, v45, *(v8 + 312) * a4);
    return 0;
  }

  v17 = *&a3->mRateScalar;
  *&v46.mSampleTime = *&a3->mSampleTime;
  *&v46.mRateScalar = v17;
  v18 = *&a3->mSMPTETime.mHours;
  *&v46.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&v46.mSMPTETime.mHours = v18;
  if (*(v8 + 1256) == 1)
  {
    if (a4)
    {
      v19 = 0;
      mSampleTime = v46.mSampleTime;
      p_mNumberChannels = &v44->mBuffers[0].mNumberChannels;
      mBuffers = v45->mBuffers;
      while (1)
      {
        v23 = *(v8 + 311);
        if ((v23 - 65) <= 0xFFFFFFBF)
        {
          break;
        }

        v24 = 16 * (v23 - 1);
        MEMORY[0x1EEE9AC00](this);
        v25 = (&v42 - ((v24 + 39) & 0x1FFFFFFFF0));
        bzero(v25, v24 + 24);
        v25->mNumberBuffers = v23;
        MEMORY[0x1EEE9AC00](v26);
        bzero(v25, v24 + 24);
        v27 = 0;
        v28 = 0;
        v25->mNumberBuffers = v23;
        mNumberBuffers = v44->mNumberBuffers;
        v30 = v45->mNumberBuffers;
        v31 = 4 * *(v8 + 313);
        do
        {
          if (v28 >= mNumberBuffers)
          {
            v32 = mNumberBuffers - 1;
          }

          else
          {
            v32 = v28;
          }

          if (v28 >= v30)
          {
            v33 = v30 - 1;
          }

          else
          {
            v33 = v28;
          }

          v34 = v25 + v27;
          v35 = v25 + v27;
          *(v34 + 2) = 1;
          *(v34 + 3) = v31;
          *(v35 + 2) = 1;
          *(v35 + 3) = v31;
          *(v35 + 2) = *&p_mNumberChannels[4 * v32 + 2] + 4 * v19;
          *(v34 + 2) = mBuffers[v33].mData + 4 * v19;
          ++v28;
          v27 += 16;
        }

        while (v23 != v28);
        v36 = *(v8 + 112);
        Element = ausdk::AUScope::GetElement((v8 + 128), 0);
        if (!Element)
        {
          goto LABEL_32;
        }

        v38 = ausdk::AUBufferList::PrepareBufferOrError(v36, Element + 2, *(v8 + 313));
        if ((v39 & 1) == 0)
        {
          ausdk::Throw(v38);
        }

        CopyBufferList(&v25->mNumberBuffers, v38, (*(v8 + 312) * *(v8 + 313)));
        this = AUMultiBandDynamicsProcessorV2::DoCoreProcess(v8, v43, &v46, *(v8 + 313), v25, v40);
        v41 = *(v8 + 313);
        v19 += v41;
        mSampleTime = mSampleTime + v41;
        v46.mSampleTime = mSampleTime;
        a4 -= v41;
        if (!a4)
        {
          return 0;
        }
      }

      CAAssertRtn();
LABEL_32:
      ausdk::Throw(0xFFFFD583);
    }

    return 0;
  }

  if (*(v8 + 1257))
  {
    return AUMultiBandDynamicsProcessorV2::DoFixedBlockLatencyProcess(v8, v43, &v46, a4, v44, v45);
  }

  else
  {
    return AUMultiBandDynamicsProcessorV2::DoVariableBlockLatencyProcess(v8, v43, &v46, a4, v44, v45);
  }
}

uint64_t AUMultiBandDynamicsProcessorV2::DoCombinerLimiter(AUMultiBandDynamicsProcessorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, UInt32 inNumberFrames, AudioBufferList *ioData)
{
  if (*(this + 1276) != 1)
  {
    return 0;
  }

  v15 = v5;
  v16 = v6;
  if (*(this + 136))
  {
    return 0;
  }

  if ((*(this + 1284) & 1) != 0 || (result = AudioUnitProcess(*(this + 106), a2, a3, inNumberFrames, ioData), !result))
  {
    AUMultiBandDynamicsProcessorV2::GetVolCompState(this, *(this + 106), 0);
    v11 = *(this + 323);
    if (v11 != 0.0)
    {
      v14 = __exp10f(v11 / 20.0);
      if (ioData->mNumberBuffers)
      {
        v12 = 0;
        v13 = 16;
        do
        {
          MEMORY[0x1E12BE940](*(&ioData->mNumberBuffers + v13), 1, &v14, *(&ioData->mNumberBuffers + v13), 1, inNumberFrames);
          ++v12;
          v13 += 16;
        }

        while (v12 < ioData->mNumberBuffers);
      }
    }

    return 0;
  }

  return result;
}

void AUMultiBandDynamicsProcessorV2::GetVolCompState(AUMultiBandDynamicsProcessorV2 *this, AudioUnit inUnit, int a3)
{
  if (*(this + 1313) == 1)
  {
    outValue = 0.0;
    AudioUnitGetParameter(inUnit, 0x3Eu, 0, 0, &outValue);
    v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    ausdk::AUElement::SetParameter(v6, a3 + 128, outValue);
    AudioUnitGetParameter(inUnit, 0x3Fu, 0, 0, &outValue);
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

    ausdk::AUElement::SetParameter(v8, a3 + 129, outValue);
    AudioUnitGetParameter(inUnit, 0x40u, 0, 0, &outValue);
    v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

    Parameter = ausdk::AUElement::GetParameter(v10, a3 + 136);
    outValue = Parameter + outValue;
    v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }

    ausdk::AUElement::SetParameter(v13, a3 + 130, outValue);
    if (*(this + 1314) != 1)
    {
      return;
    }

    AudioUnitGetParameter(inUnit, 0x3Du, 0, 0, &outValue);
    v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v16 & 1) == 0 || (ausdk::AUElement::SetParameter(v15, a3 + 104, outValue), AudioUnitGetParameter(inUnit, 0x3Cu, 0, 0, &outValue), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, a3 + 106, outValue), AudioUnitGetParameter(inUnit, 0, 0, 0, &outValue), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v20 & 1) == 0))
    {
LABEL_12:
      abort();
    }

    ausdk::AUElement::SetParameter(v19, a3 + 119, outValue);
  }
}

void AUMultiBandDynamicsProcessorV2::UpdateMBDPState(AUMultiBandDynamicsProcessorV2 *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (ausdk::AUElement::GetParameter(v2, 0x16u) == 1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  *(this + 214) = v4;
  *(this + 320) = 0;
  if (*(this + 138))
  {
    v5 = 0;
    v6 = 100;
    do
    {
      v7 = *(this + v5++ + 102);
      AUMultiBandDynamicsProcessorV2::UpdateVolComp(this, v7, v6);
      v6 += 100;
    }

    while (v5 < *(this + 138));
  }

  if (*(this + 1314))
  {
    AUMultiBandDynamicsProcessorV2::UpdateVolComp(this, *(this + 106), 0);
  }

  AUMultiBandDynamicsProcessorV2::CalculateVolCompGainOffset(this);
  v8 = AUMultiBandDynamicsProcessorV2::DetermineBandsToProcess(this);
  v9 = *(this + 138);
  if (v9 >= v8)
  {
    v9 = v8;
  }

  *(this + 318) = v9;
  if (*(this + 320) > v9)
  {
    *(this + 320) = 0;
  }

  AUMultiBandDynamicsProcessorV2::UpdateCrossOverEQs(this);
  if (*(this + 318) > 1u)
  {
    if ((*(this + 1314) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (!*(this + 1314))
    {
      goto LABEL_35;
    }

    v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v11 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (ausdk::AUElement::GetParameter(v10, 7u) != 0.0)
    {
      goto LABEL_21;
    }

    v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v13 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (ausdk::AUElement::GetParameter(v12, 6u) <= 0.0)
    {
LABEL_21:
      v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_37;
      }

      if (ausdk::AUElement::GetParameter(v14, 0x6Fu) == 1.0)
      {
        v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v17 & 1) == 0)
        {
          goto LABEL_37;
        }

        if (ausdk::AUElement::GetParameter(v16, 0x70u) == 1.0)
        {
          v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v19 & 1) == 0)
          {
            goto LABEL_37;
          }

          if (ausdk::AUElement::GetParameter(v18, 0x7Au) == 0.0)
          {
            v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v21 & 1) == 0)
            {
              goto LABEL_37;
            }

            if (ausdk::AUElement::GetParameter(v20, 0x83u) == 0.0)
            {
              if (*(this + 1314))
              {
                v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v23)
                {
                  Parameter = ausdk::AUElement::GetParameter(v22, 0xC8u);
                  v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v26)
                  {
                    v27 = ausdk::AUElement::GetParameter(v25, 0x64u);
                    if (v27 < Parameter)
                    {
                      AudioUnitSetParameter(*(this + 102), 1u, 0, 0, v27, 0);
                    }

                    goto LABEL_35;
                  }
                }

LABEL_37:
                abort();
              }

LABEL_35:
              v28 = 0;
              goto LABEL_36;
            }
          }
        }
      }
    }
  }

  v28 = 1;
LABEL_36:
  *(this + 1276) = v28;
}

unsigned int *CopyBufferList(unsigned int *result, _DWORD *a2, size_t __n)
{
  v3 = *result;
  if (v3 == *a2 && v3 != 0)
  {
    v5 = __n;
    v6 = result;
    v7 = 0;
    v8 = (a2 + 4);
    v9 = (result + 4);
    v10 = __n;
    do
    {
      if (*(v9 - 1) >= v5 && *(v8 - 1) >= v5)
      {
        result = memcpy(*v8, *v9, v10);
        v3 = *v6;
      }

      ++v7;
      v8 += 2;
      v9 += 2;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::DoCoreProcess(AUMultiBandDynamicsProcessorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, AudioBufferList *a5, AudioBufferList *a6)
{
  v7 = a4;
  if (*(this + 1240) == 1)
  {
    (*(*this + 72))(this, 0, 0, a4, a5, a6);
    *(this + 1240) = 0;
  }

  v11 = *&a3->mRateScalar;
  *&v105.mSampleTime = *&a3->mSampleTime;
  *&v105.mRateScalar = v11;
  v12 = *&a3->mSMPTETime.mHours;
  *&v105.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&v105.mSMPTETime.mHours = v12;
  v13 = *(this + 110);
  if (*v13)
  {
    v14 = 0;
    v15 = (v13 + 4);
    do
    {
      bzero(*v15, *(v15 - 1));
      ++v14;
      v15 += 2;
    }

    while (v14 < *v13);
  }

  if (*(this + 1314) != 1)
  {
    v23 = 1;
    v19 = 0.0;
    goto LABEL_14;
  }

  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_127;
  }

  Parameter = ausdk::AUElement::GetParameter(v16, 6u);
  v19 = Parameter;
  if (*(this + 1314) != 1)
  {
    v23 = 1;
    v24 = 1;
    if (Parameter != 0.0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
LABEL_127:
    abort();
  }

  v22 = ausdk::AUElement::GetParameter(v20, 7u);
  v23 = v22 != 0.0;
  if (v19 != 0.0)
  {
    v24 = 1;
    if (v22 == 0.0)
    {
      v23 = 0;
      goto LABEL_39;
    }

LABEL_18:
    v25 = *(this + 112);
    if (!*v25)
    {
      goto LABEL_129;
    }

    v26 = *(v25 + 8);
    v27 = __exp10f(v19 / 20.0);
    *&inTimeStamp.mSampleTime = v27;
    v28 = *(this + 219);
    if (v28 == v27)
    {
      if (*(this + 311))
      {
        v36 = 0;
        v37 = (v26 + 64);
        do
        {
          v38 = *v37;
          v37 += 2;
          MEMORY[0x1E12BE940](v38, 1, &inTimeStamp, v38, 1, v7);
          ++v36;
        }

        while (v36 < *(this + 311));
      }

      goto LABEL_38;
    }

    v29 = v27;
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    v102 = a2;
    if (v29 <= v28)
    {
      if (!Element)
      {
        goto LABEL_126;
      }

      v31 = v24;
      v39 = 1000.0 / *(Element + 80) * ((v28 * 0.98855) - v28);
      __Step = v39;
      v33 = *(this + 219);
      v34 = v7;
      if ((v33 + (v39 * v7)) >= v29)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!Element)
      {
        goto LABEL_126;
      }

      v31 = v24;
      v32 = 1000.0 / *(Element + 80) * ((v28 * 1.0116) - v28);
      __Step = v32;
      v33 = *(this + 219);
      v34 = v7;
      if ((v33 + (v32 * v7)) <= v29)
      {
LABEL_23:
        v35 = 0;
LABEL_31:
        if (*(this + 311))
        {
          v40 = 0;
          v41 = (v26 + 64);
          do
          {
            __Start = *(this + 219);
            v42 = *v41;
            v41 += 2;
            vDSP_vrampmul(v42, 1, &__Start, &__Step, v42, 1, v7);
            ++v40;
          }

          while (v40 < *(this + 311));
          v33 = __Start;
        }

        *(this + 219) = v33;
        if (v35)
        {
          *(this + 219) = LODWORD(inTimeStamp.mSampleTime);
        }

        v24 = v31;
        a2 = v102;
LABEL_38:
        v23 = 1;
        goto LABEL_39;
      }
    }

    __Step = (v29 - v33) / v34;
    v35 = 1;
    goto LABEL_31;
  }

LABEL_14:
  v24 = 0;
  if (*(this + 219) != 1.0 && v23)
  {
    goto LABEL_18;
  }

LABEL_39:
  v43 = *(this + 112);
  if (!*v43)
  {
    goto LABEL_129;
  }

  v44 = *(this + 318);
  if (v44 <= 1)
  {
    v60 = *(v43 + 8);
    if (v44)
    {
      if (v44 == 1)
      {
        CopyBufferList((v60 + 48), a5, *(this + 312) * v7);
        if ((*(this + 1285) & 1) == 0)
        {
          result = AudioUnitProcess(*(this + 102), a2, &v105, v7, a5);
          if (result)
          {
            return result;
          }

          AUMultiBandDynamicsProcessorV2::GetVolCompState(this, *(this + 102), 100);
        }

        if (*(this + 311))
        {
          v62 = 0;
          v63 = 16;
          do
          {
            v64 = *(this + 324);
            if (v64 == 0.0)
            {
              MEMORY[0x1E12BE5D0](*(&a5->mNumberBuffers + v63), 1, *(*(this + 110) + v63), 1, *(*(this + 110) + v63), 1, v7);
            }

            else
            {
              LODWORD(inTimeStamp.mSampleTime) = __exp10f(v64 / 20.0);
              MEMORY[0x1E12BE8F0](*(&a5->mNumberBuffers + v63), 1, &inTimeStamp, *(*(this + 110) + v63), 1, *(*(this + 110) + v63), 1, v7);
            }

            ++v62;
            v63 += 16;
          }

          while (v62 < *(this + 311));
        }
      }

      goto LABEL_100;
    }

    CopyBufferList((v60 + 48), *(this + 110), *(this + 312) * v7);
    if ((v24 & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_101:
    if (!v23)
    {
      v87 = *(this + 219);
      goto LABEL_105;
    }

    goto LABEL_124;
  }

  if (v44 == 2)
  {
    v100 = v23;
    v101 = v24;
    v65 = a2;
    v66 = 0;
    v67 = *&a3->mRateScalar;
    *&inTimeStamp.mSampleTime = *&a3->mSampleTime;
    *&inTimeStamp.mRateScalar = v67;
    v68 = *&a3->mSMPTETime.mHours;
    *&inTimeStamp.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
    *&inTimeStamp.mSMPTETime.mHours = v68;
    v69 = this + 1284;
    v103 = this + 816;
    do
    {
      v70 = v66;
      v71 = *(this + 320);
      ++v66;
      if (v71)
      {
        v72 = v66 == v71;
      }

      else
      {
        v72 = 1;
      }

      if (v72)
      {
        v73 = *(this + 112);
        if (!*v73)
        {
          goto LABEL_129;
        }

        CopyBufferList((*(v73 + 8) + 48), a5, *(this + 312) * v7);
        AudioUnitProcess(*(this + v70 + 86), v65, &inTimeStamp, v7, a5);
        if ((v69[v66] & 1) == 0)
        {
          AudioUnitProcess(*&v103[8 * v70], v65, &inTimeStamp, v7, a5);
          AUMultiBandDynamicsProcessorV2::GetVolCompState(this, *&v103[8 * v70], 100 * v66);
        }

        if (*(this + 311))
        {
          v74 = 0;
          v75 = 16;
          do
          {
            v76 = *(this + v66 + 323);
            if (v76 == 0.0 || (v69[v66] & 1) != 0)
            {
              MEMORY[0x1E12BE5D0](*(&a5->mNumberBuffers + v75), 1, *(*(this + 110) + v75), 1, *(*(this + 110) + v75), 1, v7);
            }

            else
            {
              __Step = __exp10f(v76 / 20.0);
              MEMORY[0x1E12BE8F0](*(&a5->mNumberBuffers + v75), 1, &__Step, *(*(this + 110) + v75), 1, *(*(this + 110) + v75), 1, v7);
            }

            ++v74;
            v75 += 16;
          }

          while (v74 < *(this + 311));
        }
      }
    }

    while (v66 < *(this + 318));
    v23 = v100;
    if ((v101 & 1) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  if (v44 != 3)
  {
    if (v44 != 4)
    {
      goto LABEL_100;
    }

    v45 = *&a3->mRateScalar;
    *&inTimeStamp.mSampleTime = *&a3->mSampleTime;
    *&inTimeStamp.mRateScalar = v45;
    v46 = *&a3->mSMPTETime.mHours;
    *&inTimeStamp.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
    *&inTimeStamp.mSMPTETime.mHours = v46;
    v47 = *(this + 111);
    v48 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v48)
    {
      goto LABEL_126;
    }

    v49 = ausdk::AUBufferList::PrepareBufferOrError(v47, v48 + 2, v7);
    if (v50)
    {
      v51 = *(this + 112);
      if (*v51)
      {
        v52 = *(v51 + 8);
        CopyBufferList((v52 + 48), a5, *(this + 312) * v7);
        AudioUnitProcess(*(this + 86), a2, &inTimeStamp, v7, a5);
        v53 = *(this + 111);
        if (*v53)
        {
          v54 = *(v53 + 8);
          CopyBufferList(&a5->mNumberBuffers, &v54[2].mNumberBuffers, *(this + 312) * v7);
          AUMultiBandDynamicsProcessorV2::ApplyAllpassFilter(this, a2, &inTimeStamp, v54 + 2, a5, 2u, 3, v7);
          CopyBufferList(&a5->mNumberBuffers, &v54[2].mNumberBuffers, *(this + 312) * v7);
          AudioUnitProcess(*(this + 92), a2, &inTimeStamp, v7, a5);
          if (*(this + 320) <= 1u)
          {
            AUMultiBandDynamicsProcessorV2::ApplyDynamicsToBand(this, a2, &inTimeStamp, a5, 0, v7);
          }

          AudioUnitProcess(*(this + 93), a2, &inTimeStamp, v7, v54 + 2);
          if ((*(this + 320) | 2) == 2)
          {
            AUMultiBandDynamicsProcessorV2::ApplyDynamicsToBand(this, a2, &inTimeStamp, v54 + 2, 1u, v7);
          }

          CopyBufferList((v52 + 48), a5, *(this + 312) * v7);
          AudioUnitProcess(*(this + 87), a2, &inTimeStamp, v7, a5);
          CopyBufferList(&a5->mNumberBuffers, &v54[2].mNumberBuffers, *(this + 312) * v7);
          AUMultiBandDynamicsProcessorV2::ApplyAllpassFilter(this, a2, &inTimeStamp, v54 + 2, a5, 4u, 5, v7);
          CopyBufferList(&a5->mNumberBuffers, &v54[2].mNumberBuffers, *(this + 312) * v7);
          AudioUnitProcess(*(this + 94), a2, &inTimeStamp, v7, a5);
          v55 = *(this + 320);
          if (v55 == 3 || !v55)
          {
            AUMultiBandDynamicsProcessorV2::ApplyDynamicsToBand(this, a2, &inTimeStamp, a5, 2u, v7);
          }

          AudioUnitProcess(*(this + 95), a2, &inTimeStamp, v7, v54 + 2);
          if ((*(this + 320) | 4) == 4)
          {
            v56 = v54 + 2;
            v57 = this;
            v58 = a2;
            v59 = 3;
LABEL_99:
            AUMultiBandDynamicsProcessorV2::ApplyDynamicsToBand(v57, v58, &inTimeStamp, v56, v59, v7);
            goto LABEL_100;
          }

          goto LABEL_100;
        }
      }

LABEL_129:
      ausdk::Throw(0xFFFFFFFFLL);
    }

LABEL_128:
    ausdk::Throw(v49);
  }

  v77 = *&a3->mRateScalar;
  *&inTimeStamp.mSampleTime = *&a3->mSampleTime;
  *&inTimeStamp.mRateScalar = v77;
  v78 = *&a3->mSMPTETime.mHours;
  *&inTimeStamp.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&inTimeStamp.mSMPTETime.mHours = v78;
  v79 = *(this + 111);
  v80 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v80)
  {
    goto LABEL_126;
  }

  v49 = ausdk::AUBufferList::PrepareBufferOrError(v79, v80 + 2, v7);
  if ((v81 & 1) == 0)
  {
    goto LABEL_128;
  }

  v82 = *(this + 112);
  if (!*v82)
  {
    goto LABEL_129;
  }

  v83 = *(v82 + 8);
  CopyBufferList((v83 + 48), a5, *(this + 312) * v7);
  AudioUnitProcess(*(this + 86), a2, &inTimeStamp, v7, a5);
  v84 = *(this + 111);
  if (!*v84)
  {
    goto LABEL_129;
  }

  v85 = *(v84 + 8);
  CopyBufferList(&a5->mNumberBuffers, &v85[2].mNumberBuffers, *(this + 312) * v7);
  if (*(this + 320) <= 1u)
  {
    AUMultiBandDynamicsProcessorV2::ApplyAllpassFilter(this, a2, &inTimeStamp, v85 + 2, a5, 2u, 3, v7);
    AUMultiBandDynamicsProcessorV2::ApplyDynamicsToBand(this, a2, &inTimeStamp, a5, 0, v7);
  }

  CopyBufferList((v83 + 48), a5, *(this + 312) * v7);
  AudioUnitProcess(*(this + 87), a2, &inTimeStamp, v7, a5);
  CopyBufferList(&a5->mNumberBuffers, &v85[2].mNumberBuffers, *(this + 312) * v7);
  v86 = *(this + 320);
  if ((v86 | 2) == 2)
  {
    AudioUnitProcess(*(this + 90), a2, &inTimeStamp, v7, a5);
    AUMultiBandDynamicsProcessorV2::ApplyDynamicsToBand(this, a2, &inTimeStamp, a5, 1u, v7);
    v86 = *(this + 320);
  }

  if (v86 == 3 || !v86)
  {
    AudioUnitProcess(*(this + 91), a2, &inTimeStamp, v7, v85 + 2);
    v56 = v85 + 2;
    v57 = this;
    v58 = a2;
    v59 = 2;
    goto LABEL_99;
  }

LABEL_100:
  if (v24)
  {
    goto LABEL_101;
  }

LABEL_104:
  v87 = *(this + 219);
  if (v87 != 1.0 && !v23)
  {
LABEL_105:
    v88 = __exp10f(v19 / 20.0);
    *&inTimeStamp.mSampleTime = v88;
    if (v87 == v88)
    {
      if (*(this + 311))
      {
        v95 = 0;
        v96 = 16;
        do
        {
          MEMORY[0x1E12BE940](*(*(this + 110) + v96), 1, &inTimeStamp, *(*(this + 110) + v96), 1, v7);
          ++v95;
          v96 += 16;
        }

        while (v95 < *(this + 311));
      }

      goto LABEL_124;
    }

    v89 = v88;
    v90 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v89 <= v87)
    {
      if (v90)
      {
        v97 = 1000.0 / *(v90 + 80) * ((v87 * 0.98855) - v87);
        __Step = v97;
        v92 = *(this + 219);
        v93 = v7;
        if ((v92 + (v97 * v7)) >= v89)
        {
          goto LABEL_109;
        }

        goto LABEL_116;
      }
    }

    else if (v90)
    {
      v91 = 1000.0 / *(v90 + 80) * ((v87 * 1.0116) - v87);
      __Step = v91;
      v92 = *(this + 219);
      v93 = v7;
      if ((v92 + (v91 * v7)) <= v89)
      {
LABEL_109:
        v94 = 0;
LABEL_117:
        if (*(this + 311))
        {
          v98 = 0;
          v99 = 16;
          do
          {
            __Start = *(this + 219);
            vDSP_vrampmul(*(*(this + 110) + v99), 1, &__Start, &__Step, *(*(this + 110) + v99), 1, v7);
            ++v98;
            v99 += 16;
          }

          while (v98 < *(this + 311));
          v92 = __Start;
        }

        if (v94)
        {
          v92 = v89;
        }

        *(this + 219) = v92;
        goto LABEL_124;
      }

LABEL_116:
      __Step = (v89 - v92) / v93;
      v94 = 1;
      goto LABEL_117;
    }

LABEL_126:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_124:
  CopyBufferList(*(this + 110), a5, *(this + 312) * v7);
  return 0;
}

uint64_t AUMultiBandDynamicsProcessorV2::DoVariableBlockLatencyProcess(uint64_t this, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, const AudioBufferList *a5, AudioBufferList *a6)
{
  v59 = 0;
  v60 = a4;
  v7 = this;
  v62 = *MEMORY[0x1E69E9840];
  v8 = *&a3->mRateScalar;
  *&v61.mSampleTime = *&a3->mSampleTime;
  *&v61.mRateScalar = v8;
  v9 = *&a3->mSMPTETime.mHours;
  *&v61.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&v61.mSMPTETime.mHours = v9;
  v10 = (this + 904);
  mBuffers = a6->mBuffers;
  v55 = (this + 1032);
  v56 = a6;
  v57 = a5->mBuffers;
  v58 = a5;
  do
  {
    v12 = *(v7 + 1260);
    for (i = *(v7 + 1252); ; v61.mSampleTime = v61.mSampleTime + i)
    {
      v14 = i - v12;
      if (i != v12)
      {
        break;
      }

      v15 = *(v7 + 1244);
      if ((v15 - 65) <= 0xFFFFFFBF)
      {
        CAAssertRtn();
LABEL_39:
        ausdk::Throw(0xFFFFD583);
      }

      v16 = 16 * (v15 - 1);
      MEMORY[0x1EEE9AC00](this);
      v17 = (&v50 - ((v16 + 39) & 0x1FFFFFFFF0));
      bzero(v17, v16 + 24);
      v17->mNumberBuffers = v15;
      MEMORY[0x1EEE9AC00](v18);
      bzero(v17, v16 + 24);
      v19 = 0;
      v17->mNumberBuffers = v15;
      v20 = 4 * i;
      do
      {
        v21 = v17 + v19 * 8;
        v22 = v17 + v19 * 8;
        *(v21 + 2) = 1;
        *(v21 + 3) = v20;
        *(v22 + 2) = 1;
        *(v22 + 3) = v20;
        *(v22 + 2) = v10[v19];
        *(v21 + 2) = v10[v19 + 16];
        v19 += 2;
      }

      while (2 * v15 != v19);
      v23 = *(v7 + 896);
      Element = ausdk::AUScope::GetElement((v7 + 128), 0);
      if (!Element)
      {
        goto LABEL_39;
      }

      v25 = ausdk::AUBufferList::PrepareBufferOrError(v23, Element + 2, *(v7 + 1252));
      if ((v26 & 1) == 0)
      {
        ausdk::Throw(v25);
      }

      CopyBufferList(&v17->mNumberBuffers, v25, (*(v7 + 1248) * *(v7 + 1252)));
      this = AUMultiBandDynamicsProcessorV2::DoCoreProcess(v7, a2, &v61, *(v7 + 1252), v17, v27);
      if (this)
      {
        return this;
      }

      this = AUMultiBandDynamicsProcessorV2::DoCombinerLimiter(v7, a2, &v61, *(v7 + 1252), v17);
      if (this)
      {
        return this;
      }

      v12 = 0;
      *(v7 + 1260) = 0;
      *(v7 + 1268) = 0;
      i = *(v7 + 1252);
      *(v7 + 1264) += i;
    }

    if (v60 >= v14)
    {
      v28 = v14;
    }

    else
    {
      v28 = v60;
    }

    if (*(v7 + 1244))
    {
      v52 = a2;
      v53 = mBuffers;
      v29 = 0;
      v54 = v28;
      v30 = 4 * v28;
      v31 = v10;
      v32 = v59;
      v33 = v57;
      v34 = v58;
      do
      {
        mNumberBuffers = v34->mNumberBuffers;
        if (v29 >= mNumberBuffers)
        {
          v36 = mNumberBuffers - 1;
        }

        else
        {
          v36 = v29;
        }

        v37 = *v31;
        v31 += 2;
        this = memcpy((v37 + 4 * *(v7 + 1260)), v33[v36].mData + 4 * v32, v30);
        ++v29;
        v38 = *(v7 + 1244);
      }

      while (v29 < v38);
      LODWORD(v28) = v54;
      *(v7 + 1260) += v54;
      v39 = *(v7 + 1264);
      if (v39 >= v28)
      {
        v40 = v28;
      }

      else
      {
        v40 = v39;
      }

      if (v38)
      {
        v41 = 0;
        v51 = v40;
        v42 = 4 * v40;
        v44 = v55;
        v43 = v56;
        v45 = v53;
        do
        {
          v46 = v43->mNumberBuffers;
          if (v41 >= v46)
          {
            v47 = v46 - 1;
          }

          else
          {
            v47 = v41;
          }

          v48 = *v44;
          v44 += 2;
          this = memcpy(v45[v47].mData + 4 * v32, (v48 + 4 * *(v7 + 1268)), v42);
          ++v41;
        }

        while (v41 < *(v7 + 1244));
        v39 = *(v7 + 1264);
        mBuffers = v45;
        LODWORD(v40) = v51;
        a2 = v52;
        LODWORD(v28) = v54;
      }

      else
      {
        a2 = v52;
        mBuffers = v53;
      }
    }

    else
    {
      *(v7 + 1260) = v12 + v28;
      v39 = *(v7 + 1264);
      if (v39 >= v28)
      {
        LODWORD(v40) = v28;
      }

      else
      {
        LODWORD(v40) = *(v7 + 1264);
      }
    }

    *(v7 + 1268) += v40;
    *(v7 + 1264) = v39 - v40;
    v49 = v60;
    v59 += v28;
    v60 -= v28;
  }

  while (v49 > v14);
  return 0;
}

uint64_t AUMultiBandDynamicsProcessorV2::DoFixedBlockLatencyProcess(AUMultiBandDynamicsProcessorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, const AudioBufferList *a5, AudioBufferList *a6)
{
  v108 = a6;
  v113 = *MEMORY[0x1E69E9840];
  v6 = *&a3->mRateScalar;
  *&v112.mSampleTime = *&a3->mSampleTime;
  *&v112.mRateScalar = v6;
  v7 = *&a3->mSMPTETime.mHours;
  *&v112.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&v112.mSMPTETime.mHours = v7;
  v8 = *(this + 311);
  if ((v8 - 65) <= 0xFFFFFFBF)
  {
    CAAssertRtn();
  }

  MEMORY[0x1EEE9AC00](this);
  v14 = &v106[-v13];
  bzero(&v106[-v13], v15 + 24);
  v17 = 0;
  *v14 = v8;
  v18 = (v14 + 4);
  mNumberBuffers = a5->mNumberBuffers;
  mBuffers = a5->mBuffers;
  v19 = mNumberBuffers;
  v22 = mNumberBuffers - 1;
  do
  {
    if (v17 <= v19)
    {
      v23 = v17;
    }

    else
    {
      v23 = v22;
    }

    v24 = &mBuffers[v23];
    mDataByteSize = v24->mDataByteSize;
    *(v18 - 2) = 1;
    *(v18 - 1) = mDataByteSize;
    *v18 = v24->mData;
    v18 += 2;
    ++v17;
  }

  while (v8 != v17);
  if (v8 == *(this + 291))
  {
    v26 = 0;
    if (a4)
    {
      v27 = *(this + 290);
      v28 = v27 - *(this + 292);
      if (v28)
      {
        v29 = 0;
        if (v28 >= a4)
        {
          v26 = a4;
        }

        else
        {
          v26 = v27 - *(this + 292);
        }

        v30 = v27 - *(this + 294);
        if (v30 >= v26)
        {
          v31 = v26;
        }

        else
        {
          v31 = v30;
        }

        v32 = (v14 + 4);
        do
        {
          v33 = *v32;
          v32 += 2;
          v16 = memcpy((*(this + 148) + 4 * (*(this + 294) + *(this + 290) * v29++)), v33, 4 * v31);
          v34 = *(this + 291);
        }

        while (v29 < v34);
        if (v30 < v26 && v34)
        {
          v35 = 0;
          v36 = (v14 + 4);
          do
          {
            v37 = *v36;
            v36 += 2;
            v16 = memcpy((*(this + 148) + 4 * (*(this + 290) * v35++)), (v37 + 4 * v31), 4 * (v26 - v31));
          }

          while (v35 < *(this + 291));
        }

        *(this + 292) += v26;
        v38 = *(this + 294) + v26;
        *(this + 294) = v38;
        v39 = *(this + 290);
        v40 = v38 >= v39;
        v41 = v38 - v39;
        if (v40)
        {
          *(this + 294) = v41;
        }
      }
    }
  }

  else
  {
    v26 = 0;
  }

  v107 = a4;
  v42 = *(this + 315) + v26;
  *(this + 315) = v42;
  v43 = *(this + 313);
  if (v42 >= v43)
  {
    v44 = this + 904;
    v111 = a2;
    while (1)
    {
      v45 = *(this + 311);
      if ((v45 - 65) <= 0xFFFFFFBF)
      {
        break;
      }

      v46 = 16 * (v45 - 1);
      MEMORY[0x1EEE9AC00](v16);
      v47 = &v106[-((v46 + 39) & 0x1FFFFFFFF0)];
      bzero(v47, v46 + 24);
      v47->mNumberBuffers = v45;
      MEMORY[0x1EEE9AC00](v48);
      v49 = v47;
      bzero(v47, v46 + 24);
      v50 = 0;
      v47->mNumberBuffers = v45;
      v51 = 4 * v43;
      do
      {
        v52 = v47 + v50;
        v53 = v47 + v50;
        *(v52 + 2) = 1;
        *(v52 + 3) = v51;
        *(v53 + 2) = 1;
        *(v53 + 3) = v51;
        *(v53 + 2) = *&v44[v50];
        *(v52 + 2) = *&v44[v50 + 128];
        v50 += 16;
      }

      while (16 * v45 != v50);
      if (v43)
      {
        if (v45 == *(this + 291))
        {
          v54 = *(this + 292);
          if (v54)
          {
            v55 = 0;
            if (v54 >= v43)
            {
              v56 = v43;
            }

            else
            {
              v56 = *(this + 292);
            }

            v109 = *(this + 290) - *(this + 293);
            v110 = v56;
            if (v109 >= v56)
            {
              v57 = v56;
            }

            else
            {
              v57 = v109;
            }

            p_mData = &v47->mBuffers[0].mData;
            v59 = &v47->mBuffers[0].mData;
            do
            {
              v60 = *v59;
              v59 += 2;
              memcpy(v60, (*(this + 148) + 4 * (*(this + 293) + *(this + 290) * v55++)), 4 * v57);
              v61 = *(this + 291);
            }

            while (v55 < v61);
            v62 = v110;
            if (v109 < v110 && v61)
            {
              v63 = 0;
              do
              {
                v64 = *p_mData;
                p_mData += 2;
                memcpy(&v64[4 * v57], (*(this + 148) + 4 * (*(this + 290) * v63++)), 4 * (v62 - v57));
              }

              while (v63 < *(this + 291));
            }

            *(this + 292) -= v62;
            v65 = *(this + 293) + v62;
            *(this + 293) = v65;
            v66 = *(this + 290);
            v40 = v65 >= v66;
            v67 = v65 - v66;
            a2 = v111;
            if (v40)
            {
              *(this + 293) = v67;
            }
          }
        }
      }

      *(this + 315) -= *(this + 313);
      v68 = *(this + 112);
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        goto LABEL_95;
      }

      v70 = ausdk::AUBufferList::PrepareBufferOrError(v68, Element + 2, *(this + 313));
      if ((v71 & 1) == 0)
      {
        ausdk::Throw(v70);
      }

      CopyBufferList(&v47->mNumberBuffers, v70, (*(this + 312) * *(this + 313)));
      v73 = AUMultiBandDynamicsProcessorV2::DoCoreProcess(this, a2, &v112, *(this + 313), v47, v72);
      if (v73)
      {
        goto LABEL_74;
      }

      v16 = AUMultiBandDynamicsProcessorV2::DoCombinerLimiter(this, a2, &v112, *(this + 313), v49);
      v73 = v16;
      if (v16)
      {
        goto LABEL_74;
      }

      if (v49->mNumberBuffers == *(this + 301))
      {
        v74 = *(this + 313);
        if (v74)
        {
          v75 = *(this + 300);
          v76 = v75 - *(this + 302);
          if (v76)
          {
            if (v76 >= v74)
            {
              v77 = *(this + 313);
            }

            else
            {
              v77 = v75 - *(this + 302);
            }

            v78 = v75 - *(this + 304);
            if (v78 >= v77)
            {
              v79 = v77;
            }

            else
            {
              v79 = v78;
            }

            if (v49->mNumberBuffers)
            {
              v80 = 0;
              v81 = &v49->mBuffers[0].mData;
              v82 = &v49->mBuffers[0].mData;
              do
              {
                v83 = *v82;
                v82 += 2;
                v16 = memcpy((*(this + 153) + 4 * (*(this + 304) + *(this + 300) * v80++)), v83, 4 * v79);
                v84 = *(this + 301);
              }

              while (v80 < v84);
              if (v78 < v77 && v84)
              {
                v85 = 0;
                do
                {
                  v86 = *v81;
                  v81 += 2;
                  v16 = memcpy((*(this + 153) + 4 * (*(this + 300) * v85++)), &v86[4 * v79], 4 * (v77 - v79));
                }

                while (v85 < *(this + 301));
              }
            }

            *(this + 302) += v77;
            v87 = *(this + 304) + v77;
            *(this + 304) = v87;
            v88 = *(this + 300);
            v40 = v87 >= v88;
            v89 = v87 - v88;
            a2 = v111;
            if (v40)
            {
              *(this + 304) = v89;
            }
          }
        }
      }

      v43 = *(this + 313);
      *(this + 316) += v43;
      v112.mSampleTime = v112.mSampleTime + v43;
      if (*(this + 315) < v43)
      {
        goto LABEL_73;
      }
    }

    CAAssertRtn();
LABEL_95:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_73:
  v73 = 0;
LABEL_74:
  v90 = v107;
  if (v107)
  {
    if (v108->mNumberBuffers == *(this + 301))
    {
      v91 = *(this + 302);
      if (v91)
      {
        if (v91 >= v107)
        {
          v92 = v107;
        }

        else
        {
          v92 = *(this + 302);
        }

        v93 = *(this + 300) - *(this + 303);
        if (v93 >= v92)
        {
          v94 = v92;
        }

        else
        {
          v94 = v93;
        }

        if (v108->mNumberBuffers)
        {
          v95 = 0;
          v96 = &v108->mBuffers[0].mData;
          do
          {
            v97 = *v96;
            v96 += 2;
            memcpy(v97, (*(this + 153) + 4 * (*(this + 303) + *(this + 300) * v95++)), 4 * v94);
            v98 = *(this + 301);
          }

          while (v95 < v98);
          if (v93 < v92 && v98)
          {
            v99 = 0;
            v100 = &v108->mBuffers[0].mData;
            do
            {
              v101 = *v100;
              v100 += 2;
              memcpy(&v101[4 * v94], (*(this + 153) + 4 * (*(this + 300) * v99++)), 4 * (v92 - v94));
            }

            while (v99 < *(this + 301));
          }
        }

        *(this + 302) -= v92;
        v102 = *(this + 303) + v92;
        *(this + 303) = v102;
        v103 = *(this + 300);
        v40 = v102 >= v103;
        v104 = v102 - v103;
        if (v40)
        {
          *(this + 303) = v104;
        }
      }
    }
  }

  *(this + 316) -= v90;
  return v73;
}

uint64_t AUMultiBandDynamicsProcessorV2::ApplyAllpassFilter(AudioUnit *this, unsigned int *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioBufferList *a5, unsigned int a6, int a7, UInt32 inNumberFrames)
{
  v15 = (this + 86);
  AudioUnitProcess(this[a6 + 86], a2, a3, inNumberFrames, a5);
  result = AudioUnitProcess(*&v15[8 * a7], a2, a3, inNumberFrames, a4);
  if (*(this + 311))
  {
    v17 = 0;
    p_mData = &a4->mBuffers[0].mData;
    v19 = &a5->mBuffers[0].mData;
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *p_mData;
      p_mData += 2;
      result = MEMORY[0x1E12BE5D0](v20, 1, v22, 1, v20, 1, inNumberFrames);
      ++v17;
    }

    while (v17 < *(this + 311));
  }

  return result;
}

void AUMultiBandDynamicsProcessorV2::ApplyDynamicsToBand(AUMultiBandDynamicsProcessorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, AudioBufferList *ioData, unsigned int a5, UInt32 inNumberFrames)
{
  v9 = this + 1284;
  v10 = a5 + 1;
  if ((*(this + v10 + 1284) & 1) == 0)
  {
    v11 = (this + 8 * a5);
    AudioUnitProcess(v11[102], a2, a3, inNumberFrames, ioData);
    AUMultiBandDynamicsProcessorV2::GetVolCompState(this, v11[102], 100 * v10);
  }

  if (*(this + 311))
  {
    v12 = 0;
    v13 = 16;
    do
    {
      v14 = *(this + v10 + 323);
      if (v14 == 0.0 || (v9[v10] & 1) != 0)
      {
        MEMORY[0x1E12BE5D0](*(&ioData->mNumberBuffers + v13), 1, *(*(this + 110) + v13), 1, *(*(this + 110) + v13), 1, inNumberFrames);
      }

      else
      {
        v15 = __exp10f(v14 / 20.0);
        MEMORY[0x1E12BE8F0](*(&ioData->mNumberBuffers + v13), 1, &v15, *(*(this + 110) + v13), 1, *(*(this + 110) + v13), 1, inNumberFrames);
      }

      ++v12;
      v13 += 16;
    }

    while (v12 < *(this + 311));
  }
}

void AUMultiBandDynamicsProcessorV2::UpdateVolComp(AUMultiBandDynamicsProcessorV2 *this, OpaqueAudioComponentInstance *a2, unsigned int a3)
{
  v6 = *(this + 1314);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_85;
    }

    Parameter = ausdk::AUElement::GetParameter(v7, 0);
    if (a3)
    {
      AudioUnitSetParameter(a2, 0xCu, 0, 0, Parameter, 0);
      v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_85;
      }

      v12 = ausdk::AUElement::GetParameter(v10, 0xCu);
      AudioUnitSetParameter(a2, 0x11u, 0, 0, v12, 0);
      v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v14 & 1) == 0)
      {
        goto LABEL_85;
      }

      v15 = 23;
    }

    else
    {
      v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_85;
      }

      v41 = ausdk::AUElement::GetParameter(v39, 0xCu);
      AudioUnitSetParameter(a2, 0x11u, 0, 0, v41, 0);
      v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v42 & 1) == 0)
      {
        goto LABEL_85;
      }

      v15 = 24;
    }

    v43 = ausdk::AUElement::GetParameter(v13, v15);
    if (*(this + 216) != 1)
    {
      v43 = 0.0;
    }

    AudioUnitSetParameter(a2, 0x12u, 0, 0, v43, 0);
    v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v45)
    {
      v46 = ausdk::AUElement::GetParameter(v44, a3 + 100);
      AudioUnitSetParameter(a2, 1u, 0, 0, v46, 0);
      AudioUnitSetParameter(a2, 0xFu, 0, 0, 0.0, 0);
      if (a3)
      {
        if (a3 == 100)
        {
          *(this + 218) = 0;
        }

        else
        {
          *(this + 217) = 0;
        }
      }

      v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v48)
      {
        v16 = a3 / 0x64uLL;
        *(this + v16 + 323) = ausdk::AUElement::GetParameter(v47, a3 + 136);
        v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v50)
        {
          v51 = ausdk::AUElement::GetParameter(v49, a3 + 101);
          AudioUnitSetParameter(a2, 2u, 0, 0, v51, 0);
          v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v53)
          {
            v54 = ausdk::AUElement::GetParameter(v52, a3 + 102);
            AudioUnitSetParameter(a2, 3u, 0, 0, v54, 0);
            v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v56)
            {
              v57 = ausdk::AUElement::GetParameter(v55, a3 + 105);
              AudioUnitSetParameter(a2, 4u, 0, 0, v57, 0);
              v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v59)
              {
                v60 = ausdk::AUElement::GetParameter(v58, a3 + 103);
                AudioUnitSetParameter(a2, 5u, 0, 0, v60, 0);
                v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v62)
                {
                  v63 = ausdk::AUElement::GetParameter(v61, a3 + 107);
                  v64 = v63 >= 6.0 ? (1000.0 / v63) * 0.06 : 0.6;
                  AudioUnitSetParameter(a2, 6u, 0, 0, v64, 0);
                  v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v66)
                  {
                    v67 = ausdk::AUElement::GetParameter(v65, a3 + 108);
                    if (v67 >= 0.0)
                    {
                      v68 = (1000.0 / v67) * -0.06;
                    }

                    else
                    {
                      AudioUnitSetParameter(a2, 6u, 0, 0, 0.6, 0);
                      v68 = -0.6;
                    }

                    AudioUnitSetParameter(a2, 7u, 0, 0, v68, 0);
                    v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v70)
                    {
                      v71 = ausdk::AUElement::GetParameter(v69, a3 + 111);
                      AudioUnitSetParameter(a2, 0x10u, 0, 0, v71, 0);
                      v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v73)
                      {
                        v74 = ausdk::AUElement::GetParameter(v72, a3 + 120);
                        AudioUnitSetParameter(a2, 8u, 0, 0, v74, 0);
                        v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v76)
                        {
                          v77 = ausdk::AUElement::GetParameter(v75, a3 + 113);
                          AudioUnitSetParameter(a2, 0xBu, 0, 0, v77, 0);
                          v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v79)
                          {
                            v80 = ausdk::AUElement::GetParameter(v78, a3 + 114);
                            AudioUnitSetParameter(a2, 0xAu, 0, 0, v80, 0);
                            v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v82)
                            {
                              v83 = ausdk::AUElement::GetParameter(v81, a3 + 115);
                              AudioUnitSetParameter(a2, 0x14u, 0, 0, v83, 0);
                              v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v85)
                              {
                                v86 = ausdk::AUElement::GetParameter(v84, a3 + 116);
                                AudioUnitSetParameter(a2, 0x15u, 0, 0, v86, 0);
                                v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v88)
                                {
                                  v89 = ausdk::AUElement::GetParameter(v87, a3 + 117);
                                  AudioUnitSetParameter(a2, 0x1Eu, 0, 0, v89, 0);
                                  v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v91)
                                  {
                                    v92 = ausdk::AUElement::GetParameter(v90, a3 + 118);
                                    AudioUnitSetParameter(a2, 0x1Fu, 0, 0, v92, 0);
                                    v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if (v94)
                                    {
                                      v95 = ausdk::AUElement::GetParameter(v93, a3 + 109);
                                      if (v95 < v57)
                                      {
                                        v95 = v57;
                                      }

                                      AudioUnitSetParameter(a2, 0x28u, 0, 0, v95, 0);
                                      v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if (v97)
                                      {
                                        v98 = ausdk::AUElement::GetParameter(v96, a3 + 110);
                                        if (v98 < v57)
                                        {
                                          v98 = v57;
                                        }

                                        AudioUnitSetParameter(a2, 0x29u, 0, 0, v98, 0);
                                        v99 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                        if (v100)
                                        {
                                          v101 = ausdk::AUElement::GetParameter(v99, a3 + 112);
                                          AudioUnitSetParameter(a2, 0x33u, 0, 0, v101, 0);
                                          v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if (v103)
                                          {
                                            v104 = ausdk::AUElement::GetParameter(v102, a3 + 111);
                                            AudioUnitSetParameter(a2, 0x10u, 0, 0, v104, 0);
                                            v105 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                            if (v106)
                                            {
                                              v107 = ausdk::AUElement::GetParameter(v105, a3 + 122);
                                              AudioUnitSetParameter(a2, 0x41u, 0, 0, v107, 0);
                                              v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                              if (v109)
                                              {
                                                v110 = ausdk::AUElement::GetParameter(v108, a3 + 123);
                                                AudioUnitSetParameter(a2, 0x42u, 0, 0, v110, 0);
                                                v111 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                if (v112)
                                                {
                                                  ausdk::AUElement::GetParameter(v111, a3 + 121);
                                                  v113 = *(this + 313);
                                                  Element = ausdk::AUScope::GetElement((this + 128), 0);
                                                  if (!Element)
                                                  {
                                                    ausdk::Throw(0xFFFFD583);
                                                  }

                                                  v115 = (v113 * 1000.0) / *(Element + 80);
                                                  AudioUnitSetParameter(a2, 9u, 0, 0, v115, 0);
                                                  v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                  if (v117)
                                                  {
                                                    v118 = ausdk::AUElement::GetParameter(v116, a3 + 124);
                                                    AudioUnitSetParameter(a2, 0x43u, 0, 0, v118, 0);
                                                    v119 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                    if (v120)
                                                    {
                                                      v121 = ausdk::AUElement::GetParameter(v119, a3 + 125);
                                                      AudioUnitSetParameter(a2, 0x44u, 0, 0, v121 * 0.001, 0);
                                                      v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                      if (v123)
                                                      {
                                                        v124 = ausdk::AUElement::GetParameter(v122, a3 + 126);
                                                        AudioUnitSetParameter(a2, 0x45u, 0, 0, v124 * 0.001, 0);
                                                        v125 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                        if (v126)
                                                        {
                                                          v127 = ausdk::AUElement::GetParameter(v125, a3 + 127);
                                                          AudioUnitSetParameter(a2, 0x46u, 0, 0, v127, 0);
                                                          v128 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                          if (v129)
                                                          {
                                                            v130 = ausdk::AUElement::GetParameter(v128, a3 + 139);
                                                            AudioUnitSetParameter(a2, 0x47u, 0, 0, v130, 0);
                                                            v131 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                            if (v132)
                                                            {
                                                              v133 = ausdk::AUElement::GetParameter(v131, a3 + 131);
                                                              AudioUnitSetParameter(a2, 0x48u, 0, 0, v133, 0);
                                                              v134 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                              if (v135)
                                                              {
                                                                v136 = ausdk::AUElement::GetParameter(v134, a3 + 132);
                                                                AudioUnitSetParameter(a2, 0x49u, 0, 0, v136, 0);
                                                                v137 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                                if (v138)
                                                                {
                                                                  v139 = ausdk::AUElement::GetParameter(v137, a3 + 133);
                                                                  AudioUnitSetParameter(a2, 0x4Au, 0, 0, v139 * 0.001, 0);
                                                                  v140 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                                  if (v141)
                                                                  {
                                                                    v142 = ausdk::AUElement::GetParameter(v140, a3 + 134);
                                                                    AudioUnitSetParameter(a2, 0x4Bu, 0, 0, v142 * 0.001, 0);
                                                                    v143 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                                    if (v144)
                                                                    {
                                                                      v36 = ausdk::AUElement::GetParameter(v143, a3 + 135);
                                                                      v37 = a2;
                                                                      v38 = 76;
                                                                      goto LABEL_79;
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
                }
              }
            }
          }
        }
      }
    }

LABEL_85:
    abort();
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_85;
  }

  v16 = a3 / 0x64uLL;
  *(this + v16 + 323) = ausdk::AUElement::GetParameter(v7, a3 + 136);
  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_85;
  }

  v19 = ausdk::AUElement::GetParameter(v17, a3 + 107);
  v20 = v19 >= 6.0 ? (1000.0 / v19) * 0.06 : 0.6;
  AudioUnitSetParameter(a2, 6u, 0, 0, v20, 0);
  v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_85;
  }

  v23 = ausdk::AUElement::GetParameter(v21, a3 + 108);
  if (v23 <= 0.0)
  {
    AudioUnitSetParameter(a2, 6u, 0, 0, 0.6, 0);
    v24 = -0.6;
  }

  else
  {
    v24 = (1000.0 / v23) * -0.06;
  }

  AudioUnitSetParameter(a2, 7u, 0, 0, v24, 0);
  outValue = 0.0;
  AudioUnitGetParameter(a2, 4u, 0, 0, &outValue);
  v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_85;
  }

  v27 = ausdk::AUElement::GetParameter(v25, a3 + 109);
  if (v27 < outValue)
  {
    v27 = outValue;
  }

  AudioUnitSetParameter(a2, 0x28u, 0, 0, v27, 0);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_85;
  }

  v30 = ausdk::AUElement::GetParameter(v28, a3 + 110);
  if (v30 < outValue)
  {
    v30 = outValue;
  }

  AudioUnitSetParameter(a2, 0x29u, 0, 0, v30, 0);
  v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_85;
  }

  v33 = ausdk::AUElement::GetParameter(v31, a3 + 112);
  AudioUnitSetParameter(a2, 0x33u, 0, 0, v33, 0);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_85;
  }

  v36 = ausdk::AUElement::GetParameter(v34, a3 + 111);
  v37 = a2;
  v38 = 16;
LABEL_79:
  AudioUnitSetParameter(v37, v38, 0, 0, v36, 0);
  v145 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v146 & 1) == 0)
  {
    goto LABEL_85;
  }

  v147 = ausdk::AUElement::GetParameter(v145, a3 + 137);
  if (a3 && v147 != 0.0)
  {
    *(this + 320) = v16;
  }

  v148 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v149 & 1) == 0)
  {
    goto LABEL_85;
  }

  *(this + v16 + 1284) = ausdk::AUElement::GetParameter(v148, a3 + 138) != 0.0;
}

void AUMultiBandDynamicsProcessorV2::CalculateVolCompGainOffset(AUMultiBandDynamicsProcessorV2 *this)
{
  if (*(this + 1314) == 1)
  {
    v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v3 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v2, 1u), v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v6 & 1) == 0))
    {
      abort();
    }

    v7 = (Parameter + 0.0) + ausdk::AUElement::GetParameter(v5, 5u);
    if (v7 != *(this + 217))
    {
      v8 = 0;
      *(this + 217) = v7;
      do
      {
        AudioUnitSetParameter(*(this + v8 + 824), 0xFu, 0, 0, v7, 0);
        v8 += 8;
      }

      while (v8 != 24);
    }

    if (v7 != *(this + 218))
    {
      *(this + 218) = v7;
      v9 = *(this + 102);

      AudioUnitSetParameter(v9, 0xFu, 0, 0, v7, 0);
    }
  }
}

uint64_t AUMultiBandDynamicsProcessorV2::UpdateCrossOverEQs(uint64_t this)
{
  if ((*(this + 1272) - 5) < 0xFFFFFFFD)
  {
    return this;
  }

  v1 = this;
  v2 = 0;
  v3 = this + 688;
  do
  {
    for (i = 0; i != 128; i += 8)
    {
      AudioUnitSetParameter(*(v3 + i), v2 | 0x3E8, 0, 0, 1.0, 0);
    }

    ++v2;
  }

  while (v2 != 8);
  v5 = *(v1 + 1272);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v1 + 32, 0);
  if (v5 == 2)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_52;
    }

    Parameter = ausdk::AUElement::GetParameter(v6, 8u);
    this = ausdk::AUScope::GetElement((v1 + 128), 0);
    if (!this)
    {
      goto LABEL_51;
    }

    if (*(this + 80) * 0.49000001 < Parameter)
    {
      this = ausdk::AUScope::GetElement((v1 + 128), 0);
      if (!this)
      {
        goto LABEL_51;
      }

      Parameter = *(this + 80) * 0.49000001;
    }

    if (*(v1 + 856))
    {
      v16 = 0;
      do
      {
        AudioUnitSetParameter(*(v1 + 688), v16 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 688), v16 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 688), v16 + 3000, 0, 0, Parameter, 0);
        AudioUnitSetParameter(*(v1 + 696), v16 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 696), v16 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 696), v16 + 3000, 0, 0, Parameter, 0);
        AudioUnitSetParameter(*(v1 + 688), v16 + 2000, 0, 0, 1.0, 0);
        this = AudioUnitSetParameter(*(v1 + 696), v16 + 2000, 0, 0, 2.0, 0);
        ++v16;
      }

      while (v16 < *(v1 + 856));
    }
  }

  else
  {
    if (v5 == 3)
    {
      if (v7)
      {
        v8 = ausdk::AUElement::GetParameter(v6, 8u);
        Element = ausdk::AUScope::GetElement((v1 + 128), 0);
        if (!Element)
        {
          goto LABEL_51;
        }

        if (*(Element + 80) * 0.49000001 < v8)
        {
          v10 = ausdk::AUScope::GetElement((v1 + 128), 0);
          if (!v10)
          {
            goto LABEL_51;
          }

          v8 = *(v10 + 80) * 0.49000001;
        }

        v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v1 + 32, 0);
        if (v12)
        {
          v13 = ausdk::AUElement::GetParameter(v11, 9u);
          this = ausdk::AUScope::GetElement((v1 + 128), 0);
          if (this)
          {
            if (*(this + 80) * 0.49000001 >= v13)
            {
              goto LABEL_19;
            }

            this = ausdk::AUScope::GetElement((v1 + 128), 0);
            if (this)
            {
              v13 = *(this + 80) * 0.49000001;
LABEL_19:
              if (*(v1 + 856))
              {
                v14 = 0;
                do
                {
                  AudioUnitSetParameter(*(v1 + 688), v14 + 4000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 688), v14 + 1000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 688), v14 + 3000, 0, 0, v8, 0);
                  AudioUnitSetParameter(*(v1 + 688), v14 + 2000, 0, 0, 1.0, 0);
                  AudioUnitSetParameter(*(v1 + 696), v14 + 4000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 696), v14 + 1000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 696), v14 + 3000, 0, 0, v8, 0);
                  AudioUnitSetParameter(*(v1 + 696), v14 + 2000, 0, 0, 2.0, 0);
                  AudioUnitSetParameter(*(v1 + 704), v14 + 4000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 704), v14 + 1000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 704), v14 + 3000, 0, 0, v13, 0);
                  AudioUnitSetParameter(*(v1 + 704), v14 + 2000, 0, 0, 2.0, 0);
                  AudioUnitSetParameter(*(v1 + 712), v14 + 4000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 712), v14 + 1000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 712), v14 + 3000, 0, 0, v13, 0);
                  AudioUnitSetParameter(*(v1 + 712), v14 + 2000, 0, 0, 1.0, 0);
                  AudioUnitSetParameter(*(v1 + 720), v14 + 4000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 720), v14 + 1000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 720), v14 + 3000, 0, 0, v13, 0);
                  AudioUnitSetParameter(*(v1 + 720), v14 + 2000, 0, 0, 1.0, 0);
                  AudioUnitSetParameter(*(v1 + 728), v14 + 4000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 728), v14 + 1000, 0, 0, 0.0, 0);
                  AudioUnitSetParameter(*(v1 + 728), v14 + 3000, 0, 0, v13, 0);
                  this = AudioUnitSetParameter(*(v1 + 728), v14 + 2000, 0, 0, 2.0, 0);
                  ++v14;
                }

                while (v14 < *(v1 + 856));
              }

              return this;
            }
          }

LABEL_51:
          ausdk::Throw(0xFFFFD583);
        }
      }

LABEL_52:
      abort();
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_52;
    }

    v17 = ausdk::AUElement::GetParameter(v6, 8u);
    v18 = ausdk::AUScope::GetElement((v1 + 128), 0);
    if (!v18)
    {
      goto LABEL_51;
    }

    if (*(v18 + 80) * 0.49000001 < v17)
    {
      v19 = ausdk::AUScope::GetElement((v1 + 128), 0);
      if (!v19)
      {
        goto LABEL_51;
      }

      v17 = *(v19 + 80) * 0.49000001;
    }

    v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v1 + 32, 0);
    if ((v21 & 1) == 0)
    {
      goto LABEL_52;
    }

    v22 = ausdk::AUElement::GetParameter(v20, 9u);
    v23 = ausdk::AUScope::GetElement((v1 + 128), 0);
    if (!v23)
    {
      goto LABEL_51;
    }

    if (*(v23 + 80) * 0.49000001 < v22)
    {
      v24 = ausdk::AUScope::GetElement((v1 + 128), 0);
      if (!v24)
      {
        goto LABEL_51;
      }

      v22 = *(v24 + 80) * 0.49000001;
    }

    v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v1 + 32, 0);
    if ((v26 & 1) == 0)
    {
      goto LABEL_52;
    }

    v27 = ausdk::AUElement::GetParameter(v25, 0xAu);
    this = ausdk::AUScope::GetElement((v1 + 128), 0);
    if (!this)
    {
      goto LABEL_51;
    }

    if (*(this + 80) * 0.49000001 < v27)
    {
      this = ausdk::AUScope::GetElement((v1 + 128), 0);
      if (!this)
      {
        goto LABEL_51;
      }

      v27 = *(this + 80) * 0.49000001;
    }

    if (*(v1 + 856))
    {
      v28 = 0;
      do
      {
        AudioUnitSetParameter(*(v1 + 688), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 688), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 688), v28 + 3000, 0, 0, v22, 0);
        AudioUnitSetParameter(*(v1 + 688), v28 + 2000, 0, 0, 1.0, 0);
        AudioUnitSetParameter(*(v1 + 696), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 696), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 696), v28 + 3000, 0, 0, v22, 0);
        AudioUnitSetParameter(*(v1 + 696), v28 + 2000, 0, 0, 2.0, 0);
        AudioUnitSetParameter(*(v1 + 704), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 704), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 704), v28 + 3000, 0, 0, v27, 0);
        AudioUnitSetParameter(*(v1 + 704), v28 + 2000, 0, 0, 2.0, 0);
        AudioUnitSetParameter(*(v1 + 712), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 712), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 712), v28 + 3000, 0, 0, v27, 0);
        AudioUnitSetParameter(*(v1 + 712), v28 + 2000, 0, 0, 1.0, 0);
        AudioUnitSetParameter(*(v1 + 720), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 720), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 720), v28 + 3000, 0, 0, v17, 0);
        AudioUnitSetParameter(*(v1 + 720), v28 + 2000, 0, 0, 2.0, 0);
        AudioUnitSetParameter(*(v1 + 728), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 728), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 728), v28 + 3000, 0, 0, v17, 0);
        AudioUnitSetParameter(*(v1 + 728), v28 + 2000, 0, 0, 1.0, 0);
        AudioUnitSetParameter(*(v1 + 736), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 736), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 736), v28 + 3000, 0, 0, v17, 0);
        AudioUnitSetParameter(*(v1 + 736), v28 + 2000, 0, 0, 1.0, 0);
        AudioUnitSetParameter(*(v1 + 744), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 744), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 744), v28 + 3000, 0, 0, v17, 0);
        AudioUnitSetParameter(*(v1 + 744), v28 + 2000, 0, 0, 2.0, 0);
        AudioUnitSetParameter(*(v1 + 752), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 752), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 752), v28 + 3000, 0, 0, v27, 0);
        AudioUnitSetParameter(*(v1 + 752), v28 + 2000, 0, 0, 1.0, 0);
        AudioUnitSetParameter(*(v1 + 760), v28 + 4000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 760), v28 + 1000, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*(v1 + 760), v28 + 3000, 0, 0, v27, 0);
        this = AudioUnitSetParameter(*(v1 + 760), v28 + 2000, 0, 0, 2.0, 0);
        ++v28;
      }

      while (v28 < *(v1 + 856));
    }
  }

  return this;
}

uint64_t AUMultiBandDynamicsProcessorV2::ProcessMultipleBufferLists(AUMultiBandDynamicsProcessorV2 *this, unsigned int *a2, unsigned int a3, unsigned int a4, AudioBufferList **a5, unsigned int a6, const AudioBufferList **a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v13 = *a5;
  result = SimpleMeters::ProcessInputBufferList((this + 1368), a3, *a5);
  if (!result)
  {
    v15 = (this + 560);
    v16 = AUMultiBandDynamicsProcessorV2::DoBlockProcess(this, a2, (this + 560), a3, v13, v13);
    if (a4 >= 2 && a5[1] && ((v17 = *(this + 15)) == 0 ? (v16 = (*(this + 13) - *(this + 12)) >> 3) : (v16 = (*(*v17 + 24))(v17)), v16 == 2))
    {
      v18 = a5[1];
      v16 = MEMORY[0x1E12BE5D0](v18->mBuffers[0].mData, 1, v13->mBuffers[0].mData, 1, (*a7)->mBuffers[0].mData, 1, a3);
      if (*(this + 311) >= 2u)
      {
        v16 = MEMORY[0x1E12BE5D0](v18->mBuffers[v18->mNumberBuffers > 1].mData, 1, v13->mBuffers[v13->mNumberBuffers > 1].mData, 1, *&(*a7)[1].mBuffers[0].mNumberChannels, 1, a3);
      }
    }

    else if ((*a7)->mBuffers[0].mData != v13->mBuffers[0].mData)
    {
      v19 = *(this + 311);
      if (v19)
      {
        v20 = 0;
        v21 = 16;
        do
        {
          if (v20 < (*a7)->mNumberBuffers)
          {
            mNumberBuffers = v13->mNumberBuffers;
            if (mNumberBuffers)
            {
              v23 = mNumberBuffers - 1;
              if (v20 < mNumberBuffers)
              {
                v23 = v20;
              }

              v16 = memcpy(*(&(*a7)->mNumberBuffers + v21), v13->mBuffers[v23].mData, *(this + 312) * a3);
              v19 = *(this + 311);
            }
          }

          ++v20;
          v21 += 16;
        }

        while (v20 < v19);
      }
    }

    if (*(this + 311) == 1 && (*a7)->mNumberBuffers == 2)
    {
      v16 = memcpy(*&(*a7)[1].mBuffers[0].mNumberChannels, (*a7)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
    }

    if (*(this + 1256) == 1)
    {
      v24 = *(this + 36);
      *&v38.mSampleTime = *v15;
      *&v38.mRateScalar = v24;
      v25 = *(this + 38);
      *&v38.mSMPTETime.mSubframes = *(this + 37);
      *&v38.mSMPTETime.mHours = v25;
      if (a3)
      {
        v26 = 0;
        v27 = a3;
        do
        {
          v28 = *a7;
          if ((*a7)->mNumberBuffers - 65 <= 0xFFFFFFBF)
          {
            CAAssertRtn();
          }

          MEMORY[0x1EEE9AC00](v16);
          v30 = (&v38 - v29);
          bzero(&v38 - v29, v31 + 24);
          v32 = v28->mNumberBuffers;
          v30->mNumberBuffers = v32;
          v33 = *(this + 313);
          if (v32)
          {
            p_mData = &v28->mBuffers[0].mData;
            v35 = &v30->mBuffers[0].mData;
            do
            {
              *(v35 - 2) = 1;
              *(v35 - 1) = 4 * v33;
              v36 = *p_mData;
              p_mData += 2;
              *v35 = &v36[4 * v26];
              v35 += 2;
              --v32;
            }

            while (v32);
          }

          v16 = AUMultiBandDynamicsProcessorV2::DoCombinerLimiter(this, a2, &v38, v33, v30);
          if (v16)
          {
            break;
          }

          v37 = *(this + 313);
          v26 += v37;
          v38.mSampleTime = v38.mSampleTime + v37;
          v27 -= v37;
        }

        while (v27);
      }
    }

    *v15 = *v15 + a3;
    return SimpleMeters::ProcessOutputBufferList((this + 1368), a3, *a7);
  }

  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::SetParameter(AUMultiBandDynamicsProcessorV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 > 0x257)
  {
    return 4294956418;
  }

  if (a2 > 0x63)
  {
    v15 = a2 / 0x64;
    if (a2 % 0x64 == 37 && a5 != 0.0)
    {
      v16 = *(this + 138);
      if ((v16 + 1) >= 2)
      {
        v17 = 2;
        v18 = 237;
        do
        {
          if (v15 != v17)
          {
            v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v20 & 1) == 0)
            {
              goto LABEL_36;
            }

            ausdk::AUElement::SetParameter(v19, v18, 0.0);
            v16 = *(this + 138);
          }

          ++v17;
          v18 += 100;
        }

        while (v17 <= v16 + 1);
      }
    }

    goto LABEL_2;
  }

  if (a2)
  {
    if (a2 == 7)
    {
      v11 = ausdk::AUBase::SetParameter(this, 7u, 0, a4, a5);
      if (!v11)
      {
        ++*(this + 132);
      }

      goto LABEL_30;
    }

    if (a2 != 5)
    {
LABEL_2:
      v10 = AUMultiBandDynamicsProcessorV2::DetermineBandsToProcess(this);
      LODWORD(v11) = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
      if (!v11)
      {
        ++*(this + 132);
      }

      if (v10 != AUMultiBandDynamicsProcessorV2::DetermineBandsToProcess(this))
      {
        (*(*this + 432))(this, 3, 0, 0);
      }

      if (v11 == -10866)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }

    v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v13)
    {
      if (ausdk::AUElement::GetParameter(v12, 5u) != a5)
      {
        v11 = ausdk::AUBase::SetParameter(this, 5u, 0, a4, a5);
LABEL_30:
        AUMultiBandDynamicsProcessorV2::CalculateVolCompGainOffset(this);
        return v11;
      }

      return 0;
    }

LABEL_36:
    abort();
  }

  v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_36;
  }

  if (ausdk::AUElement::GetParameter(v21, 0) == a5)
  {
    return 0;
  }

  v11 = ausdk::AUBase::SetParameter(this, 0, 0, a4, a5);
  if (!v11)
  {
    ++*(this + 134);
  }

  return v11;
}

uint64_t AUMultiBandDynamicsProcessorV2::GetParameter(AUMultiBandDynamicsProcessorV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a2 > 0x257)
  {
    return 4294956418;
  }

  if (a2 % 0x64u - 28 <= 2)
  {
    *(this + 1313) = 1;
  }

  return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
}

uint64_t AUMultiBandDynamicsProcessorV2::SetProperty(AUMultiBandDynamicsProcessorV2 *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  v7 = a6;
  v15 = 0;
  if (SimpleMeters::HandleSetProperty((this + 1368), a2, a3, a5, a6, &v15, a7))
  {
    return v15;
  }

  if (a3)
  {
    return 4294956417;
  }

  result = 0;
  if (a2 <= 64002)
  {
    switch(a2)
    {
      case 21:
        if (v7 >= 4)
        {
          result = 0;
          v13 = *(this + 136);
          v14 = *a5;
          *(this + 136) = *a5 != 0;
          if (v13)
          {
            if (!v14)
            {
              result = 0;
              *(this + 1240) = 1;
            }
          }

          return result;
        }

        break;
      case 3700:
        if (v7 >= 4)
        {
          result = 0;
          *(this + 376) = *a5;
          return result;
        }

        break;
      case 64002:
        return result;
      default:
        return 4294956417;
    }

    return 4294956445;
  }

  if ((a2 - 64004) >= 3)
  {
    if (a2 == 64003)
    {
      if (*a5 <= 4)
      {
        result = 0;
        *(this + 137) = *a5;
        return result;
      }

      return 4294956445;
    }

    return 4294956417;
  }

  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::GetProperty(AUMultiBandDynamicsProcessorV2 *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  v12 = 0;
  if (SimpleMeters::HandleGetProperty((this + 1368), a2, a3, a5, &v12, a6))
  {
    return v12;
  }

  result = 4294956417;
  if (a2 > 64003)
  {
    switch(a2)
    {
      case 64004:
        result = 0;
        v11 = *(this + 214);
        break;
      case 64005:
        result = 0;
        v11 = *(this + 215);
        break;
      case 64006:
        result = 0;
        v11 = *(this + 216);
        break;
      default:
        return result;
    }

    goto LABEL_17;
  }

  if (a2 != 21)
  {
    if (a2 == 3700)
    {
      result = 0;
      v11 = *(this + 376);
    }

    else
    {
      if (a2 != 64003)
      {
        return result;
      }

      result = 0;
      v11 = *(this + 137);
    }

LABEL_17:
    *a5 = v11;
    return result;
  }

  if (!a3)
  {
    *a5 = *(this + 136);
    return v12;
  }

  return 4294956430;
}

uint64_t AUMultiBandDynamicsProcessorV2::GetPropertyInfo(AUMultiBandDynamicsProcessorV2 *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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
      v6 = (*(this + 172) - *(this + 171)) >> 7;
    }

    if ((a3 & 0xFFFFFFFD) == 0)
    {
      v6 += (*(this + 175) - *(this + 174)) >> 7;
    }

    v7 = 0;
    v8 = 16 * v6;
    goto LABEL_12;
  }

  result = 4294956417;
  if (!a3)
  {
    v10 = 64003;
    if (a2 > 64003)
    {
      if (a2 == 64004 || a2 == 64005)
      {
        goto LABEL_21;
      }

      v10 = 64006;
    }

    else if (a2 == 21 || a2 == 3700)
    {
      goto LABEL_21;
    }

    if (a2 != v10)
    {
      return result;
    }

LABEL_21:
    result = 0;
    *a6 = 1;
    *a5 = 4;
  }

  return result;
}

uint64_t AUMultiBandDynamicsProcessorV2::Reset(AUMultiBandDynamicsProcessorV2 *this)
{
  SimpleMeters::Reset(this + 1368);
  if ((*(this + 1256) & 1) == 0)
  {
    v2 = *(this + 311);
    if (v2)
    {
      v3 = (this + 1040);
      v4 = *(this + 311);
      do
      {
        v5 = *(v3 - 17);
        v6 = *(v3 - 16) - v5;
        if (v6 >= 1)
        {
          bzero(v5, v6);
        }

        v7 = *(v3 - 1);
        v8 = *v3 - v7;
        if (v8 >= 1)
        {
          bzero(v7, v8);
        }

        v3 += 2;
        --v4;
      }

      while (v4);
    }

    if (*(this + 1257))
    {
      v9 = *(this + 313);
      if (v9)
      {
        v10 = *(this + 313);
        v11 = *(this + 84);
        do
        {
          v12 = v10;
          v10 = v11 % v10;
          v11 = v12;
        }

        while (v10);
      }

      else
      {
        v12 = *(this + 84);
      }

      v13 = (v9 / v12 - 1) * v12;
      v14 = v13 + *(this + 84);
      *(this + 290) = v14;
      *(this + 291) = v2;
      *(this + 294) = 0;
      *(this + 146) = 0;
      v15 = *(this + 149);
      v16 = *(this + 148);
      v17 = (v15 - v16) >> 2;
      v18 = v14 * v2;
      if (v17 == v18)
      {
        if (v15 != v16)
        {
          bzero(*(this + 148), v15 - v16);
        }
      }

      else
      {
        std::valarray<float>::resize(this + 1184, v18);
        v16 = *(this + 148);
        v17 = (*(this + 149) - v16) >> 2;
      }

      if (v17 >= 1)
      {
        bzero(v16, 4 * v17);
      }

      *(this + 292) = 0;
      *(this + 294) = 0;
      v19 = *(this + 84) + v13;
      v20 = *(this + 311);
      *(this + 300) = v19;
      *(this + 301) = v20;
      *(this + 304) = 0;
      *(this + 151) = 0;
      v21 = *(this + 154);
      v22 = *(this + 153);
      v23 = (v21 - v22) >> 2;
      v24 = v20 * v19;
      if (v23 == v24)
      {
        if (v21 != v22)
        {
          bzero(*(this + 153), v21 - v22);
        }
      }

      else
      {
        std::valarray<float>::resize(this + 1224, v24);
        v22 = *(this + 153);
        v23 = (*(this + 154) - v22) >> 2;
      }

      if (v23 >= 1)
      {
        bzero(v22, 4 * v23);
      }

      if (v13 >= v19)
      {
        v25 = v19;
      }

      else
      {
        v25 = v13;
      }

      *(this + 302) = v25;
      *(this + 304) = v25;
    }

    *(this + 315) = 0;
    *(this + 158) = *(this + 313);
  }

  v26 = *(this + 110);
  if (v26 && *v26)
  {
    v27 = 0;
    v28 = (v26 + 4);
    do
    {
      bzero(*v28, *(v28 - 1));
      ++v27;
      v28 += 2;
    }

    while (v27 < *v26);
  }

  AudioUnitReset(*(this + 106), 0, 0);
  for (i = 0; i != 32; i += 8)
  {
    AudioUnitReset(*(this + i + 816), 0, 0);
  }

  v30 = 0;
  v31 = this + 688;
  do
  {
    result = AudioUnitReset(*&v31[v30], 0, 0);
    v30 += 8;
  }

  while (v30 != 128);
  return result;
}

void AUMultiBandDynamicsProcessorV2::Cleanup(AUMultiBandDynamicsProcessorV2 *this)
{
  *(this + 172) = *(this + 171);
  *(this + 175) = *(this + 174);
  AUMultiBandDynamicsProcessorV2::UnInitializeUnderlyingAUs(this);

  AUMultiBandDynamicsProcessorV2::DeAllocateIntermediateBuffer(this + 110, v2);
}

OpaqueAudioComponentInstance *AUMultiBandDynamicsProcessorV2::UnInitializeUnderlyingAUs(AUMultiBandDynamicsProcessorV2 *this)
{
  v2 = *(this + 138);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(this + i + 102);
      if (v4)
      {
        if (AudioUnitUninitialize(v4))
        {
          goto LABEL_16;
        }

        v2 = *(this + 138);
      }
    }
  }

  v5 = 0;
  do
  {
    while (1)
    {
      v6 = *(this + v5 + 86);
      if (v6)
      {
        break;
      }

      if (++v5 == 16)
      {
        goto LABEL_16;
      }
    }

    ++v5;
    if (AudioUnitUninitialize(v6))
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 16;
    }
  }

  while (!v7);
LABEL_16:
  result = *(this + 106);
  if (result)
  {

    return AudioUnitUninitialize(result);
  }

  return result;
}

void AUMultiBandDynamicsProcessorV2::DeAllocateIntermediateBuffer(unsigned int **this, AudioBufferList **a2)
{
  v3 = *this;
  if (v3)
  {
    v4 = *v3;
    if (v4)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        if (*&v3[v6])
        {
          free(*&v3[v6]);
          v3 = *this;
          v4 = **this;
        }

        ++v5;
        v6 += 4;
      }

      while (v5 < v4);
    }

    free(v3);
    *this = 0;
  }
}

uint64_t AUMultiBandDynamicsProcessorV2::Initialize(AUMultiBandDynamicsProcessorV2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = v4;
  v6 = (v4 + 80);
  if (*(v3 + 80) == *(v4 + 80))
  {
    v7 = *(v3 + 108);
    v8 = *(v4 + 108);
    if ((v7 < 2 || v7 == v8) && (v7 != 1 || v8 <= 2))
    {
      v11 = *(v3 + 96);
      v34[0] = *(v3 + 80);
      v34[1] = v11;
      v35 = *(v3 + 112);
      v12 = *(v4 + 96);
      v32[0] = *v6;
      v32[1] = v12;
      v33 = *(v4 + 112);
      SimpleMeters::Initialize(this + 1368, v34, v32);
      *(this + 318) = AUMultiBandDynamicsProcessorV2::DetermineBandsToProcess(this);
      LOBYTE(v32[0]) = 0;
      AppIntegerValue = CACFPreferencesGetAppIntegerValue(@"mbdp_max_bands", @"com.apple.coreaudio", v32);
      if (v32[0])
      {
        v14 = *(this + 318);
        if (v14 < AppIntegerValue)
        {
          *(this + 318) = AppIntegerValue;
          v14 = AppIntegerValue;
        }
      }

      else
      {
        v14 = *(this + 318);
      }

      if (v14 <= *(this + 137))
      {
        v14 = *(this + 137);
      }

      if (v14 >= 4)
      {
        v14 = 4;
      }

      *(this + 138) = v14;
      *(this + 1244) = vrev64_s32(v5[13]);
      v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v17)
      {
        Parameter = ausdk::AUElement::GetParameter(v16, 0xDDu);
        if (!*(this + 215) || *(this + 376) != 1)
        {
          v28 = vcvtad_u64_f64(*v6 * Parameter / 1000.0);
LABEL_34:
          v29 = v28 & 0xFFFFFFFC;
          *(this + 313) = v28 & 0xFFFFFFFC;
          v30 = *(this + 376);
          if (v30)
          {
            v31 = *(this + 84) % v29;
            *(this + 1256) = v31 == 0;
            if (!v31)
            {
              v30 = 0;
            }
          }

          else
          {
            *(this + 1256) = 0;
          }

          *(this + 1257) = v30;
          operator new();
        }

        v19 = llround(*v6 * Parameter / 1000.0);
        v20 = (v19 + (v19 < 0 ? 3 : 0)) & 0xFFFFFFFC;
        v21 = *(this + 84);
        do
        {
          v22 = v21;
          v21 /= 2;
          v23 = v21 - v20;
          if ((v21 - v20) < 0)
          {
            v23 = v20 - v21;
          }

          v24 = v22 - v20;
          if ((v22 - v20) < 0)
          {
            v24 = v20 - v22;
          }
        }

        while (v23 < v24);
        *(this + 313) = v22;
        v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v26)
        {
          v27 = v22 * 1000.0 / *v6;
          ausdk::AUElement::SetParameter(v25, 0xDDu, v27);
          v28 = *(this + 313);
          goto LABEL_34;
        }
      }

      abort();
    }
  }

  return 4294956428;
}

const void **AUMultiBandDynamicsProcessorV2::CreateExtendedElements(AUMultiBandDynamicsProcessorV2 *this)
{
  ausdk::AUScope::Initialize((this + 1320), this, 4, 2);
  Element = ausdk::AUScope::GetElement((this + 1320), 0);
  ausdk::Owned<__CFString const*>::operator=((Element + 72), @"Left/Mono Speaker Settings");
  v3 = (ausdk::AUScope::GetElement((this + 1320), 1u) + 72);

  return ausdk::Owned<__CFString const*>::operator=(v3, @"Right Speaker Settings");
}

void AUMultiBandDynamicsProcessorV2::~AUMultiBandDynamicsProcessorV2(AUMultiBandDynamicsProcessorV2 *this)
{
  AUMultiBandDynamicsProcessorV2::~AUMultiBandDynamicsProcessorV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59397D8;
  *(this + 172) = *(this + 171);
  *(this + 175) = *(this + 174);
  AUMultiBandDynamicsProcessorV2::UnInitializeUnderlyingAUs(this);
  AUMultiBandDynamicsProcessorV2::DeAllocateIntermediateBuffer(this + 110, v2);
  v3 = 0;
  for (i = 816; i != 848; i += 8)
  {
    if (*(this + i))
    {
      v3 = AudioComponentInstanceDispose(*(this + i));
      *(this + i) = 0;
    }
  }

  if (!v3)
  {
    v5 = 0;
    v6 = this + 688;
    do
    {
      if (*&v6[v5])
      {
        v3 = AudioComponentInstanceDispose(*&v6[v5]);
        *&v6[v5] = 0;
      }

      v5 += 8;
    }

    while (v5 != 128);
    if (!v3)
    {
      v7 = *(this + 106);
      if (v7)
      {
        AudioComponentInstanceDispose(v7);
        *(this + 106) = 0;
      }
    }
  }

  v8 = *(this + 174);
  if (v8)
  {
    *(this + 175) = v8;
    operator delete(v8);
  }

  v9 = *(this + 171);
  if (v9)
  {
    *(this + 172) = v9;
    operator delete(v9);
  }

  v24 = (this + 1336);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v10 = *(this + 153);
  if (v10)
  {
    v11 = *(this + 154);
    if (v11 != v10)
    {
      *(this + 154) = &v11[(v10 - v11 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v10);
    *(this + 153) = 0;
    *(this + 154) = 0;
  }

  v12 = *(this + 148);
  if (v12)
  {
    v13 = *(this + 149);
    if (v13 != v12)
    {
      *(this + 149) = &v13[(v12 - v13 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v12);
    *(this + 148) = 0;
    *(this + 149) = 0;
  }

  for (j = 0; j != -128; j -= 16)
  {
    v15 = this + j;
    v16 = *(this + j + 1144);
    if (v16)
    {
      v17 = *(v15 + 144);
      if (v17 != v16)
      {
        *(v15 + 144) = &v17[(v16 - v17 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      v18 = v15 + 1144;
      operator delete(v16);
      *v18 = 0;
      v18[1] = 0;
    }
  }

  for (k = 0; k != -128; k -= 16)
  {
    v20 = this + k;
    v21 = *(this + k + 1016);
    if (v21)
    {
      v22 = *(v20 + 128);
      if (v22 != v21)
      {
        *(v20 + 128) = &v22[(v21 - v22 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      v23 = v20 + 1016;
      operator delete(v21);
      *v23 = 0;
      v23[1] = 0;
    }
  }

  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(this + 112, 0);
  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(this + 111, 0);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUMultiBandDynamicsProcessorV2::SetVolCompParameters(AUMultiBandDynamicsProcessorV2 *this, AudioUnit inUnit, int a3)
{
  *outValue = 0;
  if ((*(this + 1314) & 1) == 0)
  {
    AudioUnitGetParameter(inUnit, 6u, 0, 0, &outValue[1]);
    outValue[1] = (1000.0 / outValue[1]) * 0.06;
    v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v80)
    {
      ausdk::AUElement::SetParameter(v79, a3 + 107, outValue[1]);
      AudioUnitGetParameter(inUnit, 7u, 0, 0, &outValue[1]);
      outValue[1] = (1000.0 / outValue[1]) * -0.06;
      v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v82)
      {
        ausdk::AUElement::SetParameter(v81, a3 + 108, outValue[1]);
        AudioUnitGetParameter(inUnit, 0x28u, 0, 0, outValue);
        v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v84)
        {
          ausdk::AUElement::SetParameter(v83, a3 + 109, outValue[0]);
          AudioUnitGetParameter(inUnit, 0x29u, 0, 0, outValue);
          v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v86)
          {
            ausdk::AUElement::SetParameter(v85, a3 + 110, outValue[0]);
            AudioUnitSetParameter(inUnit, 0x32u, 0, 0, 1.0, 0);
            AudioUnitGetParameter(inUnit, 0x33u, 0, 0, outValue);
            v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v88)
            {
              ausdk::AUElement::SetParameter(v87, a3 + 112, outValue[0]);
              Parameter = AudioUnitGetParameter(inUnit, 0x10u, 0, 0, outValue);
              v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v89)
              {
                v77 = outValue[0];
                v78 = a3 + 111;
                goto LABEL_45;
              }
            }
          }
        }
      }
    }

LABEL_52:
    abort();
  }

  AudioUnitGetParameter(inUnit, 1u, 0, 0, &outValue[1]);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v6, a3 + 100, outValue[1]);
  AudioUnitGetParameter(inUnit, 2u, 0, 0, &outValue[1]);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v8, a3 + 101, outValue[1]);
  AudioUnitGetParameter(inUnit, 3u, 0, 0, &outValue[1]);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v10, a3 + 102, outValue[1]);
  AudioUnitGetParameter(inUnit, 4u, 0, 0, &outValue[1]);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v12, a3 + 105, outValue[1]);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v14, a3 + 106, outValue[1]);
  AudioUnitGetParameter(inUnit, 5u, 0, 0, &outValue[1]);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v16, a3 + 103, outValue[1]);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v18, a3 + 104, outValue[1]);
  AudioUnitGetParameter(inUnit, 6u, 0, 0, &outValue[1]);
  outValue[1] = (1000.0 / outValue[1]) * 0.06;
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v20, a3 + 107, outValue[1]);
  AudioUnitGetParameter(inUnit, 7u, 0, 0, &outValue[1]);
  outValue[1] = (1000.0 / outValue[1]) * -0.06;
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v22, a3 + 108, outValue[1]);
  AudioUnitGetParameter(inUnit, 0x10u, 0, 0, &outValue[1]);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v24, a3 + 111, outValue[1]);
  AudioUnitGetParameter(inUnit, 8u, 0, 0, &outValue[1]);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v26, a3 + 120, outValue[1]);
  AudioUnitGetParameter(inUnit, 0xBu, 0, 0, &outValue[1]);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v28, a3 + 113, outValue[1]);
  AudioUnitGetParameter(inUnit, 0xAu, 0, 0, &outValue[1]);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v30, a3 + 114, outValue[1]);
  AudioUnitSetParameter(inUnit, 0xCu, 0, 0, 1.0, 0);
  AudioUnitGetParameter(inUnit, 0x14u, 0, 0, outValue);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v32, a3 + 115, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x15u, 0, 0, outValue);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v34, a3 + 116, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x1Eu, 0, 0, outValue);
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v36, a3 + 117, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x1Fu, 0, 0, outValue);
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v38, a3 + 118, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x28u, 0, 0, outValue);
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v40, a3 + 109, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x29u, 0, 0, outValue);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v42, a3 + 110, outValue[0]);
  AudioUnitSetParameter(inUnit, 0x32u, 0, 0, 1.0, 0);
  AudioUnitGetParameter(inUnit, 0x33u, 0, 0, outValue);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v44, a3 + 112, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x10u, 0, 0, outValue);
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v46, a3 + 111, outValue[0]);
  AudioUnitGetParameter(inUnit, 0, 0, 0, outValue);
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v48, a3 + 119, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x41u, 0, 0, outValue);
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v50, a3 + 122, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x42u, 0, 0, outValue);
  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v52, a3 + 123, outValue[0]);
  AudioUnitGetParameter(inUnit, 9u, 0, 0, outValue);
  v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v54, a3 + 121, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x43u, 0, 0, outValue);
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v56, a3 + 124, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x44u, 0, 0, outValue);
  outValue[0] = outValue[0] * 1000.0;
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v58, a3 + 125, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x45u, 0, 0, outValue);
  outValue[0] = outValue[0] * 1000.0;
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v60, a3 + 126, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x46u, 0, 0, outValue);
  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v62, a3 + 127, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x47u, 0, 0, outValue);
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v64, a3 + 139, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x48u, 0, 0, outValue);
  v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v66, a3 + 131, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x49u, 0, 0, outValue);
  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v68, a3 + 132, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x4Au, 0, 0, outValue);
  outValue[0] = outValue[0] * 1000.0;
  v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v70, a3 + 133, outValue[0]);
  AudioUnitGetParameter(inUnit, 0x4Bu, 0, 0, outValue);
  outValue[0] = outValue[0] * 1000.0;
  v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v72, a3 + 134, outValue[0]);
  Parameter = AudioUnitGetParameter(inUnit, 0x4Cu, 0, 0, outValue);
  v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_52;
  }

  v77 = outValue[0];
  v78 = a3 + 135;
LABEL_45:
  ausdk::AUElement::SetParameter(v75, v78, v77);
  v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v91 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v90, a3 + 136, 0.0);
  v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v93 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v92, a3 + 137, 0.0);
  v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v95 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v94, a3 + 138, 0.0);
  outValue[0] = 0.0;
  v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v97 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v96, a3 + 128, outValue[0]);
  outValue[0] = -90.0;
  v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v99 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v98, a3 + 129, outValue[0]);
  v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_52;
  }

  ausdk::AUElement::SetParameter(v100, a3 + 130, outValue[0]);
  return Parameter;
}

uint64_t AUMultiBandDynamicsProcessorV2::RenderCallbackVolComp(AUMultiBandDynamicsProcessorV2 *this, void *a2, unsigned int *a3, const AudioTimeStamp *a4, int a5, _DWORD *a6, AudioBufferList *a7)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(Element + 144))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  CopyBufferList((*(Element + 152) + 48), a6, (*(this + 312) * a5));
  return 0;
}

uint64_t AUMultiBandDynamicsProcessorV2::RenderCallbackNBandEQ(AUMultiBandDynamicsProcessorV2 *this, void *a2, unsigned int *a3, const AudioTimeStamp *a4, int a5, _DWORD *a6, AudioBufferList *a7)
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

  CopyBufferList((*(Element + 152) + 48), a6, (*(this + 312) * a5));
  return 0;
}

void FeatureAudioAdaptor::FeatureAudioAdaptor(FeatureAudioAdaptor *this, const CAStreamBasicDescription *a2, const CAStreamBasicDescription *a3, unsigned int a4, unsigned int a5, int (*a6)(void *, unsigned int, const AudioBufferList **, AudioBufferList **), void *a7)
{
  v10 = *a2;
  v11 = *a3;
  *this = *a2;
  *(this + 1) = v11;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 3) = a4 / v10;
  *(this + 4) = a5 / v11;
  *(this + 5) = 0;
  *(this + 48) = 0;
  v12 = (this + 48);
  *(this + 112) = 0;
  v13 = *a2;
  v14 = *a3;
  v15 = (v11 * a4 / v10);
  *(this + 120) = *a2 == *a3;
  *(this + 121) = v15 == a5;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (v13 != v14)
  {
    AT::Resampler::create(0x6E6F726D, v13, v14, 0.0);
    v16 = v20;
    v20 = 0;
    v17 = *(this + 5);
    *(this + 5) = v16;
    if (v17)
    {
      (*(*v17 + 8))(v17);
      v18 = v20;
      v20 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    if ((*(this + 121) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_4:
    *(this + 16) = a7;
    *(this + 17) = a6;
    return;
  }

  if (v15 == a5)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = 1;
  std::__optional_destruct_base<BlockProcessor,false>::reset[abi:ne200100](v12);
  BlockProcessor::BlockProcessor(v12, 1, &v19, 1, &v19, *(this + 5), a6, a7);
  *(this + 112) = 1;
}

void sub_1DE055FB0(_Unwind_Exception *a1)
{
  std::optional<BlockProcessor>::~optional(v2);
  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void MicSenseUtils::GainsToFIR::GainsToFIR(MicSenseUtils::GainsToFIR *this, unint64_t a2)
{
  *(this + 56) = 0u;
  *(this + 104) = 0u;
  v4 = (this + 104);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 152) = 0u;
  v5 = (this + 152);
  *(this + 12) = 1056964608;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = (a2 >> 1) + 1;
  *(this + 3) = 1;
  __B = 0;
  std::vector<float>::assign(this + 7, a2, &__B, 0);
  __B = 0;
  std::vector<float>::assign(this + 10, a2, &__B, v6);
  __B = 0;
  std::vector<float>::assign(v4, a2, &__B, v7);
  __B = 0;
  std::vector<float>::assign(this + 16, a2, &__B, v8);
  __B = 0;
  std::vector<float>::assign(v5, a2, &__B, v9);
  __B = 0;
  std::vector<float>::assign(this + 28, a2, &__B, v10);
  v11 = *(this + 2);
  __B = 0;
  std::vector<float>::assign(this + 22, v11, &__B, v12);
  operator new();
}

void sub_1DE0561B0(_Unwind_Exception *exception_object)
{
  v6 = v1[31];
  v1[31] = 0;
  if (v6)
  {
    std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v6);
  }

  v7 = v1[28];
  if (v7)
  {
    v1[29] = v7;
    operator delete(v7);
  }

  v8 = v1[25];
  if (v8)
  {
    v1[26] = v8;
    operator delete(v8);
  }

  v9 = v1[22];
  if (v9)
  {
    v1[23] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[20] = v10;
    operator delete(v10);
  }

  v11 = v1[16];
  if (v11)
  {
    v1[17] = v11;
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    v1[14] = v12;
    operator delete(v12);
  }

  v13 = v1[10];
  if (v13)
  {
    v1[11] = v13;
    operator delete(v13);
  }

  v14 = *v2;
  if (*v2)
  {
    v1[8] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MicSenseUtils::GainsToFIR::gainsToLinearPhaseFilter(int *a1, void *a2, void *a3, vDSP_Length a4, uint64_t a5)
{
  v5 = a1 + 4;
  if (*(a1 + 2) != (a2[1] - *a2) >> 2)
  {
    __assert_rtn("gainsToLinearPhaseFilter", "MicSenseGainsToFIR.cpp", 61, "gains.size() == mCplxVectorSize");
  }

  v11 = *(a1 + 13);
  v20.realp = *(a1 + 10);
  v20.imagp = v11;
  vvcosf(v20.realp, *(a1 + 22), v5);
  vvsinf(v11, *(a1 + 22), v5);
  MEMORY[0x1E12BE7F0](*a2, 1, v20.realp, 1, v20.realp, 1, *(a1 + 2));
  MEMORY[0x1E12BE7F0](*a2, 1, v11, 1, v11, 1, *(a1 + 2));
  v12 = *(a1 + 1);
  *v11 = v20.realp[*(a1 + 2) - 1];
  v19 = 1.0 / v12;
  MultiRadixRealFFT::RealOutOfPlaceInverseTransform(*(a1 + 31), &v20, *(a1 + 7));
  MEMORY[0x1E12BE940](*(a1 + 7), 1, &v19, *(a1 + 7), 1, (*(a1 + 8) - *(a1 + 7)) >> 2);
  if (*(a1 + 4) == a4)
  {
    v13 = *(a1 + 5);
  }

  else
  {
    v13 = -1;
    *(a1 + 4) = a4;
    *(a1 + 5) = -1;
  }

  v14 = (a4 >> 1) - a5;
  if (a5)
  {
    if (v13 != v14)
    {
      *(a1 + 5) = v14;
      vDSP_hann_window(*(a1 + 28), 2 * v14, 0);
      v15 = a4 - *(a1 + 5);
      vDSP_hann_window(*(a1 + 10), 2 * v15, 0);
      v16 = 8 * v15 - 4;
      v13 = *(a1 + 5);
      if (v16 != 4 * v15)
      {
        memmove((*(a1 + 28) + 4 * v13 + 4), (4 * v15 + *(a1 + 10)), v16 - 4 * v15);
        v13 = *(a1 + 5);
      }
    }

    v17 = *(a1 + 7) + 4 * (*(a1 + 1) >> 1) + 4 * ~v13;
  }

  else
  {
    if (v13 != v14)
    {
      *(a1 + 5) = v14;
      vDSP_hann_window(*(a1 + 28), a4, 0);
    }

    v17 = *(a1 + 7) + 4 * (*(a1 + 1) >> 1) + 4 * ~(a4 >> 1);
  }

  return MEMORY[0x1E12BE7F0](v17, 1, *(a1 + 28), 1, *a3, 1, a4);
}

uint64_t MicSenseUtils::GainsToFIR::gainsToMinimumPhaseFilter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 8) - *a2;
  if (v4 >> 2 != *(a1 + 16))
  {
    __assert_rtn("gainsToMinimumPhaseFilter", "MicSenseGainsToFIR.cpp", 159, "gains.size() == mCplxVectorSize");
  }

  LODWORD(__N) = v4 >> 2;
  __B = *(a1 + 8);
  vDSP_vthr(*(a1 + 80), 1, &MicSenseUtils::kepsf, *(a1 + 80), 1, v4 >> 2);
  vvlogf(*(a1 + 80), *a2, &__N);
  vDSP_vsdiv(*(a1 + 80), 1, &__B, *(a1 + 80), 1, *(a1 + 16));
  v9 = *(a1 + 80);
  v10 = *(a1 + 152);
  *v10 = v9[*(a1 + 16) - 1];
  __D.realp = v9;
  __D.imagp = v10;
  MultiRadixRealFFT::RealOutOfPlaceInverseTransform(*(a1 + 248), &__D, *(a1 + 56));
  v11 = *(a1 + 56);
  v12 = *(a1 + 64) - v11;
  v13 = ((v12 >> 2) >> 1) + 1;
  memcpy(*(a1 + 80), v11, v12);
  MEMORY[0x1E12BE5D0](*(a1 + 56) + 4, 1, *(a1 + 80) + v12 - 4, -1, *(a1 + 56) + 4, 1, v13);
  vDSP_vclr((*(a1 + 56) + 4 * v13), 1, (v12 >> 2) - ((v12 >> 2) >> 1) - 2);
  if (*(a1 + 24))
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 64) - v14;
    v16 = (((v15 >> 2) >> 1) + 1);
    if (v16 >= ((*(a1 + 48) * v16) + 0.5))
    {
      v16 = ((*(a1 + 48) * v16) + 0.5);
    }

    vDSP_vclr((v14 + 4 * v16 + 4), 1, ~v16 + (v15 >> 2));
  }

  v17 = *(a1 + 104);
  __D.realp = *(a1 + 80);
  __D.imagp = v17;
  MultiRadixRealFFT::RealOutOfPlaceForwardTransform(*(a1 + 248), *(a1 + 56), &__D, 1.0);
  LODWORD(__N) = *(a1 + 16) - 1;
  {
    MicSenseUtils::GainsToFIR::cepstrumToFrequency(std::vector<float> const&,DSPSplitComplex &,std::vector<float>&)::kMaxValue = 1118925336;
  }

  {
    *&MicSenseUtils::GainsToFIR::cepstrumToFrequency(std::vector<float> const&,DSPSplitComplex &,std::vector<float>&)::kMinValue = -*&MicSenseUtils::GainsToFIR::cepstrumToFrequency(std::vector<float> const&,DSPSplitComplex &,std::vector<float>&)::kMaxValue;
  }

  vDSP_vclip(__D.realp, 1, &MicSenseUtils::GainsToFIR::cepstrumToFrequency(std::vector<float> const&,DSPSplitComplex &,std::vector<float>&)::kMinValue, &MicSenseUtils::GainsToFIR::cepstrumToFrequency(std::vector<float> const&,DSPSplitComplex &,std::vector<float>&)::kMaxValue, __D.realp, 1, *(a1 + 16) - 1);
  vvexpf(*(a1 + 128), __D.realp, &__N);
  vvcosf(__D.realp, __D.imagp, &__N);
  vvsinf(__D.imagp, __D.imagp, &__N);
  vDSP_zrvmul(&__D, 1, *(a1 + 128), 1, &__D, 1, __N);
  __B = 1.0 / *(a1 + 8);
  MEMORY[0x1E12BE940](__D.realp, 1, &__B, __D.realp, 1, __N);
  MEMORY[0x1E12BE940](__D.imagp, 1, &__B, __D.imagp, 1, __N);
  MultiRadixRealFFT::RealOutOfPlaceInverseTransform(*(a1 + 248), &__D, *(a1 + 56));
  vDSP_hann_window(*(a1 + 80), 2 * a4, 0);
  return MEMORY[0x1E12BE7F0](*(a1 + 56), 1, *(a1 + 80) + 4 * a4, 1, *a3, 1, a4);
}

uint64_t MRRingBuffer<StateEvent>::GetSample(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    v2 = *(a1 + 8) + ~((*(a1 + 8) - a2 + ~*(a1 + 12)) % *(a1 + 8));
  }

  else
  {
    v2 = (*(a1 + 12) + a2) % *(a1 + 8);
  }

  return *(*a1 + 16 * v2);
}

void vec::init<DSPSplitComplex>(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v5 = a2;
  std::vector<DSPSplitComplex>::vector[abi:ne200100](&__p, a3);
  v6 = a1[2];
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) < a2)
  {
    if (v7)
    {
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v5)
    {
      v9 = v5;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::vector<DSPSplitComplex>>::__vallocate[abi:ne200100](a1, v10);
  }

  v32 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v7) >> 3);
  v33 = v5;
  if (v32 >= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v7) >> 3);
  }

  for (; v11; --v11)
  {
    if (v7 != &__p)
    {
      v12 = __p;
      v13 = v35;
      v14 = v35 - __p;
      v15 = *(v7 + 16);
      v16 = *v7;
      if (v15 - *v7 < (v35 - __p))
      {
        if (v16)
        {
          *(v7 + 8) = v16;
          operator delete(v16);
          v15 = 0;
          *v7 = 0;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        v17 = v14 >> 4;
        if (!((v14 >> 4) >> 60))
        {
          if (v15 >> 3 > v17)
          {
            v17 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          std::vector<DSPSplitComplex>::__vallocate[abi:ne200100](v7, v18);
        }

        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v19 = *(v7 + 8);
      v20 = v19 - v16;
      if (v19 - v16 >= v14)
      {
        if (v35 != __p)
        {
          memmove(v16, __p, v14);
        }

        v23 = &v16[v14];
      }

      else
      {
        if (v19 != v16)
        {
          memmove(*v7, __p, v19 - v16);
          v19 = *(v7 + 8);
        }

        v21 = &v12[v20];
        v22 = v13 - &v12[v20];
        if (v22)
        {
          memmove(v19, v21, v22);
        }

        v23 = &v19[v22];
      }

      *(v7 + 8) = v23;
    }

    v7 += 24;
  }

  if (v33 <= v32)
  {
    v27 = a1[1];
    v28 = *a1 + 24 * v33;
    if (v27 != v28)
    {
      v29 = a1[1];
      do
      {
        v31 = *(v29 - 24);
        v29 -= 24;
        v30 = v31;
        if (v31)
        {
          *(v27 - 16) = v30;
          operator delete(v30);
        }

        v27 = v29;
      }

      while (v29 != v28);
    }

    a1[1] = v28;
  }

  else
  {
    v24 = a1[1];
    v25 = &v24[3 * (v33 - v32)];
    v26 = 24 * v33 - 24 * v32;
    do
    {
      *v24 = 0;
      v24[1] = 0;
      v24[2] = 0;
      std::vector<DSPSplitComplex>::__init_with_size[abi:ne200100]<DSPSplitComplex*,DSPSplitComplex*>(v24, __p, v35, (v35 - __p) >> 4);
      v24 += 3;
      v26 -= 24;
    }

    while (v26);
    a1[1] = v25;
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

void sub_1DE056B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vec::init<float>(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v4 = a2;
  std::vector<float>::vector[abi:ne200100](__p, a3);
  std::vector<std::vector<float>>::assign(a1, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DE056BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MCLP_FLSL_Joint_OS_vDSP::ProcessBufferList(MCLP_FLSL_Joint_OS_vDSP *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, int a6, int a7, int a8, unsigned int *a9)
{
  v12 = *(this + 10);
  *(this + 35) = v12;
  if (!v12)
  {
    v21 = 0;
    v23 = 0.0;
    v22 = 1;
LABEL_11:
    v24 = 0.0;
    goto LABEL_12;
  }

  v13 = 0;
  p_mData = &a2->mBuffers[0].mData;
  v15 = 0.0;
  do
  {
    v16 = cblas_sdot(2 * *(this + 11) - 2, *p_mData, 1, *p_mData, 1);
    v17 = *(this + 18);
    *(v17 + 8 * (v13 >> 6)) &= ~(1 << v13);
    v18 = *(this + 10);
    v19 = (v13 + v18) >> 6;
    v20 = 1 << (v13 + v18);
    *(v17 + 8 * v19) &= ~v20;
    if (v16 == 0.0)
    {
      --*(this + 35);
      *(v17 + 8 * (v13 >> 6)) |= 1 << v13;
      *(v17 + 8 * v19) |= v20;
    }

    else
    {
      v15 = v15 + v16;
    }

    ++v13;
    p_mData += 2;
  }

  while (v13 < v18);
  v21 = *(this + 35);
  v22 = v18 == 0;
  if (!v21)
  {
    v23 = 0.0;
    goto LABEL_11;
  }

  v23 = *(this + 22) / v21;
  v24 = v15 * v23;
  v21 = v21 != 1;
LABEL_12:
  *(this + 25) = v23 / *(this + 24);
  *(this + 23) = v23;
  if (v21 && (LODWORD(v24) & 0x7FFFFFFFu) < 0x7F800000 && v24 > *(this + 4))
  {
    vDSP_zvmov(**(this + 37), 1, **(this + 46), 1, (*(this + 19) * *(this + 18)));
    v25 = *(this + 10);
    if (v25)
    {
      v26 = 0;
      v27 = 0;
      v28 = &a2->mBuffers[0].mData;
      do
      {
        if (((*(*(this + 18) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          MEMORY[0x1E12BE940](v28[v26 / 8], 1, this + 132, *(*(this + 28) + v26), 1, *(this + 11));
          MEMORY[0x1E12BE940](v28[v26 / 8] + 4 * *(this + 11), 1, this + 132, *(*(this + 28) + v26 + 8) + 4, 1, (*(this + 11) - 2));
          vDSP_zvmov((*(this + 28) + v26), 1, (**(this + 37) + v26), 1, *(this + 11));
          v25 = *(this + 10);
        }

        ++v27;
        v26 += 16;
      }

      while (v27 < v25);
    }

    if (*(this + 36))
    {
      vDSP_zvmov(**(this + 120), 1, **(this + 129), 1, (*(this + 19) * *(this + 18)));
      v29 = *(this + 10);
      if (v29)
      {
        v30 = 0;
        v31 = 0;
        v32 = &a3->mBuffers[0].mData;
        do
        {
          if (((*(*(this + 18) + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            MEMORY[0x1E12BE940](v32[v30 / 8], 1, this + 132, *(*(this + 111) + v30), 1, *(this + 11));
            MEMORY[0x1E12BE940](v32[v30 / 8] + 4 * *(this + 11), 1, this + 132, *(*(this + 111) + v30 + 8) + 4, 1, (*(this + 11) - 2));
            vDSP_zvmov((*(this + 111) + v30), 1, (**(this + 120) + v30), 1, *(this + 11));
            v29 = *(this + 10);
          }

          ++v31;
          v30 += 16;
        }

        while (v31 < v29);
      }
    }

    v106 = a3;
    v107 = a5;
    vDSP_vfill(this + 22, *(this + 102), 1, *(this + 11));
    if (a7)
    {
      vDSP_vclr(*(this + 61), 1, *(this + 10));
    }

    v33 = *(this + 42);
    if (v33 >= *(this + 18))
    {
      v33 = *(this + 18);
    }

    if (v33)
    {
      v34 = 0;
      do
      {
        if (!v34)
        {
          vDSP_vclr(*(this + 93), 1, *(this + 11));
          v35 = *(this + 10);
          if (v35)
          {
            v36 = 0;
            for (i = 0; i < v35; ++i)
            {
              if (((*(*(this + 18) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
              {
                vDSP_zvmgsa((*(this + 28) + v36), 1, *(this + 93), 1, *(this + 93), 1, *(this + 11));
                v35 = *(this + 10);
              }

              v36 += 16;
            }
          }

          MEMORY[0x1E12BE940](*(this + 93), 1, this + 92, *(this + 93), 1, *(this + 11));
        }

        vDSP_vthr(*(this + 93), 1, this + 5, *(this + 93), 1, *(this + 11));
        if (*(this + 8) != 0.0)
        {
          vvpowsf(*(this + 93), this + 26, *(this + 93), this + 12);
        }

        vDSP_svdiv(this + 24, *(this + 93), 1, *(this + 87), 1, *(this + 11));
        memcpy((*(this + 87) + 4 * *(this + 11)), *(this + 87), 4 * *(this + 11));
        vDSP_vfill(this + 22, *(this + 99), 1, *(this + 16));
        v38 = *(this + 10);
        if (!v38)
        {
          goto LABEL_85;
        }

        v39 = 0;
        v40 = 0;
        for (j = 0; j < v38; ++j)
        {
          if (((*(*(this + 18) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
          {
            vDSP_zvmov((*(this + 28) + v40), 1, *(*(this + 73) + v39), 1, *(this + 11));
            vDSP_zvmov((*(*(this + 46) + 24 * v34) + v40), 1, (*(*(this + 73) + v39) + 16), 1, *(this + 11));
            vDSP_zvmov((*(*(this + 46) + 24 * v34) + v40), 1, *(*(this + 73) + 24 * (j + *(this + 10))), 1, *(this + 11));
            vDSP_zvmov((*(this + 28) + v40), 1, (*(*(this + 73) + 24 * (j + *(this + 10))) + 16), 1, *(this + 11));
            v38 = *(this + 10);
          }

          v40 += 16;
          v39 += 24;
        }

        if (*(this + 36) == 1)
        {
          if (!v38)
          {
            goto LABEL_85;
          }

          v42 = 0;
          v43 = 0;
          for (k = 0; k < v38; ++k)
          {
            if (((*(*(this + 18) + ((k >> 3) & 0x1FFFFFFFFFFFFFF8)) >> k) & 1) == 0)
            {
              vDSP_zvmov((*(this + 111) + v43), 1, *(*(this + 138) + v42), 1, *(this + 11));
              vDSP_zvmov((*(*(this + 129) + 24 * v34) + v43), 1, (*(*(this + 138) + v42) + 16), 1, *(this + 11));
              vDSP_zvmov((*(*(this + 129) + 24 * v34) + v43), 1, *(*(this + 138) + 24 * (k + *(this + 10))), 1, *(this + 11));
              vDSP_zvmov((*(this + 111) + v43), 1, (*(*(this + 138) + 24 * (k + *(this + 10))) + 16), 1, *(this + 11));
              v38 = *(this + 10);
            }

            v43 += 16;
            v42 += 24;
          }

          if (!v38)
          {
            goto LABEL_85;
          }

          v45 = 0;
          v46 = -1;
          v47 = 24;
          v48 = 1;
          do
          {
            v49 = v45 + 1;
            if (((*(*(this + 18) + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              v50 = *(this + 15);
              if (v49 < v50)
              {
                v51 = 0;
                v52 = v47;
                do
                {
                  if (((*(*(this + 18) + (((v48 + v51) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v48 + v51)) & 1) == 0)
                  {
                    vDSP_zvma((*(*(this + 55) + 24 * v34) + 16 * (v51 + v45 * *(this + 10) + ((v45 * (v46 + v50)) >> 1))), 1, *(*(this + 138) + 24 * v45), 1, *(*(this + 138) + v52), 1, *(*(this + 138) + v52), 1, *(this + 16));
                    LODWORD(v50) = *(this + 15);
                  }

                  v52 += 24;
                  ++v51;
                }

                while (v48 + v51 < v50);
                v38 = *(this + 10);
              }
            }

            ++v48;
            v47 += 24;
            --v46;
            ++v45;
          }

          while (v49 < v38);
        }

        if (v38)
        {
          v53 = 0;
          v54 = 0;
          v55 = 24;
          v56 = 1;
          do
          {
            if ((*(*(this + 18) + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v54))
            {
              ++v54;
            }

            else
            {
              v113.realp = 0;
              v113.imagp = 0;
              v113 = **(*(this + 73) + 24 * v54);
              vDSP_zvmags(&v113, 1, *(this + 76), 1, *(this + 16));
              MEMORY[0x1E12BE7F0](*(this + 99), 1, *(this + 76), 1, *(this + 76), 1, *(this + 16));
              if (a6)
              {
                v57 = *(this + 16);
                v58 = (v54 + *(this + 10) * v34) * v57;
                v59 = *(this + 58);
                v60 = (v59 + 4 * v58);
                v61 = (v59 + 4 * (v58 + *(this + 11)));
              }

              else
              {
                v60 = *(this + 64);
                v61 = &v60[*(this + 11)];
                v57 = *(this + 16);
                v59 = *(this + 58);
                v58 = (v54 + *(this + 10) * v34) * v57;
              }

              v62 = v54;
              MEMORY[0x1E12BE940](v59 + 4 * v58, 1, this + 24, v60, 1, v57);
              MEMORY[0x1E12BE780](*(this + 76), 1, *(this + 87), 1, v60, 1, v60, 1, *(this + 16));
              vDSP_vthr(v60, 1, this + 4, v60, 1, *(this + 16));
              if (a7)
              {
                vDSP_meanv(&v61[*(this + 30)], 1, (*(this + 61) + 4 * v54), *(this + 32));
              }

              vDSP_vdiv(v60, 1, *(this + 87), 1, *(this + 90), 1, *(this + 16));
              MEMORY[0x1E12BE810](*(this + 90), 1, *(this + 90), 1, *(this + 16));
              vDSP_zrvmul(&v113, 1, *(this + 90), 1, (this + 680), 1, *(this + 16));
              vDSP_zrvmul((this + 680), 1, *(this + 99), 1, (this + 680), 1, *(this + 16));
              vDSP_zvconj((this + 680), 1, (this + 680), 1, *(this + 16));
              MEMORY[0x1E12BE7E0](*(this + 90), 1, *(this + 76), 1, this + 88, *(this + 96), 1, *(this + 16));
              vDSP_vthr(*(this + 96), 1, this + 21, *(this + 96), 1, *(this + 16));
              MEMORY[0x1E12BE7F0](*(this + 99), 1, *(this + 96), 1, *(this + 99), 1, *(this + 16));
              ++v54;
              v63 = *(this + 15);
              if (a6)
              {
                if (v54 < v63)
                {
                  v64 = v53 - v62;
                  v65 = v55;
                  v66 = v56;
                  do
                  {
                    if (((*(*(this + 18) + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
                    {
                      __N = (*(*(this + 55) + 24 * v34) + 16 * (v64 + *(this + 10) * v62 + (((v63 - v54) * v62) >> 1)));
                      aDSP_zvmama(&v113, 1, __N, 1, *(*(this + 73) + v65), 1, this + 85, 1, __N, 1, *(this + 16));
                      LODWORD(v63) = *(this + 15);
                    }

                    ++v66;
                    v65 += 24;
                    ++v64;
                  }

                  while (v66 < v63);
                }
              }

              else if (v54 < v63)
              {
                v67 = v53 - v62;
                v68 = v55;
                v69 = v56;
                do
                {
                  if (((*(*(this + 18) + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
                  {
                    vDSP_zvma(&v113, 1, (*(*(this + 55) + 24 * v34) + 16 * (v67 + *(this + 10) * v62 + (((v63 - v54) * v62) >> 1))), 1, *(*(this + 73) + v68), 1, *(*(this + 73) + v68), 1, *(this + 16));
                    LODWORD(v63) = *(this + 15);
                  }

                  ++v69;
                  v68 += 24;
                  ++v67;
                }

                while (v69 < v63);
              }

              v38 = *(this + 10);
            }

            ++v56;
            v55 += 24;
            ++v53;
          }

          while (v54 < v38);
        }

LABEL_85:
        vDSP_vthr(*(this + 99), 1, this + 21, *(this + 99), 1, *(this + 16));
        vvsqrtf(*(this + 99), *(this + 99), this + 13);
        MEMORY[0x1E12BE7F0](*(this + 99) + 4 * *(this + 11), 1, *(this + 102), 1, *(this + 102), 1);
        v70 = *(this + 10);
        if (v70)
        {
          v71 = 0;
          for (m = 0; m < v70; ++m)
          {
            if (((*(*(this + 18) + ((m >> 3) & 0x1FFFFFFFFFFFFFF8)) >> m) & 1) == 0)
            {
              vDSP_zrvmul((*(*(this + 73) + 24 * (m + v70)) + 16), 1, (*(this + 99) + 4 * *(this + 11)), 1, (*(this + 28) + v71), 1, *(this + 11));
              v70 = *(this + 10);
            }

            v71 += 16;
          }

          if (v34 >= (*(this + 18) - 1))
          {
            goto LABEL_96;
          }

          if (v70)
          {
            v73 = 0;
            for (n = 0; n < v70; ++n)
            {
              if (((*(*(this + 18) + ((n >> 3) & 0x1FFFFFFFFFFFFFF8)) >> n) & 1) == 0)
              {
                vDSP_zrvmul(*(*(this + 73) + 24 * (n + v70)), 1, *(this + 99), 1, (*(*(this + 37) + 24 * v34 + 24) + v73), 1, *(this + 11));
                v70 = *(this + 10);
              }

              v73 += 16;
            }

LABEL_96:
            if (v70 && (*(this + 36) & 1) != 0)
            {
              v75 = 0;
              for (ii = 0; ii < v70; ++ii)
              {
                if (((*(*(this + 18) + ((ii >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ii) & 1) == 0)
                {
                  vDSP_zrvmul((*(*(this + 138) + 24 * (ii + v70)) + 16), 1, (*(this + 99) + 4 * *(this + 11)), 1, (*(this + 111) + v75), 1, *(this + 11));
                  v70 = *(this + 10);
                }

                v75 += 16;
              }

              if (v34 < (*(this + 18) - 1) && v70 != 0)
              {
                v78 = 0;
                v79 = 0;
                do
                {
                  if (((*(*(this + 18) + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
                  {
                    vDSP_zrvmul(*(*(this + 138) + 24 * (v79 + v70)), 1, *(this + 99), 1, (*(*(this + 120) + 24 * v34 + 24) + v78), 1, *(this + 11));
                    v70 = *(this + 10);
                  }

                  ++v79;
                  v78 += 16;
                }

                while (v79 < v70);
              }
            }
          }
        }

        MEMORY[0x1E12BE990](*(this + 99), 1, *(this + 99), 1, *(this + 11));
        MEMORY[0x1E12BE810](*(this + 99), 1, *(this + 99), 1, *(this + 11));
        MEMORY[0x1E12BE8A0](*(this + 99), 1, this + 88, *(this + 99), 1, *(this + 11));
        MEMORY[0x1E12BE940](*(this + 99), 1, this + 100, *(this + 99), 1, *(this + 11));
        MEMORY[0x1E12BE7F0](*(this + 99), 1, *(this + 93), 1, *(this + 93), 1, *(this + 11));
        if (a7)
        {
          LODWORD(v113.realp) = 0;
          vDSP_maxv(*(this + 61), 1, &v113, *(this + 10));
          *a9 = ++v34;
          if (*&v113.realp > *(this + 7))
          {
            break;
          }
        }

        else
        {
          ++v34;
        }

        LODWORD(v80) = *(this + 42);
        v81 = *(this + 18);
        if (v80 >= v81)
        {
          v80 = v81;
        }

        else
        {
          v80 = v80;
        }
      }

      while (v34 < v80);
    }

    if (a8 && *(this + 10))
    {
      v82 = 0;
      v83 = 0;
      do
      {
        if (((*(*(this + 18) + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
        {
          vDSP_zrvmul((*(this + 28) + v82), 1, *(this + 102), 1, (*(this + 28) + v82), 1, *(this + 11));
          if (*(this + 36) == 1)
          {
            vDSP_zrvmul((*(this + 111) + v82), 1, *(this + 102), 1, (*(this + 111) + v82), 1, *(this + 11));
          }
        }

        ++v83;
        v82 += 16;
      }

      while (v83 < *(this + 10));
    }

    v84 = *(this + 42);
    if (v84 < *(this + 18))
    {
      *(this + 42) = v84 + 1;
    }

    if (*(this + 10))
    {
      v85 = 0;
      v86 = 0;
      v87 = &a4->mBuffers[0].mData;
      do
      {
        if ((*(*(this + 18) + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v86))
        {
          memcpy(v87[v85 / 8], a2->mBuffers[v85 / 0x10].mData, 4 * (2 * *(this + 11) - 2));
        }

        else
        {
          MEMORY[0x1E12BE940](*(*(this + 28) + v85), 1, this + 136, v87[v85 / 8], 1, *(this + 11));
          MEMORY[0x1E12BE940](*(*(this + 28) + v85 + 8) + 4, 1, this + 136, v87[v85 / 8] + 4 * *(this + 11), 1, (*(this + 11) - 2));
        }

        ++v86;
        v88 = *(this + 10);
        v85 += 16;
      }

      while (v86 < v88);
      if (v88 && (*(this + 36) & 1) != 0)
      {
        v89 = 0;
        v90 = 0;
        v91 = &v107->mBuffers[0].mData;
        do
        {
          if ((*(*(this + 18) + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v90))
          {
            memcpy(v91[v89 / 8], v106->mBuffers[v89 / 0x10].mData, 4 * (2 * *(this + 11) - 2));
          }

          else
          {
            MEMORY[0x1E12BE940](*(*(this + 111) + v89), 1, this + 136, v91[v89 / 8], 1, *(this + 11));
            MEMORY[0x1E12BE940](*(*(this + 111) + v89 + 8) + 4, 1, this + 136, v91[v89 / 8] + 4 * *(this + 11), 1, (*(this + 11) - 2));
          }

          ++v90;
          v89 += 16;
        }

        while (v90 < *(this + 10));
      }
    }
  }

  else if (!v22)
  {
    v92 = 0;
    v93 = &a2->mBuffers[0].mData;
    v94 = &a4->mBuffers[0].mData;
    do
    {
      v96 = *v94;
      v94 += 2;
      v95 = v96;
      v97 = *v93;
      v93 += 2;
      memcpy(v95, v97, 4 * (2 * *(this + 11) - 2));
      ++v92;
      v98 = *(this + 10);
    }

    while (v92 < v98);
    if (v98 && (*(this + 36) & 1) != 0)
    {
      v99 = 0;
      v100 = &a3->mBuffers[0].mData;
      v101 = &a5->mBuffers[0].mData;
      do
      {
        v103 = *v101;
        v101 += 2;
        v102 = v103;
        v104 = *v100;
        v100 += 2;
        memcpy(v102, v104, 4 * (2 * *(this + 11) - 2));
        ++v99;
      }

      while (v99 < *(this + 10));
    }
  }
}

void Beamformer_BeamNF::CmhBEAM2NOpt::CmhBEAM2NOpt(Beamformer_BeamNF::CmhBEAM2NOpt *this)
{
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 38) = 0u;
  *(this + 65) = 0x100000000;
  *(this + 132) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  v1 = &MC_default_param;
  v2 = 133;
  *(this + 100) = 0;
  do
  {
    v3 = *v1++;
    *(this + v2++) = v3;
  }

  while (v2 != 152);
  *(this + 107) = 0;
  operator new[]();
}

uint64_t Beamformer_BeamNF::CmhBEAM2NOpt::deallocate_memory(uint64_t this)
{
  if (*this)
  {
    v1 = this;
    *this = 0;
    if (*(this + 160))
    {
      v2 = *(this + 44);
      if (v2 < 1)
      {
        goto LABEL_9;
      }

      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(v1 + 160) + 8 * i);
        if (v4)
        {
          MEMORY[0x1E12BD130](v4, 0x1000C8052888210);
          v2 = *(v1 + 44);
        }
      }

      if (*(v1 + 160))
      {
LABEL_9:
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 160) = 0;
    }

    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = (v1 + 168 + 16 * v5);
      if (*v8)
      {
        MEMORY[0x1E12BD130](*v8, 0x1000C8052888210);
      }

      v6 = 0;
      *v8 = 0;
      v8[1] = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    if (*(v1 + 440))
    {
      if (*(v1 + 8) < 1)
      {
        goto LABEL_36;
      }

      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(v1 + 440);
        v12 = *(v11 + v9);
        if (v12)
        {
          MEMORY[0x1E12BD130](v12, 0x1000C8052888210);
          v11 = *(v1 + 440);
          v13 = (v11 + v9);
          *v13 = 0;
          v13[1] = 0;
        }

        v14 = *(v11 + v9 + 16);
        if (v14)
        {
          MEMORY[0x1E12BD130](v14, 0x1000C8052888210);
          v11 = *(v1 + 440);
        }

        v15 = *(v11 + v9 + 24);
        if (v15)
        {
          MEMORY[0x1E12BD130](v15, 0x1000C8052888210);
          v11 = *(v1 + 440);
        }

        v16 = *(v11 + v9 + 32);
        if (v16)
        {
          MEMORY[0x1E12BD130](v16, 0x1000C8052888210);
          v11 = *(v1 + 440);
        }

        v17 = *(v11 + v9 + 40);
        if (v17)
        {
          MEMORY[0x1E12BD130](v17, 0x1000C8052888210);
          v11 = *(v1 + 440);
        }

        v18 = *(v11 + v9 + 48);
        if (v18)
        {
          MEMORY[0x1E12BD130](v18, 0x1000C8052888210);
          *(*(v1 + 440) + v9 + 48) = 0;
          v11 = *(v1 + 440);
        }

        v19 = *(v11 + v9 + 56);
        if (v19)
        {
          MEMORY[0x1E12BD130](v19, 0x1000C8052888210);
          *(*(v1 + 440) + v9 + 56) = 0;
          v11 = *(v1 + 440);
        }

        v20 = *(v11 + v9 + 120);
        if (v20)
        {
          MEMORY[0x1E12BD130](v20, 0x1000C8052888210);
        }

        ++v10;
        v9 += 136;
      }

      while (v10 < *(v1 + 8));
      if (*(v1 + 440))
      {
LABEL_36:
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 440) = 0;
    }

    v21 = *(v1 + 448);
    if (v21)
    {
      MEMORY[0x1E12BD130](v21, 0x1000C8052888210);
      *(v1 + 448) = 0;
    }

    v22 = *(v1 + 456);
    if (v22)
    {
      MEMORY[0x1E12BD130](v22, 0x1000C8052888210);
      *(v1 + 456) = 0;
    }

    v23 = *(v1 + 464);
    if (v23)
    {
      MEMORY[0x1E12BD130](v23, 0x1000C8052888210);
      *(v1 + 464) = 0;
    }

    v24 = *(v1 + 472);
    if (v24)
    {
      MEMORY[0x1E12BD130](v24, 0x1000C8052888210);
      *(v1 + 472) = 0;
    }

    v25 = *(v1 + 480);
    if (v25)
    {
      MEMORY[0x1E12BD130](v25, 0x1000C8052888210);
      *(v1 + 480) = 0;
    }

    v26 = *(v1 + 488);
    if (v26)
    {
      MEMORY[0x1E12BD130](v26, 0x1000C8052888210);
      *(v1 + 488) = 0;
    }

    v27 = *(v1 + 248);
    if (v27)
    {
      MEMORY[0x1E12BD130](v27, 0x1000C8052888210);
    }

    v28 = *(v1 + 296);
    if (v28)
    {
      MEMORY[0x1E12BD130](v28, 0x1000C8052888210);
    }

    v29 = *(v1 + 304);
    if (v29)
    {
      MEMORY[0x1E12BD130](v29, 0x1000C8052888210);
    }

    v30 = *(v1 + 312);
    if (v30)
    {
      MEMORY[0x1E12BD130](v30, 0x1000C8052888210);
    }

    v31 = *(v1 + 320);
    if (v31)
    {
      MEMORY[0x1E12BD130](v31, 0x1000C8052888210);
    }

    v32 = *(v1 + 352);
    if (v32)
    {
      MEMORY[0x1E12BD130](v32, 0x1000C8052888210);
    }

    v33 = *(v1 + 328);
    if (v33)
    {
      MEMORY[0x1E12BD130](v33, 0x1000C8052888210);
    }

    v34 = *(v1 + 336);
    if (v34)
    {
      MEMORY[0x1E12BD130](v34, 0x1000C8052888210);
    }

    v35 = *(v1 + 344);
    if (v35)
    {
      MEMORY[0x1E12BD130](v35, 0x1000C8052888210);
    }

    v36 = *(v1 + 200);
    if (v36)
    {
      MEMORY[0x1E12BD130](v36, 0x1000C8052888210);
      v37 = *(v1 + 208);
      if (v37)
      {
        MEMORY[0x1E12BD130](v37, 0x1000C8052888210);
      }
    }

    v38 = *(v1 + 216);
    if (v38)
    {
      MEMORY[0x1E12BD130](v38, 0x1000C8052888210);
      v39 = *(v1 + 224);
      if (v39)
      {
        MEMORY[0x1E12BD130](v39, 0x1000C8052888210);
      }
    }

    v40 = *(v1 + 232);
    if (v40)
    {
      if (*v40)
      {
        MEMORY[0x1E12BD130](*v40, 0x1000C8052888210);
        v40 = *(v1 + 232);
      }

      if (!v40[1] || (MEMORY[0x1E12BD130](v40[1], 0x1000C8052888210), *(v1 + 232)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 232) = 0;
    }

    v41 = *(v1 + 96);
    if (v41)
    {
      if (*v41)
      {
        MEMORY[0x1E12BD130](*v41, 0x1000C8052888210);
        v41 = *(v1 + 96);
      }

      if (!v41[1] || (MEMORY[0x1E12BD130](v41[1], 0x1000C8052888210), *(v1 + 96)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 96) = 0;
    }

    v42 = *(v1 + 104);
    if (v42)
    {
      if (*v42)
      {
        MEMORY[0x1E12BD130](*v42, 0x1000C8052888210);
        v42 = *(v1 + 104);
      }

      if (!v42[1] || (MEMORY[0x1E12BD130](v42[1], 0x1000C8052888210), *(v1 + 104)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 104) = 0;
    }

    v43 = *(v1 + 112);
    if (v43)
    {
      if (*v43)
      {
        MEMORY[0x1E12BD130](*v43, 0x1000C8052888210);
        v43 = *(v1 + 112);
      }

      if (!v43[1] || (MEMORY[0x1E12BD130](v43[1], 0x1000C8052888210), *(v1 + 112)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 112) = 0;
    }

    v44 = *(v1 + 272);
    if (v44)
    {
      MEMORY[0x1E12BD130](v44, 0x1000C8052888210);
    }

    v45 = *(v1 + 840);
    if (v45)
    {
      if (*v45)
      {
        MEMORY[0x1E12BD130](*v45, 0x1000C8052888210);
        v45 = *(v1 + 840);
      }

      if (!v45[1] || (MEMORY[0x1E12BD130](v45[1], 0x1000C8052888210), *(v1 + 840)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 840) = 0;
    }

    if (*(v1 + 816))
    {
      v46 = 0;
      v47 = 1;
      do
      {
        v48 = v47;
        v49 = *(*(v1 + 816) + 8 * v46);
        if (v49)
        {
          MEMORY[0x1E12BD130](v49, 0x1000C8052888210);
        }

        v47 = 0;
        v46 = 1;
      }

      while ((v48 & 1) != 0);
      v50 = *(v1 + 816);
      if (v50)
      {
        MEMORY[0x1E12BD130](v50, 0x80C80B8603338);
      }

      *(v1 + 816) = 0;
    }

    if (*(v1 + 824))
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = v52;
        v54 = *(*(v1 + 824) + 8 * v51);
        if (v54)
        {
          MEMORY[0x1E12BD130](v54, 0x1000C8052888210);
        }

        v52 = 0;
        v51 = 1;
      }

      while ((v53 & 1) != 0);
      v55 = *(v1 + 824);
      if (v55)
      {
        MEMORY[0x1E12BD130](v55, 0x80C80B8603338);
      }

      *(v1 + 824) = 0;
    }

    this = *(v1 + 832);
    if (this)
    {
      if (*this)
      {
        MEMORY[0x1E12BD130](*this, 0x1000C8052888210);
        this = *(v1 + 832);
      }

      if (!*(this + 8) || (MEMORY[0x1E12BD130](*(this + 8), 0x1000C8052888210), (this = *(v1 + 832)) != 0))
      {
        this = MEMORY[0x1E12BD130]();
      }

      *(v1 + 832) = 0;
    }
  }

  return this;
}

void Beamformer_BeamNF::CmhBEAM2NOpt::~CmhBEAM2NOpt(Beamformer_BeamNF::CmhBEAM2NOpt *this)
{
  Beamformer_BeamNF::CmhBEAM2NOpt::deallocate_memory(this);
  v2 = *(this + 107);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C804247E4FDLL);
  }

  CmhMicCheck::deallocate_memory(this + 496);
}

uint64_t Beamformer_BeamNF::CmhBEAM2NOpt::initialize(Beamformer_BeamNF::CmhBEAM2NOpt *this, int a2, int a3, int a4, int a5, int a6)
{
  Beamformer_BeamNF::CmhBEAM2NOpt::deallocate_memory(this);
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 12) = a5;
  v12 = a5 * 0.001;
  *(this + 13) = v12;
  *(this + 2) = a6;
  *(this + 3) = a2;
  *(this + 3) = vadd_s32(vdup_n_s32(a3 / 2), 0x1FFFFFFFFLL);
  Beamformer_BeamNF::CmhBEAM2NOpt::deallocate_memory(this);
  if (*this)
  {
LABEL_2:
    CmhBEAM2NOpt::calc_cr_ci_vect(this, *(this + 25), *(this + 27));
    CmhBEAM2NOpt::calc_cr_ci_vect(this, *(this + 26), *(this + 28));
    *(this + 7) = 0x40A0000041C00000;
    v13 = *(this + 13);
    v14 = *(this + 3);
    v15 = *(this + 4);
    v16 = v15 / 2;
    if (v15 >= -1)
    {
      v17 = 0;
      v18 = v13 * 6.28318531 * v14 / (343 * v15);
      v19 = *(this + 29);
      v20 = *v19;
      v21 = v19[1];
      do
      {
        v22 = sinf(v18 * v17);
        v23 = v22 + v22;
        v24 = 1.0 / v23 >= 15.8489323 || v23 <= 0.032;
        v25 = 1.0 / v23;
        if (v24)
        {
          v25 = 15.849;
        }

        *(v20 + 4 * v17) = v25;
        *(v21 + 4 * v17++) = v25;
      }

      while (v16 + 1 != v17);
      v13 = *(this + 13);
    }

    v26 = vcvtmd_s64_f64(343.0 / (v13 + v13) * 0.9 / (v14 / v15));
    v27 = *(this + 6);
    v28 = v26 & ~(v26 >> 31);
    v29 = v27 - 1;
    if (v27 > v28)
    {
      v29 = v28;
    }

    *(this + 64) = v29;
    *(this + 8) = 24000;
    if (v29 <= v16)
    {
      v30 = *(this + 29);
      v32 = *v30;
      v31 = v30[1];
      v33 = v16 - v29 + 1;
      v34 = (v31 + 4 * v29);
      v35 = (v32 + 4 * v29);
      do
      {
        *v35 = fminf(*v35, 1.7783);
        ++v35;
        *v34 = fminf(*v34, 1.7783);
        ++v34;
        --v33;
      }

      while (v33);
    }

    v36 = *(this + 7);
    if (v36 >= 1)
    {
      v37 = *(this + 29);
      v38 = *(this + 12);
      v39 = *v37;
      v40 = v37[1];
      v41 = *v38;
      v42 = *(v38 + 8);
      v43 = *(this + 7);
      do
      {
        v44 = *v39++;
        *v41++ = v44;
        v45 = *v40++;
        *v42++ = v45;
        --v43;
      }

      while (v43);
      v46 = *(this + 13);
      v47 = 4 * v36;
      memset_pattern16(*v46, &unk_1DE095DF0, 4 * v36);
      memset_pattern16(v46[1], &unk_1DE095DF0, v47);
      v48 = *(this + 14);
      memset_pattern16(*v48, &unk_1DE095DF0, v47);
      memset_pattern16(v48[1], &unk_1DE095DF0, v47);
    }

    if (*(this + 2) <= 0)
    {
      v78 = (v14 / *(this + 5));
    }

    else
    {
      v49 = 0;
      v50 = *(this + 55);
      do
      {
        *(v50 + 136 * v49 + 64) = 0x3F0000003F000000;
        v51 = *(this + 4);
        v52 = v51 / 2;
        if (v51 < 2)
        {
          v76 = *(v50 + 136 * v49 + 48);
        }

        else
        {
          v53 = 32767.0 / v51 * 0.0000305175781;
          *&v53 = v53;
          v54 = (v52 - 1);
          v55 = (v54 + 4) & 0x1FFFFFFFCLL;
          v56 = vdupq_n_s64(v54);
          v57 = (*(v50 + 136 * v49 + 16) + 8);
          v58 = 3;
          v59 = v55;
          do
          {
            v60 = vdupq_n_s64(v58 - 3);
            v61 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_1DE095160)));
            if (vuzp1_s16(v61, *&v53).u8[0])
            {
              *(v57 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v61, *&v53).i8[2])
            {
              *(v57 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_1DE095150)))).i32[1])
            {
              *v57 = LODWORD(v53);
              v57[1] = LODWORD(v53);
            }

            v58 += 4;
            v57 += 4;
            v59 -= 4;
          }

          while (v59);
          v62 = (*(v50 + 136 * v49 + 24) + 8);
          v63 = 3;
          v64 = (v54 + 4) & 0x1FFFFFFFCLL;
          do
          {
            v65 = vdupq_n_s64(v63 - 3);
            v66 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v65, xmmword_1DE095160)));
            if (vuzp1_s16(v66, *&v53).u8[0])
            {
              *(v62 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v66, *&v53).i8[2])
            {
              *(v62 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v65, xmmword_1DE095150)))).i32[1])
            {
              *v62 = LODWORD(v53);
              v62[1] = LODWORD(v53);
            }

            v63 += 4;
            v62 += 4;
            v64 -= 4;
          }

          while (v64);
          v67 = (*(v50 + 136 * v49 + 32) + 8);
          v68 = 3;
          v69 = (v54 + 4) & 0x1FFFFFFFCLL;
          do
          {
            v70 = vdupq_n_s64(v68 - 3);
            v71 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v70, xmmword_1DE095160)));
            if (vuzp1_s16(v71, *&v53).u8[0])
            {
              *(v67 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v71, *&v53).i8[2])
            {
              *(v67 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v70, xmmword_1DE095150)))).i32[1])
            {
              *v67 = LODWORD(v53);
              v67[1] = LODWORD(v53);
            }

            v68 += 4;
            v67 += 4;
            v69 -= 4;
          }

          while (v69);
          v72 = (*(v50 + 136 * v49 + 40) + 8);
          v73 = 3;
          do
          {
            v74 = vdupq_n_s64(v73 - 3);
            v75 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v74, xmmword_1DE095160)));
            if (vuzp1_s16(v75, *&v53).u8[0])
            {
              *(v72 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v75, *&v53).i8[2])
            {
              *(v72 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v74, xmmword_1DE095150)))).i32[1])
            {
              *v72 = LODWORD(v53);
              v72[1] = LODWORD(v53);
            }

            v73 += 4;
            v72 += 4;
            v55 -= 4;
          }

          while (v55);
          v76 = *(v50 + 136 * v49 + 48);
          memset_pattern16(v76, &unk_1DE09EA60, 4 * v54 + 4);
        }

        *v76 = 0;
        bzero(*(v50 + 136 * v49 + 56), 4 * v52);
        v50 = *(this + 55);
        v77 = v50 + 136 * v49;
        *(v77 + 76) = 1048600;
        *(v77 + 80) = xmmword_1DE09CC00;
        *(v77 + 96) = 1065353216;
        v78 = (*(this + 3) / *(this + 5));
        v79 = exp(-1.0 / (v78 * 0.3));
        *&v79 = v79;
        *(v77 + 100) = vdup_lane_s32(*&v79, 0);
        ++v49;
      }

      while (v49 < *(this + 2));
    }

    v94 = exp(-1.0 / (v78 * 0.123745791));
    *(this + 16) = v94;
    CmhBEAM2NOpt::calc_wng_beta_bound(this, *(this + 70));
    v95 = *(this + 6);
    *(this + 93) = v95;
    *(this + 364) = 0x3F0000003E800000;
    v96 = *(this + 5);
    *v97.i32 = *(this + 4);
    v98 = *(this + 3);
    *v99.i32 = v98;
    v100 = vcvt_s32_f32(vdiv_f32(vmul_n_f32(0x43FA000042FA0000, *v97.i32), vdup_lane_s32(v99, 0)));
    *(this + 51) = 0x3980000000000000;
    *(this + 52) = v100;
    *(this + 106) = vsub_s32(vdup_lane_s32(v100, 1), v100).u32[0] + 1;
    *(this + 428) = vcvt_f32_f64(vdivq_f64(vmulq_n_f64(xmmword_1DE09E6E0, v96), vdupq_lane_s64(COERCE__INT64(v98), 0)));
    if (v95 >= 1)
    {
      v263 = v97;
      memset_pattern16(*(this + 40), &unk_1DE095DF0, 4 * v95);
      *v99.i32 = v98;
      v97 = v263;
    }

    v101 = *(this + 7);
    if (v101 >= 1)
    {
      v102 = vdupq_n_s64(v101 - 1);
      v103 = vdupq_n_s32(v98);
      v104 = vdupq_lane_s32(v97, 0);
      v105 = (v101 + 3) & 0xFFFFFFFC;
      v106 = xmmword_1DE095150;
      v107 = xmmword_1DE095160;
      v108 = xmmword_1DE096230;
      v109 = (*(this + 43) + 8);
      v110 = vdupq_n_s32(0xBA15CBEC);
      v111 = vdupq_n_s32(0x3F524925u);
      __asm { FMOV            V16.4S, #0.75 }

      v117 = vdupq_n_s64(4uLL);
      v118.i64[0] = 0x400000004;
      v118.i64[1] = 0x400000004;
      do
      {
        v119 = vmovn_s64(vcgeq_u64(v102, v107));
        v120 = vminnmq_f32(vmlaq_f32(v111, v110, vdivq_f32(vcvtq_f32_s32(vmulq_s32(v103, v108)), v104)), _Q16);
        if (vuzp1_s16(v119, *v102.i8).u8[0])
        {
          *(v109 - 2) = fmaxf(v120.f32[0], 0.25);
        }

        if (vuzp1_s16(v119, *&v102).i8[2])
        {
          *(v109 - 1) = fmaxf(v120.f32[1], 0.25);
        }

        if (vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, *&v106))).i32[1])
        {
          *v109 = fmaxf(v120.f32[2], 0.25);
          v109[1] = fmaxf(v120.f32[3], 0.25);
        }

        v106 = vaddq_s64(v106, v117);
        v107 = vaddq_s64(v107, v117);
        v108 = vaddq_s32(v108, v118);
        v109 += 4;
        v105 -= 4;
      }

      while (v105);
    }

    CmhBEAM2NOpt::interpolateFrequencyVector(&model_env_tc_vector_attack_sec, 0x41, *(this + 42), 125.0, v101, *v99.i32 / *v97.i32);
    v121 = *(this + 7);
    v122 = *(this + 42);
    if (v121 >= 1)
    {
      v123 = *(this + 41);
      v124 = *(this + 42);
      v125 = *(this + 7);
      do
      {
        v126 = 0.0;
        if (*v124 > 0.0)
        {
          v126 = exp(-1.0 / (*v124 * (*(this + 3) / *(this + 5))));
        }

        *v123 = v126;
        v123 += 2;
        ++v124;
        --v125;
      }

      while (v125);
    }

    CmhBEAM2NOpt::interpolateFrequencyVector(&model_env_tc_vector_decay_sec, 0x41, v122, 125.0, v121, *(this + 3) / *(this + 4));
    v127 = *(this + 7);
    if (v127 >= 1)
    {
      v128 = *(this + 42);
      v129 = (*(this + 41) + 4);
      do
      {
        v130 = 0.0;
        if (*v128 > 0.0)
        {
          v130 = exp(-1.0 / (*v128 * (*(this + 3) / *(this + 5))));
        }

        *v129 = v130;
        v129 += 2;
        ++v128;
        --v127;
      }

      while (v127);
    }

    CmhBEAM2NOpt::loadRVSSSuppressionLimits(this);
    v131 = *(this + 3);
    v132 = *(this + 4);
    *(this + 35) = (v131 / 2);
    *(this + 96) = *(this + 7);
    *v133.i32 = v131;
    v134 = *(this + 5);
    v264 = v131;
    v135 = vmul_n_f32(vdiv_f32(0x437A000043BB8000, vdup_lane_s32(v133, 0)), v132);
    __sz = v132;
    v136 = vmvn_s8(vcgez_f32(v135));
    v137.i64[0] = v136.i32[0];
    v137.i64[1] = v136.i32[1];
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v140 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v137, _Q3, _Q2), vcvtq_f64_f32(v135))));
    *(this + 108) = v140;
    *v136.i32 = (1200.0 / v131) * v132;
    v141 = *v136.i32;
    if (*v136.i32 >= 0.0)
    {
      v142 = 0.5;
    }

    else
    {
      v142 = -0.5;
    }

    *(this + 218) = (v142 + v141) - v140.i32[1] + 1;
    *(this + 219) = v132 / 2 - 1;
    v143 = (v131 / v134);
    v144 = exp(-1.0 / (v143 * 0.123745791));
    *(this + 220) = v144;
    v145 = (200.0 / v264) * __sz;
    v146 = v145;
    if (v145 >= 0.0)
    {
      v147 = 0.5;
    }

    else
    {
      v147 = -0.5;
    }

    *(this + 221) = (v147 + v146);
    v148 = *(this + 107);
    v149 = exp(-1.0 / (v143 * 0.01));
    v150 = exp(-1.0 / (v143 * 0.1));
    v151 = exp(-1.0 / (v143 * 0.03));
    v152 = exp(-1.0 / (v143 + v143));
    *v148 = 0;
    *(v148 + 4) = v149;
    *(v148 + 8) = v150;
    *(v148 + 12) = xmmword_1DE09CC10;
    *(v148 + 28) = 0;
    *(v148 + 36) = v149;
    *(v148 + 40) = v151;
    v153 = vdup_n_s32(0x39400000u);
    *(v148 + 48) = v153;
    *(v148 + 56) = v152;
    *(v148 + 60) = xmmword_1DE09E6F0;
    *(v148 + 76) = 0;
    *(v148 + 84) = v149;
    *(v148 + 88) = v150;
    *(v148 + 92) = xmmword_1DE09CC10;
    *(v148 + 108) = 0;
    *(v148 + 116) = v149;
    *(v148 + 120) = v151;
    *(v148 + 128) = v153;
    *(v148 + 136) = v152;
    *(v148 + 156) = 0;
    *(v148 + 140) = xmmword_1DE09E6F0;
    *(v148 + 44) = 0;
    *(v148 + 124) = 1;
    CmhBEAM2NOpt::interpolateFrequencyVector(&sns_gain_table, 0x3F, *(this + 31), 125.0, *(this + 6), *(this + 3) / *(this + 4));
    v154 = *(this + 2);
    v155 = *(this + 55);
    if (v154 >= 1)
    {
      v156 = 0;
      v157 = *(this + 6);
      do
      {
        v158 = (v155 + 136 * v156);
        *(v158 + 108) = 0x3F00000000000000;
        if (v157 >= 1)
        {
          v159 = 0;
          v160 = v158[15];
          do
          {
            *(v160 + 4 * v159++) = 1065353216;
          }

          while (v157 > v159);
        }

        v158[16] = 0x3F8000003DE38E39;
        ++v156;
      }

      while (v156 != v154);
    }

    *(this + 60) = 1;
    *(this + 260) = 0;
    *(this + 94) = 0;
    *(this + 396) = 0;
    *(this + 101) = *(v155 + 108);
    v161 = *(this + 5);
    v162 = *(this + 3);
    v163 = *(this + 4) / 2 + 1;

    return CmhMicCheck::initialize((this + 496), v162, v161, v163, this + 25, this + 27);
  }

  else
  {
    *this = 1;
    v80 = *(this + 2);
    if (is_mul_ok(v80, 0x88uLL))
    {
      v81 = 136 * v80;
    }

    else
    {
      v81 = -1;
    }

    v82 = operator new[](v81, MEMORY[0x1E69E5398]);
    *(this + 55) = v82;
    if (v82)
    {
      v83 = *(this + 11);
      v84 = 8 * v83;
      v85 = v83 < 0 ? -1 : 8 * v83;
      v86 = operator new[](v85, MEMORY[0x1E69E5398]);
      *(this + 20) = v86;
      if (v86)
      {
        v87 = v86;
        bzero(v86, 8 * v83);
        v88 = *(this + 4);
        if (v83 <= 0)
        {
          v90 = 4 * v88;
LABEL_116:
          v165 = 0;
          if (v88 < 0)
          {
            v166 = -1;
          }

          else
          {
            v166 = v90;
          }

          v265 = v88 / 2;
          v167 = (v88 + (v88 >> 31)) >> 1;
          v168 = 1;
          v169 = MEMORY[0x1E69E5398];
          while (1)
          {
            v170 = v168;
            v171 = operator new[](v166, v169);
            v172 = (this + 16 * v165 + 168);
            *v172 = v171;
            if (!v171)
            {
              break;
            }

            v172[1] = &v171[4 * v167];
            bzero(v171, v90);
            v168 = 0;
            v165 = 1;
            if ((v170 & 1) == 0)
            {
              if (v80 < 1)
              {
LABEL_152:
                if (v88 < -1)
                {
                  v196 = -1;
                }

                else
                {
                  v196 = 4 * v167;
                }

                v197 = operator new[](v196, MEMORY[0x1E69E5398]);
                *(this + 56) = v197;
                if (v197)
                {
                  v198 = operator new[](v196, MEMORY[0x1E69E5398]);
                  *(this + 57) = v198;
                  if (v198)
                  {
                    v199 = operator new[](v196, MEMORY[0x1E69E5398]);
                    *(this + 58) = v199;
                    if (v199)
                    {
                      v200 = operator new[](v196, MEMORY[0x1E69E5398]);
                      *(this + 59) = v200;
                      if (v200)
                      {
                        v201 = operator new[](v196, MEMORY[0x1E69E5398]);
                        *(this + 60) = v201;
                        if (v201)
                        {
                          v202 = operator new[](v196, MEMORY[0x1E69E5398]);
                          *(this + 61) = v202;
                          if (v202)
                          {
                            v203 = *(this + 6);
                            v204 = v203 < 0 ? -1 : 4 * v203;
                            v205 = operator new[](v204, MEMORY[0x1E69E5398]);
                            *(this + 31) = v205;
                            if (v205)
                            {
                              if (v203 < 1)
                              {
                                v210 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 37) = v210;
                                if (!v210)
                                {
                                  return 4294967294;
                                }

                                v211 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 38) = v211;
                                if (!v211)
                                {
                                  return 4294967294;
                                }

                                v212 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 39) = v212;
                                if (!v212)
                                {
                                  return 4294967294;
                                }

                                v213 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 40) = v213;
                                if (!v213)
                                {
                                  return 4294967294;
                                }
                              }

                              else
                              {
                                bzero(v205, 4 * v203);
                                v206 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 37) = v206;
                                if (!v206)
                                {
                                  return 4294967294;
                                }

                                bzero(v206, 4 * v203);
                                v207 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 38) = v207;
                                if (!v207)
                                {
                                  return 4294967294;
                                }

                                bzero(v207, 4 * v203);
                                v208 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 39) = v208;
                                if (!v208)
                                {
                                  return 4294967294;
                                }

                                bzero(v208, 4 * v203);
                                v209 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 40) = v209;
                                if (!v209)
                                {
                                  return 4294967294;
                                }

                                bzero(v209, 4 * v203);
                              }

                              v214 = *(this + 7);
                              if (v214 < 0)
                              {
                                v215 = -1;
                              }

                              else
                              {
                                v215 = 8 * v214;
                              }

                              v216 = operator new[](v215, MEMORY[0x1E69E5398]);
                              *(this + 41) = v216;
                              if (v216)
                              {
                                v217 = v214;
                                if (v214 >= 1)
                                {
                                  bzero(v216, 4 * (2 * v214));
                                }

                                v218 = v214 < 0 ? -1 : 4 * v214;
                                __sza = v218;
                                v219 = operator new[](v218, MEMORY[0x1E69E5398]);
                                *(this + 42) = v219;
                                if (v219)
                                {
                                  if (v214 < 1)
                                  {
                                    v221 = operator new[](__sza, MEMORY[0x1E69E5398]);
                                    *(this + 44) = v221;
                                    if (!v221)
                                    {
                                      return 4294967294;
                                    }
                                  }

                                  else
                                  {
                                    bzero(v219, 4 * v214);
                                    v220 = operator new[](4 * v214, MEMORY[0x1E69E5398]);
                                    *(this + 44) = v220;
                                    if (!v220)
                                    {
                                      return 4294967294;
                                    }

                                    bzero(v220, 4 * v214);
                                  }

                                  __len = v265 + 1;
                                  if (v88 < -3)
                                  {
                                    v222 = -1;
                                  }

                                  else
                                  {
                                    v222 = 4 * __len;
                                  }

                                  v260 = v222;
                                  v223 = operator new[](v222, MEMORY[0x1E69E5398]);
                                  *(this + 43) = v223;
                                  if (v223)
                                  {
                                    if (v88 >= -1)
                                    {
                                      bzero(v223, 4 * (v265 + 1));
                                    }

                                    v224 = operator new[](v260, MEMORY[0x1E69E5398]);
                                    *(this + 25) = v224;
                                    if (v224)
                                    {
                                      v225 = v224;
                                      v226 = operator new[](v260, MEMORY[0x1E69E5398]);
                                      *(this + 26) = v226;
                                      if (v226)
                                      {
                                        if (v88 >= -1)
                                        {
                                          v227 = v226;
                                          bzero(v225, 4 * (v265 + 1));
                                          bzero(v227, 4 * (v265 + 1));
                                        }

                                        v228 = operator new[](v260, MEMORY[0x1E69E5398]);
                                        *(this + 27) = v228;
                                        if (v228)
                                        {
                                          v229 = v228;
                                          v230 = operator new[](v260, MEMORY[0x1E69E5398]);
                                          *(this + 28) = v230;
                                          if (v230)
                                          {
                                            v257 = 4 * __len;
                                            if (v88 >= -1)
                                            {
                                              v231 = v230;
                                              bzero(v229, v257);
                                              bzero(v231, v257);
                                            }

                                            v232 = MEMORY[0x1E69E5398];
                                            *(this + 29) = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                            *(this + 12) = operator new[](0x10uLL, v232);
                                            *(this + 13) = operator new[](0x10uLL, v232);
                                            v233 = operator new[](0x10uLL, v232);
                                            v234 = 0;
                                            *(this + 14) = v233;
                                            __lena = 4 * v217;
                                            v235 = 1;
                                            while (1)
                                            {
                                              v236 = v235;
                                              *(*(this + 29) + 8 * v234) = operator new[](v260, MEMORY[0x1E69E5398]);
                                              v237 = *(*(this + 29) + 8 * v234);
                                              if (!v237)
                                              {
                                                break;
                                              }

                                              if (v88 >= -1)
                                              {
                                                bzero(v237, v257);
                                              }

                                              *(*(this + 12) + 8 * v234) = operator new[](__sza, MEMORY[0x1E69E5398]);
                                              v238 = *(*(this + 12) + 8 * v234);
                                              if (!v238)
                                              {
                                                break;
                                              }

                                              if (v217 >= 1)
                                              {
                                                bzero(v238, __lena);
                                              }

                                              *(*(this + 13) + 8 * v234) = operator new[](__sza, MEMORY[0x1E69E5398]);
                                              v239 = *(*(this + 13) + 8 * v234);
                                              if (!v239)
                                              {
                                                break;
                                              }

                                              if (v217 >= 1)
                                              {
                                                bzero(v239, __lena);
                                              }

                                              *(*(this + 14) + 8 * v234) = operator new[](__sza, MEMORY[0x1E69E5398]);
                                              v240 = *(*(this + 14) + 8 * v234);
                                              if (!v240)
                                              {
                                                break;
                                              }

                                              if (v217 >= 1)
                                              {
                                                bzero(v240, __lena);
                                              }

                                              v235 = 0;
                                              v234 = 1;
                                              if ((v236 & 1) == 0)
                                              {
                                                v241 = operator new[](v204, MEMORY[0x1E69E5398]);
                                                *(this + 34) = v241;
                                                if (v241)
                                                {
                                                  if (v203 >= 1)
                                                  {
                                                    bzero(v241, 4 * v203);
                                                  }

                                                  v242 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                  *(this + 102) = v242;
                                                  if (v242)
                                                  {
                                                    *v242 = 0;
                                                    v242[1] = 0;
                                                    v243 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                    *(this + 103) = v243;
                                                    if (v243)
                                                    {
                                                      *v243 = 0;
                                                      v243[1] = 0;
                                                      if (v80 < 1)
                                                      {
LABEL_234:
                                                        v249 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                        *(this + 105) = v249;
                                                        if (v249)
                                                        {
                                                          v250 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                          *(this + 104) = v250;
                                                          if (v250)
                                                          {
                                                            v251 = 0;
                                                            v252 = 1;
                                                            v253 = MEMORY[0x1E69E5398];
                                                            while (1)
                                                            {
                                                              v254 = v252;
                                                              *(*(this + 105) + 8 * v251) = operator new[](__sza, v253);
                                                              v255 = *(*(this + 105) + 8 * v251);
                                                              if (!v255)
                                                              {
                                                                break;
                                                              }

                                                              if (v217 >= 1)
                                                              {
                                                                memset_pattern16(v255, &unk_1DE095DF0, __lena);
                                                              }

                                                              *(*(this + 104) + 8 * v251) = operator new[](v196, v253);
                                                              v256 = *(*(this + 104) + 8 * v251);
                                                              if (!v256)
                                                              {
                                                                break;
                                                              }

                                                              if (v88 >= 2)
                                                              {
                                                                bzero(v256, (4 * v265));
                                                              }

                                                              v252 = 0;
                                                              v251 = 1;
                                                              if ((v254 & 1) == 0)
                                                              {
                                                                goto LABEL_2;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v244 = 0;
                                                        if (v88 < 0)
                                                        {
                                                          v245 = -1;
                                                        }

                                                        else
                                                        {
                                                          v245 = 4 * v88;
                                                        }

                                                        v246 = MEMORY[0x1E69E5398];
                                                        while (1)
                                                        {
                                                          *(*(this + 102) + v244) = operator new[](v245, v246);
                                                          v247 = *(*(this + 102) + v244);
                                                          if (!v247)
                                                          {
                                                            break;
                                                          }

                                                          if (v88 >= 1)
                                                          {
                                                            bzero(v247, 4 * v88);
                                                          }

                                                          *(*(this + 103) + v244) = operator new[](v245, v246);
                                                          v248 = *(*(this + 103) + v244);
                                                          if (!v248)
                                                          {
                                                            break;
                                                          }

                                                          if (v88 >= 1)
                                                          {
                                                            bzero(v248, 4 * v88);
                                                          }

                                                          v244 += 8;
                                                          if (8 * v80 == v244)
                                                          {
                                                            goto LABEL_234;
                                                          }
                                                        }
                                                      }
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

              else
              {
                v173 = 0;
                v174 = 120;
                v175 = MEMORY[0x1E69E5398];
                while (1)
                {
                  v176 = *(this + 4);
                  v177 = v176 < 0 ? -1 : 4 * v176;
                  v178 = operator new[](v177, v175);
                  v179 = *(this + 55) + v174;
                  *(v179 - 120) = v178;
                  if (!v178)
                  {
                    break;
                  }

                  v180 = v176 / 2;
                  *(v179 - 112) = &v178[4 * (v176 / 2)];
                  bzero(v178, 4 * v176);
                  v181 = v176 < -1 ? -1 : 4 * v180;
                  *(v179 - 104) = operator new[](v181, v175);
                  v182 = *(this + 55) + v174;
                  if (!*(v182 - 104))
                  {
                    break;
                  }

                  *(v182 - 96) = operator new[](v181, v175);
                  v183 = *(this + 55);
                  v184 = *(v183 + v174 - 96);
                  if (!v184)
                  {
                    break;
                  }

                  if (v176 >= 2)
                  {
                    bzero(*(v183 + v174 - 104), (4 * v180));
                    v175 = MEMORY[0x1E69E5398];
                    bzero(v184, (4 * v180));
                  }

                  *(v183 + v174 - 88) = operator new[](v181, v175);
                  v185 = *(this + 55) + v174;
                  if (!*(v185 - 88))
                  {
                    break;
                  }

                  *(v185 - 80) = operator new[](v181, v175);
                  v186 = *(this + 55);
                  v187 = *(v186 + v174 - 80);
                  if (!v187)
                  {
                    break;
                  }

                  if (v176 >= 2)
                  {
                    bzero(*(v186 + v174 - 88), (4 * v180));
                    v175 = MEMORY[0x1E69E5398];
                    bzero(v187, (4 * v180));
                  }

                  *(v186 + v174 - 72) = operator new[](v181, v175);
                  v188 = *(*(this + 55) + v174 - 72);
                  if (!v188)
                  {
                    break;
                  }

                  bzero(v188, 4 * v180);
                  v189 = *(this + 4);
                  v190 = 4 * (v189 / 2);
                  v191 = v189 < -1 ? -1 : 4 * (v189 / 2);
                  *(*(this + 55) + v174 - 64) = operator new[](v191, v175);
                  v192 = *(*(this + 55) + v174 - 64);
                  if (!v192)
                  {
                    break;
                  }

                  bzero(v192, v190);
                  v193 = *(this + 6);
                  v194 = v193 < 0 ? -1 : 4 * v193;
                  v195 = operator new[](v194, v175);
                  *(*(this + 55) + v174) = v195;
                  if (!v195)
                  {
                    break;
                  }

                  if (v193 >= 1)
                  {
                    bzero(v195, 4 * v193);
                  }

                  ++v173;
                  v80 = *(this + 2);
                  v174 += 136;
                  if (v173 >= v80)
                  {
                    LODWORD(v88) = *(this + 4);
                    v265 = v88 / 2;
                    v167 = (v88 + (v88 >> 31)) >> 1;
                    goto LABEL_152;
                  }
                }
              }

              return 4294967294;
            }
          }
        }

        else
        {
          v89 = 0;
          v90 = 4 * v88;
          if (v88 < 0)
          {
            v91 = -1;
          }

          else
          {
            v91 = 4 * v88;
          }

          v92 = MEMORY[0x1E69E5398];
          while (1)
          {
            *&v87[v89] = operator new[](v91, v92);
            v87 = *(this + 20);
            v93 = *&v87[v89];
            if (!v93)
            {
              break;
            }

            if (v88 >= 1)
            {
              bzero(v93, 4 * v88);
            }

            v89 += 8;
            if (v84 == v89)
            {
              goto LABEL_116;
            }
          }
        }
      }
    }

    return 4294967294;
  }
}

void Beamformer_BeamNF::CmhBEAM2NOpt::process(Beamformer_BeamNF::CmhBEAM2NOpt *this, const DSPSplitComplex *__A, DSPSplitComplex *__C)
{
  v213 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    return;
  }

  v3 = __C;
  v4 = __A;
  if (*(this + 38) == 1 || !*(this + 60))
  {
    if (*(this + 2) == 2)
    {
      v37 = 0;
      do
      {
        vDSP_zvmov(v4, 1, v3, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
        ++v37;
        ++v3;
        ++v4;
      }

      while (v37 < *(this + 2));
      if (!*(this + 202))
      {
        return;
      }

      LODWORD(__Aa.realp) = 1065353216;
      vDSP_vfill(&__Aa, **(this + 102), 1, *(this + 4));
      vDSP_vclr(**(this + 103), 1, *(this + 4));
      vDSP_vclr(*(*(this + 102) + 8), 1, *(this + 4));
      v38 = *(*(this + 103) + 8);
    }

    else
    {
      vDSP_zvmov(&__A[*(this + 1)], 1, __C, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
      if (!*(this + 202))
      {
        return;
      }

      LODWORD(__Aa.realp) = 1065353216;
      v39 = *(this + 102);
      if (!*(this + 1))
      {
        vDSP_vfill(&__Aa, *v39, 1, *(this + 4));
        vDSP_vclr(**(this + 103), 1, *(this + 4));
        return;
      }

      vDSP_vclr(*v39, 1, *(this + 4));
      v38 = **(this + 103);
    }

    vDSP_vfill(&__Aa, v38, 1, *(this + 4));
    return;
  }

  v6 = __A[1];
  __Aa = *__C;
  v212 = v6;
  vDSP_zvmov(__A, 1, __C, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
  v7 = *(this + 107);
  if (*(v7 + 44))
  {
    v8 = *(this + 55);
    v9 = *(v8 + 24);
    v10 = *(v8 + 40);
    v11 = *(this + 30);
    v12 = *(this + 221);
    realp = __Aa.realp;
    imagp = __Aa.imagp;
    v15 = __Aa.realp[v12];
    v16 = v212;
    v17 = v212.realp[v12];
    v18 = v15 + v17;
    v19 = __Aa.imagp[v12];
    v20 = v212.imagp[v12];
    v21.f32[0] = v15 - v17;
    v22.f32[0] = v19 - v20;
    v23 = v7 + 36;
    v21.f32[1] = v18;
    v22.f32[1] = v19 + v20;
    v24 = vmul_f32(vadd_f32(vabs_f32(vmul_f32(v21, 0x3F0000003F000000)), vabs_f32(vmul_f32(v22, 0x3F0000003F000000))), 0x3F0000003F000000);
    v25 = vbsl_s8(vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3FD9996666666667uLL), vcvtq_f64_f32(v24))), v24, vdup_n_s32(0x3ECCCB33u));
    v26 = *(v7 + 28);
    v27 = vcgt_f32(v26, v25);
    v28 = 4;
    if (v27.i8[4])
    {
      v29 = 4;
    }

    else
    {
      v29 = 0;
    }

    v30 = (v23 + v29);
    if ((v27.i8[0] & 1) == 0)
    {
      v28 = 0;
    }

    v31.i32[0] = *(v23 + v28);
    v31.i32[1] = *v30;
    v32 = vmaxnm_f32(vmla_f32(v25, vsub_f32(v26, v25), v31), vdup_n_s32(0x34A3D70Au));
    *(v7 + 28) = v32;
    v33 = v32.f32[1] - v32.f32[0];
    if ((v32.f32[1] - v32.f32[0]) < 0.0)
    {
      v33 = -(v32.f32[1] - v32.f32[0]);
    }

    if (v32.f32[1] > v32.f32[0])
    {
      v32.f32[0] = v32.f32[1];
    }

    v34 = fminf(v33 / v32.f32[0], 1.0);
    v35 = v34 * v34;
    v36 = 0.0;
    if (v35 > 0.25)
    {
      v36 = v35 * *(v7 + 24);
    }

    *(v7 + 20) = v36;
    if (v11)
    {
      *(this + 222) = 0;
    }

    else
    {
      v40 = *(this + 218);
      if (v40 < 1)
      {
        v48 = 0.0;
        v49 = 0.0;
      }

      else
      {
        v41 = *(this + 217);
        v42 = (v9 + 4 * v41 + 4);
        v43 = (v10 + 4 * v41 + 4);
        v44 = 0.0;
        v45 = 0.0;
        do
        {
          v46 = *v42++;
          v45 = v45 + v46;
          v47 = *v43++;
          v44 = v44 + v47;
          --v40;
        }

        while (v40);
        v48 = v45;
        v49 = v44;
      }

      v50 = v48 * 0.9 < v49;
      if (v49 * 0.9 >= v48)
      {
        v50 = 0;
      }

      *(this + 222) = v50;
      if (v50)
      {
        goto LABEL_37;
      }
    }

    *(v7 + 20) = 0;
    v36 = 0.0;
LABEL_37:
    v51 = *(this + 216);
    v52 = (fabsf(v16.realp[v51]) + fabsf(v16.imagp[v51])) * 0.5;
    v53 = fmaxf(v52 + (*(v7 + 4 * (*(v7 + 80) > v52) + 84) * (*(v7 + 80) - v52)), 0.00000030518);
    *(v7 + 80) = v53;
    v54 = *(this + 220);
    v55 = (fabsf(realp[v51]) + fabsf(imagp[v51])) * 0.5;
    v56 = fmaxf(v55 + (*(v7 + 4 * (*v7 > v55) + 4) * (*v7 - v55)), 0.00000030518);
    *v7 = v56;
    v58 = *(v7 + 12);
    v57 = *(v7 + 16);
    v59 = v58 * v54;
    if (v56 > v58)
    {
      v59 = v56;
    }

    if (v59 < 0.00048828)
    {
      v59 = 0.00048828;
    }

    *(v7 + 12) = v59;
    v60 = v53 + ((v57 * -4.0) * v56);
    v61 = *(v7 + 48);
    if (v36 <= 0.0075)
    {
      v64 = *(v7 + 52);
    }

    else
    {
      v62 = *(v7 + 56);
      v61 = v53 + (v62 * (v61 - v53));
      v63 = fabsf(v60);
      v64 = v63 + (v62 * (*(v7 + 52) - v63));
      *(v7 + 48) = v61;
      *(v7 + 52) = v64;
    }

    v65 = fmin(fmax(v64, 0.00000000305175781) / fmaxf(v61, 0.000015259), 1.0);
    v66 = *(v7 + 60);
    v67 = v66 * v53;
    v68 = v56 * v66;
    if (v56 > v67 || v68 < v53)
    {
      v65 = *(v7 + 64) * v65;
    }

    v70 = v57 + ((v56 * (v60 * ((v36 / (v59 * v59)) * v65))) * 0.25);
    *(v7 + 16) = v70;
    *(v7 + 76) = v65;
    v71 = v70 * 4.0;
    if (v71 <= *(v7 + 72))
    {
      v71 = *(v7 + 72);
    }

    if (v71 >= *(v7 + 68))
    {
      v71 = *(v7 + 68);
    }

    *&v210.realp = v71;
    MEMORY[0x1E12BE940](realp, 1, &v210, realp, 1, *(this + 219) + 1);
    MEMORY[0x1E12BE940](__Aa.imagp, 1, &v210, __Aa.imagp, 1, *(this + 219) + 1);
  }

  v72 = *(this + 27);
  v210.realp = *(this + 25);
  v210.imagp = v72;
  vDSP_zvmul(&v210, 1, &v212, 1, (this + 168), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1, 1);
  vDSP_zvsub(&__Aa, 1, (this + 168), 1, (this + 168), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
  v73 = *(this + 28);
  v210.realp = *(this + 26);
  v210.imagp = v73;
  vDSP_zvmul(&v210, 1, &__Aa, 1, (this + 184), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1, 1);
  vDSP_zvsub(&v212, 1, (this + 184), 1, (this + 184), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
  if (*(this + 224))
  {
    v74 = 5;
  }

  else
  {
    v75 = *(*(this + 39) + 4 * *(this + 185)) * 32767.0;
    if (v75 > 32767.0)
    {
      v75 = 32767.0;
    }

    *(this + 163) = v75;
    CmhMicCheck::process((this + 496), __Aa.realp, __Aa.imagp, v212.realp, v212.imagp, this + 21, this + 23);
    v74 = *(this + 172);
  }

  *(this + 33) = v74;
  **(this + 22) = 0;
  **(this + 21) = 0;
  **(this + 24) = 0;
  **(this + 23) = 0;
  if (*(this + 94))
  {
    v76 = *(this + 6);
    if (v76 >= 1)
    {
      v77 = 0;
      v78 = *(this + 37);
      v79 = *(this + 38);
      v80 = v212.imagp + 1;
      v81 = __Aa.imagp + 1;
      v82 = v212.realp + 1;
      v83 = __Aa.realp + 1;
      v84 = *(this + 41) + 8;
      v85 = v79;
      v86 = v78;
      do
      {
        v87 = fabsf(*v83 + *v82) + fabsf(*v81 + *v80);
        *v86 = fmaxf(v87 + (*(v84 + 4 * (*v86 > v87)) * (*v86 - v87)), 0.000091553);
        ++v86;
        v88 = *v82++;
        v89 = v88;
        v90 = *v83++;
        v91 = v90;
        v92 = *v80++;
        v93 = v92;
        v94 = *v81++;
        v95 = vabds_f32(v89, v91) + vabds_f32(v93, v94);
        *v85 = fmaxf(v95 + (*(v84 + 4 * (*v85 > v95)) * (*v85 - v95)), 0.000030518);
        ++v85;
        ++v77;
        v84 += 8;
      }

      while (v76 > v77);
      v96 = 0;
      v97 = *(this + 39);
      v98 = v97;
      do
      {
        v99 = *v78++;
        v100 = v99;
        v101 = *v79++;
        *v98++ = (*(this + 91) * v100) / v101;
        ++v96;
      }

      while (v76 > v96);
      v102 = 0;
      v103 = *(this + 40);
      v104 = *(this + 44) + 4;
      do
      {
        v105 = *v97++;
        v106 = v105;
        if (v105 > 0.708)
        {
          v106 = 0.708000004;
        }

        if (v106 < 0.125)
        {
          v106 = 0.125;
        }

        v107 = v106;
        v108 = v107 * 108.2375 + -13.6263;
        if (v108 < 0.0)
        {
          v108 = 0.0;
        }

        if (v108 > 63.0)
        {
          v108 = 63.0;
        }

        v109 = rvss_table[v108];
        *v103 = v109;
        if (*(v104 + 4 * v102) > v109)
        {
          v109 = *(v104 + 4 * v102);
        }

        *v103++ = v109;
        ++v102;
      }

      while (v76 > v102);
    }
  }

  if (*(this + 11) >= 1)
  {
    v110 = 0;
    v111 = (this + 176);
    do
    {
      MEMORY[0x1E12BE7F0](*(*(this + 29) + 8 * v110), 1, *(v111 - 1), 1, *(v111 - 1), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
      v112 = *v111;
      v111 += 2;
      MEMORY[0x1E12BE7F0](*(*(this + 29) + 8 * v110++), 1, v112, 1, v112, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    }

    while (v110 < *(this + 11));
  }

  memcpy(**(this + 104), *(*(this + 55) + 48), 4 * (*(this + 4) >> 1));
  if (*(this + 2) == 2)
  {
    memcpy(*(*(this + 104) + 8), *(*(this + 55) + 184), 4 * (*(this + 4) >> 1));
    if (*(this + 2) == 2)
    {
      Beamformer_BeamNF::CmhBEAM2NOpt::abf(this, this + 21, this + 23, (*(this + 55) + 136), *(this + 55) + 136, 1u);
      v114 = *(this + 55);
      if (*(this + 66))
      {
        Beamformer_BeamNF::CmhBEAM2NOpt::abf(this, this + 23, this + 21, (v114 + 136), v114 + 136, 0);
      }

      else
      {
        CmhBEAM2NOpt::abf_output_only(this, *(this + 23), *(this + 24), *(this + 21), *(this + 22), (v114 + 136), v113);
      }

      CmhBEAM2NOpt::sns(this, *(this + 55) + 136);
      goto LABEL_92;
    }
  }

  v115 = *(this + 1);
  if (!v115)
  {
LABEL_92:
    Beamformer_BeamNF::CmhBEAM2NOpt::abf(this, this + 23, this + 21, *(this + 55), *(this + 55), 1u);
    v117 = *(this + 55);
    if (*(this + 65))
    {
      v118 = (this + 168);
      v119 = (this + 184);
      goto LABEL_94;
    }

    v120 = *(this + 21);
    v121 = *(this + 22);
    v122 = *(this + 23);
    v123 = *(this + 24);
    goto LABEL_96;
  }

  if (v115 != 1)
  {
LABEL_101:
    MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * *(this + 1)), 1, **(this + 55), 1, **(this + 55), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * *(this + 1)), 1, *(*(this + 55) + 8), 1, *(*(this + 55) + 8), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    LODWORD(v126) = *(this + 2);
    goto LABEL_102;
  }

  Beamformer_BeamNF::CmhBEAM2NOpt::abf(this, this + 21, this + 23, *(this + 55), *(this + 55), 1u);
  v117 = *(this + 55);
  if (*(this + 65))
  {
    v118 = (this + 184);
    v119 = (this + 168);
LABEL_94:
    Beamformer_BeamNF::CmhBEAM2NOpt::abf(this, v118, v119, v117, v117, 0);
    goto LABEL_97;
  }

  v120 = *(this + 23);
  v121 = *(this + 24);
  v122 = *(this + 21);
  v123 = *(this + 22);
LABEL_96:
  CmhBEAM2NOpt::abf_output_only(this, v120, v121, v122, v123, v117, v116);
LABEL_97:
  CmhBEAM2NOpt::sns(this, *(this + 55));
  if (*(this + 2) != 2)
  {
    goto LABEL_101;
  }

  v124 = 0;
  v125 = 0;
  do
  {
    MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * v125), 1, *(*(this + 55) + v124), 1, *(*(this + 55) + v124), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * v125++), 1, *(*(this + 55) + v124 + 8), 1, *(*(this + 55) + v124 + 8), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    v126 = *(this + 2);
    v124 += 136;
  }

  while (v125 < v126);
LABEL_102:
  if (v126 == 2)
  {
    v127 = 0;
    v128 = 8;
    p_imagp = &__Aa.imagp;
    while (1)
    {
      v130 = *(this + 36);
      v131 = *(this + 64);
      v132 = v131 + 2;
      v133 = (*(*(this + 55) + v128 - 8) + 4 * v132);
      if (v130 == 1)
      {
        break;
      }

      if (v130)
      {
        memcpy(v133, &v212.realp[v132], 4 * (*(this + 6) + ~v131));
        v138 = *(this + 64);
        v135 = v138 + 2;
        v136 = (*(*(this + 55) + v128) + 4 * (v138 + 2));
        v137 = &v212.imagp;
        goto LABEL_109;
      }

      memcpy(v133, &(*(p_imagp - 1))[v132], 4 * (*(this + 6) + ~v131));
      v134 = *(this + 64);
      v135 = v134 + 2;
      v136 = (*(*(this + 55) + v128) + 4 * (v134 + 2));
      v137 = p_imagp;
LABEL_110:
      memcpy(v136, &(*v137)[v135], 4 * (*(this + 6) + ~v134));
      ++v127;
      v142 = *(this + 2);
      v128 += 136;
      p_imagp += 2;
      if (v127 >= v142)
      {
        goto LABEL_119;
      }
    }

    memcpy(v133, &__Aa.realp[v132], 4 * (*(this + 6) + ~v131));
    v138 = *(this + 64);
    v135 = v138 + 2;
    v136 = (*(*(this + 55) + v128) + 4 * (v138 + 2));
    v137 = &__Aa.imagp;
LABEL_109:
    LODWORD(v134) = v138;
    goto LABEL_110;
  }

  v143 = *(this + 36);
  v144 = *(this + 64);
  v145 = v144 + 2;
  v146 = (**(this + 55) + 4 * v145);
  if (v143 == 1)
  {
    memcpy(v146, &__Aa.realp[v145], 4 * (*(this + 6) + ~v144));
    v151 = *(this + 64);
    v148 = v151 + 2;
    v149 = (*(*(this + 55) + 8) + 4 * (v151 + 2));
    v150 = &__Aa.imagp;
  }

  else
  {
    if (!v143)
    {
      memcpy(v146, (*(&__Aa.realp + 2 * *(this + 1)) + 4 * v145), 4 * (*(this + 6) + ~v144));
      v147 = *(this + 64);
      v148 = v147 + 2;
      v149 = (*(*(this + 55) + 8) + 4 * (v147 + 2));
      v150 = ((&__Aa + *(this + 1)) | 8);
      goto LABEL_118;
    }

    memcpy(v146, &v212.realp[v145], 4 * (*(this + 6) + ~v144));
    v151 = *(this + 64);
    v148 = v151 + 2;
    v149 = (*(*(this + 55) + 8) + 4 * (v151 + 2));
    v150 = &v212.imagp;
  }

  LODWORD(v147) = v151;
LABEL_118:
  memcpy(v149, (*v150 + 4 * v148), 4 * (*(this + 6) + ~v147));
  LODWORD(v142) = *(this + 2);
LABEL_119:
  if (*(this + 94) && v142 >= 1)
  {
    v152 = 0;
    v153 = 0;
    while (1)
    {
      v154 = *(this + 55);
      *(this + 31) = 1;
      if (*(this + 32))
      {
        v155 = *(this + 33);
        p_Aa = &v212;
        if (v155 <= 1)
        {
          if (!v155)
          {
            goto LABEL_134;
          }

          if (v155 == 1)
          {
            goto LABEL_133;
          }
        }

        else
        {
          switch(v155)
          {
            case 2:
              goto LABEL_134;
            case 3:
              goto LABEL_133;
            case 4:
              v157 = *(this + 34);
              if (v157 == 1)
              {
LABEL_133:
                p_Aa = &__Aa;
              }

              else
              {
                p_Aa = &v212;
                if (!v157)
                {
                  if (v142 == 2)
                  {
                    v158 = v152 == 0;
                  }

                  else
                  {
                    v158 = *(this + 1) == 0;
                  }

                  if (v158)
                  {
                    p_Aa = &__Aa;
                  }

                  else
                  {
                    p_Aa = &v212;
                  }
                }
              }

LABEL_134:
              if ((v154 + v152) != p_Aa)
              {
                v159 = v154 + v152;
                memcpy(*(v154 + v152), p_Aa->realp, 4 * (*(this + 4) / 2));
                memcpy(*(v159 + 8), p_Aa->imagp, 4 * (*(this + 4) / 2));
                LODWORD(v142) = *(this + 2);
              }

              goto LABEL_137;
          }
        }
      }

      *(this + 31) = 0;
LABEL_137:
      ++v153;
      v152 += 136;
      if (v153 >= v142)
      {
        if (*(this + 31))
        {
          v160 = 1;
        }

        else
        {
          v160 = v142 < 1;
        }

        if (v160)
        {
          break;
        }

        v161 = 0;
        v162 = *(this + 34);
        v139.n128_u64[0] = 0;
        v140.n128_u32[0] = 1.0;
        v141.n128_u64[0] = 1.0;
        while (1)
        {
          if (v162 == 1)
          {
LABEL_156:
            v163 = &__Aa;
            goto LABEL_157;
          }

          if (v162)
          {
            break;
          }

          if (v142 == 2)
          {
            v163 = &__Aa + v161;
LABEL_157:
            v165 = (*(this + 55) + 136 * v161);
            v166 = *(this + 93);
            if (v166 < 1)
            {
              v175 = 0.0;
            }

            else
            {
              v167 = 0;
              v168 = *(this + 103);
              v169 = *(this + 105);
              v170 = *(*(this + 105) + 8 * v161);
              v171 = v165[1] + 4;
              v172 = *v165 + 4;
              v173 = (v163->imagp + 1);
              v174 = (v163->realp + 1);
              v175 = 0.0;
              do
              {
                v176 = v167 + 1;
                if (v167 >= v169)
                {
                  v168 = 0.0;
                }

                v177 = *(v172 + 4 * v167);
                v178 = (v168 + (fabsf(*(v174 + 4 * v167)) + fabsf(*(v173 + 4 * v167)))) / (fabsf(v177) + fabsf(*(v171 + 4 * v167)));
                if (v167 < v169 && v176 >= *(this + 104))
                {
                  v175 = v175 + v178;
                }

                v179 = 1.0;
                if (v178 < *(this + 92))
                {
                  *(v172 + 4 * v167) = v177 * v178;
                  *(v171 + 4 * v167) = v178 * *(v171 + 4 * v167);
                  v179 = v178;
                }

                *(v170 + 4 * v167++) = v179;
              }

              while (v166 != v176);
            }

            v180 = *(this + 102);
            if ((v175 / *(this + 106)) >= 1.0)
            {
              v181 = fmaxf(v180 - *(this + 108), 0.0);
            }

            else
            {
              v181 = fminf(*(this + 107) + v180, 1.0);
            }

            *(this + 102) = v181;
            if (v166 >= 1)
            {
              v182 = v163->realp;
              v183 = v163->imagp;
              v184 = *v165;
              v185 = (v165[1] + 4);
              v186 = v183 + 1;
              v187 = (v184 + 4);
              v188 = v182 + 1;
              do
              {
                v189 = *v188++;
                v190 = (*(this + 102) * v189) + (1.0 - *(this + 102)) * *v187;
                *v187++ = v190;
                v191 = *v186++;
                v192 = (*(this + 102) * v191) + (1.0 - *(this + 102)) * *v185;
                *v185++ = v192;
                --v166;
              }

              while (v166);
            }

            goto LABEL_175;
          }

          v164 = *(this + 1);
          if (!v164)
          {
            goto LABEL_156;
          }

          v163 = &v212;
          if (v164 == 1)
          {
            goto LABEL_157;
          }

LABEL_175:
          if (++v161 == v142)
          {
            v193 = 0;
            v194 = 0;
            do
            {
              v195 = *(this + 40);
              v196 = *(*(this + 55) + v193) + 4;
              MEMORY[0x1E12BE7F0](v196, 1, v195, 1, v196, 1, *(this + 6), v139, v140, v141);
              v197 = *(*(this + 55) + v193 + 8) + 4;
              MEMORY[0x1E12BE7F0](v197, 1, v195, 1, v197, 1, *(this + 6));
              ++v194;
              v142 = *(this + 2);
              v193 += 136;
            }

            while (v194 < v142);
            goto LABEL_178;
          }
        }

        v163 = &v212;
        goto LABEL_157;
      }
    }
  }

LABEL_178:
  if (*(this + 10))
  {
    if (v142 == 2)
    {
      v198 = 0;
      v199 = 0;
      do
      {
        v200 = *(*(this + 14) + 8 * v199);
        v201 = *(*(this + 55) + v198) + 4;
        MEMORY[0x1E12BE7F0](v201, 1, v200 + 4, 1, v201, 1, *(this + 6));
        v202 = *(*(this + 55) + v198 + 8) + 4;
        MEMORY[0x1E12BE7F0](v202, 1, v200 + 4, 1, v202, 1, *(this + 6));
        ++v199;
        v142 = *(this + 2);
        v198 += 136;
      }

      while (v199 < v142);
    }

    else
    {
      v203 = *(*(this + 14) + 8 * *(this + 1));
      MEMORY[0x1E12BE7F0](**(this + 55) + 4, 1, v203 + 4, 1, **(this + 55) + 4, 1, *(this + 6));
      v204 = *(*(this + 55) + 8) + 4;
      MEMORY[0x1E12BE7F0](v204, 1, v203 + 4, 1, v204, 1, *(this + 6));
      LODWORD(v142) = *(this + 2);
    }
  }

  if (v142 < 1)
  {
    if (!*(this + 202))
    {
      return;
    }

    goto LABEL_193;
  }

  v142 = v142;
  v205 = (*(this + 55) + 8);
  do
  {
    **v205 = 0;
    **(v205 - 1) = 0;
    v205 += 17;
    --v142;
  }

  while (v142);
  v206 = 0;
  v207 = 0;
  do
  {
    vDSP_zvmov((*(this + 55) + v206), 1, v3, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    ++v207;
    v208 = *(this + 2);
    ++v3;
    v206 += 136;
  }

  while (v207 < v208);
  if (*(this + 202))
  {
    if (v208 == 2)
    {
      Beamformer_BeamNF::CmhBEAM2NOpt::getAuxVectors(this, 0);
      v209 = 1;
LABEL_194:
      Beamformer_BeamNF::CmhBEAM2NOpt::getAuxVectors(this, v209);
      return;
    }

LABEL_193:
    v209 = *(this + 1);
    goto LABEL_194;
  }
}

void Beamformer_BeamNF::CmhBEAM2NOpt::abf(uint64_t a1, const float **a2, const float **a3, void *a4, uint64_t a5, unsigned int a6)
{
  v10 = a5 + 16;
  v11 = *(a5 + 16 + 8 * a6);
  v68 = a5 + 32;
  v12 = *(a5 + 32 + 8 * a6);
  __B = 0.0;
  __C = 0.5;
  v80 = 0.99997;
  v79 = 0.000030518;
  v13 = a6;
  v14 = *(a1 + 64);
  v15 = *(a1 + 24);
  if (v15 >= 30)
  {
    v16 = 30;
  }

  else
  {
    v16 = v15;
  }

  v17 = a5 + 4 * a6;
  v77 = *(v17 + 64);
  v78 = v14;
  v76 = 0.0001;
  __A = *(v17 + 88);
  v73 = 1.0;
  v74 = -1.0;
  v72 = 0.0;
  vDSP_vabs(*a2, 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v71 = a2;
  vDSP_vabs(a2[1], 1, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vasm(*(a1 + 448), 1, *(a1 + 456), 1, &__C, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vclip(v11, 1, &__B, &v80, v11, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE940](v11, 1, &v78, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v18 = *(a1 + 16);
  v19 = v18 / 2;
  if (v18 >= 2)
  {
    v20 = 0;
    v21 = *(a1 + 448);
    v22 = *(v10 + 8 * v13);
    do
    {
      v23 = *(v21 + 4 * v20);
      if (v23 <= *(v22 + 4 * v20))
      {
        v23 = *(*(a1 + 456) + 4 * v20);
      }

      *(v22 + 4 * v20++) = v23;
    }

    while (v19 > v20);
  }

  vDSP_vthr(v11, 1, &v79, v11, 1, v19);
  v24 = a3;
  vDSP_vabs(*a3, 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vabs(a3[1], 1, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vasm(*(a1 + 448), 1, *(a1 + 456), 1, &__C, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vclip(v12, 1, &__B, &v80, v12, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE940](v12, 1, &v78, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v25 = *(a1 + 16);
  v26 = v25 / 2;
  if (v25 > 1)
  {
    v27 = 0;
    v28 = *(a1 + 448);
    v29 = *(v68 + 8 * v13);
    do
    {
      v30 = *(v28 + 4 * v27);
      if (v30 <= *(v29 + 4 * v27))
      {
        v30 = *(*(a1 + 456) + 4 * v27);
      }

      *(v29 + 4 * v27++) = v30;
    }

    while (v26 > v27);
  }

  vDSP_vthr(v12, 1, &v79, v12, 1, v26);
  v31 = a5 + 72;
  *(a5 + 72 + 2 * v13) = 0;
  vDSP_vsmsb(v11, 1, &v77, v12, 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v33 = *(a1 + 448);
  if (v15 >= 1)
  {
    v34 = (v33 + 4);
    v35 = *(v31 + 2 * v13);
    do
    {
      v36 = *v34++;
      v32.n128_f32[0] = v36;
      if (v36 < 0.0)
      {
        ++v35;
      }

      else
      {
        --v35;
      }

      --v16;
    }

    while (v16);
    *(v31 + 2 * v13) = v35;
  }

  v37 = a5 + 48;
  MEMORY[0x1E12BE7F0](*(a5 + 48 + 8 * v13), 1, *v24, 1, v33, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1, v32);
  MEMORY[0x1E12BE9A0](*(a1 + 448), 1, *v71, 1, *a4, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a5 + 48 + 8 * v13), 1, v24[1], 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE9A0](*(a1 + 448), 1, v71[1], 1, a4[1], 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vmax(v11, 1, v12, 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vthr(*(a1 + 448), 1, &v76, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE990](*(a1 + 448), 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vfill(&__A, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vdiv(*(a1 + 448), 1, *(a1 + 456), 1, *(a1 + 464), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  if (*(v31 + 2 * v13) >= *(a5 + 2 * v13 + 76))
  {
    v46 = *(a1 + 256);
    v39 = a6;
    v47 = 0;
    if ((v46 & 0x80000000) == 0)
    {
      v48 = (*(a1 + 488) + 4);
      v49 = (*(a1 + 480) + 4);
      v50 = (*(a1 + 472) + 4);
      v51 = (*(a1 + 464) + 4);
      do
      {
        v52 = *v51++;
        v53 = *(a5 + 96 + 4 * v13);
        *v50++ = v52;
        *v49++ = 0;
        *v48++ = v53;
        ++v47;
      }

      while (v46 >= v47);
    }

    v54 = *(a1 + 24);
    if (v54 > v47)
    {
      v55 = v47;
      v56 = a6;
      v57 = *(a1 + 472);
      v58 = *(a1 + 480);
      v59 = *(a1 + 488);
      do
      {
        v60 = *(a5 + 96 + 4 * v13);
        v61 = *(a5 + 104) * v56;
        v62 = v55 + 1;
        *(v57 + 4 * v62) = 0;
        *(v58 + 4 * v62) = v56;
        *(v59 + 4 * v62) = v61 + ((1 - a6) * v60);
        v55 = ++v47;
      }

      while (v54 > v47);
    }
  }

  else
  {
    v38 = *(a1 + 24);
    v39 = a6;
    if (v38 >= 1)
    {
      v40 = 0;
      v41 = a6;
      v42 = (*(a1 + 488) + 4);
      v43 = (*(a1 + 480) + 4);
      v44 = (*(a1 + 472) + 4);
      do
      {
        v45 = (*(a5 + 104) * v41) + ((1 - a6) * *(a5 + 96 + 4 * v13));
        *v44++ = 0;
        *v43++ = v41;
        *v42++ = v45;
        ++v40;
      }

      while (v38 > v40);
    }
  }

  MEMORY[0x1E12BE7F0](*a4, 1, *v24, 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](a4[1], 1, v24[1], 1, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE5D0](*(a1 + 448), 1, *(a1 + 456), 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a1 + 448), 1, *(a1 + 472), 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a1 + 488), 1, *(v37 + 8 * v13), 1, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE5D0](*(a1 + 448), 1, *(a1 + 456), 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a1 + 480), 1, *(a1 + 488), 1, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE9A0](*(a1 + 456), 1, *(a1 + 480), 1, *(a1 + 456), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE5D0](*(a1 + 448), 1, *(a1 + 456), 1, *(v37 + 8 * v13), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vclip(*(v37 + 8 * v13), 1, &v74, &v73, *(v37 + 8 * v13), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  if (!v39)
  {
    vDSP_vmin((*(v37 + 8 * v13) + 4), 1, *(a1 + 272), 1, (*(v37 + 8 * v13) + 4), 1, *(a1 + 16) / 2 - 1);
    if (!*(a1 + 284))
    {
      vDSP_vclip(*(v37 + 8 * v13), 1, &v74, &v72, *(v37 + 8 * v13), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    }
  }

  v63 = *(a5 + 4 * v13 + 80) + -1.0;
  if (v63 >= (*(a1 + 24) - 1))
  {
    v63 = (*(a1 + 24) - 1);
  }

  v64 = v63 + 1.0;
  v65 = v64;
  if (v65 >= 1)
  {
    v66 = *(a1 + 200);
    v67 = *(a1 + 320);
    MEMORY[0x1E12BE940](*(v37 + 8 * v13) + 4, 1, v67 + 8, *(a1 + 448) + 4, 1, v64);
    MEMORY[0x1E12BE940](v66 + 4, 1, v67 + 8, *(a1 + 456) + 4, 1, v65);
    MEMORY[0x1E12BE5D0](*(a1 + 448) + 4, 1, *(a1 + 456) + 4, 1, *(a1 + 448) + 4, 1, v65);
    MEMORY[0x1E12BE9A0](v66 + 4, 1, *(a1 + 448) + 4, 1, *(a1 + 456) + 4, 1, v65);
    MEMORY[0x1E12BE7F0](*(a1 + 456) + 4, 1, *v24 + 1, 1, *(a1 + 448) + 4, 1, v65);
    MEMORY[0x1E12BE9A0](*(a1 + 448) + 4, 1, *v71 + 1, 1, *a4 + 4, 1, v65);
    MEMORY[0x1E12BE7F0](*(a1 + 456) + 4, 1, v24[1] + 1, 1, *(a1 + 448) + 4, 1, v65);
    MEMORY[0x1E12BE9A0](*(a1 + 448) + 4, 1, v71[1] + 1, 1, a4[1] + 4, 1, v65);
  }

  if (!v39)
  {
    MEMORY[0x1E12BE5D0](*v71, 1, *v24, 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE940](*(a1 + 448), 1, a1 + 288, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE5D0](*a4, 1, *(a1 + 448), 1, *a4, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE5D0](v71[1], 1, v24[1], 1, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE940](*(a1 + 448), 1, a1 + 288, *(a1 + 448), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE5D0](a4[1], 1, *(a1 + 448), 1, a4[1], 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  }
}

uint64_t Beamformer_BeamNF::CmhBEAM2NOpt::getAuxVectors(uint64_t this, int a2)
{
  v2 = *(this + 816);
  v3 = *(this + 8);
  v4 = v3 - 1;
  if (v3 - 1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v3 - 1;
  }

  v6 = (v2 + 8 * v5);
  v7 = *(this + 16);
  v8 = (v7 + (v7 >> 31)) >> 1;
  v9 = *(this + 824);
  v10 = (v9 + 8 * v5);
  v11 = *(this + 216);
  v12 = *(this + 232);
  v13 = *(this + 440) + 136 * v5;
  v14 = *(this + 320);
  if (v3 > 2)
  {
    v4 = 1;
  }

  v15 = (v9 + 8 * v4);
  v16 = (v2 + 8 * v4);
  if (a2 == 1)
  {
    v17 = v12[1];
  }

  else
  {
    v17 = *v12;
  }

  if (a2 == 1)
  {
    v18 = *v12;
  }

  else
  {
    v18 = v12[1];
  }

  if (a2 == 1)
  {
    v19 = *(this + 216);
  }

  else
  {
    v19 = *(this + 224);
  }

  if (a2 == 1)
  {
    v20 = *(this + 200);
  }

  else
  {
    v20 = *(this + 208);
  }

  if (a2 == 1)
  {
    v11 = *(this + 224);
    v21 = *(this + 208);
  }

  else
  {
    v21 = *(this + 200);
  }

  if (a2 == 1)
  {
    v22 = v16;
  }

  else
  {
    v22 = v10;
  }

  if (a2 == 1)
  {
    v23 = v15;
  }

  else
  {
    v23 = v6;
  }

  v24 = *v23 + 4;
  v25 = v24 + 4 * v8;
  v26 = *v22 + 4;
  v27 = v26 + 4 * v8;
  v28 = *(this + 856);
  if (*(v28 + 44))
  {
    v29 = *(v28 + 16) * 4.0;
  }

  else
  {
    v29 = 1.0;
  }

  v30 = *(v13 + 48);
  v31 = *(*(this + 840) + 8 * v5);
  v32 = *(*(this + 112) + 8 * a2);
  v33 = *(v13 + 80);
  v34 = *(*(this + 104) + 8 * a2);
  v35 = *(v14 + 8);
  v36 = *(this + 288);
  if (!*(this + 124) || !*(this + 376))
  {
    v40 = *(this + 24);
    if (v40 < 1)
    {
      goto LABEL_77;
    }

    v71 = v32;
    v41 = 0;
    v42 = *(this + 200) + 4;
    v43 = *(*(this + 832) + 8 * v5) + 4;
    v44 = v30 + 4;
    v45 = v34 + 4;
    v46 = v11 + 4;
    v47 = v20 + 4;
    v48 = v19 + 4;
    v49 = v18 + 4;
    v50 = v17 + 4;
    v51 = *(this + 256);
    v52 = this + 260;
    v53 = v21 + 4;
    v54 = -v36;
    v55 = *(this + 376);
    while (v41 > v51)
    {
      *(v24 + 4 * v41) = 1065353216;
      *(v25 + 4 * v41) = 0;
      *(v26 + 4 * v41) = 0;
      *(v27 + 4 * v41) = 0;
      if (v55)
      {
        goto LABEL_58;
      }

LABEL_61:
      if (v40 == ++v41)
      {
        v32 = v71;
        goto LABEL_71;
      }
    }

    if (v41 >= v33)
    {
      v56 = *(this + 272);
      v57 = *(this + 284);
    }

    else
    {
      v56 = *(this + 272);
      v57 = *(this + 284);
      if (*(v52 + 4 * v5) == 1)
      {
        v58 = *(v56 + 4 * v41);
        if (v58 >= *(v44 + 4 * v41))
        {
          v58 = *(v44 + 4 * v41);
        }

        v59 = fminf(v58, 0.0);
        if (!v57)
        {
          v58 = v59;
        }

        v60 = (v58 * v35) - (*(v42 + 4 * v41) * (1.0 - v35));
        goto LABEL_53;
      }
    }

    v60 = *(v56 + 4 * v41);
    if (v60 >= *(v43 + 4 * v41))
    {
      v60 = *(v43 + 4 * v41);
    }

    v61 = fminf(v60, 0.0);
    if (!v57)
    {
      v60 = v61;
    }

LABEL_53:
    if (*(this + 240))
    {
      *(v24 + 4 * v41) = *(v50 + 4 * v41) + ((v60 * *(v47 + 4 * v41)) * *(v49 + 4 * v41));
      *(v25 + 4 * v41) = (v60 * *(v48 + 4 * v41)) * *(v49 + 4 * v41);
      *(v26 + 4 * v41) = -(*(v50 + 4 * v41) * *(v53 + 4 * v41)) - (*(v49 + 4 * v41) * v60);
      *(v27 + 4 * v41) = -(*(v50 + 4 * v41) * *(v46 + 4 * v41));
      if (*(v52 + 4 * v5) == 1)
      {
        *(v24 + 4 * v41) = *(v24 + 4 * v41) + (v36 * (*(v50 + 4 * v41) - (*(v47 + 4 * v41) * *(v49 + 4 * v41))));
        *(v25 + 4 * v41) = *(v25 + 4 * v41) + ((*(v48 + 4 * v41) * v54) * *(v49 + 4 * v41));
        *(v26 + 4 * v41) = *(v26 + 4 * v41) + (v36 * (*(v49 + 4 * v41) - (*(v53 + 4 * v41) * *(v50 + 4 * v41))));
        *(v27 + 4 * v41) = *(v27 + 4 * v41) + ((*(v46 + 4 * v41) * v54) * *(v50 + 4 * v41));
      }
    }

    else
    {
      *(v24 + 4 * v41) = 1065353216;
      *(v25 + 4 * v41) = 0;
      *(v26 + 4 * v41) = 0;
      *(v27 + 4 * v41) = 0;
    }

    *(v24 + 4 * v41) = *(v45 + 4 * v41) * *(v24 + 4 * v41);
    *(v25 + 4 * v41) = *(v45 + 4 * v41) * *(v25 + 4 * v41);
    *(v26 + 4 * v41) = *(v45 + 4 * v41) * *(v26 + 4 * v41);
    *(v27 + 4 * v41) = *(v45 + 4 * v41) * *(v27 + 4 * v41);
    if (!v55)
    {
      goto LABEL_61;
    }

LABEL_58:
    if (v41 < *(this + 372))
    {
      *(v24 + 4 * v41) = *(v31 + 4 * v41) * *(v24 + 4 * v41);
      *(v25 + 4 * v41) = *(v31 + 4 * v41) * *(v25 + 4 * v41);
      *(v26 + 4 * v41) = *(v31 + 4 * v41) * *(v26 + 4 * v41);
      *(v27 + 4 * v41) = *(v31 + 4 * v41) * *(v27 + 4 * v41);
    }

    *(v24 + 4 * v41) = *(v14 + 4 * v41) * *(v24 + 4 * v41);
    *(v25 + 4 * v41) = *(v14 + 4 * v41) * *(v25 + 4 * v41);
    *(v26 + 4 * v41) = *(v14 + 4 * v41) * *(v26 + 4 * v41);
    *(v27 + 4 * v41) = *(v14 + 4 * v41) * *(v27 + 4 * v41);
    goto LABEL_61;
  }

  v37 = *(this + 132);
  v38 = 1.0;
  v39 = 0.0;
  if (v37 != 4)
  {
    if (v37 != 2 && v37)
    {
      goto LABEL_68;
    }

LABEL_67:
    v38 = 0.0;
    v39 = 1.0;
    goto LABEL_68;
  }

  v62 = *(this + 136);
  if (v62 == 1)
  {
    goto LABEL_68;
  }

  if (v62)
  {
    goto LABEL_67;
  }

  if (v3 == 2)
  {
    v63 = a2 == 0;
  }

  else
  {
    v63 = *(this + 4) == 0;
  }

  if (v63)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 1.0;
  }

  if (!v63)
  {
    v38 = 0.0;
  }

LABEL_68:
  LODWORD(v40) = *(this + 24);
  if (v40 >= 1)
  {
    v64 = (*v6 + 4);
    v65 = (*v10 + 4);
    v66 = *(this + 24);
    do
    {
      *v64 = v38;
      v64[v8] = 0.0;
      *v65 = v39;
      v65[v8] = 0.0;
      ++v65;
      ++v64;
      --v66;
    }

    while (v66);
LABEL_71:
    if (*(this + 40))
    {
      v67 = v40 < 1;
    }

    else
    {
      v67 = 1;
    }

    if (!v67)
    {
      v68 = 0;
      v69 = v32 + 4;
      do
      {
        *(v24 + v68) = *(v69 + v68) * *(v24 + v68);
        *(v25 + v68) = *(v69 + v68) * *(v25 + v68);
        *(v26 + v68) = *(v69 + v68) * *(v26 + v68);
        *(v27 + v68) = *(v69 + v68) * *(v27 + v68);
        v68 += 4;
      }

      while (4 * v40 != v68);
    }
  }

LABEL_77:
  if (v7 >= 1)
  {
    v70 = *v6;
    do
    {
      *v70 = v29 * *v70;
      ++v70;
      --v7;
    }

    while (v7);
  }

  return this;
}

void Beamformer_BeamNF::CmhBEAM2NOpt::setParameter(Beamformer_BeamNF::CmhBEAM2NOpt *this, int a2, CmhBEAM2NOpt *a3, int16x4_t a4)
{
  switch(a2)
  {
    case 3:
      *(*(this + 107) + 44) = *a3;
      return;
    case 4:
      v13 = *a3;
      *(this + 65) = *a3;
      goto LABEL_71;
    case 5:
      *(this + 94) = *a3;
      return;
    case 9:

      CmhBEAM2NOpt::setSpatialFilterReal(this, a3);
      return;
    case 10:

      CmhBEAM2NOpt::setSpatialFilterImag(this, a3);
      return;
    case 13:
      v23 = a3;
      v24 = 0;
      goto LABEL_49;
    case 14:
      v26 = a3;
      v27 = 0;
      goto LABEL_53;
    case 15:
      v23 = a3;
      v24 = 1;
LABEL_49:

      CmhBEAM2NOpt::setModelSpatialFilterReal(this, v23, v24);
      return;
    case 16:
      v26 = a3;
      v27 = 1;
LABEL_53:

      Beamformer_BeamNF::CmhBEAM2NOpt::setModelSpatialFilterImag(this, v26, v27);
      return;
    case 17:

      CmhBEAM2NOpt::setModelFreqCompVector(this, a3);
      return;
    case 18:

      CmhBEAM2NOpt::setModelOmniEQVector(this, a3);
      return;
    case 19:
      v14 = a3;
      v15 = 0;
      goto LABEL_66;
    case 20:
      v28 = a3;
      v29 = 0;
      goto LABEL_90;
    case 21:
      v14 = a3;
      v15 = 1;
LABEL_66:

      CmhBEAM2NOpt::setModelFreqCompVector(this, v14, v15);
      return;
    case 22:
      v28 = a3;
      v29 = 1;
LABEL_90:

      CmhBEAM2NOpt::setModelOmniEQVector(this, v28, v29);
      return;
    case 29:
      v38 = *(this + 2);
      if (v38 >= 1)
      {
        a4.i32[0] = *a3;
        v39 = *(this + 55);
        v40 = (v38 + 3) & 0xFFFFFFFC;
        v41 = xmmword_1DE095150;
        v42 = xmmword_1DE095160;
        v43 = vdupq_n_s64(v38 - 1);
        v44 = vdupq_n_s64(4uLL);
        do
        {
          v45 = vmovn_s64(vcgeq_u64(v43, v42));
          if (vuzp1_s16(v45, a4).u8[0])
          {
            v39[16] = a4.i32[0];
          }

          if (vuzp1_s16(v45, a4).i8[2])
          {
            v39[50] = a4.i32[0];
          }

          if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v43, *&v41))).i32[1])
          {
            v39[84] = a4.i32[0];
            v39[118] = a4.i32[0];
          }

          v41 = vaddq_s64(v41, v44);
          v42 = vaddq_s64(v42, v44);
          v39 += 136;
          v40 -= 4;
        }

        while (v40);
      }

      return;
    case 30:
      v50 = __exp10(*a3 * 0.1);
      *(this + 70) = v50;

      CmhBEAM2NOpt::calc_wng_beta_bound(this, v50);
      return;
    case 31:
      v48 = *a3;
      v49 = *(this + 55);
      *(v49 + 108) = *a3;
      if (*(this + 2) >= 2)
      {
        *(v49 + 244) = v48;
      }

      return;
    case 34:
      v11 = *a3;
      v12 = *(this + 55);
      *(v12 + 112) = *a3;
      if (*(this + 2) >= 2)
      {
        *(v12 + 248) = v11;
      }

      return;
    case 35:
      *(this + 71) = *a3;
      return;
    case 36:
      *(this + 72) = *a3;
      return;
    case 37:
      if (*a3 <= 1u)
      {
        *(this + 1) = *a3;
      }

      return;
    case 38:
      *(this + 30) = *a3;
      return;
    case 39:

      Beamformer_BeamNF::CmhBEAM2NOpt::setABFVector(this, a3);
      return;
    case 40:
      v30 = *(this + 6);
      if (v30 >= 1)
      {
        v31 = *(this + 2);
        if (v31 >= 1)
        {
          v31 = 1;
        }

        v32 = *(this + 55) + 136 * v31;
        v33 = *(v32 - 88);
        v34 = (*(v32 - 80) + 4);
        v35 = (v33 + 4);
        do
        {
          v36 = *a3;
          a3 = (a3 + 4);
          *v35++ = v36;
          *v34++ = v36;
          --v30;
        }

        while (v30);
      }

      return;
    case 41:
      v16 = *(this + 6);
      if (v16 >= 1)
      {
        v17 = *(this + 2);
        if (v17 >= 2)
        {
          v17 = 2;
        }

        v18 = *(this + 55) + 136 * v17;
        v19 = *(v18 - 88);
        v20 = (*(v18 - 80) + 4);
        v21 = (v19 + 4);
        do
        {
          v22 = *a3;
          a3 = (a3 + 4);
          *v21++ = v22;
          *v20++ = v22;
          --v16;
        }

        while (v16);
      }

      return;
    case 44:
      *(this + 38) = *a3;
      return;
    case 45:
      *(this + 32) = *a3;
      return;
    case 46:
      *(this + 31) = *a3;
      return;
    case 47:
      *(this + 33) = *a3;
      return;
    case 48:
      v37 = *a3;
      *(this + 34) = *a3;
      *(this + 151) = v37;
      goto LABEL_132;
    case 49:
      *(this + 60) = *a3;
      return;
    case 50:
      *(this + 65) = *a3;
      return;
    case 51:
      v13 = *a3;
LABEL_71:
      *(this + 66) = v13;
      return;
    case 52:
      v46 = *a3;
      v47 = *(this + 2);
      if (v47 >= 1)
      {
        v47 = 1;
      }

      goto LABEL_125;
    case 53:
      v46 = *a3;
      v47 = *(this + 2);
      if (v47 >= 2)
      {
        v47 = 2;
      }

LABEL_125:
      *(*(this + 55) + 136 * v47 - 28) = v46;
      return;
    case 54:
      v9 = *a3;
      v10 = *(this + 2);
      if (v10 >= 1)
      {
        v10 = 1;
      }

      goto LABEL_83;
    case 55:
      v9 = *a3;
      v10 = *(this + 2);
      if (v10 >= 2)
      {
        v10 = 2;
      }

LABEL_83:
      *(*(this + 55) + 136 * v10 - 24) = v9;
      return;
    case 56:
      v7 = ((*a3 / *(this + 3)) * *(this + 4));
      *(this + 8) = *a3;
      v8 = *(this + 6) - 1;
      if (v8 >= v7)
      {
        v8 = v7;
      }

      *(this + 64) = v8;
      return;
    case 58:
      *(this + 133) = *a3;
      goto LABEL_132;
    case 59:
      v25 = __exp10((*a3 / -20.0));
      *(this + 90) = v25;

      CmhBEAM2NOpt::loadRVSSSuppressionLimits(this);
      return;
    case 60:
      *(this + 134) = *a3;
      goto LABEL_132;
    case 61:
      *(this + 135) = *a3;
      goto LABEL_132;
    case 62:
      *(this + 136) = *a3;
      goto LABEL_132;
    case 63:
      *(this + 137) = *a3;
      goto LABEL_132;
    case 64:
      *(this + 138) = *a3;
      goto LABEL_132;
    case 65:
      *(this + 139) = *a3;
      goto LABEL_132;
    case 66:
      *(this + 140) = *a3;
      goto LABEL_132;
    case 67:
      *(this + 141) = *a3;
      goto LABEL_132;
    case 68:
      *(this + 142) = *a3;
      goto LABEL_132;
    case 69:
      *(this + 143) = *a3;
      goto LABEL_132;
    case 70:
      *(this + 144) = *a3;
      goto LABEL_132;
    case 71:
      *(this + 145) = *a3;
      goto LABEL_132;
    case 72:
      *(this + 146) = *a3;
      goto LABEL_132;
    case 73:
      *(this + 147) = *a3;
      goto LABEL_132;
    case 74:
      *(this + 148) = *a3;
      goto LABEL_132;
    case 75:
      *(this + 149) = *a3;
      goto LABEL_132;
    case 76:
      *(this + 150) = *a3;
      goto LABEL_132;
    case 77:
      v51 = 0;
      do
      {
        *(this + v51 + 532) = *(a3 + v51);
        v51 += 4;
      }

      while (v51 != 76);
LABEL_132:
      v54 = (this + 496);

      CmhMicCheck::init_check_mics(v54);
      return;
    case 78:

      CmhBEAM2NOpt::setModelFreqEQVector(this, a3);
      return;
    case 79:
      v52 = a3;
      v53 = 0;
      goto LABEL_136;
    case 80:
      v52 = a3;
      v53 = 1;
LABEL_136:

      CmhBEAM2NOpt::setModelFreqEQVector(this, v52, v53);
      break;
    case 84:
      *(this + 10) = *a3;
      break;
    case 85:
      *(this + 202) = *a3;
      break;
    case 90:
      *(this + 224) = *a3;
      break;
    case 91:
      *(this + 95) = *a3;
      break;
    case 92:
      v5 = *a3;
      *(this + 35) = *a3;
      v6 = ((v5 / *(this + 3)) * *(this + 4));
      if (*(this + 6) - 1 < v6)
      {
        v6 = *(this + 6) - 1;
      }

      *(this + 96) = v6;
      break;
    case 93:
      *(this + 97) = *a3;
      break;
    case 94:
      *(this + 98) = *a3;
      break;
    case 95:
      *(this + 36) = *a3;
      break;
    default:
      return;
  }
}

uint64_t Beamformer_BeamNF::CmhBEAM2NOpt::setModelSpatialFilterImag(Beamformer_BeamNF::CmhBEAM2NOpt *this, CmhBEAM2NOpt *a2, unsigned int a3)
{
  v4 = (this + 216);
  CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, *(this + a3 + 27), 93.75, *(this + 7), *(this + 3) / *(this + 4));
  v5 = *(this + 3);
  v6 = *(this + 4);
  v7 = ((*(this + 8) / v5) * v6);
  v8 = *(this + 5);
  if (*(this + 6) - 1 < v7)
  {
    v7 = *(this + 6) - 1;
  }

  *(this + 64) = v7;
  *(this + 9) = 1;

  return CmhMicCheck::initialize((this + 496), v5, v8, v6 / 2 + 1, this + 25, v4);
}

uint64_t Beamformer_BeamNF::CmhBEAM2NOpt::setABFVector(uint64_t this, float *a2)
{
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(this + 24);
    do
    {
      if (v4 >= 1)
      {
        v5 = *(this + 440) + 136 * v3;
        v6 = *(v5 + 48);
        v7 = (*(v5 + 56) + 4);
        v8 = (v6 + 4);
        v9 = a2;
        v10 = v4;
        do
        {
          v11 = *v9++;
          *v8++ = v11;
          *v7++ = v11;
          --v10;
        }

        while (v10);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return this;
}

void AUSMScopeDynamic::SetNumberOfElements(AUSMScopeDynamic *this, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 24))(this);
  if (a2 && (v5 = v4, v4 > a2))
  {
    v6 = atomic_load((*(this + 15) + 9897));
    if (v6)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v7 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315650;
        *&v14[4] = "SetNumberOfElements";
        *&v14[12] = 1024;
        *&v14[14] = v5;
        *&v14[18] = 1024;
        *&v14[20] = a2;
        _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "AUSMScopeDynamic::%s: Cannot reduce number of Elements (%u -> %u) after initialization.", v14, 0x18u);
      }
    }

    else
    {
      v8 = *(this + 15);
      v9 = v8 + 3456;
      v10 = v8 + 3472;
      v11 = v8 + 3696;
      *v14 = v8 + 3456;
      *&v14[8] = v8 + 3472;
      *&v14[16] = v8 + 3696;
      std::__lock_first<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(v8 + 3456, v8 + 3472, v8 + 3696);
      (*(*this + 40))(this);
      v12 = a2;
      do
      {
        v13 = (*(*this + 32))(this, v12);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        v12 = (v12 + 1);
      }

      while (v5 != v12);
      *(*(this + 3) + 12) = a2;
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v9);
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v10);
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v11);
    }
  }

  else
  {

    AUScopeDynamic::SetNumberOfElements(this, a2);
  }
}

void AUSMScopeDynamic::~AUSMScopeDynamic(ElementVector ***this)
{
  AUScopeDynamic::~AUScopeDynamic(this);

  JUMPOUT(0x1E12BD160);
}

void SVBasedProbability::SetSteeringVectorOnline(SVBasedProbability *this, const float *a2, size_t __n)
{
  memcpy(*(this + 56), a2, __n);
  SVBasedProbability::NormalizeVector(this, this + 56);
  v4 = *(this + 56) + 4 * *(this + 111);
  MEMORY[0x1E12BE810](v4, 1, v4, 1);
  CircularModelSV::SetTargetSV(*(this + 72), this + 448);
  CircularModelSV::SetTargetSV(*(this + 73), this + 448);
  v5 = *(this + 74);

  CircularModelSV::SetTargetSV(v5, this + 448);
}

void SVBasedProbability::NormalizeVector(uint64_t a1, void *a2)
{
  vDSP_vclr(*(a1 + 496), 1, *(a1 + 8));
  if ((*(a1 + 440) & 0x7FFFFFFF) != 0)
  {
    v4 = 0;
    do
    {
      v5 = *a2 + 4 * *(a1 + 8) * v4;
      MEMORY[0x1E12BE780](v5, 1, v5, 1, *(a1 + 496), 1, *(a1 + 496), 1, *(a1 + 8));
      ++v4;
    }

    while (v4 < 2 * *(a1 + 440));
  }

  v9 = *(a1 + 8);
  vvsqrtf(*(a1 + 496), *(a1 + 496), &v9);
  __B = 2.2204e-16;
  vDSP_vthr(*(a1 + 496), 1, &__B, *(a1 + 496), 1, *(a1 + 8));
  vDSP_svdiv((a1 + 404), *(a1 + 496), 1, *(a1 + 496), 1, *(a1 + 8));
  if ((*(a1 + 440) & 0x7FFFFFFF) != 0)
  {
    v6 = 0;
    do
    {
      v7 = *a2 + 4 * *(a1 + 8) * v6;
      MEMORY[0x1E12BE7F0](v7, 1, *(a1 + 496), 1, v7, 1);
      ++v6;
    }

    while (v6 < 2 * *(a1 + 440));
  }
}

void SVBasedProbability::SetSteeringVectorFromVectorOfVectors(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  if (*(a1 + 440))
  {
    v7 = 0;
    v8 = 0;
    v9 = 4 * a4;
    do
    {
      memcpy((*(a1 + 448) + 4 * (*(a1 + 8) * v8)), *(*a2 + v7), v9);
      memcpy((*(a1 + 448) + 4 * (*(a1 + 444) + *(a1 + 8) * v8++)), *(*a3 + v7), v9);
      v7 += 24;
    }

    while (v8 < *(a1 + 440));
  }

  SVBasedProbability::NormalizeVector(a1, (a1 + 448));
  v10 = *(a1 + 448) + 4 * *(a1 + 444);
  MEMORY[0x1E12BE810](v10, 1, v10, 1);
  CircularModelSV::SetTargetSV(*(a1 + 576), a1 + 448);
  CircularModelSV::SetTargetSV(*(a1 + 584), a1 + 448);
  v11 = *(a1 + 592);

  CircularModelSV::SetTargetSV(v11, a1 + 448);
}

void SVBasedProbability::NormalizeLikelihoods(SVBasedProbability *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = 0;
    v3 = *(*(this + 73) + 124);
    v4 = *(*(this + 72) + 124);
    v5 = *(this + 12);
    v6 = *(this + 18);
    v7 = *(this + 15);
    v8 = *(this + 2);
    do
    {
      v9 = *(v5 + 4 * v2);
      if (v4 >= 2)
      {
        v10 = v8;
        v11 = v4 - 1;
        v9 = *(v5 + 4 * v2);
        do
        {
          v9 = fmaxf(v9, *(v5 + 4 * v10));
          v10 += v1;
          --v11;
        }

        while (v11);
      }

      v12 = v2;
      v13 = v3;
      if (v3)
      {
        do
        {
          v9 = fmaxf(v9, *(v7 + 4 * v12));
          v12 += v1;
          --v13;
        }

        while (v13);
      }

      v14 = fmaxf(v9, *(v6 + 4 * v2));
      *(v5 + 4 * v2) = expf(*(v5 + 4 * v2) - v14);
      *(v7 + 4 * v2) = expf(*(v7 + 4 * v2) - v14);
      *(v6 + 4 * v2) = expf(*(v6 + 4 * v2) - v14);
      if (v4 >= 2)
      {
        v15 = *(v5 + 4 * v2);
        v16 = v8;
        v17 = v4 - 1;
        do
        {
          v15 = v15 + expf(*(v5 + 4 * v16) - v14);
          *(v5 + 4 * v2) = v15;
          v16 += v1;
          --v17;
        }

        while (v17);
      }

      if (v3 >= 2)
      {
        v18 = *(v7 + 4 * v2);
        v19 = v8;
        v20 = v3 - 1;
        do
        {
          v18 = v18 + expf(*(v7 + 4 * v19) - v14);
          *(v7 + 4 * v2) = v18;
          v19 += v1;
          --v20;
        }

        while (v20);
      }

      ++v2;
      ++v8;
    }

    while (v2 != v1);
  }
}

uint64_t SVBasedProbability::ProcessBufferList(SVBasedProbability *this, const AudioBufferList *a2)
{
  if (*(this + 110))
  {
    v3 = 0;
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      memcpy((*(this + 68) + 4 * (*(this + 2) * v3)), *p_mData, 4 * *(this + 2));
      v5 = *p_mData;
      p_mData += 2;
      memcpy((*(this + 68) + 4 * (*(this + 111) + *(this + 2) * v3++) + 4), &v5[4 * *(this + 2)], 4 * (*(this + 2) - 2));
    }

    while (v3 < *(this + 110));
  }

  SVBasedProbability::NormalizeVector(this, this + 68);
  v6 = *(*this + 16);

  return v6(this);
}

void SVBasedProbability::~SVBasedProbability(SVBasedProbability *this)
{
  SVBasedProbability::~SVBasedProbability(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5939A68;
  v2 = *(this + 74);
  *(this + 74) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 73);
  *(this + 73) = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 72);
  *(this + 72) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 68);
  if (v5)
  {
    *(this + 69) = v5;
    operator delete(v5);
  }

  v6 = *(this + 65);
  if (v6)
  {
    *(this + 66) = v6;
    operator delete(v6);
  }

  v7 = *(this + 62);
  if (v7)
  {
    *(this + 63) = v7;
    operator delete(v7);
  }

  v8 = *(this + 59);
  if (v8)
  {
    *(this + 60) = v8;
    operator delete(v8);
  }

  v9 = *(this + 56);
  if (v9)
  {
    *(this + 57) = v9;
    operator delete(v9);
  }

  SpatialProbabilityBase::~SpatialProbabilityBase(this);
}

float SVBasedProbability::EstimateSpatialProbabilities(SVBasedProbability *this)
{
  SpatialProbabilityBase::UpdatePriorProbabilities(this);
  SpatialProbabilityBase::UpdateShapeParameter(this);
  (*(**(this + 72) + 48))(*(this + 72), this + 544, this + 96);
  (*(**(this + 73) + 48))(*(this + 73), this + 544, this + 120);
  (*(**(this + 74) + 48))(*(this + 74), this + 544, this + 144);
  (*(*this + 96))(this);

  return SpatialProbabilityBase::UpdatePosteriorProbabilities(this);
}

uint64_t SVBasedProbability::UpdateModelsWithShapeParameter(void **a1, uint64_t a2)
{
  (*(*a1[72] + 40))(a1[72]);
  (*(*a1[73] + 40))(a1[73], a2);
  v4 = *(*a1[74] + 40);

  return v4();
}

uint64_t SVBasedProbability::UpdateModelsWithShapeParameter(SVBasedProbability *this, float a2)
{
  (*(**(this + 72) + 32))(*(this + 72));
  (*(**(this + 73) + 32))(*(this + 73), a2);
  v4 = *(**(this + 74) + 32);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

void CircularModelSVFactory::CreateModel(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        operator new();
      case 1:
        operator new();
      case 2:
        operator new();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unknown selected model!");
}

uint64_t CircularModelSV::CircularModelSV(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *a1 = &unk_1F5939B50;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  std::vector<float>::vector[abi:ne200100]((a1 + 24), (2 * a3 * a2));
  std::vector<float>::vector[abi:ne200100]((a1 + 48), *(a1 + 12));
  std::vector<float>::vector[abi:ne200100]((a1 + 72), *(a1 + 12));
  *(a1 + 96) = 1065353216;
  v6 = *(a1 + 12);
  *(a1 + 104) = v6;
  v7 = *(a1 + 8);
  *(a1 + 108) = v7;
  v8 = powf(3.1416, v7);
  v9 = v8 + v8;
  *(a1 + 112) = v8 + v8;
  v10 = tgammaf(v7);
  *(a1 + 116) = v9 / v10;
  *(a1 + 120) = logf(v10);
  *(a1 + 124) = 1;
  std::vector<float>::vector[abi:ne200100]((a1 + 128), (2 * v6));
  std::vector<float>::vector[abi:ne200100]((a1 + 152), *(a1 + 12));
  CircularModelSV::SetTargetSV(a1, a4);
  return a1;
}

void sub_1DE05D754(_Unwind_Exception *exception_object)
{
  v3 = v1[16];
  if (v3)
  {
    v1[17] = v3;
    operator delete(v3);
  }

  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v5 = v1[6];
  if (v5)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  v6 = v1[3];
  if (v6)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void SVBasedProbability::SVBasedProbability(uint64_t a1, int a2, unsigned int a3, int a4, int a5, int a6, int a7, int a8, float a9, float a10, float a11, float a12, float a13, float a14)
{
  v18 = SpatialProbabilityBase::SpatialProbabilityBase(a1, a3, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  *v18 = &unk_1F5939A68;
  *(v18 + 440) = a2;
  v19 = *(v18 + 8) * a2;
  *(v18 + 444) = v19;
  LODWORD(v23) = 0;
  std::vector<float>::vector[abi:ne200100]((v18 + 448), (2 * v19));
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v20 = *(a1 + 8);
  LODWORD(v23) = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 496), v20);
  v21 = *(a1 + 8);
  LODWORD(v23) = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 520), v21);
  v22 = (2 * *(a1 + 444));
  LODWORD(v23) = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 544), v22);
  *(a1 + 568) = a4;
  *(a1 + 572) = a5;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  CircularModelSVFactory::CreateModel(&v23, a4);
}

void sub_1DE05D9E0(_Unwind_Exception *a1)
{
  v6 = *(v1 + 74);
  *(v1 + 74) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(v1 + 73);
  *(v1 + 73) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *v4;
  *v4 = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v1 + 69) = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    *(v1 + 66) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 62);
  if (v11)
  {
    *(v1 + 63) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 59);
  if (v12)
  {
    *(v1 + 60) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 56);
  if (v13)
  {
    *(v1 + 57) = v13;
    operator delete(v13);
  }

  SpatialProbabilityBase::~SpatialProbabilityBase(v1);
  _Unwind_Resume(a1);
}

float BeamformerFD::CalculateEnergyInFullBand(uint64_t a1, const float **a2)
{
  __C = 0.0;
  vDSP_svesq(*a2, 1, &__C, (2 * *(a1 + 32)));
  return log10(__C + 1.0e-10) * 10.0;
}

_DWORD *BeamformerFD::AllocateBlockSizeDependentVectors(BeamformerFD *this, int16x4_t a2)
{
  if (*(this + 3))
  {
    v3 = 0;
    v4 = (this + 5160);
    do
    {
      v5 = (2 * *(this + 8));
      v36 = 0;
      std::vector<float>::assign(v4, v5, &v36, a2);
      ++v3;
      v6 = *(this + 3);
      v4 += 3;
    }

    while (v3 < v6);
    if (v6)
    {
      v7 = 0;
      v8 = (this + 12072);
      do
      {
        v9 = (2 * *(this + 8));
        v36 = 0;
        std::vector<float>::assign(v8, v9, &v36, a2);
        ++v7;
        v8 += 3;
      }

      while (v7 < *(this + 3));
    }
  }

  v10 = (2 * *(this + 8));
  v36 = 0;
  std::vector<float>::assign(this + 2373, v10, &v36, a2);
  v11 = (2 * *(this + 8));
  v36 = 0;
  std::vector<float>::assign(this + 2376, v11, &v36, v12);
  v13 = (2 * *(this + 8));
  v36 = 0;
  std::vector<float>::assign(this + 2397, v13, &v36, v14);
  if (*(this + 3))
  {
    v16 = 0;
    v17 = this + 130200;
    do
    {
      if (*(this + 2))
      {
        v18 = 0;
        v19 = v17;
        do
        {
          v20 = *(this + 8);
          v36 = 0;
          std::vector<float>::assign(v19 - 13824, v20, &v36, v15);
          v21 = *(this + 8);
          v36 = 0;
          std::vector<float>::assign(v19, v21, &v36, v22);
          ++v18;
          v19 += 3;
        }

        while (v18 < *(this + 2));
      }

      v23 = (2 * *(this + 8));
      v36 = 0;
      std::vector<float>::assign(this + 3 * v16++ + 30099, v23, &v36, v15);
      v17 += 384;
    }

    while (v16 < *(this + 3));
  }

  v24 = *(this + 8);
  v36 = 0;
  std::vector<float>::assign(this + 106995, v24, &v36, v15);
  v25 = *(this + 8);
  v36 = 0;
  std::vector<float>::assign(this + 2385, v25, &v36, v26);
  v27 = (2 * *(this + 8));
  v36 = 0;
  std::vector<float>::assign(this + 2382, v27, &v36, v28);
  v29 = (*(this + 8) + 1);
  v36 = 0;
  std::vector<float>::assign(this + 2388, v29, &v36, v30);
  v31 = (*(this + 8) + 1);
  v36 = 0;
  std::vector<float>::assign(this + 2391, v31, &v36, v32);
  v33 = *(this + 8);
  v36 = 0;
  return std::vector<float>::assign(this + 2379, v33, &v36, v34);
}

void BeamformerFD::SelectBeam(float **this)
{
  v26 = 0.0;
  v24 = 0;
  __I = 0;
  vDSP_vclr(this[2394], 1, this[2395] - this[2394]);
  if (*(this + 3))
  {
    v2 = 0;
    v3 = (this + 645);
    v5 = *(this + 8);
    v4 = *(this + 9);
    v6 = *(this + 10);
    v7 = (this + 69);
    do
    {
      __C = 0;
      v8 = *v3;
      v3 += 3;
      v9 = *(v8 + 4 * v5) * *(v8 + 4 * v5);
      v10 = (v8 + 4 * v4);
      v11 = &v10[v5];
      v12 = *(this + 11) - (v6 == v5);
      vDSP_svesq(v10, 1, &__C + 1, v12);
      vDSP_svesq(v11, 1, &__C, v12);
      v13 = *(&__C + 1) + *&__C;
      v4 = *(this + 9);
      v6 = *(this + 10);
      v5 = *(this + 8);
      v14 = v9 + (*(&__C + 1) + *&__C);
      if (v6 != v5)
      {
        v14 = *(&__C + 1) + *&__C;
        v13 = v13 - v9;
      }

      if (v4)
      {
        v13 = v14;
      }

      v15 = log10(v13 + 1.0e-10) * 10.0;
      v16 = (*(this + 12) * *&v7[4 * v2]) + (1.0 - *(this + 12)) * v15;
      *&v7[4 * v2] = v16;
      v17 = __exp10f(fmaxf(fminf(v16, 100.0), -100.0) / 10.0);
      v18 = this[2394];
      v18[v2++] = v17;
      v19 = *(this + 3);
    }

    while (v2 < v19);
  }

  else
  {
    v19 = 0;
    v18 = this[2394];
  }

  vDSP_sve(v18, 1, &v24, v19);
  vDSP_vsdiv(this[2394], 1, &v24, this[2394], 1, *(this + 3));
  v20 = *(this + 20);
  v21 = (*(this + 21) - v20 + 1);
  v22 = this + v20;
  if (this[13])
  {
    vDSP_meanv(v22 + 138, 1, &v24 + 1, (*(this + 21) - v20 + 1));
    *(&v24 + 1) = -*(&v24 + 1);
    MEMORY[0x1E12BE8A0](v22 + 138, 1, &v24 + 4, v22 + 138, 1, v21);
  }

  vDSP_maxvi(v22 + 138, 1, &v26, &__I, v21);
  if (v26 <= *(this + 25))
  {
    v23 = *(this + 28);
  }

  else
  {
    v23 = v20 + __I;
  }

  *(this + 27) = v23;
}

uint64_t BeamformerFD::ECMixSwitch(BeamformerFD *this)
{
  v26[1] = *MEMORY[0x1E69E9840];
  result = MEMORY[0x1EEE9AC00]();
  v5 = (v26 - ((v4 + 15) & 0x7FFFFFFF0));
  if (v3)
  {
    v6 = *(result + 108);
    v7 = (*(result + 32) * 1000.0) / (*(result + 24) * 0.5);
    LODWORD(v2) = vcvtas_u32_f32(v7);
    v8 = *(result + 24 * v6 + 247704);
    v9 = (result + 384 * v6 + 130200);
    v10 = 2.2204e-16;
    v11 = v8;
    v12 = v5;
    v13 = v3;
    do
    {
      if (*v11 == 1.0)
      {
        v14 = *(*(v9 - 13824) + 4 * v2);
        v15 = (*(*v9 + 4 * v2) * *(*v9 + 4 * v2)) + (v14 * v14);
      }

      else
      {
        v15 = 0.0;
      }

      *v12++ = v15;
      v10 = v10 + v15;
      v9 += 3;
      ++v11;
      --v13;
    }

    while (v13);
    v16 = v5;
    v17 = v3;
    v18 = 1.0 / v10;
    do
    {
      *v16 = v18 * *v16;
      ++v16;
      --v17;
    }

    while (v17);
    v19 = (result + 240);
    v20 = 0;
    v21 = 1.0;
    v22 = 0;
    do
    {
      if (*v8 == 1.0)
      {
        v21 = v21 * *(v19 - 1);
      }

      v23 = *v5++;
      v24 = v23;
      v20 = vmla_n_f32(v20, *(v19 - 12), v23);
      v25 = *v19;
      v19 = (v19 + 20);
      v22 = vmla_n_f32(v22, v25, v24);
      ++v8;
      --v3;
    }

    while (v3);
  }

  else
  {
    v20 = 0;
    v21 = 1.0;
    v22 = 0;
  }

  *(result + 228) = v20;
  *(result + 240) = v22;
  *(result + 236) = v21;
  return result;
}

float BeamformerFD::MakeLSDDBeam(uint64_t a1, unsigned int *a2, float **a3, float **a4, uint64_t a5)
{
  v9 = a1;
  v56[0] = 629145252;
  if ((*(*a1 + 64))(a1))
  {
    vDSP_vclr(*a3, 1, (2 * *(v9 + 32)));
  }

  else
  {
    (*(*v9 + 80))(v9, a2, a3, a5, 0);
  }

  v10 = *(v9 + 32);
  v42 = a5;
  v49 = a4;
  if ((*(*v9 + 64))(v9))
  {
    v11 = *(v9 + 40);
    vDSP_vclr(*a4, 1, v11);
    vDSP_vclr(&(*a4)[*(v9 + 32)], 1, v11);
    vDSP_vclr(*(v9 + 19056), 1, v11);
    vDSP_vclr((*(v9 + 19056) + 4 * *(v9 + 32)), 1, v11);
    vDSP_vclr(*(v9 + 855984), 1, v11);
    vDSP_vclr((*(v9 + 855984) + 4 * *(v9 + 32)), 1, v11);
    v43 = v11;
    vDSP_vclr(*(v9 + 19128), 1, v11);
    v12 = *(v9 + 32);
    *(*(v9 + 19128) + 4 * v12) = 0;
  }

  else
  {
    v43 = v10;
    vDSP_vclr(*a4, 1, (2 * *(v9 + 32)));
    vDSP_vclr(*(v9 + 19056), 1, (2 * *(v9 + 32)));
    vDSP_vclr(*(v9 + 855984), 1, (2 * *(v9 + 32)));
    vDSP_vclr(*(v9 + 19128), 1, (*(v9 + 32) + 1));
    v12 = *(v9 + 32);
  }

  v13 = *(v9 + 855984);
  v14 = &v13[v12];
  __C.realp = v13;
  __C.imagp = v14;
  __D.realp = v13 + 1;
  __D.imagp = v14 + 1;
  v15 = *a2;
  if (v15)
  {
    v16 = 0;
    v17 = (v9 + 384 * v42 + 365208);
    v18 = 4;
    do
    {
      if (*(*(v9 + 24 * v42 + 247704) + 4 * v16) == 1.0)
      {
        v19 = *&a2[v18];
        v20 = &v19[*(v9 + 32)];
        __B.realp = v19 + 1;
        __B.imagp = v20 + 1;
        v21 = *(v17 - 13824);
        v22 = *v17;
        v23 = *v21;
        __A.realp = v21 + 1;
        *v13 = *v13 + (v23 * *v19);
        v24 = *v22;
        __A.imagp = v22 + 1;
        *v14 = *v14 + (v24 * *v20);
        vDSP_zvcma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, v43 - 1);
        v15 = *a2;
      }

      ++v16;
      v17 += 3;
      v18 += 4;
    }

    while (v16 < v15);
  }

  v41 = v43;
  vDSP_zvneg(&__C, 1, &__C, 1, v43);
  v25 = *(v9 + 19056);
  v48 = *(v9 + 32);
  v46 = v25;
  __B.realp = v25 + 1;
  __B.imagp = &v25[v48 + 1];
  v47 = *v49;
  v26 = *a2;
  if (v26)
  {
    v27 = 0;
    v50 = v9 + 24 * v42;
    __N = v43 - 1;
    v45 = v9;
    v28 = (v9 + 384 * v42 + 365208);
    v29 = 4;
    do
    {
      if (*(*(v50 + 247704) + 4 * v27) == 1.0)
      {
        v30 = a2;
        v31 = *&a2[v29];
        v32 = &v31[*(v9 + 32)];
        __A.realp = v31 + 1;
        __A.imagp = v32 + 1;
        v33 = *(v28 - 13824);
        v34 = *v28;
        v35 = *v28 + 1;
        v51.realp = v33 + 1;
        v51.imagp = v35;
        *v47 = *v47 + (*v31 * *v31);
        v47[v48] = v47[v48] + (*v32 * *v32);
        vDSP_zvmgsa(&__A, 1, v47 + 1, 1, v47 + 1, 1, __N);
        v36 = *v31;
        a2 = v30;
        v37 = *v33;
        v9 = v45;
        *v46 = v36 + (*__C.realp * v37);
        v46[v48] = *v32 + (*__C.imagp * *v34);
        vDSP_zvma(&__D, 1, &v51, 1, &__A, 1, &__B, 1, __N);
        v38 = *(v45 + 19128);
        *v38 = *v38 + (*v46 * *v46);
        *(v38 + 4 * *(v45 + 32)) = *(v38 + 4 * *(v45 + 32)) + (v46[v48] * v46[v48]);
        vDSP_zvmgsa(&__B, 1, (v38 + 4), 1, (v38 + 4), 1, __N);
        v26 = *v30;
      }

      ++v27;
      v28 += 3;
      v29 += 4;
    }

    while (v27 < v26);
  }

  MEMORY[0x1E12BE8A0](*(v9 + 19128), 1, v56, *(v9 + 19128), 1, v41);
  v39 = *(v9 + 19128);
  v39[*(v9 + 32)] = v39[*(v9 + 32)] + 2.2204e-16;
  vDSP_vdiv(v39, 1, v47, 1, v47, 1, v41);
  result = v47[v48] / *(*(v9 + 19128) + 4 * *(v9 + 32));
  v47[v48] = result;
  return result;
}

void BeamformerFD::MakePHATBeam(uint64_t a1, unsigned int *a2, float **a3, float **a4, unsigned int a5)
{
  v37 = 2.2204e-16;
  v36 = sqrtf(fmaxf(*(a1 + 44), 0.0)) * *(a1 + 8);
  LODWORD(v10) = *(a1 + 32);
  if ((*(*a1 + 64))(a1))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 32) - 1;
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    vDSP_vclr(*a3, 1, *(a1 + 40));
    vDSP_vclr(&(*a3)[*(a1 + 32) + 1], 1, v12);
    vDSP_vclr(*a4, 1, v10);
    v13 = &(*a4)[*(a1 + 32) + 1];
    v14 = v12;
  }

  else
  {
    vDSP_vclr(*a3, 1, (2 * *(a1 + 32)));
    v13 = *a4;
    v14 = (2 * *(a1 + 32));
  }

  vDSP_vclr(v13, 1, v14);
  v15 = *(a1 + 32);
  __C.realp = *(a1 + 19056);
  __C.imagp = &__C.realp[v15];
  v16 = &(*a3)[v15];
  v34.realp = *a3;
  v34.imagp = v16;
  v17 = &(*a4)[v15];
  v33.realp = *a4;
  v33.imagp = v17;
  v18 = *a2;
  if (v18)
  {
    v19 = 0;
    v20 = a1 + 24 * a5;
    v21 = (a1 + 384 * a5 + 130200);
    v22 = 4;
    do
    {
      if (*(*(v20 + 247704) + 4 * v19) == 1.0)
      {
        v23 = *v21;
        __A.realp = *(v21 - 13824);
        __A.imagp = v23;
        v24 = (*&a2[v22] + 4 * *(a1 + 32));
        __B.realp = *&a2[v22];
        __B.imagp = v24;
        vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v10, 1);
        imagp = __A.imagp;
        v26 = __B.imagp;
        v27 = __C.imagp;
        *__C.realp = *__A.realp * *__B.realp;
        *v27 = *imagp * *v26;
        vDSP_zvadd(&v34, 1, &__C, 1, &v34, 1, v10);
        vDSP_zvabs(&__C, 1, *(a1 + 855960), 1, v10);
        MEMORY[0x1E12BE910](*(a1 + 855960), 1, &v36, &v37, *(a1 + 855960), 1, v10);
        vDSP_zrvdiv(&__C, 1, *(a1 + 855960), 1, &__C, 1, v10);
        v28 = __A.imagp;
        v29 = __B.imagp;
        v30 = __C.imagp;
        *__C.realp = (*__A.realp * *__B.realp) / (v37 + (v36 * fabsf(*__A.realp * *__B.realp)));
        *v30 = (*v28 * *v29) / (v37 + (v36 * fabsf(*v28 * *v29)));
        vDSP_zvadd(&v33, 1, &__C, 1, &v33, 1, v10);
        v18 = *a2;
      }

      ++v19;
      v22 += 4;
      v21 += 3;
    }

    while (v19 < v18);
  }
}

void *BeamformerFD::ApplyEQ(uint64_t a1, const void **a2, void **a3, uint64_t a4, int a5)
{
  if (a5 == 1)
  {
    JUMPOUT(0x1E12BE7F0);
  }

  return memcpy(*a3, *a2, 4 * (2 * *(a1 + 32)));
}

uint64_t BeamformerFD::MakeABeamWithCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  result = (*(*a1 + 80))(a1, a2, a3, a4, 0);
  if (a5 != v6)
  {
    (*(*a1 + 80))(a1, a2, a1 + 19176, a5, 0);
    v11 = *(*a1 + 88);

    return v11(a1, a1 + 19176, a3);
  }

  return result;
}

void BeamformerFD::CrossfadeBeams(uint64_t a1, const float **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  if (v5 - *a2 == *(a3 + 8) - v6)
  {
    if (v4 == v5)
    {
      return;
    }

    v8 = v6;
    v9 = *a2;
    while (*v9 == *v8)
    {
      ++v9;
      ++v8;
      if (v9 == v5)
      {
        return;
      }
    }
  }

  __C = 0.5;
  vDSP_vasm(v4, 1, v6, 1, &__C, v6, 1, (2 * *(a1 + 32)));
}

void BeamformerFD::MakeABeam(uint64_t a1, unsigned int *a2, float **a3, unsigned int a4)
{
  vDSP_vclr(*a3, 1, (2 * *(a1 + 32)));
  v8 = *(a1 + 32);
  v9 = (*(a1 + 19056) + 4 * v8);
  __C.realp = *(a1 + 19056);
  __C.imagp = v9;
  v10 = &(*a3)[v8];
  v23.realp = *a3;
  v23.imagp = v10;
  v11 = *a2;
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 24 * a4;
    v14 = (a1 + 384 * a4 + 130200);
    v15 = 4;
    do
    {
      if (*(*(v13 + 247704) + 4 * v12) == 1.0)
      {
        v16 = *v14;
        __A.realp = *(v14 - 13824);
        __A.imagp = v16;
        v17 = *(a1 + 32);
        v21.realp = *&a2[v15];
        v21.imagp = &v21.realp[v17];
        vDSP_zvmul(&__A, 1, &v21, 1, &__C, 1, v17, 1);
        imagp = __A.imagp;
        v19 = v21.imagp;
        v20 = __C.imagp;
        *__C.realp = *__A.realp * *v21.realp;
        *v20 = *imagp * *v19;
        vDSP_zvadd(&v23, 1, &__C, 1, &v23, 1, *(a1 + 32));
        v11 = *a2;
      }

      ++v12;
      v15 += 4;
      v14 += 3;
    }

    while (v12 < v11);
  }
}

uint64_t BeamformerFD::BorrowSubbandDOA(BeamformerFD *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(this + 107002);
  if (v1)
  {
    return v1 + 56;
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
  }

  if (!AUBeamItFDLogScope(void)::scope)
  {
    v3 = MEMORY[0x1E69E9C10];
LABEL_9:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "BeamformerFD.cpp";
      v6 = 1024;
      v7 = 871;
      _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d BorrowSubbandDOA failed, subband DOA calculator is not initialized.", &v4, 0x12u);
    }

    return 0;
  }

  v3 = *AUBeamItFDLogScope(void)::scope;
  if (*AUBeamItFDLogScope(void)::scope)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t BeamformerFD::SetSubbandDOACalcuationEnabled(BeamformerFD *this, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(this + 16) & 1) == 0)
  {
    result = 0;
    *(this + 856008) = a2;
    return result;
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
  }

  if (!AUBeamItFDLogScope(void)::scope)
  {
    v2 = MEMORY[0x1E69E9C10];
LABEL_9:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "BeamformerFD.cpp";
      v7 = 1024;
      v8 = 884;
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d SetSubbandDOACalcuationEnabled failed, subband DOA calculator is already initialized and this value cannot be changed.", &v5, 0x12u);
    }

    return 4294956447;
  }

  v2 = *AUBeamItFDLogScope(void)::scope;
  if (*AUBeamItFDLogScope(void)::scope)
  {
    goto LABEL_9;
  }

  return 4294956447;
}

void BeamformerFD::CalculateSubbandDOA(BeamformerFD *this)
{
  if (*(this + 856008) != 1)
  {
    return;
  }

  v1 = *(this + 107002);
  if (!v1)
  {
    return;
  }

  v3 = *(this + 104);
  v4 = *(this + 12);
  v5 = *(this + 25);
  v6 = *(this + 20);
  v7 = *(this + 21);
  v8 = *(this + 10);
  v42 = v4;
  v9 = v1[1];
  if (v9 <= v6)
  {
    __assert_rtn("CalculateSubbandDOA", "SubbandDOACalculator.cpp", 23, "beamsFrom < mNumBeams");
  }

  if (v9 <= v7)
  {
    __assert_rtn("CalculateSubbandDOA", "SubbandDOACalculator.cpp", 24, "beamsTo < mNumBeams");
  }

  v10 = this + 5160;
  if (v4 > 0.0 || (v3 & 1) != 0)
  {
    if (v3)
    {
      bzero(*(v1 + 17), *(v1 + 18) - *(v1 + 17));
    }

    if (v7 < v6)
    {
LABEL_23:
      if (v3)
      {
        v25 = -1.0 / (v7 - v6 + 1);
        *&__A.realp = v25;
        MEMORY[0x1E12BE940](*(v1 + 17), 1, &__A, *(v1 + 17), 1, *v1 + 1);
        if (v7 >= v6)
        {
          v26 = v6;
          do
          {
            MEMORY[0x1E12BE5D0](*(*(v1 + 4) + 24 * v26), 1, *(v1 + 17), 1, *(*(v1 + 4) + 24 * v26), 1, *v1 + 1);
            ++v26;
          }

          while (v26 <= v7);
        }
      }

      goto LABEL_27;
    }

    v18 = v6;
    while (1)
    {
      v19 = v18;
      v20 = 24 * v18;
      MEMORY[0x1E12BE990](*&v10[v20], 1, *(v1 + 11), 1, 2 * *v1);
      MEMORY[0x1E12BE5D0](*(v1 + 11) + 4, 1, *(v1 + 11) + 4 + 4 * *v1, 1, *(v1 + 14) + 4, 1, *v1 - 1);
      v21 = *&v10[v20];
      v22 = *(v1 + 14);
      *v22 = *v21 * *v21;
      v22[*v1] = v21[*v1] * v21[*v1];
      LODWORD(__A.realp) = 786163455;
      vDSP_vthr(v22, 1, &__A, v22, 1, (*(v1 + 15) - v22) >> 2);
      __B = 1.0;
      v23 = *(v1 + 14);
      if (v42 > 0.0)
      {
        break;
      }

      v24 = *(v1 + 4) + 24 * v19;
      vDSP_vdbcon(v23, 1, &__B, *v24, 1, (*(v24 + 8) - *v24) >> 2, 0);
      if (v3)
      {
        goto LABEL_21;
      }

LABEL_22:
      v18 = v19 + 1;
      if (v19 + 1 > v7)
      {
        goto LABEL_23;
      }
    }

    vDSP_vdbcon(v23, 1, &__B, *(v1 + 14), 1, (*(v1 + 15) - v23) >> 2, 0);
    v40 = 1.0 - v42;
    MEMORY[0x1E12BE930](*(*(v1 + 4) + 24 * v19), 1, &v42, *(v1 + 14), 1, &v40, *(*(v1 + 4) + 24 * v19), 1, *v1 + 1);
    if (!v3)
    {
      goto LABEL_22;
    }

LABEL_21:
    MEMORY[0x1E12BE5D0](*(v1 + 17), 1, *(*(v1 + 4) + 24 * v19), 1, *(v1 + 17), 1, *v1 + 1);
    goto LABEL_22;
  }

  if (v7 >= v6)
  {
    v11 = *v1;
    v12 = v6;
    do
    {
      v13 = v12;
      v14 = 3 * v12;
      v15 = *&v10[24 * v12];
      v16 = *(*(v1 + 4) + 8 * v14);
      *v16 = *v15 * *v15;
      __A.realp = v15 + 1;
      __A.imagp = &v15[v11 + 1];
      vDSP_zvmags(&__A, 1, v16 + 1, 1, (v8 - 1));
      if (v8 == v11)
      {
        v17 = *(*&v10[8 * v14] + 4 * v11);
        *(*(*(v1 + 4) + 24 * v13) + 4 * v11) = v17 * v17;
      }

      v12 = v13 + 1;
    }

    while (v13 + 1 <= v7);
  }

LABEL_27:
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (v7 >= v6)
      {
        v28 = *(v1 + 4);
        v29 = v6;
        v30 = v5;
        do
        {
          v31 = *(*(v28 + 24 * v29) + 4 * i);
          if (v31 > v30)
          {
            *(*(v1 + 1) + 4 * i) = v29;
            v30 = v31;
          }

          ++v29;
        }

        while (v29 <= v7);
      }
    }
  }

  v32 = *(v1 + 1);
  if (*(v1 + 2) != v32)
  {
    v33 = 0;
    v34 = this + 2856;
    v35 = this + 4008;
    do
    {
      if (v33 >= v8)
      {
        v39 = (v1 + 14);
        v37 = 0.0;
        v38 = 0.0;
      }

      else
      {
        v36 = *(v32 + 4 * v33);
        v37 = *&v34[4 * v36];
        v38 = *&v35[4 * v36];
        v39 = (v1 + 14);
      }

      SubbandDOA::Set(v39, v33++, v37, v38);
      v32 = *(v1 + 1);
    }

    while (v33 < (*(v1 + 2) - v32) >> 2);
  }
}

uint64_t BeamformerFD::SetProfile(BeamformerFD *this, CFDictionaryRef theDict)
{
  v101 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"SampleRate");
  if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v73 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerFD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 157;
            _os_log_impl(&dword_1DDB85000, v73, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve sample rate.\n", buf, 0x12u);
          }
        }
      }
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Failed to retrieve sample rate from input dictionary.", -1);
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    if (*(AUBeamItFDLogScope(void)::scope + 8))
    {
      v5 = *AUBeamItFDLogScope(void)::scope;
      if (*AUBeamItFDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerFD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 155;
          *&buf[18] = 1024;
          *&buf[20] = valuePtr;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved sample rate (%iHz).\n", buf, 0x18u);
        }
      }
    }
  }

  v96 = 0;
  v6 = CFDictionaryGetValue(theDict, @"nMicsUsed");
  if (!CFNumberGetValue(v6, kCFNumberIntType, &v96))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v75 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerFD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 171;
            _os_log_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve number of mics used.\n", buf, 0x12u);
          }
        }
      }
    }

    v76 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v76, "Failed to retrieve number of mics used from input dictionary.", -1);
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    if (*(AUBeamItFDLogScope(void)::scope + 8))
    {
      v7 = *AUBeamItFDLogScope(void)::scope;
      if (*AUBeamItFDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerFD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 169;
          *&buf[18] = 1024;
          *&buf[20] = v96;
          _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved number of mics used (%i).\n", buf, 0x18u);
        }
      }
    }
  }

  *(this + 2) = v96;
  v95 = 0;
  v8 = CFDictionaryGetValue(theDict, @"nBeams");
  if (!CFNumberGetValue(v8, kCFNumberIntType, &v95))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v77 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerFD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 186;
            _os_log_impl(&dword_1DDB85000, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve number of beams.\n", buf, 0x12u);
          }
        }
      }
    }

    v78 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v78, "Failed to retrieve number of beams from input dictionary.", -1);
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    if (*(AUBeamItFDLogScope(void)::scope + 8))
    {
      v9 = *AUBeamItFDLogScope(void)::scope;
      if (*AUBeamItFDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerFD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 184;
          *&buf[18] = 1024;
          *&buf[20] = v95;
          _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved number of beams (%i).\n", buf, 0x18u);
        }
      }
    }
  }

  v10 = v95;
  *(this + 3) = v95;
  if (v10 > 0x120)
  {
    v79 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v79, "Too many beams.", -1);
  }

  v94 = 0;
  v11 = CFDictionaryGetValue(theDict, @"nCoefficients");
  if (!CFNumberGetValue(v11, kCFNumberIntType, &v94))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v80 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerFD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 209;
            _os_log_impl(&dword_1DDB85000, v80, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve number of coefficients.\n", buf, 0x12u);
          }
        }
      }
    }

    v81 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v81, "Failed to retrieve number of coefficients from input dictionary.", -1);
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    if (*(AUBeamItFDLogScope(void)::scope + 8))
    {
      v12 = *AUBeamItFDLogScope(void)::scope;
      if (*AUBeamItFDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerFD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 207;
          *&buf[18] = 1024;
          *&buf[20] = v94;
          _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved number of coefficients (%i).\n", buf, 0x18u);
        }
      }
    }
  }

  *(this + 4900) = v94;
  if (*(this + 3))
  {
    v13 = 0;
    v82 = this + 844440;
    v84 = (this + 660120);
    v85 = (this + 475800);
    while (1)
    {
      v86 = v13;
      std::to_string(buf, v13);
      v14 = std::string::insert(buf, 0, "Beam", 4uLL);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v93 = v14->__r_.__value_.__r.__words[2];
      *v92 = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v16 = v93 >= 0 ? v92 : v92[0];
      v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
      v18 = CFDictionaryGetValue(theDict, v17);
      if (!v18)
      {
        break;
      }

      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        if (*(AUBeamItFDLogScope(void)::scope + 8))
        {
          v19 = *AUBeamItFDLogScope(void)::scope;
          if (*AUBeamItFDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              v20 = v92;
              if (v93 < 0)
              {
                v20 = v92[0];
              }

              *buf = 136315650;
              *&buf[4] = "BeamformerFD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 234;
              *&buf[18] = 2080;
              *&buf[20] = v20;
              _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary: %s\n", buf, 0x1Cu);
            }
          }
        }
      }

      CFRelease(v17);
      v21 = CFDictionaryGetValue(v18, @"Description");
      if (!v21)
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          if (*(AUBeamItFDLogScope(void)::scope + 8))
          {
            v71 = *AUBeamItFDLogScope(void)::scope;
            if (*AUBeamItFDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerFD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 243;
                _os_log_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve the beam description.\n", buf, 0x12u);
              }
            }
          }
        }

        v72 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v72, "Failed to retrieve the beam description from input dictionary.", -1);
      }

      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        if (*(AUBeamItFDLogScope(void)::scope + 8))
        {
          v22 = *AUBeamItFDLogScope(void)::scope;
          if (*AUBeamItFDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
              *buf = 136315906;
              *&buf[4] = "BeamformerFD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 241;
              *&buf[18] = 2080;
              *&buf[20] = CStringPtr;
              v99 = 1024;
              v100 = v86;
              _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved the description (%s) for Beam %d.\n", buf, 0x22u);
            }
          }
        }
      }

      v91 = 0.0;
      v24 = CFDictionaryGetValue(v18, @"Distance");
      if (!CFNumberGetValue(v24, kCFNumberFloat32Type, &v91))
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          if (*(AUBeamItFDLogScope(void)::scope + 8))
          {
            v69 = *AUBeamItFDLogScope(void)::scope;
            if (*AUBeamItFDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerFD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 256;
                _os_log_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve beam distance.\n", buf, 0x12u);
              }
            }
          }
        }

        v70 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v70, "Failed to retrieve beam distance from input dictionary.", -1);
      }

      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        if (*(AUBeamItFDLogScope(void)::scope + 8))
        {
          v25 = *AUBeamItFDLogScope(void)::scope;
          if (*AUBeamItFDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "BeamformerFD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 254;
              *&buf[18] = 2048;
              *&buf[20] = v91;
              _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved beam distance (%0.2f).\n", buf, 0x1Cu);
            }
          }
        }
      }

      *(this + v86 + 426) = v91;
      v90 = 0.0;
      v26 = CFDictionaryGetValue(v18, @"Azimuth");
      if (!CFNumberGetValue(v26, kCFNumberFloat64Type, &v90))
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          if (*(AUBeamItFDLogScope(void)::scope + 8))
          {
            v67 = *AUBeamItFDLogScope(void)::scope;
            if (*AUBeamItFDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerFD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 270;
                _os_log_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve beam azimuth.\n", buf, 0x12u);
              }
            }
          }
        }

        v68 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v68, "Failed to retrieve beam azimuth from input dictionary.", -1);
      }

      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        if (*(AUBeamItFDLogScope(void)::scope + 8))
        {
          v27 = *AUBeamItFDLogScope(void)::scope;
          if (*AUBeamItFDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              v28 = v90;
              *buf = 136315650;
              *&buf[4] = "BeamformerFD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 268;
              *&buf[18] = 2048;
              *&buf[20] = v28;
              _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved beam azimuth (%0.2f).\n", buf, 0x1Cu);
            }
          }
        }
      }

      v29 = v90;
      *(this + v86 + 714) = v29;
      v89 = 0.0;
      v30 = CFDictionaryGetValue(v18, @"Elevation");
      if (!CFNumberGetValue(v30, kCFNumberFloat64Type, &v89))
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          if (*(AUBeamItFDLogScope(void)::scope + 8))
          {
            v65 = *AUBeamItFDLogScope(void)::scope;
            if (*AUBeamItFDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerFD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 284;
                _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve beam elevation.\n", buf, 0x12u);
              }
            }
          }
        }

        v66 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v66, "Failed to retrieve beam elevation from input dictionary.", -1);
      }

      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        if (*(AUBeamItFDLogScope(void)::scope + 8))
        {
          v31 = *AUBeamItFDLogScope(void)::scope;
          if (*AUBeamItFDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              v32 = v89;
              *buf = 136315650;
              *&buf[4] = "BeamformerFD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 282;
              *&buf[18] = 2048;
              *&buf[20] = v32;
              _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved beam elevation (%0.2f).\n", buf, 0x1Cu);
            }
          }
        }
      }

      v33 = v89;
      *(this + v86 + 1002) = v33;
      BeamformerBase::ReadVectorFromDictionary(buf, v18, @"NonZeroMics");
      v34 = this + 24 * v86 + 247704;
      v35 = *v34;
      if (*v34)
      {
        *(v34 + 1) = v35;
        operator delete(v35);
        *v34 = 0;
        *(v34 + 1) = 0;
        *(v34 + 2) = 0;
      }

      *v34 = *buf;
      *(v34 + 2) = *&buf[16];
      BeamformerBase::ReadVectorFromDictionary(&v88, v18, @"EQSelection");
      v36 = &v82[40 * v86];
      LODWORD(v2) = valuePtr;
      v37 = *(this + 4900);
      if (v36 != &v88)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v82[40 * v86], v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_, (v88.__r_.__value_.__l.__size_ - v88.__r_.__value_.__r.__words[0]) >> 2);
      }

      *(v36 + 3) = v2;
      *(v36 + 8) = 2 * v37 - 2;
      v38 = CFDictionaryGetValue(v18, @"RealCoefficients");
      if (!v38)
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          if (*(AUBeamItFDLogScope(void)::scope + 8))
          {
            v63 = *AUBeamItFDLogScope(void)::scope;
            if (*AUBeamItFDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "Missing dictionary RealCoefficients");
                v64 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                *buf = 136315650;
                *&buf[4] = "BeamformerFD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 305;
                *&buf[18] = 2080;
                *&buf[20] = v64;
                _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }

        if (v88.__r_.__value_.__r.__words[0])
        {
          v88.__r_.__value_.__l.__size_ = v88.__r_.__value_.__r.__words[0];
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        goto LABEL_178;
      }

      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        if (*(AUBeamItFDLogScope(void)::scope + 8))
        {
          v39 = *AUBeamItFDLogScope(void)::scope;
          if (*AUBeamItFDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "Found the dictionary RealCoefficients.");
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              *&buf[4] = "BeamformerFD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 310;
              *&buf[18] = 2080;
              *&buf[20] = p_p;
              _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }
      }

      if (*(this + 2))
      {
        v41 = 0;
        v42 = v85;
        do
        {
          std::to_string(&__p, v41);
          v43 = std::string::insert(&__p, 0, "Mic", 3uLL);
          v44 = *&v43->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v43->__r_.__value_.__l + 2);
          *buf = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (buf[23] >= 0)
          {
            v45 = buf;
          }

          else
          {
            v45 = *buf;
          }

          v46 = CFStringCreateWithCString(0, v45, 0x8000100u);
          BeamformerBase::ReadVectorFromDictionary(&__p, v38, v46);
          if (v88.__r_.__value_.__r.__words[0])
          {
            v88.__r_.__value_.__l.__size_ = v88.__r_.__value_.__r.__words[0];
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          v88 = __p;
          LODWORD(v2) = valuePtr;
          v47 = *(this + 4900);
          if (v42 != &v88)
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v42, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
          }

          v42[3] = v2;
          *(v42 + 8) = 2 * v47 - 2;
          CFRelease(v46);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          ++v41;
          v42 += 5;
        }

        while (v41 < *(this + 2));
      }

      v48 = CFDictionaryGetValue(v18, @"ImagCoefficients");
      if (v48)
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          if (*(AUBeamItFDLogScope(void)::scope + 8))
          {
            v49 = *AUBeamItFDLogScope(void)::scope;
            if (*AUBeamItFDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "Found the dictionary ImagCoefficients.");
                v50 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v50 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "BeamformerFD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 329;
                *&buf[18] = 2080;
                *&buf[20] = v50;
                _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }

        if (*(this + 2))
        {
          v51 = 0;
          v52 = v84;
          do
          {
            std::to_string(&__p, v51);
            v53 = std::string::insert(&__p, 0, "Mic", 3uLL);
            v54 = *&v53->__r_.__value_.__l.__data_;
            *&buf[16] = *(&v53->__r_.__value_.__l + 2);
            *buf = v54;
            v53->__r_.__value_.__l.__size_ = 0;
            v53->__r_.__value_.__r.__words[2] = 0;
            v53->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (buf[23] >= 0)
            {
              v55 = buf;
            }

            else
            {
              v55 = *buf;
            }

            v56 = CFStringCreateWithCString(0, v55, 0x8000100u);
            BeamformerBase::ReadVectorFromDictionary(&__p, v48, v56);
            if (v88.__r_.__value_.__r.__words[0])
            {
              v88.__r_.__value_.__l.__size_ = v88.__r_.__value_.__r.__words[0];
              operator delete(v88.__r_.__value_.__l.__data_);
            }

            v88 = __p;
            LODWORD(v2) = valuePtr;
            v57 = *(this + 4900);
            if (v52 != &v88)
            {
              std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
            }

            v52[3] = v2;
            *(v52 + 8) = 2 * v57 - 2;
            CFRelease(v56);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            ++v51;
            v52 += 5;
          }

          while (v51 < *(this + 2));
        }
      }

      else
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          if (*(AUBeamItFDLogScope(void)::scope + 8))
          {
            v58 = *AUBeamItFDLogScope(void)::scope;
            if (*AUBeamItFDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "Missing dictionary ImagCoefficients");
                v59 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v59 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "BeamformerFD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 324;
                *&buf[18] = 2080;
                *&buf[20] = v59;
                _os_log_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }
      }

      if (v88.__r_.__value_.__r.__words[0])
      {
        v88.__r_.__value_.__l.__size_ = v88.__r_.__value_.__r.__words[0];
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93) < 0)
      {
        operator delete(v92[0]);
      }

      if (!v48)
      {
        return 4294956446;
      }

      v13 = v86 + 1;
      v84 += 80;
      v85 += 80;
      if (v86 + 1 >= *(this + 3))
      {
        goto LABEL_154;
      }
    }

    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v61 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v62 = v92;
            if (v93 < 0)
            {
              v62 = v92[0];
            }

            *buf = 136315650;
            *&buf[4] = "BeamformerFD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 228;
            *&buf[18] = 2080;
            *&buf[20] = v62;
            _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d Missing dictionary: %s\n", buf, 0x1Cu);
          }
        }
      }
    }

    CFRelease(v17);
LABEL_178:
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[0]);
    }

    return 4294956446;
  }

  else
  {
LABEL_154:
    result = 0;
    *(this + 17) = 1;
  }

  return result;
}

void sub_1DE060CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BeamformerFD::Reset(BeamformerFD *this)
{
  *(this + 27) = 0;
  *(this + 28) = 0;
  vDSP_vclr(*(this + 2394), 1, (*(this + 2395) - *(this + 2394)) >> 2);
  memset_pattern16(this + 552, &unk_1DE098430, 0x480uLL);
  if (*(this + 16) == 1 && *(this + 19304) == 1)
  {
    v3 = *(this + 4807);
    __u = 0;
    std::vector<float>::assign(this + 2432, v3, &__u, v2);
    v4 = *(this + 4807);
    __u = 0;
    std::vector<float>::assign(this + 2435, v4, &__u, v5);
    v6 = *(this + 4807);
    __u = 0;
    std::vector<float>::assign(this + 2441, v6, &__u, v7);
    v8 = *(this + 4807);
    __u = 0;
    std::vector<unsigned int>::assign((this + 19504), v8, &__u);
    if (*(this + 4807))
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(this + 2444);
        v14 = (2 * *(this + 4806));
        __u = 1065353216;
        std::vector<float>::assign((v13 + v10), v14, &__u, v9);
        v15 = *(this + 2447) + v11;
        *(v15 + 16) = 0;
        *(v15 + 56) = 1;
        *(v15 + 64) = 0;
        ++v12;
        v11 += 72;
        v10 += 24;
      }

      while (v12 < *(this + 4807));
    }
  }

  return 0;
}

uint64_t BeamformerFD::Initialize(BeamformerFD *this, double a2, unsigned int a3)
{
  v59 = *MEMORY[0x1E69E9840];
  *(this + 3) = a2;
  *(this + 8) = a3;
  v4 = a3;
  v5 = vcvt_u32_f32(vrnda_f32(vcvt_f32_f64(vmulq_n_f64(vdivq_f64(vcvtq_f64_f32(*(this + 88)), vdupq_lane_s64(COERCE__INT64(a2 * 0.5), 0)), v4))));
  *(this + 36) = v5;
  *&v4 = *(this + 39) / (a2 * 0.5) * v4;
  *(this + 13) = roundf(*&v4);
  *(this + 11) = vsub_s32(vdup_lane_s32(v5, 1), v5).u32[0] + 1;
  v6 = a2 / a3;
  *v7.i32 = expf(-1.0 / (*(this + 24) * v6));
  *(this + 12) = v7.i32[0];
  v8 = *(this + 3);
  *buf = 0;
  std::vector<float>::resize(this + 2394, v8, buf, v7);
  if (*(this + 17) != 1)
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_34222);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      v29 = *AUBeamItFDLogScope(void)::scope;
      if (!*AUBeamItFDLogScope(void)::scope)
      {
        return 4294956421;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "BeamformerFD.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 111;
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Initialization failed, top level plist is not set.", buf, 0x12u);
    }

    return 4294956421;
  }

  (*(*this + 144))(this);
  v10 = this + 130200;
  v53 = (this + 130200);
  if (*(this + 3))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = this + 660120;
    LODWORD(v15) = *(this + 8);
    do
    {
      v54 = v14;
      if (*(this + 2))
      {
        v16 = 0;
        v17 = v10;
        do
        {
          SpectralProfile::GetProfile(buf, *(this + 3), (v14 - 184320), v15 + 1, 0.0, 2 * v15);
          if (v12)
          {
            operator delete(v12);
          }

          v12 = *buf;
          v18 = *&buf[8];
          SpectralProfile::GetProfile(buf, *(this + 3), v14, *(this + 8) + 1, 0.0, 2 * *(this + 8));
          if (v13)
          {
            operator delete(v13);
          }

          v13 = *buf;
          v19 = *&buf[8];
          std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v17 - 13824, v12, (v18 - 4), (v18 - 4 - v12) >> 2);
          std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v17, v13, (v19 - 4), (v19 - 4 - v13) >> 2);
          v15 = *(this + 8);
          v20 = *v17;
          v17 += 3;
          *v20 = *&v12[4 * v15];
          ++v16;
          v14 += 40;
        }

        while (v16 < *(this + 2));
      }

      SpectralProfile::GetProfile(buf, *(this + 3), this + 40 * v11 + 844440, v15 + 1, 0.0, 2 * v15);
      if (v12)
      {
        operator delete(v12);
      }

      v21 = 0;
      v12 = *buf;
      LODWORD(v15) = *(this + 8);
      v22 = *(this + 3 * v11 + 30099);
      v23 = v15 + 1;
      if ((v15 + 1) > 1)
      {
        v24 = v15 + 1;
      }

      else
      {
        v24 = 1;
      }

      v25 = 4 * v24;
      do
      {
        v9.i32[0] = *&v12[v21];
        *(v22 + v21) = v9.i32[0];
        v21 += 4;
      }

      while (v25 != v21);
      if (v23 < 2 * v15)
      {
        v26 = (v22 + 4 * v23);
        v27 = 1;
        do
        {
          v9.i32[0] = *&v12[4 * v27];
          *v26++ = v9.i32[0];
          ++v27;
        }

        while (v15 != v27);
      }

      ++v11;
      v28 = *(this + 3);
      v10 += 384;
      v14 = v54 + 640;
    }

    while (v11 < v28);
  }

  else
  {
    LODWORD(v28) = 0;
    v13 = 0;
    v12 = 0;
  }

  if (*(this + 19) == 2)
  {
    v31 = (2 * *(this + 8));
    *buf = 0;
    std::vector<float>::assign(this + 106998, v31, buf, v9);
    if (*(this + 3))
    {
      v32 = 0;
      v33 = this;
      do
      {
        vDSP_vclr(*(this + 2388), 1, (*(this + 8) + 1));
        vDSP_vclr(*(this + 2391), 1, (*(this + 8) + 1));
        if (*(this + 2))
        {
          v34 = 0;
          v35 = v53;
          do
          {
            v36 = *(v35 - 13824);
            v37 = *(this + 2388);
            *v37 = *v36 * *v36;
            v38 = (*v35 + 1);
            v39 = *(this + 8);
            v37[v39] = **v35 * **v35;
            *buf = v36 + 1;
            *&buf[8] = v38;
            vDSP_zvmags(buf, 1, v37 + 1, 1, (v39 - 1));
            MEMORY[0x1E12BE5D0](*(this + 2388), 1, *(this + 2391), 1, *(this + 2391), 1, (*(this + 8) + 1));
            ++v34;
            v35 += 3;
          }

          while (v34 < *(this + 2));
        }

        v57 = *(this + 8) + 1;
        vvsqrtf(*(this + 2391), *(this + 2391), &v57);
        __A = 1.0;
        MEMORY[0x1E12BE8A0](*(this + 2391), 1, &BeamformerBase::eps, *(this + 2391), 1, (*(this + 8) + 1));
        vDSP_svdiv(&__A, *(this + 2391), 1, *(this + 2391), 1, (*(this + 8) + 1));
        if (*(this + 2))
        {
          v41 = 0;
          v42 = v33;
          do
          {
            v43 = *(this + 8);
            *buf = 0;
            std::vector<float>::assign(v42 + 31827, v43, buf, v40);
            v44 = *(this + 8);
            *buf = 0;
            std::vector<float>::assign(v42 + 45651, v44, buf, v45);
            v46 = *(v42 + 2451);
            v47 = *(this + 2391);
            v48 = *(v42 + 31827);
            *v48 = *v46 * *v47;
            v49 = *(v42 + 16275);
            v50 = *(this + 8);
            v51 = *v49 * v47[v50];
            v52 = *(v42 + 45651);
            *v52 = v51;
            *buf = v46 + 1;
            *&buf[8] = v49 + 1;
            __C.realp = v48 + 1;
            __C.imagp = v52 + 1;
            vDSP_zvconj(buf, 1, &__C, 1, (v50 - 1));
            vDSP_zrvmul(&__C, 1, (*(this + 2391) + 4), 1, &__C, 1, (*(this + 8) - 1));
            ++v41;
            v42 = (v42 + 24);
          }

          while (v41 < *(this + 2));
        }

        ++v32;
        v28 = *(this + 3);
        v53 += 48;
        v33 = (v33 + 384);
      }

      while (v32 < v28);
    }

    else
    {
      LODWORD(v28) = 0;
    }
  }

  if (*(this + 856008) == 1)
  {
    operator new();
  }

  LimitWindBoost::initialize((this + 19200), v28 + 1, *(this + 8), *(this + 3), -65536);
  *(this + 16) = 1;
  if (v13)
  {
    operator delete(v13);
  }

  if (v12)
  {
    operator delete(v12);
  }

  return 0;
}

void sub_1DE06170C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  v25 = v20[17];
  if (v25)
  {
    v20[18] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v20[15] = v26;
    operator delete(v26);
  }

  v27 = v20[11];
  if (v27)
  {
    v20[12] = v27;
    operator delete(v27);
  }

  v28 = *v23;
  if (*v23)
  {
    v20[9] = v28;
    operator delete(v28);
  }

  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v29 = *v21;
  if (*v21)
  {
    v20[2] = v29;
    operator delete(v29);
  }

  MEMORY[0x1E12BD160](v20, 0x10B0C4054D2F8FBLL);
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SubbandDOACalculator>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      *(v2 + 144) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 112);
    if (v4)
    {
      *(v2 + 120) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 88);
    if (v5)
    {
      *(v2 + 96) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 64);
    if (v6)
    {
      *(v2 + 72) = v6;
      operator delete(v6);
    }

    v8 = (v2 + 32);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
    v7 = *(v2 + 8);
    if (v7)
    {
      *(v2 + 16) = v7;
      operator delete(v7);
    }

    return MEMORY[0x1E12BD160](v2, 0x10B0C4054D2F8FBLL);
  }

  return result;
}

void BeamformerFD::~BeamformerFD(BeamformerFD *this)
{
  BeamformerFD::~BeamformerFD(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = (this + 855928);
  *this = &unk_1F5939D88;
  *(this + 16) = 0;
  std::unique_ptr<SubbandDOACalculator>::reset[abi:ne200100](this + 107002, 0);
  v3 = v2[7];
  if (v3)
  {
    v2[8] = v3;
    operator delete(v3);
  }

  v4 = (this + 844408);
  v5 = (this + 660088);
  v6 = (this + 475784);
  v7 = (this + 365192);
  v8 = (this + 254600);
  v9 = (this + 247688);
  v10 = v2[4];
  v11 = (this + 240776);
  if (v10)
  {
    v2[5] = v10;
    operator delete(v10);
  }

  v12 = -11520;
  do
  {
    v13 = *(v2 - 1);
    if (v13)
    {
      *v2 = v13;
      operator delete(v13);
    }

    v2 -= 5;
    v12 += 40;
  }

  while (v12);
  v14 = -184320;
  v15 = -184320;
  do
  {
    v16 = *(v4 - 1);
    if (v16)
    {
      *v4 = v16;
      operator delete(v16);
    }

    v4 -= 5;
    v15 += 40;
  }

  while (v15);
  do
  {
    v17 = *(v5 - 1);
    if (v17)
    {
      *v5 = v17;
      operator delete(v17);
    }

    v5 -= 5;
    v14 += 40;
  }

  while (v14);
  v18 = -110592;
  do
  {
    v19 = *(v6 - 1);
    if (v19)
    {
      *v6 = v19;
      operator delete(v19);
    }

    v6 -= 3;
    v18 += 24;
  }

  while (v18);
  v20 = -110592;
  do
  {
    v21 = *(v7 - 1);
    if (v21)
    {
      *v7 = v21;
      operator delete(v21);
    }

    v7 -= 3;
    v20 += 24;
  }

  while (v20);
  v22 = -6912;
  do
  {
    v23 = *(v8 - 1);
    if (v23)
    {
      *v8 = v23;
      operator delete(v23);
    }

    v8 -= 3;
    v22 += 24;
  }

  while (v22);
  v24 = -6912;
  do
  {
    v25 = *(v9 - 1);
    if (v25)
    {
      *v9 = v25;
      operator delete(v25);
    }

    v9 -= 3;
    v24 += 24;
  }

  while (v24);
  v26 = -110592;
  do
  {
    v27 = *(v11 - 1);
    if (v27)
    {
      *v11 = v27;
      operator delete(v27);
    }

    v11 -= 3;
    v26 += 24;
  }

  while (v26);
  v28 = 110592;
  do
  {
    v29 = *(this + v28 + 19584);
    if (v29)
    {
      *(this + v28 + 19592) = v29;
      operator delete(v29);
    }

    v28 -= 24;
  }

  while (v28);

  BeamformerBase::~BeamformerBase(this);
}

uint64_t Beamformer_BeamNF::CmhBEAMprocOpt::process(Beamformer_BeamNF::CmhBEAMprocOpt *this, float **a2, float **a3, float **a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    return 1;
  }

  if (*(this + 30) == 1)
  {
    if (*(this + 14) >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        LPFilterBank::Analysis((this + 1424), v8, a2[v8], (*(this + 19) + v7));
        ++v8;
        v7 += 16;
      }

      while (v8 < *(this + 14));
    }

    if (*(this + 3) == 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        memcpy(*(*(this + 18) + v9), *(*(this + 19) + v9), 4 * *(this + 5));
        ++v10;
        v9 += 16;
      }

      while (v10 < *(this + 3));
    }

    else
    {
      memcpy(**(this + 18), *(*(this + 19) + 16 * *(this + 1)), 4 * *(this + 5));
    }

    goto LABEL_61;
  }

  v12 = *(this + 7);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *a2;
    do
    {
      v15 = (*(this + 21) * (*v14 - *(this + 16))) + (*(this + 20) * *(this + 17));
      *(this + 17) = v15;
      *(this + 16) = *v14;
      *v14++ = v15;
      ++v13;
    }

    while (v12 > v13);
    v16 = 0;
    v17 = a2[1];
    do
    {
      v18 = (*(this + 21) * (*v17 - *(this + 18))) + (*(this + 20) * *(this + 19));
      *(this + 19) = v18;
      *(this + 18) = *v17;
      *v17++ = v18;
      ++v16;
    }

    while (v12 > v16);
  }

  if (*(this + 14) >= 1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      LPFilterBank::Analysis((this + 1424), v20, a2[v20], (*(this + 19) + v19));
      ++v20;
      v19 += 16;
    }

    while (v20 < *(this + 14));
  }

  Beamformer_BeamNF::CmhBEAM2NOpt::process((this + 184), *(this + 19), *(this + 18));
  v21 = (*(this + 273) + *(this + 279));
  v22 = *(this + 137);
  if (v21 < 1)
  {
    v25 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v22 + 4 * v23) == 1)
      {
        v24 = v23;
      }

      ++v23;
    }

    while (v21 != v23);
    v25 = v24;
  }

  if (*(v22 + 4 * v25))
  {
    if (*(this + 3) >= 1)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        vDSP_ztoc((*(this + 18) + v26), 1, *(*(this + 16) + 8 * v27++), 2, (*(this + 5) + (*(this + 5) >> 31)) >> 1);
        v26 += 16;
      }

      while (v27 < *(this + 3));
    }

    Cns::process(this + 1088, *(this + 16));
    if (*(this + 3) >= 1)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        vDSP_ctoz(*(*(this + 16) + 8 * v29++), 2, (*(this + 18) + v28), 1, (*(this + 5) + (*(this + 5) >> 31)) >> 1);
        v28 += 16;
      }

      while (v29 < *(this + 3));
    }
  }

  if (*(this + 2))
  {
    Beamformer_BeamNF::CmhBEAMprocOpt::post_res_ns_proc(this);
    *(this + 76) = *(this + 23);
  }

  else
  {
    v30 = *(this + 3);
    if (v30 >= 1)
    {
      for (i = 0; i < v30; ++i)
      {
        v32 = *(this + 279) + *(this + 273) - 1;
        if (v32 >= i)
        {
          v32 = i;
        }

        if (*(*(this + 137) + 4 * v32))
        {
          v33 = *(this + 22);
          v34 = *(this + 280);
          if (v34 >= 1)
          {
            v35 = *(*(this + 177) + 112 * i + 16);
            v36 = *(this + 165);
            v37 = *(this + 22);
            do
            {
              v38 = *v36++;
              *v37++ = *(v35 + 4 * v38);
              --v34;
            }

            while (v34);
          }

          v39 = *(*(this + 18) + 16 * i) + 4;
          MEMORY[0x1E12BE7F0](v39, 1, v33, 1, v39, 1, *(this + 12));
          v40 = *(*(this + 18) + 16 * i + 8) + 4;
          MEMORY[0x1E12BE7F0](v40, 1, v33, 1, v40, 1, *(this + 12));
          v30 = *(this + 3);
        }
      }
    }
  }

  if (*(this + 77))
  {
    goto LABEL_61;
  }

  v41 = *(this + 48);
  if (v41 >= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = *(this + 48);
  }

  v43 = *(this + 78);
  v55[0] = *(v43 + 136 * v42 - 28);
  v44 = *(this + 3);
  if (v44 == 2)
  {
    if (v41 >= 2)
    {
      v41 = 2;
    }

    v55[1] = *(v43 + 136 * v41 - 28);
    goto LABEL_55;
  }

  if (v44 >= 1)
  {
LABEL_55:
    v45 = 0;
    for (j = 0; j < v44; ++j)
    {
      if (v55[j] == 1)
      {
        v47 = *(this + 48) - 1;
        if (v47 >= j)
        {
          v47 = j;
        }

        v48 = *(*(this + 78) + 136 * v47 + 120);
        v49 = *(*(this + 18) + v45) + 4;
        MEMORY[0x1E12BE7F0](v49, 1, v48, 1, v49, 1, *(this + 12));
        v50 = *(*(this + 18) + v45 + 8) + 4;
        MEMORY[0x1E12BE7F0](v50, 1, v48, 1, v50, 1, *(this + 12));
        v44 = *(this + 3);
      }

      v45 += 16;
    }
  }

LABEL_61:
  if (*(this + 3) >= 1)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(this + 18) + v51;
      v54 = *v53;
      **(v53 + 8) = 0;
      *v54 = 0;
      LPFilterBank::Synthesis((this + 1424), v52, v53, a3[v52]);
      ++v52;
      v51 += 16;
    }

    while (v52 < *(this + 3));
  }

  return 0;
}

void Beamformer_BeamNF::CmhBEAMprocOpt::post_res_ns_proc(Beamformer_BeamNF::CmhBEAMprocOpt *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 273) + *(this + 279));
  v3 = *(this + 137);
  if (v2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(v3 + 4 * v4) == 1)
      {
        v5 = v4;
      }

      ++v4;
    }

    while (v2 != v4);
    v6 = v5;
  }

  v7 = *(this + 14);
  if (*(v3 + 4 * v6))
  {
    Cns::comf_noise(*v7, *(this + 5));
    v7 = *(this + 14);
  }

  else
  {
    v8 = *(this + 5);
    if (v8 >= 1)
    {
      bzero(*v7, 4 * v8);
    }
  }

  v9 = *(this + 12);
  if (v9 >= 1)
  {
    memset_pattern16(*(v7 + 8), &unk_1DE095DF0, 4 * v9);
  }

  if (*(this + 3) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(this + 279) + *(this + 273) - 1;
      if (v11 >= v10)
      {
        v11 = v10;
      }

      v12 = *(this + 22);
      if (*(*(this + 137) + 4 * v11) == 1)
      {
        v13 = *(this + 280);
        if (v13 >= 1)
        {
          v14 = *(*(this + 177) + 112 * v10 + 16);
          v15 = *(this + 165);
          v16 = *(this + 22);
          do
          {
            v17 = *v15++;
            *v16++ = *(v14 + 4 * v17);
            --v13;
          }

          while (v13);
        }

        LODWORD(v18) = *(this + 12);
      }

      else
      {
        v18 = *(this + 12);
        if (v18 >= 1)
        {
          memset_pattern16(*(this + 22), &unk_1DE095DF0, 4 * v18);
        }
      }

      MEMORY[0x1E12BE7F0](v12, 1, *(*(this + 14) + 8), 1, v12, 1, v18);
      v19 = *(*(this + 18) + 16 * v10) + 4;
      MEMORY[0x1E12BE7F0](v19, 1, v12, 1, v19, 1, *(this + 12));
      v20 = *(*(this + 18) + 16 * v10 + 8) + 4;
      v21 = MEMORY[0x1E12BE7F0](v20, 1, v12, 1, v20, 1, *(this + 12));
      MEMORY[0x1EEE9AC00](v21);
      v22 = *(this + 5);
      __Z.realp = (&v24 - v23);
      __Z.imagp = (&v24 + 4 * v22 - v23);
      vDSP_ctoz(**(this + 14), 2, &__Z, 1, (v22 + (v22 >> 31)) >> 1);
      Cns::add_comf_noise((this + 1088), *(*(this + 18) + 16 * v10), *(*(this + 18) + 16 * v10 + 8), __Z.realp, __Z.imagp, v12, v10);
      ++v10;
    }

    while (v10 < *(this + 3));
  }
}

void InverseWithGramSchmidt::cleanup(InverseWithGramSchmidt *this)
{
  *(this + 12) = *this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = *(this + 7);
    v4 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v3, v2);
  }

  vec::fill<float>(*(this + 10), *(this + 11), this + 4);
  vec::cleanup<float>(this + 13);
  vec::cleanup<float>(this + 16);
  bzero(*(this + 22), *(this + 23) - *(this + 22));
  bzero(*(this + 25), *(this + 26) - *(this + 25));
  bzero(*(this + 31), *(this + 32) - *(this + 31));
  bzero(*(this + 34), *(this + 35) - *(this + 34));
  bzero(*(this + 37), *(this + 38) - *(this + 37));
  bzero(*(this + 40), *(this + 41) - *(this + 40));
  bzero(*(this + 43), *(this + 44) - *(this + 43));
}

os_log_t ___Z19getMatrixUtilityLogv_block_invoke_34455()
{
  result = os_log_create("com.apple.coreaudio", "AudioDSPMatrixUtility");
  getMatrixUtilityLog(void)::gLog = result;
  return result;
}

void InverseWithGramSchmidt::~InverseWithGramSchmidt(InverseWithGramSchmidt *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (getMatrixUtilityLog(void)::onceToken != -1)
  {
    dispatch_once(&getMatrixUtilityLog(void)::onceToken, &__block_literal_global_34449);
  }

  v2 = getMatrixUtilityLog(void)::gLog;
  if (os_log_type_enabled(getMatrixUtilityLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 134217984;
    *&v13[4] = this;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%p] destructed", v13, 0xCu);
  }

  v3 = *(this + 43);
  if (v3)
  {
    *(this + 44) = v3;
    operator delete(v3);
  }

  v4 = *(this + 40);
  if (v4)
  {
    *(this + 41) = v4;
    operator delete(v4);
  }

  v5 = *(this + 37);
  if (v5)
  {
    *(this + 38) = v5;
    operator delete(v5);
  }

  v6 = *(this + 34);
  if (v6)
  {
    *(this + 35) = v6;
    operator delete(v6);
  }

  v7 = *(this + 31);
  if (v7)
  {
    *(this + 32) = v7;
    operator delete(v7);
  }

  v8 = *(this + 28);
  if (v8)
  {
    *(this + 29) = v8;
    operator delete(v8);
  }

  v9 = *(this + 25);
  if (v9)
  {
    *(this + 26) = v9;
    operator delete(v9);
  }

  v10 = *(this + 22);
  if (v10)
  {
    *(this + 23) = v10;
    operator delete(v10);
  }

  *v13 = this + 152;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v13);
  *v13 = this + 128;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v13);
  *v13 = this + 104;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v13);
  *v13 = this + 80;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v13);
  v11 = *(this + 7);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    *(this + 4) = v12;
    operator delete(v12);
  }
}

void InverseWithGramSchmidt::update_InvR(unsigned int *a1, const void **a2, float a3, float a4)
{
  v18 = a4;
  v19 = a3;
  memcpy(*(a1 + 22), *a2, 4 * a1[2]);
  memcpy(*(a1 + 25), *a2 + 4 * a1[2], 4 * a1[2]);
  vDSP_vfill(&InverseWithGramSchmidt::mOne, *(a1 + 34), 1, a1[1]);
  v6 = *a1;
  if (v6)
  {
    v7 = 0;
    v8 = 16;
    v9 = &InverseWithGramSchmidt::mOne;
    v10 = 1;
    do
    {
      if ((*(*(a1 + 7) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        v11 = v7 + 1;
      }

      else
      {
        vDSP_zvmags((*(a1 + 28) + 16 * v7), 1, *(a1 + 31), 1, a1[1]);
        MEMORY[0x1E12BE940](*(a1 + 34), 1, &v18, *(a1 + 37), 1, a1[1]);
        v12 = *(*(a1 + 10) + 24 * v7);
        MEMORY[0x1E12BE940](v12, 1, &v19, v12, 1, a1[1]);
        MEMORY[0x1E12BE780](*(a1 + 37), 1, *(a1 + 31), 1, *(*(a1 + 10) + 24 * v7), 1, *(*(a1 + 10) + 24 * v7), 1, a1[1]);
        v13 = *(*(a1 + 10) + 24 * v7);
        vDSP_vthr(v13, 1, a1 + 5, v13, 1, a1[1]);
        MEMORY[0x1E12BE810](*(a1 + 37), 1, *(a1 + 37), 1, a1[1]);
        vDSP_vdiv(*(*(a1 + 10) + 24 * v7), 1, *(a1 + 37), 1, *(a1 + 37), 1, a1[1]);
        vDSP_zrvmul((*(a1 + 28) + 16 * v7), 1, *(a1 + 37), 1, a1 + 23, 1, a1[1]);
        vDSP_zvconj(a1 + 23, 1, a1 + 23, 1, a1[1]);
        MEMORY[0x1E12BE7F0](*(a1 + 37), 1, *(a1 + 31), 1, *(a1 + 37), 1, a1[1]);
        MEMORY[0x1E12BE8A0](*(a1 + 37), 1, v9, *(a1 + 37), 1, a1[1]);
        vDSP_vthr(*(a1 + 37), 1, &InverseWithGramSchmidt::mZero, *(a1 + 37), 1, a1[1]);
        MEMORY[0x1E12BE7F0](*(a1 + 34), 1, *(a1 + 37), 1, *(a1 + 34), 1, a1[1]);
        v11 = v7 + 1;
        v6 = *a1;
        if (v7 + 1 < v6)
        {
          v14 = v9;
          v15 = v8;
          v16 = v10;
          do
          {
            if (((*(*(a1 + 7) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              v17 = (*(*(a1 + 19) + 24 * v7) + v15);
              aDSP_zvmama((*(a1 + 28) + 16 * v7), 1, v17, 1, (*(a1 + 28) + v15), 1, a1 + 46, 1, v17, 1, a1[1]);
              v6 = *a1;
            }

            ++v16;
            v15 += 16;
          }

          while (v16 < v6);
          v9 = v14;
        }
      }

      ++v10;
      v8 += 16;
      v7 = v11;
    }

    while (v11 < v6);
  }
}

uint64_t AUSilenceNonFiniteAnalyzer::SupportedNumChannels(AUSilenceNonFiniteAnalyzer *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSilenceNonFiniteAnalyzer::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUSilenceNonFiniteAnalyzer::GetParameterInfo(AUSilenceNonFiniteAnalyzer *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 6)
  {
    v6 = off_1E8672160[a3];
    v7 = flt_1DE116BBC[a3];
    v8 = flt_1DE116BD8[a3];
    buffer->cfNameString = v6;
    buffer->flags = 0x8000000;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    buffer->minValue = v7;
    buffer->maxValue = v8;
    buffer->defaultValue = v7;
    buffer->flags |= 0x40008000u;
  }

  return result;
}

uint64_t AUSilenceNonFiniteAnalyzer::GetParameterList(AUSilenceNonFiniteAnalyzer *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 2) = 0x500000004;
    a3[6] = 6;
  }

  result = 0;
  *a4 = 7;
  return result;
}

ausdk::AUInputElement *AUSilenceNonFiniteAnalyzer::Render(AUSilenceNonFiniteAnalyzer *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

    return AUSilenceNonFiniteAnalyzer::ProcessBufferLists(this, v12, (*(v8 + 152) + 48), (*(v10 + 152) + 48), a4);
  }

  return result;
}

uint64_t AUSilenceNonFiniteAnalyzer::SetParameter(AUSilenceNonFiniteAnalyzer *this, signed int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          *(this + 135) = a5;
        }

        else if (a2 == 2)
        {
          *(this + 136) = a5;
        }
      }

      else
      {
        *(this + 134) = a5;
      }
    }

    else if (a2 > 4)
    {
      if (a2 == 5)
      {
        *(this + 141) = a5;
      }

      else if (a2 == 6)
      {
        *(this + 139) = a5;
      }
    }

    else if (a2 == 3)
    {
      *(this + 137) = a5;
      if (a5 == 0.0)
      {
        *(this + 138) = 0;
      }
    }

    else
    {
      *(this + 140) = a5;
    }
  }

  return result;
}

uint64_t AUSilenceNonFiniteAnalyzer::SetProperty(AUSilenceNonFiniteAnalyzer *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 64001)
  {
    if (a2 != 64002)
    {
      if (a2 == 64003)
      {
        if (a6 >= 4)
        {
          result = 0;
          *(this + 534) = *a5 != 0;
          return result;
        }

        return 4294956445;
      }

      return result;
    }

    if (a6 >= 4)
    {
      result = 0;
      *(this + 532) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 21)
  {
    if (a6 >= 4)
    {
      v8 = *a5;
      *(this + 528) = *a5 != 0;
      if (v8)
      {
        AUSilenceNonFiniteAnalyzer::Reset(this);
      }

      return 0;
    }

    return 4294956445;
  }

  if (a2 == 64001)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 529) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  return result;
}

uint64_t AUSilenceNonFiniteAnalyzer::Reset(AUSilenceNonFiniteAnalyzer *this)
{
  v2 = (this + 536);
  *(this + 536) = 0u;
  *(this + 69) = 0xBF80000000000000;
  *(this + 70) = 0;
  *(this + 530) = 1;
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0 || (ausdk::AUElement::SetParameter(v3, 0, *v2), v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v6 & 1) == 0) || (ausdk::AUElement::SetParameter(v5, 1u, *(this + 135)), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0) || (ausdk::AUElement::SetParameter(v7, 2u, *(this + 136)), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v10 & 1) == 0) || (ausdk::AUElement::SetParameter(v9, 3u, *(this + 137)), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 4u, *(this + 140)), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 5u, *(this + 141)), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v16 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v15, 6u, *(this + 139));
  return 0;
}

uint64_t AUSilenceNonFiniteAnalyzer::GetProperty(AUSilenceNonFiniteAnalyzer *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  v5 = 4294956417;
  if (!a3)
  {
    if (a2 > 64001)
    {
      if (a2 == 64002)
      {
        v6 = 532;
        goto LABEL_11;
      }

      if (a2 == 64003)
      {
        v6 = 534;
        goto LABEL_11;
      }
    }

    else
    {
      if (a2 == 21)
      {
        v6 = 528;
        goto LABEL_11;
      }

      if (a2 == 64001)
      {
        v6 = 529;
LABEL_11:
        v5 = 0;
        *a5 = *(this + v6);
      }
    }
  }

  return v5;
}

uint64_t AUSilenceNonFiniteAnalyzer::GetPropertyInfo(AUSilenceNonFiniteAnalyzer *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if ((a2 - 64001) >= 3 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUSilenceNonFiniteAnalyzer::Initialize(AUSilenceNonFiniteAnalyzer *this)
{
  v17 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), v11 = *(Element + 80), *v12 = v3, *&v12[16] = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v10.mSampleRate = *(v4 + 80);
  *&v10.mBytesPerPacket = v6;
  *&v10.mBitsPerChannel = *(v4 + 112);
  if (*&v11 == v10.mSampleRate && DWORD2(v11) == v10.mFormatID && *v12 == *&v10.mBytesPerPacket && *&v12[12] == *&v10.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(&v11, &v10, v5))
  {
    *(this + 75) = *&v12[16];
    v7 = *v12;
    *(this + 568) = v11;
    *(this + 584) = v7;
    AUSilenceNonFiniteAnalyzer::Reset(this);
    return 0;
  }

  if (AUSilenceNonFiniteAnalyzerLogScope(void)::once != -1)
  {
    dispatch_once(&AUSilenceNonFiniteAnalyzerLogScope(void)::once, &__block_literal_global_34541);
  }

  if (!AUSilenceNonFiniteAnalyzerLogScope(void)::scope)
  {
    v9 = MEMORY[0x1E69E9C10];
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "AUSilenceNonFiniteAnalyzer.cpp";
      v15 = 1024;
      v16 = 119;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Can't handle different in/out formats\n", buf, 0x12u);
    }

    return 4294956428;
  }

  v9 = *AUSilenceNonFiniteAnalyzerLogScope(void)::scope;
  if (*AUSilenceNonFiniteAnalyzerLogScope(void)::scope)
  {
    goto LABEL_15;
  }

  return 4294956428;
}

void AUSilenceNonFiniteAnalyzer::~AUSilenceNonFiniteAnalyzer(AUSilenceNonFiniteAnalyzer *this)
{
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t EqualPowerPanningSpatializer::processAccumulating(EqualPowerPanningSpatializer *this, const float *__I, float *const *a3, unsigned int a4, float *const *a5, unsigned int a6, vDSP_Length __N, float a8, IR::ComplexDataCircBuffer *a9)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a4 <= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v10 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v42, "EqualPowerPanningSpatializer");
      v36 = std::string::append(&v42, "::", 2uLL);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v43.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v43.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v43, "processAccumulating", 0x13uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      __Step.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&__Step.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      p_Step = &__Step;
      if ((__Step.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_Step = __Step.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v46 = p_Step;
      v47 = 1024;
      v48 = a4;
      _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%s: ERROR, cannot process with %d output channels", buf, 0x12u);
      if (SHIBYTE(__Step.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__Step.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    return 4294956445;
  }

  if (*(this + 16))
  {
    v15 = *(this + 6);
    v16 = *(v15 + 82);
    v17 = 0.0;
    if (!*(v15 + 82))
    {
      a8 = 0.0;
    }

    v18 = 0.0;
    if (v16 == 1)
    {
      v19 = *v15;
      v20 = *(v15 + 8);
      if (*v15 == *(this + 16) && v20 == *(this + 18) && *(v15 + 64) == *(this + 32) && (*(this + 17) & 1) == 0)
      {
        v26 = *(this + 75);
        v27 = *(this + 76);
      }

      else
      {
        v21 = *(v15 + 64);
        *(this + 16) = v19;
        *(this + 18) = v20;
        v22 = llroundf(v19);
        *(this + 32) = v21;
        v23 = v22 + 360 * (((v22 & ~(v22 >> 31)) - (v22 + (v22 >> 31))) / 0x168 + (v22 >> 31));
        if (v23 <= 359)
        {
          v24 = 359;
        }

        else
        {
          v24 = v23;
        }

        v25 = v23 - 360 * (((3054198967u * v24) >> 32) >> 8);
        v26 = gPanTable[v25];
        *(this + 75) = v26;
        v27 = gPanTable[360 - v25];
        *(this + 76) = v27;
        if (v20 < v21)
        {
          v28 = (v21 - v20) / v21;
          v26 = v26 + (v28 * (0.70711 - v26));
          *(this + 75) = v26;
          v27 = v27 + (v28 * (0.70711 - v27));
          *(this + 76) = v27;
        }
      }

      v17 = v26 * a8;
      v18 = v27 * a8;
    }

    if (*(this + 17) == 1)
    {
      *(this + 77) = v17;
      *(this + 78) = v18;
      *(this + 146) = v16;
      *(this + 17) = 0;
LABEL_22:
      v29 = __N;
      MEMORY[0x1E12BE8F0](__I, 1, this + 308, *a3, 1, *a3, 1, __N);
      MEMORY[0x1E12BE8F0](__I, 1, this + 312, *(a3 + 1), 1, *(a3 + 1), 1, v29);
      return 0;
    }

    if (v16 == *(this + 146))
    {
      v31 = *(this + 77);
      if (v31 == v17 || vabds_f32(v31, v17) < 0.0001)
      {
        v32 = 0;
        *(this + 77) = v17;
      }

      else
      {
        if (!*(this + 73))
        {
          v17 = v17 + ((v31 - v17) * *(this + 79));
        }

        v32 = 1;
      }

      v33 = *(this + 78);
      if (v33 == v18 || vabds_f32(v33, v18) < 0.0001)
      {
        *(this + 78) = v18;
        if (!v32)
        {
          goto LABEL_22;
        }
      }

      else if (!*(this + 73))
      {
        v18 = v18 + ((v33 - v18) * *(this + 79));
      }
    }

    else
    {
      *(this + 146) = v16;
    }

    if (__N)
    {
      v34 = 1.0 / __N;
      *&__Step.__r_.__value_.__l.__data_ = v34 * (v17 - *(this + 77));
      *&v43.__r_.__value_.__l.__data_ = v34 * (v18 - *(this + 78));
      v35 = __N;
      vDSP_vrampmuladd(__I, 1, this + 77, &__Step, *a3, 1, __N);
      vDSP_vrampmuladd(__I, 1, this + 78, &v43, a3[1], 1, v35);
    }

    result = 0;
    *(this + 77) = v17;
    *(this + 78) = v18;
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v30 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v42, "EqualPowerPanningSpatializer");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v43, &v42, "::");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__Step, &v43, "processAccumulating");
      if ((__Step.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &__Step;
      }

      else
      {
        v41 = __Step.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v46 = v41;
      _os_log_debug_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_DEBUG, "%s: ERROR, not intialized", buf, 0xCu);
      if (SHIBYTE(__Step.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__Step.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    return 4294956429;
  }

  return result;
}

void sub_1DE063664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EqualPowerPanningSpatializer::initialize(EqualPowerPanningSpatializer *this, float a2, unsigned int a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    *(this + 2) = a2;
    *(this + 3) = a4;
    v14 = a2 * 0.001953125 * 0.0219999999;
    if (v14 < 2.22507386e-308)
    {
      v14 = 2.22507386e-308;
    }

    v15 = -6.90775528 / v14;
    v16 = exp(-6.90775528 / v14);
    if (v15 < -708.4)
    {
      v16 = 0.0;
    }

    *&v16 = v16;
    *(this + 79) = LODWORD(v16);
    *&v16 = a2 * 0.044;
    *(this + 5) = (a2 * 0.044);
    Spatializer::initialize(this, *&v16, a3);
    return 0;
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v5 = 4294900553;
    v6 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(&v18, "EqualPowerPanningSpatializer");
      v7 = std::string::append(&v18, "::", 2uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v19, "initialize", 0xAuLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v21 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = __p;
      if (v21 < 0)
      {
        v11 = __p[0];
      }

      *buf = 136315394;
      v23 = v11;
      v24 = 1024;
      v25 = a3;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%s: cannot initialize with inNumOutputChannels = %d", buf, 0x12u);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }
  }

  return v5;
}

void sub_1DE0638E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void EqualPowerPanningSpatializer::~EqualPowerPanningSpatializer(EqualPowerPanningSpatializer *this)
{
  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

void std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_1DE063A48(void *a1)
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

uint64_t *std::list<int>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void CDelaunayTriangles3D::~CDelaunayTriangles3D(CDelaunayTriangles3D *this)
{
  if (*(this + 5))
  {
    v2 = this + 24;
    v3 = *(this + 4);
    v4 = *(*(this + 3) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 5) = 0;
    if (v3 != this + 24)
    {
      do
      {
        v6 = *(v3 + 1);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(this + 2))
  {
    v7 = *(this + 1);
    v8 = *(*this + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(this + 2) = 0;
    if (v7 != this)
    {
      do
      {
        v10 = *(v7 + 1);
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != this);
    }
  }
}

void *std::list<int>::remove(void *result, int a2)
{
  v22 = &v22;
  __p = &v22;
  v2 = result[1];
  if (v2 == result)
  {
    return result;
  }

  v24 = 0;
  if (&v22 == result)
  {
    while (1)
    {
      v16 = v2[1];
      if (*(v2 + 4) == a2)
      {
        break;
      }

LABEL_24:
      v2 = v16;
      if (v16 == result)
      {
        return result;
      }
    }

    if (v16 == result)
    {
      v17 = 1;
    }

    else
    {
      if (*(v16 + 4) != a2)
      {
LABEL_30:
        v17 = 0;
        if (v2 == v16)
        {
LABEL_35:
          if (!v17)
          {
            v16 = v16[1];
          }

          goto LABEL_24;
        }

LABEL_34:
        v18 = *v16;
        v19 = *(*v16 + 8);
        v20 = *v2;
        *(v20 + 8) = v19;
        *v19 = v20;
        v21 = v22;
        v22[1] = v2;
        *v2 = v21;
        v22 = v18;
        v18[1] = &v22;
        goto LABEL_35;
      }

      while (1)
      {
        v16 = v16[1];
        v17 = v16 == result;
        if (v16 == result)
        {
          break;
        }

        if (*(v16 + 4) != a2)
        {
          goto LABEL_30;
        }
      }
    }

    if (v2 == v16)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v3 = 0;
  v4 = &v22;
  do
  {
    v5 = v2[1];
    if (*(v2 + 4) == a2)
    {
      if (v5 == result)
      {
LABEL_9:
        v6 = 1;
      }

      else
      {
        while (1)
        {
          v6 = *(v5 + 16) == a2;
          if (*(v5 + 16) != a2)
          {
            break;
          }

          v5 = *(v5 + 8);
          if (v5 == result)
          {
            goto LABEL_9;
          }
        }
      }

      if (v2 != v5)
      {
        v4 = *v5;
        if (*v5 == v2)
        {
          v9 = 1;
        }

        else
        {
          v7 = -1;
          v8 = v2;
          do
          {
            v8 = v8[1];
            ++v7;
          }

          while (v8 != v4);
          v9 = v7 + 2;
        }

        result[2] -= v9;
        v3 += v9;
        v10 = v4[1];
        v11 = *v2;
        *(v11 + 8) = v10;
        *v10 = v11;
        v12 = v22;
        v22[1] = v2;
        *v2 = v12;
        v22 = v4;
        v4[1] = &v22;
      }

      if (!v6)
      {
        v5 = *(v5 + 8);
      }
    }

    v2 = v5;
  }

  while (v5 != result);
  if (v3)
  {
    result = __p;
    v13 = v4[1];
    v14 = *__p;
    *(v14 + 8) = v13;
    *v13 = v14;
    v24 = 0;
    if (result != &v22)
    {
      do
      {
        v15 = result[1];
        operator delete(result);
        result = v15;
      }

      while (v15 != &v22);
    }
  }

  return result;
}

void *std::list<std::array<int,2ul>>::remove(void *result, uint64_t *a2)
{
  v24 = &v24;
  __p = &v24;
  v26 = 0;
  v2 = result[1];
  if (v2 != result)
  {
    if (&v24 == result)
    {
      do
      {
        v17 = v2[1];
        if (v2[2] == *a2)
        {
          if (v17 == result)
          {
LABEL_31:
            v19 = 1;
          }

          else
          {
            v18 = *a2;
            while (1)
            {
              v19 = v17[2] == v18;
              if (v17[2] != v18)
              {
                break;
              }

              v17 = v17[1];
              if (v17 == result)
              {
                goto LABEL_31;
              }
            }
          }

          if (v2 != v17)
          {
            v20 = *v17;
            v21 = *(*v17 + 8);
            v22 = *v2;
            *(v22 + 8) = v21;
            *v21 = v22;
            v23 = v24;
            v24[1] = v2;
            *v2 = v23;
            v24 = v20;
            v20[1] = &v24;
          }

          if (!v19)
          {
            v17 = v17[1];
          }
        }

        v2 = v17;
      }

      while (v17 != result);
    }

    else
    {
      v3 = 0;
      v4 = &v24;
      do
      {
        v5 = v2[1];
        if (v2[2] == *a2)
        {
          if (v5 == result)
          {
LABEL_10:
            v7 = 1;
          }

          else
          {
            v6 = *a2;
            while (1)
            {
              v7 = v5[2] == v6;
              if (v5[2] != v6)
              {
                break;
              }

              v5 = v5[1];
              if (v5 == result)
              {
                goto LABEL_10;
              }
            }
          }

          if (v2 != v5)
          {
            v4 = *v5;
            if (*v5 == v2)
            {
              v10 = 1;
            }

            else
            {
              v8 = -1;
              v9 = v2;
              do
              {
                v9 = v9[1];
                ++v8;
              }

              while (v9 != v4);
              v10 = v8 + 2;
            }

            result[2] -= v10;
            v3 += v10;
            v11 = v4[1];
            v12 = *v2;
            *(v12 + 8) = v11;
            *v11 = v12;
            v13 = v24;
            v24[1] = v2;
            *v2 = v13;
            v26 = v3;
            v24 = v4;
            v4[1] = &v24;
          }

          if (!v7)
          {
            v5 = v5[1];
          }
        }

        v2 = v5;
      }

      while (v5 != result);
      if (v3)
      {
        result = __p;
        v14 = v4[1];
        v15 = *__p;
        *(v15 + 8) = v14;
        *v14 = v15;
        v26 = 0;
        if (result != &v24)
        {
          do
          {
            v16 = result[1];
            operator delete(result);
            result = v16;
          }

          while (v16 != &v24);
        }
      }
    }
  }

  return result;
}

uint64_t CDelaunayTriangles3D::find_one_delaunay3(CDelaunayTriangles3D *this, const double *a2, const double *a3, const double *a4, int *a5, int a6)
{
  v6 = *(this + 5);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 != 1)
  {
    v12 = this + 24;
    v13 = *(this + 4);
    if (v13 != (this + 24))
    {
      v14 = 0;
      v15 = *(this + 4);
      do
      {
        result = *(v15 + 16);
        if (result != a5 && result != a6)
        {
          v17.f64[0] = a2[a5];
          v18 = a2[a6];
          v19 = a2[result];
          v20.f64[0] = a3[a5];
          v21 = a3[a6];
          v22 = a3[result];
          v23.f64[0] = a4[a5];
          v24 = a4[a6];
          v25 = a4[result];
          if (-(v21 * v19 - v22 * v18) * v23.f64[0] + -(v24 * v22 - v25 * v21) * v17.f64[0] + -(v25 * v18 - v24 * v19) * v20.f64[0] > 0.0)
          {
            v26.f64[0] = v17.f64[0] * v17.f64[0] + v20.f64[0] * v20.f64[0] + v23.f64[0] * v23.f64[0];
            v26.f64[1] = v18 * v18 + v21 * v21 + v24 * v24;
            v17.f64[1] = a2[a6];
            v20.f64[1] = a3[a6];
            v23.f64[1] = a4[a6];
            v27 = v14;
            v28 = v13;
            while (1)
            {
              if (v27)
              {
                v29 = *(v28 + 4);
                if (v29 != a5 && v29 != a6)
                {
                  v31.f64[0] = v19 * v19 + v22 * v22 + v25 * v25;
                  v31.f64[1] = a2[v29] * a2[v29] + a3[v29] * a3[v29] + a4[v29] * a4[v29];
                  v32.f64[0] = a2[result];
                  v32.f64[1] = a2[v29];
                  *v33.i64 = a3[result];
                  *&v33.i64[1] = a3[v29];
                  *v34.i64 = a4[result];
                  *&v34.i64[1] = a4[v29];
                  v35 = vextq_s8(v33, v20, 8uLL);
                  v36 = vextq_s8(v20, v33, 8uLL);
                  v37 = vextq_s8(v34, v23, 8uLL);
                  v38 = vextq_s8(v23, v34, 8uLL);
                  v39 = vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v36, v37)), v38, v35), v32);
                  v40 = vextq_s8(v32, v17, 8uLL);
                  v41 = vextq_s8(v17, v32, 8uLL);
                  v42 = vmlaq_f64(vmlaq_f64(v39, v41, vmlaq_f64(vnegq_f64(vmulq_f64(v35, v34)), v37, v33)), v40, vmlaq_f64(vnegq_f64(vmulq_f64(v33, v38)), v34, v36));
                  v43 = vmulq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v35, v38)), v37, v36), v17), v40, vmlaq_f64(vnegq_f64(vmulq_f64(v36, v23)), v38, v20)), v41, vmlaq_f64(vnegq_f64(vmulq_f64(v20, v37)), v23, v35)), v31);
                  v44 = vmulq_f64(v42, v26);
                  if (vaddvq_f64(vsubq_f64(vzip1q_s64(v44, v43), vzip2q_s64(v44, v43))) > 1.0e-13)
                  {
                    break;
                  }
                }
              }

              v28 = *(v28 + 1);
              --v27;
              if (v28 == v12)
              {
                return result;
              }
            }
          }
        }

        v15 = *(v15 + 8);
        ++v14;
      }

      while (v15 != v12);
    }

    return 0xFFFFFFFFLL;
  }

  v7 = *(*(this + 4) + 16);
  if (v7 == a5 || v7 == a6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2[a6];
  v10 = a2[v7];
  if (-(a3[a6] * v10 - a3[v7] * v9) * a4[a5] + -(a4[a6] * a3[v7] - a4[v7] * a3[a6]) * a2[a5] + -(a4[v7] * v9 - a4[a6] * v10) * a3[a5] <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void CDelaunayTriangles3D::find_delaunay_triangles(uint64_t *a1, double *a2, double *a3, double *a4, std::vector<int> *this, unsigned int a6)
{
  v12 = 3 * (2 * a6 - 4);
  begin = this->__begin_;
  end = this->__end_;
  v15 = end - this->__begin_;
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      end = &begin[v12];
      this->__end_ = end;
    }
  }

  else
  {
    std::vector<int>::__append(this, v12 - v15);
    begin = this->__begin_;
    end = this->__end_;
  }

  if (end - begin >= 1)
  {
    bzero(begin, end - begin);
  }

  if (a1[2])
  {
    v16 = a1[1];
    v17 = *(*a1 + 8);
    v18 = *v16;
    *(v18 + 8) = v17;
    *v17 = v18;
    a1[2] = 0;
    if (v16 != a1)
    {
      do
      {
        v19 = v16[1];
        operator delete(v16);
        v16 = v19;
      }

      while (v19 != a1);
    }
  }

  v20 = a1 + 3;
  v21 = a1[5];
  v22 = v21 - a6;
  if (v21 <= a6)
  {
    if (v21 < a6)
    {
      operator new();
    }
  }

  else
  {
    if (a6 <= v21 >> 1)
    {
      v23 = a1[4];
      if (a6)
      {
        v24 = a6 + 1;
        do
        {
          v23 = v23[1];
          --v24;
        }

        while (v24 > 1);
      }
    }

    else if (v22 < 1)
    {
      v25 = a6 - v21 + 1;
      v23 = a1 + 3;
      do
      {
        v23 = v23[1];
        --v25;
      }

      while (v25 > 1);
    }

    else
    {
      v23 = a1 + 3;
      do
      {
        v23 = *v23;
        --v22;
      }

      while (v22);
    }

    if (v23 != v20)
    {
      v26 = *(*v20 + 8);
      v27 = *v23;
      v27[1] = v26;
      *v26 = v27;
      do
      {
        v28 = v23[1];
        --a1[5];
        operator delete(v23);
        v23 = v28;
      }

      while (v28 != v20);
    }
  }

  v29 = a1[4];
  if (v29 != v20)
  {
    v30 = 0;
    do
    {
      *(v29 + 16) = v30;
      v29 = *(v29 + 8);
      ++v30;
    }

    while (v29 != v20);
  }

  v31 = a6 - 1;
  if (v31 >= 2)
  {
    v32 = 0;
    v33 = (*a3 - a3[1]) * (*a3 - a3[1]) + (*a2 - a2[1]) * (*a2 - a2[1]) + (*a4 - a4[1]) * (*a4 - a4[1]);
    v34 = v31 - 1;
    do
    {
      v35 = *a4 - a4[v32 + 2];
      v36 = (*a2 - a2[v32 + 2]) * (*a2 - a2[v32 + 2]) + (*a3 - a3[v32 + 2]) * (*a3 - a3[v32 + 2]) + v35 * v35;
      ++v32;
      v33 = fmin(v36, v33);
    }

    while (v34 != v32);
  }

  operator new();
}

void sub_1DE064960(void *a1)
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

uint64_t CDelaunayTriangles3D::find_subtriangle_containment(unint64_t this, double a2, double a3, double a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if ((this & 0x8000000000000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 <= -0.00000011920929)
  {
    v4 = 4 * (a2 > -0.00000011920929);
  }

  else
  {
    v4 = (4 * (a2 > -0.00000011920929)) | 2;
  }

  if (a4 <= -0.00000011920929)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (this)
  {
    v5 = (v5 << (2 * this));
    v6 = fabs(a4);
    v7 = fabs(a3);
    v8 = fabs(a2);
    v9 = (this + 1);
    v10 = 2 * this - 2;
    v11 = MEMORY[0x1E69E9C10];
    do
    {
      v13 = v7 + v7;
      v12 = v8 + v8;
      v14 = v6 - (v7 + v8);
      v15 = fmin(v6 + v6, fmin(v7 + v7, v8 - (v6 + v7)));
      v16 = fmin(v14, fmin(v7 + v7, v8 + v8));
      v17 = v15 < v16;
      v18 = v15 < v16;
      v31 = v15;
      v32 = v16;
      v19 = fmin(v6 + v6, fmin(v7 - (v8 + v6), v8 + v8));
      v20 = fmin(v7 + v8 - v6, fmin(v8 - v7 + v6, v6 + v7 - v8));
      v33 = v19;
      v34 = v20;
      v21 = fmax(v15, v16);
      v22 = 8 * v18;
      if (v17)
      {
        v23 = &v32;
      }

      else
      {
        v23 = &v31;
      }

      v24 = fmax(v21, v19);
      if (v21 < v19)
      {
        v22 = 16;
        v23 = &v33;
      }

      if (v24 >= v20)
      {
        v25 = v22;
      }

      else
      {
        v25 = 24;
      }

      if (v24 >= v20)
      {
        v26 = v23;
      }

      else
      {
        v26 = &v34;
      }

      v27 = *(&v31 + v25);
      if (v27 > -0.00000011920929)
      {
        v28 = v26 - &v31;
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            LODWORD(v29) = 2;
LABEL_43:
            v5 = ((v29 << v10) + v5);
            v13 = v7 - (v8 + v6);
LABEL_44:
            v14 = v6 + v6;
            goto LABEL_11;
          }

          if (v28 == 3)
          {
            LODWORD(v29) = 3;
LABEL_39:
            v5 = ((v29 << v10) + v5);
            v12 = v6 + v7 - v8;
            v13 = v8 - v7 + v6;
            v14 = v7 + v8 - v6;
            goto LABEL_11;
          }
        }

        else
        {
          if (!v28)
          {
            goto LABEL_36;
          }

          if (v28 == 1)
          {
            LODWORD(v29) = 1;
            goto LABEL_35;
          }
        }
      }

      if (v27 <= -0.0000011920929)
      {
        goto LABEL_40;
      }

      v29 = v26 - &v31;
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          goto LABEL_43;
        }

        if (v29 != 3)
        {
LABEL_40:
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v36 = "DelaunayTriangles3D.cpp";
            v37 = 1024;
            v38 = 477;
            v39 = 2080;
            v40 = "find_subtriangle_containment";
            v41 = 1024;
            v42 = 477;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: subtriangle still not found in computing rank with relaxed test!", buf, 0x22u);
          }

          v12 = v8;
          v13 = v7;
          v14 = v6;
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      if (!v29)
      {
LABEL_36:
        v12 = v8 - (v6 + v7);
        goto LABEL_44;
      }

      if (v29 != 1)
      {
        goto LABEL_40;
      }

LABEL_35:
      v5 = ((v29 << v10) + v5);
LABEL_11:
      --v9;
      v10 -= 2;
      v6 = v14;
      v7 = v13;
      v8 = v12;
    }

    while (v9 > 1);
  }

  return v5;
}

void CDelaunayTriangles3D::calculate_triangle_bins(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v7 = *a5;
  v6 = a5[1];
  if (v6 != *a5)
  {
    do
    {
      v8 = v6 - 3;
      if (*(v6 - 1))
      {
        v9 = *(v6 - 2);
        v10 = *(*(v6 - 3) + 8);
        v11 = *v9;
        *(v11 + 8) = v10;
        *v10 = v11;
        *(v6 - 1) = 0;
        if (v9 != v8)
        {
          do
          {
            v12 = v9[1];
            operator delete(v9);
            v9 = v12;
          }

          while (v12 != v8);
        }
      }

      v6 = v8;
    }

    while (v8 != v7);
  }

  a5[1] = v7;
  log((((a4[1] - *a4) >> 2) / 3uLL) * 0.125);
  operator new();
}

uint64_t std::list<int>::__sort<std::__less<void,void>>(uint64_t result, uint64_t **a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v4 = *a2;
    if (*(*a2 + 4) < *(result + 16))
    {
      v6 = *v4;
      v5 = v4[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      v7 = *result;
      *(v7 + 8) = v4;
      *v4 = v7;
      *result = v4;
      v4[1] = result;
      return v4;
    }
  }

  else
  {
    v9 = a3 >> 1;
    v10 = (a3 >> 1) + 1;
    v11 = result;
    do
    {
      v11 = *(v11 + 8);
      --v10;
    }

    while (v10 > 1);
    v12 = std::list<int>::__sort<std::__less<void,void>>(result, v11, a3 >> 1);
    result = std::list<int>::__sort<std::__less<void,void>>(v11, a2, a3 - v9);
    v13 = *(v12 + 16);
    if (*(result + 16) >= v13)
    {
      v18 = *(v12 + 8);
      i = result;
      result = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    else
    {
      for (i = *(result + 8); i != a2; i = *(i + 8))
      {
        if (*(i + 16) >= v13)
        {
          break;
        }
      }

      v15 = *i;
      v16 = *(*i + 8);
      v17 = *result;
      *(v17 + 8) = v16;
      *v16 = v17;
      v19 = *v12;
      v18 = *(v12 + 8);
      *(v19 + 8) = result;
      *result = v19;
      *v12 = v15;
      *(v15 + 8) = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    if (i != a2)
    {
      v20 = i;
      do
      {
        v21 = *(v18 + 4);
        if (*(i + 16) >= v21)
        {
          v18 = v18[1];
          if (v18 == v20)
          {
            return result;
          }
        }

        else
        {
          for (j = *(i + 8); j != a2; j = *(j + 8))
          {
            if (*(j + 16) >= v21)
            {
              break;
            }
          }

          v23 = *j;
          v24 = *(*j + 8);
          v25 = *i;
          *(v25 + 8) = v24;
          *v24 = v25;
          if (v20 == i)
          {
            v20 = j;
          }

          v27 = *v18;
          v26 = v18[1];
          *(v27 + 8) = i;
          *i = v27;
          *v18 = v23;
          *(v23 + 8) = v18;
          v18 = v26;
          i = j;
          if (v26 == v20)
          {
            return result;
          }
        }
      }

      while (i != a2);
    }
  }

  return result;
}

BOOL CDelaunayTriangles3D::is_origin_inside_hull(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int16x4_t a6, double a7, float64x2_t a8, float64x2_t a9, double a10, float64x2_t a11, float64x2_t a12)
{
  v17 = a4[1] - *a4;
  __A.i32[0] = 0;
  v18 = *a5;
  v19 = a5[1];
  v20 = (v19 - *a5) >> 2;
  if (v17 >> 2 <= v20)
  {
    if (v17 >> 2 < v20)
    {
      v19 = v18 + v17;
      a5[1] = v18 + v17;
    }
  }

  else
  {
    std::vector<float>::__append(a5, (v17 >> 2) - v20, &__A, a6);
    v18 = *a5;
    v19 = a5[1];
  }

  v21 = (v19 - v18) >> 2;
  if (v21 >= 3)
  {
    v22 = v21 / 3;
    v23 = *a4;
    v24 = 1;
    v25 = 2;
    do
    {
      v26 = 4 * (v25 - 2);
      v27 = *(v23 + v26);
      v28 = *(a1 + 8 * v27);
      a8.f64[0] = *(a2 + 8 * v27);
      v29 = *(v23 + 4 * (v25 - 1));
      a9.f64[0] = *(a3 + 8 * v27);
      v30 = *(a1 + 8 * v29);
      *a11.f64 = *(a2 + 8 * v29);
      v31 = *(v23 + 4 * v25);
      *a8.f64 = a8.f64[0];
      *a12.f64 = *(a3 + 8 * v29);
      *a9.f64 = a9.f64[0];
      v32 = *(a1 + 8 * v31);
      v33 = *(a2 + 8 * v31);
      v34 = *(a3 + 8 * v31);
      *&v28 = v28;
      v35.f64[0] = (v30 - *&v28);
      a11.f64[0] = (*a11.f64 - *a8.f64);
      a12.f64[0] = (*a12.f64 - *a9.f64);
      v36.f64[0] = (v32 - *&v28);
      a8.f64[0] = (v33 - *a8.f64);
      a9.f64[0] = (v34 - *a9.f64);
      v37 = vmulq_f64(a8, a12);
      a12.f64[1] = v35.f64[0];
      v35.f64[1] = a11.f64[0];
      v38 = vmlaq_f64(vnegq_f64(v37), a11, a9);
      a9.f64[1] = v36.f64[0];
      v39 = (v18 + v26);
      v36.f64[1] = a8.f64[0];
      v40 = vmlaq_f64(vnegq_f64(vmulq_f64(a9, v35)), a12, v36);
      v41 = vmulq_f64(v40, v40);
      a9 = vmulq_f64(v38, v38);
      v38.f64[1] = v40.f64[0];
      v41.f64[0] = 1.0 / sqrt(a9.f64[0] + v41.f64[0] + v41.f64[1]);
      a8 = vmulq_laneq_f64(v41, v40, 1);
      *v39 = vcvt_f32_f64(vmulq_n_f64(v38, v41.f64[0]));
      *v41.f64 = a8.f64[0];
      v42 = v22 > v24++;
      v25 += 3;
      v39[1].i32[0] = LODWORD(v41.f64[0]);
    }

    while (v42);
  }

  if ((v19 - v18) < 9)
  {
    return 1;
  }

  v43 = 2;
  for (i = 1; ; ++i)
  {
    v59 = 0;
    __A = 0;
    v45 = 4 * (v43 - 2);
    v46 = 8 * *(*a4 + v45);
    v47 = *(a3 + v46);
    v48 = 8 * *(*a4 + 4 * (v43 - 1));
    v49 = *(a3 + v48) + v47;
    v50 = 8 * *(*a4 + 4 * v43);
    v51 = *(a3 + v50) + v49;
    v52.f64[0] = *(a1 + v46);
    v52.f64[1] = *(a2 + v46);
    v53.f64[0] = *(a1 + v48);
    v53.f64[1] = *(a2 + v48);
    v54 = vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v53, vcvtq_f64_f32(vcvt_f32_f64(v52)))));
    v53.f64[0] = *(a1 + v50);
    v53.f64[1] = *(a2 + v50);
    __A = vcvt_f32_f64(vaddq_f64(v53, v54));
    *&v51 = v51;
    v59 = LODWORD(v51);
    __C = 0.0;
    vDSP_dotpr(&__A, 1, (v18 + v45), 1, &__C, 3uLL);
    result = __C > 0.0;
    if (__C <= 0.0)
    {
      break;
    }

    v56 = i;
    v18 = *a5;
    v43 += 3;
    if (v56 >= ((a5[1] - *a5) >> 2) / 3uLL)
    {
      return 1;
    }
  }

  return result;
}

void MetadataHandler::MetadataHandler(MetadataHandler *this)
{
  *this = 0;
  *(this + 8) = xmmword_1DE09E290;
  *(this + 24) = xmmword_1DE09E2A0;
  *(this + 5) = 0x3F90624DD2F1A9FCLL;
  *(this + 12) = -1;
  if ((gCAVectorUnitType & 1) == 0)
  {
    v1 = this;
    if (getenv("CA_NoVector"))
    {
      fwrite("CA_NoVector set; Vector unit optimized routines will be bypassed\n", 0x41uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    else
    {
      gCAVectorUnitType = 1;
    }

    this = v1;
  }

  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 7) = 0u;
  *(this + 6) = 0xFFFFFFFFLL;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = &unk_1F593A5C0;
  *(this + 149) = 0;
  *(this + 164) = 0xFFFFFFFF00000001;
}

void SoundActivityDetector::~SoundActivityDetector(SoundActivityDetector *this)
{
  v2 = *(this + 1);
  *this = &unk_1F593A5C0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1E12BD160);
}

{
  v1 = *(this + 1);
  *this = &unk_1F593A5C0;
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

uint64_t VoiceActivityDetector::VADProcess<float>(VoiceActivityDetector *a1, uint64_t a2, unsigned int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-v9];
  bzero(&v15[-v9], v11 + 16);
  v12 = v10 & 0xFFFFFFFFFFFFFFF3;
  v16 = 1191182336;
  MEMORY[0x1E12BE940](a2, 1, &v16, v12 + 16, 1, v8);
  if (a3 < 0x140)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v13 = 0;
  do
  {
    v13 |= VoiceActivityDetector::SpxVADProcess(a1, (v12 + 16));
    --a4;
  }

  while (a4);
  return v13 ^ 1u;
}

void PowerMeter::PowerMeter(PowerMeter *this)
{
  *this = 0;
  *(this + 8) = xmmword_1DE09E290;
  *(this + 24) = xmmword_1DE09E2A0;
  *(this + 5) = 0x3F90624DD2F1A9FCLL;
  *(this + 12) = -1;
  if ((gCAVectorUnitType & 1) == 0)
  {
    v1 = this;
    if (getenv("CA_NoVector"))
    {
      fwrite("CA_NoVector set; Vector unit optimized routines will be bypassed\n", 0x41uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    else
    {
      gCAVectorUnitType = 1;
    }

    this = v1;
  }

  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 6) = 0xFFFFFFFFLL;
}

unsigned __int8 *PowerMeter::Process(unsigned __int8 *this, float *a2, int a3, int a4)
{
  v7 = this;
  if (*(this + 12) != a4)
  {
    if (*(this + 1) == 0.0)
    {
      *(this + 8) = xmmword_1DE09E750;
      *(this + 4) = 0x3FEFFEF71A09F35FLL;
    }

    __powidf2();
    v7[3] = 1.0 - v8;
    this = __powidf2();
    v7[5] = 1.0 - v9;
    *(v7 + 12) = a4;
  }

  v10 = v7[8];
  v11 = 0.0;
  if ((a2 & 0xF) != 0 || a3 != 1 || !gCAVectorUnitType)
  {
    v25 = a4;
    if (a4 < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v12 = *(v7 + 10);
  v13 = a4 + 3;
  v14 = 0uLL;
  if ((a4 + 3) >= 7)
  {
    if (a4 >= 0)
    {
      v13 = a4;
    }

    v15 = v13 >> 2;
    v16 = v15 - 1;
    v17 = vdupq_n_s32(0x3DEAEB81u);
    v18 = a2;
    do
    {
      v19 = *v18;
      v18 += 4;
      v14 = vmaxq_f32(v14, vabsq_f32(v19));
      v12 = vmlaq_f32(v12, v17, vmlaq_f32(vnegq_f32(v12), v19, v19));
      --v15;
    }

    while (v15);
    a2 += 4 * v16 + 4;
  }

  v11 = fmaxf(v14.f32[3], fmaxf(v14.f32[2], fmaxf(v14.f32[1], v14.f32[0])));
  v10 = vaddv_f32(*&vpaddq_f32(v12, v12)) * 0.25;
  v20 = vabsq_f32(v12);
  v21 = vcvtq_f64_f32(*v20.f32);
  v22 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
  v23 = vcvt_hight_f64_f32(v20);
  v24 = vdupq_n_s64(0x430C6BF526340000uLL);
  *(v7 + 5) = vandq_s8(v12, vcltzq_s32(vshlq_n_s32(vandq_s8(vuzp1q_s32(vcgtq_f64(v21, v22), vcgtq_f64(v23, v22)), vuzp1q_s32(vcgtq_f64(v24, v21), vcgtq_f64(v24, v23))), 0x1FuLL)));
  if (a4 <= 0)
  {
    v25 = -(-a4 & 3);
  }

  else
  {
    v25 = a4 & 3;
  }

  if (v25 >= 1)
  {
LABEL_20:
    v26 = v25 + 1;
    do
    {
      v11 = fmaxf(fabsf(*a2), v11);
      v10 = v10 + ((*a2 * *a2) - v10) * 0.03;
      --v26;
      a2 += a3;
    }

    while (v26 > 1);
  }

LABEL_22:
  if (v11 > *(v7 + 13))
  {
    *(v7 + 13) = v11;
  }

  v27 = *v7;
  if (v27 == 1)
  {
    v28.f64[0] = v11;
  }

  else
  {
    v29 = v7[13];
    v28.f64[0] = v11;
    if (v29 > v28.f64[0])
    {
      v28.f64[0] = v29 + v7[5] * (v28.f64[0] - v29);
    }
  }

  v30 = *(v7 + 25) + a4;
  *(v7 + 25) = v30;
  v31 = v7[15];
  if (v30 >= (v7[1] * 0.907029478))
  {
    v31 = v31 - v7[3] * v31;
  }

  v32 = sqrt(v10);
  if (v31 < v28.f64[0])
  {
    *(v7 + 25) = 0;
    v31 = v28.f64[0];
  }

  v33 = v32 * 1.41421356;
  if ((v27 & 1) == 0)
  {
    v34 = v7[14];
    if (v34 > v33)
    {
      v33 = v34 + v7[5] * (v33 - v34);
    }
  }

  v35 = fmin(v33, v31);
  v36 = fabs(v10);
  if (v36 <= 1.0e-15 || v36 >= 1.0e15)
  {
    v10 = 0.0;
  }

  v7[8] = v10;
  v28.f64[1] = v35;
  v37 = vabsq_f64(v28);
  *(v7 + 13) = vandq_s8(v28, vcltzq_s64(vshlq_n_s64(vandq_s8(vcgtq_f64(v37, vdupq_n_s64(0x3CD203AF9EE75616uLL)), vcgtq_f64(vdupq_n_s64(0x430C6BF526340000uLL), v37)), 0x3FuLL)));
  v38 = fabs(v31);
  if (v38 > 1.0e-15 && v38 < 1.0e15)
  {
    v39 = v31;
  }

  else
  {
    v39 = 0.0;
  }

  v7[15] = v39;
  return this;
}

void VoiceActivityDetector::~VoiceActivityDetector(VoiceActivityDetector *this)
{
  VoiceActivityDetector::~VoiceActivityDetector(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593A478;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = v2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      v2 = v4;
    }

    MEMORY[0x1E12BD160](v2, 0x20C40A4A59CD2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x1E12BD130](v5, 0x1000C8052888210);
  }

  v6 = *(this + 7);
  if (v6)
  {
    MEMORY[0x1E12BD130](v6, 0x1000C8052888210);
  }

  v7 = *(this + 4);
  v8 = v7[1];
  if (v8)
  {
    MEMORY[0x1E12BD130](v8, 0x1000C8052888210);
  }

  v9 = v7[2];
  if (v9)
  {
    MEMORY[0x1E12BD130](v9, 0x1000C8052888210);
  }

  v10 = v7[3];
  if (v10)
  {
    MEMORY[0x1E12BD130](v10, 0x1000C8052888210);
  }

  v11 = v7[4];
  if (v11)
  {
    MEMORY[0x1E12BD130](v11, 0x1000C8052888210);
  }

  v12 = v7[7];
  if (v12)
  {
    MEMORY[0x1E12BD130](v12, 0x1000C8052888210);
  }

  v13 = v7[8];
  if (v13)
  {
    MEMORY[0x1E12BD130](v13, 0x1000C8052888210);
  }

  v14 = v7[5];
  if (v14)
  {
    MEMORY[0x1E12BD130](v14, 0x1000C8052888210);
  }

  v15 = *(this + 4);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 1);
  v17 = v16[5];
  if (v17)
  {
    MEMORY[0x1E12BD130](v17, 0x1000C8052888210);
  }

  v18 = v16[6];
  if (v18)
  {
    MEMORY[0x1E12BD130](v18, 0x1000C8052888210);
  }

  v19 = v16[7];
  if (v19)
  {
    MEMORY[0x1E12BD130](v19, 0x1000C8052888210);
  }

  v20 = v16[8];
  if (v20)
  {
    MEMORY[0x1E12BD130](v20, 0x1000C8052888210);
  }

  v21 = v16[10];
  if (v21)
  {
    MEMORY[0x1E12BD130](v21, 0x1000C8052888210);
  }

  v22 = v16[11];
  if (v22)
  {
    MEMORY[0x1E12BD130](v22, 0x1000C8052888210);
  }

  v23 = v16[12];
  if (v23)
  {
    MEMORY[0x1E12BD130](v23, 0x1000C8052888210);
  }

  v24 = v16[13];
  if (v24)
  {
    MEMORY[0x1E12BD130](v24, 0x1000C8052888210);
  }

  v25 = v16[14];
  if (v25)
  {
    MEMORY[0x1E12BD130](v25, 0x1000C8052888210);
  }

  v26 = v16[15];
  if (v26)
  {
    MEMORY[0x1E12BD130](v26, 0x1000C8052888210);
  }

  v27 = v16[16];
  if (v27)
  {
    MEMORY[0x1E12BD130](v27, 0x1000C8052888210);
  }

  v28 = v16[17];
  if (v28)
  {
    MEMORY[0x1E12BD130](v28, 0x1000C8052888210);
  }

  v29 = v16[23];
  if (v29)
  {
    MEMORY[0x1E12BD130](v29, 0x1000C8052888210);
  }

  v30 = v16[24];
  if (v30)
  {
    MEMORY[0x1E12BD130](v30, 0x1000C8052888210);
  }

  v31 = *(this + 1);
  if (v31)
  {
    MEMORY[0x1E12BD160](v31, 0x10A0C401EE7F367);
  }
}

uint64_t VoiceActivityDetector::SpxVADProcess(VoiceActivityDetector *this, float *a2)
{
  v48[1] = v48;
  v58 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = *(this + 7);
  v6 = *(this + 5);
  v7 = *(v4 + 200);
  v8 = *(this + 6);
  v48[0] = *(v4 + 56);
  if (v7 + 1 < ((v8 * 30.0) / v6))
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = ((v8 * 30.0) / v6);
  }

  *(v4 + 200) = v9;
  ++*(v4 + 208);
  v10 = v9 <= ((v8 * 0.5) / v6);
  v11 = 176;
  if (!v10)
  {
    v11 = 172;
  }

  v57 = *(v4 + v11);
  v56 = 1.0 - v57;
  v12 = v6 + v5;
  v13 = 4 * (v6 + v5);
  MEMORY[0x1EEE9AC00](this);
  v14 = (v13 + 31) & 0xFFFFFFFFFFFFFFF0;
  bzero(v48 - v14, v13 + 16);
  MEMORY[0x1EEE9AC00](v15);
  bzero(v48 - v14, v13 + 16);
  v16 = ((v48 - v14) & 0xFFFFFFFFFFFFFFF3) + 16;
  VoiceActivityDetector::preprocess_analysis(this, a2);
  v17 = 4 * v6;
  MEMORY[0x1EEE9AC00](v18);
  bzero(v48 - ((v17 + 31) & 0xFFFFFFFFFFFFFFF0), v17 + 16);
  v19 = (v48 - ((4 * v6 + 31) & 0xFFFFFFFFFFFFFFF0)) & 0xFFFFFFFFFFFFFFF3;
  __C = 0.0;
  MEMORY[0x1E12BE7F0](*(v4 + 56), 1, *(v4 + 64), 1, v19 + 16, 1, v6);
  vDSP_sve((v19 + 16), 1, &__C, v6);
  vDSP_vclr((v19 + 16), 1, v6);
  v54 = 0.0;
  MEMORY[0x1E12BE7F0](*(v4 + 56), 1, *(v4 + 56), 1, v19 + 16, 1, v6);
  vDSP_sve((v19 + 16), 1, &v54, v6);
  vDSP_vclr((v19 + 16), 1, v6);
  v53 = 0.0;
  MEMORY[0x1E12BE7F0](*(v4 + 64), 1, *(v4 + 64), 1, v19 + 16, 1, v6);
  vDSP_sve((v19 + 16), 1, &v53, v6);
  v20 = 0.0;
  if (v54 > 0.0 && v53 > 0.0)
  {
    v20 = __C / sqrtf(v53 * v54);
  }

  v21 = ((v48 - v14) & 0xFFFFFFFFFFFFFFF3) + 16;
  *(v4 + 72) = v20;
  v22 = expf(v20 * -26.49) * 8000000.0;
  memcpy(*(v4 + 64), *(v4 + 56), 4 * v6);
  VoiceActivityDetector::update_noise_prob(this);
  MEMORY[0x1E12BE940](*(v4 + 56) + v17, 1, &v57, v16 + v17, 1, v5);
  MEMORY[0x1E12BE8F0](*(v4 + 88) + v17, 1, &v56, v16 + v17, 1, v16 + v17, 1, v5);
  if (v5 >= 1)
  {
    v23 = *(v4 + 136);
    v24 = 4 * v6;
    v25 = v5;
    do
    {
      if (*v23 <= 0.0)
      {
        *(*(v4 + 88) + v24) = *(v16 + v24);
      }

      v24 += 4;
      ++v23;
      --v25;
    }

    while (v25);
  }

  v26 = fminf(v22, 0.1);
  __B = 0.0;
  v52 = -1082130432;
  v49 = 100.0;
  __A = 1.0;
  vDSP_vclr((v16 + v17), 1, v5);
  MEMORY[0x1E12BE5D0](v16 + v17, 1, *(v4 + 88) + v17, 1, v16 + v17, 1, v5);
  MEMORY[0x1E12BE8A0](v16 + v17, 1, &__A, v16 + v17, 1, v5);
  vDSP_svdiv(&__A, (v16 + v17), 1, (v21 + v17), 1, v5);
  MEMORY[0x1E12BE7E0](v48[0] + v17, 1, v21 + v17, 1, &v52, *(v4 + 96) + v17, 1, v5);
  vDSP_vclip((*(v4 + 96) + v17), 1, &__B, &v49, (*(v4 + 96) + v17), 1, v5);
  MEMORY[0x1E12BE9A0](*(v4 + 96) + v17, 1, *(v4 + 104) + v17, 1, v21 + v17, 1, v5);
  vDSP_vthres((v21 + v17), 1, &__B, (v16 + v17), 1, v5);
  MEMORY[0x1E12BE9A0](v16 + v17, 1, v21 + v17, 1, v21 + v17, 1, v5);
  MEMORY[0x1E12BE8F0](v21 + v17, 1, v4 + 160, *(v4 + 96) + v17, 1, v21 + v17, 1, v5);
  MEMORY[0x1E12BE8F0](v16 + v17, 1, v4 + 164, v21 + v17, 1, *(v4 + 104) + v17, 1, 5);
  MEMORY[0x1E12BE8F0](v16 + v17 + 20, 1, v4 + 168, v21 + v17 + 20, 1, *(v4 + 104) + v17 + 20, 1, v5 - 5);
  if (v5 < 1)
  {
    v30 = 0.0;
  }

  else
  {
    v27 = *(v4 + 104);
    if (v6 + 1 > v12)
    {
      v28 = v6 + 1;
    }

    else
    {
      v28 = v12;
    }

    v29 = v28 - v6;
    if (v29 >= 8)
    {
      v31 = v29 & 0xFFFFFFFFFFFFFFF8;
      v32 = (v27 + 4 * v6 + 16);
      v33 = 0uLL;
      __asm { FMOV            V1.4S, #1.0 }

      v39 = v29 & 0xFFFFFFFFFFFFFFF8;
      v40 = 0uLL;
      do
      {
        v33 = vbslq_s8(vcgtq_f32(v32[-1], _Q1), vaddq_f32(v32[-1], v33), v33);
        v40 = vbslq_s8(vcgtq_f32(*v32, _Q1), vaddq_f32(*v32, v40), v40);
        v32 += 2;
        v39 -= 8;
      }

      while (v39);
      v41 = vaddq_f32(v40, v33);
      v30 = vaddv_f32(*&vpaddq_f32(v41, v41));
      if (v29 == v31)
      {
        goto LABEL_28;
      }

      v6 += v31;
    }

    else
    {
      v30 = 0.0;
    }

    do
    {
      v42 = *(v27 + 4 * v6);
      if (v42 > 1.0)
      {
        v30 = v42 + v30;
      }

      ++v6;
    }

    while (v6 < v12);
  }

LABEL_28:
  v43 = v30 / *(this + 7);
  v44 = (0.899 / ((0.5 / v43) + 1.0)) + 0.1;
  *(v4 + 144) = v43;
  *(v4 + 148) = v44;
  v45 = *(v4 + 152);
  if (v44 <= v45)
  {
    v46 = v45 + ((v44 - v45) * v26);
  }

  else
  {
    v46 = v44;
  }

  *(v4 + 152) = v46;
  if (!*v4)
  {
    return 1;
  }

  if (v46 > *(v4 + 4) || *(v4 + 204) && v46 > *(v4 + 8))
  {
    result = 1;
    *(v4 + 204) = 1;
  }

  else
  {
    result = 0;
    *(v4 + 204) = 0;
  }

  return result;
}

float VoiceActivityDetector::preprocess_analysis(VoiceActivityDetector *this, float *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = 2 * v6 - v5;
  v8 = v5 - v7;
  v9 = *(v4 + 56);
  v10 = 4 * v7;
  memcpy(*(v4 + 40), *(v4 + 184), v10);
  memcpy((*(v4 + 40) + v10), a2, 4 * *(this + 4));
  memcpy(*(v4 + 184), &a2[v8], v10);
  v11 = MEMORY[0x1E12BE7F0](*(v4 + 40), 1, *(v4 + 80), 1, *(v4 + 40), 1, 2 * v6);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 31) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12 + 16);
  v14 = (v13 & 0xFFFFFFFFFFFFFFF3) + 16;
  __Z.realp = v14;
  __Z.imagp = (v14 + 4 * v6);
  vDSP_ctoz(*(v4 + 40), 2, &__Z, 1, v6);
  v15 = *(this + 5);
  if (v15)
  {
    if (!*v15)
    {
      abort();
    }

    vDSP_DFT_Execute(*(*v15 + 1), __Z.realp, __Z.imagp, __Z.realp, __Z.imagp);
    LODWORD(v19.realp) = 1056964608;
    MEMORY[0x1E12BE940](__Z.realp, 1, &v19, __Z.realp, 1, **v15 >> 1);
    MEMORY[0x1E12BE940](__Z.imagp, 1, &v19, __Z.imagp, 1, **v15 >> 1);
  }

  __B = v6 + v6;
  vDSP_vsdiv(v14, 1, &__B, v14, 1, 2 * v6);
  v19.realp = (v14 + 4 * v6 + 4);
  v19.imagp = (v14 + 8);
  vDSP_ztoc(&v19, 1, (*(v4 + 48) + 8), 2, v6 - 2);
  v16 = *(v4 + 48);
  *v16 = *v14;
  v16[1] = *(v14 + 4);
  v17 = 8 * v6 - 4;
  v16[2 * v6 - 2] = *(v14 + v17);
  *(v16 + v17) = *(v14 + 4 * v6);
  vDSP_zvmags(&__Z, 1, v9, 1, v6);
  *v9 = *__Z.realp * *__Z.realp;
  return VPFilterBank::filterbank32_compute(*(this + 4), v9, &v9[v6]);
}

uint64_t VoiceActivityDetector::update_noise_prob(VoiceActivityDetector *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(this + 5);
  v4 = *(this + 7);
  MEMORY[0x1EEE9AC00](this);
  bzero(&v13[-((4 * v4 + 31) & 0xFFFFFFFFFFFFFFF0)], 4 * v4 + 16);
  v5 = &v13[-((4 * v4 + 31) & 0xFFFFFFFFFFFFFFF0)] & 0xFFFFFFFFFFFFFFF3;
  v6 = *(v2 + 156);
  *(v5 + 16) = 0;
  v7 = v5 + 16;
  v15 = 0.667 - (v6 * 0.667);
  v16 = 0.333 - (v6 * 0.333);
  MEMORY[0x1E12BE940](*(v2 + 56) + 4 * v3, 1, &v16, v7 + 4, 1, v4 - 1);
  MEMORY[0x1E12BE8F0](*(v2 + 56) + 4 * v3 + 4, 1, &v16, v7, 1, v7, 1, v4 - 1);
  MEMORY[0x1E12BE8F0](*(v2 + 56) + 4 * v3, 1, &v15, v7, 1, v7, 1, v4);
  MEMORY[0x1E12BE8F0](*(v2 + 112), 1, v2 + 156, v7, 1, *(v2 + 112), 1, v4);
  v8 = *(v2 + 200);
  if (v8 == 1)
  {
    vDSP_vclr(*(v2 + 120), 1, v4);
    vDSP_vclr(*(v2 + 128), 1, v4);
    v8 = *(v2 + 200);
  }

  v9 = *(this + 6);
  v10 = (v9 * 0.2) / v3;
  if (v10 <= v8 && (v9 / v3) <= v8)
  {
    v10 = (v9 + v9) / v3;
  }

  if (*(v2 + 208) <= v10)
  {
    vDSP_vmin(*(v2 + 120), 1, *(v2 + 112), 1, *(v2 + 120), 1, v4);
    vDSP_vmin(*(v2 + 128), 1, *(v2 + 112), 1, *(v2 + 128), 1, v4);
  }

  else
  {
    *(v2 + 208) = 0;
    vDSP_vmin(*(v2 + 128), 1, *(v2 + 112), 1, *(v2 + 120), 1, v4);
    memcpy(*(v2 + 128), *(v2 + 112), 4 * v4);
  }

  v14 = 1082130432;
  MEMORY[0x1E12BE940](*(v2 + 120), 1, &v14, v7, 1, v4);
  return MEMORY[0x1E12BE9A0](v7, 1, *(v2 + 112), 1, *(v2 + 136), 1, v4);
}

void CreateMagicalWindow(float32x4_t *a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = a2;
    if (a2 < 4)
    {
      v5 = 0;
LABEL_8:
      v35 = 1.0 / v3;
      while (1)
      {
        v36 = (v5 * 4.0) * v35;
        if (v36 >= 1.0)
        {
          if (v36 < 2.0)
          {
            v37 = 0;
            v36 = 2.0 - v36;
            goto LABEL_11;
          }

          if (v36 < 3.0)
          {
            v37 = 0;
            v36 = v36 + -2.0;
            goto LABEL_11;
          }

          v36 = 4.0 - v36;
        }

        v37 = 1;
LABEL_11:
        v38 = v36 * 1.27188667;
        v39 = cosf(v38 * 1.5708);
        v40 = (0.5 - (v39 * 0.5)) * (0.5 - (v39 * 0.5));
        if (!v37)
        {
          v40 = 1.0 - v40;
        }

        a1->f32[v5++] = sqrtf(v40);
        if (v4 == v5)
        {
          return;
        }
      }
    }

    v5 = a2 & 0x7FFFFFFC;
    v6 = xmmword_1DE096230;
    __asm { FMOV            V2.4S, #1.0 }

    v47 = _Q2;
    __asm
    {
      FMOV            V3.4S, #3.0
      FMOV            V2.4S, #4.0
    }

    v43 = _Q2;
    v44 = _Q3;
    v41 = vdupq_n_s32(0x3FC90FDBu);
    v42 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v14 = a1;
    v15 = v5;
    do
    {
      v46 = v6;
      v16 = vmulq_n_f32(vcvtq_f32_u32(v6), 4.0 / v3);
      v17 = vmovn_s32(vcgeq_f32(v16, v47));
      v18.i64[0] = 0x4000000040000000;
      v18.i64[1] = 0x4000000040000000;
      v19 = vmovn_s32(vcgtq_f32(v18, v16));
      v20 = vbic_s8(v17, v19);
      v21 = vmovn_s32(vcgtq_f32(v44, v16));
      v22 = vbic_s8(v20, v21);
      v23 = vand_s8(v20, v21);
      v24.i64[0] = 0xC0000000C0000000;
      v24.i64[1] = 0xC0000000C0000000;
      v25 = vand_s8(v17, v19);
      v26 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v22), 0x1FuLL)), vsubq_f32(v43, v16), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v23), 0x1FuLL)), vaddq_f32(v16, v24), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v25), 0x1FuLL)), vsubq_f32(v18, v16), v16)));
      v45 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v22, vorr_s8(v23, v25))), 0x1FuLL));
      v51 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v26.f32), v42)), vmulq_f64(vcvt_hight_f64_f32(v26), v42)), v41);
      v48 = cosf(v51.f32[1]);
      v27.f32[0] = cosf(v51.f32[0]);
      v27.f32[1] = v48;
      v49 = v27;
      v28 = cosf(v51.f32[2]);
      v29 = v49;
      v29.f32[2] = v28;
      v50 = v29;
      v30 = cosf(v51.f32[3]);
      v31 = v50;
      v31.f32[3] = v30;
      v32.i64[0] = 0x3F0000003F000000;
      v32.i64[1] = 0x3F0000003F000000;
      v33 = vmlsq_f32(v32, v32, v31);
      v34 = vmulq_f32(v33, v33);
      *v14++ = vsqrtq_f32(vbslq_s8(v45, v34, vsubq_f32(v47, v34)));
      v34.i64[0] = 0x400000004;
      v34.i64[1] = 0x400000004;
      v6 = vaddq_s32(v46, v34);
      v15 -= 4;
    }

    while (v15);
    if (v5 != v4)
    {
      goto LABEL_8;
    }
  }
}

void calc_alpha_TE(float a1, float a2, float a3)
{
  v3 = a1 / (a2 * 1000.0);
  v4 = floor(v3);
  v5 = ceil(v3);
  if (v4 == v5)
  {
    if (v4)
    {
      v7 = a3 * -0.01;
      powf(v7 + 1.0, 1.0 / v4);
    }
  }

  else
  {
    v6 = a3 * 0.01;
    if (v4)
    {
      powf(1.0 - v6, 1.0 / v4);
    }

    if (v5)
    {
      powf(1.0 - v6, 1.0 / v5);
    }
  }
}

uint64_t VBAP::initialize(uint64_t a1, uint64_t *a2, uint64_t *a3, char **a4, uint64_t *a5)
{
  v5 = a1;
  v145 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  *(a1 + 16) = v6;
  if (*(a1 + 4))
  {
    v9 = 0;
    v10 = 0;
    v11 = *a2;
    v12 = *a3;
    do
    {
      v21 = *(v11 + 4 * v10);
      v22 = *(v12 + 4 * v10);
      v23 = v5[3];
      if (v6 < v23)
      {
        *v6 = v21;
        *(v6 + 1) = v22;
        v6 += 8;
      }

      else
      {
        v24 = v5[1];
        v25 = v6 - v24;
        v26 = (v6 - v24) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v28 = v23 - v24;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (!(v29 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v30 = v26;
        v31 = v5;
        v32 = (8 * v26);
        *v32 = v21;
        v32[1] = v22;
        v6 = (8 * v26 + 8);
        v33 = &v32[-2 * v30];
        memcpy(v33, v24, v25);
        v31[1] = v33;
        v31[2] = v6;
        v31[3] = 0;
        v5 = v31;
        if (v24)
        {
          operator delete(v24);
        }
      }

      v5[2] = v6;
      v11 = *a2;
      v12 = *a3;
      v13 = v5[7];
      v14 = (v13 + 4 * v9);
      v15 = *(*a2 + 4 * v10) * 0.0174532925;
      v16 = __sincos_stret(*(*a3 + 4 * v10) * 0.0174532925);
      v17 = __sincos_stret(v15);
      v18 = v16.__cosval * v17.__cosval;
      v19 = v16.__cosval * v17.__sinval;
      *v14 = v18;
      v14[1] = v19;
      sinval = v16.__sinval;
      v14[2] = sinval;
      ++v10;
      v9 += 3;
    }

    while (v10 < *(v5 + 1));
  }

  else
  {
    v13 = *(a1 + 56);
  }

  v34 = (v5[8] - v13) >> 2;
  if (v34 >= 3)
  {
    if (v34 >> 62 != 3)
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (VBAP::find_duplicate_vertex(0, 0, 0, (v34 / 3)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 121;
      v141 = 2080;
      v142 = "initialize";
      v143 = 1024;
      v144 = 121;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Duplicate vertices were found", buf, 0x22u);
    }

    return 4294967246;
  }

  if (v5[2] - v5[1] == 16)
  {
    LODWORD(__C) = 0;
    vDSP_distancesq(v5[7], 1, (v5[7] + 12), 1, &__C, 3uLL);
    if (fabsf(*&__C + -4.0) < 0.00001)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 130;
        v141 = 2080;
        v142 = "initialize";
        v143 = 1024;
        v144 = 130;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d CADSPUtility:%s:%d: Diametrically opposed speakers; No need to generate convex hull", buf, 0x22u);
      }

      v35 = 0;
      *(v5 + 313) = 1;
      return v35;
    }

    *(v5 + 313) = 0;
  }

  if (*(v5 + 1) == 1)
  {
    *(v5 + 312) = 1;
    v36 = v5[10];
    if (v5[11] != v36)
    {
      v5[11] = v36;
    }

    return 0;
  }

  if (((v5[8] - v5[7]) >> 2) > 2)
  {
    operator new();
  }

  *(v5 + 312) = 1;
  *v5 = 0;
  *&buf[8] = 0;
  *buf = 0;
  LODWORD(v137) = 0;
  __C = 0;
  v139 = 0.0;
  __A = 0;
  v135 = 0.0;
  v134 = 0;
  v37 = *(v5 + 1);
  __B = 0.0;
  v132 = 0.0;
  v133 = 0.0;
  if (v37 != -1)
  {
    operator new();
  }

  v38 = v5[7];
  v39 = 0;
  v40 = 0;
  do
  {
    *(8 * v39) = *(v38 + 4 * v40);
    *(8 * v39) = *(v38 + 4 * (v40 + 1));
    *(8 * v39++) = *(v38 + 4 * (v40 + 2));
    v40 += 3;
  }

  while (v39 != 0xFFFFFFFFLL);
  vDSP_meanvD(0, 1, &__B, 0);
  vDSP_meanvD(0, 1, &v133, (*(v5 + 1) + 1));
  vDSP_meanvD(0, 1, &v132, (*(v5 + 1) + 1));
  __B = -__B;
  v132 = -v132;
  v133 = -v133;
  vDSP_vsaddD(0, 1, &__B, 0, 1, (*(v5 + 1) + 1));
  vDSP_vsaddD(0, 1, &v133, 0, 1, (*(v5 + 1) + 1));
  vDSP_vsaddD(0, 1, &v132, 0, 1, (*(v5 + 1) + 1));
  v43 = *(v5 + 1);
  v44 = (v43 + 1);
  if (v44 >= 4)
  {
    v52 = 0;
    v53 = 2;
    v54 = 1;
    v45 = 1;
    do
    {
      if (v52 + 2 < v44)
      {
        v55.f64[0] = *(8 * v52);
        v55.f64[1] = v55.f64[0];
        v41.f64[0] = v55.f64[0];
        v56.f64[0] = v55.f64[0];
        *&v56.f64[1] = vextq_s8(v55, v55, 8uLL).u64[0];
        v57 = v54;
        v58 = v53;
        while (2)
        {
          v59 = (8 * v58);
          v60 = v59;
          v61 = v59;
          v62.f64[0] = *(8 * v57);
          v62.f64[1] = v62.f64[0];
          v42.f64[0] = v62.f64[0];
          v65 = vsubq_f64(v62, v56);
          v63 = vextq_s8(v65, v65, 8uLL);
          v64 = vsubq_f64(v42, v41);
          v66.f64[0] = v64.f64[0];
          v66.f64[1] = v65.f64[0];
          v65.f64[1] = v63.f64[0];
          *&v66.f64[1] = vextq_s8(v66, v66, 8uLL).u64[0];
          v67 = v58;
          do
          {
            v68.f64[0] = *v61;
            v42.f64[0] = *v59;
            v68.f64[1] = *v60;
            v69 = vsubq_f64(v68, __PAIR128__(*&v56.f64[1], *&v55.f64[0]));
            v70 = vsubq_f64(v42, v41);
            v71 = vmulq_f64(v70, v63);
            v70.f64[1] = v69.f64[0];
            v72 = vmlaq_f64(vnegq_f64(vmulq_f64(v69, v66)), v65, v70);
            v73 = vmlaq_laneq_f64(vnegq_f64(v71), v64, v69, 1);
            v42.f64[0] = v73.f64[0];
            v42.f64[1] = v72.f64[0];
            if (vaddvq_f64(vabsq_f64(v42)) + vabsq_f64(vdupq_laneq_s64(v72, 1)).f64[0] > 0.05)
            {
              v74 = 0;
              v75.f64[0] = v72.f64[0];
              *&v75.f64[1] = vextq_s8(v72, v72, 8uLL).u64[0];
              v76 = vmulq_f64(v75, v75);
              *v76.f64 = sqrt(vmulq_f64(v73, v73).f64[0] + v76.f64[0] + v76.f64[1]);
              v77 = 1.0 / *v76.f64;
              while (1)
              {
                if (v52 != v74 && v57 != v74 && v67 != v74)
                {
                  v78.f64[0] = *(8 * v74);
                  v78.f64[1] = v78.f64[0];
                  v65.f64[0] = v78.f64[0];
                  v65 = vmulq_laneq_f64(vsubq_f64(v65, v41), v72, 1);
                  if (fabs((vaddvq_f64(vmulq_f64(vsubq_f64(v78, v55), v42)) + v65.f64[0]) * v77) > 0.01)
                  {
                    break;
                  }
                }

                if (v44 == ++v74)
                {
                  goto LABEL_43;
                }
              }

              v45 = 0;
              goto LABEL_44;
            }

            ++v67;
            ++v59;
            ++v60;
            ++v61;
          }

          while (v44 > v67);
          ++v57;
          ++v58;
          if (v57 != v43)
          {
            continue;
          }

          break;
        }
      }

      ++v52;
      ++v53;
      ++v54;
    }

    while (v52 != v43 - 1);
  }

  else
  {
LABEL_43:
    v45 = 1;
  }

LABEL_44:
  operator delete(0);
  operator delete(0);
  operator delete(0);
  v46 = *(v5 + 1);
  if (v45)
  {
    if (v46 >= 3)
    {
      operator new();
    }

    v79 = v5;
    vDSP_meanv(v5[7], 3, buf, v46);
    vDSP_meanv((v79[7] + 4), 3, &buf[4], *(v79 + 1));
    vDSP_meanv((v79[7] + 8), 3, &buf[8], *(v79 + 1));
    v100 = vnegq_f32(*buf);
    LODWORD(v137) = v100.i32[2];
    __C = v100.i64[0];
    v101 = *(v5 + 1);
    if (v101 < 2)
    {
      v82.f64[0] = 0.0;
      v114 = 0.0;
    }

    else
    {
      v102 = v5[7];
      v107 = vcvtq_f64_f32(vadd_f32(*v102, *buf));
      v106.f64[0] = (v102[1].f32[0] + *&buf[8]);
      v106.f64[1] = v107.f64[0];
      v103 = vextq_s8(v107, v107, 8uLL);
      v104 = v101 - 2;
      v105 = 5;
      *&v106.f64[1] = vextq_s8(v106, v106, 8uLL).u64[0];
      v107.f64[1] = v103.f64[0];
      v108 = vdup_n_s32(0x3727C5ACu);
      do
      {
        v109 = v104;
        v110.i32[0] = v102[-1].i32[v105];
        v110.i32[1] = v102->i32[v105 - 1];
        v111 = vcvtq_f64_f32(vadd_f32(v110, *buf));
        v82.f64[0] = (v102->f32[v105] + *&buf[8]);
        v81.f64[0] = (v102[1].f32[0] + *&buf[8]);
        v112 = vmlaq_f64(vnegq_f64(vmulq_laneq_f64(v81, v111, 1)), v103, v82);
        v82.f64[1] = v111.f64[0];
        v82 = vmulq_f64(v82, v107);
        v113 = vmlaq_f64(vnegq_f64(v82), v106, v111);
        *&v82.f64[0] = vcvt_f32_f64(vzip1q_s64(v112, v113));
        v114 = *&v113.i64[1];
        if (fabsf(*v82.f64) >= 0.00001)
        {
          break;
        }

        v115.i32[1] = HIDWORD(v82.f64[0]);
        v115.f32[0] = *&v113.i64[1];
        v116 = vcge_f32(vabs_f32(v115), v108);
        if (v116.i8[4])
        {
          break;
        }

        if (v116.i8[0])
        {
          break;
        }

        --v104;
        v105 += 3;
      }

      while (v109);
    }

    __A = vadd_f32(*&v82.f64[0], *v100.f32);
    v134 = vsub_f32(*v100.f32, *&v82.f64[0]);
    v139 = v114 + v100.f32[2];
    v135 = v100.f32[2] - v114;
    VBAP::lineUnitSphereIntersection(&__A, &v134, v5[10], v80);
    goto LABEL_102;
  }

  vDSP_meanv(v5[7], 3, buf, v46);
  vDSP_meanv((v5[7] + 4), 3, &buf[4], *(v5 + 1));
  vDSP_meanv((v5[7] + 8), 3, &buf[8], *(v5 + 1));
  if ((vaddv_f32(vabs_f32(*buf)) + fabsf(*&buf[8])) >= 0.00003)
  {
    v49 = vnegq_f32(*buf);
    LODWORD(v137) = v49.i32[2];
    __C = v49.i64[0];
    VBAP::lineUnitSphereIntersection(buf, &__C, v5[10], v47);
    if (v5[39])
    {
      goto LABEL_71;
    }

    v50 = v5[10];
    v51 = v5[11] - v50;
    if ((v51 >> 2) <= 2)
    {
      std::vector<float>::__append((v5 + 10), 3 - (v51 >> 2));
      goto LABEL_71;
    }

    if (v51 == 12)
    {
      goto LABEL_71;
    }

    v48 = v50 + 12;
    goto LABEL_49;
  }

  v48 = v5[10];
  if (v5[11] != v48)
  {
LABEL_49:
    v5[11] = v48;
  }

LABEL_71:
  v83 = (v5[11] - v5[10]) >> 2;
  if (v83 >= 3)
  {
    v84 = *(v5 + 1);
    if (v84)
    {
      LODWORD(v85) = 0;
      v86 = 0;
      v87 = v83 / 3;
LABEL_75:
      v88 = 0;
      v91 = 3 * v84;
      while (1)
      {
        v90 = v5[7];
        v89 = v5[10];
        if (((vabds_f32(*(v89 + 4 * (3 * v85 + 1)), *(v90 + 4 * (v88 + 1))) + vabds_f32(*(v89 + 4 * (3 * v85)), *(v90 + 4 * v88))) + vabds_f32(*(v89 + 4 * (3 * v85 + 2)), *(v90 + 4 * (v88 + 2)))) < 0.00000035763)
        {
          break;
        }

        v88 += 3;
        if (v91 == v88)
        {
          goto LABEL_84;
        }
      }

      v92 = v86;
      v93 = v86 >> 2;
      if (((v86 >> 2) + 1) >> 62)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      if (v86 >> 2 != -1)
      {
        if (!(((v86 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v93) = v85;
      v86 = 4 * v93 + 4;
      memcpy(0, 0, v92);
LABEL_84:
      while (1)
      {
        v85 = (v85 + 1);
        if (v87 <= v85)
        {
          break;
        }

        v84 = *(v5 + 1);
        if (*(v5 + 1))
        {
          goto LABEL_75;
        }
      }

      if (v86)
      {
        v94 = 0;
        v95 = v86 >> 2;
        v96 = v5[11];
        v97 = 1;
        do
        {
          v98 = v5[10] + 12 * *(4 * v94);
          v99 = v96 - (v98 + 12);
          if (v96 != v98 + 12)
          {
            memmove((v5[10] + 12 * *(4 * v94)), (v98 + 12), v96 - (v98 + 12));
          }

          v96 = v98 + v99;
          v5[11] = v98 + v99;
          v94 = v97++;
        }

        while (v95 > v94);
        operator delete(0);
      }
    }
  }

LABEL_102:
  v117 = ((v5[11] - v5[10]) >> 2) / 3uLL;
  v5[38] = v117;
  v118 = v5[16];
  v119 = (v5[17] - v118) >> 2;
  if (v117 <= v119)
  {
    v120 = v5;
    if (v117 < v119)
    {
      v5[17] = v118 + 4 * v117;
    }
  }

  else
  {
    std::vector<float>::__append((v5 + 16), v117 - v119);
    v120 = v5;
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v120 + 32), *(v120 + 56), *(v120 + 64), (*(v120 + 64) - *(v120 + 56)) >> 2);
  v127 = *(v120 + 80);
  for (i = *(v120 + 88); v127 != i; ++v127)
  {
    std::vector<float>::push_back[abi:ne200100]((v120 + 32), v127);
  }

  v35 = VBAP::delaunayTriangulation(v120, (v120 + 32), a4, a5, v121, v122, v123, v124, v125);
  if (v35 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 203;
    v141 = 2080;
    v142 = "initialize";
    v143 = 1024;
    v144 = 203;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP error; Delaunay triangulation issue", buf, 0x22u);
  }

  if (!v35)
  {
    return 0;
  }

  return v35;
}

void sub_1DE06BCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100]((v31 - 176));
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](&a15);
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](&a18);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a22 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void **std::vector<std::list<int>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 3;
        if (*(v3 - 1))
        {
          v6 = *(v3 - 2);
          v7 = *(*(v3 - 3) + 8);
          v8 = *v6;
          *(v8 + 8) = v7;
          *v7 = v8;
          *(v3 - 1) = 0;
          if (v6 != v5)
          {
            do
            {
              v9 = v6[1];
              operator delete(v6);
              v6 = v9;
            }

            while (v9 != v5);
          }
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t VBAP::delaunayTriangulation(uint64_t a1, void *a2, char **a3, uint64_t *a4, double a5, float64x2_t a6, double a7, double a8, float64x2_t a9)
{
  v11 = a1;
  v161 = *MEMORY[0x1E69E9840];
  v12 = ((a2[1] - *a2) >> 2) / 3uLL;
  if (v12 << 32)
  {
    if (((v12 << 32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 1)
  {
    v13 = (((a2[1] - *a2) >> 2) / 3uLL) & 0x7FFFFFFF;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (*a2 + 4);
    do
    {
      *v16++ = *(v17 - 1);
      *v15++ = *v17;
      *v14++ = v17[1];
      v17 += 3;
      --v13;
    }

    while (v13);
  }

  if (v12 < 4)
  {
LABEL_8:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 768;
      *&buf[18] = 2080;
      *&buf[20] = "delaunayTriangulation";
      *&buf[28] = 1024;
      *&buf[30] = 768;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: Delaunay Triangulation Error: Convex hull could not be created. Check for overlapping speakers. ", buf, 0x22u);
    }

    return 4294967246;
  }

  v19 = 0;
  v20 = 2;
  v21 = 1;
LABEL_12:
  if (v19 + 2 >= v12)
  {
    goto LABEL_18;
  }

  v22.f64[0] = *(8 * v19);
  v22.f64[1] = v22.f64[0];
  a6.f64[0] = v22.f64[0];
  v23.f64[0] = v22.f64[0];
  *&v23.f64[1] = vextq_s8(v22, v22, 8uLL).u64[0];
  v24 = v21;
  v25 = v20;
LABEL_14:
  v26 = (8 * v25);
  v27.f64[0] = *(8 * v24);
  v27.f64[1] = v27.f64[0];
  a9.f64[0] = v27.f64[0];
  v30 = vsubq_f64(v27, v23);
  v28 = vextq_s8(v30, v30, 8uLL);
  v29 = vsubq_f64(a9, a6);
  v31.f64[0] = v29.f64[0];
  v31.f64[1] = v30.f64[0];
  v30.f64[1] = v28.f64[0];
  *&v31.f64[1] = vextq_s8(v31, v31, 8uLL).u64[0];
  v32 = v25;
  while (1)
  {
    v33.f64[0] = *v26;
    v33.f64[1] = *v26;
    a9.f64[0] = *v26;
    v34 = vsubq_f64(v33, __PAIR128__(*&v23.f64[1], *&v22.f64[0]));
    v35 = vsubq_f64(a9, a6);
    v36 = vmulq_f64(v35, v28);
    v35.f64[1] = v34.f64[0];
    v37 = vmlaq_f64(vnegq_f64(vmulq_f64(v34, v31)), v30, v35);
    v38 = vmlaq_laneq_f64(vnegq_f64(v36), v29, v34, 1);
    a9.f64[0] = v38.f64[0];
    a9.f64[1] = v37.f64[0];
    if (vaddvq_f64(vabsq_f64(a9)) + vabsq_f64(vdupq_laneq_s64(v37, 1)).f64[0] > 0.05)
    {
      break;
    }

    ++v32;
    ++v26;
    if (v32 >= v12)
    {
      ++v24;
      ++v25;
      if (v24 != v12 - 1)
      {
        goto LABEL_14;
      }

LABEL_18:
      ++v19;
      ++v20;
      ++v21;
      if (v19 == v12 - 2)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v39 = 0;
  v40.f64[0] = v37.f64[0];
  *&v40.f64[1] = vextq_s8(v37, v37, 8uLL).u64[0];
  v41 = vmulq_f64(v40, v40);
  *v41.f64 = sqrt(vmulq_f64(v38, v38).f64[0] + v41.f64[0] + v41.f64[1]);
  v42 = 1.0 / *v41.f64;
  v43 = 8 * v19;
  while (1)
  {
    if (v43 != v39 && (8 * v24) != v39 && (8 * v32) != v39)
    {
      v44.f64[0] = *v39;
      v44.f64[1] = *v39;
      v30.f64[0] = *v39;
      v30 = vmulq_laneq_f64(vsubq_f64(v30, a6), v37, 1);
      if (fabs((vaddvq_f64(vmulq_f64(vsubq_f64(v44, v22), a9)) + v30.f64[0]) * v42) > 0.01)
      {
        break;
      }
    }

    if ((8 * v12) == ++v39)
    {
      goto LABEL_8;
    }
  }

  v45 = *a3;
  v46 = a3[1];
  v47 = (v46 - *a3) >> 2;
  v142 = 2 * v12 - 4;
  v143 = v47 / 3;
  if (v47 / 3 != v142)
  {
    CDelaunayTriangles3D::find_delaunay_triangles((a1 + 176), 0, 0, 0, (a1 + 224), v12);
  }

  v48 = (a1 + 224);
  if ((v11 + 224) != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v48, v45, v46, v47);
  }

  v144 = v11;
  v141 = a4;
  if (*v11 == 1 && *(v11 + 304) >= 2uLL)
  {
    v49 = *(v11 + 224);
    if ((*(v11 + 232) - v49) >= 9)
    {
      v147 = (v11 + 224);
      LODWORD(v50) = 0;
      v51 = 0;
      v145 = 0;
      v146 = 0;
      v52 = 2;
      while (1)
      {
        *&buf[8] = 0;
        *buf = 0;
        v53 = ((*(v11 + 64) - *(v11 + 56)) >> 2) / 3uLL;
        v54 = *(v49 + 4 * (v52 - 2));
        if (v54 >= v53)
        {
          *buf = *(v49 + 4 * (v52 - 2));
          v55 = 1;
          v54 = 0;
        }

        else
        {
          v55 = 0;
        }

        v56 = *(v49 + 4 * (v52 - 1));
        if (v56 >= v53)
        {
          *(buf | (4 * v55++)) = v56;
        }

        else
        {
          v54 = *(v49 + 4 * (v52 - 1));
        }

        v57 = *(v49 + 4 * v52);
        if (v57 >= v53)
        {
          *&buf[4 * v55] = v57;
          if (v55 == 1)
          {
LABEL_46:
            v58 = v146;
            v59 = v146 >> 2;
            if (((v146 >> 2) + 1) >> 62)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            if (v146 >> 2 != -1)
            {
              if (!(((v146 >> 2) + 1) >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v59) = v54;
            v146 = 4 * v59 + 4;
            memcpy(0, 0, v58);
            if (*&buf[4] >= *buf)
            {
              v60 = *buf;
            }

            else
            {
              v60 = *&buf[4];
            }

            if (*buf <= *&buf[4])
            {
              v61 = *&buf[4];
            }

            else
            {
              v61 = *buf;
            }

            v62 = v51;
            v63 = v51 >> 3;
            if (((v51 >> 3) + 1) >> 61)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            if (v51 >> 3 != -1)
            {
              if (!(((v51 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v63) = v60 | (v61 << 32);
            v51 = 8 * v63 + 8;
            memcpy(0, 0, v62);
            v64 = v145;
            v65 = v145 >> 2;
            if (((v145 >> 2) + 1) >> 62)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            if (v145 >> 2 != -1)
            {
              if (!(((v145 >> 2) + 1) >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v65) = v50;
            v145 = 4 * v65 + 4;
            memcpy(0, 0, v64);
          }
        }

        else
        {
          v54 = v57;
          if (v55 == 2)
          {
            goto LABEL_46;
          }
        }

        v50 = (v50 + 1);
        v49 = *(v11 + 224);
        v52 += 3;
        if (v50 >= ((*(v11 + 232) - v49) >> 2) / 3uLL)
        {
          if (v51)
          {
            v66 = v51;
            v67 = 0;
            v68 = 0;
            do
            {
              v70 = v67;
              v67 = (v68 + 1);
              v71 = v66 >> 3;
              if (v66 >> 3 <= v67)
              {
                v69 = v66;
              }

              else
              {
                v72 = v68 + 1;
                do
                {
                  v73 = vceq_s32(*(8 * v70), *(8 * v67));
                  if (v73.i32[0] & v73.i32[1])
                  {
                    if ((v147[1] - *v147) >= 0)
                    {
                      operator new();
                    }

                    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                  }

                  v67 = ++v72;
                }

                while (v71 > v72);
                v69 = v66;
                v11 = v144;
                v67 = (v68 + 1);
              }

              v66 = v69;
              ++v68;
            }

            while (v71 > v67);
          }

          break;
        }
      }
    }
  }

  v74 = *(v11 + 248);
  v75 = (v11 + 224);
  v76 = *(v11 + 232) - *(v11 + 224);
  v77 = (v76 >> 1) + (v76 >> 2);
  v78 = *(v11 + 256);
  v79 = v78 - v74;
  if (v77 <= v79)
  {
    if (v77 < v79)
    {
      v78 = &v74[v77];
      *(v11 + 256) = v78;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(v11 + 248, v77 - v79);
    v74 = *(v11 + 248);
    v78 = *(v11 + 256);
  }

  vDSP_vclrD(v74, 1, v78 - v74);
  v88 = *(v11 + 224);
  v87 = *(v11 + 232);
  v89 = 0.0;
  if ((v87 - v88) >= 9)
  {
    v90 = 1;
    v91 = 8;
    v92 = 2;
    do
    {
      v95.f64[0] = *(8 * *(v88 + 4 * (v92 - 2)));
      v95.f64[1] = v95.f64[0];
      v80.f64[0] = v95.f64[0];
      v81.f64[0] = *(8 * *(v88 + 4 * (v92 - 1)));
      v84.f64[0] = v81.f64[0];
      *&v82 = v81.f64[0];
      v96 = *(v88 + 4 * v92);
      v83.f64[0] = *(8 * v96);
      v86.f64[0] = v83.f64[0];
      *&v85 = v83.f64[0];
      v97.f64[0] = v81.f64[0];
      v97.f64[1] = v81.f64[0];
      v98.f64[0] = v83.f64[0];
      v98.f64[1] = v83.f64[0];
      v99.f64[0] = v81.f64[0];
      v99.f64[1] = v81.f64[0];
      v100.f64[0] = v83.f64[0];
      v100.f64[1] = v83.f64[0];
      if (fabs(vaddvq_f64(vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v100, v99)), v97, v98), v95)) + vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v83, v84)), v81, v86), v80).f64[0]) > 0.00000011920929)
      {
        v81.f64[1] = *(8 * *(v88 + 4 * (v92 - 1)));
        v83.f64[1] = *(8 * v96);
        *buf = v95;
        *&buf[16] = v80;
        *&buf[32] = v81;
        v158 = v82;
        v159 = v83;
        v160 = v85;
        __invert_d3();
        v80.f64[1] = v152;
        v81.f64[1] = v155;
        v101 = *(v11 + 248);
        *(v101 + 8 * (v91 - 8)) = __p;
        *(v101 + 8 * (v91 - 7)) = v151;
        *(v101 + 8 * (v91 - 6)) = v154;
        *(v101 + 8 * (v91 - 5)) = __p_8;
        *(v101 + 8 * (v91 - 4)) = v152;
        *(v101 + 8 * (v91 - 3)) = v155;
        *(v101 + 8 * (v91 - 2)) = v150;
        *(v101 + 8 * (v91 - 1)) = v153;
        *(v101 + 8 * v91) = v156;
        v88 = *(v11 + 224);
        v87 = *(v11 + 232);
      }

      v93 = ((v87 - v88) >> 2) / 3uLL;
      v94 = v93 > v90++;
      v91 += 9;
      v92 += 3;
    }

    while (v94);
    v89 = v93 * 0.125;
  }

  v102 = vcvtmd_s64_f64(log(v89) * 0.72134752);
  if (v102 >= 6)
  {
    v102 = 6;
  }

  v103 = v11 + 272;
  if (v143 != v142 || (v104 = v102 & ~(v102 >> 31), v105 = (8 << (2 * (v102 & ~(v102 >> 31)))), v107 = *v141, v106 = v141[1], 0xAAAAAAAAAAAAAAABLL * ((v106 - *v141) >> 3) != v105))
  {
    CDelaunayTriangles3D::calculate_triangle_bins(0, 0, 0, v75, v103);
  }

  if (v103 != v141)
  {
    v108 = *(v144 + 288);
    v109 = *(v144 + 272);
    if (0xAAAAAAAAAAAAAAABLL * ((v108 - v109) >> 3) < v105)
    {
      if (v109)
      {
        v110 = *(v144 + 280);
        v111 = *(v144 + 272);
        if (v110 != v109)
        {
          do
          {
            v112 = v110 - 24;
            if (*(v110 - 1))
            {
              v113 = *(v110 - 2);
              v114 = *(*(v110 - 3) + 8);
              v115 = *v113;
              *(v115 + 8) = v114;
              *v114 = v115;
              *(v110 - 1) = 0;
              if (v113 != v112)
              {
                do
                {
                  v116 = *(v113 + 1);
                  operator delete(v113);
                  v113 = v116;
                }

                while (v116 != v112);
              }
            }

            v110 = v112;
          }

          while (v112 != v109);
          v111 = *v103;
        }

        *(v144 + 280) = v109;
        operator delete(v111);
        v108 = 0;
        *v103 = 0;
        *(v103 + 8) = 0;
        *(v103 + 16) = 0;
      }

      v133 = 0xAAAAAAAAAAAAAAABLL * (v108 >> 3);
      v134 = 2 * v133;
      if (2 * v133 <= v105)
      {
        v134 = v105;
      }

      if (v133 >= 0x555555555555555)
      {
        v135 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v135 = v134;
      }

      if (v135 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v118 = *(v144 + 280);
    if (0xAAAAAAAAAAAAAAABLL * ((v118 - v109) >> 3) >= v105)
    {
      if (v107 == v106)
      {
        v126 = v144;
      }

      else
      {
        v126 = v144;
        do
        {
          if (v109 != v107)
          {
            v127 = *(v107 + 8);
            for (i = *(v109 + 1); v127 != v107 && i != v109; i = *(i + 1))
            {
              *(i + 4) = *(v127 + 16);
              v127 = *(v127 + 8);
            }

            if (i == v109)
            {
              std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v109, v109, v127, v107);
            }

            else
            {
              v130 = *(*v109 + 8);
              v131 = *i;
              *(v131 + 8) = v130;
              *v130 = v131;
              do
              {
                v132 = *(i + 1);
                --*(v109 + 2);
                operator delete(i);
                i = v132;
              }

              while (v132 != v109);
            }
          }

          v107 += 24;
          v109 += 24;
        }

        while (v107 != v106);
        v118 = *(v144 + 280);
      }

      if (v118 != v109)
      {
        do
        {
          v136 = v118 - 24;
          if (*(v118 - 1))
          {
            v137 = *(v118 - 2);
            v138 = *(*(v118 - 3) + 8);
            v139 = *v137;
            *(v139 + 8) = v138;
            *v138 = v139;
            *(v118 - 1) = 0;
            if (v137 != v136)
            {
              do
              {
                v140 = *(v137 + 1);
                operator delete(v137);
                v137 = v140;
              }

              while (v140 != v136);
            }
          }

          v118 = v136;
        }

        while (v136 != v109);
      }

      *(v126 + 280) = v109;
    }

    else
    {
      if (v118 != v109)
      {
        v119 = v107 + v118 - v109;
        do
        {
          if (v109 != v107)
          {
            v120 = *(v107 + 8);
            for (j = *(v109 + 1); v120 != v107 && j != v109; j = *(j + 1))
            {
              *(j + 4) = *(v120 + 16);
              v120 = *(v120 + 8);
            }

            if (j == v109)
            {
              std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v109, v109, v120, v107);
            }

            else
            {
              v123 = *(*v109 + 8);
              v124 = *j;
              *(v124 + 8) = v123;
              *v123 = v124;
              do
              {
                v125 = *(j + 1);
                --*(v109 + 2);
                operator delete(j);
                j = v125;
              }

              while (v125 != v109);
            }
          }

          v107 += 24;
          v109 += 24;
        }

        while (v107 != v119);
        v107 = v119;
      }

      std::vector<std::list<int>>::__construct_at_end<std::list<int>*,std::list<int>*>(v103, v107, v106);
    }
  }

  v18 = 0;
  *(v144 + 296) = v104;
  return v18;
}

void sub_1DE06D3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *__p, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    if (!a27)
    {
LABEL_3:
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a27)
  {
    goto LABEL_3;
  }

  operator delete(a27);
  if (!a24)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a24);
  _Unwind_Resume(exception_object);
}

void VBAP::lineUnitSphereIntersection(VBAP *this, const float *a2, const float *a3, float *a4)
{
  v16 = 0;
  __C = 0;
  __B = 0;
  v13 = 0.0;
  MEMORY[0x1E12BE9A0](this, 1, a2, 1, &__B, 1, 3);
  vDSP_dotpr(&__B, 1, &__B, 1, &__C + 1, 3uLL);
  vDSP_dotpr(this, 1, &__B, 1, &__C, 3uLL);
  *&__C = *&__C + *&__C;
  vDSP_dotpr(this, 1, this, 1, &v13, 3uLL);
  v13 = v13 + -1.0;
  v7 = (v13 * (-4.0 * *(&__C + 1))) + (*&__C * *&__C);
  if (v7 >= 0.0)
  {
    v8 = sqrtf(v7);
    v9 = (v8 - *&__C) / (*(&__C + 1) + *(&__C + 1));
    v10 = -(v8 + *&__C) / (*(&__C + 1) + *(&__C + 1));
    v11 = 1.0 - v9;
    v12 = 1.0 - v10;
    MEMORY[0x1E12BE930](this, 1, &v12, a2, 1, &v10, a3 + 3, 1, 3);
    MEMORY[0x1E12BE930](this, 1, &v11, a2, 1, &v9, a3, 1, 3);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1DE06D71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<std::list<int>>::__construct_at_end<std::list<int>*,std::list<int>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v4 = *(result + 8);
  }

  else
  {
    v3 = a2;
    v4 = *(result + 8);
    do
    {
      *v4 = v4;
      v4[1] = v4;
      v4[2] = 0;
      if (*(v3 + 8) != v3)
      {
        operator new();
      }

      v3 += 24;
      v4 += 3;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4;
  return result;
}

void sub_1DE06D8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__list_imp<int>::clear(v10);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::list<int>>,std::list<int>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v11;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::list<int>>,std::list<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v5 = v2 - 3;
        if (*(v2 - 1))
        {
          v6 = *(v2 - 2);
          v7 = *(*(v2 - 3) + 8);
          v8 = *v6;
          *(v8 + 8) = v7;
          *v7 = v8;
          *(v2 - 1) = 0;
          if (v6 != v5)
          {
            do
            {
              v9 = v6[1];
              operator delete(v6);
              v6 = v9;
            }

            while (v9 != v5);
          }
        }

        v2 = v5;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

BOOL VBAP::find_duplicate_vertex(VBAP *this, const float *a2, const float *a3, const float *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v10 < 2)
  {
    return 0;
  }

  bzero(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v11 = 2;
  v12 = 1;
  do
  {
    MEMORY[0x1E12BE940](this, 1, this + 4 * v12, v9, 1, v12);
    MEMORY[0x1E12BE8F0](a2, 1, &a2[v12], v9, 1, v9, 1, v12);
    MEMORY[0x1E12BE8F0](a3, 1, &a3[v12], v9, 1, v9, 1, v12);
    __C = 0.0;
    vDSP_maxv(v9, 1, &__C, v12);
    result = __C > 1.0;
    v12 = v11++;
  }

  while (__C <= 1.0 && v12 < a4);
  return result;
}

void VBAP::VBAP(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  *a1 = a4;
  v4 = a3[1] - *a3;
  *(a1 + 8) = 0u;
  v4 >>= 2;
  *(a1 + 4) = v4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  if (3 * v4)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  operator new();
}

void sub_1DE06DD7C(_Unwind_Exception *a1)
{
  std::vector<std::list<int>>::~vector[abi:ne200100](v6 + 21);
  v8 = v1[31];
  if (v8)
  {
    v1[32] = v8;
    operator delete(v8);
  }

  v9 = v1[28];
  if (v9)
  {
    v1[29] = v9;
    operator delete(v9);
  }

  CDelaunayTriangles3D::~CDelaunayTriangles3D(v3);
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](v2);
  v10 = v1[16];
  if (v10)
  {
    v1[17] = v10;
    operator delete(v10);
    v11 = *v6;
    if (!*v6)
    {
LABEL_7:
      v12 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = *v6;
    if (!*v6)
    {
      goto LABEL_7;
    }
  }

  v1[14] = v11;
  operator delete(v11);
  v12 = *v5;
  if (!*v5)
  {
LABEL_8:
    v13 = v1[7];
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[11] = v12;
  operator delete(v12);
  v13 = v1[7];
  if (!v13)
  {
LABEL_9:
    v14 = v1[4];
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v1[8] = v13;
  operator delete(v13);
  v14 = v1[4];
  if (!v14)
  {
LABEL_10:
    v15 = *v4;
    if (!*v4)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v1[5] = v14;
  operator delete(v14);
  v15 = *v4;
  if (!*v4)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_17:
  v1[2] = v15;
  operator delete(v15);
  _Unwind_Resume(a1);
}

void VBAP::changeSpeakerLocations(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  *(a1 + 314) = 0;
  v3 = (a3[1] - *a3) >> 2;
  if (*(a1 + 4) != v3 || (a2[1] - *a2) >> 2 != v3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 51;
    *&buf[18] = 2080;
    *&buf[20] = "changeSpeakerLocations";
    v22 = 1024;
    v23 = 51;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Unable to change speaker locations, azimuth and elevation have different sizes";
    goto LABEL_13;
  }

  vDSP_vclr(*(a1 + 80), 1, (*(a1 + 88) - *(a1 + 80)) >> 2);
  memset(buf, 0, 24);
  __p = 0;
  v19 = 0;
  v20 = 0;
  v7 = VBAP::initialize(a1, a2, a3, buf, &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v19;
    v10 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = v9 - 3;
        if (*(v9 - 1))
        {
          v12 = *(v9 - 2);
          v13 = *(*(v9 - 3) + 8);
          v14 = *v12;
          *(v14 + 8) = v13;
          *v13 = v14;
          *(v9 - 1) = 0;
          if (v12 != v11)
          {
            do
            {
              v15 = v12[1];
              operator delete(v12);
              v12 = v15;
            }

            while (v15 != v11);
          }
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = __p;
    }

    v19 = v8;
    operator delete(v10);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (!v7)
  {
    *(a1 + 314) = 1;
    return;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 59;
    *&buf[18] = 2080;
    *&buf[20] = "changeSpeakerLocations";
    v22 = 1024;
    v23 = 59;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Unable to change speaker locations";
LABEL_13:
    _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x22u);
  }
}

void sub_1DE06E0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  std::vector<std::list<int>>::~vector[abi:ne200100](&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VBAP::triangleLookup(VBAP *this, float32x2_t *a2, int *a3, float *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*(this + 314) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__C = 136315906;
      *&__C[4] = "VBAP.cpp";
      v26 = 1024;
      v27 = 322;
      v28 = 2080;
      v29 = "triangleLookup";
      v30 = 1024;
      v31 = 322;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; VBAP object not initialized";
LABEL_15:
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, v20, __C, 0x22u);
    }

    return 4294967246;
  }

  subtriangle_containment = CDelaunayTriangles3D::find_subtriangle_containment(*(this + 74), a2->f32[0], a2->f32[1], a2[1].f32[0]);
  if ((subtriangle_containment & 0x80000000) != 0 || (v9 = *(this + 34), 0xAAAAAAAAAAAAAAABLL * ((*(this + 35) - v9) >> 3) <= subtriangle_containment))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__C = 136315906;
      *&__C[4] = "VBAP.cpp";
      v26 = 1024;
      v27 = 328;
      v28 = 2080;
      v29 = "triangleLookup";
      v30 = 1024;
      v31 = 328;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error";
      goto LABEL_15;
    }

    return 4294967246;
  }

  *a3 = -1;
  __B = vcvtq_f64_f32(*a2);
  v24 = a2[1].f32[0];
  v10 = v9 + 24 * subtriangle_containment;
  v11 = *(v10 + 8);
  if (v11 == v10)
  {
LABEL_18:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__C = 136315906;
      *&__C[4] = "VBAP.cpp";
      v26 = 1024;
      v27 = 355;
      v28 = 2080;
      v29 = "triangleLookup";
      v30 = 1024;
      v31 = 355;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error", __C, 0x22u);
    }

    return 4294964151;
  }

  else
  {
    while (1)
    {
      v12 = *(v11 + 16);
      *__C = 0;
      v13 = 9 * v12;
      vDSP_dotprD((*(this + 31) + 72 * v12), 1, __B.f64, 1, __C, 3uLL);
      if (*__C > -0.00000011920929)
      {
        v22 = 0.0;
        vDSP_dotprD((*(this + 31) + 8 * v13 + 24), 1, __B.f64, 1, &v22, 3uLL);
        if (v22 > -0.00000011920929)
        {
          v21 = 0.0;
          vDSP_dotprD((*(this + 31) + 8 * v13 + 48), 1, __B.f64, 1, &v21, 3uLL);
          v14 = v21;
          if (v21 > -0.00000011920929)
          {
            break;
          }
        }
      }

      v11 = *(v11 + 8);
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }

    result = 0;
    v16 = *__C;
    v17 = v22;
    *a4 = v16;
    a4[1] = v17;
    v18 = v14;
    a4[2] = v18;
    *a3 = v12;
  }

  return result;
}

void VBAP::~VBAP(VBAP *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    v3 = *(this + 35);
    v4 = *(this + 34);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 3;
        if (*(v3 - 1))
        {
          v6 = *(v3 - 2);
          v7 = *(*(v3 - 3) + 8);
          v8 = *v6;
          *(v8 + 8) = v7;
          *v7 = v8;
          *(v3 - 1) = 0;
          if (v6 != v5)
          {
            do
            {
              v9 = v6[1];
              operator delete(v6);
              v6 = v9;
            }

            while (v9 != v5);
          }
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 34);
    }

    *(this + 35) = v2;
    operator delete(v4);
  }

  v10 = *(this + 31);
  if (v10)
  {
    *(this + 32) = v10;
    operator delete(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    *(this + 29) = v11;
    operator delete(v11);
  }

  if (*(this + 27))
  {
    v12 = *(this + 26);
    v13 = *(*(this + 25) + 8);
    v14 = *v12;
    *(v14 + 8) = v13;
    *v13 = v14;
    *(this + 27) = 0;
    if (v12 != (this + 200))
    {
      do
      {
        v15 = *(v12 + 1);
        operator delete(v12);
        v12 = v15;
      }

      while (v15 != (this + 200));
    }
  }

  if (*(this + 24))
  {
    v16 = *(this + 23);
    v17 = *(*(this + 22) + 8);
    v18 = *v16;
    *(v18 + 8) = v17;
    *v17 = v18;
    *(this + 24) = 0;
    if (v16 != (this + 176))
    {
      do
      {
        v19 = *(v16 + 1);
        operator delete(v16);
        v16 = v19;
      }

      while (v19 != (this + 176));
    }
  }

  v20 = *(this + 19);
  if (v20)
  {
    v21 = *(this + 20);
    v22 = *(this + 19);
    if (v21 != v20)
    {
      v23 = *(this + 20);
      do
      {
        v25 = *(v23 - 24);
        v23 -= 24;
        v24 = v25;
        if (v25)
        {
          *(v21 - 16) = v24;
          operator delete(v24);
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = *(this + 19);
    }

    *(this + 20) = v20;
    operator delete(v22);
  }

  v26 = *(this + 16);
  if (v26)
  {
    *(this + 17) = v26;
    operator delete(v26);
  }

  v27 = *(this + 13);
  if (v27)
  {
    *(this + 14) = v27;
    operator delete(v27);
  }

  v28 = *(this + 10);
  if (v28)
  {
    *(this + 11) = v28;
    operator delete(v28);
  }

  v29 = *(this + 7);
  if (v29)
  {
    *(this + 8) = v29;
    operator delete(v29);
  }

  v30 = *(this + 4);
  if (v30)
  {
    *(this + 5) = v30;
    operator delete(v30);
  }

  v31 = *(this + 1);
  if (v31)
  {
    *(this + 2) = v31;
    operator delete(v31);
  }
}

uint64_t VBAP::calculateVBAPGains(VBAP *this, float32x2_t *a2, float *__C)
{
  v136 = *MEMORY[0x1E69E9840];
  if ((*(this + 314) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "VBAP.cpp";
      v130 = 1024;
      v131 = 568;
      v132 = 2080;
      v133 = "calculateVBAPGains";
      v134 = 1024;
      v135 = 568;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain if the VBAP object is not initialized";
      goto LABEL_9;
    }

    return 4294967246;
  }

  if (a2->f32[0] == 0.0 && a2->f32[1] == 0.0 && a2[1].f32[0] == 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "VBAP.cpp";
      v130 = 1024;
      v131 = 574;
      v132 = 2080;
      v133 = "calculateVBAPGains";
      v134 = 1024;
      v135 = 574;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain for a source location [0, 0, 0]";
LABEL_9:
      _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x22u);
      return 4294967246;
    }

    return 4294967246;
  }

  vDSP_vclr(__C, 1, *(this + 1));
  vDSP_vclr(*(this + 16), 1, (*(this + 17) - *(this + 16)) >> 2);
  v9 = vcvtq_f64_f32(*a2);
  v10.f64[0] = a2[1].f32[0];
  v11 = vmulq_f64(v10, v10);
  v12 = vmulq_f64(v9, v9);
  v11.f64[0] = 1.0 / sqrt(vaddvq_f64(v12) + v11.f64[0]);
  v13 = vmulq_f64(v11, v10);
  v14 = vmulq_n_f64(v9, v11.f64[0]);
  v15 = vextq_s8(v14, v14, 8uLL).u64[0];
  if (*(this + 313) == 1)
  {
    result = 0;
    v16 = *(this + 7);
    v10.f64[0] = *(v16 + 8);
    v12.f64[0] = *(v16 + 20);
    *&v14.f64[1] = v15;
    v17 = vaddq_f64(vpaddq_f64(vmulq_f64(vcvtq_f64_f32(*v16), v14), vmulq_f64(vcvtq_f64_f32(*(v16 + 12)), v14)), vzip1q_s64(vmulq_f64(v10, v13), vmulq_f64(v12, v13)));
    __asm { FMOV            V1.2D, #0.5 }

    *__C = vcvt_f32_f64(vsqrtq_f64(vmlaq_f64(_Q1, _Q1, v17)));
    return result;
  }

  if (*(this + 1) < 2u)
  {
    result = 0;
    *__C = 1.0;
    return result;
  }

  v118 = v15;
  v119 = v14.f64[0];
  v120 = v13;
  v124 = 0;
  v128 = 0;
  v127 = 0;
  v23 = VBAP::triangleLookup(this, a2, &v124, &v127);
  if (!v23)
  {
    v28 = (*(this + 28) + 12 * v124);
    v29 = *(this + 4);
    v31 = *v28;
    v30 = v28[1];
    v32 = (v29 + 12 * v31);
    v24.f64[0] = v32[1].f32[0];
    v33 = (v29 + 12 * v30);
    _Q5.f64[0] = v33[1].f32[0];
    v34 = v28[2];
    v35 = (v29 + 12 * v34);
    v26.f64[0] = v35[1].f32[0];
    v36 = vcvtq_f64_f32(*v32);
    v37 = vcvtq_f64_f32(*v33);
    v38 = vcvtq_f64_f32(*v35);
    v39 = vaddvq_f64(vmulq_f64(v37, v36)) + vmulq_f64(_Q5, v24).f64[0];
    v40 = vaddq_f64(vpaddq_f64(vmulq_f64(v38, v37), vmulq_f64(v38, v36)), vzip1q_s64(vmulq_f64(v26, _Q5), vmulq_f64(v26, v24)));
    v45 = vmlaq_n_f64(vnegq_f64(vextq_s8(v40, v40, 8uLL)), v40, v39);
    _Q2 = vdivq_f64(v45, vdupq_lane_s64(COERCE__INT64(-(v39 * v39 + -1.0)), 0));
    v42 = vmlaq_laneq_f64(v38, v37, _Q2, 1);
    v43 = vmlsq_lane_f64(v37, v36, v39, 0);
    v44 = vmlaq_n_f64(v42, v36, _Q2.f64[0]);
    v45.f64[0] = _Q5.f64[0] - v39 * v24.f64[0];
    __asm { FMLA            D6, D5, V2.D[1] }

    _Q5.f64[0] = _D6 + _Q2.f64[0] * v24.f64[0];
    v47.f64[0] = v119;
    *&v47.f64[1] = v118;
    v48 = vaddvq_f64(vmulq_f64(v36, v47)) + vmulq_f64(v24, v120).f64[0];
    v49 = vaddvq_f64(vmulq_f64(v43, v43)) + vmulq_f64(v45, v45).f64[0];
    v50 = 0.0;
    if (v49 >= 0.00000999999975)
    {
      v50 = (vaddvq_f64(vmulq_f64(v43, v47)) + vmulq_f64(v45, v120).f64[0]) / v49;
    }

    v51 = vmulq_f64(_Q5, _Q5);
    v51.f64[0] = vaddvq_f64(vmulq_f64(v44, v44)) + v51.f64[0];
    v52 = (vaddvq_f64(vmulq_f64(v44, v47)) + vmulq_f64(_Q5, v120).f64[0]) / v51.f64[0];
    if (v51.f64[0] >= 0.00000999999975)
    {
      v51.f64[0] = v52;
    }

    else
    {
      v51.f64[0] = 0.0;
    }

    v53.f64[0] = v48 - v50 * v39;
    v53.f64[1] = v50;
    v54 = vmlaq_n_f64(v53, _Q2, v51.f64[0]);
    v55 = vaddvq_f64(vmulq_f64(v54, v54)) + vmulq_f64(v51, v51).f64[0];
    v56 = 0uLL;
    v57 = 0.0;
    if (v55 > 0.00000999999975)
    {
      v58 = 1.0 / sqrt(v55);
      v56 = vmulq_n_f64(v54, v58);
      v57 = v58 * v51.f64[0];
    }

    v59 = *(this + 1);
    if (v31 >= v59)
    {
      v61 = v31 - v59;
      v62 = *(this + 16);
      v63 = v56.f64[0] + *(v62 + 4 * v61);
      *(v62 + 4 * v61) = v63;
    }

    else
    {
      v60 = v56.f64[0];
      __C[v31] = v60;
    }

    if (v30 >= v59)
    {
      v65 = v30 - v59;
      v66 = *(this + 16);
      v67 = v56.f64[1] + *(v66 + 4 * v65);
      *(v66 + 4 * v65) = v67;
    }

    else
    {
      v64 = v56.f64[1];
      __C[v30] = v64;
    }

    if (v34 >= v59)
    {
      v69 = v34 - v59;
      v70 = *(this + 16);
      v57 = v57 + *(v70 + 4 * v69);
      *&v57 = v57;
      *(v70 + 4 * v69) = LODWORD(v57);
      memset(buf, 0, sizeof(buf));
      if (!v59)
      {
        v71 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v68 = v57;
      __C[v34] = v68;
      memset(buf, 0, sizeof(buf));
    }

    v71 = 0;
    v72 = __C;
    v73 = v59;
    do
    {
      if (*v72 >= 0.00001)
      {
        buf[v71++] = *v72;
      }

      else
      {
        *v72 = 0.0;
      }

      ++v72;
      --v73;
    }

    while (v73);
LABEL_40:
    v126 = 0;
    v125 = 0;
    v74 = *(this + 38);
    if (v74)
    {
      v75 = 0;
      v76 = *(this + 16);
      v77 = 1;
      do
      {
        if (*v76 >= 0.00001)
        {
          *(&v125 + v75++) = *v76;
        }

        else
        {
          *v76 = 0;
        }

        ++v76;
        v78 = v74 > v77++;
      }

      while (v78);
      v27 = v23;
      __A = 0;
      if (v71 || v75 != 1)
      {
        if (v71 || v75 != 2)
        {
          if (v71 == 1 && v75 == 1)
          {
            v80 = sqrtf(((*buf * *buf) + v59) - ((*buf * *buf) * v59));
            v81 = *&v125 * v59;
            v82 = -(v80 + *buf) / v81;
            __A.f32[0] = (v80 - *buf) / v81;
          }

          else
          {
            if (v71 == 1 && v75 == 2)
            {
              v83 = (*&v125 * *&v125) + (*(&v125 + 1) * *(&v125 + 1));
              v84 = v83 * v59;
              v85 = v84 + ((*&v125 + *&v125) * *(&v125 + 1));
              v86 = sqrtf(v85 + ((*buf * *buf) * (v83 - v84)));
              v87 = (*(&v125 + 1) + *&v125) * *buf;
              v88 = -(v87 + v86) / v85;
              v82 = (v86 - v87) / v85;
            }

            else
            {
              if (v71 != 2 || v75 != 1)
              {
                goto LABEL_65;
              }

              v89 = sqrtf(((((*buf * *buf) + (*&buf[1] * *&buf[1])) + v59) + ((*buf + *buf) * *&buf[1])) - (((*buf * *buf) + (*&buf[1] * *&buf[1])) * v59));
              v90 = *&v125 * v59;
              v88 = (v89 - (*&buf[1] + *buf)) / v90;
              v82 = -(v89 + (*&buf[1] + *buf)) / v90;
            }

            __A.f32[0] = v88;
          }

          __A.f32[1] = v82;
        }

        else
        {
          *&v57 = sqrtf((((*&v125 * *&v125) + ((*&v125 + *&v125) * *(&v125 + 1))) + (*(&v125 + 1) * *(&v125 + 1))) + (((*(&v125 + 1) * *(&v125 + 1)) + (*&v125 * *&v125)) * v59));
          __asm { FMOV            V1.2S, #1.0 }

          __A = vdiv_f32(COERCE_FLOAT32X2_T(-_D1), vdup_lane_s32(*&v57, 0));
        }
      }

      else
      {
        __A = vcvt_f32_f64(vdivq_f64(xmmword_1DE095640, vdupq_lane_s64(COERCE__INT64(sqrt(v59) * *&v125), 0)));
      }
    }

    else
    {
      v27 = v23;
      __A = 0;
    }

LABEL_65:
    __Ca = 0.0;
    vDSP_maxv(&__A, 1, &__Ca, 2uLL);
    if (*this)
    {
      v91 = *(this + 1);
      v92 = *v28 - v91;
      if (*v28 >= v91)
      {
        v93 = *(*(this + 19) + 24 * v92);
        v94 = *(*(this + 19) + 24 * v92 + 8) - v93;
        if (v94)
        {
          v95 = v94 >> 2;
          v96 = *(this + 16);
          v97 = *(this + 13);
          v98 = 1;
          do
          {
            v99 = *v93++;
            __C[v99] = (*(v96 + 4 * v92) / (*(v97 + 4 * v92) * v95)) + __C[v99];
            v78 = v95 > v98++;
          }

          while (v78);
        }
      }

      v100 = v28[1];
      _CF = v100 >= v91;
      v101 = v100 - v91;
      if (_CF)
      {
        v102 = *(*(this + 19) + 24 * v101);
        v103 = *(*(this + 19) + 24 * v101 + 8) - v102;
        if (v103)
        {
          v104 = v103 >> 2;
          v105 = *(this + 16);
          v106 = *(this + 13);
          v107 = 1;
          do
          {
            v108 = *v102++;
            __C[v108] = (*(v105 + 4 * v101) / (*(v106 + 4 * v101) * v104)) + __C[v108];
            v78 = v104 > v107++;
          }

          while (v78);
        }
      }

      v109 = v28[2];
      _CF = v109 >= v91;
      v110 = v109 - v91;
      if (_CF)
      {
        v111 = *(*(this + 19) + 24 * v110);
        v112 = *(*(this + 19) + 24 * v110 + 8) - v111;
        if (v112)
        {
          v113 = v112 >> 2;
          v114 = *(this + 16);
          v115 = *(this + 13);
          v116 = 1;
          do
          {
            v117 = *v111++;
            __C[v117] = (*(v114 + 4 * v110) / (*(v115 + 4 * v110) * v113)) + __C[v117];
            v78 = v113 > v116++;
          }

          while (v78);
        }
      }
    }

    else
    {
      v121 = 0.0;
      vDSP_sve(*(this + 16), 1, &v121, *(this + 38));
      v121 = v121 * __Ca;
      MEMORY[0x1E12BE8A0](__C, 1, &v121, __C, 1, *(this + 1));
      v91 = *(this + 1);
    }

    v121 = 0.0;
    vDSP_svesq(__C, 1, &v121, v91);
    v121 = 1.0 / sqrtf(v121);
    MEMORY[0x1E12BE940](__C, 1, &v121, __C, 1, *(this + 1));
    return v27;
  }

  v27 = v23;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315906;
    *&buf[1] = "VBAP.cpp";
    v130 = 1024;
    v131 = 608;
    v132 = 2080;
    v133 = "calculateVBAPGains";
    v134 = 1024;
    v135 = 608;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup failed", buf, 0x22u);
  }

  return v27;
}

uint64_t IIRFilter824::CopyStateFrom(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 4294956428;
  }

  if (v2 >= 2)
  {
    v3 = (*(a1 + 24) + 100);
    v4 = (*(a2 + 24) + 100);
    v5 = 1;
    do
    {
      *(v3 - 7) = *(v4 - 7);
      *(v3 - 6) = *(v4 - 6);
      *(v3 - 3) = *(v4 - 3);
      *(v3 - 2) = *(v4 - 2);
      *(v3 - 5) = *(v4 - 5);
      *(v3 - 4) = *(v4 - 4);
      *(v3 - 1) = *(v4 - 1);
      v6 = *v4;
      v4 += 13;
      *v3 = v6;
      v3 += 13;
      ++v5;
    }

    while (v5 < *(a1 + 16));
  }

  return 0;
}

uint64_t IIRFilter824::Process(IIRFilter824 *this, uint64_t a2, const AudioBufferList *a3, const AudioBufferList *a4)
{
  if (!*(this + 4))
  {
    return 4294956428;
  }

  v7 = *(this + 12);
  switch(v7)
  {
    case 3:
      mData = a3->mBuffers[0].mData;
      (*(this + 7))(mData, a4->mBuffers[0].mData, a2, 0, 2, *(this + 3));
      (*(this + 7))(mData, *&a4[1].mBuffers[0].mNumberChannels, a2, 1, 2, *(this + 3));
      break;
    case 2:
      (*(this + 7))(a3->mBuffers[0].mData, a4->mBuffers[0].mData, a2, 0, *(this + 3));
      (*(this + 7))(*&a3[1].mBuffers[0].mNumberChannels, *&a4[1].mBuffers[0].mNumberChannels, a2, 1, *(this + 3));
      break;
    case 1:
      (*(this + 7))(a3->mBuffers[0].mData, a4->mBuffers[0].mData, a2, *(this + 3));
      break;
    default:
      return 4294956428;
  }

  v11 = *(this + 16);
  if (v11 == 1)
  {
    if (*(this + 4) >= 2u)
    {
      v14 = 1;
      v15 = 52;
      do
      {
        (*(this + 9))(a4->mBuffers[0].mData, a4->mBuffers[0].mData, a2, *(this + 3) + v15);
        ++v14;
        v15 += 52;
      }

      while (v14 < *(this + 4));
    }

    return 0;
  }

  if (v11 != 2)
  {
    return 4294956428;
  }

  if (*(this + 4) >= 2u)
  {
    v12 = 1;
    v13 = 52;
    do
    {
      (*(this + 9))(a4->mBuffers[0].mData, a4->mBuffers[0].mData, a2, 0, *(this + 3) + v13);
      (*(this + 9))(*&a4[1].mBuffers[0].mNumberChannels, *&a4[1].mBuffers[0].mNumberChannels, a2, 1, *(this + 3) + v13);
      ++v12;
      v13 += 52;
    }

    while (v12 < *(this + 4));
  }

  return 0;
}

uint64_t IIRFilter824::Reset(IIRFilter824 *this)
{
  if (*(this + 4))
  {
    v1 = 0;
    v2 = 20;
    do
    {
      v3 = (*(this + 3) + v2);
      *v3 = 0uLL;
      v3[1] = 0uLL;
      ++v1;
      v2 += 52;
    }

    while (v1 < *(this + 4));
  }

  return 0;
}

uint64_t IIRFilter824::Set(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 12) < a2)
  {
    return 4294967246;
  }

  v4 = *(a1 + 16);
  v5 = 0;
  if (a2)
  {
    v6 = (a3 + 32);
    v7 = a2;
    v8 = vdupq_n_s64(0xC170000000000000);
    do
    {
      v9 = *v6;
      v11 = *(v6 - 4);
      v10 = *(v6 - 2);
      if (vaddvq_f64(vabsq_f64(v11)) + fabs(v10.f64[0] + -1.0) + fabs(*(v6 - 1)) + fabs(*v6) >= 1.0e-15)
      {
        v12 = *(a1 + 24) + 52 * v5;
        *v12 = vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(v11, v8)), vcvtq_n_s64_f64(v10, 0x18uLL));
        ++v5;
        *(v12 + 16) = vcvtd_n_s64_f64(v9, 0x18uLL);
        *(v12 + 20) = 0uLL;
        *(v12 + 36) = 0uLL;
      }

      v6 += 5;
      --v7;
    }

    while (v7);
  }

  *(a1 + 16) = v5;
  if (v4 != v5)
  {
    (*(*a1 + 24))(a1);
  }

  return 0;
}

void IIRFilter824::~IIRFilter824(IIRFilter824 *this)
{
  *this = &unk_1F593A498;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593A498;
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

uint64_t IIRFilterFloat32::Process(IIRFilterFloat32 *this, unsigned int a2, const AudioBufferList *a3, const AudioBufferList *a4)
{
  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers != a4->mNumberBuffers || mNumberBuffers != *(this + 2))
  {
    return 4294967246;
  }

  if (caulk::pooled_semaphore_mutex::try_lock((this + 40)))
  {
    v9 = *(this + 11);
    if (v9)
    {
      v11 = *(this + 3);
      v10 = *(this + 4);
      *(this + 3) = v10;
      *(this + 4) = v11;
      if (v9 == 1)
      {
        vDSP_biquadm_CopyState(v10, v11);
      }

      else
      {
        vDSP_biquadm_ResetState(v10);
      }

      *(this + 11) = 0;
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 40));
  }

  if (mNumberBuffers)
  {
    v13 = 0;
    v14 = *(this + 10);
    v15 = *(this + 13);
    if (mNumberBuffers < 5)
    {
      v16 = a3;
      v17 = a4;
    }

    else
    {
      v16 = a3;
      v17 = a4;
      if ((v15 - v14) > 0x1F)
      {
        v18 = mNumberBuffers & 3;
        if ((mNumberBuffers & 3) == 0)
        {
          v18 = 4;
        }

        v13 = mNumberBuffers - v18;
        p_mNumberBuffers = &a3[2].mNumberBuffers;
        v20 = (v15 + 2);
        v21 = &a4[2].mNumberBuffers;
        v22 = (v14 + 2);
        v23 = v13;
        do
        {
          v24 = p_mNumberBuffers - 4;
          v25 = vld2q_f64(v24);
          v26 = vld2q_f64(p_mNumberBuffers);
          *(v22 - 1) = v25;
          *v22 = v26;
          v27 = v21 - 4;
          v28 = vld2q_f64(v27);
          v29 = vld2q_f64(v21);
          p_mNumberBuffers += 8;
          *(v20 - 1) = v28;
          *v20 = v29;
          v20 += 2;
          v21 += 8;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
      }
    }

    v30 = 16 * v13 + 16;
    v31 = (v17 + v30);
    v32 = (v16 + v30);
    do
    {
      v33 = *v32;
      v32 += 2;
      v14[v13] = v33;
      v34 = *v31;
      v31 += 2;
      v15[v13++] = v34;
    }

    while (mNumberBuffers != v13);
  }

  else
  {
    v14 = *(this + 10);
    v15 = *(this + 13);
  }

  vDSP_biquadm(*(this + 3), v14, 1, v15, 1, a2);
  return 0;
}

uint64_t IIRFilterFloat32::Set(IIRFilterFloat32 *this, unsigned int a2, const BiquadCoefficients *a3)
{
  v4 = *(this + 3);
  if (v4 < a2)
  {
    return 4294967246;
  }

  v7 = *(this + 9);
  if (v4)
  {
    v8 = a3;
    bzero(*(this + 9), v4);
    a3 = v8;
  }

  if (!a2)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v9 = *(this + 2);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(this + 6);
    v13 = a2;
    v14 = 5 * v9;
    v15 = 5 * v9;
    do
    {
      v16 = 0;
      v17 = a3 + 40 * v11;
      do
      {
        *(v12 + 8 * (v10 + v16)) = *(v17 + 2);
        *(v12 + 8 * (v10 + v16 + 1)) = *(v17 + 3);
        *(v12 + 8 * (v10 + v16 + 2)) = *(v17 + 4);
        *(v12 + 8 * (v10 + v16 + 3)) = *v17;
        v18 = *(v17 + 1);
        *(v12 + 8 * (v10 + v16 + 4)) = v18;
        v16 += 5;
      }

      while (v14 != v16);
      v7->i8[v11++] = fabs(v18) + fabs(*v17) + fabs(*(v17 + 3)) + fabs(*(v17 + 4)) + fabs(*(v17 + 2) + -1.0) >= 1.0e-15;
      v10 += v15;
    }

    while (v11 != a2);
    goto LABEL_26;
  }

  v13 = a2;
  if (a2 == 1)
  {
    v19 = 0;
    goto LABEL_24;
  }

  __asm { FMOV            V20.2D, #-1.0 }

  if (a2 >= 0x10)
  {
    v19 = a2 & 0xFFFFFFF0;
    v25 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
    v26 = a3;
    v27 = v7;
    v28 = v19;
    v87 = _Q20;
    do
    {
      v29 = *(v26 + 25);
      v30 = vextq_s8(v29, *(v26 + 28), 8uLL);
      v31 = *(v26 + 22);
      v32 = *(v26 + 20);
      v33 = *(v26 + 21);
      v34 = *v26;
      v35 = *(v26 + 1);
      v36 = *(v26 + 15);
      v37 = *(v26 + 5);
      v38 = *(v26 + 12);
      v40 = *(v26 + 10);
      v39 = *(v26 + 11);
      v41 = vextq_s8(v35, *(v26 + 4), 8uLL);
      v42 = *(v26 + 7);
      v43 = *(v26 + 6);
      v44 = vextq_s8(v43, *(v26 + 9), 8uLL);
      v45 = *(v26 + 2);
      v35.f64[1] = *(v26 + 7);
      v43.f64[1] = *(v26 + 17);
      v46 = vaddq_f64(vabsq_f64(vextq_s8(*v26, *(v26 + 3), 8uLL)), vabsq_f64(v41));
      v47 = vaddq_f64(vabsq_f64(vextq_s8(v37, *(v26 + 8), 8uLL)), vabsq_f64(v44));
      v48 = vaddq_f64(vabsq_f64(vextq_s8(v40, *(v26 + 13), 8uLL)), vabsq_f64(vextq_s8(v39, *(v26 + 14), 8uLL)));
      v50 = *(v26 + 16);
      v49 = *(v26 + 17);
      v39.f64[1] = *(v26 + 27);
      v51 = vextq_s8(v50, *(v26 + 19), 8uLL);
      v50.f64[1] = *(v26 + 37);
      v52 = vabsq_f64(vextq_s8(v33, *(v26 + 24), 8uLL));
      v53 = vaddq_f64(vabsq_f64(vextq_s8(v36, *(v26 + 18), 8uLL)), vabsq_f64(v51));
      v33.i64[1] = *(v26 + 47);
      v88 = v33;
      v54 = vaddq_f64(vabsq_f64(vextq_s8(v32, *(v26 + 23), 8uLL)), v52);
      v55 = *(v26 + 26);
      v56 = *(v26 + 27);
      v29.f64[1] = *(v26 + 55);
      v32.f64[1] = *(v26 + 45);
      v34.f64[1] = *(v26 + 5);
      v57 = vaddq_f64(v54, vabsq_f64(v32));
      v58 = vaddq_f64(vabsq_f64(v30), vabsq_f64(vextq_s8(v55, *(v26 + 29), 8uLL)));
      v59 = *(v26 + 30);
      v60 = vaddq_f64(v58, vabsq_f64(v29));
      v61 = *(v26 + 35);
      v29.f64[0] = *(v26 + 62);
      v62 = *(v26 + 32);
      v29.f64[1] = *(v26 + 67);
      v63 = vaddq_f64(vabsq_f64(vextq_s8(v59, *(v26 + 33), 8uLL)), vabsq_f64(vextq_s8(*(v26 + 31), *(v26 + 34), 8uLL)));
      v37.f64[1] = *(v26 + 15);
      v64 = vaddq_f64(v47, vabsq_f64(v37));
      v40.f64[1] = *(v26 + 25);
      v59.f64[1] = *(v26 + 65);
      v65 = vaddq_f64(v63, vabsq_f64(v59));
      v55.f64[1] = *(v26 + 57);
      v66 = *(v26 + 37);
      v67.f64[0] = *(v26 + 72);
      v67.f64[1] = *(v26 + 77);
      v68 = vabsq_f64(vextq_s8(v61, *(v26 + 38), 8uLL));
      v61.f64[1] = *(v26 + 75);
      v66.f64[1] = *(v26 + 79);
      v62.f64[1] = *(v26 + 69);
      v36.f64[1] = *(v26 + 35);
      v56.f64[1] = *(v26 + 59);
      v31.f64[1] = *(v26 + 49);
      v49.f64[1] = *(v26 + 39);
      v38.f64[1] = *(v26 + 29);
      v42.f64[1] = *(v26 + 19);
      v45.f64[1] = *(v26 + 9);
      v69 = vaddq_f64(vaddq_f64(v48, vabsq_f64(v40)), vabsq_f64(v38));
      _Q20 = v87;
      v70 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v46, vabsq_f64(v34)), vabsq_f64(v45)), vabsq_f64(vaddq_f64(v35, v87))), v25), vcgeq_f64(vaddq_f64(vaddq_f64(v64, vabsq_f64(v42)), vabsq_f64(vaddq_f64(v43, v87))), v25)), vuzp1q_s32(vcgeq_f64(vaddq_f64(v69, vabsq_f64(vaddq_f64(v39, v87))), v25), vcgeq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v53, vabsq_f64(v36)), vabsq_f64(v49)), vabsq_f64(vaddq_f64(v50, v87))), v25))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(vaddq_f64(vaddq_f64(v57, vabsq_f64(v31)), vabsq_f64(vaddq_f64(v88, v87))), v25), vcgeq_f64(vaddq_f64(vaddq_f64(v60, vabsq_f64(v56)), vabsq_f64(vaddq_f64(v55, v87))), v25)), vuzp1q_s32(vcgeq_f64(vaddq_f64(vaddq_f64(v65, vabsq_f64(v62)), vabsq_f64(vaddq_f64(v29, v87))), v25), vcgeq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v68, vabsq_f64(vextq_s8(*(v26 + 36), *(v26 + 39), 8uLL))), vabsq_f64(v61)), vabsq_f64(v66)), vabsq_f64(vaddq_f64(v67, v87))), v25))));
      v69.f64[0] = 7.74860419e-304;
      v69.f64[1] = 7.74860419e-304;
      *v27++ = vandq_s8(v70, v69);
      v26 = (v26 + 640);
      v28 -= 16;
    }

    while (v28);
    if (v19 == a2)
    {
      goto LABEL_26;
    }

    if ((a2 & 0xE) == 0)
    {
LABEL_24:
      v83 = a2 - v19;
      v84 = &v7->i8[v19];
      v85 = (a3 + 40 * v19 + 16);
      do
      {
        *v84++ = fabs(*(v85 - 1)) + fabs(*(v85 - 2)) + fabs(v85[1]) + fabs(v85[2]) + fabs(*v85 + -1.0) >= 1.0e-15;
        v85 += 5;
        --v83;
      }

      while (v83);
      goto LABEL_26;
    }
  }

  else
  {
    v19 = 0;
  }

  v71 = v19;
  v19 = a2 & 0xFFFFFFFE;
  v72 = v71 - v19;
  v73 = &v7->i8[v71];
  v74 = (a3 + 40 * v71);
  v75 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
  do
  {
    v77 = *(v74 + 3);
    v76 = *(v74 + 4);
    v79 = *(v74 + 1);
    v78 = *(v74 + 2);
    v80 = *v74;
    v74 += 5;
    *&v81.f64[0] = v80.i64[0];
    v81.f64[1] = v78.f64[1];
    v82 = vextq_s8(v79, v76, 8uLL);
    *&v79.f64[1] = v77.i64[1];
    *&v78.f64[1] = v76.i64[1];
    *v76.i8 = vand_s8(vmovn_s64(vcgeq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vabsq_f64(vextq_s8(v80, v77, 8uLL)), vabsq_f64(v82)), vabsq_f64(v81)), vabsq_f64(v78)), vabsq_f64(vaddq_f64(v79, _Q20))), v75)), 0x100000001);
    v73[1] = v76.i8[4];
    *v73 = v76.i8[0];
    v73 += 2;
    v72 += 2;
  }

  while (v72);
  if (v19 != a2)
  {
    goto LABEL_24;
  }

LABEL_26:
  caulk::pooled_semaphore_mutex::_lock((this + 40));
  vDSP_biquadm_SetCoefficientsDouble(*(this + 4), *(this + 6), 0, 0, v13, *(this + 2));
  vDSP_biquadm_SetActiveFilters(*(this + 4), *(this + 9));
  if (*(this + 4) == a2)
  {
    v86 = 1;
  }

  else
  {
    v86 = 2;
  }

  *(this + 11) = v86;
  *(this + 4) = a2;
  caulk::pooled_semaphore_mutex::_unlock((this + 40));
  return 0;
}

void IIRFilterFloat32::~IIRFilterFloat32(IIRFilterFloat32 *this)
{
  IIRFilterFloat32::~IIRFilterFloat32(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593A4D8;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x1E12BD130](v4, 0x1000C8077774924);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    vDSP_biquadm_DestroySetup(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    vDSP_biquadm_DestroySetup(v7);
  }
}

BiquadCoefficients *BiquadCoefficients::SetBW(BiquadCoefficients *this, int a2, double a3, double a4, double a5)
{
  if (a3 <= 0.0 || a4 <= 0.0)
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 2) = 0x3FF0000000000000;
  }

  else
  {
    v6 = fmin(a3, 3.11017673);
    v7 = a4 * 0.34657359 * v6;
    v8 = this;
    v11 = sin(v6);
    v12 = 0.5 / sinh(v7 / v11);

    return BiquadCoefficients::SetPriv(v8, a2, v6, v12, a5);
  }

  return this;
}

uint64_t BiquadCoefficients::SetPriv(BiquadCoefficients *this, int a2, long double a3, double a4, double a5)
{
  v10 = cos(a3);
  result = 4294967246;
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      if (a2 == 9)
      {
        v34 = __exp10(a5 * 0.00625);
        v35 = __exp10(a5 * 0.01875);
        result = 0;
        v36 = (1.0 - (sqrt((v10 * -2.0 + 2.0) * v35 - (v35 * v35 - v10 * v10 * (v35 * v35))) + v35 * v10)) / (1.0 - v35);
        v37 = v36 * -2.0;
        v38 = v36 * -2.0 + 1.0;
        v39 = v36 * v36;
        *(this + 1) = v39;
        *(this + 2) = (v38 + v39) * v34;
        *(this + 3) = 0;
        *(this + 4) = 0;
        *this = v37;
        return result;
      }

      if (a2 == 10)
      {
        v45 = __exp10(a5 * 0.05);
        v46 = tan(a3 / (a4 + a4));
        result = 0;
        v47 = (0.5 - v46 * 4.0 / (v45 + 1.0) * 0.5) / (v46 * 4.0 / (v45 + 1.0) + 1.0);
        v48 = (v47 * 0.5 + -0.25) * (v45 * -2.0 + 2.0);
        v49 = v10 * -2.0 * (v47 + 0.5);
        v50 = v47 + v47;
        *this = v49;
        *(this + 1) = v50;
        *(this + 2) = v48 + 1.0;
        *(this + 3) = v49;
        v44 = v50 - v48;
        goto LABEL_30;
      }

      if (a2 != 11)
      {
        return result;
      }

      v29 = __exp10(a5 * 0.025);
      v30 = sin(a3) / (a4 + a4);
      v31 = v29 * v30;
    }

    else
    {
      if (a2 != 6)
      {
        v19 = sin(a3);
        v20 = __exp10(a5 * 0.025);
        v21 = sqrt(v20);
        v12 = 1.0;
        v22 = v19 * (v21 + v21) / (a4 + a4);
        v23 = (v20 + -1.0) * v10;
        v24 = (v20 + 1.0) * v10;
        if (a2 == 7)
        {
          v41 = v23 + v20 + 1.0;
          v16 = v22 + v41;
          v17 = (v24 + v20 + -1.0) * -2.0;
          v18 = v41 - v22;
          v26 = v20 + 1.0 - v23;
          v27 = (v22 + v26) * v20;
          v15 = v20 * (v20 + -1.0 - v24 + v20 + -1.0 - v24);
        }

        else
        {
          v25 = v20 + 1.0 - v23;
          v16 = v22 + v25;
          v17 = v20 + -1.0 - v24 + v20 + -1.0 - v24;
          v18 = v25 - v22;
          v26 = v23 + v20 + 1.0;
          v27 = (v22 + v26) * v20;
          v15 = v20 * -2.0 * (v24 + v20 + -1.0);
        }

        v14 = (v26 - v22) * v20;
        goto LABEL_29;
      }

      v29 = __exp10(a5 * 0.025);
      v30 = v29 * sin(a3) / (a4 + a4);
      v31 = v30 * v29;
    }

    v33 = v30 / v29;
    v12 = 1.0;
    v16 = v33 + 1.0;
    v15 = v10 * -2.0;
    v18 = 1.0 - v33;
    v27 = v31 + 1.0;
    v14 = 1.0 - v31;
    goto LABEL_28;
  }

  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v32 = __exp10(a5 * 0.05);
        result = 0;
        *this = 0;
        *(this + 1) = 0;
        *(this + 3) = 0;
        *(this + 4) = 0;
        *(this + 2) = v32;
        return result;
      case 1:
        v12 = __exp10(a5 * 0.05);
        v40 = sin(a3) / (a4 + a4);
        v14 = 0.5 - v10 * 0.5;
        v15 = v14 + v14;
        v16 = v40 + 1.0;
        v17 = v10 * -2.0;
        v18 = 1.0 - v40;
        break;
      case 2:
        v12 = __exp10(a5 * 0.05);
        v13 = sin(a3) / (a4 + a4);
        v14 = v10 * 0.5 + 0.5;
        v15 = v14 * -2.0;
        v16 = v13 + 1.0;
        v17 = v10 * -2.0;
        v18 = 1.0 - v13;
        break;
      default:
        return result;
    }

    v27 = v14;
    goto LABEL_29;
  }

  if (a2 == 3)
  {
    v12 = __exp10(a5 * 0.05);
    v27 = sin(a3) / (a4 + a4);
    v14 = -v27;
    v16 = v27 + 1.0;
    v17 = v10 * -2.0;
    v18 = 1.0 - v27;
    v15 = 0.0;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = __exp10(a5 * 0.05);
    v42 = sin(a3) / (a4 + a4);
    v15 = v10 * -2.0;
    v14 = 1.0;
    v16 = v42 + 1.0;
    v18 = 1.0 - v42;
    v27 = 1.0;
LABEL_28:
    v17 = v15;
    goto LABEL_29;
  }

  v12 = __exp10(a5 * 0.05);
  v28 = sin(a3) / (a4 + a4);
  v14 = v28 + 1.0;
  v15 = v10 * -2.0;
  v27 = 1.0 - v28;
  v18 = 1.0 - v28;
  v17 = v10 * -2.0;
  v16 = v28 + 1.0;
LABEL_29:
  result = 0;
  v43 = 1.0 / v16;
  *this = v17 * v43;
  *(this + 1) = v18 * v43;
  *(this + 2) = v27 * (v43 * v12);
  *(this + 3) = v15 * (v43 * v12);
  v44 = v14 * (v43 * v12);
LABEL_30:
  *(this + 4) = v44;
  return result;
}

uint64_t BiquadCoefficients::SetQ(BiquadCoefficients *this, int a2, double a3, double a4, double a5)
{
  if (a2)
  {
    if (a3 <= 0.0 || a4 <= 0.0)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 3) = 0;
      *(this + 4) = 0;
      *(this + 2) = 0x3FF0000000000000;
      return 4294967246;
    }

    else
    {
      v6 = fmin(a3, 3.11017673);

      return BiquadCoefficients::SetPriv(this, a2, v6, a4, a5);
    }
  }

  else
  {
    v9 = __exp10(a5 * 0.05);
    *this = 0;
    *(this + 1) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 2) = v9;
    return 0;
  }
}

void BiquadCoefficients::GetT(BiquadCoefficients *this, double a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = (this + 24);
  v4 = *(this + 3);
  v57 = 0u;
  v58 = 0u;
  v5 = *(this + 2);
  v6 = (this + 32);
  v7 = *(this + 4);
  if (v5 != 0.0)
  {
    v8 = v5 * -4.0 * v7 + v4 * v4;
    v9 = sqrt(hypot(v8, 0.0));
    v10 = atan2(0.0, v8);
    v11 = __sincos_stret(v10 * 0.5);
    *&v57 = (v11.__cosval * v9 - v4) * (0.5 / v5);
    *(&v57 + 1) = v11.__sinval * v9 * (0.5 / v5);
    v12 = -(0.5 / v5 * (v11.__sinval * v9));
    *&v58 = -(0.5 / v5 * (v11.__cosval * v9 + v4));
    v13 = 2;
    v14 = 24;
LABEL_5:
    v15 = 0;
    *(&v57 + v14) = v12;
    goto LABEL_6;
  }

  if (v4 != 0.0)
  {
    *&v57 = -v7 / v4;
    v13 = 1;
    v12 = 0.0;
    v14 = 8;
    goto LABEL_5;
  }

  v13 = 0;
  v15 = 1;
LABEL_6:
  v17 = *this;
  v16 = *(this + 1);
  v18 = v16 * -4.0 + v17 * v17;
  v19 = 0.0;
  v20 = sqrt(hypot(v18, 0.0));
  v21 = atan2(0.0, v18);
  v22 = __sincos_stret(v21 * 0.5);
  v23.f64[0] = v22.__cosval * v20 - v17;
  v24.f64[0] = v22.__cosval * v20 + v17;
  v23.f64[1] = v22.__sinval * v20;
  v24.f64[1] = v22.__sinval * v20;
  __asm { FMOV            V0.2D, #0.5 }

  v30 = vmulq_f64(v23, _Q0);
  __asm { FMOV            V0.2D, #-0.5 }

  v32 = vmulq_f64(v24, _Q0);
  v55 = v30;
  v56 = v32;
  if (v15)
  {
    v33 = 1.0;
    v34 = 2;
    v35 = 0.0;
    if (v5 != 0.0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v36 = 0;
  v34 = 2;
  do
  {
    while (!v34)
    {
LABEL_10:
      if (++v36 >= v13)
      {
        goto LABEL_21;
      }
    }

    v37 = 0;
    v38 = (&v57 + v36);
    v39 = *v38;
    v40 = v38[1];
    v41 = &v55;
    while (hypot(v39 - *v41, v40 - v41[1]) >= 1.0e-10)
    {
      ++v37;
      v41 += 2;
      if (v34 == v37)
      {
        goto LABEL_10;
      }
    }

    if ((v13 + ~v36) >= 1)
    {
      memmove(&v57 + v36, &v57 + v36 + 1, 16 * (v13 + ~v36));
    }

    if (v34 + ~v37 >= 1)
    {
      memmove(v41, &v55 + (v37 + 1), 16 * (v34 + ~v37));
    }

    --v13;
    --v34;
  }

  while (v36 < v13);
LABEL_21:
  v30 = v55;
  v32 = v56;
  v35 = 0.0;
  if (!v13)
  {
    v33 = 1.0;
    v19 = 0.0;
    if (v5 != 0.0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v42 = *&v57;
  if (v13 != 1)
  {
    goto LABEL_44;
  }

  v33 = -*&v57;
  v19 = 1.0;
  if (v5 == 0.0)
  {
LABEL_26:
    if (v4 == 0.0)
    {
      v43 = v6;
    }

    else
    {
      v43 = v3;
    }

    v5 = *v43;
  }

LABEL_30:
  while (1)
  {
    if (v34)
    {
      if (v34 == 1)
      {
        v44 = -v30.f64[0];
        v45 = 1.0;
      }

      else
      {
        v45 = -vaddq_f64(v32, v30).f64[0];
        v46 = vmulq_f64(v32, v30);
        *&v44 = *&vsubq_f64(v46, vdupq_laneq_s64(v46, 1));
      }
    }

    else
    {
      v44 = 1.0;
      v45 = 0.0;
    }

    v47 = v5 * v35;
    v48 = v5 * v19;
    v49 = v5 * v33;
    if (!v34)
    {
      break;
    }

    v50 = fabs(v47);
    v5 = fmin(fabs(v48 - v45 * v47) + v50 + fabs(v49 - v44 * v47), v50 + fabs(v48) + fabs(v49));
    if (v5 == 0.0)
    {
      break;
    }

    if (v34 == 1)
    {
      if (v30.f64[0] != 0.0 || v30.f64[1] != 0.0)
      {
        v54 = v30.f64[0];
        log10(v5);
        log10(fabs(v54));
      }

      return;
    }

    if (v18 != 0.0)
    {
      if (v18 < 0.0)
      {
        log10(fabs(v16));
        log10(-v18);
        log10(v5);
        return;
      }

      v53 = fmax(fabs(v30.f64[0]), fabs(v32.f64[0]));
      v52 = v53 * 0.00001 * log(v53) / v5;
LABEL_50:
      if (v52 > -0.367879441 && v52 != 0.0)
      {
        LambertW::lambertW(v51, v52, v52);
      }

      return;
    }

    if (v30.f64[0] == 0.0)
    {
      return;
    }

    v18 = fabs(v30.f64[0]);
    v52 = v18 * 0.00001 * log(v18) / v5;
    if (v52 <= 0.0)
    {
      goto LABEL_50;
    }

    CAAssertRtn();
LABEL_44:
    v19 = -(*&v58 + v42);
    v33 = -(*(&v57 + 1) * *(&v58 + 1) - *&v58 * v42);
    v35 = 1.0;
    if (v5 == 0.0)
    {
      goto LABEL_26;
    }
  }
}

void LambertW::lambertW(LambertW *this, double a2, double a3)
{
  v4 = -0.367879441;
  if (a2 <= -0.367879441)
  {
    return;
  }

  if (a2 == 0.0)
  {
    if (a2 >= 0.0)
    {
      return;
    }

    goto LABEL_4;
  }

  if (a2 <= 0.0)
  {
    v8 = -0.367879441;
  }

  else
  {
    v8 = 0.0;
  }

  if (a2 <= 0.0)
  {
    v9 = -1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (a2 <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 2.71828183;
  }

  if (a2 <= 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  for (; v10 < a2; v10 = exp(v11) * v11)
  {
    v8 = v10;
    v9 = v11;
    v11 = v11 * 10.0;
  }

  v12 = v11 - v9;
  if (v11 - v9 != 1.79769313e308 && v12 > 1.0e-12)
  {
    do
    {
      v13 = v9 + ((a2 - v8) * 0.9 / (v10 - v8) + 0.05) * (v11 - v9);
      v14 = exp(v13) * v13;
      if (v14 >= a2)
      {
        if (v14 <= a2)
        {
          v9 = v9 + ((a2 - v8) * 0.9 / (v10 - v8) + 0.05) * (v11 - v9);
        }

        else
        {
          v10 = v14;
        }

        v11 = v13;
      }

      else
      {
        v9 = v9 + ((a2 - v8) * 0.9 / (v10 - v8) + 0.05) * (v11 - v9);
        v8 = v14;
      }

      if (v11 - v9 == v12)
      {
        break;
      }

      v12 = v11 - v9;
    }

    while (v11 - v9 > 1.0e-12);
  }

  if (a2 < 0.0)
  {
LABEL_4:
    v5 = -0.270670566;
    if (a2 <= -0.270670566)
    {
      v7 = -1.0;
      v6 = -2.0;
    }

    else
    {
      v6 = -2.0;
      v5 = -0.270670566;
      do
      {
        v4 = v5;
        v7 = v6;
        v6 = v6 * 10.0;
        v5 = exp(v6) * v6;
      }

      while (v5 < a2);
    }

    v15 = v7 - v6;
    if (v7 - v6 != 1.79769313e308 && v15 > 1.0e-12)
    {
      do
      {
        v16 = v7 + ((a2 - v4) * 0.9 / (v5 - v4) + 0.05) * (v6 - v7);
        v17 = exp(v16) * v16;
        if (v17 >= a2)
        {
          if (v17 <= a2)
          {
            v7 = v7 + ((a2 - v4) * 0.9 / (v5 - v4) + 0.05) * (v6 - v7);
          }

          else
          {
            v5 = v17;
          }

          v6 = v16;
        }

        else
        {
          v4 = v17;
          v7 = v16;
        }

        if (v7 - v6 == v15)
        {
          break;
        }

        v15 = v7 - v6;
      }

      while (v7 - v6 > 1.0e-12);
    }
  }
}

uint64_t NewIIRFilter(const AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2)
{
  v2 = *&a1->mBytesPerPacket;
  v23 = *&a1->mSampleRate;
  v24 = v2;
  v25 = *&a1->mBitsPerChannel;
  v3 = *&a2->mBytesPerPacket;
  v20 = *&a2->mSampleRate;
  v21 = v3;
  v22 = *&a2->mBitsPerChannel;
  if (*&v23 != *&v20)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1;
  if (DWORD2(v23) != 1819304813)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  if (DWORD1(v24) != 1)
  {
    goto LABEL_11;
  }

  v8 = DWORD2(v24);
  if (DWORD2(v24) != v24 || DWORD2(v24) < v25 >> 3)
  {
    goto LABEL_8;
  }

  v5 = HIDWORD(v24);
  if (!HIDWORD(v24))
  {
    goto LABEL_9;
  }

  if ((BYTE12(v23) & 0x20) == 0)
  {
    v8 = DWORD2(v24) / HIDWORD(v24);
    if (DWORD2(v24) != DWORD2(v24) / HIDWORD(v24) * HIDWORD(v24))
    {
      goto LABEL_8;
    }
  }

  v5 = 0;
  if ((BYTE12(v23) & 2) == 0 && 8 * v8 == v25)
  {
    if ((BYTE12(v23) & 1) == 0)
    {
      if ((BYTE12(v23) & 4) != 0)
      {
        v18 = (HIDWORD(v23) >> 7) & 0x3F;
        if (v18 == 24 && v8 == 4)
        {
          v5 = 3;
        }

        else if (v18 || v8 != 4)
        {
          if (v8 == 2 && v18 == 0)
          {
            v5 = 2;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 5;
        }
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_71;
    }

    if ((WORD6(v23) & 0x1F84) == 0)
    {
      v5 = 4 * (v8 == 8);
      if (v8 == 4)
      {
        v5 = 1;
      }

      goto LABEL_71;
    }

LABEL_8:
    v5 = 0;
LABEL_9:
    v7 = 0;
    v6 = 1;
    goto LABEL_11;
  }

LABEL_71:
  v6 = 0;
  v7 = (BYTE12(v23) & 0x20) == 0;
LABEL_11:
  result = 0;
  if (DWORD2(v20) != 1819304813 || DWORD1(v21) != 1)
  {
    return result;
  }

  v9 = DWORD2(v21);
  if (DWORD2(v21) != v21)
  {
    return 0;
  }

  if (DWORD2(v21) < v22 >> 3)
  {
    return 0;
  }

  if (!HIDWORD(v21))
  {
    return 0;
  }

  if ((BYTE12(v20) & 0x20) == 0)
  {
    v9 = DWORD2(v21) / HIDWORD(v21);
    if (DWORD2(v21) != DWORD2(v21) / HIDWORD(v21) * HIDWORD(v21))
    {
      return 0;
    }
  }

  v10 = 0;
  if ((BYTE12(v20) & 3) == 1 && 8 * v9 == v22)
  {
    if ((WORD6(v20) & 0x1F84) != 0)
    {
      return 0;
    }

    v10 = v9 == 4;
  }

  if (v6)
  {
    return 0;
  }

  if ((v5 - 2) >= 2)
  {
    if (v5 == 1 && HIDWORD(v24) == HIDWORD(v21) && v10)
    {
      v17 = (BYTE12(v20) & 0x20) == 0 || v7;
      if (HIDWORD(v21) == 1 || !v17)
      {
        operator new();
      }
    }

    return 0;
  }

  v11 = (BYTE12(v20) & 0x20) == 0;
  if (HIDWORD(v24) != 1 || HIDWORD(v21) != 2)
  {
    v11 = 0;
  }

  v13 = HIDWORD(v24) == HIDWORD(v21) && v7 == ((BYTE12(v20) & 0x20) == 0);
  if (!v13 && !v11)
  {
    return 0;
  }

  ProcessProcForFormats = Biquad_8dot24::CreateProcessProcForFormats(&v23, &v20);
  v15 = Biquad_8dot24::CreateProcessProcForFormats(&v20, &v20);
  result = 0;
  if (ProcessProcForFormats)
  {
    if (v15)
    {
      operator new();
    }
  }

  return result;
}

void IIRFilterFloat32::IIRFilterFloat32(IIRFilterFloat32 *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = 0;
  *this = &unk_1F593A4D8;
  *(this + 3) = 0;
  v4 = (this + 24);
  *(this + 4) = 0;
  v5 = (this + 32);
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 40));
  *(this + 31) = 0;
  *(this + 108) = 0u;
  *(this + 92) = 0u;
  *(this + 76) = 0u;
  *(this + 60) = 0u;
  *(this + 44) = 0u;
  v6 = (5 * *(this + 2) * *(this + 3));
  v12 = 0;
  std::vector<double>::assign(this + 6, v6, &v12);
  Setup = vDSP_biquadm_CreateSetup(*(this + 6), *(this + 3), *(this + 2));
  v8 = *v4;
  *v4 = Setup;
  if (v8)
  {
    vDSP_biquadm_DestroySetup(v8);
  }

  v9 = vDSP_biquadm_CreateSetup(*(this + 6), *(this + 3), *(this + 2));
  v10 = *v5;
  *v5 = v9;
  if (v10)
  {
    vDSP_biquadm_DestroySetup(v10);
  }

  if (*v4)
  {
    if (*v5)
    {
      operator new[]();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "failed to create vDSP biquads");
}

void sub_1DE071050(_Unwind_Exception *a1)
{
  v5 = v3[13];
  if (v5)
  {
    v3[14] = v5;
    operator delete(v5);
  }

  v6 = v3[10];
  if (v6)
  {
    v3[11] = v6;
    operator delete(v6);
  }

  v7 = v3[9];
  v3[9] = 0;
  if (v7)
  {
    MEMORY[0x1E12BD130](v7, 0x1000C8077774924);
  }

  v8 = v3[6];
  if (v8)
  {
    v3[7] = v8;
    operator delete(v8);
  }

  std::unique_ptr<vDSP_biquadm_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquadm_SetupStruct*,&(vDSP_biquadm_DestroySetup)>>::~unique_ptr[abi:ne200100](v2);
  std::unique_ptr<vDSP_biquadm_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquadm_SetupStruct*,&(vDSP_biquadm_DestroySetup)>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t IIRFilter824::IIRFilter824(uint64_t result, int a2, int a3, _OWORD *a4, _OWORD *a5)
{
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0;
  *result = &unk_1F593A498;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = *a4;
  *(result + 64) = *a5;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_1DE071220(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

vDSP_biquadm_SetupStruct **std::unique_ptr<vDSP_biquadm_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquadm_SetupStruct*,&(vDSP_biquadm_DestroySetup)>>::~unique_ptr[abi:ne200100](vDSP_biquadm_SetupStruct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vDSP_biquadm_DestroySetup(v2);
  }

  return a1;
}

void BlockBuffer::Alloc(BlockBuffer *this, const unsigned int *a2)
{
  *(this + 4) = 0;
  *this = malloc_type_malloc(8 * *(this + 2), 0x2004093837F09uLL);
  if (*(this + 2))
  {
    v4 = 0;
    v5 = (4 * *(this + 3));
    if (v5)
    {
      do
      {
        v6 = malloc_type_malloc((16 * a2[v4]) | 8, 0x10800404ACF7207uLL);
        *(*this + 8 * v4) = v6;
        v7 = a2[v4];
        *v6 = v7;
        if (v7)
        {
          v8 = v6;
          v9 = 0;
          v10 = v6 + 4;
          do
          {
            *(v10 - 2) = 1;
            *(v10 - 1) = v5;
            v11 = malloc_type_malloc(v5, 0x4F118115uLL);
            if (!v11)
            {
              exception = __cxa_allocate_exception(8uLL);
              v20 = std::bad_alloc::bad_alloc(exception);
            }

            v12 = v11;
            bzero(v11, v5);
            *v10 = v12;
            v10 += 2;
            ++v9;
          }

          while (v9 < *v8);
        }

        ++v4;
      }

      while (v4 < *(this + 2));
    }

    else
    {
      do
      {
        v13 = malloc_type_malloc((16 * a2[v4]) | 8, 0x10800404ACF7207uLL);
        *(*this + 8 * v4) = v13;
        v14 = a2[v4];
        *v13 = v14;
        if (v14)
        {
          v15 = v13;
          v16 = 0;
          v17 = v13 + 4;
          do
          {
            *(v17 - 1) = 1;
            v18 = malloc_type_malloc(v5, 0x4F118115uLL);
            bzero(v18, v5);
            *v17 = v18;
            v17 += 2;
            ++v16;
          }

          while (v16 < *v15);
        }

        ++v4;
      }

      while (v4 < *(this + 2));
    }
  }
}

void BlockBuffer::~BlockBuffer(BlockBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 2))
    {
      v3 = 0;
      do
      {
        v4 = *(*this + 8 * v3);
        if (*v4)
        {
          v5 = 0;
          v6 = 4;
          do
          {
            free(*&v4[v6]);
            ++v5;
            v6 += 4;
          }

          while (v5 < *v4);
        }

        free(v4);
        ++v3;
      }

      while (v3 < *(this + 2));
      v2 = *this;
    }

    free(v2);
    *this = 0;
  }
}

unsigned int *OutputBlockBuffer::Read(unsigned int *this, unsigned int a2, int a3, AudioBufferList **a4)
{
  v4 = this;
  v5 = this[4];
  v6 = this[2];
  v7 = this[3] - v5;
  if (v7 >= a2)
  {
    v7 = a2;
  }

  if (v6)
  {
    v9 = 0;
    v10 = (4 * a3);
    v11 = 4 * v5;
    v17 = v7;
    v12 = 4 * v7;
    do
    {
      v13 = *(*v4 + 8 * v9);
      if (*v13)
      {
        v14 = 0;
        v15 = a4[v9];
        v16 = 4;
        do
        {
          this = memcpy((*(&v15->mNumberBuffers + v16 * 4) + v10), (*&v13[v16] + v11), v12);
          ++v14;
          v16 += 4;
        }

        while (v14 < *v13);
        v6 = v4[2];
      }

      ++v9;
    }

    while (v9 < v6);
    v5 = v4[4];
    v7 = v17;
  }

  v4[4] = v5 + v7;
  return this;
}

void BlockProcessor::BlockProcessor(BlockProcessor *this, int a2, const unsigned int *a3, int a4, const unsigned int *a5, int a6, int (*a7)(void *, unsigned int, const AudioBufferList **, AudioBufferList **), void *a8)
{
  *(this + 2) = a2;
  *(this + 3) = a6;
  BlockBuffer::Alloc(this, a3);
  *(this + 8) = a4;
  *(this + 9) = a6;
  BlockBuffer::Alloc((this + 24), a5);
  *(this + 6) = a7;
  *(this + 7) = a8;
}

uint64_t BlockProcessor::Process(BlockProcessor *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  v6 = 0;
  v7 = *(this + 3);
  while (1)
  {
    v8 = *(this + 4);
    if (v8 == v7)
    {
      break;
    }

LABEL_6:
    v10 = *(this + 2);
    v32 = v6;
    v33 = a2;
    v31 = *(this + 3) - v8;
    if (v31 >= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = *(this + 3) - v8;
    }

    v12 = (4 * v6);
    v34 = v11;
    if (v10)
    {
      v13 = 0;
      v14 = (4 * v8);
      v15 = 4 * v11;
      do
      {
        v16 = *(*this + 8 * v13);
        if (*v16)
        {
          v17 = 0;
          v18 = a3[v13];
          v19 = 4;
          do
          {
            memcpy((*&v16[v19] + v14), (*(&v18->mNumberBuffers + v19 * 4) + v12), v15);
            ++v17;
            v19 += 4;
          }

          while (v17 < *v16);
          v10 = *(this + 2);
        }

        ++v13;
      }

      while (v13 < v10);
      v8 = *(this + 4);
      v11 = v34;
    }

    *(this + 4) = v8 + v11;
    v20 = *(this + 10);
    v21 = *(this + 8);
    v22 = *(this + 9) - v20;
    if (v22 >= v11)
    {
      v22 = v11;
    }

    if (v21)
    {
      v23 = 0;
      v24 = (4 * v20);
      v30 = v22;
      v25 = 4 * v22;
      do
      {
        v26 = *(*(this + 3) + 8 * v23);
        if (*v26)
        {
          v27 = 0;
          v28 = a4[v23];
          v29 = 4;
          do
          {
            memcpy((*(&v28->mNumberBuffers + v29 * 4) + v12), (*&v26[v29] + v24), v25);
            ++v27;
            v29 += 4;
          }

          while (v27 < *v26);
          v21 = *(this + 8);
        }

        ++v23;
      }

      while (v23 < v21);
      v20 = *(this + 10);
      v11 = v34;
      v22 = v30;
    }

    *(this + 10) = v20 + v22;
    a2 = v33 - v11;
    v6 = v11 + v32;
    if (v33 <= v31)
    {
      return 0;
    }
  }

  while (1)
  {
    result = (*(this + 6))(*(this + 7), v7, *this, *(this + 3));
    *(this + 4) = 0;
    *(this + 10) = 0;
    if (result)
    {
      return result;
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }
}

void BlockProcessor::Reset(BlockProcessor *this)
{
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (*(this + 3))
  {
    v2 = *(this + 8);
    if (v2)
    {
      v3 = 0;
      v4 = (4 * *(this + 9));
      do
      {
        v5 = *(*(this + 3) + 8 * v3);
        if (*v5)
        {
          v6 = 0;
          v7 = 4;
          do
          {
            bzero(*&v5[v7], v4);
            ++v6;
            v7 += 4;
          }

          while (v6 < *v5);
          v2 = *(this + 8);
        }

        ++v3;
      }

      while (v3 < v2);
    }
  }
}

uint64_t HOA::getTDesign(HOA *this, _OWORD *__dst, float *a3, float *__C, float *a5)
{
  if (__dst)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  switch(this)
  {
    case 0:
      if (v6)
      {
        *__dst = 0;
        *a3 = 0.0;
      }

      v7 = 1;
      break;
    case 1:
      if (v6)
      {
        *__dst = xmmword_1DE09EA70;
        *a3 = xmmword_1DE09EA80;
      }

      v7 = 4;
      break;
    case 2:
      if (v6)
      {
        *__dst = xmmword_1DE11729C;
        __dst[1] = unk_1DE1172AC;
        __dst[2] = xmmword_1DE1172BC;
        *(a3 + 2) = xmmword_1DE1172EC;
        *a3 = xmmword_1DE1172CC;
        *(a3 + 1) = unk_1DE1172DC;
      }

      v7 = 12;
      break;
    case 3:
      if (v6)
      {
        __dst[2] = xmmword_1DE11731C;
        __dst[3] = unk_1DE11732C;
        __dst[4] = xmmword_1DE11733C;
        __dst[5] = unk_1DE11734C;
        *__dst = xmmword_1DE1172FC;
        __dst[1] = unk_1DE11730C;
        *(a3 + 2) = xmmword_1DE11737C;
        *(a3 + 3) = unk_1DE11738C;
        *(a3 + 4) = xmmword_1DE11739C;
        *(a3 + 5) = unk_1DE1173AC;
        v7 = 24;
        *a3 = xmmword_1DE11735C;
        *(a3 + 1) = unk_1DE11736C;
      }

      else
      {
        v7 = 24;
      }

      break;
    case 4:
      if (v6)
      {
        __dst[2] = xmmword_1DE1173DC;
        __dst[3] = unk_1DE1173EC;
        __dst[8] = xmmword_1DE11743C;
        __dst[6] = xmmword_1DE11741C;
        __dst[7] = unk_1DE11742C;
        __dst[4] = xmmword_1DE1173FC;
        __dst[5] = unk_1DE11740C;
        *__dst = xmmword_1DE1173BC;
        __dst[1] = unk_1DE1173CC;
        *(a3 + 6) = xmmword_1DE1174AC;
        *(a3 + 7) = unk_1DE1174BC;
        *(a3 + 8) = xmmword_1DE1174CC;
        *(a3 + 2) = xmmword_1DE11746C;
        *(a3 + 3) = unk_1DE11747C;
        *(a3 + 4) = xmmword_1DE11748C;
        *(a3 + 5) = unk_1DE11749C;
        v7 = 36;
        *a3 = xmmword_1DE11744C;
        *(a3 + 1) = unk_1DE11745C;
      }

      else
      {
        v7 = 36;
      }

      break;
    case 5:
      if (v6)
      {
        __dst[12] = xmmword_1DE11759C;
        __dst[13] = unk_1DE1175AC;
        __dst[14] = xmmword_1DE1175BC;
        __dst[8] = xmmword_1DE11755C;
        __dst[9] = unk_1DE11756C;
        __dst[10] = xmmword_1DE11757C;
        __dst[11] = unk_1DE11758C;
        __dst[4] = xmmword_1DE11751C;
        __dst[5] = unk_1DE11752C;
        __dst[6] = xmmword_1DE11753C;
        __dst[7] = unk_1DE11754C;
        *__dst = xmmword_1DE1174DC;
        __dst[1] = unk_1DE1174EC;
        __dst[2] = xmmword_1DE1174FC;
        __dst[3] = unk_1DE11750C;
        *(a3 + 12) = xmmword_1DE11768C;
        *(a3 + 13) = unk_1DE11769C;
        *(a3 + 14) = xmmword_1DE1176AC;
        *(a3 + 8) = xmmword_1DE11764C;
        *(a3 + 9) = unk_1DE11765C;
        *(a3 + 10) = xmmword_1DE11766C;
        *(a3 + 11) = unk_1DE11767C;
        *(a3 + 4) = xmmword_1DE11760C;
        *(a3 + 5) = unk_1DE11761C;
        *(a3 + 6) = xmmword_1DE11762C;
        *(a3 + 7) = unk_1DE11763C;
        *a3 = xmmword_1DE1175CC;
        *(a3 + 1) = unk_1DE1175DC;
        v7 = 60;
        *(a3 + 2) = xmmword_1DE1175EC;
        *(a3 + 3) = unk_1DE1175FC;
      }

      else
      {
        v7 = 60;
      }

      break;
    case 6:
      if (v6)
      {
        v31 = __C;
        memcpy(__dst, &unk_1DE1176BC, 0x150uLL);
        memcpy(a3, &unk_1DE11780C, 0x150uLL);
        __C = v31;
      }

      v7 = 84;
      break;
    case 7:
      if (v6)
      {
        v21 = __C;
        memcpy(__dst, &unk_1DE11795C, 0x1B0uLL);
        memcpy(a3, &unk_1DE117B0C, 0x1B0uLL);
        __C = v21;
      }

      v7 = 108;
      break;
    case 8:
      if (v6)
      {
        v37 = __C;
        memcpy(__dst, &unk_1DE117CBC, 0x240uLL);
        memcpy(a3, &unk_1DE117EFC, 0x240uLL);
        __C = v37;
      }

      v7 = 144;
      break;
    case 9:
      if (v6)
      {
        v17 = __C;
        memcpy(__dst, &unk_1DE11813C, 0x2D0uLL);
        memcpy(a3, &unk_1DE11840C, 0x2D0uLL);
        __C = v17;
      }

      v7 = 180;
      break;
    case 10:
      if (v6)
      {
        v35 = __C;
        memcpy(__dst, &unk_1DE1186DC, 0x360uLL);
        memcpy(a3, &unk_1DE118A3C, 0x360uLL);
        __C = v35;
      }

      v7 = 216;
      break;
    case 11:
      if (v6)
      {
        v13 = __C;
        memcpy(__dst, &unk_1DE118D9C, 0x428uLL);
        memcpy(a3, &unk_1DE1191C4, 0x428uLL);
        __C = v13;
      }

      v7 = 266;
      break;
    case 12:
      if (v6)
      {
        v15 = __C;
        memcpy(__dst, &unk_1DE1195EC, 0x4E8uLL);
        memcpy(a3, &unk_1DE119AD4, 0x4E8uLL);
        __C = v15;
      }

      v7 = 314;
      break;
    case 13:
      if (v6)
      {
        v29 = __C;
        memcpy(__dst, &unk_1DE119FBC, 0x5B8uLL);
        memcpy(a3, &unk_1DE11A574, 0x5B8uLL);
        __C = v29;
      }

      v7 = 366;
      break;
    case 14:
      if (v6)
      {
        v11 = __C;
        memcpy(__dst, &unk_1DE11AB2C, 0x698uLL);
        memcpy(a3, &unk_1DE11B1C4, 0x698uLL);
        __C = v11;
      }

      v7 = 422;
      break;
    case 15:
      if (v6)
      {
        v19 = __C;
        memcpy(__dst, &unk_1DE11B85C, 0x788uLL);
        memcpy(a3, &unk_1DE11BFE4, 0x788uLL);
        __C = v19;
      }

      v7 = 482;
      break;
    case 16:
      if (v6)
      {
        v9 = __C;
        memcpy(__dst, &unk_1DE11C76C, 0x888uLL);
        memcpy(a3, &unk_1DE11CFF4, 0x888uLL);
        __C = v9;
      }

      v7 = 546;
      break;
    case 17:
      if (v6)
      {
        v23 = __C;
        memcpy(__dst, &unk_1DE11D87C, 0x998uLL);
        memcpy(a3, &unk_1DE11E214, 0x998uLL);
        __C = v23;
      }

      v7 = 614;
      break;
    case 18:
      if (v6)
      {
        v33 = __C;
        memcpy(__dst, &unk_1DE11EBAC, 0xAB8uLL);
        memcpy(a3, &unk_1DE11F664, 0xAB8uLL);
        __C = v33;
      }

      v7 = 686;
      break;
    case 19:
      if (v6)
      {
        v41 = __C;
        memcpy(__dst, &unk_1DE12011C, 0xBE8uLL);
        memcpy(a3, &unk_1DE120D04, 0xBE8uLL);
        __C = v41;
      }

      v7 = 762;
      break;
    case 20:
      if (v6)
      {
        v25 = __C;
        memcpy(__dst, &unk_1DE1218EC, 0xD28uLL);
        memcpy(a3, &unk_1DE122614, 0xD28uLL);
        __C = v25;
      }

      v7 = 842;
      break;
    case 21:
      if (v6)
      {
        v27 = __C;
        memcpy(__dst, &unk_1DE12333C, 0xE78uLL);
        memcpy(a3, &unk_1DE1241B4, 0xE78uLL);
        __C = v27;
      }

      v7 = 926;
      break;
    default:
      if (v6)
      {
        v39 = __C;
        memcpy(__dst, &unk_1DE12502C, 0xFD8uLL);
        memcpy(a3, &unk_1DE126004, 0xFD8uLL);
        __C = v39;
      }

      v7 = 1014;
      break;
  }

  if (__C)
  {
    __A = 1.0;
    vDSP_vfill(&__A, __C, 1, v7);
  }

  return v7;
}

void *std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    MEMORY[0x1E12BD160](v1, 0x1060C40CA828048);
    return v2;
  }

  return result;
}

uint64_t std::shared_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    caulk::shared_instance_manager<DFTSetups>::remove_expired(v2);
    os_unfair_lock_unlock(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      vDSP_DFT_DestroySetup(v5);
    }

    MEMORY[0x1E12BD160](v3, 0x1060C40CA828048);
  }

  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void caulk::shared_instance_manager<DFTSetups>::remove_expired(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (v3 != v2)
  {
    while (1)
    {
      v4 = v3[1];
      if (!v4 || *(v4 + 8) == -1)
      {
        break;
      }

      v3 += 2;
      if (v3 == v2)
      {
        return;
      }
    }

    if (v3 != v2)
    {
      v5 = v3 + 2;
      if (v3 + 2 != v2)
      {
        do
        {
          v6 = v5[1];
          if (v6 && *(v6 + 8) != -1)
          {
            v7 = *v5;
            *v5 = 0;
            v5[1] = 0;
            v8 = v3[1];
            *v3 = v7;
            v3[1] = v6;
            if (v8)
            {
              std::__shared_weak_count::__release_weak(v8);
            }

            v3 += 2;
          }

          v5 += 2;
        }

        while (v5 != v2);
        v2 = *(a1 + 16);
      }
    }
  }

  if (v3 != v2)
  {
    while (v2 != v3)
    {
      v9 = *(v2 - 1);
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v2 -= 2;
    }

    *(a1 + 16) = v3;
  }
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F593A518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t MultiRadixRealFFT::Initialize(MultiRadixRealFFT *this, unsigned int a2)
{
  {
    operator new();
  }

  v4 = DFTSetupList<false>::instance(void)::global;
  os_unfair_lock_lock(DFTSetupList<false>::instance(void)::global);
  caulk::shared_instance_manager<DFTSetups>::remove_expired(v4);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v5 == v6)
  {
LABEL_11:
    Setup = vDSP_DFT_zrop_CreateSetup(0, a2, vDSP_DFT_FORWARD);
    if (Setup)
    {
      vDSP_DFT_zrop_CreateSetup(Setup, a2, vDSP_DFT_INVERSE);
    }

    operator new();
  }

  while (1)
  {
    v7 = v5[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        break;
      }
    }

LABEL_4:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_11;
    }
  }

  if (!*v5 || (v9 = *(*v5 + 16), *v9 != a2))
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }

    goto LABEL_4;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v8;
  }

  else
  {
    v17 = v8;
    (v8->__on_zero_shared)();
    v12 = v17;
    std::__shared_weak_count::__release_weak(v17);
  }

  os_unfair_lock_unlock(v4);
  if (*(v9 + 8) && *(v9 + 16))
  {
    v13 = v12;
    v14 = 0;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v9 = 0;
    v14 = 1936292453;
    v13 = v12;
    v12 = 0;
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(this + 1);
  *this = v9;
  *(this + 1) = v12;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (v12)
    {
      goto LABEL_27;
    }
  }

  else if (v12)
  {
LABEL_27:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  return v14;
}

void sub_1DE072908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](va);
  os_unfair_lock_unlock(v4);
  _Unwind_Resume(a1);
}

void MultiRadixRealFFT::RealInPlaceTransform(MultiRadixRealFFT *this, DSPSplitComplex *a2, int a3, float a4)
{
  if (!*this)
  {
    abort();
  }

  v7 = 16;
  if (a3 == 1)
  {
    v7 = 8;
  }

  vDSP_DFT_Execute(*(*this + v7), a2->realp, a2->imagp, a2->realp, a2->imagp);
  if (a3 == 1)
  {
    v8 = 1056964608;
    MEMORY[0x1E12BE940](a2->realp, 1, &v8, a2->realp, 1, **this >> 1);
    MEMORY[0x1E12BE940](a2->imagp, 1, &v8, a2->imagp, 1, **this >> 1);
  }
}

uint64_t MultiRadixRealFFT::RealOutOfPlaceForwardTransform(MultiRadixRealFFT *this, DSPComplex *__C, DSPSplitComplex *a3, float a4)
{
  vDSP_ctoz(__C, 2, a3, 1, **this >> 1);
  if (!*this)
  {
    abort();
  }

  vDSP_DFT_Execute(*(*this + 8), a3->realp, a3->imagp, a3->realp, a3->imagp);
  v8 = a4 * 0.5;
  MEMORY[0x1E12BE940](a3->realp, 1, &v8, a3->realp, 1, **this >> 1);
  return MEMORY[0x1E12BE940](a3->imagp, 1, &v8, a3->imagp, 1, **this >> 1);
}

void MultiRadixRealFFT::RealOutOfPlaceInverseTransform(const vDSP_DFT_SetupStruct ***this, const DSPSplitComplex *a2, DSPComplex *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if (!*this)
  {
    abort();
  }

  v7 = *v3;
  MEMORY[0x1EEE9AC00](this);
  v9 = &v11 - ((v8 + 15) & 0x7FFFFFFF0);
  bzero(v9, v8);
  __Z.realp = v9;
  __Z.imagp = &v9[(2 * v7) & 0x1FFFFFFFCLL];
  vDSP_DFT_Execute(v3[2], a2->realp, a2->imagp, v9, __Z.imagp);
  if (*this)
  {
    v10 = **this >> 1;
  }

  else
  {
    v10 = 0;
  }

  vDSP_ztoc(&__Z, 1, a3, 2, v10);
}

void sub_1DE0731FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](va);
  os_unfair_lock_unlock(v4);
  _Unwind_Resume(a1);
}

uint64_t MultiRadixFFT_Dispose(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void MultiRadixFFT_CplxInPlaceTransform(void *a1, float **a2, int a3)
{
  if (a1)
  {
    if (!*a1)
    {
      abort();
    }

    v4 = 16;
    if (a3 == 1)
    {
      v4 = 8;
    }

    v5 = *(*a1 + v4);
    v7 = *a2;
    v6 = a2[1];
    v8 = *a2;

    vDSP_DFT_Execute(v5, v8, v6, v7, v6);
  }
}

uint64_t NextPrime(uint64_t a1)
{
  if (a1 >= 0xFFF2)
  {
    a1 = a1 | 1;
    v1 = a1;
    do
    {
      v2 = 1;
      v3 = 1;
      do
      {
        v4 = kPrimes[v2];
        if (v4 * v4 > v1)
        {
          break;
        }

        v5 = v1 % v4;
        v3 &= v5 != 0;
      }

      while (v5 && v2++ < 0x198D);
      if (v3)
      {
        return v1;
      }

      v1 = (v1 + 2);
    }

    while (v1);
  }

  if (a1 >= 3)
  {
    v7 = 0;
    v8 = 6541;
    do
    {
      v9 = (v8 + v7) / 2;
      if (a1 <= kPrimes[v9])
      {
        v8 = (v8 + v7) / 2;
      }

      else
      {
        v7 = v9 + 1;
      }

      v1 = kPrimes[v7];
    }

    while (a1 > v1);
    return v1;
  }

  return 2;
}

void Biquad::GetHipassParams(Biquad *this, double a2, double a3, BiquadCoefficients *a4)
{
  v5 = a2 * 3.14159265;
  if (v5 <= 0.0)
  {
    *this = 0;
    *(this + 1) = 0;
    v9 = 1.0;
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  else
  {
    v6 = __sincos_stret(fmin(v5, 3.11017673));
    v7 = v6.__cosval * 0.5 + 0.5;
    v8 = 1.0 / (v6.__sinval * 0.5 + 1.0);
    *this = v6.__cosval * -2.0 * v8;
    *(this + 1) = v8 - v6.__sinval * 0.5 * v8;
    v9 = v7 * v8;
    *(this + 3) = v7 * -2.0 * v8;
    *(this + 4) = v7 * v8;
  }

  *(this + 2) = v9;
}

float64x2_t Biquad::Process_Float32(Biquad *this, float *a2, float *a3, int a4)
{
  v4 = vcvt_f32_f64(*(this + 40));
  v5 = vcvt_f32_f64(*(this + 56));
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = *(this + 4);
  v9 = *this;
  v10 = *(this + 1);
  v11 = v4.f32[1];
  v12 = v5.f32[1];
  v13 = a4 - 4;
  if (a4 >= 4)
  {
    v15 = *a2;
    v14 = a2[1];
    v17 = a2[2];
    v16 = a2[3];
    v18 = (((v4.f32[0] * v7) + (v4.f32[1] * v8)) - (v5.f32[0] * v9)) + (*a2 * v6);
    v19 = ((v4.f32[0] * v8) + (*a2 * v7)) + (v14 * v6);
    v20 = (v14 * v7) + (v17 * v6);
    v21 = v16 * v6;
    a2 += 4;
    if (v13 < 5)
    {
      v25 = v15;
      v27 = v14;
      v11 = v17;
      v4.f32[0] = v16;
    }

    else
    {
      v22 = -v10;
      do
      {
        v23 = *a2;
        v24 = v18 - (v12 * v10);
        *a3 = v24;
        v25 = a2[1];
        v26 = v19 - ((v24 * v9) + (v5.f32[0] * v10));
        a3[1] = v26;
        v27 = a2[2];
        v28 = (v20 + (v15 * v8)) - ((v26 * v9) - (v24 * v22));
        a3[2] = v28;
        v11 = a2[3];
        v12 = ((v21 + (v14 * v8)) + (v17 * v7)) - ((v28 * v9) - (v26 * v22));
        a3[3] = v12;
        v4.f32[0] = a2[4];
        v5.f32[0] = (((v17 * v8) - ((v12 * v9) - (v28 * v22))) + (v16 * v7)) + (v23 * v6);
        v18 = (((v16 * v8) + (v23 * v7)) + (v25 * v6)) - (v5.f32[0] * v9);
        v19 = ((v23 * v8) + (v25 * v7)) + (v27 * v6);
        v20 = (v27 * v7) + (v11 * v6);
        a3[4] = v5.f32[0];
        a3 += 5;
        v13 -= 5;
        a2 += 5;
        v16 = v4.f32[0];
        v21 = v4.f32[0] * v6;
        v17 = v11;
        v14 = v27;
        v15 = v25;
      }

      while (v13 > 4);
    }

    v29 = v18 - (v12 * v10);
    v30 = v19 - ((v29 * v9) + (v5.f32[0] * v10));
    *a3 = v29;
    a3[1] = v30;
    v12 = (v20 + (v25 * v8)) - ((v29 * v10) + (v30 * v9));
    v5.f32[0] = ((v21 + (v27 * v8)) + (v11 * v7)) - ((v30 * v10) + (v12 * v9));
    a3[2] = v12;
    a3[3] = v5.f32[0];
    a3 += 4;
    a4 = v13;
  }

  if (a4 < 1)
  {
    v35 = v12;
    v33 = v11;
  }

  else
  {
    v31 = -v9;
    v32 = a4 + 1;
    do
    {
      v33 = v4.f32[0];
      v34 = *a2++;
      v4.f32[0] = v34;
      v35 = v5.f32[0];
      v5.f32[0] = (((v11 * v8) - ((v12 * v10) - (v5.f32[0] * v31))) + (v33 * v7)) + (v34 * v6);
      *a3++ = v5.f32[0];
      --v32;
      v11 = v33;
      v12 = v35;
    }

    while (v32 > 1);
  }

  v36 = fabsf(v4.f32[0]);
  v37 = v36 > 1.0e-15;
  v38 = v36 < 1.0e15;
  v39 = 0.0;
  if (v37 && v38)
  {
    v40.f32[0] = v4.f32[0];
  }

  else
  {
    v40.f32[0] = 0.0;
  }

  v41 = fabsf(v33);
  if (v41 > 1.0e-15 && v41 < 1.0e15)
  {
    v42 = v33;
  }

  else
  {
    v42 = 0.0;
  }

  v40.f32[1] = v42;
  v43 = fabsf(v5.f32[0]);
  if (v43 <= 1.0e-15 || v43 >= 1.0e15)
  {
    v5.f32[0] = 0.0;
  }

  v44 = fabsf(v35);
  if (v44 > 1.0e-15 && v44 < 1.0e15)
  {
    v39 = v35;
  }

  v5.f32[1] = v39;
  *(this + 40) = vcvtq_f64_f32(v40);
  result = vcvtq_f64_f32(v5);
  *(this + 56) = result;
  return result;
}

uint64_t HOA::RotationMatrix::RotationMatrix(uint64_t a1, unsigned int a2, int a3, char a4)
{
  v4 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  if (a2 >= 4 && a3 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v26 = "HOA.cpp";
      v27 = 1024;
      v29 = 2080;
      v28 = 29;
      v30 = "RotationMatrix";
      v31 = 1024;
      v32 = 29;
      v33 = 1024;
      v34 = v4;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Trying to create a HOA rotation matrix of order = %d > 3 with FuMa normalization, capping to order 3", buf, 0x28u);
    }

    v4 = 3;
  }

  v7 = v4 + 1;
  *buf = 0;
  std::vector<float>::assign(a1, (8 * v7 * v7 - 2) * v7 / 6, buf, v6);
  if (v7 > (*(a1 + 40) - *(a1 + 24)) >> 4)
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 32);
  v11 = 1;
  do
  {
    v12 = (v11 * v11);
    v13 = *a1 + 4 * ((v8 * v9 - 2) * v9 / 6uLL);
    v14 = *(a1 + 40);
    if (v10 < v14)
    {
      *v10 = v13;
      v10[1] = v12;
      v10 += 2;
    }

    else
    {
      v15 = *(a1 + 24);
      v16 = v10 - v15;
      v17 = (v10 - v15) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v19 = v14 - v15;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v21 = v17;
      v22 = (16 * v17);
      *v22 = v13;
      v22[1] = v12;
      v10 = (16 * v17 + 16);
      v23 = &v22[-2 * v21];
      memcpy(v23, v15, v16);
      *(a1 + 24) = v23;
      *(a1 + 32) = v10;
      *(a1 + 40) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    *(a1 + 32) = v10;
    ++v9;
    v11 += 2;
    v8 += 8;
  }

  while (v9 <= v4);
  return a1;
}

void sub_1DE073AA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

HOA::RotationMatrix *HOA::RotationMatrix::RotationMatrix(HOA::RotationMatrix *this, int a2, char a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = 0x40000000;
  do
  {
    v7 = v6;
    v6 >>= 2;
  }

  while (v7 > a2);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = 0;
  do
  {
    v9 = v8 + v7;
    v10 = 2 * v7;
    if (v5 < v8 + v7)
    {
      v9 = 0;
      v10 = 0;
    }

    v5 -= v9;
    v11 = v10 + v8;
    v8 = (v10 + v8) >> 1;
    v12 = v7 > 3;
    v7 >>= 2;
  }

  while (v12);
  if (v11 > 1)
  {
    v13 = v8 - 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  v14 = a2 & 0xFFFF0000;
  if ((a2 & 0xFFFF0000) == 0x6B0000)
  {
    v15 = 2;
  }

  else if (v14 == 12517376)
  {
    v15 = 0;
  }

  else if (v14 == 12451840)
  {
    v15 = 1;
  }

  else
  {
    v16 = v13;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "HOA.cpp";
      v20 = 1024;
      v21 = 632;
      v22 = 2080;
      v23 = "normalizationFromTag";
      v24 = 1024;
      v25 = 632;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; This is not SN3D/N3D/FuMa: unsupported", &v18, 0x22u);
    }

    v15 = -1;
    v13 = v16;
  }

  HOA::RotationMatrix::RotationMatrix(this, v13, v15, a3);
  return this;
}

void HOA::RotationMatrix::setIdentity(float **this)
{
  vDSP_vclr(*this, 1, this[1] - *this);
  v2 = this[3];
  v3 = this[4];
  if (v2 != v3)
  {
    v4 = 2;
    do
    {
      __A = 1.0;
      v5 = *v2;
      v2 += 2;
      vDSP_vfill(&__A, v5, v4, v4 - 1);
      v4 += 2;
    }

    while (v2 != v3);
  }
}

void HOA::RotationMatrix::setRotationMatrixYPR(float **this, float a2, float a3, float a4)
{
  v4 = this;
  v128 = *MEMORY[0x1E69E9840];
  if (a2 == 0.0 && a3 == 0.0 && a4 == 0.0)
  {
    vDSP_vclr(*this, 1, this[1] - *this);
    v5 = *(v4 + 3);
    v6 = *(v4 + 4);
    if (v5 != v6)
    {
      v7 = 2;
      do
      {
        __A = 1.0;
        v8 = *v5;
        v5 += 2;
        vDSP_vfill(&__A, v8, v7, v7 - 1);
        v7 += 2;
      }

      while (v5 != v6);
    }

    return;
  }

  v9 = this[3];
  v10 = (this[4] - v9) >> 4;
  v11 = (v10 - 1);
  **v9 = 1065353216;
  if (v10 >= 2 && v10 != 1)
  {
    v13 = a4 * 0.017453;
    v14 = a3 * 0.017453;
    v15 = __sincosf_stret(a2 * -0.017453);
    v16 = __sincosf_stret(v14);
    v18 = __sincosf_stret(v13);
    v19 = *(v9 + 2);
    *v19 = -(((v16.__sinval * v15.__sinval) * v18.__sinval) - (v18.__cosval * v15.__cosval));
    v19[1] = -(((v16.__sinval * v15.__sinval) * v18.__cosval) + (v18.__sinval * v15.__cosval));
    v19[2] = v16.__cosval * v15.__sinval;
    v19[3] = v18.__sinval * v16.__cosval;
    v19[4] = v18.__cosval * v16.__cosval;
    v19[5] = v16.__sinval;
    v20 = -(v15.__cosval * v16.__sinval);
    v21 = -((v18.__cosval * v15.__sinval) - (v20 * v18.__sinval));
    v22 = (v18.__sinval * v15.__sinval) + (v20 * v18.__cosval);
    v19[6] = v21;
    v19[7] = v22;
    v19[8] = v16.__cosval * v15.__cosval;
    if (v10 == 2)
    {
      if (*(v4 + 12) == 2)
      {
        HOA::RotationMatrix::toFuMa(v4);
      }

      if (*(v4 + 52))
      {
        goto LABEL_102;
      }

      return;
    }

    v100 = v9;
    v95 = v4;
    v23 = (2 * v11);
    v24 = (2 * v11) | 1;
    (MEMORY[0x1EEE9AC00])(v17);
    v26 = &v94 - ((v25 + 15) & 0x3FFFFFFF0);
    MEMORY[0x1EEE9AC00](v27);
    v29 = (&v94 - v28);
    v105 = v30;
    bzero(&v94 - v28, v30);
    v123 = 0;
    v31 = 0;
    v32 = 0;
    v33 = &v29[v24];
    v34 = &v29[2 * v24];
    v117 = v24;
    v126 = (v29 - 1);
    v99 = (v10 - 2);
    v35 = *v19;
    v29[2] = v19[2];
    *v29 = v35;
    *v33 = v18.__sinval * v16.__cosval;
    v33[1] = v18.__cosval * v16.__cosval;
    v33[2] = v16.__sinval;
    v116 = (v11 << 33) ^ 0xFFFFFFFF00000000;
    *v34 = v21;
    v34[1] = v22;
    v109 = (v11 << 33) | 0x100000000;
    v34[2] = v16.__cosval * v15.__cosval;
    v115 = v23 | 1;
    v36 = (8 * v10 - 8) | 4;
    v37 = (4 * v10 - 4) | 2;
    v108 = (-2 * v10) | 1;
    v97 = (-4 * v10) | 2;
    v107 = (8 * (v23 >> 1)) | 4;
    v38 = -2;
    v119 = 3;
    v106 = 5;
    v39 = 2;
    v40 = 20;
    v41 = (v11 << 35) | 0x400000000;
    v96 = (v11 << 34) | 0x200000000;
    v42 = v36;
    v122 = v37;
    v98 = v37;
    while (1)
    {
      v118 = v40;
      v104 = v32;
      v114 = 8 * v32;
      bzero(v26, v105);
      v43 = 0;
      v125 = 2 * (v39 - 1);
      v111 = v39 * v117;
      v113 = v39 - 1;
      v44 = &v29[2 * v39 - 2];
      v112 = v39 - 2;
      v110 = &v29[(v39 - 2) * v117];
      v45 = v31 + 4;
      v101 = v37;
      v46 = v37;
      v47 = v97;
      v103 = v42;
      v124 = v42;
      v48 = v116;
      v102 = v41;
      v49 = v41;
      v50 = v38;
      do
      {
        v51 = 0;
        v52 = v39 - v50;
        if (v50 >= 0)
        {
          v53 = v50;
        }

        else
        {
          v53 = -v50;
        }

        v54 = ((v50 + v39) * v52);
        v55 = (((v53 + v39 - 1) << (v50 == 0)) * (v53 + v39));
        if (v50)
        {
          v56 = 0.5;
        }

        else
        {
          v56 = -0.5;
        }

        v57 = ((v39 - v53 - 1) * (v39 - v53));
        v58 = (v50 + v113) * v117;
        v59 = (v50 + v39) * v117;
        v60 = (v113 + ~v50) * v117;
        if (v50 == -1)
        {
          v61 = 1.0;
        }

        else
        {
          v61 = 0.0;
        }

        v62 = sqrtf(v61 + 1.0);
        v63 = (v112 + v50) * v117;
        if (v50 == 1)
        {
          v64 = 1.0;
        }

        else
        {
          v64 = 0.0;
        }

        v65 = v52 * v117;
        v66 = (v39 - v50) * v117;
        v67 = 4;
        v120 = v49;
        v121 = v48;
        v68 = v48;
        v69 = v49;
        v70 = sqrtf(v64 + 1.0);
        v71 = v111;
        v72 = v110;
        do
        {
          LODWORD(v76) = v38 + v51;
          if (v38 + v51 >= 0)
          {
            v76 = v76;
          }

          else
          {
            v76 = -v76;
          }

          v77 = v51 * (v31 + v67);
          if (v39 == v76)
          {
            v77 = (2 * v39 - 1) * 2 * v39;
          }

          v78 = 1.0 / v77;
          v79 = sqrtf(v54 * v78);
          v75 = sqrtf(v57 * v78) * -0.5;
          if (v50)
          {
            v80 = v75;
          }

          else
          {
            v80 = -0.0;
          }

          if (v79 != 0.0)
          {
            if (v51)
            {
              if (v45 == v51)
              {
                v81 = -((v29[v58] * v19[3]) - (*&v44[4 * v58] * v19[5]));
              }

              else
              {
                v81 = *&v126[v68 >> 30] * v19[4];
              }
            }

            else
            {
              v81 = (v29[v58] * v19[5]) + (*&v44[4 * v58] * v19[3]);
            }

            v79 = v81 * v79;
          }

          v82 = v56 * sqrtf(v55 * v78);
          if (v82 == 0.0)
          {
            if (v80 == 0.0)
            {
              v75 = v80;
              goto LABEL_37;
            }

            if (v50 >= 1)
            {
LABEL_77:
              if (v51)
              {
                if (v45 == v51)
                {
                  v73 = -((v29[v59] * v19[6]) - (*&v44[4 * v59] * v19[8]));
                  v74 = -((v29[v60] * *v19) - (*&v44[4 * v60] * v19[2]));
                }

                else
                {
                  v73 = *&v126[4 * v43 + 4 * v51] * v19[7];
                  v74 = *&v126[4 * v46 + 4 * v51] * v19[1];
                }
              }

              else
              {
                v73 = (v29[v59] * v19[8]) + (*&v44[4 * v59] * v19[6]);
                v74 = (v29[v60] * v19[2]) + (*&v44[4 * v60] * *v19);
              }

              v75 = (v74 + v73) * v75;
              goto LABEL_37;
            }

LABEL_90:
            if (v51)
            {
              if (v45 == v51)
              {
                v89 = -((v29[v63] * v19[6]) - (*&v44[4 * v63] * v19[8]));
                v90 = -((v29[v66] * *v19) - (*&v44[4 * v66] * v19[2]));
              }

              else
              {
                v89 = *&v126[4 * v47 + 4 * v51] * v19[7];
                v90 = *&v126[4 * v124 + 4 * v51] * v19[1];
              }
            }

            else
            {
              v89 = (v29[v63] * v19[8]) + (*&v44[4 * v63] * v19[6]);
              v90 = (v29[v66] * v19[2]) + (*&v44[4 * v66] * *v19);
            }

            v75 = (v89 - v90) * v80;
            goto LABEL_37;
          }

          if (v50)
          {
            if (v50 < 1)
            {
              if (v51)
              {
                if (v45 == v51)
                {
                  v87 = -((v29[v59] * v19[6]) - (*&v44[4 * v59] * v19[8]));
                  if (v50 == -1)
                  {
                    v87 = 0.0;
                  }

                  v88 = -((v29[v60] * *v19) - (*&v44[4 * v60] * v19[2]));
                }

                else
                {
                  v87 = *&v126[4 * v43 + 4 * v51] * v19[7];
                  if (v50 == -1)
                  {
                    v87 = 0.0;
                  }

                  v88 = *&v126[4 * v46 + 4 * v51] * v19[1];
                }
              }

              else
              {
                v87 = (v29[v59] * v19[8]) + (*&v44[4 * v59] * v19[6]);
                if (v50 == -1)
                {
                  v87 = 0.0;
                }

                v88 = (v29[v60] * v19[2]) + (*&v44[4 * v60] * *v19);
              }

              v82 = (v87 + (v88 * v62)) * v82;
              if (v75 != 0.0)
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (v51)
              {
                if (v45 == v51)
                {
                  v83 = -((v29[v63] * v19[6]) - (*&v44[4 * v63] * v19[8]));
                  v84 = -((v29[v65] * *v19) - (*&v44[4 * v65] * v19[2]));
                }

                else
                {
                  v83 = *&v126[4 * v47 + 4 * v51] * v19[7];
                  v84 = *&v126[v69 >> 30] * v19[1];
                }
              }

              else
              {
                v83 = (v29[v63] * v19[8]) + (*&v44[4 * v63] * v19[6]);
                v84 = (v29[v65] * v19[2]) + (*&v44[4 * v65] * *v19);
              }

              if (v50 == 1)
              {
                v84 = 0.0;
              }

              v82 = -(v84 - (v83 * v70)) * v82;
              if (v75 != 0.0)
              {
                goto LABEL_77;
              }
            }
          }

          else
          {
            if (v51)
            {
              if (v45 == v51)
              {
                v85 = -((v29[v71] * v19[6]) - (*&v44[4 * v71] * v19[8]));
                v86 = -((*v72 * *v19) - (v72[v125] * v19[2]));
              }

              else
              {
                v85 = *&v126[4 * v122 + 4 * v51] * v19[7];
                v86 = *&v126[4 * v123 + 4 * v51] * v19[1];
              }
            }

            else
            {
              v85 = (v29[v71] * v19[8]) + (*&v44[4 * v71] * v19[6]);
              v86 = (*v72 * v19[2]) + (v72[v125] * *v19);
            }

            v82 = (v86 + v85) * v82;
            v75 = -0.0;
          }

LABEL_37:
          *&v26[4 * v43 + 4 * v51++] = (v82 + v79) + v75;
          v69 += 0x100000000;
          v68 += 0x100000000;
          --v67;
        }

        while (v31 + 5 != v51);
        ++v50;
        v49 = v120 + v116;
        v48 = v121 + v109;
        v43 += v115;
        v124 += v108;
        v47 += v115;
        v46 += v108;
      }

      while (v119 != v50);
      v91 = *&v100[4 * v39];
      v92 = v26;
      v93 = v106;
      do
      {
        memcpy(v91, v92, v114 + 20);
        v92 += v107;
        v91 += v118;
        --v93;
      }

      while (v93);
      memcpy(v29, v26, v105);
      ++v39;
      --v38;
      ++v119;
      v32 = v104 + 1;
      v106 += 2;
      v31 += 2;
      v41 = v102 + v96;
      v42 = v103 + v98;
      v37 = v101 + v98;
      v123 += v115;
      v122 += v115;
      v40 = v118 + 8;
      if (v104 + 1 == v99)
      {
        v4 = v95;
        if (*(v95 + 12) == 2)
        {
          HOA::RotationMatrix::toFuMa(v95);
        }

        if (*(v4 + 52) == 1)
        {
LABEL_102:

          HOA::RotationMatrix::transposePrivate(v4);
        }

        return;
      }
    }
  }
}

void HOA::RotationMatrix::toFuMa(HOA::RotationMatrix *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  v2 = (*(this + 4) - v1) >> 4;
  v3 = v2 - 1;
  if (v2 >= 2 && v2 != 1)
  {
    __B = 0u;
    v39 = 0u;
    LODWORD(v40) = 0;
    DWORD1(__B) = 1065353216;
    __asm { FMOV            V8.2S, #1.0 }

    *(&v39 + 4) = _D8;
    *&__A = 0;
    v27 = 0u;
    *(&__A + 1) = _D8;
    HIDWORD(v27) = 1065353216;
    LODWORD(v28) = 0;
    LODWORD(v15) = 0;
    __C = 0u;
    v14 = 0u;
    vDSP_mmul(*(v1 + 16), 1, &__B, 1, &__C, 1, 3uLL, 3uLL, 3uLL);
    vDSP_mmul(&__A, 1, &__C, 1, *(*(this + 3) + 16), 1, 3uLL, 3uLL, 3uLL);
    if (v3 != 1)
    {
      v42 = 0u;
      v43 = 0u;
      LODWORD(v44) = 0;
      v40 = 0u;
      v41 = 0u;
      __B = 0u;
      v39 = 0u;
      LODWORD(v39) = 1065353216;
      HIDWORD(v39) = 1065353216;
      DWORD2(v40) = 1065353216;
      LODWORD(v42) = 1065353216;
      HIDWORD(v43) = 1065353216;
      memset(v30, 0, sizeof(v30));
      LODWORD(v31) = 0;
      v28 = 0u;
      v29 = 0u;
      __A = 0u;
      v27 = 0u;
      DWORD2(__A) = 1065353216;
      LODWORD(v28) = 1065353216;
      HIDWORD(v28) = 1065353216;
      *(v30 + 12) = _D8;
      LODWORD(v19) = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      __C = 0u;
      v14 = 0u;
      vDSP_mmul(*(*(this + 3) + 32), 1, &__B, 1, &__C, 1, 5uLL, 5uLL, 5uLL);
      vDSP_mmul(&__A, 1, &__C, 1, *(*(this + 3) + 32), 1, 5uLL, 5uLL, 5uLL);
      if (v3 != 2)
      {
        v50 = 0;
        v46 = xmmword_1DE12D270;
        v47 = unk_1DE12D280;
        v48 = xmmword_1DE12D290;
        v49 = unk_1DE12D2A0;
        v42 = xmmword_1DE12D230;
        v43 = unk_1DE12D240;
        v44 = xmmword_1DE12D250;
        v45 = unk_1DE12D260;
        __B = xmmword_1DE12D1F0;
        v39 = unk_1DE12D200;
        v40 = xmmword_1DE12D210;
        v41 = unk_1DE12D220;
        v33 = xmmword_1DE12D334;
        v34 = unk_1DE12D344;
        v35 = xmmword_1DE12D354;
        v36 = unk_1DE12D364;
        v30[0] = xmmword_1DE12D2F4;
        v30[1] = unk_1DE12D304;
        v31 = xmmword_1DE12D314;
        v32 = unk_1DE12D324;
        __A = xmmword_1DE12D2B4;
        v27 = *algn_1DE12D2C4;
        v28 = xmmword_1DE12D2D4;
        v29 = unk_1DE12D2E4;
        v37 = 0;
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        __C = 0u;
        v14 = 0u;
        vDSP_mmul(*(*(this + 3) + 48), 1, &__B, 1, &__C, 1, 7uLL, 7uLL, 7uLL);
        vDSP_mmul(&__A, 1, &__C, 1, *(*(this + 3) + 48), 1, 7uLL, 7uLL, 7uLL);
        if (v3 >= 4)
        {
          v10 = 4;
          v11 = 9;
          do
          {
            v12 = *(*(this + 3) + 16 * v10);
            if (v12)
            {
              vDSP_vclr(v12, 1, (v11 * v11));
            }

            ++v10;
            v11 += 2;
          }

          while (v10 <= v3);
        }
      }
    }
  }
}

void HOA::RotationMatrix::transposePrivate(HOA::RotationMatrix *this)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  v2 = *(this + 4);
  MEMORY[0x1EEE9AC00](this);
  v7 = (v16 - v6);
  if (v5 >= 0x11 && (v5 & 0xFFFFFFFF0) != 16)
  {
    bzero(v16 - v6, 4 * v4);
    v9 = 1;
    v10 = 3;
    do
    {
      v11 = v3 + 16 * v9;
      v12 = *v11;
      if (*v11)
      {
        v13 = *(v11 + 8);
        vDSP_mtrans(*v11, 1, v7, 1, v10, v10);
        memcpy(v12, v7, 4 * v13);
        v3 = *(this + 3);
        v2 = *(this + 4);
      }

      ++v9;
      v10 += 2;
      v14 = (v2 - v3) >> 4;
      if (v14 <= 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14 - 1;
      }
    }

    while (v9 <= v15);
  }
}

uint64_t HOA::RotationMatrix::toRegularMatrix(uint64_t result, char *a2, uint64_t a3)
{
  if (((*(result + 32) - *(result + 24)) >> 4) <= 1)
  {
    LODWORD(v3) = 1;
  }

  else
  {
    v3 = (*(result + 32) - *(result + 24)) >> 4;
  }

  v4 = v3 * v3;
  if (a3 == v4 * v4)
  {
    v6 = result;
    bzero(a2, 4 * a3);
    v7 = *(v6 + 52);
    v52 = *(v6 + 24);
    v8 = (*(v6 + 32) - v52) >> 4;
    if (v8 <= 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = (v8 - 1);
    }

    if (v3 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v3;
    }

    if (*(v6 + 52))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = v4 + 1;
      v15 = 1;
      do
      {
        if (v9 >= v13)
        {
          v16 = *(v52 + 16 * v13);
        }

        else
        {
          v16 = 0;
        }

        LODWORD(result) = 0;
        v17 = v11;
        do
        {
          v18 = result;
          v19 = v17;
          v20 = v12 + 1;
          do
          {
            *&a2[4 * v19++] = *(v16 + 4 * v18);
            v18 += v15;
            --v20;
          }

          while (v20);
          result = (result + 1);
          v17 += v4;
        }

        while (result != v15);
        ++v13;
        v12 += 2;
        v15 += 2;
        v11 += v14;
        v14 += 2 * v4 + 2;
      }

      while (v13 != v10);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 2 * v3 * v3 + 2;
      v25 = v4 + 1;
      v26 = 1;
      do
      {
        if (v9 >= v23)
        {
          v28 = *(v52 + 16 * v23);
        }

        else
        {
          v28 = 0;
        }

        if ((v23 & 0x7FFFFFFC) != 0)
        {
          v29 = 0;
          v30 = 0;
          v31 = 2 * v23;
          result = v21 & 0xFFFFFFF8;
          v32 = v7;
          do
          {
            v33 = 0;
            v34 = v22 + v4 * v30;
            v35 = __CFADD__(v34, v31);
            v36 = __CFADD__(((2 * v23) | 1) * v30, v31);
            if (!v35 && !v36)
            {
              v37 = &a2[4 * v34 - v28 + -4 * ((2 * v23) | 1) * v30];
              v38 = v29;
              v39 = v32;
              v40 = v21 & 0xFFFFFFF8;
              if (v37 >= 0x20)
              {
                do
                {
                  v41 = (v28 + 4 * v38);
                  v42 = *v41;
                  v43 = v41[1];
                  v44 = &a2[4 * v39];
                  *v44 = v42;
                  *(v44 + 1) = v43;
                  v39 += 8;
                  v38 += 8;
                  v40 -= 8;
                }

                while (v40);
                v33 = (2 * v23) & 0xFFFFFFF8;
              }
            }

            v45 = v21 - v33;
            if (v21 < v33)
            {
              v45 = 0;
            }

            v46 = v45 + 1;
            do
            {
              *&a2[4 * (v32 + v33)] = *(v28 + 4 * (v29 + v33));
              LODWORD(v33) = v33 + 1;
              --v46;
            }

            while (v46);
            ++v30;
            v32 += v4;
            v29 += v26;
          }

          while (v30 != v26);
        }

        else
        {
          v47 = 0;
          v48 = 0;
          v49 = v7;
          do
          {
            LODWORD(result) = v47;
            v50 = v49;
            v51 = v21 + 1;
            do
            {
              *&a2[4 * v50++] = *(v28 + 4 * result);
              result = (result + 1);
              --v51;
            }

            while (v51);
            ++v48;
            v49 += v4;
            v47 += v26;
          }

          while (v48 != v26);
        }

        v27 = v4 + 1 + v24 * v23++;
        v22 += v27;
        v21 += 2;
        v26 += 2;
        v7 += v25;
        v25 += 2 * v4 + 2;
      }

      while (v23 != v10);
    }
  }

  return result;
}

uint64_t HOA::RotationMatrix::applyLeftAccumulating(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = *(result + 24);
  v6 = *(result + 32);
  v8 = (v6 - v7) >> 4;
  if (v8 <= 1)
  {
    LODWORD(v8) = 1;
  }

  v9 = (v8 * v8);
  if (a3 == v9 && a5 == v9)
  {
    v34 = 0;
    if (v6 != v7 && (*(result + 52) & 1) != 0)
    {
      MEMORY[0x1EEE9AC00](result);
      v15 = v14;
      v34 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = v16;
      bzero(v34, v13);
      result = v15;
      a6 = v17;
    }

    v18 = 0;
    v19 = 0;
    v20 = 1;
    v21 = a6;
    v35 = result;
    do
    {
      v22 = (v7 + 16 * v19);
      v24 = *v22;
      v23 = v22[1];
      if (v24)
      {
        v25 = v23 == (v20 * v20);
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
        break;
      }

      v36 = v19;
      if (*(result + 52) == 1)
      {
        v26 = v24;
        v24 = v34;
        vDSP_mtrans(v26, 1, v34, 1, v20, v20);
      }

      v27 = 0;
      v28 = 0;
      do
      {
        v29 = 0;
        v30 = v27 * v20;
        v31 = 1;
        do
        {
          MEMORY[0x1E12BE8F0](*(a2 + 8 * (v18 + v31 - 1)), 1, &v24[v29 + v30], *(a4 + 8 * (v28 + v18)), 1, *(a4 + 8 * (v28 + v18)), 1, v21);
          v29 = v31++;
        }

        while (v20 > v29);
        v27 = ++v28;
      }

      while (v20 > v28);
      v18 += v20;
      v20 += 2;
      v19 = v36 + 1;
      result = v35;
      v7 = *(v35 + 24);
      v32 = (*(v35 + 32) - v7) >> 4;
      v33 = v32 <= 1 ? 0 : v32 - 1;
    }

    while (v19 <= v33);
  }

  return result;
}

float32_t HOA::legendre(HOA *this, int a2, float32_t result)
{
  if (a2 >= this)
  {
    v3 = this;
  }

  else
  {
    v3 = a2;
  }

  if (this <= 4)
  {
    if (this <= 1)
    {
      v12 = 1.0;
      if (!this)
      {
        return v12;
      }

      if (this == 1)
      {
        if (v3)
        {
          return -sqrtf(-((result * result) + -1.0));
        }

        return result;
      }

      return 0.0;
    }

    if (this == 2)
    {
      if (v3 == 2)
      {
        return 3.0 - ((result * result) * 3.0);
      }

      if (v3 != 1)
      {
        v12 = 0.0;
        if (!v3)
        {
          return ((result * result) * 1.5) + -0.5;
        }

        return v12;
      }

      v6 = result * -3.0;
      v45 = -((result * result) + -1.0);
      return v6 * sqrtf(v45);
    }

    if (this != 3)
    {
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          return (((result * result) * 52.5) + -7.5) - ((result * result) * (((result * result) * 52.5) + -7.5));
        }

        if (v3 == 3)
        {
          v29 = 1.0 - (result * result);
          v30 = sqrtf(v29);
          v31 = -105.0;
          goto LABEL_104;
        }
      }

      else
      {
        if (!v3)
        {
          return ((((result * result) * -30.0) + (((result * result) * (result * result)) * 35.0)) * 0.125) + 0.375;
        }

        if (v3 == 1)
        {
          v4 = result * 2.5;
          v5 = result * result;
          v6 = v4 * ((v5 * -7.0) + 3.0);
LABEL_93:
          v45 = 1.0 - v5;
          return v6 * sqrtf(v45);
        }
      }

      v64 = (1.0 - (result * result)) * (1.0 - (result * result));
      v65 = 105.0;
      return v64 * v65;
    }

    if (v3 == 2)
    {
      return (result * 15.0) - ((result * result) * (result * 15.0));
    }

    if (v3 != 1)
    {
      if (!v3)
      {
        return ((result * -3.0) + ((result * (result * result)) * 5.0)) * 0.5;
      }

      v46 = 1.0 - (result * result);
      v47 = sqrtf(v46);
      v48 = -15.0;
      return (v46 * v48) * v47;
    }

    v5 = result * result;
    v6 = (v5 * -7.5) + 1.5;
    goto LABEL_93;
  }

  if (this > 7)
  {
    if (this != 8)
    {
      if (this != 9)
      {
        if (this == 10)
        {
          if (v3 <= 4)
          {
            if (v3 > 1)
            {
              if (v3 == 2)
              {
                v114 = result * result;
                v115 = 3.8672 - (v114 * 3.8672);
                v116.f32[0] = v114 * v114;
                v116.f32[1] = v116.f32[0] * v116.f32[0];
                v116.f32[2] = v114;
                v116.f32[3] = v114 * (v114 * v114);
                v117 = vmulq_f32(v116, xmmword_1DE09E770);
                return (vaddv_f32(*&vpaddq_f32(v117, v117)) + 7.0) * v115;
              }

              if (v3 == 3)
              {
                v124 = result * result;
                v78 = sqrtf(1.0 - (result * result));
                v125.f32[0] = result * (result * result);
                v125.f32[1] = result;
                v125.f32[2] = v125.f32[0] * (v124 * v124);
                v125.f32[3] = result * (v124 * v124);
                v126 = vmulq_f32(v125, xmmword_1DE09E760);
                v9 = vaddv_f32(*&vpaddq_f32(v126, v126));
                v10 = (v124 * 402.19) + -402.19;
                return (v10 * v78) * v9;
              }

              v7 = result * result;
              v8 = v7 + -1.0;
              v9 = ((((v7 * v7) * -255.0) + -1.0) + ((v7 * (v7 * v7)) * 323.0)) + (v7 * 45.0);
              v10 = v8 * v8;
              *&v11 = 2815.3;
              goto LABEL_147;
            }

            if (!v3)
            {
              v110 = result * result;
              v111 = v110 * v110;
              v112.f32[0] = v110 * (v111 * v111);
              v112.f32[1] = v110 * (v110 * v110);
              v112.f32[2] = v110 * v110;
              v112.f32[3] = v111 * v111;
              v113 = vmulq_f32(v112, xmmword_1DE09E790);
              return ((vaddv_f32(*&vpaddq_f32(v113, v113)) + (v110 * 3465.0)) * 0.0039062) + -0.24609;
            }

            if (v3 == 1)
            {
              v57 = sqrtf(1.0 - (result * result)) * -0.42969;
              v58 = (result * result) * (result * result);
              v59 = result * (result * result);
              v60.f32[0] = result * v58;
              v60.f32[1] = result;
              v60.f32[2] = result * (v58 * v58);
              v61 = v59 * v58;
              v60.f32[3] = v59;
              v62 = vmulq_f32(v60, xmmword_1DE09E780);
              return v57 * (vaddv_f32(*&vpaddq_f32(v62, v62)) + (v61 * -7956.0));
            }

LABEL_163:
            v46 = (result * result) + -1.0;
            v47 = (v46 * v46) * (v46 * v46);
            *&v76 = -654730000.0;
            goto LABEL_164;
          }

          if (v3 > 6)
          {
            if (v3 != 7)
            {
              if (v3 == 8)
              {
                v67 = result * result;
                v68 = (((v67 + -1.0) * (v67 + -1.0)) * ((v67 + -1.0) * (v67 + -1.0))) * 17230000.0;
                v69 = -19.0;
                return -(v68 + ((v67 * v69) * v68));
              }

              if (v3 != 9)
              {
                goto LABEL_163;
              }

              v32 = 1.0 - (result * result);
              v30 = sqrtf(v32);
              v29 = (v32 * v32) * (v32 * v32);
              v31 = -654730000.0;
              goto LABEL_104;
            }

            v118.f32[0] = (result * result) + -1.0;
            v118.f32[1] = result;
            __asm { FMOV            V3.2S, #19.0 }

            _D3.f32[0] = sqrtf(1.0 - (result * result)) * 5743200.0;
            v107 = vmul_f32(_D3, vmul_f32(v118, vmul_f32(v118, v118)));
            return (v107.f32[1] + (result * -3.0)) * v107.f32[0];
          }

          if (v3 != 5)
          {
            v63 = result * result;
            v41 = ((v63 + -1.0) * -84459.0) * ((v63 + -1.0) * (v63 + -1.0));
            v42 = v63 * v63;
            v43 = (v63 * -102.0) + 3.0;
            v44 = 323.0;
            return v41 * (v43 + (v42 * v44));
          }

          v26 = sqrtf(1.0 - (result * result));
          v53 = (result * result) + -1.0;
          v54 = result * ((result * result) * (result * result));
          v55 = (result * 15.0) + ((result * (result * result)) * -170.0);
          v56 = 323.0;
LABEL_153:
          v27 = v55 + (v54 * v56);
          v87 = v53 * v53;
          v88 = -16892.0;
LABEL_154:
          v28 = v87 * v88;
          return (v28 * v27) * v26;
        }

        return 0.0;
      }

      if (v3 <= 3)
      {
        if (v3 > 1)
        {
          if (v3 == 2)
          {
            v103 = 30.938 - ((result * result) * 30.938);
            v104.f32[0] = result * (result * result);
            v104.f32[1] = result;
            v104.i64[1] = __PAIR64__(result * ((result * result) * (result * result)), v104.f32[0] * ((result * result) * (result * result)));
            v105 = vmulq_f32(v104, xmmword_1DE09E7A0);
            return vaddv_f32(*&vpaddq_f32(v105, v105)) * v103;
          }

          v51 = result * result;
          v29 = sqrtf(1.0 - v51);
          v30 = ((((v51 * v51) * -195.0) + -1.0) + ((v51 * (v51 * v51)) * 221.0)) + (v51 * 39.0);
          v50 = (v51 * 216.56) + -216.56;
          return (v50 * v29) * v30;
        }

        if (!v3)
        {
          v98 = (result * result) * (result * result);
          v99 = result * (v98 * v98);
          v100 = (result * (result * result)) * v98;
          v101.f32[0] = result * v98;
          v101.f32[1] = result;
          v101.f32[2] = v99;
          v101.f32[3] = result * (result * result);
          v102 = vmulq_f32(v101, xmmword_1DE09E7C0);
          return (vaddv_f32(*&vpaddq_f32(v102, v102)) + (v100 * -25740.0)) * 0.0078125;
        }

        if (v3 == 1)
        {
          v35 = result * result;
          v36 = sqrtf(1.0 - v35) * -0.35156;
          v37.f32[0] = v35 * v35;
          v37.f32[1] = v37.f32[0] * v37.f32[0];
          v37.f32[2] = v35;
          v37.f32[3] = v35 * (v35 * v35);
          v38 = vmulq_f32(v37, xmmword_1DE09E7B0);
          return v36 * (vaddv_f32(*&vpaddq_f32(v38, v38)) + 7.0);
        }

        goto LABEL_149;
      }

      if (v3 > 5)
      {
        switch(v3)
        {
          case 6:
            v106.f32[0] = (result * result) + -1.0;
            v106.f32[1] = result;
            v107 = vmul_f32(vmul_f32(v106, 0x41880000C8A4F5B0), vmul_f32(v106, v106));
            return (v107.f32[1] + (result * -3.0)) * v107.f32[0];
          case 7:
            v67 = result * result;
            v68 = sqrtf(1.0 - v67) * (1013500.0 * ((v67 + -1.0) * ((v67 + -1.0) * (v67 + -1.0))));
            v69 = -17.0;
            return -(v68 + ((v67 * v69) * v68));
          case 8:
            v18 = result * 34459000.0;
            v19 = ((result * result) + -1.0) * ((result * result) + -1.0);
            return v18 * (v19 * v19);
        }

LABEL_149:
        v109 = 1.0 - (result * result);
        v83 = sqrtf(v109);
        v84 = (v109 * v109) * (v109 * v109);
        v85 = -34459000.0;
        return v83 * (v85 * v84);
      }

      if (v3 != 4)
      {
        v52 = result * result;
        v26 = sqrtf(1.0 - v52);
        v53 = v52 + -1.0;
        v54 = v52 * v52;
        v55 = (v52 * -30.0) + 1.0;
        v56 = 85.0;
        goto LABEL_153;
      }

      v108 = (result * result) + -1.0;
      v9 = (result + ((result * (result * result)) * -10.0)) + ((result * ((result * result) * (result * result))) * 17.0);
      v10 = v108 * v108;
      *&v11 = 16892.0;
LABEL_147:
      v78 = *&v11;
      return (v10 * v78) * v9;
    }

    if (v3 <= 3)
    {
      if (v3 > 1)
      {
        if (v3 != 2)
        {
          return (((result * -433.12) * (1.0 - (result * result))) * ((((result * result) * -26.0) + 3.0) + (((result * result) * (result * result)) * 39.0))) * sqrtf(1.0 - (result * result));
        }

        v96 = result * result;
        v14 = 19.688 - (v96 * 19.688);
        v15 = -((v96 * v96) - (v96 * (v96 * v96)));
        v16 = (v96 * 33.0) + -1.0;
        v17 = 143.0;
        return (v16 + (v15 * v17)) * v14;
      }

      if (!v3)
      {
        v91 = result * result;
        v92.f32[0] = (v91 * v91) * (v91 * v91);
        v92.f32[1] = v91 * v91;
        v92.f32[2] = v91 * (v91 * v91);
        v92.f32[3] = v91;
        v93 = vmulq_f32(v92, xmmword_1DE09E7D0);
        return (vaddv_f32(*&vpaddq_f32(v93, v93)) * 0.0078125) + 0.27344;
      }

      if (v3 == 1)
      {
        v20 = result * -0.5625;
        v21 = result * result;
        v22 = v20 * sqrtf(1.0 - v21);
        v23 = (((v21 * v21) * -1001.0) + -35.0) + ((v21 * (v21 * v21)) * 715.0);
        v24 = 385.0;
        return v22 * (v23 + (v21 * v24));
      }

LABEL_141:
      v97 = (1.0 - (result * result)) * (1.0 - (result * result));
      v64 = v97 * v97;
      v65 = 2027000.0;
      return v64 * v65;
    }

    if (v3 <= 5)
    {
      if (v3 != 4)
      {
        v33 = 1.0 - (result * result);
        v34 = sqrtf(v33);
        return -((((v33 * v33) * (result * -67568.0)) * v34) + (((result * result) * -5.0) * (((v33 * v33) * (result * -67568.0)) * v34)));
      }

      v94 = result * result;
      v95 = 1.0 - v94;
      v9 = ((v94 * -26.0) + 1.0) + ((v94 * v94) * 65.0);
      v10 = v95 * v95;
      *&v11 = 1299.4;
      goto LABEL_147;
    }

    if (v3 == 6)
    {
      v67 = result * result;
      v68 = ((1.0 - v67) * 67568.0) * ((1.0 - v67) * (1.0 - v67));
      v69 = -15.0;
      return -(v68 + ((v67 * v69) * v68));
    }

    if (v3 != 7)
    {
      goto LABEL_141;
    }

    v49 = 1.0 - (result * result);
    v30 = sqrtf(v49);
    v29 = v49 * (v49 * v49);
    v31 = -2027000.0;
LABEL_104:
    v50 = result * v31;
    return (v50 * v29) * v30;
  }

  if (this != 5)
  {
    if (this != 6)
    {
      if (v3 > 2)
      {
        if (v3 <= 4)
        {
          if (v3 != 3)
          {
            return (((1.0 - (result * result)) * (1.0 - (result * result))) * (result * 1732.5)) * (((result * result) * 13.0) + -3.0);
          }

          v86 = result * result;
          v87 = 1.0 - v86;
          v26 = sqrtf(1.0 - v86);
          v27 = ((v86 * -66.0) + 3.0) + ((v86 * v86) * 143.0);
          v88 = -39.375;
          goto LABEL_154;
        }

        if (v3 != 5)
        {
          if (v3 == 6)
          {
            return (result * 135140.0) * ((1.0 - (result * result)) * ((1.0 - (result * result)) * (1.0 - (result * result))));
          }

          goto LABEL_129;
        }

        v89 = result * result;
        v90 = 1.0 - v89;
        v72 = sqrtf(1.0 - v89);
        v73 = v89 * -13.0;
        v71 = v90 * v90;
        v74 = -5197.5;
        goto LABEL_132;
      }

      if (!v3)
      {
        return (((result * result) * (result * result)) * -693.0 + -35.0 + (((result * result) * 429.0) * ((result * result) * (result * result))) + ((result * result) * 315.0)) * (result * 0.0625);
      }

      if (v3 != 1)
      {
        if (v3 != 2)
        {
LABEL_129:
          v82 = 1.0 - (result * result);
          v83 = sqrtf(v82);
          v84 = v82 * (v82 * v82);
          v85 = -135140.0;
          return v83 * (v85 * v84);
        }

        v39 = result * 7.875;
        v40 = result * result;
        v41 = v39 - (v40 * v39);
        v42 = v40 * v40;
        v43 = (v40 * -110.0) + 15.0;
        v44 = 143.0;
        return v41 * (v43 + (v42 * v44));
      }

      v21 = result * result;
      v22 = sqrtf(1.0 - v21) * -0.4375;
      v23 = (((v21 * v21) * -495.0) + -5.0) + ((v21 * (v21 * v21)) * 429.0);
      v24 = 135.0;
      return v22 * (v23 + (v21 * v24));
    }

    if (v3 > 2)
    {
      switch(v3)
      {
        case 3:
          return (((1.0 - (result * result)) * result) * (((result * result) * -1732.5) + 472.5)) * sqrtf(1.0 - (result * result));
        case 4:
          v79 = result * result;
          v80 = 1.0 - v79;
          v73 = v79 * -11.0;
          v81 = v80 * v80;
          v72 = 472.5;
          return -((v81 * v72) + (v73 * (v81 * v72)));
        case 5:
          v25 = 1.0 - (result * result);
          v26 = sqrtf(v25);
          v27 = result * -10395.0;
          v28 = v25 * v25;
          return (v28 * v27) * v26;
      }

LABEL_125:
      v46 = 1.0 - (result * result);
      v47 = v46 * v46;
      *&v76 = 10395.0;
      goto LABEL_164;
    }

    if (!v3)
    {
      return ((((((result * result) * (result * result)) * -315.0) + (((result * result) * ((result * result) * (result * result))) * 231.0)) + ((result * result) * 105.0)) * 0.0625) + -0.3125;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v13 = result * result;
        v14 = 13.125 - (v13 * 13.125);
        v15 = v13 * v13;
        v16 = (v13 * -18.0) + 1.0;
        v17 = 33.0;
        return (v16 + (v15 * v17)) * v14;
      }

      goto LABEL_125;
    }

    v10 = result * -2.625;
    v77 = result * result;
    v78 = ((v77 * -30.0) + 5.0) + ((v77 * v77) * 33.0);
    v9 = sqrtf(1.0 - v77);
    return (v10 * v78) * v9;
  }

  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v70 = result * result;
        v71 = 1.0 - v70;
        v72 = sqrtf(1.0 - v70);
        v73 = v70 * -9.0;
        v74 = -52.5;
LABEL_132:
        v81 = v71 * v74;
        return -((v81 * v72) + (v73 * (v81 * v72)));
      }

      if (v3 == 4)
      {
        return ((1.0 - (result * result)) * (1.0 - (result * result))) * (result * 945.0);
      }

LABEL_122:
      v75 = 1.0 - (result * result);
      v47 = sqrtf(v75);
      v46 = v75 * v75;
      *&v76 = -945.0;
LABEL_164:
      v48 = *&v76;
      return (v46 * v48) * v47;
    }

    v66 = result * 52.5;
    v67 = result * result;
    v68 = v66 - (v67 * v66);
    v69 = -3.0;
    return -(v68 + ((v67 * v69) * v68));
  }

  if (!v3)
  {
    v22 = result * 0.125;
    v21 = result * result;
    v23 = ((v21 * v21) * 63.0) + 15.0;
    v24 = -70.0;
    return v22 * (v23 + (v21 * v24));
  }

  if (v3 != 1)
  {
    goto LABEL_122;
  }

  return sqrtf(1.0 - (result * result)) * (-1.875 * ((((result * result) * -14.0) + 1.0) + (((result * result) * (result * result)) * 21.0)));
}

void HOA::initialize(HOA *this, double a2)
{
  v175 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = v3 + 1;
  v5 = v4 * v4;
  *(this + 3) = (v3 + 1) * (v3 + 1);
  *this = v3;
  _CF = *(this + 76) == 2 && v3 >= 4;
  if (_CF)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v166 = "HOA.cpp";
      v167 = 1024;
      v169 = 2080;
      v168 = 684;
      v170 = "initialize";
      v171 = 1024;
      v172 = 684;
      v173 = 1024;
      v174 = v3;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; initializing a HOA instance with order = %d > 3 with FuMa normalization", buf, 0x28u);
    }

    v7 = 3;
  }

  else
  {
    if (v3 < 0xB)
    {
      goto LABEL_13;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v166 = "HOA.cpp";
      v167 = 1024;
      v169 = 2080;
      v168 = 687;
      v170 = "initialize";
      v171 = 1024;
      v172 = 687;
      v173 = 1024;
      v174 = v3;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Warning; initializing a HOA instance with order = %d > 10", buf, 0x28u);
    }

    v7 = 10;
  }

  *this = v7;
  v4 = v7 + 1;
  v5 = v4 * v4;
LABEL_13:
  v8 = *(this + 10);
  *(this + 2) = v5;
  v9 = (*(this + 11) - v8) >> 2;
  if (v5 <= v9)
  {
    if (v5 < v9)
    {
      *(this + 11) = v8 + 4 * v5;
    }
  }

  else
  {
    std::vector<float>::__append(this + 80, v5 - v9);
    v4 = *this + 1;
    v8 = *(this + 10);
  }

  v10 = 0;
  v11 = 0;
  LODWORD(v12) = 0;
  v13 = v4;
  v163 = this;
  v14 = *(this + 76);
  v15 = v8 + 16;
  v16 = 1;
  v17 = -1;
  __asm { FMOV            V3.4S, #1.0 }

  v164 = _Q3;
  do
  {
    v12 = v12;
    if (v14)
    {
      v21 = v10 & 0xFFFFFFF8;
      v22 = 2 * v11;
      v23 = -v11;
      *&a2 = sqrtf((v11 * 2.0) + 1.0);
      if (v14 == 2)
      {
        if ((v11 & 0x7FFFFFFC) != 0)
        {
          v24 = v22 & 0xFFFFFFF8;
          v25 = (v15 + 4 * v12);
          v26 = &flt_1DE12D378[v12 + 4];
          do
          {
            v27 = vdivq_f32(_Q3, vmulq_n_f32(*v26, *&a2));
            v25[-1] = vdivq_f32(_Q3, vmulq_n_f32(v26[-1], *&a2));
            *v25 = v27;
            v25 += 2;
            v26 += 2;
            v21 -= 8;
          }

          while (v21);
          v12 = v24 + v12;
          v23 = v24 - v11;
        }

        v28 = v23 + v17;
        do
        {
          *(v8 + 4 * v12) = 1.0 / (flt_1DE12D378[v12] * *&a2);
          ++v12;
          _CF = __CFADD__(v28++, 1);
        }

        while (!_CF);
      }

      else
      {
        *&a2 = 1.0 / *&a2;
        if ((v11 & 0x7FFFFFFC) != 0)
        {
          v29 = v22 & 0xFFFFFFF8;
          v30 = vdupq_lane_s32(*&a2, 0);
          v31 = (v15 + 4 * v12);
          do
          {
            v31[-1] = v30;
            *v31 = v30;
            v31 += 2;
            v21 -= 8;
          }

          while (v21);
          v12 = v29 + v12;
          v23 = v29 - v11;
        }

        v32 = v23 + v17;
        do
        {
          *(v8 + 4 * v12++) = LODWORD(a2);
          _CF = __CFADD__(v32++, 1);
        }

        while (!_CF);
      }
    }

    else
    {
      memset_pattern16((v8 + 4 * v12), &unk_1DE095DF0, (8 * v11) | 4);
      _Q3 = v164;
      LODWORD(v12) = v12 + v16;
    }

    ++v11;
    v16 += 2;
    v10 += 2;
    --v17;
  }

  while (v11 != v13);
  v33 = (*(v163 + 2) * *(v163 + 2));
  *buf = 0;
  std::vector<float>::assign(v163 + 13, v33, buf, *&a2);
  v36 = *(v163 + 44);
  v37 = *v163;
  if (v36)
  {
    if (v36 == 2)
    {
      if (v37 < 0xA)
      {
        v38 = &unk_1DE12D9A8;
        goto LABEL_48;
      }
    }

    else
    {
      if (v36 != 1)
      {
        goto LABEL_50;
      }

      if (v37 < 0xA)
      {
        v38 = &unk_1DE12D980;
LABEL_48:
        v35 = v38[v37];
        goto LABEL_50;
      }
    }

    v35 = 121;
    goto LABEL_50;
  }

  if (v37 < 0x16)
  {
    v38 = &unk_1DE12D9D0;
    goto LABEL_48;
  }

  v35 = 1014;
LABEL_50:
  v39 = *(v163 + 26);
  *(v163 + 6) = v35;
  v40 = v35;
  v41 = (*(v163 + 27) - v39) >> 2;
  if (v40 <= v41)
  {
    if (v40 < v41)
    {
      *(v163 + 27) = v39 + 4 * v40;
    }
  }

  else
  {
    std::vector<float>::__append(v163 + 208, v40 - v41);
    v40 = *(v163 + 6);
  }

  v42 = *(v163 + 29);
  v43 = (*(v163 + 30) - v42) >> 2;
  if (v40 <= v43)
  {
    if (v40 < v43)
    {
      *(v163 + 30) = v42 + 4 * v40;
    }
  }

  else
  {
    std::vector<float>::__append(v163 + 232, v40 - v43);
    v40 = *(v163 + 6);
  }

  v44 = *(v163 + 32);
  v45 = (*(v163 + 33) - v44) >> 2;
  if (v40 <= v45)
  {
    if (v40 < v45)
    {
      *(v163 + 33) = v44 + 4 * v40;
    }
  }

  else
  {
    std::vector<float>::__append(v163 + 256, v40 - v45);
    v44 = *(v163 + 32);
  }

  v46 = *(v163 + 44);
  v47 = *v163;
  v48 = *(v163 + 26);
  v49 = *(v163 + 29);
  if (!v46)
  {
    HOA::getTDesign(v47, v48, v49, v44, v34);
    goto LABEL_176;
  }

  if (v46 == 2)
  {
    if (v48)
    {
      v54 = v49 == 0;
    }

    else
    {
      v54 = 1;
    }

    v51 = !v54 && v44 != 0;
    if (v47 > 4)
    {
      if (v47 <= 6)
      {
        if (v47 != 5)
        {
          if (!v51)
          {
            goto LABEL_176;
          }

          *(v48 + 192) = 1127431944;
          *(v48 + 128) = xmmword_1DE128BE0;
          *(v48 + 144) = unk_1DE128BF0;
          *(v48 + 160) = xmmword_1DE128C00;
          *(v48 + 176) = unk_1DE128C10;
          *(v48 + 64) = xmmword_1DE128BA0;
          *(v48 + 80) = unk_1DE128BB0;
          *(v48 + 96) = xmmword_1DE128BC0;
          *(v48 + 112) = unk_1DE128BD0;
          *v48 = xmmword_1DE128B60;
          *(v48 + 16) = unk_1DE128B70;
          *(v48 + 32) = xmmword_1DE128B80;
          *(v48 + 48) = unk_1DE128B90;
          *(v49 + 192) = -1030844557;
          *(v49 + 128) = xmmword_1DE128CA4;
          *(v49 + 144) = unk_1DE128CB4;
          *(v49 + 160) = xmmword_1DE128CC4;
          *(v49 + 176) = unk_1DE128CD4;
          *(v49 + 64) = xmmword_1DE128C64;
          *(v49 + 80) = unk_1DE128C74;
          *(v49 + 96) = xmmword_1DE128C84;
          *(v49 + 112) = unk_1DE128C94;
          *v49 = xmmword_1DE128C24;
          *(v49 + 16) = unk_1DE128C34;
          *(v49 + 32) = xmmword_1DE128C44;
          *(v49 + 48) = unk_1DE128C54;
          *(v44 + 192) = 1048755214;
          v66 = &xmmword_1DE128CE8;
          goto LABEL_157;
        }

        if (!v51)
        {
          goto LABEL_176;
        }

        *(v48 + 32) = xmmword_1DE1289D0;
        *(v48 + 48) = unk_1DE1289E0;
        *(v48 + 128) = xmmword_1DE128A30;
        *(v48 + 96) = xmmword_1DE128A10;
        *(v48 + 112) = unk_1DE128A20;
        *(v48 + 64) = xmmword_1DE1289F0;
        *(v48 + 80) = unk_1DE128A00;
        *v48 = xmmword_1DE1289B0;
        *(v48 + 16) = unk_1DE1289C0;
        *(v49 + 32) = xmmword_1DE128A60;
        *(v49 + 48) = unk_1DE128A70;
        *v49 = xmmword_1DE128A40;
        *(v49 + 16) = unk_1DE128A50;
        *(v49 + 128) = xmmword_1DE128AC0;
        *(v49 + 96) = xmmword_1DE128AA0;
        *(v49 + 112) = unk_1DE128AB0;
        *(v49 + 64) = xmmword_1DE128A80;
        *(v49 + 80) = unk_1DE128A90;
        v69 = &xmmword_1DE128AD0;
        goto LABEL_142;
      }

      switch(v47)
      {
        case 7:
          if (!v51)
          {
            goto LABEL_176;
          }

          *(v48 + 192) = xmmword_1DE128E6C;
          *(v48 + 208) = unk_1DE128E7C;
          *(v48 + 224) = xmmword_1DE128E8C;
          *(v48 + 240) = unk_1DE128E9C;
          *(v48 + 128) = xmmword_1DE128E2C;
          *(v48 + 144) = unk_1DE128E3C;
          *(v48 + 160) = xmmword_1DE128E4C;
          *(v48 + 176) = unk_1DE128E5C;
          *(v48 + 64) = xmmword_1DE128DEC;
          *(v48 + 80) = unk_1DE128DFC;
          *(v48 + 96) = xmmword_1DE128E0C;
          *(v48 + 112) = unk_1DE128E1C;
          *v48 = xmmword_1DE128DAC;
          *(v48 + 16) = unk_1DE128DBC;
          *(v48 + 32) = xmmword_1DE128DCC;
          *(v48 + 48) = unk_1DE128DDC;
          *(v49 + 192) = xmmword_1DE128F6C;
          *(v49 + 208) = unk_1DE128F7C;
          *(v49 + 224) = xmmword_1DE128F8C;
          *(v49 + 240) = unk_1DE128F9C;
          *(v49 + 128) = xmmword_1DE128F2C;
          *(v49 + 144) = unk_1DE128F3C;
          *(v49 + 160) = xmmword_1DE128F4C;
          *(v49 + 176) = unk_1DE128F5C;
          *(v49 + 64) = xmmword_1DE128EEC;
          *(v49 + 80) = unk_1DE128EFC;
          *(v49 + 96) = xmmword_1DE128F0C;
          *(v49 + 112) = unk_1DE128F1C;
          *v49 = xmmword_1DE128EAC;
          *(v49 + 16) = unk_1DE128EBC;
          *(v49 + 32) = xmmword_1DE128ECC;
          *(v49 + 48) = unk_1DE128EDC;
          v66 = &xmmword_1DE128FAC;
LABEL_156:
          v80 = v66[13];
          *(v44 + 192) = v66[12];
          *(v44 + 208) = v80;
          v81 = v66[15];
          *(v44 + 224) = v66[14];
          *(v44 + 240) = v81;
LABEL_157:
          v82 = v66[9];
          *(v44 + 128) = v66[8];
          *(v44 + 144) = v82;
          v83 = v66[11];
          *(v44 + 160) = v66[10];
          *(v44 + 176) = v83;
          v84 = v66[5];
          *(v44 + 64) = v66[4];
          *(v44 + 80) = v84;
          v85 = v66[7];
          *(v44 + 96) = v66[6];
          *(v44 + 112) = v85;
          goto LABEL_158;
        case 8:
          if (!v51)
          {
            goto LABEL_176;
          }

          v75 = *(v163 + 29);
          v76 = v44;
          memcpy(*(v163 + 26), &unk_1DE1290AC, 0x144uLL);
          memcpy(v75, &unk_1DE1291F0, 0x144uLL);
          v60 = &unk_1DE129334;
          goto LABEL_167;
        case 9:
          if (!v51)
          {
            goto LABEL_176;
          }

          v58 = *(v163 + 29);
          v59 = v44;
          memcpy(*(v163 + 26), &unk_1DE129478, 0x190uLL);
          memcpy(v58, &unk_1DE129608, 0x190uLL);
          v60 = &unk_1DE129798;
LABEL_110:
          v63 = v59;
          v64 = 400;
LABEL_175:
          memcpy(v63, v60, v64);
          goto LABEL_176;
      }
    }

    else
    {
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          if (!v51)
          {
            goto LABEL_176;
          }

          *(v48 + 32) = 1116271638;
          *v48 = xmmword_1DE128758;
          *(v48 + 16) = unk_1DE128768;
          *(v49 + 32) = -1035839118;
          *v49 = xmmword_1DE12877C;
          *(v49 + 16) = unk_1DE12878C;
          *(v44 + 32) = 1068792731;
          v53 = &xmmword_1DE1287A0;
          goto LABEL_151;
        }

        if (v47 != 3)
        {
          if (!v51)
          {
            goto LABEL_176;
          }

          *(v48 + 96) = 1058111518;
          *v48 = xmmword_1DE128884;
          *(v48 + 16) = unk_1DE128894;
          *(v48 + 64) = xmmword_1DE1288C4;
          *(v48 + 80) = unk_1DE1288D4;
          *(v48 + 32) = xmmword_1DE1288A4;
          *(v48 + 48) = unk_1DE1288B4;
          *v49 = xmmword_1DE1288E8;
          *(v49 + 16) = unk_1DE1288F8;
          *(v49 + 64) = xmmword_1DE128928;
          *(v49 + 80) = unk_1DE128938;
          *(v49 + 32) = xmmword_1DE128908;
          *(v49 + 48) = unk_1DE128918;
          *(v49 + 96) = 1110360230;
          *(v44 + 96) = 1057102910;
          v53 = &xmmword_1DE12894C;
          goto LABEL_94;
        }

        if (!v51)
        {
          goto LABEL_176;
        }

        *v48 = xmmword_1DE1287C4;
        *(v48 + 16) = unk_1DE1287D4;
        *(v48 + 32) = xmmword_1DE1287E4;
        *(v48 + 48) = unk_1DE1287F4;
        *v49 = xmmword_1DE128804;
        *(v49 + 16) = unk_1DE128814;
        *(v49 + 32) = xmmword_1DE128824;
        *(v49 + 48) = unk_1DE128834;
        v66 = &xmmword_1DE128844;
        goto LABEL_158;
      }

      if (!v47)
      {
        goto LABEL_130;
      }

      if (v47 == 1)
      {
        if (!v51)
        {
          goto LABEL_176;
        }

        *v48 = xmmword_1DE09EAB0;
        *v49 = xmmword_1DE09EAC0;
        v65 = &xmmword_1DE09EAD0;
        goto LABEL_124;
      }
    }

    if (!v51)
    {
      goto LABEL_176;
    }

    v91 = *(v163 + 29);
    v92 = v44;
    memcpy(*(v163 + 26), &unk_1DE129928, 0x1E4uLL);
    memcpy(v91, &unk_1DE129B0C, 0x1E4uLL);
    v60 = &unk_1DE129CF0;
LABEL_174:
    v63 = v92;
    v64 = 484;
    goto LABEL_175;
  }

  if (v46 != 1)
  {
    goto LABEL_176;
  }

  if (v48)
  {
    _ZF = v49 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v51 = !_ZF;
  if (v47 > 4)
  {
    if (v47 > 6)
    {
      if (v47 != 7)
      {
        if (v47 != 8)
        {
          if (v47 != 9)
          {
LABEL_170:
            v93 = v51 ^ 1;
            if (!v44)
            {
              v93 = 1;
            }

            if (v93)
            {
              goto LABEL_176;
            }

            v94 = *(v163 + 29);
            v92 = v44;
            memcpy(*(v163 + 26), &unk_1DE1281AC, 0x1E4uLL);
            memcpy(v94, &unk_1DE128390, 0x1E4uLL);
            v60 = &unk_1DE128574;
            goto LABEL_174;
          }

          v61 = v51 ^ 1;
          if (!v44)
          {
            v61 = 1;
          }

          if (v61)
          {
            goto LABEL_176;
          }

          v62 = *(v163 + 29);
          v59 = v44;
          memcpy(*(v163 + 26), &unk_1DE127CFC, 0x190uLL);
          memcpy(v62, &unk_1DE127E8C, 0x190uLL);
          v60 = &unk_1DE12801C;
          goto LABEL_110;
        }

        v89 = v51 ^ 1;
        if (!v44)
        {
          v89 = 1;
        }

        if (v89)
        {
          goto LABEL_176;
        }

        v90 = *(v163 + 29);
        v76 = v44;
        memcpy(*(v163 + 26), &unk_1DE127930, 0x144uLL);
        memcpy(v90, &unk_1DE127A74, 0x144uLL);
        v60 = &unk_1DE127BB8;
LABEL_167:
        v63 = v76;
        v64 = 324;
        goto LABEL_175;
      }

      v79 = v51 ^ 1;
      if (!v44)
      {
        v79 = 1;
      }

      if (v79)
      {
        goto LABEL_176;
      }

      *(v48 + 192) = xmmword_1DE1276F0;
      *(v48 + 208) = unk_1DE127700;
      *(v48 + 224) = xmmword_1DE127710;
      *(v48 + 240) = unk_1DE127720;
      *(v48 + 128) = xmmword_1DE1276B0;
      *(v48 + 144) = unk_1DE1276C0;
      *(v48 + 160) = xmmword_1DE1276D0;
      *(v48 + 176) = unk_1DE1276E0;
      *(v48 + 64) = xmmword_1DE127670;
      *(v48 + 80) = unk_1DE127680;
      *(v48 + 96) = xmmword_1DE127690;
      *(v48 + 112) = unk_1DE1276A0;
      *v48 = xmmword_1DE127630;
      *(v48 + 16) = unk_1DE127640;
      *(v48 + 32) = xmmword_1DE127650;
      *(v48 + 48) = unk_1DE127660;
      *(v49 + 192) = xmmword_1DE1277F0;
      *(v49 + 208) = unk_1DE127800;
      *(v49 + 224) = xmmword_1DE127810;
      *(v49 + 240) = unk_1DE127820;
      *(v49 + 128) = xmmword_1DE1277B0;
      *(v49 + 144) = unk_1DE1277C0;
      *(v49 + 160) = xmmword_1DE1277D0;
      *(v49 + 176) = unk_1DE1277E0;
      *(v49 + 64) = xmmword_1DE127770;
      *(v49 + 80) = unk_1DE127780;
      *(v49 + 96) = xmmword_1DE127790;
      *(v49 + 112) = unk_1DE1277A0;
      *v49 = xmmword_1DE127730;
      *(v49 + 16) = unk_1DE127740;
      *(v49 + 32) = xmmword_1DE127750;
      *(v49 + 48) = unk_1DE127760;
      v66 = &xmmword_1DE127830;
      goto LABEL_156;
    }

    if (v47 != 5)
    {
      v68 = v51 ^ 1;
      if (!v44)
      {
        v68 = 1;
      }

      if (v68)
      {
        goto LABEL_176;
      }

      *(v48 + 192) = -1022566698;
      *(v48 + 128) = xmmword_1DE127464;
      *(v48 + 144) = unk_1DE127474;
      *(v48 + 160) = xmmword_1DE127484;
      *(v48 + 176) = unk_1DE127494;
      *(v48 + 64) = xmmword_1DE127424;
      *(v48 + 80) = unk_1DE127434;
      *(v48 + 96) = xmmword_1DE127444;
      *(v48 + 112) = unk_1DE127454;
      *v48 = xmmword_1DE1273E4;
      *(v48 + 16) = unk_1DE1273F4;
      *(v48 + 32) = xmmword_1DE127404;
      *(v48 + 48) = unk_1DE127414;
      *(v49 + 192) = 1102138249;
      *(v49 + 128) = xmmword_1DE127528;
      *(v49 + 144) = unk_1DE127538;
      *(v49 + 160) = xmmword_1DE127548;
      *(v49 + 176) = unk_1DE127558;
      *(v49 + 64) = xmmword_1DE1274E8;
      *(v49 + 80) = unk_1DE1274F8;
      *(v49 + 96) = xmmword_1DE127508;
      *(v49 + 112) = unk_1DE127518;
      *v49 = xmmword_1DE1274A8;
      *(v49 + 16) = unk_1DE1274B8;
      *(v49 + 32) = xmmword_1DE1274C8;
      *(v49 + 48) = unk_1DE1274D8;
      *(v44 + 192) = 1048646893;
      v66 = &xmmword_1DE12756C;
      goto LABEL_157;
    }

    v70 = v51 ^ 1;
    if (!v44)
    {
      v70 = 1;
    }

    if (v70)
    {
      goto LABEL_176;
    }

    *(v48 + 32) = xmmword_1DE127254;
    *(v48 + 48) = unk_1DE127264;
    *(v48 + 128) = xmmword_1DE1272B4;
    *(v48 + 96) = xmmword_1DE127294;
    *(v48 + 112) = unk_1DE1272A4;
    *(v48 + 64) = xmmword_1DE127274;
    *(v48 + 80) = unk_1DE127284;
    *v48 = xmmword_1DE127234;
    *(v48 + 16) = unk_1DE127244;
    *(v49 + 32) = xmmword_1DE1272E4;
    *(v49 + 48) = unk_1DE1272F4;
    *v49 = xmmword_1DE1272C4;
    *(v49 + 16) = unk_1DE1272D4;
    *(v49 + 128) = xmmword_1DE127344;
    *(v49 + 96) = xmmword_1DE127324;
    *(v49 + 112) = unk_1DE127334;
    *(v49 + 64) = xmmword_1DE127304;
    *(v49 + 80) = unk_1DE127314;
    v69 = &xmmword_1DE127354;
LABEL_142:
    v71 = v69[7];
    *(v44 + 96) = v69[6];
    *(v44 + 112) = v71;
    *(v44 + 128) = v69[8];
    v72 = v69[3];
    *(v44 + 32) = v69[2];
    *(v44 + 48) = v72;
    v73 = v69[5];
    *(v44 + 64) = v69[4];
    *(v44 + 80) = v73;
    v74 = v69[1];
    *v44 = *v69;
    *(v44 + 16) = v74;
    goto LABEL_176;
  }

  if (v47 <= 1)
  {
    if (v47)
    {
      if (v47 == 1)
      {
        v67 = v51 ^ 1;
        if (!v44)
        {
          v67 = 1;
        }

        if (v67)
        {
          goto LABEL_176;
        }

        *v48 = xmmword_1DE09EAB0;
        *v49 = xmmword_1DE09EA90;
        v65 = &xmmword_1DE09EAA0;
LABEL_124:
        *v44 = *v65;
        goto LABEL_176;
      }

      goto LABEL_170;
    }

LABEL_130:
    if (v51)
    {
      *v48 = 0;
      *v49 = 0;
      *v44 = 1065353216;
    }

    goto LABEL_176;
  }

  if (v47 == 2)
  {
    v77 = v51 ^ 1;
    if (!v44)
    {
      v77 = 1;
    }

    if ((v77 & 1) == 0)
    {
      *(v48 + 32) = 1123963561;
      *v48 = xmmword_1DE126FDC;
      *(v48 + 16) = unk_1DE126FEC;
      *(v49 + 32) = -1039627997;
      *v49 = xmmword_1DE127000;
      *(v49 + 16) = unk_1DE127010;
      *(v44 + 32) = 1069089495;
      v53 = &xmmword_1DE127024;
      goto LABEL_151;
    }

    goto LABEL_176;
  }

  if (v47 == 3)
  {
    v88 = v51 ^ 1;
    if (!v44)
    {
      v88 = 1;
    }

    if (v88)
    {
      goto LABEL_176;
    }

    *v48 = xmmword_1DE127048;
    *(v48 + 16) = unk_1DE127058;
    *(v48 + 32) = xmmword_1DE127068;
    *(v48 + 48) = unk_1DE127078;
    *v49 = xmmword_1DE127088;
    *(v49 + 16) = unk_1DE127098;
    *(v49 + 32) = xmmword_1DE1270A8;
    *(v49 + 48) = unk_1DE1270B8;
    v66 = &xmmword_1DE1270C8;
LABEL_158:
    v86 = v66[1];
    *v44 = *v66;
    *(v44 + 16) = v86;
    v87 = v66[3];
    *(v44 + 32) = v66[2];
    *(v44 + 48) = v87;
    goto LABEL_176;
  }

  v52 = v51 ^ 1;
  if (!v44)
  {
    v52 = 1;
  }

  if ((v52 & 1) == 0)
  {
    *(v48 + 96) = -1038292098;
    *v48 = xmmword_1DE127108;
    *(v48 + 16) = unk_1DE127118;
    *(v48 + 64) = xmmword_1DE127148;
    *(v48 + 80) = unk_1DE127158;
    *(v48 + 32) = xmmword_1DE127128;
    *(v48 + 48) = unk_1DE127138;
    *v49 = xmmword_1DE12716C;
    *(v49 + 16) = unk_1DE12717C;
    *(v49 + 64) = xmmword_1DE1271AC;
    *(v49 + 80) = unk_1DE1271BC;
    *(v49 + 32) = xmmword_1DE12718C;
    *(v49 + 48) = unk_1DE12719C;
    *(v49 + 96) = -1040443289;
    *(v44 + 96) = 1057367852;
    v53 = &xmmword_1DE1271D0;
LABEL_94:
    v56 = v53[5];
    *(v44 + 64) = v53[4];
    *(v44 + 80) = v56;
    v57 = v53[3];
    *(v44 + 32) = v53[2];
    *(v44 + 48) = v57;
LABEL_151:
    v78 = v53[1];
    *v44 = *v53;
    *(v44 + 16) = v78;
  }

LABEL_176:
  MEMORY[0x1E12BE940](*(v163 + 26), 1, &kDeg2Radf, *(v163 + 26), 1, *(v163 + 6));
  MEMORY[0x1E12BE940](*(v163 + 29), 1, &kDeg2Radf, *(v163 + 29), 1, *(v163 + 6));
  v95 = *(v163 + 6);
  v96 = 3 * v95;
  v97 = *(v163 + 35);
  v98 = (*(v163 + 36) - v97) >> 2;
  if (v96 <= v98)
  {
    if (v96 < v98)
    {
      *(v163 + 36) = v97 + 4 * v96;
    }
  }

  else
  {
    std::vector<float>::__append(v163 + 280, v96 - v98);
    v95 = *(v163 + 6);
  }

  if (v95)
  {
    v99 = *(v163 + 26);
    v100 = *(v163 + 29);
    v101 = v95;
    v102 = *(v163 + 35);
    if (v95 > 3)
    {
      v103 = 0;
      v117 = v102 + 12 * v95;
      v118 = v99 + 4 * v95;
      v120 = v102 < v100 + 4 * v95 && v100 < v117;
      if ((v99 >= v117 || v102 >= v118) && !v120)
      {
        v103 = v101 & 0xFFFFFFFE;
        v122 = *(v163 + 26);
        v123 = *(v163 + 29);
        v124 = *(v163 + 35);
        v125 = v103;
        do
        {
          v126 = *v122++;
          v127 = v126;
          v128 = *v123++;
          v129 = __sincosf_stret(*&v127);
          v130 = __sincosf_stret(*(&v127 + 1));
          v131 = __sincosf_stret(*(&v128 + 1));
          v133 = __sincosf_stret(*&v128);
          sinval = v133.__sinval;
          v134 = v131.__sinval;
          v135.i64[0] = __PAIR64__(LODWORD(v131.__cosval), LODWORD(v133.__cosval));
          v135.i64[1] = __PAIR64__(LODWORD(v131.__cosval), LODWORD(v133.__cosval));
          v136.i64[0] = __PAIR64__(LODWORD(v130.__cosval), LODWORD(v129.__cosval));
          v136.i64[1] = __PAIR64__(LODWORD(v130.__sinval), LODWORD(v129.__sinval));
          v137 = vmulq_f32(v135, v136);
          v138 = vextq_s8(v137, v137, 8uLL).u64[0];
          vst3_f32(v124, *(&sinval - 4));
          v124 += 6;
          v125 -= 2;
        }

        while (v125);
        if (v103 == v101)
        {
          goto LABEL_185;
        }
      }
    }

    else
    {
      v103 = 0;
    }

    v104 = v101 - v103;
    v105 = (v99 + 4 * v103);
    v106 = (v100 + 4 * v103);
    v107 = (v102 + 12 * v103 + 4);
    do
    {
      v108 = *v105++;
      v109 = v108;
      v110 = *v106++;
      v111 = __sincosf_stret(v110);
      v112 = __sincosf_stret(v109);
      *(v107 - 1) = v111.__cosval * v112.__cosval;
      *v107 = v111.__cosval * v112.__sinval;
      v107[1] = v111.__sinval;
      v107 += 3;
      --v104;
    }

    while (v104);
  }

LABEL_185:
  if (*(v163 + 76) != 2)
  {
    goto LABEL_224;
  }

  v113 = *(v163 + 2);
  v114 = v113 * v113;
  v115 = *(v163 + 46);
  v116 = (*(v163 + 47) - v115) >> 2;
  if (v114 <= v116)
  {
    if (v114 < v116)
    {
      *(v163 + 47) = v115 + 4 * v114;
    }
  }

  else
  {
    std::vector<float>::__append(v163 + 368, v114 - v116);
    v113 = *(v163 + 2);
  }

  if (!v113)
  {
    goto LABEL_224;
  }

  v139 = *(v163 + 46);
  if (v113 > 7)
  {
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = &unk_1DE12D3C8;
    while (1)
    {
      v146 = v143;
      v147 = v145;
      v148 = v113 & 0xFFFFFFF8;
      if (v113 * v144 <= -v113)
      {
        do
        {
          v150 = *v147;
          v151 = (v139 + 4 * v146);
          *v151 = *(v147 - 1);
          v151[1] = v150;
          v147 += 2;
          v146 += 8;
          v148 -= 8;
        }

        while (v148);
        v149 = v113 & 0xFFFFFFF8;
        if (v149 == v113)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v149 = 0;
      }

      v152 = v113 - v149;
      v153 = v143 + v149;
      v154 = &xmmword_1DE12D3B8 + v149 + v142;
      do
      {
        v155 = *v154++;
        *(v139 + 4 * v153++) = v155;
        --v152;
      }

      while (v152);
LABEL_214:
      ++v144;
      v145 += 4;
      v143 += v113;
      v142 += 16;
      if (v144 == v113)
      {
        goto LABEL_224;
      }
    }
  }

  *v139 = 1065353216;
  if (v113 != 1)
  {
    *(v139 + 4) = 0;
    *(v139 + 8) = 0;
    if (v113 == 2)
    {
      v141 = 12;
    }

    else
    {
      if (v113 == 3)
      {
        v140 = (v139 + 28);
        *(v139 + 20) = 0;
        *(v139 + 12) = 0;
        v141 = 32;
      }

      else
      {
        *(v139 + 16) = 0;
        *(v139 + 12) = 0;
        switch(v113)
        {
          case 4u:
            *(v139 + 24) = 0x3F80000000000000;
            *(v139 + 32) = xmmword_1DE095680;
            *(v139 + 48) = 0;
            v140 = (v139 + 56);
            v141 = 60;
            break;
          case 5u:
            *(v139 + 24) = 0;
            *(v139 + 32) = 1065353216;
            *(v139 + 40) = xmmword_1DE095680;
            *(v139 + 56) = 0;
            *(v139 + 60) = xmmword_1DE097CF0;
            *(v139 + 76) = 0;
            v157 = v139 + 80;
            *v157 = 0;
            *(v157 + 8) = 0;
            *(v157 + 16) = 0;
            goto LABEL_224;
          case 6u:
            *(v139 + 24) = xmmword_1DE097CE0;
            *(v139 + 40) = 0;
            *(v139 + 48) = xmmword_1DE095680;
            *(v139 + 64) = 0;
            *(v139 + 72) = xmmword_1DE097CF0;
            *(v139 + 88) = 0;
            *(v139 + 96) = 0;
            *(v139 + 104) = 0;
            *(v139 + 112) = 0;
            v156 = (v139 + 120);
            *v156 = 0;
            v156[1] = 0;
            v156[2] = 0;
            goto LABEL_224;
          default:
            *(v139 + 24) = 0;
            v158 = v139 + 4 * v113;
            *v158 = xmmword_1DE097CE0;
            *(v158 + 16) = 0;
            *(v139 + 52) = 0;
            v159 = v139 + 8 * v113;
            *v159 = xmmword_1DE095680;
            *(v159 + 16) = 0;
            *(v159 + 24) = 0;
            v160 = v139 + 12 * v113;
            *v160 = xmmword_1DE097CF0;
            *(v160 + 16) = 0;
            *(v160 + 24) = 0;
            v161 = v139 + 16 * v113;
            *v161 = 0;
            *(v161 + 8) = 0;
            *(v161 + 16) = 0;
            *(v161 + 24) = 1065353216;
            v162 = v139 + 20 * v113;
            *(v162 + 8) = 0;
            *(v162 + 16) = 0;
            *v162 = 0;
            *(v162 + 24) = 0;
            v140 = (v139 + 188);
            *(v139 + 168) = 0;
            *(v139 + 176) = 0;
            v141 = 192;
            *(v139 + 184) = 0;
            break;
        }
      }

      *v140 = 1065353216;
    }

    *(v139 + v141) = 0;
  }

LABEL_224:
  *(v163 + 2) = 0;
  *(v163 + 28) = 1;
}

uint64_t HOA::HOA(uint64_t a1, unsigned int a2, int a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 4) = a2;
  *(a1 + 184) = 0u;
  *(a1 + 28) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 304) = a3;
  HOA::RotationMatrix::RotationMatrix(a1 + 312, a2, a3, 1);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  HOA::initialize(a1, v4);
  return a1;
}

void sub_1DE077520(_Unwind_Exception *a1)
{
  v5 = v1[46];
  if (v5)
  {
    v1[47] = v5;
    operator delete(v5);
  }

  SimpleMeters::~SimpleMeters((v2 + 35));
  v6 = v1[35];
  if (v6)
  {
    v1[36] = v6;
    operator delete(v6);
    v7 = v1[32];
    if (!v7)
    {
LABEL_5:
      v8 = v1[29];
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = v1[32];
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v1[33] = v7;
  operator delete(v7);
  v8 = v1[29];
  if (!v8)
  {
LABEL_6:
    v9 = v1[26];
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v1[30] = v8;
  operator delete(v8);
  v9 = v1[26];
  if (!v9)
  {
LABEL_7:
    v10 = *v3;
    if (!*v3)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v1[27] = v9;
  operator delete(v9);
  v10 = *v3;
  if (!*v3)
  {
LABEL_8:
    v11 = v1[19];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v1[24] = v10;
  operator delete(v10);
  v11 = v1[19];
  if (!v11)
  {
LABEL_9:
    v12 = v1[16];
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v1[20] = v11;
  operator delete(v11);
  v12 = v1[16];
  if (!v12)
  {
LABEL_10:
    v13 = v1[13];
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v1[17] = v12;
  operator delete(v12);
  v13 = v1[13];
  if (!v13)
  {
LABEL_11:
    v14 = v1[10];
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v1[14] = v13;
  operator delete(v13);
  v14 = v1[10];
  if (!v14)
  {
LABEL_12:
    v15 = v1[7];
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v1[11] = v14;
  operator delete(v14);
  v15 = v1[7];
  if (!v15)
  {
LABEL_13:
    v16 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v1[8] = v15;
  operator delete(v15);
  v16 = *v2;
  if (!*v2)
  {
LABEL_14:
    _Unwind_Resume(a1);
  }

LABEL_25:
  v1[5] = v16;
  operator delete(v16);
  _Unwind_Resume(a1);
}

uint64_t HOA::squareRootInteger(HOA *this)
{
  v1 = 0x40000000;
  do
  {
    v2 = v1;
    v1 >>= 2;
  }

  while (v2 > this);
  v3 = 0;
  if (v2)
  {
    do
    {
      v4 = v2 + v3;
      v5 = 2 * v2;
      if (this < v2 + v3)
      {
        v4 = 0;
        v5 = 0;
      }

      LODWORD(this) = this - v4;
      v3 = (v5 + v3) >> 1;
      v6 = v2 > 3;
      v2 >>= 2;
    }

    while (v6);
  }

  return v3;
}

uint64_t HOA::HOA(uint64_t a1, int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0u;
  *(a1 + 28) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a3;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  HOA::RotationMatrix::RotationMatrix((a1 + 312), a2, 1);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v6 = 0x40000000;
  *(a1 + 384) = 0;
  do
  {
    v7 = v6;
    v6 >>= 2;
  }

  while (v7 > a2);
  if (!v7)
  {
    v14 = -1;
    *(a1 + 4) = -1;
    v15 = (a1 + 4);
LABEL_11:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "HOA.cpp";
      v21 = 1024;
      v22 = 662;
      v23 = 2080;
      v24 = "HOA";
      v25 = 1024;
      v26 = 662;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Incorrect order", &v19, 0x22u);
      v14 = *v15;
    }

    goto LABEL_13;
  }

  v8 = 0;
  v9 = a2;
  do
  {
    v10 = v8 + v7;
    v11 = 2 * v7;
    if (v9 < v8 + v7)
    {
      v10 = 0;
      v11 = 0;
    }

    v9 -= v10;
    v12 = v11 + v8;
    v8 = (v11 + v8) >> 1;
    v13 = v7 > 3;
    v7 >>= 2;
  }

  while (v13);
  v14 = v8 - 1;
  *(a1 + 4) = v8 - 1;
  v15 = (a1 + 4);
  if (v12 <= 1)
  {
    goto LABEL_11;
  }

LABEL_13:
  if ((v14 + 1) * (v14 + 1) != a2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 136315906;
    v20 = "HOA.cpp";
    v21 = 1024;
    v22 = 666;
    v23 = 2080;
    v24 = "HOA";
    v25 = 1024;
    v26 = 666;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Incorrect channel count (i.e. not consistent with HOA order definition Channels = (order+1)^2)", &v19, 0x22u);
  }

  v16 = a2 & 0xFFFF0000;
  if ((a2 & 0xFFFF0000) == 0x6B0000)
  {
    v17 = 2;
  }

  else if (v16 == 12517376)
  {
    v17 = 0;
  }

  else if (v16 == 12451840)
  {
    v17 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "HOA.cpp";
      v21 = 1024;
      v22 = 632;
      v23 = 2080;
      v24 = "normalizationFromTag";
      v25 = 1024;
      v26 = 632;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; This is not SN3D/N3D/FuMa: unsupported", &v19, 0x22u);
    }

    v17 = -1;
  }

  *(a1 + 304) = v17;
  HOA::initialize(a1, v5);
  return a1;
}

void sub_1DE0779C8(_Unwind_Exception *a1)
{
  v5 = v1[46];
  if (v5)
  {
    v1[47] = v5;
    operator delete(v5);
  }

  SimpleMeters::~SimpleMeters((v2 + 35));
  v6 = v1[35];
  if (v6)
  {
    v1[36] = v6;
    operator delete(v6);
    v7 = v1[32];
    if (!v7)
    {
LABEL_5:
      v8 = v1[29];
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = v1[32];
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v1[33] = v7;
  operator delete(v7);
  v8 = v1[29];
  if (!v8)
  {
LABEL_6:
    v9 = v1[26];
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v1[30] = v8;
  operator delete(v8);
  v9 = v1[26];
  if (!v9)
  {
LABEL_7:
    v10 = *v3;
    if (!*v3)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v1[27] = v9;
  operator delete(v9);
  v10 = *v3;
  if (!*v3)
  {
LABEL_8:
    v11 = v1[19];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v1[24] = v10;
  operator delete(v10);
  v11 = v1[19];
  if (!v11)
  {
LABEL_9:
    v12 = v1[16];
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v1[20] = v11;
  operator delete(v11);
  v12 = v1[16];
  if (!v12)
  {
LABEL_10:
    v13 = v1[13];
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v1[17] = v12;
  operator delete(v12);
  v13 = v1[13];
  if (!v13)
  {
LABEL_11:
    v14 = v1[10];
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v1[14] = v13;
  operator delete(v13);
  v14 = v1[10];
  if (!v14)
  {
LABEL_12:
    v15 = v1[7];
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v1[11] = v14;
  operator delete(v14);
  v15 = v1[7];
  if (!v15)
  {
LABEL_13:
    v16 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v1[8] = v15;
  operator delete(v15);
  v16 = *v2;
  if (!*v2)
  {
LABEL_14:
    _Unwind_Resume(a1);
  }

LABEL_25:
  v1[5] = v16;
  operator delete(v16);
  _Unwind_Resume(a1);
}

void HOA::~HOA(HOA *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    *(this + 43) = v3;
    operator delete(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
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

  v10 = *(this + 19);
  if (v10)
  {
    *(this + 20) = v10;
    operator delete(v10);
  }

  v11 = *(this + 16);
  if (v11)
  {
    *(this + 17) = v11;
    operator delete(v11);
  }

  v12 = *(this + 13);
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    *(this + 11) = v13;
    operator delete(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    *(this + 8) = v14;
    operator delete(v14);
  }

  v15 = *(this + 4);
  if (v15)
  {
    *(this + 5) = v15;
    operator delete(v15);
  }
}

uint64_t HOA::createEncoder(HOA *this, const float *a2, const float *a3, vDSP_Length a4, float *a5, uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((*(this + 28) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "HOA.cpp";
      v28 = 1024;
      v29 = 777;
      v30 = 2080;
      v31 = "createEncoder";
      v32 = 1024;
      v33 = 777;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_19:
      _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x22u);
    }

    return 4294967246;
  }

  if (*(this + 3) * a4 != a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "HOA.cpp";
      v28 = 1024;
      v29 = 782;
      v30 = 2080;
      v31 = "createEncoder";
      v32 = 1024;
      v33 = 782;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent vector size";
      goto LABEL_19;
    }

    return 4294967246;
  }

  if (a4)
  {
    v10 = *(this + 2);
    v11 = 4 * a4;
    MEMORY[0x1EEE9AC00](this);
    v12 = &buf[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v14 = v13;
    bzero(v12, 4 * a4);
    MEMORY[0x1EEE9AC00](v15);
    bzero(v12, 4 * a4);
    MEMORY[0x1E12BE940](v14, 1, &kDeg2Radf, v12, 1, a4);
    MEMORY[0x1E12BE940](a3, 1, &kDeg2Radf, v12, 1, a4);
    v16 = (v10 * a4);
    HOA::sphericalHarmonics(v12, v12, a4, a5, *this);
    MEMORY[0x1EEE9AC00](v17);
    v19 = &buf[-v18];
    bzero(&buf[-v18], 4 * v16);
    if (*(this + 76) == 2)
    {
      vDSP_mmul(*(this + 46), 1, a5, 1, v19, 1, *(this + 2), a4, *(this + 2));
      if (v16)
      {
        memcpy(a5, v19, 4 * v16);
      }
    }

    v20 = 0;
    v21 = a5;
    do
    {
      MEMORY[0x1E12BE7F0](*(this + 10), 1, v21++, a4, &v19[(*(this + 2) * v20++)], 1);
    }

    while (a4 != v20);
    if (v16)
    {
      memcpy(a5, v19, 4 * v16);
    }

    if (*(this + 1) != *this)
    {
      v22 = *(this + 3) * a4 - v16;
      if (v22 >= 1)
      {
        bzero(&a5[(v10 * a4)], 4 * v22);
      }
    }
  }

  return 0;
}

void HOA::sphericalHarmonics(HOA *this, const float *a2, const float *a3, uint64_t a4, float *a5)
{
  v154 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return;
  }

  v138 = this;
  v107[1] = v107;
  v116 = (a5 + 1);
  MEMORY[0x1EEE9AC00](this);
  v8 = v107 - v7;
  v146 = v9;
  bzero(v107 - v7, v10);
  v11 = v146;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v107 - ((v13 + 15) & 0x7FFFFFFF0);
  bzero(v14, v13);
  v16 = v146;
  v119 = v8;
  if (v146 >= 1)
  {
    v11 = v146 & 0x7FFFFFFF;
    if (v11 > 1)
    {
      v18 = v146 & 1;
      v17 = v11 - v18;
      v19 = a2;
      v20 = v14;
      v21 = v17;
      do
      {
        v22 = *v19;
        v19 += 2;
        v15.i64[0] = v22;
        v152 = v15;
        v23.f32[0] = sinf(*(&v22 + 1));
        v153 = v23;
        v15.f32[0] = sinf(v152.f32[0]);
        v15.i32[1] = v153.i32[0];
        *v20++ = v15.i64[0];
        v21 -= 2;
      }

      while (v21);
      if (!v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
    }

    v24 = v11 - v17;
    v25 = v17;
    v26 = &v14[4 * v17];
    v27 = &a2[v25];
    do
    {
      v28 = *v27++;
      *v26++ = sinf(v28);
      --v24;
    }

    while (v24);
LABEL_11:
    v16 = v146;
    v8 = v119;
  }

  if (v16 >= 1)
  {
    v29 = 0;
    v130 = 0;
    v30 = 0;
    v31 = 0;
    v109 = a4 + 4;
    v108 = v138 + 4 * v11;
    v139 = 4 * v11;
    v115 = a4 + 4 * v11;
    v114 = v115 - 4;
    v113 = v11 & 0xFFFFFFF8;
    v112 = a4 + 16;
    v111 = 2 * v16;
    v110 = v8 + 16;
    v126 = 4 * v16;
    v32 = 4 * v16;
    v125 = 16 * v16;
    v33 = 1;
    v132 = -1;
    v124 = xmmword_1DE09E7E0;
    v123 = xmmword_1DE09DB70;
    v122 = xmmword_1DE09E6B0;
    v34 = v16;
    v35 = 1;
    v134 = v14;
    v133 = v11;
    v135 = a4;
    v145 = v32;
    v148 = vdupq_n_s32(0x3FB504F3u);
    v143 = vdupq_n_s64(4uLL);
    do
    {
      v117 = v34;
      v118 = v33;
      v137 = v31;
      v36 = 0;
      v129 = v30 & 0x1FFFFFFFCLL;
      v121 = v29;
      v37 = (a4 + v32 * (v35 + v29));
      v153.i64[0] = v114 + 4 * v30;
      do
      {
        v38 = powf(-1.0, v36);
        v39 = 0;
        do
        {
          *&v8[4 * v39] = HOA::legendre(v30, v36, *&v14[4 * v39]) * v38;
          ++v39;
        }

        while (v11 != v39);
        ++v36;
        v8 += v139;
      }

      while (v36 != v35);
      v40 = v115 + 4 * v30;
      v41 = v30;
      v42 = v130;
      v43 = v137;
      v44 = v146;
      v45 = v119;
      v46 = v113;
      v47 = v112;
      v48 = v110;
      do
      {
        v49 = 4 * v42;
        if (v43 <= v41)
        {
          v50 = v41;
        }

        else
        {
          v50 = v43;
        }

        v51 = 4 * (v44 * v50);
        if (v43 >= 0)
        {
          v52 = v43;
        }

        else
        {
          v52 = -v43;
        }

        v53 = sqrtf(flt_1DE12D7B8[v30 - v52] * (((v30 * 2.0) + 1.0) * flt_1DE12D80C[(v52 + v30)]));
        if (v11 < 8)
        {
          v54 = 0;
LABEL_32:
          v59 = v11 - v54;
          v60 = 4 * v54;
          v61 = (a4 + v60 + v49);
          v62 = &v45[v60 + v51];
          do
          {
            v63 = *v62++;
            *v61++ = v63 * v53;
            --v59;
          }

          while (v59);
          goto LABEL_20;
        }

        v55 = (v47 + v49);
        v56 = &v48[v51];
        v57 = v46;
        do
        {
          v58 = vmulq_n_f32(*v56, v53);
          v55[-1] = vmulq_n_f32(v56[-1], v53);
          *v55 = v58;
          v55 += 2;
          v56 += 2;
          v57 -= 8;
        }

        while (v57);
        v54 = v46;
        if (v11 != v46)
        {
          goto LABEL_32;
        }

LABEL_20:
        ++v43;
        v42 += v44;
        --v41;
      }

      while (v35 != v43);
      v120 = v30 + 1;
      v32 = v145;
      if (v30)
      {
        v64 = v37;
        v65 = 0;
        v131 = v30 + v121;
        v66 = 4 * (v30 + v121);
        v67 = v109 + v66;
        v68 = v40 + v66;
        v69 = a4 + 4 * v121;
        v70 = v153.i64[0] + 4 * v121;
        v72 = v121 + v30 - 1 < v121 || (v30 - 1) >> 32 != 0;
        v74 = v67 < v70 && v69 < v68;
        v76 = v67 < v108 && v68 > v138 || v74;
        if (v69 < v108 && v70 > v138)
        {
          v76 = 1;
        }

        v128 = v30 & 0x1FFFFFFFCLL;
        v127 = v30 & 0x1FFFFFFFCLL | 1;
        v144 = vdupq_n_s64(v120);
        v136 = (v30 < 4 || v44 != 1 || v72) | v76;
        v142 = a4;
        v140 = v35;
        do
        {
          v78 = a4 + 4 * v65;
          v141 = v64;
          if (v136)
          {
            v79 = 1;
            v80 = v137;
            v81 = v138;
          }

          else
          {
            v82 = (v138 + 4 * v65);
            v83 = vld1q_dup_f32(v82);
            v149 = v83;
            v84 = v130;
            v85 = v129;
            v151 = v123;
            v150 = v124;
            v86 = v122;
            v87 = v126;
            v88 = v125;
            do
            {
              v147 = v86;
              v153 = vmulq_f32(v149, vcvtq_f32_u32(v86));
              v89.f32[0] = cosf(v153.f32[1]);
              v152 = v89;
              v90.f32[0] = cosf(v153.f32[0]);
              v90.i32[1] = v152.i32[0];
              v152 = v90;
              v91 = cosf(v153.f32[2]);
              v92 = v152;
              v92.f32[2] = v91;
              v152 = v92;
              v93 = cosf(v153.f32[3]);
              v94 = v152;
              v94.f32[3] = v93;
              *v64 = vmulq_f32(vmulq_f32(*v64, v148), v94);
              v153 = vmulq_f32(v149, vnegq_f32(vcvtq_f32_s32(vuzp1q_s32(vsubq_s64(v144, v151), vsubq_s64(v144, v150)))));
              v95.f32[0] = sinf(v153.f32[1]);
              v152 = v95;
              v96.f32[0] = sinf(v153.f32[0]);
              v96.i32[1] = v152.i32[0];
              v152 = v96;
              v97 = sinf(v153.f32[2]);
              v98 = v152;
              v98.f32[2] = v97;
              v152 = v98;
              v99 = sinf(v153.f32[3]);
              v100 = v147;
              v101 = v152;
              v101.f32[3] = v99;
              *(v78 + 4 * v84) = vmulq_f32(vmulq_f32(*(v78 + 4 * v84), v148), v101);
              v150 = vaddq_s64(v150, v143);
              v151 = vaddq_s64(v151, v143);
              v102.i64[0] = 0x400000004;
              v102.i64[1] = 0x400000004;
              v86 = vaddq_s32(v100, v102);
              v84 += v87;
              v64 = (v64 + v88);
              v85 -= 4;
            }

            while (v85);
            v79 = v127;
            v32 = v145;
            LODWORD(v44) = v146;
            v80 = v137;
            v81 = v138;
            if (v30 == v128)
            {
              goto LABEL_61;
            }
          }

          v103 = v140 - v79;
          v104 = (v142 + v32 * (v131 + v79));
          v105 = v44 * (v132 + v79);
          do
          {
            *v104 = (*v104 * 1.4142) * cosf(*(v81 + v65) * v79);
            v106 = sinf(-(v103 * *(v81 + v65)));
            v32 = v145;
            LODWORD(v44) = v146;
            *(v78 + 4 * v105) = (*(v78 + 4 * v105) * 1.4142) * v106;
            ++v79;
            --v103;
            v104 = (v104 + v32);
            v105 += v44;
          }

          while (v80 + v79 != 1);
LABEL_61:
          ++v65;
          v64 = &v141->i32[1];
          v142 += 4;
          v11 = v133;
          a4 = v135;
          v14 = v134;
          v35 = v140;
        }

        while (v65 != v133);
      }

      v29 = v121 + v118;
      ++v35;
      v31 = v137 - 1;
      v130 += v117;
      v132 += v118;
      v33 = (v118 + 2);
      v34 = v117 + v111;
      v30 = v120;
      v8 = v119;
    }

    while (v120 != v116);
  }
}

void HOA::createEncoder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v20 = 136315906;
    v21 = "HOA.cpp";
    v22 = 1024;
    v23 = 834;
    v24 = 2080;
    v25 = "createEncoder";
    v26 = 1024;
    v27 = 834;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_10:
    _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, v19, &v20, 0x22u);
    return;
  }

  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  v8 = *a3;
  if (v6 != *(a3 + 8) - v8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v20 = 136315906;
    v21 = "HOA.cpp";
    v22 = 1024;
    v23 = 839;
    v24 = 2080;
    v25 = "createEncoder";
    v26 = 1024;
    v27 = 839;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent azimuth/elevation size";
    goto LABEL_10;
  }

  v10 = v6 >> 2;
  v11 = *(a1 + 32);
  *(a1 + 16) = v6 >> 2;
  v12 = *(a1 + 12) * (v6 >> 2);
  v13 = *(a1 + 40);
  v14 = v13 - v11;
  v15 = v12 >= v14;
  v16 = v12 - v14;
  if (v16 != 0 && v15)
  {
    v17 = a1;
    std::vector<float>::__append(a1 + 32, v16);
    a1 = v17;
    v4 = *a2;
    v8 = *a3;
    LODWORD(v10) = *(v17 + 16);
    v11 = *(v17 + 32);
    v13 = *(v17 + 40);
  }

  else if (!v15)
  {
    v13 = &v11[v12];
    *(a1 + 40) = v13;
  }

  HOA::createEncoder(a1, v4, v8, v10, v11, v13 - v11);
}

uint64_t HOA::createALLRAD(float **this, VBAP *a2, const float *a3, const float *a4, unsigned int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  vDSP_vclr(this[7], 1, (*(this + 2) * *(this + 5)));
  if (*(this + 5))
  {
    operator new();
  }

  v10 = 0;
  while (1)
  {
    v11 = VBAP::calculateVBAPGains(a2, &a4[(3 * v10)], 0);
    if (v11)
    {
      break;
    }

    v12 = *(this + 5);
    if (v12)
    {
      v13 = 0;
      for (i = 0; i < v12; ++i)
      {
        MEMORY[0x1E12BE8F0](&a3[v10], a5, v13 * 4, &this[7][v13], v12, &this[7][v13], v12, *(this + 2));
        v12 = *(this + 5);
        ++v13;
      }
    }

    if (++v10 == a5)
    {
      return 0;
    }
  }

  v15 = v11;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = 136315906;
    v18 = "HOA.cpp";
    v19 = 1024;
    v20 = 863;
    v21 = 2080;
    v22 = "createALLRAD";
    v23 = 1024;
    v24 = 863;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; VBAP calculation error", &v17, 0x22u);
  }

  return v15;
}

void sub_1DE078CEC(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void HOA::createALLRAD2(HOA *this, VBAP *a2, const float *a3, const float *a4, int a5)
{
  if (*(this + 2) * a5)
  {
    operator new();
  }

  operator new();
}

void sub_1DE079288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *__p, void *a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  operator delete(a15);
  if (a12)
  {
    operator delete(a12);
    if (!a13)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!a13)
  {
    goto LABEL_7;
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t HOA::createDecoder(unsigned int *a1, void *a2, void *a3, int a4)
{
  v70 = *MEMORY[0x1E69E9840];
  if ((a1[7] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *buf = 136315906;
    *&buf[4] = "HOA.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 948;
    *&buf[18] = 2080;
    *&buf[20] = "createDecoder";
    *&buf[28] = 1024;
    *&buf[30] = 948;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_13:
    _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x22u);
    return 4294967246;
  }

  v4 = a2[1] - *a2;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *buf = 136315906;
    *&buf[4] = "HOA.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 953;
    *&buf[18] = 2080;
    *&buf[20] = "createDecoder";
    *&buf[28] = 1024;
    *&buf[30] = 953;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Empty azimuth/elevation";
    goto LABEL_13;
  }

  if (v4 != a3[1] - *a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HOA.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 958;
      *&buf[18] = 2080;
      *&buf[20] = "createDecoder";
      *&buf[28] = 1024;
      *&buf[30] = 958;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent azimuth/elevation size";
      goto LABEL_13;
    }

    return 4294967246;
  }

  v8 = v4 >> 2;
  v11 = *(a1 + 16);
  v9 = (a1 + 32);
  v10 = v11;
  *(v9 - 108) = v4 >> 2;
  v12 = (v4 >> 2);
  v13 = (*(v9 + 8) - v11) >> 2;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v15 != 0 && v14)
  {
    std::vector<float>::__append(v9, v15);
    LODWORD(v8) = a1[5];
  }

  else if (!v14)
  {
    *(a1 + 17) = v10 + 4 * v12;
  }

  v21 = v8;
  v22 = *(a1 + 19);
  v23 = (*(a1 + 20) - v22) >> 2;
  if (v21 <= v23)
  {
    if (v21 < v23)
    {
      *(a1 + 20) = v22 + 4 * v21;
    }
  }

  else
  {
    std::vector<float>::__append((a1 + 38), v21 - v23);
    v21 = a1[5];
  }

  MEMORY[0x1E12BE940](*a2, 1, &kDeg2Radf, *(a1 + 16), 1, v21);
  *&v24 = MEMORY[0x1E12BE940](*a3, 1, &kDeg2Radf, *(a1 + 19), 1, a1[5]);
  v25 = a1[2] * a1[5];
  *buf = 0;
  std::vector<float>::assign(a1 + 7, v25, buf, v24);
  if (a4 == 2)
  {
    v27 = a1[5];
    if (v27 * a1[2])
    {
      operator new();
    }

    v19 = 0;
    HOA::sphericalHarmonics(*(a1 + 16), *(a1 + 19), v27, 0, *a1);
    vDSP_mtrans(0, 1, *(a1 + 7), 1, a1[5], a1[2]);
    v29 = a1[5];
    *v49 = 1.0 / v29;
    MEMORY[0x1E12BE940](*(a1 + 7), 1, v49, *(a1 + 7), 1, a1[2] * v29);
    v30 = a1[76];
    if (v30 == 2)
    {
      memset(buf, 0, 24);
      std::vector<float>::vector[abi:ne200100](buf, a1[2] * a1[2]);
      vDSP_mtrans(*(a1 + 46), 1, *buf, 1, a1[2], a1[2]);
      vDSP_mmul(*(a1 + 7), 1, *buf, 1, 0, 1, a1[5], a1[2], a1[2]);
      memcpy(*(a1 + 7), 0, 4 * a1[2] * a1[5]);
      if (a1[5])
      {
        v40 = 0;
        do
        {
          v41 = a1[2];
          v42 = (*(a1 + 7) + 4 * v41 * v40);
          vDSP_vdiv(*(a1 + 10), 1, v42, 1, v42, 1, v41);
          ++v40;
        }

        while (v40 < a1[5]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    else if (v30 == 1 && a1[5])
    {
      v31 = 0;
      do
      {
        v32 = a1[2];
        v33 = (*(a1 + 7) + 4 * v32 * v31);
        vDSP_vdiv(*(a1 + 10), 1, v33, 1, v33, 1, v32);
        ++v31;
      }

      while (v31 < a1[5]);
    }

    goto LABEL_54;
  }

  if (*a1)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    memset(v48, 0, sizeof(v48));
    v28 = a2[1] - *a2;
    if (v28)
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    memset(v47, 0, sizeof(v47));
    v43 = a3[1];
    if (v43 != *a3)
    {
      if (((v43 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    *v49 = 0;
    v50 = 0;
    v51 = 0;
    VBAP::VBAP(buf, v48, v47, 1);
  }

  v34 = a1[5];
  if (v34)
  {
    *v26.i32 = 1.0 / sqrtf(v34);
    v35 = *(a1 + 7);
    if (v34 >= 8)
    {
      v36 = v34 & 0xFFFFFFF8;
      v37 = vdupq_lane_s32(v26, 0);
      v38 = v35 + 1;
      v39 = v36;
      do
      {
        v38[-1] = v37;
        *v38 = v37;
        v38 += 2;
        v39 -= 8;
      }

      while (v39);
      if (v36 == v34)
      {
        goto LABEL_49;
      }

      LODWORD(v34) = v34 - v36;
      v35 = (v35 + 4 * v36);
    }

    do
    {
      v35->i32[0] = v26.i32[0];
      v35 = (v35 + 4);
      LODWORD(v34) = v34 - 1;
    }

    while (v34);
  }

LABEL_49:
  v19 = 0;
LABEL_54:
  if (a1[1] != *a1)
  {
    v44 = a1[5] * a1[3];
    *buf = 0;
    v45 = *(a1 + 7);
    v46 = (*(a1 + 8) - v45) >> 2;
    if (v44 <= v46)
    {
      if (v44 < v46)
      {
        *(a1 + 8) = v45 + 4 * v44;
      }
    }

    else
    {
      std::vector<float>::__append((a1 + 14), v44 - v46, buf, v26);
    }
  }

  return v19;
}

void sub_1DE079F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v45);
  operator delete(v44);
  operator delete(v43);
  if (v42)
  {
    operator delete(v42);
  }

  VBAP::~VBAP(&a41);
  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_1DE07A0D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HOA::createSphericalGridDecoder(unsigned int *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1[7])
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 16, *(a1 + 26), *(a1 + 27), (*(a1 + 27) - *(a1 + 26)) >> 2);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 19, *(a1 + 29), *(a1 + 30), (*(a1 + 30) - *(a1 + 29)) >> 2);
    v3 = (a1 + 46);
    v2 = *(a1 + 23);
    v4 = a1[6];
    a1[5] = v4;
    v5 = a1[2] * v4;
    v6 = (*(a1 + 24) - v2) >> 2;
    if (v5 <= v6)
    {
      if (v5 < v6)
      {
        *(a1 + 24) = &v2[4 * v5];
      }
    }

    else
    {
      std::vector<float>::__append((a1 + 46), v5 - v6);
      v2 = *v3;
    }

    HOA::sphericalHarmonics(*(a1 + 26), *(a1 + 29), ((*(a1 + 27) - *(a1 + 26)) >> 2), v2, *a1);
    if (a1[44] - 1 <= 1)
    {
      LODWORD(v7) = a1[5];
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          MEMORY[0x1E12BE7F0](*(a1 + 32), 1, *(a1 + 23) + v8, v7, *(a1 + 23) + v8, v7, v7);
          ++v9;
          v7 = a1[5];
          v8 += 4;
        }

        while (v9 < v7);
        v10 = v7 * 0.079577;
      }

      else
      {
        v10 = 0.0;
      }

      *buf = v10;
      MEMORY[0x1E12BE940](*(a1 + 23), 1, buf, *(a1 + 23), 1, (*(a1 + 24) - *(a1 + 23)) >> 2);
    }

    v11 = *(a1 + 7);
    v12 = *(a1 + 24) - *(a1 + 23);
    v13 = (*(a1 + 8) - v11) >> 2;
    if (v12 >> 2 <= v13)
    {
      if (v12 >> 2 < v13)
      {
        *(a1 + 8) = v11 + v12;
      }
    }

    else
    {
      std::vector<float>::__append((a1 + 14), (v12 >> 2) - v13);
    }

    if (a1[76] == 2)
    {
      v14 = *(a1 + 23);
      v15 = *(a1 + 24);
      v16 = v15 - v14;
      if (v15 != v14)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      vDSP_mmul(*(a1 + 46), 1, v14, 1, 0, 1, a1[2], a1[6], a1[2]);
      if (v16)
      {
        memmove(*v3, 0, v16);
      }
    }

    *buf = 1.0 / a1[6];
    v17 = *(a1 + 10);
    v18 = *(a1 + 11);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    vDSP_svdiv(buf, v17, 1, 0, 1, a1[2]);
    v19 = a1[6];
    if (v19)
    {
      v20 = 0;
      for (i = 0; i < v19; ++i)
      {
        MEMORY[0x1E12BE7F0](0, 1, *(a1 + 23) + v20, v19, *(a1 + 7) + v20, v19, a1[2]);
        v19 = a1[6];
        v20 += 4;
      }
    }

    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 23, *(a1 + 7), *(a1 + 8), (*(a1 + 8) - *(a1 + 7)) >> 2);
    if (a1[1] != *a1)
    {
      v23 = a1[6] * a1[3];
      v26 = 0;
      v24 = *(a1 + 7);
      v25 = (*(a1 + 8) - v24) >> 2;
      if (v23 <= v25)
      {
        if (v23 < v25)
        {
          *(a1 + 8) = v24 + 4 * v23;
        }
      }

      else
      {
        std::vector<float>::__append((a1 + 14), v23 - v25, &v26, v22);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 4.8153e-34;
    v28 = "HOA.cpp";
    v29 = 1024;
    v30 = 1100;
    v31 = 2080;
    v32 = "createSphericalGridDecoder";
    v33 = 1024;
    v34 = 1100;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized", buf, 0x22u);
  }
}

void sub_1DE07A504(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void KaiserWindow::KaiserWindow(KaiserWindow *this, int a2, double a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (a2 != -1)
  {
    operator new();
  }

  if (a3 >= 50.0)
  {
    v3 = a3 * 0.1102 + -0.95874;
  }

  else
  {
    v3 = 0.0;
    if (a3 > 21.0)
    {
      v3 = (a3 + -21.0) * 0.07886 + pow(a3 + -21.0, 0.4) * 0.5842;
    }
  }

  v4 = fabs(v3);
  v54 = v3;
  if (v4 >= 3.75)
  {
    v7 = 3.75 / v4;
    v8 = exp(v4);
    v3 = v54;
    v6 = ((((((((v7 * 0.00392377 + -0.01647633) * v7 + 0.02635537) * v7 + -0.02057706) * v7 + 0.00916281) * v7 + -0.00157565) * v7 + 0.00225319) * v7 + 0.01328592) * v7 + 0.39894228) * v8 / sqrt(v4);
  }

  else
  {
    v5 = v3 * 0.266666667 * (v3 * 0.266666667);
    v6 = (((((v5 * 0.0045813 + 0.0360768) * v5 + 0.2659732) * v5 + 1.2067492) * v5 + 3.0899424) * v5 + 3.5156229) * v5 + 1.0;
  }

  v9 = 4294967294;
  __asm { FMOV            V4.2D, #1.0 }

  v52 = vdupq_lane_s64(COERCE__INT64(0x7FFFFFFFu), 0);
  v58 = _Q4;
  v51 = vdivq_f64(_Q4, v52);
  v15 = 0x100000000;
  __asm { FMOV            V4.2D, #3.75 }

  v49 = vdupq_n_s64(0x3F70125EFD3B7F88uLL);
  v50 = _Q4;
  v47 = vdupq_n_s64(0x3F9AFCE6F0E55AE3uLL);
  v48 = vdupq_n_s64(0xBF90DF2BCA084C55);
  v45 = vdupq_n_s64(0x3F82C3F38A50D154uLL);
  v46 = vdupq_n_s64(0xBF9512271EFDC716);
  v43 = vdupq_n_s64(0x3F6275482B92D5DBuLL);
  v44 = vdupq_n_s64(0xBF59D0C14E13894ALL);
  v41 = vdupq_n_s64(0x3FD988453365DE00uLL);
  v42 = vdupq_n_s64(0x3F8B35A5FF2D9D1CuLL);
  v39 = vdupq_n_s64(0x3F72C3D75AC54874uLL);
  v40 = vdupq_n_s64(0x3FD1111111111111uLL);
  v37 = vdupq_n_s64(0x3FD105B474E732AAuLL);
  v38 = vdupq_n_s64(0x3FA278A88849E5FDuLL);
  v35 = vdupq_n_s64(0x4008B833B89430A4uLL);
  v36 = vdupq_n_s64(0x3FF34ED83FC7962CuLL);
  v34 = vdupq_n_s64(0x400C1FFEE6248CA7uLL);
  v17 = 4;
  v18 = 4294967294;
  v53 = 1.0 / v6;
  do
  {
    v19.i64[0] = v15.u32[0];
    v19.i64[1] = v15.u32[1];
    v20 = vmulq_f64(vsubq_f64(vcvtq_f64_u64(v19), v52), v51);
    v57 = vmulq_n_f64(vsqrtq_f64(vmlsq_f64(v58, v20, v20)), v3);
    v59 = vabsq_f64(v57);
    v56 = vdivq_f64(v50, v59);
    v55 = exp(v59.f64[1]);
    v21.f64[0] = exp(v59.f64[0]);
    v21.f64[1] = v55;
    v22 = vmulq_f64(v57, v40);
    v23 = vmulq_f64(v22, v22);
    v24 = v53;
    v3 = v54;
    *v17 = vcvt_f32_f64(vmulq_n_f64(vbslq_s8(vcgeq_f64(v59, v50), vdivq_f64(vmulq_f64(vmlaq_f64(v41, v56, vmlaq_f64(v42, v56, vmlaq_f64(v43, v56, vmlaq_f64(v44, v56, vmlaq_f64(v45, v56, vmlaq_f64(v46, v56, vmlaq_f64(v47, v56, vmlaq_f64(v48, v49, v56)))))))), v21), vsqrtq_f64(v59)), vmlaq_f64(v58, v23, vmlaq_f64(v34, v23, vmlaq_f64(v35, v23, vmlaq_f64(v36, v23, vmlaq_f64(v37, v23, vmlaq_f64(v38, v39, v23))))))), v53));
    v17 += 8;
    v15 = vadd_s32(v15, 0x200000002);
    v18 -= 2;
  }

  while (v18);
  v25 = 0x7FFFFFFFu;
  v26 = -1.0;
  do
  {
    v31 = sqrt(-(v26 + (v9 - v25) * (1.0 / 0x7FFFFFFFu) * ((v9 - v25) * (1.0 / 0x7FFFFFFFu)))) * v3;
    v32 = fabs(v31);
    if (v32 >= 3.75)
    {
      v28 = exp(v32);
      v26 = -1.0;
      v24 = v53;
      v3 = v54;
      v25 = 0x7FFFFFFFu;
      v27 = 3.75 / v32;
      v29 = ((((((((v27 * 0.00392377 + -0.01647633) * v27 + 0.02635537) * v27 + -0.02057706) * v27 + 0.00916281) * v27 + -0.00157565) * v27 + 0.00225319) * v27 + 0.01328592) * v27 + 0.39894228) * v28 / sqrt(v32);
    }

    else
    {
      v33 = v31 * 0.266666667 * (v31 * 0.266666667);
      v29 = (((((v33 * 0.0045813 + 0.0360768) * v33 + 0.2659732) * v33 + 1.2067492) * v33 + 3.0899424) * v33 + 3.5156229) * v33 + 1.0;
    }

    v30 = v29 * v24;
    *(4 * v9++ + 4) = v30;
  }

  while (v9 != 0xFFFFFFFFLL);
  MEMORY[0] = 0;
}

void sub_1DE07ABF4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<KaiserWindow>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 40;
        *(a1 + 16) = v2 - 40;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 40;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<KaiserWindow>,KaiserWindow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

uint64_t Biquad_8dot24::CreateProcessProcForFormats(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) == 1819304813 && *(a1 + 20) == 1;
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 24);
  if (v3 != *(a1 + 16))
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  if (v3 < v4 >> 3)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 28);
  if (!v5)
  {
    goto LABEL_9;
  }

  v13 = *(a1 + 12);
  if ((v13 & 0x20) == 0)
  {
    v2 = v3 == v3 / v5 * v5;
    v3 /= v5;
    if (!v2)
    {
LABEL_8:
      v5 = 0;
LABEL_9:
      v6 = 1;
      goto LABEL_10;
    }
  }

  v5 = 0;
  if ((v13 & 2) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    if (8 * v3 == v4)
    {
      if (v13)
      {
        v14 = 4 * (v3 == 8);
        if (v3 == 4)
        {
          v14 = 1;
        }

        if ((v13 & 0x1F84) != 0)
        {
          v5 = 0;
        }

        else
        {
          v5 = v14;
        }

        v6 = (*(a1 + 12) & 0x1F84) != 0;
      }

      else if ((v13 & 4) != 0)
      {
        v16 = (v13 >> 7) & 0x3F;
        if (v16 == 24 && v3 == 4)
        {
          v6 = 0;
          v5 = 3;
        }

        else if (v16 || v3 != 4)
        {
          v6 = 0;
          if (v3 == 2 && v16 == 0)
          {
            v5 = 2;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v6 = 0;
          v5 = 5;
        }
      }

      else
      {
        v5 = 0;
        v6 = 0;
      }
    }
  }

LABEL_10:
  if (*(a2 + 8) != 1819304813 || *(a2 + 20) != 1)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if (v8 != *(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 32);
  if (v8 < v9 >> 3)
  {
    return 0;
  }

  v10 = *(a2 + 28);
  if (!v10)
  {
    return 0;
  }

  v11 = *(a2 + 12);
  if ((v11 & 0x20) == 0)
  {
    v2 = v8 == v8 / v10 * v10;
    v8 /= v10;
    if (!v2)
    {
      return 0;
    }
  }

  v12 = 0;
  if ((v11 & 2) == 0 && 8 * v8 == v9)
  {
    if (v11)
    {
      if ((v11 & 0x1F84) != 0)
      {
        return 0;
      }

      v12 = 4 * (v8 == 8);
      if (v8 == 4)
      {
        v12 = 1;
      }
    }

    else if ((v11 & 4) != 0)
    {
      v15 = (v11 >> 7) & 0x3F;
      if (v15 == 24 && v8 == 4)
      {
        v12 = 3;
      }

      else if (v15 || v8 != 4)
      {
        if (v8 == 2 && v15 == 0)
        {
          v12 = 2;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 5;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  if (v6 || *a1 != *a2)
  {
    return 0;
  }

  v18 = *(a1 + 28);
  if (v18 == 1)
  {
    if (v10 == 2)
    {
      if ((v11 & 0x20) != 0)
      {
        return 0;
      }

      if (v5 != 3)
      {
        return v5 == 2 && v12 == 2;
      }
    }

    else
    {
      if (v10 != 1)
      {
        return 0;
      }

      if (v5 == 2)
      {
        return v12 == 2 || v12 == 3;
      }

      if (v5 != 3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v18 != 2 || v10 != 2)
    {
      return 0;
    }

    if ((*(a1 + 12) & 0x20) != 0)
    {
      if (v5 == 3 && v12 == 3 && (v11 & 0x20) != 0)
      {
        return 2;
      }

      return 0;
    }

    if ((v11 & 0x20) != 0)
    {
      if (v5 == 2 && v12 == 3)
      {
        return 3;
      }

      return 0;
    }

    if (v5 == 2)
    {
      return v12 == 2 || v12 == 3;
    }

    if (v5 != 3)
    {
      return 0;
    }
  }

  return v12 == 3;
}

int *Biquad_8dot24::Process824DeinterleavedTo824Deinterleaved(int *result, int *a2, uint64_t a3, int a4, int *a5)
{
  v5 = a5 + 5;
  v6 = a5[5];
  v7 = a5 + 7;
  v8 = a5[7];
  v9 = a5 + 9;
  v10 = a5[9];
  v11 = a5 + 11;
  v12 = a5[11];
  if (a4)
  {
    v13 = v5[a4];
    *v5 = v13;
    v14 = v7[a4];
    *v7 = v14;
    v15 = v9[a4];
    *v9 = v15;
    v16 = v11[a4];
    *v11 = v16;
    if (a3)
    {
      v18 = *a5;
      v17 = a5[1];
      v20 = a5[3];
      v19 = a5[4];
      a3 = a3;
      v21 = a5[2];
      do
      {
        v22 = v13;
        v23 = v15;
        v24 = *result++;
        v13 = v24;
        v25 = v17 * v16 + v18 * v15 + v19 * v14 + v20 * v22 + v24 * v21;
        if (v25 < 0)
        {
          v15 = -(-v25 >> 24);
        }

        else
        {
          v15 = v25 >> 24;
        }

        *a2++ = v15;
        v16 = v23;
        v14 = v22;
        --a3;
      }

      while (a3);
    }

    else
    {
      v22 = v14;
      v23 = v16;
    }

    *v7 = v22;
    *v9 = v15;
    *v11 = v23;
    v5[a4] = v13;
    v7[a4] = *v7;
    v9[a4] = *v9;
    v11[a4] = *v11;
  }

  else if (a3)
  {
    v27 = *a5;
    v26 = a5[1];
    v29 = a5[3];
    v28 = a5[4];
    a3 = a3;
    v30 = a5[11];
    v31 = a5[7];
    v32 = a5[2];
    do
    {
      v8 = v6;
      v12 = v10;
      v33 = *result++;
      v6 = v33;
      v34 = v26 * v30 + v27 * v10 + v28 * v31 + v29 * v8 + v33 * v32;
      if (v34 < 0)
      {
        v10 = -(-v34 >> 24);
      }

      else
      {
        v10 = v34 >> 24;
      }

      *a2++ = v10;
      v30 = v12;
      v31 = v8;
      --a3;
    }

    while (a3);
  }

  *v5 = v6;
  *v7 = v8;
  *v9 = v10;
  *v11 = v12;
  return result;
}

__int16 *Biquad_8dot24::Process16InterleavedTo824Deinterleaved(__int16 *result, int *a2, uint64_t a3, int a4, unsigned int a5, int *a6)
{
  v6 = a6 + 5;
  v7 = a6[a4 + 5];
  v8 = a6 + 7;
  v9 = a6[a4 + 7];
  v10 = a6 + 9;
  v11 = a6[a4 + 9];
  v12 = a6 + 11;
  v13 = a6[a4 + 11];
  if (a3)
  {
    v15 = *a6;
    v14 = a6[1];
    v16 = a6[3];
    v17 = a6[4];
    v18 = 2 * a5;
    a3 = a3;
    v19 = a6[2];
    do
    {
      v20 = v7;
      v21 = v11;
      v22 = v16 * v7;
      v7 = *result << 9;
      v23 = v22 + v17 * v9 + v15 * v21 + v14 * v13 + v7 * v19;
      if (v23 < 0)
      {
        v11 = -(-v23 >> 24);
      }

      else
      {
        v11 = v23 >> 24;
      }

      *a2++ = v11;
      result = (result + v18);
      v13 = v21;
      v9 = v20;
      --a3;
    }

    while (a3);
  }

  else
  {
    v20 = a6[a4 + 7];
    v21 = a6[a4 + 11];
  }

  v6[a4] = v7;
  v8[a4] = v20;
  v10[a4] = v11;
  v12[a4] = v21;
  return result;
}

uint64_t Biquad_8dot24::Process16sInterleavedTo16sInterleaved(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v4 = (2 * a3);
  v5 = a4[2];
  v6 = a4[3];
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[5];
  v10 = a4[4];
  v11 = a4[7];
  LODWORD(v12) = a4[9];
  v13 = a4[11];
  if (v4)
  {
    for (i = 0; i < v4; i += 2)
    {
      v15 = v9;
      v16 = v12;
      v17 = v6 * v9;
      v9 = *(result + 2 * i) << 9;
      v18 = v17 + v10 * v11 + v7 * v16 + v8 * v13 + v9 * v5;
      if (v18 < 0)
      {
        v12 = -(-v18 >> 24);
      }

      else
      {
        v12 = v18 >> 24;
      }

      v19 = v12 >> 9;
      if (v12 < -16777215)
      {
        LOWORD(v19) = 0x8000;
      }

      if (v12 > 16776703)
      {
        LOWORD(v19) = 0x7FFF;
      }

      *(a2 + 2 * i) = v19;
      v13 = v16;
      v11 = v15;
    }
  }

  else
  {
    v15 = a4[7];
    v16 = a4[11];
  }

  a4[5] = v9;
  a4[7] = v15;
  a4[9] = v12;
  a4[11] = v16;
  v20 = a4[6];
  v21 = a4[8];
  LODWORD(v12) = a4[10];
  v22 = a4[12];
  if (v4)
  {
    v23 = 1;
    do
    {
      v24 = v20;
      v25 = v12;
      v26 = v6 * v20;
      v20 = *(result + 2 * v23) << 9;
      v27 = v26 + v10 * v21 + v7 * v25 + v8 * v22 + v20 * v5;
      if (v27 < 0)
      {
        v12 = -(-v27 >> 24);
      }

      else
      {
        v12 = v27 >> 24;
      }

      v28 = v12 >> 9;
      if (v12 < -16777215)
      {
        LOWORD(v28) = 0x8000;
      }

      if (v12 > 16776703)
      {
        LOWORD(v28) = 0x7FFF;
      }

      *(a2 + 2 * v23) = v28;
      v23 += 2;
      v22 = v25;
      v21 = v24;
    }

    while (v23 < v4);
  }

  else
  {
    v24 = a4[8];
    v25 = a4[12];
  }

  a4[6] = v20;
  a4[8] = v24;
  a4[10] = v12;
  a4[12] = v25;
  return result;
}

uint64_t Biquad_8dot24::Process824sInterleavedTo824sInterleaved(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v4 = (2 * a3);
  v5 = a4[2];
  v6 = a4[3];
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[5];
  v10 = a4[4];
  v11 = a4[7];
  v12 = a4[9];
  v13 = a4[11];
  if (v4)
  {
    for (i = 0; i < v4; i += 2)
    {
      v15 = v9;
      v16 = v12;
      v17 = v6 * v9;
      v9 = *(result + 4 * i);
      v18 = v17 + v10 * v11 + v7 * v16 + v8 * v13 + v9 * v5;
      if (v18 < 0)
      {
        v12 = -(-v18 >> 24);
      }

      else
      {
        v12 = v18 >> 24;
      }

      *(a2 + 4 * i) = v12;
      v13 = v16;
      v11 = v15;
    }
  }

  else
  {
    v15 = a4[7];
    v16 = a4[11];
  }

  a4[5] = v9;
  a4[7] = v15;
  a4[9] = v12;
  a4[11] = v16;
  v19 = a4[6];
  v20 = a4[8];
  v21 = a4[10];
  v22 = a4[12];
  if (v4)
  {
    v23 = 1;
    do
    {
      v24 = v19;
      v25 = v21;
      v26 = v6 * v19;
      v19 = *(result + 4 * v23);
      v27 = v26 + v10 * v20 + v7 * v25 + v8 * v22 + v19 * v5;
      if (v27 < 0)
      {
        v21 = -(-v27 >> 24);
      }

      else
      {
        v21 = v27 >> 24;
      }

      *(a2 + 4 * v23) = v21;
      v23 += 2;
      v22 = v25;
      v20 = v24;
    }

    while (v23 < v4);
  }

  else
  {
    v24 = a4[8];
    v25 = a4[12];
  }

  a4[6] = v19;
  a4[8] = v24;
  a4[10] = v21;
  a4[12] = v25;
  return result;
}

__int16 *Biquad_8dot24::Process16mTo16sInterleaved(__int16 *result, _WORD *a2, uint64_t a3, int *a4)
{
  v4 = a4[5];
  v5 = a4[7];
  LODWORD(v6) = a4[9];
  v7 = a4[11];
  if (a3)
  {
    v9 = *a4;
    v8 = a4[1];
    v10 = a4[3];
    v11 = a4[4];
    a3 = a3;
    v12 = a4[2];
    do
    {
      v13 = v4;
      v14 = v6;
      v15 = v10 * v4;
      v16 = *result++;
      v4 = v16 << 9;
      v17 = v15 + v11 * v5 + v9 * v14 + v8 * v7 + (v16 << 9) * v12;
      if (v17 < 0)
      {
        v6 = -(-v17 >> 24);
      }

      else
      {
        v6 = v17 >> 24;
      }

      v18 = v6 >> 9;
      if (v6 < -16777215)
      {
        LOWORD(v18) = 0x8000;
      }

      if (v6 > 16776703)
      {
        LOWORD(v18) = 0x7FFF;
      }

      *a2 = v18;
      a2[1] = v18;
      a2 += 2;
      v7 = v14;
      v5 = v13;
      --a3;
    }

    while (a3);
  }

  else
  {
    v13 = a4[7];
    v14 = a4[11];
  }

  a4[5] = v4;
  a4[7] = v13;
  a4[9] = v6;
  a4[11] = v14;
  return result;
}

int *Biquad_8dot24::Process824mTo824sInterleaved(int *result, int *a2, unsigned int a3, int *a4)
{
  v4 = a4[5];
  v5 = a4[7];
  v6 = a4[9];
  v7 = a4[11];
  if (a3)
  {
    v9 = *a4;
    v8 = a4[1];
    v11 = a4[3];
    v10 = a4[4];
    v12 = a3;
    v13 = a4[2];
    do
    {
      v14 = v4;
      v15 = v6;
      v16 = v11 * v4;
      v17 = *result++;
      v4 = v17;
      v18 = v16 + v10 * v5 + v9 * v15 + v8 * v7 + v17 * v13;
      if (v18 < 0)
      {
        v6 = -(-v18 >> 24);
      }

      else
      {
        v6 = v18 >> 24;
      }

      *a2 = v6;
      a2[1] = v6;
      a2 += 2;
      v7 = v15;
      v5 = v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = a4[7];
    v15 = a4[11];
  }

  a4[5] = v4;
  a4[7] = v14;
  a4[9] = v6;
  a4[11] = v15;
  return result;
}

__int16 *Biquad_8dot24::Process16mTo16m(__int16 *result, _WORD *a2, uint64_t a3, int *a4)
{
  v4 = a4[5];
  v5 = a4[7];
  LODWORD(v6) = a4[9];
  v7 = a4[11];
  if (a3)
  {
    v9 = *a4;
    v8 = a4[1];
    v10 = a4[3];
    v11 = a4[4];
    a3 = a3;
    v12 = a4[2];
    do
    {
      v13 = v4;
      v14 = v6;
      v15 = v10 * v4;
      v16 = *result++;
      v4 = v16 << 9;
      v17 = v15 + v11 * v5 + v9 * v14 + v8 * v7 + (v16 << 9) * v12;
      if (v17 < 0)
      {
        v6 = -(-v17 >> 24);
      }

      else
      {
        v6 = v17 >> 24;
      }

      v18 = v6 >> 9;
      if (v6 < -16777215)
      {
        LOWORD(v18) = 0x8000;
      }

      if (v6 > 16776703)
      {
        LOWORD(v18) = 0x7FFF;
      }

      *a2++ = v18;
      v7 = v14;
      v5 = v13;
      --a3;
    }

    while (a3);
  }

  else
  {
    v13 = a4[7];
    v14 = a4[11];
  }

  a4[5] = v4;
  a4[7] = v13;
  a4[9] = v6;
  a4[11] = v14;
  return result;
}

int *Biquad_8dot24::Process824mTo824m(int *result, int *a2, unsigned int a3, int *a4)
{
  v4 = a4[5];
  v5 = a4[7];
  v6 = a4[9];
  v7 = a4[11];
  if (a3)
  {
    v9 = *a4;
    v8 = a4[1];
    v11 = a4[3];
    v10 = a4[4];
    v12 = a3;
    v13 = a4[2];
    do
    {
      v14 = v4;
      v15 = v6;
      v16 = v11 * v4;
      v17 = *result++;
      v4 = v17;
      v18 = v16 + v10 * v5 + v9 * v15 + v8 * v7 + v17 * v13;
      if (v18 < 0)
      {
        v6 = -(-v18 >> 24);
      }

      else
      {
        v6 = v18 >> 24;
      }

      *a2++ = v6;
      v7 = v15;
      v5 = v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = a4[7];
    v15 = a4[11];
  }

  a4[5] = v4;
  a4[7] = v14;
  a4[9] = v6;
  a4[11] = v15;
  return result;
}

uint64_t Biquad_8dot24::Process16sInterleavedTo824sInterleaved(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v4 = (2 * a3);
  v5 = a4[2];
  v6 = a4[3];
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[5];
  v10 = a4[4];
  v11 = a4[7];
  v12 = a4[9];
  v13 = a4[11];
  if (v4)
  {
    for (i = 0; i < v4; i += 2)
    {
      v15 = v9;
      v16 = v12;
      v17 = v6 * v9;
      v9 = *(result + 2 * i) << 9;
      v18 = v17 + v10 * v11 + v7 * v16 + v8 * v13 + v9 * v5;
      if (v18 < 0)
      {
        v12 = -(-v18 >> 24);
      }

      else
      {
        v12 = v18 >> 24;
      }

      *(a2 + 4 * i) = v12;
      v13 = v16;
      v11 = v15;
    }
  }

  else
  {
    v15 = a4[7];
    v16 = a4[11];
  }

  a4[5] = v9;
  a4[7] = v15;
  a4[9] = v12;
  a4[11] = v16;
  v19 = a4[6];
  v20 = a4[8];
  v21 = a4[10];
  v22 = a4[12];
  if (v4)
  {
    v23 = 1;
    do
    {
      v24 = v19;
      v25 = v21;
      v26 = v6 * v19;
      v19 = *(result + 2 * v23) << 9;
      v27 = v26 + v10 * v20 + v7 * v25 + v8 * v22 + v19 * v5;
      if (v27 < 0)
      {
        v21 = -(-v27 >> 24);
      }

      else
      {
        v21 = v27 >> 24;
      }

      *(a2 + 4 * v23) = v21;
      v23 += 2;
      v22 = v25;
      v20 = v24;
    }

    while (v23 < v4);
  }

  else
  {
    v24 = a4[8];
    v25 = a4[12];
  }

  a4[6] = v19;
  a4[8] = v24;
  a4[10] = v21;
  a4[12] = v25;
  return result;
}

__int16 *Biquad_8dot24::Process16mTo824m(__int16 *result, int *a2, unsigned int a3, int *a4)
{
  v4 = a4[5];
  v5 = a4[7];
  v6 = a4[9];
  v7 = a4[11];
  if (a3)
  {
    v9 = *a4;
    v8 = a4[1];
    v11 = a4[3];
    v10 = a4[4];
    v12 = a3;
    v13 = a4[2];
    do
    {
      v14 = v4;
      v15 = v6;
      v16 = v11 * v4;
      v17 = *result++;
      v4 = v17 << 9;
      v18 = v16 + v10 * v5 + v9 * v15 + v8 * v7 + (v17 << 9) * v13;
      if (v18 < 0)
      {
        v6 = -(-v18 >> 24);
      }

      else
      {
        v6 = v18 >> 24;
      }

      *a2++ = v6;
      v7 = v15;
      v5 = v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = a4[7];
    v15 = a4[11];
  }

  a4[5] = v4;
  a4[7] = v14;
  a4[9] = v6;
  a4[11] = v15;
  return result;
}

void MatrixMixerCore::~MatrixMixerCore(MatrixMixerCore *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x10A0C809A3667E9);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x1E12BD130](v3, 0x1080C8024820D23);
  }

  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x1E12BD130](v4, 0x1000C808B6DE1C6);
  }

  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x1E12BD130](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 6);
  if (v6)
  {
    MEMORY[0x1E12BD130](v6, 0x1000C8000313F17);
  }
}

void ConvolutionFilter::Reset(void **this)
{
  bzero(this[1], *(this + 8));
  bzero(this[2], *(this + 8));
  v2 = this[3];
  v3 = *(this + 8);

  bzero(v2, v3);
}

void *FIRFilter::Process2(float **a1, char *a2, float *a3, int a4, const float **a5, uint64_t a6)
{
  v6 = *(a6 + 12);
  if (v6 >= 97)
  {
    v21 = CAVerboseAbort();
    return FIRFilter::Process(v21);
  }

  else
  {
    v13 = a1[1];
    v14 = a4;
    v15 = 4 * a4;
    memcpy(&v13[v6], a2, v15);
    v16 = *a6;
    vDSP_conv(v13, 1, *a5, 1, a1[2], 1, v14, v6 + 1);
    vDSP_conv(v13, 1, v16, 1, a1[3], 1, v14, v6 + 1);
    v18 = a1[2];
    v17 = a1[3];
    __Start = 0.0;
    __Step = 1.0 / a4;
    MEMORY[0x1E12BE9A0](v18, 1, v17, 1, a3, 1, v14);
    vDSP_vrampmul(a3, 1, &__Start, &__Step, a3, 1, v14);
    MEMORY[0x1E12BE5D0](v18, 1, a3, 1, a3, 1, v14);
    if (v6 <= a4)
    {
      return memcpy(v13, &a2[4 * v14 + -4 * v6], 4 * v6);
    }

    else
    {
      v19 = v6 - a4;
      memmove(v13, &v13[v14], v19 * 4);
      return memmove(&v13[v19], a2, v15);
    }
  }
}

void FIRFilter::Process(uint64_t a1, char *a2, float *a3, int a4, uint64_t a5)
{
  v5 = *(a5 + 12);
  if (v5 >= 97)
  {
    v14 = CAVerboseAbort();
    FIRFilter::~FIRFilter(v14);
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = a4;
    v12 = 4 * a4;
    memcpy(&v10[v5], a2, v12);
    vDSP_conv(v10, 1, *a5, 1, a3, 1, v11, v5 + 1);
    if (v5 <= a4)
    {

      memcpy(v10, &a2[4 * v11 + -4 * v5], 4 * v5);
    }

    else
    {
      v13 = v5 - a4;
      memmove(v10, &v10[v11], v13 * 4);

      memmove(&v10[v13], a2, v12);
    }
  }
}

void FIRFilter::~FIRFilter(void **this)
{
  *this = &unk_1F593A5E0;
  free(this[1]);
  free(this[2]);
  free(this[3]);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593A5E0;
  free(this[1]);
  free(this[2]);
  free(this[3]);
}

uint64_t ConvolutionKernel::ConvolutionKernel(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  (*(*a2 + 16))(a2, &v39, 2);
  v4 = bswap32(v39) >> 16;
  if (v4 >= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = v4;
  }

  *(a1 + 12) = v5;
  v40 = 0;
  (*(*a2 + 16))(a2, &v40, 4);
  *(a1 + 8) = bswap32(v40);
  v6 = malloc_type_malloc(4 * *(a1 + 12) + 4, 0x100004052888210uLL);
  if (!v6 && *(a1 + 12) != -1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v32 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = v6;
  v7 = v4 - v5;
  if (v7 >= 1)
  {
    do
    {
      v41 = 0;
      (*(*a2 + 16))(a2, &v41, 4);
      --v7;
    }

    while (v7);
  }

  v8 = *(a1 + 12);
  if (v8 < 1)
  {
    *(*a1 + 4 * v8) = *(a1 + 8);
    return a1;
  }

  for (i = 0; i < v11; ++i)
  {
    v42 = 0;
    (*(*a2 + 16))(a2, &v42, 4);
    v10 = *a1;
    *(*a1 + 4 * i) = bswap32(v42);
    v11 = *(a1 + 12);
  }

  v10->i32[v11] = *(a1 + 8);
  if (v11 >= 1)
  {
    if (v4 <= 0x20)
    {
      v12 = 5;
    }

    else
    {
      v12 = 10;
    }

    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13;
    if (v11 < 4)
    {
      v15 = 0;
LABEL_24:
      v25 = v10 + v15;
      v26 = v13 - v15;
      v27 = v15 + 1;
      v28 = 1.0 / v14;
      do
      {
        v29 = sin(v27 * 1.57079633 * v28) * *v25;
        *v25++ = v29;
        ++v27;
        --v26;
      }

      while (v26);
      return a1;
    }

    v15 = v13 & 0xC;
    v16 = xmmword_1DE096230;
    v17 = v10;
    v18 = v15;
    v33 = 1.57079633 / v14;
    do
    {
      v37 = v16;
      v19.i64[0] = 0x100000001;
      v19.i64[1] = 0x100000001;
      v20 = vaddq_s32(v16, v19);
      v21.i64[0] = v20.u32[0];
      v21.i64[1] = v20.u32[1];
      v22 = vcvtq_f64_u64(v21);
      v21.i64[0] = v20.u32[2];
      v21.i64[1] = v20.u32[3];
      v38 = vmulq_n_f64(vcvtq_f64_u64(v21), v33);
      __x = vmulq_n_f64(v22, v33);
      v35 = sin(__x.f64[1]);
      v23.f64[0] = sin(__x.f64[0]);
      v23.f64[1] = v35;
      v36 = v23;
      __x.f64[0] = sin(v38.f64[1]);
      v24.f64[0] = sin(v38.f64[0]);
      v24.f64[1] = __x.f64[0];
      *v17->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v36, vcvtq_f64_f32(*v17))), vmulq_f64(v24, vcvt_hight_f64_f32(*v17->f32)));
      v17 += 2;
      *&v24.f64[0] = 0x400000004;
      *&v24.f64[1] = 0x400000004;
      v16 = vaddq_s32(v37, v24);
      v18 -= 4;
    }

    while (v18);
    if (v15 != v13)
    {
      goto LABEL_24;
    }
  }

  return a1;
}

void ConvolutionFilter::ConvolutionFilter(ConvolutionFilter *this)
{
  *this = &unk_1F593A5E0;
  v2 = malloc_type_malloc(0x10190uLL, 0xBA76FD0FuLL);
  if (!v2 || (*(this + 1) = v2, (v3 = malloc_type_malloc(0x10190uLL, 0xF70744F6uLL)) == 0) || (*(this + 2) = v3, (v4 = malloc_type_malloc(0x10190uLL, 0x660C7EDBuLL)) == 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  *(this + 3) = v4;
  *(this + 8) = 65936;
  (*(*this + 24))(this);
}

void ConvolutionFilter::~ConvolutionFilter(void **this)
{
  *this = &unk_1F593A5E0;
  free(this[1]);
  free(this[2]);
  free(this[3]);
}

float VPFilterBank::filterbank32_compute(VPFilterBank *this, float *a2, float *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *(this + 7);
  v6 = *(this + 8);
  v8 = *(this + 13);
  MEMORY[0x1EEE9AC00](this);
  v10 = &v17 - ((v9 + 31) & 0x7FFFFFFF0);
  bzero(v10, v9 + 16);
  v11 = (v10 & 0xFFFFFFFFFFFFFFF3) + 16;
  HIDWORD(v17) = 0;
  MEMORY[0x1E12BE7F0](*(this + 3), 1, a2, 1, v11, 1, v8);
  if (*(this + 12))
  {
    v12 = 0;
    v13 = a3;
    do
    {
      vDSP_sve((v11 + 4 * *(v7 + 4 * v12)), 1, v13, *(v6 + 4 * v12));
      ++v12;
      ++v13;
    }

    while (v12 < *(this + 12));
  }

  MEMORY[0x1E12BE7F0](*(this + 4), 1, a2, 1, v11, 1, *(this + 13));
  if (*(this + 12) != 1)
  {
    v15 = 0;
    v16 = a3 + 1;
    do
    {
      vDSP_sve((v11 + 4 * *(v7 + 4 * v15)), 1, &v17 + 1, *(v6 + 4 * v15));
      result = v16[v15] + *(&v17 + 1);
      v16[v15++] = result;
    }

    while (v15 < (*(this + 12) - 1));
  }

  return result;
}

uint64_t ausdk::AUInputElement::SetStreamFormat(ausdk::AUInputElement *this, const AudioStreamBasicDescription *a2)
{
  ausdk::AUIOElement::SetStreamFormat(this, a2);
  (*(*this + 64))(this, 0);
  return 0;
}

void ausdk::AUInputElement::~AUInputElement(ausdk::AUInputElement *this)
{
  *this = &unk_1F593A728;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593A728;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);
}

uint64_t ausdk::AUInputElement::SetInputCallback(uint64_t this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a3)
{
  v3 = this;
  if (a2)
  {
    *(this + 172) = 2;
    *(this + 176) = a2;
    *(this + 184) = a3;
    v4 = *(*this + 64);

    return v4();
  }

  else
  {
    *(this + 172) = 0;
    if (*(this + 152))
    {
      this = (*(ausdk::BufferAllocator::instance(void)::global + 3))();
      *(v3 + 152) = 0;
    }

    *(v3 + 160) = 0;
    *(v3 + 144) = 0;
  }

  return this;
}

unint64_t ausdk::AUInputElement::PullInput(ausdk::AUInputElement *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(this + 43);
  if (!v5)
  {
    return 4294956420;
  }

  if (v5 != 1 && (*(this + 168) & 1) != 0)
  {
    v11 = ausdk::AUBufferList::PrepareBufferOrError((this + 144), this + 2, a5);
    if ((v12 & 1) == 0)
    {
      return v11;
    }

    goto LABEL_21;
  }

  v13 = *(this + 27);
  if ((*(this + 23) & 0x20) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(this + 27);
  }

  if ((*(this + 23) & 0x20) == 0)
  {
    v13 = 1;
  }

  if (v13 <= *(this + 40))
  {
    v18 = *(this + 19);
    v17 = (v18 + 12);
    v19 = v18[12];
    if (v18[12] <= *v18)
    {
      if (v19)
      {
        v20 = *(this + 26) * a5;
        v21 = v18 + 16;
        do
        {
          *(v21 - 2) = v14;
          *(v21 - 1) = v20;
          *v21 = 0;
          v21 += 2;
          --v19;
        }

        while (v19);
      }

      v16 = v17 & 0xFFFFFFFF00000000;
      *(this + 36) = 2;
      v17 = v17;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 4294956428;
  }

  v11 = (v17 | v16);
  if (v15)
  {
LABEL_21:
    if (*(this + 43) == 1)
    {
      v22 = AudioUnitRender(*(this + 24), a2, a3, *(this + 50), a5, v11);
    }

    else
    {
      v22 = (*(this + 22))(*(this + 23), a2, a3, a4, a5, v11);
    }

    if (*(this + 43))
    {
      return v22;
    }

    else
    {
      return 4294956420;
    }
  }

  return v11;
}

double ausdk::ComponentBase::GetComponentDescription(ausdk::ComponentBase *this, OpaqueAudioComponentInstance *a2)
{
  memset(&outDesc, 0, sizeof(outDesc));
  Component = AudioComponentInstanceGetComponent(a2);
  if (Component && !AudioComponentGetDescription(Component, &outDesc))
  {
    result = *&outDesc.componentType;
    *this = outDesc;
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 4) = 0;
  }

  return result;
}

uint64_t ausdk::ComponentBase::AP_Open(uint64_t (**this)(char *, void *), void *a2, OpaqueAudioComponentInstance *a3)
{
  {
    MEMORY[0x1E12BCCB0](&ausdk::ComponentBase::InitializationMutex(void)::global);
  }

  std::recursive_mutex::lock(&ausdk::ComponentBase::InitializationMutex(void)::global);
  v5 = this[4](this + 64, a2);
  (*(*v5 + 32))(v5);
  (*(*v5 + 16))(v5);
  std::recursive_mutex::unlock(&ausdk::ComponentBase::InitializationMutex(void)::global);
  return 0;
}

void sub_1DE07C930(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v5 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      v6 = -108;
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    case 3:
      v6 = *__cxa_begin_catch(a1);
LABEL_4:
      __cxa_end_catch();
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    default:
      v5 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        __cxa_end_catch();
        v6 = -1;
        if (!v2)
        {
          goto LABEL_15;
        }

LABEL_8:
        if (v6)
        {
          MEMORY[0x1E12BD160](v2, 0x1080C4018D86D6ALL);
        }

LABEL_15:
        JUMPOUT(0x1DE07C8F4);
      }

      break;
  }

  v6 = v5[4];
  goto LABEL_4;
}

uint64_t ausdk::ComponentBase::AP_Close(ausdk::ComponentBase *this, void *a2)
{
  v3 = this + 64;
  (*(*(this + 8) + 24))(this + 64, a2);
  (*(*v3 + 40))(v3);
  (*(this + 5))(v3);
  free(this);
  return 0;
}

uint64_t ausdk::AUOutputElement::SetStreamFormat(ausdk::AUOutputElement *this, const AudioStreamBasicDescription *a2)
{
  ausdk::AUIOElement::SetStreamFormat(this, a2);
  (*(*this + 64))(this, 0);
  return 0;
}

void ausdk::AUOutputElement::~AUOutputElement(ausdk::AUOutputElement *this)
{
  *this = &unk_1F593A728;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593A728;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);
}

ausdk::AUOutputElement *ausdk::AUOutputElement::AUOutputElement(ausdk::AUOutputElement *this, ausdk::AUBase *a2)
{
  v3 = ausdk::AUIOElement::AUIOElement(this, a2);
  *v3 = &unk_1F593A6A8;
  ausdk::AUIOElement::AllocateBuffer(v3, 0);
  return this;
}

uint64_t ausdk::AUIOElement::RemoveAudioChannelLayout(ausdk::AUIOElement *this)
{
  std::vector<AudioChannelLayout>::vector[abi:ne200100](&v5, 1uLL);
  v2 = v5;
  *v5 = 0;
  *(v2 + 2) = 0;
  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
    v2 = v5;
  }

  *(this + 15) = v2;
  *(this + 8) = v6;
  return 0;
}

uint64_t ausdk::AUIOElement::GetAudioChannelLayout(ausdk::AUIOElement *this, AudioChannelLayout *__dst, BOOL *a3)
{
  *a3 = 1;
  v3 = *(this + 15);
  if (*v3 == 0x10000)
  {
    v5 = vcnt_s8(v3[1]);
    v5.i16[0] = vaddlv_u8(v5);
    v4 = v5.i32[0];
  }

  else if (*v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = v3[2];
  }

  if (!v4)
  {
    return 0;
  }

  v6 = v3[2];
  v7 = (20 * v6 + 12);
  if (__dst && 20 * v6 != -12)
  {
    memcpy(__dst, v3, (20 * v6 + 12));
  }

  return v7;
}

uint64_t ausdk::AUIOElement::SetAudioChannelLayout(ausdk::AUIOElement *this, const AudioChannelLayout *a2)
{
  if (a2->mChannelLayoutTag == 0x10000)
  {
    v5 = vcnt_s8(a2->mChannelBitmap);
    v5.i16[0] = vaddlv_u8(v5);
    mChannelLayoutTag = v5.i32[0];
  }

  else if (a2->mChannelLayoutTag)
  {
    mChannelLayoutTag = a2->mChannelLayoutTag;
  }

  else
  {
    mChannelLayoutTag = a2->mNumberChannelDescriptions;
  }

  if (*(this + 27) != mChannelLayoutTag)
  {
    return 4294956445;
  }

  v6 = 20 * a2->mNumberChannelDescriptions + 12;
  v7 = (v6 & 0x1C) == 0;
  v8 = v6 >> 5;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  std::vector<AudioChannelLayout>::vector[abi:ne200100](__dst, v9);
  memcpy(__dst[0], a2, 20 * a2->mNumberChannelDescriptions + 12);
  v10 = *(this + 15);
  if (v10)
  {
    *(this + 16) = v10;
    operator delete(v10);
  }

  result = 0;
  *(this + 120) = *__dst;
  *(this + 17) = v13;
  return result;
}

void ausdk::AUIOElement::GetChannelLayoutTags(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t ausdk::AUIOElement::AllocateBuffer(uint64_t this, int a2)
{
  v3 = *(this + 8);
  if (*(v3 + 18) == 1)
  {
    v4 = a2;
    v5 = this;
    if (!a2)
    {
      v4 = *(v3 + 336);
    }

    if (*(this + 168) == 1)
    {
      if ((*(*this + 72))(this))
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    return ausdk::AUBufferList::Allocate(&v5[3].mBytesPerFrame, v5 + 2, v6);
  }

  return this;
}

uint64_t ausdk::AUIOElement::SetStreamFormat(ausdk::AUIOElement *this, const AudioStreamBasicDescription *a2)
{
  v2 = *&a2->mSampleRate;
  v3 = *&a2->mBytesPerPacket;
  *(this + 14) = *&a2->mBitsPerChannel;
  *(this + 5) = v2;
  *(this + 6) = v3;
  v4 = *(this + 15);
  v5 = *v4;
  if (*v4 == 0x10000)
  {
    v6 = vcnt_s8(v4[1]);
    v6.i16[0] = vaddlv_u8(v6);
    if (!v6.i32[0])
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (!*v4)
    {
      return 0;
    }
  }

  else if (!v4[2])
  {
    return 0;
  }

  if (v5 == 0x10000)
  {
    v8 = vcnt_s8(v4[1]);
    v8.i16[0] = vaddlv_u8(v8);
    v7 = v8.i32[0];
  }

  else if (v5)
  {
    v7 = *v4;
  }

  else
  {
    v7 = v4[2];
  }

  if (*(this + 27) != v7)
  {
    (*(*this + 104))(this);
  }

  return 0;
}

void ausdk::AUElement::UseIndexedParameters(ausdk::AUElement *this, unsigned int a2)
{
  v3 = a2;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = (v5 - v4) >> 2;
  if (a2 > v6)
  {
    v7 = a2 - v6;
    v8 = *(this + 8);
    if (v7 > (v8 - v5) >> 2)
    {
      v9 = v8 - v4;
      if (v9 >> 1 > a2)
      {
        v3 = v9 >> 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v3;
      }

      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 7), 4 * v7);
    v11 = v5 + 4 * v7;
    goto LABEL_13;
  }

  if (a2 < v6)
  {
    v11 = v4 + 4 * a2;
LABEL_13:
    *(this + 7) = v11;
  }

  *(this + 40) = 1;
}

uint64_t ausdk::AUElement::SetScheduledEvent(ausdk::AUElement *this, unsigned int a2, const AudioUnitParameterEvent *a3, unsigned int a4, unsigned int a5, char a6)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3->eventType == kParameterEvent_Immediate)
  {
    *v10 = 0;
    ausdk::AUElement::SetParameterOrError(v10, this, a3->eventValues.immediate.value, a2, a6);
    if (v10[4])
    {
      return 0;
    }

    else
    {
      return *v10;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 1);
      v9 = (v8 + 440);
      if (*(v8 + 463) < 0)
      {
        v9 = *v9;
      }

      *v10 = 136315138;
      *&v10[4] = v9;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Warning: %s was passed a ramped parameter event but does not implement them. Ignoring.", v10, 0xCu);
    }

    return 4294967294;
  }
}

void ausdk::AUElement::SetParameterOrError(ausdk::AUElement *this, uint64_t a2, float a3, unsigned int a4, char a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 40) == 1)
  {
    v7 = *(a2 + 48);
    if (a4 < ((*(a2 + 56) - v7) >> 2))
    {
      v8 = (v7 + 4 * a4);
      goto LABEL_30;
    }
  }

  else
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    if (v9 != v10)
    {
      v11 = (v9 - v10) >> 3;
      v12 = *(a2 + 16);
      do
      {
        v13 = v11 >> 1;
        v14 = &v12[2 * (v11 >> 1)];
        v16 = *v14;
        v15 = v14 + 2;
        v11 += ~(v11 >> 1);
        if (v16 < a4)
        {
          v12 = v15;
        }

        else
        {
          v11 = v13;
        }
      }

      while (v11);
      if (v12 != v9)
      {
        if (*v12 != a4)
        {
          v12 = *(a2 + 24);
        }

        if (v9 != v12)
        {
          v8 = v12 + 1;
          goto LABEL_30;
        }
      }
    }

    v17 = *(a2 + 8);
    if (*(v17 + 17) != 1 || (a5 & 1) != 0)
    {
      v19 = v9 - v10;
      if (v9 == v10)
      {
        v21 = *(a2 + 24);
      }

      else
      {
        v20 = v19 >> 3;
        v21 = *(a2 + 16);
        do
        {
          v22 = v20 >> 1;
          v23 = &v21[8 * (v20 >> 1)];
          v25 = *v23;
          v24 = v23 + 8;
          v20 += ~(v20 >> 1);
          if (v25 < a4)
          {
            v21 = v24;
          }

          else
          {
            v20 = v22;
          }
        }

        while (v20);
      }

      if (v9 == v21 || *v21 != a4)
      {
        v26 = *(a2 + 32);
        if (v9 >= v26)
        {
          v30 = (v19 >> 3) + 1;
          if (v30 >> 61)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v31 = v21 - v10;
          v32 = v26 - v10;
          v33 = (v26 - v10) >> 2;
          if (v33 > v30)
          {
            v30 = v33;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v30;
          }

          v35 = v31 >> 3;
          if (v34)
          {
            std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v34);
          }

          v36 = 8 * v35;
          if (!v35)
          {
            if (v31 < 1)
            {
              if (v21 == v10)
              {
                v42 = 1;
              }

              else
              {
                v42 = v31 >> 2;
              }

              std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v42);
            }

            v36 -= ((v31 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
          }

          *v36 = a4;
          *(v36 + 4) = a3;
          v43 = *(a2 + 24);
          v44 = v21;
          if (v43 != v21)
          {
            v45 = v21;
            v46 = (v36 + 8);
            do
            {
              v47 = (v45 + 4);
              v48 = *v45;
              v45 += 8;
              *v46 = v48;
              LODWORD(v47) = atomic_load(v47);
              v46[1] = v47;
              v46 += 2;
            }

            while (v45 != v43);
            v44 = *(a2 + 24);
          }

          v49 = v36 + 8 + v44 - v21;
          *(a2 + 24) = v21;
          v50 = *(a2 + 16);
          v51 = v36 + v50 - v21;
          if (v50 != v21)
          {
            v52 = (v36 + v50 - v21);
            do
            {
              v53 = (v50 + 4);
              v54 = *v50;
              v50 += 8;
              *v52 = v54;
              LODWORD(v53) = atomic_load(v53);
              v52[1] = v53;
              v52 += 2;
            }

            while (v50 != v21);
            v50 = *(a2 + 16);
          }

          *(a2 + 16) = v51;
          *(a2 + 24) = v49;
          *(a2 + 32) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          v27 = &v21[-v9];
          if (v21 == v9)
          {
            *v9 = a4;
            *(v9 + 4) = a3;
            *(a2 + 24) = v9 + 8;
          }

          else
          {
            if (v9 < 8)
            {
              v28 = *(a2 + 24);
            }

            else
            {
              v28 = v9 + 8;
              *v9 = *(v9 - 8);
              v29 = atomic_load((v9 - 4));
              *(v9 + 4) = v29;
            }

            *(a2 + 24) = v28;
            if (v9 != v21 + 8)
            {
              v37 = (v9 - 16);
              v38 = (v9 - 4);
              v39 = v27 + 8;
              do
              {
                v40 = v37 + 1;
                v41 = *v37;
                v37 -= 2;
                *(v38 - 1) = v41;
                LODWORD(v40) = atomic_load(v40);
                atomic_store(v40, v38);
                v38 -= 2;
                v39 += 8;
              }

              while (v39);
            }

            *v21 = a4;
            atomic_store(LODWORD(a3), v21 + 1);
          }
        }

        goto LABEL_31;
      }

      v8 = (v21 + 4);
LABEL_30:
      atomic_store(LODWORD(a3), v8);
LABEL_31:
      v18 = 1;
      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = (v17 + 440);
      if (*(v17 + 463) < 0)
      {
        v55 = *v55;
      }

      v56 = 136315394;
      v57 = v55;
      v58 = 1024;
      v59 = a4;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Warning: %s SetParameter for undefined param ID %u while initialized. Ignoring.", &v56, 0x12u);
    }
  }

  v18 = 0;
  *this = -10878;
LABEL_32:
  *(this + 4) = v18;
}

void sub_1DE07D658(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUElement::GetParameterList(uint64_t this, unsigned int *a2)
{
  if (*(this + 40) == 1)
  {
    v2 = *(this + 56) - *(this + 48);
    if (v2)
    {
      v3 = 0;
      v4 = (v2 - 4) >> 2;
      v5 = vdupq_n_s64(v4);
      v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v7 = a2 + 2;
      do
      {
        v8 = vdupq_n_s64(v3);
        v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE095160)));
        if (vuzp1_s16(v9, *v5.i8).u8[0])
        {
          *(v7 - 2) = v3;
        }

        if (vuzp1_s16(v9, *&v5).i8[2])
        {
          *(v7 - 1) = v3 + 1;
        }

        if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE095150)))).i32[1])
        {
          *v7 = v3 + 2;
          v7[1] = v3 + 3;
        }

        v3 += 4;
        v7 += 4;
      }

      while (v6 != v3);
    }
  }

  else
  {
    v10 = *(this + 16);
    v11 = *(this + 24);
    while (v10 != v11)
    {
      v12 = *v10;
      v10 += 2;
      *a2++ = v12;
    }
  }

  return this;
}

char *ausdk::flat_map<unsigned int,ausdk::AtomicValue<float>>::find(char *a1, char *a2, unsigned int a3)
{
  if (a2 != a1)
  {
    v3 = (a2 - a1) >> 3;
    do
    {
      v4 = v3 >> 1;
      v5 = &a1[8 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 8;
      v3 += ~(v3 >> 1);
      if (v7 < a3)
      {
        a1 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
    if (a1 != a2 && *a1 == a3)
    {
      return a1;
    }
  }

  return a2;
}

char *ausdk::AUElement::GetParameterOrError(char *this, uint64_t a2, unsigned int a3)
{
  v3 = this;
  if (*(a2 + 40) != 1)
  {
    v6 = *(a2 + 24);
    this = ausdk::flat_map<unsigned int,ausdk::AtomicValue<float>>::find(*(a2 + 16), v6, a3);
    if (v6 != this)
    {
      v5 = (this + 4);
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    explicit = -10878;
    goto LABEL_8;
  }

  v4 = *(a2 + 48);
  if (a3 >= ((*(a2 + 56) - v4) >> 2))
  {
    goto LABEL_7;
  }

  v5 = (v4 + 4 * a3);
LABEL_6:
  explicit = atomic_load_explicit(v5, memory_order_acquire);
  v8 = 1;
LABEL_8:
  *v3 = explicit;
  *(v3 + 4) = v8;
  return this;
}

void ausdk::AUElement::SaveState(unsigned int,__CFData *)::$_0::operator()(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a2;
  if ((*(**(*a1 + 8) + 256))(*(*a1 + 8), **(a1 + 8), a2, *(a1 + 16)))
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 16);
  if ((*(v8 + 96) & 0x10) != 0)
  {
    v9 = *(v8 + 72);
    if (v9)
    {
      CFRelease(v9);
      v8 = *(a1 + 16);
    }

    if (*(v8 + 80) == 26)
    {
      v10 = *(v8 + 56);
      if (v10)
      {
        CFRelease(v10);
        v8 = *(a1 + 16);
      }
    }
  }

  if ((*(v8 + 97) & 0xA0) == 0)
  {
LABEL_2:
    v6 = **(a1 + 24);
    *bytes = bswap32(v4);
    CFDataAppendBytes(v6, bytes, 4);
    v7 = **(a1 + 24);
    *v11 = bswap32(LODWORD(a3));
    CFDataAppendBytes(v7, v11, 4);
    ++**(a1 + 32);
  }
}

ausdk::AUIOElement *ausdk::AUIOElement::AUIOElement(ausdk::AUIOElement *this, ausdk::AUBase *a2)
{
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = &unk_1F593A728;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  std::vector<AudioChannelLayout>::vector[abi:ne200100](this + 15, 1uLL);
  v3 = *(this + 15);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 168) = 1;
  *(this + 10) = 0x40E5888000000000;
  *(this + 88) = xmmword_1DE09BD50;
  *(this + 104) = xmmword_1DE09C4E0;
  return this;
}

uint64_t ausdk::AUScope::SetNumberOfElements(ausdk::AUScope *this, unsigned int a2)
{
  result = *(this + 5);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  else
  {
    v5 = a2;
    v6 = *(this + 2);
    v7 = *(this + 3);
    v8 = (this + 16);
    v9 = (v7 - v6) >> 3;
    if (v9 >= a2)
    {
      if (v9 > a2)
      {
        v23 = (v7 - 8);
        v24 = v7 - 8;
        do
        {
          result = *v23;
          *v23 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
            v6 = *v8;
          }

          *(this + 3) = v23;
          v25 = v24 - v6;
          v24 -= 8;
          --v23;
        }

        while (v5 < v25 >> 3);
      }
    }

    else
    {
      if (a2 > ((*(this + 4) - v6) >> 3))
      {
        v28 = this + 16;
        std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](a2);
      }

      if (v9 < a2)
      {
        do
        {
          v26 = 0;
          (*(**this + 416))(&v26);
          v11 = *(this + 3);
          v10 = *(this + 4);
          if (v11 >= v10)
          {
            v14 = *v8;
            v15 = v11 - *v8;
            v16 = v15 >> 3;
            v17 = (v15 >> 3) + 1;
            if (v17 >> 61)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v18 = v10 - v14;
            if (v18 >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            v28 = this + 16;
            if (v19)
            {
              std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v19);
            }

            v20 = v26;
            v26 = 0;
            *(8 * v16) = v20;
            v13 = 8 * v16 + 8;
            memcpy(0, v14, v15);
            v21 = *(this + 2);
            *(this + 2) = 0;
            *(this + 3) = v13;
            v22 = *(this + 4);
            *(this + 4) = 0;
            v27[2] = v21;
            v27[3] = v22;
            v27[0] = v21;
            v27[1] = v21;
            std::__split_buffer<std::unique_ptr<ausdk::AUElement>>::~__split_buffer(v27);
          }

          else
          {
            v12 = v26;
            v26 = 0;
            *v11 = v12;
            v13 = (v11 + 1);
          }

          *(this + 3) = v13;
          result = v26;
          v26 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
            v13 = *(this + 3);
          }
        }

        while ((v13 - *v8) >> 3 < v5);
      }
    }
  }

  return result;
}

void sub_1DE07DCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::unique_ptr<ausdk::AUElement>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL ausdk::AUScope::HasElementWithName(ausdk::AUScope *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *(this + 5);
    if (v3)
    {
      LODWORD(v4) = (*(*v3 + 24))(v3);
    }

    else
    {
      v4 = (*(this + 3) - *(this + 2)) >> 3;
    }

    if (i >= v4)
    {
      break;
    }

    v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this, i);
    if (v6)
    {
      if (*(v5 + 72))
      {
        break;
      }
    }
  }

  return i < v4;
}

void ausdk::Owned<__CFDictionary *>::releaseRef(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void ausdk::AUScope::RestoreElementNames(ausdk::AUScope *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  v4 = a2;
  v33 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v6 = *(a2 + 5);
  if (v6)
  {
    LODWORD(v7) = (*(*v6 + 24))(v6);
  }

  else
  {
    v7 = (*(a2 + 3) - *(a2 + 2)) >> 3;
  }

  Count = CFDictionaryGetCount(a3);
  keys = 0;
  v29 = 0;
  v30 = 0;
  std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count & ~(Count >> 63));
  CFDictionaryGetKeysAndValues(a3, keys, 0);
  if (Count >= 1)
  {
    v9 = 0;
    v26 = v4;
    do
    {
      v27 = 0;
      *buffer = 0u;
      v32 = 0u;
      CFStringGetCString(keys[v9], buffer, 32, 0x600u);
      if (sscanf(buffer, "%u", &v27))
      {
        if (v27 < v7)
        {
          Value = CFDictionaryGetValue(a3, keys[v9]);
          v11 = Value;
          if (Value)
          {
            v12 = CFGetTypeID(Value);
            if (v12 == CFStringGetTypeID())
            {
              v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v4, v27);
              if (v14)
              {
                ausdk::Owned<__CFString const*>::operator=((v13 + 72), v11);
                v16 = *(this + 1);
                v15 = *(this + 2);
                if (v16 >= v15)
                {
                  v18 = *this;
                  v19 = v16 - *this;
                  v20 = v19 >> 2;
                  v21 = (v19 >> 2) + 1;
                  if (v21 >> 62)
                  {
                    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                  }

                  v22 = v15 - v18;
                  if (v22 >> 1 > v21)
                  {
                    v21 = v22 >> 1;
                  }

                  v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
                  v24 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v23)
                  {
                    v24 = v21;
                  }

                  if (v24)
                  {
                    std::allocator<float>::allocate_at_least[abi:ne200100](this, v24);
                  }

                  *(4 * v20) = v27;
                  v17 = 4 * v20 + 4;
                  memcpy(0, v18, v19);
                  v25 = *this;
                  *this = 0;
                  *(this + 1) = v17;
                  *(this + 2) = 0;
                  if (v25)
                  {
                    operator delete(v25);
                  }

                  v4 = v26;
                }

                else
                {
                  *v16 = v27;
                  v17 = (v16 + 1);
                }

                *(this + 1) = v17;
              }
            }
          }
        }
      }

      ++v9;
    }

    while (Count != v9);
  }

  if (keys)
  {
    v29 = keys;
    operator delete(keys);
  }
}

void sub_1DE07E0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUScope::SaveState(ausdk::AUScope *this, __CFData *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  result = *(this + 5);
  if (result)
  {
    result = (*(*result + 24))(result);
    LODWORD(v5) = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = (*(this + 3) - *(this + 2)) >> 3;
    if (!v5)
    {
      return result;
    }
  }

  v6 = 0;
  do
  {
    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this, v6);
    if (v7)
    {
      v8 = result;
      result = (*(*result + 16))(result);
      if (result)
      {
        *bytes = bswap32(*(this + 2));
        CFDataAppendBytes(a2, bytes, 4);
        *bytes = bswap32(v6);
        CFDataAppendBytes(a2, bytes, 4);
        v23 = *(this + 2);
        theData = a2;
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        *bytes = 0u;
        v25 = 0u;
        Length = CFDataGetLength(a2);
        v21 = 0;
        v20[0] = v8;
        v20[1] = &v23;
        v20[2] = bytes;
        v20[3] = &theData;
        v20[4] = &v21;
        *v19 = 0;
        CFDataAppendBytes(a2, v19, 4);
        if (*(v8 + 40) == 1)
        {
          v10 = *(v8 + 56) - *(v8 + 48);
          if ((v10 & 0x3FFFFFFFCLL) != 0)
          {
            v11 = 0;
            v12 = (v10 >> 2);
            do
            {
              v13 = COERCE_FLOAT(atomic_load((*(v8 + 48) + 4 * v11)));
              ausdk::AUElement::SaveState(unsigned int,__CFData *)::$_0::operator()(v20, v11++, v13);
            }

            while (v12 != v11);
          }
        }

        else
        {
          v16 = *(v8 + 16);
          v15 = *(v8 + 24);
          while (v16 != v15)
          {
            v17 = *v16;
            v18 = COERCE_FLOAT(atomic_load(v16 + 1));
            ausdk::AUElement::SaveState(unsigned int,__CFData *)::$_0::operator()(v20, v17, v18);
            v16 += 2;
          }
        }

        v14 = v21;
        result = CFDataGetMutableBytePtr(theData);
        *(result + Length) = bswap32(v14);
      }
    }

    ++v6;
  }

  while (v6 != v5);
  return result;
}

const unsigned __int8 *ausdk::AUScope::RestoreState(ausdk::AUScope *this, const unsigned __int8 *a2)
{
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this, bswap32(*a2));
  if ((v4 & 1) == 0)
  {
    return &a2[8 * bswap32(*(a2 + 1)) + 8];
  }

  v5 = *(a2 + 1);
  v6 = (a2 + 8);
  if (v5)
  {
    v7 = v3;
    v8 = bswap32(v5);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = *v6;
      v11 = v6[1];
      v6 += 2;
      ausdk::AUElement::SetParameterOrError(v13, v7, COERCE_FLOAT(bswap32(v11)), bswap32(v10), 0);
      --v9;
    }

    while (v9);
  }

  return v6;
}

uint64_t ausdk::AUEffectBase::ProcessScheduledSlice(ausdk::AUEffectBase *this, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v5 = *a2;
  v7 = a2[1];
  v6 = a2[2];
  v8 = *(this + 147) * a4;
  v9 = *v7;
  if (v9)
  {
    v10 = v7 + 3;
    do
    {
      *v10 = *(v10 - 1) * v8;
      v10 += 4;
      --v9;
    }

    while (v9);
  }

  v11 = *v6;
  if (v11)
  {
    v12 = v6 + 3;
    do
    {
      *v12 = *(v12 - 1) * v8;
      v12 += 4;
      --v11;
    }

    while (v11);
  }

  result = (*(*this + 176))(this, v5, v7, v6, a4);
  v14 = *v7;
  if (v14)
  {
    v15 = v7 + 4;
    do
    {
      *v15 += (*(v15 - 2) * v8);
      v15 += 2;
      --v14;
    }

    while (v14);
  }

  v16 = *v6;
  if (v16)
  {
    v17 = v6 + 4;
    do
    {
      *v17 += (*(v17 - 2) * v8);
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t ausdk::AUEffectBase::ChangeStreamFormat(ausdk::AUEffectBase *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (*(this + 553) == 1 && a4->mSampleRate != a5->mSampleRate)
  {
    (*(*this + 432))(this, 3, 0, 0, a4->mSampleRate);
  }

  return 0;
}

unint64_t ausdk::AUEffectBase::Render(ausdk::AUEffectBase *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v5 = *(this + 72);
  if (!*(v5 + 43))
  {
    return 4294956420;
  }

  v8 = ausdk::AUInputElement::PullInput(v5, a2, a3, 0, a4);
  if (!v8)
  {
    v9 = *(this + 72);
    if (!*(v9 + 144))
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(this + 71);
    if (!*(v10 + 144))
    {
      return 0xFFFFFFFFLL;
    }

    v11 = *(v9 + 152);
    v12 = (v11 + 48);
    v13 = *(v10 + 152);
    v14 = (v13 + 48);
    if (*(this + 554) == 1 && *(v10 + 168) == 1)
    {
      v15 = *v12;
      if (*(v10 + 160) < v15)
      {
        return 0xFFFFFFFFLL;
      }

      *(v10 + 144) = 2;
      memcpy((v13 + 48), (v11 + 48), 16 * v15 + 8);
    }

    if ((*(*this + 592))(this))
    {
      if (*(this + 554))
      {
        v8 = 0;
      }

      else
      {
        v26[0] = 0;
        ausdk::AUBufferList::CopyBufferContentsToOrError(v26, (*(this + 72) + 144), (v13 + 48));
        if (BYTE4(v26[0]))
        {
          v8 = 0;
        }

        else
        {
          v8 = LODWORD(v26[0]);
        }
      }
    }

    else if (*(this + 48) == *(this + 49))
    {
      v8 = (*(*this + 176))(this, a2, v11 + 48, v13 + 48, a4);
    }

    else
    {
      v26[0] = a2;
      v26[1] = v11 + 48;
      v26[2] = v13 + 48;
      v8 = (*(*this + 560))(this, this + 384, a4, v26);
      v17 = *(this + 147) * a4;
      v18 = *v12;
      if (v18)
      {
        v19 = (v11 + 64);
        do
        {
          v20 = (*(v19 - 2) * v17);
          *v19 -= v20;
          *(v19 - 1) = v20;
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      v21 = *v14;
      if (v21)
      {
        v22 = (v13 + 64);
        do
        {
          v23 = (*(v22 - 2) * v17);
          *v22 -= v23;
          *(v22 - 1) = v23;
          v22 += 2;
          --v21;
        }

        while (v21);
      }
    }

    if ((*a2 & 0x10) != 0 && (*(this + 554) & 1) == 0 && *v14)
    {
      v24 = 0;
      v25 = (v13 + 64);
      do
      {
        bzero(*v25, *(v25 - 1));
        ++v24;
        v25 += 2;
      }

      while (v24 < *v14);
    }
  }

  return v8;
}

uint64_t ausdk::AUEffectBase::ProcessBufferLists(ausdk::AUEffectBase *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  if (((*(*this + 592))(this) & 1) == 0)
  {
    IsInputSilent = ausdk::AUEffectBase::IsInputSilent(this, *a2, a5);
    *a2 |= 0x10u;
    v11 = *(this + 67);
    v12 = *(this + 66);
    if (v11 != v12)
    {
      v13 = IsInputSilent;
      v14 = 0;
      mBuffers = a3->mBuffers;
      v16 = a4->mBuffers;
      v17 = 1;
      do
      {
        v18 = *(v12 + 8 * v14);
        if (v18)
        {
          v20 = v13;
          (*(*v18 + 24))(v18, mBuffers[v14].mData, v16[v14].mData, a5, &v20);
          if ((v20 & 1) == 0)
          {
            *a2 &= ~0x10u;
          }

          v11 = *(this + 67);
          v12 = *(this + 66);
        }

        v14 = v17++;
      }

      while (v14 < (v11 - v12) >> 3);
    }
  }

  return 0;
}

uint64_t ausdk::AUEffectBase::SetProperty(ausdk::AUEffectBase *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 29)
  {
    result = 0;
    *(this + 554) = *a5 != 0;
  }

  else if (a2 == 21)
  {
    if (a6 < 4)
    {
      return 4294956445;
    }

    else
    {
      v8 = *a5;
      if ((*a5 != 0) != *(this + 552))
      {
        if (!v8 && *(this + 552) && *(this + 17) == 1)
        {
          (*(*this + 72))(this, 0, 0);
        }

        (*(*this + 584))(this, v8 != 0);
      }

      return 0;
    }
  }

  else
  {
    return 4294956417;
  }

  return result;
}

uint64_t ausdk::AUEffectBase::GetProperty(ausdk::AUEffectBase *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 552;
    goto LABEL_7;
  }

  if (a2 == 29)
  {
    v6 = 554;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t ausdk::AUEffectBase::GetPropertyInfo(ausdk::AUEffectBase *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || (a2 | 8) != 0x1D)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t ausdk::AUEffectBase::Reset(ausdk::AUEffectBase *this)
{
  v1 = *(this + 66);
  v2 = *(this + 67);
  while (v1 != v2)
  {
    if (*v1)
    {
      (*(**v1 + 16))(*v1);
    }

    ++v1;
  }

  return 0;
}

double ausdk::AUEffectBase::Cleanup(ausdk::AUEffectBase *this)
{
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  result = 0.0;
  *(this + 568) = 0u;
  return result;
}

uint64_t ausdk::AUEffectBase::Initialize(ausdk::AUEffectBase *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_83;
  }

  v4 = v2;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_83;
  }

  v7 = v5;
  v8 = *(v4 + 108);
  v9 = *(v5 + 108);
  v56 = 0;
  v10 = (*(*this + 376))(this, &v56);
  if (v10)
  {
    v11 = v56 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (v9 << 16 == v8 << 16 && v9 << 16 != 0)
    {
      goto LABEL_12;
    }

    return 4294956428;
  }

  v14 = 0;
  do
  {
    while (1)
    {
      v15 = (v56 + 4 * v14);
      v16 = *v15;
      v17 = v15[1];
      if ((v16 & 0x80000000) == 0 || (v17 & 0x80000000) == 0)
      {
        break;
      }

      if (v16 == -1 && v17 == -2)
      {
        goto LABEL_12;
      }

      v19 = (v16 & v17) == 0xFFFFFFFF && (v9 ^ v8) == 0;
      v20 = v19;
      v21 = v17 == -1 && v16 == -2;
      if (v21 || v20)
      {
        goto LABEL_12;
      }

LABEL_46:
      if (++v14 >= v10)
      {
        return 4294956428;
      }
    }

    if (v16 != -1 && v8 != v16)
    {
      goto LABEL_46;
    }

    v24 = v17 == -1 || v9 == v17;
    ++v14;
  }

  while (v14 < v10 && !v24);
  if (!v24)
  {
    return 4294956428;
  }

LABEL_12:
  if (*(this + 584))
  {
    v13 = 1;
    goto LABEL_50;
  }

  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
  if ((v27 & 1) == 0)
  {
LABEL_83:
    abort();
  }

  v13 = *(v26 + 108);
LABEL_50:
  v28 = *(this + 67);
  v29 = *(this + 66);
  v30 = v28 - v29;
  v31 = (v28 - v29) >> 3;
  v32 = (this + 528);
  v33 = v13;
  if (v31 >= v13)
  {
    if (v31 > v13)
    {
      v49 = (v28 - 8);
      v50 = v28 - 8;
      do
      {
        v51 = *v49;
        *v49 = 0;
        if (v51)
        {
          (*(*v51 + 8))(v51);
          v29 = *v32;
        }

        *(this + 67) = v49;
        v52 = v50 - v29;
        v50 -= 8;
        --v49;
      }

      while (v33 < v52 >> 3);
    }
  }

  else
  {
    if (v13 > ((*(this + 68) - v29) >> 3))
    {
      v59 = this + 528;
      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v13);
    }

    if (v13 > (v30 >> 3))
    {
      v34 = v13 - (v30 >> 3);
      do
      {
        (*(*this + 576))(&v57, this);
        v35 = *(this + 67);
        v36 = *(this + 68);
        if (v35 >= v36)
        {
          v39 = *v32;
          v40 = v35 - *v32;
          v41 = v40 >> 3;
          v42 = (v40 >> 3) + 1;
          if (v42 >> 61)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v43 = v36 - v39;
          if (v43 >> 2 > v42)
          {
            v42 = v43 >> 2;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF8)
          {
            v44 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v42;
          }

          v59 = this + 528;
          if (v44)
          {
            std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v44);
          }

          v45 = v57;
          v57 = 0;
          *(8 * v41) = v45;
          v38 = 8 * v41 + 8;
          memcpy(0, v39, v40);
          v46 = *(this + 66);
          *(this + 66) = 0;
          *(this + 67) = v38;
          v47 = *(this + 68);
          *(this + 68) = 0;
          v58[2] = v46;
          v58[3] = v47;
          v58[0] = v46;
          v58[1] = v46;
          std::__split_buffer<std::unique_ptr<ausdk::AUKernelBase>>::~__split_buffer(v58);
        }

        else
        {
          v37 = v57;
          v57 = 0;
          *v35 = v37;
          v38 = (v35 + 8);
        }

        *(this + 67) = v38;
        v48 = v57;
        v57 = 0;
        if (v48)
        {
          (*(*v48 + 8))(v48);
        }

        --v34;
      }

      while (v34);
    }
  }

  if (v33)
  {
    v53 = 0;
    v54 = *v32;
    do
    {
      v55 = v54[v53];
      if (v55)
      {
        *(v55 + 16) = v53;
      }

      ++v53;
    }

    while (v33 != v53);
  }

  result = 0;
  *(this + 71) = v7;
  *(this + 72) = v4;
  *(this + 147) = *(v7 + 104);
  return result;
}

void sub_1DE07EF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::unique_ptr<ausdk::AUKernelBase>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ausdk::AUMethodRemovePropertyListenerWithUserData(ausdk *this, void *a2, uint64_t a3, void (*a4)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a5)
{
  v9 = *(this + 67);
  if (v9)
  {
    (*(*v9 + 16))(*(this + 67), a2, a3, a4, a5);
  }

  v10 = (*(*(this + 8) + 120))(this + 64, a2, a3, a4, 1);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  return v10;
}

void sub_1DE07F20C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE07F1F4);
}

uint64_t ausdk::AUMethodScheduleParameters(ausdk *this, char *a2, const AudioUnitParameterEvent *a3)
{
  if (!a2 || !a3)
  {
    return (*(*(this + 8) + 168))();
  }

  v3 = a3;
  for (i = (a2 + 28); ; i += 8)
  {
    v5 = *(i - 4);
    if (v5 == 2)
    {
      break;
    }

    if (v5 == 1)
    {
      v6 = *(i - 2);
      goto LABEL_9;
    }

LABEL_10:
    if (!--v3)
    {
      return (*(*(this + 8) + 168))();
    }
  }

  if ((*(i - 1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 4294900553;
  }

  v6 = *i;
LABEL_9:
  if ((v6 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    goto LABEL_10;
  }

  return 4294900553;
}

uint64_t ausdk::AUMethodRemoveRenderNotify(ausdk *this, void *a2, int (*a3)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a4)
{
  v7 = *(this + 67);
  if (v7)
  {
    (*(*v7 + 16))(*(this + 67), a2, a3, a4);
  }

  v8 = (*(*(this + 8) + 136))(this + 64, a2, a3, a4);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  return v8;
}

void sub_1DE07F47C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE07F468);
}

uint64_t ausdk::AUMethodAddRenderNotify(ausdk *this, void *a2, int (*a3)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a4)
{
  v7 = *(this + 67);
  if (v7)
  {
    (*(*v7 + 16))(*(this + 67), a2, a3, a4);
  }

  v8 = (*(*(this + 8) + 128))(this + 64, a2, a3, a4);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  return v8;
}

void sub_1DE07F5E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE07F5CCLL);
}

uint64_t ausdk::AUMethodRender(ausdk *this, int *a2, unsigned int *a3, const AudioTimeStamp *a4, uint64_t a5, unsigned int *a6, AudioBufferList *a7)
{
  v83 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v7 = 4294967246;
  if (!a3 || !a6)
  {
    return v7;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = &v75;
  }

  v11 = this + 64;
  if (*(this + 81))
  {
    v13 = *(this + 100);
    if (v13 < a5)
    {
      v14 = mach_absolute_time();
      if (*(this + 51) < (v14 - *(this + 52)))
      {
        *(this + 52) = v14;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v63 = *(this + 100);
          *buf = 67109376;
          *v77 = a5;
          *&v77[4] = 1024;
          *&v77[6] = v63;
          _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "kAudioUnitErr_TooManyFramesToProcess : inFramesToProcess=%u, mMaxFramesPerSlice=%u", buf, 0xEu);
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v61 = (this + 504);
        if (*(this + 527) < 0)
        {
          v61 = *v61;
        }

        *buf = 136315394;
        *v77 = v61;
        *&v77[8] = 1024;
        *v78 = -10874;
        _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
      }

      v7 = 4294956422;
      if (!*(this + 101))
      {
        *(this + 101) = -10874;
        (*(*(this + 8) + 432))(v11, 22, 0, 0);
      }

      return v7;
    }

    if (v13 != a5 && (*(this + 440) & 1) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = (this + 504);
        if (*(this + 527) < 0)
        {
          v62 = *v62;
        }

        *buf = 136315394;
        *v77 = v62;
        *&v77[8] = 1024;
        *v78 = -50;
        _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
      }

      v7 = 4294967246;
      if (*(this + 101))
      {
        return v7;
      }

LABEL_21:
      *(this + 101) = -50;
      (*(*(this + 8) + 432))(v11, 22, 0, 0);
      return v7;
    }

    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 192, a4);
    if ((v18 & 1) == 0)
    {
      return v17;
    }

    if ((*(v17 + 92) & 0x20) != 0)
    {
      v19 = *(v17 + 108);
    }

    else
    {
      v19 = 1;
    }

    v20 = *a6;
    if (v19 == *a6)
    {
      v73 = v11;
      v74 = v17;
      if (v19)
      {
        v21 = 0;
        v22 = *(v17 + 104);
        v23 = v22 * a5;
        v24 = a6 + 3;
        do
        {
          if (*(v24 + 1))
          {
            v25 = *v24;
            if (*v24 < v23)
            {
              v60 = v22;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 67110144;
                *v77 = a5;
                *&v77[4] = 1024;
                *&v77[6] = v60;
                *v78 = 1024;
                *&v78[2] = v23;
                v79 = 1024;
                v80 = v21;
                v81 = 1024;
                v82 = v25;
                _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioData.mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x20u);
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v72 = (this + 504);
                if (*(this + 527) < 0)
                {
                  v72 = *v72;
                }

                *buf = 136315394;
                *v77 = v72;
                *&v77[8] = 1024;
                *v78 = -50;
                _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
              }

              v7 = 4294967246;
              if (!*(this + 101))
              {
                *(this + 101) = -50;
                (*(*(this + 8) + 432))(v73, 22, 0, 0);
              }

              return v7;
            }

            *v24 = v23;
          }

          ++v21;
          v24 += 4;
        }

        while (v19 != v21);
      }

      v26 = v73;
      i = v17;
      if (*(this + 328) == 1)
      {
        *(this + 40) = pthread_self();
      }

      if (*(this + 312) == 1)
      {
        while (1)
        {
          v28 = atomic_load(this + 37);
          if (!v28)
          {
            break;
          }

          v29 = v28;
          atomic_compare_exchange_strong(this + 37, &v29, 0);
          if (v29 == v28)
          {
            v30 = 0;
            do
            {
              v31 = v30;
              v30 = v28;
              v28 = *v28;
              *v30 = v31;
            }

            while (v28);
            v32 = MEMORY[0x1E69E9C10];
            while (1)
            {
              v33 = v31;
              v34 = *(v30 + 8);
              switch(v34)
              {
                case 3:
                  v43 = atomic_load(this + 36);
                  if (v43)
                  {
                    do
                    {
                      v44 = *v43;
                      do
                      {
                        v45 = atomic_load(this + 38);
                        *v43 = v45;
                        v46 = v45;
                        atomic_compare_exchange_strong(this + 38, &v46, v43);
                      }

                      while (v46 != v45);
                      v43 = v44;
                    }

                    while (v44);
                  }

                  do
                  {
                    v47 = atomic_load(this + 38);
                    *v30 = v47;
                    v48 = v47;
                    atomic_compare_exchange_strong(this + 38, &v48, v30);
                  }

                  while (v48 != v47);
                  if (atomic_load(this + 36))
                  {
                    atomic_store(0, this + 36);
                  }

                  break;
                case 2:
                  v40 = atomic_load(this + 36);
                  if (v40)
                  {
                    v41 = 0;
                    while (1)
                    {
                      v42 = v40;
                      if (v40[2] == *(v30 + 16) && v40[3] == *(v30 + 24))
                      {
                        break;
                      }

                      v40 = *v40;
                      v41 = v42;
                      if (!*v42)
                      {
                        goto LABEL_71;
                      }
                    }

                    v51 = *v40;
                    if (v41)
                    {
                      *v41 = v51;
                    }

                    else
                    {
                      atomic_store(v51, this + 36);
                    }

                    do
                    {
                      v52 = atomic_load(this + 38);
                      *v42 = v52;
                      v53 = v52;
                      atomic_compare_exchange_strong(this + 38, &v53, v42);
                    }

                    while (v53 != v52);
                  }

                  do
                  {
LABEL_71:
                    v54 = atomic_load(this + 38);
                    *v30 = v54;
                    v55 = v54;
                    atomic_compare_exchange_strong(this + 38, &v55, v30);
                  }

                  while (v55 != v54);
                  break;
                case 1:
                  v35 = (this + 288);
                  v36 = atomic_load(this + 36);
                  if (v36)
                  {
                    while (1)
                    {
                      v37 = v36;
                      if (v36[2] == *(v30 + 16) && v36[3] == *(v30 + 24))
                      {
                        break;
                      }

                      v36 = *v36;
                      if (!*v37)
                      {
                        *v37 = v30;
                        *v30 = 0;
                        goto LABEL_72;
                      }
                    }

                    do
                    {
                      v38 = atomic_load(this + 38);
                      *v30 = v38;
                      v39 = v38;
                      atomic_compare_exchange_strong(this + 38, &v39, v30);
                    }

                    while (v39 != v38);
                  }

                  else
                  {
                    v50 = atomic_load(v35);
                    *v30 = v50;
                    atomic_store(v30, v35);
                  }

                  break;
                default:
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_ERROR, "Unknown AUThreadSafeList event type", buf, 2u);
                  }

                  break;
              }

LABEL_72:
              if (!v33)
              {
                goto LABEL_82;
              }

              v31 = *v33;
              v30 = v33;
            }
          }
        }

LABEL_82:
        *buf = *v10 | 4;
        v57 = atomic_load(this + 36);
        v26 = v73;
        for (i = v74; v57; v57 = *v57)
        {
          (*(v57 + 16))(*(v57 + 24), buf, a3, a4, a5, a6);
        }
      }

      if (*(a6 + 2) && (*(i + 168) != 1 || ((v58 = *(this + 29)) == 0 ? (v59 = (*(this + 27) - *(this + 26)) >> 3) : (LODWORD(v59) = (*(*v58 + 24))(v58)), v59 < 2)))
      {
        v66 = *a6;
        if (*(i + 160) < v66)
        {
LABEL_106:
          v7 = 0xFFFFFFFFLL;
          goto LABEL_110;
        }

        *(i + 144) = 2;
        memcpy((*(i + 152) + 48), a6, (16 * v66) | 8);
      }

      else
      {
        if (*(i + 168) != 1)
        {
          v7 = 4294956445;
          goto LABEL_110;
        }

        v64 = ausdk::AUBufferList::PrepareBufferOrError((i + 144), (i + 80), a5);
        if ((v65 & 1) == 0)
        {
          v7 = v64;
          if (!v64)
          {
            goto LABEL_122;
          }

LABEL_110:
          if (!*(this + 101))
          {
            *(this + 101) = v7;
            (*(*(this + 8) + 432))(v26, 22, 0, 0);
          }

          v67 = 264;
          goto LABEL_123;
        }
      }

      v7 = (*(*v26 + 200))(v26, v10, a3, a4, a5);
      if (v7)
      {
        goto LABEL_110;
      }

      if (*(a6 + 2))
      {
        ausdk::AUBufferList::CopyBufferContentsToOrError(buf, (i + 144), a6);
        if (v77[0] == 1)
        {
          v7 = 0;
          *(i + 144) = 0;
        }

        else
        {
          v7 = *buf;
          *(i + 144) = 0;
          if (v7)
          {
            goto LABEL_110;
          }
        }

LABEL_122:
        v67 = 8;
LABEL_123:
        if (*(this + 312) == 1)
        {
          *buf = *v10 | v67;
          for (j = atomic_load(this + 36); j; j = *j)
          {
            (*(j + 16))(*(j + 24), buf, a3, a4, a5, a6);
          }
        }

        v70 = *(this + 56);
        if (v70 != *(this + 57))
        {
          *(this + 57) = v70;
        }

        return v7;
      }

      if (*(i + 144))
      {
        v67 = 8;
        memcpy(a6, (*(i + 152) + 48), (16 * *a6) | 8);
        v7 = 0;
        goto LABEL_123;
      }

      goto LABEL_106;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v77 = v20;
      *&v77[4] = 1024;
      *&v77[6] = v19;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ioData.mNumberBuffers=%u, ASBD::NumberChannelStreams(output.GetStreamFormat())=%u; kAudio_ParamError", buf, 0xEu);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = (this + 504);
      if (*(this + 527) < 0)
      {
        v68 = *v68;
      }

      *buf = 136315394;
      *v77 = v68;
      *&v77[8] = 1024;
      *v78 = -50;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
    }

    v7 = 4294967246;
    if (!*(this + 101))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = (this + 504);
      if (*(this + 527) < 0)
      {
        v56 = *v56;
      }

      *buf = 136315394;
      *v77 = v56;
      *&v77[8] = 1024;
      *v78 = -10867;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
    }

    v7 = 4294956429;
    if (!*(this + 101))
    {
      *(this + 101) = -10867;
      (*(*(this + 8) + 432))(v11, 22, 0, 0);
    }
  }

  return v7;
}

void sub_1DE080174(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    ausdk::AUBase::DoRender(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList &)::$_0::operator()(a10, *v11);
  }

  else
  {
    ausdk::AUBase::DoRender(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList &)::$_0::operator()(a10, 0xFFFFFFFFLL);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE080070);
}

uint64_t ausdk::AUMethodRemovePropertyListener(ausdk *this, void *a2, uint64_t a3, void (*a4)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int))
{
  v7 = *(this + 67);
  if (v7)
  {
    (*(*v7 + 16))(*(this + 67), a2, a3, a4);
  }

  v8 = (*(*(this + 8) + 120))(this + 64, a2, a3, 0, 0);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  return v8;
}

void sub_1DE0802C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE0802B4);
}

uint64_t ausdk::AUMethodAddPropertyListener(ausdk *this, void *a2, uint64_t a3, void (*a4)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a5)
{
  v9 = *(this + 67);
  if (v9)
  {
    (*(*v9 + 16))(*(this + 67), a2, a3, a4, a5);
  }

  v10 = (*(*(this + 8) + 112))(this + 64, a2, a3, a4, a5);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  return v10;
}

void sub_1DE08043C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE080424);
}

uint64_t ausdk::AUMethodReset(ausdk *this, void *a2, uint64_t a3)
{
  v6 = *(this + 67);
  if (v6)
  {
    (*(*v6 + 16))(*(this + 67));
  }

  v8 = *(this + 8);
  v7 = this + 64;
  *(v7 + 41) = 0;
  *(v7 + 296) = 0u;
  *(v7 + 312) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 34) = 0xFFEFFFFFFFFFFFFFLL;
  v9 = (*(v8 + 72))(v7, a2, a3);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  return v9;
}

void sub_1DE0805BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE0805A8);
}

uint64_t ausdk::AUMethodSetParameter(ausdk *this, void *a2, float a3)
{
  if ((LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return (*(*(this + 8) + 152))();
  }

  else
  {
    return 4294900553;
  }
}

uint64_t ausdk::AUMethodGetParameter(ausdk *this, void *a2, unsigned int a3, unsigned int a4, uint64_t a5, float *a6)
{
  if (a5)
  {
    return (*(*(this + 8) + 144))();
  }

  else
  {
    return 4294967246;
  }
}

uint64_t ausdk::AUMethodSetProperty(ausdk *this, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *__s2, uint64_t a6)
{
  v12 = *(this + 67);
  if (v12)
  {
    (*(*v12 + 16))(*(this + 67));
  }

  if (__s2 && a6)
  {
    v13 = ausdk::AUBase::DispatchSetProperty(this + 8, a2, a3, a4, __s2, a6);
LABEL_6:
    v14 = v13;
    goto LABEL_32;
  }

  if (!__s2 && !a6)
  {
    v15 = this + 64;
    if (a2 <= 26)
    {
      if (a2 != 19)
      {
        if (a2 == 25)
        {
          ausdk::Owned<__CFString const*>::operator=(this + 73, 0);
LABEL_31:
          v14 = 0;
LABEL_32:
          v18 = 1;
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_24:
        v13 = (*(*v15 + 104))(this + 64, a2, a3, a4);
        goto LABEL_6;
      }

      v14 = (*(*v15 + 544))(this + 64, a3, a4);
      if (v14)
      {
        goto LABEL_32;
      }

LABEL_26:
      (*(*v15 + 432))(v15, a2, a3, a4);
      goto LABEL_31;
    }

    if (a2 == 27)
    {
      if (!a3)
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        v19 = this + 544;
        if (memcmp(v19, v21, 0x28uLL))
        {
          *(v19 + 4) = 0;
          *v19 = 0u;
          *(v19 + 1) = 0u;
          (*(*v15 + 432))(v15, 27, 0, a4);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (a2 != 54)
      {
        goto LABEL_24;
      }

      if (!a3)
      {
        ausdk::Owned<__CFString const*>::operator=(this + 66, 0);
        goto LABEL_26;
      }
    }

    v14 = 4294956430;
    goto LABEL_32;
  }

  if (!__s2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    LOWORD(v21[0]) = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "AudioUnitSetProperty: inData == NULL";
    goto LABEL_38;
  }

  if (a6)
  {
    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21[0]) = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "AudioUnitSetProperty: inDataSize == 0";
LABEL_38:
    _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, v17, v21, 2u);
  }

LABEL_22:
  v18 = 0;
  v14 = 0;
  if (v12)
  {
LABEL_33:
    (*(*v12 + 24))(v12);
  }

LABEL_34:
  if ((v18 & 1) == 0)
  {
    return 4294967246;
  }

  return v14;
}

void sub_1DE080AE0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE080A90);
}

uint64_t ausdk::AUMethodGetProperty(ausdk *this, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, _DWORD *a6, unsigned int *a7)
{
  v11 = a2;
  v28 = 0;
  v13 = *(this + 67);
  if (v13)
  {
    (*(*v13 + 16))(*(this + 67), a2, a3, a4, a5, a6, a7);
  }

  if (!a6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v16 = 0;
      PropertyInfo = 0;
      v15 = 4294967246;
      goto LABEL_13;
    }

    *buf = 0;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "AudioUnitGetProperty: null size pointer";
LABEL_30:
    _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_12;
  }

  if (!a5)
  {
    *buf = 0;
    PropertyInfo = ausdk::AUBase::DispatchGetPropertyInfo((this + 64), v11, a3, a4, buf, &v28);
    v16 = 0;
    *a6 = *buf;
    v15 = PropertyInfo;
    goto LABEL_13;
  }

  v14 = *a6;
  if (!v14)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "AudioUnitGetProperty: *ioDataSize == 0 on entry";
    goto LABEL_30;
  }

  v27 = 0;
  v15 = ausdk::AUBase::DispatchGetPropertyInfo((this + 64), v11, a3, a4, &v27, &v28);
  v16 = v15 == 0;
  if (v15)
  {
    PropertyInfo = 0;
    goto LABEL_13;
  }

  __src = 0;
  *buf = 0;
  v25 = 0;
  v26 = 0;
  v21 = a5;
  if (v14 < v27)
  {
    std::vector<std::byte>::__append(buf, v27);
    v21 = *buf;
    __src = *buf;
  }

  PropertyInfo = ausdk::AUBase::DispatchGetProperty((this + 64), v11, a3, a4, v21);
  if (PropertyInfo)
  {
    *a6 = 0;
  }

  else
  {
    if (v14 < v27 && __src != v25)
    {
      v22 = __src;
      memcpy(a5, __src, v14);
      goto LABEL_27;
    }

    *a6 = v27;
  }

  v22 = __src;
LABEL_27:
  if (v22)
  {
    operator delete(v22);
  }

LABEL_13:
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (v16)
  {
    return PropertyInfo;
  }

  return v15;
}

void sub_1DE080DE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE080CF4);
}

uint64_t ausdk::AUMethodGetPropertyInfo(ausdk *this, void *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6, unsigned __int8 *a7)
{
  v11 = a2;
  v17 = 0;
  v16 = 0;
  v13 = *(this + 67);
  if (v13)
  {
    (*(*v13 + 16))(*(this + 67), a2, a3, a4, a5, a6, a7);
  }

  PropertyInfo = ausdk::AUBase::DispatchGetPropertyInfo((this + 64), v11, a3, a4, &v17, &v16);
  if (a5)
  {
    *a5 = v17;
  }

  if (a6)
  {
    *a6 = v16;
  }

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  return PropertyInfo;
}

void sub_1DE080F94(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE080F74);
}

uint64_t ausdk::AUMethodUninitialize(ausdk *this, void *a2)
{
  v3 = *(this + 67);
  if (v3)
  {
    (*(*v3 + 16))(*(this + 67), a2);
  }

  v4 = ausdk::AUBase::DoCleanup((this + 64));
  if (v3)
  {
    (*(*v3 + 24))(v3, v4);
    return 0;
  }

  return v3;
}

void sub_1DE0810C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE0810B0);
}

uint64_t ausdk::AUMethodInitialize(ausdk *this, void *a2)
{
  v3 = *(this + 67);
  if (v3)
  {
    (*(*v3 + 16))(*(this + 67), a2);
  }

  if (*(this + 81))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*(this + 8) + 56))(this + 64, a2);
    if (!v4)
    {
      if ((*(*(this + 8) + 160))(this + 64))
      {
        std::vector<AudioUnitParameterEvent>::reserve(this + 56, 0x18uLL);
      }

      *(this + 82) = 1;
      (*(*(this + 8) + 496))(this + 64);
      v4 = 0;
      *(this + 81) = 1;
      __dmb(0xBu);
    }
  }

  if (v3)
  {
    (*(*v3 + 24))(v3, a2);
  }

  return v4;
}

void sub_1DE0812B4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE08129CLL);
}

uint64_t (*ausdk::AUBaseProcessLookup::Lookup(ausdk::AUBaseProcessLookup *this))(ausdk *__hidden this, void *)
{
  if ((this - 1) > 0x11)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1F593AA18[(this - 1)];
  }

  if (this == 20)
  {
    v2 = ausdk::AUMethodProcess;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ausdk::AUMethodProcess(ausdk *this, int *a2, unsigned int *a3, const AudioTimeStamp *a4, _DWORD *a5, AudioBufferList *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0;
  if (a2)
  {
    v10 = a2;
    v11 = *a2;
    if ((*a2 & 0x200) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOWORD(v11) = 0;
    v10 = &v34;
  }

  v12 = 4294967246;
  if (!a3 || !a5)
  {
    return v12;
  }

LABEL_7:
  v13 = this + 64;
  if ((v11 & 0x200) != 0)
  {
    goto LABEL_32;
  }

  if ((*(this + 81) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = (this + 504);
      if (*(this + 527) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315394;
      *v36 = v28;
      *&v36[8] = 1024;
      *v37 = -10867;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, process err: %d", buf, 0x12u);
    }

    v12 = 4294956429;
    if (!*(this + 101))
    {
      *(this + 101) = -10867;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    return v12;
  }

  v14 = *(this + 100);
  if (v14 < a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = (this + 504);
      if (*(this + 527) < 0)
      {
        v30 = *v30;
      }

      *buf = 136315394;
      *v36 = v30;
      *&v36[8] = 1024;
      *v37 = -10874;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, process err: %d", buf, 0x12u);
    }

    v12 = 4294956422;
    if (!*(this + 101))
    {
      *(this + 101) = -10874;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    return v12;
  }

  if (v14 != a4 && (*(this + 440) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = (this + 504);
      if (*(this + 527) < 0)
      {
        v31 = *v31;
      }

      *buf = 136315394;
      *v36 = v31;
      *&v36[8] = 1024;
      *v37 = -50;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, process err: %d", buf, 0x12u);
    }

    v12 = 4294967246;
    if (!*(this + 101))
    {
      goto LABEL_50;
    }

    return v12;
  }

  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 144, 0);
  v12 = v15;
  if ((v16 & 1) == 0)
  {
    return v12;
  }

  if ((*(v15 + 92) & 0x20) != 0)
  {
    v17 = *(v15 + 108);
  }

  else
  {
    v17 = 1;
  }

  v18 = *a5;
  if (v17 == *a5)
  {
    if (v17)
    {
      v19 = 0;
      v20 = *(v15 + 104);
      v21 = v20 * a4;
      v22 = a5 + 3;
      do
      {
        if (*(v22 + 1))
        {
          v23 = *v22;
          if (*v22 < v21)
          {
            v29 = v20;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 67110144;
              *v36 = a4;
              *&v36[4] = 1024;
              *&v36[6] = v29;
              *v37 = 1024;
              *&v37[2] = v21;
              v38 = 1024;
              v39 = v19;
              v40 = 1024;
              v41 = v23;
              _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioData.mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v33 = (this + 504);
              if (*(this + 527) < 0)
              {
                v33 = *v33;
              }

              *buf = 136315394;
              *v36 = v33;
              *&v36[8] = 1024;
              *v37 = -50;
              _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, process err: %d", buf, 0x12u);
            }

            v12 = 4294967246;
            if (!*(this + 101))
            {
              goto LABEL_50;
            }

            return v12;
          }

          *v22 = v21;
        }

        ++v19;
        v22 += 4;
      }

      while (v17 != v19);
    }

LABEL_32:
    if (*(this + 328) == 1)
    {
      *(this + 40) = pthread_self();
    }

    if (*a3 == *(this + 42))
    {
      return 0;
    }

    v24 = *a3;
    v25 = *(a3 + 1);
    v26 = *(a3 + 3);
    *(this + 23) = *(a3 + 2);
    *(this + 24) = v26;
    *(this + 21) = v24;
    *(this + 22) = v25;
    return (*(*v13 + 176))(this + 64, v10, a5, a5, a4);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v36 = v18;
    *&v36[4] = 1024;
    *&v36[6] = v17;
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ioData.mNumberBuffers=%u, ASBD::NumberChannelStreams(input.GetStreamFormat())=%u; kAudio_ParamError", buf, 0xEu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = (this + 504);
    if (*(this + 527) < 0)
    {
      v32 = *v32;
    }

    *buf = 136315394;
    *v36 = v32;
    *&v36[8] = 1024;
    *v37 = -50;
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, process err: %d", buf, 0x12u);
  }

  v12 = 4294967246;
  if (!*(this + 101))
  {
LABEL_50:
    *(this + 101) = -50;
    (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
  }

  return v12;
}

void sub_1DE0819E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      ausdk::AUBase::DoProcess(unsigned int &,AudioTimeStamp const&,unsigned int,AudioBufferList &)::$_0::operator()(v2, *v4);
    }

    else
    {
      ausdk::AUBase::DoProcess(unsigned int &,AudioTimeStamp const&,unsigned int,AudioBufferList &)::$_0::operator()(v2, 0xFFFFFFFFLL);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE081640);
  }

  _Unwind_Resume(a1);
}

uint64_t (*ausdk::AUBaseProcessMultipleLookup::Lookup(ausdk::AUBaseProcessMultipleLookup *this))(ausdk *__hidden this, void *)
{
  if ((this - 1) > 0x11)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1F593AA18[(this - 1)];
  }

  if (this == 21)
  {
    v2 = ausdk::AUMethodProcessMultiple;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ausdk::AUMethodProcessMultiple(ausdk *this, int *a2, unsigned int *a3, const AudioTimeStamp *a4, uint64_t a5, uint64_t a6, const AudioBufferList **a7, uint64_t a8, AudioBufferList **a9)
{
  v10 = a7;
  v12 = a5;
  v13 = a4;
  v71 = *MEMORY[0x1E69E9840];
  v61 = 0;
  if (a2)
  {
    v16 = a2;
    v17 = *a2;
    if ((*a2 & 0x200) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOWORD(v17) = 0;
    v16 = &v61;
  }

  v18 = 4294967246;
  if (!a3 || !a6 || !a8)
  {
    return v18;
  }

LABEL_8:
  v19 = this + 64;
  if ((v17 & 0x200) != 0)
  {
    goto LABEL_51;
  }

  if ((*(this + 81) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = (this + 504);
      if (*(this + 527) < 0)
      {
        v47 = *v47;
      }

      *buf = 136315394;
      *v63 = v47;
      *&v63[8] = 1024;
      *v64 = -10867;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
    }

    v18 = 4294956429;
    if (!*(this + 101))
    {
      *(this + 101) = -10867;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    return v18;
  }

  v20 = *(this + 100);
  if (v20 < a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = (this + 504);
      if (*(this + 527) < 0)
      {
        v49 = *v49;
      }

      *buf = 136315394;
      *v63 = v49;
      *&v63[8] = 1024;
      *v64 = -10874;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
    }

    v18 = 4294956422;
    if (!*(this + 101))
    {
      *(this + 101) = -10874;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    return v18;
  }

  if (v20 != a4 && (*(this + 440) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = (this + 504);
      if (*(this + 527) < 0)
      {
        v50 = *v50;
      }

      *buf = 136315394;
      *v63 = v50;
      *&v63[8] = 1024;
      *v64 = -50;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
    }

    v18 = 4294967246;
    if (!*(this + 101))
    {
      *(this + 101) = -50;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    return v18;
  }

  v57 = a7;
  v58 = a5;
  v60 = a4;
  v59 = this + 64;
  if (!a5)
  {
LABEL_36:
    v19 = v59;
    v13 = v60;
    v10 = v57;
    v12 = v58;
    if (v57)
    {
      v31 = 0;
      do
      {
        if (*(a8 + 8 * v31))
        {
          v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 192, v31);
          if ((v33 & 1) == 0)
          {
            return v32;
          }

          if ((*(v32 + 92) & 0x20) != 0)
          {
            v34 = *(v32 + 108);
          }

          else
          {
            v34 = 1;
          }

          v35 = *(a8 + 8 * v31);
          v36 = *v35;
          if (v34 != *v35)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              *v63 = v31;
              *&v63[4] = 1024;
              *&v63[6] = v36;
              *v64 = 1024;
              *&v64[2] = v34;
              _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ioOutputBufferLists[%u]->mNumberBuffers=%u, ASBD::NumberChannelStreams(output.GetStreamFormat())=%u; kAudio_ParamError", buf, 0x14u);
            }

            v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v53 = v59;
            if (v52)
            {
              v56 = (this + 504);
              if (*(this + 527) < 0)
              {
                v56 = *v56;
              }

              *buf = 136315394;
              *v63 = v56;
              *&v63[8] = 1024;
              *v64 = -50;
              _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
              v53 = v59;
            }

            v18 = 4294967246;
            if (!*(this + 101))
            {
              *(this + 101) = -50;
              (*(*(this + 8) + 432))(v53, 22, 0, 0);
            }

            return v18;
          }

          if (v34)
          {
            v37 = 0;
            v38 = *(v32 + 104);
            v39 = v38 * v60;
            v40 = v35 + 3;
            do
            {
              if (*(v40 + 1))
              {
                v41 = *v40;
                if (*v40 < v39)
                {
                  v48 = v38;
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67110400;
                    *v63 = v60;
                    *&v63[4] = 1024;
                    *&v63[6] = v48;
                    *v64 = 1024;
                    *&v64[2] = v39;
                    v65 = 1024;
                    v66 = v31;
                    v67 = 1024;
                    v68 = v37;
                    v69 = 1024;
                    v70 = v41;
                    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioOutputBufferLists[%u]->mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x26u);
                  }

                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    v54 = (this + 504);
                    if (*(this + 527) < 0)
                    {
                      v54 = *v54;
                    }

                    *buf = 136315394;
                    *v63 = v54;
                    *&v63[8] = 1024;
                    *v64 = -50;
                    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
                  }

                  v18 = 4294967246;
                  if (!*(this + 101))
                  {
                    *(this + 101) = -50;
                    (*(*(this + 8) + 432))(v59, 22, 0, 0);
                  }

                  return v18;
                }

                *v40 = v39;
              }

              ++v37;
              v40 += 4;
            }

            while (v34 != v37);
          }
        }

        ++v31;
        v19 = v59;
        v13 = v60;
        v10 = v57;
        v12 = v58;
      }

      while (v31 != v57);
    }

LABEL_51:
    if (*(this + 328) == 1)
    {
      *(this + 40) = pthread_self();
    }

    if (*a3 == *(this + 42))
    {
      return 0;
    }

    v42 = *a3;
    v43 = *(a3 + 1);
    v44 = *(a3 + 3);
    *(this + 23) = *(a3 + 2);
    *(this + 24) = v44;
    *(this + 21) = v42;
    *(this + 22) = v43;
    return (*(*v19 + 184))(v19, v16, v13, v12, a6, v10, a8);
  }

  v21 = 0;
  while (1)
  {
    if (*(a6 + 8 * v21))
    {
      v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 144, v21);
      v18 = v22;
      if ((v23 & 1) == 0)
      {
        return v18;
      }

      if ((*(v22 + 92) & 0x20) != 0)
      {
        v24 = *(v22 + 108);
      }

      else
      {
        v24 = 1;
      }

      v25 = *(a6 + 8 * v21);
      v26 = *v25;
      if (v24 != *v25)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *v63 = v21;
          *&v63[4] = 1024;
          *&v63[6] = v26;
          *v64 = 1024;
          *&v64[2] = v24;
          _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "inInputBufferLists[%u]->mNumberBuffers=%u, ASBD::NumberChannelStreams(input.GetStreamFormat())=%u; kAudio_ParamError", buf, 0x14u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v55 = (this + 504);
          if (*(this + 527) < 0)
          {
            v55 = *v55;
          }

          *buf = 136315394;
          *v63 = v55;
          *&v63[8] = 1024;
          *v64 = -50;
          _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
        }

        v18 = 4294967246;
        if (!*(this + 101))
        {
          *(this + 101) = -50;
          (*(*(this + 8) + 432))();
        }

        return v18;
      }

      if (v24)
      {
        break;
      }
    }

LABEL_35:
    if (++v21 == v58)
    {
      goto LABEL_36;
    }
  }

  v27 = 0;
  v28 = *(v22 + 104) * v60;
  v29 = v25 + 4;
  while (*v29)
  {
    v30 = *(v29 - 1);
    if (v30 < v28)
    {
      v46 = *(v22 + 104);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67110400;
        *v63 = v60;
        *&v63[4] = 1024;
        *&v63[6] = v46;
        *v64 = 1024;
        *&v64[2] = v28;
        v65 = 1024;
        v66 = v21;
        v67 = 1024;
        v68 = v27;
        v69 = 1024;
        v70 = v30;
        _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; inInputBufferLists[%u].mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x26u);
      }

      break;
    }

    ++v27;
    v29 += 2;
    if (v24 == v27)
    {
      goto LABEL_35;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v51 = (this + 504);
    if (*(this + 527) < 0)
    {
      v51 = *v51;
    }

    *buf = 136315394;
    *v63 = v51;
    *&v63[8] = 1024;
    *v64 = -50;
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
  }

  v18 = 4294967246;
  if (!*(this + 101))
  {
    *(this + 101) = -50;
    (*(*v59 + 432))(v59, 22, 0, 0);
  }

  return v18;
}

void sub_1DE082490(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    v12 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      ausdk::AUBase::DoProcessMultiple(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0::operator()(a11, *v12);
    }

    else
    {
      ausdk::AUBase::DoProcessMultiple(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0::operator()(a11, 0xFFFFFFFFLL);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE081E48);
  }

  _Unwind_Resume(a1);
}

uint64_t (*ausdk::AUBaseProcessAndMultipleLookup::Lookup(ausdk::AUBaseProcessAndMultipleLookup *this))(ausdk *__hidden this, void *)
{
  if ((this - 1) > 0x11)
  {
    v1 = ausdk::AUMethodProcessMultiple;
    if (this == 21)
    {
      return v1;
    }
  }

  else if (((0x1880uLL >> (this - 1)) & 1) == 0)
  {
    return off_1F593AA18[(this - 1)];
  }

  v1 = ausdk::AUMethodProcess;
  if (this != 20)
  {
    return 0;
  }

  return v1;
}

ElementVector *ElementVector::freeOld(ElementVector **this)
{
  result = *this;
  if (result)
  {
    result = ElementVector::freeOld(result);
    v3 = *this;
    if (*this)
    {
      free(*(v3 + 2));
      result = MEMORY[0x1E12BD160](v3, 0x10A0C409D8FE3EALL);
    }
  }

  *this = 0;
  return result;
}

uint64_t AUScopeDynamic::GetElement(AUScopeDynamic *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (v2 && *(v2 + 12) > a2)
  {
    return *(*(v2 + 16) + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AUScopeDynamic::GetNumberOfElements(AUScopeDynamic *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *(v1 + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t AUScopeDynamic::SetNumberOfElements(AUScopeDynamic *this, unsigned int a2)
{
  v5 = this + 32;
  v4 = *(this + 4);
  v12 = this + 32;
  v13 = 0;
  result = (*(v4 + 16))(this + 32);
  LOBYTE(v13) = result;
  v7 = *(v5 - 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(v7 + 12);
  if (v8 >= a2)
  {
    if (result)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  else
  {
    if (*(v7 + 8) <= a2)
    {
      operator new();
    }

    *(v7 + 12) = a2;
    if (a2 > v8)
    {
      v9 = v8;
      do
      {
        (*(**(this + 1) + 416))(&v11);
        v10 = v11;
        v11 = 0;
        *(*(v7 + 16) + 8 * v9) = v10;
        result = v11;
        v11 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        ++v9;
      }

      while (a2 != v9);
    }

    __dmb(0xBu);
    *(v7 + 12) = a2;
    *(this + 3) = v7;
    if (v13)
    {
      v5 = v12;
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_1DE0827F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x1E12BD160](v3, 0x10A0C409D8FE3EALL);
  CADeprecated::CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

void ElementVector::ElementVector(ElementVector *this, uint64_t a2, ElementVector *a3)
{
  *this = a3;
  v5 = -__clz(a2 - 1);
  v6 = v5 & 0x3F;
  *(this + 1) = (1 << v5);
  v7 = 8 << v5;
  v8 = malloc_type_malloc((8 << v5) & 0x7FFFFFFF8, 0x362D0424uLL);
  if (v6 <= 0x1F && v8 == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
  }

  v10 = v8;
  bzero(v8, v7 & 0x7FFFFFFF8);
  *(this + 2) = v10;
  if (a3)
  {
    v11 = *(a3 + 3);
    if (v11)
    {
      v12 = 0;
      do
      {
        *(*(this + 2) + v12) = *(*(a3 + 2) + v12);
        v12 += 8;
      }

      while (8 * v11 != v12);
    }

    *(this + 3) = v11;
  }
}

void CADeprecated::CAMutex::Locker::~Locker(CADeprecated::CAMutex::Locker *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))();
  }
}

void AUScopeDynamic::~AUScopeDynamic(ElementVector ***this)
{
  AUScopeDynamic::~AUScopeDynamic(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593AAB8;
  ElementVector::freeOld(this[3]);
  v2 = ((*this)[3])(this);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = ((*this)[4])(this, v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      v4 = (v4 + 1);
    }

    while (v3 != v4);
  }

  v6 = this[3];
  if (v6)
  {
    free(v6[2]);
    MEMORY[0x1E12BD160](v6, 0x10A0C409D8FE3EALL);
  }

  CADeprecated::CAMutex::~CAMutex((this + 4));
}

uint64_t ausdk::AUBase::ProcessForScheduledParams(ausdk::AUBase *a1, unint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = 126 - 2 * __clz((v10 - v9) >> 5);
  v31 = ausdk::ParameterEventListSortPredicate;
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13.n128_f64[0] = std::__introsort<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,false>(v9, v10, &v31, v12, 1, a5);
  if (a3)
  {
    v14 = 0;
    v15 = a3;
    while (1)
    {
      v16 = *a2;
      v17 = a2[1];
      v18 = a3;
      v19 = *a2;
      if (*a2 != v17)
      {
        break;
      }

      v24 = (a3 - v14);
      v18 = a3;
LABEL_34:
      result = (*(*a1 + 568))(a1, a4, v14, v24, a3, v13);
      if (result)
      {
        return result;
      }

      v14 = v18;
      v30 = v15 > v24;
      if (v15 >= v24)
      {
        v15 -= v24;
      }

      else
      {
        v15 = 0;
      }

      if (!v30)
      {
        return 0;
      }
    }

    while (1)
    {
      v20 = v19[4];
      if (v20 > v14 && v20 < v18)
      {
        break;
      }

      if (v19[3] == 2)
      {
        v22 = v19[5] + v20;
        if (v22 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v22;
        }

        if (v22 <= v14)
        {
          v18 = v18;
        }

        else
        {
          v18 = v23;
        }
      }

      v19 += 8;
      if (v19 == v17)
      {
        goto LABEL_22;
      }
    }

    v18 = v19[4];
LABEL_22:
    v24 = (v18 - v14);
    while (1)
    {
      v25 = v16[4];
      if (v16[3] == 2)
      {
        if (v25 < v18 && (v16[5] + v25) > v14)
        {
LABEL_31:
          ElementOrError = ausdk::AUBase::GetElementOrError(a1, *v16, v16[1]);
          if (v28)
          {
            (*(*ElementOrError + 32))(ElementOrError, v16[2], v16, v14, (v18 - v14), 0);
          }
        }
      }

      else if (v25 <= v14)
      {
        goto LABEL_31;
      }

      v16 += 8;
      if (v16 == v17)
      {
        goto LABEL_34;
      }
    }
  }

  return 0;
}

double std::__introsort<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,false>(unint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = a2 - 2;
    v218 = a2 - 6;
    v219 = a2 - 4;
    n128_u64 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = n128_u64;
          v12 = (a2 - n128_u64) >> 5;
          v13 = v12 - 2;
          if (v12 <= 2)
          {
            if (v12 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v12 == 2)
            {
              if (!(*a3)(a2 - 2, n128_u64))
              {
                return a6.n128_f64[0];
              }

LABEL_107:
              v127 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v127;
              v128 = a2[-1];
              *n128_u64 = *v10;
              *(n128_u64 + 16) = v128;
              a6 = v224;
              v129 = v225;
              goto LABEL_108;
            }

            goto LABEL_9;
          }

          switch(v12)
          {
            case 3uLL:
              v125 = (*a3)((n128_u64 + 32), n128_u64);
              v126 = (*a3)(a2 - 2, (n128_u64 + 32));
              if (v125)
              {
                if (v126)
                {
                  goto LABEL_107;
                }

                v198 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v198;
                v199 = *(n128_u64 + 48);
                *n128_u64 = *(n128_u64 + 32);
                *(n128_u64 + 16) = v199;
                v200 = v225;
                *(n128_u64 + 32) = v224;
                *(n128_u64 + 48) = v200;
                if (!(*a3)(a2 - 2, (n128_u64 + 32)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(n128_u64 + 32);
                v129 = *(n128_u64 + 48);
                v224 = a6;
                v225 = v129;
                v201 = a2[-1];
                *(n128_u64 + 32) = *v10;
                *(n128_u64 + 48) = v201;
LABEL_108:
                *v10 = a6;
                a2[-1] = v129;
                return a6.n128_f64[0];
              }

              if (!v126)
              {
                return a6.n128_f64[0];
              }

              v183 = *(n128_u64 + 48);
              v224 = *(n128_u64 + 32);
              v182 = v224;
              v225 = v183;
              v184 = a2[-1];
              *(n128_u64 + 32) = *v10;
              *(n128_u64 + 48) = v184;
              *v10 = v182;
              a2[-1] = v183;
              goto LABEL_181;
            case 4uLL:
              v130 = (*a3)((n128_u64 + 32), n128_u64);
              v131 = (*a3)((n128_u64 + 64), (n128_u64 + 32));
              if (v130)
              {
                if (v131)
                {
                  v132 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v132;
                  v133 = *(n128_u64 + 80);
                  *n128_u64 = *(n128_u64 + 64);
                  *(n128_u64 + 16) = v133;
                  v134 = v225;
                  *(n128_u64 + 64) = v224;
                  *(n128_u64 + 80) = v134;
                }

                else
                {
                  v202 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v202;
                  v203 = *(n128_u64 + 48);
                  *n128_u64 = *(n128_u64 + 32);
                  *(n128_u64 + 16) = v203;
                  v204 = v225;
                  *(n128_u64 + 32) = v224;
                  *(n128_u64 + 48) = v204;
                  if ((*a3)((n128_u64 + 64), (n128_u64 + 32)))
                  {
                    v206 = *(n128_u64 + 32);
                    v205 = *(n128_u64 + 48);
                    v207 = *(n128_u64 + 80);
                    *(n128_u64 + 32) = *(n128_u64 + 64);
                    *(n128_u64 + 48) = v207;
                    *(n128_u64 + 64) = v206;
                    *(n128_u64 + 80) = v205;
                  }
                }
              }

              else if (v131)
              {
                v186 = *(n128_u64 + 32);
                v185 = *(n128_u64 + 48);
                v187 = *(n128_u64 + 80);
                *(n128_u64 + 32) = *(n128_u64 + 64);
                *(n128_u64 + 48) = v187;
                *(n128_u64 + 64) = v186;
                *(n128_u64 + 80) = v185;
                if ((*a3)((n128_u64 + 32), n128_u64))
                {
                  v188 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v188;
                  v189 = *(n128_u64 + 48);
                  *n128_u64 = *(n128_u64 + 32);
                  *(n128_u64 + 16) = v189;
                  v190 = v225;
                  *(n128_u64 + 32) = v224;
                  *(n128_u64 + 48) = v190;
                }
              }

              if (!(*a3)(a2 - 2, (n128_u64 + 64)))
              {
                return a6.n128_f64[0];
              }

              v209 = *(n128_u64 + 80);
              v224 = *(n128_u64 + 64);
              v208 = v224;
              v225 = v209;
              v210 = a2[-1];
              *(n128_u64 + 64) = *v10;
              *(n128_u64 + 80) = v210;
              *v10 = v208;
              a2[-1] = v209;
              if (!(*a3)((n128_u64 + 64), (n128_u64 + 32)))
              {
                return a6.n128_f64[0];
              }

              v212 = *(n128_u64 + 32);
              v211 = *(n128_u64 + 48);
              v213 = *(n128_u64 + 80);
              *(n128_u64 + 32) = *(n128_u64 + 64);
              *(n128_u64 + 48) = v213;
              *(n128_u64 + 64) = v212;
              *(n128_u64 + 80) = v211;
LABEL_181:
              if ((*a3)((n128_u64 + 32), n128_u64))
              {
                v214 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v214;
                v215 = *(n128_u64 + 48);
                *n128_u64 = *(n128_u64 + 32);
                *(n128_u64 + 16) = v215;
                a6.n128_u64[0] = v224.n128_u64[0];
                v216 = v225;
                *(n128_u64 + 32) = v224;
                *(n128_u64 + 48) = v216;
              }

              return a6.n128_f64[0];
            case 5uLL:

              a6.n128_u64[0] = std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,0>(n128_u64, (n128_u64 + 32), (n128_u64 + 64), (n128_u64 + 96), a2 - 2, a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_9:
          if (v12 <= 23)
          {
            v135 = (n128_u64 + 32);
            v137 = n128_u64 == a2 || v135 == a2;
            if (a5)
            {
              if (!v137)
              {
                v138 = 0;
                v139 = n128_u64;
                do
                {
                  v140 = v139;
                  v139 = v135;
                  if ((*a3)(v135, v140))
                  {
                    v141 = v139[1];
                    v224 = *v139;
                    v225 = v141;
                    v142 = v138;
                    while (1)
                    {
                      v143 = n128_u64 + v142;
                      v144 = *(n128_u64 + v142 + 16);
                      *(v143 + 32) = *(n128_u64 + v142);
                      *(v143 + 48) = v144;
                      if (!v142)
                      {
                        break;
                      }

                      v142 -= 32;
                      if (((*a3)(&v224, (v142 + n128_u64)) & 1) == 0)
                      {
                        v145 = (n128_u64 + v142 + 32);
                        goto LABEL_127;
                      }
                    }

                    v145 = n128_u64;
LABEL_127:
                    a6.n128_u64[0] = v224.n128_u64[0];
                    v146 = v225;
                    *v145 = v224;
                    v145[1] = v146;
                  }

                  v135 = v139 + 2;
                  v138 += 32;
                }

                while (&v139[2] != a2);
              }
            }

            else if (!v137)
            {
              do
              {
                v191 = a1;
                a1 = v135;
                if ((*a3)(v135, v191))
                {
                  v192 = *(a1 + 16);
                  v224 = *a1;
                  v225 = v192;
                  v193 = a1;
                  do
                  {
                    v194 = v193 - 2;
                    v195 = v193[-1];
                    *v193 = v193[-2];
                    v193[1] = v195;
                    v196 = (*a3)(&v224, v193 - 4);
                    v193 = v194;
                  }

                  while ((v196 & 1) != 0);
                  a6.n128_u64[0] = v224.n128_u64[0];
                  v197 = v225;
                  *v194 = v224;
                  v194[1] = v197;
                }

                v135 = (a1 + 32);
              }

              while ((a1 + 32) != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (n128_u64 != a2)
            {
              v221 = a2;
              v147 = v13 >> 1;
              v148 = v13 >> 1;
              do
              {
                v149 = v148;
                if (v147 >= v148)
                {
                  v150 = (2 * v148) | 1;
                  v151 = (a1 + 32 * v150);
                  if (2 * v148 + 2 < v12 && (*a3)((a1 + 32 * v150), v151 + 2))
                  {
                    v151 += 2;
                    v150 = 2 * v149 + 2;
                  }

                  v152 = (a1 + 32 * v149);
                  if (((*a3)(v151, v152) & 1) == 0)
                  {
                    v153 = v152[1];
                    v224 = *v152;
                    v225 = v153;
                    do
                    {
                      v154 = v151;
                      v155 = v151[1];
                      *v152 = *v151;
                      v152[1] = v155;
                      if (v147 < v150)
                      {
                        break;
                      }

                      v156 = (2 * v150) | 1;
                      v151 = (a1 + 32 * v156);
                      v157 = 2 * v150 + 2;
                      if (v157 < v12 && (*a3)((a1 + 32 * v156), v151 + 2))
                      {
                        v151 += 2;
                        v156 = v157;
                      }

                      v152 = v154;
                      v150 = v156;
                    }

                    while (!(*a3)(v151, &v224));
                    v158 = v225;
                    *v154 = v224;
                    v154[1] = v158;
                  }
                }

                v148 = v149 - 1;
              }

              while (v149);
              v159 = v221;
              do
              {
                v160 = v159;
                v161 = 0;
                v162 = *(a1 + 16);
                v222 = *a1;
                v223 = v162;
                v163 = a1;
                do
                {
                  v164 = &v163[2 * v161];
                  v165 = v164 + 2;
                  v166 = (2 * v161) | 1;
                  v167 = 2 * v161 + 2;
                  if (v167 < v12)
                  {
                    v168 = v164 + 4;
                    if ((*a3)(v164 + 2, v164 + 4))
                    {
                      v165 = v168;
                      v166 = v167;
                    }
                  }

                  v169 = v165[1];
                  *v163 = *v165;
                  v163[1] = v169;
                  v163 = v165;
                  v161 = v166;
                }

                while (v166 <= ((v12 - 2) >> 1));
                v159 = v160 - 2;
                if (v165 == &v160[-2])
                {
                  a6.n128_u64[0] = v222.n128_u64[0];
                  v181 = v223;
                  *v165 = v222;
                  v165[1] = v181;
                }

                else
                {
                  v170 = v160[-1];
                  *v165 = *v159;
                  v165[1] = v170;
                  a6.n128_u64[0] = v222.n128_u64[0];
                  v171 = v223;
                  *v159 = v222;
                  v160[-1] = v171;
                  v172 = (&v165[2] - a1) >> 5;
                  v173 = v172 < 2;
                  v174 = v172 - 2;
                  if (!v173)
                  {
                    v175 = v174 >> 1;
                    v176 = (a1 + 32 * (v174 >> 1));
                    if ((*a3)(v176, v165))
                    {
                      v177 = v165[1];
                      v224 = *v165;
                      v225 = v177;
                      do
                      {
                        v178 = v176;
                        v179 = v176[1];
                        *v165 = *v176;
                        v165[1] = v179;
                        if (!v175)
                        {
                          break;
                        }

                        v175 = (v175 - 1) >> 1;
                        v176 = (a1 + 32 * v175);
                        v165 = v178;
                      }

                      while (((*a3)(v176, &v224) & 1) != 0);
                      a6.n128_u64[0] = v224.n128_u64[0];
                      v180 = v225;
                      *v178 = v224;
                      v178[1] = v180;
                    }
                  }
                }

                v173 = v12-- <= 2;
              }

              while (!v173);
            }

            return a6.n128_f64[0];
          }

          v14 = (n128_u64 + 32 * (v12 >> 1));
          v15 = *a3;
          if (v12 >= 0x81)
          {
            v16 = v15((n128_u64 + 32 * (v12 >> 1)), n128_u64);
            v17 = (*a3)(a2 - 2, (n128_u64 + 32 * (v12 >> 1)));
            if (v16)
            {
              if (v17)
              {
                v18 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v18;
                v19 = a2[-1];
                *n128_u64 = *v10;
                *(n128_u64 + 16) = v19;
                goto LABEL_26;
              }

              v36 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v36;
              v37 = v14[1];
              *n128_u64 = *v14;
              *(n128_u64 + 16) = v37;
              v38 = v225;
              *v14 = v224;
              v14[1] = v38;
              if ((*a3)(a2 - 2, (n128_u64 + 32 * (v12 >> 1))))
              {
                v39 = v14[1];
                v224 = *v14;
                v225 = v39;
                v40 = a2[-1];
                *v14 = *v10;
                v14[1] = v40;
LABEL_26:
                v41 = v225;
                *v10 = v224;
                a2[-1] = v41;
              }
            }

            else if (v17)
            {
              v24 = v14[1];
              v224 = *v14;
              v225 = v24;
              v25 = a2[-1];
              *v14 = *v10;
              v14[1] = v25;
              v26 = v225;
              *v10 = v224;
              a2[-1] = v26;
              if ((*a3)((n128_u64 + 32 * (v12 >> 1)), n128_u64))
              {
                v27 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v27;
                v28 = v14[1];
                *n128_u64 = *v14;
                *(n128_u64 + 16) = v28;
                v29 = v225;
                *v14 = v224;
                v14[1] = v29;
              }
            }

            v42 = v14 - 2;
            v43 = (*a3)(v14 - 2, (a1 + 32));
            v44 = (*a3)(v219, v14 - 2);
            if (v43)
            {
              if (v44)
              {
                v45 = *(a1 + 32);
                v46 = *(a1 + 48);
                v224 = v45;
                v225 = v46;
                v47 = a2 - 4;
                v48 = a2[-3];
                *(a1 + 32) = *v219;
                *(a1 + 48) = v48;
                goto LABEL_38;
              }

              v62 = *(a1 + 48);
              v224 = *(a1 + 32);
              v61 = v224;
              v225 = v62;
              v63 = v14[-1];
              *(a1 + 32) = *v42;
              *(a1 + 48) = v63;
              *v42 = v61;
              v14[-1] = v62;
              if ((*a3)(v219, v14 - 2))
              {
                v64 = v14[-1];
                v224 = *v42;
                v225 = v64;
                v47 = a2 - 4;
                v65 = a2[-3];
                *v42 = *v219;
                v14[-1] = v65;
                v45 = v224;
                v46 = v225;
LABEL_38:
                *v47 = v45;
                v47[1] = v46;
              }
            }

            else if (v44)
            {
              v49 = v14[-1];
              v224 = *v42;
              v225 = v49;
              v50 = a2[-3];
              *v42 = *v219;
              v14[-1] = v50;
              v51 = v225;
              *v219 = v224;
              a2[-3] = v51;
              if ((*a3)(v14 - 2, (a1 + 32)))
              {
                v53 = *(a1 + 48);
                v224 = *(a1 + 32);
                v52 = v224;
                v225 = v53;
                v54 = v14[-1];
                *(a1 + 32) = *v42;
                *(a1 + 48) = v54;
                *v42 = v52;
                v14[-1] = v53;
              }
            }

            v66 = (*a3)(v14 + 2, (a1 + 64));
            v67 = (*a3)(v218, v14 + 2);
            if (v66)
            {
              if (v67)
              {
                v68 = *(a1 + 64);
                v69 = *(a1 + 80);
                v224 = v68;
                v225 = v69;
                v70 = a2 - 6;
                v71 = a2[-5];
                *(a1 + 64) = *v218;
                *(a1 + 80) = v71;
                goto LABEL_47;
              }

              v79 = *(a1 + 80);
              v224 = *(a1 + 64);
              v78 = v224;
              v225 = v79;
              v80 = v14[3];
              *(a1 + 64) = v14[2];
              *(a1 + 80) = v80;
              v14[2] = v78;
              v14[3] = v79;
              if ((*a3)(v218, v14 + 2))
              {
                v81 = v14[3];
                v224 = v14[2];
                v225 = v81;
                v70 = a2 - 6;
                v82 = a2[-5];
                v14[2] = *v218;
                v14[3] = v82;
                v68 = v224;
                v69 = v225;
LABEL_47:
                *v70 = v68;
                v70[1] = v69;
              }
            }

            else if (v67)
            {
              v72 = v14[3];
              v224 = v14[2];
              v225 = v72;
              v73 = a2[-5];
              v14[2] = *v218;
              v14[3] = v73;
              v74 = v225;
              *v218 = v224;
              a2[-5] = v74;
              if ((*a3)(v14 + 2, (a1 + 64)))
              {
                v76 = *(a1 + 80);
                v224 = *(a1 + 64);
                v75 = v224;
                v225 = v76;
                v77 = v14[3];
                *(a1 + 64) = v14[2];
                *(a1 + 80) = v77;
                v14[2] = v75;
                v14[3] = v76;
              }
            }

            v83 = (*a3)((a1 + 32 * (v12 >> 1)), v14 - 2);
            v84 = (*a3)(v14 + 2, (a1 + 32 * (v12 >> 1)));
            if (v83)
            {
              if (v84)
              {
                v85 = v14[-1];
                v224 = *v42;
                v225 = v85;
                v86 = v14[3];
                *v42 = v14[2];
                v14[-1] = v86;
                goto LABEL_56;
              }

              v93 = v14[-1];
              v224 = *v42;
              v225 = v93;
              v94 = v14[1];
              *v42 = *v14;
              v14[-1] = v94;
              v95 = v225;
              *v14 = v224;
              v14[1] = v95;
              if ((*a3)(v14 + 2, (a1 + 32 * (v12 >> 1))))
              {
                v96 = v14[1];
                v224 = *v14;
                v225 = v96;
                v97 = v14[3];
                *v14 = v14[2];
                v14[1] = v97;
LABEL_56:
                v98 = v225;
                v14[2] = v224;
                v14[3] = v98;
              }
            }

            else if (v84)
            {
              v87 = v14[1];
              v224 = *v14;
              v225 = v87;
              v88 = v14[3];
              *v14 = v14[2];
              v14[1] = v88;
              v89 = v225;
              v14[2] = v224;
              v14[3] = v89;
              if ((*a3)((a1 + 32 * (v12 >> 1)), v14 - 2))
              {
                v90 = v14[-1];
                v224 = *v42;
                v225 = v90;
                v91 = v14[1];
                *v42 = *v14;
                v14[-1] = v91;
                v92 = v225;
                *v14 = v224;
                v14[1] = v92;
              }
            }

            v99 = *(a1 + 16);
            v224 = *a1;
            v225 = v99;
            v100 = v14[1];
            *a1 = *v14;
            *(a1 + 16) = v100;
            v101 = v225;
            *v14 = v224;
            v14[1] = v101;
            goto LABEL_58;
          }

          v20 = v15(n128_u64, (n128_u64 + 32 * (v12 >> 1)));
          v21 = (*a3)(a2 - 2, n128_u64);
          if (v20)
          {
            if (v21)
            {
              v22 = v14[1];
              v224 = *v14;
              v225 = v22;
              v23 = a2[-1];
              *v14 = *v10;
              v14[1] = v23;
LABEL_35:
              v60 = v225;
              *v10 = v224;
              a2[-1] = v60;
              goto LABEL_58;
            }

            v55 = v14[1];
            v224 = *v14;
            v225 = v55;
            v56 = *(n128_u64 + 16);
            *v14 = *n128_u64;
            v14[1] = v56;
            v57 = v225;
            *n128_u64 = v224;
            *(n128_u64 + 16) = v57;
            if ((*a3)(a2 - 2, n128_u64))
            {
              v58 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v58;
              v59 = a2[-1];
              *n128_u64 = *v10;
              *(n128_u64 + 16) = v59;
              goto LABEL_35;
            }
          }

          else if (v21)
          {
            v30 = *(n128_u64 + 16);
            v224 = *n128_u64;
            v225 = v30;
            v31 = a2[-1];
            *n128_u64 = *v10;
            *(n128_u64 + 16) = v31;
            v32 = v225;
            *v10 = v224;
            a2[-1] = v32;
            if ((*a3)(n128_u64, (n128_u64 + 32 * (v12 >> 1))))
            {
              v33 = v14[1];
              v224 = *v14;
              v225 = v33;
              v34 = *(n128_u64 + 16);
              *v14 = *n128_u64;
              v14[1] = v34;
              v35 = v225;
              *n128_u64 = v224;
              *(n128_u64 + 16) = v35;
            }
          }

LABEL_58:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 32), a1))
          {
            break;
          }

          v114 = *(a1 + 16);
          v222 = *a1;
          v223 = v114;
          if ((*a3)(&v222, a2 - 2))
          {
            n128_u64 = a1;
            do
            {
              n128_u64 += 32;
            }

            while (((*a3)(&v222, n128_u64) & 1) == 0);
          }

          else
          {
            v115 = (a1 + 32);
            do
            {
              n128_u64 = v115;
              if (v115 >= a2)
              {
                break;
              }

              v116 = (*a3)(&v222, v115);
              v115 = (n128_u64 + 32);
            }

            while (!v116);
          }

          v117 = a2;
          if (n128_u64 < a2)
          {
            v117 = a2;
            do
            {
              v117 -= 2;
            }

            while (((*a3)(&v222, v117) & 1) != 0);
          }

          while (n128_u64 < v117)
          {
            v118 = *(n128_u64 + 16);
            v224 = *n128_u64;
            v225 = v118;
            v119 = v117[1];
            *n128_u64 = *v117;
            *(n128_u64 + 16) = v119;
            v120 = v225;
            *v117 = v224;
            v117[1] = v120;
            do
            {
              n128_u64 += 32;
            }

            while (!(*a3)(&v222, n128_u64));
            do
            {
              v117 -= 2;
            }

            while (((*a3)(&v222, v117) & 1) != 0);
          }

          v121 = (n128_u64 - 32);
          if (n128_u64 - 32 != a1)
          {
            v122 = *(n128_u64 - 16);
            *a1 = *v121;
            *(a1 + 16) = v122;
          }

          a5 = 0;
          a6.n128_u64[0] = v222.n128_u64[0];
          v123 = v223;
          *v121 = v222;
          *(n128_u64 - 16) = v123;
        }

        v102 = *(a1 + 16);
        v222 = *a1;
        v223 = v102;
        v103 = a1;
        do
        {
          v104 = v103;
          v103 += 2;
        }

        while (((*a3)(v103, &v222) & 1) != 0);
        v105 = a2;
        if (v104 == a1)
        {
          v105 = a2;
          do
          {
            if (v103 >= v105)
            {
              break;
            }

            v105 -= 2;
          }

          while (((*a3)(v105, &v222) & 1) == 0);
        }

        else
        {
          do
          {
            v105 -= 2;
          }

          while (!(*a3)(v105, &v222));
        }

        if (v103 < v105)
        {
          v106 = v103;
          v107 = v105;
          do
          {
            v109 = v106[1];
            v224 = *v106;
            v108 = v224;
            v225 = v109;
            v110 = v107[1];
            *v106 = *v107;
            v106[1] = v110;
            *v107 = v108;
            v107[1] = v109;
            do
            {
              v104 = v106;
              v106 += 2;
            }

            while (((*a3)(v106, &v222) & 1) != 0);
            do
            {
              v107 -= 2;
            }

            while (!(*a3)(v107, &v222));
          }

          while (v106 < v107);
        }

        if (v104 != a1)
        {
          v111 = v104[1];
          *a1 = *v104;
          *(a1 + 16) = v111;
        }

        v112 = v223;
        *v104 = v222;
        v104[1] = v112;
        if (v103 >= v105)
        {
          break;
        }

LABEL_79:
        std::__introsort<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,false>(a1, v104, a3, a4, a5 & 1);
        a5 = 0;
        n128_u64 = v104[2].n128_u64;
      }

      v113 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*>(a1, v104, a3);
      n128_u64 = v104[2].n128_u64;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*>(v104 + 2, a2, a3))
      {
        break;
      }

      if (!v113)
      {
        goto LABEL_79;
      }
    }

    a2 = v104;
    if (!v113)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

uint64_t ausdk::AUBase::GetElementOrError(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 3)
  {
    v4 = this + 48 * a2 + 32;
  }

  else
  {
    v4 = (*(*this + 408))(this);
    if (!v4)
    {
      return 4294956430;
    }
  }

  return ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v4, a3);
}

__n128 std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = *a1;
      v14 = a1[1];
      v16 = a3[1];
      *a1 = *a3;
      a1[1] = v16;
LABEL_9:
      *a3 = v15;
      a3[1] = v14;
      goto LABEL_10;
    }

    v24 = *a1;
    v23 = a1[1];
    v25 = a2[1];
    *a1 = *a2;
    a1[1] = v25;
    *a2 = v24;
    a2[1] = v23;
    if ((*a6)(a3, a2))
    {
      v15 = *a2;
      v14 = a2[1];
      v26 = a3[1];
      *a2 = *a3;
      a2[1] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v18 = *a2;
    v17 = a2[1];
    v19 = a3[1];
    *a2 = *a3;
    a2[1] = v19;
    *a3 = v18;
    a3[1] = v17;
    if ((*a6)(a2, a1))
    {
      v21 = *a1;
      v20 = a1[1];
      v22 = a2[1];
      *a1 = *a2;
      a1[1] = v22;
      *a2 = v21;
      a2[1] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v28 = *a3;
    v27 = a3[1];
    v29 = a4[1];
    *a3 = *a4;
    a3[1] = v29;
    *a4 = v28;
    a4[1] = v27;
    if ((*a6)(a3, a2))
    {
      v31 = *a2;
      v30 = a2[1];
      v32 = a3[1];
      *a2 = *a3;
      a2[1] = v32;
      *a3 = v31;
      a3[1] = v30;
      if ((*a6)(a2, a1))
      {
        v34 = *a1;
        v33 = a1[1];
        v35 = a2[1];
        *a1 = *a2;
        a1[1] = v35;
        *a2 = v34;
        a2[1] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v38 = *a4;
    v37 = a4[1];
    v39 = a5[1];
    *a4 = *a5;
    a4[1] = v39;
    *a5 = v38;
    a5[1] = v37;
    if ((*a6)(a4, a3))
    {
      v41 = *a3;
      v40 = a3[1];
      v42 = a4[1];
      *a3 = *a4;
      a3[1] = v42;
      *a4 = v41;
      a4[1] = v40;
      if ((*a6)(a3, a2))
      {
        v44 = *a2;
        v43 = a2[1];
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *a3 = v44;
        a3[1] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = *a1;
          result = a1[1];
          v47 = a2[1];
          *a1 = *a2;
          a1[1] = v47;
          *a2 = v46;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = a2 - 2;
      v8 = (*a3)(a1 + 2, a1);
      v9 = (*a3)(v7, a1 + 2);
      if (v8)
      {
        if (!v9)
        {
          v41 = *a1;
          v40 = a1[1];
          v42 = a1[3];
          *a1 = a1[2];
          a1[1] = v42;
          a1[2] = v41;
          a1[3] = v40;
          if (!(*a3)(v7, a1 + 2))
          {
            return 1;
          }

          v11 = a1[2];
          v10 = a1[3];
          v43 = v7[1];
          a1[2] = *v7;
          a1[3] = v43;
          goto LABEL_13;
        }

LABEL_12:
        v11 = *a1;
        v10 = a1[1];
        v12 = v7[1];
        *a1 = *v7;
        a1[1] = v12;
LABEL_13:
        *v7 = v11;
        v7[1] = v10;
        return 1;
      }

      if (!v9)
      {
        return 1;
      }

      v26 = a1[2];
      v25 = a1[3];
      v27 = v7[1];
      a1[2] = *v7;
      a1[3] = v27;
      *v7 = v26;
      v7[1] = v25;
LABEL_50:
      if ((*a3)(a1 + 2, a1))
      {
        v68 = *a1;
        v67 = a1[1];
        v69 = a1[3];
        *a1 = a1[2];
        a1[1] = v69;
        a1[2] = v68;
        a1[3] = v67;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
    }

    v19 = a2 - 2;
    v20 = (*a3)(a1 + 2, a1);
    v21 = (*a3)(a1 + 4, a1 + 2);
    if ((v20 & 1) == 0)
    {
      if (v21)
      {
        v35 = a1[2];
        v34 = a1[3];
        v36 = a1[5];
        a1[2] = a1[4];
        a1[3] = v36;
        a1[4] = v35;
        a1[5] = v34;
        if ((*a3)(a1 + 2, a1))
        {
          v38 = *a1;
          v37 = a1[1];
          v39 = a1[3];
          *a1 = a1[2];
          a1[1] = v39;
          a1[2] = v38;
          a1[3] = v37;
        }
      }

      goto LABEL_47;
    }

    if (v21)
    {
      v23 = *a1;
      v22 = a1[1];
      v24 = a1[5];
      *a1 = a1[4];
      a1[1] = v24;
    }

    else
    {
      v58 = *a1;
      v57 = a1[1];
      v59 = a1[3];
      *a1 = a1[2];
      a1[1] = v59;
      a1[2] = v58;
      a1[3] = v57;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_47;
      }

      v23 = a1[2];
      v22 = a1[3];
      v60 = a1[5];
      a1[2] = a1[4];
      a1[3] = v60;
    }

    a1[4] = v23;
    a1[5] = v22;
LABEL_47:
    if (!(*a3)(v19, a1 + 4))
    {
      return 1;
    }

    v62 = a1[4];
    v61 = a1[5];
    v63 = v19[1];
    a1[4] = *v19;
    a1[5] = v63;
    *v19 = v62;
    v19[1] = v61;
    if (!(*a3)(a1 + 4, a1 + 2))
    {
      return 1;
    }

    v65 = a1[2];
    v64 = a1[3];
    v66 = a1[5];
    a1[2] = a1[4];
    a1[3] = v66;
    a1[4] = v65;
    a1[5] = v64;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    if (!(*a3)(a2 - 2, a1))
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = a1 + 4;
  v14 = (*a3)(a1 + 2, a1);
  v15 = (*a3)(a1 + 4, a1 + 2);
  if (v14)
  {
    if (v15)
    {
      v17 = *a1;
      v16 = a1[1];
      v18 = a1[5];
      *a1 = *v13;
      a1[1] = v18;
    }

    else
    {
      v45 = *a1;
      v44 = a1[1];
      v46 = a1[3];
      *a1 = a1[2];
      a1[1] = v46;
      a1[2] = v45;
      a1[3] = v44;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_33;
      }

      v17 = a1[2];
      v16 = a1[3];
      v47 = a1[5];
      a1[2] = *v13;
      a1[3] = v47;
    }

    *v13 = v17;
    a1[5] = v16;
  }

  else if (v15)
  {
    v29 = a1[2];
    v28 = a1[3];
    v30 = a1[5];
    a1[2] = *v13;
    a1[3] = v30;
    *v13 = v29;
    a1[5] = v28;
    if ((*a3)(a1 + 2, a1))
    {
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[3];
      *a1 = a1[2];
      a1[1] = v33;
      a1[2] = v32;
      a1[3] = v31;
    }
  }

LABEL_33:
  v48 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v49 = 0;
  v50 = 0;
  while (1)
  {
    if ((*a3)(v48, v13))
    {
      v51 = v48[1];
      v71 = *v48;
      v72 = v51;
      v52 = v49;
      while (1)
      {
        v53 = a1 + v52;
        v54 = *(&a1[5] + v52);
        *(v53 + 96) = *(a1 + v52 + 64);
        *(v53 + 112) = v54;
        if (v52 == -64)
        {
          break;
        }

        v52 -= 32;
        if (((*a3)(&v71, (v53 + 32)) & 1) == 0)
        {
          v55 = (a1 + v52 + 96);
          goto LABEL_41;
        }
      }

      v55 = a1;
LABEL_41:
      v56 = v72;
      *v55 = v71;
      v55[1] = v56;
      if (++v50 == 8)
      {
        return &v48[2] == a2;
      }
    }

    v13 = v48;
    v49 += 32;
    v48 += 2;
    if (v48 == a2)
    {
      return 1;
    }
  }
}

uint64_t ausdk::AUBase::GetChannelLayoutTags(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  v5 = *(*ausdk::AUScope::GetIOElement(Scope, a3) + 80);

  return v5();
}

uint64_t ausdk::AUScope::GetIOElement(ausdk::AUScope *this, unsigned int a2)
{
  Element = ausdk::AUScope::GetElement(this, a2);
  if (!Element || (result = (*(*Element + 48))(Element)) == 0)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t ausdk::AUBase::RemoveAudioChannelLayout(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  IOElement = ausdk::AUScope::GetIOElement(Scope, a3);
  v7 = 0;
  result = (*(*IOElement + 96))(IOElement, 0, &v7);
  if (result)
  {
    return (*(*IOElement + 104))(IOElement);
  }

  return result;
}

uint64_t ausdk::AUBase::SetAudioChannelLayout(ausdk::AUBase *this, uint64_t a2, uint64_t a3, const AudioChannelLayout *a4)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  IOElement = ausdk::AUScope::GetIOElement(Scope, a3);
  if (a4->mChannelLayoutTag == 0x10000)
  {
    v11 = vcnt_s8(a4->mChannelBitmap);
    v11.i16[0] = vaddlv_u8(v11);
    mChannelLayoutTag = v11.i32[0];
  }

  else if (a4->mChannelLayoutTag)
  {
    mChannelLayoutTag = a4->mChannelLayoutTag;
  }

  else
  {
    mChannelLayoutTag = a4->mNumberChannelDescriptions;
  }

  if (IOElement[27] != mChannelLayoutTag)
  {
    return 4294956445;
  }

  v17 = 0uLL;
  v18 = 0;
  (*(*this + 552))(&v17, this, a2, a3);
  v12 = v17;
  if (v17 == *(&v17 + 1))
  {
    v15 = 4294956417;
  }

  else
  {
    v13 = v17;
    while (*v13 && *v13 != a4->mChannelLayoutTag)
    {
      if (++v13 == *(&v17 + 1))
      {
        goto LABEL_19;
      }
    }

    if (v13 != *(&v17 + 1))
    {
      v15 = (*(*IOElement + 88))(IOElement, a4);
      v12 = v17;
      goto LABEL_20;
    }

LABEL_19:
    v15 = 4294956445;
  }

LABEL_20:
  if (v12)
  {
    *(&v17 + 1) = v12;
    operator delete(v12);
  }

  return v15;
}

void sub_1DE0842A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::GetAudioChannelLayout(ausdk::AUBase *this, unsigned int a2, unsigned int a3, AudioChannelLayout *a4, BOOL *a5)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  v7 = *(*ausdk::AUScope::GetIOElement(Scope, a3) + 96);

  return v7();
}

uint64_t ausdk::AUBase::CanSetMaxFrames(ausdk::AUBase *this)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  else
  {
    return 0;
  }
}

uint64_t ausdk::AUBase::SetMaxFramesPerSlice(uint64_t this, int a2)
{
  if (*(this + 336) != a2)
  {
    v3 = this;
    *(this + 336) = a2;
    if (*(this + 432))
    {
      (*(*this + 496))(this);
    }

    v4 = *(*v3 + 432);

    return v4(v3, 14, 0, 0);
  }

  return this;
}

uint64_t ausdk::AUBase::DeallocateIOBuffers(uint64_t this)
{
  if (*(this + 432) == 1)
  {
    v1 = this;
    v2 = *(this + 168);
    if (v2)
    {
      LODWORD(v3) = (*(*v2 + 24))(v2);
    }

    else
    {
      v3 = (*(v1 + 152) - *(v1 + 144)) >> 3;
    }

    if (v3)
    {
      v4 = 0;
      while (1)
      {
        Element = ausdk::AUScope::GetElement((v1 + 128), v4);
        if (!Element)
        {
          break;
        }

        v6 = Element;
        if (*(Element + 152))
        {
          (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
          *(v6 + 152) = 0;
        }

        *(v6 + 160) = 0;
        *(v6 + 144) = 0;
        if (v3 == ++v4)
        {
          goto LABEL_11;
        }
      }

LABEL_22:
      ausdk::Throw(0xFFFFD583);
    }

LABEL_11:
    this = *(v1 + 120);
    if (this)
    {
      this = (*(*this + 24))(this);
      LODWORD(v7) = this;
      if (!this)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = (*(v1 + 104) - *(v1 + 96)) >> 3;
      if (!v7)
      {
LABEL_20:
        *(v1 + 432) = 0;
        return this;
      }
    }

    v8 = 0;
    while (1)
    {
      this = ausdk::AUScope::GetElement((v1 + 80), v8);
      if (!this)
      {
        goto LABEL_22;
      }

      v9 = this;
      if (*(this + 152))
      {
        this = (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
        *(v9 + 152) = 0;
      }

      *(v9 + 160) = 0;
      *(v9 + 144) = 0;
      if (v7 == ++v8)
      {
        goto LABEL_20;
      }
    }
  }

  return this;
}

uint64_t ausdk::AUBase::ReallocateBuffers(ausdk::AUBase *this)
{
  ausdk::AUBase::CreateElements(this);
  v2 = *(this + 21);
  if (!v2)
  {
    v3 = (*(this + 19) - *(this + 18)) >> 3;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_5:
    v4 = 0;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 128), v4);
      if (!Element)
      {
        break;
      }

      (*(*Element + 64))(Element, 0);
      if (v3 == ++v4)
      {
        goto LABEL_8;
      }
    }

LABEL_16:
    ausdk::Throw(0xFFFFD583);
  }

  LODWORD(v3) = (*(*v2 + 24))(v2);
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_8:
  result = *(this + 15);
  if (result)
  {
    result = (*(*result + 24))(result);
    LODWORD(v7) = result;
    if (!result)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v7 = (*(this + 13) - *(this + 12)) >> 3;
  if (v7)
  {
LABEL_12:
    v8 = 0;
    do
    {
      v9 = ausdk::AUScope::GetElement((this + 80), v8);
      if (!v9)
      {
        goto LABEL_16;
      }

      result = (*(*v9 + 64))(v9, 0);
    }

    while (v7 != ++v8);
  }

LABEL_15:
  *(this + 432) = 1;
  return result;
}

uint64_t ausdk::AUBase::CreateElements(uint64_t this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v1 = this;
    ausdk::AUScope::Initialize((this + 80), this, 1, *(this + 20));
    ausdk::AUScope::Initialize((v1 + 128), v1, 2, *(v1 + 24));
    ausdk::AUScope::Initialize((v1 + 176), v1, 3, *(v1 + 28));
    this = (*(*v1 + 48))(v1);
    *(v1 + 16) = 1;
  }

  return this;
}

uint64_t ausdk::AUBase::PropertyChanged(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 408);
  v5 = *(this + 416);
  if (v4 != v5)
  {
    v9 = this;
    do
    {
      if (*v4 == a2)
      {
        this = (*(v4 + 8))(*(v4 + 16), *(v9 + 8), a2, a3, a4);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return this;
}

void ausdk::AUBase::CreateElement(ausdk::AUBase *this, int a2)
{
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (a2 == 2)
    {
      operator new();
    }

LABEL_9:
    ausdk::Throw(0xFFFFD58ELL);
  }

  operator new();
}

uint64_t ausdk::AUBase::ChangeStreamFormat(ausdk::AUBase *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *__s2, const AudioStreamBasicDescription *__s1)
{
  if (memcmp(__s1, __s2, 0x28uLL))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 80;
      }

      else
      {
        if (a2 != 2)
        {
          ausdk::Throw(0xFFFFD58ELL);
        }

        v9 = 128;
      }

      v10 = a3;
    }

    else
    {
      v10 = 0;
      v9 = 128;
    }

    IOElement = ausdk::AUScope::GetIOElement((this + v9), v10);
    (*(*IOElement + 56))(IOElement, __s1);
    (*(*this + 432))(this, 8, a2, a3);
  }

  return 0;
}

__n128 ausdk::AUBase::GetStreamFormat@<Q0>(ausdk::AUBase *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    a3 = 0;
LABEL_7:
    v5 = 128;
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      ausdk::Throw(0xFFFFD58ELL);
    }

    goto LABEL_7;
  }

  v5 = 80;
LABEL_8:
  IOElement = ausdk::AUScope::GetIOElement((this + v5), a3);
  result = *(IOElement + 80);
  v8 = *(IOElement + 96);
  *a4 = result;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(IOElement + 112);
  return result;
}

BOOL ausdk::AUBase::ValidFormat(ausdk::AUBase *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    return (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  return result;
}

uint64_t ausdk::AUBase::NewCustomPresetSet(CFTypeRef *this, const AUPreset *a2)
{
  v4 = (this + 45);
  CFRelease(this[46]);
  *v4 = *a2;
  CFRetain(this[46]);
  return 0;
}

uint64_t ausdk::AUBase::RestoreState(OpaqueAudioComponentInstance **this, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v42, this[1]);
  if (CFDictionaryContainsKey(cf, @"part"))
  {
    return 4294956445;
  }

  Value = CFDictionaryGetValue(cf, @"version");
  if (!Value)
  {
    return 4294956445;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  valuePtr = 0;
  CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr)
  {
    return 4294956445;
  }

  v9 = CFDictionaryGetValue(cf, @"subtype");
  if (!v9)
  {
    return 4294956445;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr != HIDWORD(v42))
  {
    return 4294956445;
  }

  v12 = CFDictionaryGetValue(cf, @"manufacturer");
  if (!v12)
  {
    return 4294956445;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr != v43)
  {
    return 4294956445;
  }

  v15 = CFDictionaryGetValue(cf, @"data");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v16);
      Length = CFDataGetLength(v16);
      if (Length >= 1)
      {
        v20 = &BytePtr[Length];
        do
        {
          Scope = ausdk::AUBase::GetScope(this, bswap32(*BytePtr));
          BytePtr = ausdk::AUScope::RestoreState(Scope, BytePtr + 4);
        }

        while (BytePtr < v20);
      }
    }
  }

  v22 = CFDictionaryGetValue(cf, @"name");
  v23 = this[46];
  if (v23)
  {
    CFRelease(v23);
  }

  if (!v22 || (v24 = CFGetTypeID(v22), v24 != CFStringGetTypeID()))
  {
    v22 = @"Untitled";
  }

  this[46] = v22;
  *(this + 90) = -1;
  CFRetain(v22);
  (*(*this + 54))(this, 36, 0, 0);
  v25 = CFDictionaryGetValue(cf, @"render-quality");
  if (v25)
  {
    v26 = v25;
    v27 = CFGetTypeID(v25);
    if (v27 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
      ausdk::AUBase::DispatchSetProperty(this, 26, 0, 0, &valuePtr, 4);
    }
  }

  result = CFDictionaryGetValue(cf, @"element-name");
  if (result)
  {
    v28 = result;
    v29 = CFGetTypeID(result);
    if (v29 == CFDictionaryGetTypeID())
    {
      v30 = 0;
      do
      {
        v31 = CFStringCreateWithFormat(0, 0, @"%u", v30);
        v32 = CFDictionaryGetValue(v28, v31);
        if (v32)
        {
          v33 = v32;
          v34 = CFGetTypeID(v32);
          if (v34 == CFDictionaryGetTypeID())
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v35 = ausdk::AUBase::GetScope(this, v30);
            ausdk::AUScope::RestoreElementNames(&v38, v35, v33);
            v36 = v38;
            v37 = v39;
            if (v38 != v39)
            {
              do
              {
                (*(*this + 54))(this, 30, v30, *v36++);
              }

              while (v36 != v37);
              v36 = v38;
            }

            if (v36)
            {
              v39 = v36;
              operator delete(v36);
            }
          }
        }

        CFRelease(v31);
        result = 0;
        v30 = (v30 + 1);
      }

      while (v30 != 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1DE084F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::DispatchSetProperty(const void **this, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *__s2, uint64_t a6)
{
  v6 = a6;
  if (a2 <= 22)
  {
    if (a2 > 7)
    {
      if (a2 > 13)
      {
        if (a2 == 14)
        {
          if (a6 == 4)
          {
            v12 = (*(*this + 65))(this);
            if (!v12)
            {
              (*(*this + 64))(this, __s2->n128_u32[0]);
            }

            return v12;
          }

          return 4294956445;
        }

        if (a2 == 19)
        {
          if (a6 >= 0xC)
          {
            v17 = a6;
            if (20 * __s2->n128_u32[2] + 12 <= a6)
            {
              __s1 = 0uLL;
              v34.n128_u64[0] = 0;
              if ((a6 & 0x1F) != 0)
              {
                v18 = (a6 >> 5) + 1;
              }

              else
              {
                v18 = a6 >> 5;
              }

              std::vector<AudioChannelLayout>::vector[abi:ne200100](&__s1, v18);
              memcpy(__s1.n128_u64[0], __s2, v17);
              v12 = (*(*this + 67))(this, a3, a4, __s1.n128_u64[0]);
              if (!v12)
              {
                (*(*this + 54))(this, 19, a3, a4);
              }

              if (__s1.n128_u64[0])
              {
                __s1.n128_u64[1] = __s1.n128_u64[0];
                operator delete(__s1.n128_u64[0]);
              }

              return v12;
            }
          }

          return 4294956445;
        }

        goto LABEL_95;
      }

      if (a2 != 8)
      {
        if (a2 == 11)
        {
          if (a6 == 4)
          {
            if ((*(*this + 27))(this, a3))
            {
              v12 = (*(*this + 28))(this, a3, __s2->n128_u32[0]);
              if (!v12)
              {
                (*(*this + 54))(this, 11, a3, a4);
              }

              return v12;
            }

            return 4294956431;
          }

          return 4294956445;
        }

LABEL_95:
        v12 = (*(*this + 12))(this, a2, a3, a4, __s2, a6);
        if (!v12)
        {
          (*(*this + 54))(this, a2, a3, a4);
        }

        return v12;
      }

      if (a6 < 0x24)
      {
        return 4294956445;
      }

      Scope = ausdk::AUBase::GetScope(this, a3);
      if (ausdk::AUScope::GetElement(Scope, a4))
      {
        v21 = *__s2;
        v20 = __s2[1];
        __s1 = *__s2;
        v34 = v20;
        v35 = __s2[2].n128_u32[0];
        v21.n128_u64[0] = __s1.n128_u64[0];
        if (__s1.n128_f64[0] >= 0.0 && __s1.n128_f64[0] < 3000000.0 && v34.n128_u32[0] < 0xF4240 && v34.n128_u32[1] < 0xF4240 && v34.n128_u32[2] < 0xF4240 && v34.n128_u32[3] - 1 <= 0x3FF && v35 <= 0x400 && __s1.n128_u32[2] && (__s1.n128_u32[2] != 1819304813 || v34.n128_u64[0] == (v34.n128_u32[2] | 0x100000000)) && (*(*this + 48))(this, a3, a4, &__s1, v21))
        {
          v32 = 0;
          v30 = 0u;
          v31 = 0u;
          (*(*this + 49))(&v30, this, a3, a4);
          if (memcmp(&v30, &__s1, 0x28uLL))
          {
            if (ausdk::AUBase::IsStreamFormatWritable(this, a3, a4))
            {
              return (*(*this + 50))(this, a3, a4, &v30, &__s1);
            }

            return 4294956431;
          }

          return 0;
        }

        return 4294956428;
      }

      return 4294956419;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (a6 < 0x10)
        {
          return 4294956445;
        }

        __s1 = *__s2;
        return (*(*this + 29))(this, &__s1);
      }

      if (a2 != 2)
      {
        goto LABEL_95;
      }

      if (a6 != 8)
      {
        return 4294956445;
      }

      v15 = ausdk::AUBase::GetScope(this, a3);
      if (!ausdk::AUScope::GetElement(v15, a4))
      {
        return 4294956419;
      }

      v35 = 0;
      __s1 = 0u;
      v34 = 0u;
      (*(*this + 49))(&__s1, this, a3, a4);
      v32 = v35;
      v30 = __s1;
      v31 = v34;
      v30.n128_u64[0] = __s2->n128_u64[0];
      if (!(*(*this + 48))(this, a3, a4, &v30))
      {
        return 4294956428;
      }

      if (!memcmp(&__s1, &v30, 0x28uLL))
      {
        return 0;
      }

      if (!ausdk::AUBase::IsStreamFormatWritable(this, a3, a4))
      {
        return 4294956431;
      }

      return (*(*this + 50))(this, a3, a4, &__s1, &v30);
    }

    if (a6 != 8)
    {
      return 4294956445;
    }

    if (!a3)
    {
      v26 = *(*this + 36);

      return v26();
    }

    return 4294956430;
  }

  if (a2 > 29)
  {
    if (a2 > 50)
    {
      if (a2 == 51)
      {
        if ((a3 - 1) <= 1)
        {
          v25 = ausdk::AUBase::GetScope(this, a3);
          if (ausdk::AUScope::GetElement(v25, a4))
          {
            if (v6 == 4)
            {
              if (*(this + 17))
              {
                return 4294956447;
              }

              v29 = ausdk::AUBase::GetScope(this, a3);
              v12 = 0;
              *(ausdk::AUScope::GetIOElement(v29, a4) + 168) = __s2->n128_u32[0] != 0;
              return v12;
            }

            return 4294956445;
          }

          return 4294956419;
        }
      }

      else
      {
        if (a2 != 54)
        {
          goto LABEL_95;
        }

        if (!a3)
        {
          if (a6 != 8)
          {
            return 4294956445;
          }

          ausdk::Owned<__CFString const*>::operator=(this + 58, __s2->n128_u64[0]);
          (*(*this + 54))(this, 54, 0, a4);
          return 0;
        }
      }
    }

    else
    {
      if (a2 == 30)
      {
        v22 = ausdk::AUBase::GetScope(this, a3);
        if (ausdk::AUScope::GetElement(v22, a4))
        {
          if (v6 != 8)
          {
            return 4294956445;
          }

          v23 = ausdk::AUBase::GetScope(this, a3);
          Element = ausdk::AUScope::GetElement(v23, a4);
          ausdk::Owned<__CFString const*>::operator=((Element + 72), __s2->n128_u64[0]);
          (*(*this + 54))(this, 30, a3, a4);
          return 0;
        }

        return 4294956419;
      }

      if (a2 != 36)
      {
        goto LABEL_95;
      }

      if (a6 != 16)
      {
        return 4294956445;
      }

      if (!a3)
      {
        v13 = __s2->n128_u64[1];
        __s1.n128_u64[0] = __s2->n128_u64[0];
        __s1.n128_u64[1] = v13;
        if ((__s1.n128_u32[0] & 0x80000000) != 0)
        {
          if (!v13)
          {
            return 4294956445;
          }

          v14 = (*(*this + 41))(this, &__s1);
          if (v14)
          {
            return v14;
          }
        }

        else
        {
          v14 = (*(*this + 40))(this, &__s1);
          if (v14)
          {
            return v14;
          }
        }

        (*(*this + 54))(this, 36, 0, a4);
        return 0;
      }
    }

    return 4294956430;
  }

  if (a2 != 23)
  {
    if (a2 == 25)
    {
      if (a6 != 8)
      {
        return 4294956445;
      }

      if (!a3)
      {
        ausdk::Owned<__CFString const*>::operator=(this + 65, __s2->n128_u64[0]);
        (*(*this + 54))(this, 25, 0, a4);
        return 0;
      }
    }

    else
    {
      if (a2 != 27)
      {
        goto LABEL_95;
      }

      if (!a3)
      {
        if (a6 >= 0x28)
        {
          v16 = 40;
        }

        else
        {
          v16 = a6;
        }

        v12 = memcmp(this + 60, __s2, v16);
        *(this + 30) = 0u;
        *(this + 31) = 0u;
        this[64] = 0;
        memcpy(this + 60, __s2, v16);
        if (!v12)
        {
          return v12;
        }

        (*(*this + 54))(this, 27, 0, a4);
        return 0;
      }
    }

    return 4294956430;
  }

  if (a6 < 0x10)
  {
    return 4294956445;
  }

  v28 = *(*this + 30);

  return v28();
}

void sub_1DE0859B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::IsStreamFormatWritable(ausdk::AUBase *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (a2)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      Element = ausdk::AUScope::GetElement((this + 80), a3);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(Element + 172) == 1)
      {
        return 0;
      }
    }

    v8 = *(*v3 + 368);
    this = v3;
    v9 = a2;
    v10 = a3;
  }

  else
  {
    v8 = *(*this + 368);
    v9 = 2;
    v10 = 0;
  }

  return v8(this, v9, v10);
}

uint64_t ausdk::AUBase::SaveState(ausdk::AUBase *this, ausdk **a2)
{
  *&v25[1] = 0;
  v26 = 0;
  v27 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v25[1], *(this + 1));
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ausdk::AddNumToDictionary(theDict, @"version", 0);
  ausdk::AddNumToDictionary(theDict, @"type", v25[1]);
  ausdk::AddNumToDictionary(theDict, @"subtype", v25[2]);
  v25[0] = v26;
  ausdk::AddNumToDictionary(theDict, @"manufacturer", v26);
  Mutable = CFDataCreateMutable(0, 0);
  for (i = 0; i != 3; ++i)
  {
    Scope = ausdk::AUBase::GetScope(this, i);
    ausdk::AUScope::SaveState(Scope, Mutable);
  }

  (*(*this + 280))(this, Mutable);
  CFDictionarySetValue(theDict, @"data", Mutable);
  if (Mutable)
  {
    ausdk::Owned<__CFData *>::releaseRef(Mutable);
  }

  CFDictionarySetValue(theDict, @"name", *(this + 46));
  if (!(*(*this + 88))(this, 26, 0, 0, v25))
  {
    ausdk::AddNumToDictionary(theDict, @"render-quality", v25[0]);
  }

  v6 = 0;
  while (1)
  {
    v7 = ausdk::AUBase::GetScope(this, v6);
    if (ausdk::AUScope::HasElementWithName(v7))
    {
      break;
    }

    if (++v6 == 4)
    {
      goto LABEL_25;
    }
  }

  v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 0;
  v10 = MEMORY[0x1E695E9E8];
  do
  {
    v11 = ausdk::AUBase::GetScope(this, v9);
    if (ausdk::AUScope::HasElementWithName(v11))
    {
      v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], v10);
      for (j = 0; ; j = (j + 1))
      {
        v14 = *(v11 + 40);
        if (v14)
        {
          LODWORD(v15) = (*(*v14 + 24))(v14);
        }

        else
        {
          v15 = (*(v11 + 24) - *(v11 + 16)) >> 3;
        }

        if (j >= v15)
        {
          break;
        }

        v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v11, j);
        if (v17)
        {
          v18 = v16;
          if (*(v16 + 72))
          {
            v19 = CFStringCreateWithFormat(0, 0, @"%u", j);
            v20 = *(v18 + 72);
            ausdk::Owned<__CFString const*>::retainRef(v20);
            CFDictionarySetValue(v12, v19, v20);
            ausdk::Owned<__CFString const*>::releaseRef(v20);
            ausdk::Owned<__CFString const*>::releaseRef(v19);
          }
        }
      }

      v21 = CFStringCreateWithFormat(0, 0, @"%u", *(v11 + 8));
      CFDictionarySetValue(v8, v21, v12);
      ausdk::Owned<__CFString const*>::releaseRef(v21);
      ausdk::Owned<__CFDictionary *>::releaseRef(v12);
    }

    ++v9;
  }

  while (v9 != 4);
  CFDictionarySetValue(theDict, @"element-name", v8);
  ausdk::Owned<__CFDictionary *>::releaseRef(v8);
LABEL_25:
  *a2 = theDict;
  ausdk::Owned<__CFData *>::releaseRef(0);
  ausdk::Owned<__CFDictionary *>::releaseRef(0);
  return 0;
}

void sub_1DE085E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  ausdk::Owned<__CFDictionary *>::releaseRef(v12);
  ausdk::Owned<__CFData *>::releaseRef(0);
  ausdk::Owned<__CFDictionary *>::releaseRef(a12);
  _Unwind_Resume(a1);
}

void ausdk::AddNumToDictionary(ausdk *this, __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(this, a2, v5);
  CFRelease(v5);
}

void ausdk::Owned<__CFData *>::releaseRef(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t ausdk::AUBase::GetParameterList(ausdk::AUBase *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  v7 = *(Scope + 5);
  if (v7)
  {
    LODWORD(v8) = (*(*v7 + 24))(v7);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v8 = (*(Scope + 3) - *(Scope + 2)) >> 3;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    Element = ausdk::AUScope::GetElement(Scope, v10);
    v13 = (*(*Element + 16))(Element);
    if (v13 > v11)
    {
      v11 = v13;
      v9 = Element;
    }

    ++v10;
  }

  while (v8 != v10);
  if (a3 && v9)
  {
    (*(*v9 + 24))(v9, a3);
  }

LABEL_12:
  *a4 = v11;
  return 0;
}

uint64_t ausdk::AUBase::SetInputCallback(ausdk::AUBase *this, uint64_t a2, uint64_t a3, int (*a4)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a5)
{
  Element = ausdk::AUScope::GetElement((this + 80), a3);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  ausdk::AUInputElement::SetInputCallback(Element, a4, a5);
  (*(*this + 432))(this, a2, 1, a3);
  return 0;
}

uint64_t ausdk::AUBase::SetConnection(const void **this, const AudioUnitConnection *a2)
{
  Element = ausdk::AUScope::GetElement((this + 10), a2->destInputNumber);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = Element;
  sourceAudioUnit = a2->sourceAudioUnit;
  if (!a2->sourceAudioUnit)
  {
    goto LABEL_7;
  }

  v10 = 0;
  memset(outData, 0, sizeof(outData));
  ioDataSize = 40;
  result = AudioUnitGetProperty(sourceAudioUnit, 8u, 2u, a2->sourceOutputNumber, outData, &ioDataSize);
  if (!result)
  {
    result = ausdk::AUBase::DispatchSetProperty(this, 8, 1, a2->destInputNumber, outData, 40);
    if (!result)
    {
      if (a2->sourceAudioUnit)
      {
        *(v5 + 172) = 1;
        *(v5 + 192) = *a2;
        (*(*v5 + 64))(v5, 0);
LABEL_10:
        (*(*this + 54))(this, 1, 1, a2->destInputNumber);
        return 0;
      }

LABEL_7:
      *(v5 + 172) = 0;
      if (*(v5 + 152))
      {
        (*(ausdk::BufferAllocator::instance(void)::global + 3))();
        *(v5 + 152) = 0;
      }

      *(v5 + 160) = 0;
      *(v5 + 144) = 0;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t ausdk::AUBase::SetBusCount(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  Scope = ausdk::AUBase::GetScope(this, a2);
  ausdk::AUScope::SetNumberOfElements(Scope, a3);
  return 0;
}

uint64_t ausdk::AUBase::ScheduleParameter(ausdk::AUBase *this, const AudioUnitParameterEvent *a2, unsigned int a3)
{
  v6 = (*(*this + 160))(this);
  if (a3)
  {
    v7 = v6;
    v8 = a3;
    do
    {
      if (a2->eventType == kParameterEvent_Immediate)
      {
        (*(*this + 152))(this, a2->parameter, a2->scope, a2->element, a2->eventValues.immediate.bufferOffset, a2->eventValues.immediate.value);
      }

      if (v7)
      {
        v9 = *(this + 49);
        v10 = *(this + 50);
        if (v9 >= v10)
        {
          v13 = *(this + 48);
          v14 = (v9 - v13) >> 5;
          v15 = v14 + 1;
          if ((v14 + 1) >> 59)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v16 = v10 - v13;
          if (v16 >> 4 > v15)
          {
            v15 = v16 >> 4;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFE0)
          {
            v17 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](v17);
          }

          v18 = (32 * v14);
          eventValues = a2->eventValues;
          *v18 = *&a2->scope;
          v18[1] = eventValues;
          v12 = 32 * v14 + 32;
          v20 = *(this + 48);
          v21 = *(this + 49) - v20;
          v22 = 32 * v14 - v21;
          memcpy(v18 - v21, v20, v21);
          v23 = *(this + 48);
          *(this + 48) = v22;
          *(this + 49) = v12;
          *(this + 50) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          v11 = a2->eventValues;
          *v9 = *&a2->scope;
          v9[1] = v11;
          v12 = (v9 + 2);
        }

        *(this + 49) = v12;
      }

      ++a2;
      --v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t ausdk::AUBase::SetParameter(ausdk::AUBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  ElementOrError = ausdk::AUBase::GetElementOrError(this, a3, a4);
  if (v8)
  {
    v10 = 0;
    ausdk::AUElement::SetParameterOrError(&v10, ElementOrError, a5, a2, 0);
    ElementOrError = 0;
    if ((v10 & 0x100000000) == 0)
    {
      return v10;
    }
  }

  return ElementOrError;
}

uint64_t ausdk::AUBase::GetParameter(ausdk::AUBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  ElementOrError = ausdk::AUBase::GetElementOrError(this, a3, a4);
  if (v8)
  {
    v10 = 0;
    ausdk::AUElement::GetParameterOrError(&v10, ElementOrError, a2);
    if ((v10 & 0x100000000) != 0)
    {
      ElementOrError = 0;
      *a5 = v10;
    }

    else
    {
      return v10;
    }
  }

  return ElementOrError;
}

uint64_t ausdk::AUBase::RemoveRenderNotification(ausdk::AUBase *this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  v6 = ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::AllocNode(this + 224);
  *(v6 + 2) = 2;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = atomic_load(this + 29);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong(this + 29, &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

unint64_t *ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::AllocNode(uint64_t a1)
{
  do
  {
    v1 = atomic_load((a1 + 16));
    if (!v1)
    {
      operator new();
    }

    v2 = v1;
    atomic_compare_exchange_strong((a1 + 16), &v2, 0);
  }

  while (v2 != v1);
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
    do
    {
      v6 = atomic_load((a1 + 16));
      *v5 = v6;
      v7 = v6;
      atomic_compare_exchange_strong((a1 + 16), &v7, v3);
    }

    while (v7 != v6);
  }

  return v1;
}

uint64_t ausdk::AUBase::SetRenderNotification(ausdk::AUBase *this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  if (!a2)
  {
    return 4294967246;
  }

  *(this + 248) = 1;
  v6 = ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::AllocNode(this + 224);
  *(v6 + 2) = 1;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = atomic_load(this + 29);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong(this + 29, &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

uint64_t ausdk::AUBase::RemovePropertyListener(ausdk::AUBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4, int a5)
{
  v6 = *(this + 51);
  v5 = *(this + 52);
  if (v6 != v5)
  {
    while (*v6 != a2 || *(v6 + 8) != a3 || a5 && *(v6 + 16) != a4)
    {
      v6 += 24;
      if (v6 == v5)
      {
        return 0;
      }
    }

    if (v6 != v5)
    {
      v8 = (v6 + 24);
      if ((v6 + 24) != v5)
      {
        do
        {
          if (*v8 != a2 || *(v8 + 1) != a3 || a5 && *(v8 + 2) != a4)
          {
            v9 = *v8;
            *(v6 + 16) = *(v8 + 2);
            *v6 = v9;
            v6 += 24;
          }

          v8 = (v8 + 24);
        }

        while (v8 != v5);
        v5 = *(this + 52);
      }
    }

    if (v6 != v5)
    {
      *(this + 52) = v6;
    }
  }

  return 0;
}

uint64_t ausdk::AUBase::AddPropertyListener(ausdk::AUBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  v6 = *(this + 51);
  v7 = *(this + 52);
  if (v6 == v7 && 0xAAAAAAAAAAAAAAABLL * ((*(this + 53) - v6) >> 3) <= 0x1F)
  {
    operator new();
  }

  v8 = *(this + 53);
  if (v7 >= v8)
  {
    v10 = *(this + 51);
    v11 = v7 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 24 * v12;
    *v16 = a2;
    *(v16 + 4) = 0;
    *(v16 + 8) = a3;
    *(v16 + 16) = a4;
    v9 = 24 * v12 + 24;
    v17 = (24 * v12 - v11);
    memcpy(v17, v10, v11);
    *(this + 51) = v17;
    *(this + 52) = v9;
    *(this + 53) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 4) = 0;
    v9 = v7 + 24;
    *(v7 + 8) = a3;
    *(v7 + 16) = a4;
  }

  *(this + 52) = v9;
  return 0;
}

void ausdk::AUBase::PreDestructorInternal(ausdk::AUBase *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    (*(*v2 + 16))(*(this + 59));
  }

  v3.n128_f64[0] = ausdk::AUBase::DoCleanup(this);
  if (v2)
  {
    v4 = *(*v2 + 24);

    v4(v2, v3);
  }
}

void sub_1DE086A3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

double ausdk::AUBase::DoCleanup(ausdk::AUBase *this)
{
  if (*(this + 17))
  {
    (*(*this + 64))(this);
  }

  (*(*this + 504))(this);
  *(this + 41) = 0;
  result = 0.0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 280) = 0u;
  *(this + 34) = 0xFFEFFFFFFFFFFFFFLL;
  *(this + 17) = 0;
  return result;
}

uint64_t ausdk::AUBase::PostConstructorInternal(ausdk::AUBase *this)
{
  if (!*(this + 84))
  {
    (*(*this + 512))(this, 1156);
  }

  return ausdk::AUBase::CreateElements(this);
}

ausdk::AUBase *ausdk::AUBase::AUBase(ausdk::AUBase *this, OpaqueAudioComponentInstance *a2, int a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  *this = &unk_1F593A668;
  *(this + 1) = a2;
  ausdk::ComponentBase::GetComponentDescription(__str, a2);
  v7 = 0;
  *this = off_1F593AAF8;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 7) = 0;
  do
  {
    v8 = this + v7;
    *(v8 + 4) = 0;
    *(v8 + 10) = 0;
    *(v8 + 3) = 0uLL;
    *(v8 + 4) = 0uLL;
    v7 += 48;
  }

  while (v7 != 192);
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  info.__r_.__value_.__r.__words[0] = 0;
  mach_timebase_info(&info);
  LODWORD(v9) = HIDWORD(info.__r_.__value_.__r.__words[0]);
  LODWORD(v10) = info.__r_.__value_.__l.__data_;
  *(this + 43) = v9 / v10 * 1000000000.0;
  *(this + 44) = 0;
  *(this + 90) = -1;
  *(this + 46) = 0;
  *(this + 376) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 432) = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v37, *(this + 1));
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x20uLL, "AU (%p): ", *(this + 1));
  v11.i32[0] = bswap32(v37);
  v12 = vzip1_s8(v11, v11);
  v13 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v12, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v12, 0x2E002E002E002ELL);
  *(&v32.__r_.__value_.__s + 23) = 4;
  LODWORD(v32.__r_.__value_.__l.__data_) = vuzp1_s8(v13, v13).u32[0];
  v32.__r_.__value_.__s.__data_[4] = 0;
  v14 = strlen(__str);
  v15 = std::string::insert(&v32, 0, __str, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v33, 47);
  v17.i32[1] = HIDWORD(v33.__r_.__value_.__r.__words[0]);
  v34 = v33;
  memset(&v33, 0, sizeof(v33));
  v17.i32[0] = bswap32(HIDWORD(v37));
  v18 = vzip1_s8(v17, v17);
  v19 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v18, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v18, 0x2E002E002E002ELL);
  v31 = 4;
  *__s = vuzp1_s8(v19, v19).u32[0];
  __s[4] = 0;
  v20 = std::string::append(&v34, __s, 4uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v35, 47);
  v22.i32[1] = HIDWORD(v35.__r_.__value_.__r.__words[0]);
  info = v35;
  memset(&v35, 0, sizeof(v35));
  v22.i32[0] = bswap32(v38);
  v23 = vzip1_s8(v22, v22);
  v24 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v23, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v23, 0x2E002E002E002ELL);
  v29 = 4;
  *v28 = vuzp1_s8(v24, v24).u32[0];
  v28[4] = 0;
  v25 = std::string::append(&info, v28, 4uLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  *(this + 57) = *(&v25->__r_.__value_.__l + 2);
  *(this + 440) = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (v29 < 0)
  {
    operator delete(*v28);
  }

  if (SHIBYTE(info.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(info.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  *(this + 41) = 0;
  *(this + 312) = 0u;
  *(this + 296) = 0u;
  *(this + 280) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 34) = 0xFFEFFFFFFFFFFFFFLL;
  ausdk::AUScope::Initialize((this + 32), this, 0, 1);
  *(this + 90) = -1;
  *(this + 46) = @"Untitled";
  CFRetain(@"Untitled");
  return this;
}

void sub_1DE086F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v51 = v47[51];
  if (v51)
  {
    v47[52] = v51;
    operator delete(v51);
  }

  v52 = v47[48];
  if (v52)
  {
    v47[49] = v52;
    operator delete(v52);
  }

  ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::~AUThreadSafeList(v48);
  v53 = v47 + 24;
  v54 = -192;
  do
  {
    *(v49 - 96) = v53;
    std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100]((v49 - 96));
    v53 -= 6;
    v54 += 48;
  }

  while (v54);
  _Unwind_Resume(a1);
}

unint64_t *ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::~AUThreadSafeList(unint64_t *a1)
{
  for (i = atomic_load(a1); i; i = atomic_load(a1))
  {
    atomic_store(*i, a1);
    MEMORY[0x1E12BD160]();
  }

  for (j = atomic_load(a1 + 1); j; j = atomic_load(a1 + 1))
  {
    atomic_store(*j, a1 + 1);
    MEMORY[0x1E12BD160]();
  }

  for (k = atomic_load(a1 + 2); k; k = atomic_load(a1 + 2))
  {
    atomic_store(*k, a1 + 2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

void ausdk::AUBase::~AUBase(ausdk::AUBase *this)
{
  *this = off_1F593AAF8;
  v2 = *(this + 46);
  if (v2)
  {
    CFRelease(v2);
  }

  ausdk::Owned<__CFString const*>::releaseRef(*(this + 65));
  ausdk::Owned<__CFString const*>::releaseRef(*(this + 58));
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  v3 = *(this + 51);
  if (v3)
  {
    *(this + 52) = v3;
    operator delete(v3);
  }

  v4 = *(this + 48);
  if (v4)
  {
    *(this + 49) = v4;
    operator delete(v4);
  }

  ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::~AUThreadSafeList(this + 28);
  v5 = 192;
  do
  {
    v6 = (this + v5);
    std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 -= 48;
  }

  while (v5);
}

uint64_t ausdk::AUBase::DispatchGetPropertyInfo(ausdk::AUBase *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  switch(a2)
  {
    case 0:
    case 25:
    case 54:
      if (a3)
      {
        return 4294956430;
      }

      goto LABEL_3;
    case 1:
    case 23:
      if (a3 > 1)
      {
        return 4294956430;
      }

      goto LABEL_21;
    case 2:
      v18 = 8;
      goto LABEL_38;
    case 3:
      LODWORD(v23) = 0;
      v16 = (*(*this + 248))(this, a3, 0, &v23);
      if (v16)
      {
        return v16;
      }

      v19 = 4 * v23;
      goto LABEL_42;
    case 4:
      v16 = 0;
      v19 = 104;
      goto LABEL_42;
    case 8:
      v18 = 40;
LABEL_38:
      *a5 = v18;
      *a6 = ausdk::AUBase::IsStreamFormatWritable(this, a3, a4);
      goto LABEL_56;
    case 11:
      *a5 = 4;
      v16 = 0;
      *a6 = (*(*this + 216))(this, a3);
      return v16;
    case 12:
    case 61:
      if (!a3)
      {
        goto LABEL_5;
      }

      return 4294956430;
    case 13:
      if (a3)
      {
        return 4294956430;
      }

      v15 = (*(*this + 376))(this, 0);
      if (!v15)
      {
        return 4294956417;
      }

      v12 = 4 * v15;
      goto LABEL_24;
    case 14:
      if (a3)
      {
        return 4294956430;
      }

      v11 = 4;
      goto LABEL_55;
    case 16:
      v16 = (*(*this + 296))(this, a3, a4, 0);
      if (!v16)
      {
        goto LABEL_36;
      }

      return v16;
    case 19:
      *a6 = 0;
      v20 = (*(*this + 528))(this, a3, a4, 0, a6);
      *a5 = v20;
      if (v20)
      {
        return 0;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      (*(*this + 552))(&v23, this, a3, a4);
      if (v23 == v24)
      {
        v16 = 4294956417;
      }

      else
      {
        v16 = 4294956445;
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return v16;
    case 20:
      if (a3)
      {
        return 4294956430;
      }

      if ((*(*this + 360))(this))
      {
        goto LABEL_5;
      }

      return 4294956417;
    case 22:
      if (a3)
      {
        return 4294956430;
      }

      v12 = 4;
      goto LABEL_24;
    case 24:
      if (a3)
      {
        return 4294956430;
      }

      v17 = (*(*this + 312))(this, 0);
      if (v17)
      {
        return v17;
      }

LABEL_5:
      v12 = 8;
LABEL_24:
      *a5 = v12;
      *a6 = 0;
      goto LABEL_56;
    case 27:
      if (a3)
      {
        return 4294956430;
      }

      v11 = 40;
      goto LABEL_55;
    case 30:
LABEL_3:
      v11 = 8;
      goto LABEL_55;
    case 32:
      v23 = 0;
      v24 = 0;
      v25 = 0;
      (*(*this + 552))(&v23, this, a3, a4);
      v13 = v23;
      v14 = v24;
      if (v23 != v24)
      {
        *a5 = v24 - v23;
        *a6 = 0;
      }

      if (v13)
      {
        v24 = v13;
        operator delete(v13);
      }

      if (v13 == v14)
      {
        return 4294956417;
      }

      return 0;
    case 35:
      v12 = 16;
      goto LABEL_24;
    case 36:
      if (a3)
      {
        return 4294956430;
      }

LABEL_21:
      v11 = 16;
LABEL_55:
      *a5 = v11;
      *a6 = 1;
      goto LABEL_56;
    case 51:
      if ((a3 - 1) > 1)
      {
        return 4294956430;
      }

      *a6 = 1;
      *a5 = 4;
LABEL_56:
      Scope = ausdk::AUBase::GetScope(this, a3);
      if (ausdk::AUScope::GetElement(Scope, a4))
      {
        return 0;
      }

      else
      {
        return 4294956419;
      }

    case 53:
      v16 = 0;
LABEL_36:
      v19 = 8;
LABEL_42:
      *a5 = v19;
      *a6 = 0;
      return v16;
    default:
      return (*(*this + 80))(this);
  }
}

uint64_t ausdk::AUBase::DispatchGetProperty(ausdk::AUBase *this, int a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 0:
      __src[0] = 0;
      v9 = (*(*this + 272))(this, __src);
      goto LABEL_26;
    case 1:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 15:
    case 17:
    case 18:
    case 21:
    case 23:
    case 26:
    case 28:
    case 29:
    case 31:
    case 33:
    case 34:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 52:
      return (*(*this + 88))(this);
    case 2:
      (*(*this + 392))(__src, this, a3, a4);
      v10 = 0;
      goto LABEL_27;
    case 3:
      v33 = 0;
      v10 = (*(*this + 248))(this, a3, 0, &v33);
      if (!v10)
      {
        __src[0] = 0;
        __src[1] = 0;
        *&v35 = 0;
        std::vector<unsigned int>::vector[abi:ne200100](__src, v33);
        v10 = (*(*this + 248))(this, a3, __src[0], &v33);
        v27 = __src[0];
        if (!v10)
        {
          memcpy(a5, __src[0], __src[1] - __src[0]);
        }

        if (v27)
        {
          __src[1] = v27;
          operator delete(v27);
        }
      }

      return v10;
    case 4:
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *__src = 0u;
      v35 = 0u;
      v10 = (*(*this + 256))(this, a3, a4, __src);
      v21 = v39;
      a5[4] = v38;
      a5[5] = v21;
      *(a5 + 12) = v40;
      v22 = v35;
      *a5 = *__src;
      a5[1] = v22;
      v23 = v37;
      a5[2] = v36;
      a5[3] = v23;
      return v10;
    case 8:
      (*(*this + 392))(__src, this, a3, a4);
      v10 = 0;
      v25 = v35;
      *a5 = *__src;
      a5[1] = v25;
      *(a5 + 4) = v36;
      return v10;
    case 11:
      Scope = ausdk::AUBase::GetScope(this, a3);
      v18 = Scope[5];
      if (v18)
      {
        LODWORD(v19) = (*(*v18 + 24))(v18);
      }

      else
      {
        v19 = (Scope[3] - Scope[2]) >> 3;
      }

      v10 = 0;
      *a5 = v19;
      return v10;
    case 12:
      (*(*this + 344))(this);
      goto LABEL_48;
    case 13:
      __src[0] = 0;
      v28 = (*(*this + 376))(this, __src);
      if (v28)
      {
        v29 = __src[0] == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        memcpy(a5, __src[0], 4 * v28);
      }

      return 0;
    case 14:
      v10 = 0;
      v24 = *(this + 84);
      goto LABEL_50;
    case 16:
      __src[0] = 0;
      v9 = (*(*this + 296))(this, a3, a4, __src);
      goto LABEL_26;
    case 19:
      LOBYTE(__src[0]) = 0;
      if (!(*(*this + 528))(this, a3, a4, a5, __src))
      {
        return 4294956417;
      }

      return 0;
    case 20:
      if (!(*(*this + 360))(this))
      {
        return 4294956417;
      }

      v30 = (*(*this + 352))(this);
LABEL_48:
      v10 = 0;
      *a5 = v30;
      return v10;
    case 22:
      v10 = 0;
      *a5 = *(this + 85);
      *(this + 85) = 0;
      return v10;
    case 24:
      __src[0] = 0;
      v9 = (*(*this + 312))(this, __src);
      goto LABEL_26;
    case 25:
      v20 = *(this + 65);
      *a5 = v20;
      if (!v20)
      {
        return 4294956446;
      }

      goto LABEL_52;
    case 27:
      v10 = 0;
      v15 = *(this + 30);
      v16 = *(this + 31);
      *(a5 + 4) = *(this + 64);
      *a5 = v15;
      a5[1] = v16;
      return v10;
    case 30:
      v13 = ausdk::AUBase::GetScope(this, a3);
      v14 = *(ausdk::AUScope::GetElement(v13, a4) + 72);
      ausdk::Owned<__CFString const*>::retainRef(v14);
      ausdk::Owned<__CFString const*>::releaseRef(v14);
      if (!v14)
      {
        return 4294956446;
      }

      CFRetain(v14);
      v10 = 0;
      *a5 = v14;
      return v10;
    case 32:
      __src[0] = 0;
      __src[1] = 0;
      *&v35 = 0;
      (*(*this + 552))(__src, this, a3, a4);
      v26 = __src[0];
      if (__src[0] == __src[1])
      {
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        return 4294956417;
      }

      else
      {
        memcpy(a5, __src[0], __src[1] - __src[0]);
        if (v26)
        {
          __src[1] = v26;
          operator delete(v26);
        }

        return 0;
      }

    case 35:
      *__src = *a5;
      if (!LODWORD(__src[0]))
      {
        return 4294956445;
      }

      v10 = (*(*this + 304))(this, a3);
      *a5 = *__src;
      if (v10 != -10879)
      {
        return v10;
      }

      return (*(*this + 88))(this, 35, a3, a4, a5);
    case 36:
      *a5 = *(this + 360);
      v20 = *(this + 46);
      if (!v20)
      {
        return 0;
      }

      goto LABEL_52;
    case 51:
      v31 = ausdk::AUBase::GetScope(this, a3);
      v10 = 0;
      v24 = *(ausdk::AUScope::GetIOElement(v31, a4) + 168);
LABEL_50:
      *a5 = v24;
      return v10;
    case 53:
      __src[0] = 0;
      v9 = (*(*this + 264))(this, a3, a4, __src, __src + 4);
LABEL_26:
      v10 = v9;
LABEL_27:
      v11 = __src[0];
      goto LABEL_28;
    case 54:
      v20 = *(this + 58);
      *a5 = v20;
      if (v20)
      {
LABEL_52:
        CFRetain(v20);
      }

      return 0;
    default:
      if (a2 == 61)
      {
        v10 = 0;
        v11 = *(this + 34);
LABEL_28:
        *a5 = v11;
      }

      else
      {
        return (*(*this + 88))(this);
      }

      return v10;
  }
}

void sub_1DE087E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::DoRender(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      return a2;
    }

    goto LABEL_3;
  }

  v5 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    v5 = *v5;
  }

  v6 = 136315394;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", &v6, 0x12u);
  if (a2)
  {
LABEL_3:
    if (!*(a1 + 340))
    {
      *(a1 + 340) = a2;
      (*(*a1 + 432))(a1, 22, 0, 0);
    }
  }

  return a2;
}

uint64_t ausdk::AUBase::DoProcess(unsigned int &,AudioTimeStamp const&,unsigned int,AudioBufferList &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      return a2;
    }

    goto LABEL_3;
  }

  v5 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    v5 = *v5;
  }

  v6 = 136315394;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, process err: %d", &v6, 0x12u);
  if (a2)
  {
LABEL_3:
    if (!*(a1 + 340))
    {
      *(a1 + 340) = a2;
      (*(*a1 + 432))(a1, 22, 0, 0);
    }
  }

  return a2;
}

uint64_t ausdk::AUBase::DoProcessMultiple(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      return a2;
    }

    goto LABEL_3;
  }

  v5 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    v5 = *v5;
  }

  v6 = 136315394;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", &v6, 0x12u);
  if (a2)
  {
LABEL_3:
    if (!*(a1 + 340))
    {
      *(a1 + 340) = a2;
      (*(*a1 + 432))(a1, 22, 0, 0);
    }
  }

  return a2;
}

char *ausdk::AUBase::SetAFactoryPresetAsCurrent(char *this, const AUPreset *a2)
{
  if ((a2->presetNumber & 0x80000000) == 0 && a2->presetName)
  {
    v3 = this;
    v4 = (this + 360);
    CFRelease(*(this + 46));
    *v4 = *a2;
    v5 = v3[46];

    return CFRetain(v5);
  }

  return this;
}

void ausdk::BufferAllocator::Deallocate(int a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    free(v3);
  }

  free(a2);
}

_DWORD *ausdk::BufferAllocator::Allocate(ausdk::BufferAllocator *this, unsigned int a2, int a3)
{
  if (a2 > 0x1000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "AudioBuffers::Allocate: Too many buffers");
  }

  v4 = 0;
  v5 = 0;
  v6 = (a3 + 15) & 0xFFFFFFF0;
  if (a2 && v6)
  {
    if (((v6 * a2) & 0xFFFFFFFF00000000) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "AUBuffer throwing bad_alloc", v13, 2u);
      }

      v11 = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(v11);
    }

    v5 = v6 * a2;
    if (v6 * a2)
    {
      v4 = malloc_type_malloc(v6 * a2, 0x20421E56uLL);
      bzero(v4, v6 * a2);
    }

    else
    {
      v4 = 0;
    }
  }

  if (a2 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  v8 = 16 * v7 + 56;
  result = malloc_type_malloc(v8, 0x96973908uLL);
  *result = a2;
  result[1] = v6;
  *(result + 1) = 0;
  result[4] = v8;
  result[5] = v5;
  *(result + 3) = 0;
  *(result + 4) = v4;
  *(result + 5) = 0;
  *(result + 7) = 0;
  *(result + 8) = 0;
  result[12] = a2;
  return result;
}

unint64_t ausdk::AUBufferList::PrepareBufferOrError(ausdk::AUBufferList *this, const AudioStreamBasicDescription *a2, unsigned int a3)
{
  LODWORD(v3) = -10874;
  if (*(this + 5) >= a3)
  {
    mFormatFlags = a2->mFormatFlags;
    if ((mFormatFlags & 0x20) != 0)
    {
      mChannelsPerFrame = a2->mChannelsPerFrame;
    }

    else
    {
      mChannelsPerFrame = 1;
    }

    if (mChannelsPerFrame <= *(this + 4))
    {
      if ((mFormatFlags & 0x20) != 0)
      {
        v7 = 1;
      }

      else
      {
        v7 = a2->mChannelsPerFrame;
      }

      v8 = *(this + 1);
      v3 = v8 + 48;
      v9 = *(v8 + 48);
      if (*(v8 + 48) <= *v8 && (v10 = a2->mBytesPerFrame * a3, v11 = *(v8 + 4), v11 >= v10))
      {
        v13 = *(v8 + 32);
        v14 = v13 + *(v8 + 20);
        if (v9)
        {
          v15 = (v8 + 64);
          do
          {
            *v15 = v13;
            v13 += v11;
            *(v15 - 2) = v7;
            *(v15 - 1) = v10;
            v15 += 2;
            --v9;
          }

          while (v9);
        }

        if (v13 > v14)
        {
          v3 = 0xFFFFFFFFLL;
        }

        v4 = HIDWORD(v3);
        if (v13 <= v14)
        {
          *this = 1;
        }
      }

      else
      {
        LODWORD(v4) = 0;
        LODWORD(v3) = -1;
      }
    }

    else
    {
      LODWORD(v4) = 0;
      LODWORD(v3) = -10868;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v3 | (v4 << 32);
}

uint64_t ausdk::AUBufferList::Allocate(ausdk::AUBufferList *this, const AudioStreamBasicDescription *a2, int a3)
{
  if (*(this + 1))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
  }

  mBytesPerFrame = a2->mBytesPerFrame;
  if ((a2->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  else
  {
    mChannelsPerFrame = 1;
  }

  result = (*(ausdk::BufferAllocator::instance(void)::global + 2))(&ausdk::BufferAllocator::instance(void)::global, mChannelsPerFrame, mBytesPerFrame * a3, 0);
  *(this + 1) = result;
  *(this + 4) = mChannelsPerFrame;
  *(this + 5) = a3;
  *this = 0;
  return result;
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12BD160);
}

void CAXException::~CAXException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t CACFDictionary::GetSInt32(uint64_t this, const __CFString *a2, int *a3)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, a2);
    if (this)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      if (v5 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v4, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

uint64_t CACFDictionary::GetFloat32(uint64_t this, const __CFString *a2, float *a3)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, a2);
    if (this)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      if (v5 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v4, kCFNumberFloat32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

uint64_t CACFDictionary::GetFloat64(uint64_t this, const __CFString *a2, double *a3)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, a2);
    if (this)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      if (v5 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v4, kCFNumberFloat64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

uint64_t CACFString::operator=(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 == cf)
  {
    v4 = v3;
  }

  else
  {
    v4 = cf;
    if (v3 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(v3);
    }

    *a1 = v4;
  }

  *(a1 + 8) = 1;
  if (v4)
  {
    CFRetain(v4);
  }

  return a1;
}

const __CFDictionary *CACFDictionary::GetCACFArray(const __CFDictionary **this, const __CFString *key, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  result = *this;
  if (*this)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {

        return CACFDictionary::operator=(a3, v7);
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetCACFDictionary(const __CFDictionary **this, const __CFString *key, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  result = *this;
  if (*this)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return CACFDictionary::operator=(a3, v7);
      }
    }
  }

  return result;
}

void CACFNumber::~CACFNumber(CACFNumber *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void CADeprecated::AUOutputBL::AUOutputBL(CADeprecated::AUOutputBL *this, const CAStreamBasicDescription *a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v3;
  *(this + 4) = v2;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 512;
  if ((*(this + 12) & 0x20) != 0)
  {
    v4 = *(this + 7);
  }

  else
  {
    v4 = 1;
  }

  *(this + 14) = v4;
  operator new[]();
}

uint64_t CADeprecated::AUOutputBL::Prepare(uint64_t this, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(this + 12) & 0x20) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 28);
  }

  v3 = *(this + 40);
  if (v3)
  {
    v4 = *(this + 24) * a2;
    v5 = *(this + 56);
    v6 = *(this + 60);
    if (v4 * v5 > (v6 * v5))
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        v15 = "AUOutputBL.cpp";
        v16 = 1024;
        v17 = 63;
        v18 = 1024;
        v19 = -10874;
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [(nBytes * mNumberBuffers) > AllocatedBytes() is false]: ", &v14, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F593B0D8;
      exception[2] = -10874;
    }

    v7 = *(this + 48);
    *v7 = v5;
    if (v5)
    {
      v8 = v7 + 2;
      do
      {
        *(v8 + 1) = v3;
        v3 += v6;
        *v8 = v2;
        v8[1] = v4;
        v8 += 4;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(this + 56);
    v10 = *(this + 48);
    *v10 = v9;
    if (v9)
    {
      v11 = v10 + 2;
      v12 = *(this + 24) * a2;
      do
      {
        *v11 = v2;
        v11[1] = v12;
        *(v11 + 1) = 0;
        v11 += 4;
        --v9;
      }

      while (v9);
    }
  }

  return this;
}

uint64_t CADeprecated::AUOutputBL::Allocate(uint64_t this, int a2)
{
  v2 = this;
  if (a2)
  {
    v3 = *(this + 24) * a2;
    v4 = *(this + 56);
    if (v3 > v4 * *(this + 60))
    {
      if (v4 > 1)
      {
        v3 = ((v3 & 0xFFFFFFF0) + 16) | 0x10;
      }

      *(this + 60) = v3;
      operator new[]();
    }
  }

  else
  {
    this = *(this + 40);
    if (this)
    {
      this = MEMORY[0x1E12BD130](this, 0x1000C8077774924);
      *(v2 + 40) = 0;
    }

    *(v2 + 60) = 0;
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t CATimeUtilities::GetCurrentGregorianDate(CATimeUtilities *this)
{
  Current = CFAbsoluteTimeGetCurrent();
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  v2 = CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz;

  return *&CFAbsoluteTimeGetGregorianDate(Current, v2);
}

uint64_t PlatformUtilities_iOS::GetProductType(PlatformUtilities_iOS *this)
{
  if (PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck == 1)
  {
    return PlatformUtilities_iOS::GetProductType(void)::sType;
  }

  PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck = 1;
  v2 = MGGetProductType();
  if (v2 > 2158787295)
  {
    if (v2 > 3196158496)
    {
      if (v2 > 3711192743)
      {
        if (v2 > 3885279869)
        {
          if (v2 <= 4068102501)
          {
            if (v2 > 3953847431)
            {
              if (v2 > 4055323050)
              {
                if (v2 == 4055323051)
                {
                  result = 58;
                  goto LABEL_483;
                }

                if (v2 == 4067129264)
                {
                  result = 139;
                  goto LABEL_483;
                }
              }

              else
              {
                if (v2 == 3953847432)
                {
                  result = 170;
                  goto LABEL_483;
                }

                if (v2 == 4025247511)
                {
                  result = 133;
                  goto LABEL_483;
                }
              }

              goto LABEL_482;
            }

            if (v2 == 3885279870)
            {
              result = 32;
              goto LABEL_483;
            }

            if (v2 != 3933865620)
            {
              if (v2 == 3933982784)
              {
                result = 53;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_373;
          }

          if (v2 <= 4231109336)
          {
            switch(v2)
            {
              case 4068102502:
                result = 168;
                goto LABEL_483;
              case 4172444931:
                result = 132;
                goto LABEL_483;
              case 4201643249:
                result = 35;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 > 4240173201)
          {
            if (v2 == 4240173202)
            {
              result = 2;
              goto LABEL_483;
            }

            if (v2 == 4242862982)
            {
              result = 80;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 4231109337)
          {
            if (v2 == 4232256925)
            {
              result = 114;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_391:
          result = 198;
          goto LABEL_483;
        }

        if (v2 <= 3825599859)
        {
          if (v2 <= 3767261005)
          {
            switch(v2)
            {
              case 3711192744:
                result = 84;
                goto LABEL_483;
              case 3742999858:
                result = 159;
                goto LABEL_483;
              case 3743999268:
                result = 24;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 3767261006)
          {
            result = 153;
            goto LABEL_483;
          }

          if (v2 != 3801472101)
          {
            if (v2 == 3819635030)
            {
              result = 160;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_346;
        }

        if (v2 <= 3863625341)
        {
          switch(v2)
          {
            case 3825599860:
              result = 20;
              goto LABEL_483;
            case 3839750255:
              result = 169;
              goto LABEL_483;
            case 3856877970:
              result = 110;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 3865922941)
        {
          if (v2 == 3865922942)
          {
            result = 56;
            goto LABEL_483;
          }

          if (v2 == 3867318491)
          {
            result = 162;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 3863625342)
        {
          if (v2 == 3865897231)
          {
            result = 79;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_392;
      }

      if (v2 > 3455223060)
      {
        if (v2 <= 3637438249)
        {
          if (v2 <= 3571532205)
          {
            if (v2 == 3455223061)
            {
              result = 83;
              goto LABEL_483;
            }

            if (v2 == 3540156652)
            {
              result = 93;
              goto LABEL_483;
            }

            v8 = 3543203160;
            goto LABEL_276;
          }

          if (v2 <= 3599094682)
          {
            if (v2 == 3571532206)
            {
              result = 151;
              goto LABEL_483;
            }

            if (v2 == 3585085679)
            {
              result = 10;
              goto LABEL_483;
            }

LABEL_482:
            result = 0;
            goto LABEL_483;
          }

          if (v2 != 3599094683)
          {
            if (v2 != 3636345305)
            {
              goto LABEL_482;
            }

            goto LABEL_355;
          }

LABEL_392:
          result = 97;
          goto LABEL_483;
        }

        if (v2 <= 3670339450)
        {
          if (v2 == 3637438250)
          {
            result = 52;
            goto LABEL_483;
          }

          if (v2 != 3645319985)
          {
            if (v2 == 3663011141)
            {
              result = 156;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_400;
        }

        if (v2 > 3683904381)
        {
          if (v2 == 3683904382)
          {
            result = 137;
            goto LABEL_483;
          }

          v4 = 3707345671;
          goto LABEL_367;
        }

        if (v2 == 3670339451)
        {
          goto LABEL_373;
        }

        if (v2 != 3677894691)
        {
          goto LABEL_482;
        }

LABEL_390:
        result = 102;
        goto LABEL_483;
      }

      if (v2 > 3242623366)
      {
        if (v2 <= 3361025852)
        {
          switch(v2)
          {
            case 3242623367:
              result = 15;
              goto LABEL_483;
            case 3300281076:
              result = 54;
              goto LABEL_483;
            case 3348380076:
              result = 4;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3402870383)
        {
          if (v2 != 3361025853)
          {
            if (v2 == 3397214291)
            {
              result = 74;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_397;
        }

        if (v2 == 3402870384)
        {
          result = 70;
          goto LABEL_483;
        }

        v6 = 3417429877;
LABEL_371:
        if (v2 != v6)
        {
          goto LABEL_482;
        }

        goto LABEL_372;
      }

      if (v2 <= 3217792189)
      {
        if (v2 != 3196158497)
        {
          if (v2 == 3196805751)
          {
            result = 7;
            goto LABEL_483;
          }

          if (v2 == 3215673114)
          {
            result = 75;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_355;
      }

      if (v2 == 3217792190)
      {
        goto LABEL_373;
      }

      if (v2 == 3228373941)
      {
        goto LABEL_393;
      }

      if (v2 != 3241053352)
      {
        goto LABEL_482;
      }

LABEL_405:
      result = 107;
      goto LABEL_483;
    }

    if (v2 > 2673319455)
    {
      if (v2 > 2903084587)
      {
        if (v2 <= 3054476160)
        {
          if (v2 <= 2943112656)
          {
            switch(v2)
            {
              case 2903084588:
                result = 85;
                goto LABEL_483;
              case 2940697645:
                result = 38;
                goto LABEL_483;
              case 2941181571:
                result = 41;
                goto LABEL_483;
            }
          }

          else if (v2 > 2979575959)
          {
            if (v2 == 2979575960)
            {
              result = 155;
              goto LABEL_483;
            }

            if (v2 == 3001488778)
            {
              result = 34;
              goto LABEL_483;
            }
          }

          else
          {
            if (v2 == 2943112657)
            {
              result = 149;
              goto LABEL_483;
            }

            if (v2 == 2959111092)
            {
              result = 95;
              goto LABEL_483;
            }
          }

          goto LABEL_482;
        }

        if (v2 <= 3128362814)
        {
          if (v2 == 3054476161)
          {
            goto LABEL_252;
          }

          if (v2 == 3101941570)
          {
            goto LABEL_282;
          }

          v10 = 3104290450;
LABEL_322:
          if (v2 == v10)
          {
            result = 197;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3143587591)
        {
          if (v2 != 3128362815)
          {
            if (v2 == 3133873109)
            {
              result = 62;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_372:
          result = 196;
          goto LABEL_483;
        }

        if (v2 == 3143587592)
        {
          result = 166;
          goto LABEL_483;
        }

        v9 = 3184375231;
LABEL_336:
        if (v2 == v9)
        {
          result = 77;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 > 2751865417)
      {
        if (v2 <= 2795618602)
        {
          switch(v2)
          {
            case 2751865418:
              result = 143;
              goto LABEL_483;
            case 2781508713:
              result = 6;
              goto LABEL_483;
            case 2793418701:
              result = 19;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 2823174121)
        {
          if (v2 == 2795618603)
          {
            result = 42;
            goto LABEL_483;
          }

          if (v2 == 2797549163)
          {
            result = 113;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 2823174122)
        {
          v4 = 2880863278;
          goto LABEL_367;
        }

        goto LABEL_394;
      }

      if (v2 > 2702125346)
      {
        switch(v2)
        {
          case 2702125347:
            result = 3;
            goto LABEL_483;
          case 2722529672:
            result = 28;
            goto LABEL_483;
          case 2730762296:
            result = 112;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 2673319456)
      {
        if (v2 == 2688879999)
        {
          result = 39;
          goto LABEL_483;
        }

        v7 = 2692844695;
LABEL_298:
        if (v2 == v7)
        {
          result = 199;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_403;
    }

    if (v2 > 2454275342)
    {
      if (v2 > 2614323574)
      {
        if (v2 > 2625074842)
        {
          if (v2 <= 2634105756)
          {
            if (v2 == 2625074843)
            {
              result = 161;
              goto LABEL_483;
            }

            v5 = 2628394914;
LABEL_208:
            if (v2 != v5)
            {
              goto LABEL_482;
            }

LABEL_252:
            result = 101;
            goto LABEL_483;
          }

          if (v2 != 2634105757)
          {
            if (v2 == 2644487444)
            {
              result = 92;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_390;
        }

        if (v2 != 2614323575)
        {
          if (v2 != 2619317134)
          {
            if (v2 != 2622433984)
            {
              goto LABEL_482;
            }

            goto LABEL_319;
          }

          goto LABEL_402;
        }

LABEL_399:
        result = 50;
        goto LABEL_483;
      }

      if (v2 > 2487868871)
      {
        if (v2 == 2487868872)
        {
          goto LABEL_405;
        }

        if (v2 != 2516717268)
        {
          if (v2 == 2566016329)
          {
            result = 94;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_403:
        result = 73;
        goto LABEL_483;
      }

      if (v2 == 2454275343)
      {
        result = 63;
        goto LABEL_483;
      }

      if (v2 != 2458172802)
      {
        v3 = 2468178735;
LABEL_187:
        if (v2 == v3)
        {
          result = 120;
          goto LABEL_483;
        }

        goto LABEL_482;
      }
    }

    else
    {
      if (v2 > 2288107368)
      {
        if (v2 <= 2336512886)
        {
          if (v2 != 2288107369)
          {
            if (v2 == 2309863438)
            {
              result = 37;
              goto LABEL_483;
            }

            if (v2 == 2311900306)
            {
              result = 14;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_406;
        }

        if (v2 > 2418348557)
        {
          if (v2 == 2418348558)
          {
            result = 135;
            goto LABEL_483;
          }

          if (v2 == 2445473385)
          {
            result = 124;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 == 2336512887)
        {
          goto LABEL_398;
        }

        if (v2 != 2385671069)
        {
          goto LABEL_482;
        }

        goto LABEL_399;
      }

      if (v2 <= 2236272847)
      {
        if (v2 != 2158787296)
        {
          if (v2 == 2159747553)
          {
            result = 26;
            goto LABEL_483;
          }

          if (v2 != 2162679683)
          {
            goto LABEL_482;
          }

          goto LABEL_401;
        }

LABEL_232:
        result = 69;
        goto LABEL_483;
      }

      if (v2 != 2236272848)
      {
        if (v2 != 2262113699)
        {
          if (v2 == 2270970153)
          {
            result = 21;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_404;
      }
    }

LABEL_355:
    result = 87;
    goto LABEL_483;
  }

  if (v2 <= 1302273957)
  {
    if (v2 > 676119127)
    {
      if (v2 > 952317140)
      {
        if (v2 <= 1169082143)
        {
          if (v2 > 1085318933)
          {
            if (v2 <= 1114644380)
            {
              if (v2 == 1085318934)
              {
                result = 131;
                goto LABEL_483;
              }

              if (v2 == 1110205732)
              {
                result = 48;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            if (v2 == 1114644381)
            {
              result = 82;
              goto LABEL_483;
            }

            v4 = 1119807502;
LABEL_367:
            if (v2 == v4)
            {
              result = 51;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 952317141)
          {
            if (v2 != 1036038801)
            {
              if (v2 == 1060988941)
              {
                result = 9;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_290;
          }

LABEL_398:
          result = 121;
          goto LABEL_483;
        }

        if (v2 <= 1280441782)
        {
          switch(v2)
          {
            case 1169082144:
              result = 33;
              goto LABEL_483;
            case 1234705395:
              result = 125;
              goto LABEL_483;
            case 1260109173:
              result = 45;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 1293446024)
        {
          if (v2 != 1293446025)
          {
            if (v2 == 1294429942)
            {
              result = 147;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_389;
        }

        if (v2 != 1280441783)
        {
          if (v2 == 1280909812)
          {
            result = 152;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_396:
        result = 78;
        goto LABEL_483;
      }

      if (v2 > 776033018)
      {
        if (v2 > 851437780)
        {
          if (v2 <= 910181309)
          {
            if (v2 == 851437781)
            {
              result = 29;
              goto LABEL_483;
            }

            if (v2 == 896202454)
            {
              result = 71;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 910181310)
          {
            goto LABEL_395;
          }

          v10 = 910313402;
          goto LABEL_322;
        }

        if (v2 == 776033019)
        {
          result = 57;
          goto LABEL_483;
        }

        if (v2 != 810906663)
        {
          if (v2 != 820711327)
          {
            goto LABEL_482;
          }

          goto LABEL_232;
        }

LABEL_319:
        result = 98;
        goto LABEL_483;
      }

      if (v2 <= 746003605)
      {
        if (v2 == 676119128)
        {
          result = 146;
          goto LABEL_483;
        }

        if (v2 == 689804742)
        {
          result = 36;
          goto LABEL_483;
        }

        v6 = 698697055;
        goto LABEL_371;
      }

      if (v2 == 746003606)
      {
        goto LABEL_252;
      }

      if (v2 == 749116821)
      {
        result = 165;
        goto LABEL_483;
      }

      if (v2 != 761631964)
      {
        goto LABEL_482;
      }

LABEL_394:
      result = 109;
      goto LABEL_483;
    }

    if (v2 <= 337183580)
    {
      if (v2 > 133314239)
      {
        if (v2 <= 228444037)
        {
          if (v2 == 133314240)
          {
            result = 40;
            goto LABEL_483;
          }

          if (v2 != 157833461)
          {
            if (v2 == 173258742)
            {
              result = 59;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_396;
        }

        if (v2 > 262180326)
        {
          if (v2 == 262180327)
          {
            result = 123;
            goto LABEL_483;
          }

          if (v2 == 330877086)
          {
            result = 43;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 228444038)
        {
          v3 = 253148925;
          goto LABEL_187;
        }

LABEL_400:
        result = 72;
        goto LABEL_483;
      }

      if (v2 <= 42878381)
      {
        switch(v2)
        {
          case 23433786:
            result = 61;
            goto LABEL_483;
          case 33245053:
            result = 68;
            goto LABEL_483;
          case 40511012:
            result = 134;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 42878382)
      {
        result = 12;
        goto LABEL_483;
      }

      if (v2 != 79936591)
      {
        v9 = 88647037;
        goto LABEL_336;
      }

LABEL_404:
      result = 76;
      goto LABEL_483;
    }

    if (v2 <= 363237282)
    {
      if (v2 > 344862119)
      {
        switch(v2)
        {
          case 344862120:
            result = 115;
            goto LABEL_483;
          case 355234908:
            result = 129;
            goto LABEL_483;
          case 358923952:
            result = 126;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 337183581)
      {
        result = 11;
        goto LABEL_483;
      }

      if (v2 == 340218669)
      {
        result = 111;
        goto LABEL_483;
      }

      if (v2 != 341800273)
      {
        goto LABEL_482;
      }

      goto LABEL_346;
    }

    if (v2 <= 502329936)
    {
      if (v2 != 363237283)
      {
        if (v2 == 425046865)
        {
          result = 157;
          goto LABEL_483;
        }

        if (v2 == 445396642)
        {
          result = 117;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 <= 555503453)
    {
      if (v2 == 502329937)
      {
        result = 22;
        goto LABEL_483;
      }

      v4 = 551446205;
      goto LABEL_367;
    }

    if (v2 != 555503454)
    {
      if (v2 == 574536383)
      {
        result = 30;
        goto LABEL_483;
      }

      goto LABEL_482;
    }

LABEL_402:
    result = 106;
    goto LABEL_483;
  }

  if (v2 > 1733600852)
  {
    if (v2 > 2023824666)
    {
      if (v2 <= 2085054104)
      {
        if (v2 > 2078329140)
        {
          if (v2 <= 2081274471)
          {
            if (v2 == 2078329141)
            {
              result = 31;
              goto LABEL_483;
            }

            if (v2 == 2080700391)
            {
              result = 46;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 2081274472)
          {
            if (v2 == 2084894489)
            {
              result = 164;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_401:
          result = 122;
          goto LABEL_483;
        }

        if (v2 == 2023824667)
        {
          goto LABEL_282;
        }

        if (v2 != 2032616841)
        {
          if (v2 == 2048538371)
          {
            result = 60;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_395:
        result = 25;
        goto LABEL_483;
      }

      if (v2 > 2103978417)
      {
        if (v2 <= 2141052861)
        {
          if (v2 != 2103978418)
          {
            if (v2 == 2132302344)
            {
              result = 148;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_389:
          result = 96;
          goto LABEL_483;
        }

        if (v2 != 2141052862)
        {
          v6 = 2144123136;
          goto LABEL_371;
        }

LABEL_373:
        result = 195;
        goto LABEL_483;
      }

      if (v2 == 2085054105)
      {
        result = 158;
        goto LABEL_483;
      }

      if (v2 != 2089455188)
      {
        v7 = 2095883268;
        goto LABEL_298;
      }

LABEL_397:
      result = 105;
      goto LABEL_483;
    }

    if (v2 > 1868379042)
    {
      if (v2 <= 1908832378)
      {
        if (v2 != 1868379043)
        {
          if (v2 == 1878257790)
          {
            result = 81;
            goto LABEL_483;
          }

          if (v2 == 1895344378)
          {
            result = 86;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_282;
      }

      if (v2 > 2001966016)
      {
        if (v2 != 2001966017)
        {
          if (v2 == 2021146989)
          {
            result = 18;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_346;
      }

      if (v2 != 1908832379)
      {
        if (v2 == 1990293942)
        {
          result = 140;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_391;
    }

    if (v2 <= 1756509289)
    {
      if (v2 == 1733600853)
      {
        result = 128;
        goto LABEL_483;
      }

      if (v2 == 1737882206)
      {
        result = 116;
        goto LABEL_483;
      }

      v8 = 1744899922;
LABEL_276:
      if (v2 != v8)
      {
        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 == 1756509290)
    {
      result = 144;
      goto LABEL_483;
    }

    if (v2 == 1770142589)
    {
      result = 163;
      goto LABEL_483;
    }

    v5 = 1834147427;
    goto LABEL_208;
  }

  if (v2 <= 1429914405)
  {
    if (v2 > 1373516432)
    {
      if (v2 > 1408738133)
      {
        if (v2 > 1415625991)
        {
          if (v2 == 1415625992)
          {
            result = 136;
            goto LABEL_483;
          }

          if (v2 == 1419435331)
          {
            result = 142;
            goto LABEL_483;
          }
        }

        else
        {
          if (v2 == 1408738134)
          {
            result = 150;
            goto LABEL_483;
          }

          if (v2 == 1412429328)
          {
            result = 65;
            goto LABEL_483;
          }
        }

        goto LABEL_482;
      }

      if (v2 != 1373516433)
      {
        if (v2 == 1380747801)
        {
          result = 127;
          goto LABEL_483;
        }

        if (v2 == 1402208364)
        {
          result = 130;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_282:
      result = 100;
      goto LABEL_483;
    }

    if (v2 <= 1353145732)
    {
      if (v2 != 1302273958)
      {
        if (v2 == 1309571158)
        {
          result = 141;
          goto LABEL_483;
        }

        if (v2 == 1325975682)
        {
          result = 67;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_406:
      result = 108;
      goto LABEL_483;
    }

    if (v2 != 1353145733)
    {
      if (v2 != 1364038516)
      {
        if (v2 == 1371389549)
        {
          result = 27;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_372;
    }

LABEL_346:
    result = 88;
    goto LABEL_483;
  }

  if (v2 > 1573906121)
  {
    if (v2 > 1625227433)
    {
      if (v2 > 1701146936)
      {
        if (v2 == 1701146937)
        {
          result = 49;
          goto LABEL_483;
        }

        if (v2 == 1721691077)
        {
          result = 16;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 1625227434)
      {
        if (v2 == 1644180312)
        {
          result = 145;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_393:
      result = 104;
      goto LABEL_483;
    }

    if (v2 == 1573906122)
    {
      result = 138;
      goto LABEL_483;
    }

    if (v2 == 1602181456)
    {
      result = 154;
      goto LABEL_483;
    }

    if (v2 != 1608945770)
    {
      goto LABEL_482;
    }

LABEL_290:
    result = 192;
    goto LABEL_483;
  }

  if (v2 <= 1540760352)
  {
    switch(v2)
    {
      case 1429914406:
        result = 23;
        goto LABEL_483;
      case 1434404433:
        result = 17;
        goto LABEL_483;
      case 1517755655:
        result = 171;
        goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 > 1554479184)
  {
    if (v2 == 1554479185)
    {
      result = 167;
      goto LABEL_483;
    }

    if (v2 == 1559256613)
    {
      result = 55;
      goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 == 1540760353)
  {
    result = 5;
    goto LABEL_483;
  }

  if (v2 != 1549248876)
  {
    goto LABEL_482;
  }

  result = 172;
LABEL_483:
  PlatformUtilities_iOS::GetProductType(void)::sType = result;
  return result;
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F593B0D8;
      exception[2] = v8;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F593B0D8;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F593B0D8;
      exception[2] = v6;
    }

    atomic_store(v2, this + 2);
  }

  return v3 == 0;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593AEB0;
  pthread_mutex_destroy((this + 24));
}

const __CFString *CACFString::GetCString(const __CFString *theString, __CFString *a2, char *a3, unsigned int *a4)
{
  if (*a3)
  {
    v6 = theString;
    if (theString)
    {
      usedBufLen = 0;
      v10.length = CFStringGetLength(theString);
      v10.location = 0;
      theString = CFStringGetBytes(v6, v10, 0x8000100u, 0, 0, a2, (*a3 - 1), &usedBufLen);
      v7 = usedBufLen;
      *(&a2->isa + usedBufLen) = 0;
      v8 = v7 + 1;
    }

    else
    {
      LOBYTE(a2->isa) = 0;
      v8 = 1;
    }

    *a3 = v8;
  }

  return theString;
}

void TFileBSD::Clear(FILE **this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "TFileBSD.cpp";
    v8 = 1024;
    v9 = 567;
    v10 = 2080;
    v11 = "Clear";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v6, 0x26u);
  }

LABEL_7:
  if (((*this)->_lb._base)(this))
  {
    v3 = fileno(this[2]);
    ftruncate(v3, 0);
  }

  else
  {
    ((*this)->_extra)(this, 1);
    v4 = fileno(this[2]);
    ftruncate(v4, 0);
    (*&(*this)->_ur)(this);
  }

  this[3] = 0;
  this[4] = 0;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v6 = 136315906;
          v7 = "TFileBSD.cpp";
          v8 = 1024;
          v9 = 585;
          v10 = 2080;
          v11 = "Clear";
          v12 = 2048;
          v13 = this;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v6, 0x26u);
        }
      }
    }
  }
}

void TFileBSD::Close(TFileBSD *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v9 = "TFileBSD.cpp";
    v10 = 1024;
    v11 = 341;
    v12 = 2080;
    v13 = "Close";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  v3 = *(this + 2);
  if (v3 && fclose(v3))
  {
    v5 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v7, v5 + 100000);
      *buf = 136315906;
      v9 = "TFileBSD.cpp";
      v10 = 1024;
      v11 = 345;
      v12 = 2080;
      v13 = v7;
      v14 = 2080;
      v15 = "Close::fclose failed";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Close::fclose failed", v5 + 100000);
  }

  *(this + 2) = 0;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v9 = "TFileBSD.cpp";
          v10 = 1024;
          v11 = 348;
          v12 = 2080;
          v13 = "Close";
          v14 = 2048;
          v15 = this;
          _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }
}

void TFileBSD::Open(const char **this, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v4 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v15 = "TFileBSD.cpp";
    v16 = 1024;
    v17 = 304;
    v18 = 2080;
    v19 = "Open";
    v20 = 2048;
    v21 = this;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if (((*(*this + 15))(this) & 1) == 0)
  {
    if (a2 >= 2)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v13, 0xFFFFFFCE);
        *buf = 136315906;
        v15 = "TFileBSD.cpp";
        v16 = 1024;
        v17 = 309;
        v18 = 2080;
        v19 = v13;
        v20 = 2080;
        v21 = "Open - file open invalid file permission";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "Open - file open invalid file permission", -50);
    }

    if (access(this[1], 2 * (a2 != 0)))
    {
      v5 = *__error();
      if (v5 == 13 || v5 == 1)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v13, 0xFFFFFFCA);
          *buf = 136315906;
          v15 = "TFileBSD.cpp";
          v16 = 1024;
          v17 = 315;
          v18 = 2080;
          v19 = v13;
          v20 = 2080;
          v21 = "Open: Permission denied";
          _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v9 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v9, "Open: Permission denied", -54);
      }
    }

    if (a2)
    {
      v6 = "r+b";
    }

    else
    {
      v6 = "rb";
    }

    v7 = fopen(this[1], v6);
    this[2] = v7;
    if (!v7)
    {
      v11 = *__error();
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v13, v11 + 100000);
        *buf = 136315906;
        v15 = "TFileBSD.cpp";
        v16 = 1024;
        v17 = 321;
        v18 = 2080;
        v19 = v13;
        v20 = 2080;
        v21 = "Open::fopen failed";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v12 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v12, "Open::fopen failed", v11 + 100000);
    }

    if (this[4] >= 1)
    {
      (*(*this + 5))(this, 0);
    }

    this[5] = (*(*this + 9))(this);
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v8 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v15 = "TFileBSD.cpp";
          v16 = 1024;
          v17 = 332;
          v18 = 2080;
          v19 = "Open";
          v20 = 2048;
          v21 = this;
          _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }
}

void TFileBSD::DeleteFile(const std::__fs::filesystem::path **this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "TFileBSD.cpp";
    v7 = 1024;
    v8 = 284;
    v9 = 2080;
    v10 = "DeleteFile";
    v11 = 2048;
    v12 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v5, 0x26u);
  }

LABEL_7:
  if (((*this)[5].__pn_.__r_.__value_.__l.__data_)(this))
  {
    ((*this)[4].__pn_.__r_.__value_.__r.__words[2])(this);
  }

  remove(this[1], v3);
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v5 = 136315906;
          v6 = "TFileBSD.cpp";
          v7 = 1024;
          v8 = 295;
          v9 = 2080;
          v10 = "DeleteFile";
          v11 = 2048;
          v12 = this;
          _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v5, 0x26u);
        }
      }
    }
  }
}

void TFileBSD::Create(TFileBSD *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v12 = "TFileBSD.cpp";
    v13 = 1024;
    v14 = 256;
    v15 = 2080;
    v16 = "Create";
    v17 = 2048;
    v18 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if (((*(*this + 80))(this) & 1) == 0)
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = fopen(v3, "w+b");
      if (!v4)
      {
        v6 = *__error();
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v10, v6 + 100000);
          *buf = 136315906;
          v12 = "TFileBSD.cpp";
          v13 = 1024;
          v14 = 262;
          v15 = 2080;
          v16 = v10;
          v17 = 2080;
          v18 = "Create::fopen failed";
          _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "Create::fopen failed", v6 + 100000);
      }

      if (fclose(v4))
      {
        v8 = *__error();
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v10, v8 + 100000);
          *buf = 136315906;
          v12 = "TFileBSD.cpp";
          v13 = 1024;
          v14 = 263;
          v15 = 2080;
          v16 = v10;
          v17 = 2080;
          v18 = "Create::fclose failed";
          _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v9 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v9, "Create::fclose failed", v8 + 100000);
      }
    }
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v12 = "TFileBSD.cpp";
          v13 = 1024;
          v14 = 275;
          v15 = 2080;
          v16 = "Create";
          v17 = 2048;
          v18 = this;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }
}

BOOL TFileBSD::Exists(const char **this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6.st_dev = 136315906;
    *&v6.st_mode = "TFileBSD.cpp";
    WORD2(v6.st_ino) = 1024;
    *(&v6.st_ino + 6) = 230;
    HIWORD(v6.st_uid) = 2080;
    *&v6.st_gid = "Exists";
    *(&v6.st_rdev + 2) = 2048;
    *(&v6.st_rdev + 6) = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v6, 0x26u);
  }

LABEL_7:
  if ((*(*this + 15))(this))
  {
    v3 = 1;
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
    v3 = stat(this[1], &v6) == 0;
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v6.st_dev = 136315906;
          *&v6.st_mode = "TFileBSD.cpp";
          WORD2(v6.st_ino) = 1024;
          *(&v6.st_ino + 6) = 246;
          HIWORD(v6.st_uid) = 2080;
          *&v6.st_gid = "Exists";
          *(&v6.st_rdev + 2) = 2048;
          *(&v6.st_rdev + 6) = this;
          _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v6, 0x26u);
        }
      }
    }
  }

  return v3;
}

off_t TFileBSD::GetLength(FILE **this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v2 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    buf.st_dev = 136315906;
    *&buf.st_mode = "TFileBSD.cpp";
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = 423;
    HIWORD(buf.st_uid) = 2080;
    *&buf.st_gid = "GetLength";
    *(&buf.st_rdev + 2) = 2048;
    *(&buf.st_rdev + 6) = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v11, 0xFFFFFFDA);
      buf.st_dev = 136315906;
      *&buf.st_mode = "TFileBSD.cpp";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 427;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v11;
      *(&buf.st_rdev + 2) = 2080;
      *(&buf.st_rdev + 6) = "GetLength - file not open";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "GetLength - file not open", -38);
  }

  memset(&buf, 0, sizeof(buf));
  v3 = fileno(this[2]);
  if (fstat(v3, &buf))
  {
    v8 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v10, v8 + 100000);
      *v11 = 136315906;
      v12 = "TFileBSD.cpp";
      v13 = 1024;
      v14 = 430;
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = "GetLength::fstat failed";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v11, 0x26u);
    }

    v9 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v9, "GetLength::fstat failed", v8 + 100000);
  }

  st_size = buf.st_size;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 136315906;
          v12 = "TFileBSD.cpp";
          v13 = 1024;
          v14 = 433;
          v15 = 2080;
          v16 = "GetLength";
          v17 = 2048;
          v18 = this;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", v11, 0x26u);
        }
      }
    }
  }

  return st_size;
}

void TFileBSD::Skip(FILE **this, off_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v4 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v11 = "TFileBSD.cpp";
    v12 = 1024;
    v13 = 403;
    v14 = 2080;
    v15 = "Skip";
    v16 = 2048;
    v17 = this;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v9, 0xFFFFFFDA);
      *buf = 136315906;
      v11 = "TFileBSD.cpp";
      v12 = 1024;
      v13 = 406;
      v14 = 2080;
      v15 = v9;
      v16 = 2080;
      v17 = "Skip - file not open";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Skip - file not open", -38);
  }

  if (fseeko(this[2], a2, 1))
  {
    v7 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v9, v7 + 100000);
      *buf = 136315906;
      v11 = "TFileBSD.cpp";
      v12 = 1024;
      v13 = 408;
      v14 = 2080;
      v15 = v9;
      v16 = 2080;
      v17 = "Skip::fseeko failed";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v8 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v8, "Skip::fseeko failed", v7 + 100000);
  }

  this[3] = (this[3] + a2);
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v11 = "TFileBSD.cpp";
          v12 = 1024;
          v13 = 414;
          v14 = 2080;
          v15 = "Skip";
          v16 = 2048;
          v17 = this;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }
}

uint64_t TFileBSD::GetPosition(TFileBSD *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = kTFileBSDSubsystem;
  if (kTFileBSDSubsystem)
  {
    v3 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
LABEL_8:
      if (*(v2 + 8))
      {
        v4 = *v2;
        if (*v2)
        {
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
          {
            v6 = 136315906;
            v7 = "TFileBSD.cpp";
            v8 = 1024;
            v9 = 393;
            v10 = 2080;
            v11 = "GetPosition";
            v12 = 2048;
            v13 = this;
            _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v6, 0x26u);
          }
        }
      }

      return *(this + 3);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "TFileBSD.cpp";
    v8 = 1024;
    v9 = 391;
    v10 = 2080;
    v11 = "GetPosition";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v6, 0x26u);
    v2 = kTFileBSDSubsystem;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  return *(this + 3);
}

void TFileBSD::SeekAsync(TFileBSD *this, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = kTFileBSDSubsystem;
  if (!kTFileBSDSubsystem)
  {
    *(this + 3) = a2;
    return;
  }

  v5 = *(kTFileBSDSubsystem + 8);
  if ((v5 & 1) != 0 && (v6 = *kTFileBSDSubsystem) != 0 && os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "TFileBSD.cpp";
    v10 = 1024;
    v11 = 377;
    v12 = 2080;
    v13 = "SeekAsync";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v8, 0x26u);
    v4 = kTFileBSDSubsystem;
    *(this + 3) = a2;
    if (!v4 || (*(v4 + 8) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(this + 3) = a2;
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v7 = *v4;
  if (*v4)
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315906;
      v9 = "TFileBSD.cpp";
      v10 = 1024;
      v11 = 381;
      v12 = 2080;
      v13 = "SeekAsync";
      v14 = 2048;
      v15 = this;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v8, 0x26u);
    }
  }
}

void TFileBSD::Seek(FILE **this, FILE *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v4 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v11 = "TFileBSD.cpp";
    v12 = 1024;
    v13 = 358;
    v14 = 2080;
    v15 = "Seek";
    v16 = 2048;
    v17 = this;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v9, 0xFFFFFFDA);
      *buf = 136315906;
      v11 = "TFileBSD.cpp";
      v12 = 1024;
      v13 = 361;
      v14 = 2080;
      v15 = v9;
      v16 = 2080;
      v17 = "Seek - file not open";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Seek - file not open", -38);
  }

  if (fseeko(this[2], a2 + this[4], 0))
  {
    v7 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v9, v7 + 100000);
      *buf = 136315906;
      v11 = "TFileBSD.cpp";
      v12 = 1024;
      v13 = 363;
      v14 = 2080;
      v15 = v9;
      v16 = 2080;
      v17 = "Seek::fseeko failed";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v8 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v8, "Seek::fseeko failed", v7 + 100000);
  }

  this[3] = a2;
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v11 = "TFileBSD.cpp";
          v12 = 1024;
          v13 = 368;
          v14 = 2080;
          v15 = "Seek";
          v16 = 2048;
          v17 = this;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }
}

void TFileBSD::ReadAsync(void *a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v5 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v16 = "TFileBSD.cpp";
          v17 = 1024;
          v18 = 502;
          v19 = 2080;
          v20 = "ReadAsync";
          v21 = 2048;
          v22 = a1;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
        }
      }
    }
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    CAAssertRtn();
  }

  if ((*(*a1 + 120))(a1))
  {
    v7 = a1[5];
    v8 = a1[3];
    v9 = v8 + a3;
    v10 = v7 - v8;
    if (v9 <= v7)
    {
      v11 = a3;
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 1 && (v14 = 0, (*(v6 + 32))(0, &v14)))
    {
      if (kTFileBSDSubsystem)
      {
        v13 = *kTFileBSDSubsystem;
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      *buf = 136315650;
      v16 = "TFileBSD.cpp";
      v17 = 1024;
      v18 = 594;
      v19 = 2080;
      v20 = "GetFreeRequestBlock";
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s", buf, 0x1Cu);
      __break(1u);
    }

    else if (kTFileBSDSubsystem)
    {
      if (*(kTFileBSDSubsystem + 8))
      {
        v12 = *kTFileBSDSubsystem;
        if (*kTFileBSDSubsystem)
        {
          if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v16 = "TFileBSD.cpp";
            v17 = 1024;
            v18 = 557;
            v19 = 2080;
            v20 = "ReadAsync";
            v21 = 2048;
            v22 = a1;
            _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
          }
        }
      }
    }
  }
}

size_t TFileBSD::Write(FILE **this, void *a2, size_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v6 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v16 = "TFileBSD.cpp";
    v17 = 1024;
    v18 = 473;
    v19 = 2080;
    v20 = "Write";
    v21 = 2048;
    v22 = this;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v14, 0xFFFFFFDA);
      *buf = 136315906;
      v16 = "TFileBSD.cpp";
      v17 = 1024;
      v18 = 476;
      v19 = 2080;
      v20 = v14;
      v21 = 2080;
      v22 = "Write - file not open";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Write - file not open", -38);
  }

  if (a3)
  {
    v7 = fwrite(a2, 1uLL, a3, this[2]);
    if (v7 < a3)
    {
      v8 = ferror(this[2]);
      if (v8)
      {
        v12 = v8;
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v14, v12);
          *buf = 136315906;
          v16 = "TFileBSD.cpp";
          v17 = 1024;
          v18 = 486;
          v19 = 2080;
          v20 = v14;
          v21 = 2080;
          v22 = "Write::fwrite";
          _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v13 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v13, "Write::fwrite", v12);
      }
    }

    this[3] = (this[3] + v7);
  }

  else
  {
    v7 = 0;
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v9 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v16 = "TFileBSD.cpp";
          v17 = 1024;
          v18 = 492;
          v19 = 2080;
          v20 = "Write";
          v21 = 2048;
          v22 = this;
          _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  return v7;
}

size_t TFileBSD::Read(FILE **this, void *a2, size_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (kTFileBSDSubsystem)
  {
    v6 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v16 = "TFileBSD.cpp";
    v17 = 1024;
    v18 = 443;
    v19 = 2080;
    v20 = "Read";
    v21 = 2048;
    v22 = this;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", buf, 0x26u);
  }

LABEL_7:
  if ((((*this)->_lb._base)(this) & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v14, 0xFFFFFFDA);
      *buf = 136315906;
      v16 = "TFileBSD.cpp";
      v17 = 1024;
      v18 = 446;
      v19 = 2080;
      v20 = v14;
      v21 = 2080;
      v22 = "Read - file not open";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Read - file not open", -38);
  }

  if (a3)
  {
    v7 = fread(a2, 1uLL, a3, this[2]);
    if (v7 < a3 && !feof(this[2]))
    {
      v8 = ferror(this[2]);
      if (v8)
      {
        v12 = v8;
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v14, v12);
          *buf = 136315906;
          v16 = "TFileBSD.cpp";
          v17 = 1024;
          v18 = 457;
          v19 = 2080;
          v20 = v14;
          v21 = 2080;
          v22 = "Read::fread";
          _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v13 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v13, "Read::fread", v12);
      }
    }

    this[3] = (this[3] + v7);
  }

  else
  {
    v7 = 0;
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v9 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v16 = "TFileBSD.cpp";
          v17 = 1024;
          v18 = 463;
          v19 = 2080;
          v20 = "Read";
          v21 = 2048;
          v22 = this;
          _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", buf, 0x26u);
        }
      }
    }
  }

  return v7;
}

void TFileBSD::~TFileBSD(TFileBSD *this)
{
  TFileBSD::~TFileBSD(this);

  JUMPOUT(0x1E12BD160);
}

{
  v14 = *MEMORY[0x1E69E9840];
  v2 = &unk_1F593AEF8;
  *this = &unk_1F593AEF8;
  if (kTFileBSDSubsystem)
  {
    v3 = *kTFileBSDSubsystem;
    if (!*kTFileBSDSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "TFileBSD.cpp";
    v8 = 1024;
    v9 = 126;
    v10 = 2080;
    v11 = "~TFileBSD";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %p", &v6, 0x26u);
    v2 = *this;
  }

LABEL_7:
  if (v2[15](this))
  {
    (*(*this + 112))(this);
  }

  if (kTFileBSDSubsystem)
  {
    if (*(kTFileBSDSubsystem + 8))
    {
      v4 = *kTFileBSDSubsystem;
      if (*kTFileBSDSubsystem)
      {
        if (os_log_type_enabled(*kTFileBSDSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v6 = 136315906;
          v7 = "TFileBSD.cpp";
          v8 = 1024;
          v9 = 135;
          v10 = 2080;
          v11 = "~TFileBSD";
          v12 = 2048;
          v13 = this;
          _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s %p", &v6, 0x26u);
        }
      }
    }
  }

  v5 = *(this + 1);
  if (v5)
  {
    free(v5);
    *(this + 1) = 0;
  }
}

void sub_1DE08D6D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  v11 = *(v10 + 848);
  if (v11)
  {
    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(a9) = 136315906;
    *(&a9 + 4) = "TFileBSD.cpp";
    WORD6(a9) = 1024;
    *(&a9 + 14) = 132;
    WORD1(a10) = 2080;
    *(&a10 + 4) = "~TFileBSD";
    WORD6(a10) = 2048;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d <-%s %p: Swallowed exception from Close()", &a9, 0x26u);
  }

LABEL_8:
  __cxa_end_catch();
  JUMPOUT(0x1DE08D600);
}

void CADeprecated::AudioRingBuffer::~AudioRingBuffer(CADeprecated::AudioRingBuffer *this)
{
  CADeprecated::AudioRingBuffer::~AudioRingBuffer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593AFF0;
  CADeprecated::AudioRingBuffer::Deallocate(this);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x1E12BD160](v2, 0x1080C404ACF7207);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x1E12BD160](v3, 0x1080C404ACF7207);
  }
}

OpaqueAudioConverter *CADeprecated::AudioRingBuffer::Deallocate(CADeprecated::AudioRingBuffer *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    free(v2);
    *(this + 13) = 0;
  }

  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  result = *(this + 16);
  if (result)
  {
    result = AudioConverterDispose(result);
    *(this + 16) = 0;
  }

  return result;
}

_DWORD *CADeprecated::AudioRingBuffer::Allocate(uint64_t a1, __int128 *a2, int a3)
{
  v6 = *(a2 + 6);
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v7 = *(a2 + 7);
  }

  else
  {
    v7 = 1;
  }

  CADeprecated::AudioRingBuffer::Deallocate(a1);
  *(a1 + 112) = v7;
  *(a1 + 116) = v6;
  *(a1 + 120) = a3;
  *(a1 + 124) = v6 * a3;
  v8 = ((v6 * a3 + 8) * v7);
  v9 = malloc_type_malloc(v8, 0xA6B618C8uLL);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v27 = std::bad_alloc::bad_alloc(exception);
  }

  v11 = v9;
  bzero(v9, v8);
  *(a1 + 104) = v11;
  if (v7 >= 1)
  {
    v12 = 0;
    v13 = &v11[8 * v7];
    v14 = *(a1 + 124);
    do
    {
      *(*(a1 + 104) + 8 * v12) = v13;
      v13 += v14;
      ++v12;
    }

    while (v7 != v12);
  }

  v15 = (a1 + 152);
  v16 = 32;
  do
  {
    *(v15 - 2) = 0;
    *(v15 - 1) = 0;
    *v15 = 0;
    v15 += 6;
    --v16;
  }

  while (v16);
  *(a1 + 904) = 0;
  *(a1 + 908) = 1;
  v17 = *a2;
  v18 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v18;
  *(a1 + 8) = v17;
  v19 = *(a2 + 3);
  v20 = *(a2 + 7);
  if ((v19 & 0x20) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if ((v19 & 0x20) != 0)
  {
    v22 = 1;
  }

  else
  {
    v22 = v20;
  }

  result = malloc_type_malloc(16 * (v21 - 1) + 24, 0x10800404ACF7207uLL);
  *result = v21;
  if (v21)
  {
    v24 = result + 4;
    do
    {
      *(v24 - 2) = v22;
      *(v24 - 1) = 0;
      *v24 = 0;
      v24 += 2;
      --v21;
    }

    while (v21);
  }

  v25 = *(a1 + 88);
  *(a1 + 88) = result;
  if (v25)
  {

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t CADeprecated::AudioRingBuffer::ConvertAndStore(uint64_t this, int a2, const AudioBufferList *a3, int a4, UInt32 inNumberPCMFrames)
{
  if (inNumberPCMFrames)
  {
    v6 = *(this + 96);
    mNumberBuffers = v6->mNumberBuffers;
    if (mNumberBuffers)
    {
      v8 = *(this + 72) * inNumberPCMFrames;
      p_mData = &v6->mBuffers[0].mData;
      v10 = &a3->mBuffers[0].mData;
      do
      {
        v11 = *v10;
        v10 += 2;
        *p_mData = &v11[a4];
        *(p_mData - 1) = v8;
        p_mData += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    v12 = *(this + 88);
    v13 = v12->mNumberBuffers;
    if (v13)
    {
      v14 = *(this + 32) * inNumberPCMFrames;
      v15 = *(this + 104);
      v16 = &v12->mBuffers[0].mData;
      do
      {
        v17 = *v15++;
        *v16 = (v17 + a2);
        *(v16 - 1) = v14;
        v16 += 2;
        --v13;
      }

      while (v13);
    }

    return AudioConverterConvertComplexBuffer(*(this + 128), inNumberPCMFrames, v6, v12);
  }

  return this;
}

uint64_t CADeprecated::AudioRingBuffer::CheckTimeBounds(CADeprecated::AudioRingBuffer *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 226);
  v4 = this + 24 * (v3 & 0x1F);
  v5 = 8;
  while (1)
  {
    v6 = *(v4 + 17);
    v7 = *(v4 + 18);
    if (*(v4 + 38) == v3)
    {
      break;
    }

    if (!--v5)
    {
      return 4;
    }
  }

  if (v7 > a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 >= a3)
  {
    v9 = 0;
  }

  if (v6 >= a3)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (v7 >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 3;
  }

  if (v6 > a2)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

const __CFArray *CACFArray::GetCFType(CFArrayRef *this, unsigned int a2, const void **a3)
{
  result = *this;
  if (result)
  {
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*this, a2);
      *a3 = ValueAtIndex;
      return (ValueAtIndex != 0);
    }
  }

  return result;
}

uint64_t CACFArray::GetFloat32(CFArrayRef *this, unsigned int a2, float *a3)
{
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      result = CFNumberGetTypeID();
      if (v6 == result)
      {

        return CFNumberGetValue(v5, kCFNumberFloat32Type, a3);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetFloat64(CFArrayRef *this, unsigned int a2, double *a3)
{
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      result = CFNumberGetTypeID();
      if (v6 == result)
      {

        return CFNumberGetValue(v5, kCFNumberFloat64Type, a3);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFString(CFArrayRef *this, unsigned int a2, CACFString *a3)
{
  CACFString::operator=(a3, 0);
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFStringGetTypeID();
      if (v8 == result)
      {

        return CACFString::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFArray(CFArrayRef *this, unsigned int a2, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {

        return CACFDictionary::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFDictionary(CFArrayRef *this, unsigned int a2, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return CACFDictionary::operator=(a3, v7);
      }
    }
  }

  return result;
}

void CACFArray::AppendFloat32(CFMutableArrayRef *this, float a2)
{
  if (*this && *(this + 9) == 1)
  {
    v4[1] = 1;
    valuePtr = a2;
    v3 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
    v4[0] = v3;
    if (v3 && *this && *(this + 9) == 1)
    {
      CFArrayAppendValue(*this, v3);
    }

    CACFNumber::~CACFNumber(v4);
  }
}

void sub_1DE08DFF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  CASmartPreferences::instance(void)::global = 850045863;
  unk_1ECDAA360 = 0u;
  unk_1ECDAA370 = 0u;
  unk_1ECDAA380 = 0u;
  qword_1ECDAA390 = 0;
  qword_1ECDAA398 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  global_queue = dispatch_get_global_queue(0, 0);
  *&qword_1ECDAA3A0 = 0u;
  *&qword_1ECDAA3B0 = 0u;
  qword_1ECDAA3B8 = dispatch_source_create(MEMORY[0x1E69E9700], 1uLL, 0, global_queue);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_35759;
  handler[4] = &CASmartPreferences::instance(void)::global;
  dispatch_source_set_event_handler(qword_1ECDAA3B8, handler);
  dispatch_resume(qword_1ECDAA3B8);
}

void ___ZN18CASmartPreferencesC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  CFSetApplyFunction(*(v1 + 64), SynchronizePrefDomain, 0);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(v1);
}

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {
    v4 = result;
    v3 = this[5];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(v3->isa + 6))(v3, &v4);
  }

  return result;
}

double CACFPreferencesGetAppFloatValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = v4;
  valuePtr = 0.0;
  if (a3)
  {
    *a3 = 0;
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(v5);
    }

    else if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
    }

    else if (v6 != CFStringGetTypeID() || (v12 = 0u, v13 = 0u, *buffer = 0u, v11 = 0u, CFStringGetCString(v5, buffer, 64, 0x600u), sscanf(buffer, "%lf", &valuePtr) != 1))
    {
LABEL_13:
      v7 = valuePtr;
      CFRelease(v5);
      return v7;
    }

    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_13;
  }

  return 0.0;
}

uint64_t CACFPreferencesGetAppIntegerValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = v4;
  valuePtr = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(v5);
    }

    else if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    else if (v6 != CFStringGetTypeID() || (v12 = 0u, v13 = 0u, *buffer = 0u, v11 = 0u, CFStringGetCString(v5, buffer, 64, 0x600u), sscanf(buffer, "%d", &valuePtr) != 1))
    {
LABEL_13:
      v7 = valuePtr;
      CFRelease(v5);
      return v7;
    }

    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_13;
  }

  return 0;
}

BOOL CACFPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretBoolean(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

BOOL CASmartPreferences::InterpretBoolean(CASmartPreferences *this, _BYTE *a2, BOOL *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      LODWORD(this) = CFBooleanGetValue(v4);
LABEL_6:
      *a2 = 1;
      return this != 0;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      LODWORD(this) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v5 != CFStringGetTypeID())
    {
      LODWORD(this) = 0;
      return this != 0;
    }

    v14 = 0u;
    v15 = 0u;
    *buffer = 0u;
    v13 = 0u;
    CFStringGetCString(v4, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(this) = valuePtr != 0;
      return this != 0;
    }

    v7 = buffer[0];
    if (buffer[0])
    {
      v8 = &buffer[1];
      do
      {
        *(v8 - 1) = __tolower(v7);
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v10 = *&buffer[4] == 101) : (v10 = 0), v10))
    {
      LODWORD(this) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | buffer[4]))
    {
      LODWORD(this) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(this) = valuePtr;
    }
  }

  return this != 0;
}

void *std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v8, a4);
  *a1 = a2;
  a1[1] = a3;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a1 + 2), v8);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v8);
  return a1;
}

void sub_1DE08E748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t MemoryStream::Skip(uint64_t this, uint64_t a2)
{
  v2 = *(this + 24);
  v3 = *(this + 32);
  v4 = -v3;
  v5 = v2 - v3;
  v6 = v3 + a2;
  if (v5 > a2)
  {
    v2 = v6;
  }

  if (v4 >= a2)
  {
    v2 = 0;
  }

  *(this + 32) = v2;
  return this;
}

uint64_t MemoryStream::Seek(uint64_t this, uint64_t a2)
{
  if (a2 < 0)
  {
    *(this + 32) = 0;
  }

  else
  {
    v2 = *(this + 24);
    if (v2 <= a2)
    {
      *(this + 32) = v2;
    }

    else
    {
      *(this + 32) = a2;
    }
  }

  return this;
}

size_t MemoryStream::Write(MemoryStream *this, void *__src, size_t __n)
{
  v6 = *(this + 2);
  if (v6)
  {
    if (*(this + 41))
    {
      v8 = this + 32;
      v7 = *(this + 4);
      if (*(this + 3) - v7 >= __n)
      {
        memcpy((v6 + v7), __src, __n);
        v9 = v8;
        goto LABEL_8;
      }

      CAVerboseAbort();
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = -54;
  }

  Length = CFDataGetLength(*(this + 1));
  v9 = (this + 32);
  v11.location = *(this + 4);
  if (v11.location == Length)
  {
    CFDataAppendBytes(*(this + 1), __src, __n);
    *(this + 3) = CFDataGetLength(*(this + 1));
  }

  else
  {
    v11.length = __n;
    CFDataReplaceBytes(*(this + 1), v11, __src, __n);
  }

LABEL_8:
  *v9 += __n;
  return __n;
}

size_t MemoryStream::Read(MemoryStream *this, void *__dst, size_t a3)
{
  v3 = *(this + 4);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 3) - v3 >= a3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
  }

  memcpy(__dst, (v4 + v3), a3);
  *(this + 4) += a3;
  return a3;
}

void MemoryStream::~MemoryStream(MemoryStream *this)
{
  MemoryStream::~MemoryStream(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F593B100;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  else
  {
    v3 = *(this + 2);
    if (v3)
    {
      if (*(this + 40) == 1)
      {
        free(v3);
      }
    }
  }
}

uint64_t CADeprecated::CABufferList::AllocateBuffers(uint64_t this, unsigned int a2)
{
  if (*(this + 36) < a2)
  {
    operator new[]();
  }

  return this;
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  v1 = MEMORY[0x1EEDB7470](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}

void IR::FFTFilterKernel<float>::accumulate()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::initialize()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::storeCoeffs()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::reset()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::scale()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::overwrite()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::FFTFilterKernel()
{
    ;
  }
}

{
    ;
  }
}

void IR::FFTFilterKernel<float>::~FFTFilterKernel()
{
    ;
  }
}

void _ZN2IR17FixedIntegerDelayIDF16_E5resetEv()
{
    ;
  }
}

void _ZN2IR17FixedIntegerDelayIDF16_E7processEPKDF16_PDF16_j()
{
    ;
  }
}

void _ZN2IR17FixedIntegerDelayIDF16_EC1Ejb()
{
    ;
  }
}

void IR::FixedIntegerDelay<float>::reset()
{
    ;
  }
}

void IR::FixedIntegerDelay<float>::process()
{
    ;
  }
}

void IR::FixedIntegerDelay<float>::FixedIntegerDelay()
{
    ;
  }
}

void _ZN2IR9FFTFilterIDF16_E10initializeEjjjbjjbbb()
{
    ;
  }
}

void _ZN2IR9FFTFilterIDF16_E15setFilterCoeffsEPKPKDF16_jj()
{
    ;
  }
}

void _ZN2IR9FFTFilterIDF16_E5resetEv()
{
    ;
  }
}

void _ZN2IR9FFTFilterIDF16_E7processEPKDF16_PKPDF16_jj()
{
    ;
  }
}

void _ZN2IR9FFTFilterIDF16_EC1Ev()
{
    ;
  }
}

void IR::FFTFilter<float>::initialize()
{
    ;
  }
}

{
    ;
  }
}

void IR::FFTFilter<float>::setFilterCoeffs()
{
    ;
  }
}

void IR::FFTFilter<float>::setFilterKernels()
{
    ;
  }
}

void IR::FFTFilter<float>::getScratchKernels()
{
    ;
  }
}

void IR::FFTFilter<float>::processMultipleInputs()
{
    ;
  }
}

void IR::FFTFilter<float>::reset()
{
    ;
  }
}

void IR::FFTFilter<float>::process()
{
    ;
  }
}

{
    ;
  }
}

void IR::FFTFilter<float>::FFTFilter()
{
    ;
  }
}

uint64_t DSPGraph::Graph::add()
{
  return MEMORY[0x1EEDEF678]();
}

{
  return MEMORY[0x1EEDEF680]();
}

uint64_t DSPGraph::Graph::connect()
{
  return MEMORY[0x1EEDEF698]();
}

{
  return MEMORY[0x1EEDEF6A0]();
}

void IR::IRData::getInterpolatedTimeDomainCoeffs<std::vector<float>>()
{
    ;
  }
}

void IR::FFTFilter<float>::doXFadeUpdate()
{
    ;
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A10](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

uint64_t std::filebuf::basic_filebuf()
{
  return MEMORY[0x1EEE63D80]();
}

{
  return MEMORY[0x1EEE63D88]();
}

uint64_t std::ostream::~ostream()
{
  return MEMORY[0x1EEE63E90]();
}

{
  return MEMORY[0x1EEE63E98]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x1EEE64438](this, a2, a3, a4);
}

{
  return MEMORY[0x1EEE64450](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x1EEE64440]();
}

{
  return MEMORY[0x1EEE64448]();
}

{
  return MEMORY[0x1EEE64458]();
}

{
  return MEMORY[0x1EEE64460]();
}

{
  return MEMORY[0x1EEE64470]();
}

{
  return MEMORY[0x1EEE64478]();
}

void std::exception::~exception(std::exception *this)
{
  MEMORY[0x1EEE64520](this);
}

{
  MEMORY[0x1EEE64528](this);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}