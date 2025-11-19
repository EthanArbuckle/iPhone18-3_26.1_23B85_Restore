uint64_t ___Z22getAUSoundIsolationLogv_block_invoke_13190()
{
  getAUSoundIsolationLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUSoundIsolation");

  return MEMORY[0x1EEE66BB8]();
}

double AUSoundIsolation_v1::GetLatency(AUSoundIsolation_v1 *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v2 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "AUSoundIsolation_v1.mm";
    v6 = 1024;
    v7 = 449;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i AU latency is equal to the processing graph latency", &v4, 0x12u);
  }

  return AUSoundIsolation_v1::GetProcessingLatency(this);
}

uint64_t AUSoundIsolation_v1::GetParameterValueStrings(AUSoundIsolation_v1 *this, int a2, int a3, const __CFArray **a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 95783)
  {
    v7 = &xmmword_1E866BE00;
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    return 0;
  }

  if (!_os_feature_enabled_impl() || *(this + 560) != 1)
  {
    *&v10 = @"Voice";
    v8 = 1;
    goto LABEL_13;
  }

  v7 = &xmmword_1E866BDF0;
LABEL_11:
  v10 = *v7;
  v8 = 2;
LABEL_13:
  v9 = CFArrayCreate(0, &v10, v8, 0);
  result = 0;
  *a4 = v9;
  return result;
}

uint64_t AUSoundIsolation_v1::RestoreState(OpaqueAudioComponentInstance **this, CFTypeRef cf)
{
  v14 = *MEMORY[0x1E69E9840];
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
  if (v5)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v6 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "AUSoundIsolation_v1.mm";
      v10 = 1024;
      v11 = 890;
      v12 = 1024;
      v13 = v5;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%s:%i error %i while restoring state", &v8, 0x18u);
    }
  }

  this[73] = (this[73] + 1);
  return v5;
}

uint64_t AUSoundIsolation_v1::GetParameterInfo(AUSoundIsolation_v1 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  result = 4294956418;
  if (a3 > 95781)
  {
    if (a3 == 95782)
    {
      buffer->cfNameString = @"Use Tuning Mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Use Tuning Mode", buffer->name, 52, 0x8000100u);
      v12 = kAudioUnitParameterUnit_Boolean;
    }

    else
    {
      if (a3 != 95783)
      {
        return result;
      }

      buffer->cfNameString = @"Tuning Mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Tuning Mode", buffer->name, 52, 0x8000100u);
      v12 = kAudioUnitParameterUnit_Indexed;
    }

    buffer->unit = v12;
    *&buffer->minValue = 0x3F80000000000000;
    v14 = buffer->flags | 0xC1000000;
    buffer->defaultValue = 0.0;
    buffer->flags = v14;
    {
      return 0;
    }

    v13 = 0x2000;
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      buffer->cfNameString = @"Sound to Isolate";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Sound to Isolate", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      __asm { FMOV            V0.2S, #1.0 }

      *&buffer->maxValue = _D0;
      if (!_os_feature_enabled_impl() || *(this + 560) != 1)
      {
        v13 = -1056964608;
        buffer->minValue = 1.0;
        goto LABEL_19;
      }

      buffer->minValue = 0.0;
    }

    else
    {
      buffer->cfNameString = @"Wet/Dry Mix";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wet/Dry Mix", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Percent;
      *&buffer->minValue = 0x42C80000C2C80000;
      buffer->defaultValue = 100.0;
    }

    v13 = -1073741824;
  }

LABEL_19:
  result = 0;
  buffer->flags |= v13;
  return result;
}

uint64_t anonymous namespace::IsInternalBuild()
{
  {
  }
}

BOOL anonymous namespace::IsInternalBuild(void)::$_0::operator()()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFBooleanGetValue(v0) != 0;
  CFRelease(v1);
  return v2;
}

uint64_t AUSoundIsolation_v1::GetParameterList(AUSoundIsolation_v1 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = 0x100000000;
  }

  v8 = 2;
  {
    if (*(this + 744))
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (a3)
    {
      if (*(this + 744))
      {
        *(a3 + 1) = 0x1762700017626;
        v8 = 4;
      }
    }
  }

  result = 0;
  *a4 = v8;
  return result;
}

ausdk::AUInputElement *AUSoundIsolation_v1::Render(AUSoundIsolation_v1 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUSoundIsolation_v1::ProcessMultipleBufferLists(AUSoundIsolation_v1 *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a4 != 1 || a6 != 1)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v24 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AUSoundIsolation_v1.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1185;
      *&buf[18] = 1024;
      *&buf[20] = a4;
      *&buf[24] = 1024;
      *&buf[26] = a6;
      _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "%s:%i a single input ABL and a single output ABL is expected, receiver (%u, %u)!", buf, 0x1Eu);
    }

    return 4294956428;
  }

  v13 = *(this + 73);
  if (*(this + 74) != v13)
  {
    AUSoundIsolation_v1::UpdateLocalParamState(this);
    *(this + 74) = v13;
  }

  v14 = *(this + 136);
  v15 = *(this + 142);
  if (v14 == v15)
  {
    v16 = this + 528;
    if (*(this + 528) == 1)
    {
      v17 = *a5;
      mNumberBuffers = (*a5)->mNumberBuffers;
      if (mNumberBuffers == (*a7)->mNumberBuffers && mNumberBuffers != 0)
      {
        v20 = 0;
        p_mData = &(*a7)->mBuffers[0].mData;
        v22 = (v17 + 4);
        do
        {
          v23 = *(v22 - 1);
          if (v23 == *(p_mData - 1) && *v22 != *p_mData)
          {
            memcpy(*p_mData, *v22, v23);
            mNumberBuffers = *v17;
          }

          ++v20;
          p_mData += 2;
          v22 += 2;
        }

        while (v20 < mNumberBuffers);
      }

      goto LABEL_38;
    }
  }

  else
  {
    if (!*(this + 138))
    {
      BypassWithLatencyGraphOutput = AUSoundIsolation_v1::GetBypassWithLatencyGraphOutput(this);
      v27 = *(BypassWithLatencyGraphOutput + 64);
      if (*(BypassWithLatencyGraphOutput + 72) == v27)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v74, "in");
        v66 = (BypassWithLatencyGraphOutput + 32);
        if (*(BypassWithLatencyGraphOutput + 55) < 0)
        {
          v66 = *v66;
        }

        DSPGraph::strprintf(v82, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v65, v66, (*(BypassWithLatencyGraphOutput + 72) - *(BypassWithLatencyGraphOutput + 64)) >> 5, 0);
        result = DSPGraph::ThrowException();
        goto LABEL_92;
      }

      v28 = (*(*v27 + 40))(v27);
      v29 = expf(-1.0 / ((*(this + 135) * **(v28 + 120)) / a3));
      v30 = *(this + 142);
      v31 = (v30 * (1.0 - v29)) + (v29 * *(this + 136));
      if (vabds_f32(v31, v30) < 0.1)
      {
        v31 = *(this + 142);
      }

      *(this + 136) = v31;
      if (*(this + 76))
      {
        v32 = v31 / 100.0;
        v33 = 1.0 - (v31 / 100.0);
        if (v32 <= 0.0)
        {
          v34 = 1.0;
        }

        else
        {
          v34 = v33;
        }

        v35 = DSPGraph::Graph::box();
        (*(*v35 + 80))(v35, 0, 0, 0, 0, v34);
        (*(*v35 + 80))(v35, 0, 0, 1, 0, v32);
      }
    }

    v16 = this + 528;
  }

  if ((*(this + 529) & 1) != 0 || *(this + 138))
  {
    if (!*(this + 80))
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v54 = getAUSoundIsolationLog(void)::gLog;
      if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956429;
      }

      *buf = 136315394;
      *&buf[4] = "AUSoundIsolation_v1.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1225;
      v55 = "%s:%i bypass graph not initialized";
      goto LABEL_68;
    }

    v36 = *(this + 18);
    *&buf[8] = *(this + 17);
    *&buf[24] = v36;
    v37 = *(this + 20);
    v39 = *(this + 17);
    v38 = *(this + 18);
    *&buf[40] = *(this + 19);
    *&buf[56] = v37;
    *&v74[8] = v39;
    *&v74[24] = v38;
    *buf = a3;
    *&buf[4] = 0;
    *&buf[72] = *a5;
    *v74 = a3;
    *&v74[40] = *&buf[40];
    *&v74[56] = *(this + 20);
    *&v74[72] = *a7;
    v40 = AUSoundIsolation_v1::GetBypassWithLatencyGraphOutput(this);
    v41 = *(v40 + 64);
    if (*(v40 + 72) == v41)
    {
      std::string::basic_string[abi:ne200100]<0>(v82, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v67, "in");
      v62 = (v40 + 32);
      if (*(v40 + 55) < 0)
      {
        v62 = *v62;
      }

      DSPGraph::strprintf(&v73, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v61, v62, (*(v40 + 72) - *(v40 + 64)) >> 5, 0);
      result = DSPGraph::ThrowException();
      goto LABEL_92;
    }

    (*(*v41 + 40))(v41);
    DSPGraph::Graph::preflight();
    if (*v74 != a3)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v56 = getAUSoundIsolationLog(void)::gLog;
      if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956422;
      }

      *v82 = 136315394;
      *&v82[4] = "AUSoundIsolation_v1.mm";
      *&v82[12] = 1024;
      *&v82[14] = 1250;
      v57 = "%s:%i bypass preflight gave invalid number of frames to process!";
      v58 = v82;
LABEL_74:
      _os_log_error_impl(&dword_1DDB85000, v56, OS_LOG_TYPE_ERROR, v57, v58, 0x12u);
      return 4294956422;
    }

    DSPGraph::Graph::processMultiple();
  }

LABEL_38:
  if (*v16)
  {
    if (v14 != v15)
    {
      goto LABEL_44;
    }
  }

  else if (v14 != v15 || (*(this + 529) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (!*(this + 138))
  {
    return 0;
  }

LABEL_44:
  if (!*(this + 75))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v54 = getAUSoundIsolationLog(void)::gLog;
    if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956429;
    }

    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1276;
    v55 = "%s:%i processing graph not initialized";
    goto LABEL_68;
  }

  if (!*(this + 76))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v54 = getAUSoundIsolationLog(void)::gLog;
    if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956429;
    }

    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1281;
    v55 = "%s:%i blending graph not initialized";
LABEL_68:
    _os_log_error_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_ERROR, v55, buf, 0x12u);
    return 4294956429;
  }

  *v74 = a3;
  v42 = *(this + 18);
  *&v74[8] = *(this + 17);
  *&v74[24] = v42;
  v43 = *(this + 20);
  *&v74[40] = *(this + 19);
  *&v74[56] = v43;
  *&v74[72] = *a5;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v45 = *(Element + 96);
  *&v73.mSampleRate = *(Element + 80);
  *&v73.mBytesPerPacket = v45;
  *&v73.mBitsPerChannel = *(Element + 112);
  v46 = ausdk::AUBufferList::PrepareBufferOrError((this + 648), &v73, a3);
  if ((v47 & 1) == 0)
  {
    ausdk::Throw(v46);
  }

  *&v82[72] = 0;
  *v82 = a3;
  v48 = *(this + 18);
  *&v82[8] = *(this + 17);
  *&v82[24] = v48;
  v49 = *(this + 20);
  *&v82[40] = *(this + 19);
  *&v82[56] = v49;
  if (!*(this + 162))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v50 = *(this + 18);
  v68 = *(this + 17);
  v69 = v50;
  v51 = *(this + 20);
  v70 = *(this + 19);
  *&v82[72] = *(this + 82) + 48;
  v67[0] = a3;
  v67[1] = 0;
  v71 = v51;
  v72 = *a7;
  ProcessingGraphOutput = AUSoundIsolation_v1::GetProcessingGraphOutput(this);
  v53 = *(ProcessingGraphOutput + 64);
  if (*(ProcessingGraphOutput + 72) != v53)
  {
    (*(*v53 + 40))(v53);
    DSPGraph::Graph::preflight();
    if (v67[0] == a3)
    {
      DSPGraph::Graph::processMultiple();
      *&buf[32] = *&v74[32];
      *&buf[48] = *&v74[48];
      *buf = *v74;
      *&buf[16] = *&v74[16];
      v78 = *&v82[16];
      v79 = *&v82[32];
      v80 = *&v82[48];
      v81 = *&v82[64];
      *&buf[64] = *&v74[64];
      v77 = *v82;
      DSPGraph::Graph::preflight();
      DSPGraph::Graph::processMultiple();
      v59 = *(this + 138);
      if (v59)
      {
        v25 = 0;
        *(this + 138) = v59 - 1;
        return v25;
      }

      return 0;
    }

    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v56 = getAUSoundIsolationLog(void)::gLog;
    if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956422;
    }

    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1317;
    v57 = "%s:%i processing preflight gave invalid number of frames to process!";
    v58 = buf;
    goto LABEL_74;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v83, "in");
  v64 = (ProcessingGraphOutput + 32);
  if (*(ProcessingGraphOutput + 55) < 0)
  {
    v64 = *v64;
  }

  DSPGraph::strprintf(v75, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v63, v64, (*(ProcessingGraphOutput + 72) - *(ProcessingGraphOutput + 64)) >> 5, 0);
  result = DSPGraph::ThrowException();
LABEL_92:
  __break(1u);
  return result;
}

void sub_1DDE62324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t buf, int a54, __int16 a55, __int16 a56, __int16 a57, __int16 a58, __int16 a59, char a60, char a61)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  switch(a2)
  {
    case 5:
      __cxa_begin_catch(a1);
      v64 = getAUSoundIsolationLog();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {

        __cxa_end_catch();
        JUMPOUT(0x1DDE6204CLL);
      }

    case 4:
      __cxa_begin_catch(a1);
      v65 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315394;
        *(v61 + 108) = "AUSoundIsolation_v1.mm";
        a55 = 1024;
        *(v61 + 118) = 1344;
        _os_log_error_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_ERROR, "%s:%i processing failed, caught CAXException", &buf, 0x12u);
      }

      break;
    case 3:
      v66 = __cxa_begin_catch(a1);
      v65 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
      }

      break;
    default:
      v67 = __cxa_begin_catch(a1);
      v68 = getAUSoundIsolationLog();
      v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
      if (a2 == 2)
      {
        if (v69)
        {
        }
      }

      else if (v69)
      {
        LODWORD(buf) = 136315394;
        *(v61 + 108) = "AUSoundIsolation_v1.mm";
        a55 = 1024;
        *(v61 + 118) = 1353;
        _os_log_error_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_ERROR, "%s:%i processing failed, caught unknown exception", &buf, 0x12u);
      }

      __cxa_end_catch();
LABEL_23:
      JUMPOUT(0x1DDE62068);
  }

  __cxa_end_catch();
  goto LABEL_23;
}

void AUSoundIsolation_v1::UpdateLocalParamState(AUSoundIsolation_v1 *this)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 142) = ausdk::AUElement::GetParameter(v2, 0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (*(this + 143) = ausdk::AUElement::GetParameter(v4, 1u), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (*(this + 576) = ausdk::AUElement::GetParameter(v6, 0x17626u) != 0.0, v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0))
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v8, 0x17627u);
  if (*(this + 134))
  {
    if (*(this + 576))
    {
      v11 = Parameter;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v12 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "AUSoundIsolation_v1.mm";
      v24 = 1024;
      v25 = 1111;
      _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%s:%i Denoise is Disabled - tuning mode reverts to Single Channel", buf, 0x12u);
    }

    v11 = 0;
  }

  if (*(this + 75))
  {
    if (v11 != *(this + 145) || *(this + 143) != *(this + 141))
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v13 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        v14 = *(this + 145);
        v15 = *(this + 141);
        v16 = *(this + 143);
        *buf = 136316418;
        v23 = "AUSoundIsolation_v1.mm";
        v24 = 1024;
        v25 = 1124;
        v26 = 1024;
        v27 = v14;
        v28 = 1024;
        v29 = v11;
        v30 = 1024;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%s:%i processing graphs already created and tuning mode/Sound to Isolate mode changed from %u/%u to %u/%u ", buf, 0x2Au);
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
        }
      }

      v17 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "AUSoundIsolation_v1.mm";
        v24 = 1024;
        v25 = 1125;
        _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_INFO, "%s:%i processing graphs need to be re-created", buf, 0x12u);
      }

      *(this + 145) = v11;
      *(this + 141) = *(this + 143);
      AUSoundIsolation_v1::CreateProcessingGraphs(this);
    }
  }

  else
  {
    *(this + 145) = v11;
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v18 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(this + 145);
      *buf = 136315650;
      v23 = "AUSoundIsolation_v1.mm";
      v24 = 1024;
      v25 = 1120;
      v26 = 1024;
      v27 = v20;
      _os_log_debug_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%s:%i tuning mode set to %u", buf, 0x18u);
    }
  }

  buf[0] = 0;
  LOBYTE(v23) = 0;
  BYTE4(v23) = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = *(this + 142);
  v40 = 1;
  v41 = *(this + 143);
  v42 = 1;
  v43 = *(this + 576) | 0x100;
  v44 = Parameter;
  v45 = 1;
  v46 = v11;
  v47 = 1;
  v19 = *(this + 91);
  v21 = 4;
  AU::SoundIsolation::MetricsReporter::reportAsync(v19, buf, &v21);
}

uint64_t AUSoundIsolation_v1::GetBypassWithLatencyGraphOutput(AUSoundIsolation_v1 *this)
{
  v2 = *(this + 80);
  if (!v2 || !DSPGraph::Graph::out(v2))
  {
    return 0;
  }

  v3 = *(this + 80);

  return DSPGraph::Graph::out(v3);
}

void anonymous namespace::convertExceptionToString(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v6 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  v3.__r_.__value_.__r.__words[0] = (*(*a2 + 16))(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v4);
}

{
  v4[0] = 0;
  v5 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  (*(*a2 + 16))(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v3);
}

uint64_t AUSoundIsolation_v1::CreateProcessingGraphs(AUSoundIsolation_v1 *this)
{
  v63 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(Element + 108) <= 1u)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(Element + 108);
  }

  v43 = v3;
  AUSoundIsolation_v1::GetTuningDictionaryRef(&v46, this, 0);
  if (!v46)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v19 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AUSoundIsolation_v1.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1376;
      _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "%s:%i failed to load nnet plist", buf, 0x12u);
    }

    goto LABEL_89;
  }

  v4 = applesauce::CF::details::at_key<char const(&)[11]>(v46, "SampleRate");
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find item");
  }

  applesauce::CF::convert_to<int,0>(v4);
  if (!v46)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Could not construct");
    goto LABEL_97;
  }

  v5 = applesauce::CF::details::at_key<char const(&)[10]>(v46, "BlockSize");
  if (!v5)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Could not find item");
LABEL_97:
  }

  applesauce::CF::convert_to<int,0>(v5);
  if (!v46)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "Could not construct");
    goto LABEL_100;
  }

  v6 = applesauce::CF::details::at_key<char const(&)[22]>(v46, "NumberOfInputChannels");
  if (!v6)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "Could not find item");
LABEL_100:
  }

  v7 = applesauce::CF::convert_to<int,0>(v6);
  if (!v46)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Could not construct");
    goto LABEL_103;
  }

  v8 = applesauce::CF::details::at_key<char const(&)[23]>(v46, "NumberOfOutputChannels");
  if (!v8)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Could not find item");
LABEL_103:
  }

  v9 = applesauce::CF::convert_to<int,0>(v8);
  v10 = v46;
  v42 = [v10 mutableCopy];

  theDict = v42;
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v11 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1392;
    _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%i Loading batch size from plist.", buf, 0x12u);
  }

  if (!v46)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "Could not construct");
  }

  if (!applesauce::CF::details::has_key<char const(&)[17]>(v46, "DynamicBatchSize"))
  {
    goto LABEL_31;
  }

  if (!v46)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
  }

  v12 = applesauce::CF::details::at_key<char const(&)[17]>(v46, "DynamicBatchSize");
  if (!v12 || (v13 = applesauce::CF::convert_as<BOOL,0>(v12), v13 < 0x100u) || (v13 & 1) == 0)
  {
LABEL_31:
    if (!v46)
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not construct");
    }

    if (!applesauce::CF::details::has_key<char const(&)[10]>(v46, "BatchSize"))
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v20 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1402;
        _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_INFO, "%s:%i Failed to retrieve batch size, default to 1.", buf, 0x12u);
      }

      v16 = 1;
      goto LABEL_50;
    }

    if (v46)
    {
      v17 = applesauce::CF::details::at_key<char const(&)[10]>(v46, "BatchSize");
      if (v17)
      {
        v16 = applesauce::CF::convert_to<unsigned int,0>(v17);
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
        }

        v18 = getAUSoundIsolationLog(void)::gLog;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AUSoundIsolation_v1.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1400;
          *&buf[18] = 1024;
          *&buf[20] = v16;
          _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_INFO, "%s:%i Successfully retrieved batch size (%u).", buf, 0x18u);
        }

        goto LABEL_50;
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Could not find item");
    }

    else
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Could not construct");
    }
  }

  *buf = v43;
  v14 = CFNumberCreate(0, kCFNumberIntType, buf);
  *v58 = v14;
  if (!v14)
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, "Could not construct");
  }

  CFDictionarySetValue(theDict, @"BatchSize", v14);
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v15 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1409;
    *&buf[18] = 1024;
    *&buf[20] = v43;
    _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i Set up Dynamic Batch Size (batch size = %u)", buf, 0x18u);
  }

  if (*v58)
  {
    CFRelease(*v58);
  }

  v16 = v43;
LABEL_50:
  if (v7 == v9)
  {
    AUSoundIsolation_v1::GetTuningDictionaryRef(&cf, this, 3);
    if (*(this + 133) != 1 || cf == 0)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v22 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1433;
        v23 = "%s:%i drev preset is empty and/or dereverb disabled, derverberation disabled";
        goto LABEL_88;
      }
    }

    else
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v22 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1430;
        v23 = "%s:%i drev preset exists and dereverb enabled, derverberation enabled";
LABEL_88:
        _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, v23, buf, 0x12u);
      }
    }

    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v25 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUSoundIsolation_v1.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1436;
      _os_log_debug_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "%s:%i create processing graph", buf, 0x12u);
    }

    *&buf[8] = 0;
    *buf = &buf[8];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    *&buf[16] = 0;
    v52 = 0;
    std::string::basic_string[abi:ne200100]<0>(v53, "mixer");
    std::string::basic_string[abi:ne200100]<0>(&v54, "MWF");
    std::string::basic_string[abi:ne200100]<0>(&__s, "DREV");
    std::string::basic_string[abi:ne200100]<0>(&v56, "inputDelayForMWF");
    std::string::basic_string[abi:ne200100]<0>(&v57, "bypassDelay");
    if (v7 == 1)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_33600);
      }

      v26 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 136315394;
        *&v58[4] = "AUSoundIsolation_v1_GraphAdapter.cpp";
        v59[0] = 1024;
        *&v59[1] = 340;
        v27 = "%s:%i single channel input & output model will be used";
        v28 = v26;
        v29 = 18;
        goto LABEL_82;
      }
    }

    else
    {
      if (v16 != 1 || v7 != v43)
      {
        __assert_rtn("CreateProcessingGraph", "AUSoundIsolation_v1_GraphAdapter.cpp", 338, "(numInternalIOChannels == 1 || (numInternalIOChannels == numIOChannels && internalBatchSize == 1)) && internal format must be one channel or the same number of IO channels (when internal batch size = 1)");
      }

      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_33600);
      }

      v30 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 136315906;
        *&v58[4] = "AUSoundIsolation_v1_GraphAdapter.cpp";
        v59[0] = 1024;
        *&v59[1] = 343;
        v59[3] = 1024;
        v60 = v43;
        v61 = 1024;
        v62 = v43;
        v27 = "%s:%i multi channel input (%u) & output (%u) model will be used";
        v28 = v30;
        v29 = 30;
LABEL_82:
        _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEFAULT, v27, v58, v29);
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_33600);
        }
      }
    }

    v31 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *v58 = 136315394;
      *&v58[4] = "AUSoundIsolation_v1_GraphAdapter.cpp";
      v59[0] = 1024;
      *&v59[1] = 350;
      _os_log_debug_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEBUG, "%s:%i create graph", v58, 0x12u);
    }

    operator new();
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v24 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1413;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    LOWORD(v48) = 1024;
    *(&v48 + 2) = v9;
    _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "%s:%i Number of input channels in the plist (%u) is different from the number of output channels in the plist (%u)", buf, 0x1Eu);
  }

LABEL_89:
  if (v46)
  {
    CFRelease(v46);
  }

  return 4294956421;
}

void sub_1DDE68658(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&STACK[0x310]);
  v71 = a2;
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a68);
  switch(a2)
  {
    case 5:
      __cxa_begin_catch(a1);
      v72 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
      }

LABEL_6:

      __cxa_end_catch();
      goto LABEL_24;
    case 4:
      __cxa_begin_catch(a1);
      v73 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *(v68 - 256) = 136315394;
        STACK[0x364] = "AUSoundIsolation_v1.mm";
        *(v68 - 244) = 1024;
        LODWORD(STACK[0x36E]) = 1586;
        _os_log_error_impl(&dword_1DDB85000, v73, OS_LOG_TYPE_ERROR, "%s:%i processing graph setup failed, caught CAXException", (v68 - 256), 0x12u);
      }

      break;
    case 3:
      v74 = __cxa_begin_catch(a1);
      v72 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
      }

      goto LABEL_6;
    default:
      v75 = __cxa_begin_catch(a1);
      v73 = getAUSoundIsolationLog();
      v76 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
      if (v71 == 2)
      {
        if (v76)
        {
        }
      }

      else if (v76)
      {
        *(v68 - 256) = 136315394;
        STACK[0x364] = "AUSoundIsolation_v1.mm";
        *(v68 - 244) = 1024;
        LODWORD(STACK[0x36E]) = 1595;
        _os_log_error_impl(&dword_1DDB85000, v73, OS_LOG_TYPE_ERROR, "%s:%i processing graph setup failed, caught unknown exception", (v68 - 256), 0x12u);
      }

      break;
  }

  __cxa_end_catch();
LABEL_24:
  JUMPOUT(0x1DDE67240);
}

void AUSoundIsolation_v1::GetTuningDictionaryRef(void *a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 != 4)
  {
    if (a3 != 3 || *(a2 + 532))
    {
      goto LABEL_4;
    }

LABEL_20:
    *a1 = 0;
    return;
  }

  if (!*(a2 + 536))
  {
    goto LABEL_20;
  }

LABEL_4:
  v4 = *(a2 + 680);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = a2 + 680;
  v6 = *(a2 + 680);
  do
  {
    if (*(v6 + 32) >= a3)
    {
      v5 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a3));
  }

  while (v6);
  if (v5 == a2 + 680 || *(v5 + 32) > a3 || !*(v5 + 40))
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = *(v4 + 8);
      if (v7 <= a3)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    if (v7 >= a3)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
LABEL_17:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }
  }

  v8 = v4[5];
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::convert_to<std::string,0>(&buf, v8);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    if (buf.__r_.__value_.__l.__size_)
    {
      std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
LABEL_27:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_30;
    }
  }

  else if (*(&buf.__r_.__value_.__s + 23))
  {
    __p = buf;
    goto LABEL_27;
  }

  *a1 = 0;
LABEL_30:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_1DDE6A288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
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

  operator delete(v33);
  _Unwind_Resume(a1);
}

void anonymous namespace::getSimulatorRoot(_anonymous_namespace_ *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = getenv("SIMULATOR_ROOT");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(this, v3);
  if (*(this + 23) >= 0)
  {
    v4 = *(this + 23);
  }

  else
  {
    v4 = *(this + 1);
  }

  if (v4)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v5 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      v11 = 136315650;
      v12 = "AUSoundIsolation_v1.mm";
      v13 = 1024;
      v14 = 228;
      v15 = 2080;
      v16 = v6;
      v7 = "%s:%i SIMULATOR_ROOT: %s";
      v8 = v5;
      v9 = 28;
      goto LABEL_20;
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v10 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "AUSoundIsolation_v1.mm";
      v13 = 1024;
      v14 = 226;
      v7 = "%s:%i SIMULATOR_ROOT is empty";
      v8 = v10;
      v9 = 18;
LABEL_20:
      _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, v7, &v11, v9);
    }
  }
}

uint64_t *std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t applesauce::CF::details::find_at_key<int,char const(&)[14]>(const __CFDictionary *a1)
{
  v1 = applesauce::CF::details::at_key<char const(&)[14]>(a1, "LookaheadSize");
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<int,0>(v1);
}

void AUSoundIsolationGraphAdapter_v1::~AUSoundIsolationGraphAdapter_v1(AUSoundIsolationGraphAdapter_v1 *this)
{
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v2 = (this + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*(this + 1));
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AUSoundIsolation_v1::BoxTuningType const,applesauce::CF::StringRef>,0>(v2[5]);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<AUSoundIsolation_v1::BoxTuningType const,applesauce::CF::StringRef>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

const void *applesauce::CF::details::at_key<char const(&)[22]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1DDE6A878(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDE6A828);
}

void sub_1DDE6AAB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSoundIsolation_v1::SetParameter(AUSoundIsolation_v1 *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956430;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 73);
  return result;
}

uint64_t AUSoundIsolation_v1::GetParameter(AUSoundIsolation_v1 *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  Parameter = ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
  if (!a3)
  {
    v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v11 & 1) == 0)
    {
      abort();
    }

    *a5 = ausdk::AUElement::GetParameter(v10, a2);
  }

  return Parameter;
}

uint64_t AUSoundIsolation_v1::SetProperty(AUSoundIsolation_v1 *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, unsigned int a6)
{
  v82 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 30000)
  {
    if (a2 <= 3699)
    {
      switch(a2)
      {
        case 21:
          if (a6 != 4)
          {
            return 4294956445;
          }

          v55 = *a5 != 0;
          if (*(this + 528) != v55)
          {
            *(this + 528) = v55;
            *(this + 138) = *(this + 137);
            v59 = *(this + 142);
            if (*(this + 529) == 1)
            {
              *(this + 139) = v59;
              v60 = 0.0;
            }

            else
            {
              v60 = *(this + 139);
              if (v59 != 0.0 && v59 != v60)
              {
                *(this + 139) = v59;
                v60 = v59;
              }
            }

            *(this + 142) = v60;
            v15 = getAUSoundIsolationLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v62 = *(this + 528);
              *buf = 136315650;
              *&buf[4] = "AUSoundIsolation_v1.mm";
              *&buf[12] = 1024;
              *&buf[14] = 666;
              *&buf[18] = 1024;
              *&buf[20] = v62;
              _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i BypassEffect state changed to: %d", buf, 0x18u);
            }

            goto LABEL_134;
          }

          v19 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v1.mm";
            *&buf[12] = 1024;
            *&buf[14] = 668;
            *&buf[18] = 1024;
            *&buf[20] = v55;
            _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_INFO, "%s:%i BypassEffect state unchanged: %d", buf, 0x18u);
          }

          break;
        case 56:
          v39 = *(this + 1);
          __p[0] = 0;
          __p[1] = __p;
          v78 = 0x2020000000;
          v40 = getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr;
          v79 = getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr;
          if (!getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL45getCAUI_createCustomViewForAudioUnitSymbolLocv_block_invoke_13365;
            *&buf[24] = &unk_1E866BE18;
            v81 = __p;
            ___ZL45getCAUI_createCustomViewForAudioUnitSymbolLocv_block_invoke_13365(buf);
            v40 = *(__p[1] + 3);
          }

          _Block_object_dispose(__p, 8);
          if (v40)
          {
            return v40(v39, a5);
          }

          dlerror();
          abort_report_np();
          __break(1u);
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
          v14 = getAUSoundIsolationLog(void)::gLog;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(v74);
          }

          AUSoundIsolation_v1::TearDownInternalReporterID(v39);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v75);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v76, 2);
          return 0;
        case 2121:
          v17 = *a5;
          v18 = *a5 != 0;
          if (*(this + 529) != v18)
          {
            *(this + 529) = v18;
            *(this + 138) = *(this + 137);
            v57 = *(this + 142);
            if (v17 == 0.0)
            {
              v58 = *(this + 139);
              if (v57 != 0.0 && v57 != v58)
              {
                *(this + 139) = v57;
                v58 = v57;
              }
            }

            else
            {
              *(this + 139) = v57;
              v58 = 0.0;
            }

            *(this + 142) = v58;
            v15 = getAUSoundIsolationLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v61 = *(this + 529);
              *buf = 136315650;
              *&buf[4] = "AUSoundIsolation_v1.mm";
              *&buf[12] = 1024;
              *&buf[14] = 690;
              *&buf[18] = 1024;
              *&buf[20] = v61;
              _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i BypassEffectWithLatency state changed to: %d", buf, 0x18u);
            }

            goto LABEL_134;
          }

          v19 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v1.mm";
            *&buf[12] = 1024;
            *&buf[14] = 692;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_INFO, "%s:%i BypassEffectWithLatency state unchanged: %d", buf, 0x18u);
          }

          break;
        default:
          return result;
      }
    }

    else
    {
      if (a2 <= 6999)
      {
        if (a2 == 3700)
        {
          if (a6 == 4)
          {
            if ((*(this + 17) & 1) == 0)
            {
              result = 0;
              *(this + 376) = *a5 != 0;
              return result;
            }

            return 4294956447;
          }

          return 4294956445;
        }

        if (a2 == 6000)
        {
          __p[0] = 0;
          __p[1] = 0;
          v78 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, a5, &a5[a6 >> 3], a6 >> 3);
          LOBYTE(v75) = 2;
          *buf = __p[0];
          v74[0] = __p[1];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>();
        }

        return result;
      }

      if (a2 != 7000)
      {
        if (a2 == 30000)
        {
          if (a6 == 8)
          {
            if ((*(this + 17) & 1) == 0)
            {
              if (a5)
              {
                applesauce::CF::StringRef::from_get(__p, *a5);
                LODWORD(v74[0]) = 0;
                *buf = v74;
                v20 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 0);
                v21 = v20[5];
                v20[5] = __p[0];
                __p[0] = v21;
                applesauce::CF::StringRef::~StringRef(__p);
                v11 = getAUSoundIsolationLog();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
                {
                  v75 = 0;
                  v74[0] = &v75;
                  v22 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 0);
                  applesauce::CF::convert_to<std::string,0>(__p, v22[5]);
                  v23 = v78 >= 0 ? __p : __p[0];
                  *buf = 136315650;
                  *&buf[4] = "AUSoundIsolation_v1.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 733;
                  *&buf[18] = 2080;
                  *&buf[20] = v23;
                  _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPlistPath is overriden to %s", buf, 0x1Cu);
                  if (SHIBYTE(v78) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                goto LABEL_92;
              }

              __p[0] = 0;
              LODWORD(v74[0]) = 0;
              *buf = v74;
              v63 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 0);
              v64 = v63[5];
              v63[5] = 0;
              __p[0] = v64;
              applesauce::CF::StringRef::~StringRef(__p);
              v65 = getAUSoundIsolationLog();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "AUSoundIsolation_v1.mm";
                *&buf[12] = 1024;
                *&buf[14] = 736;
                _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPlistPathOverride is set to null and thus removed", buf, 0x12u);
              }

              goto LABEL_149;
            }

            return 4294956447;
          }

          return 4294956445;
        }

        return result;
      }

      v36 = *a5;
      v37 = *(this + 91);
      std::mutex::lock((v37 + 64));
      *(v37 + 152) = v36;
      std::mutex::unlock((v37 + 64));
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v38 = getAUSoundIsolationLog(void)::gLog;
      result = os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 136315650;
      *&buf[4] = "AUSoundIsolation_v1.mm";
      *&buf[12] = 1024;
      *&buf[14] = 712;
      *&buf[18] = 2048;
      *&buf[20] = v36;
      _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_INFO, "%s:%i set CoreAudio reporter time period - %f", buf, 0x1Cu);
    }

    return 0;
  }

  if (a2 > 69999)
  {
    if (a2 > 89999)
    {
      if (a2 == 90000)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        *(this + 135) = *a5;
        v15 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v56 = *(this + 135);
          *buf = 136315650;
          *&buf[4] = "AUSoundIsolation_v1.mm";
          *&buf[12] = 1024;
          *&buf[14] = 857;
          *&buf[18] = 2048;
          *&buf[20] = v56;
          _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i Time Constant (seconds) set to: %f", buf, 0x1Cu);
        }
      }

      else
      {
        if (a2 != 90001)
        {
          return result;
        }

        if (*(this + 17))
        {
          return 4294956447;
        }

        v34 = *a5;
        *(this + 138) = *a5;
        *(this + 137) = v34;
        v15 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v35 = *(this + 137);
          *buf = 136315650;
          *&buf[4] = "AUSoundIsolation_v1.mm";
          *&buf[12] = 1024;
          *&buf[14] = 869;
          *&buf[18] = 1024;
          *&buf[20] = v35;
          _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i Transition Wait Time (frames) set to: %u", buf, 0x18u);
        }
      }
    }

    else if (a2 == 70000)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      *(this + 133) = *a5;
      v15 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v45 = *(this + 133);
        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 846;
        *&buf[18] = 1024;
        *&buf[20] = v45;
        _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i DereverbEnable set to: %u", buf, 0x18u);
      }
    }

    else
    {
      if (a2 != 80000)
      {
        return result;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      *(this + 134) = *a5;
      v15 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(this + 134);
        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 836;
        *&buf[18] = 1024;
        *&buf[20] = v16;
        _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i DenoiseEnable set to: %u", buf, 0x18u);
      }
    }

LABEL_134:

    return 0;
  }

  if (a2 > 49999)
  {
    if (a2 == 50000)
    {
      if (a6 != 8)
      {
        return 4294956445;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (!a5)
      {
        __p[0] = 0;
        LODWORD(v74[0]) = 3;
        *buf = v74;
        v72 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 3);
        v73 = v72[5];
        v72[5] = 0;
        __p[0] = v73;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v1.mm";
          *&buf[12] = 1024;
          *&buf[14] = 801;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i DereverbPresetPathOverride is set to null and thus removed", buf, 0x12u);
        }

        goto LABEL_149;
      }

      applesauce::CF::StringRef::from_get(__p, *a5);
      LODWORD(v74[0]) = 3;
      *buf = v74;
      v46 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 3);
      v47 = v46[5];
      v46[5] = __p[0];
      __p[0] = v47;
      applesauce::CF::StringRef::~StringRef(__p);
      LODWORD(v74[0]) = 3;
      *buf = v74;
      v48 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 3);
      applesauce::CF::convert_to<std::string,0>(__p, v48[5]);
      if (v78 >= 0)
      {
        v49 = HIBYTE(v78);
      }

      else
      {
        v49 = __p[1];
      }

      v28 = getAUSoundIsolationLog();
      v50 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (v49)
      {
        if (!v50)
        {
          goto LABEL_157;
        }

        v51 = __p;
        if (v78 < 0)
        {
          v51 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 797;
        *&buf[18] = 2080;
        *&buf[20] = v51;
        v52 = "%s:%i DereverbPresetPath is overriden to %s";
        v53 = v28;
        v54 = 28;
      }

      else
      {
        if (!v50)
        {
          goto LABEL_157;
        }

        *buf = 136315394;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 795;
        v52 = "%s:%i DereverbPresetPath is overriden with an empty string.";
        v53 = v28;
        v54 = 18;
      }

      _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_INFO, v52, buf, v54);
    }

    else
    {
      if (a2 != 60000)
      {
        return result;
      }

      if (a6 != 8)
      {
        return 4294956445;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (!a5)
      {
        __p[0] = 0;
        LODWORD(v74[0]) = 4;
        *buf = v74;
        v68 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 4);
        v69 = v68[5];
        v68[5] = 0;
        __p[0] = v69;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v1.mm";
          *&buf[12] = 1024;
          *&buf[14] = 826;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i DenoisePresetPathOverride is set to null and thus removed", buf, 0x12u);
        }

        goto LABEL_149;
      }

      applesauce::CF::StringRef::from_get(__p, *a5);
      LODWORD(v74[0]) = 4;
      *buf = v74;
      v24 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 4);
      v25 = v24[5];
      v24[5] = __p[0];
      __p[0] = v25;
      applesauce::CF::StringRef::~StringRef(__p);
      LODWORD(v74[0]) = 4;
      *buf = v74;
      v26 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 4);
      applesauce::CF::convert_to<std::string,0>(__p, v26[5]);
      if (v78 >= 0)
      {
        v27 = HIBYTE(v78);
      }

      else
      {
        v27 = __p[1];
      }

      v28 = getAUSoundIsolationLog();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (v27)
      {
        if (!v29)
        {
          goto LABEL_157;
        }

        v30 = __p;
        if (v78 < 0)
        {
          v30 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 822;
        *&buf[18] = 2080;
        *&buf[20] = v30;
        v31 = "%s:%i DenoisePresetPath is overridden to %s";
        v32 = v28;
        v33 = 28;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_157;
        }

        *buf = 136315394;
        *&buf[4] = "AUSoundIsolation_v1.mm";
        *&buf[12] = 1024;
        *&buf[14] = 820;
        v31 = "%s:%i DenoisePresetPath is overridden with an empty string.";
        v32 = v28;
        v33 = 18;
      }

      _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_INFO, v31, buf, v33);
    }

LABEL_157:

    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if (a2 == 30001)
  {
    if (a6 == 8)
    {
      if ((*(this + 17) & 1) == 0)
      {
        if (a5)
        {
          applesauce::CF::StringRef::from_get(__p, *a5);
          LODWORD(v74[0]) = 1;
          *buf = v74;
          v41 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 1);
          v42 = v41[5];
          v41[5] = __p[0];
          __p[0] = v42;
          applesauce::CF::StringRef::~StringRef(__p);
          v11 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v75 = 1;
            v74[0] = &v75;
            v43 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 1);
            applesauce::CF::convert_to<std::string,0>(__p, v43[5]);
            v44 = v78 >= 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v1.mm";
            *&buf[12] = 1024;
            *&buf[14] = 753;
            *&buf[18] = 2080;
            *&buf[20] = v44;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPresetPath is overriden to %s", buf, 0x1Cu);
            if (SHIBYTE(v78) < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_92;
        }

        __p[0] = 0;
        LODWORD(v74[0]) = 1;
        *buf = v74;
        v70 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 1);
        v71 = v70[5];
        v70[5] = 0;
        __p[0] = v71;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v1.mm";
          *&buf[12] = 1024;
          *&buf[14] = 756;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPresetPathOverride is set to null and thus removed", buf, 0x12u);
        }

LABEL_149:

        return 0;
      }

      return 4294956447;
    }

    return 4294956445;
  }

  if (a2 == 40000)
  {
    if (a6 == 8)
    {
      if ((*(this + 17) & 1) == 0)
      {
        if (a5)
        {
          applesauce::CF::StringRef::from_get(__p, *a5);
          LODWORD(v74[0]) = 2;
          *buf = v74;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 2);
          v10 = v9[5];
          v9[5] = __p[0];
          __p[0] = v10;
          applesauce::CF::StringRef::~StringRef(__p);
          v11 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v75 = 2;
            v74[0] = &v75;
            v12 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 2);
            applesauce::CF::convert_to<std::string,0>(__p, v12[5]);
            if (v78 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v1.mm";
            *&buf[12] = 1024;
            *&buf[14] = 773;
            *&buf[18] = 2080;
            *&buf[20] = v13;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%i NeuralNetModelNetPathBase is overriden to %s", buf, 0x1Cu);
            if (SHIBYTE(v78) < 0)
            {
              operator delete(__p[0]);
            }
          }

LABEL_92:

          return 0;
        }

        __p[0] = 0;
        LODWORD(v74[0]) = 2;
        *buf = v74;
        v66 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 2);
        v67 = v66[5];
        v66[5] = 0;
        __p[0] = v67;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v1.mm";
          *&buf[12] = 1024;
          *&buf[14] = 776;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i NeuralNetModelNetPathBaseOverride is set to null and thus removed", buf, 0x12u);
        }

        goto LABEL_149;
      }

      return 4294956447;
    }

    return 4294956445;
  }

  return result;
}

void AUSoundIsolation_v1::TearDownInternalReporterID(AUSoundIsolation_v1 *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 704) == 1)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v2 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "AUSoundIsolation_v1.mm";
      v8 = 1024;
      v9 = 1924;
      _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i will teardown the internal CAReporterID", &v6, 0x12u);
    }

    v3 = *(this + 87);
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_135);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v3);
      v4 = *(this + 87);
      if (AudioStatisticsLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_135);
      }
    }

    else
    {
      v4 = *(this + 87);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v4);
    }

    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v5 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "AUSoundIsolation_v1.mm";
      v8 = 1024;
      v9 = 1927;
      _os_log_debug_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%s:%i internal CAReporterID destroyed", &v6, 0x12u);
    }
  }
}

void *___ZL45getCAUI_createCustomViewForAudioUnitSymbolLocv_block_invoke_13365(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_13384;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E866BE38;
    v7 = 0;
    CoreAudioKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreAudioKitLibraryCore(char **)::frameworkLibrary;
    if (CoreAudioKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreAudioKitLibraryCore(char **)::frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CAUI_createCustomViewForAudioUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_13384()
{
  result = _sl_dlopen();
  CoreAudioKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_13390()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

uint64_t AUSoundIsolation_v1::GetProperty(AUSoundIsolation_v1 *this, int a2, int a3, unsigned int a4, uint64_t *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 30000)
  {
    if (a2 <= 59999)
    {
      switch(a2)
      {
        case 30001:
          v14 = 1;
          v15[0] = &v14;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 1);
          v10 = v9[5];
          if (v10)
          {
            goto LABEL_35;
          }

          break;
        case 40000:
          v14 = 2;
          v15[0] = &v14;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 2);
          v10 = v9[5];
          if (v10)
          {
LABEL_35:
            CFRetain(v9[5]);
          }

          break;
        case 50000:
          v14 = 3;
          v15[0] = &v14;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 3);
          v10 = v9[5];
          if (v10)
          {
            goto LABEL_35;
          }

          break;
        default:
          return result;
      }

LABEL_36:
      result = 0;
      *a5 = v10;
      return result;
    }

    switch(a2)
    {
      case 60000:
        v14 = 4;
        v15[0] = &v14;
        v9 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 4);
        v10 = v9[5];
        if (v10)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 70000:
        result = 0;
        v8 = *(this + 133);
        goto LABEL_39;
      case 80000:
        result = 0;
        v8 = *(this + 134);
        goto LABEL_39;
    }
  }

  else
  {
    if (a2 <= 5999)
    {
      switch(a2)
      {
        case 21:
          result = 0;
          v8 = *(this + 528);
          goto LABEL_39;
        case 2121:
          result = 0;
          v8 = *(this + 529);
          goto LABEL_39;
        case 3700:
          result = 0;
          v8 = *(this + 376);
LABEL_39:
          *a5 = v8;
          return result;
      }

      return result;
    }

    switch(a2)
    {
      case 6000:
        AU::SoundIsolation::MetricsReporter::getCAReporterIDs(v15, *(this + 91));
        v11 = v15[0];
        memcpy(a5, v15[0], v15[1] - v15[0]);
        if (v11)
        {
          operator delete(v11);
        }

        return 0;
      case 7000:
        v12 = *(this + 91);
        std::mutex::lock((v12 + 64));
        v13 = *(v12 + 152);
        std::mutex::unlock((v12 + 64));
        result = 0;
        *a5 = v13;
        return result;
      case 30000:
        v14 = 0;
        v15[0] = &v14;
        v9 = std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v1::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v1::BoxTuningType&&>,std::tuple<>>(this + 672, 0);
        v10 = v9[5];
        if (v10)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
    }
  }

  return result;
}

uint64_t AUSoundIsolation_v1::GetPropertyInfo(AUSoundIsolation_v1 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v18 = v6;
  v19 = v7;
  result = 4294956417;
  if (a2 > 30000)
  {
    if (a2 <= 69999)
    {
      if (a2 <= 49999)
      {
        if (a2 != 30001)
        {
          v12 = 40000;
          goto LABEL_25;
        }

LABEL_26:
        v15 = 8;
LABEL_31:
        *a5 = v15;
LABEL_32:
        result = 0;
        *a6 = 1;
        return result;
      }

      if (a2 == 50000)
      {
        goto LABEL_26;
      }

      v12 = 60000;
LABEL_25:
      if (a2 != v12)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (a2 > 89999)
    {
      if (a2 != 90000)
      {
        v14 = 24465;
LABEL_29:
        if (a2 != (v14 | 0x10000))
        {
          return result;
        }
      }
    }

    else if (a2 != 70000)
    {
      v14 = 14464;
      goto LABEL_29;
    }

LABEL_30:
    v15 = 4;
    goto LABEL_31;
  }

  if (a2 > 3699)
  {
    if (a2 > 6999)
    {
      if (a2 != 7000)
      {
        v12 = 30000;
        goto LABEL_25;
      }
    }

    else if (a2 != 3700)
    {
      if (a2 != 6000)
      {
        return result;
      }

      AU::SoundIsolation::MetricsReporter::getCAReporterIDs(&__p, *(this + 91));
      v13 = __p;
      *a5 = (v17 - __p) & 0xFFFFFFF8;
      if (v13)
      {
        operator delete(v13);
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  switch(a2)
  {
    case 21:
      goto LABEL_30;
    case 56:
      goto LABEL_26;
    case 2121:
      goto LABEL_30;
  }

  return result;
}

uint64_t AUSoundIsolation_v1::Reset(AUSoundIsolation_v1 *this)
{
  v2 = *(this + 75);
  if (v2 && *(v2 + 762) == 1)
  {
    DSPGraph::Graph::reset(v2);
  }

  v3 = *(this + 76);
  if (v3 && *(v3 + 762) == 1)
  {
    DSPGraph::Graph::reset(v3);
  }

  v4 = *(this + 80);
  if (v4 && *(v4 + 762) == 1)
  {
    DSPGraph::Graph::reset(v4);
  }

  if (*(this + 167))
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v6 = ausdk::AUBufferList::PrepareBufferOrError((this + 648), Element + 2, *(this + 84));
    if ((v7 & 1) == 0)
    {
      ausdk::Throw(v6);
    }

    if (!*(this + 162))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v8 = *(this + 82);
    if (*(v8 + 48))
    {
      v9 = 0;
      v10 = (v8 + 64);
      do
      {
        bzero(*v10, *(v10 - 1));
        ++v9;
        v10 += 2;
      }

      while (v9 < *(v8 + 48));
    }
  }

  return 0;
}

double AUSoundIsolation_v1::Cleanup(AUSoundIsolation_v1 *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v2 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "AUSoundIsolation_v1.mm";
    v9 = 1024;
    v10 = 295;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i cleanup", &v7, 0x12u);
  }

  v4 = *(this + 75);
  *(this + 75) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 76);
  *(this + 76) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 80);
  *(this + 80) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(this + 167))
  {
    if (*(this + 82))
    {
      (*(ausdk::BufferAllocator::instance(void)::global + 3))();
      *(this + 82) = 0;
    }

    result = 0.0;
    *(this + 83) = 0;
    *(this + 162) = 0;
  }

  return result;
}

uint64_t AUSoundIsolation_v1::Initialize(AUSoundIsolation_v1 *this)
{
  v55 = *MEMORY[0x1E69E9840];
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v31.mSampleRate) = 0;
  v32 = 0;
  LOBYTE(v33) = 0;
  v36 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v3 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AUSoundIsolation_v1.mm";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 312;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%s:%i will try to initialize", &buf, 0x12u);
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }
  }

  v4 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AUSoundIsolation_v1.mm";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 315;
    _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%s:%i check input and output formats", &buf, 0x12u);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(Element + 96);
  *&buf.mSampleRate = *(Element + 80);
  *&buf.mBytesPerPacket = v6;
  *&buf.mBitsPerChannel = *(Element + 112);
  v7 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v7)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v9 = *(v7 + 96);
  v27 = *(v7 + 80);
  *v28 = v9;
  *&v28[16] = *(v7 + 112);
  v31 = buf;
  v32 = 1;
  v34 = v9;
  v33 = v27;
  v35 = *&v28[16];
  v36 = 1;
  if (*&v27 == buf.mSampleRate && DWORD2(v27) == buf.mFormatID && *v28 == *&buf.mBytesPerPacket && *&v28[12] == *&buf.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(&v27, &buf, v8))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v10 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v1.mm";
      v50 = 1024;
      v51 = 334;
      _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%s:%i initialize base", v48, 0x12u);
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }
    }

    v11 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v1.mm";
      v50 = 1024;
      v51 = 348;
      _os_log_debug_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%s:%i update local parameter state before creating the processing graph", v48, 0x12u);
    }

    AUSoundIsolation_v1::UpdateLocalParamState(this);
    *(this + 74) = *(this + 73);
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v12 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v1.mm";
      v50 = 1024;
      v51 = 352;
      _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%s:%i initialize processing graphs", v48, 0x12u);
    }

    ProcessingGraphs = AUSoundIsolation_v1::CreateProcessingGraphs(this);
    if (ProcessingGraphs)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v14 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v1.mm";
        v50 = 1024;
        v51 = 355;
        _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%s:%i InitializeProcessingGraphs failed", v48, 0x12u);
      }

      v29 = ProcessingGraphs;
      v30 = 1;
      v15 = *(this + 91);
      *v48 = 2;
      AU::SoundIsolation::MetricsReporter::reportAsync(v15, &v29, v48);
    }

    else
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v19 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v1.mm";
        v50 = 1024;
        v51 = 366;
        _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%s:%i allocate temporary ABL", v48, 0x12u);
      }

      ausdk::AUBufferList::Allocate((this + 648), &buf, *(this + 84));
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v20 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v1.mm";
        v50 = 1024;
        v51 = 371;
        _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "%s:%i update local parameter state after initializing the processing graph", v48, 0x12u);
      }

      AUSoundIsolation_v1::UpdateLocalParamState(this);
      *(this + 74) = *(this + 73);
      *(this + 139) = *(this + 142);
      if (*(this + 137) && *(this + 135) > 0.0 && (*(this + 529) & 1) == 0 && (*(this + 528) & 1) == 0)
      {
        v21 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 136315394;
          v49 = "AUSoundIsolation_v1.mm";
          v50 = 1024;
          v51 = 377;
          _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEFAULT, "%s:%i Not bypassed at initialization - activate smooth transition", v48, 0x12u);
        }

        *(this + 138) = *(this + 137);
        *(this + 136) = 0;
      }

      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v22 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 136315394;
        v49 = "AUSoundIsolation_v1.mm";
        v50 = 1024;
        v51 = 382;
        _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "%s:%i initialized", v48, 0x12u);
      }

      v23 = ((std::chrono::steady_clock::now().__d_.__rep_ - v2.__d_.__rep_) * 0x431BDE82D7B634DBLL) >> 64;
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
      }

      v24 = (v23 >> 18) + (v23 >> 63);
      v25 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        *v48 = 136315650;
        v49 = "AUSoundIsolation_v1.mm";
        v50 = 1024;
        v51 = 387;
        v52 = 2048;
        v53 = v24;
        _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_INFO, "%s:%i initialization duration %lld ms", v48, 0x1Cu);
      }

      v29 = 0;
      v30 = 1;
      v38 = 1;
      v37 = v24;
      v26 = *(this + 91);
      *v48 = 3;
      AU::SoundIsolation::MetricsReporter::reportAsync(v26, &v29, v48);
      return 0;
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v16 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *v48 = 136315394;
      v49 = "AUSoundIsolation_v1.mm";
      v50 = 1024;
      v51 = 323;
      _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "%s:%i input and output formats must match", v48, 0x12u);
    }

    v29 = -10868;
    v30 = 1;
    v17 = *(this + 91);
    *v48 = 0;
    AU::SoundIsolation::MetricsReporter::reportAsync(v17, &v29, v48);
    return 4294956428;
  }

  return ProcessingGraphs;
}

void AUSoundIsolation_v1::~AUSoundIsolation_v1(AUSoundIsolation_v1 *this)
{
  AUSoundIsolation_v1::~AUSoundIsolation_v1(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5927A60;
  AUSoundIsolation_v1::TearDownInternalReporterID(this);
  v2 = *(this + 92);
  v3 = 0uLL;
  *(this + 728) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = 0uLL;
  }

  v4 = *(this + 89);
  v5 = *(this + 90);
  *(this + 712) = v3;
  v6 = dispatch_get_global_queue(21, 0);
  v7 = v6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN19AUSoundIsolation_v117TearDownMessengerEv_block_invoke;
  v17[3] = &__block_descriptor_48_ea8_32c56_ZTSNSt3__110shared_ptrIN5caulk10concurrent9messengerEEE_e5_v8__0l;
  v17[4] = v4;
  v18 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v17);

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = *(this + 92);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 90);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::destroy(*(this + 85));
  v13 = *(this + 82);
  if (v13)
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global, v13, v10, v11, v12);
    *(this + 82) = 0;
  }

  *(this + 83) = 0;
  *(this + 162) = 0;
  v14 = *(this + 80);
  *(this + 80) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  v15 = *(this + 76);
  *(this + 76) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 75);
  *(this + 75) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  ausdk::AUBase::~AUBase(this);
}

void std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::destroy(*a1);
    std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<AUSoundIsolation_v1::BoxTuningType const,applesauce::CF::StringRef>,0>(a1[5]);

    operator delete(a1);
  }
}

void sub_1DDE6DA50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v9 = getAUSoundIsolationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "AUSoundIsolation_v1.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 1883;
      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "%s:%i failed to flush logs due to exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDE6DA24);
  }

  _Unwind_Resume(a1);
}

id DSPGraph::getLog(DSPGraph *this)
{
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_13455);
  }

  v2 = DSPGraph::getLog(void)::gLog;

  return v2;
}

uint64_t std::pair<AUSoundIsolation_v1::BoxTuningType const,applesauce::CF::StringRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__function::__func<AUSoundIsolation_v1::SetUpMetricsReporter(void)::$_0,std::allocator<AUSoundIsolation_v1::SetUpMetricsReporter(void)::$_0>,void ()(long long,applesauce::CF::DictionaryRef)>::operator()(uint64_t a1, uint64_t *a2, const void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_135);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    AudioStatisticsLibraryLoader(void)::libSym(v3, v4, 1, 0);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DDE6DBEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

AudioComponent ___ZN12_GLOBAL__N_119registerInternalAUsEv_block_invoke_13447()
{
  v3 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v0 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v2.componentType = 136315394;
    *&v2.componentSubType = "AUSoundIsolation_v1.mm";
    LOWORD(v2.componentFlags) = 1024;
    *(&v2.componentFlags + 2) = 136;
    _os_log_debug_impl(&dword_1DDB85000, v0, OS_LOG_TYPE_DEBUG, "%s:%i will try to register internal AUs", &v2, 0x12u);
  }

  *&v2.componentType = xmmword_1DE09C130;
  v2.componentFlagsMask = 0;
  AudioComponentRegister(&v2, &stru_1F593E800, 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Factory);
  *&v2.componentType = xmmword_1DE09C140;
  v2.componentFlagsMask = 0;
  AudioComponentRegister(&v2, &stru_1F593E800, 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDenoise>::Factory);
  *&v2.componentType = xmmword_1DE09C150;
  v2.componentFlagsMask = 0;
  return AudioComponentRegister(&v2, &stru_1F593E800, 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDereverb>::Factory);
}

uint64_t ___ZN8DSPGraph6getLogEv_block_invoke()
{
  DSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "DSPGraph");

  return MEMORY[0x1EEE66BB8]();
}

float MetadataDNNVAD_v1::GetSpeechProbabilityAsFloatValue(MetadataDNNVAD_v1 *this)
{
  v1 = *(this + 1);
  v2 = 0.0;
  if (v1)
  {
    return (*(*v1 + 48))(v1, 1936748646);
  }

  return v2;
}

void sub_1DDE6DEAC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDE6DE9CLL);
}

float MetadataDNNVAD_v1::GetSpeechProbabilityAsBooleanValue(MetadataDNNVAD_v1 *this)
{
  v1 = *(this + 1);
  v2 = 0.0;
  if (v1)
  {
    return (*(*v1 + 48))(v1, 1936748642);
  }

  return v2;
}

void sub_1DDE6DF14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDE6DF04);
}

uint64_t MetadataDNNVAD_v1::Process(MetadataDNNVAD_v1 *this, const float *a2)
{
  v2 = 1;
  if (*(this + 1))
  {
    DSPGraph::Graph::preflight();
    DSPGraph::Graph::processMultiple();
    return 0;
  }

  return v2;
}

void sub_1DDE6DFB8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDE6DFA4);
}

uint64_t MetadataDNNVAD_v1::Uninitialize(MetadataDNNVAD_v1 *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    DSPGraph::Graph::uninitialize(v2);
    DSPGraph::Graph::unconfigure(*(this + 1));
    v3 = *(this + 2);
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return 0;
}

void sub_1DDE6E074(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      p_p = &__p;
      caulk::string_from_4cc(&__p, v18[2]);
      if (a15 < 0)
      {
        p_p = __p;
      }

      v26 = (*(*v18 + 16))(v18);
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "Uninitialize";
      WORD6(buf) = 1024;
      *(&buf + 14) = 182;
      WORD1(a17) = 2080;
      *(&a17 + 4) = p_p;
      WORD6(a17) = 2080;
      *(&a17 + 14) = v26;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MetadataDNNVAD:%s:%d: couldn't uninitialize due to DSPG exception %s: %s", &buf, 0x26u);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_9:
    __cxa_end_catch();
    JUMPOUT(0x1DDE6E028);
  }

  v19 = __cxa_begin_catch(a1);
  v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (a2 == 2)
  {
    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = (*(*v19 + 16))(v19);
    LODWORD(buf) = 136315650;
    *(&buf + 4) = "Uninitialize";
    WORD6(buf) = 1024;
    *(&buf + 14) = 185;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v21;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "MetadataDNNVAD:%s:%d: couldn't uninitialize due to exception: %s";
    v24 = 28;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_9;
    }

    LODWORD(buf) = 136315394;
    *(&buf + 4) = "Uninitialize";
    WORD6(buf) = 1024;
    *(&buf + 14) = 188;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "MetadataDNNVAD:%s:%d: unknown exception";
    v24 = 18;
  }

  _os_log_error_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, v23, &buf, v24);
  goto LABEL_9;
}

uint64_t MetadataDNNVAD_v1::Initialize(DSPGraph::Graph **this, unsigned int a2, unsigned int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(buf, 0, sizeof(buf));
  DSPGraph::Interpreter::Interpreter(buf);
  std::to_string(&v11, a3);
  std::string::basic_string[abi:ne200100]<0>(v15, "inputSampleRate");
  __p = v11;
  memset(&v11, 0, sizeof(v11));
  std::unordered_map<std::string,std::string>::unordered_map(v12, v15, 1);
  memset(v10, 0, sizeof(v10));
  DSPGraph::Interpreter::compileFile();
  std::shared_ptr<DSPGraph::Graph>::operator=[abi:ne200100]<DSPGraph::Graph,std::default_delete<DSPGraph::Graph>,0>((this + 1), &v13);
  v5 = v13;
  v13 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v14 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  MEMORY[0x1E12BC370](buf);
  if (this[1])
  {
    PropertyList = MetadataDNNVAD_LoadPropertyList(&cfstr_LibraryAudioTu_1.isa);
    DSPGraph::Graph::setPropertyStrip(this[1], PropertyList);
    DSPGraph::Graph::setSliceDuration();
    DSPGraph::Graph::configure(this[1]);
    v7 = MetadataDNNVAD_LoadPropertyList(&cfstr_LibraryAudioTu_2.isa);
    DSPGraph::Graph::setAUStrip(this[1], v7);
    DSPGraph::Graph::initialize(this[1]);
    *(this + 22) = a3;

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Initialize";
      *&buf[12] = 1024;
      *&buf[14] = 151;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MetadataDNNVAD:%s:%d: couldn't initialize due to null dspgraph", buf, 0x12u);
    }

    return 4294956421;
  }
}

void sub_1DDE6E4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, int buf, int a36, int a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41, int a42, int a43, __int16 a44)
{
  if (a2)
  {

    if (a2 == 3)
    {
      v49 = __cxa_begin_catch(exception_object);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        p_p = &__p;
        caulk::string_from_4cc(&__p, v49[2]);
        if (a31 < 0)
        {
          p_p = __p;
        }

        v54 = (*(*v49 + 16))(v49);
        buf = 136315906;
        *(v46 + 52) = "Initialize";
        a38 = 1024;
        *(v46 + 62) = 155;
        a41 = 2080;
        *(v46 + 68) = p_p;
        a44 = 2080;
        *(v46 + 78) = v54;
        _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MetadataDNNVAD:%s:%d: couldn't initialize due to DSPG exception %s: %s", &buf, 0x26u);
        if (a31 < 0)
        {
          operator delete(__p);
        }
      }

      v50 = *(v44 + 16);
      *(v44 + 8) = 0;
      *(v44 + 16) = 0;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }
    }

    else
    {
      v51 = __cxa_begin_catch(exception_object);
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (a2 == 2)
      {
        if (v52)
        {
          v55 = (*(*v51 + 16))(v51);
          buf = 136315650;
          *(v46 + 52) = "Initialize";
          a38 = 1024;
          *(v46 + 62) = 159;
          a41 = 2080;
          *(v46 + 68) = v55;
          _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MetadataDNNVAD:%s:%d: couldn't initialize due to exception: %s", &buf, 0x1Cu);
        }
      }

      else if (v52)
      {
        buf = 136315394;
        *(v46 + 52) = "Initialize";
        a38 = 1024;
        *(v46 + 62) = 162;
        _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MetadataDNNVAD:%s:%d: unknown exception", &buf, 0x12u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDE6E46CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v5 = &a2[6 * a3];
    do
    {
      v6 = std::__string_hash<char>::operator()[abi:ne200100](v4);
      v7 = v6;
      v8 = *(a1 + 8);
      if (!*&v8)
      {
        goto LABEL_19;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = v6;
        if (v6 >= *&v8)
        {
          v11 = v6 % *&v8;
        }
      }

      else
      {
        v11 = (*&v8 - 1) & v6;
      }

      v12 = *(*a1 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v7)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, v4))
      {
        goto LABEL_18;
      }

      v4 += 6;
    }

    while (v4 != v5);
  }

  return a1;
}

void sub_1DDE6EAF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t MetadataDNNVAD_LoadPropertyList(NSString *a1)
{
  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:a1];
  v4 = 100;
  v2 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:&v4 error:0];

  return v2;
}

void MetadataDNNVAD_v1::~MetadataDNNVAD_v1(std::__shared_weak_count **this)
{
  MetadataDNNVAD_v1::~MetadataDNNVAD_v1(this);

  JUMPOUT(0x1E12BD160);
}

{
  if (this[1])
  {
    MetadataDNNVAD_v1::Uninitialize(this);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

float MetadataDNNVAD_v2::GetSpeechProbabilityAsFloatValue(MetadataDNNVAD_v2 *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  CA::DSP::Graph::GetParameter(&v3);
  if (v4)
  {
    v1 = *&v3;
  }

  else
  {
    v1 = 0.0;
  }

  if ((v4 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v3);
  }

  return v1;
}

float MetadataDNNVAD_v2::GetSpeechProbabilityAsBooleanValue(MetadataDNNVAD_v2 *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  CA::DSP::Graph::GetParameter(&v3);
  if (v4)
  {
    v1 = *&v3;
  }

  else
  {
    v1 = 0.0;
  }

  if ((v4 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v3);
  }

  return v1;
}

double MetadataDNNVAD_v2::Process(MetadataDNNVAD_v2 *this, const float *a2, unsigned int a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    v22 = a2;
    v21[2] = 1;
    v21[3] = 4 * a3;
    v20 = 0;
    v21[0] = 1;
    v13 = a3 | (*(this + 20) << 32);
    v14 = 1;
    CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v15, MEMORY[0x1E698D488], v5, &v20, 1, 0, 0, &v13, 0);
    v6 = v16;
    if ((v16 & 1) == 0)
    {
      v10 = v15;
      v15 = 0;
      v23 = 0;
      v18 = v10;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v23);
      v19 = v6;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
      goto LABEL_7;
    }

    v19 = v16;
    v7 = (this + 16);
    v15 = v21;
    v16 = this + 16;
    v17 = a3;
    CA::DSP::Graph::Process(&v13);
    v8 = v14;
    if (v19 == 1)
    {
      if (v14)
      {
        goto LABEL_12;
      }

      v9 = v13;
      v13 = 0;
      v18 = v9;
      v19 = 0;
    }

    else
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
      if (v8)
      {
        v19 = 1;
        goto LABEL_12;
      }

      v12 = v13;
      v13 = 0;
      v18 = v12;
    }

    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
LABEL_12:
    if (v19 == 1)
    {
      result = *v7 + a3;
      *v7 = result;
      return result;
    }

LABEL_7:
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
  }

  return result;
}

uint64_t MetadataDNNVAD_v2::Uninitialize(const void **this)
{
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 1);
  this[1] = 0;
  return 0;
}

uint64_t MetadataDNNVAD_v2::Initialize(const void **this, unsigned int a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  CA::DSP::LanguageV1Interpreter::Create(&v30, *MEMORY[0x1E695E480]);
  CFRetain(@"inputSampleRate");
  CA::DSP::String::Create(v5, @"%u", &v24, a3);
  v26 = 0;
  v28 = 0;
  *buf = @"inputSampleRate";
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v28);
  v6 = v24;
  v24 = 0;
  *&buf[8] = v6;
  CA::DSP::Dictionary<CA::DSP::String,CA::DSP::String>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::String>>(&v28, v5, buf, 1);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[8]);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v24);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v26);
  CADSPLanguageV1InterpreterSetPreprocessorMacroDefinitions();
  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v28);
  CA::DSP::MutableGraphModel::Create(&v33, v5);
  v32 = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  CA::DSP::LanguageV1Interpreter::InterpretContentsOfFile(buf);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v32);
  if (buf[8] == 1)
  {
    v7 = v33;
    v33 = 0;
    cf = v7;
    v21 = 1;
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(&v31, *buf);
    v19 = v31;
    v31 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v31);
    cf = v19;
    v21 = 0;
    if ((buf[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v33);
  if (v21 != 1)
  {
    v9 = cf;
    cf = 0;
    v22 = v9;
    v23 = 0;
LABEL_16:
    v13 = v22;
    v22 = 0;
    v25 = 0;
LABEL_17:
    v24 = 0;
    v27 = 0;
LABEL_18:
    v26 = 0;
    v28 = v13;
    v29 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v26);
    v14 = 0;
    goto LABEL_19;
  }

  v8 = cf;
  cf = 0;
  v31 = v8;
  *buf = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  CADSPGraphModelSetSliceDuration();
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
  v33 = v31;
  if (v31)
  {
    CFRetain(v31);
  }

  CADSPGraphModelSetSliceDurationCanVary();
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v33);
  v32 = v31;
  if (v31)
  {
    CFRetain(v31);
  }

  CA::DSP::Graph::Create(&v22);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v32);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v31);
  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = v22;
  v22 = 0;
  v33 = v10;
  PropertyList = MetadataDNNVAD_LoadPropertyList(&cfstr_LibraryAudioTu_1.isa);
  CA::DSP::Graph::LoadStrip(buf);
  if (buf[8])
  {
    v12 = v33;
    v33 = 0;
    v24 = v12;
    v25 = 1;
    goto LABEL_41;
  }

  v24 = *buf;
  if (!*buf)
  {
    v25 = 0;
    goto LABEL_40;
  }

  CFRetain(*buf);
  v25 = 0;
  if ((buf[8] & 1) == 0)
  {
LABEL_40:
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
  }

LABEL_41:

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v33);
  v13 = v24;
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = 0;
  v33 = v13;
  v17 = MetadataDNNVAD_LoadPropertyList(&cfstr_LibraryAudioTu_2.isa);
  CA::DSP::Graph::LoadStrip(buf);
  if ((buf[8] & 1) == 0)
  {
    v13 = *buf;
    v26 = *buf;
    if (*buf)
    {
      CFRetain(*buf);
    }

    v27 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);

    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v33);
    goto LABEL_18;
  }

  v13 = v33;
  v33 = 0;
  v26 = v13;
  v27 = 1;

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v33);
  v26 = 0;
  v33 = v13;
  CA::DSP::Graph::Initialize(buf);
  v14 = buf[8];
  if (buf[8])
  {
    v33 = 0;
    v28 = v13;
    v29 = 1;
  }

  else
  {
    v13 = *buf;
    v28 = *buf;
    if (*buf)
    {
      CFRetain(*buf);
    }

    v29 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v33);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v26);
LABEL_19:
  if (v25 == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v24);
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v24);
  }

  if (v23 == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v22);
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v22);
  }

  if (v21 != 1)
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
    if (!v14)
    {
      goto LABEL_27;
    }

LABEL_31:
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 1);
    CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(this + 1, v13);
    v15 = 0;
    *(this + 20) = a3;
    goto LABEL_32;
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
  if (v14)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "Initialize";
    *&buf[12] = 1024;
    *&buf[14] = 342;
    v35 = 2112;
    v36 = v13;
    v18 = v13;
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MetadataDNNVAD:%s:%d: couldn't initialize - %@", buf, 0x1Cu);
  }

  v15 = 4294956421;
LABEL_32:
  if (v29 == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v28);
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v28);
  }

  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v30);
  return v15;
}

void sub_1DDE6F4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **std::expected<CA::DSP::Reference<CA::DSP::MutableGraphModel>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(a1);
  }

  else
  {
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(a1);
  }
}

void *CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void MetadataDNNVAD_v2::~MetadataDNNVAD_v2(MetadataDNNVAD_v2 *this)
{
  MetadataDNNVAD_v2::~MetadataDNNVAD_v2(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = *(this + 1);
  v1 = (this + 8);
  if (v2)
  {
    v1 = CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v1);
    *v1 = 0;
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v1);
}

float CFilterBank::filterbank_compute_bank32(uint64_t a1, uint64_t a2, float *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0x7FFFFFFF0);
  HIDWORD(v17) = 0;
  MEMORY[0x1E12BE7F0](*(v11 + 16), 1, a2, 1, v10, 1, v8);
  if (*(a1 + 40) >= 1)
  {
    v12 = 0;
    v13 = a3;
    do
    {
      vDSP_sve(&v10[4 * *(v7 + 4 * v12)], 1, v13, *(v6 + 4 * v12));
      ++v12;
      ++v13;
    }

    while (v12 < *(a1 + 40));
  }

  MEMORY[0x1E12BE7F0](*(a1 + 24), 1, a2, 1, v10, 1, *(a1 + 44));
  if (*(a1 + 40) > 1)
  {
    v15 = 0;
    v16 = a3 + 1;
    do
    {
      vDSP_sve(&v10[4 * *(v7 + 4 * v15)], 1, &v17 + 1, *(v6 + 4 * v15));
      result = *(&v17 + 1) + v16[v15];
      v16[v15++] = result;
    }

    while (v15 < *(a1 + 40) - 1);
  }

  return result;
}

float CFilterBank::filterbank_compute_psd16(int **a1, uint64_t a2, float *a3)
{
  v3 = *(a1 + 11);
  if (v3 >= 1)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    do
    {
      v9 = *v4++;
      v8 = v9;
      v11 = *v5++;
      v10 = v11;
      LODWORD(v11) = *v6++;
      v12 = *(a2 + 4 * v8) * *&v11;
      LODWORD(v11) = *v7++;
      result = v12 + (*(a2 + 4 * v10) * *&v11);
      *a3++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void CFilterBank::filterbank_destroy(void **a1)
{
  free(*a1);
  free(a1[1]);
  free(a1[2]);
  free(a1[3]);
  free(a1[6]);
  free(a1[7]);
  free(a1[4]);

  free(a1);
}

_OWORD *CFilterBank::filterbank_new(CFilterBank *this, int a2, float a3)
{
  v5 = this;
  v6 = a3 * 0.5;
  v7 = atanf((a3 * 0.5) * 0.00074);
  v8 = atanf((v6 * v6) * 0.0000000185);
  v9 = malloc_type_malloc(0x40uLL, 0xC51E07E4uLL);
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  *(v9 + 10) = v5;
  *(v9 + 11) = a2;
  v10 = malloc_type_malloc(4 * a2, 0xC51E07E4uLL);
  bzero(v10, 4 * a2);
  *v9 = v10;
  v11 = malloc_type_malloc(4 * a2, 0xC51E07E4uLL);
  bzero(v11, 4 * a2);
  *(v9 + 1) = v11;
  v12 = malloc_type_malloc(4 * a2, 0xC51E07E4uLL);
  bzero(v12, 4 * a2);
  *(v9 + 2) = v12;
  v13 = malloc_type_malloc(4 * a2, 0xC51E07E4uLL);
  bzero(v13, 4 * a2);
  *(v9 + 3) = v13;
  v14 = malloc_type_malloc(4 * v5, 0xC51E07E4uLL);
  bzero(v14, 4 * v5);
  *(v9 + 6) = v14;
  v15 = malloc_type_malloc(4 * v5, 0xC51E07E4uLL);
  bzero(v15, 4 * v5);
  *(v9 + 7) = v15;
  v16 = malloc_type_malloc(4 * v5, 0xC51E07E4uLL);
  bzero(v16, 4 * v5);
  *(v9 + 4) = v16;
  if (a2 >= 1)
  {
    v17 = 0;
    v18 = a3 / (2 * a2);
    v19 = ((v8 * 2.24) + (v7 * 13.1)) + (v6 * 0.0001);
    v20 = v19 / (v5 - 1);
    v21 = v5 - 2;
    do
    {
      v22 = v18 * v17;
      v23 = atanf(v22 * 0.00074);
      v24 = ((atanf((v22 * v22) * 0.0000000185) * 2.24) + (v23 * 13.1)) + (v22 * 0.0001);
      if (v24 > v19)
      {
        break;
      }

      v25 = vcvtms_s32_f32(v24 / v20);
      v26 = 1.0;
      v27 = v21;
      if (v21 >= v25)
      {
        v26 = (v24 - (v25 * v20)) / v20;
        v27 = v25;
      }

      v28 = *(v9 + 1);
      *(*v9 + 4 * v17) = v27;
      v29 = *(v9 + 3);
      *(*(v9 + 2) + 4 * v17) = 1.0 - v26;
      *(v28 + 4 * v17) = v27 + 1;
      *(v29 + 4 * v17++) = v26;
    }

    while (a2 != v17);
  }

  v30 = *(v9 + 10);
  if (v30 >= 1)
  {
    bzero(v16, 4 * v30);
  }

  v31 = *(v9 + 11);
  if (v31 >= 1)
  {
    v32 = *v9;
    v33 = *(v9 + 1);
    v34 = *(v9 + 2);
    v35 = *(v9 + 3);
    do
    {
      v37 = *v32++;
      v36 = v37;
      LODWORD(v37) = *v34++;
      v16[v36] = *&v37 + v16[v36];
      v39 = *v33++;
      v38 = v39;
      LODWORD(v39) = *v35++;
      v16[v38] = *&v39 + v16[v38];
      --v31;
    }

    while (v31);
  }

  if (v30 >= 1)
  {
    do
    {
      *v16 = 1.0 / *v16;
      ++v16;
      --v30;
    }

    while (v30);
  }

  v40 = *(v9 + 6);
  v41 = *(v9 + 7);
  *v40 = 0;
  *v41 = 0;
  if (a2 >= 1)
  {
    v42 = 0;
    LODWORD(v43) = 0;
    v44 = 0;
    v45 = *v9;
    do
    {
      if (*(v45 + 4 * v42) == v44)
      {
        ++v41[v43];
      }

      else
      {
        v43 = v43 + 1;
        ++v44;
        v40[v43] = v42;
        v41[v43] = 1;
      }

      ++v42;
    }

    while (a2 != v42);
  }

  return v9;
}

uint64_t AUMultiChannelAGC::ValidFormat(AUMultiChannelAGC *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  LODWORD(result) = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (a4->mChannelsPerFrame)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUMultiChannelAGC::SupportedNumChannels(AUMultiChannelAGC *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMultiChannelAGC::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

uint64_t AUMultiChannelAGC::GetParameterValueStrings(AudioUnit *this, int a2, AudioUnitElement inElement, const __CFArray **outData)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956417;
  }

  if (!outData)
  {
    return 0;
  }

  if (inElement <= 0x40)
  {
    LODWORD(v7) = 8;
    return AudioUnitGetProperty(this[74], 0x10u, 0, inElement, outData, &v7);
  }

  if (inElement != 65)
  {
    return 4294956417;
  }

  v7 = xmmword_1E866BE70;
  v6 = CFArrayCreate(0, &v7, 2, 0);
  result = 0;
  *outData = v6;
  return result;
}

uint64_t AUMultiChannelAGC::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 172);
  }

  return result;
}

uint64_t AUMultiChannelAGC::GetParameterInfo(AudioUnit *this, int a2, AudioUnitElement inElement, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  v11 = v4;
  v12 = v5;
  if (inElement > 0x40)
  {
    if (inElement == 65)
    {
      buffer->cfNameString = @"Channel Combination Mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Channel Combination Mode", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x3F80000000000000;
      v9 = buffer->flags | 0xC0000000;
      buffer->defaultValue = 0.0;
      buffer->flags = v9;
    }

    else
    {
      return 4294956418;
    }
  }

  else
  {
    ioDataSize = 104;
    result = AudioUnitGetProperty(this[74], 4u, 0, inElement, buffer, &ioDataSize);
    if (!result)
    {
      if (inElement == 50)
      {
        buffer->maxValue = 49.0;
      }

      return 0;
    }
  }

  return result;
}

uint64_t AUMultiChannelAGC::ProcessBufferLists(AUMultiChannelAGC *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, float *a5)
{
  mNumberBuffers = a3->mNumberBuffers;
  if ((*(*this + 592))(this))
  {
    if (mNumberBuffers)
    {
      p_mData = &a4->mBuffers[0].mData;
      v12 = &a3->mBuffers[0].mData;
      do
      {
        if (a5)
        {
          memmove(*p_mData, *v12, 4 * a5);
        }

        p_mData += 2;
        v12 += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    return 0;
  }

  v41 = a4;
  v14 = *(this + 172);
  if (v14 != *(this + 173))
  {
    v15 = 0;
    *(this + 173) = v14;
    while (1)
    {
      v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v17 & 1) == 0)
      {
        break;
      }

      Parameter = ausdk::AUElement::GetParameter(v16, v15);
      if (Parameter > 49.0 && v15 == 50)
      {
        Parameter = 49.0;
      }

      result = AudioUnitSetParameter(*(this + 74), v15, 0, 0, Parameter, 0);
      if (result)
      {
        return result;
      }

      if (++v15 == 65)
      {
        goto LABEL_18;
      }
    }

LABEL_53:
    abort();
  }

LABEL_18:
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_53;
  }

  v22 = ausdk::AUElement::GetParameter(v20, 0x41u);
  if (a5)
  {
    memmove(*(this + 87), a3->mBuffers[0].mData, 4 * a5);
  }

  v23 = v22;
  if (mNumberBuffers >= 2)
  {
    v24 = mNumberBuffers - 1;
    mBuffers = a3[1].mBuffers;
    do
    {
      v26 = *mBuffers;
      if (v23 == 1)
      {
        MEMORY[0x1E12BE5D0](*(this + 87), 1, v26, 1, *(this + 87), 1, a5);
      }

      else if (!v23)
      {
        vDSP_vmax(*(this + 87), 1, v26, 1, *(this + 87), 1, a5);
      }

      mBuffers += 2;
      --v24;
    }

    while (v24);
  }

  if (v23 == 1)
  {
    *&v46.mSampleRate = 1.0 / mNumberBuffers;
    MEMORY[0x1E12BE940](*(this + 87), 1, &v46, *(this + 87), 1, a5);
  }

  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_53;
  }

  v46.mSampleRate = *(v27 + 80);
  *&v46.mFormatID = xmmword_1DE09BD50;
  *&v46.mBytesPerFrame = xmmword_1DE09BD60;
  v29 = ausdk::AUBufferList::PrepareBufferOrError((this + 664), &v46, a5);
  if ((v30 & 1) == 0)
  {
    ausdk::Throw(v29);
  }

  if (!*(this + 166))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v31 = *(this + 84);
  if (a5)
  {
    memmove(*(v31 + 64), *(this + 87), 4 * a5);
  }

  result = AudioUnitProcess(*(this + 74), a2, (this + 600), a5, (v31 + 48));
  if (!result)
  {
    *(this + 75) = *(this + 75) + a5;
    *v44 = 0;
    *outValue = 0;
    v43 = 0.0;
    result = AudioUnitGetParameter(*(this + 74), 0x3Eu, 0, 0, &outValue[1]);
    if (!result)
    {
      result = AudioUnitGetParameter(*(this + 74), 1u, 0, 0, outValue);
      if (!result)
      {
        result = AudioUnitGetParameter(*(this + 74), 0x1Bu, 0, 0, &v44[1]);
        if (!result)
        {
          result = AudioUnitGetParameter(*(this + 74), 0x28u, 0, 0, v44);
          if (!result)
          {
            result = AudioUnitGetParameter(*(this + 74), 0x29u, 0, 0, &v43);
            if (!result)
            {
              v32 = exp(outValue[1] * 0.115129255);
              v42 = v32;
              if (mNumberBuffers)
              {
                v33 = 0;
                v34 = a3->mBuffers;
                do
                {
                  mData = v41->mBuffers[v33].mData;
                  MEMORY[0x1E12BE940](v34[v33].mData, 1, &v42, mData, 1, a5);
                  v36 = v44[1];
                  if (v43 == 0.0)
                  {
                    AUMultiChannelAGC::ApplyRampedGain(mData, mData, a5, v44[1] + *(this + 180), v44[1] + outValue[0]);
                    if (v44[0] != 0.0)
                    {
                      AUMultiChannelAGC::SoftClip(mData, a5);
                    }
                  }

                  else
                  {
                    v37 = exp(((v44[1] - v44[1]) / a5) * 0.115129255);
                    if (a5)
                    {
                      v38 = v37;
                      v39 = exp(v36 * 0.115129255);
                      v40 = a5;
                      do
                      {
                        v39 = v39 * v38;
                        *mData = v39 * *mData;
                        mData = (mData + 4);
                        --v40;
                      }

                      while (v40);
                    }
                  }

                  ++v33;
                }

                while (v33 != mNumberBuffers);
              }

              *(this + 180) = outValue[0];
              return AUMultiChannelAGC::displayAGCV2Status(this);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AUMultiChannelAGC::displayAGCV2Status(AudioUnit *this)
{
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(this[74], 0, 0, 0, &outValue);
  if (!Parameter)
  {
    Parameter = (*(*this + 19))(this, 0, 0, 0, 0, outValue);
  }

  v16 = Parameter;
  outValue = 0.0;
  v3 = AudioUnitGetParameter(this[74], 1u, 0, 0, &outValue);
  if (!v3)
  {
    v3 = (*(*this + 19))(this, 1, 0, 0, 0, outValue);
  }

  v15 = v3;
  outValue = 0.0;
  v4 = AudioUnitGetParameter(this[74], 0xEu, 0, 0, &outValue);
  if (!v4)
  {
    v4 = (*(*this + 19))(this, 14, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v5 = AudioUnitGetParameter(this[74], 0x12u, 0, 0, &outValue);
  if (!v5)
  {
    v5 = (*(*this + 19))(this, 18, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v6 = AudioUnitGetParameter(this[74], 0x13u, 0, 0, &outValue);
  if (!v6)
  {
    v6 = (*(*this + 19))(this, 19, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v7 = AudioUnitGetParameter(this[74], 0x23u, 0, 0, &outValue);
  if (!v7)
  {
    v7 = (*(*this + 19))(this, 35, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v8 = AudioUnitGetParameter(this[74], 0x25u, 0, 0, &outValue);
  if (!v8)
  {
    v8 = (*(*this + 19))(this, 37, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v9 = AudioUnitGetParameter(this[74], 0x2Au, 0, 0, &outValue);
  if (!v9)
  {
    v9 = (*(*this + 19))(this, 42, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v10 = AudioUnitGetParameter(this[74], 0x2Du, 0, 0, &outValue);
  if (!v10)
  {
    v10 = (*(*this + 19))(this, 45, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v11 = AudioUnitGetParameter(this[74], 0x3Cu, 0, 0, &outValue);
  if (!v11)
  {
    v11 = (*(*this + 19))(this, 60, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v12 = AudioUnitGetParameter(this[74], 0x3Du, 0, 0, &outValue);
  if (!v12)
  {
    v12 = (*(*this + 19))(this, 61, 0, 0, 0, outValue);
  }

  outValue = 0.0;
  v13 = AudioUnitGetParameter(this[74], 0x40u, 0, 0, &outValue);
  if (!v13)
  {
    v13 = (*(*this + 19))(this, 64, 0, 0, 0, outValue);
  }

  return v15 | v16 | v4 | v5 | v6 | v7 | v8 | v9 | v10 | v11 | v12 | v13;
}

void AUMultiChannelAGC::ApplyRampedGain(AUMultiChannelAGC *this, float *a2, float *a3, float a4, float a5)
{
  v5 = a3;
  v9 = exp(((a5 - a4) / a3) * 0.115129255);
  if (v5)
  {
    v10 = v9;
    v11 = exp(a4 * 0.115129255);
    v12 = v5;
    do
    {
      v11 = v11 * v10;
      v13 = *this;
      this = (this + 4);
      *a2++ = v11 * v13;
      --v12;
    }

    while (v12);
  }
}

float *AUMultiChannelAGC::SoftClip(float *this, float *a2)
{
  if (a2)
  {
    for (i = a2; i; --i)
    {
      v3 = *this;
      if (fabsf(*this) > 0.95)
      {
        if (v3 > 0.95 && v3 < 5.0)
        {
          v5 = ((v3 + -0.95) * 0.0123) + 0.95;
        }

        else if (v3 <= -5.0 || v3 >= -0.95)
        {
          v5 = 0.9999;
          if (v3 < 5.0)
          {
            v5 = -0.9999;
            if (v3 > -5.0)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v5 = ((v3 + 0.95) * 0.0123) + -0.95;
        }

        *this = v5;
      }

LABEL_13:
      ++this;
    }
  }

  return this;
}

uint64_t AUMultiChannelAGC::SetParameter(AudioUnit *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5, UInt32 a6)
{
  if (a5 > 49.0 && a2 == 50)
  {
    v12 = 49.0;
  }

  else
  {
    v12 = a5;
  }

  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, v12);
  if (!result)
  {
    if (a2 > 0x40)
    {
      return 0;
    }

    result = AudioUnitSetParameter(this[74], a2, a3, a4, v12, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUMultiChannelAGC::GetProperty(AUMultiChannelAGC *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a2 == 3700 && !a3)
  {
    result = 0;
    v7 = *(this + 376);
LABEL_4:
    *a5 = v7;
    return result;
  }

  if (!a3)
  {
    if (a2 == 29)
    {
      result = 0;
      v7 = *(this + 554);
      goto LABEL_4;
    }

    if (a2 == 21)
    {
      result = 0;
      v7 = *(this + 552);
      goto LABEL_4;
    }
  }

  return 4294956417;
}

uint64_t AUMultiChannelAGC::GetPropertyInfo(AUMultiChannelAGC *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 3700 && !a3)
  {
    v6 = 0;
LABEL_4:
    result = 0;
    *a6 = v6;
    *a5 = 4;
    return result;
  }

  if (!a3 && (a2 | 8) == 0x1D)
  {
    v6 = 1;
    goto LABEL_4;
  }

  return 4294956417;
}

uint64_t AUMultiChannelAGC::Reset(AudioUnit *this, AudioUnitScope a2, AudioUnitElement a3)
{
  result = AudioUnitReset(this[74], a2, a3);
  if (!result)
  {
    this[75] = 0;
    *(this + 180) = 0;
    v5 = this[66];
    v6 = this[67];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 16))(*v5);
      }

      ++v5;
    }

    return 0;
  }

  return result;
}

OpaqueAudioComponentInstance *AUMultiChannelAGC::Cleanup(AUMultiChannelAGC *this)
{
  result = *(this + 74);
  if (result)
  {
    return AudioUnitUninitialize(result);
  }

  return result;
}

double AUMultiChannelAGC::Initialize(AUMultiChannelAGC *this)
{
  if (!ausdk::AUEffectBase::Initialize(this))
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element || (v4 = Element, (v5 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v4 + 88) == 1819304813)
    {
      result = *(v4 + 80);
      if (result == *(v5 + 80))
      {
        v6 = *(this + 84);
        LODWORD(inData) = 0;
        std::vector<float>::assign(this + 87, v6, &inData, *&result);
        v10.mSampleRate = *(v4 + 80);
        *&v10.mFormatID = xmmword_1DE09BD50;
        *&v10.mBytesPerFrame = xmmword_1DE09BD60;
        ausdk::AUBufferList::Allocate((this + 664), &v10, v6);
        v7 = *(this + 74);
        if (!v7 || !AudioUnitUninitialize(v7))
        {
          v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
          if ((v9 & 1) == 0)
          {
            abort();
          }

          inData = *(v8 + 80);
          v13 = xmmword_1DE09BD50;
          v14 = xmmword_1DE09BD60;
          if (!AudioUnitSetProperty(*(this + 74), 8u, 1u, 0, &inData, 0x28u) && !AudioUnitSetProperty(*(this + 74), 8u, 2u, 0, &inData, 0x28u))
          {
            v11 = *(this + 84);
            if (!AudioUnitSetProperty(*(this + 74), 0xEu, 0, 0, &v11, 4u) && !AudioUnitInitialize(*(this + 74)))
            {
              result = 0.0;
              *(this + 632) = 0u;
              *(this + 648) = 0u;
              *(this + 600) = 0u;
              *(this + 616) = 0u;
              *(this + 164) = 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void AUMultiChannelAGC::~AUMultiChannelAGC(AUMultiChannelAGC *this)
{
  AUMultiChannelAGC::~AUMultiChannelAGC(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5927E48;
  v2 = *(this + 74);
  if (v2)
  {
    AudioUnitUninitialize(v2);
    v3 = *(this + 74);
    if (v3)
    {
      if (!AudioComponentInstanceDispose(v3))
      {
        *(this + 74) = 0;
      }
    }
  }

  v4 = *(this + 87);
  if (v4)
  {
    *(this + 88) = v4;
    operator delete(v4);
  }

  if (*(this + 84))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 84) = 0;
  }

  *(this + 85) = 0;
  *(this + 166) = 0;
  *this = &unk_1F593A7A8;
  v5 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v5);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUBiquad::ChangeStreamFormat(AUBiquad *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUEffectBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (a4->mSampleRate != a5->mSampleRate)
  {
    *(this + 664) = 1;
  }

  return 0;
}

BOOL AUBiquad::ValidFormat(AUBiquad *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  v10 = 0;
  v5 = *&a4->mBytesPerPacket;
  v8[0] = *&a4->mSampleRate;
  v8[1] = v5;
  v9 = *&a4->mBitsPerChannel;
  v11 = 0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(v8, &v11, &v10) && v11 == 3 || (v11 = 0, CAStreamBasicDescription::IdentifyCommonPCMFormat(v8, &v11, &v10)) && v11 == 2)
  {
    mChannelsPerFrame = a4->mChannelsPerFrame;
    result = mChannelsPerFrame - 1 < 2;
  }

  else
  {
    result = 0;
    mChannelsPerFrame = a4->mChannelsPerFrame;
  }

  if (mChannelsPerFrame == 2)
  {
    return result && v10;
  }

  return result;
}

uint64_t AUBiquad::SupportedNumChannels(AUBiquad *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUBiquad::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

uint64_t AUBiquad::GetParameterValueStrings(AUBiquad *this, int a2, int a3, const __CFArray **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 4294956417;
  if (!a2 && a3 == 1651602544)
  {
    if (a4)
    {
      v7 = xmmword_1E866BE80;
      v8 = @"Parametric";
      v6 = CFArrayCreate(0, &v7, 3, 0);
      result = 0;
      *a4 = v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUBiquad::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  *(this + 664) = 1;
  return result;
}

uint64_t AUBiquad::GetParameterInfo(AUBiquad *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a3 > 1718773104)
  {
    if (a3 == 1718773105)
    {
      buffer->cfNameString = @"frequency";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"frequency", buffer->name, 52, 0x8000100u);
      *&buffer->unit = 0x40A0000000000008;
      v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 128, 0);
      if ((v9 & 1) == 0)
      {
        abort();
      }

      *&v10 = *(v8 + 80) * 0.49000001;
      v11 = *v10.i32;
      v10.i32[0] = 1148846080;
      v7 = vdup_lane_s32(v10, 0);
      *v7.i32 = v11;
    }

    else
    {
      if (a3 != 1734437230)
      {
        return result;
      }

      buffer->cfNameString = @"gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"gain", buffer->name, 52, 0x8000100u);
      *&buffer->unit = 0xC2C000000000000DLL;
      v7 = 1103101952;
    }
  }

  else if (a3 == 1650751348)
  {
    buffer->cfNameString = @"bandwidth";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"bandwidth", buffer->name, 52, 0x8000100u);
    *&buffer->unit = 0x3A83126F00000015;
    v7 = 0x3F80000040E00000;
  }

  else
  {
    if (a3 != 1651602544)
    {
      return result;
    }

    buffer->cfNameString = @"type";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"type", buffer->name, 52, 0x8000100u);
    *&buffer->unit = 1;
    v7 = 0x4000000040000000;
  }

  result = 0;
  *&buffer->maxValue = v7;
  buffer->flags |= 0xC0000000;
  return result;
}

uint64_t AUBiquad::ProcessBufferLists(int32x4_t *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  if (this[41].i8[8] == 1)
  {
    this[41].i8[8] = 0;
    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this[8].i64, 0);
    if ((v10 & 1) == 0)
    {
      abort();
    }

    v11 = *(v9 + 80);
    Parameter = ausdk::AUEffectBase::GetParameter(this, 0x66726571u);
    v13 = ausdk::AUEffectBase::GetParameter(this, 0x62717470u);
    if (v11 > 0.0 && Parameter > 0.0 && Parameter <= (v11 * 0.49))
    {
      v14 = v13;
      v15 = Parameter * 6.28318531 / v11;
      if (v13 == 2)
      {
        v35 = ausdk::AUEffectBase::GetParameter(this, 0x6761696Eu);
        v36 = ausdk::AUEffectBase::GetParameter(this, 0x62647774u);
        v37 = __sincos_stret(v15);
        v38 = sqrt(__exp10(v35 / 20.0));
        v39 = v37.__sinval * sinh(v15 * (v36 * 0.34657359) / v37.__sinval);
        v40 = 1.0 / (v39 / v38 + 1.0);
        v41.f64[0] = v39 * v38 + 1.0;
        v42.f64[0] = v37.__cosval * -2.0;
        v41.f64[1] = v37.__cosval * -2.0;
        v42.f64[1] = 1.0 - v39 / v38;
        this[37] = vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(vmulq_n_f64(v42, v40), vdupq_n_s64(0xC170000000000000))), vcvtq_n_s64_f64(vmulq_n_f64(v41, v40), 0x18uLL));
        v21 = vcvtd_n_s64_f64((1.0 - v39 * v38) * v40, 0x18uLL);
        goto LABEL_12;
      }

      if (v14 == 1)
      {
        v29 = tan(v15 * 0.5);
        v30 = v29 * v29;
        v31 = v29 * 1.41421356;
        v32 = 1.0 / (v30 + v31 + 1.0);
        v33.f64[0] = v30 + -1.0 + v30 + -1.0;
        v33.f64[1] = v30 + 1.0 - v31;
        v21 = vcvtd_n_s64_f64(v32, 0x18uLL);
        v34.f64[0] = v32;
        v34.f64[1] = v32 * -2.0;
        v22 = vmulq_f64(vmulq_n_f64(v33, v32), vdupq_n_s64(0xC170000000000000));
        v23 = vcvtq_n_s64_f64(v34, 0x18uLL);
        goto LABEL_20;
      }

      if (!v14)
      {
        v16 = 1.0 / tan(v15 * 0.5);
        v17 = v16 * v16;
        v18 = v16 * 1.41421356;
        v19.f64[0] = 1.0 / (v17 + v18 + 1.0);
        v20.f64[0] = (1.0 - v17 + 1.0 - v17) * v19.f64[0];
        v21 = vcvtd_n_s64_f64(v19.f64[0], 0x18uLL);
        v19.f64[1] = v19.f64[0] + v19.f64[0];
        v20.f64[1] = (v17 + 1.0 - v18) * v19.f64[0];
        v22 = vmulq_f64(v20, vdupq_n_s64(0xC170000000000000));
        v23 = vcvtq_n_s64_f64(v19, 0x18uLL);
LABEL_20:
        v24 = vuzp1q_s32(vcvtq_s64_f64(v22), v23);
        goto LABEL_11;
      }
    }

    v21 = 0;
    v24 = xmmword_1DE09DD10;
LABEL_11:
    this[37] = v24;
LABEL_12:
    this[38].i32[0] = v21;
  }

  mData = a3->mBuffers[0].mData;
  v26 = a4->mBuffers[0].mData;
  if ((*(this->i64[0] + 592))(this))
  {
    if (v26 != mData)
    {
      Element = ausdk::AUScope::GetElement(&this[5], 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      memcpy(v26, mData, (*(Element + 104) * a5));
    }
  }

  else
  {
    (this[41].i64[0])(mData, v26, a5, this[37].i8);
  }

  return 0;
}

uint64_t AUBiquad::SetParameter(AUBiquad *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  *(this + 664) = 1;
  return result;
}

uint64_t AUBiquad::Reset(AUBiquad *this)
{
  *(this + 612) = 0u;
  *(this + 628) = 0u;
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

uint64_t AUBiquad::Initialize(AUBiquad *this)
{
  result = ausdk::AUEffectBase::Initialize(this);
  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element || (v4 = *(Element + 96), v11 = *(Element + 80), *v12 = v4, *&v12[16] = *(Element + 112), (v5 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    v7 = *(v5 + 96);
    *&v10.mSampleRate = *(v5 + 80);
    *&v10.mBytesPerPacket = v7;
    *&v10.mBitsPerChannel = *(v5 + 112);
    if (*&v11 == v10.mSampleRate && DWORD2(v11) == v10.mFormatID && *v12 == *&v10.mBytesPerPacket && *&v12[12] == *&v10.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(&v11, &v10, v6) && (ProcessProcForFormats = Biquad_8dot24::CreateProcessProcForFormats(&v11, &v10), *(this + 81) = ProcessProcForFormats, *(this + 82) = v9, ProcessProcForFormats == 1))
    {
      result = 0;
      *(this + 612) = 0u;
      *(this + 628) = 0u;
    }

    else
    {
      return 4294956428;
    }
  }

  return result;
}

void AUBiquad::~AUBiquad(AUBiquad *this)
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

void ausdk::AUEffectBase::SetParameter(ausdk::AUEffectBase *this, unsigned int a2, float a3)
{
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0 || (ausdk::AUElement::SetParameterOrError(v7, v5, a3, a2, 0), (v7[4] & 1) == 0))
  {
    abort();
  }
}

uint64_t AUClipDetector::GetScopeExtended(AUClipDetector *this, int a2)
{
  if (a2 == 4)
  {
    return this + 528;
  }

  else
  {
    return 0;
  }
}

uint64_t AUClipDetector::ValidFormat(AUClipDetector *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  mFormatFlags = a4->mFormatFlags;
  mBytesPerPacket = a4->mBytesPerPacket;
  mBytesPerFrame = a4->mBytesPerFrame;
  mChannelsPerFrame = a4->mChannelsPerFrame;
  mBitsPerChannel = a4->mBitsPerChannel;
  v9 = mFormatFlags & 0x20;
  v10 = a4->mFormatID == 1819304813 && a4->mFramesPerPacket == 1;
  if (!v10 || mBytesPerFrame != mBytesPerPacket || mBitsPerChannel >> 3 > mBytesPerFrame || mChannelsPerFrame == 0)
  {
    goto LABEL_15;
  }

  if ((mFormatFlags & 0x20) == 0)
  {
    v10 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame;
    mBytesPerPacket /= mChannelsPerFrame;
    if (!v10)
    {
      v9 = 0;
LABEL_15:
      v14 = 0;
      v15 = 0;
      goto LABEL_34;
    }
  }

  v16 = 8 * mBytesPerPacket;
  v17 = mBytesPerPacket == 4 && (mFormatFlags & 0x1F84) == 0;
  if (v16 != mBitsPerChannel || (mFormatFlags & 1) == 0)
  {
    v17 = 0;
    v19 = 1;
  }

  else
  {
    v19 = (mFormatFlags & 0x1F84) == 0;
  }

  v20 = (mFormatFlags & 2) == 0;
  v14 = (mFormatFlags & 2) == 0 && v17;
  v15 = !v20 || v19;
LABEL_34:
  v21 = v14 & v15;
  if (v9)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t AUClipDetector::SupportedNumChannels(AUClipDetector *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUClipDetector::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUClipDetector::GetParameterInfo(AUClipDetector *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2 != 4)
  {
    return 4294956430;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  if (a3 > 2)
  {
    return 4294956418;
  }

  v5 = off_1E866BEB8[a3];
  v6 = dword_1DE0E7EBC[a3];
  v7 = flt_1DE0E7EC8[a3];
  v8 = flt_1DE0E7ED4[a3];
  v9 = flt_1DE0E7EE0[a3];
  v10 = dword_1DE0E7EEC[a3];
  buffer->cfNameString = v5;
  buffer->flags = 0x8000000;
  CFStringGetCString(v5, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v6;
  buffer->minValue = v7;
  buffer->maxValue = v8;
  buffer->defaultValue = v9;
  buffer->flags |= v10;
  return result;
}

uint64_t AUClipDetector::GetParameterList(AUClipDetector *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    *a4 = 3;
    result = 0;
    if (a3)
    {
      *a3 = 0x100000000;
      a3[2] = 2;
    }
  }

  else
  {
    *a4 = 0;
    return 4294956430;
  }

  return result;
}

uint64_t AUClipDetector::ProcessMultipleBufferLists(AUClipDetector *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(this + 84) >= a3)
  {
    if (a4 == 1)
    {
      if (a6 == 1)
      {
        v11 = *a5;
        (*(*this + 392))(&v35, this, 1, 0);
        if ((v37[0] & 0x20) != 0)
        {
          v12 = v40;
        }

        else
        {
          v12 = 1;
        }

        if (*v11 == v12)
        {
          v13 = *a7;
          (*(*this + 392))(&v35, this, 2, 0);
          v14 = *v13;
          if ((v37[0] & 0x20) != 0)
          {
            v15 = v40;
          }

          else
          {
            v15 = 1;
          }

          if (v14 == v15)
          {
            if (*(this + 576))
            {
              if (v14)
              {
                v16 = 0;
                v17 = (v13 + 4);
                do
                {
                  bzero(*v17, *(v17 - 1));
                  AUClipDetector::SetParameter(this, 1u, v16, 0.0);
                  AUClipDetector::SetParameter(this, 2u, v16++, -96.0);
                  v17 += 2;
                }

                while (v16 < *v13);
              }
            }

            else if (v14)
            {
              v18 = 0;
              v19 = 4;
              do
              {
                v20 = *&v11[v19];
                v21 = *&v13[v19];
                Element = ausdk::AUScope::GetElement((this + 528), v18);
                Parameter = ausdk::AUElement::GetParameter(Element, 0);
                v35 = 0.0;
                vDSP_maxmgv(v20, 1, &v35, a3);
                if (v35 <= Parameter)
                {
                  bzero(v21, 4 * a3);
                }

                else
                {
                  memcpy(v21, v20, 4 * a3);
                }

                if (v35 <= Parameter)
                {
                  v24 = 0.0;
                }

                else
                {
                  v24 = 1.0;
                }

                AUClipDetector::SetParameter(this, 1u, v18, v24);
                v25 = log10f(v35 / Parameter);
                AUClipDetector::SetParameter(this, 2u, v18++, v25 * 20.0);
                v19 += 4;
              }

              while (v18 < *v13);
            }

            return 0;
          }

          if (getAUClipDetectorLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
          }

          v31 = getAUClipDetectorLog(void)::gLog;
          if (!os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            return 4294956428;
          }

          v33 = *v13;
          v35 = 3.8522e-34;
          v36 = this;
          v37[0] = 1024;
          *&v37[1] = v33;
          v38 = 1024;
          v39 = v15;
          v29 = "[%p] cannot process %u output channel streams (expected channel stream count is %u)";
        }

        else
        {
          if (getAUClipDetectorLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
          }

          v31 = getAUClipDetectorLog(void)::gLog;
          if (!os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            return 4294956428;
          }

          v32 = *v11;
          v35 = 3.8522e-34;
          v36 = this;
          v37[0] = 1024;
          *&v37[1] = v32;
          v38 = 1024;
          v39 = v12;
          v29 = "[%p] cannot process %u input channel streams (expected channel stream count is %u)";
        }
      }

      else
      {
        if (getAUClipDetectorLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
        }

        v31 = getAUClipDetectorLog(void)::gLog;
        if (!os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          return 4294956428;
        }

        v35 = 3.8522e-34;
        v36 = this;
        v37[0] = 1024;
        *&v37[1] = a6;
        v38 = 1024;
        v39 = 1;
        v29 = "[%p] cannot process %u output busses (expected output bus count is %u)";
      }

      v30 = v31;
    }

    else
    {
      if (getAUClipDetectorLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
      }

      v28 = getAUClipDetectorLog(void)::gLog;
      if (!os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956428;
      }

      v35 = 3.8522e-34;
      v36 = this;
      v37[0] = 1024;
      *&v37[1] = a3;
      v38 = 1024;
      v39 = 1;
      v29 = "[%p] cannot process %u input busses (expected input bus count is %u)";
      v30 = v28;
    }

    _os_log_error_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, v29, &v35, 0x18u);
    return 4294956428;
  }

  if (getAUClipDetectorLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
  }

  v27 = getAUClipDetectorLog(void)::gLog;
  if (os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v34 = *(this + 84);
    v35 = 3.8522e-34;
    v36 = this;
    v37[0] = 1024;
    *&v37[1] = a3;
    v38 = 1024;
    v39 = v34;
    _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "[%p] cannot process %u frames (maximum frame size is %u)", &v35, 0x18u);
  }

  return 4294956422;
}

void sub_1DDE71EF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

os_log_t ___Z20getAUClipDetectorLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUClipDetector");
  getAUClipDetectorLog(void)::gLog = result;
  return result;
}

uint64_t AUClipDetector::SetProperty(AUClipDetector *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 0;
    *(this + 376) = *a5 != 0;
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
      *(this + 576) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUClipDetector::GetProperty(AUClipDetector *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 576;
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

uint64_t AUClipDetector::GetPropertyInfo(AUClipDetector *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

    v7 = (*(this + 17) & 1) == 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

uint64_t AUClipDetector::Initialize(AUClipDetector *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (getAUClipDetectorLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
  }

  v2 = getAUClipDetectorLog(void)::gLog;
  if (os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *v8 = 134217984;
    *&v8[4] = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] initialize", v8, 0xCu);
  }

  (*(*this + 392))(v8, this, 1, 0);
  v3 = *v8;
  v4 = v9;
  (*(*this + 392))(v8, this, 2, 0);
  if (v3 != *v8)
  {
    if (getAUClipDetectorLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
    }

    v5 = getAUClipDetectorLog(void)::gLog;
    if (!os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    *v8 = 134217984;
    *&v8[4] = this;
    v6 = "[%p] failed to initialize - I/O sample rates must be equal";
    goto LABEL_16;
  }

  if (v4 == v9)
  {
    (*(*this + 72))(this, 0, 0);
    return 0;
  }

  if (getAUClipDetectorLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
  }

  v5 = getAUClipDetectorLog(void)::gLog;
  if (os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *v8 = 134217984;
    *&v8[4] = this;
    v6 = "[%p] failed to initialize - I/O channel counts must be equal";
LABEL_16:
    _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, v6, v8, 0xCu);
  }

  return 4294956421;
}

void AUClipDetector::~AUClipDetector(AUClipDetector *this)
{
  AUClipDetector::~AUClipDetector(this);

  JUMPOUT(0x1E12BD160);
}

{
  v4 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5928318;
  if (getAUClipDetectorLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
  }

  v2 = getAUClipDetectorLog(void)::gLog;
  if (os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 134217984;
    *&v3[4] = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] destroyed", v3, 0xCu);
  }

  *v3 = this + 544;
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](v3);
  ausdk::AUBase::~AUBase(this);
}

uint64_t AUClipDetector::SetDefaultParameters(AUClipDetector *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *(this + 71);
    result = v3 ? (*(*v3 + 24))(v3) : (*(this + 69) - *(this + 68)) >> 3;
    if (i >= result)
    {
      break;
    }

    AUClipDetector::SetParameter(this, 0, i, 1.0);
    AUClipDetector::SetParameter(this, 1u, i, 0.0);
    AUClipDetector::SetParameter(this, 2u, i, -96.0);
  }

  return result;
}

uint64_t AUClipDetector::AUClipDetector(OpaqueAudioComponentInstance *)::$_0::__invoke<OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int>(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 8)
  {
    v3 = result;
    Element = ausdk::AUScope::GetElement((result + 80), 0);
    if (!Element || (v5 = *(Element + 108), (result = ausdk::AUScope::GetElement((v3 + 10), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (v5 == *(result + 108))
    {
      v6 = v3[71];
      result = v6 ? (*(*v6 + 24))(v6) : (v3[69] - v3[68]) >> 3;
      if (v5 != result)
      {
        ausdk::AUScope::SetNumberOfElements((v3 + 66), v5);
        if (v5)
        {
          for (i = 0; v5 != i; ++i)
          {
            std::to_string(&v16, i);
            v8 = std::string::insert(&v16, 0, "Ch ", 3uLL);
            v9 = *&v8->__r_.__value_.__l.__data_;
            v18 = v8->__r_.__value_.__r.__words[2];
            *__p = v9;
            v8->__r_.__value_.__l.__size_ = 0;
            v8->__r_.__value_.__r.__words[2] = 0;
            v8->__r_.__value_.__r.__words[0] = 0;
            if (v18 >= 0)
            {
              v10 = __p;
            }

            else
            {
              v10 = __p[0];
            }

            if (v10)
            {
              if (v18 >= 0)
              {
                v11 = HIBYTE(v18);
              }

              else
              {
                v11 = __p[1];
              }

              v12 = CFStringCreateWithBytes(0, v10, v11, 0x8000100u, 0);
              v19 = v12;
              if (!v12)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
              }

              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v12 = 0;
              v19 = 0;
              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_21;
              }
            }

            operator delete(__p[0]);
LABEL_21:
            if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }

            v13 = ausdk::AUScope::GetElement((v3 + 66), i);
            ausdk::Owned<__CFString const*>::operator=((v13 + 72), v12);
            v14 = ausdk::AUScope::GetElement((v3 + 66), i);
            (*(*v14 + 40))(v14, 3);
            if (v12)
            {
              CFRelease(v12);
            }
          }
        }

        return AUClipDetector::SetDefaultParameters(v3);
      }
    }
  }

  return result;
}

void sub_1DDE72728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void *AUSM::TuningManager::PopulateReservedGlobalAPACPropertyList(AUSM::TuningManager *this)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__rehash<true>(this + 40, vcvtps_u32_f32(6.0 / *(this + 18)));
  std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,BOOL>>(this + 5, 0xAu);
  std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,BOOL>>(this + 5, 0x1Au);
  std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,BOOL>>(this + 5, 0x3EDu);
  std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,BOOL>>(this + 5, 0xCC3u);
  std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,BOOL>>(this + 5, 0xC1Cu);
  return std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,BOOL>>(this + 5, 0xC24u);
}

void *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,BOOL>>(void *result, unsigned int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

uint64_t AUSM::TuningManager::SetPropertyFromNSObject(AUSM::TuningManager *this, uint64_t a2, uint64_t a3, uint64_t a4, objc_object *a5)
{
  v9 = a5;
  v21 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = (*(**this + 96))(*this, a4, a2, a3, &v21, 8);
      v9 = v21;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = (*(**this + 96))(*this, a4, a2, a3, [(objc_object *)v9 bytes], [(objc_object *)v9 length]);
      }

      else
      {
        v13 = 0xFFFFFFFFLL;
      }
    }

    goto LABEL_19;
  }

  v10 = v9;
  v9 = v10;
  if (v10)
  {
    CFRetain(v10);
    cf = v9;
    v11 = CFGetTypeID(v9);
    if (v11 != CFNumberGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v12 = cf;
  }

  else
  {
    v12 = 0;
    cf = 0;
  }

  Type = CFNumberGetType(v12);
  v13 = 0xFFFFFFFFLL;
  if (Type <= kCFNumberFloatType)
  {
    if (((1 << Type) & 0x218) != 0)
    {
      v19 = [(objc_object *)v9 intValue];
      v16 = (*(**this + 96))(*this, a4, a2, a3, &v19, 4);
    }

    else
    {
      if (((1 << Type) & 0x1060) == 0)
      {
        goto LABEL_16;
      }

      [(objc_object *)v9 floatValue];
      v19 = v15;
      v16 = (*(**this + 96))(*this, a4, a2, a3, &v19, 4);
    }

    v13 = v16;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_19:

  return v13;
}

void sub_1DDE72D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a11);

  _Unwind_Resume(a1);
}

void AUSM::TuningManager::ResetReservedGlobalAPACPropertyList(AUSM::TuningManager *this)
{
  if (*(this + 36) == 1)
  {
    std::mutex::lock((this + 80));
    if (*(this + 8))
    {
      v2 = *(this + 7);
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

      *(this + 7) = 0;
      v4 = *(this + 6);
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          *(*(this + 5) + 8 * i) = 0;
        }
      }

      *(this + 8) = 0;
    }

    AUSM::TuningManager::PopulateReservedGlobalAPACPropertyList(this);

    std::mutex::unlock((this + 80));
  }
}

BOOL AUEndpointVAD::ValidFormat(AUEndpointVAD *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
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

uint64_t AUEndpointVAD::SupportedNumChannels(AUEndpointVAD *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUEndpointVAD::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUEndpointVAD::GetParameterInfo(AUEndpointVAD *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      buffer->cfNameString = @"latest VAD sample time";
      buffer->flags = 1207959552;
      CFStringGetCString(@"latest VAD sample time", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      goto LABEL_13;
    }

    if (a3 != 3)
    {
      return result;
    }

    v7 = @"VAD status changed";
  }

  else
  {
    if (!a3)
    {
      buffer->cfNameString = @"number of VAD results";
      buffer->flags = 1207959552;
      CFStringGetCString(@"number of VAD results", buffer->name, 52, 0x8000100u);
      *&buffer->unit = 0;
      buffer->maxValue = *(this + 84);
      goto LABEL_13;
    }

    if (a3 != 1)
    {
      return result;
    }

    v7 = @"latest VAD status";
  }

  buffer->cfNameString = v7;
  buffer->flags = 1207959552;
  CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
  buffer->unit = kAudioUnitParameterUnit_Generic;
  *&buffer->minValue = 0x3F80000000000000;
LABEL_13:
  result = 0;
  v8 = buffer->flags | 0x8000;
  buffer->defaultValue = 0.0;
  buffer->flags = v8;
  return result;
}

uint64_t AUEndpointVAD::Render(AUEndpointVAD *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
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
      if (!*(v13 + 144) || (v15[0] = *(v13 + 152) + 48, !*(v11 + 144)))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v14 = *(v11 + 152) + 48;
      return (*(*this + 184))(this, a2, a4, 1, v15, 1, &v14);
    }

LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUEndpointVAD::ProcessMultipleBufferLists(AUEndpointVAD *this, unsigned int *a2, uint64_t a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a3)
  {
    return 4294956422;
  }

  if (((*(*this + 576))(this, a2) & 1) == 0)
  {
    v12 = *(this + 66);
    v13 = *a5;
    v14 = *(this + 34);
    v15 = vcvtms_u32_f32(*(v12 + 36) * v14);
    v61 = a3;
    *(v12 + 128) = v15;
    v16 = *(v13 + 16);
    v17 = *(*(v12 + 200) + 16);
    v60 = (*(**(v12 + 48) + 144))(*(v12 + 48), a3);
    (*(**(v12 + 48) + 32))(*(v12 + 48), v16, 0, v17, 0, &v61, &v60, 1, 1);
    v18 = v60;
    *(v12 + 208) = v60;
    v62 = *(v12 + 200);
    *buf = v62;
    *(v12 + 32) = 0;
    v7 = BlockProcessor::Process((v12 + 56), v18, buf, &v62);
    v20 = *(this + 66);
    v21 = *(this + 74);
    v22 = *(v20 + 224);
    v23 = *(v20 + 212);
    v24 = *(v22 + 152);
    *(this + 146) = 0;
    if (v24 < 0 || *(v22 + 152) < v23 || (EndpointVADRTViterbi::decodeStateSequence(v22, *(v22 + 148), v23), v25 = *(v22 + 152) - v23, *(this + 146) = v25 + 1, v25 == -1))
    {
      LODWORD(v26) = 0;
    }

    else
    {
      v50 = *(v22 + 24);
      v51 = (v50 + 4 * v23);
      do
      {
        v52 = *v51++;
        *v21++ = v52;
        v26 = *(this + 146);
      }

      while (v51 != (v50 + 4 * (v26 + v23)));
    }

    *(v20 + 212) += v26;
    v27 = *(this + 67);
    v28 = *(this + 74);
    if (v27[1] >= v26)
    {
      *(v27 + 64) = 0;
      v30 = v27 + 16;
      if (!v26)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    if (EndpointVADLogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVADLogScope(void)::once, &__block_literal_global_25244);
    }

    if (EndpointVADLogScope(void)::scope)
    {
      v29 = *EndpointVADLogScope(void)::scope;
      if (!*EndpointVADLogScope(void)::scope)
      {
LABEL_21:
        *(v27 + 64) = 0;
        v30 = v27 + 16;
LABEL_22:
        v31 = v26;
        v32 = *(v27 + 3);
        do
        {
          v33 = *v28++;
          LODWORD(v19) = v33;
          *(&v19 + 1) = v32;
          v34 = *(v27 + 2);
          v35 = *(v34 + 12);
          v36 = *(*v34 + 16 * (v35 % *(v34 + 8)));
          *(*v34 + 16 * v35) = v19;
          *(v34 + 12) = (*(v34 + 12) + 1) % *(v34 + 8);
          v37 = *(v27 + 5);
          ++*(v37 + 4 * v33);
          v38 = v27[2];
          if (v38 == v27[1])
          {
            --*(v37 + 4 * v36);
          }

          else
          {
            v27[2] = v38 + 1;
          }

          v32 = *(v27 + 3) + 1.0;
          *(v27 + 3) = v32;
          --v31;
        }

        while (v31);
LABEL_27:
        v39 = *v27;
        if (!v39)
        {
LABEL_51:
          *v30 = v39;
          v53 = *(this + 67);
          v54 = *(v53 + 64);
          v55 = *(v53 + 48);
          v56 = *(v53 + 56);
          *(this + 154) = v54;
          if (v54)
          {
            *(this + 150) = v55;
            *(this + 76) = v56;
          }

          AUEndpointVAD::UpdateParameters(this);
          goto LABEL_54;
        }

        v40 = 0;
        v41 = 0;
        v42 = -1;
        do
        {
          v43 = *(*(v27 + 5) + 4 * v40);
          if (v43 >= *(*(v27 + 4) + 4 * v40) && v43 > v41)
          {
            v42 = v40;
            v41 = *(*(v27 + 5) + 4 * v40);
          }

          ++v40;
        }

        while (v39 != v40);
        if (v42 < 0 || v42 == v27[12])
        {
          LOBYTE(v39) = 0;
          goto LABEL_51;
        }

        v27[12] = v42;
        v44 = v27[1];
        v45 = v27[2];
        v46 = v44 - v45;
        if (v44 - v45 < v44)
        {
          v47 = *(v27 + 2);
          while (v42 != MRRingBuffer<StateEvent>::GetSample(v47, v46))
          {
            ++v46;
            if (!--v45)
            {
              goto LABEL_39;
            }
          }

          *(v27 + 7) = v48;
          goto LABEL_50;
        }

LABEL_39:
        if (EndpointVADLogScope(void)::once != -1)
        {
          dispatch_once(&EndpointVADLogScope(void)::once, &__block_literal_global_25244);
        }

        if (EndpointVADLogScope(void)::scope)
        {
          v49 = *EndpointVADLogScope(void)::scope;
          if (!*EndpointVADLogScope(void)::scope)
          {
LABEL_50:
            v27[2] = 0;
            bzero(*(v27 + 5), 4 * *v27);
            LOBYTE(v39) = 1;
            goto LABEL_51;
          }
        }

        else
        {
          v49 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "EndpointVADSegmentHeuristics.cpp";
          v64 = 1024;
          v65 = 163;
          _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d EndpointVADSegmentHeuristics: Transition state value not found in the history buffer!", buf, 0x12u);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "EndpointVADSegmentHeuristics.cpp";
      v64 = 1024;
      v65 = 75;
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d EndpointVADSegmentHeuristics: Input VAD sequence exceeded the internal history size.", buf, 0x12u);
    }

    goto LABEL_21;
  }

  v7 = 0;
LABEL_54:
  mData = (*a5)->mBuffers[0].mData;
  v58 = (*a7)->mBuffers[0].mData;
  if (mData != v58)
  {
    memcpy(v58, mData, (*a5)->mBuffers[0].mDataByteSize);
  }

  return v7;
}

void AUEndpointVAD::UpdateParameters(AUEndpointVAD *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (ausdk::AUElement::SetParameter(v2, 0, *(this + 146)), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (ausdk::AUElement::SetParameter(v4, 1u, *(this + 150)), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (v8 = *(this + 76), ausdk::AUElement::SetParameter(v6, 2u, v8), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v10 & 1) == 0))
  {
    abort();
  }

  v11 = *(this + 154);

  ausdk::AUElement::SetParameter(v9, 3u, v11);
}

uint64_t AUEndpointVAD::SetProperty(AUEndpointVAD *this, int a2, int a3, unsigned int a4, CFDictionaryRef theDict, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 > 64004)
  {
    if (a2 > 64007)
    {
      if (a2 == 64008)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        if (!a6)
        {
          return 4294956445;
        }

        v16 = *(this + 68);
        if (v16)
        {
          CFRelease(v16);
          *(this + 68) = 0;
        }

        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
        result = 0;
        *(this + 68) = Copy;
      }

      else
      {
        if (a2 != 64009)
        {
          return 4294956417;
        }

        if (*(this + 17))
        {
          return 4294956447;
        }

        if (!a6)
        {
          return 4294956445;
        }

        v12 = *(this + 69);
        if (v12)
        {
          CFRelease(v12);
          *(this + 69) = 0;
        }

        v13 = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
        result = 0;
        *(this + 69) = v13;
      }
    }

    else
    {
      if ((a2 - 64006) < 2)
      {
        return 4294956431;
      }

      if (a2 != 64005)
      {
        return 4294956417;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      result = 4294956445;
      if (a6)
      {
        v14 = *theDict;
        *(this + 145) = *theDict;
        if (v14 <= 1.0 && v14 > 0.0)
        {
          return 0;
        }

        else
        {
          return 4294956445;
        }
      }
    }
  }

  else if (a2 > 64001)
  {
    if (a2 == 64002)
    {
      if ((*(this + 17) & 1) == 0)
      {
        if (a6)
        {
          result = 0;
          *(this + 142) = *theDict;
          return result;
        }

        return 4294956445;
      }

      return 4294956447;
    }

    if (a2 == 64003)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      result = 4294956445;
      if (a6)
      {
        v18 = *theDict;
        *(this + 143) = *theDict;
        if (v18 >= 0.0)
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
      if (*(this + 17))
      {
        return 4294956447;
      }

      result = 4294956445;
      if (a6)
      {
        v11 = *theDict;
        *(this + 144) = *theDict;
        if (v11 <= 0.0)
        {
          return 4294956445;
        }

        else
        {
          return 0;
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
          *(this + 376) = *theDict;
          return result;
        }

        return 4294956445;
      }

      if (a2 == 64001)
      {
        if ((*(this + 17) & 1) == 0)
        {
          if (a6)
          {
            v9 = *(this + 70);
            if (v9)
            {
              CFRelease(v9);
              *(this + 70) = 0;
            }

            v10 = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
            result = 0;
            *(this + 70) = v10;
            return result;
          }

          return 4294956445;
        }

        return 4294956447;
      }

      return 4294956417;
    }

    if (a6 < 4)
    {
      return 4294956445;
    }

    v19 = *theDict;
    v20 = *theDict != 0;
    if (v20 != (*(*this + 576))(this))
    {
      (*(*this + 584))(this, v19 != 0);
    }

    return 0;
  }

  return result;
}

uint64_t AUEndpointVAD::GetProperty(AUEndpointVAD *this, int a2, int a3, unsigned int a4, char *__dst)
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
        result = 0;
        v8 = *(this + 144);
      }

      else
      {
        if (a2 != 64005)
        {
          result = 0;
          *__dst = 0x4054D555524B8E39;
          *(__dst + 8) = xmmword_1DE09BD50;
          *(__dst + 24) = xmmword_1DE09BD60;
          return result;
        }

        result = 0;
        v8 = *(this + 145);
      }

      goto LABEL_27;
    }

    switch(a2)
    {
      case 64007:
        memcpy(__dst, *(this + 74), 4 * *(this + 146));
        return 0;
      case 64008:
        v9 = *MEMORY[0x1E695E480];
        v10 = *(this + 68);
        break;
      case 64009:
        v9 = *MEMORY[0x1E695E480];
        v10 = *(this + 69);
        break;
      default:
        return result;
    }

LABEL_25:
    Copy = CFDictionaryCreateCopy(v9, v10);
    result = 0;
    *__dst = Copy;
    return result;
  }

  if (a2 <= 64000)
  {
    if (a2 == 21)
    {
      v11 = (*(*this + 576))(this);
      result = 0;
    }

    else
    {
      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v11 = *(this + 376);
    }

    *__dst = v11;
    return result;
  }

  if (a2 == 64001)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = *(this + 70);
    goto LABEL_25;
  }

  result = 0;
  if (a2 == 64002)
  {
    v8 = *(this + 142);
  }

  else
  {
    v8 = *(this + 143);
  }

LABEL_27:
  *__dst = v8;
  return result;
}

uint64_t AUEndpointVAD::GetPropertyInfo(AUEndpointVAD *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  v6 = 4294956417;
  if (a3)
  {
    return v6;
  }

  if (a2 <= 64003)
  {
    if (a2 <= 64000)
    {
      if (a2 == 21)
      {
        v8 = 1;
        goto LABEL_17;
      }

      if (a2 != 3700)
      {
        return v6;
      }
    }

    else if (a2 == 64001)
    {
      goto LABEL_13;
    }

LABEL_16:
    v8 = *(this + 17) ^ 1;
LABEL_17:
    *a6 = v8;
    v7 = 4;
    goto LABEL_18;
  }

  if (a2 <= 64006)
  {
    if (a2 != 64004 && a2 != 64005)
    {
      *a6 = *(this + 17) ^ 1;
      v7 = 40;
LABEL_18:
      v6 = 0;
      *a5 = v7;
      return v6;
    }

    goto LABEL_16;
  }

  if (a2 == 64007)
  {
    *a6 = 0;
    v7 = 4 * *(this + 146);
    goto LABEL_18;
  }

  if (a2 == 64008 || a2 == 64009)
  {
LABEL_13:
    *a6 = *(this + 17) ^ 1;
    v7 = 8;
    goto LABEL_18;
  }

  return v6;
}

EndpointVAD *AUEndpointVAD::Cleanup(AUEndpointVAD *this)
{
  result = *(this + 66);
  if (result)
  {
    result = EndpointVAD::Uninitialize(result);
  }

  if (*(this + 17) == 1)
  {
    std::unique_ptr<EndpointVAD>::reset[abi:ne200100](this + 66, 0);
    std::unique_ptr<EndpointVADSegmentHeuristics>::reset[abi:ne200100](this + 67, 0);
    v3 = *(this + 70);
    if (v3)
    {
      CFRelease(v3);
      *(this + 70) = 0;
    }

    v4 = *(this + 68);
    if (v4)
    {
      CFRelease(v4);
      *(this + 68) = 0;
    }

    v5 = *(this + 69);
    if (v5)
    {
      CFRelease(v5);
      *(this + 69) = 0;
    }

    result = *(this + 74);
    if (result)
    {
      result = MEMORY[0x1E12BD160](result, 0x1000C4052888210);
      *(this + 74) = 0;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<EndpointVAD>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    EndpointVAD::Uninitialize(v2);
    if (*(v2 + 120) == 1)
    {
      BlockBuffer::~BlockBuffer((v2 + 80));
      BlockBuffer::~BlockBuffer((v2 + 56));
    }

    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<EndpointVADSegmentHeuristics>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      if (*v3)
      {
        MEMORY[0x1E12BD130](*v3, 0x1000C80F7F8B94BLL);
      }

      MEMORY[0x1E12BD160](v3, 0x1020C40EDED9539);
    }

    v4 = v2[4];
    if (v4)
    {
      MEMORY[0x1E12BD160](v4, 0x1000C4052888210);
    }

    v5 = v2[5];
    if (v5)
    {
      MEMORY[0x1E12BD160](v5, 0x1000C4052888210);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUEndpointVAD::Initialize(AUEndpointVAD *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = (this + 80);
  (*(*this + 64))(this);
  Element = ausdk::AUScope::GetElement(v2, 0);
  if (!Element || (v4 = *(Element + 80), (v5 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (v4 == *(v5 + 80))
  {
    if (*(this + 70))
    {
      goto LABEL_6;
    }

    if (EndpointVADLogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVADLogScope(void)::once, &__block_literal_global_25244);
    }

    if (EndpointVADLogScope(void)::scope)
    {
      v7 = *EndpointVADLogScope(void)::scope;
      if (!*EndpointVADLogScope(void)::scope)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      inDesc.componentType = 136315394;
      *&inDesc.componentSubType = "AUEndpointVAD.cpp";
      LOWORD(inDesc.componentFlags) = 1024;
      *(&inDesc.componentFlags + 2) = 96;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUEndpointVAD: The model dictionary property is unset (required).", &inDesc, 0x12u);
    }

LABEL_6:
    operator new();
  }

  return 4294956421;
}

void sub_1DDE75124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t ****__p, uint64_t ****a28, uint64_t a29, uint64_t ***a30, uint64_t a31, uint64_t a32, uint64_t **a33, uint64_t a34, uint64_t a35, uint64_t *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  __p = &a30;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a30 = &a33;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a33 = &a36;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a33);
  a36 = &a39;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a36);
  a39 = a11;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a39);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a39);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void AUEndpointVAD::~AUEndpointVAD(AUEndpointVAD *this)
{
  AUEndpointVAD::~AUEndpointVAD(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5928588;
  AUEndpointVAD::Cleanup(this);
  std::unique_ptr<EndpointVADSegmentHeuristics>::reset[abi:ne200100](this + 67, 0);
  std::unique_ptr<EndpointVAD>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUMeisterStueck::deleteAlgorithms(AUMeisterStueck *this)
{
  AUMeisterStueck::deletePhaseCompensators(this);
  AUDspLib::deleteAlgorithms(this);
  return 0;
}

uint64_t AUMeisterStueck::deletePhaseCompensators(AUMeisterStueck *this)
{
  caulk::pooled_semaphore_mutex::_lock((this + 1824));
  v2 = 0;
  v3 = this + 2144;
  do
  {
    v4 = *&v3[v2];
    if (v4)
    {
      *&v3[v2] = 0;
      (*(*v4 + 8))(v4);
    }

    v2 += 8;
  }

  while (v2 != 2448);

  return caulk::pooled_semaphore_mutex::_unlock((this + 1824));
}

uint64_t AUMeisterStueck::createAlgorithms(AUMeisterStueck *this)
{
  if (*(this + 397) == 1)
  {
    v2 = 0;
    v3 = *(this + 265);
    v4 = *(this + 266);
    while (1)
    {
      v5 = v3 == v4 ? 0 : *v3;
      if (v2 >= v5)
      {
        break;
      }

      for (i = 0; ; ++i)
      {
        v7 = v3 == v4 ? 0 : *v3;
        if (i >= v7)
        {
          break;
        }

        PhaseCompensatorRef = AUMeisterStueck::getPhaseCompensatorRef(this, i, v2);
        if (PhaseCompensatorRef)
        {
          if (!*PhaseCompensatorRef)
          {
            operator new();
          }
        }

        v3 = *(this + 265);
        v4 = *(this + 266);
      }

      ++v2;
    }

    v9 = 0;
    for (j = 544; ; j += 56)
    {
      v11 = v3 == v4 ? 0 : *v3;
      if (v9 >= v11)
      {
        break;
      }

      AUMeisterStueck::setPhaseCompensatorParameters(this, v9++, *(this + j));
      v3 = *(this + 265);
      v4 = *(this + 266);
    }

    *(this + 4592) = AUMeisterStueck::needPhaseCompensator(this);
  }

  AUDspLib::createAlgorithms(this);
  return 0;
}

BOOL AUMeisterStueck::needPhaseCompensator(AUMeisterStueck *this)
{
  v1 = this;
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0x6800000066;
  v11 = 106;
  v2 = this + 528;
  v3 = 1;
LABEL_2:
  v4 = *(v1 + 265);
  if (v4 == *(v1 + 266))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  if (v3 < v5)
  {
    v6 = 0;
    v7 = &v2[56 * v3];
    while (1)
    {
      LOBYTE(this) = DspLib::isEqual(this, *(*(v1 + 68) + 4 * dword_1DE0E7EFC[v6]), *(*(v7 + 2) + 4 * dword_1DE0E7EFC[v6]), 0.5);
      if ((this & 1) == 0)
      {
        break;
      }

      if (++v6 == 7)
      {
        v8 = 0;
        while (vcvtas_u32_f32(*(*(v1 + 68) + 4 * *(&v10 + v8)) * 0.5) == vcvtas_u32_f32(*(*(v7 + 2) + 4 * *(&v10 + v8)) * 0.5))
        {
          v8 += 4;
          if (v8 == 12)
          {
            ++v3;
            goto LABEL_2;
          }
        }

        return v3 < v5;
      }
    }
  }

  return v3 < v5;
}

char *AUMeisterStueck::setPhaseCompensatorParameters(char *this, unsigned int a2, float *a3)
{
  v5 = this;
  for (i = 0; ; ++i)
  {
    v7 = *(v5 + 2120);
    v8 = v7 == *(v5 + 2128) ? 0 : *v7;
    if (i >= v8)
    {
      break;
    }

    this = AUMeisterStueck::getPhaseCompensatorRef(v5, i, a2);
    if (this)
    {
      v10 = this;
      this = *this;
      if (this)
      {
        LODWORD(v9) = *(v5 + 1812);
        (*(*this + 24))(this, 1, v9);
        this = (*(**v10 + 160))(*v10, a3, 138, 0);
      }
    }
  }

  return this;
}

char *AUMeisterStueck::getPhaseCompensatorRef(AUMeisterStueck *this, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    if (a2 <= a3)
    {
      return 0;
    }

    v3 = this + 2144;
    v6 = *(this + 265);
    if (v6 == *(this + 266))
    {
      v7 = -1;
    }

    else
    {
      v7 = *v6 - 1;
    }

    v9 = a3 + v7 * a2;
  }

  else
  {
    v3 = this + 2144;
    v4 = *(this + 265);
    if (v4 == *(this + 266))
    {
      v5 = -1;
    }

    else
    {
      v5 = *v4 - 1;
    }

    v9 = a3 + v5 * a2 - 1;
  }

  return &v3[8 * v9];
}

uint64_t AUMeisterStueck::RestoreState(id *this, void *a2)
{
  [this[575] removeAllObjects];
  v4 = this[575];
  v5 = [a2 objectForKey:@"automation"];
  DeepCopy = CFPropertyListCreateDeepCopy(0, v5, 0);
  [v4 addEntriesFromDictionary:DeepCopy];

  v7 = AUDspLib::RestoreState(this, a2);
  AUMeisterStueck::loadAutomation(this, this[575]);
  return v7;
}

void AUMeisterStueck::loadAutomation(AUMeisterStueck *this, NSDictionary *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a2;
  v2 = [(NSDictionary *)obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v2)
  {
    v27 = *v48;
    do
    {
      v28 = 0;
      v3 = v2;
      do
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v47 + 1) + 8 * v28);
        v34 = [v30 integerValue];
        if ((*(*this + 632))(this, v34))
        {
          v4 = (*(*this + 632))(this, v34);
          DspLib::MeisterStueck::Automation::clear((v4 + 1816));
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v5 = [(NSDictionary *)obj objectForKeyedSubscript:v30];
          v33 = [v5 countByEnumeratingWithState:&v43 objects:v55 count:16];
          if (v33)
          {
            v29 = *v44;
            v38 = v5;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v44 != v29)
                {
                  objc_enumerationMutation(v5);
                }

                v36 = *(*(&v43 + 1) + 8 * i);
                v35 = (*(*this + 632))(this, v34);
                v6 = [(NSDictionary *)obj objectForKeyedSubscript:v30];
                v7 = [v6 objectForKeyedSubscript:v36];
                v41 = 0;
                v42 = 0;
                __p = 0;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v39 = v7;
                v8 = [v39 countByEnumeratingWithState:&v51 objects:v57 count:16];
                if (v8)
                {
                  v9 = *v52;
                  v10 = v6;
                  do
                  {
                    for (j = 0; j != v8; ++j)
                    {
                      if (*v52 != v9)
                      {
                        objc_enumerationMutation(v39);
                      }

                      v12 = *(*(&v51 + 1) + 8 * j);
                      v13 = [v12 objectAtIndexedSubscript:0];
                      [v13 floatValue];
                      v15 = v14;
                      v16 = [v12 objectAtIndexedSubscript:1];
                      [v16 floatValue];
                      v18 = v41;
                      if (v41 >= v42)
                      {
                        v20 = (v41 - __p) >> 3;
                        v21 = v20 + 1;
                        if ((v20 + 1) >> 61)
                        {
                          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                        }

                        v22 = v42 - __p;
                        if ((v42 - __p) >> 2 > v21)
                        {
                          v21 = v22 >> 2;
                        }

                        if (v22 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v23 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v23 = v21;
                        }

                        if (v23)
                        {
                          std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&__p, v23);
                        }

                        v24 = (8 * v20);
                        *v24 = v15;
                        v24[1] = v17;
                        v19 = 8 * v20 + 8;
                        v25 = (8 * v20 - (v41 - __p));
                        memcpy(v24 - (v41 - __p), __p, v41 - __p);
                        v26 = __p;
                        __p = v25;
                        v41 = v19;
                        v42 = 0;
                        if (v26)
                        {
                          operator delete(v26);
                        }

                        v5 = v38;
                      }

                      else
                      {
                        *v41 = v15;
                        *(v18 + 1) = v17;
                        v19 = (v18 + 8);
                      }

                      v41 = v19;

                      v2 = v3;
                      v6 = v10;
                    }

                    v8 = [v39 countByEnumeratingWithState:&v51 objects:v57 count:16];
                  }

                  while (v8);
                }

                DspLib::MeisterStueck::Algorithm::setAutomationForParameter(v35, &__p, [v36 integerValue]);
                if (__p)
                {
                  v41 = __p;
                  operator delete(__p);
                }
              }

              v33 = [v5 countByEnumeratingWithState:&v43 objects:v55 count:16];
            }

            while (v33);
          }
        }

        ++v28;
      }

      while (v28 != v2);
      v2 = [(NSDictionary *)obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v2);
  }
}

uint64_t AUMeisterStueck::SaveState(AUMeisterStueck *this, ausdk **a2)
{
  v2 = a2;
  v3 = this;
  v38[2] = *MEMORY[0x1E69E9840];
  AUDspLib::SaveState(this, a2);
  if (*(v3 + 17) == 1)
  {
    v27 = v2;
    [*(v3 + 575) removeAllObjects];
    v32 = v3;
    v28 = *(v3 + 575);
    v29 = [MEMORY[0x1E695DF90] dictionary];
    v4 = 0;
    v5 = v3;
    v30 = v3 + 528;
    while (1)
    {
      v6 = v5;
      if (*(v5 + 397))
      {
        v7 = *(v5 + 265);
        v8 = v7 == *(v6 + 266) ? 0 : *v7;
      }

      else
      {
        v8 = 1;
      }

      if (v4 >= v8)
      {
        break;
      }

      if (*&v30[56 * v4])
      {
        v31 = v4;
        v9 = (*(*v32 + 632))(v32, v4);
        v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = v9[227];
        v11 = v9[228];
        v34 = v11;
        while (v10 != v11)
        {
          v12 = *v10;
          if (*((*(*v9 + 152))(v9, 0) + 4 * (25 * (v12 / 0x19) + 22)) >= 0.5)
          {
            v13 = DspLib::MeisterStueck::Automation::automationForParameter((v9 + 227), v12);
            __p = 0;
            v36 = 0;
            v37 = 0;
            std::vector<DspLib::PiecewiseLinearInterpolation::SetPoint>::__init_with_size[abi:ne200100]<DspLib::PiecewiseLinearInterpolation::SetPoint*,DspLib::PiecewiseLinearInterpolation::SetPoint*>(&__p, *v13, v13[1], (v13[1] - *v13) >> 3);
            v14 = [MEMORY[0x1E695DF70] array];
            v17 = __p;
            v16 = v36;
            while (v17 != v16)
            {
              LODWORD(v15) = *v17;
              v18 = v17[1];
              v19 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
              v38[0] = v19;
              LODWORD(v20) = v18;
              v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
              v38[1] = v21;
              v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
              [v14 addObject:v22];

              v17 += 2;
            }

            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v12];
            [v33 setValue:v14 forKey:v23];

            if (__p)
            {
              v36 = __p;
              operator delete(__p);
            }
          }

          ++v10;
          v11 = v34;
        }

        v4 = v31;
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v31];
        [v29 setValue:v33 forKey:v24];
      }

      ++v4;
      v5 = v32;
    }

    [v28 addEntriesFromDictionary:v29];

    v3 = v32;
    v2 = v27;
  }

  v25 = *v2;
  applesauce::CF::StringRef::get_ns(v25);
  [objc_claimAutoreleasedReturnValue() setObject:*(v3 + 575) forKey:@"automation"];

  return 0;
}

uint64_t AUMeisterStueck::ProcessBufferLists(AUMeisterStueck *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v9 = 0;
    p_mData = &a3->mBuffers[0].mData;
    for (i = &a4->mBuffers[0].mData; ; i += 2)
    {
      v12 = *(this + 265);
      v13 = v12 == *(this + 266) ? 0 : *v12;
      if (v9 >= v13)
      {
        break;
      }

      if (*p_mData != *i)
      {
        memcpy(*i, *p_mData, 4 * a5);
      }

      ++v9;
      p_mData += 2;
    }
  }

  if ((*(this + 2113) & 1) == 0 && *(this + 397) == 1 && caulk::pooled_semaphore_mutex::try_lock((this + 1824)))
  {
    v14 = 0;
    v15 = 0;
    for (j = (this + 572); ; j += 14)
    {
      v17 = *(this + 265);
      v18 = *(this + 266);
      v19 = v17 == v18 ? 0 : *v17;
      if (v14 >= v19)
      {
        break;
      }

      if (*(j - 1) != *j)
      {
        AUMeisterStueck::setPhaseCompensatorParameters(this, v14, *(j - 7));
        v15 = 1;
      }

      ++v14;
    }

    if (v15)
    {
      v20 = AUMeisterStueck::needPhaseCompensator(this);
      *(this + 4592) = v20;
      if (v20)
      {
        v17 = *(this + 265);
        v18 = *(this + 266);
        goto LABEL_25;
      }
    }

    else if (*(this + 4592))
    {
LABEL_25:
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = v17 == v18 ? 0 : *v17;
        if (v21 >= v23)
        {
          break;
        }

        for (k = 0; ; ++k)
        {
          v25 = v17 == v18 ? -1 : *v17 - 1;
          if (k >= v25)
          {
            break;
          }

          v26 = *(this + v22 + 268);
          if (v26)
          {
            (*(*v26 + 184))(v26, a4->mBuffers[v21].mData, a5);
            v17 = *(this + 265);
            v18 = *(this + 266);
          }

          ++v22;
        }

        ++v21;
      }
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 1824));
  }

  v28 = a4;
  v29 = a4;
  return (*(*this + 184))(this, a2, a5, 1, &v29, 1, &v28);
}

uint64_t AUMeisterStueck::SetParameter(AUMeisterStueck *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2 == 79)
  {
    v9 = 0;
    for (i = (this + 552); ; i += 7)
    {
      if (*(this + 397))
      {
        v11 = *(this + 265);
        v12 = v11 == *(this + 266) ? 0 : *v11;
      }

      else
      {
        v12 = 1;
      }

      if (v9 >= v12)
      {
        break;
      }

      if ((*(*this + 632))(this, v9))
      {
        v13 = (*(*this + 632))(this, v9);
        (*(*v13 + 120))(v13, 135, a5);
        v14 = *(i - 1);
        if (*i != v14)
        {
          *(v14 + 540) = a5;
        }
      }

      ++v9;
    }

    return ausdk::AUBase::SetParameter(this, 0x4Fu, a3, a4, a5);
  }

  else
  {

    return AUDspLib::SetParameter(this, a2, a3, a4, a5);
  }
}

uint64_t AUMeisterStueck::SetProperty(id *this, int a2, int a3, uint64_t a4, id *a5, void *a6, int *a7)
{
  if (a2 == 6620)
  {
    if (a6 == 8)
    {
      v9 = applesauce::CF::StringRef::get_ns(*a5);
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a4];
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = [this[575] objectForKeyedSubscript:v10];
      [v11 addEntriesFromDictionary:v12];

      [v11 addEntriesFromDictionary:v9];
      [this[575] setObject:v11 forKey:v10];

      AUMeisterStueck::loadAutomation(this, this[575]);
      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {

    return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t AUMeisterStueck::GetProperty(id *this, int a2, unsigned int a3, uint64_t a4, unint64_t *a5, int *a6)
{
  if (a2 == 6620)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a4];
    *a5 = [this[575] objectForKeyedSubscript:v8];

    return 0;
  }

  else
  {

    return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
  }
}

uint64_t AUMeisterStueck::GetPropertyInfo(AUMeisterStueck *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 6620)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  *a5 = 8;
  *a6 = 1;
  return 0;
}

uint64_t AUMeisterStueck::Reset(AUMeisterStueck *this)
{
  if (*(this + 17) == 1)
  {
    for (i = 0; i != 2448; i += 8)
    {
      caulk::pooled_semaphore_mutex::_lock((this + 1824));
      v3 = *(this + i + 2144);
      if (v3)
      {
        (*(*v3 + 168))(v3);
      }

      caulk::pooled_semaphore_mutex::_unlock((this + 1824));
    }
  }

  AUDspLib::Reset(this);
  return 0;
}

double AUMeisterStueck::Cleanup(AUMeisterStueck *this)
{
  AUMeisterStueck::deletePhaseCompensators(this);
  (*(*this + 592))(this);
  *(this + 1585) = 0;
  result = 0.0;
  *(this + 226) = 0;
  *(this + 230) = *(this + 229);
  *(this + 233) = *(this + 232);
  *(this + 266) = *(this + 265);
  return result;
}

uint64_t AUMeisterStueck::Initialize(NSDictionary **this)
{
  v2 = AUDspLib::Initialize(this);
  AUMeisterStueck::loadAutomation(this, this[575]);
  return v2;
}

void AUMeisterStueck::~AUMeisterStueck(id *this)
{
  AUMeisterStueck::~AUMeisterStueck(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59287E8;
  AUMeisterStueck::deletePhaseCompensators(this);
  (*(*this + 74))(this);
  *(this + 1585) = 0;
  this[226] = 0;
  this[230] = this[229];
  this[233] = this[232];
  this[266] = this[265];

  for (i = 573; i != 267; --i)
  {
    v3 = this[i];
    this[i] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  AUDspLib::~AUDspLib(this);
}

void AUMeisterStueck::AUMeisterStueck(AUMeisterStueck *this, OpaqueAudioComponentInstance *a2)
{
  v6 = 0uLL;
  v7 = 0;
  v3 = AUDspLib::AUDspLib(this, a2, &kParameterList, &v6, @"AUMeisterStueck_ViewFactory", 1);
  *v3 = &unk_1F59287E8;
  v3[575] = 0;
  bzero(v3 + 268, 0x991uLL);
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = *(this + 575);
  *(this + 575) = v4;
}

void sub_1DDE76D1C(_Unwind_Exception *a1)
{
  v3 = 573;
  while (1)
  {
    v4 = v1[v3];
    v1[v3] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (--v3 == 267)
    {
      AUDspLib::~AUDspLib(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AUJBase::SetBypass(AUJBase *this, char a2)
{
  result = (*(*this + 600))(this);
  if (result)
  {
    *(this + 552) = a2;
  }

  return result;
}

void AULoudnessWarrior::GetValidChannelCounts(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

BOOL AULoudnessWarrior::ValidFormat(AULoudnessWarrior *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (a4->mSampleRate < 8000.0)
  {
    return 0;
  }

  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    return (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  return result;
}

uint64_t AULoudnessWarrior::NewFactoryPresetSet(AULoudnessWarrior *this, const AUPreset *a2)
{
  if (a2->presetNumber)
  {
    return 4294956445;
  }

  for (i = 0; i != 41; ++i)
  {
    (*(*this + 152))(this, i, 0, 0, 0, kPresetParamVals[i]);
  }

  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, &kAuPresets);
  return 0;
}

uint64_t AULoudnessWarrior::GetPresets(AULoudnessWarrior *this, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(0, 1, 0);
    CFArrayAppendValue(Mutable, &kAuPresets);
    *a2 = Mutable;
  }

  return 0;
}

uint64_t AULoudnessWarrior::CopyClumpName(AULoudnessWarrior *this, int a2, unsigned int a3, unsigned int a4, const __CFString **a5)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3 > 3)
  {
    return 4294956418;
  }

  v7 = CFStringCreateWithCString(0, off_1E866C490[a3], 0x8000100u);
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AULoudnessWarrior::GetParameterValueStrings(AULoudnessWarrior *this, int a2, unsigned int a3, const __CFArray **a4)
{
  v12 = *MEMORY[0x1E69E9840];
  result = 4294956418;
  if (!a2 && a3 <= 0x28)
  {
    if (((1 << a3) & 0x80100200) != 0)
    {
      if (a4)
      {
        v8 = xmmword_1E866C440;
        v9 = *&off_1E866C450;
        v10 = xmmword_1E866C460;
        v11 = @"High-pass RMS";
        v6 = 7;
        goto LABEL_9;
      }
    }

    else
    {
      if (((1 << a3) & 0x10020040000) == 0)
      {
        return result;
      }

      if (a4)
      {
        v8 = xmmword_1E866C478;
        *&v9 = @"Correct Both";
        v6 = 3;
LABEL_9:
        v7 = CFArrayCreate(0, &v8, v6, 0);
        result = 0;
        *a4 = v7;
        return result;
      }
    }

    return 0;
  }

  return result;
}

__n128 AULoudnessWarrior::GetParameterInfo(AULoudnessWarrior *this, int a2, int a3, AudioUnitParameterInfo *a4)
{
  if (!a2)
  {
    v4 = &gLWParams;
    v5 = 4592;
    while (*v4 != a3)
    {
      v4 += 28;
      v5 -= 112;
      if (!v5)
      {
        return result;
      }
    }

    v6 = *(v4 + 2);
    v7 = *(v4 + 10);
    *&a4->name[16] = *(v4 + 6);
    *&a4->name[32] = v7;
    *a4->name = v6;
    result = *(v4 + 14);
    v9 = *(v4 + 18);
    v10 = *(v4 + 22);
    *&a4->flags = *(v4 + 13);
    *&a4->clumpID = v9;
    *&a4->unit = v10;
    *&a4->name[48] = result;
  }

  return result;
}

uint64_t AULoudnessWarrior::ProcessMultipleBufferLists(AULoudnessWarrior *this, unsigned int *a2, uint64_t a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
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

uint64_t AULoudnessWarrior::ProcessBufferLists(AULoudnessWarrior *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  v96 = a5;
  v103 = *MEMORY[0x1E69E9840];
  v8 = (this + 2752);
  do
  {
    v9 = ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::pop(this + 704, v8);
  }

  while (v9);
  atomic_store(**(this + 344), this + 348);
  mNumberBuffers = a4->mNumberBuffers;
  if (a3->mNumberBuffers != mNumberBuffers)
  {
    __assert_rtn("ProcessBufferLists", "AULoudnessWarrior.cpp", 571, "inBuffer.mNumberBuffers == outBuffer.mNumberBuffers");
  }

  v93 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (8 * mNumberBuffers + 15) & 0xFFFFFFFF0;
  v12 = (&v90 - v11);
  if ((8 * mNumberBuffers) >= 0x200)
  {
    v13 = 512;
  }

  else
  {
    v13 = 8 * mNumberBuffers;
  }

  bzero(&v90 - v11, v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = (&v90 - v11);
  bzero(&v90 - v11, v13);
  if (mNumberBuffers)
  {
    p_mData = &a4->mBuffers[0].mData;
    v17 = &a3->mBuffers[0].mData;
    v18 = (&v90 - v11);
    v19 = (&v90 - v11);
    v20 = mNumberBuffers;
    v21 = v93;
    do
    {
      v22 = *v17;
      v17 += 2;
      *v18++ = v22;
      v23 = *p_mData;
      p_mData += 2;
      *v19++ = v23;
      --v20;
    }

    while (v20);
    if (*(this + 552))
    {
      v24 = 4 * v96;
      do
      {
        v26 = *v15++;
        v25 = v26;
        v27 = *v12++;
        memcpy(v25, v27, v24);
        --mNumberBuffers;
      }

      while (mNumberBuffers);
      return 0;
    }
  }

  else
  {
    v21 = v93;
    if (*(this + 552))
    {
      return 0;
    }
  }

  v91 = &v90 - v11;
  v95 = &v90 - v11;
  v28 = atomic_exchange(this + 2776, 0);
  v92 = this;
  if (v28)
  {
    v29 = *(this + 344);
    AULoudnessWarrior::GetParameterBlock(&v97, this);
    AULoudnessWarriorKernel::SetMeterValues(v29, &v97);
    v30 = *(v92 + 344);
    LODWORD(v97) = 0;
    (*(*v92 + 144))(v92, 0, 0, 0, &v97);
    v31 = *&v97;
    LODWORD(v97) = 0;
    (*(*v92 + 144))(v92, 1, 0, 0, &v97);
    v32 = *&v97;
    LODWORD(v97) = 0;
    (*(*v92 + 144))(v92, 2, 0, 0, &v97);
    *(v30 + 400) = (v31 + v32) - *&v97;
    v21 = v93;
  }

  v33 = *v21;
  *(v33 + 103) = 0;
  *(v33 + 101) = 0;
  v34 = *(v33 + 1);
  if (*(v33 + 2) != v34)
  {
    v35 = 0;
    v94 = (v96 - 1);
    v36 = v96;
    while (((*(*(v33 + 7) + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
LABEL_47:
      ++v35;
      v34 = *(v33 + 1);
      if (v35 >= (*(v33 + 2) - v34) >> 3)
      {
        v61 = *(v33 + 103);
        goto LABEL_50;
      }
    }

    v37 = *(v33 + 4) + 24 * v35;
    v38 = *v37;
    if (v36 > (*(v37 + 8) - *v37) >> 2)
    {
      __assert_rtn("ProcessMeters", "AULoudnessWarrior.cpp", 899, "numFrames <= mMeterOutputBuffers[i].size()");
    }

    v39 = *(v34 + 8 * v35);
    if (v36 > (*(*(v39 + 80) + 8) - **(v39 + 80)) >> 2)
    {
      __assert_rtn("Process", "Meter.cpp", 66, "numFrames <= mWeightingFilterOutputBuffers[0].size()");
    }

    __A = 0.0;
    vDSP_vfill(&__A, v38, 1, v36);
    v40 = *(v39 + 232);
    *&v97 = v95;
    *(&v97 + 1) = v40;
    v98 = v36;
    *&__B = *(v39 + 104);
    *(&__B + 1) = v40;
    v101 = v36;
    DspLib::Biquad::Filter::process(v39, &v97, &__B);
    if (*(v39 + 232))
    {
      v41 = 0;
      v42 = 0;
      do
      {
        MEMORY[0x1E12BE990](*(*(v39 + 104) + 8 * v42), 1, *(v39 + 176), 1, v36);
        MEMORY[0x1E12BE940](*(v39 + 176), 1, *(v39 + 200) + v41, *(v39 + 176), 1, v36);
        MEMORY[0x1E12BE5D0](*(v39 + 176), 1, v38, 1, v38, 1, v36);
        ++v42;
        v41 += 4;
      }

      while (v42 < *(v39 + 232));
    }

    v43 = *(v39 + 72);
    v44 = *(v43 + 20);
    if (v44)
    {
      if (v44 == 1)
      {
        MEMORY[0x1E12BE990](v38, 1, v38, 1, v36);
      }

      else if (v44 == 3)
      {
        if (v96)
        {
          v45 = v38;
          v46 = v36;
          do
          {
            v47 = *(v43 + 28);
            if (*v45 <= v47)
            {
              v48 = 8;
            }

            else
            {
              v48 = 4;
            }

            v49 = v47 + (*(v43 + v48) * (*v45 - v47));
            *(v43 + 28) = v49;
            *v45++ = v49;
            --v46;
          }

          while (v46);
        }

LABEL_43:
        LODWORD(v97) = 786163455;
        MEMORY[0x1E12BE8A0](v38, 1, &v97, v38, 1, v36);
        LODWORD(__B) = 1065353216;
        vDSP_vdbcon(v38, 1, &__B, v38, 1, v36, 0);
        if (!*(v39 + 224))
        {
          v99 = -1087314592;
          MEMORY[0x1E12BE8A0](v38, 1, &v99, v38, 1, v36);
        }

        v54 = *(*(*(v33 + 4) + 24 * v35) + 4 * v94);
        v55 = *(v33 + 19);
        *(v55 + 4 * v35) = v54;
        v56 = *(v33 + 10);
        v57 = *(v56 + 4 * v35);
        if (v54 >= v57)
        {
          v58 = *(*(v33 + 22) + 4 * v35);
          v59 = *(v33 + 13);
          v60 = *(v33 + 16);
          *(v33 + 103) = *(v33 + 103) + ((v58 & 1) * (*(v60 + 4 * v35) + (*(v59 + 4 * v35) * (v54 - v57))));
          *(v33 + 101) = *(v33 + 101) + (((v58 >> 1) & 1) * (*(v60 + 4 * v35) + (*(v59 + 4 * v35) * (*(v55 + 4 * v35) - *(v56 + 4 * v35)))));
        }

        goto LABEL_47;
      }
    }

    else
    {
      vDSP_vabs(v38, 1, v38, 1, v36);
    }

    if (v96)
    {
      v50 = *(v43 + 28);
      v51 = v38;
      v52 = v36;
      do
      {
        if (*v51 <= v50)
        {
          v53 = 8;
        }

        else
        {
          v53 = 4;
        }

        v50 = *v51 + (*(v43 + v53) * (v50 - *v51));
        *v51++ = v50;
        *(v43 + 28) = v50;
        --v52;
      }

      while (v52);
    }

    goto LABEL_43;
  }

  v61 = 0.0;
LABEL_50:
  v62 = *(v33 + 100) + v61;
  *(v33 + 104) = v62;
  BiquadInterpolator::GetCoefficientsAtPosition(*(v33 + 32), *(v33 + 29), *(v33 + 30), v62);
  if (*(v33 + 50))
  {
    v63 = 0;
    v64 = 0;
    do
    {
      DspLib::Biquad::read(v63 + *(v33 + 29), &v97);
      v65 = *(v33 + 26) + v63;
      v66 = v97;
      *(v65 + 16) = v98;
      *v65 = v66;
      ++v64;
      v63 += 20;
    }

    while (v64 < *(v33 + 50));
  }

  DspLib::Biquad::Filter::setCoefficients(v33 + 328, *(v33 + 26), 0xCCCCCCCCCCCCCCCDLL * ((*(v33 + 27) - *(v33 + 26)) >> 2), 0, 0x41uLL);
  v67 = *(v33 + 100) + *(v33 + 101);
  *(v33 + 102) = v67;
  BiquadInterpolator::GetCoefficientsAtPosition(*(v33 + 40), *(v33 + 37), *(v33 + 38), v67);
  if (*(v33 + 66))
  {
    v68 = 0;
    v69 = 0;
    do
    {
      DspLib::Biquad::read(v68 + *(v33 + 37), &v97);
      v70 = *(v33 + 34) + v68;
      v71 = v97;
      *(v70 + 16) = v98;
      *v70 = v71;
      ++v69;
      v68 += 20;
    }

    while (v69 < *(v33 + 66));
  }

  DspLib::Biquad::Filter::setCoefficients(v33 + 328, *(v33 + 34), 0xCCCCCCCCCCCCCCCDLL * ((*(v33 + 35) - *(v33 + 34)) >> 2), *(v33 + 50), 0x41uLL);
  v72 = *(v33 + 47);
  *&v97 = v95;
  *(&v97 + 1) = v72;
  v98 = v96;
  *&__B = v91;
  *(&__B + 1) = v72;
  v101 = v96;
  DspLib::Biquad::Filter::process(v33 + 41, &v97, &__B);
  if (*v93)
  {
    v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0);
    if ((v74 & 1) == 0 || (ausdk::AUElement::SetParameter(v73, 4u, *(*v93 + 103)), v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0), (v76 & 1) == 0) || (ausdk::AUElement::SetParameter(v75, 6u, *(*v93 + 101)), v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0), (v78 & 1) == 0) || (ausdk::AUElement::SetParameter(v77, 0xEu, **(*v93 + 19)), v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0), (v80 & 1) == 0) || (ausdk::AUElement::SetParameter(v79, 0x19u, *(*(*v93 + 19) + 4)), v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0), (v82 & 1) == 0) || (ausdk::AUElement::SetParameter(v81, 0x24u, *(*(*v93 + 19) + 8)), v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0), (v84 & 1) == 0) || (ausdk::AUElement::SetParameter(v83, 5u, *(*v93 + 104)), v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0), (v86 & 1) == 0) || (ausdk::AUElement::SetParameter(v85, 7u, *(*v93 + 102)), v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v92 + 32, 0), (v88 & 1) == 0))
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v87, 3u, *(*v93 + 100));
  }

  return 0;
}

BOOL ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::pop(uint64_t a1, AULoudnessWarriorKernel **a2)
{
  v10 = 0;
  v4 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v10);
  if (v4)
  {
    v5 = v10;
    if (!v10)
    {
      __assert_rtn("pop", "deferred_deletion_queue.h", 115, "pendingObject");
    }

    v6 = *a2;
    if (*a2)
    {
      *a2 = 0;
      v9 = v6;
      if (!boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 1024, &v9))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "trash queue exceeded capacity, object memory leaked");
      }
    }

    std::unique_ptr<AULoudnessWarriorKernel>::reset[abi:ne200100](a2, v5);
  }

  return v4;
}

float AULoudnessWarrior::GetParameterBlock(AULoudnessWarrior *this, uint64_t a2)
{
  v5 = 0.0;
  (*(*a2 + 144))(a2, 8, 0, 0, &v5);
  *this = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 9, 0, 0, &v5);
  *(this + 1) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 10, 0, 0, &v5);
  *(this + 2) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 11, 0, 0, &v5);
  *(this + 3) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 12, 0, 0, &v5);
  *(this + 4) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 13, 0, 0, &v5);
  *(this + 5) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 14, 0, 0, &v5);
  *(this + 6) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 15, 0, 0, &v5);
  *(this + 7) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 16, 0, 0, &v5);
  *(this + 8) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 17, 0, 0, &v5);
  *(this + 9) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 18, 0, 0, &v5);
  *(this + 10) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 19, 0, 0, &v5);
  *(this + 11) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 20, 0, 0, &v5);
  *(this + 12) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 21, 0, 0, &v5);
  *(this + 13) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 22, 0, 0, &v5);
  *(this + 14) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 23, 0, 0, &v5);
  *(this + 15) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 24, 0, 0, &v5);
  *(this + 16) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 25, 0, 0, &v5);
  *(this + 17) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 26, 0, 0, &v5);
  *(this + 18) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 27, 0, 0, &v5);
  *(this + 19) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 28, 0, 0, &v5);
  *(this + 20) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 29, 0, 0, &v5);
  *(this + 21) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 30, 0, 0, &v5);
  *(this + 22) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 31, 0, 0, &v5);
  *(this + 23) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 32, 0, 0, &v5);
  *(this + 24) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 33, 0, 0, &v5);
  *(this + 25) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 34, 0, 0, &v5);
  *(this + 26) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 35, 0, 0, &v5);
  *(this + 27) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 36, 0, 0, &v5);
  *(this + 28) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 37, 0, 0, &v5);
  *(this + 29) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 38, 0, 0, &v5);
  *(this + 30) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 39, 0, 0, &v5);
  *(this + 31) = v5;
  v5 = 0.0;
  (*(*a2 + 144))(a2, 40, 0, 0, &v5);
  result = v5;
  *(this + 32) = v5;
  return result;
}

void AULoudnessWarriorKernel::SetMeterValues(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v4 = 0;
    v5 = a2 + 20;
    do
    {
      *(a1[10] + 4 * v4) = *(v5 + 8);
      *(a1[13] + 4 * v4) = *(v5 + 12);
      *(a1[16] + 4 * v4) = *(v5 + 16);
      v6 = a1[7];
      v7 = v4 >> 6;
      v8 = 1 << v4;
      if (*(v5 - 20) == 0.0)
      {
        v11 = *(v6 + 8 * v7) & ~v8;
      }

      else
      {
        v9 = *(v6 + 8 * v7);
        if ((v9 & v8) == 0)
        {
          v10 = *(v2 + 8 * v4);
          *(*(v10 + 72) + 28) = 0;
          DspLib::Biquad::SetupWrapper::reset((v10 + 48));
          v6 = a1[7];
          v9 = *(v6 + 8 * v7);
          v2 = a1[1];
        }

        v11 = v9 | v8;
      }

      *(v6 + 8 * v7) = v11;
      if ((v11 & v8) != 0)
      {
        v12 = *v5;
        v13 = *(v2 + 8 * v4);
        v14 = *v5;
        v15 = *(v13 + 240);
        v16 = v15 + -0.001;
        v17 = v15 + 0.001;
        if (v16 >= v14 || v17 <= v14)
        {
          *(v13 + 240) = v12;
          v19 = *(v13 + 224);
          if ((v19 - 4) <= 2)
          {
            LODWORD(v17) = *(v13 + 244);
            Meter::SetMeterType(v13, v19, *&v17, v12);
            v2 = a1[1];
          }

          v13 = *(v2 + 8 * v4);
        }

        LODWORD(v17) = *(v5 - 4);
        v20 = *(v13 + 244);
        v21 = v20 + -0.5;
        v22 = v20 + 0.5;
        if (v21 >= *&v17 || v22 <= *&v17)
        {
          *(v13 + 244) = LODWORD(v17);
          v24 = *(v13 + 224);
          if ((v24 - 4) <= 2)
          {
            Meter::SetMeterType(v13, v24, *&v17, *(v13 + 240));
            v2 = a1[1];
          }

          v13 = *(v2 + 8 * v4);
        }

        v25 = *(v5 - 16);
        if (*(v13 + 224) != v25)
        {
          LODWORD(v17) = *(v13 + 244);
          Meter::SetMeterType(v13, v25, *&v17, *(v13 + 240));
          v2 = a1[1];
          v13 = *(v2 + 8 * v4);
        }

        v26 = *(v5 - 12);
        v27 = *(v13 + 72);
        v28 = v27[3];
        v29 = v28 + -1.0;
        v30 = v28 + 1.0;
        if (v26 <= v29 || v26 >= v30)
        {
          EnvelopeDetector::SetAttackTime(v27, v26);
          *(*(v13 + 72) + 28) = 0;
          DspLib::Biquad::SetupWrapper::reset((v13 + 48));
          v2 = a1[1];
          v13 = *(v2 + 8 * v4);
          v27 = *(v13 + 72);
        }

        v32 = *(v5 - 8);
        v33 = v27[4];
        v34 = v33 + -1.0;
        v35 = v33 + 1.0;
        if (v32 <= v34 || v32 >= v35)
        {
          EnvelopeDetector::SetReleaseTime(v27, v32);
          *(*(v13 + 72) + 28) = 0;
          DspLib::Biquad::SetupWrapper::reset((v13 + 48));
          v2 = a1[1];
        }

        *(a1[22] + 4 * v4) = *(v5 + 20);
      }

      ++v4;
      v5 += 44;
    }

    while (v4 < (a1[2] - v2) >> 3);
  }
}

AULoudnessWarriorKernel *std::unique_ptr<AULoudnessWarriorKernel>::reset[abi:ne200100](AULoudnessWarriorKernel **a1, AULoudnessWarriorKernel *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AULoudnessWarriorKernel::~AULoudnessWarriorKernel(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AULoudnessWarriorKernel::~AULoudnessWarriorKernel(AULoudnessWarriorKernel *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 376));
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 45) = v2;
    operator delete(v2);
  }

  std::unique_ptr<BiquadInterpolator>::~unique_ptr[abi:ne200100](this + 40);
  v3 = *(this + 37);
  if (v3)
  {
    *(this + 38) = v3;
    operator delete(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    *(this + 35) = v4;
    operator delete(v4);
  }

  std::unique_ptr<BiquadInterpolator>::~unique_ptr[abi:ne200100](this + 32);
  v5 = *(this + 29);
  if (v5)
  {
    *(this + 30) = v5;
    operator delete(v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    *(this + 27) = v6;
    operator delete(v6);
  }

  v7 = *(this + 22);
  if (v7)
  {
    *(this + 23) = v7;
    operator delete(v7);
  }

  v8 = *(this + 19);
  if (v8)
  {
    *(this + 20) = v8;
    operator delete(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  v10 = *(this + 13);
  if (v10)
  {
    *(this + 14) = v10;
    operator delete(v10);
  }

  v11 = *(this + 10);
  if (v11)
  {
    *(this + 11) = v11;
    operator delete(v11);
  }

  v12 = *(this + 7);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = (this + 32);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v13);
  v13 = (this + 8);
  std::vector<std::unique_ptr<Meter>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

uint64_t *std::unique_ptr<BiquadInterpolator>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v5 = (v2 + 24);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E12BD160](v2, 0xA0C40C7E57C1ALL);
  }

  return a1;
}

void std::vector<std::unique_ptr<Meter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<Meter>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<Meter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 200);
    if (v3)
    {
      *(v2 + 208) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 176);
    if (v4)
    {
      *(v2 + 184) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 152);
    if (v5)
    {
      *(v2 + 160) = v5;
      operator delete(v5);
    }

    v10 = (v2 + 128);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v6 = *(v2 + 104);
    if (v6)
    {
      *(v2 + 112) = v6;
      operator delete(v6);
    }

    v10 = (v2 + 80);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v7 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v7)
    {
      MEMORY[0x1E12BD160](v7, 0x1000C407BE137D4);
    }

    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v2 + 48));
    v8 = *(v2 + 24);
    if (v8)
    {
      *(v2 + 32) = v8;
      operator delete(v8);
    }

    MEMORY[0x1E12BD160](v2, 0x10A0C40C65DD443);
  }

  return a1;
}

uint64_t AULoudnessWarrior::SetProperty(AULoudnessWarrior *this, int a2, int a3, uint64_t a4, const void **a5, int a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v12 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *&buf[4] = "AULoudnessWarrior.cpp";
    v26 = 1024;
    v27 = 428;
    v28 = 1024;
    v29 = a2;
    v30 = 1024;
    v31 = a3;
    v32 = 1024;
    v33 = a4;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetProperty ID=%d scope=%d bus=%d\n", buf, 0x24u);
  }

LABEL_9:
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 8900)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      v14 = *a5;
      if ((*a5 != 0) != *(this + 552))
      {
        v15 = atomic_load(this + 2792);
        if ((v15 & 1) == 0)
        {
          if (!v14 && *(this + 552) == 1 && *(this + 17) == 1)
          {
            (*(*this + 72))(this, 0, 0);
          }

          (*(*this + 608))(this, v14 != 0);
        }
      }

      return 0;
    }

    return 4294956445;
  }

  if ((*(this + 17) & 1) == 0)
  {
    CACFDictionary::operator=(this + 2760, *a5);
    return 0;
  }

  *buf = *a5;
  *&buf[8] = 0;
  AULoudnessWarrior::CreateKernel(&v23, this, buf);
  CACFDictionary::~CACFDictionary(buf);
  if (!v23)
  {
    if (AULoudnessWarriorLogScope(void)::once != -1)
    {
      dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
    }

    if (AULoudnessWarriorLogScope(void)::scope)
    {
      v20 = *AULoudnessWarriorLogScope(void)::scope;
      if (!*AULoudnessWarriorLogScope(void)::scope)
      {
        return 4294956445;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AULoudnessWarrior.cpp";
      v26 = 1024;
      v27 = 469;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not create staged kernel!\n", buf, 0x12u);
    }

    return 4294956445;
  }

  v24 = 0;
    ;
  }

  atomic_exchange(this + 2689, 1u);
  v16 = v23;
  *buf = v23;
  v17 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(this + 768, buf);
  if (v17)
  {
    v16 = 0;
    v23 = 0;
  }

  ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::drain_trash(this + 704);
  if (v24)
  {
    AULoudnessWarriorKernel::~AULoudnessWarriorKernel(v24);
    MEMORY[0x1E12BD160](v18);
  }

  if (v17)
  {
    CACFDictionary::operator=(this + 2760, *a5);
    (*(*this + 432))(this, 8900, 0, a4);
    if (AULoudnessWarriorLogScope(void)::once != -1)
    {
      dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
    }

    if (AULoudnessWarriorLogScope(void)::scope)
    {
      v19 = *AULoudnessWarriorLogScope(void)::scope;
      if (!*AULoudnessWarriorLogScope(void)::scope)
      {
LABEL_57:
        LOBYTE(v21) = 1;
        goto LABEL_58;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AULoudnessWarrior.cpp";
      v26 = 1024;
      v27 = 461;
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Changed config plist successfully\n", buf, 0x12u);
    }

    goto LABEL_57;
  }

  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v21 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AULoudnessWarrior.cpp";
    v26 = 1024;
    v27 = 464;
    _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not queue staged kernel!\n", buf, 0x12u);
  }

  LOBYTE(v21) = 0;
LABEL_58:
  v23 = 0;
  if (v16)
  {
    AULoudnessWarriorKernel::~AULoudnessWarriorKernel(v16);
    MEMORY[0x1E12BD160](v22);
  }

  if (v21)
  {
    return 0;
  }

  return 4294956433;
}

void AULoudnessWarrior::CreateKernel(AULoudnessWarrior *this, const CACFDictionary *a2, CFDictionaryRef *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((a2 + 80), 0);
  if (!Element || (v7 = Element, (v8 = ausdk::AUScope::GetElement((a2 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v8 + 80) != *(v7 + 80) || ((v9 = *(v7 + 108), v9 == *(v8 + 108)) ? (v10 = *(v8 + 88) == 1819304813) : (v10 = 0), !v10 || (*(v8 + 92) & 1) == 0 || v9 <= 7 && ((1 << v9) & 0xB0) != 0))
  {
    *this = 0;
    return;
  }

  v51 = 0.0;
  v11 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v50 = 257;
  v47 = CFArrayCreateMutable(0, 0, v11);
  v48 = 257;
  v45 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v46 = 257;
  if (!*a3 || !CFDictionaryGetCount(*a3))
  {
    AULoudnessWarrior::SetPassthroughModeAndBypass(a2, &v51, &Mutable, &v47, &v45);
    goto LABEL_20;
  }

  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  LOWORD(v40) = 257;
  CACFDictionary::GetCACFArray(a3, @"Anchors", &theArray);
  if (theArray && CFArrayGetCount(theArray))
  {
    CACFArray::operator=(&Mutable, &theArray);
    if (CFDictionaryContainsKey(*a3, @"Latency"))
    {
      CACFDictionary::GetFloat64(*a3, @"Latency", &v51);
    }

    else
    {
      v51 = 0.0;
    }

    snprintf(buf, 0x40uLL, "biquads_%.0f", *(v7 + 80));
    v27 = CFStringCreateWithCString(0, buf, 0x600u);
    if (CFDictionaryContainsKey(*a3, v27))
    {
LABEL_100:
      v37 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LOWORD(v38) = 257;
      CACFDictionary::GetCACFDictionary(a3, v27, &v37);
      CFRelease(v27);
      v43 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v44 = 257;
      v41 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v42 = 257;
      CACFDictionary::GetCACFArray(&v37, @"BassBiquads", &v43);
      CACFDictionary::GetCACFArray(&v37, @"TrebleBiquads", &v41);
      if (v43 && CFArrayGetCount(v43) && v43 && CFArrayGetCount(v43))
      {
        CACFArray::operator=(&v47, &v43);
        CACFArray::operator=(&v45, &v41);
LABEL_106:
        CACFArray::~CACFArray(&v41);
        CACFArray::~CACFArray(&v43);
        CACFDictionary::~CACFDictionary(&v37);
        CACFArray::~CACFArray(&theArray);
LABEL_20:
        CFHelper::extractVector<float>(v59, &Mutable);
        CFHelper::extractVectorOfVectors<float>(&theArray, &v47);
        CFHelper::extractVectorOfVectors<float>(&v37, &v45);
        v12 = (*&v59[8] - *v59) >> 2;
        if (v12 == 0xAAAAAAAAAAAAAAABLL * ((v40 - theArray) >> 3))
        {
          if (v12 == 0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3))
          {
            if (v40 == theArray)
            {
LABEL_33:
              if (v38 == v37)
              {
LABEL_43:
                AULoudnessWarrior::GetParameterBlock(buf, a2);
                LODWORD(v43) = *(a2 + 84);
                std::make_unique[abi:ne200100]<AULoudnessWarriorKernel,std::vector<float> &,std::vector<std::vector<float>> &,std::vector<std::vector<float>> &,std::array<std::array<float,11ul>,3ul>,double const&,unsigned int const&,unsigned int,0>();
              }

              v18 = 0;
              v19 = (v37 + 8);
              if (v12 <= 1)
              {
                v12 = 1;
              }

              while (1)
              {
                v20 = *(v19 - 1);
                if (*v19 == v20 || ((*v19 - v20) >> 2) % 5uLL != 0)
                {
                  if (AULoudnessWarriorLogScope(void)::once != -1)
                  {
                    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
                  }

                  if (AULoudnessWarriorLogScope(void)::scope)
                  {
                    v29 = *AULoudnessWarriorLogScope(void)::scope;
                    if (!*AULoudnessWarriorLogScope(void)::scope)
                    {
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    v29 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    v36 = (*(v37 + 3 * v18 + 1) - *(v37 + 3 * v18)) >> 2;
                    *buf = 136315650;
                    *&buf[4] = "AULoudnessWarrior.cpp";
                    v53 = 1024;
                    v54 = 742;
                    v55 = 2048;
                    v56 = v36;
                    v24 = "%25s:%-5d Invalid treble EQ sizes: BQ vector has %lu coefficients\n";
                    goto LABEL_132;
                  }

                  goto LABEL_71;
                }

                if (*v19 - v20 != *(v37 + 1) - *v37)
                {
                  break;
                }

                ++v18;
                v19 += 3;
                if (v12 == v18)
                {
                  goto LABEL_43;
                }
              }

              if (AULoudnessWarriorLogScope(void)::once != -1)
              {
                dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
              }

              if (AULoudnessWarriorLogScope(void)::scope)
              {
                v30 = *AULoudnessWarriorLogScope(void)::scope;
                if (!*AULoudnessWarriorLogScope(void)::scope)
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v30 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "AULoudnessWarrior.cpp";
                v53 = 1024;
                v54 = 747;
                v24 = "%25s:%-5d Invalid treble EQ sizes: BQ vectors must be same length\n";
                goto LABEL_136;
              }
            }

            else
            {
              v13 = 0;
              v14 = (theArray + 8);
              if (v12 <= 1)
              {
                v15 = 1;
              }

              else
              {
                v15 = (*&v59[8] - *v59) >> 2;
              }

              while (1)
              {
                v16 = *(v14 - 1);
                if (*v14 == v16 || ((*v14 - v16) >> 2) % 5uLL != 0)
                {
                  if (AULoudnessWarriorLogScope(void)::once != -1)
                  {
                    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
                  }

                  if (AULoudnessWarriorLogScope(void)::scope)
                  {
                    v29 = *AULoudnessWarriorLogScope(void)::scope;
                    if (!*AULoudnessWarriorLogScope(void)::scope)
                    {
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    v29 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    v35 = (*(theArray + 3 * v13 + 1) - *(theArray + 3 * v13)) >> 2;
                    *buf = 136315650;
                    *&buf[4] = "AULoudnessWarrior.cpp";
                    v53 = 1024;
                    v54 = 728;
                    v55 = 2048;
                    v56 = v35;
                    v24 = "%25s:%-5d Invalid bass EQ sizes: BQ vector has %lu coefficients\n";
LABEL_132:
                    v25 = v29;
                    v26 = 28;
                    goto LABEL_70;
                  }

                  goto LABEL_71;
                }

                if (*v14 - v16 != *(theArray + 1) - *theArray)
                {
                  break;
                }

                ++v13;
                v14 += 3;
                if (v15 == v13)
                {
                  goto LABEL_33;
                }
              }

              if (AULoudnessWarriorLogScope(void)::once != -1)
              {
                dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
              }

              if (AULoudnessWarriorLogScope(void)::scope)
              {
                v30 = *AULoudnessWarriorLogScope(void)::scope;
                if (!*AULoudnessWarriorLogScope(void)::scope)
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v30 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "AULoudnessWarrior.cpp";
                v53 = 1024;
                v54 = 733;
                v24 = "%25s:%-5d Invalid bass EQ sizes: BQ vectors must be same length\n";
LABEL_136:
                v25 = v30;
                v26 = 18;
                goto LABEL_70;
              }
            }

            goto LABEL_71;
          }

          if (AULoudnessWarriorLogScope(void)::once != -1)
          {
            dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
          }

          if (AULoudnessWarriorLogScope(void)::scope)
          {
            v22 = *AULoudnessWarriorLogScope(void)::scope;
            if (!*AULoudnessWarriorLogScope(void)::scope)
            {
LABEL_71:
              *this = 0;
              *buf = &v37;
              std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
              *buf = &theArray;
              std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
              if (*v59)
              {
                *&v59[8] = *v59;
                operator delete(*v59);
              }

              goto LABEL_117;
            }
          }

          else
          {
            v22 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          *buf = 136315906;
          *&buf[4] = "AULoudnessWarrior.cpp";
          v53 = 1024;
          v54 = 721;
          v55 = 2048;
          v56 = (*&v59[8] - *v59) >> 2;
          v57 = 2048;
          v58 = 0xAAAAAAAAAAAAAAABLL * ((v40 - theArray) >> 3);
          v24 = "%25s:%-5d Invalid treble EQ sizes: Anchor gains size = %lu, # BQs = %lu\n";
        }

        else
        {
          if (AULoudnessWarriorLogScope(void)::once != -1)
          {
            dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
          }

          if (AULoudnessWarriorLogScope(void)::scope)
          {
            v22 = *AULoudnessWarriorLogScope(void)::scope;
            if (!*AULoudnessWarriorLogScope(void)::scope)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v22 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          *buf = 136315906;
          *&buf[4] = "AULoudnessWarrior.cpp";
          v53 = 1024;
          v54 = 717;
          v55 = 2048;
          v56 = (*&v59[8] - *v59) >> 2;
          v57 = 2048;
          v58 = 0xAAAAAAAAAAAAAAABLL * ((v40 - theArray) >> 3);
          v24 = "%25s:%-5d Invalid bass EQ sizes: Anchor gains size = %lu, # BQs = %lu\n";
        }

        v25 = v22;
        v26 = 38;
LABEL_70:
        _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
        goto LABEL_71;
      }

      v32 = atomic_load(a2 + 2792);
      if (v32)
      {
        goto LABEL_106;
      }

      if (AULoudnessWarriorLogScope(void)::once != -1)
      {
        dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
      }

      if (AULoudnessWarriorLogScope(void)::scope)
      {
        v33 = *AULoudnessWarriorLogScope(void)::scope;
        if (!*AULoudnessWarriorLogScope(void)::scope)
        {
LABEL_115:
          *this = 0;
          CACFArray::~CACFArray(&v41);
          CACFArray::~CACFArray(&v43);
          CACFDictionary::~CACFDictionary(&v37);
          goto LABEL_116;
        }
      }

      else
      {
        v33 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v7 + 80);
        *v59 = 136315650;
        *&v59[4] = "AULoudnessWarrior.cpp";
        *&v59[12] = 1024;
        *&v59[14] = 706;
        v60 = 2048;
        v61 = v34;
        _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Bass or treble BQs not defined correctly for sample rate of %.0f!\n", v59, 0x1Cu);
      }

      goto LABEL_115;
    }

    if (AULoudnessWarriorLogScope(void)::once != -1)
    {
      dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
    }

    if (AULoudnessWarriorLogScope(void)::scope)
    {
      v28 = *AULoudnessWarriorLogScope(void)::scope;
      if (!*AULoudnessWarriorLogScope(void)::scope)
      {
LABEL_99:
        AULoudnessWarrior::SetPassthroughModeAndBypass(a2, &v51, &Mutable, &v47, &v45);
        goto LABEL_100;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(v7 + 80);
      *v59 = 136315650;
      *&v59[4] = "AULoudnessWarrior.cpp";
      *&v59[12] = 1024;
      *&v59[14] = 691;
      v60 = 2048;
      v61 = v31;
      _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No entry in biquad .plist for sample rate of %.0f!\n", v59, 0x1Cu);
    }

    goto LABEL_99;
  }

  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (!AULoudnessWarriorLogScope(void)::scope)
  {
    v23 = MEMORY[0x1E69E9C10];
LABEL_63:
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AULoudnessWarrior.cpp";
      v53 = 1024;
      v54 = 676;
      _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d No anchor gains defined!\n", buf, 0x12u);
    }

    goto LABEL_65;
  }

  v23 = *AULoudnessWarriorLogScope(void)::scope;
  if (*AULoudnessWarriorLogScope(void)::scope)
  {
    goto LABEL_63;
  }

LABEL_65:
  *this = 0;
LABEL_116:
  CACFArray::~CACFArray(&theArray);
LABEL_117:
  CACFArray::~CACFArray(&v45);
  CACFArray::~CACFArray(&v47);
  CACFArray::~CACFArray(&Mutable);
}