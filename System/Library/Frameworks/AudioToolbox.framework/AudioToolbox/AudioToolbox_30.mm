uint64_t Cns::setMinGain(uint64_t this, float a2)
{
  v2 = (*(this + 4) + *(this + 28));
  if (v2 >= 1)
  {
    v3 = a2;
    v4 = fmaxf(a2, 0.25);
    v5 = v3 / 0.3548;
    v6 = v5 <= 0.717;
    v7 = v5 < 1.0 || v5 <= 0.717;
    if (v5 >= 1.0)
    {
      v6 = 1;
    }

    v8 = 0.055;
    if (v7)
    {
      v8 = 0.039435;
    }

    v9 = v5 * 0.0549999997;
    if (v6)
    {
      v9 = v8;
    }

    v10 = *(this + 288);
    v11 = *(this + 144);
    v12 = *(this + 152);
    do
    {
      *v11++ = v4;
      *v10++ = v9;
      *v12++ = v9;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t Cns::setMinGain(uint64_t this, float a2, int a3)
{
  v3 = a2;
  v4 = fmaxf(a2, 0.25);
  v5 = *(this + 28) + *(this + 4) - 1;
  if (v5 >= a3)
  {
    v5 = a3;
  }

  v6 = *(this + 152);
  *(*(this + 144) + 4 * v5) = v4;
  v7 = v3 / 0.3548;
  v8 = v3 / 0.3548 <= 0.717;
  v9 = v3 / 0.3548 < 1.0 || v3 / 0.3548 <= 0.717;
  if (v7 >= 1.0)
  {
    v8 = 1;
  }

  v10 = 0.055;
  if (v9)
  {
    v10 = 0.039435;
  }

  v11 = v7 * 0.0549999997;
  if (v8)
  {
    v11 = v10;
  }

  *(*(this + 288) + 4 * v5) = v11;
  *(v6 + 4 * v5) = v11;
  return this;
}

float Cns::add_comf_noise(Cns *this, DSPSplitComplex *a2, const DSPSplitComplex *a3, const float *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(this + 10);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(this + 18);
    v10 = *(*(this + 41) + 112 * a7 + 56);
    v11 = *(this + 29);
    v12 = 4 * v7;
    v13 = *(this + 31) + 4;
    result = 1.0;
    do
    {
      v15 = *(a6 + v8);
      v16 = *(v9 + 4 * a7);
      if (v15 >= v16)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0 - v15;
      }

      v18 = v17 * (((v16 * *(this + 14)) * (*(v10 + 4 * *(v11 + v8)) - *(this + 46))) * *(v13 + v8));
      *(&a2->realp + v8 + 4) = *(&a2->realp + v8 + 4) + (v18 * a4[v8 / 4]);
      *(&a3->realp + v8 + 4) = *(&a3->realp + v8 + 4) + (v18 * *(a5 + v8));
      v8 += 4;
    }

    while (v12 != v8);
  }

  return result;
}

float *Cns::comf_noise(float *this, float *a2)
{
  if (a2 >= 1)
  {
    v2 = this;
    v3 = a2;
    do
    {
      this = rand();
      v4 = (vcvts_n_f32_s32(this, 0x1FuLL) + -0.5) * 32767.0;
      *v2++ = v4;
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t AUSpatialProbability::SetMaxFramesPerSlice(AUSpatialProbability *this, int a2)
{
  result = ausdk::AUBase::SetMaxFramesPerSlice(this, a2);
  if (*(this + 145) != a2)
  {
    *(this + 145) = a2;
  }

  return result;
}

uint64_t AUSpatialProbability::ChangeStreamFormat(AUSpatialProbability *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (a4->mSampleRate != a5->mSampleRate)
  {
    *(this + 73) = *&a5->mSampleRate;
  }

  return 0;
}

uint64_t AUSpatialProbability::ValidFormat(AUSpatialProbability *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
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
    if (a4->mChannelsPerFrame < 0x11)
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

uint64_t AUSpatialProbability::SupportedNumChannels(AUSpatialProbability *this, const AUChannelInfo **a2)
{
  v2 = 0;
  v3 = xmmword_1DE0952D0;
  v4 = xmmword_1DE095220;
  v5 = xmmword_1DE095150;
  v6 = xmmword_1DE095160;
  v7.i64[0] = 0x1000100010001;
  v7.i64[1] = 0x1000100010001;
  v8 = vdupq_n_s64(8uLL);
  do
  {
    v9 = (&AUSpatialProbability::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs + v2);
    v11.val[0] = vaddq_s16(vuzp1q_s16(vuzp1q_s32(v6, v5), vuzp1q_s32(v4, v3)), v7);
    v11.val[1] = v11.val[0];
    vst2q_s16(v9, v11);
    v4 = vaddq_s64(v4, v8);
    v5 = vaddq_s64(v5, v8);
    v6 = vaddq_s64(v6, v8);
    v3 = vaddq_s64(v3, v8);
    v2 += 32;
  }

  while (v2 != 64);
  if (a2)
  {
    *a2 = &AUSpatialProbability::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUSpatialProbability::GetParameterValueStrings(AUSpatialProbability *this, int a2, int a3, const __CFArray **a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  result = 0;
  if (a3 <= 5)
  {
    if (a3)
    {
      if (a3 == 4)
      {
        v6 = &xmmword_1E866AF20;
LABEL_21:
        v9 = v6[1];
        v11 = *v6;
        v12 = v9;
        *&v13 = *(v6 + 4);
        v7 = 5;
        goto LABEL_22;
      }

      if (a3 != 5)
      {
        return result;
      }

      goto LABEL_13;
    }

    v8 = &xmmword_1E866AF08;
LABEL_18:
    v11 = *v8;
    *&v12 = *(v8 + 2);
    v7 = 3;
    goto LABEL_22;
  }

  if (a3 > 9)
  {
    if (a3 == 10)
    {
      v11 = xmmword_1E866AF78;
      v7 = 2;
      goto LABEL_22;
    }

    if (a3 != 16)
    {
      return result;
    }

    v8 = &xmmword_1E866AFB0;
    goto LABEL_18;
  }

  if (a3 != 6)
  {
    if (a3 != 7)
    {
      return result;
    }

    v6 = &xmmword_1E866AF88;
    goto LABEL_21;
  }

LABEL_13:
  v11 = xmmword_1E866AF48;
  v12 = *&off_1E866AF58;
  v13 = xmmword_1E866AF68;
  v7 = 6;
LABEL_22:
  v10 = CFArrayCreate(0, &v11, v7, 0);
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t AUSpatialProbability::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
  }

  return result;
}

uint64_t AUSpatialProbability::GetParameterInfo(AUSpatialProbability *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"Target definition mode. Used to define the centroid for the target model.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Target definition mode. Used to define the centroid for the target model.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x4000000000000000;
      buffer->defaultValue = 0.0;
      flags = buffer->flags;
      v7 = -1056964608;
      goto LABEL_49;
    case 1:
      buffer->cfNameString = @"Target azimuth, used for DOA mode.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Target azimuth, used for DOA mode.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Degrees;
      v9 = 5.62950281e15;
      goto LABEL_47;
    case 2:
      buffer->cfNameString = @"Target elevation, used for DOA mode.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Target elevation, used for DOA mode.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Degrees;
      v9 = 2.19902453e13;
      goto LABEL_47;
    case 3:
      buffer->cfNameString = @"Target distance, used for DOA mode.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Target distance, used for DOA mode.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Meters;
      v17 = 0x41A0000000000000;
      goto LABEL_30;
    case 4:
      v13 = @"DOA-based target source model (used for TargetDefinitionMode: DOA).";
      goto LABEL_19;
    case 5:
      buffer->cfNameString = @"Steering vector-based target source model (used for TargetDefinitionMode: SteeringVectorDictionary and ExternalSteeringVector).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Steering vector-based target source model (used for TargetDefinitionMode: SteeringVectorDictionary and ExternalSteeringVector).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v18 = 0x40A0000000000000;
      goto LABEL_33;
    case 6:
      buffer->cfNameString = @"Steering vector-based interfering source model (used for TargetDefinitionMode: SteeringVectorDictionary and ExternalSteeringVector).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Steering vector-based interfering source model (used for TargetDefinitionMode: SteeringVectorDictionary and ExternalSteeringVector).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x40A0000000000000;
      v16 = 1.0;
      goto LABEL_28;
    case 7:
      v13 = @"Shape parameter for the target model (fixed or frequency weighted).";
LABEL_19:
      buffer->cfNameString = v13;
      buffer->flags = 0x8000000;
      CFStringGetCString(v13, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v18 = 0x4080000000000000;
      goto LABEL_33;
    case 8:
      buffer->cfNameString = @"Maximum value of the shape parameter for the target model.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Maximum value of the shape parameter for the target model.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x424800003F800000;
      v8 = 10.0;
      goto LABEL_45;
    case 9:
      buffer->cfNameString = @"Minimum value of the shape parameter for the target model.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Minimum value of the shape parameter for the target model.", buffer->name, 52, 0x8000100u);
      v14 = 2;
      goto LABEL_42;
    case 10:
      buffer->cfNameString = @"Prior probability mode for the target and interferer (fixed or weighted).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Prior probability mode for the target and interferer (fixed or weighted).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      v20 = kAudioUnitParameterUnit_Indexed;
      goto LABEL_32;
    case 11:
      v12 = @"Prior probability of a source (either target or interfererer).";
      goto LABEL_11;
    case 12:
      v12 = @"Conditional prior probability of the target source.";
LABEL_11:
      buffer->cfNameString = v12;
      buffer->flags = 0x8000000;
      CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v8 = 0.5;
      goto LABEL_45;
    case 13:
      buffer->cfNameString = @"Smooth subband DOA estimates? (used for TargetDefinitionMode: DOA)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Smooth subband DOA estimates? (used for TargetDefinitionMode: DOA)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 4;
      flags = buffer->flags;
      v20 = kAudioUnitParameterUnit_Boolean;
LABEL_32:
      buffer->unit = v20;
      v18 = 0x3F80000000000000;
LABEL_33:
      *&buffer->minValue = v18;
      buffer->defaultValue = 0.0;
      goto LABEL_34;
    case 14:
      buffer->cfNameString = @"Temporal smoothing of the subband DOA estimates (time constant, in seconds).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Temporal smoothing of the subband DOA estimates (time constant, in seconds).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 4;
      v10 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x40A0000000000000;
      buffer->defaultValue = 0.0;
      v11 = v10 | 0xC0100000;
      goto LABEL_50;
    case 15:
      buffer->cfNameString = @"Frequency smoothing of the subband DOA estimates (bandwith, in octaves).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Frequency smoothing of the subband DOA estimates (bandwith, in octaves).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 4;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4000000000000000;
      v16 = 0.5;
LABEL_28:
      buffer->defaultValue = v16;
LABEL_34:
      v7 = -1055916032;
      goto LABEL_49;
    case 16:
      buffer->cfNameString = @"Post-mask definition mode. Used to define computation of the real-vaued gain.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Post-mask definition mode. Used to define computation of the real-vaued gain.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v9 = 2.0;
      goto LABEL_47;
    case 17:
      v15 = @"Minimum gain for the post-mask (in dB).";
      goto LABEL_22;
    case 18:
      buffer->cfNameString = @"Scaling parameter for sigmoid mapping from CDR to shape parameter.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Scaling parameter for sigmoid mapping from CDR to shape parameter.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v17 = 0x40A0000000000000;
LABEL_30:
      *&buffer->minValue = v17;
      v8 = 1.0;
      goto LABEL_45;
    case 19:
      buffer->cfNameString = @"Offset parameter for sigmoid mapping from CDR to shape parameter (in dB).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Offset parameter for sigmoid mapping from CDR to shape parameter (in dB).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      v9 = -_D0;
      goto LABEL_47;
    case 20:
      v19 = @"Average presence probability of the target source for the current frame (averaged across subbands).";
      goto LABEL_38;
    case 21:
      v19 = @"Average presence probability of an interfering source for the current frame (averaged across subbands).";
      goto LABEL_38;
    case 22:
      v19 = @"Average presence probability of the background noise component for the current frame (averaged across subbands).";
LABEL_38:
      buffer->cfNameString = v19;
      buffer->flags = 0x8000000;
      CFStringGetCString(v19, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 0.0;
      v7 = 1074823168;
      goto LABEL_49;
    case 23:
      buffer->cfNameString = @"Bypass with external probability as the target probability estimate?";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Bypass with external probability as the target probability estimate?", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      goto LABEL_43;
    case 24:
      v15 = @"Lower bound for the estimated target probability (in dB).";
LABEL_22:
      buffer->cfNameString = v15;
      buffer->flags = 0x8000000;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3281387520;
      v8 = -300.0;
      goto LABEL_45;
    case 25:
      buffer->cfNameString = @"Cutoff frequency to start decaying concentration parameter (in Hz).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Cutoff frequency to start decaying concentration parameter (in Hz).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      *&buffer->minValue = 0x461C4000447A0000;
      v8 = 4000.0;
      goto LABEL_45;
    case 26:
      buffer->cfNameString = @"Target beam index for steering vector-based models.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Target beam index for steering vector-based models.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v9 = 4.1231686e12;
      goto LABEL_47;
    case 27:
      buffer->cfNameString = @"Minimum gain for the post-mask in noise (in dB).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Minimum gain for the post-mask in noise (in dB).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3281387520;
      v8 = -20.0;
      goto LABEL_45;
    case 28:
      buffer->cfNameString = @"Apply extra suppression if average SPP is lower than this threshold (constant probability).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Apply extra suppression if average SPP is lower than this threshold (constant probability).", buffer->name, 52, 0x8000100u);
      v14 = 5;
LABEL_42:
      buffer->clumpID = v14;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
LABEL_43:
      v9 = 0.0078125;
LABEL_47:
      *&buffer->minValue = v9;
      buffer->defaultValue = 0.0;
      goto LABEL_48;
    case 29:
      buffer->cfNameString = @"Hangover time of the decision of identifying a speech frame based on the SPP value (time constant, in seconds)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Hangover time of the decision of identifying a speech frame based on the SPP value (time constant, in seconds)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x3F80000000000000;
      v8 = 0.05;
LABEL_45:
      buffer->defaultValue = v8;
LABEL_48:
      v7 = -1072693248;
LABEL_49:
      v11 = flags | v7;
LABEL_50:
      result = 0;
      buffer->flags = v11;
      break;
    default:
      result = 4294956418;
      break;
  }

  return result;
}

uint64_t AUSpatialProbability::GetParameterList(AUSpatialProbability *this, int a2, unsigned int *a3, unsigned int *a4)
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

ausdk::AUInputElement *AUSpatialProbability::Render(AUSpatialProbability *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
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

  v12 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v12)
  {
    goto LABEL_15;
  }

  v15[0] = ausdk::AUIOElement::PrepareBuffer(v12, a4);
  if (v11)
  {
    return 0;
  }

  v13 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v13)
  {
LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v13 + 144))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v14 = *(v13 + 152) + 48;
  return (*(*this + 184))(this, a2, a4, 1, &v14, 1, v15);
}

uint64_t AUSpatialProbability::ProcessMultipleBufferLists(AUSpatialProbability *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v11 = *(this + 66);
  if (*(this + 67) != v11)
  {
    AUSpatialProbability::UpdateState(this);
    *(this + 67) = v11;
  }

  if (*(this + 91) && (*(this + 68) != *(this + 69) || *(this + 70) != *(this + 71)))
  {
    AUSpatialProbability::UpdateKappaState(this);
  }

  if (*(this + 145) != v9)
  {
    return 4294956422;
  }

  v12 = *a5;
  if (!*a5)
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v18 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v54.mNumberBuffers = 136315394;
      *(&v54.mNumberBuffers + 1) = "AUSpatialProbability.cpp";
      LOWORD(v54.mBuffers[0].mDataByteSize) = 1024;
      *(&v54.mBuffers[0].mDataByteSize + 2) = 1672;
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d InputSignals cannot be NULL. It is a required input.\n", &v54, 0x12u);
    }

    return 4294956420;
  }

  v13 = *v12;
  if (*v12 != *(this + 148))
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v19 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(this + 148);
      v54.mNumberBuffers = 136315650;
      *(&v54.mNumberBuffers + 1) = "AUSpatialProbability.cpp";
      LOWORD(v54.mBuffers[0].mDataByteSize) = 1024;
      *(&v54.mBuffers[0].mDataByteSize + 2) = 1679;
      WORD1(v54.mBuffers[0].mData) = 1024;
      HIDWORD(v54.mBuffers[0].mData) = v20;
      v21 = "%25s:%-5d Number of channels on the input bus in not matching the expected number of channels (%u).\n";
LABEL_53:
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, v21, &v54, 0x18u);
    }

    return 4294956428;
  }

  if (*a7 && (*a7)->mNumberBuffers != v13)
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v19 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = *(this + 148);
      v54.mNumberBuffers = 136315650;
      *(&v54.mNumberBuffers + 1) = "AUSpatialProbability.cpp";
      LOWORD(v54.mBuffers[0].mDataByteSize) = 1024;
      *(&v54.mBuffers[0].mDataByteSize + 2) = 1690;
      WORD1(v54.mBuffers[0].mData) = 1024;
      HIDWORD(v54.mBuffers[0].mData) = v26;
      v21 = "%25s:%-5d Number of channels on the output bus in not matching the expected number of channels (%u).\n";
      goto LABEL_53;
    }

    return 4294956428;
  }

  v47 = 0;
  v14 = (2 * v9);
  *&v54.mNumberBuffers = *(this + 73);
  v54.mBuffers[0] = xmmword_1DE09BD50;
  v55 = 4;
  v56 = v13;
  v57 = 32;
  AudioDSP::Utility::DetectNonFinites(v14, v12, &v54, (&v47 + 1), a5);
  if ((*(this + 576) & 1) == 0 && (HIBYTE(v47) != 1 || *(this + 596) != 1))
  {
    v22 = (*(this + 145) + 1);
    v23 = *(this + 91);
    if (*(this + 696) == 1)
    {
      memcpy(*(this + 111), v23[35], 4 * (*(this + 145) + 1));
      vDSP_vclr(*(this + 114), 1, v22);
      vDSP_meanv(*(this + 111), 1, this + 171, v22);
      *(this + 172) = 0;
      *(this + 173) = 1.0 - *(this + 171);
      memcpy(*(this + 117), *(this + 105), 4 * v22);
    }

    else
    {
      (*(*v23 + 6))(v23, *a5);
      memcpy(*(this + 111), *(*(this + 91) + 304), 4 * v22);
      memcpy(*(this + 114), *(*(this + 91) + 328), 4 * v22);
      v24 = *(this + 91);
      *(this + 684) = *(v24 + 352);
      *(this + 173) = *(v24 + 360);
      v25 = *(this + 167);
      switch(v25)
      {
        case 2:
          HIDWORD(v48) = 1065353216;
          vDSP_vfill(&v48 + 1, *(this + 117), 1, v22);
          MEMORY[0x1E12BE9A0](*(this + 114), 1, *(this + 117), 1, *(this + 117), 1, v22);
          vDSP_vthr(*(this + 117), 1, this + 168, *(this + 117), 1, v22);
          break;
        case 1:
          HIDWORD(v48) = 0;
          vDSP_meanv(*(this + 111), 1, &v48 + 1, *(this + 145));
          v27 = *(&v48 + 1);
          v28 = *(this + 180);
          v29 = 0.0;
          if (v28 != 0.0)
          {
            v30 = *(this + 73);
            v29 = expf((-*(this + 145) / v30) / v28);
          }

          v31 = (v29 * *&AUSpatialProbability::UpdateProbabilitiesAndPostMask(AudioBufferList const&)::SPPHangover) + ((1.0 - v29) * v27);
          if (v27 >= *&AUSpatialProbability::UpdateProbabilitiesAndPostMask(AudioBufferList const&)::SPPHangover)
          {
            v31 = v27;
          }

          AUSpatialProbability::UpdateProbabilitiesAndPostMask(AudioBufferList const&)::SPPHangover = LODWORD(v31);
          if (v31 >= *(this + 179))
          {
            vDSP_vthr(*(this + 111), 1, this + 168, *(this + 117), 1, v22);
          }

          else
          {
            vDSP_vfill(this + 178, *(this + 117), 1, v22);
          }

          break;
        case 0:
          HIDWORD(v48) = 1065353216;
          vDSP_vfill(&v48 + 1, *(this + 117), 1, v22);
          break;
      }

      vDSP_vthr(*(this + 111), 1, this + 175, *(this + 111), 1, v22);
    }

    v32 = *a5;
    v33 = *a7;
    v34 = *(this + 145);
    v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v36 & 1) == 0 || (ausdk::AUElement::SetParameter(v35, 0x14u, *(this + 171)), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v38 & 1) == 0) || (ausdk::AUElement::SetParameter(v37, 0x15u, *(this + 172)), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v40 & 1) == 0))
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v39, 0x16u, *(this + 173));
    if (*v33)
    {
      v42 = 0;
      v43 = (v34 + 1);
      v44 = (v34 - 1);
      v45 = 4;
      do
      {
        MEMORY[0x1E12BE7F0](*(this + 117), 1, *&v32[v45], 1, *&v33[v45], 1, v43);
        MEMORY[0x1E12BE7F0](*(this + 117) + 4, 1, *&v32[v45] + 4 * v43, 1, *&v33[v45] + 4 * v43, 1, v44);
        ++v42;
        v45 += 4;
      }

      while (v42 < *v33);
    }

    AudioDSP::Utility::DetectNonFinites(v14, *a7, &v54, &v47, v41);
    if (v47 != 1 || *(this + 596) != 1)
    {
      return 0;
    }

    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v46 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
LABEL_83:
        AUSpatialProbability::InitializeSpatialProbabilityClasses(this);
        CopyBufferList(*a5, *a7);
        return 0;
      }
    }

    else
    {
      v46 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v48) = 136315650;
      v49 = "AUSpatialProbability.cpp";
      v50 = 1024;
      v51 = 1737;
      v52 = 1024;
      v53 = v47;
      _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d (OutputSignals) is NOT finite: (%u)\n", &v48 + 4, 0x18u);
    }

    goto LABEL_83;
  }

  CopyBufferList(*a5, *a7);
  v48 = 0x3F80000000000000;
  v15 = (*(this + 145) + 1);
  vDSP_vfill(&v48 + 1, *(this + 117), 1, v15);
  vDSP_vfill(&v48 + 1, *(this + 111), 1, v15);
  vDSP_vfill(&v48, *(this + 114), 1, v15);
  if (HIBYTE(v47) == 1)
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v16 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v48) = 136315650;
      v49 = "AUSpatialProbability.cpp";
      v50 = 1024;
      v51 = 1717;
      v52 = 1024;
      v53 = HIBYTE(v47);
      _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d (InputSignals) is NOT finite: (%u)\n", &v48 + 4, 0x18u);
    }
  }

  return 0;
}

uint64_t AUSpatialProbability::UpdateState(AUSpatialProbability *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 150) = ausdk::AUElement::GetParameter(v2, 0);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 151) = ausdk::AUElement::GetParameter(v4, 1u);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 152) = ausdk::AUElement::GetParameter(v6, 2u);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 153) = ausdk::AUElement::GetParameter(v8, 3u);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 154) = ausdk::AUElement::GetParameter(v10, 4u);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 155) = ausdk::AUElement::GetParameter(v12, 5u);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 156) = ausdk::AUElement::GetParameter(v14, 6u);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 157) = ausdk::AUElement::GetParameter(v16, 7u);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 158) = ausdk::AUElement::GetParameter(v18, 8u);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 159) = ausdk::AUElement::GetParameter(v20, 9u);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 160) = ausdk::AUElement::GetParameter(v22, 0xAu);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 161) = ausdk::AUElement::GetParameter(v24, 0xBu);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 162) = ausdk::AUElement::GetParameter(v26, 0xCu);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 652) = ausdk::AUElement::GetParameter(v28, 0xDu) != 0.0;
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 164) = ausdk::AUElement::GetParameter(v30, 0xEu);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 166) = ausdk::AUElement::GetParameter(v32, 0xFu);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 167) = ausdk::AUElement::GetParameter(v34, 0x10u);
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_48;
  }

  Parameter = ausdk::AUElement::GetParameter(v36, 0x11u);
  v39 = 1.0;
  if (Parameter != 0.0)
  {
    v39 = __exp10f(Parameter / 20.0);
  }

  *(this + 168) = v39;
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 169) = ausdk::AUElement::GetParameter(v40, 0x12u);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 170) = ausdk::AUElement::GetParameter(v42, 0x13u);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 171) = ausdk::AUElement::GetParameter(v44, 0x14u);
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 172) = ausdk::AUElement::GetParameter(v46, 0x15u);
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 173) = ausdk::AUElement::GetParameter(v48, 0x16u);
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 696) = ausdk::AUElement::GetParameter(v50, 0x17u) != 0.0;
  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_48;
  }

  v54 = ausdk::AUElement::GetParameter(v52, 0x18u);
  v55 = 1.0;
  if (v54 != 0.0)
  {
    v55 = __exp10f(v54 / 20.0);
  }

  *(this + 175) = v55;
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 176) = ausdk::AUElement::GetParameter(v56, 0x19u);
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_48;
  }

  *(this + 177) = ausdk::AUElement::GetParameter(v58, 0x1Au);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_48;
  }

  v62 = ausdk::AUElement::GetParameter(v60, 0x1Bu);
  v63 = 1.0;
  if (v62 != 0.0)
  {
    v63 = __exp10f(v62 / 20.0);
  }

  *(this + 178) = v63;
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v65 & 1) == 0 || (*(this + 179) = ausdk::AUElement::GetParameter(v64, 0x1Cu), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v67 & 1) == 0) || (*(this + 180) = ausdk::AUElement::GetParameter(v66, 0x1Du), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v69 & 1) == 0))
  {
LABEL_48:
    abort();
  }

  v70 = ausdk::AUElement::GetParameter(v68, 0xEu);
  v71 = 0.0;
  if (v70 != 0.0)
  {
    v72 = *(this + 73);
    v71 = expf((-*(this + 145) / v72) / v70);
  }

  *(this + 165) = v71;
  result = *(this + 91);
  if (result)
  {
    (*(*result + 56))(result, *(this + 151));
    (*(**(this + 91) + 64))(*(this + 91), *(this + 152));
    result = (*(**(this + 91) + 72))(*(this + 91), *(this + 153));
    if (*(this + 91))
    {
      if (*(this + 68) != *(this + 69) || *(this + 70) != *(this + 71))
      {

        return AUSpatialProbability::UpdateKappaState(this);
      }
    }
  }

  return result;
}

uint64_t AUSpatialProbability::UpdateKappaState(AUSpatialProbability *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 91);
  *(v2 + 16) = *(this + 34);
  *(v2 + 32) = *(this + 35);
  v3 = *(this + 158);
  if (v3 >= 0.0 && *(v2 + 56) <= v3)
  {
    *(v2 + 52) = v3;
  }

  else
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v4 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 52);
      v6 = *(v2 + 56);
      v17 = 136316162;
      v18 = "SpatialProbabilityBase.cpp";
      v19 = 1024;
      v20 = 301;
      v21 = 2048;
      v22 = v3;
      v23 = 2048;
      v24 = v5;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SpatialProbabilityBase: Shape parameter max not set to (%f), it remains at the current value (%f). KappaMax should be >= (%f).\n", &v17, 0x30u);
    }
  }

LABEL_12:
  v7 = *(this + 91);
  v8 = *(this + 159);
  if (v8 >= 0.0 && *(v7 + 52) >= v8)
  {
    *(v7 + 56) = v8;
    goto LABEL_23;
  }

  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v9 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v7 + 56);
    v11 = *(v7 + 52);
    v17 = 136316162;
    v18 = "SpatialProbabilityBase.cpp";
    v19 = 1024;
    v20 = 318;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SpatialProbabilityBase: Shape parameter min not set to (%f), it remains at the current value (%f). KappaMin should be in range [0, %f].\n", &v17, 0x30u);
  }

LABEL_23:
  SpatialProbabilityBase::SetPriorProbabilities(*(this + 91), *(this + 161), *(this + 162));
  result = (*(**(this + 91) + 88))(*(this + 91), *(this + 165));
  v13 = *(this + 91);
  *(v13 + 392) = *(this + 676);
  v14 = *(this + 145);
  v15 = *(this + 73) / (v14 + v14);
  v16 = vcvtas_u32_f32(fabsf(*(this + 176) / v15));
  if (v16 >= v14)
  {
    v16 = *(this + 145);
  }

  *(v13 + 88) = v16;
  *(this + 69) = *(this + 68);
  *(this + 71) = *(this + 70);
  return result;
}

void AUSpatialProbability::InitializeSpatialProbabilityClasses(AUSpatialProbability *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v1 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUSpatialProbability.cpp";
    v10 = 1024;
    v11 = 2032;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize Spatial Probability Classes.\n", buf, 0x12u);
  }

LABEL_9:
  v2 = *(this + 145);
  (*(*this + 64))(this);
  v3 = (v2 + 1);
  v4 = *(this + 150);
  switch(v4)
  {
    case 2:
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v7 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315394;
        *&buf[1] = "AUSpatialProbability.cpp";
        v10 = 1024;
        v11 = 2124;
        _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Create SV-based estimator (external SV)\n", buf, 0x12u);
      }

LABEL_34:
      operator new();
    case 1:
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v6 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315394;
        *&buf[1] = "AUSpatialProbability.cpp";
        v10 = 1024;
        v11 = 2068;
        _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Create SV-based estimator (SV dictionary)\n", buf, 0x12u);
      }

LABEL_30:
      operator new();
    case 0:
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v5 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315394;
        *&buf[1] = "AUSpatialProbability.cpp";
        v10 = 1024;
        v11 = 2043;
        _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Create DOA-based estimator\n", buf, 0x12u);
      }

LABEL_38:
      operator new();
  }

  *(this + 94) = *(this + 93);
  std::vector<float>::resize(this + 93, (2 * v3));
  *(this + 97) = *(this + 96);
  std::vector<float>::resize(this + 96, v3);
  *(this + 100) = *(this + 99);
  std::vector<float>::resize(this + 99, (*(this + 148) * 2 * v3));
  *(this + 103) = *(this + 102);
  std::vector<float>::resize(this + 102, v3);
  *(this + 106) = *(this + 105);
  std::vector<float>::resize(this + 105, v3);
  *(this + 112) = *(this + 111);
  std::vector<float>::resize(this + 111, v3);
  *(this + 115) = *(this + 114);
  std::vector<float>::resize(this + 114, v3);
  *(this + 118) = *(this + 117);
  std::vector<float>::resize(this + 117, v3);
}

void sub_1DDDA1DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, void **a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, SpatialProbabilityBase *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (*(v43 - 185) < 0)
  {
    operator delete(*(v43 - 208));
  }

  MEMORY[0x1E12BD160](v42, 0x10F1C4067547207);
  v45 = *a10;
  if (*a10)
  {
    a30[22] = v45;
    operator delete(v45);
  }

  v46 = *a9;
  if (*a9)
  {
    a30[18] = v46;
    operator delete(v46);
  }

  v47 = *a11;
  if (*a11)
  {
    a30[14] = v47;
    operator delete(v47);
  }

  v48 = a30[9];
  if (v48)
  {
    a30[10] = v48;
    operator delete(v48);
  }

  v49 = a30[8];
  a30[8] = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *a12;
  *a12 = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  MEMORY[0x1E12BD160](a30, 0x10A1C403A5A1335);
  if (__p)
  {
    operator delete(__p);
  }

  v51 = *a16;
  if (*a16)
  {
    *(a23 + 72) = v51;
    operator delete(v51);
  }

  v52 = *a17;
  v53 = a23;
  if (*a17)
  {
    *(a23 + 69) = v52;
    operator delete(v52);
  }

  v54 = *(a23 + 67);
  *(a23 + 67) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
    v53 = a23;
  }

  v55 = *a18;
  if (*a18)
  {
    *(v53 + 65) = v55;
    operator delete(v55);
    v53 = a23;
  }

  v56 = *(v53 + 60);
  *(v53 + 60) = 0;
  if (v56)
  {
    (*(*v56 + 24))(v56);
    v53 = a23;
  }

  v57 = *(v53 + 59);
  *(v53 + 59) = 0;
  if (v57)
  {
    (*(*v57 + 24))(v57);
    v53 = a23;
  }

  v58 = *(v53 + 58);
  *(v53 + 58) = 0;
  if (v58)
  {
    (*(*v58 + 24))(v58);
    v53 = a23;
  }

  SpatialProbabilityBase::~SpatialProbabilityBase(v53);
  MEMORY[0x1E12BD160](v53, 0x10A1C400B54FBFBLL);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialProbability::SetParameter(AUSpatialProbability *this, unsigned int a2, int a3, float a4)
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
  ++*(this + 66);
  if (a2 <= 0x19 && ((1 << a2) & 0x20C5B80) != 0)
  {
    result = 0;
    ++*(this + 68);
  }

  return result;
}

uint64_t AUSpatialProbability::SetProperty(AUSpatialProbability *this, int a2, int a3, unsigned int a4, _DWORD *__src, size_t __n)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 7305)
  {
    if (a2 <= 7301)
    {
      if (a2 == 21)
      {
        if (__n == 4)
        {
          result = 0;
          *(this + 576) = *__src != 0;
          return result;
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

        return result;
      }

      if (a2 != 7301)
      {
        return result;
      }

      if (__n == 8 * (*(this + 145) + 1))
      {
        (*(**(this + 91) + 80))(*(this + 91), __src, __n);
        if (*(this + 150))
        {
          if (AUSpatialProbabilityLogScope(void)::once != -1)
          {
            dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
          }

          if (AUSpatialProbabilityLogScope(void)::scope)
          {
            v10 = *AUSpatialProbabilityLogScope(void)::scope;
            if (!*AUSpatialProbabilityLogScope(void)::scope)
            {
              return 0;
            }
          }

          else
          {
            v10 = MEMORY[0x1E69E9C10];
          }

          result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v61 = *(this + 150);
          *buf = 136315650;
          *&buf[4] = "AUSpatialProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 508;
          *&buf[18] = 1024;
          *&buf[20] = v61;
          v62 = "%25s:%-5d Subband DOA is only used for the DOA mode. Current mode is (%d)";
          goto LABEL_354;
        }

        return 0;
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 498;
      *&buf[18] = 1024;
      *&buf[20] = 7301;
      v50 = "%25s:%-5d Input size of SpatialProbabilityInputSubbandDOA is not equal to the expected size (prop id: %u).\n";
      goto LABEL_281;
    }

    if (a2 <= 7303)
    {
      if (a2 == 7302)
      {
        goto LABEL_31;
      }

      if (__n == 8 * *(this + 148) * (*(this + 145) + 1))
      {
        (*(**(this + 91) + 112))(*(this + 91), __src, __n);
        v33 = *(this + 150);
        if (v33 == 1)
        {
          if (AUSpatialProbabilityLogScope(void)::once != -1)
          {
            dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
          }

          if (AUSpatialProbabilityLogScope(void)::scope)
          {
            v10 = *AUSpatialProbabilityLogScope(void)::scope;
            if (!*AUSpatialProbabilityLogScope(void)::scope)
            {
              return 0;
            }
          }

          else
          {
            v10 = MEMORY[0x1E69E9C10];
          }

          result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v64 = *(this + 150);
          *buf = 136315650;
          *&buf[4] = "AUSpatialProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 559;
          *&buf[18] = 1024;
          *&buf[20] = v64;
          v62 = "%25s:%-5d Steering vector loaded from plist will be overwritten in the current mode. Current mode is (%d)";
          goto LABEL_354;
        }

        if (!v33)
        {
          if (AUSpatialProbabilityLogScope(void)::once != -1)
          {
            dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
          }

          if (AUSpatialProbabilityLogScope(void)::scope)
          {
            v10 = *AUSpatialProbabilityLogScope(void)::scope;
            if (!*AUSpatialProbabilityLogScope(void)::scope)
            {
              return 0;
            }
          }

          else
          {
            v10 = MEMORY[0x1E69E9C10];
          }

          result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v63 = *(this + 150);
          *buf = 136315650;
          *&buf[4] = "AUSpatialProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 555;
          *&buf[18] = 1024;
          *&buf[20] = v63;
          v62 = "%25s:%-5d Steering vector is not used in the current mode. Current mode is (%d)";
          goto LABEL_354;
        }

        return 0;
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 545;
      *&buf[18] = 1024;
      *&buf[20] = 7303;
      v50 = "%25s:%-5d Input size of SpatialProbabilityInputSteeringVector is not equal to the expected size (prop id: %u).\n";
      goto LABEL_281;
    }

    if (a2 != 7304)
    {
      v11 = 7305;
      goto LABEL_30;
    }

    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (!__src)
    {
      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v34 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315394;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 607;
      v50 = "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.\n";
LABEL_350:
      v66 = v34;
      v67 = 18;
      goto LABEL_282;
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v17 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 612;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Steering vector to be loaded from a plist.", buf, 0x12u);
      v51 = AUSpatialProbabilityLogScope(void)::once;
      v52 = *__src;
      v53 = *(this + 92);
      v54 = *(this + 177);
      *(v53 + 60) = 0;
      v55 = (v53 + 60);
      v116 = 0;
      if (v51 != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

LABEL_173:
      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v56 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v56 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "SVBasedProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 220;
        _os_log_impl(&dword_1DDB85000, v56, OS_LOG_TYPE_INFO, "%25s:%-5d Loading sampleRate from topLevelDict.\n", buf, 0x12u);
      }

LABEL_179:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*(v53 + 64), v52, @"SampleRate", &v116))
      {
        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v57 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v57 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "SVBasedProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 225;
          v59 = "%25s:%-5d Failed to load the sampling rate from the plist.\n";
LABEL_341:
          _os_log_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_ERROR, v59, buf, 0x12u);
          goto LABEL_342;
        }

        goto LABEL_342;
      }

      v115 = 0;
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v58 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          goto LABEL_238;
        }
      }

      else
      {
        v58 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "SVBasedProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 231;
        _os_log_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_INFO, "%25s:%-5d Loading nMicsUsed from topLevelDict.\n", buf, 0x12u);
      }

LABEL_238:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*(v53 + 64), v52, @"nMicsUsed", &v115))
      {
        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v57 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v57 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "SVBasedProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 236;
          v59 = "%25s:%-5d Failed to load the number of mics from the plist.\n";
          goto LABEL_341;
        }

LABEL_342:
        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v34 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            return 4294956445;
          }
        }

        else
        {
          v34 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          return 4294956445;
        }

        *buf = 136315394;
        *&buf[4] = "AUSpatialProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 623;
        v50 = "%25s:%-5d Loading SteeringVectorDictionary was not successful.\n";
        goto LABEL_350;
      }

      v114 = 0;
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v60 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          goto LABEL_293;
        }
      }

      else
      {
        v60 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "SVBasedProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 242;
        _os_log_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_INFO, "%25s:%-5d Loading nCoefficients from topLevelDict.\n", buf, 0x12u);
      }

LABEL_293:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*(v53 + 64), v52, @"nCoefficients", &v114))
      {
        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v57 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v57 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "SVBasedProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 247;
          v59 = "%25s:%-5d Failed to load the number of filter coefficients from the plist.\n";
          goto LABEL_341;
        }

        goto LABEL_342;
      }

      v71 = v114;
      v70 = v115;
      *(v53 + 48) = v115;
      v72 = v116;
      *(v53 + 52) = v71;
      *(v53 + 56) = v72;
      std::vector<std::vector<float>>::resize(v53, v70);
      std::vector<std::vector<float>>::resize((v53 + 24), *(v53 + 48));
      std::to_string(buf, v54);
      v73 = std::string::insert(buf, 0, "Beam", 4uLL);
      v74 = *&v73->__r_.__value_.__l.__data_;
      v113 = v73->__r_.__value_.__r.__words[2];
      *__p = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v113 >= 0)
      {
        v75 = __p;
      }

      else
      {
        v75 = __p[0];
      }

      v76 = CFStringCreateWithCString(0, v75, 0x8000100u);
      Value = CFDictionaryGetValue(v52, v76);
      if (Value)
      {
        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v78 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            goto LABEL_368;
          }
        }

        else
        {
          v78 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v88 = __p;
          if (v113 < 0)
          {
            v88 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "SVBasedProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 275;
          *&buf[18] = 2080;
          *&buf[20] = v88;
          _os_log_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary: %s\n", buf, 0x1Cu);
        }

LABEL_368:
        CFRelease(v76);
        v89 = CFDictionaryGetValue(Value, @"RealCoefficients");
        if (!v89)
        {
          if (AUSpatialProbabilityLogScope(void)::once != -1)
          {
            dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
          }

          if (AUSpatialProbabilityLogScope(void)::scope)
          {
            v91 = *AUSpatialProbabilityLogScope(void)::scope;
            if (!*AUSpatialProbabilityLogScope(void)::scope)
            {
              goto LABEL_452;
            }
          }

          else
          {
            v91 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "SVBasedProbability.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 284;
            v103 = "%25s:%-5d Missing dictionary RealCoefficients.\n";
LABEL_444:
            _os_log_impl(&dword_1DDB85000, v91, OS_LOG_TYPE_ERROR, v103, buf, 0x12u);
          }

LABEL_451:
          LOBYTE(v91) = 0;
          goto LABEL_452;
        }

        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v90 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            goto LABEL_382;
          }
        }

        else
        {
          v90 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "SVBasedProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 289;
          _os_log_impl(&dword_1DDB85000, v90, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary RealCoefficients.\n", buf, 0x12u);
        }

LABEL_382:
        if (v115)
        {
          v92 = 0;
          v93 = 0;
          while (1)
          {
            std::to_string(&v118, v93);
            v94 = std::string::insert(&v118, 0, "Mic", 3uLL);
            v95 = *&v94->__r_.__value_.__l.__data_;
            *&buf[16] = *(&v94->__r_.__value_.__l + 2);
            *buf = v95;
            v94->__r_.__value_.__l.__size_ = 0;
            v94->__r_.__value_.__r.__words[2] = 0;
            v94->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v118.__r_.__value_.__l.__data_);
            }

            v96 = buf[23] >= 0 ? buf : *buf;
            v97 = CFStringCreateWithCString(0, v96, 0x8000100u);
            VectorFromDictionary = DictionaryBlobReader::ReadVectorFromDictionary(*(v53 + 64), v89, v97, (*v53 + v92));
            CFRelease(v97);
            if (VectorFromDictionary)
            {
              break;
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            ++v93;
            v92 += 24;
            if (v93 >= v115)
            {
              goto LABEL_393;
            }
          }

          if (AUSpatialProbabilityLogScope(void)::once != -1)
          {
            dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
          }

          if (AUSpatialProbabilityLogScope(void)::scope)
          {
            v102 = *AUSpatialProbabilityLogScope(void)::scope;
            if (!*AUSpatialProbabilityLogScope(void)::scope)
            {
              goto LABEL_449;
            }
          }

          else
          {
            v102 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_449;
          }

          LODWORD(v118.__r_.__value_.__l.__data_) = 136315394;
          *(v118.__r_.__value_.__r.__words + 4) = "SVBasedProbability.cpp";
          WORD2(v118.__r_.__value_.__r.__words[1]) = 1024;
          *(&v118.__r_.__value_.__r.__words[1] + 6) = 301;
          v111 = "%25s:%-5d Error loading RealCoefficients.\n";
          goto LABEL_448;
        }

LABEL_393:
        v99 = CFDictionaryGetValue(Value, @"ImagCoefficients");
        if (v99)
        {
          if (AUSpatialProbabilityLogScope(void)::once != -1)
          {
            dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
          }

          if (AUSpatialProbabilityLogScope(void)::scope)
          {
            v100 = *AUSpatialProbabilityLogScope(void)::scope;
            if (!*AUSpatialProbabilityLogScope(void)::scope)
            {
LABEL_421:
              if (!v115)
              {
LABEL_432:
                LOBYTE(v91) = 1;
                *v55 = 1;
                goto LABEL_452;
              }

              v104 = 0;
              v105 = 0;
              while (1)
              {
                std::to_string(&v118, v105);
                v106 = std::string::insert(&v118, 0, "Mic", 3uLL);
                v107 = *&v106->__r_.__value_.__l.__data_;
                *&buf[16] = *(&v106->__r_.__value_.__l + 2);
                *buf = v107;
                v106->__r_.__value_.__l.__size_ = 0;
                v106->__r_.__value_.__r.__words[2] = 0;
                v106->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v118.__r_.__value_.__l.__data_);
                }

                v108 = buf[23] >= 0 ? buf : *buf;
                v109 = CFStringCreateWithCString(0, v108, 0x8000100u);
                v110 = DictionaryBlobReader::ReadVectorFromDictionary(*(v53 + 64), v99, v109, (*(v53 + 24) + v104));
                CFRelease(v109);
                if (v110)
                {
                  break;
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                ++v105;
                v104 += 24;
                if (v105 >= v115)
                {
                  goto LABEL_432;
                }
              }

              if (AUSpatialProbabilityLogScope(void)::once != -1)
              {
                dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
              }

              if (AUSpatialProbabilityLogScope(void)::scope)
              {
                v102 = *AUSpatialProbabilityLogScope(void)::scope;
                if (!*AUSpatialProbabilityLogScope(void)::scope)
                {
LABEL_449:
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  goto LABEL_451;
                }
              }

              else
              {
                v102 = MEMORY[0x1E69E9C10];
              }

              if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_449;
              }

              LODWORD(v118.__r_.__value_.__l.__data_) = 136315394;
              *(v118.__r_.__value_.__r.__words + 4) = "SVBasedProbability.cpp";
              WORD2(v118.__r_.__value_.__r.__words[1]) = 1024;
              *(&v118.__r_.__value_.__r.__words[1] + 6) = 329;
              v111 = "%25s:%-5d Error loading ImagCoefficients.\n";
LABEL_448:
              _os_log_impl(&dword_1DDB85000, v102, OS_LOG_TYPE_ERROR, v111, &v118, 0x12u);
              goto LABEL_449;
            }
          }

          else
          {
            v100 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "SVBasedProbability.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 317;
            _os_log_impl(&dword_1DDB85000, v100, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary ImagCoefficients.\n", buf, 0x12u);
          }

          goto LABEL_421;
        }

        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v91 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
LABEL_452:
            if (SHIBYTE(v113) < 0)
            {
              operator delete(__p[0]);
            }

            if (v91)
            {
              return 0;
            }

            goto LABEL_342;
          }
        }

        else
        {
          v91 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "SVBasedProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 312;
          v103 = "%25s:%-5d Missing dictionary ImagCoefficients.\n";
          goto LABEL_444;
        }

        goto LABEL_451;
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v87 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
LABEL_404:
          CFRelease(v76);
          goto LABEL_451;
        }
      }

      else
      {
        v87 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v101 = __p;
        if (v113 < 0)
        {
          v101 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "SVBasedProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 268;
        *&buf[18] = 2080;
        *&buf[20] = v101;
        _os_log_impl(&dword_1DDB85000, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing dictionary: %s\n", buf, 0x1Cu);
      }

      goto LABEL_404;
    }

LABEL_172:
    v52 = *__src;
    v53 = *(this + 92);
    v54 = *(this + 177);
    *(v53 + 60) = 0;
    v55 = (v53 + 60);
    v116 = 0;
    goto LABEL_173;
  }

  if (a2 <= 107302)
  {
    if (a2 == 7306)
    {
      if (__n == 4 * (*(this + 145) + 1))
      {
        memcpy(*(this + 105), __src, __n);
        return 0;
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 682;
      *&buf[18] = 1024;
      *&buf[20] = 7306;
      v50 = "%25s:%-5d Input size of SpatialProbabilityInputPostMask is not equal to the expected size (prop id: %u).\n";
      goto LABEL_281;
    }

    if (a2 == 107301)
    {
      if (__n == 8)
      {
        v18 = *(this + 94) - *(this + 93);
        if (CFArrayGetCount(*__src) == v18 >> 2)
        {
          if (*(this + 94) != *(this + 93))
          {
            v19 = 0;
            v20 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*__src, v20);
              CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, (*(this + 93) + v19));
              ++v20;
              v19 += 4;
            }

            while (v20 < (*(this + 94) - *(this + 93)) >> 2);
          }

          (*(**(this + 91) + 80))(*(this + 91));
          if (!*(this + 150))
          {
            return 0;
          }

          if (AUSpatialProbabilityLogScope(void)::once != -1)
          {
            dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
          }

          if (AUSpatialProbabilityLogScope(void)::scope)
          {
            v10 = *AUSpatialProbabilityLogScope(void)::scope;
            if (!*AUSpatialProbabilityLogScope(void)::scope)
            {
              return 0;
            }
          }

          else
          {
            v10 = MEMORY[0x1E69E9C10];
          }

          result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v65 = *(this + 150);
          *buf = 136315650;
          *&buf[4] = "AUSpatialProbability.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 533;
          *&buf[18] = 1024;
          *&buf[20] = v65;
          v62 = "%25s:%-5d Subband DOA is only used for the DOA mode. Current mode is (%d)";
          goto LABEL_354;
        }
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 519;
      *&buf[18] = 1024;
      *&buf[20] = 107301;
      v50 = "%25s:%-5d Input size of SpatialProbabilityInputSubbandDOA_CF is not equal to the expected size (prop id: %u).\n";
      goto LABEL_281;
    }

    v9 = -23770;
  }

  else if (a2 > 107305)
  {
    if (a2 == 107306)
    {
      if (__n == 8)
      {
        v28 = *(this + 106) - *(this + 105);
        if (CFArrayGetCount(*__src) == v28 >> 2)
        {
          if (*(this + 106) != *(this + 105))
          {
            v29 = 0;
            v30 = 0;
            do
            {
              v31 = CFArrayGetValueAtIndex(*__src, v30);
              CFNumberGetValue(v31, kCFNumberFloat32Type, (*(this + 105) + v29));
              result = 0;
              ++v30;
              v29 += 4;
            }

            while (v30 < (*(this + 106) - *(this + 105)) >> 2);
            return result;
          }

          return 0;
        }
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 698;
      *&buf[18] = 1024;
      *&buf[20] = 107306;
      v50 = "%25s:%-5d Input size of SpatialProbabilityInputPostMask_CF is not equal to the expected size (prop id: %u).\n";
      goto LABEL_281;
    }

    v9 = -23765;
  }

  else
  {
    if (a2 == 107303)
    {
      if (__n == 8)
      {
        v12 = *(this + 100) - *(this + 99);
        if (CFArrayGetCount(*__src) == v12 >> 2)
        {
          if (*(this + 100) != *(this + 99))
          {
            v13 = 0;
            v14 = 0;
            do
            {
              v15 = CFArrayGetValueAtIndex(*__src, v14);
              CFNumberGetValue(v15, kCFNumberFloat32Type, (*(this + 99) + v13));
              ++v14;
              v13 += 4;
            }

            while (v14 < (*(this + 100) - *(this + 99)) >> 2);
          }

          (*(**(this + 91) + 112))(*(this + 91));
          v16 = *(this + 150);
          if (!v16)
          {
            if (AUSpatialProbabilityLogScope(void)::once != -1)
            {
              dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
            }

            if (AUSpatialProbabilityLogScope(void)::scope)
            {
              v10 = *AUSpatialProbabilityLogScope(void)::scope;
              if (!*AUSpatialProbabilityLogScope(void)::scope)
              {
                return 0;
              }
            }

            else
            {
              v10 = MEMORY[0x1E69E9C10];
            }

            result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            v80 = *(this + 150);
            *buf = 136315650;
            *&buf[4] = "AUSpatialProbability.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 585;
            *&buf[18] = 1024;
            *&buf[20] = v80;
            v62 = "%25s:%-5d Steering vector is not used in the current mode. Current mode is (%d)";
            goto LABEL_354;
          }

          if (v16 == 1)
          {
            if (AUSpatialProbabilityLogScope(void)::once != -1)
            {
              dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
            }

            if (AUSpatialProbabilityLogScope(void)::scope)
            {
              v10 = *AUSpatialProbabilityLogScope(void)::scope;
              if (!*AUSpatialProbabilityLogScope(void)::scope)
              {
                return 0;
              }
            }

            else
            {
              v10 = MEMORY[0x1E69E9C10];
            }

            result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            v79 = *(this + 150);
            *buf = 136315650;
            *&buf[4] = "AUSpatialProbability.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 589;
            *&buf[18] = 1024;
            *&buf[20] = v79;
            v62 = "%25s:%-5d Steering vector loaded from plist will be overwritten in the current mode. Current mode is (%d)";
            goto LABEL_354;
          }

          return 0;
        }
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 570;
      *&buf[18] = 1024;
      *&buf[20] = 107303;
      v50 = "%25s:%-5d Input size of SpatialProbabilityInputSteeringVector_CF is not equal to the expected size (prop id: %u).\n";
LABEL_281:
      v66 = v32;
      v67 = 24;
LABEL_282:
      _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, v50, buf, v67);
      return 4294956445;
    }

    v9 = -23767;
  }

  v11 = v9 | 0x10000;
LABEL_30:
  if (a2 != v11)
  {
    return result;
  }

LABEL_31:
  ++*(this + 70);
  if (a2 <= 107300)
  {
    if (a2 <= 7303)
    {
      if (__n == 4 * (*(this + 145) + 1))
      {
        memcpy(*(*(this + 91) + 280), __src, __n);
        if (*(this + 160) == 1 && *(this + 157) == 1)
        {
          return 0;
        }

        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v35 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            return 0;
          }
        }

        else
        {
          v35 = MEMORY[0x1E69E9C10];
        }

        result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v68 = *(this + 160);
        v69 = *(this + 157);
        *buf = 136315906;
        *&buf[4] = "AUSpatialProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 459;
        *&buf[18] = 1024;
        *&buf[20] = v68;
        *&buf[24] = 1024;
        *&buf[26] = v69;
        v62 = "%25s:%-5d ExternalSourceProbability is not used in the current mode: (%d, %d)";
        goto LABEL_337;
      }

      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AUSpatialProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 449;
        *&buf[18] = 1024;
        *&buf[20] = 7302;
        v50 = "%25s:%-5d Input size of SpatialProbabilityInputSourceProbability is not equal to the expected size (prop id: %u).\n";
        goto LABEL_281;
      }

      return 4294956445;
    }

    if (a2 != 7305)
    {
      return result;
    }

    if (__n != 4 * (*(this + 145) + 1))
    {
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AUSpatialProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 634;
        *&buf[18] = 1024;
        *&buf[20] = 7305;
        v50 = "%25s:%-5d Input size of SpatialProbabilityInputCDR is not equal to the expected size (prop id: %u).\n";
        goto LABEL_281;
      }

      return 4294956445;
    }

    memcpy(*(*(this + 91) + 368), __src, __n);
    if (*(this + 157) != 2)
    {
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v10 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v81 = *(this + 157);
      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 644;
      *&buf[18] = 1024;
      *&buf[20] = v81;
      v62 = "%25s:%-5d External CDR is not used in the current mode. Current mode is (%d)";
      goto LABEL_354;
    }

    return 0;
  }

  if (a2 <= 107304)
  {
    if (a2 != 107302)
    {
      return result;
    }

    if (__n == 8)
    {
      v36 = *(this + 97) - *(this + 96);
      if (CFArrayGetCount(*__src) == v36 >> 2)
      {
        v37 = *(this + 96);
        if (*(this + 97) == v37)
        {
          v42 = 0;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          do
          {
            v40 = CFArrayGetValueAtIndex(*__src, v39);
            CFNumberGetValue(v40, kCFNumberFloat32Type, (*(this + 96) + v38));
            ++v39;
            v37 = *(this + 96);
            v41 = *(this + 97) - v37;
            v38 += 4;
          }

          while (v39 < v41 >> 2);
          v42 = v41;
        }

        memcpy(*(*(this + 91) + 280), v37, v42);
        if (*(this + 160) == 1 && *(this + 157) == 1)
        {
          return 0;
        }

        if (AUSpatialProbabilityLogScope(void)::once != -1)
        {
          dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
        }

        if (AUSpatialProbabilityLogScope(void)::scope)
        {
          v35 = *AUSpatialProbabilityLogScope(void)::scope;
          if (!*AUSpatialProbabilityLogScope(void)::scope)
          {
            return 0;
          }
        }

        else
        {
          v35 = MEMORY[0x1E69E9C10];
        }

        result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v82 = *(this + 160);
        v83 = *(this + 157);
        *buf = 136315906;
        *&buf[4] = "AUSpatialProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 485;
        *&buf[18] = 1024;
        *&buf[20] = v82;
        *&buf[24] = 1024;
        *&buf[26] = v83;
        v62 = "%25s:%-5d ExternalSourceProbability is not used in the current mode: (%d, %d)";
LABEL_337:
        v84 = v35;
        v85 = 30;
LABEL_355:
        _os_log_impl(&dword_1DDB85000, v84, OS_LOG_TYPE_DEFAULT, v62, buf, v85);
        return 0;
      }
    }

    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v32 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 4294956445;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 470;
      *&buf[18] = 1024;
      *&buf[20] = 107302;
      v50 = "%25s:%-5d Input size of SpatialProbabilityInputSourceProbability_CF is not equal to the expected size (prop id: %u).\n";
      goto LABEL_281;
    }

    return 4294956445;
  }

  if (a2 == 107305)
  {
    if (__n != 8 || (v43 = *(this + 94) - *(this + 93), CFArrayGetCount(*__src) != v43 >> 2))
    {
      if (AUSpatialProbabilityLogScope(void)::once != -1)
      {
        dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
      }

      if (AUSpatialProbabilityLogScope(void)::scope)
      {
        v32 = *AUSpatialProbabilityLogScope(void)::scope;
        if (!*AUSpatialProbabilityLogScope(void)::scope)
        {
          return 4294956445;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AUSpatialProbability.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 655;
        *&buf[18] = 1024;
        *&buf[20] = 107305;
        v50 = "%25s:%-5d Input size of SpatialProbabilityInputCDR_CF is not equal to the expected size (prop id: %u).\n";
        goto LABEL_281;
      }

      return 4294956445;
    }

    v44 = *(this + 102);
    if (*(this + 103) == v44)
    {
      v49 = 0;
    }

    else
    {
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = CFArrayGetValueAtIndex(*__src, v46);
        CFNumberGetValue(v47, kCFNumberFloat32Type, (*(this + 102) + v45));
        ++v46;
        v44 = *(this + 102);
        v48 = *(this + 103) - v44;
        v45 += 4;
      }

      while (v46 < v48 >> 2);
      v49 = v48;
    }

    memcpy(*(*(this + 91) + 368), v44, v49);
    if (*(this + 157) == 2)
    {
      return 0;
    }

    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v10 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v86 = *(this + 157);
    *buf = 136315650;
    *&buf[4] = "AUSpatialProbability.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 670;
    *&buf[18] = 1024;
    *&buf[20] = v86;
    v62 = "%25s:%-5d External CDR is not used in the current mode. Current mode is (%d)";
LABEL_354:
    v84 = v10;
    v85 = 24;
    goto LABEL_355;
  }

  if (a2 != 107307)
  {
    return result;
  }

  if (__n != 8)
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v32 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 4294956445;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AUSpatialProbability.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 717;
      *&buf[18] = 1024;
      *&buf[20] = 107307;
      v50 = "%25s:%-5d Pointer size of SpatialProbabilityInputShapeParameterPerFrequency_CF is not equal to the expected size (prop id: %u).\n";
      goto LABEL_281;
    }

    return 4294956445;
  }

  Count = CFArrayGetCount(*__src);
  v23 = *(this + 109);
  v24 = *(this + 108);
  if (Count != (v23 - v24) >> 2)
  {
    std::vector<float>::resize(this + 108, Count);
    v23 = *(this + 109);
    v24 = *(this + 108);
  }

  if (v23 == v24)
  {
    return 0;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = CFArrayGetValueAtIndex(*__src, v26);
    CFNumberGetValue(v27, kCFNumberFloat32Type, (*(this + 108) + v25));
    result = 0;
    ++v26;
    v25 += 4;
  }

  while (v26 < (*(this + 109) - *(this + 108)) >> 2);
  return result;
}

void sub_1DDDA4418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialProbability::GetProperty(AUSpatialProbability *this, int a2, int a3, unsigned int a4, CFArrayRef *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 7402)
  {
    if (a2 > 107400)
    {
      switch(a2)
      {
        case 107401:
          v8 = (this + 888);
          break;
        case 107402:
          v8 = (this + 912);
          break;
        case 107403:
          v8 = (this + 936);
          break;
        default:
          return result;
      }

LABEL_25:
      CFArray = applesauce::CF::details::make_CFArrayRef<float>(v8);
      result = 0;
      *__dst = CFArray;
      return result;
    }

    if (a2 != 7403)
    {
      if (a2 != 107307)
      {
        return result;
      }

      v8 = (this + 864);
      goto LABEL_25;
    }

    v10 = *(this + 117);
LABEL_23:
    memcpy(__dst, v10, 4 * (*(this + 145) + 1));
    return 0;
  }

  if (a2 > 7400)
  {
    if (a2 == 7401)
    {
      v10 = *(this + 111);
    }

    else
    {
      v10 = *(this + 114);
    }

    goto LABEL_23;
  }

  if (a2 == 21)
  {
    result = 0;
    v9 = *(this + 576);
  }

  else
  {
    if (a2 != 3700)
    {
      return result;
    }

    result = 0;
    v9 = *(this + 376);
  }

  *__dst = v9;
  return result;
}

uint64_t AUSpatialProbability::GetPropertyInfo(AUSpatialProbability *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 7402)
  {
    if (a2 > 107400)
    {
      if (a2 == 107401 || a2 == 107402)
      {
LABEL_16:
        *a6 = 0;
        v9 = 8;
        goto LABEL_18;
      }

      v8 = -23669;
LABEL_15:
      if (a2 != (v8 | 0x10000))
      {
        return result;
      }

      goto LABEL_16;
    }

    if (a2 != 7403)
    {
      v8 = -23765;
      goto LABEL_15;
    }

LABEL_17:
    *a6 = 0;
    v9 = 4 * *(this + 145) + 4;
    goto LABEL_18;
  }

  if (a2 > 7400)
  {
    goto LABEL_17;
  }

  if (a2 == 21 || a2 == 3700)
  {
    *a6 = 1;
    v9 = 4;
LABEL_18:
    result = 0;
    *a5 = v9;
  }

  return result;
}

uint64_t AUSpatialProbability::Reset(AUSpatialProbability *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v2 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "AUSpatialProbability.cpp";
    v7 = 1024;
    v8 = 187;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reset.\n", &v5, 0x12u);
  }

LABEL_9:
  v3 = *(this + 91);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return 0;
}

uint64_t AUSpatialProbability::Cleanup(AUSpatialProbability *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v2 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUSpatialProbability.cpp";
    v6 = 1024;
    v7 = 177;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cleanup.\n", &v4, 0x12u);
  }

LABEL_9:
  result = *(this + 91);
  *(this + 91) = 0;
  if (result)
  {
    return (*(*result + 32))(result);
  }

  return result;
}

uint64_t AUSpatialProbability::Initialize(AUSpatialProbability *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v2 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "AUSpatialProbability.cpp";
    v21 = 1024;
    v22 = 124;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize\n", &v19, 0x12u);
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_56;
  }

  v4 = *(Element + 80);
  *(this + 148) = *(Element + 108);
  *(this + 73) = v4;
  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v5 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315394;
    v20 = "AUSpatialProbability.cpp";
    v21 = 1024;
    v22 = 132;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Check input format\n", &v19, 0x12u);
  }

LABEL_18:
  v6 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v6)
  {
    goto LABEL_56;
  }

  v7 = *(v6 + 108);
  v8 = *(this + 148);
  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (v7 != v8)
  {
    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v10 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 4294956421;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = *(this + 148);
      v19 = 136315906;
      v20 = "AUSpatialProbability.cpp";
      v21 = 1024;
      v22 = 137;
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = v15;
      v16 = "%25s:%-5d Number of channel in the input stream (%u) not equal to the expected number of channels (%u).\n";
LABEL_53:
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, v16, &v19, 0x1Eu);
    }

    return 4294956421;
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v9 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315394;
    v20 = "AUSpatialProbability.cpp";
    v21 = 1024;
    v22 = 142;
    _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Check output form\n", &v19, 0x12u);
  }

LABEL_31:
  v11 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v11)
  {
LABEL_56:
    ausdk::Throw(0xFFFFD583);
  }

  v12 = *(v11 + 108);
  if (v12 != *(this + 148))
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v10 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return 4294956421;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = *(this + 148);
      v19 = 136315906;
      v20 = "AUSpatialProbability.cpp";
      v21 = 1024;
      v22 = 147;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v18;
      v16 = "%25s:%-5d Number of channel in the output stream (%u) not equal to the expected number of channels (%u).\n";
      goto LABEL_53;
    }

    return 4294956421;
  }

  *(this + 145) = *(this + 84);
  v13 = *(this + 66);
  AUSpatialProbability::UpdateState(this);
  *(this + 67) = v13;
  AUSpatialProbability::InitializeSpatialProbabilityClasses(this);
  (*(*this + 72))(this, 0, 0);
  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v14 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v19 = 136315394;
    v20 = "AUSpatialProbability.cpp";
    v21 = 1024;
    v22 = 166;
    _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully initialized.\n", &v19, 0x12u);
    return 0;
  }

  return result;
}

void AUSpatialProbability::~AUSpatialProbability(AUSpatialProbability *this)
{
  AUSpatialProbability::~AUSpatialProbability(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5921E28;
  AUSpatialProbability::Cleanup(this);
  v2 = *(this + 117);
  if (v2)
  {
    *(this + 118) = v2;
    operator delete(v2);
  }

  v3 = *(this + 114);
  if (v3)
  {
    *(this + 115) = v3;
    operator delete(v3);
  }

  v4 = *(this + 111);
  if (v4)
  {
    *(this + 112) = v4;
    operator delete(v4);
  }

  v5 = *(this + 108);
  if (v5)
  {
    *(this + 109) = v5;
    operator delete(v5);
  }

  v6 = *(this + 105);
  if (v6)
  {
    *(this + 106) = v6;
    operator delete(v6);
  }

  v7 = *(this + 102);
  if (v7)
  {
    *(this + 103) = v7;
    operator delete(v7);
  }

  v8 = *(this + 99);
  if (v8)
  {
    *(this + 100) = v8;
    operator delete(v8);
  }

  v9 = *(this + 96);
  if (v9)
  {
    *(this + 97) = v9;
    operator delete(v9);
  }

  v10 = *(this + 93);
  if (v10)
  {
    *(this + 94) = v10;
    operator delete(v10);
  }

  std::unique_ptr<stvPlistHolder>::reset[abi:ne200100](this + 92, 0);
  v11 = *(this + 91);
  *(this + 91) = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t *std::unique_ptr<stvPlistHolder>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v3)
    {
      MEMORY[0x1E12BD160](v3, 0x60C4044C4A2DFLL);
    }

    v4 = (v2 + 24);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = v2;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUOneChannelNSV4::ValidFormat(AUOneChannelNSV4 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
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

    if (v7 == 1)
    {
      mChannelsPerFrame = a4->mChannelsPerFrame;
    }

    else
    {
      mBytesPerPacket = a4->mBytesPerPacket;
      mBytesPerFrame = a4->mBytesPerFrame;
      mChannelsPerFrame = a4->mChannelsPerFrame;
      mBitsPerChannel = a4->mBitsPerChannel;
      v12 = a4->mFramesPerPacket == 1 && mBytesPerFrame == mBytesPerPacket;
      v14 = !v12 || mBitsPerChannel >> 3 > mBytesPerFrame || mChannelsPerFrame == 0;
      if (!v14 && ((mFormatFlags = a4->mFormatFlags, (mFormatFlags & 0x20) != 0) || (v12 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame, mBytesPerPacket /= mChannelsPerFrame, v12)))
      {
        v18 = 8 * mBytesPerPacket;
        v19 = mBytesPerPacket == 8 && (a4->mFormatFlags & 0x1F84) == 0;
        if (mFormatFlags)
        {
          v20 = (a4->mFormatFlags & 0x1F84) == 0;
        }

        else
        {
          v19 = 0;
          v20 = 1;
        }

        v21 = v18 == mBitsPerChannel;
        v15 = v18 == mBitsPerChannel && v19;
        v16 = !v21 || v20;
        if ((mFormatFlags & 2) != 0)
        {
          v15 = 0;
          v16 = 1;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      LODWORD(result) = v15 & v16;
    }

    if (mChannelsPerFrame == 1)
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

BOOL ausdk::ASBD::IsCommonFloat32(ausdk::ASBD *this, const AudioStreamBasicDescription *a2)
{
  if (*(this + 2) != 1819304813 || *(this + 5) != 1)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (v3 != *(this + 6))
  {
    return 0;
  }

  v4 = *(this + 3);
  if ((v4 & 1) == 0 || (v4 & 0x20) == 0 && *(this + 7) != 1)
  {
    return 0;
  }

  v5 = 0;
  if ((v4 & 2) == 0 && *(this + 8) == 32)
  {
    if ((v4 & 0x20) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(this + 7);
    }

    return v3 == 4 * v7;
  }

  return v5;
}

uint64_t AUOneChannelNSV4::SupportedNumChannels(AUOneChannelNSV4 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUOneChannelNSV4::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUOneChannelNSV4::GetLatency(AUOneChannelNSV4 *this)
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

uint64_t AUOneChannelNSV4::GetParameterValueStrings(AUOneChannelNSV4 *this, int a2, int a3, const __CFArray **a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 8 && a4)
  {
    v8 = xmmword_1E866AFC8;
    v9 = *&off_1E866AFD8;
    v10 = @"LPC Noise";
    v6 = 5;
LABEL_9:
    v7 = CFArrayCreate(0, &v8, v6, 0);
    result = 0;
    *a4 = v7;
    return result;
  }

  result = 0;
  if (a3 == 10 && a4)
  {
    v8 = xmmword_1E866AFF0;
    v9 = unk_1E866B000;
    v10 = 0;
    v6 = 2;
    goto LABEL_9;
  }

  return result;
}

uint64_t AUOneChannelNSV4::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 135);
  }

  return result;
}

uint64_t AUOneChannelNSV4::GetParameterInfo(AUOneChannelNSV4 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        buffer->cfNameString = @"noise supp level";
        buffer->flags = 1207959552;
        CFStringGetCString(@"noise supp level", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x42C80000C2C80000;
        v6 = -18.0;
LABEL_23:
        v16 = buffer->flags | 0x80000000;
LABEL_28:
        buffer->defaultValue = v6;
        buffer->flags = v16;
        return result;
      }

      if (a3 != 1)
      {
        return result;
      }

      buffer->cfNameString = @"speech prob";
      buffer->flags = 1207959552;
      CFStringGetCString(@"speech prob", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 0.0078125;
    }

    else
    {
      if (a3 == 2)
      {
        v17 = @"noise SPL (gated PS)";
        goto LABEL_27;
      }

      if (a3 != 3)
      {
        buffer->cfNameString = @"AGC post gain";
        buffer->flags = 1207959552;
        CFStringGetCString(@"AGC post gain", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        __asm { FMOV            V0.2S, #-20.0 }

        *&buffer->minValue = -_D0;
        buffer->defaultValue = 0.0;
        return result;
      }

      buffer->cfNameString = @"AGC dynamic gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"AGC dynamic gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      v13 = -_D0;
    }

    *&buffer->minValue = v13;
    v15 = buffer->flags | 0x8000;
  }

  else
  {
    if (a3 <= 7)
    {
      if (a3 != 5)
      {
        if (a3 == 6)
        {
          buffer->cfNameString = @"SPL Meter Calibration";
          buffer->flags = 1207959552;
          CFStringGetCString(@"SPL Meter Calibration", buffer->name, 52, 0x8000100u);
          result = 0;
          buffer->unit = kAudioUnitParameterUnit_Decibels;
          *&buffer->minValue = 0x42C80000C1C80000;
          v6 = 80.0;
        }

        else
        {
          buffer->cfNameString = @"SPL Time Constant";
          buffer->flags = 1207959552;
          CFStringGetCString(@"SPL Time Constant", buffer->name, 52, 0x8000100u);
          result = 0;
          buffer->unit = kAudioUnitParameterUnit_Generic;
          *&buffer->minValue = 0x4120000000000000;
          v6 = 5.0;
        }

        goto LABEL_23;
      }

      v17 = @"noise SPL (one mic)";
LABEL_27:
      buffer->cfNameString = v17;
      buffer->flags = 1207959552;
      CFStringGetCString(v17, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x42C8000041A00000;
      v6 = 40.0;
      v16 = buffer->flags | 0x8000;
      goto LABEL_28;
    }

    switch(a3)
    {
      case 8:
        buffer->cfNameString = @"LPC Mode";
        buffer->flags = 1207959552;
        CFStringGetCString(@"LPC Mode", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v12 = 0x4080000000000000;
        break;
      case 9:
        buffer->cfNameString = @"LPC VAD Clip Threshold";
        buffer->flags = 1207959552;
        CFStringGetCString(@"LPC VAD Clip Threshold", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x447A000000000000;
        v6 = 1000.0;
        v16 = buffer->flags | 0x84000000;
        goto LABEL_28;
      case 10:
        buffer->cfNameString = @"Noise Estimator";
        buffer->flags = 1207959552;
        CFStringGetCString(@"Noise Estimator", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v12 = 0x3F80000000000000;
        break;
      default:
        return result;
    }

    *&buffer->minValue = v12;
    v15 = buffer->flags | 0x84000000;
  }

  buffer->defaultValue = 0.0;
  buffer->flags = v15;
  return result;
}

uint64_t AUOneChannelNSV4::GetParameterList(AUOneChannelNSV4 *this, int a2, unsigned int *a3, unsigned int *a4)
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
      *(a3 + 4) = 0x900000008;
      a3[10] = 10;
    }

    v4 = 11;
  }

  *a4 = v4;
  return 0;
}

uint64_t AUOneChannelNSV4::SetBusCount(AUOneChannelNSV4 *this, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (a3 - 1 <= 2)
    {
      v4 = (this + 128);
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    v8 = 136315650;
    v9 = "AUOneChannelNSV4.cpp";
    v10 = 1024;
    v11 = 281;
    v12 = 1024;
    v13 = a3;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "%25s:%-5d Invalid number (%u) of output buses requested. We only support 1–3 buses.";
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    return 4294956430;
  }

  if (a3 - 1 <= 2)
  {
    v4 = (this + 80);
LABEL_7:
    ausdk::AUScope::SetNumberOfElements(v4, a3);
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "AUOneChannelNSV4.cpp";
    v10 = 1024;
    v11 = 272;
    v12 = 1024;
    v13 = a3;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "%25s:%-5d Invalid number (%u) of input buses requested. We only support 1–3 buses.";
LABEL_13:
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, v7, &v8, 0x18u);
  }

  return 4294956445;
}

uint64_t AUOneChannelNSV4::BusCountWritable(AUOneChannelNSV4 *this, int a2)
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

uint64_t AUOneChannelNSV4::Render(AUOneChannelNSV4 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (*(this + 376) == 1 && *(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v9 = ausdk::AUScope::GetElement((this + 80), 0);
  if (v9 && *(v9 + 172))
  {
    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
    if (v11)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
    }

    if (result)
    {
      return result;
    }

    v12 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v12)
    {
      goto LABEL_28;
    }

    if (!*(v12 + 144))
    {
      goto LABEL_31;
    }

    v13 = *(v12 + 152) + 48;
  }

  else
  {
    v13 = 0;
  }

  v14 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v14 || !*(v14 + 172))
  {
    v17 = 0;
    goto LABEL_24;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
  if (v15)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
    if (result)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!result)
  {
LABEL_20:
    v16 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v16)
    {
      goto LABEL_28;
    }

    if (!*(v16 + 144))
    {
      goto LABEL_31;
    }

    v17 = *(v16 + 152) + 48;
LABEL_24:
    v20[0] = v13;
    v20[1] = v17;
    v20[2] = v13;
    v18 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v18)
    {
      if (*(v18 + 144))
      {
        v19[0] = *(v18 + 152) + 48;
        v19[1] = v19[0];
        v19[2] = v19[0];
        return (*(*this + 184))(this, a2, a4, 3, v20, 3, v19);
      }

LABEL_31:
      ausdk::Throw(0xFFFFFFFFLL);
    }

LABEL_28:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUOneChannelNSV4::ProcessMultipleBufferLists(AUOneChannelNSV4 *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 376) == 1 && *(this + 84) != a3)
  {
    return 4294956422;
  }

  if (*(this + 150) != a4 || *(this + 151) != a6)
  {
    return 4294956419;
  }

  if ((*(*this + 576))(this, a2))
  {
    if (a6 >= 2)
    {
      v13 = a7[1];
      if (v13)
      {
        mData = v13->mBuffers[0].mData;
        LODWORD(v57[0]) = 1065353216;
        if (mData)
        {
          vDSP_vfill(v57, mData, 1, v13->mBuffers[0].mDataByteSize >> 2);
        }
      }

      if (a6 != 2)
      {
        v15 = a7[2];
        if (v15)
        {
          v16 = v15->mBuffers[0].mData;
          LODWORD(v57[0]) = 0;
          if (v16)
          {
            vDSP_vfill(v57, v16, 1, v15->mBuffers[0].mDataByteSize >> 2);
          }
        }
      }
    }

    if (*(this + 548) != *(this + 549))
    {
      bzero((*a7)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
      return 0;
    }

    v17 = (*a5)->mBuffers[0].mData;
    v18 = (*a7)->mBuffers[0].mData;
    if (v17 == v18)
    {
      return 0;
    }

    mDataByteSize = (*a7)->mBuffers[0].mDataByteSize;
LABEL_17:
    memcpy(v18, v17, mDataByteSize);
    return 0;
  }

  v21 = *(this + 135);
  if (v21 != *(this + 136))
  {
    AUOneChannelNSV4::UpdateParameters(this);
    *(this + 136) = v21;
  }

  if (a4 >= 2 && (v22 = a5[1]) != 0)
  {
    v23 = v22->mBuffers[0].mData;
  }

  else
  {
    v23 = 0;
  }

  v24 = (*a5)->mBuffers[0].mData;
  v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_71;
  }

  Parameter = ausdk::AUElement::GetParameter(v25, 8u);
  v28 = 0;
  if (a4 >= 3 && Parameter)
  {
    v29 = a5[2];
    if (v29)
    {
      v28 = v29->mBuffers[0].mData;
    }

    else
    {
      v28 = 0;
    }
  }

  if (*(this + 376) != 1)
  {
    *(*(this + 74) + 600) = v23;
    v32 = *(this + 66);

    return BlockProcessor::Process(v32, a3, a5, a7);
  }

  if (*(this + 548) == 1)
  {
    v30 = &v24[4 * *(this + 84)];
    v57[0] = v24;
    v57[1] = v30;
    v31 = *(this + 74);
    *(v31 + 600) = v23;
    CNoiseSuppressorV4::speex_preprocess_run_freq(v31, v57, 0, v28);
  }

  else
  {
    v33 = *(this + 74);
    *(v33 + 600) = v23;
    CNoiseSuppressorV4::speex_preprocess_run(v33, v24, 0, v24);
  }

  v34 = *(this + 74);
  v35 = v34 ? *(v34 + 332) : 0.0;
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0 || (ausdk::AUElement::SetParameter(v36, 1u, v35), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v39 & 1) == 0) || (ausdk::AUElement::SetParameter(v38, 2u, *(*(this + 74) + 336)), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v41 & 1) == 0))
  {
LABEL_71:
    abort();
  }

  ausdk::AUElement::SetParameter(v40, 5u, *(*(this + 74) + 340));
  v42 = (*a7)->mBuffers[0].mData;
  if (*(this + 549) == 1)
  {
    if (a6 >= 2 && (v43 = a7[1]) != 0)
    {
      v44 = v43->mBuffers[0].mData;
    }

    else
    {
      v44 = 0;
    }

    v46 = *(this + 84);
    v47 = &v42[4 * v46];
    v48 = *(this + 74);
    if (v48)
    {
      v49 = *(v48 + 584);
      v50 = *(v48 + 592);
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    memcpy((*a7)->mBuffers[0].mData, v49, 4 * v46);
    v51 = 4 * *(this + 84);
    v52 = v47;
    v53 = v50;
  }

  else
  {
    if (a6 >= 2 && (v45 = a7[1]) != 0)
    {
      v44 = v45->mBuffers[0].mData;
    }

    else
    {
      v44 = 0;
    }

    v51 = 4 * *(this + 84);
    v52 = (*a7)->mBuffers[0].mData;
    v53 = v24;
  }

  memcpy(v52, v53, v51);
  if (v44 && v44 != v42)
  {
    memcpy(v44, *(*(this + 74) + 168), 4 * *(*(this + 74) + 4));
  }

  if (a6 < 3)
  {
    return 0;
  }

  v54 = a7[2];
  if (!v54)
  {
    return 0;
  }

  result = 0;
  v55 = v54->mBuffers[0].mData;
  if (v55 && v55 != (*a7)->mBuffers[0].mData)
  {
    v56 = *(this + 74);
    if (!v56)
    {
      return 0;
    }

    v17 = *(v56 + 192);
    mDataByteSize = 4 * *(v56 + 4);
    v18 = v55;
    goto LABEL_17;
  }

  return result;
}

void AUOneChannelNSV4::UpdateParameters(AUOneChannelNSV4 *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0);
  v5 = *(this + 74);
  if (v5)
  {
    v6 = Parameter;
    if (Parameter >= 0)
    {
      v6 = -v6;
    }

    *(v5 + 52) = v6;
    *(v5 + 472) = 1;
  }

  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0 || (v9 = ausdk::AUElement::GetParameter(v7, 6u), *(*(this + 74) + 356) = v9, v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (v12 = ausdk::AUElement::GetParameter(v10, 7u), v13 = *(this + 74), *(v13 + 360) = 1.0 - expf(-1.0 / (v12 * (*(v13 + 8) / *(v13 + 4)))), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (v16 = ausdk::AUElement::GetParameter(v14, 8u), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v18 & 1) == 0))
  {
LABEL_16:
    abort();
  }

  v19 = ausdk::AUElement::GetParameter(v17, 9u);
  v20 = *(this + 74);
  if (v20)
  {
    v21 = *(v20 + 688);
    if (v21)
    {
      *(v21 + 212) = v16;
      if (v19 > 400.0)
      {
        v19 = 400.0;
      }

      v22 = __exp10((v19 / 20.0));
      *(v21 + 164) = v22;
      *(v21 + 148) = v9;
    }
  }
}

uint64_t AUOneChannelNSV4::SetParameter(AUOneChannelNSV4 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (!a3)
  {
    v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v11 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v10, a2, a5);
    ++*(this + 135);
    if (a2 == 10)
    {
      v12 = *(this + 74);
      if (v12)
      {
        v14 = a5 == 1.0 && a5 != 0.0;
        CNoiseSuppressorV4::SetNoiseEstimator(v12, v14);
      }
    }
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

uint64_t AUOneChannelNSV4::SetProperty(AUOneChannelNSV4 *this, int a2, int a3, unsigned int a4, CFDictionaryRef *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 4520)
  {
    if ((a2 - 4521) < 2)
    {
      result = 4294956445;
      if (a6 == 4)
      {
        v8 = *a5;
        if (*a5 <= 1u)
        {
          result = 0;
          if (a2 == 4521)
          {
            *(this + 146) = v8;
          }

          else
          {
            *(this + 147) = v8;
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 21)
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
        if (a2 != 4520)
        {
          return result;
        }

        if (*(this + 17))
        {
          return 4294956447;
        }

        if (a5)
        {
          v11 = *a5;
          Value = CFDictionaryGetValue(*a5, @"NoiseUpperBound");
          v13 = Value != 0;
          if (!Value || (result = AUOneChannelNSV4::SetNoiseBound(this, 0, Value), !result))
          {
            result = CFDictionaryGetValue(v11, @"NoiseLowerBound");
            if (result)
            {
              LODWORD(result) = AUOneChannelNSV4::SetNoiseBound(this, 1, result);
              if (Value)
              {
                v14 = 1;
              }

              else
              {
                v14 = result == 0;
              }

              v13 = v14;
            }

            if (v13)
            {
              return result;
            }

            else
            {
              return 4294956445;
            }
          }

          return result;
        }
      }

      return 4294956445;
    }

    if (a6 < 4)
    {
      return 4294956445;
    }

    v9 = *a5;
    v10 = *a5 != 0;
    if (v10 != (*(*this + 576))(this))
    {
      (*(*this + 584))(this, v9 != 0);
    }

    return 0;
  }

  return result;
}

uint64_t AUOneChannelNSV4::SetNoiseBound(uint64_t a1, int a2, CFTypeRef cf)
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
      *&buf[4] = "AUOneChannelNSV4.cpp";
      v28 = 1024;
      v29 = 641;
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
        *&buf[4] = "AUOneChannelNSV4.cpp";
        v28 = 1024;
        v29 = 648;
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
      *&buf[4] = "AUOneChannelNSV4.cpp";
      v28 = 1024;
      v29 = 650;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d Profile vector is not present in the dictionary.";
      goto LABEL_16;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AUOneChannelNSV4.cpp";
    v28 = 1024;
    v29 = 643;
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

void sub_1DDDA66AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16)
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

const UInt8 *applesauce::CF::details::find_at_key_or_optional<double,char const(&)[11]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[11]>(a1, a2);
  if (result)
  {
    return applesauce::CF::convert_as<double,0>(result);
  }

  return result;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned char>,char const(&)[13]>(_BYTE *a1, const __CFDictionary *a2, const UInt8 *__s)
{
  result = applesauce::CF::details::at_key<char const(&)[13]>(a2, __s);
  if (result)
  {

    return applesauce::CF::convert_as<std::vector<unsigned char>,0>(a1, result);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }

  return result;
}

CFTypeID applesauce::CF::convert_as<std::vector<unsigned char>,0>(uint64_t a1, const void *a2)
{
  TypeID = CFDataGetTypeID();
  result = CFGetTypeID(a2);
  if (TypeID == result)
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    v8 = 0uLL;
    v9 = 0;
    result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v8, BytePtr, &BytePtr[Length], Length);
    *a1 = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDDA68BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t applesauce::CF::convert_as<double,0>(unint64_t result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v7 = Value == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v7 = v11 == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = v10 == 0;
          v12 = valuePtr;
LABEL_30:
          v8 = v12;
          goto LABEL_31;
        case kCFNumberLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = v5 == 0;
          v8 = valuePtr;
LABEL_31:
          v13 = v8;
          goto LABEL_32;
        case kCFNumberCGFloatType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v13 = *&valuePtr;
LABEL_32:
          if (v7)
          {
            v13 = 0.0;
          }

          v14 = *&v13 & 0xFFFFFFFFFFFFFF00;
          break;
        default:
          v14 = 0;
          LOBYTE(v13) = 0;
          break;
      }

      return LOBYTE(v13) | v14;
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        *&result = CFBooleanGetValue(v1);
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

uint64_t AUOneChannelNSV4::GetProperty(AUOneChannelNSV4 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 4520)
  {
    if (a2 == 4521)
    {
      result = 0;
      v8 = *(this + 146);
    }

    else
    {
      if (a2 != 4522)
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

  *a5 = v8;
  return result;
}

uint64_t AUOneChannelNSV4::GetPropertyInfo(AUOneChannelNSV4 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v8 = 1;
  result = 4294956417;
  if (a2 > 4520)
  {
    if (a2 != 4521)
    {
      if (a2 != 4522)
      {
        return result;
      }

      v8 = (*(this + 17) & 1) == 0;
    }

LABEL_10:
    result = 0;
    *a6 = v8;
    *a5 = 4;
    return result;
  }

  if (a2 == 21 || a2 == 3700)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t *AUOneChannelNSV4::Cleanup(AUOneChannelNSV4 *this)
{
  v2 = *(this + 74);
  if (v2)
  {
    CNoiseSuppressorV4::speex_preprocess_state_destroy(v2);
    *(this + 74) = 0;
  }

  return std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 66, 0);
}

uint64_t AUOneChannelNSV4::Initialize(AUOneChannelNSV4 *this)
{
  (*(*this + 64))(this);
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  *(this + 150) = v3;
  v4 = *(this + 21);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(*(this + 21));
    LODWORD(v3) = *(this + 150);
  }

  else
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
  }

  *(this + 151) = v5;
  v6 = v5 - 4;
  if ((v3 - 4) >= 0xFFFFFFFD && v6 >= 0xFFFFFFFD)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (Element)
    {
      *(this + 548) = *(Element + 88) == 1718773105;
      v9 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v9)
      {
        *(this + 549) = *(v9 + 88) == 1718773105;
        v10 = ausdk::AUScope::GetElement((this + 128), 0);
        if (v10)
        {
          v11 = *(v10 + 80);
          if (*(this + 376))
          {
            v12 = *(this + 84);
            v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v14)
            {
              Parameter = ausdk::AUElement::GetParameter(v13, 0xAu);
              CNoiseSuppressorV4::speex_preprocess_state_init(v12, v11, 0, 1, Parameter, 1, 0);
            }

            abort();
          }

          if (ausdk::AUScope::GetElement((this + 128), 0) && ausdk::AUScope::GetElement((this + 80), 0) && ausdk::AUScope::GetElement((this + 128), 0))
          {
            operator new();
          }
        }
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return 4294956421;
}

uint64_t AUOneChannelNSV4::BlockProcessClassFunc(int **this, void *a2, uint64_t a3, const AudioBufferList **a4, AudioBufferList **a5)
{
  v6 = a2;
  v8 = *(*a3 + 16);
  CNoiseSuppressorV4::speex_preprocess_run(this[74], v8, 0, v8);
  v9 = this[74];
  if (v9)
  {
    v10 = *(v9 + 83);
  }

  else
  {
    v10 = 0.0;
  }

  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
  if ((v12 & 1) == 0 || (ausdk::AUElement::SetParameter(v11, 1u, v10), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 2u, *(this[74] + 84)), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v16 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v15, 5u, *(this[74] + 85));
  memcpy((*a4)->mBuffers[0].mData, v8, 4 * v6);
  return 0;
}

void AUOneChannelNSV4::~AUOneChannelNSV4(AUOneChannelNSV4 *this)
{
  AUOneChannelNSV4::~AUOneChannelNSV4(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5922078;
  AUOneChannelNSV4::Cleanup(this);
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

  *(this + 568) = 0u;
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

void ZoomCurveValue::ZoomCurveValue(ZoomCurveValue *this)
{
  v5 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 6) = *"FOVToBeamMix";
  *this = this + 8;
  *(this + 56) = 0u;
  *(this + 71) = 12;
  *(this + 14) = 2020167021;
  std::string::basic_string[abi:ne200100]<0>(v3, "focused");
  std::string::basic_string[abi:ne200100]<0>(v4, "wide");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v1, v3, &v5, 2uLL);
}

void sub_1DDDA734C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v29 = &a25;
  v30 = -48;
  v31 = &a25;
  while (1)
  {
    v32 = *v31;
    v31 -= 24;
    if (v32 < 0)
    {
      operator delete(*(v29 - 23));
    }

    v29 = v31;
    v30 += 24;
    if (!v30)
    {
      if (*(v25 + 71) < 0)
      {
        operator delete(*v27);
      }

      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*v26);
      _Unwind_Resume(a1);
    }
  }
}

void sub_1DDDA742C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t ZoomCurveValue::ZoomCurveValue(uint64_t a1, std::string **a2, std::string *__str)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 0u;
  v5 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  std::string::operator=((a1 + 48), __str);
  if (v5 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return a1;
}

void sub_1DDDA759C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*v3);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,PiecewiseLinearTransform>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ZoomCurveValue::SaveToDictionary(ZoomCurveValue *this, __CFDictionary *a2)
{
  v3 = a2;
  v23 = this;
  v4 = *this;
  v21 = v3;
  v22 = (this + 8);
  if (*this != (this + 8))
  {
    v24 = (this + 48);
    do
    {
      std::pair<std::string const,PiecewiseLinearTransform>::pair[abi:ne200100](&v30, v4 + 2);
      v5 = &v30;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v30.__r_.__value_.__r.__words[0];
      }

      v6 = v24;
      if (*(v23 + 71) < 0)
      {
        v6 = *v24;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s", v5, v6];
      v27 = 0;
      v28 = 0;
      v29 = 0;
      std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(&v27, __p, v32, (v32 - __p) >> 3);
      v25 = v7;
      v26 = objc_opt_new();
      v8 = objc_opt_new();
      v11 = v27;
      v10 = v28;
      for (i = v27; i != v10; i += 2)
      {
        v13 = MEMORY[0x1E695DEC8];
        LODWORD(v9) = *i;
        v14 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
        LODWORD(v15) = i[1];
        v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
        v17 = [v13 arrayWithObjects:{v14, v16, 0}];
        [v8 addObject:v17];
      }

      [v26 setObject:v8 forKeyedSubscript:@"Breakpoints"];

      if (v11)
      {
        v28 = v11;
        operator delete(v11);
      }

      if (v26)
      {
        [(__CFDictionary *)v21 setObject:v26 forKeyedSubscript:v25];
      }

      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      v18 = *(v4 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v4 + 2);
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
    }

    while (v19 != v22);
  }
}

void sub_1DDDA783C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  std::pair<std::string const,PiecewiseLinearTransform>::~pair(&a21);

  _Unwind_Resume(a1);
}

void PiecewiseLinearTransform::ApplyFunctionToChangeXValues(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v9 = *v2;
      v6 = *(a2 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      *v2 = (*(*v6 + 48))(v6, &v9);
      v2 += 2;
    }

    while (v2 != v3);
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  v7 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEELb0EEEvT1_SC_S5_NS_15iterator_traitsISC_E15difference_typeEb(v2, v3, v8, 1);
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
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

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEELb0EEEvT1_SC_S5_NS_15iterator_traitsISC_E15difference_typeEb(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = (a2 - 8);
    v9 = (a2 - 4);
    v10 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = (a2 - v10) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v94 = v10[2];
                v95 = *v10;
                v96 = *v8;
                if (v94 >= *v10)
                {
                  if (v96 >= v94)
                  {
                    return;
                  }

                  v10[2] = v96;
                  *v8 = v94;
                  v146 = *(v10 + 3);
                  v10[3] = *v9;
                  *v9 = v146;
                  v147 = v10[2];
                  v148 = *v10;
                  if (v147 >= *v10)
                  {
                    return;
                  }

                  *v10 = v147;
                  v10[2] = v148;
                  v97 = (v10 + 1);
                  v9 = v10 + 3;
                }

                else
                {
                  if (v96 >= v94)
                  {
                    v97 = (v10 + 3);
                    v160 = *(v10 + 3);
                    v161 = *(v10 + 1);
                    *v10 = v94;
                    *(v10 + 1) = v160;
                    v10[2] = v95;
                    *(v10 + 3) = v161;
                    if (*v8 >= v95)
                    {
                      return;
                    }

                    v10[2] = *v8;
                  }

                  else
                  {
                    v97 = (v10 + 1);
                    *v10 = v96;
                  }

                  *v8 = v95;
                }

                v93 = *v97;
                *v97 = *v9;
LABEL_188:
                *v9 = v93;
                return;
              case 4:
                v98 = v10[2];
                v99 = *v10;
                v100 = v10[4];
                if (v98 >= *v10)
                {
                  if (v100 < v98)
                  {
                    v149 = (v10 + 3);
                    v150 = *(v10 + 3);
                    v151 = *(v10 + 5);
                    v10[2] = v100;
                    *(v10 + 3) = v151;
                    v10[4] = v98;
                    *(v10 + 5) = v150;
                    if (v100 < v99)
                    {
                      *v10 = v100;
                      v10[2] = v99;
                      v101 = (v10 + 1);
                      goto LABEL_192;
                    }

LABEL_194:
                    if (*v8 < v98)
                    {
                      v10[4] = *v8;
                      *v8 = v98;
                      v165 = *(v10 + 5);
                      v10[5] = *v9;
                      *v9 = v165;
                      v166 = v10[4];
                      v167 = v10[2];
                      if (v166 < v167)
                      {
                        v168 = *(v10 + 3);
                        v169 = *(v10 + 5);
                        v10[2] = v166;
                        *(v10 + 3) = v169;
                        v10[4] = v167;
                        *(v10 + 5) = v168;
                        v170 = *v10;
                        if (v166 < *v10)
                        {
                          v171 = *(v10 + 1);
                          *v10 = v166;
                          *(v10 + 1) = v169;
                          v10[2] = v170;
                          *(v10 + 3) = v171;
                        }
                      }
                    }

                    return;
                  }
                }

                else
                {
                  if (v100 < v98)
                  {
                    v101 = (v10 + 1);
                    *v10 = v100;
                    goto LABEL_191;
                  }

                  v101 = (v10 + 3);
                  v162 = *(v10 + 3);
                  v163 = *(v10 + 1);
                  *v10 = v98;
                  *(v10 + 1) = v162;
                  v10[2] = v99;
                  *(v10 + 3) = v163;
                  if (v100 < v99)
                  {
                    v10[2] = v100;
LABEL_191:
                    v10[4] = v99;
                    v149 = (v10 + 5);
LABEL_192:
                    v164 = *v101;
                    *v101 = *v149;
                    *v149 = v164;
                    v98 = v10[4];
                    goto LABEL_194;
                  }
                }

                v98 = v100;
                goto LABEL_194;
              case 5:

                _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEELi0EEEvT1_SC_SC_SC_SC_S5_(v10, (v10 + 2), (v10 + 4), v10 + 6, a2 - 8);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v92 = *v10;
              if (*v8 >= *v10)
              {
                return;
              }

              *v10 = *v8;
              *v8 = v92;
              v93 = *(v10 + 1);
              v10[1] = *v9;
              goto LABEL_188;
            }
          }

          if (v11 <= 23)
          {
            v102 = v10 + 2;
            v104 = v10 == a2 || v102 == a2;
            if (a4)
            {
              if (!v104)
              {
                v105 = 0;
                v106 = v10;
                do
                {
                  v107 = v102;
                  v108 = v106[2];
                  v109 = *v106;
                  if (v108 < *v106)
                  {
                    v110 = *(v106 + 3);
                    v111 = v105;
                    while (1)
                    {
                      v112 = (v10 + v111);
                      v113 = *(v10 + v111 + 4);
                      v112[2] = v109;
                      *(v112 + 3) = v113;
                      if (!v111)
                      {
                        break;
                      }

                      v109 = *(v112 - 2);
                      v111 -= 8;
                      if (v108 >= v109)
                      {
                        v114 = v10 + v111 + 8;
                        goto LABEL_136;
                      }
                    }

                    v114 = v10;
LABEL_136:
                    *v114 = v108;
                    *(v114 + 4) = v110;
                  }

                  v102 = v107 + 1;
                  v105 += 8;
                  v106 = v107;
                }

                while (v107 + 1 != a2);
              }
            }

            else if (!v104)
            {
              v152 = v10 + 3;
              do
              {
                v153 = v102;
                v154 = *(a1 + 8);
                v155 = *a1;
                if (v154 < *a1)
                {
                  v156 = *(a1 + 12);
                  v157 = v152;
                  do
                  {
                    v158 = v157;
                    v159 = *(v157 - 2);
                    v157 -= 2;
                    *(v158 - 1) = v155;
                    *v158 = v159;
                    v155 = *(v158 - 5);
                  }

                  while (v154 < v155);
                  *(v157 - 1) = v154;
                  *v157 = v156;
                }

                v102 = (v153 + 8);
                v152 += 2;
                a1 = v153;
              }

              while (v153 + 8 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v115 = (v11 - 2) >> 1;
              v116 = v115;
              do
              {
                v117 = v116;
                if (v115 >= v116)
                {
                  v118 = (2 * v116) | 1;
                  v119 = &v10[2 * v118];
                  if (2 * v117 + 2 < v11 && *v119 < v119[2])
                  {
                    v119 += 2;
                    v118 = 2 * v117 + 2;
                  }

                  v120 = &v10[2 * v117];
                  v121 = *v119;
                  v122 = *v120;
                  if (*v119 >= *v120)
                  {
                    v123 = *(v120 + 1);
                    do
                    {
                      v124 = v120;
                      v120 = v119;
                      *v124 = v121;
                      v124[1] = v119[1];
                      if (v115 < v118)
                      {
                        break;
                      }

                      v125 = 2 * v118;
                      v118 = (2 * v118) | 1;
                      v119 = &v10[2 * v118];
                      v126 = v125 + 2;
                      if (v126 < v11 && *v119 < v119[2])
                      {
                        v119 += 2;
                        v118 = v126;
                      }

                      v121 = *v119;
                    }

                    while (*v119 >= v122);
                    *v120 = v122;
                    *(v120 + 1) = v123;
                  }
                }

                v116 = v117 - 1;
              }

              while (v117);
              do
              {
                v127 = 0;
                v129 = *v10;
                v128 = *(v10 + 1);
                v130 = v10;
                do
                {
                  v131 = v130;
                  v132 = &v130[2 * v127];
                  v130 = v132 + 2;
                  v133 = 2 * v127;
                  v127 = (2 * v127) | 1;
                  v134 = v133 + 2;
                  if (v134 < v11)
                  {
                    v136 = v132[4];
                    v135 = v132 + 4;
                    if (*(v135 - 2) < v136)
                    {
                      v130 = v135;
                      v127 = v134;
                    }
                  }

                  *v131 = *v130;
                  v131[1] = v130[1];
                }

                while (v127 <= ((v11 - 2) >> 1));
                if (v130 == (a2 - 8))
                {
                  *v130 = v129;
                  *(v130 + 1) = v128;
                }

                else
                {
                  *v130 = *(a2 - 8);
                  v130[1] = *(a2 - 4);
                  *(a2 - 8) = v129;
                  *(a2 - 4) = v128;
                  v137 = (v130 - v10 + 8) >> 3;
                  v138 = v137 < 2;
                  v139 = v137 - 2;
                  if (!v138)
                  {
                    v140 = v139 >> 1;
                    v141 = &v10[2 * v140];
                    v142 = *v141;
                    v143 = *v130;
                    if (*v141 < *v130)
                    {
                      v144 = *(v130 + 1);
                      do
                      {
                        v145 = v130;
                        v130 = v141;
                        *v145 = v142;
                        v145[1] = v141[1];
                        if (!v140)
                        {
                          break;
                        }

                        v140 = (v140 - 1) >> 1;
                        v141 = &v10[2 * v140];
                        v142 = *v141;
                      }

                      while (*v141 < v143);
                      *v130 = v143;
                      *(v130 + 1) = v144;
                    }
                  }
                }

                a2 -= 8;
                v138 = v11-- <= 2;
              }

              while (!v138);
            }

            return;
          }

          v12 = &v10[2 * (v11 >> 1)];
          v13 = v12;
          v14 = *v8;
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *v10;
            if (*v12 >= *v10)
            {
              if (v14 >= v15 || (*v12 = v14, *v8 = v15, v21 = (v12 + 1), v22 = *(v12 + 1), v12[1] = *v9, *v9 = v22, v23 = *v10, *v12 >= *v10))
              {
LABEL_28:
                v30 = v12 - 2;
                v31 = *(v12 - 2);
                v32 = v10[2];
                v33 = *(a2 - 16);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 16) = v31, v35 = v12 - 1, v36 = *(v12 - 1), *(v12 - 1) = *(a2 - 12), *(a2 - 12) = v36, v37 = v10[2], *v30 >= v37))
                  {
LABEL_41:
                    v45 = v12[2];
                    v44 = v12 + 2;
                    v46 = v45;
                    v47 = v10[4];
                    v48 = *(a2 - 24);
                    if (v45 >= v47)
                    {
                      if (v48 < v46)
                      {
                        *v44 = v48;
                        *(a2 - 24) = v46;
                        v50 = v44 + 1;
                        v51 = *(v44 + 1);
                        *(v44 + 1) = *(a2 - 20);
                        *(a2 - 20) = v51;
                        v46 = *v44;
                        v52 = v10[4];
                        if (*v44 < v52)
                        {
                          v10[4] = v46;
                          *v44 = v52;
                          v49 = (v10 + 5);
LABEL_50:
                          v56 = *v49;
                          *v49 = *v50;
                          *v50 = v56;
                          v46 = *v44;
                        }
                      }
                    }

                    else
                    {
                      if (v48 < v46)
                      {
                        v49 = (v10 + 5);
                        v10[4] = v48;
LABEL_49:
                        *(a2 - 24) = v47;
                        v50 = (a2 - 20);
                        goto LABEL_50;
                      }

                      v49 = v44 + 1;
                      v53 = *(v44 + 1);
                      v54 = *(v10 + 5);
                      v10[4] = v46;
                      *(v10 + 5) = v53;
                      *v44 = v47;
                      *(v44 + 1) = v54;
                      v55 = *(a2 - 24);
                      if (v55 < v47)
                      {
                        *v44 = v55;
                        goto LABEL_49;
                      }

                      v46 = v47;
                    }

                    v57 = *v13;
                    v58 = *v30;
                    if (*v13 >= *v30)
                    {
                      if (v46 >= v57)
                      {
LABEL_61:
                        v66 = *v10;
                        *v10 = v57;
                        v20 = (v10 + 1);
                        *v13 = v66;
                        v26 = (v13 + 1);
                        goto LABEL_62;
                      }

                      v61 = (v13 + 1);
                      v62 = *(v13 + 1);
                      *v13 = v46;
                      v13[1] = *(v44 + 1);
                      *v44 = v57;
                      *(v44 + 1) = v62;
                      if (v46 >= v58)
                      {
                        v57 = v46;
                        goto LABEL_61;
                      }

                      *v30 = v46;
                      v59 = (v30 + 1);
                      *v13 = v58;
                    }

                    else
                    {
                      if (v46 >= v57)
                      {
                        v63 = *(v13 + 1);
                        *v13 = v58;
                        v64 = *(v30 + 1);
                        *v30 = v57;
                        *(v30 + 1) = v63;
                        *(v13 + 1) = v64;
                        if (v46 >= v58)
                        {
                          v57 = v58;
                          goto LABEL_61;
                        }

                        *v13 = v46;
                        *v44 = v58;
                        v60 = v44 + 1;
                        v59 = (v13 + 1);
                      }

                      else
                      {
                        *v30 = v46;
                        v59 = (v30 + 1);
                        *v44 = v58;
                        v60 = v44 + 1;
                      }

                      v61 = v60;
                    }

                    v65 = *v59;
                    *v59 = *v61;
                    *v61 = v65;
                    v57 = *v13;
                    goto LABEL_61;
                  }

                  v10[2] = *v30;
                  *v30 = v37;
                  v34 = v10 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v12 - 1;
                    v40 = *(v12 - 1);
                    v41 = *(v10 + 3);
                    v10[2] = v31;
                    *(v10 + 3) = v40;
                    *v30 = v32;
                    *(v12 - 1) = v41;
                    v42 = *(a2 - 16);
                    if (v42 >= v32)
                    {
                      goto LABEL_41;
                    }

                    *v30 = v42;
                  }

                  else
                  {
                    v34 = v10 + 3;
                    v10[2] = v33;
                  }

                  *(a2 - 16) = v32;
                  v35 = (a2 - 12);
                }

                v43 = *v34;
                *v34 = *v35;
                *v35 = v43;
                goto LABEL_41;
              }

              *v10 = *v12;
              v17 = (v10 + 1);
              *v12 = v23;
            }

            else
            {
              if (v14 >= v15)
              {
                v17 = (v12 + 1);
                v27 = *(v12 + 1);
                v28 = *(v10 + 1);
                *v10 = v15;
                *(v10 + 1) = v27;
                *v12 = v16;
                *(v12 + 1) = v28;
                if (*v8 >= v16)
                {
                  goto LABEL_28;
                }

                *v12 = *v8;
              }

              else
              {
                v17 = (v10 + 1);
                *v10 = v14;
              }

              *v8 = v16;
              v21 = (a2 - 4);
            }

            v29 = *v17;
            *v17 = *v21;
            *v21 = v29;
            goto LABEL_28;
          }

          v18 = *v10;
          v19 = *v12;
          if (*v10 >= *v12)
          {
            if (v14 < v18)
            {
              *v10 = v14;
              *v8 = v18;
              v24 = *(v10 + 1);
              v10[1] = *v9;
              *v9 = v24;
              v25 = *v12;
              if (*v10 < *v12)
              {
                *v12 = *v10;
                *v10 = v25;
                v20 = (v12 + 1);
                v26 = (v10 + 1);
LABEL_62:
                v67 = *v20;
                *v20 = *v26;
                *v26 = v67;
              }
            }
          }

          else
          {
            if (v14 < v18)
            {
              v20 = (v12 + 1);
              *v13 = v14;
LABEL_36:
              *v8 = v19;
              v26 = (a2 - 4);
              goto LABEL_62;
            }

            v20 = (v10 + 1);
            v38 = *(v10 + 1);
            v39 = *(v13 + 1);
            *v13 = v18;
            *(v13 + 1) = v38;
            *v10 = v19;
            *(v10 + 1) = v39;
            if (*v8 < v19)
            {
              *v10 = *v8;
              goto LABEL_36;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v10 - 2) < *v10)
          {
            break;
          }

          v82 = *v10;
          if (COERCE_FLOAT(*v10) >= *v8)
          {
            v84 = v10 + 2;
            do
            {
              v10 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 2;
            }

            while (*&v82 >= *v10);
          }

          else
          {
            do
            {
              v83 = v10[2];
              v10 += 2;
            }

            while (*&v82 >= v83);
          }

          v85 = a2;
          if (v10 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (*&v82 < v86);
          }

          if (v10 < v85)
          {
            v87 = *v10;
            v88 = *v85;
            do
            {
              *v10 = v88;
              *v85 = v87;
              v89 = *(v10 + 1);
              v10[1] = v85[1];
              *(v85 + 1) = v89;
              do
              {
                v90 = v10[2];
                v10 += 2;
                v87 = v90;
              }

              while (*&v82 >= v90);
              do
              {
                v91 = *(v85 - 2);
                v85 -= 2;
                v88 = v91;
              }

              while (*&v82 < v91);
            }

            while (v10 < v85);
          }

          if (v10 - 2 != a1)
          {
            *a1 = *(v10 - 2);
            *(a1 + 4) = *(v10 - 1);
          }

          a4 = 0;
          *(v10 - 1) = v82;
        }

        v68 = *v10;
        v69 = v10;
        do
        {
          v70 = v69;
          v71 = v69[2];
          v69 += 2;
          v72 = v71;
        }

        while (v71 < *&v68);
        v73 = a2;
        if (v70 == v10)
        {
          v73 = a2;
          do
          {
            if (v69 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 2;
          }

          while (v75 >= *&v68);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 2;
          }

          while (v74 >= *&v68);
        }

        if (v69 >= v73)
        {
          v10 = v69;
        }

        else
        {
          v76 = *v73;
          v10 = v69;
          v77 = v73;
          do
          {
            *v10 = v76;
            *v77 = v72;
            v78 = *(v10 + 1);
            v10[1] = v77[1];
            *(v77 + 1) = v78;
            do
            {
              v79 = v10[2];
              v10 += 2;
              v72 = v79;
            }

            while (v79 < *&v68);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 2;
              v76 = v80;
            }

            while (v80 >= *&v68);
          }

          while (v10 < v77);
        }

        if (v10 - 2 != a1)
        {
          *a1 = *(v10 - 2);
          *(a1 + 4) = *(v10 - 1);
        }

        *(v10 - 1) = v68;
        if (v69 >= v73)
        {
          break;
        }

LABEL_86:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEELb0EEEvT1_SC_S5_NS_15iterator_traitsISC_E15difference_typeEb(a1, v10 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v81 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEEEEbT1_SC_S5_(a1, (v10 - 2));
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEEEEbT1_SC_S5_(v10, a2))
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_86;
      }
    }

    a2 = (v10 - 2);
    if (!v81)
    {
      continue;
    }

    break;
  }
}

float _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEELi0EEEvT1_SC_SC_SC_SC_S5_(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a1;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v9 = (a2 + 4);
      v10 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v10;
      v11 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        v8 = a1 + 1;
        *a2 = v11;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = a1 + 1;
      *a1 = v7;
      *a3 = v6;
      v9 = (a3 + 4);
LABEL_9:
      v14 = *v8;
      *v8 = *v9;
      *v9 = v14;
      goto LABEL_10;
    }

    *a1 = v5;
    *a2 = v6;
    v8 = (a2 + 4);
    v12 = a1[1];
    a1[1] = *(a2 + 4);
    *(a2 + 4) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v9 = (a3 + 4);
      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = *(a3 + 4);
    *(a3 + 4) = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v18;
      v19 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v19;
        v20 = a1[1];
        a1[1] = *(a2 + 4);
        *(a2 + 4) = v20;
      }
    }
  }

  result = *a5;
  v22 = *a4;
  if (*a5 < *a4)
  {
    *a4 = result;
    *a5 = v22;
    v23 = a4[1];
    a4[1] = *(a5 + 4);
    *(a5 + 4) = v23;
    result = *a4;
    v24 = *a3;
    if (*a4 < *a3)
    {
      *a3 = result;
      *a4 = v24;
      v25 = *(a3 + 4);
      *(a3 + 4) = a4[1];
      a4[1] = v25;
      result = *a3;
      v26 = *a2;
      if (*a3 < *a2)
      {
        *a2 = result;
        *a3 = v26;
        v27 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v27;
        result = *a2;
        v28 = *a1;
        if (*a2 < *a1)
        {
          *a1 = result;
          *a2 = v28;
          result = *(a1 + 1);
          a1[1] = *(a2 + 4);
          *(a2 + 4) = result;
        }
      }
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEEEEbT1_SC_S5_(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 8);
      v7 = *a1;
      v8 = *(a2 - 8);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        *(a1 + 8) = v8;
        *(a2 - 8) = v6;
        v19 = (a1 + 12);
        v20 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 4);
        *(a2 - 4) = v20;
        v21 = *(a1 + 8);
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        *(a1 + 8) = v22;
        v9 = (a1 + 4);
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = (a1 + 12);
          v29 = *(a1 + 12);
          v30 = *(a1 + 4);
          *a1 = v6;
          *(a1 + 4) = v29;
          *(a1 + 8) = v7;
          *(a1 + 12) = v30;
          v31 = *(a2 - 8);
          if (v31 >= v7)
          {
            return 1;
          }

          *(a1 + 8) = v31;
        }

        else
        {
          v9 = (a1 + 4);
          *a1 = v8;
        }

        *(a2 - 8) = v7;
        v19 = (a2 - 4);
      }

      v32 = *v9;
      *v9 = *v19;
      *v19 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEELi0EEEvT1_SC_SC_SC_SC_S5_(a1, a1 + 8, a1 + 16, (a1 + 24), a2 - 8);
      return 1;
    }

    v15 = *(a1 + 8);
    v16 = *a1;
    v17 = *(a1 + 16);
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v26 = (a1 + 12);
        v27 = *(a1 + 12);
        v28 = *(a1 + 20);
        *(a1 + 8) = v17;
        *(a1 + 12) = v28;
        *(a1 + 16) = v15;
        *(a1 + 20) = v27;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        *(a1 + 8) = v16;
        v18 = (a1 + 4);
LABEL_50:
        v48 = *v18;
        *v18 = *v26;
        *v26 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = (a1 + 4);
        *a1 = v17;
LABEL_49:
        *(a1 + 16) = v16;
        v26 = (a1 + 20);
        v15 = v16;
        goto LABEL_50;
      }

      v18 = (a1 + 12);
      v46 = *(a1 + 12);
      v47 = *(a1 + 4);
      *a1 = v15;
      *(a1 + 4) = v46;
      *(a1 + 8) = v16;
      *(a1 + 12) = v47;
      if (v17 < v16)
      {
        *(a1 + 8) = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 8);
    if (v49 < v17)
    {
      *(a1 + 16) = v49;
      *(a2 - 8) = v17;
      v50 = *(a1 + 20);
      *(a1 + 20) = *(a2 - 4);
      *(a2 - 4) = v50;
      v51 = *(a1 + 16);
      v52 = *(a1 + 8);
      if (v51 < v52)
      {
        v53 = *(a1 + 12);
        v54 = *(a1 + 20);
        *(a1 + 8) = v51;
        *(a1 + 12) = v54;
        *(a1 + 16) = v52;
        *(a1 + 20) = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = *(a1 + 4);
          *a1 = v51;
          *(a1 + 4) = v54;
          *(a1 + 8) = v55;
          *(a1 + 12) = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 8);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 8) = v4;
      v5 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 4);
      *(a2 - 4) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 8);
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = (a1 + 12);
      v33 = *(a1 + 12);
      v34 = *(a1 + 4);
      *a1 = v12;
      *(a1 + 4) = v33;
      *(a1 + 8) = v13;
      *(a1 + 12) = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      *(a1 + 8) = v11;
    }

    else
    {
      v14 = (a1 + 4);
      *a1 = v11;
    }

    *(a1 + 16) = v13;
    v23 = (a1 + 20);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v23 = (a1 + 12);
    v24 = *(a1 + 12);
    v25 = *(a1 + 20);
    *(a1 + 8) = v11;
    *(a1 + 12) = v25;
    *(a1 + 16) = v12;
    *(a1 + 20) = v24;
    if (v11 < v13)
    {
      *a1 = v11;
      *(a1 + 8) = v13;
      v14 = (a1 + 4);
LABEL_35:
      v35 = *v14;
      *v14 = *v23;
      *v23 = v35;
    }
  }

LABEL_36:
  v36 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = *v10;
    if (*v36 < *v10)
    {
      v41 = *(v36 + 4);
      v42 = v37;
      while (1)
      {
        v43 = a1 + v42;
        v44 = *(a1 + v42 + 20);
        *(v43 + 24) = v40;
        *(v43 + 28) = v44;
        if (v42 == -16)
        {
          break;
        }

        v40 = *(v43 + 8);
        v42 -= 8;
        if (v39 >= v40)
        {
          v45 = a1 + v42 + 24;
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v39;
      *(v45 + 4) = v41;
      if (++v38 == 8)
      {
        return v36 + 8 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 8;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void *std::__function::__func<float({block_pointer} {__strong})(float),std::allocator<float({block_pointer} {__strong})(float)>,float ()(float)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F592B7B0;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<float({block_pointer} {__strong})(float),std::allocator<float({block_pointer} {__strong})(float)>,float ()(float)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E12BD160);
}

void ZoomCurveValue::LoadFromDictionary(ZoomCurveValue *this, const __CFDictionary *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v3, "focused");
  std::string::basic_string[abi:ne200100]<0>(v4, "wide");
  memset(v2, 0, sizeof(v2));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v2, v3, &v5, 2uLL);
}

void sub_1DDDA8C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a18 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  v31 = &a30;
  v32 = -48;
  v33 = &a30;
  while (1)
  {
    v34 = *v33;
    v33 -= 24;
    if (v34 < 0)
    {
      operator delete(*(v31 - 23));
    }

    v31 = v33;
    v32 += 24;
    if (!v32)
    {
      _Unwind_Resume(a1);
    }
  }
}

void ZoomCurveValue::LoadFromDictionary(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(v38, 0, sizeof(v38));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v38, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a4, a4[1]);
  }

  else
  {
    __str = *a4;
  }

  ZoomCurveValue::ZoomCurveValue(a1, v38, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v46 = v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  if (a2)
  {
    v5 = a2;
    v25 = a3[1];
    if (*a3 == v25)
    {
    }

    else
    {
      v6 = *a3;
      v27 = v5;
      v23 = 1;
      v7 = a4;
      do
      {
        v29 = v6;
        if (*(v6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v36, *v6, *(v6 + 8));
        }

        else
        {
          v8 = *v6;
          v36.__r_.__value_.__r.__words[2] = *(v6 + 16);
          *&v36.__r_.__value_.__l.__data_ = v8;
        }

        v9 = &v36;
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v36.__r_.__value_.__r.__words[0];
        }

        v10 = v7;
        if (*(v7 + 23) < 0)
        {
          v10 = *v7;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s", v9, v10];
        v11 = [v27 objectForKeyedSubscript:?];
        v12 = v11 == 0;

        if (v12)
        {
          v23 = 0;
        }

        else
        {
          v13 = [v27 objectForKeyedSubscript:v30];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v28 = v13;
          obj = [v13 objectForKeyedSubscript:@"Breakpoints"];
          v14 = [obj countByEnumeratingWithState:&v42 objects:&v46 count:16];
          if (v14)
          {
            v15 = *v43;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v43 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v42 + 1) + 8 * i);
                if ([v17 count] >= 2)
                {
                  [v17 objectAtIndexedSubscript:0];
                  [objc_claimAutoreleasedReturnValue() floatValue];
                  [v17 objectAtIndexedSubscript:1];
                  [objc_claimAutoreleasedReturnValue() floatValue];
                  std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](1uLL);
                }
              }

              v14 = [obj countByEnumeratingWithState:&v42 objects:&v46 count:16];
            }

            while (v14);
          }

          __p = 0;
          v40 = 0;
          v41 = 0;
          std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(&__p, 0, 0, 0);
          PiecewiseLinearTransform::PiecewiseLinearTransform(&v34, &__p);
          if (__p)
          {
            v40 = __p;
            operator delete(__p);
          }

          v46 = &v36;
          v18 = (std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v36) + 56);
          if (v18 != &v34)
          {
            std::vector<std::pair<float,float>>::__assign_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(v18, v34, v35, (v35 - v34) >> 3);
          }

          if (v34)
          {
            v35 = v34;
            operator delete(v34);
          }
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v6 = v29 + 24;
        v7 = a4;
      }

      while (v29 + 24 != v25);

      if ((v23 & 1) == 0)
      {
        memset(v33, 0, sizeof(v33));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v33, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, *a4, a4[1]);
        }

        else
        {
          v32 = *a4;
        }

        ZoomCurveValue::ZoomCurveValue(&v46, v33, &v32);
        v19 = a1 + 8;
        std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(a1 + 8));
        v20 = v47;
        *a1 = v46;
        *(a1 + 8) = v20;
        v21 = v48;
        *(a1 + 16) = v48;
        if (v21)
        {
          v20[2] = v19;
          v46 = &v47;
          v47 = 0;
          v48 = 0;
        }

        else
        {
          *a1 = v19;
        }

        std::vector<std::string>::__vdeallocate((a1 + 24));
        *(a1 + 24) = v49;
        *(a1 + 40) = v50;
        v50 = 0;
        v49 = 0uLL;
        if (*(a1 + 71) < 0)
        {
          operator delete(*(a1 + 48));
        }

        *(a1 + 48) = v51;
        *(a1 + 64) = v52;
        HIBYTE(v52) = 0;
        LOBYTE(v51) = 0;
        *&v42 = &v49;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
        std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v47);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        *&v42 = v33;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
      }
    }
  }
}

void sub_1DDDA9290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, char *a54)
{
  a54 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a54);
  ZoomCurveValue::~ZoomCurveValue(a13);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void ZoomCurveValue::ApplyToGraph(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    while (v3 != v4)
    {
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *v3, *(v3 + 1));
      }

      else
      {
        v5 = *v3;
        v18.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&v18.__r_.__value_.__l.__data_ = v5;
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v18;
      }

      v6 = *(a1 + 71);
      if (v6 >= 0)
      {
        v7 = (a1 + 48);
      }

      else
      {
        v7 = *(a1 + 48);
      }

      if (v6 >= 0)
      {
        v8 = *(a1 + 71);
      }

      else
      {
        v8 = *(a1 + 56);
      }

      v9 = std::string::append(&__p, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v17 = v9->__r_.__value_.__r.__words[2];
      *v16 = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v17 >= 0)
      {
        v11 = v16;
      }

      else
      {
        v11 = v16[0];
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v11);
      v12 = DSPGraph::Graph::box();
      v13 = v12;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v13)
        {
LABEL_24:
          if (std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__count_unique<std::string>(*(a1 + 8), &v18))
          {
            v14 = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &__p, &v18);
            if (!v14)
            {
              std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
            }

            (*(*v13 + 312))(v13, 0, 0, 0, 24, v14 + 56);
            __p.__r_.__value_.__s.__data_[0] = 1;
            (*(*v13 + 312))(v13, 1, 0, 0, 1, &__p);
          }
        }
      }

      else if (v12)
      {
        goto LABEL_24;
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 24);
    }
  }
}

void sub_1DDDA9710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDDA9764(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DDDA973CLL);
}

uint64_t std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__count_unique<std::string>(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t ZoomCurveValue::operator[](uint64_t a1, void *a2)
{
  if (!std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__count_unique<std::string>(*(a1 + 8), a2))
  {
    v4 = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
    v6 = (v4 + 56);
    v5 = *(v4 + 56);
    if (v5)
    {
      *(v4 + 64) = v5;
      operator delete(v5);
    }

    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  return std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2) + 56;
}

uint64_t **PiecewiseLinearTransform::PiecewiseLinearTransform(uint64_t **a1, uint64_t **a2)
{
  a1[2] = 0;
  v3 = 0uLL;
  *a1 = 0u;
  if (a1 != a2)
  {
    std::vector<std::pair<float,float>>::__assign_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(a1, *a2, a2[1], a2[1] - *a2);
    v3 = *a1;
  }

  v4 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 3);
  if (*(&v3 + 1) == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN24PiecewiseLinearTransform4SortEvEUlRT_RT0_E_PNS_4pairIffEELb0EEEvT1_SC_S5_NS_15iterator_traitsISC_E15difference_typeEb(v3, *(&v3 + 1), v5, 1);
  return a1;
}

void sub_1DDDA98F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AUsubMAEC::myAecBuffers::~myAecBuffers(AUsubMAEC::myAecBuffers *this)
{
  if (this)
  {
    v2 = *this;
    if (*this)
    {
      free(v2);
      *this = 0;
    }
  }

  v3 = *(this + 6);
  if (v3)
  {
    free(v3);
    *(this + 6) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    free(v4);
    *(this + 2) = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    free(v5);
    *(this + 4) = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {
    free(v6);
    *(this + 8) = 0;
  }
}

void AUsubMAEC::myAecBuffers::myAecBuffersInit(uint64_t a1, _DWORD *a2, int a3)
{
  v5 = a2[6];
  *(a1 + 72) = v5;
  *(a1 + 76) = a2[3];
  *(a1 + 84) = a2[2];
  *(a1 + 80) = a2[5];
  v6 = 8 * v5;
  v7 = 8 * v5;
  v8 = malloc_type_malloc(8 * v5, 0x89877855uLL);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v8;
  bzero(v8, v6);
  v11 = &v10[4 * *(a1 + 72)];
  *a1 = v10;
  *(a1 + 8) = v11;
  v12 = malloc_type_malloc(v6, 0xEB1B10AFuLL);
  if (v7 && v12 == 0)
  {
    goto LABEL_19;
  }

  v14 = v12;
  bzero(v12, v6);
  v15 = &v14[4 * *(a1 + 72)];
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  if (a3)
  {
    v16 = malloc_type_malloc(v6, 0xC916110AuLL);
    v17 = v16;
    if (v7 && !v16)
    {
      goto LABEL_19;
    }

    bzero(v16, v6);
    v18 = &v17[4 * *(a1 + 72)];
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
  }

  if ((v19 = malloc_type_malloc(v6, 0xA18AE19BuLL), v20 = v19, v7) && !v19 || (bzero(v19, v6), v21 = &v20[4 * *(a1 + 72)], *(a1 + 48) = v20, *(a1 + 56) = v21, v22 = 4 * *(a1 + 84), v23 = malloc_type_malloc(v22, 0xB727F530uLL), (v24 = v23) == 0) && v22)
  {
LABEL_19:
    exception = __cxa_allocate_exception(8uLL);
    v26 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v23, v22);
  *(a1 + 64) = v24;
}

void AUSpatialMixerV2OcclusionFilter::processInplace(AUSpatialMixerV2OcclusionFilter *this, float *a2, unsigned int a3)
{
  if (*this)
  {
    v4 = COERCE_FLOAT(atomic_load(this + 4));
    v5 = v4;
    v6 = *(this + 3);
    if (v6 <= -0.2 || v6 != v4)
    {
      v8 = a3;
      v12[0] = 1;
      for (v12[2] = 1; v8; v8 -= v10)
      {
        if (v8 >= 0x100)
        {
          v10 = 256;
        }

        else
        {
          v10 = v8;
        }

        v13 = a2;
        v12[3] = 4 * v10;
        v11 = *(this + 3);
        if (v11 != v5)
        {
          AUSpatialMixerV2OcclusionFilter::updateFilter(this, v5);
          v11 = *(this + 3);
        }

        if (v11 < -0.2)
        {
          (*(**this + 32))(*this, v10, v12, v12);
        }

        a2 += v10;
      }
    }
  }
}

void AUSpatialMixerV2OcclusionFilter::updateFilter(AUSpatialMixerV2OcclusionFilter *this, float a2)
{
  if (vabds_f32(*(this + 3) + ((a2 - *(this + 3)) * flt_1DE09B138[*(this + 3) < -40.0]), a2) >= 0.4)
  {
    a2 = *(this + 3) + ((a2 - *(this + 3)) * flt_1DE09B138[*(this + 3) < -40.0]);
  }

  *(this + 3) = a2;
  if (a2 <= -0.2)
  {
    v20[5] = v7;
    v20[6] = v6;
    v20[7] = v5;
    v20[8] = v4;
    v20[11] = v2;
    v20[12] = v3;
    v9 = a2 * 0.5;
    v10 = __exp10(v9 * 0.25 * 0.05);
    v11 = __exp10(v9 * 0.75 * 0.05);
    v12 = cos(31415.9265 / *(this + 2));
    v13 = (1.0 - v11 * v12 - sqrt(-(v11 * v11) * (1.0 - v12 * v12) + (v11 + v11) * (1.0 - v12))) / (1.0 - v11);
    v20[0] = v13 * -2.0;
    v20[1] = v13 * v13;
    v20[2] = v10 * (v13 * -2.0 + 1.0 + v13 * v13);
    v20[3] = 0.0;
    v20[4] = 0.0;
    if (*this)
    {
      v14 = (*(**this + 16))(*this, 1, v20);
      BiquadCoefficients::GetT(v20, v14);
      v16 = v15;
      v17 = v16;
      if ((SLODWORD(v16) <= -1 || ((LODWORD(v16) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F) && (LODWORD(v16) - 1) >= 0x7FFFFF)
      {
        v17 = 0;
      }

      *(this + 5) = v17;
    }
  }
}

uint64_t NoiseSuppression::Noise::HendriksSPP::GetNoiseBins(NoiseSuppression::Noise::HendriksSPP *this)
{
  v2 = *(this + 26);
  v7 = 0;
  std::vector<BOOL>::assign(this + 25, v2, &v7);
  v3 = *(this + 26);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 17);
    do
    {
      if (*(v5 + 4 * v4) < 0.4)
      {
        *(*(this + 25) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
        v3 = *(this + 26);
      }

      ++v4;
    }

    while (v3 > v4);
  }

  return this + 200;
}

void **NoiseSuppression::Noise::HendriksSPP::Process(void **this, const float *__src, float *a3, vDSP_Length __N)
{
  if (*(this + 24) == 1)
  {
    v18 = v4;
    v19 = v5;
    v6 = __N;
    v9 = this;
    v10 = __N;
    if (!*(this + 5))
    {
      memcpy(this[4], __src, 4 * __N);
      __B = (*(*v9 + 40))(v9);
      vDSP_vthr(*(v9 + 32), 1, &__B, *(v9 + 32), 1, v6);
    }

    vDSP_vthr(*(v9 + 32), 1, &NoiseSuppression::EPS, *(v9 + 112), 1, v10);
    vDSP_vdiv(*(v9 + 112), 1, __src, 1, *(v9 + 112), 1, v10);
    MEMORY[0x1E12BE7F0](*(v9 + 112), 1, v9 + 196, 0, *(v9 + 112), 1, v10);
    v16 = v6;
    vvexpf(*(v9 + 112), *(v9 + 112), &v16);
    MEMORY[0x1E12BE910](*(v9 + 112), 1, v9 + 184, &NoiseSuppression::Noise::HendriksSPP::one, *(v9 + 112), 1, v10);
    vDSP_svdiv(&NoiseSuppression::Noise::HendriksSPP::one, *(v9 + 112), 1, *(v9 + 112), 1, v10);
    vDSP_vmma(*(v9 + 136), 1, (v9 + 96), 0, *(v9 + 112), 1, (v9 + 192), 0, *(v9 + 136), 1, v10);
    if (v6)
    {
      v11 = 0;
      v12 = *(v9 + 136);
      do
      {
        v13 = *(v9 + 104);
        if (*(v12 + 4 * v11) > v13)
        {
          v14 = *(v9 + 112);
          if (*(v14 + 4 * v11) < v13)
          {
            v13 = *(v14 + 4 * v11);
          }

          *(v14 + 4 * v11) = v13;
        }

        ++v11;
      }

      while (v10 != v11);
    }

    MEMORY[0x1E12BE9A0](*(v9 + 112), 1, &NoiseSuppression::Noise::HendriksSPP::one, 0, *(v9 + 160), 1, v10);
    MEMORY[0x1E12BE7F0](*(v9 + 160), 1, __src, 1, *(v9 + 160), 1, v10);
    MEMORY[0x1E12BE780](*(v9 + 112), 1, *(v9 + 32), 1, *(v9 + 160), 1, *(v9 + 160), 1, v10);
    __D = 1.0 - *(v9 + 100);
    vDSP_vmma(*(v9 + 32), 1, (v9 + 100), 0, *(v9 + 160), 1, &__D, 0, *(v9 + 32), 1, v10);
    this = memcpy(a3, *(v9 + 32), 4 * v10);
    ++*(v9 + 20);
  }

  return this;
}

float32_t NoiseSuppression::Noise::HendriksSPP::Init(float32x2_t *this)
{
  __asm { FMOV            V1.2S, #-1.0 }

  v7 = vdiv_f32(_D1, vmul_n_f32(this[11], this[2].f32[0]));
  v20 = v7.f32[0];
  v21 = expf(v7.f32[1]);
  v8.f32[0] = expf(v20);
  v8.f32[1] = v21;
  this[12] = v8;
  std::vector<float>::resize(&this[14], this[1].u32[1]);
  v9 = this[1].u32[1];
  v22 = 0;
  std::vector<float>::assign(&this[14], v9, &v22, v10);
  std::vector<float>::resize(&this[17], this[1].u32[1]);
  v11 = this[1].u32[1];
  v22 = 0;
  std::vector<float>::assign(&this[17], v11, &v22, v12);
  std::vector<float>::resize(&this[4], this[1].u32[1]);
  v13 = this[1].u32[1];
  v22 = 0;
  std::vector<float>::assign(&this[4], v13, &v22, v14);
  std::vector<float>::resize(&this[20], this[1].u32[1]);
  v15 = this[1].u32[1];
  v22 = 0;
  std::vector<float>::assign(&this[20], v15, &v22, v16);
  std::vector<BOOL>::resize(&this[25], this[1].u32[1], 0);
  v17 = this[1].u32[1];
  LOBYTE(v22) = 0;
  std::vector<BOOL>::assign(&this[25], v17, &v22);
  result = 1.0 - this[12].f32[0];
  v19 = -this[23].f32[1];
  this[24].f32[0] = result;
  this[24].f32[1] = v19;
  this[3].i8[0] = 1;
  return result;
}

void NoiseSuppression::Noise::HendriksSPP::~HendriksSPP(NoiseSuppression::Noise::HendriksSPP *this)
{
  NoiseSuppression::Noise::HendriksSPP::~HendriksSPP(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5934A48;
  v2 = *(this + 25);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  NoiseSuppression::Noise::NoiseEstimator::~NoiseEstimator(this);
}

BOOL AUHearingLossCompensator::ValidFormat(AUHearingLossCompensator *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  v5 = *&a4->mBytesPerPacket;
  v12 = *&a4->mSampleRate;
  v13 = v5;
  v14 = *&a4->mBitsPerChannel;
  v16 = 0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(&v12, &v16, 0) && v16 == 1)
  {
    return a4->mChannelsPerFrame - 1 < 2;
  }

  v7 = *&a4->mBytesPerPacket;
  v12 = *&a4->mSampleRate;
  v13 = v7;
  v14 = *&a4->mBitsPerChannel;
  v16 = 0;
  v8 = CAStreamBasicDescription::IdentifyCommonPCMFormat(&v12, &v16, 0);
  if (v16 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((v9 & 1) != 0 || a4->mFormatID != 1718773105)
  {
    if (!v9)
    {
      return 0;
    }

    return a4->mChannelsPerFrame - 1 < 2;
  }

  v10 = *&a4->mBytesPerPacket;
  v12 = *&a4->mSampleRate;
  v13 = v10;
  v14 = *&a4->mBitsPerChannel;
  DWORD2(v12) = 1819304813;
  v16 = 0;
  v11 = CAStreamBasicDescription::IdentifyCommonPCMFormat(&v12, &v16, &v15);
  result = 0;
  if (v11)
  {
    if (v16 == 4)
    {
      return a4->mChannelsPerFrame - 1 < 2;
    }
  }

  return result;
}

uint64_t AUHearingLossCompensator::SupportedNumChannels(AUHearingLossCompensator *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUHearingLossCompensator::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

double AUHearingLossCompensator::GetLatency(AUHearingLossCompensator *this)
{
  v1 = *(this + 72);
  if (v1)
  {
    if (*(v1 + 76))
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v1 + 32);
    }

    *(v1 + 44) = v2;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 561) == 1)
  {
    v2 += *(this + 138);
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return v2 / *(Element + 80);
}

uint64_t AUHearingLossCompensator::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    if (this[72])
    {
      v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
      if ((v5 & 1) == 0 || (ausdk::AUElement::SetParameter(v4, 0x17u, *(*this[72] + 92)), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0x18u, *(*this[72] + 96)), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0x19u, *(*this[72] + 100)), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 0x1Au, *(*this[72] + 104)), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v13 & 1) == 0))
      {
        abort();
      }

      ausdk::AUElement::SetParameter(v12, 0x1Bu, *(*this[72] + 108));
    }

    for (i = 0; i != 40; ++i)
    {
      AUHearingLossCompensator::RefreshKernelParamValue(this, i);
    }

    return 0;
  }

  return result;
}

void AUHearingLossCompensator::RefreshKernelParamValue(AUHearingLossCompensator *this, unsigned int a2)
{
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v4, a2);
  v7 = *(this + 72);
  if (v7)
  {

    HearingLossCompensator_Core::SetParameter(v7, a2, Parameter);
  }
}

uint64_t AUHearingLossCompensator::GetParameterInfo(AUHearingLossCompensator *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  result = 4294956418;
  if ((a2 & 0xFFFFFFFB) == 0 && a3 <= 0x27)
  {
    v5 = AUHearingLossCompensator::kUserParameter[a3];
    buffer->unit = AUHearingLossCompensator::kParameterUnit[v5];
    buffer->minValue = HearingLossCompensator_Core::kMinValue[v5];
    buffer->maxValue = HearingLossCompensator_Core::kMaxValue[v5];
    v6 = AUHearingLossCompensator::kParameterFlag[v5];
    v7 = AUHearingLossCompensator::kParameterName[v5];
    buffer->defaultValue = AUHearingLossCompensator::kUserParameterDefault[a3];
    buffer->cfNameString = v7;
    buffer->flags = (v6 | 0x8000000) + 0x40000000;
    CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
    return 0;
  }

  return result;
}

ausdk::AUInputElement *AUHearingLossCompensator::Render(AUHearingLossCompensator *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUHearingLossCompensator::ProcessMultipleBufferLists(AUHearingLossCompensator *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  result = 4294956428;
  if (a4 == 1 && a6 == 1 && (*a5)->mNumberBuffers == (*a7)->mNumberBuffers)
  {
    if (*(this + 135) && *(this + 137) >= *(this + 136))
    {
      v24 = *(this + 139);
      if (v24)
      {
        v25 = 0;
        v26 = 16;
        do
        {
          if (a3)
          {
            v27 = *(&(*a5)->mNumberBuffers + v26);
            v28 = *(&(*a7)->mNumberBuffers + v26);
            if (v27 != v28)
            {
              memmove(v28, v27, 4 * a3);
              v24 = *(this + 139);
            }
          }

          ++v25;
          v26 += 16;
        }

        while (v25 < v24);
      }
    }

    else
    {
      if (*(this + 561) == 1)
      {
        BlockProcessor::Process(*(this + 71), a3, a5, a7);
      }

      else if (*(this + 560))
      {
        v12 = *(this + 139);
        v13 = *(this + 138);
        if (v12)
        {
          v14 = 0;
          v15 = 0;
          v16 = 2 * v13;
          v17 = 8 * v13;
          v18 = 16;
          do
          {
            if (v16)
            {
              memmove(*(*(this + 73) + v14), *(&(*a5)->mNumberBuffers + v18), v17);
              v12 = *(this + 139);
            }

            ++v15;
            v14 += 24;
            v18 += 16;
          }

          while (v15 < v12);
          v13 = *(this + 138);
        }

        HearingLossCompensator_Core::Process(*(this + 72), this + 73, this + 76, v13);
        v19 = *(this + 139);
        if (v19)
        {
          v20 = 0;
          v21 = 0;
          v22 = (2 * *(this + 138));
          v23 = 16;
          do
          {
            if (v22)
            {
              memmove(*(&(*a7)->mNumberBuffers + v23), *(*(this + 76) + v20), 4 * v22);
              v19 = *(this + 139);
            }

            ++v21;
            v23 += 16;
            v20 += 24;
          }

          while (v21 < v19);
        }
      }

      else if (a3)
      {
        v29 = 0;
        v30 = *(this + 139);
        LODWORD(v31) = *(this + 138);
        v32 = a3;
        do
        {
          v46 = v32;
          if (v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 16;
            do
            {
              if (v31)
              {
                memmove(*(*(this + 73) + v33), (*(&(*a5)->mNumberBuffers + v35) + 4 * v29), 4 * v31);
                v30 = *(this + 139);
              }

              ++v34;
              v33 += 24;
              v35 += 16;
            }

            while (v34 < v30);
            LODWORD(v31) = *(this + 138);
          }

          HearingLossCompensator_Core::Process(*(this + 72), this + 73, this + 76, v31);
          v30 = *(this + 139);
          v31 = *(this + 138);
          if (v30)
          {
            v36 = 0;
            v37 = 0;
            v38 = 16;
            do
            {
              if (v31)
              {
                memmove((*(&(*a7)->mNumberBuffers + v38) + 4 * v29), *(*(this + 76) + v36), 4 * v31);
                v30 = *(this + 139);
              }

              ++v37;
              v38 += 16;
              v36 += 24;
            }

            while (v37 < v30);
            LODWORD(v31) = *(this + 138);
            v32 = v46;
          }

          else
          {
            v30 = 0;
          }

          v29 += v31;
          v32 -= v31;
        }

        while (v32);
      }

      v39 = *(this + 137);
      v40 = *(this + 136);
      if (v39 <= v40)
      {
        v41 = v39 + 1;
        v42 = v41 / (v40 + 1);
        if (!*(this + 135))
        {
          v42 = 1.0 - v42;
        }

        v48 = v42;
        v47 = 1.0 - v42;
        if (*(this + 139))
        {
          v43 = 0;
          v44 = 16;
          do
          {
            MEMORY[0x1E12BE930](*(&(*a5)->mNumberBuffers + v44), 1, &v48, *(&(*a7)->mNumberBuffers + v44), 1, &v47, *(&(*a7)->mNumberBuffers + v44), 1, a3);
            ++v43;
            v44 += 16;
          }

          while (v43 < *(this + 139));
          v41 = *(this + 137) + 1;
        }

        *(this + 137) = v41;
      }
    }

    result = 0;
    *(this + 562) = 1;
  }

  return result;
}

uint64_t AUHearingLossCompensator::SetParameter(AUHearingLossCompensator *this, unsigned int a2, int a3, float a4)
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
  AUHearingLossCompensator::RefreshKernelParamValue(this, a2);
  return 0;
}

uint64_t AUHearingLossCompensator::SetProperty(AUHearingLossCompensator *this, int a2, int a3, unsigned int a4, _BYTE *__src, unsigned int a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    switch(a2)
    {
      case 64009:
        goto LABEL_15;
      case 3700:
        if (a6 >= 4)
        {
          result = 0;
          *(this + 376) = *__src;
          return result;
        }

        break;
      case 21:
        if (a6 == 4)
        {
          if (*(this + 562) == 1 && *(this + 135) != *__src)
          {
            *(this + 137) = 0;
            if (AUHearingLossCompensatorLogScope(void)::once != -1)
            {
              dispatch_once(&AUHearingLossCompensatorLogScope(void)::once, &__block_literal_global_7780);
            }

            if (AUHearingLossCompensatorLogScope(void)::scope)
            {
              v8 = *AUHearingLossCompensatorLogScope(void)::scope;
              if (!*AUHearingLossCompensatorLogScope(void)::scope)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v8 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(this + 137);
              v16 = 136315650;
              v17 = "AUHearingLossCompensator.cpp";
              v18 = 1024;
              v19 = 424;
              v20 = 1024;
              v21 = v13;
              _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cross-fade Triggered: mBypassCounter: %u\n", &v16, 0x18u);
            }
          }

LABEL_28:
          *(this + 135) = *__src;
          if (AUHearingLossCompensatorLogScope(void)::once != -1)
          {
            dispatch_once(&AUHearingLossCompensatorLogScope(void)::once, &__block_literal_global_7780);
          }

          if (AUHearingLossCompensatorLogScope(void)::scope)
          {
            v14 = *AUHearingLossCompensatorLogScope(void)::scope;
            if (!*AUHearingLossCompensatorLogScope(void)::scope)
            {
LABEL_36:
              AUHearingLossCompensator::RefreshKernelParamValue(this, 0x19u);
              return 0;
            }
          }

          else
          {
            v14 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(this + 135);
            v16 = 136315650;
            v17 = "AUHearingLossCompensator.cpp";
            v18 = 1024;
            v19 = 427;
            v20 = 1024;
            v21 = v15;
            _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mBypass: %u\n", &v16, 0x18u);
          }

          goto LABEL_36;
        }

        break;
      default:
        return 4294956417;
    }

    return 4294956445;
  }

  if (a2 != 64009)
  {
    return 4294956417;
  }

LABEL_15:
  v9 = *(this + 72);
  if (!v9)
  {
    return 0;
  }

  if (*(v9 + 36) != a6 >> 2)
  {
    __assert_rtn("SetNoiseEstimate", "HearingLossCompensator_Core.cpp", 331, "numBins == mNumBins");
  }

  if (*(v9 + 24))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      memcpy(*(*(v9 + 472) + v10), __src, 4 * *(v9 + 36));
      ++v11;
      v10 += 24;
    }

    while (v11 < *(v9 + 24));
  }

  result = 0;
  *(v9 + 78) = 0;
  return result;
}

uint64_t AUHearingLossCompensator::GetProperty(AUHearingLossCompensator *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 64003)
  {
    if (a2 <= 64006)
    {
      if (a2 == 64004)
      {
        if (*(this + 17) == 1)
        {
          v8 = *(this + 72);
          v9 = *(v8 + 544);
          goto LABEL_37;
        }
      }

      else if (a2 == 64005)
      {
        if (*(this + 17) == 1)
        {
          v8 = *(this + 72);
          v9 = *(v8 + 568);
          goto LABEL_37;
        }
      }

      else if (*(this + 17) == 1)
      {
        v8 = *(this + 72);
        v9 = *(v8 + 592);
LABEL_37:
        v14 = *v9;
        v15 = *(v8 + 40);
        goto LABEL_38;
      }

      return 4294956429;
    }

    switch(a2)
    {
      case 64007:
        if (*(this + 17) == 1)
        {
          v8 = *(this + 72);
          v9 = *(v8 + 616);
          goto LABEL_37;
        }

        break;
      case 64008:
        if (*(this + 17) == 1)
        {
          v10 = *(this + 72);
          v11 = *(v10 + 424);
          goto LABEL_32;
        }

        break;
      case 64009:
        if (*(this + 17) == 1)
        {
          v10 = *(this + 72);
          v11 = *(v10 + 472);
LABEL_32:
          v14 = *v11;
          v15 = *(v10 + 36);
LABEL_38:
          memcpy(a5, v14, 4 * v15);
          return 0;
        }

        break;
      default:
        return result;
    }

    return 4294956429;
  }

  if (a2 > 64000)
  {
    if (a2 == 64001)
    {
      if (*(this + 17) == 1)
      {
        v10 = *(this + 72);
        v11 = *(v10 + 496);
        goto LABEL_32;
      }
    }

    else if (a2 == 64002)
    {
      if (*(this + 17) == 1)
      {
        v13 = *(this + 72);
        bzero(a5, 0x800uLL);
        memcpy(a5, **(v13 + 520), 4 * *(v13 + 32));
        result = 0;
        *(v13 + 48) = 1;
        return result;
      }
    }

    else if (*(this + 17) == 1)
    {
      FrequencyDomainCompressor::GetGainTargets(**(*(this + 72) + 720), a5);
      return 0;
    }

    return 4294956429;
  }

  if (a2 == 21)
  {
    result = 0;
    v12 = *(this + 135);
  }

  else
  {
    if (a2 != 3700)
    {
      return result;
    }

    result = 0;
    v12 = *(this + 376);
  }

  *a5 = v12;
  return result;
}

uint64_t AUHearingLossCompensator::GetPropertyInfo(AUHearingLossCompensator *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (!a3)
  {
    if (a2 <= 64003)
    {
      if (a2 <= 64000)
      {
        v8 = 4;
        v7 = 1;
        if (a2 != 21 && a2 != 3700)
        {
          return result;
        }

LABEL_16:
        result = 0;
        *a6 = v7;
        *a5 = v8;
        return result;
      }

      if (a2 != 64001 && a2 != 64002)
      {
        v7 = 0;
        v8 = 1260;
        goto LABEL_16;
      }
    }

    else
    {
      if (a2 < 64008)
      {
        v7 = 0;
        v8 = 180;
        goto LABEL_16;
      }

      if (a2 != 64008)
      {
        if (a2 != 64009)
        {
          return result;
        }

        v8 = 2048;
        v7 = 1;
        goto LABEL_16;
      }
    }

    v7 = 0;
    v8 = 2048;
    goto LABEL_16;
  }

  return result;
}

uint64_t AUHearingLossCompensator::Reset(AUHearingLossCompensator *this)
{
  v1 = *(this + 71);
  if (v1)
  {
    BlockProcessor::Reset(v1);
  }

  return 0;
}

uint64_t AUHearingLossCompensator::Initialize(AUHearingLossCompensator *this)
{
  v44 = *MEMORY[0x1E69E9840];
  if (AUHearingLossCompensatorLogScope(void)::once != -1)
  {
    dispatch_once(&AUHearingLossCompensatorLogScope(void)::once, &__block_literal_global_7780);
  }

  if (AUHearingLossCompensatorLogScope(void)::scope)
  {
    v2 = *AUHearingLossCompensatorLogScope(void)::scope;
    if (!*AUHearingLossCompensatorLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUHearingLossCompensator.cpp";
    v42 = 1024;
    v43 = 128;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUHearingLossCompensator::Initialize()\n", buf, 0x12u);
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(Element + 88);
  v6 = v5 == 1718773105;
  *(this + 560) = v5 == 1718773105;
  v7 = *(Element + 108);
  *(this + 139) = v7;
  if ((v5 == 1819304813 || v5 == 1718773105) && v7 == *(v4 + 108))
  {
    v8 = *(Element + 80);
    if (v8 == *(v4 + 80))
    {
      *(this + 66) = v8;
      v10 = *(this + 84);
      v39 = this;
      v38 = v10;
      if (*(this + 376))
      {
        if (v5 == 1718773105)
        {
          *(this + 561) = 0;
          *(this + 138) = v10;
          v11 = v10;
          goto LABEL_61;
        }

        v12 = vcvtmd_u64_f64(v8 * 0.003);
        v13 = vcvtpd_u64_f64(v8 * 0.01);
        v8 = v8 * 0.005;
        v14 = vcvtpd_u64_f64(v8);
        if (v12 <= v13)
        {
          v11 = 0;
          v15 = 2 * v12;
          v16 = v12;
          v17 = v13;
          v18 = -2 * v12;
          do
          {
            if (v10 % v16)
            {
              v19 = 1;
            }

            else
            {
              v19 = v18 == 0;
            }

            if (!v19)
            {
              if ((v15 & (v15 - 1)) == 0 || v18 == -3 * (v15 / 3) && v15 >= 3 && (LODWORD(v8) = v15 / 3, v8 = COERCE_DOUBLE(vcnt_s8(*&v8)), LOWORD(v8) = vaddlv_u8(*&v8), LODWORD(v8) <= 1) && (v8 = log2((v15 / 3)), v10 = v38, v8 >= 4.0) || ((LODWORD(v8) = v15 / 5, v8 = COERCE_DOUBLE(vcnt_s8(*&v8)), LOWORD(v8) = vaddlv_u8(*&v8), v18 == -5 * (v15 / 5)) ? (v21 = v15 >= 5) : (v21 = 0), v21 ? (v22 = LODWORD(v8) > 1) : (v22 = 1), !v22 && (v8 = log2((v15 / 5)), v10 = v38, v8 >= 4.0) || v18 == -15 * (v15 / 0xF) && v15 >= 0xF && (LODWORD(v8) = v15 / 0xF, v8 = COERCE_DOUBLE(vcnt_s8(*&v8)), LOWORD(v8) = vaddlv_u8(*&v8), LODWORD(v8) <= 1) && (v8 = log2((v15 / 0xF)), v10 = v38, v8 >= 4.0)))
              {
                v20 = v16 - v14;
                if ((v16 - v14) < 0)
                {
                  v20 = v14 - v16;
                }

                if (v20 < v17)
                {
                  v17 = v20;
                  v11 = v16;
                }
              }
            }

            ++v16;
            v15 += 2;
            v18 -= 2;
          }

          while (v16 <= v13);
          this = v39;
          if (v11)
          {
            *(v39 + 138) = v11;
            *(v39 + 561) = 0;
LABEL_61:
            memset(v40, 0, sizeof(v40));
            buf[0] = 0;
            std::vector<float>::assign(v40, v11 << v6, buf, *&v8);
            std::vector<std::vector<float>>::assign(this + 73, *(this + 139), v40);
            std::vector<std::vector<float>>::assign(this + 76, *(this + 139), v40);
            v24 = *(this + 138);
            buf[0] = 0;
            std::vector<float>::assign(this + 79, v24, buf, v25);
            LODWORD(v26) = *(this + 138);
            v27 = *(this + 134) / (v26 * 1000.0 / *(this + 66));
            if (v27 < 10.0)
            {
              v27 = 10.0;
            }

            v28 = vcvtpd_u64_f64(v27);
            *(this + 136) = v28;
            *(this + 137) = v28 + 1;
            *(this + 562) = 0;
            operator new();
          }
        }

        *(this + 561) = 1;
      }

      else
      {
        *(this + 561) = 1;
        if (v5 == 1718773105)
        {
          return 4294956428;
        }

        v12 = vcvtmd_u64_f64(v8 * 0.003);
        v13 = vcvtpd_u64_f64(v8 * 0.01);
        v8 = v8 * 0.005;
        v14 = vcvtpd_u64_f64(v8);
      }

      if (v12 <= v13)
      {
        v23 = 0;
        v29 = -v14;
        v30 = 2 * v12;
        v31 = v13;
        v32 = -2 * v12;
        do
        {
          if (v32)
          {
            if ((v30 & (v30 - 1)) == 0 || ((LODWORD(v8) = v30 / 3, v8 = COERCE_DOUBLE(vcnt_s8(*&v8)), LOWORD(v8) = vaddlv_u8(*&v8), v32 == -3 * (v30 / 3)) ? (v34 = v30 >= 3) : (v34 = 0), v34 ? (v35 = LODWORD(v8) > 1) : (v35 = 1), !v35 && (v8 = log2((v30 / 3)), v8 >= 4.0) || ((LODWORD(v8) = v30 / 5, v8 = COERCE_DOUBLE(vcnt_s8(*&v8)), LOWORD(v8) = vaddlv_u8(*&v8), v32 == -5 * (v30 / 5)) ? (v36 = v30 >= 5) : (v36 = 0), v36 ? (v37 = LODWORD(v8) > 1) : (v37 = 1), !v37 && (v8 = log2((v30 / 5)), v8 >= 4.0) || v32 == -15 * (v30 / 0xF) && v30 >= 0xF && (LODWORD(v8) = v30 / 0xF, v8 = COERCE_DOUBLE(vcnt_s8(*&v8)), LOWORD(v8) = vaddlv_u8(*&v8), LODWORD(v8) <= 1) && (v8 = log2((v30 / 0xF)), v8 >= 4.0))))
            {
              v33 = v29 + v12;
              if ((v29 + v12) < 0)
              {
                v33 = -v33;
              }

              if (v33 < v31)
              {
                v31 = v33;
                v23 = v12;
              }
            }
          }

          ++v12;
          v30 += 2;
          v32 -= 2;
        }

        while (v12 <= v13);
      }

      else
      {
        v23 = 0;
      }

      *(v39 + 138) = v23;
      operator new();
    }
  }

  return 4294956428;
}

void sub_1DDDACFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  MEMORY[0x1E12BD160](v41, 0x10A0C40A3058978);
  if (__p)
  {
    operator delete(__p);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  a39 = (v40 + 792);
  std::vector<std::unique_ptr<HlcSuppressor>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = (v40 + 768);
  std::vector<std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = (v40 + 744);
  std::vector<std::unique_ptr<MicSenseUtils::DynamicFIR<float>>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = (v40 + 720);
  std::vector<std::unique_ptr<FrequencyDomainCompressor>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = (v40 + 696);
  std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = (v40 + 672);
  std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&a39);
  std::unique_ptr<MicSenseUtils::GainsToFIR>::reset[abi:ne200100]((v40 + 664), 0);
  for (i = 656; i != 640; i -= 8)
  {
    std::unique_ptr<PrescriptiveAmplification>::reset[abi:ne200100]((v40 + i), 0);
  }

  v44 = *(v40 + 640);
  *(v40 + 640) = 0;
  if (v44)
  {
    MEMORY[0x1E12BD160](v44, 0x1090C4010D369B9);
  }

  a39 = a13;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a14;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a15;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a16;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a17;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a18;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a19;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a20;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a11;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = a12;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  v45 = *(v40 + 352);
  if (v45)
  {
    *(v40 + 360) = v45;
    operator delete(v45);
  }

  v46 = *(v40 + 328);
  if (v46)
  {
    *(v40 + 336) = v46;
    operator delete(v46);
  }

  v47 = *(v40 + 304);
  if (v47)
  {
    *(v40 + 312) = v47;
    operator delete(v47);
  }

  v48 = *(v40 + 280);
  if (v48)
  {
    *(v40 + 288) = v48;
    operator delete(v48);
  }

  v49 = *(v40 + 256);
  if (v49)
  {
    *(v40 + 264) = v49;
    operator delete(v49);
  }

  v50 = 0;
  while (1)
  {
    v51 = *(v40 + v50 + 232);
    if (v51)
    {
      *(v40 + v50 + 240) = v51;
      operator delete(v51);
    }

    v50 -= 24;
    if (v50 == -48)
    {
      v52 = *(v40 + 184);
      if (v52)
      {
        *(v40 + 192) = v52;
        operator delete(v52);
      }

      v53 = *(v40 + 160);
      if (v53)
      {
        *(v40 + 168) = v53;
        operator delete(v53);
      }

      v54 = *(v40 + 136);
      if (v54)
      {
        *(v40 + 144) = v54;
        operator delete(v54);
      }

      v55 = *(v40 + 112);
      if (v55)
      {
        *(v40 + 120) = v55;
        operator delete(v55);
      }

      v56 = *(v40 + 88);
      if (v56)
      {
        *(v40 + 96) = v56;
        operator delete(v56);
      }

      v57 = *v40;
      if (*v40)
      {
        *(v40 + 8) = v57;
        operator delete(v57);
      }

      MEMORY[0x1E12BD160](v40, 0x10A0C401C64A62ELL);
      if (a26)
      {
        operator delete(a26);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t *std::unique_ptr<HearingLossCompensator_Core>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 640);
    if (v3)
    {
      if (*v3)
      {
        MEMORY[0x1E12BD160](*v3, 0x1000C4052888210);
        v3 = *(v2 + 640);
      }

      v4 = v3[1];
      if (v4)
      {
        MEMORY[0x1E12BD160](v4, 0x1000C4052888210);
        v3 = *(v2 + 640);
      }

      v5 = v3[2];
      if (v5)
      {
        MEMORY[0x1E12BD160](v5, 0x1000C4052888210);
        v3 = *(v2 + 640);
      }

      v6 = v3[3];
      if (v6)
      {
        MEMORY[0x1E12BD160](v6, 0x1000C4052888210);
        v3 = *(v2 + 640);
      }

      v7 = v3[6];
      if (v7)
      {
        MEMORY[0x1E12BD160](v7, 0x1000C4052888210);
        v3 = *(v2 + 640);
      }

      v8 = v3[7];
      if (v8)
      {
        MEMORY[0x1E12BD160](v8, 0x1000C4052888210);
        v3 = *(v2 + 640);
      }

      v9 = v3[4];
      if (v9)
      {
        MEMORY[0x1E12BD160](v9, 0x1000C4052888210);
      }
    }

    v25 = (v2 + 792);
    std::vector<std::unique_ptr<HlcSuppressor>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 768);
    std::vector<std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 744);
    std::vector<std::unique_ptr<MicSenseUtils::DynamicFIR<float>>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 720);
    std::vector<std::unique_ptr<FrequencyDomainCompressor>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 696);
    std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 672);
    std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v25);
    std::unique_ptr<MicSenseUtils::GainsToFIR>::reset[abi:ne200100]((v2 + 664), 0);
    for (i = 656; i != 640; i -= 8)
    {
      std::unique_ptr<PrescriptiveAmplification>::reset[abi:ne200100]((v2 + i), 0);
    }

    v11 = *(v2 + 640);
    *(v2 + 640) = 0;
    if (v11)
    {
      MEMORY[0x1E12BD160](v11, 0x1090C4010D369B9);
    }

    v25 = (v2 + 616);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 592);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 568);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 544);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 520);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 496);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 472);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 448);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 424);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 400);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = (v2 + 376);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v12 = *(v2 + 352);
    if (v12)
    {
      *(v2 + 360) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 328);
    if (v13)
    {
      *(v2 + 336) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 304);
    if (v14)
    {
      *(v2 + 312) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 280);
    if (v15)
    {
      *(v2 + 288) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 256);
    if (v16)
    {
      *(v2 + 264) = v16;
      operator delete(v16);
    }

    v17 = 0;
    while (1)
    {
      v18 = *(v2 + v17 + 232);
      if (v18)
      {
        *(v2 + v17 + 240) = v18;
        operator delete(v18);
      }

      v17 -= 24;
      if (v17 == -48)
      {
        v19 = *(v2 + 184);
        if (v19)
        {
          *(v2 + 192) = v19;
          operator delete(v19);
        }

        v20 = *(v2 + 160);
        if (v20)
        {
          *(v2 + 168) = v20;
          operator delete(v20);
        }

        v21 = *(v2 + 136);
        if (v21)
        {
          *(v2 + 144) = v21;
          operator delete(v21);
        }

        v22 = *(v2 + 112);
        if (v22)
        {
          *(v2 + 120) = v22;
          operator delete(v22);
        }

        v23 = *(v2 + 88);
        if (v23)
        {
          *(v2 + 96) = v23;
          operator delete(v23);
        }

        v24 = *v2;
        if (*v2)
        {
          *(v2 + 8) = v24;
          operator delete(v24);
        }

        JUMPOUT(0x1E12BD160);
      }
    }
  }

  return result;
}

uint64_t AUHearingLossCompensator::BlockProcessClassFunc(AUHearingLossCompensator *this, void *a2, void *a3, const AudioBufferList **a4, AudioBufferList **a5)
{
  v6 = a2;
  v8 = *(this + 139);
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 16;
    v13 = a2;
    do
    {
      if (v6)
      {
        memmove(*(*(this + 73) + v10), *(*a3 + v12), 4 * v6);
        v8 = *(this + 139);
      }

      ++v11;
      v10 += 24;
      v12 += 16;
    }

    while (v11 < v8);
  }

  else
  {
    v13 = a2;
  }

  HearingLossCompensator_Core::Process(*(this + 72), this + 73, this + 76, v13);
  v14 = *(this + 139);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 4 * v13;
    v18 = 16;
    do
    {
      if (v6)
      {
        memmove(*(&(*a4)->mNumberBuffers + v18), *(*(this + 76) + v15), v17);
        v14 = *(this + 139);
      }

      ++v16;
      v18 += 16;
      v15 += 24;
    }

    while (v16 < v14);
  }

  return 0;
}

void AUHearingLossCompensator::~AUHearingLossCompensator(AUHearingLossCompensator *this)
{
  AUHearingLossCompensator::~AUHearingLossCompensator(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59222D8;
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

  v4 = (this + 608);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 584);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::unique_ptr<HearingLossCompensator_Core>::reset[abi:ne200100](this + 72, 0);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 71, 0);
  ausdk::AUBase::~AUBase(this);
}

void *std::vector<float const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDDADB60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

SmartFIR *std::unique_ptr<SmartFIR>::reset[abi:ne200100](SmartFIR **a1, SmartFIR *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    SmartFIR::~SmartFIR(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void SmartFIR::~SmartFIR(SmartFIR *this)
{
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 49) = v2;
    operator delete(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    *(this + 46) = v3;
    operator delete(v3);
  }

  v4 = *(this + 42);
  if (v4)
  {
    *(this + 43) = v4;
    operator delete(v4);
  }

  v5 = *(this + 39);
  if (v5)
  {
    *(this + 40) = v5;
    operator delete(v5);
  }

  v6 = *(this + 36);
  if (v6)
  {
    *(this + 37) = v6;
    operator delete(v6);
  }

  v7 = *(this + 33);
  if (v7)
  {
    *(this + 34) = v7;
    operator delete(v7);
  }

  v8 = *(this + 30);
  if (v8)
  {
    *(this + 31) = v8;
    operator delete(v8);
  }

  CDSPSplitComplex::~CDSPSplitComplex((this + 200));
  v11 = (this + 176);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (this + 152);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (this + 128);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (this + 104);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = (this + 32);
  std::vector<FreqDomainConvolver>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void std::vector<FreqDomainConvolver>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<FreqDomainConvolver>>::destroy[abi:ne200100]<FreqDomainConvolver,void,0>(i))
    {
      i -= 21;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<FreqDomainConvolver>>::destroy[abi:ne200100]<FreqDomainConvolver,void,0>(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  CDSPSplitComplex::~CDSPSplitComplex((a1 + 10));
  CDSPSplitComplex::~CDSPSplitComplex((a1 + 6));
  CDSPSplitComplex::~CDSPSplitComplex((a1 + 2));
  v4 = a1[1];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::vector<float const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void CircArrayKernel::CircArrayKernel(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  *a1 = a4;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 116) = 0;
  *(a1 + 118) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F591D5E0;
  *(a1 + 120) = 0x100000001;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 136, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 160, *a6, a6[1], (a6[1] - *a6) >> 2);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a1 + 184, *a7, a7[1], 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3));
  operator new();
}