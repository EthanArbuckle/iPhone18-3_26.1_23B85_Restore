void OUTLINED_FUNCTION_7_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

_OWORD *VCAudioDucker_Allocate(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004047CAF6D5uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[2];
    v2[1] = a1[1];
    v2[2] = v5;
    *v2 = v4;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioDucker_Allocate_cold_1();
    }
  }

  return v3;
}

void VCAudioDucker_Destroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      free(v2);
    }
  }
}

OpaqueAudioComponentInstance *VCAudioDucker_Start(AudioComponentInstance *a1)
{
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioDucker_Start_cold_17();
    }

    return 0;
  }

  if (!VCAudioUnit_NewInstance(a1 + 6, 0x6479646Bu))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioDucker_Start_cold_1();
    }

    return 0;
  }

  if (AudioUnitSetProperty(a1[6], 0xEu, 0, 0, a1 + 5, 4u))
  {
    VCAudioDucker_Start_cold_2();
LABEL_31:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioDucker_Start_cold_5();
      }
    }

    goto LABEL_34;
  }

  for (i = 0; i != 5; ++i)
  {
    if (AudioUnitSetProperty(a1[6], 8u, 1u, i, a1, 0x28u))
    {
      VCAudioDucker_Start_cold_3();
      goto LABEL_31;
    }
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    if (AudioUnitSetProperty(a1[6], 8u, 2u, v3, a1, 0x28u))
    {
      VCAudioDucker_Start_cold_4();
      goto LABEL_31;
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  if (AudioUnitSetParameter(a1[6], 2u, 0, 0, -15.0, 0))
  {
    VCAudioDucker_Start_cold_6();
  }

  else if (AudioUnitSetParameter(a1[6], 4u, 0, 0, -32.0, 0))
  {
    VCAudioDucker_Start_cold_7();
  }

  else if (AudioUnitSetParameter(a1[6], 5u, 0, 0, -30.0, 0))
  {
    VCAudioDucker_Start_cold_8();
  }

  else if (AudioUnitSetParameter(a1[6], 7u, 0, 0, -30.0, 0))
  {
    VCAudioDucker_Start_cold_9();
  }

  else if (AudioUnitSetParameter(a1[6], 8u, 0, 0, 0.0, 0))
  {
    VCAudioDucker_Start_cold_10();
  }

  else if (AudioUnitSetParameter(a1[6], 0xDu, 0, 0, 0.15, 0))
  {
    VCAudioDucker_Start_cold_11();
  }

  else if (AudioUnitSetParameter(a1[6], 0xEu, 0, 0, 0.8, 0))
  {
    VCAudioDucker_Start_cold_12();
  }

  else if (AudioUnitSetParameter(a1[6], 0xFu, 0, 0, 1.3, 0))
  {
    VCAudioDucker_Start_cold_13();
  }

  else
  {
    if (!AudioUnitSetParameter(a1[6], 0x10u, 0, 0, 1.0, 0))
    {
      if (!AudioUnitInitialize(a1[6]))
      {
        return 1;
      }

      VCAudioDucker_Start_cold_16();
      goto LABEL_34;
    }

    VCAudioDucker_Start_cold_14();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioDucker_Start_cold_15();
    }
  }

LABEL_34:
  result = a1[6];
  if (result)
  {
    AudioComponentInstanceDispose(result);
    result = 0;
    a1[6] = 0;
  }

  return result;
}

void VCAudioDucker_Stop(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      AudioComponentInstanceDispose(v2);
      *(a1 + 48) = 0;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioDucker_Stop_cold_1();
    }
  }
}

BOOL VCAudioDucker_Process(UInt64 a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    ioActionFlags = 512;
    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    inTimeStamp.mSampleTime = NAN;
    inTimeStamp.mHostTime = 0xAAAAAAAAAAAAAAAALL;
    inTimeStamp.mRateScalar = NAN;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&inTimeStamp.mWordClockTime = v7;
    *&inTimeStamp.mSMPTETime.mType = v7;
    *&inTimeStamp.mFlags = 0xAAAAAAAAAAAAAAAALL;
    VCAudioBufferList_GetAudioTimestamp(a2, &inTimeStamp);
    inInputBufferLists[0] = VCAudioBufferList_GetAudioBufferList(a2);
    inInputBufferLists[1] = 0;
    inInputBufferLists[2] = 0;
    AudioBufferList = VCAudioBufferList_GetAudioBufferList(a3);
    v17 = 0;
    ioOutputBufferLists[0] = inInputBufferLists[0];
    ioOutputBufferLists[1] = AudioBufferList;
    v8 = AudioUnitProcessMultiple(*(a1 + 48), &ioActionFlags, &inTimeStamp, SampleCount, 5u, inInputBufferLists, 2u, ioOutputBufferLists);
    v9 = v8 == 0;
    if (v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioDucker_Process_cold_1();
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        LODWORD(inTimeStamp.mSampleTime) = 136316418;
        *(&inTimeStamp.mSampleTime + 4) = v10;
        WORD2(inTimeStamp.mHostTime) = 2080;
        *(&inTimeStamp.mHostTime + 6) = "VCAudioDucker_Process";
        HIWORD(inTimeStamp.mRateScalar) = 1024;
        LODWORD(inTimeStamp.mWordClockTime) = 177;
        WORD2(inTimeStamp.mWordClockTime) = 2048;
        *(&inTimeStamp.mWordClockTime + 6) = a1;
        HIWORD(inTimeStamp.mSMPTETime.mCounter) = 2048;
        *&inTimeStamp.mSMPTETime.mType = a2;
        inTimeStamp.mSMPTETime.mHours = 2048;
        *&inTimeStamp.mSMPTETime.mMinutes = a3;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d invalid parameter, audioDucker=%p sampleBuffer=%p sysaSampleBuffer=%p", &inTimeStamp, 0x3Au);
      }
    }

    return 0;
  }

  return v9;
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x28u);
}

uint64_t RTPSendH263Packet(uint64_t a1, char a2, int a3, char a4, char a5, int a6, int a7, char a8, double a9, char a10, void *a11, signed int a12, int *a13, const void *a14, unsigned __int8 a15, int a16, int a17, unsigned __int8 a18, _DWORD *a19, int a20, uint64_t a21, int a22, void *a23, uint64_t a24, _OWORD *a25)
{
  v25 = a23;
  v39 = *MEMORY[0x1E69E9840];
  v26 = 2147549185;
  v38 = -1431655766;
  if (a13)
  {
    *a13 = 0;
    v35 = CheckInHandleDebug();
    if (v35 == 0xFFFFFFFFLL)
    {
      VCMediaControlInfoDispose(a23);
      return 2147549190;
    }

    else if (v35)
    {
      *(v35 + 16) = *(v35 + 16) & 0x80FF | ((a2 & 0x7F) << 8);
      if ((a2 & 0x7F) == 0x7E)
      {
        if (!a3)
        {
          if (a12 <= 1456)
          {
            LOBYTE(v38) = a10 & 7 | (8 * (a8 & 7));
            BYTE1(v38) = (32 * a4) | (16 * (a5 & 1));
            HIWORD(v38) = 0;
            v26 = SendRTP(a1, v35, a6, a7, &v38, 4uLL, a11, a12, a9, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, 0, 0);
            v25 = 0;
          }

          else
          {
            v26 = 2147549198;
          }
        }
      }

      else
      {
        v26 = 2147549199;
      }

      VCMediaControlInfoDispose(v25);
      CheckOutHandleDebug();
    }

    else
    {
      VCMediaControlInfoDispose(a23);
      return 2147549186;
    }
  }

  else
  {
    VCMediaControlInfoDispose(a23);
  }

  return v26;
}

uint64_t RTPProcessH263Packet(uint64_t a1, int *a2, int *a3, _BYTE *a4, _BYTE *a5, CFAllocatorRef structureAllocator, CMBlockBufferRef *blockBufferOut)
{
  v7 = 2147549185;
  if (a1 && blockBufferOut)
  {
    v8 = (a1 + 152);
    if (!*(a1 + 152))
    {
      return 2147549199;
    }

    v9 = *(a1 + 160);
    if ((*v9 & 0xC0) == 0x80)
    {
      *a4 = (*v9 >> 3) & 7;
      *a5 = *v9 & 7;
      *a2 = v9[1] >> 5;
      *a3 = v9[4] >> 7;
      v10 = *v8;
      if (*v8 <= 7)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPProcessH263Packet_cold_1();
          }
        }

        return 2147549199;
      }

      v11 = 8;
    }

    else
    {
      if ((*v9 & 0xC0) != 0)
      {
        return 2147549200;
      }

      *a4 = (*v9 >> 3) & 7;
      *a5 = *v9 & 7;
      *a2 = v9[1] >> 5;
      *a3 = (v9[1] >> 4) & 1;
      v10 = *v8;
      if (*v8 <= 3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPProcessH263Packet_cold_3();
          }
        }

        return 2147549199;
      }

      v11 = 4;
    }

    v12 = (v10 - v11);
    v13 = (*(a1 + 160) + v11);
    blockBufferOut[1] = v12;
    blockBufferOut[2] = v13;
    if (CMBlockBufferCreateWithBufferReference(structureAllocator, *(a1 + 144), v11, v12, 0, blockBufferOut))
    {
      v7 = 2147549187;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPProcessH263Packet_cold_2();
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t VCTimescale_InitializeTimescaleAlgo(_BOOL4 *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = HasMulticore();
  if (a4 >= 5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v45 = 136315906;
        v46 = v13;
        v47 = 2080;
        v48 = "_VCTimescale_TimescaleEnablement";
        v49 = 1024;
        v50 = 44;
        v51 = 1024;
        LODWORD(v52) = a4;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timescale Disabled channelCount[%d]", &v45, 0x22u);
      }
    }

    goto LABEL_14;
  }

  v15 = v12;
  v16 = a6;
  if (a4 >= 2)
  {
    v16 = a6;
    if (a6 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        v16 = 0;
      }

      else
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          v45 = 136315906;
          v46 = v17;
          v47 = 2080;
          v48 = "_VCTimescale_TimescaleEnablement";
          v49 = 1024;
          v50 = 46;
          v51 = 1024;
          LODWORD(v52) = a4;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disable WSOLA Timescale selected for channelCount=%d", &v45, 0x22u);
          v16 = 0;
          v19 = 0;
          if (!v15)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }
      }
    }
  }

  if (!v15)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v19 = v16;
LABEL_15:
  *a1 = v19;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a1;
      v45 = 136315906;
      v46 = v20;
      v47 = 2080;
      v48 = "_VCTimescale_TimescaleEnablement";
      v49 = 1024;
      v50 = 51;
      v51 = 1024;
      LODWORD(v52) = v22;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timescale algorithm selected is %d", &v45, 0x22u);
    }
  }

  *(a1 + 34700) = a4;
  v23 = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
  *(a1 + 4338) = v23;
  if (v23)
  {
    v24 = *a1 - 1;
    if (v24 >= 3)
    {
      v23[2] = 0u;
      v23[3] = 0u;
      *v23 = 0u;
      v23[1] = 0u;
      if (!**(a1 + 4338))
      {
        v33 = 0;
LABEL_35:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v42 = *a1;
            if (*a1)
            {
              v43 = "WSOLA";
            }

            else
            {
              v43 = "PSOLA";
              if (v42 != 2 && v42 != 3)
              {
                v43 = "Empty";
              }
            }

            v45 = 136315906;
            v46 = v40;
            v47 = 2080;
            v48 = "VCTimescale_InitializeTimescaleAlgo";
            v49 = 1024;
            v50 = 127;
            v51 = 2080;
            v52 = v43;
            _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s Timescale successfully initialized ", &v45, 0x26u);
          }
        }

        return v33;
      }
    }

    else
    {
      v25 = off_1F570D330[v24];
      v26 = off_1F570D348[v24];
      v27 = off_1F570D360[v24];
      v28 = off_1F570D378[v24];
      v29 = off_1F570D390[v24];
      v30 = off_1F570D3A8[v24];
      v31 = off_1F570D3C0[v24];
      v32 = off_1F570D3D8[v24];
      *v23 = v25;
      *(v23 + 1) = v26;
      *(v23 + 4) = v29;
      *(v23 + 5) = v28;
      *(v23 + 2) = v27;
      *(v23 + 3) = v30;
      *(v23 + 6) = v31;
      *(v23 + 7) = v32;
    }

    v37 = a6 == 2 || (a6 & 0xFFFFFFFD) == 1;
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"audioTimescalingHysteresisEnabled", v37);
    v33 = (**(a1 + 4338))(a1, a2, a3, a5, BoolValueForKey);
    if ((v33 & 0x80000000) != 0)
    {
      v39 = *(a1 + 4338);
      if (v39)
      {
        v39[2] = 0u;
        v39[3] = 0u;
        *v39 = 0u;
        v39[1] = 0u;
      }
    }

    goto LABEL_35;
  }

  v33 = 2147549187;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCTimescale_InitializeTimescaleAlgo_cold_1(v34, v35);
    }
  }

  return v33;
}

uint64_t VCTimescale_UpdateTimescaleHistoryBuffer(uint64_t result)
{
  if (result)
  {
    v1 = *(*(result + 34704) + 24);
    if (v1)
    {
      if (*result)
      {
        return v1();
      }
    }
  }

  return result;
}

uint64_t VCTimescale_ActiveSpeechAdapt(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 32);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VCTimescale_IsCompressionNeeded(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 40);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VCTimescale_TailSize(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 16);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void VCTimescale_Finalize(uint64_t a1)
{
  v2 = *(a1 + 34704);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      if (*a1)
      {
        v3(a1);
        v2 = *(a1 + 34704);
      }
    }

    free(v2);
    *(a1 + 34704) = 0;
  }
}

uint64_t VCTimescale_TailExtractAvailable(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 48);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VCTimescale_WarpFrameSize(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 56);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t RTPSendH264Packet(uint64_t a1, char a2, unsigned int a3, int a4, int a5, void *a6, signed int a7, int *a8, double a9, const void *a10, unsigned __int8 a11, int a12, int a13, unsigned __int8 a14, _DWORD *a15, int a16, uint64_t a17, int a18, void *a19, uint64_t a20, _OWORD *a21, char a22, int a23)
{
  v23 = a19;
  v24 = 2147549198;
  if (a8)
  {
    *a8 = 0;
    v34 = CheckInHandleDebug();
    if (v34 == 0xFFFFFFFFLL)
    {
      VCMediaControlInfoDispose(a19);
      return 2147549190;
    }

    else if (v34)
    {
      if (a7 >= 1 && ((*(v34 + 16) = *(v34 + 16) & 0x80FF | ((a2 & 0x7F) << 8), (a2 & 0x7F) == 0x7B) || (a2 & 0x7F) == 0x64))
      {
        if (a3 <= 1)
        {
          if (a7 < 0x5B5)
          {
            v24 = SendRTP(a1, v34, a4, a5, 0, 0, a6, a7, a9, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
            v23 = 0;
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPSendH264Packet_cold_1();
            }
          }
        }

        else
        {
          v24 = 2147549185;
        }
      }

      else
      {
        v24 = 2147549199;
      }

      VCMediaControlInfoDispose(v23);
      CheckOutHandleDebug();
    }

    else
    {
      VCMediaControlInfoDispose(a19);
      return 2147549186;
    }
  }

  else
  {
    VCMediaControlInfoDispose(a19);
    return 2147549185;
  }

  return v24;
}

uint64_t RTPProcessH264FragmentationHeader(uint64_t a1, int a2, int *a3, int *a4, _WORD *a5, _BYTE *a6, int *a7, int a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 > 0)
  {
    v13 = *a1 & 0x1F;
    if (a7)
    {
      *a7 = v13;
    }

    if (a6)
    {
      *a6 = 0;
    }

    switch(v13)
    {
      case 25:
        if (a3)
        {
          *a3 = 1;
        }

        if (a4)
        {
          *a4 = 1;
        }

        v14 = 0;
        if (!a5 || !a6)
        {
          goto LABEL_47;
        }

        if (a2 < 3)
        {
          v14 = 2147549199;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPProcessH264FragmentationHeader_cold_1();
            }
          }

          goto LABEL_47;
        }

        *a5 = bswap32(*(a1 + 1)) >> 16;
        *a6 = 1;
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          break;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v21 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            RTPProcessH264FragmentationHeader_cold_2();
          }

          break;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *a5;
          v24 = 136315906;
          v25 = v20;
          v26 = 2080;
          v27 = "RTPProcessH264FragmentationHeader";
          v28 = 1024;
          v29 = 197;
          v30 = 1024;
          v31 = v22;
          v19 = " [%s] %s:%d STAP-B Decoding order is %hu";
          goto LABEL_31;
        }

        break;
      case 29:
        _RTPProcessH264FragmentationHeaderStartEndBits(a1, a2, a3, a4);
        v14 = 0;
        if (!a5 || !a6)
        {
          goto LABEL_47;
        }

        if (a2 < 4)
        {
          v14 = 2147549199;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPProcessH264FragmentationHeader_cold_3();
            }
          }

          goto LABEL_47;
        }

        *a5 = bswap32(*(a1 + 2)) >> 16;
        *a6 = 1;
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          break;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            RTPProcessH264FragmentationHeader_cold_4();
          }

          break;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a5;
          v24 = 136315906;
          v25 = v15;
          v26 = 2080;
          v27 = "RTPProcessH264FragmentationHeader";
          v28 = 1024;
          v29 = 180;
          v30 = 1024;
          v31 = v18;
          v19 = " [%s] %s:%d FU-B Decoding order is %hu";
LABEL_31:
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v19, &v24, 0x22u);
        }

        break;
      case 28:
        _RTPProcessH264FragmentationHeaderStartEndBits(a1, a2, a3, a4);
        break;
      default:
        if (a3)
        {
          *a3 = 1;
        }

        if (!a4)
        {
          break;
        }

        v14 = 0;
        *a4 = 1;
LABEL_47:
        if (a6)
        {
          if (a8)
          {
            if ((*a6 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                RTPProcessH264FragmentationHeader_cold_5();
              }
            }
          }
        }

        return v14;
    }

    v14 = 0;
    goto LABEL_47;
  }

  v14 = 2147549199;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPProcessH264FragmentationHeader_cold_6();
    }
  }

  return v14;
}

void _RTPProcessH264FragmentationHeaderStartEndBits(uint64_t a1, int a2, int *a3, int *a4)
{
  if (a2 > 1)
  {
    if (a3)
    {
      *a3 = *(a1 + 1) >> 7;
    }

    if (a4)
    {
      *a4 = (*(a1 + 1) >> 6) & 1;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTPProcessH264FragmentationHeaderStartEndBits_cold_1();
    }
  }
}

uint64_t RTPProcessH264Packet(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4)
  {
    *v4 = 0;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return 2147549199;
  }

  v6 = **(a1 + 16);
  v7 = v6 & 0x1F;
  if (v7 <= 0x1B)
  {
    if (v7 == 24)
    {
      v8 = 0;
      goto LABEL_19;
    }

    if (v7 == 25)
    {
      v8 = 1;
LABEL_19:

      return _RTPProcessSTAPPacket(a1, a2, v8);
    }

LABEL_13:
    **a2 = 1;
    **(a2 + 8) = 1;
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    targetBBuf = 0;
    DataPointer = VCBlockBufferUtilities_CreateAndGetDataPointer(v12, 0, 4uLL, v13, 0, 0, 4uLL, 1u, &targetBBuf);
    if (DataPointer)
    {
      *DataPointer = bswap32(v5);
      if (CMBlockBufferAppendBufferReference(*(a2 + 48), targetBBuf, 0, 4uLL, 0))
      {
        RTPProcessH264Packet_cold_1();
      }

      else
      {
        appended = CMBlockBufferAppendBufferReference(*(a2 + 48), *a1, 0, v5, 0);
        v9 = 0;
        if (!appended)
        {
          goto LABEL_16;
        }

        RTPProcessH264Packet_cold_2();
      }
    }

    else
    {
      RTPProcessH264Packet_cold_3();
    }

    v9 = v17;
LABEL_16:
    if (targetBBuf)
    {
      CFRelease(targetBBuf);
    }

    return v9;
  }

  if (v7 == 28)
  {
    v11 = 0;
  }

  else
  {
    if (v7 != 29)
    {
      goto LABEL_13;
    }

    v11 = 1;
  }

  return _RTPProcessFUPacket(a1, a2, v11, v6);
}

uint64_t _RTPProcessSTAPPacket(uint64_t a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  targetBBuf = 0;
  if (v3)
  {
    v6 = 1;
    **a2 = 1;
    **(a2 + 8) = 1;
    v7 = v3 - 1;
    if (!a3)
    {
      goto LABEL_13;
    }

    if (v3 > 2)
    {
      v9 = (a2 + 16);
      v8 = *(a2 + 16);
      if (v8)
      {
        v10 = *(a2 + 24);
        if (v10)
        {
          *v8 = bswap32(*(*(a1 + 16) + 1)) >> 16;
          *v10 = 1;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            v13 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = **v9;
                *buf = 136315906;
                v25 = v11;
                v26 = 2080;
                v27 = "_RTPProcessSTAPPacket";
                v28 = 1024;
                v29 = 238;
                v30 = 1024;
                v31 = v14;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STAP-B Decoding order is %hu", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              _RTPProcessSTAPPacket_cold_1();
            }
          }
        }
      }

      v7 = v3 - 3;
      v6 = 3;
LABEL_13:
      if (v7)
      {
        while (v7 != 1)
        {
          v15 = bswap32(*(*(a1 + 16) + v6)) >> 16;
          v16 = v7 - 2 >= v15;
          v7 = v7 - 2 - v15;
          if (!v16)
          {
            _RTPProcessSTAPPacket_cold_6();
            goto LABEL_36;
          }

          v17 = *(a2 + 32);
          v18 = *(a2 + 40);
          targetBBuf = 0;
          DataPointer = VCBlockBufferUtilities_CreateAndGetDataPointer(v17, 0, 4uLL, v18, 0, 0, 4uLL, 1u, &targetBBuf);
          if (!DataPointer)
          {
            _RTPProcessSTAPPacket_cold_5();
            goto LABEL_36;
          }

          *DataPointer = bswap32(v15);
          if (CMBlockBufferAppendBufferReference(*(a2 + 48), targetBBuf, 0, 4uLL, 0))
          {
            _RTPProcessSTAPPacket_cold_3();
            goto LABEL_36;
          }

          v20 = v6 + 2;
          if (CMBlockBufferAppendBufferReference(*(a2 + 48), *a1, v20, v15, 0))
          {
            _RTPProcessSTAPPacket_cold_4();
            goto LABEL_36;
          }

          if (targetBBuf)
          {
            CFRelease(targetBBuf);
            targetBBuf = 0;
          }

          v6 = v20 + v15;
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        v21 = 2147549199;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTPProcessSTAPPacket_cold_2();
          }
        }
      }

      else
      {
LABEL_23:
        v21 = 0;
      }

      goto LABEL_24;
    }

    _RTPProcessSTAPPacket_cold_7();
  }

  else if (_RTPProcessSTAPPacket_cold_8(buf))
  {
    return 2147549199;
  }

LABEL_36:
  v21 = *buf;
LABEL_24:
  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  return v21;
}

uint64_t _RTPProcessFUPacket(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  targetBBuf = 0;
  if (v4 <= 1)
  {
    v5 = 2147549199;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPProcessFUPacket_cold_5();
      }
    }

    return v5;
  }

  v9 = *(a1 + 16);
  v10 = *(v9 + 1);
  **a2 = v10 >> 7;
  if (a3)
  {
    **(a2 + 8) = (*(v9 + 1) & 0x40) != 0;
    v10 = *(v9 + 1);
    v12 = (a2 + 16);
    v11 = *(a2 + 16);
    if (v11)
    {
      v13 = *(a2 + 24);
      if (v13)
      {
        *v11 = bswap32(*(v9 + 2)) >> 16;
        *v13 = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          v16 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = **v12;
              *buf = 136315906;
              v25 = v14;
              v26 = 2080;
              v27 = "_RTPProcessFUPacket";
              v28 = 1024;
              v29 = 306;
              v30 = 1024;
              v31 = v17;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FU-B Decoding order is %hu", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            _RTPProcessFUPacket_cold_1();
          }
        }
      }
    }

    v18 = -3;
    v19 = 4;
  }

  else
  {
    **(a2 + 8) = (v10 & 0x40) != 0;
    v18 = -1;
    v19 = 2;
  }

  if (**a2)
  {
    DataPointer = VCBlockBufferUtilities_CreateAndGetDataPointer(*(a2 + 32), 0, 5uLL, *(a2 + 40), 0, 0, 5uLL, 1u, &targetBBuf);
    if (!DataPointer)
    {
      _RTPProcessFUPacket_cold_3();
      goto LABEL_26;
    }

    *DataPointer = bswap32(v18 + v4);
    DataPointer[4] = v10 & 0x1F | a4 & 0xE0;
    if (CMBlockBufferAppendBufferReference(*(a2 + 48), targetBBuf, 0, 5uLL, 0))
    {
      _RTPProcessFUPacket_cold_2();
      goto LABEL_26;
    }
  }

  appended = CMBlockBufferAppendBufferReference(*(a2 + 48), *a1, v19, v4 - v19, 0);
  v5 = 0;
  if (!appended)
  {
    goto LABEL_20;
  }

  _RTPProcessFUPacket_cold_4();
LABEL_26:
  v5 = *buf;
LABEL_20:
  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  return v5;
}

void OUTLINED_FUNCTION_21_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x22u);
}

uint64_t _VCCannedVideoPacketSource_InjectionThread(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v59 = *MEMORY[0x1E69E9840];
  v41 = 0;
  bzero(v44, 0x17B8uLL);
  v40.tv_sec = 0;
  *&v40.tv_usec = 0;
  gettimeofday(&v40, 0);
  setRealTimeConstraints(0.0);
  bzero(&v55, 0x17B8uLL);
  v42 = 0;
  do
  {
    _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(v2, &v55, &v42);
    if (v42 == 1)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v39 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          _VCCannedVideoPacketSource_InjectionThread_cold_1();
        }
      }

      [*(v2 + 16) seekToFileOffset:0];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          _VCCannedVideoPacketSource_InjectionThread_cold_2();
        }
      }

      return 0;
    }
  }

  while (LOBYTE(v55.value) != 1 || v55.timescale != 0);
  LODWORD(v1) = v57;
  memset(&v43, 170, sizeof(v43));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v43, HostTimeClock);
  v5 = +[VCCannedAVSync sharedCannedAVSync];
  VCCannedAVSync_SetBase(v5, v43.value / v43.timescale);
  v6 = v1 / 90000.0;
  v7 = VCCannedAVSync_AddDrift(v5, v6);
  if (LOBYTE(v55.value) == 2)
  {
    v7 = NTPToMicro(*&v55.timescale);
    v8 = v7;
  }

  else
  {
    if (LOBYTE(v55.value) != 1)
    {
      goto LABEL_13;
    }

    if (v55.timescale == 1)
    {
      v8 = v56;
    }

    else
    {
      if (!v55.timescale)
      {
        v8 = v58;
        goto LABEL_16;
      }

LABEL_13:
      v8 = NAN;
    }
  }

LABEL_16:
  [*(v2 + 16) seekToFileOffset:{0, v7}];
  _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(v2, v44, &v41);
  pthread_mutex_lock((v2 + 88));
  if ((*(v2 + 80) & 1) == 0)
  {
    tv_sec = v40.tv_sec;
    tv_usec = v40.tv_usec;
    while (1)
    {
      v43.value = 0xAAAAAAAAAAAAAAAALL;
      *&v43.timescale = 0xAAAAAAAAAAAAAAAALL;
      *&v55.timescale = 0;
      v55.value = 0;
      gettimeofday(&v55, 0);
      value = tv_sec;
      do
      {
        while (1)
        {
          if (tv_usec <= 979999)
          {
            v12 = 20000;
          }

          else
          {
            tv_sec = ++value;
            v12 = -980000;
          }

          tv_usec += v12;
          v8 = v8 + 0.02;
          if (value == v55.value)
          {
            break;
          }

          if (value >= v55.value)
          {
            goto LABEL_26;
          }
        }
      }

      while (tv_usec < v55.timescale);
      value = v55.value;
LABEL_26:
      v43.value = value;
      *&v43.timescale = 1000 * tv_usec;
      if (pthread_cond_timedwait((v2 + 152), (v2 + 88), &v43) == 60)
      {
        break;
      }

LABEL_86:
      if (*(v2 + 80) == 1)
      {
        goto LABEL_87;
      }
    }

    v13 = micro();
    while (2)
    {
      if (v44[0] == 2)
      {
        v14 = NTPToMicro(v45);
      }

      else
      {
        if (v44[0] != 1)
        {
          goto LABEL_86;
        }

        if (v45 == 1)
        {
          v14 = v47[0];
        }

        else
        {
          if (v45)
          {
            goto LABEL_86;
          }

          v14 = v48;
        }
      }

      if (v14 >= v8)
      {
        goto LABEL_86;
      }

      v15 = v44[0];
      if (v44[0] == 2)
      {
        v45 = MicroToNTP(v13);
        v15 = v44[0];
      }

      else if (v44[0] == 1)
      {
        v16 = &v48;
        if (!v45 || (v16 = v47, v45 == 1))
        {
          *v16 = v13;
          goto LABEL_45;
        }

LABEL_51:
        v18 = 0;
        v17 = 0;
        goto LABEL_52;
      }

      if (v15 == 1)
      {
LABEL_45:
        if (v45)
        {
          v18 = 0;
        }

        else
        {
          v18 = v49;
        }

        if (v45)
        {
          v17 = 0;
        }

        else
        {
          v17 = v49[24];
        }
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_51;
        }

        v17 = v54[24];
        v18 = v54;
      }

LABEL_52:
      v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
      v20 = [*(v2 + 56) objectForKeyedSubscript:v19];
      v21 = [*(v2 + 64) objectForKeyedSubscript:v19];

      v22 = v44[0];
      if (v44[0] == 2)
      {
        if (!v17)
        {
          v20 = v21;
          if (v21)
          {
            goto LABEL_62;
          }
        }

        if (v17)
        {
          v28 = v17;
          do
          {
            v29 = objc_alloc(MEMORY[0x1E696AD98]);
            v30 = *v18;
            v18 += 2;
            v31 = [v29 initWithInt:v30];
            v32 = [*(v2 + 64) objectForKeyedSubscript:v31];
            (*(v32 + 16))(v32, &v45);

            --v28;
          }

          while (v28);
        }

LABEL_66:
        v22 = v44[0];
      }

      else if (v44[0] == 1)
      {
        if (v17 || !v20)
        {
          if (v17)
          {
            v23 = v17;
            do
            {
              v24 = objc_alloc(MEMORY[0x1E696AD98]);
              v25 = *v18;
              v18 += 2;
              v26 = [v24 initWithInt:v25];
              v27 = [*(v2 + 56) objectForKeyedSubscript:v26];
              (*(v27 + 16))(v27, &v45);

              --v23;
            }

            while (v23);
          }

          goto LABEL_66;
        }

LABEL_62:
        (*(v20 + 16))(v20, &v45);
        goto LABEL_66;
      }

      if (v22 == 1)
      {
        if (!v45)
        {
          VCBlockBuffer_Clear(v51);
          VCBlockBuffer_Clear(v52);
          VCBlockBuffer_Clear(v53);
        }
      }

      else if (v22 == 2)
      {
        if (v46)
        {
          for (i = 0; i < v46; v47[i++] = 0.0)
          {
            CFAllocatorDeallocate(*(v2 + 40), *&v47[i]);
          }
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(v2, v44, &v41);
      if (v41 == 1)
      {
        if (v44[0] == 2)
        {
          v8 = NTPToMicro(v45);
        }

        else
        {
          if (v44[0] != 1)
          {
            goto LABEL_82;
          }

          if (v45 == 1)
          {
            v8 = v47[0];
            goto LABEL_85;
          }

          if (v45)
          {
LABEL_82:
            v8 = NAN;
          }

          else
          {
            v8 = v48;
          }
        }

LABEL_85:
        memset(&v55, 170, sizeof(v55));
        v34 = CMClockGetHostTimeClock();
        CMClockGetTime(&v55, v34);
        v35 = +[VCCannedAVSync sharedCannedAVSync];
        VCCannedAVSync_SetBase(v35, v55.value / v55.timescale);
        VCCannedAVSync_AddDrift(v35, v6);
        goto LABEL_86;
      }

      continue;
    }
  }

LABEL_87:
  if (v44[0] == 1)
  {
    if (!v45)
    {
      VCBlockBuffer_Clear(v51);
      VCBlockBuffer_Clear(v52);
      VCBlockBuffer_Clear(v53);
    }
  }

  else if (v44[0] == 2)
  {
    if (v46)
    {
      for (j = 0; j < v46; v47[j++] = 0.0)
      {
        CFAllocatorDeallocate(*(v2 + 40), *&v47[j]);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  pthread_mutex_unlock((v2 + 88));
  return 0;
}

unint64_t VCCannedVideoPacketSource_RegisterForCannedReplay(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (v4 == 1)
  {
    if (!a2)
    {
      VCCannedVideoPacketSource_RegisterForCannedReplay_cold_1(&aBlock, v13);
      return LODWORD(v13[0]);
    }

    aBlock = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = ___VCCannedVideoPacketSource_RegisterRTPCallback_block_invoke;
    v17 = &unk_1E85F55E8;
    v18 = a3;
    v19 = a2;
    v11 = _Block_copy(&aBlock);
    [*(a1 + 56) setObject:v11 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    _Block_release(v11);
    aBlock = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = ___VCCannedVideoPacketSource_RegisterRTCPCallback_block_invoke;
    v17 = &unk_1E85F5610;
    v18 = a4;
    v19 = a2;
    v12 = _Block_copy(&aBlock);
    [*(a1 + 64) setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    _Block_release(v12);
    return 0;
  }

  if (v4 != 2)
  {
    return 2147549183;
  }

  v8 = *(a2 + 6);
  aBlock = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke;
  v17 = &unk_1E85F5598;
  v18 = a1;
  v19 = a3;
  if ((RTPRegisterPacketCallback(v8, a2, &aBlock) & 0x80000000) != 0)
  {
    VCCannedVideoPacketSource_RegisterForCannedReplay_cold_3();
    return LODWORD(v13[0]);
  }

  v9 = *(a2 + 6);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_49;
  v13[3] = &unk_1E85F55C0;
  v13[4] = a1;
  v13[5] = a4;
  result = RTCPRegisterPacketCallback(v9, a2, v13);
  if ((result & 0x80000000) != 0)
  {
    VCCannedVideoPacketSource_RegisterForCannedReplay_cold_2();
    return v20;
  }

  return result;
}

uint64_t VCCannedVideoPacketSource_UnregisterForCannedReplay(uint64_t a1, unsigned __int16 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_3(&v6);
    return v6;
  }

  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (v3 == 2)
  {
    if ((RTPUnregisterPacketCallback() & 0x80000000) != 0)
    {
      VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_2();
    }

    else
    {
      result = RTCPUnregisterPacketCallback();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_1();
    }

    return v6;
  }

  if (v3 == 1)
  {
    [*(a1 + 56) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    [*(a1 + 56) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    return 0;
  }

  return 2147549183;
}

void _VCCannedVideoPacketSource_WriteBytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
    if (v4)
    {
      v5 = *(a1 + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___VCCannedVideoPacketSource_WriteBytes_block_invoke;
      block[3] = &unk_1E85F37F0;
      block[4] = a1;
      block[5] = v4;
      dispatch_async(v5, block);
    }

    else
    {
      _VCCannedVideoPacketSource_WriteBytes_cold_1();
    }
  }

  else
  {
    _VCCannedVideoPacketSource_WriteBytes_cold_2();
  }
}

void _VCCannedVideoPacketSource_WriteBlockBuffer(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (a2 && (v3 = *(a2 + 8)) != 0)
  {
    blockBufferOut = 0;
    if (CMBlockBufferCreateContiguous(*(a1 + 32), *a2, *MEMORY[0x1E695E480], 0, 0, v3, 0, &blockBufferOut))
    {
      _VCCannedVideoPacketSource_WriteBlockBuffer_cold_1();
    }

    else
    {
      v4 = 0;
      if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &v4))
      {
        _VCCannedVideoPacketSource_WriteBlockBuffer_cold_2();
      }

      else
      {
        v6[0] = CMBlockBufferGetDataLength(blockBufferOut);
        _VCCannedVideoPacketSource_WriteBytes(a1, v6, 8);
        _VCCannedVideoPacketSource_WriteBytes(a1, v4, v6[0]);
      }
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }

  else
  {
    _VCCannedVideoPacketSource_WriteBytes(a1, v6, 8);
  }
}

void _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (*(a1 + 8) == 1)
  {
    PacketTypeFromFile = _VCCannedVideoPacketSource_ReadPacketTypeFromFile(a1);
    if (PacketTypeFromFile)
    {
      goto LABEL_9;
    }

    if (a3)
    {
      *a3 = 1;
    }

    [*(a1 + 16) seekToFileOffset:0];
    PacketTypeFromFile = _VCCannedVideoPacketSource_ReadPacketTypeFromFile(a1);
    if (PacketTypeFromFile)
    {
LABEL_9:
      if (PacketTypeFromFile == 2)
      {
        _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 0x668uLL, (a2 + 8));
        if (*(a2 + 16))
        {
          v7 = 0;
          do
          {
            v8 = MEMORY[0x1E1288880](*(a1 + 40), 1036, 0x10000409551EE10, 0);
            *(a2 + 24 + 8 * v7) = v8;
            _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 0x40CuLL, v8);
            ++v7;
          }

          while (v7 < *(a2 + 16));
        }

        memset(v9, 0, 24);
        _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), v9);
        *(a2 + 104) = v9[0];
      }

      else if (PacketTypeFromFile == 1)
      {
        _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 0x17B0uLL, (a2 + 8));
        if (!*(a2 + 8))
        {
          *(a2 + 136) = 0u;
          *(a2 + 200) = 0;
          *(a2 + 152) = 0u;
          *(a2 + 168) = 0u;
          *(a2 + 184) = 0u;
          _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), a2 + 136);
          _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), a2 + 160);
          _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), a2 + 184);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers_cold_2();
      }
    }

    *a2 = PacketTypeFromFile;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers_cold_1();
    }
  }
}

void _VCCannedVideoPacketSource_ReadBlockBufferFromFile(uint64_t a1, void *a2, uint64_t a3)
{
  dataLength[1] = *MEMORY[0x1E69E9840];
  dataLength[0] = 0;
  _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 8uLL, dataLength);
  if (!dataLength[0])
  {
    goto LABEL_16;
  }

  v11 = 0;
  v6 = [a2 readDataUpToLength:dataLength[0] error:&v11];
  if ([v6 length])
  {
    v7 = v11 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_4();
LABEL_16:
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_5(a3);
    return;
  }

  if (CMBlockBufferCreateWithMemoryBlock(*(a1 + 32), 0, dataLength[0], *MEMORY[0x1E695E480], 0, 0, dataLength[0], 1u, a3))
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_1();
    goto LABEL_16;
  }

  v8 = [v6 bytes];
  if (CMBlockBufferReplaceDataBytes(v8, *a3, 0, dataLength[0]))
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_2();
    goto LABEL_16;
  }

  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(*a3, 0, 0, 0, &dataPointerOut) || (v9 = dataPointerOut) == 0)
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_3();
    goto LABEL_16;
  }

  *(a3 + 8) = dataLength[0];
  *(a3 + 16) = v9;
}

FILE **LogDump_OpenLog(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v44 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableTFRCDump", @"com.apple.VideoConference", keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat[0])
  {
    if (VCDefaults_DefaultDumpEnablementValue())
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  if (!AppBooleanValue)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = VRLogfileAlloc(0, a1, a2, a3, "com.apple.VideoConference.Jitterlog", a5);
  VRLogfilePrintSync(v13, "VERSION = %s, DTX Support\n", v14, v15, v16, v17, v18, v19, a6);
  VRLogfilePrintSync(v13, "CALLID = %s\n", v20, v21, v22, v23, v24, v25, a1);
  VRLogfilePrintSync(v13, "%s", v26, v27, v28, v29, v30, v31, a4);
LABEL_6:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v34 = "Enabled";
      v37 = v32;
      *keyExistsAndHasValidFormat = 136315906;
      v39 = "LogDump_OpenLog";
      v38 = 2080;
      if (!v13)
      {
        v34 = "Disabled";
      }

      v40 = 1024;
      v41 = 69;
      v42 = 2080;
      v43 = v34;
      _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Log Dump is %s", keyExistsAndHasValidFormat, 0x26u);
    }
  }

  return v13;
}

uint64_t LogDump_CloseLog(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = a1;
  VRLogfileFree(v2);
  return VRLogfileRemoveOldFilesInDefaultLogDumpPath();
}

unint64_t GetNTPTime()
{
  v0 = micro();
  if (!dword_1ECC7670C)
  {
    TimeZeroInit();
  }

  return (TimeZero + v0 * 4294967300.0);
}

unint64_t MicroToNTP(double a1)
{
  if (!dword_1ECC7670C)
  {
    TimeZeroInit();
  }

  return (TimeZero + a1 * 4294967300.0);
}

void TimeZeroInit()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(v2, 170, sizeof(v2));
  v0 = micro();
  gettimeofday(&v2[1], 0);
  v1 = micro();
  gettimeofday(v2, 0);
  if (micro() - v1 < v1 - v0)
  {
    v2[1] = v2[0];
    v0 = v1;
  }

  TimeZero = vcvtd_n_u64_f64(v2[1].tv_sec + v2[1].tv_usec * 0.000001 + 2208988800.0 - v0, 0x20uLL);
}

double NTPToMicro(uint64_t a1)
{
  if (!dword_1ECC7670C)
  {
    TimeZeroInit();
  }

  return vcvtd_n_f64_u64(a1 - TimeZero, 0x20uLL);
}

void _VCStreamIOAudioController_SampleBufferCallback(uint64_t a1, CMSampleBufferRef sbuf)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    NumSamples = CMSampleBufferGetNumSamples(sbuf);
    if (NumSamples > VCAudioBufferList_GetSampleCapacity(*(a1 + 248)))
    {
      _VCStreamIOAudioController_SampleBufferCallback_cold_2(a1);
    }

    else
    {
      memset(&v34, 170, sizeof(v34));
      CMSampleBufferGetPresentationTimeStamp(&v34, sbuf);
      v33 = v34;
      if (*(a1 + 296))
      {
        v5 = *[*(a1 + 232) clientFormat];
        lhs = v33;
        rhs = *(a1 + 304);
        memset(&v36, 170, sizeof(v36));
        CMTimeSubtract(&v36, &lhs, &rhs);
        v6 = *(a1 + 328);
        lhs = v36;
        Seconds = CMTimeGetSeconds(&lhs);
        v8 = *(a1 + 328);
        v9 = llround(Seconds * (v5 / v8)) * v6;
        if (v8 == v9)
        {
          v10 = NAN;
        }

        else
        {
          lhs = v36;
          v10 = CMTimeGetSeconds(&lhs);
          lhs = v36;
          *(a1 + 300) += llround(v5 * CMTimeGetSeconds(&lhs)) - *(a1 + 328);
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v31 = VRTraceErrorLogLevelToCSTR();
            log = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              lhs = v36;
              v12 = CMTimeGetSeconds(&lhs);
              lhs = *(a1 + 304);
              v13 = CMTimeGetSeconds(&lhs);
              lhs = v33;
              v14 = CMTimeGetSeconds(&lhs);
              v15 = [objc_msgSend(*(a1 + 224) "streamInputID")];
              v16 = *(a1 + 328);
              v17 = *(a1 + 300);
              LODWORD(lhs.value) = 136317698;
              *(&lhs.value + 4) = v31;
              LOWORD(lhs.flags) = 2080;
              *(&lhs.flags + 2) = "_VCStreamIOAudioController_GetSampleBufferTimestamp";
              HIWORD(lhs.epoch) = 1024;
              v38 = 486;
              v39 = 2048;
              v40 = a1;
              v41 = 2048;
              *v42 = v12;
              *&v42[8] = 1024;
              *&v42[10] = v9;
              v43 = 2048;
              v44 = v13;
              v45 = 2048;
              v46 = v14;
              v47 = 2048;
              v48 = v15;
              v49 = 2048;
              v50 = v16;
              v51 = 1024;
              v52 = v17;
              _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, "VCStreamIOAudioController [%s] %s:%d controller=%p Real time miss. host time jumped: %f (%u samples) (%f to %f) for streamInputID=%ld. lastSampleCount=%lu -> nextExpectedSampleTime=%u", &lhs, 0x64u);
            }
          }
        }

        v11 = *(a1 + 300);
      }

      else
      {
        v11 = 0;
        v10 = NAN;
      }

      *(a1 + 304) = v33;
      *(a1 + 328) = NumSamples;
      *(a1 + 300) += NumSamples;
      *(a1 + 296) = 1;
      VCAudioBufferList_Reset(*(a1 + 248));
      AudioBufferList = VCAudioBufferList_GetAudioBufferList(*(a1 + 248));
      if (CMSampleBufferCopyPCMDataIntoAudioBufferList(sbuf, 0, NumSamples, AudioBufferList))
      {
        _VCStreamIOAudioController_SampleBufferCallback_cold_1(a1);
      }

      else
      {
        v19 = *(a1 + 248);
        lhs = v34;
        v20 = CMTimeGetSeconds(&lhs);
        VCAudioBufferList_SetTime(v19, v11, v20);
        VCAudioBufferList_SetSampleCount(*(a1 + 248), NumSamples);
        VCAudioBufferList_SetPriority(*(a1 + 248), 255);
        VCAudioBufferList_SetVoiceActivity(*(a1 + 248), 1);
        VCAudioBufferList_SetHostTimeJumpSize(*(a1 + 248), v10);
        ++*(a1 + 352);
        AveragePower = VCAudioBufferList_GetAveragePower(*(a1 + 248));
        v22 = VCAudioIOControllerClient_ControllerFormat(*(a1 + 232));
        if (v22 && (v23 = *(v22 + 40)) != 0)
        {
          v24 = (*v22 / v23);
        }

        else
        {
          v24 = 100;
        }

        VCUtil_ExponentialMovingAverage((a1 + 344), AveragePower, (5 * v24));
        HostTime = VCAudioBufferList_GetHostTime(*(a1 + 248));
        if (HostTime - *(a1 + 336) >= 5.0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v28 = VCStreamInput_Identifier(*(a1 + 224));
              v29 = *(a1 + 352);
              v30 = *(a1 + 344);
              LODWORD(lhs.value) = 136316930;
              *(&lhs.value + 4) = v26;
              LOWORD(lhs.flags) = 2080;
              *(&lhs.flags + 2) = "_VCStreamIOAudioController_UpdateAndDisplayHealthInfo";
              HIWORD(lhs.epoch) = 1024;
              v38 = 516;
              v39 = 2048;
              v40 = v28;
              v41 = 1024;
              *v42 = v24;
              *&v42[4] = 2048;
              *&v42[6] = v29;
              v43 = 2048;
              v44 = AveragePower;
              v45 = 2048;
              v46 = v30;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCStreamIOAudioController [%s] %s:%d @=@ Health: VCStreamIOAudioController streamInputID=%ld blocksPerSecond=%u inputBlocksEnqueued=%lu inputPowerAverage=%f inputPowerMovingAverage=%f", &lhs, 0x4Au);
            }
          }

          *(a1 + 336) = HostTime;
        }

        PacketThread_SendSampleBuffer(*(a1 + 240), *(a1 + 248));
      }
    }
  }

  else
  {
    _VCStreamIOAudioController_SampleBufferCallback_cold_3();
  }
}

void _VCStreamIOAudioController_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 280);
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  VCAudioBufferList_ZeroMemory(a2);
  SampleFormat = VCAudioBufferList_GetSampleFormat(a2);
  if (SampleFormat)
  {
    LODWORD(v12[0]) = *SampleFormat;
    v12[1] = VCAudioBufferList_GetTimestamp(a2);
    (*(v4 + 8))(*v4, v12, a2);
    memset(v14, 170, sizeof(v14));
    VCAudioBufferList_GetNetworkTimestamp(a2, v14);
    if ((v14[1] & 0x100000000) != 0)
    {
      v6 = VCAudioBufferList_CreateSampleBufferAllocateWithAllocator(a2, *(a1 + 256), *(a1 + 288));
      valuePtr = v14[0];
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        _VCStreamIOAudioController_PullAudioSamples_cold_1();
        if (!v6)
        {
          return;
        }

        goto LABEL_10;
      }

      v8 = v7;
      CMSetAttachment(v6, @"networkTimestamp", v7, 1u);
      CFRelease(v8);
      os_unfair_lock_lock((a1 + 272));
      v9 = *(a1 + 264);
      if (v9 && (VCStreamOutput_EnqueueSampleBuffer(v9, v6) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v16 = v10;
          v17 = 2080;
          v18 = "_VCStreamIOAudioController_EnqueueSampleBuffer";
          v19 = 1024;
          v20 = 587;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCStreamIOAudioController [%s] %s:%d Enqueue failed", buf, 0x1Cu);
        }
      }

      os_unfair_lock_unlock((a1 + 272));
      if (v6)
      {
LABEL_10:
        CFRelease(v6);
      }
    }
  }
}

void OUTLINED_FUNCTION_30_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x36u);
}

void VCVirtualAVCaptureDeviceInput_OnMediaSample(uint64_t a1, const void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 40));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a1 + 24);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v11 "mediaType")])
        {
          VCVirtualAVCaptureInputPort_OnMediaSample(v11, a2, a3);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock((a1 + 40));
}

uint64_t _VCConnectionStatisticsCollector_ComparePacketCounts(void *a1, void *a2)
{
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{@"PktCnt", "unsignedIntValue"}];
  v4 = [objc_msgSend(a2 objectForKeyedSubscript:{@"PktCnt", "unsignedIntValue"}];
  if (v3 <= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 < v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

char *RTPMapCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x102004089B94702uLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init((v0 + 16), 0);
  }

  return v1;
}

void RTPMapDestroy(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    RTPMapResetMapping(v2);
    pthread_mutex_destroy((*a1 + 16));
    free(*a1);
    *a1 = 0;
  }
}

void RTPMapResetMapping(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 16));
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;

    pthread_mutex_unlock((a1 + 16));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapResetMapping_cold_1();
    }
  }
}

void RTPMapAddMappingForPayload(char **a1, int a2, int a3, int a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a4 == 128)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315650;
        v34 = v4;
        v35 = 2080;
        v36 = "RTPMapAddMappingForPayload";
        v37 = 1024;
        v38 = 63;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d internalPayload is invalid.", &v33, 0x1Cu);
      }
    }

    return;
  }

  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPMapAddMappingForPayload_cold_1();
      }
    }

    return;
  }

  pthread_mutex_lock((a1 + 2));
  v10 = *(a1 + 3);
  v11 = *(a1 + 2);
  if (v10 < 1)
  {
    v18 = 0;
LABEL_22:
    if (v10 == v11)
    {
      v11 = v10 + 5;
      v19 = malloc_type_malloc(6 * v11, 0x1000040274DC3F3uLL);
      if (!v19)
      {
LABEL_36:

        pthread_mutex_unlock((a1 + 2));
        return;
      }

      if (v10 < -5)
      {
        goto LABEL_57;
      }

      v20 = *(a1 + 2);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v21 = 6 * *(a1 + 3);
      if (v21 > 6 * v20 || v21 > 6 * (v10 + 5))
      {
        goto LABEL_57;
      }

      v22 = v19;
      memcpy(v19, *a1, v21);
      free(*a1);
      *a1 = v22;
      *(a1 + 2) = v11;
    }

    else
    {
      v22 = *a1;
    }

    v23 = &v22[6 * v18];
    if (v23 >= &v22[6 * v11] || v23 < v22)
    {
      goto LABEL_57;
    }

    *v23 = a4;
    *(v23 + 1) = a2;
    *(v23 + 2) = a3;
    ++*(a1 + 3);
    goto LABEL_36;
  }

  v12 = 0;
  v13 = *a1;
  while (1)
  {
    v14 = &v13[v12];
    if (&v13[v12] >= &(*a1)[6 * v11] || v14 < v13)
    {
      goto LABEL_57;
    }

    v16 = *v14;
    v17 = v14[1];
    if (v16 == a4)
    {
      break;
    }

    if (v17 == a2 && v13[v12 + 2] == a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v31 = &(*a1)[v12 * 2];
          if (v31 < &(*a1)[6 * *(a1 + 2)] && v31 >= *a1)
          {
            v32 = *v31;
            v33 = 136316674;
            v34 = v29;
            v35 = 2080;
            v36 = "RTPMapAddMappingForPayload";
            v37 = 1024;
            v38 = 95;
            v39 = 1024;
            v40 = a2;
            v41 = 1024;
            v42 = a3;
            v43 = 1024;
            v44 = v32;
            v45 = 1024;
            v46 = a4;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d External payloads send(%d), recv(%d) are used twice by existing internal payload %d and new internal payload %d. Treated as no-op", &v33, 0x34u);
            goto LABEL_55;
          }

LABEL_57:
          __break(0x5519u);
        }
      }

      goto LABEL_55;
    }

    v12 += 3;
    if (3 * v10 == v12)
    {
      v18 = *(a1 + 3);
      goto LABEL_22;
    }
  }

  if (v17 != a2 || v13[v12 + 2] != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315906;
        v34 = v25;
        v35 = 2080;
        v36 = "RTPMapAddMappingForPayload";
        v37 = 1024;
        v38 = 79;
        v39 = 1024;
        v40 = a4;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Internal payload(%d)'s mapping is overwriten", &v33, 0x22u);
      }
    }

    v27 = &(*a1)[v12 * 2];
    if (v27 < &(*a1)[6 * *(a1 + 2)] && v27 >= *a1)
    {
      *(v27 + 2) = a2;
      *(v27 + 4) = a3;
      goto LABEL_55;
    }

    goto LABEL_57;
  }

LABEL_55:
  pthread_mutex_unlock((a1 + 2));
}

void RTPMapPrintMapping(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    pthread_mutex_lock((a1 + 16));
    if (*(a1 + 12) >= 1)
    {
      v2 = 0;
      v3 = 0;
      v4 = MEMORY[0x1E6986640];
      v5 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *v5;
          v8 = *v5;
          if (*v4 == 1)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = (*a1 + v2);
              if (v9 >= *a1 + 6 * *(a1 + 8) || v9 < *a1)
              {
                goto LABEL_27;
              }

              v11 = v9[2];
              v12 = *v9;
              v13 = v9[1];
              *buf = 136316418;
              v20 = v6;
              v21 = 2080;
              v22 = "RTPMapPrintMapping";
              v23 = 1024;
              v24 = 154;
              v25 = 1024;
              v26 = v11;
              v27 = 1024;
              v28 = v12;
              v29 = 1024;
              v30 = v13;
              _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d *** RTPPrintRTPMapping *** external payload receive %d -> internal payload %d -> external payload send %d", buf, 0x2Eu);
            }
          }

          else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v14 = (*a1 + v2);
            if (v14 >= *a1 + 6 * *(a1 + 8) || v14 < *a1)
            {
LABEL_27:
              __break(0x5519u);
            }

            v16 = v14[2];
            v17 = *v14;
            v18 = v14[1];
            *buf = 136316418;
            v20 = v6;
            v21 = 2080;
            v22 = "RTPMapPrintMapping";
            v23 = 1024;
            v24 = 154;
            v25 = 1024;
            v26 = v16;
            v27 = 1024;
            v28 = v17;
            v29 = 1024;
            v30 = v18;
            _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d *** RTPPrintRTPMapping *** external payload receive %d -> internal payload %d -> external payload send %d", buf, 0x2Eu);
          }
        }

        ++v3;
        v2 += 6;
      }

      while (v3 < *(a1 + 12));
    }

    pthread_mutex_unlock((a1 + 16));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapPrintMapping_cold_1();
    }
  }
}

uint64_t RTPMapGetInternalPayload(unsigned __int16 **a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 > 0x5F || a2 == 20)
    {
      result = pthread_mutex_lock((a1 + 2));
      v5 = *(a1 + 3);
      if (v5 < 1)
      {
LABEL_10:
        pthread_mutex_unlock((a1 + 2));
      }

      else
      {
        v6 = *a1;
        while (1)
        {
          if (v6 >= &(*a1)[3 * *(a1 + 2)] || v6 < *a1)
          {
            __break(0x5519u);
            return result;
          }

          if (v6[2] == a2)
          {
            break;
          }

          v6 += 3;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = *v6;
        v8 = *v6;
        pthread_mutex_unlock((a1 + 2));
        if (v8 != 128)
        {
          return v7;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapGetInternalPayload_cold_1();
    }
  }

  return a2;
}

uint64_t RTPMapGetExternalPayload(unsigned __int16 **a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 > 0x5F || a2 == 20)
    {
      result = pthread_mutex_lock((a1 + 2));
      v5 = *(a1 + 3);
      if (v5 < 1)
      {
LABEL_10:
        pthread_mutex_unlock((a1 + 2));
      }

      else
      {
        v6 = *a1;
        while (1)
        {
          if (v6 >= &(*a1)[3 * *(a1 + 2)] || v6 < *a1)
          {
            __break(0x5519u);
            return result;
          }

          if (*v6 == a2)
          {
            break;
          }

          v6 += 3;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = v6[1];
        pthread_mutex_unlock((a1 + 2));
        if (v7 != 128)
        {
          return v7;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapGetExternalPayload_cold_1();
    }
  }

  return a2;
}

uint64_t VCRateControlAlgorithmLayeredContinuousTier_ResetRampingStatus(uint64_t result)
{
  *(result + 1092) = 0;
  *(result + 1096) = 0;
  return result;
}

double VCRateControlAlgorithmLayeredContinuousTierPriv_Configure(uint64_t a1, void *a2, int a3)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_Configure(a1, a2, a3);
  *(a1 + 25720) = 0;
  *(a1 + 25728) = 0;
  LODWORD(v4) = *(a1 + 1120);
  result = v4;
  *(a1 + 1112) = result;
  *(a1 + 1124) = vcRateControlTierBitrates[*(a1 + 1100)];
  return result;
}

BOOL _VCRateControlAlgorithmLayeredContinuousTier_DoRateControl(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v95 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  if (*a2 <= 10)
  {
    if (v12 == 1)
    {
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate(a1, a2, a3, a4, a5, a6, a7, a8))
      {
        v50 = 1;
        VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 1, v52, v53, v54, v55, v56, v57);
        if (*(a1 + 5416) == 1)
        {
          VCRateControlMediaController_UpdateBasebandSuggestion(*(a1 + 1064), a2);
        }

        return v50;
      }

      return 0;
    }

    if (v12 == 2)
    {
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates(a1, a2))
      {
        VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 2, v13, v14, v15, v16, v17, v18);
        VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPostStateTransitionUpdates(a1);
        if (VCRateControlAlgorithmBase_IsPeriodicLogOrLogDumpEnabled(a1))
        {
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v78 = 0u;
          v19 = *(a1 + 1144);
          v76 = 0u;
          v77 = 0u;
          v61 = *(a1 + 5320);
          v20 = *(a1 + 2904);
          v74 = 0u;
          v75 = 0u;
          v21 = *(a1 + 2912);
          v22 = *(a1 + 2920);
          v72 = 0u;
          v73 = 0u;
          v23 = *(a1 + 2928);
          v60 = *(a1 + 5152);
          *__str = 0u;
          v71 = 0u;
          v24 = *(a1 + 5352);
          v25 = *(a1 + 5336);
          v59 = ((v24 + v25) / 1000.0);
          v26 = (v24 / 1000.0);
          v27 = (v25 / 1000.0);
          v30 = "OFF";
          if (*(a1 + 5416))
          {
            v30 = "ON";
          }

          if (*(a1 + 5322))
          {
            v31 = "S";
          }

          else
          {
            v31 = "U";
          }

          if (*(a1 + 1169))
          {
            v32 = "<";
          }

          else
          {
            v32 = "-";
          }

          v33 = 88;
          if (v60)
          {
            v33 = 79;
          }

          v28 = *(a1 + 5360);
          v29 = *(a1 + 5344);
          snprintf(__str, 0x190uLL, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%u\tMBL:%d %u\t%4u/%4u\t %4u:%4u/%4u  %4u:%4u/%4u  CS: %05X %05X %u BB: %3u\t%4u\t%3u\t%s UAT %u\t%u\t%s\t%s\t%d\t%d\t%d\t%d\t%.3f\t%.3f\t%u\t%u\t%.3f\t%u\t%u", v19, v61, v20, v21, v22, v23, v33, (*(a1 + 5120) * 1000.0), *(a1 + 5040) * 100.0, *(a1 + 5104) * 100.0, *(a1 + 1216), *(a1 + 5032), *(a1 + 1220), *(a1 + 1128) / 0x3E8u, *(a1 + 1120) / 0x3E8u, v59, v26, v27, ((v28 + v29) / 1000.0), (v28 / 1000.0), (v29 / 1000.0), *(a1 + 1092), *(a1 + 1096), *(a1 + 1132), *(a1 + 5392) / 0x3E8u, *(a1 + 5396), (*(a1 + 5400) * 1000.0), v30, *(a1 + 5420), *(a1 + 5424), v31, v32, *(a1 + 1088), *(a1 + 5020) / 0x3E8u, *(a1 + 5024), *(a1 + 5016), *(a1 + 5184), *(a1 + 5432), *(a1 + 5436) / 0x3E8u, *(a1 + 5440) / 0x3E8u, *(a1 + 25736), *(a1 + 25720) / 0x3E8, *(a1 + 25728));
          if (*(a1 + 5176) == 1)
          {
            v40 = *(a1 + 1136);
            *(a1 + 1136) = v40 + 1;
            if ((v40 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v41 = VRTraceErrorLogLevelToCSTR();
              v42 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v63 = v41;
                v64 = 2080;
                v65 = "_VCRateControlAlgorithmLayeredContinuousTier_PrintRateControlInfoToLogDump";
                v66 = 1024;
                v67 = 701;
                v68 = 2080;
                v69 = __str;
                _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %s", buf, 0x26u);
              }
            }
          }

          v43 = *(a1 + 5160);
          if (v43)
          {
            VRLogfilePrintWithTimestamp(v43, "%s\n", v34, v35, v36, v37, v38, v39, __str);
          }
        }

        *(a1 + 1092) = 0;
        *(a1 + 1096) = 0;
        return 1;
      }

      return 0;
    }

    goto LABEL_29;
  }

  if (v12 != 11)
  {
    if (v12 == 14)
    {
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate(a1, a2, a9, a10))
      {
        VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 14, v44, v45, v46, v47, v48, v49);
        return 1;
      }

      return 0;
    }

LABEL_29:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v51 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCRateControlAlgorithmLayeredContinuousTier_DoRateControl_cold_1(v51);
      }
    }

    return 0;
  }

  return VCRateControlAlgorithmStabilizedNOWRDPriv_DoRateControlWithNWStatistics(a1, a2);
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v42 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 1:
      if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToBaseband(result))
      {
        if (VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToBaseband(v8))
        {
          *(v8 + 5412) = VCRateControlAlgorithmStabilizedNOWRDPriv_BasebandAdditionalTiersForRampUp(v8);
        }

        goto LABEL_23;
      }

      *(v8 + 1100) = VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToBaseband(v8, *(v8 + 5368));
      LODWORD(v21) = *(*(v8 + 48) + 4 * *(v8 + 1100));
      v20 = v21;
      break;
    case 14:
      if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent(result))
      {
        *(v8 + 5418) = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent(v8, v18);
        goto LABEL_23;
      }

      v19 = (*(v8 + 5420) - *(v8 + 5424)) / *(v8 + 5424);
      if (v19 < 0.25)
      {
        v19 = 0.25;
      }

      *(v8 + 25752) = v19;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(v8, "congestionSeverity=%f, bytesInFlight=%u, bytesInFlightThreshold=%u", v12, v13, v14, v15, v16, v17, SLOBYTE(v19));
      v20 = _VCRateControlAlgorithmLayeredContinuousTier_RampDown(v8);
      break;
    case 2:
      v9 = *(result + 1088);
      if (v9 <= 1)
      {
        if (!v9)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            v25 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v37 = v24;
              v38 = 2080;
              v39 = "_VCRateControlAlgorithmLayeredContinuousTier_UpdateTargetBitrateWithVCRCStatistics";
              v40 = 1024;
              v41 = 419;
              _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d VCRateControl is paused", buf, 0x1Cu);
            }
          }

          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
        }

        if (v9 == 1)
        {
          if (!*(result + 25761))
          {
            if (!*(result + 25760))
            {
              return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
            }

            *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampUp(result);
            v11 = *(v8 + 60);
            if (v11 >= *(v8 + 76))
            {
              v11 = *(v8 + 76);
            }

            LODWORD(v10) = *(*(v8 + 48) + 4 * v11);
            if (*(v8 + 1112) < v10)
            {
              return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
            }

            goto LABEL_41;
          }

LABEL_61:
          *(v8 + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampDown(v8);
          v28 = v8;
          v29 = 6;
          goto LABEL_62;
        }

LABEL_30:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate_cold_1(v23);
          }
        }

        return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
      }

      if (v9 != 2)
      {
        if (v9 == 6)
        {
          if (*(result + 25761))
          {
            *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampDown(result);
          }

          else if (*(result + 25760))
          {
            *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampUp(result);
LABEL_41:
            v28 = v8;
            v29 = 2;
LABEL_62:
            VCRateControlAlgorithmBasePriv_StateChange(v28, v29);
          }

          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
        }

        goto LABEL_30;
      }

      if (!*(result + 25761))
      {
        if (!*(result + 25760))
        {
          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
        }

        *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampUp(result);
        if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldFastRampUp(v8))
        {
          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
        }

        v31 = *(v8 + 60);
        if (v31 >= *(v8 + 76))
        {
          v31 = *(v8 + 76);
        }

        LODWORD(v30) = *(*(v8 + 48) + 4 * v31);
        if (*(v8 + 1112) >= v30)
        {
          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, *(v8 + 1112));
        }

        v28 = v8;
        v29 = 1;
        goto LABEL_62;
      }

      v26 = *(result + 1112);
      v27 = *(result + 25720);
      if (v27 == 0.0)
      {
        *(result + 25720) = v26;
        ++*(result + 25728);
        goto LABEL_61;
      }

      v32 = (v26 - v27);
      if (v32 >= 0)
      {
        v33 = (v26 - v27);
      }

      else
      {
        v33 = -v32;
      }

      if (v27 * 0.15 <= v33)
      {
        if (*(result + 430) != 1 || (v32 & 0x80000000) == 0 || *(result + 1216) - 1 >= *(*(result + 48) + 4 * *(result + 68)) / 0x3E8u)
        {
          *(result + 25728) = 0;
          goto LABEL_60;
        }

        v34 = --*(result + 25728) & ~(*(result + 25728) >> 31);
      }

      else
      {
        v34 = ++*(result + 25728);
        if (v34 >= 10)
        {
          v34 = 10;
        }
      }

      *(result + 25728) = v34;
LABEL_60:
      v35 = vcvtd_n_f64_u32(v26, 1uLL) + *(result + 25720) * 0.5;
      *(result + 25720) = v35;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(result, "VCRC update bandwidthWall=%f, confidence=%u, diff=%d", a3, a4, a5, a6, a7, a8, SLOBYTE(v35));
      goto LABEL_61;
    default:
      return result;
  }

  *(v8 + 1112) = v20;
  VCRateControlAlgorithmBasePriv_StateChange(v8, 6);
LABEL_23:
  v22 = *(v8 + 1112);

  return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v8, v22);
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (*a2 != 14)
  {
    VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate_cold_1();
    return v7;
  }

  if (!*(a1 + 1088))
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_ResetBytesInFlight(a1);
    return 0;
  }

  v5 = *(a2 + 8);
  *(a1 + 5448) = v5;
  LODWORD(v5) = *(a1 + 5420);
  LODWORD(a4) = *(a2 + 40);
  *(a1 + 5420) = (*&a4 * 0.1 + v5 * 0.9);
  VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateBytesInFlightThreshold(a1);
  result = 1;
  if ((*(a1 + 5428) & 1) == 0)
  {
    *(a1 + 5418) = 1;
    return 0;
  }

  return result;
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1088))
  {
    if (*(a1 + 1064))
    {
      if (*a2 == 1)
      {
        VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics(a1, a2, a3, a4, a5, a6, a7, a8);
        return 1;
      }

      else
      {
        VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_1();
        return v9;
      }
    }

    else
    {
      VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_2();
      return v10;
    }
  }

  else
  {
    VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_3();
    return v11;
  }
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPostStateTransitionUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 5416) == 1)
  {
    VCRateControlMediaController_UpdateBasebandSuggestion(*(a1 + 1064), a2);
  }
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    result = VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics(a1, a2);
    if (result)
    {
      VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics(a1, a2);
      *(a1 + 25760) = 0;
      *(a1 + 25761) = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDown(a1);
      if ((*(a1 + 25761) & 1) == 0)
      {
        *(a1 + 25760) = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUp(a1);
      }

      return 1;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates_cold_1(v5);
    }

    return 0;
  }

  return result;
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPostStateTransitionUpdates(uint64_t a1)
{
  if (*(a1 + 1092) != 2 || *(a1 + 1096))
  {
    *(a1 + 25744) = *(a1 + 1144);
  }

  VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateVCRateControlHistory(a1);
  v2 = *(a1 + 1064);
  if (v2)
  {
    v3 = *(a1 + 1169) == 1 && *(a1 + 1144) - *(a1 + 5328) > 0.5;
    VCRateControlMediaController_SetShouldDisableLargeFrameRequestsWhenInitialRampUp(v2, (*(a1 + 1088) == 1) & (v3 ^ 1));
    v4 = *(a1 + 1064);

    VCRateControlMediaController_SetRateLimitedMaxTimeExceeded(v4, v3);
  }
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(uint64_t result, unsigned int a2)
{
  v2 = *(result + 60);
  if ((v2 & 0x80000000) == 0)
  {
    while (vcRateControlTierBitrates[v2] > a2)
    {
      if (v2-- <= 0)
      {
        v2 = -1;
        break;
      }
    }
  }

  v4 = *(result + 1100);
  v5 = *(result + 64);
  if (v2 > v5)
  {
    v5 = v2;
  }

  *(result + 1100) = v5;
  if (*(result + 1100) < v4)
  {
    *(result + 1192) = *(result + 1144);
  }

  *(result + 1120) = a2;
  *(result + 1124) = vcRateControlTierBitrates[*(result + 1100)];
  return result;
}

uint64_t _VCRateControlAlgorithmLayeredContinuousTier_RampDown(uint64_t a1)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, *(a1 + 1144));
  v2 = *(a1 + 1112);
  if (v2 <= 228000.0)
  {
    v14 = _VCRateControlAlgorithmLayeredContinuousTier_RampDownSpeedFactor(a1, 1, 228000.0);
    *(a1 + 25736) = v14;
    v15 = *(a1 + 1112);
    if (v15 >= 50000.0)
    {
      if (v15 >= 132000.0)
      {
        v11 = 32000.0;
      }

      else
      {
        v11 = 16000.0;
      }
    }

    else
    {
      v11 = 8000.0;
    }

    v13 = v2 - v11 * v14;
    v12 = "[%u] Congestion!!! New bitrate down linearly newTargetBitrate=%f, congestionSeverity=%f";
  }

  else
  {
    v3 = _VCRateControlAlgorithmLayeredContinuousTier_RampDownSpeedFactor(a1, 0, 228000.0);
    *(a1 + 25736) = v3;
    v10 = pow(1.159, v3);
    v12 = "[%u] Congestion!!! New bitrate down exponentially to newTargetBitrate=%f, congestionSeverity=%f";
    v13 = v2 / v10;
  }

  LODWORD(v11) = vcRateControlTierBitrates[*(a1 + 64)];
  v16 = *&v11;
  if (v13 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, v12, v4, v5, v6, v7, v8, v9, *(a1 + 1132));
  v19 = v17;
  *(a1 + 25752) = 0x3FF0000000000000;
  if (*(a1 + 430) == 1)
  {
    if ((*(a1 + 1096) & 0x10) != 0)
    {
      v20 = *(a1 + 1100);
      if (v20 < *(a1 + 72))
      {
        v21 = v20 - 1;
        v22 = *(a1 + 64);
        if (v21 > v22)
        {
          v22 = v21;
        }

        v23 = *(a1 + 48);
LABEL_24:
        LODWORD(v19) = *(v23 + 4 * v22);
        return *&v19;
      }
    }

    if (*(a1 + 426) == 1)
    {
      v23 = *(a1 + 48);
      LODWORD(v18) = *(v23 + 4 * *(a1 + 84));
      if (v18 > v19)
      {
        v19 = v18;
        if (*(a1 + 1112) <= v18)
        {
          v19 = *(a1 + 1112);
          if (*(a1 + 1144) - *(a1 + 1192) >= *(a1 + 600))
          {
            v22 = *(a1 + 1100) - 1;
            if (v22 <= *(a1 + 64))
            {
              v22 = *(a1 + 64);
            }

            goto LABEL_24;
          }
        }
      }
    }
  }

  return v19;
}

double _VCRateControlAlgorithmLayeredContinuousTier_RampDownSpeedFactor(uint64_t a1, int a2, double a3)
{
  if (!a2 || (LODWORD(a3) = vcRateControlTierBitrates[*(a1 + 84)], v4 = *&a3, v5 = 1.0, *(a1 + 1112) >= v4))
  {
    ShouldDoAdditionalRampDownDueToLossEvent = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldDoAdditionalRampDownDueToLossEvent(a1);
    v5 = 2.0;
    if (!ShouldDoAdditionalRampDownDueToLossEvent)
    {
      v5 = 1.0;
      if ((*(a1 + 1097) & 2) == 0)
      {
        v5 = 3.0;
        if (*(a1 + 427))
        {
          v5 = 1.0;
        }
      }
    }
  }

  return v5 * *(a1 + 25752);
}

uint64_t _VCRateControlAlgorithmLayeredContinuousTier_RampUp(uint64_t a1)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampUp(a1);
  *(a1 + 5016) = 0;
  v2 = *(a1 + 1112);
  v3 = *(a1 + 1144) - *(a1 + 25744);
  v4 = _VCRateControlAlgorithmLayeredContinuousTier_RampUpSpeedFactor(a1);
  *(a1 + 25736) = v4;
  v5 = v3 * v4;
  if (v2 <= 228000.0)
  {
    v6 = v2 + v5 * 32000.0;
  }

  else
  {
    v6 = v2 * pow(1.159, v5);
  }

  LODWORD(v5) = vcRateControlTierBitrates[*(a1 + 60)];
  v7 = *&v5;
  if (v6 >= v7)
  {
    return v7;
  }

  return v6;
}

double _VCRateControlAlgorithmLayeredContinuousTier_RampUpSpeedFactor(uint64_t a1)
{
  if ((*(a1 + 5178) & 1) == 0 || (v2 = 30.0, *(a1 + 1100) <= *(a1 + 72)))
  {
    if (*(a1 + 430) != 1 || (v3 = *(a1 + 1216)) == 0 || (v2 = 3.0, v3 > *(*(a1 + 48) + 4 * *(a1 + 68)) / 0x3E8u))
    {
      if (*(a1 + 1088) == 1)
      {
        v4 = (a1 + 5128);
      }

      else
      {
        v4 = (a1 + 40 + 8 * VCRateControlCongestionLevel_BitrateRange(*(a1 + 1112)) + 336);
      }

      v2 = *v4;
    }
  }

  v5 = *(a1 + 1112);
  v6 = *(a1 + 1216);
  v7 = 1000 * v6;
  v8 = *(a1 + 25720);
  v9 = 3;
  if (v8 == 0.0 || v5 < 76000.0 || v7 && v8 > (1000 * v6))
  {
    v8 = v7;
  }

  else
  {
    v9 = *(a1 + 25728);
  }

  v10 = 1.0 / v2;
  v11 = v8 - v5;
  v12 = -(v8 - v5);
  if (v11 < 0.0)
  {
    v11 = v12;
  }

  v13 = v8 * 0.15;
  v15 = v11 >= v8 * 0.15 || v9 < 3;
  if (*(a1 + 430) != 1 || v6 == 0)
  {
    if (v15)
    {
LABEL_32:
      v17 = v10;
      return fmin(fmax(v17, 0.0166666667), 2.0);
    }

    v17 = v11 / v13 / (v9 - 2);
    goto LABEL_34;
  }

  if (v15)
  {
    goto LABEL_32;
  }

  v17 = v11 / v13 / (v9 - 2);
  if (v6 > *(*(a1 + 48) + 4 * *(a1 + 68)) / 0x3E8u)
  {
LABEL_34:
    if (*(a1 + 5178) != 1)
    {
      return fmin(fmax(v17, 0.0166666667), 2.0);
    }
  }

  if (v17 > v10)
  {
    v17 = v10;
  }

  return fmin(fmax(v17, 0.0166666667), 2.0);
}

uint64_t RTPGenerateSSRC()
{
  do
  {
    v0 = vcvtd_n_s64_f64(vcvtd_n_f64_u32(hwrandom(), 0x1FuLL), 0x10uLL);
    result = vcvtd_n_s64_f64(vcvtd_n_f64_u32(hwrandom(), 0x1FuLL), 0x10uLL) | (v0 << 16);
  }

  while (!result);
  return result;
}

uint64_t RTPCreateHandle(uint64_t *a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 2147549199;
    }

    VRTraceErrorLogLevelToCSTR();
    v9 = 2147549199;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPCreateHandle_cold_9();
    }

    return v9;
  }

  v16 = malloc_type_calloc(1uLL, 0x6C98uLL, 0x10F0040549470A2uLL);
  if (!v16)
  {
    v9 = 2147549187;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPCreateHandle_cold_8();
      }
    }

    return v9;
  }

  v17 = v16;
  v18 = v16 + 27800;
  *(v16 + 2) = -1;
  *v16 = 0xFFFFFFFF00000001;
  *(v16 + 8) = 128;
  result = RTPMapCreate();
  *(v17 + 8) = result;
  *(v17 + 7) = a2;
  *(v17 + 1321) = a6;
  *(v17 + 1322) = a7;
  *(v17 + 38) = -1;
  *(v17 + 2646) = a5;
  *(v17 + 1750) = 3;
  *(v17 + 23) = 1;
  *(v17 + 663) = 0u;
  *(v17 + 1329) = 0;
  *(v17 + 1328) = 0;
  *(v17 + 168) = xmmword_1DBD478D0;
  *(v17 + 2668) = -1;
  *(v17 + 2708) = -1;
  *(v17 + 6946) = 0;
  if (v17 < v18)
  {
    *(v17 + 2257) = 0;
    bzero(v17 + 7080, 0x700uLL);
    *(v17 + 179) = 1;
    if (!*(v17 + 96))
    {
      do
      {
        v20 = hwrandom16();
        *(v17 + 96) = v20;
      }

      while (!v20);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(v17 + 96);
        *buf = 136316418;
        v43 = v21;
        v44 = 2080;
        v45 = "RTPCreateHandle";
        v46 = 1024;
        v47 = 217;
        v48 = 2048;
        v49 = v17;
        v50 = 1024;
        v51 = a2;
        v52 = 1024;
        v53 = v23;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p Starting SeqNum for PayloadType %d = %d", buf, 0x32u);
      }
    }

    if (!a8)
    {
      a8 = RTPGenerateSSRC();
    }

    *(v17 + 50) = a8;
    v24 = *(v17 + 49);
    if (a4 && !v24)
    {
      do
      {
        v25 = hwrandom();
        v24 = vcvtd_n_s64_f64(vcvtd_n_f64_u32(hwrandom(), 0x1FuLL), 0x10uLL) | (vcvtd_n_s64_f64(vcvtd_n_f64_u32(v25, 0x1FuLL), 0x10uLL) << 16);
        *(v17 + 49) = v24;
      }

      while (!v24);
      a8 = *(v17 + 50);
    }

    *(v17 + 37) = 0;
    *(v17 + 3474) = 0x3FF0000000000000;
    *(v17 + 29) = v24;
    *(v17 + 30) = v24;
    *(v17 + 31) = v24;
    *(v17 + 32) = v24;
    *(v17 + 79) = 24000;
    *(v17 + 6) = bswap32(a8);
    pthread_mutex_init((v17 + 7016), 0);
    Typed = VCMemoryPool_CreateTyped(0x17B0uLL, 0x1032040646F23E4);
    *(v17 + 1332) = Typed;
    if (Typed)
    {
      v27 = *MEMORY[0x1E695E480];
      if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "RTCPPacketAllocator", v17 + 1353))
      {
        RTPCreateHandle_cold_1();
      }

      else if (VCAllocatorFirstCome_Create(v27, "RTCPBlockBufferHeaderAllocator", v17 + 1333))
      {
        RTPCreateHandle_cold_2();
      }

      else if (VCAllocatorFirstCome_Create(v27, "RTPPacketBlockBufferAllocator", v17 + 1373))
      {
        RTPCreateHandle_cold_3();
      }

      else
      {
        v28 = *(v17 + 1373);
        blockBufferOut = 0;
        v29 = CMBlockBufferCreateWithMemoryBlock(v28, 0, 0x5DCuLL, 0, 0, 0, 0x5DCuLL, 1u, &blockBufferOut);
        if (v29)
        {
          if (v29 >= 0)
          {
            v33 = v29;
          }

          else
          {
            v33 = -v29;
          }

          v9 = v33 | 0xD0010000;
          goto LABEL_49;
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
          blockBufferOut = 0;
        }

        if (VCAllocatorFirstCome_Create(v27, "channelDataFormatAllocator", v17 + 1375))
        {
          RTPCreateHandle_cold_4();
        }

        else
        {
          v41 = xmmword_1DBD478E0;
          if (VCAllocatorMultiQueue_Create(v27, "RTPPacketMetadataAllocator", 2u, &v41, v17 + 1374))
          {
            RTPCreateHandle_cold_5();
          }

          else
          {
            Handle = CreateHandle();
            if (Handle != 0xFFFFFFFFLL)
            {
              v31 = Handle;
              *(v17 + 1317) = 0xFFFFFFFFLL;
              *(v17 + 1318) = 0xFFFFFFFFLL;
              *(v17 + 1319) = 0;
              *(v17 + 2640) = 0;
              *(v17 + 2662) = -1;
              if (VCDefaults_GetBoolValueForKey(@"enableLTRPLogging", 0))
              {
                v32 = 7;
              }

              else
              {
                v32 = 8;
              }

              *(v17 + 2660) = v32;
              *(v17 + 1418) = 0;
              *(v17 + 1419) = v17 + 11344;
              *(v17 + 1420) = 0;
              *(v17 + 1421) = v17 + 11360;
              *(v17 + 1422) = 0;
              bzero(v17 + 11392, 0x4000uLL);
              v9 = 0;
              *a1 = v31;
              return v9;
            }

            RTPCreateHandle_cold_6();
          }
        }
      }
    }

    else
    {
      RTPCreateHandle_cold_7();
    }

    v9 = *buf;
LABEL_49:
    pthread_mutex_destroy((v17 + 7016));
    v34 = *(v17 + 1353);
    if (v34)
    {
      CFRelease(v34);
    }

    v35 = *(v17 + 1332);
    if (v35)
    {
      VCMemoryPool_Destroy(v35);
    }

    v36 = *(v17 + 1333);
    if (v36)
    {
      CFRelease(v36);
    }

    v37 = *(v17 + 1373);
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = *(v17 + 1375);
    if (v38)
    {
      CFRelease(v38);
    }

    v39 = *(v17 + 1374);
    if (v39)
    {
      CFRelease(v39);
    }

    free(v17);
    return v9;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPGetTimestampBase()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 196);
  CheckOutHandleDebug();
  return v1;
}

void RTPCloseHandle()
{
  v53 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = v0;
    _RTPUnregisterPacketCallback(v0);
    _RTCPUnregisterPacketCallback(v1);
    v2 = *(v1 + 4);
    if (v2 != -1)
    {
      VTP_Close(v2);
    }

    v3 = *(v1 + 8);
    if (v3 != -1)
    {
      VTP_Close(v3);
    }

    CheckOutHandleDebug();
    if (*(v1 + 10608))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(v1 + 10608);
          *buf = 136315906;
          *&buf[4] = v4;
          v47 = 2080;
          v48 = "RTPCloseHandle";
          v49 = 1024;
          v50 = 407;
          v51 = 2048;
          v52 = v6;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing the statisticsCollector:%p", buf, 0x26u);
        }
      }

      CFRelease(*(v1 + 10608));
    }

    if (*(v1 + 10616))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v1 + 10616);
          *buf = 136315906;
          *&buf[4] = v7;
          v47 = 2080;
          v48 = "RTPCloseHandle";
          v49 = 1024;
          v50 = 411;
          v51 = 2048;
          v52 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing the basebandCongestionDetector:%p", buf, 0x26u);
        }
      }

      CFRelease(*(v1 + 10616));
    }

    if (*(v1 + 10624))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v1 + 10624);
          *buf = 136315906;
          *&buf[4] = v10;
          v47 = 2080;
          v48 = "RTPCloseHandle";
          v49 = 1024;
          v50 = 415;
          v51 = 2048;
          v52 = v12;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing the mediaQueue:%p", buf, 0x26u);
        }
      }

      CFRelease(*(v1 + 10624));
    }

    if (v1 >= v1 + 27800)
    {
      __break(0x5519u);
    }

    else
    {
      v13 = 0;
      do
      {
        v14 = v13;
        _RTPTransportMediaPacketHistoryCleanUp(v1, v13++);
      }

      while (v14 < 0x3FF);
      if (*(v1 + 28) <= 1u)
      {
        pthread_mutex_destroy((v1 + 7016));
        SRTPCleanUp(v1 + 7080);
        SRTPCleanUp(v1 + 7528);
        SRTPCleanUp(v1 + 7976);
        SRTPCleanUp(v1 + 8424);
        v15 = *(v1 + 40);
        if (v15)
        {
          free(v15);
          *(v1 + 40) = 0;
          *(v1 + 32) = 0;
        }

        v16 = *(v1 + 56);
        if (v16)
        {
          free(v16);
          *(v1 + 56) = 0;
          *(v1 + 48) = 0;
        }
      }

      if (*(v1 + 64))
      {
        RTPMapDestroy((v1 + 64));
      }

      v17 = *(v1 + 80);
      if (v17)
      {
        free(v17);
      }

      v18 = *(v1 + 10632);
      if (v18)
      {
        CFRelease(v18);
      }

      _RTPClearTransportStreamsInternal(v1);
      v19 = *(v1 + 11312);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = *(v1 + 11320);
      if (v20)
      {
        CFRelease(v20);
      }

      v21 = *(v1 + 11328);
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *(v1 + 11336);
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *(v1 + 11376);
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = *(v1 + 11344);
      *buf = v24;
      if (v24)
      {
        v25 = (v1 + 11344);
        do
        {
          v26 = v24;
          v24 = *(v24 + 6056);
          v27 = *v25;
          if (*v25 == v26)
          {
            v31 = *(v27 + 6056);
            *v25 = v31;
            v29 = v1 + 11344;
            if (v31)
            {
              goto LABEL_51;
            }
          }

          else
          {
            do
            {
              v28 = v27;
              v27 = *(v27 + 6056);
            }

            while (v27 != v26);
            v29 = v28 + 6056;
            v30 = *(v27 + 6056);
            *(v28 + 6056) = v30;
            if (v30)
            {
              goto LABEL_51;
            }
          }

          *(v1 + 11352) = v29;
LABEL_51:
          _RTPReleaseRTPPacketInternal(v1, buf);
          *buf = v24;
        }

        while (v24);
      }

      v32 = *(v1 + 11360);
      v45 = v32;
      if (v32)
      {
        v33 = (v1 + 11360);
        while (1)
        {
          v34 = v32;
          v32 = *(v32 + 1632);
          v35 = *v33;
          if (*v33 != v34)
          {
            break;
          }

          v39 = *(v35 + 1632);
          *v33 = v39;
          v38 = v1 + 11360;
          if (!v39)
          {
            goto LABEL_62;
          }

LABEL_63:
          _RTCPPacketForget(v1, &v45);
          v45 = v32;
          if (!v32)
          {
            goto LABEL_64;
          }
        }

        do
        {
          v36 = v35;
          v35 = *(v35 + 1632);
        }

        while (v35 != v34);
        v37 = *(v35 + 1632);
        *(v36 + 1632) = v37;
        if (v37)
        {
          goto LABEL_63;
        }

        v38 = v36 + 1632;
LABEL_62:
        *(v1 + 11368) = v38;
        goto LABEL_63;
      }

LABEL_64:
      v40 = *(v1 + 10824);
      if (v40)
      {
        CFRelease(v40);
      }

      VCMemoryPool_Destroy(*(v1 + 10656));
      v41 = *(v1 + 10664);
      if (v41)
      {
        CFRelease(v41);
      }

      v42 = *(v1 + 10984);
      if (v42)
      {
        CFRelease(v42);
      }

      v43 = *(v1 + 11000);
      if (v43)
      {
        CFRelease(v43);
      }

      v44 = *(v1 + 10992);
      if (v44)
      {
        CFRelease(v44);
      }

      free(v1);
    }
  }
}

double _RTPUnregisterPacketCallback(uint64_t a1)
{
  if (*(a1 + 10688))
  {
    v2 = *(a1 + 10672);
    if (v2 == -1)
    {
      if (*(a1 + 11288))
      {
        _RTPEnsureTransportStreamsDeactivated(a1);
      }
    }

    else
    {
      VTP_UnregisterPacketCallback(v2);
      *(a1 + 10672) = -1;
    }

    _Block_release(*(a1 + 10688));
    result = 0.0;
    *(a1 + 10680) = 0u;
  }

  return result;
}

uint64_t _RTPClearTransportStreamsInternal(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _RTPEnsureTransportStreamsDeactivated(a1);
  if ((v2 & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v3;
      v13 = 2080;
      v14 = "_RTPClearTransportStreamsInternal";
      v15 = 1024;
      v16 = 5539;
      v17 = 1024;
      v18 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _RTPEnsureTransportStreamsDeactivated failed %d", &v11, 0x22u);
    }
  }

  v5 = a1[1411];
  if (v5)
  {
    CFRelease(v5);
    a1[1411] = 0;
  }

  v6 = a1[1412];
  if (v6)
  {
    CFRelease(v6);
    a1[1412] = 0;
  }

  v7 = a1[1413];
  if (v7)
  {
    CFRelease(v7);
    a1[1413] = 0;
  }

  v8 = a1[985];
  if (v8)
  {
    CFRelease(v8);
    a1[985] = 0;
  }

  v9 = a1[986];
  if (v9)
  {
    CFRelease(v9);
    a1[986] = 0;
  }

  return v2;
}

void _RTPReleaseRTPPacketInternal(uint64_t a1, _DWORD **a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      if (!*v2)
      {
        VCBlockBuffer_Clear((v2 + 32));
        VCBlockBuffer_Clear((v2 + 38));
        VCBlockBuffer_Clear((v2 + 44));
      }

      if (v2 >= v2 + 1516)
      {
        __break(0x5519u);
      }

      else
      {
        v4 = *(a1 + 10656);

        VCMemoryPool_Free(v4, v2);
      }
    }
  }
}

uint64_t RTPGetJitter(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = 2147549185;
  if (a2 && a3 && a4)
  {
    v8 = CheckInHandleDebug();
    if (v8)
    {
      *a2 = *(v8 + 4828);
      *a3 = *(v8 + 6776);
      *a4 = vcvtad_u64_f64(*(v8 + 6784));
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v4;
}

uint64_t RTPGetPacketSent(uint64_t a1, _DWORD *a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 204);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

uint64_t RTPSetAudioReceiver(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10600) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetWRMInfo(uint64_t a1, uint64_t a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *(v4 + 10592) = a2;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

uint64_t RTPGetPacketLossMetrics(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2147549186;
  }

  if (*(v7 + 7004))
  {
    v8 = *(v7 + 704) - *(v7 + 712);
    v9 = *(v7 + 692) - (*(v7 + 708) + *(v7 + 688)) + 1;
    if (a2)
    {
      *a2 = v8;
    }

    if (a3)
    {
      *a3 = v9;
    }

    if (a4)
    {
      v10 = v9 - v8;
      if (v9 < v8)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          v13 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v15 = 136316162;
              v16 = v11;
              v17 = 2080;
              v18 = "RTPGetPacketLossMetrics";
              v19 = 1024;
              v20 = 588;
              v21 = 1024;
              v22 = v8;
              v23 = 1024;
              v24 = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negative packetsLostForInterval detected. receivedForInterval=%d expectedForInterval=%d. Reset to 0", &v15, 0x28u);
            }
          }

          else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v15 = 136316162;
            v16 = v11;
            v17 = 2080;
            v18 = "RTPGetPacketLossMetrics";
            v19 = 1024;
            v20 = 588;
            v21 = 1024;
            v22 = v8;
            v23 = 1024;
            v24 = v9;
            _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Negative packetsLostForInterval detected. receivedForInterval=%d expectedForInterval=%d. Reset to 0", &v15, 0x28u);
          }
        }

        v10 = 0;
      }

      *a4 = v10;
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPResetHandle()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147549186;
  }

  RTPReset(v0, *(v0 + 4832));
  CheckOutHandleDebug();
  return 0;
}

void RTPReset(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1 + 6480;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "RTPReset";
      v11 = 1024;
      v12 = 604;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SSRC:%X", &v7, 0x22u);
    }
  }

  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 4816) = 0;
  *(a1 + 4828) = 0;
  *(a1 + 4832) = a2;
  *(a1 + 4840) = 0;
  *(a1 + 4852) = 0;
  *(a1 + 6472) = vneg_f32(0xFFFFFFFFLL);
  *v4 = 255;
  *(a1 + 6488) = 0;
  *(a1 + 7004) = 0;
  *(a1 + 10648) = -1;
  os_unfair_lock_lock((a1 + 9028));
  *(v4 + 2544) = 0;
  *(a1 + 7648) = 0;
  os_unfair_lock_unlock((a1 + 9028));
  *(a1 + 7658) = 0;
}

uint64_t RTPResetDecryptionStatus()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147549186;
  }

  *(v0 + 10648) = -1;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetDestinationWithToken(uint64_t a1, uint64_t a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v6 = v5;
  *(v5 + 144) = a3;
  VTP_SetSourceDestinationWithToken(*(v5 + 4), a2);
  VTP_SetSourceDestinationWithToken(*(v6 + 8), a2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v6 + 28);
      v11 = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "RTPSetDestinationWithToken";
      v15 = 1024;
      v16 = 684;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP/RTCP Destination for PT%d = [IDS datagram channel token %u]", &v11, 0x28u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetDestination(uint64_t a1, int a2, const char *a3, int a4, int a5, int a6, int a7)
{
  v43 = *MEMORY[0x1E69E9840];
  memset(v31, 170, 6);
  v29 = 0;
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2147549186;
  }

  v14 = v13;
  if (!a7)
  {
    *(v13 + 144) = a6;
  }

  *(v13 + 12) = a2;
  memset(&v30, 0, sizeof(v30));
  if (a2)
  {
    v15 = 30;
  }

  else
  {
    v15 = 2;
  }

  v30.ai_family = v15;
  v30.ai_socktype = 2;
  __sprintf_chk(v31, 0, 6uLL, "%u", a4);
  v16 = getaddrinfo(a3, v31, &v30, &v29);
  if (v16 == -1 || !v29)
  {
    v24 = v16 | 0xB0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v33 = v25;
        v34 = 2080;
        v35 = "RTPSetDestination";
        v36 = 1024;
        v37 = 719;
        v38 = 1024;
        v39 = 719;
        v40 = 2080;
        *v41 = a3;
        *&v41[8] = 2080;
        *&v41[10] = v31;
        *&v41[18] = 1024;
        v42[0] = v24;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: getaddrinfo(%s,%s) failed(%08X)", buf, 0x3Cu);
      }
    }

    goto LABEL_29;
  }

  result = *(v14 + 4);
  ai_addr = v29->ai_addr;
  if (!ai_addr || ai_addr < (ai_addr + v29->ai_addrlen))
  {
    VTP_SetSourceDestinationWithIPPort(result);
    freeaddrinfo(v29);
    __sprintf_chk(v31, 0, 6uLL, "%u", a5);
    if (getaddrinfo(a3, v31, &v30, &v29) == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v24 = 0xFFFFFFFFLL;
      }

      else
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        v24 = 0xFFFFFFFFLL;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v33 = v27;
          v34 = 2080;
          v35 = "RTPSetDestination";
          v36 = 1024;
          v37 = 735;
          v38 = 1024;
          v39 = 735;
          v40 = 2080;
          *v41 = a3;
          *&v41[8] = 2080;
          *&v41[10] = v31;
          *&v41[18] = 1024;
          v42[0] = -1;
          _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: getaddrinfo(%s,%s) failed(%08X)", buf, 0x3Cu);
        }
      }

      goto LABEL_29;
    }

    result = *(v14 + 8);
    v19 = v29->ai_addr;
    if (!v19 || v19 < (v19 + v29->ai_addrlen))
    {
      VTP_SetSourceDestinationWithIPPort(result);
      freeaddrinfo(v29);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v14 + 28);
          *buf = 136316930;
          v33 = v20;
          v34 = 2080;
          v35 = "RTPSetDestination";
          v36 = 1024;
          v37 = 746;
          v38 = 1024;
          v39 = v22;
          v40 = 1024;
          *v41 = a7;
          *&v41[4] = 2080;
          *&v41[6] = a3;
          *&v41[14] = 1024;
          *&v41[16] = a4;
          LOWORD(v42[0]) = 1024;
          *(v42 + 2) = a5;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP/RTCP Destination for PT%d(%d) = [%s:%u/%u]", buf, 0x3Eu);
        }
      }

      v23 = *(v14 + 10536);
      if (v23 != 0xFFFFFFFFLL)
      {
        MediaQueue_SetThrottlingIsIPv6(v23, *(v14 + 12) != 0);
      }

      v24 = 0;
LABEL_29:
      CheckOutHandleDebug();
      return v24;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPPayloads_PayloadProperties(int a1, int a2, uint64_t a3, int a4, int a5, _DWORD *a6, int *a7, int *a8, int *a9)
{
  v9 = 24;
  for (i = &dword_1DBD47908; *(i - 2) != a5; i += 5)
  {
    if (!--v9)
    {
      return 2147549199;
    }
  }

  v12 = *i;
  v13 = i[2];
  if (a5 > 118)
  {
    if (a5 == 119)
    {
      if (a4)
      {
        v13 = a4 | 0x200000;
        v12 = a4;
      }

      goto LABEL_23;
    }

    if (a5 != 123 && a5 != 126)
    {
      goto LABEL_23;
    }

LABEL_12:
    if (a7)
    {
      v14 = a2 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v12 = 8000;
    }

    else
    {
      v12 = 90000;
    }

    goto LABEL_23;
  }

  if (a5 == 3)
  {
    if (a1)
    {
      v13 = 458753;
    }

    else
    {
      v13 = 458754;
    }

    goto LABEL_23;
  }

  if (a5 == 100)
  {
    goto LABEL_12;
  }

LABEL_23:
  v15 = i[1];
  if (a6)
  {
    *a6 = *(i - 1);
  }

  if (a7)
  {
    *a7 = v12;
  }

  if (a8)
  {
    if (v15 == -1)
    {
      v15 = *(a3 + 40);
    }

    *a8 = v15;
  }

  result = 0;
  if (a9)
  {
    *a9 = v13;
  }

  return result;
}

uint64_t RTPSetRTCPFB(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 148) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetTxPayloadList(uint64_t a1, int a2, const void *a3)
{
  v3 = 2147549185;
  if (a2 >= 1 && a3)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 56);
      if (v8)
      {
        free(v8);
        *(v7 + 56) = 0;
        *(v7 + 48) = 0;
      }

      v9 = malloc_type_malloc(4 * a2, 0xEEAD9C92uLL);
      if (v9)
      {
        v10 = v9;
        memcpy(v9, a3, 4 * a2);
        v3 = 0;
        *(v7 + 56) = v10;
        *(v7 + 48) = a2;
      }

      else
      {
        RTPSetTxPayloadList_cold_1();
        v3 = v12;
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2147549186;
    }
  }

  return v3;
}

uint64_t RTPSetRxPayloadList(uint64_t a1, int a2, const void *a3)
{
  v3 = 2147549185;
  if (a2 < 1 || !a3)
  {
    return v3;
  }

  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2147549186;
  }

  v7 = v6;
  v8 = *(v6 + 40);
  if (v8)
  {
    free(v8);
    *(v7 + 40) = 0;
    *(v7 + 32) = 0;
  }

  v9 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (!v9)
  {
    RTPSetRxPayloadList_cold_3();
    goto LABEL_30;
  }

  v10 = v9;
  memcpy(v9, a3, 4 * a2);
  *(v7 + 40) = v10;
  *(v7 + 32) = a2;
  result = *(v7 + 4);
  if (result != -1)
  {
    result = VTP_SetPayloadList(result, a2, v10);
  }

  if (v7 < v7 + 27800)
  {
    if (*(v7 + 40))
    {
      v12 = *(v7 + 32);
      if (v12 > 0)
      {
        v13 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v12, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          v3 = 2147549187;
          goto LABEL_24;
        }

        v16 = Mutable;
        if (*(v7 + 32) >= 1)
        {
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = CFNumberCreate(v13, kCFNumberIntType, (*(v7 + 40) + v17));
            CFArrayAppendValue(v16, v19);
            CFRelease(v19);
            ++v18;
            v17 += 4;
          }

          while (v18 < *(v7 + 32));
        }

        v20 = *(v7 + 11312);
        if (!v20)
        {
          v21 = VCPacketFilterRTPCreate(v13, (v7 + 11312));
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_21;
          }

          v20 = *(v7 + 11312);
        }

        CMBaseObject = VCPacketFilterGetCMBaseObject(v20, v15);
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v23)
        {
          v3 = 4294954514;
          goto LABEL_23;
        }

        v21 = v23(CMBaseObject, @"RTPPayloadList", v16);
LABEL_21:
        v3 = v21;
LABEL_23:
        CFRelease(v16);
LABEL_24:
        CheckOutHandleDebug();
        return v3;
      }

      RTPSetRxPayloadList_cold_1();
    }

    else
    {
      RTPSetRxPayloadList_cold_2();
    }

LABEL_30:
    v3 = v24;
    goto LABEL_24;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPAddMappingForPayload(uint64_t a1, int a2, int a3, int a4)
{
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2147549186;
  }

  v8 = v7;
  RTPMapAddMappingForPayload(*(v7 + 64), a2, a3, a4);
  RTPMapPrintMapping(*(v8 + 64));
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPResetPayloadMapping()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147549186;
  }

  RTPMapResetMapping(*(v0 + 64));
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetInternalPayload(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    InternalPayload = RTPMapGetInternalPayload(*(v3 + 64), a2);
    CheckOutHandleDebug();
    return InternalPayload;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPGetInternalPayload_cold_1();
      }
    }

    return 128;
  }
}

uint64_t RTPGetExternalPayload(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    ExternalPayload = RTPMapGetExternalPayload(*(v3 + 64), a2);
    CheckOutHandleDebug();
    return ExternalPayload;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPGetExternalPayload_cold_1();
      }
    }

    return 128;
  }
}

uint64_t RTPSetSourceRate(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v4 + 28);
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "RTPSetSourceRate";
      v13 = 1024;
      v14 = 1004;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d payloadType=%d, sourceRate=%u", &v9, 0x28u);
    }
  }

  *(v4 + 700) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetPacketMultiplexMode()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 0;
  }

  v1 = *v0;
  CheckOutHandleDebug();
  return v1;
}

uint64_t RTPSetPacketMultiplexMode(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *v3 = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetThrottlingAudioInterval(double a1)
{
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2147549186;
  }

  if (*(v2 + 10536) != 0xFFFFFFFFLL)
  {
    MediaQueue_SetThrottlingAudioInterval(a1);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetRTCPEnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 184) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetRTCPXREnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 188) = a2;
  v4 = *(v3 + 11288);
  if (v4)
  {
    _RTPSetTransportStreamReceiveHopLimitEnabled(v4, a2 != 0);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t _RTPSetTransportStreamReceiveHopLimitEnabled(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = VCPacketFilterGetCMBaseObject(a1, a2);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *v2;

    return v7(CMBaseObject, @"ReceiveHopLimitEnabled", v8);
  }

  return result;
}

uint64_t RTPSetRTCPSendInterval(double a1)
{
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2147549186;
  }

  v3 = 5.0;
  if (a1 > 0.0)
  {
    v3 = a1;
  }

  *(v2 + 176) = v3;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetSequenceNumber(uint64_t a1, _WORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  if (a2)
  {
    *a2 = *(v3 + 18);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetSendROCWithSequenceNumber(uint64_t a1, int *a2, unsigned int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  SRTPGetSendROC(v5 + 7080, __rev16(a3), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTCPGetReportNTPTimeMiddle32(uint64_t a1, char a2, _DWORD *a3)
{
  result = CheckInHandleDebug();
  if (!result)
  {
    return 2147549186;
  }

  v6 = (result + 620 + 4 * (a2 & 0xF));
  if (v6 < result + 684 && v6 >= result + 620)
  {
    *a3 = *v6;
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t RTPGetExtendedSequenceNumber(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v6 = *(v5 + 224);
  if (a2 < v6)
  {
    v6 -= 0x10000;
  }

  *a3 = v6 & 0xFFFF0000 | a2;
  CheckOutHandleDebug();
  return 0;
}

unint64_t RTPSendRTP(uint64_t a1, char a2, int a3, int a4, void *a5, unsigned int a6, int *a7, const void *a8, double a9, float a10, unsigned __int8 a11, int a12, void *a13, uint64_t a14, char a15, int a16)
{
  v26 = a13;
  v33 = *MEMORY[0x1E69E9840];
  v27 = 2147549186;
  result = CheckInHandleDebug();
  if (!result)
  {
    goto LABEL_6;
  }

  if (result == 0xFFFFFFFF)
  {
    v27 = 2147549190;
    goto LABEL_6;
  }

  *(result + 16) = *(result + 16) & 0x80FF | ((a2 & 0x7F) << 8);
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v32 = 0;
  v31 = a10;
  if ((a6 & 0x80000000) == 0 && result < result + 27800)
  {
    v27 = SendRTP(a1, result, a3, a4, 0, 0, a5, a6, a9, a7, a8, a11, a12, 0, 0, 0, 0, v29, 0, a13, a14, 0, a15, a16);
    CheckOutHandleDebug();
    v26 = 0;
LABEL_6:
    VCMediaControlInfoDispose(v26);
    return v27;
  }

  __break(0x5519u);
  return result;
}

uint64_t SendRTP(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, size_t a6, void *a7, unsigned int a8, double a9, int *a10, const void *a11, unsigned __int8 a12, int a13, int a14, unsigned __int8 a15, _DWORD *a16, int a17, uint64_t a18, int a19, void *a20, uint64_t a21, _OWORD *a22, char a23, int a24)
{
  v234 = *MEMORY[0x1E69E9840];
  dataLength = 12;
  v214 = 0;
  v33 = micro();
  blockBufferOut = 0;
  v213 = 0;
  v217 = 0u;
  memset(dataLength_4, 0, sizeof(dataLength_4));
  v211 = 0;
  if (a10)
  {
    *a10 = 0;
  }

  v34 = a20;
  ++*(a2 + 352);
  if ((a6 & 0x80000000) != 0)
  {
    v35 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_309;
    }

    v168 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    v169 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_309;
      }

      *buf = 136315906;
      *&buf[4] = v168;
      *&buf[12] = 2080;
      *&buf[14] = "SendRTP";
      *&buf[22] = 1024;
      *&buf[24] = 1577;
      *&buf[28] = 1024;
      *&buf[30] = a8;
      v40 = " [%s] %s:%d Header size is negative: %d";
      goto LABEL_10;
    }

    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
    {
      SendRTP_cold_17();
    }

    goto LABEL_309;
  }

  if ((a8 & 0x80000000) == 0)
  {
    if ((*(a2 + 7000) | 2) == 2)
    {
      v35 = 2147549185;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        v38 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a2 + 7000);
            *buf = 136315906;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = "SendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1579;
            *&buf[28] = 1024;
            *&buf[30] = v39;
            v40 = " [%s] %s:%d RTP SendRTP direction[%d] dropping packet";
LABEL_10:
            _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, v40, buf, 0x22u);
            goto LABEL_309;
          }
        }

        else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          SendRTP_cold_1();
        }
      }

      goto LABEL_309;
    }

    __src = a5;
    if (!*(a2 + 10624))
    {
      v41 = *(a2 + 7488);
      if ((v41 - 3) <= 1)
      {
        v35 = 2149711924;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v180 = VRTraceErrorLogLevelToCSTR();
          v181 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v182 = *(a2 + 10624);
            v183 = *(a2 + 200);
            *buf = 136316674;
            *&buf[4] = v180;
            *&buf[12] = 2080;
            *&buf[14] = "SendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1586;
            *&buf[28] = 2048;
            *&buf[30] = a1;
            *&buf[38] = 2048;
            *&buf[40] = v182;
            *&buf[48] = 1024;
            *&buf[50] = v41;
            *&buf[54] = 1024;
            *&buf[56] = v183;
            _os_log_error_impl(&dword_1DB56E000, v181, OS_LOG_TYPE_ERROR, " [%s] %s:%d Attempt to send un-encrypted packet with rtpHandle=%p, VCMediaQueue=%p, authenticationMode=%d, and ssrc=%u", buf, 0x3Cu);
          }
        }

        goto LABEL_309;
      }
    }

    if (a11)
    {
      v42 = a12;
    }

    else
    {
      v42 = 0;
    }

    v205 = a7;
    if (a16 && *a16)
    {
      v43 = a16[2];
      if (v43 >> 30)
      {
        if (v43 >> 30 == 1)
        {
          v44 = ((v43 >> 22) & 1) == 0;
        }

        else
        {
          v44 = (v43 >> 26) & 1;
        }
      }

      else
      {
        v44 = ((v43 >> 23) & 1) == 0;
      }
    }

    else
    {
      v44 = 0;
    }

    v45 = MicroToNTP(a9);
    v46 = *(a2 + 196) + a4;
    *(a2 + 304) = v45;
    *(a2 + 312) = v46;
    if (!*(a2 + 220))
    {
      *(a2 + 216) = v45;
    }

    v47 = (a2 + 16);
    *(a2 + 16) = ((a3 != 0) << 15) | (32 * (v42 != 0)) | *(a2 + 16) & 0x7FCF;
    v48 = *(a2 + 192);
    if (v44)
    {
      *(a2 + 192) = --v48;
    }

    *(a2 + 18) = bswap32(v48) >> 16;
    v207 = _RTPSendTimestampWithMediaSampleTime(a2, v46);
    *(a2 + 20) = bswap32(v207);
    v49 = *(a2 + 224);
    v50 = *(a2 + 192);
    if (v50 >= v49)
    {
      v51 = v49 & 0xFFFF0000;
    }

    else
    {
      v51 = (v49 & 0xFFFF0000) + 0x10000;
    }

    *(a2 + 224) = v51 | v50;
    *(a2 + 192) = v50 + 1;
    v52 = *(a2 + 10536);
    v197 = v52 != 0xFFFFFFFFLL;
    v204 = a3;
    v195 = a1;
    v194 = v44;
    if (v52 == 0xFFFFFFFFLL)
    {
      v53 = *(a2 + 80);
      if (v53)
      {
        v56 = *(a2 + 72);
        v54 = &v53[v56];
      }

      else
      {
        v56 = 1500;
        v53 = malloc_type_calloc(0x5DCuLL, 1uLL, 0x100004077774924uLL);
        if (!v53)
        {
          SendRTP_cold_2();
          v35 = *src;
          v34 = *buf;
          goto LABEL_309;
        }

        v54 = (v53 + 1500);
        *(a2 + 80) = v53;
        *(a2 + 72) = 1500;
      }

      v55 = 12;
    }

    else
    {
      MediaQueue_Malloc(v33, v52, 12, &v214);
      if (!v214)
      {
        v35 = 2147549187;
        goto LABEL_309;
      }

      v53 = v214 + 4;
      v54 = (v214 + 188);
      v55 = dataLength;
      v56 = 1500;
    }

    v202 = a21;
    dataLength = v55 + 4 * (*(a2 + 16) & 0xF);
    sourceBytes = v53;
    v193 = v52;
    v203 = dataLength;
    if (!*(a2 + 28))
    {
      if (*(a2 + 10608))
      {
        if (a20)
        {
          if (VCMediaControlInfoHasInfo(a20, 0))
          {
            v52 = src;
            *&v227 = 0;
            v226 = 0u;
            memset(v225, 0, sizeof(v225));
            v224 = 0u;
            memset(buf, 0, sizeof(buf));
            VCRateControlGetStatistics(*(a2 + 10608), 2, buf);
            v213 = *&buf[8];
            v57 = *&buf[80];
          }

          else
          {
            v57 = 0x7FF8000000000000;
          }

          v53 = sourceBytes;
LABEL_42:
          v58 = (a21 + 24);
          if (*(a2 + 10544) == 0xFFFFFFFFLL && !*(a2 + 10608))
          {
LABEL_47:
            if (a20)
            {
              *v47 |= 0x10u;
              *buf = 0xAAAAAAAAAAAAAAAALL;
              v59 = &v53[dataLength];
              if (v59 && (v59 >= v54 || v59 < sourceBytes))
              {
                goto LABEL_325;
              }

              v60 = VCMediaControlInfoSerialize(a20);
              VCMediaControlInfoDispose(a20);
              if ((v60 & 0x80000000) == 0)
              {
                dataLength += *buf;
              }
            }

            goto LABEL_63;
          }

          if (a21)
          {
            if (!a20 || *v58)
            {
              goto LABEL_47;
            }
          }

          else if (!a20)
          {
LABEL_63:
            LOBYTE(v196) = 0;
            v199 = 0;
            goto LABEL_70;
          }

          Size = VCMediaControlInfoGetSize(a20);
          v52 = Size;
          if ((Size & 3) != 0)
          {
            v35 = 2147549227;
            if (VRTraceGetErrorLogLevelForModule() < 3 || (v54 = VRTraceErrorLogLevelToCSTR(), a6 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
            {
              sourceBytesa = 0;
              v118 = 0;
LABEL_323:
              v112 = v197;
              goto LABEL_193;
            }

LABEL_326:
            *buf = 136316162;
            *&buf[4] = v54;
            *&buf[12] = 2080;
            *&buf[14] = "SendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1660;
            *&buf[28] = 1024;
            *&buf[30] = 1660;
            *&buf[34] = 2048;
            *&buf[36] = v52;
            _os_log_error_impl(&dword_1DB56E000, a6, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: Bad RTP extension length (%ld)", buf, 0x2Cu);
            v35 = 2147549227;
            if (v193 == 0xFFFFFFFFLL)
            {
              goto LABEL_309;
            }

            goto LABEL_290;
          }

          v62 = *(a2 + 28);
          v199 = a20;
          if (v62 == 1)
          {
            if (!a13 && !Size)
            {
              v196 = a15 & (a15 >> 7) & 0xB | (16 * a14);
              goto LABEL_70;
            }
          }

          else if (!Size || v62)
          {
            LOBYTE(v196) = 0;
            goto LABEL_70;
          }

          *v47 |= 0x10u;
          if (Size + dataLength > v56)
          {
            v35 = 2147549198;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v189 = VRTraceErrorLogLevelToCSTR();
              v190 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v175 = SendRTP_cold_3(v189, v190, v193 != 0xFFFFFFFFLL);
LABEL_316:
                v35 = 2147549198;
                v34 = v199;
                if ((v175 & 1) == 0)
                {
                  goto LABEL_308;
                }

                goto LABEL_290;
              }
            }

            goto LABEL_321;
          }

          LOBYTE(v196) = 0;
          dataLength += Size;
LABEL_70:
          v52 = dataLength;
          *(a2 + 16) = *(a2 + 16) & 0x80FF | ((RTPMapGetExternalPayload(*(a2 + 64), *(a2 + 17) & 0x7F) & 0x7F) << 8);
          if (sourceBytes > v54)
          {
            goto LABEL_325;
          }

          v206 = v54 - sourceBytes;
          if (v54 - sourceBytes < 0xC)
          {
            goto LABEL_325;
          }

          v63 = *v47;
          v64 = sourceBytes;
          *(sourceBytes + 2) = *(a2 + 24);
          *sourceBytes = v63;
          v65 = dataLength;
          if (a6)
          {
            if (v56 < dataLength + a6)
            {
              v35 = 2147549198;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v176 = VRTraceErrorLogLevelToCSTR();
                v177 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v175 = SendRTP_cold_4(v176, v177, v193 != 0xFFFFFFFFLL);
                  goto LABEL_316;
                }
              }

              goto LABEL_321;
            }

            v66 = &sourceBytes[dataLength];
            if (v54 < v66 || sourceBytes > v66 || v54 - v66 < a6)
            {
              goto LABEL_325;
            }

            memcpy(v66, __src, a6);
            v65 = dataLength + a6;
            dataLength += a6;
            v64 = sourceBytes;
          }

          if (v56 < (v65 + a8))
          {
            v35 = 2147549198;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v173 = VRTraceErrorLogLevelToCSTR();
              v174 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v175 = SendRTP_cold_15(v173, v174, v193 != 0xFFFFFFFFLL);
                goto LABEL_316;
              }
            }
          }

          else
          {
            v67 = &v64[v65];
            if (v54 < v67 || sourceBytes > v67 || v54 - v67 < a8)
            {
              goto LABEL_325;
            }

            memcpy(v67, v205, a8);
            v68 = dataLength + a8;
            dataLength += a8;
            if (!v42)
            {
LABEL_91:
              v34 = 7080;
              if (*(a2 + 28) == 1 && !*(a2 + 7084) && *(a2 + 7080) == 1)
              {
                sourceBytesa = 0;
                v118 = 0;
                v35 = 2147549204;
              }

              else
              {
                v74 = *(a2 + 7488) - 3;
                v75 = SRTPCalculateTotalSuffixBytes(a2 + 7080, *(a2 + 10632), bswap32(*(a2 + 18)) >> 16);
                if (v75 != -1)
                {
                  a6 = v75;
                  if (v74 <= 1)
                  {
                    dataLength += v75;
LABEL_107:
                    v210 = -1;
                    __srca = _RTPGetRTPSocketForMediaQueue(a2, &v210);
                    if ((__srca & 0x80000000) != 0)
                    {
                      sourceBytesa = 0;
                      v118 = 0;
                      v34 = v199;
                      v112 = v197;
LABEL_192:
                      v35 = __srca;
                      goto LABEL_193;
                    }

                    v80 = v214;
                    if (v214 && *(a2 + 10536) != 0xFFFFFFFFLL)
                    {
                      v81 = a21;
                      if (!a21)
                      {
                        v87 = 0;
                        v82 = a10;
                        v83 = v203;
LABEL_166:
                        *(v80 + 1621) = v87;
                        *(v80 + 398) = v83;
                        *v80 = dataLength;
                        v119 = *v47;
                        *(v80 + 378) = *(a2 + 24);
                        *(v80 + 188) = v119;
                        *(v80 + 379) = *(a2 + 28);
                        *(v80 + 380) = *(a2 + 10584);
                        *(v80 + 381) = v210;
                        *(v80 + 1528) = *(a2 + 12) != 0;
                        v80[192] = v33;
                        *(v80 + 386) = 0;
                        *(v80 + 194) = v213;
                        *(v80 + 390) = a17;
                        *(v80 + 391) = a19;
                        if (!a16 || (v120 = a16[12], v120 <= 1))
                        {
                          v120 = 1;
                        }

                        *(v80 + 387) = v120;
                        *(v80 + 198) = v199;
                        v80[196] = 0.0;
                        *(v80 + 1578) = a13 != 0;
                        *(v80 + 1579) = v204 != 0;
                        Throttling_RTP_SendRTP_SetThrottlingParams(v80, a18);
                        v121 = v214;
                        *(v214 + 1620) = v196;
                        v122 = MediaQueue_AddPacket(*(a2 + 10536), v121);
                        if ((v122 & 0x80000000) == 0)
                        {
                          __srca = v122;
                          sourceBytesa = 0;
                          v118 = 0;
                          v112 = 0;
                          v34 = 0;
                          v114 = *(v214 + 387);
                          v115 = dataLength;
                          if (v82)
                          {
LABEL_171:
                            if (v115 != -1)
                            {
                              kdebug_trace();
                              if (VRTraceGetErrorLogLevelForModule() >= 8)
                              {
                                v123 = VRTraceErrorLogLevelToCSTR();
                                v124 = *MEMORY[0x1E6986650];
                                v125 = *MEMORY[0x1E6986650];
                                if (*MEMORY[0x1E6986640] == 1)
                                {
                                  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v126 = *(a2 + 16);
                                    v127 = bswap32(*(a2 + 18));
                                    v128 = *(a2 + 200);
                                    *buf = 136316930;
                                    *&buf[4] = v123;
                                    *&buf[12] = 2080;
                                    *&buf[14] = "SendRTP";
                                    *&buf[22] = 1024;
                                    *&buf[24] = 1896;
                                    *&buf[28] = 1024;
                                    *&buf[30] = v126 >> 15;
                                    *&buf[34] = 1024;
                                    *&buf[36] = (v126 >> 8) & 0x7F;
                                    *&buf[40] = 1024;
                                    *&buf[42] = HIWORD(v127);
                                    *&buf[46] = 1024;
                                    *&buf[48] = v207;
                                    *&buf[52] = 1024;
                                    *&buf[54] = v128;
                                    _os_log_impl(&dword_1DB56E000, v124, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sent RTP packet with marker: %u, payload type: %u, sequence number: %u, timestamp: %u, ssrc: %u", buf, 0x3Au);
                                  }
                                }

                                else if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
                                {
                                  v165 = *(a2 + 16);
                                  v166 = bswap32(*(a2 + 18));
                                  v167 = *(a2 + 200);
                                  *buf = 136316930;
                                  *&buf[4] = v123;
                                  *&buf[12] = 2080;
                                  *&buf[14] = "SendRTP";
                                  *&buf[22] = 1024;
                                  *&buf[24] = 1896;
                                  *&buf[28] = 1024;
                                  *&buf[30] = v165 >> 15;
                                  *&buf[34] = 1024;
                                  *&buf[36] = (v165 >> 8) & 0x7F;
                                  *&buf[40] = 1024;
                                  *&buf[42] = HIWORD(v166);
                                  *&buf[46] = 1024;
                                  *&buf[48] = v207;
                                  *&buf[52] = 1024;
                                  *&buf[54] = v167;
                                  _os_log_debug_impl(&dword_1DB56E000, v124, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Sent RTP packet with marker: %u, payload type: %u, sequence number: %u, timestamp: %u, ssrc: %u", buf, 0x3Au);
                                }
                              }

                              v129.i32[0] = 1;
                              v129.i32[1] = dataLength;
                              *(a2 + 204) = vadd_s32(*(a2 + 204), v129);
                              if (v81)
                              {
                                IDSAttributeSizeWithChannelDataFormat = VCIDSChannelData_GetIDSAttributeSizeWithChannelDataFormat(v81);
                              }

                              else
                              {
                                IDSAttributeSizeWithChannelDataFormat = 0;
                              }

                              v131 = *(a2 + 27784);
                              if (!v131)
                              {
                                if (*(a2 + 12))
                                {
                                  v131 = 48;
                                }

                                else
                                {
                                  v131 = 28;
                                }
                              }

                              v132 = IDSAttributeSizeWithChannelDataFormat + v115 + v131;
                              *v82 = v132;
                              v133 = *(a2 + 27776);
                              if (v133)
                              {
                                *buf = 0xAAAAAAAAAAAAAAAALL;
                                *buf = *(a2 + 200);
                                *&buf[4] = bswap32(*(a2 + 18)) >> 16;
                                *&buf[8] = v33;
                                *&buf[16] = v132;
                                VCNACKConsumer_UpdateTransmissionStatus(v133, buf);
                              }

                              if (*(a2 + 28) == 1)
                              {
                                if (*(a2 + 10536) == 0xFFFFFFFFLL)
                                {
                                  v134 = 1;
                                }

                                else
                                {
                                  v134 = v114;
                                }

                                _RTPUpdateAFRCVideoSendingBitrate(a2, v134 * *v82, a13 != 0, v33);
                              }

                              goto LABEL_192;
                            }

                            v35 = *__error() | 0xC0010000;
LABEL_193:
                            if (!v112)
                            {
                              goto LABEL_194;
                            }

                            goto LABEL_300;
                          }

LABEL_164:
                          v35 = 2147549185;
                          goto LABEL_193;
                        }

                        SendRTP_cold_9();
                        v34 = *buf;
                        v35 = *src;
LABEL_290:
                        MediaQueue_FreePacket(*(a2 + 10536), v214);
                        goto LABEL_306;
                      }

                      v82 = a10;
                      if (!*v58)
                      {
                        v83 = v203;
                        if (*(a21 + 30) == 1)
                        {
                          *(v214 + 203) = *a21;
                          v84 = *(a21 + 16);
                          v85 = *(a21 + 32);
                          v86 = *(a21 + 64);
                          *(v80 + 209) = *(a21 + 48);
                          *(v80 + 211) = v86;
                          *(v80 + 205) = v84;
                          *(v80 + 207) = v85;
                          v87 = 1;
                        }

                        else
                        {
                          v87 = 0;
                        }

                        goto LABEL_166;
                      }

                      v35 = 2147549194;
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        v186 = VRTraceErrorLogLevelToCSTR();
                        v187 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          v188 = SendRTP_cold_8(v186, v187, v193 != 0xFFFFFFFFLL);
                          goto LABEL_329;
                        }
                      }

                      goto LABEL_321;
                    }

                    if (*(a2 + 10624))
                    {
                      if (!a21)
                      {
                        if (*(a2 + 28))
                        {
                          v35 = 2147549194;
                          if (VRTraceGetErrorLogLevelForModule() >= 3)
                          {
                            v191 = VRTraceErrorLogLevelToCSTR();
                            v192 = *MEMORY[0x1E6986650];
                            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                            {
                              v188 = SendRTP_cold_10(v191, v192, v193 != 0xFFFFFFFFLL);
LABEL_329:
                              v35 = 2147549194;
                              v34 = v199;
                              if ((v188 & 1) == 0)
                              {
                                goto LABEL_309;
                              }

                              goto LABEL_290;
                            }
                          }

                          goto LABEL_321;
                        }

                        v58 = &dataLength_4[1] + 8;
                        HIBYTE(v217) = 1;
                        v202 = dataLength_4;
                      }

                      if (a18)
                      {
                        v88 = *(a18 + 1);
                      }

                      else
                      {
                        v88 = 0;
                      }

                      v90 = (*(v202 + 42) & 1) == 0 && (!v199 || *(a2 + 28) || (VCMediaControlInfoHasInfo(v199, 0) & 1) == 0);
                      v91 = 74;
                      if (!*(v202 + 72))
                      {
                        v91 = 0;
                      }

                      v92 = *(v202 + v91);
                      if (!*v58 && !*(v202 + v91))
                      {
                        v92 = *(a2 + 200);
                      }

                      v93 = VCMediaQueue_AllocMediaPacket(*(a2 + 10624), v92, 0, &v211);
                      v94 = v93 == 0;
                      if (v93)
                      {
                        sourceBytesa = 0;
                        SendRTP_cold_11();
                      }

                      else
                      {
                        v95 = CMBlockBufferCreateWithMemoryBlock(*(a2 + 10984), 0, 0x5DCuLL, 0, 0, 0, dataLength, 1u, &blockBufferOut);
                        if (v95)
                        {
                          sourceBytesa = v94;
                          v118 = 0;
                          if (v95 >= 0)
                          {
                            v184 = v95;
                          }

                          else
                          {
                            v184 = -v95;
                          }

                          v35 = v184 | 0xD0010000;
LABEL_299:
                          v34 = v199;
                          if (v193 == 0xFFFFFFFFLL)
                          {
LABEL_194:
                            if (!v118)
                            {
                              goto LABEL_304;
                            }

                            goto LABEL_301;
                          }

LABEL_300:
                          MediaQueue_FreePacket(*(a2 + 10536), v214);
                          if ((v118 & 1) == 0)
                          {
                            goto LABEL_304;
                          }

LABEL_301:
                          if (blockBufferOut)
                          {
                            CFRelease(blockBufferOut);
                            blockBufferOut = 0;
                            if (sourceBytesa)
                            {
                              goto LABEL_305;
                            }

                            goto LABEL_306;
                          }

LABEL_304:
                          if (sourceBytesa)
                          {
LABEL_305:
                            VCMediaQueue_FreeMediaPacket(*(a2 + 10624), v211);
                          }

LABEL_306:
                          if (v35 != -2145255410 && v35 != -2147418098)
                          {
                            goto LABEL_309;
                          }

LABEL_308:
                          VCTerminateProcess(@"Failed to add data into RTP packet", @"SendRTP", 0);
                          goto LABEL_309;
                        }

                        v97 = v211;
                        v96 = blockBufferOut;
                        *(v211 + 8) = blockBufferOut;
                        *(v97 + 272) = v33;
                        v98 = v202;
                        *(v97 + 16) = *v202;
                        v99 = v202[4];
                        v101 = v202[1];
                        v100 = v202[2];
                        *(v97 + 64) = v202[3];
                        *(v97 + 80) = v99;
                        *(v97 + 32) = v101;
                        *(v97 + 48) = v100;
                        if (a22)
                        {
                          v98 = a22;
                        }

                        v103 = v98[3];
                        v102 = v98[4];
                        v104 = v98[2];
                        *(v97 + 112) = v98[1];
                        *(v97 + 128) = v104;
                        *(v97 + 144) = v103;
                        *(v97 + 160) = v102;
                        *(v97 + 96) = *v98;
                        v105 = dataLength;
                        *(v97 + 4) = dataLength;
                        *(v97 + 200) = 0xFFFFFFFFLL;
                        *(v97 + 297) = v74 < 2;
                        if (v74 <= 1)
                        {
                          *(v97 + 192) = RTPMediaQueueSecurityCallback;
                          *(v97 + 200) = v195;
                          *(v97 + 300) = v105 - (a6 + v52);
                        }

                        v82 = a10;
                        if (v105 >= 0x5DDu)
                        {
                          sourceBytesa = v94;
                          SendRTP_cold_14();
                        }

                        else
                        {
                          v81 = v202;
                          if (!CMBlockBufferReplaceDataBytes(sourceBytes, v96, 0, v105))
                          {
                            IDSHeaderSizeWithChannelDataFormatArray = VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray(v202, 1u);
                            v107 = v211;
                            *v211 = IDSHeaderSizeWithChannelDataFormatArray;
                            *(v107 + 176) = v90;
                            v34 = v199;
                            *(v107 + 184) = v199;
                            *(v107 + 244) = v203;
                            v108 = v213;
                            *(v107 + 208) = v57;
                            *(v107 + 216) = v108;
                            *(v107 + 224) = 0;
                            v109 = *(v202 + 77);
                            *(v107 + 225) = v109 ^ 1;
                            *(v107 + 288) = (v88 | v109) & 1;
                            *(v107 + 226) = v109;
                            *(v107 + 289) = a23;
                            *(v107 + 293) = *(a2 + 12) != 0;
                            if (a16)
                            {
                              v110 = *a16 != 0;
                            }

                            else
                            {
                              v110 = 0;
                            }

                            *(v107 + 290) = v110;
                            *(v107 + 291) = a13 != 0;
                            *(v107 + 292) = v204 != 0;
                            *(v107 + 304) = 0;
                            *(v107 + 232) = *(a2 + 10584);
                            *(v107 + 248) = bswap32(*(a2 + 18)) >> 16;
                            *(v107 + 264) = v210;
                            *(v107 + 236) = v207;
                            *(v107 + 240) = *(a2 + 316);
                            *(v107 + 252) = *(a2 + 200);
                            *(v107 + 227) = *(a2 + 28) == 0;
                            *(v107 + 256) = a17;
                            *(v107 + 260) = a19;
                            *(v107 + 294) = 1;
                            if (a16 && (v111 = a16[12], v111 >= 2))
                            {
                              *(v107 + 268) = v111;
                              *(v107 + 288) = 1;
                            }

                            else
                            {
                              *(v107 + 268) = 1;
                            }

                            v112 = v197;
                            VCMediaQueue_AddPacket(*(a2 + 10624), v107);
                            if (v113)
                            {
                              __srca = v113;
                              if (VRTraceGetErrorLogLevelForModule() >= 3)
                              {
                                VRTraceErrorLogLevelToCSTR();
                                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                                {
                                  SendRTP_cold_13();
                                }
                              }

                              v114 = 0;
                              v115 = -1;
                              sourceBytesa = 1;
                            }

                            else
                            {
                              v115 = dataLength;
                              v116 = v194;
                              if (!*(a2 + 27776))
                              {
                                v116 = 1;
                              }

                              if ((v116 & 1) == 0 && (updated = _RTPTransportUpdateMediaPacketHistory(a2, v211), (updated & 0x80000000) != 0))
                              {
                                __srca = updated;
                                if (VRTraceGetErrorLogLevelForModule() >= 3)
                                {
                                  v163 = VRTraceErrorLogLevelToCSTR();
                                  v164 = *MEMORY[0x1E6986650];
                                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                                  {
                                    v172 = *(a2 + 27776);
                                    *buf = 136316162;
                                    *&buf[4] = v163;
                                    *&buf[12] = 2080;
                                    *&buf[14] = "SendRTP";
                                    *&buf[22] = 1024;
                                    *&buf[24] = 1868;
                                    *&buf[28] = 2048;
                                    *&buf[30] = v211;
                                    *&buf[38] = 2048;
                                    *&buf[40] = v172;
                                    _os_log_error_impl(&dword_1DB56E000, v164, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not update media packet history for packet=%pfor nackConsumer=%p", buf, 0x30u);
                                  }
                                }

                                sourceBytesa = 0;
                                v114 = 0;
                              }

                              else
                              {
                                sourceBytesa = 0;
                                v114 = 0;
                                __srca = 0;
                              }

                              v34 = 0;
                            }

                            v118 = 1;
                            if (a10)
                            {
                              goto LABEL_171;
                            }

                            goto LABEL_164;
                          }

                          sourceBytesa = v94;
                          SendRTP_cold_12();
                        }
                      }

                      v118 = src[0];
                      v35 = *buf;
                      goto LABEL_299;
                    }

                    if (a16)
                    {
                      v89 = a16[12];
                      if (v89 <= 1)
                      {
                        v34 = 1;
                      }

                      else
                      {
                        v34 = v89;
                      }
                    }

                    else
                    {
                      v34 = 1;
                    }

                    v135 = a21;
                    v136 = a21 + 80;
                    v54 = buf;
                    blockAllocator = *MEMORY[0x1E695E498];
                    v137 = a21;
                    while (1)
                    {
                      a6 = dataLength;
                      if (v206 < dataLength || v135 && (v135 >= v136 || v135 < v137))
                      {
                        goto LABEL_325;
                      }

                      v138 = bswap32(*(a2 + 18)) >> 16;
                      if (!*(a2 + 11288))
                      {
                        if (!dataLength)
                        {
                          goto LABEL_325;
                        }

                        v146 = *(a2 + 4);
                        v232 = 0u;
                        memset(v233, 0, 48);
                        v230 = 0u;
                        v231 = 0u;
                        v228 = 0u;
                        v229 = 0u;
                        v226 = 0u;
                        v227 = 0u;
                        v224 = 0u;
                        memset(v225, 0, sizeof(v225));
                        memset(buf, 0, sizeof(buf));
                        *&buf[8] = *(a2 + 10584);
                        if (v135)
                        {
                          v147 = v135[3];
                          v228 = v135[2];
                          v229 = v147;
                          v230 = v135[4];
                          v148 = v135[1];
                          v226 = *v135;
                          v227 = v148;
                          BYTE13(v227) = 1;
                        }

                        v233[0] = a24;
                        v149 = *(a2 + 200);
                        v150 = *(a2 + 17) & 0x7F;
                        *&src[12] = 0;
                        src[0] = 1;
                        src[1] = v150;
                        *&src[2] = v138;
                        *&src[4] = v207;
                        *&src[8] = v149;
                        uuid_copy(&v233[1], src);
                        v52 = 7016;
                        pthread_mutex_lock((a2 + 7016));
                        VTP_SetPktTag(buf, 0, v138);
                        VTP_SetPktTag(buf, 1u, *(a2 + 200));
                        VTP_SetPktTag(buf, 2u, v207);
                        v151 = VTP_Send(v146, sourceBytes, a6, 0x320u, buf);
                        pthread_mutex_unlock((a2 + 7016));
                        v115 = v151;
                        goto LABEL_243;
                      }

                      v54 = buf;
                      v224 = unk_1DBD47B50;
                      v225[0] = xmmword_1DBD47B60;
                      memset(&v225[1], 170, 24);
                      memset(buf, 170, sizeof(buf));
                      VCPacketInitialize(buf);
                      if (!*(a2 + 11288))
                      {
                        if (VRTraceGetErrorLogLevelForModule() < 3)
                        {
                          goto LABEL_241;
                        }

                        v52 = VRTraceErrorLogLevelToCSTR();
                        v157 = *MEMORY[0x1E6986650];
                        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_241;
                        }

                        *src = 136315650;
                        *&src[4] = v52;
                        *&src[12] = 2080;
                        *&src[14] = "_RTPSendWithTransportStream";
                        v219 = 1024;
                        v220 = 5663;
                        v144 = v157;
                        v145 = " [%s] %s:%d NULL transportStream";
                        goto LABEL_239;
                      }

                      if (!a6)
                      {
                        if (VRTraceGetErrorLogLevelForModule() < 3)
                        {
                          goto LABEL_241;
                        }

                        v52 = VRTraceErrorLogLevelToCSTR();
                        v158 = *MEMORY[0x1E6986650];
                        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_241;
                        }

                        *src = 136315650;
                        *&src[4] = v52;
                        *&src[12] = 2080;
                        *&src[14] = "_RTPSendWithTransportStream";
                        v219 = 1024;
                        v220 = 5665;
                        v144 = v158;
                        v145 = " [%s] %s:%d data length <= 0";
                        goto LABEL_239;
                      }

                      v139 = *(a2 + 10664);
                      if (*(a2 + 27776))
                      {
                        v140 = CMBlockBufferCreateWithMemoryBlock(v139, 0, a6, 0, 0, 0, a6, 1u, buf);
                        if (v140)
                        {
                          v52 = v140;
                          if (VRTraceGetErrorLogLevelForModule() < 3)
                          {
                            goto LABEL_241;
                          }

                          v159 = VRTraceErrorLogLevelToCSTR();
                          v160 = *MEMORY[0x1E6986650];
                          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_241;
                          }

                          *src = 136315906;
                          *&src[4] = v159;
                          *&src[12] = 2080;
                          *&src[14] = "_RTPSendWithTransportStream";
                          v219 = 1024;
                          v220 = 5670;
                          v221 = 1024;
                          v222 = v52;
                          v144 = v160;
                          v145 = " [%s] %s:%d Failed to create a CMBlockBuffer. Error=%d!";
LABEL_235:
                          v161 = 34;
                          goto LABEL_240;
                        }

                        v141 = CMBlockBufferReplaceDataBytes(sourceBytes, *buf, 0, a6);
                        if (v141)
                        {
                          v52 = v141;
                          if (VRTraceGetErrorLogLevelForModule() < 3)
                          {
                            goto LABEL_241;
                          }

                          v142 = VRTraceErrorLogLevelToCSTR();
                          v143 = *MEMORY[0x1E6986650];
                          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_241;
                          }

                          *src = 136315906;
                          *&src[4] = v142;
                          *&src[12] = 2080;
                          *&src[14] = "_RTPSendWithTransportStream";
                          v219 = 1024;
                          v220 = 5673;
                          v221 = 1024;
                          v222 = v52;
                          v144 = v143;
                          v145 = " [%s] %s:%d Failed to copy data bytes. Error=%d!";
                          goto LABEL_235;
                        }
                      }

                      else if (CMBlockBufferCreateWithMemoryBlock(v139, sourceBytes, a6, blockAllocator, 0, 0, a6, 0, buf))
                      {
                        goto LABEL_241;
                      }

                      *&buf[8] = 257;
                      *(&v224 + 1) = v33;
                      v152 = *(a2 + 200);
                      *&buf[56] = v138;
                      *&buf[64] = v152;
                      *&buf[72] = v207;
                      DWORD1(v225[0]) = a24;
                      v153 = *(a2 + 17) & 0x7F;
                      *&src[12] = 0;
                      src[0] = 1;
                      src[1] = v153;
                      *&src[2] = v138;
                      *&src[4] = v207;
                      *&src[8] = v152;
                      uuid_copy(v225 + 8, src);
                      if ((_RTPEnsureTransportStreamsActivated(a2) & 0x80000000) == 0)
                      {
                        if (*(a2 + 27776))
                        {
                          LOWORD(v224) = a6;
                          v154 = VCBoundsSafety_AllocatorAllocate(*(a2 + 10992), 80, 0);
                          if (!v154)
                          {
                            if (VRTraceGetErrorLogLevelForModule() < 3)
                            {
                              goto LABEL_241;
                            }

                            v52 = VRTraceErrorLogLevelToCSTR();
                            v162 = *MEMORY[0x1E6986650];
                            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_241;
                            }

                            *src = 136315650;
                            *&src[4] = v52;
                            *&src[12] = 2080;
                            *&src[14] = "_RTPSendWithTransportStream";
                            v219 = 1024;
                            v220 = 5694;
                            v144 = v162;
                            v145 = " [%s] %s:%d Could not update media packet history";
LABEL_239:
                            v161 = 28;
LABEL_240:
                            _os_log_error_impl(&dword_1DB56E000, v144, OS_LOG_TYPE_ERROR, v145, src, v161);
                            goto LABEL_241;
                          }

                          if (v154 >= v155)
                          {
                            goto LABEL_325;
                          }

                          *v154 = *&buf[56];
                          *(v154 + 4) = *&buf[64];
                          *(v154 + 16) = *&buf[72];
                          *(v154 + 52) = DWORD1(v225[0]);
                          *(v154 + 8) = v224;
                          *(v154 + 56) = 0;
                          *(v154 + 64) = *(&v224 + 1);
                          *(v154 + 72) = 0;
                          *src = v154;
                          *&src[8] = *buf;
                          _RTPTransportAddMediaPacketHistory(a2, src);
                        }

                        v52 = *(a2 + 11288);
                        v156 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                        if (v156)
                        {
                          v52 = v156(v52, buf);
                          VCPacketInvalidate(buf);
                          if (v52 < 0)
                          {
                            v115 = -1;
                          }

                          else
                          {
                            v115 = a6;
                          }

                          goto LABEL_242;
                        }
                      }

LABEL_241:
                      VCPacketInvalidate(buf);
                      v115 = -1;
LABEL_242:
                      v54 = buf;
LABEL_243:
                      if (a22)
                      {
                        v135 = a22;
                        v136 = (a22 + 5);
                        v137 = a22;
                      }

                      v34 = (v34 - 1);
                      if (!v34)
                      {
                        sourceBytesa = 0;
                        v118 = 0;
                        v114 = 0;
                        v34 = v199;
                        v112 = v197;
                        v82 = a10;
                        v81 = a21;
                        if (a10)
                        {
                          goto LABEL_171;
                        }

                        goto LABEL_164;
                      }
                    }
                  }

                  v76 = &sourceBytes[v52];
                  if (&sourceBytes[v52] <= v54 && sourceBytes <= v76)
                  {
                    v77 = dataLength - v52;
                    if ((v77 & 0x80000000) == 0 && (v54 - v76) >= v77)
                    {
                      v54 = 2149711924;
                      SRTPEncrypt(a2 + 7080, bswap32(*(a2 + 18)) >> 16, v76, v77);
                      if (v78 < 0 && v78 != -2145255368)
                      {
                        SendRTP_cold_7();
                        goto LABEL_284;
                      }

                      if ((v56 & 0x8000000000000000) == 0 && v56 <= v206)
                      {
                        v79 = SRTPAddAuthenticationTag(a2 + 7080, *(a2 + 10632), bswap32(*(a2 + 18)) >> 16, v56, sourceBytes, dataLength, &dataLength);
                        if ((v79 & 0x80000000) == 0 || v79 == -2145255368)
                        {
                          goto LABEL_107;
                        }

                        SendRTP_cold_6();
LABEL_284:
                        v35 = *buf;
                        v34 = v199;
                        if (v193 == 0xFFFFFFFFLL)
                        {
                          goto LABEL_306;
                        }

                        goto LABEL_290;
                      }
                    }
                  }

                  goto LABEL_325;
                }

                sourceBytesa = 0;
                v118 = 0;
                v35 = 2149711873;
              }

LABEL_322:
              v34 = v199;
              goto LABEL_323;
            }

            if (v56 >= v42 + v68 + 1)
            {
              v69 = &sourceBytes[v68];
              v70 = v54 >= &sourceBytes[v68];
              v71 = v54 - &sourceBytes[v68];
              if (v70 && sourceBytes <= v69 && v71 >= v42)
              {
                memcpy(v69, a11, v42);
                v72 = dataLength + v42;
                dataLength = v72 + 1;
                v73 = &sourceBytes[v72];
                if (v73 < v54 && v73 >= sourceBytes)
                {
                  *v73 = v42 + 1;
                  goto LABEL_91;
                }
              }

LABEL_325:
              __break(0x5519u);
              goto LABEL_326;
            }

            v35 = 2147549198;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v178 = VRTraceErrorLogLevelToCSTR();
              v179 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v175 = SendRTP_cold_5(v178, v179, v193 != 0xFFFFFFFFLL);
                goto LABEL_316;
              }
            }
          }

LABEL_321:
          sourceBytesa = 0;
          v118 = 0;
          goto LABEL_322;
        }
      }

      else
      {
        AFRCGetPeerArrivalTime(*(a2 + 10544), 0, &v213);
        v53 = sourceBytes;
      }
    }

    v57 = 0x7FF8000000000000;
    goto LABEL_42;
  }

  v35 = 2147549185;
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_309;
  }

  v170 = VRTraceErrorLogLevelToCSTR();
  v37 = *MEMORY[0x1E6986650];
  v171 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (!os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_309;
    }

    *buf = 136315906;
    *&buf[4] = v170;
    *&buf[12] = 2080;
    *&buf[14] = "SendRTP";
    *&buf[22] = 1024;
    *&buf[24] = 1578;
    *&buf[28] = 1024;
    *&buf[30] = a8;
    v40 = " [%s] %s:%d Data size is negative: %d";
    goto LABEL_10;
  }

  if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
  {
    SendRTP_cold_16();
  }

LABEL_309:
  VCMediaControlInfoDispose(v34);
  return v35;
}

uint64_t _RTPUpdateAFRCVideoSendingBitrate(uint64_t a1, int a2, int a3, double a4)
{
  result = *(a1 + 10544);
  if (result != 0xFFFFFFFFLL)
  {
    if (a3)
    {
      v8 = *(a1 + 11272);
      if (v8 <= 0.0)
      {
LABEL_26:
        *(a1 + 11272) = a4;
        *(a1 + 11280) = a2;
      }

      else
      {
        v9 = a1 + 11008;
        v10 = *(a1 + 11264);
        v11 = a1 + 11008 + 16 * v10;
        if (v11 < a1 + 11264 && v11 >= v9)
        {
          *(v11 + 8) = *(a1 + 11280);
          *v11 = a4 - v8;
          *(a1 + 11264) = (v10 + 1) & 0xF;
          v13 = *(a1 + 11268);
          if (v13 > 0xF)
          {
            v14 = 16;
          }

          else
          {
            v14 = v13 + 1;
            *(a1 + 11268) = v13 + 1;
          }

          v15 = 0;
          v16 = v14 - 1;
          v17 = 0.0;
          while (1)
          {
            v18 = v9 + 16 * (v10 & 0xF);
            if (v18 >= a1 + 11264 || v18 < v9)
            {
              break;
            }

            v15 += *(v18 + 8);
            v17 = v17 + *v18;
            v20 = v17 > 0.5 || v16-- == 0;
            LOBYTE(v10) = v10 - 1;
            if (v20)
            {
              if (v17 > 0.0)
              {
                result = AFRCUpdateVideoSendingBitrate(result, ((8 * v15) / v17));
              }

              goto LABEL_26;
            }
          }
        }

        __break(0x5519u);
      }
    }

    else
    {
      *(a1 + 11280) += a2;
    }
  }

  return result;
}

uint64_t RTPMediaQueueSecurityCallback(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == 0xFFFFFFFFLL)
  {
    RTPMediaQueueSecurityCallback_cold_8();
    return v17;
  }

  if (!a2)
  {
    RTPMediaQueueSecurityCallback_cold_7();
    return v17;
  }

  if (!a3)
  {
    RTPMediaQueueSecurityCallback_cold_6();
    return v17;
  }

  v9 = CheckInHandleDebug();
  if (!v9)
  {
    RTPMediaQueueSecurityCallback_cold_5();
    return v17;
  }

  v10 = v9;
  if ((*(v9 + 7488) - 3) >= 2)
  {
    RTPMediaQueueSecurityCallback_cold_1();
LABEL_27:
    v14 = v17;
    goto LABEL_16;
  }

  if (a2 + 12 > a2 + a3 || (v11 = a2 + a4, a2 + a4 > a2 + a3) || v11 < a2 || a5 < 0 || a5 > a3 - a4)
  {
LABEL_28:
    __break(0x5519u);
  }

  v12 = bswap32(*(a2 + 2)) >> 16;
  SRTPEncrypt(v9 + 7080, v12, v11, a5);
  if (v13 < 0)
  {
    RTPMediaQueueSecurityCallback_cold_4();
    goto LABEL_27;
  }

  v16 = 0;
  if ((a3 & 0x80000000) != 0 || a3 > a3)
  {
    goto LABEL_28;
  }

  v14 = SRTPAddAuthenticationTag(v10 + 7080, *(v10 + 10632), v12, a3, a2, a5 + a4, &v16);
  if ((v14 & 0x80000000) != 0)
  {
    RTPMediaQueueSecurityCallback_cold_3();
    goto LABEL_27;
  }

  if (v16 != a3)
  {
    RTPMediaQueueSecurityCallback_cold_2(&v16, a3, v14, &v17);
    goto LABEL_27;
  }

LABEL_16:
  CheckOutHandleDebug();
  return v14;
}

unint64_t _RTPSendTimestampWithMediaSampleTime(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  v5 = v3 & 0xFFFFFFFF00000000;
  if (v3 - a2 >= 0x7FFFFFFF)
  {
    v6 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = (v3 & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (v3 >= a2)
  {
    v6 = v3 & 0xFFFFFFFF00000000;
  }

  if (a2 - v3 < 0x7FFFFFFF)
  {
    v5 += 0x100000000;
  }

  if (v3 > a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + a2;
  *(a1 + 232) = v8;
  v9 = v8 - v4;
  v10 = (a1 + 296);
  v11 = *(a1 + 296);
  if (v11 >= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPSendTimestampWithMediaSampleTime_cold_1();
      }
    }

    v11 = *v10;
  }

  if (v11 <= 3)
  {
    if (v11 == 1)
    {
      v9 >>= 1;
      goto LABEL_30;
    }

    if (v11 == 2)
    {
      v9 -= v9 >> 2;
      goto LABEL_30;
    }

    if (v11 != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if ((v11 - 5) < 2)
  {
LABEL_22:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPSendTimestampWithMediaSampleTime_cold_2();
      }
    }

    goto LABEL_30;
  }

  if (v11 == 4)
  {
    v9 *= 2;
  }

LABEL_30:
  result = *(a1 + 256) + v9;
  *(a1 + 248) = result;
  return result;
}

uint64_t _RTPGetRTPSocketForMediaQueue(uint64_t a1, _DWORD *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _RTPGetRTPSocketForMediaQueue_cold_3();
    return v4;
  }

  if (!a2)
  {
    _RTPGetRTPSocketForMediaQueue_cold_2();
    return v4;
  }

  result = *(a1 + 11288);
  if (result)
  {
    _RTPGetRTPSocketForMediaQueue_cold_1(result, a2, &v4);
    return v4;
  }

  *a2 = *(a1 + 4);
  return result;
}

uint64_t _RTPTransportUpdateMediaPacketHistory(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = 2147549187;
  v5 = VCBoundsSafety_AllocatorAllocate(*(a1 + 10992), 80, 0);
  if (v5)
  {
    v7 = v5;
    if (v5 >= v6 || (*v5 = *(a2 + 248), *(v5 + 4) = *(a1 + 200), *(v5 + 20) = *(a2 + 291), v8 = *(a2 + 244), *(v5 + 8) = *(a2 + 4), *(v5 + 12) = v8, *(v5 + 16) = *(a2 + 236), *(v5 + 22) = *(a2 + 290), *(v5 + 24) = *(a2 + 256), *(v5 + 28) = *(a2 + 288), *(v5 + 32) = *(a2 + 260), *(v5 + 40) = 0, (v9 = VCBoundsSafety_AllocatorAllocate(*(a1 + 11000), 80, 0)) != 0) && v9 >= v10)
    {
      __break(0x5519u);
    }

    *(v7 + 40) = v9;
    if (v9)
    {
      *v9 = *(a2 + 16);
      v11 = *(a2 + 32);
      v12 = *(a2 + 48);
      v13 = *(a2 + 80);
      v9[3] = *(a2 + 64);
      v9[4] = v13;
      v9[1] = v11;
      v9[2] = v12;
      *(v7 + 48) = *(a2 + 289);
      *(v7 + 56) = 1;
      *(v7 + 64) = *(a2 + 272);
      *(v7 + 72) = 0;
      v14 = *(a2 + 8);
      v16[0] = v7;
      v16[1] = v14;
      _RTPTransportAddMediaPacketHistory(a1, v16);
      return 0;
    }

    else
    {
      _RTPTransportUpdateMediaPacketHistory_cold_1();
    }
  }

  return v4;
}

uint64_t RTPTransportResendRTP(double a1, uint64_t a2, int a3, int a4, int *a5)
{
  v79[5] = *MEMORY[0x1E69E9840];
  v9 = 2147549188;
  v72 = 0;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    return 2147549186;
  }

  v17 = v10;
  if (v10 != 0xFFFFFFFF)
  {
    v65 = a5;
    if (v10 >= v10 + 27800)
    {
      goto LABEL_80;
    }

    ++*(v10 + 352);
    v66 = a3;
    v67 = a4;
    v68 = 1;
    v69 = a1;
    v70 = 0xAAAAAAAAAAAA0000;
    v71 = 0;
    v18 = v10 + 11392 + 16 * (a4 & 0x3FF);
    if (!v18)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v59 = VRTraceErrorLogLevelToCSTR();
        v60 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v59;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransportRetrieveMediaPacketHistory";
          *&buf[22] = 1024;
          *&buf[24] = 1359;
          *&buf[28] = 2048;
          *&buf[30] = v17;
          *&buf[38] = 1024;
          *&buf[40] = a4 & 0x3FF;
          _os_log_error_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_ERROR, " [%s] %s:%d mediaPacketHistory retrieval failed for rtpInfo=%p with seqNumHash=%d", buf, 0x2Cu);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v61 = VRTraceErrorLogLevelToCSTR();
        v62 = *MEMORY[0x1E6986650];
        v63 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v61;
            *&buf[12] = 2080;
            *&buf[14] = "RTPTransportResendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1971;
            _os_log_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Couldn't retrieve media packet from cache for retransmission", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          RTPTransportResendRTP_cold_10();
        }
      }

      LOBYTE(v68) = 0;
      goto LABEL_73;
    }

    if (v18 >= v10 + 27776 || v10 + 11392 > v18 || v18 + 16 > v10 + 27776)
    {
      goto LABEL_80;
    }

    v19 = *v18;
    if (!*v18)
    {
      RTPTransportResendRTP_cold_9();
      goto LABEL_76;
    }

    v20 = v19 + 40;
    if (*v19 != a4)
    {
      RTPTransportResendRTP_cold_1();
      goto LABEL_76;
    }

    if (*(v19 + 1) != a3)
    {
      RTPTransportResendRTP_cold_2();
      goto LABEL_76;
    }

    v21 = *(v19 + 56);
    if (v21 == 1)
    {
      v22 = *(v19 + 5);
      if (v22)
      {
        *(v22 + 76) = 1;
        v23 = 74;
        if (!*(v22 + 72))
        {
          v23 = 0;
        }

        v24 = *(v22 + v23);
        if (*(v22 + 24))
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 == 0;
        }

        if (v25)
        {
          v24 = *(v10 + 200);
        }

        *src = -1;
        v26 = _RTPGetRTPSocketForMediaQueue(v10, src);
        if ((v26 & 0x80000000) == 0)
        {
          v27 = (v19 + 4);
          if (*(v19 + 2) >= 1501)
          {
            RTPTransportResendRTP_cold_8();
          }

          else
          {
            if ((VCMediaQueue_AllocMediaPacket(*(v17 + 10624), v24, 2, &v72) & 0x80000000) == 0)
            {
              v28 = *(v18 + 8);
              v29 = v72;
              *(v72 + 8) = v28;
              *(v29 + 272) = a1;
              v30 = *(v22 + 16);
              v31 = *(v22 + 32);
              v32 = *(v22 + 48);
              *(v29 + 80) = *(v22 + 64);
              v33 = *v22;
              *(v29 + 48) = v31;
              *(v29 + 64) = v32;
              *(v29 + 16) = v33;
              *(v29 + 32) = v30;
              *(v29 + 176) = 3;
              *(v29 + 295) = 1;
              *(v29 + 94) = 0;
              *(v29 + 248) = a4;
              *(v29 + 4) = *(v19 + 2);
              *(v29 + 264) = *src;
              if (v19 < v20)
              {
                *v29 = VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray(v29 + 16, 1u);
                *(v29 + 244) = *(v19 + 3);
                *(v29 + 208) = xmmword_1DBD478F0;
                *(v29 + 224) = 0;
                v34 = *(v29 + 93);
                *(v29 + 225) = v34 ^ 1;
                *(v29 + 288) = *(v19 + 28);
                *(v29 + 226) = v34;
                *(v29 + 289) = *(v19 + 48);
                *(v29 + 293) = *(v17 + 12) != 0;
                *(v29 + 290) = *(v19 + 22);
                *(v29 + 291) = *(v19 + 20);
                v36 = (v19 + 8);
                v35 = *(v19 + 4);
                *(v29 + 292) = *(v19 + 21);
                *(v29 + 304) = 0;
                *(v29 + 232) = *(v17 + 10584);
                *(v29 + 236) = v35;
                *(v29 + 240) = *(v17 + 316);
                *(v29 + 252) = *(v17 + 200);
                *(v29 + 227) = *(v17 + 28) == 0;
                *(v29 + 256) = *(v19 + 6);
                *(v29 + 260) = *(v19 + 8);
                *(v29 + 294) = 1;
                VCMediaQueue_AddPacket(*(v17 + 10624), v72);
                v9 = v37;
                if ((v37 & 0x80000000) == 0)
                {
                  v38 = *(v72 + 4);
LABEL_37:
                  kdebug_trace();
                  HIBYTE(v68) = 1;
                  if (VRTraceGetErrorLogLevelForModule() >= 8)
                  {
                    v44 = VRTraceErrorLogLevelToCSTR();
                    v45 = *MEMORY[0x1E6986650];
                    v46 = *MEMORY[0x1E6986650];
                    if (*MEMORY[0x1E6986640] == 1)
                    {
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                      {
                        v47 = *(v17 + 16);
                        v48 = bswap32(*(v17 + 18));
                        v49 = *v36;
                        v50 = *(v17 + 200);
                        *buf = 136316930;
                        *&buf[4] = v44;
                        *&buf[12] = 2080;
                        *&buf[14] = "RTPTransportResendRTP";
                        *&buf[22] = 1024;
                        *&buf[24] = 2027;
                        *&buf[28] = 1024;
                        *&buf[30] = v47 >> 15;
                        *&buf[34] = 1024;
                        *&buf[36] = (v47 >> 8) & 0x7F;
                        *&buf[40] = 1024;
                        *&buf[42] = HIWORD(v48);
                        *&buf[46] = 1024;
                        *&buf[48] = v49;
                        *&buf[52] = 1024;
                        *&buf[54] = v50;
                        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resent RTP packet with marker=%u, payload type=%u, sequence number=%u, timestamp=%u, ssrc=%u", buf, 0x3Au);
                      }
                    }

                    else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                    {
                      v55 = *(v17 + 16);
                      v56 = bswap32(*(v17 + 18));
                      v57 = *v36;
                      v58 = *(v17 + 200);
                      *buf = 136316930;
                      *&buf[4] = v44;
                      *&buf[12] = 2080;
                      *&buf[14] = "RTPTransportResendRTP";
                      *&buf[22] = 1024;
                      *&buf[24] = 2027;
                      *&buf[28] = 1024;
                      *&buf[30] = v55 >> 15;
                      *&buf[34] = 1024;
                      *&buf[36] = (v55 >> 8) & 0x7F;
                      *&buf[40] = 1024;
                      *&buf[42] = HIWORD(v56);
                      *&buf[46] = 1024;
                      *&buf[48] = v57;
                      *&buf[52] = 1024;
                      *&buf[54] = v58;
                      _os_log_debug_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Resent RTP packet with marker=%u, payload type=%u, sequence number=%u, timestamp=%u, ssrc=%u", buf, 0x3Au);
                    }
                  }

                  v51.i32[0] = 1;
                  v51.i32[1] = *v27;
                  *(v17 + 204) = vadd_s32(*(v17 + 204), v51);
                  if (v21)
                  {
                    IDSAttributeSizeWithChannelDataFormat = VCIDSChannelData_GetIDSAttributeSizeWithChannelDataFormat(v22);
                  }

                  else
                  {
                    IDSAttributeSizeWithChannelDataFormat = 0;
                  }

                  if (*(v17 + 12))
                  {
                    v53 = 48;
                  }

                  else
                  {
                    v53 = 28;
                  }

                  v54 = IDSAttributeSizeWithChannelDataFormat + v53 + v38;
                  v71 = v54;
                  if (v65)
                  {
                    *v65 = v54;
                  }

                  if (*(v17 + 28) == 1)
                  {
                    _RTPUpdateAFRCVideoSendingBitrate(v17, v54, *(v19 + 20), a1);
                  }

                  goto LABEL_73;
                }

                RTPTransportResendRTP_cold_6();
                goto LABEL_76;
              }

LABEL_80:
              __break(0x5519u);
            }

            RTPTransportResendRTP_cold_7();
          }

LABEL_76:
          v9 = *buf;
          goto LABEL_73;
        }

        v9 = v26;
      }

LABEL_73:
      VCNACKConsumer_UpdateRetransmissionStatus(*(v17 + 27776), &v66, v11, v12, v13, v14, v15, v16);
      CheckOutHandleDebug();
      return v9;
    }

    if (v19 >= v20)
    {
      goto LABEL_80;
    }

    v39 = *(v18 + 8);
    v78 = unk_1DBD47B50;
    *v79 = xmmword_1DBD47B60;
    memset(&v79[2], 170, 24);
    memset(buf, 170, sizeof(buf));
    if ((VCPacketInitialize(buf) & 0x80000000) == 0)
    {
      if (*(v17 + 11288))
      {
        if (v39)
        {
          v27 = (v19 + 4);
          if (*(v19 + 2) <= 0)
          {
            RTPTransportResendRTP_cold_3();
          }

          else
          {
            *buf = v39;
            CFRetain(v39);
            *&buf[8] = 257;
            *&buf[56] = *v19;
            *&buf[64] = *(v19 + 1);
            v36 = (v19 + 8);
            *&buf[72] = *(v19 + 4);
            HIDWORD(v79[0]) = *(v19 + 13);
            v40 = *(v17 + 17) & 0x7F;
            v75 = *&buf[64];
            v76 = 0;
            src[0] = 1;
            src[1] = v40;
            *&src[2] = *&buf[56];
            v74 = *&buf[72];
            uuid_copy(&v79[1], src);
            if ((_RTPEnsureTransportStreamsActivated(v17) & 0x80000000) == 0)
            {
              v41 = *(v17 + 11288);
              v42 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v42)
              {
                v43 = v42(v41, buf);
                VCPacketInvalidate(buf);
                if ((v43 & 0x80000000) == 0)
                {
                  v38 = *v27;
                  if (*v27 != -1)
                  {
                    v9 = 0;
                    v22 = 0;
                    goto LABEL_37;
                  }
                }

                goto LABEL_72;
              }
            }
          }
        }

        else
        {
          RTPTransportResendRTP_cold_4();
        }
      }

      else
      {
        RTPTransportResendRTP_cold_5();
      }
    }

    VCPacketInvalidate(buf);
LABEL_72:
    v9 = *__error() | 0xC0010000;
    goto LABEL_73;
  }

  return 2147549190;
}

uint64_t RTPRexmitRTP(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = 2147549186;
  v7 = CheckInHandleDebug();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 10536) != 0xFFFFFFFFLL)
    {
      if (v7 == 0xFFFFFFFFLL)
      {
        return 2147549190;
      }

      else
      {
        *a4 = 0;
        v9 = bswap32(*(v7 + 24));
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315906;
            v14 = v10;
            v15 = 2080;
            v16 = "RTPRexmitRTP";
            v17 = 1024;
            v18 = 2072;
            v19 = 1024;
            v20 = a2;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPRexmitRTP rexmit packet (%04X)", &v13, 0x22u);
          }
        }

        MediaQueue_RexmitPacket(*(v8 + 10536), v9, a2, a4);
        CheckOutHandleDebug();
        if (*a4)
        {
          return 0;
        }

        else
        {
          return 2147549196;
        }
      }
    }
  }

  return v6;
}

unint64_t _RTPMediaSampleTimeWithReceiveTimestamp(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    *(a1 + 280) = a2;
    *(a1 + 288) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  else
  {
    v5 = *(a1 + 280);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (v5 - a2 >= 0x7FFFFFFF)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = (v5 & 0xFFFFFFFF00000000) - 0x100000000;
    }

    if (v5 >= a2)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    if (a2 - v5 < 0x7FFFFFFF)
    {
      v6 += 0x100000000;
    }

    if (v5 > a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v4 = v8 + a2;
    *(a1 + 280) = v4;
  }

  v9 = *(a1 + 300);
  if (v9 >= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPMediaSampleTimeWithReceiveTimestamp_cold_1();
      }
    }

    v9 = *(a1 + 300);
    v4 = *(a1 + 280);
  }

  v10 = v4 - *(a1 + 288);
  if (v9 > 3)
  {
    v11 = v10 + (v10 >> 1);
    v12 = 3 * v10;
    if (v9 != 6)
    {
      v12 = v4 - *(a1 + 288);
    }

    if (v9 != 5)
    {
      v11 = v12;
    }

    if (v9 == 4)
    {
      v10 *= 2;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        v10 >>= 1;
        break;
      case 2:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTPMediaSampleTimeWithReceiveTimestamp_cold_2();
          }
        }

        break;
      case 3:
        v10 += v10 / 3;
        break;
    }
  }

  result = *(a1 + 272) + v10;
  *(a1 + 264) = result;
  return result;
}

uint64_t RTPProcessDecryptionStatusChange(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = _RTPProcessDecryptionStatusChange(v3, a2);
  CheckOutHandleDebug();
  return v4;
}

uint64_t _RTPProcessDecryptionStatusChange(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (*(a1 + 10648) == a2)
  {
    return 0;
  }

  *(a1 + 10648) = a2;
  v2 = *(a1 + 10568);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(5, *(a1 + 10576), &v6, 0);
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTPProcessDecryptionStatusChange_cold_1();
    }
  }

  return v4;
}

uint64_t RTPReleaseRTPPacket(uint64_t a1, _DWORD **a2)
{
  result = CheckInHandleDebug();
  if (result)
  {
    _RTPReleaseRTPPacketInternal(result, a2);

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t RTPRecvRTP(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = 2147549186;
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    if (v5 == 0xFFFFFFFF)
    {
      return 2147549190;
    }

    else
    {
      v16 = 0;
      v4 = RecvRTP(a1, v5, &v16);
      if ((v4 & 0x80000000) != 0 || (v7 = v16) == 0)
      {
        RTPRecvRTP_cold_1();
      }

      else
      {
        if (!*v16 && !*(v6 + 28))
        {
          v8 = *(v16 + 104);
          v9 = *(v6 + 152);
          if (v9 != v8)
          {
            if (v8)
            {
              (*(v6 + 10568))(2, *(v6 + 10576), v16 + 25, 0);
            }

            else
            {
              if (v9 == -1)
              {
                v11 = v16 + 25;
                v10 = 0;
              }

              else
              {
                v10 = 1;
                v11 = 0;
              }

              (*(v6 + 10568))(v10, *(v6 + 10576), v11, 0);
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v14 = *(v6 + 152);
                *buf = 136316162;
                v18 = v12;
                v19 = 2080;
                v20 = "RTPRecvRTP";
                v21 = 1024;
                v22 = 2330;
                v23 = 1024;
                v24 = v14;
                v25 = 1024;
                v26 = v8;
                _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP relay flag (%d->%d).", buf, 0x28u);
              }
            }

            *(v6 + 152) = v8;
          }
        }

        *a2 = v7;
        v16 = 0;
      }

      _RTPReleaseRTPPacketInternal(v6, &v16);
      CheckOutHandleDebug();
    }
  }

  return v4;
}

char *RecvRTP(uint64_t a1, unint64_t a2, char **a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 11288))
  {
    v15[0] = 0;
    v6 = _RTPEnsureTransportStreamsActivated(a2);
    if ((v6 & 0x80000000) == 0)
    {
      v7 = (a2 + 11344);
      v8 = *(a2 + 11344);
      v15[0] = v8;
      if (v8)
      {
LABEL_17:
        v14 = *(v8 + 6056);
        *v7 = v14;
        if (!v14)
        {
          *(a2 + 11352) = v7;
        }

        *a3 = v8;
        v15[0] = 0;
        goto LABEL_20;
      }

      v9 = *(a2 + 11336);
      if (!v9)
      {
        v10 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, *(a2 + 11288));
        v12 = *(a2 + 11304);
        if (v12)
        {
          CFArrayAppendValue(Mutable, v12);
        }

        v6 = VCTransportStreamRunLoopCreateWithTransportStreams(v10, Mutable, (a2 + 11336));
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_20;
        }

        v9 = *(a2 + 11336);
      }

      v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v13)
      {
        v6 = v13(v9, 0.0);
        if ((v6 & 0x80000000) == 0)
        {
          v8 = *v7;
          goto LABEL_17;
        }
      }

      else
      {
        v6 = 4294954514;
      }
    }

LABEL_20:
    _RTPReleaseRTPPacketInternal(a2, v15);
    return v6;
  }

  return _RTPRecvWithSocket(a1, a2, a3);
}

uint64_t _RTPTransport_EstimateRTCPXRSummaryJitter(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v7 = *(result + 4836) - *(a4 + 4);
  if (v7)
  {
    v8 = *(a2 + 128);
    v9 = *(a4 + 2);
    v10 = *(result + 4848);
    if (v10 >= v9)
    {
      v10 = *(a4 + 2);
    }

    v11 = v9 - v10;
    if (v9 - v10 <= 0x13F)
    {
      v9 = v10;
    }

    *(result + 4848) = v9;
    if (v11 <= 0x13F)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = result + 6152;
    v14 = (result + 4872 + 4 * v12);
    if (v14 >= result + 6152 || v14 < result + 4872)
    {
      goto LABEL_25;
    }

    LODWORD(a7) = *(result + 700);
    v16 = v7 + vcvtad_u64_f64((v8 - *(result + 4864)) * *&a7);
    if (a3)
    {
      v16 = 0;
    }

    *v14 = v16;
    *(result + 4836) = *(a4 + 4);
    *(result + 4864) = v8;
    v17 = (v13 + v12);
    if (v13 + v12 < result + 6472 && v17 >= v13)
    {
      *v17 = *(a2 + 136);
      if (v12 <= *(result + 4856))
      {
        LODWORD(v12) = *(result + 4856);
      }

      *(result + 4856) = v12;
    }

    else
    {
LABEL_25:
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t _RTPTransport_ParseMediaPacket(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v201 = *MEMORY[0x1E69E9840];
  v3 = a2 + 88;
  if (*(a2 + 88) != -1)
  {
    v7 = *(a1 + 4832);
    dataPointerOut = 0;
    lengthAtOffsetOut = 0;
    if (CMBlockBufferGetDataPointer(*a2, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
    {
      _RTPTransport_ParseMediaPacket_cold_1();
      return *buf;
    }

    v177 = v7;
    *a3 = 0;
    if (dataPointerOut && !lengthAtOffsetOut)
    {
      goto LABEL_291;
    }

    v8 = 2147549191;
    if (lengthAtOffsetOut < 0xC)
    {
      v8 = 2147549192;
      goto LABEL_23;
    }

    v10 = *dataPointerOut;
    v182 = v10;
    v11 = *(dataPointerOut + 2);
    v12 = WORD1(v10);
    v13 = __rev16(WORD1(v10));
    WORD1(v182) = v13;
    v14 = bswap32(HIDWORD(v10));
    v15 = bswap32(v11);
    v183 = v15;
    if (*(a1 + 7004))
    {
      v16 = *(a1 + 4832) != v15;
    }

    else
    {
      v16 = 1;
    }

    v178 = _RTPMediaSampleTimeWithReceiveTimestamp(a1, v14, v16);
    HIDWORD(v182) = v178;
    v17 = v182;
    if ((v182 & 0xC0) != 0x80)
    {
      v8 = 2147549193;
LABEL_23:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTPTransport_ParseMediaPacket_cold_21();
        }
      }

      return v8;
    }

    if (!*(a1 + 7004) && !v12 && !*(a1 + 188))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTPTransport_ParseMediaPacket_cold_20();
        }
      }

      goto LABEL_23;
    }

    v175 = (a1 + 7962);
    v161 = BYTE1(v182) & 0x7F;
    InternalPayload = RTPMapGetInternalPayload(*(a1 + 64), v161);
    LOWORD(v182) = v17 & 0x80BF | ((InternalPayload & 0x7F) << 8);
    if (!*(a1 + 28))
    {
      kdebug_trace();
    }

    v173 = v15;
    v174 = v17;
    if (*(a1 + 7004) && *(a1 + 4832) == v15)
    {
      v159 = 0;
      v160 = 0;
    }

    else
    {
      v19 = *(a2 + 128);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 28);
          v23 = *(a1 + 4832);
          *buf = 136317186;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransport_ReinitializeStream";
          *&buf[22] = 1024;
          *&buf[24] = 2380;
          LOWORD(v190[0]) = 1024;
          *(v190 + 2) = v22;
          WORD3(v190[0]) = 1024;
          DWORD2(v190[0]) = v15;
          WORD6(v190[0]) = 1024;
          *(v190 + 14) = v23;
          WORD1(v190[1]) = 1024;
          DWORD1(v190[1]) = InternalPayload & 0x7F;
          WORD4(v190[1]) = 1024;
          *(&v190[1] + 10) = v13;
          HIWORD(v190[1]) = 1024;
          LODWORD(v191) = v178;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP(%d): recv started(%X,%X, %d) SeqNum = %u, TimeStamp = %u", buf, 0x40u);
        }
      }

      *(a1 + 688) = v13;
      *(a1 + 692) = v13;
      *(a1 + 696) = v178;
      *(a1 + 704) = 0;
      *(a1 + 712) = 0;
      *(a1 + 4816) = 0;
      *(a1 + 4828) = 0;
      *(a1 + 4832) = v15;
      bzero((a1 + 716), 0x1000uLL);
      *(a1 + 716) = 1;
      v24 = MicroToNTP(v19);
      *&v25 = 0;
      *(a1 + 6792) = 0u;
      *(a1 + 6808) = 0u;
      *(a1 + 6824) = 0u;
      *(a1 + 6840) = 0u;
      *(a1 + 6856) = 0u;
      *(a1 + 6872) = 0u;
      *(a1 + 6888) = 0u;
      *(a1 + 6904) = 0u;
      *(a1 + 6920) = 0u;
      *(a1 + 6936) = 0u;
      *(a1 + 6952) = 0u;
      *(a1 + 6968) = 0u;
      *(a1 + 6488) = v24;
      *(a1 + 6984) = v25;
      *(a1 + 7004) = 1;
      os_unfair_lock_lock((a1 + 9028));
      *(a1 + 7648) = v15;
      *(a1 + 9024) = 1;
      os_unfair_lock_unlock((a1 + 9028));
      *(a1 + 8544) = v15;
      *(a1 + 7658) = v13;
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 7528);
          *buf = 136316162;
          *&buf[4] = v26;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransport_ReinitializeStream";
          *&buf[22] = 1024;
          *&buf[24] = 2414;
          LOWORD(v190[0]) = 1024;
          *(v190 + 2) = v28 & 1;
          WORD3(v190[0]) = 1024;
          DWORD2(v190[0]) = (v28 >> 2) & 1;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: need to wait for SRTP to init? (%d/%d)", buf, 0x28u);
        }
      }

      if (*(a1 + 7528) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v29;
            *&buf[12] = 2080;
            *&buf[14] = "_RTPTransport_ReinitializeStream";
            *&buf[22] = 1024;
            *&buf[24] = 2417;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: Need to wait for SRTP to init...", buf, 0x1Cu);
          }
        }

        blockBufferOut = 0x4034000000000000;
        v31 = micro();
        v32 = SRTPWaitUseEncryptionRTP(a1 + 7528, &blockBufferOut);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v35 = micro();
            *buf = 136316162;
            *&buf[4] = v33;
            *&buf[12] = 2080;
            *&buf[14] = "_RTPTransport_ReinitializeStream";
            *&buf[22] = 1024;
            *&buf[24] = 2423;
            LOWORD(v190[0]) = 2048;
            *(v190 + 2) = v35 - v31;
            WORD5(v190[0]) = 1024;
            HIDWORD(v190[0]) = v32;
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: end wait SRTP @ %.3f seconds (%08X)", buf, 0x2Cu);
          }
        }

        if (v32 < 0)
        {
          v9 = 2147549199;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _RTPTransport_ParseMediaPacket_cold_2();
              v9 = 2147549199;
            }
          }

          goto LABEL_277;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 7528);
          *buf = 136316162;
          *&buf[4] = v36;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransport_ReinitializeStream";
          *&buf[22] = 1024;
          *&buf[24] = 2430;
          LOWORD(v190[0]) = 1024;
          *(v190 + 2) = v38 & 1;
          WORD3(v190[0]) = 1024;
          DWORD2(v190[0]) = (v38 >> 2) & 1;
          _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: done waiting for SRTP to init. (%d/%d)", buf, 0x28u);
        }
      }

      v159 = 1;
      v160 = 1;
    }

    if (*(a1 + 12))
    {
      v39 = 48;
    }

    else
    {
      v39 = 28;
    }

    v40 = (a1 + 716 + 4 * (v13 & 0x3FF));
    if (v40 >= a1 + 4812 || v40 < a1 + 716)
    {
      goto LABEL_291;
    }

    v41 = *(a2 + 104);
    v42 = lengthAtOffsetOut;
    v43 = *v40;
    if (*v40 == v13)
    {
      if (!*(a1 + 28))
      {
        if (*(a1 + 188))
        {
          ++*(a1 + 4840);
          v44 = (a1 + 6792 + 4 * *(a1 + 6992));
          if (v44 >= a1 + 6992 || v44 < a1 + 6792)
          {
            goto LABEL_291;
          }

          *v44 = v13;
          *(a1 + 6992) = (*(a1 + 6992) + 1) % 0x32u;
        }

        v45 = 1;
        v46 = 1;
LABEL_63:
        v48 = *v3;
        v49 = *(a1 + 10592);
        v50 = *(a1 + 28);
        if (v49)
        {
          if (v50)
          {
            if (v50 == 1)
            {
              v49[64] = *(a1 + 692) - *(a1 + 688) + 1;
            }

            goto LABEL_86;
          }

          if (!v48)
          {
            ++v49[61];
            v49[65] = *(a1 + 692) - *(a1 + 688) + 1;
          }

          ++v49[63];
        }

        else if (v50)
        {
          goto LABEL_86;
        }

        if (v48 >= 2)
        {
          _RTPTransport_ParseMediaPacket_cold_19();
          v96 = v97;
          if (!v97)
          {
            goto LABEL_175;
          }

          v9 = 2147549199;
          goto LABEL_173;
        }

        v50 = 0;
LABEL_86:
        v165 = v42 + v41 + v39;
        if (v43 == v13)
        {
          v56 = 0;
        }

        else
        {
          v56 = v42 + v41 + v39;
        }

        v57 = *(a1 + 10536);
        if (v57 == 0xFFFFFFFFLL)
        {
          if (v56)
          {
            ++*(a1 + 320);
            HIDWORD(v58) = 1083129856;
            LODWORD(v58) = *(a1 + 324);
            *(a1 + 324) = ((8 * v56) / 1000.0 + v58);
          }
        }

        else
        {
          MediaQueue_RecordNewPacketWithSize(v57, v56, v50, (a1 + 320), (a1 + 324));
        }

        if (!*(a1 + 10560))
        {
          AFRCCalcRxEstimate(*(a2 + 128), *(a1 + 10544), *(a1 + 28), v178, v13, v165, 0, 0);
        }

        v59 = *(a1 + 11376);
        if (v59)
        {
          VCConnectionManager_UpdateConnectionHealthWithIndicator(v59, *v3 == 0, v13, v46);
        }

        v162 = v46;
        v158 = v45;
        v179 = 0;
        v60 = _RTPTransport_PacketExtensionLength(dataPointerOut, lengthAtOffsetOut, &v182, &v179);
        if ((v60 & 0x80000000) == 0)
        {
          v61 = v179;
          v62 = lengthAtOffsetOut;
          v171 = dataPointerOut;
          v185 = 0;
          v184 = 0;
          if (*(a1 + 7936) == 1)
          {
            v63 = a1 + 7962;
            if (*(a1 + 11384) == 1)
            {
              if (*(a1 + 11386) + 1 != v13)
              {
                blockBufferOut = 0;
                pthread_mutex_lock((a1 + 7816));
                VCMediaKeyIndex_ReleaseAndCopyNewValue(&blockBufferOut, *(a1 + 7880));
                pthread_mutex_unlock((a1 + 7816));
                v64 = *(a1 + 10568);
                if (v64)
                {
                  if ((v64(6, *(a1 + 10576), blockBufferOut, 0) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      _RTPTransport_ParseMediaPacket_cold_4();
                    }
                  }
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v65 = VRTraceErrorLogLevelToCSTR();
                  v66 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v93 = *(a1 + 11386) + 1;
                    v94 = *(a1 + 10576);
                    *buf = 136316674;
                    *&buf[4] = v65;
                    *&buf[12] = 2080;
                    *&buf[14] = "_RTPTransport_DetectSequenceNumberGap";
                    *&buf[22] = 1024;
                    *&buf[24] = 2128;
                    LOWORD(v190[0]) = 1024;
                    *(v190 + 2) = v93;
                    WORD3(v190[0]) = 1024;
                    DWORD2(v190[0]) = v13;
                    WORD6(v190[0]) = 2048;
                    *(v190 + 14) = v94;
                    WORD3(v190[1]) = 2112;
                    *(&v190[1] + 1) = blockBufferOut;
                    _os_log_error_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_ERROR, " [%s] %s:%d Detected gap in RTP sequence number: expected=%u, received=%u, for stream=%p with MKI=%@", buf, 0x3Cu);
                  }
                }

                VCMediaKeyIndex_Release(&blockBufferOut);
                v63 = a1 + 7962;
                *(a1 + 11384) = 0;
              }

              *(v63 + 3424) = v13;
            }

            if (!*(a1 + 7880))
            {
              *(a1 + 11384) = 1;
              *(a1 + 11386) = v13;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v67 = VRTraceErrorLogLevelToCSTR();
                v68 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v69 = *(a1 + 10576);
                  *buf = 136315906;
                  *&buf[4] = v67;
                  *&buf[12] = 2080;
                  *&buf[14] = "_RTPTransport_DetectSequenceNumberGap";
                  *&buf[22] = 1024;
                  *&buf[24] = 2139;
                  LOWORD(v190[0]) = 2048;
                  *(v190 + 2) = v69;
                  _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Started RTP sequence number gap detection for stream=%p", buf, 0x26u);
                }
              }
            }
          }

          if ((v62 & 0x80000000) != 0 || v62 > v62)
          {
            goto LABEL_291;
          }

          offsetToData = 4 * (v174 & 0xF) + 12;
          v168 = v61 + offsetToData;
          v70 = SRTPVerifyAuthenticationTag(a1 + 7528, v13, v171, v62, &v184, &v185);
          if ((v70 & 0x80000000) != 0)
          {
            v9 = v70;
            if (v70 != -2145255368)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _RTPTransport_ParseMediaPacket_cold_13();
                }
              }

              if (v9 == -2145255361 && (*v175 & 1) == 0)
              {
                *v175 = 1;
                v71 = *(a1 + 7968);
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v72 = VRTraceErrorLogLevelToCSTR();
                  v73 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v74 = VCSecurityKeyHolder_ParticipantID(*(a1 + 10632));
                    *buf = 136316162;
                    *&buf[4] = v72;
                    *&buf[12] = 2080;
                    *&buf[14] = "_RTPProcessMKICollision";
                    *&buf[22] = 1024;
                    *&buf[24] = 2239;
                    LOWORD(v190[0]) = 2048;
                    *(v190 + 2) = v74;
                    WORD5(v190[0]) = 2048;
                    *(v190 + 12) = v71;
                    _os_log_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Processing MKI collision: participantID=%llu, MKI size=%lu... Aborting the call", buf, 0x30u);
                  }
                }

                v75 = *(a1 + 10568);
                if (v75)
                {
                  if ((v75(7, *(a1 + 10576), 0, 0) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      _RTPTransport_ParseMediaPacket_cold_14();
                    }
                  }

                  v9 = 2149711935;
                }

                else
                {
                  _RTPTransport_ParseMediaPacket_cold_15();
                  v62 = *buf;
                  v9 = blockBufferOut;
                }

                goto LABEL_201;
              }

LABEL_197:
              _RTPProcessDecryptionStatusChange(a1, 0);
LABEL_201:
              if (v62 > lengthAtOffsetOut)
              {
                goto LABEL_291;
              }

              lengthAtOffsetOut = v62;
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              if ((v174 & 0x20) != 0)
              {
                v104 = &dataPointerOut[v62 - 1];
                if (v104 >= &dataPointerOut[v62] || v104 < dataPointerOut)
                {
                  goto LABEL_291;
                }

                v103 = *v104;
              }

              else
              {
                v103 = 0;
              }

              v105 = v173;
              if ((v62 - v103 - v168) >= 0x5C1)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v152 = VRTraceErrorLogLevelToCSTR();
                  v153 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316674;
                    *&buf[4] = v152;
                    *&buf[12] = 2080;
                    *&buf[14] = "_RTPTransport_ParseMediaPacket";
                    *&buf[22] = 1024;
                    *&buf[24] = 2965;
                    LOWORD(v190[0]) = 1024;
                    *(v190 + 2) = lengthAtOffsetOut;
                    WORD3(v190[0]) = 1024;
                    DWORD2(v190[0]) = lengthAtOffsetOut;
                    WORD6(v190[0]) = 1024;
                    *(v190 + 14) = v168;
                    WORD1(v190[1]) = 1024;
                    DWORD1(v190[1]) = (v174 >> 5) & 1;
                    _os_log_error_impl(&dword_1DB56E000, v153, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid packet! length:%d iRet:%d iOffset:%d padding:%d, ", buf, 0x34u);
                    v9 = 2147549191;
                    goto LABEL_257;
                  }
                }

                goto LABEL_255;
              }

              if (v162)
              {
LABEL_210:
                *(a3 + 120) = v165;
                *(a3 + 40) = *(a2 + 128);
                v106 = *(a2 + 34);
                if (!*(a2 + 34))
                {
LABEL_213:
                  v9 = 0;
                  *(a3 + 50) = *(a2 + 36);
                  *(a3 + 56) = *(a2 + 40);
                  *(a3 + 89) = *(a2 + 35);
                  v107 = *v3;
                  *(a3 + 112) = *(v3 + 16);
                  *(a3 + 96) = v107;
                  *(a3 + 49) = *(a2 + 9);
                  *(a3 + 48) = v159;
                  *(a3 + 8) = v174 >> 15;
                  *(a3 + 12) = InternalPayload & 0x7F;
                  *(a3 + 16) = v161;
                  *(a3 + 20) = v13;
                  *(a3 + 24) = v178;
                  *(a3 + 28) = v105;
                  *(a3 + 200) = v158;
                  *(a3 + 201) = *(a2 + 88) == 0;
                  *(a3 + 202) = *(a2 + 137);
                  *(a3 + 203) = *(a2 + 138);
                  return v9;
                }

                *(a3 + 88) = v106;
                if (v106 <= 0xC)
                {
                  memcpy((a3 + 64), (a2 + 10), 2 * v106);
                  v105 = v173;
                  goto LABEL_213;
                }

LABEL_291:
                __break(0x5519u);
              }

              v108 = *(a2 + 128);
              v109 = *(a1 + 696);
              v110 = *(a1 + 700);
              v111 = NTPToMicro(*(a1 + 6488));
              if (v178 != *(a1 + 4824))
              {
                v112 = (v109 + v110 * (v108 - v111)) - v178;
                if (v160)
                {
                  v113 = 0;
                }

                else
                {
                  v113 = v112 - *(a1 + 4816);
                  if (v113 < 0)
                  {
                    v113 = *(a1 + 4816) - v112;
                  }
                }

                *(a1 + 4816) = v112;
                v114 = v113 - ((*(a1 + 4828) + 8) >> 4) + *(a1 + 4828);
                *(a1 + 4828) = v114;
                *(a1 + 4824) = v178;
                *(a1 + 6784) = ((v114 >> 4) + *(a1 + 6784) * (*(a1 + 704) - 1)) / *(a1 + 704);
                if (*(a1 + 6776) <= v114 >> 4)
                {
                  v115 = v114 >> 4;
                }

                else
                {
                  v115 = *(a1 + 6776);
                }

                *(a1 + 6776) = v115;
              }

              if (a3 + 8 >= (a3 + 208))
              {
                goto LABEL_291;
              }

              v116 = *a2;
              v117 = dataPointerOut;
              v118 = lengthAtOffsetOut;
              VCBlockBuffer_Clear(a3 + 128);
              v122 = v174;
              if ((v174 & 0x10) != 0)
              {
                *buf = 0;
                v123 = _RTPTransport_PacketExtensionLength(v117, v118, &v182, buf);
                if ((v123 & 0x80000000) != 0)
                {
                  v9 = v123;
                  goto LABEL_257;
                }

                v124 = *buf;
                if (*buf)
                {
                  v125 = &v117[offsetToData];
                  if (&v117[offsetToData] < v117 || v125 > &v117[v118] || *buf > v118 - offsetToData)
                  {
                    goto LABEL_291;
                  }

                  *(a3 + 136) = *buf;
                  *(a3 + 144) = v125;
                  if (CMBlockBufferCreateWithBufferReference(*(a1 + 10664), v116, offsetToData, v124, 0, (a3 + 128)))
                  {
                    v9 = 2147549188;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        _RTPTransport_ParseMediaPacket_cold_16();
                      }
                    }

LABEL_257:
                    if ((v160 & 1) == 0)
                    {
                      return v9;
                    }

                    goto LABEL_277;
                  }
                }

                v122 = v174;
              }

              v126 = *a2;
              v127 = dataPointerOut;
              v128 = &dataPointerOut[lengthAtOffsetOut];
              if ((v122 & 0x20) != 0)
              {
                v131 = v128 - 1;
                v130 = v168;
                if (!v128 || v131 < dataPointerOut)
                {
                  goto LABEL_291;
                }

                v129 = *v131;
              }

              else
              {
                v129 = 0;
                v130 = v168;
              }

              v132 = 0;
              v133 = 0;
              v134 = 0;
              v135 = 0;
              v136 = v129 + v130;
              blockBufferOut = 0;
              v137 = lengthAtOffsetOut - v136;
              if (lengthAtOffsetOut == v136)
              {
LABEL_243:
                *(a3 + 152) = v132;
                if (v134 < v135 || v133 > v135 || v137 > v134 - v135)
                {
                  goto LABEL_291;
                }

                *(a3 + 160) = v137;
                *(a3 + 168) = v135;
                if ((v174 & 0x20) == 0)
                {
                  goto LABEL_247;
                }

                v139 = dataPointerOut;
                v140 = &dataPointerOut[lengthAtOffsetOut];
                v141 = &dataPointerOut[lengthAtOffsetOut - 1];
                if (v141 >= &dataPointerOut[lengthAtOffsetOut] || v141 < dataPointerOut)
                {
                  goto LABEL_291;
                }

                v142 = *v141;
                if (*(a1 + 28))
                {
                  if ((v142 - 1) > 3u)
                  {
LABEL_255:
                    v9 = 2147549191;
                    goto LABEL_276;
                  }

                  if (v142 != 1)
                  {
                    v143 = &dataPointerOut[lengthAtOffsetOut - v142];
                    v144 = (v142 - 1);
                    while (v143 < v140 && v143 >= dataPointerOut)
                    {
                      v145 = *v143;
                      v147 = v145 == 255 && (v142 - 1) == 3;
                      if ((v145 - 4) < 0xFB || v147)
                      {
                        goto LABEL_255;
                      }

                      ++v143;
                      if (!--v144)
                      {
                        goto LABEL_274;
                      }
                    }

                    goto LABEL_291;
                  }
                }

                else
                {
                  v9 = 2147549191;
                  if ((v142 - 1) > 0xAu)
                  {
LABEL_276:
                    if (!v160)
                    {
                      return v9;
                    }

                    goto LABEL_277;
                  }
                }

LABEL_274:
                v148 = lengthAtOffsetOut - v142;
                if (!CMBlockBufferCreateWithBufferReference(*(a1 + 10664), *a2, lengthAtOffsetOut - v142, (v142 - 1), 0, (a3 + 176)))
                {
                  v151 = &v139[v148];
                  if (&v139[v148] > v140 || v151 < v139 || !v142)
                  {
                    goto LABEL_291;
                  }

                  *(a3 + 184) = (v142 - 1);
                  *(a3 + 192) = v151;
LABEL_247:
                  v105 = v173;
                  if (*(a1 + 188))
                  {
                    if (v160)
                    {
                      *(a1 + 4848) = 0;
                    }

                    _RTPTransport_EstimateRTCPXRSummaryJitter(a1, a2, v160, &v182, v119, v120, v121);
                  }

                  goto LABEL_210;
                }

                v9 = 2147549187;
                goto LABEL_276;
              }

              v138 = v130;
              if (!CMBlockBufferCreateWithBufferReference(*(a1 + 10664), v126, v130, lengthAtOffsetOut - v136, 0, &blockBufferOut))
              {
                v135 = &v127[v138];
                v132 = blockBufferOut;
                v133 = v127;
                v134 = v128;
                goto LABEL_243;
              }

              _RTPTransport_ParseMediaPacket_cold_17();
              v9 = 2147549188;
              if ((v154 & 1) == 0)
              {
                return v9;
              }

LABEL_277:
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v149 = VRTraceErrorLogLevelToCSTR();
                v150 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v149;
                  *&buf[12] = 2080;
                  *&buf[14] = "RTPUninitialize";
                  *&buf[22] = 1024;
                  *&buf[24] = 636;
                  LOWORD(v190[0]) = 1024;
                  *(v190 + 2) = v9;
                  _os_log_impl(&dword_1DB56E000, v150, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Uninitializing RTP with error %X", buf, 0x22u);
                }
              }

              RTPReset(a1, v177);
              return v9;
            }
          }

          if (v185 != 1)
          {
LABEL_188:
            v100 = &v171[v168];
            if (&v171[v168] > &v171[v62])
            {
              goto LABEL_291;
            }

            if (v100 < v171)
            {
              goto LABEL_291;
            }

            v101 = v184 - v168;
            if (v184 - v168 < 0 || (v62 - v168) < v101)
            {
              goto LABEL_291;
            }

            v102 = SRTPDecrypt(a1 + 7528, v13, v100, v101);
            if ((v102 & 0x80000000) == 0 || (v9 = v102, v102 == -2145255368))
            {
              v62 = v184;
              if (*(a1 + 7920))
              {
                _RTPProcessDecryptionStatusChange(a1, 1);
              }

              v9 = 0;
              goto LABEL_201;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTPTransport_ParseMediaPacket_cold_12();
              }
            }

            goto LABEL_197;
          }

          v187 = 0;
          blockBufferOut = 0;
          theArray = 0;
          pthread_mutex_lock((a1 + 7816));
          VCMediaKeyIndex_ReleaseAndCopyNewValue(&blockBufferOut, *(a1 + 7880));
          VCMediaKeyIndex_ReleaseAndCopyNewValue(&v187, *(a1 + 7888));
          pthread_mutex_unlock((a1 + 7816));
          v76 = *(a1 + 7936);
          if (v76 <= 4 && ((1 << v76) & 0x1A) != 0)
          {
            if ((VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex(*(a1 + 10632), v187, &theArray) & 0x80000000) != 0)
            {
              _RTPTransport_ParseMediaPacket_cold_11(&v187);
            }

            else if (theArray)
            {
              v77 = *(a1 + 10568);
              if (v77 && (v77(4, *(a1 + 10576), v187, 0) & 0x80000000) != 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTPTransport_ParseMediaPacket_cold_5();
                  }
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTPTransport_ParseMediaPacket_cold_6();
                  }
                }
              }

              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              Value = CFDictionaryGetValue(ValueAtIndex, @"SecurityKeyIndex");
              if (Value)
              {
                if ((VCSecurityKeyHolder_AssociateKeyIndex(*(a1 + 10632), Value) & 0x80000000) != 0)
                {
                  _RTPTransport_ParseMediaPacket_cold_8();
                }

                else
                {
                  SRTPUpdateKeyMaterialForRTPInfo(a1, ValueAtIndex);
                  v81 = v80;
                  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                  if (!v81)
                  {
                    if (ErrorLogLevelForModule >= 7)
                    {
                      v83 = VRTraceErrorLogLevelToCSTR();
                      v84 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v85 = VCMediaKeyIndex_Description(v187);
                        *buf = 136316162;
                        *&buf[4] = v83;
                        *&buf[12] = 2080;
                        *&buf[14] = "_RTPTransport_HandleMKIChanged";
                        *&buf[22] = 1024;
                        *&buf[24] = 2700;
                        LOWORD(v190[0]) = 2048;
                        *(v190 + 2) = a1;
                        WORD5(v190[0]) = 2080;
                        *(v190 + 12) = v85;
                        _os_log_impl(&dword_1DB56E000, v84, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d rtpInfo=%p: SRTP has been updated with new key material with index=%s", buf, 0x30u);
                      }
                    }

                    v9 = 0;
                    v86 = 1;
                    goto LABEL_185;
                  }

                  _RTPTransport_ParseMediaPacket_cold_7(ErrorLogLevelForModule);
                }
              }

              else
              {
                _RTPTransport_ParseMediaPacket_cold_9();
              }
            }

            else
            {
              _RTPTransport_ParseMediaPacket_cold_10(&v187);
            }
          }

          v9 = 2149711929;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v176 = VRTraceErrorLogLevelToCSTR();
            v98 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v155 = VCMediaKeyIndex_Description(v187);
              v99 = VCMediaKeyIndex_Description(blockBufferOut);
              *buf = 136316418;
              *&buf[4] = v176;
              *&buf[12] = 2080;
              *&buf[14] = "_RTPTransport_HandleMKIChanged";
              *&buf[22] = 1024;
              *&buf[24] = 2703;
              LOWORD(v190[0]) = 2048;
              *(v190 + 2) = a1;
              WORD5(v190[0]) = 2080;
              *(v190 + 12) = v155;
              WORD2(v190[1]) = 2080;
              *(&v190[1] + 6) = v99;
              _os_log_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d rtpInfo=%p: SRTP drop packet due to media key index changed [new:%s, old:%s]", buf, 0x3Au);
            }
          }

          v86 = 0;
LABEL_185:
          if (theArray)
          {
            CFRelease(theArray);
          }

          VCMediaKeyIndex_Release(&blockBufferOut);
          VCMediaKeyIndex_Release(&v187);
          if ((v86 & 1) == 0)
          {
            goto LABEL_197;
          }

          goto LABEL_188;
        }

        v9 = v60;
        _RTPTransport_ParseMediaPacket_cold_18();
        v96 = v95;
        if (!v95)
        {
LABEL_175:
          v9 = *buf;
          goto LABEL_276;
        }

LABEL_173:
        if (v96 != 1)
        {
          return v9;
        }

        goto LABEL_277;
      }
    }

    else
    {
      *v40 = v13;
      ++*(a1 + 704);
      v47 = *(a1 + 10592);
      if (v47)
      {
        ++*(v47 + 56);
      }

      ++*(a1 + 328);
    }

    if (*(a1 + 11284))
    {
LABEL_62:
      v45 = 0;
      v46 = 0;
      goto LABEL_63;
    }

    v51 = *(a1 + 692);
    if (v13 == v51 || (v13 - v51) > 0x7FFEu)
    {
      if ((v51 - v13) < 0x33u)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v52 = v51 + 0x10000;
      if (v13 >= v51)
      {
        v52 = *(a1 + 692);
      }

      *(a1 + 692) = v52 & 0xFFFF0000 | v13;
      v53 = (v13 - v51);
      if (v53 < 2)
      {
        goto LABEL_62;
      }

      v164 = v42;
      v167 = v41;
      v170 = v39;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v157 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        v55 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v157;
            *&buf[12] = 2080;
            *&buf[14] = "_RTPTransport_DetectPacketLoss";
            *&buf[22] = 1024;
            *&buf[24] = 2729;
            LOWORD(v190[0]) = 1024;
            *(v190 + 2) = v53 - 1;
            _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d packets lost", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          _RTPTransport_ParseMediaPacket_cold_3();
        }
      }

      v87 = *(a1 + 10544);
      v88 = v53 - 1;
      if (*(a1 + 28) == 1)
      {
        AFRCRecordMaxBurstyLoss(v87, v88);
        *&buf[11] = 0;
        *&buf[4] = 0;
        memset(v190, 0, sizeof(v190));
        v191 = 0u;
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v199 = 0u;
        v200 = 0;
        v89 = *(a1 + 10608);
        *buf = 7;
        buf[19] = 1;
        v90 = 0x200000000;
      }

      else
      {
        AFRCRecordMaxAudioConsecutiveLoss(v87, v88);
        *&buf[11] = 0;
        *&buf[4] = 0;
        memset(v190, 0, sizeof(v190));
        v191 = 0u;
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v199 = 0u;
        v200 = 0;
        v89 = *(a1 + 10608);
        *buf = 7;
        buf[19] = 1;
        v90 = 0x100000000;
      }

      *&buf[20] = v90;
      v192 = v88;
      VCRateControlSetStatistics(v89, buf);
      v41 = v167;
      v39 = v170;
      v42 = v164;
      if ((v13 - v51) <= 0x5DCu)
      {
        goto LABEL_62;
      }
    }

    v166 = v42;
    v169 = v41;
    v172 = v39;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v91 = VRTraceErrorLogLevelToCSTR();
      v92 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v91;
        *&buf[12] = 2080;
        *&buf[14] = "_RTPTransport_DetectPacketLoss";
        *&buf[22] = 1024;
        *&buf[24] = 2763;
        LOWORD(v190[0]) = 1024;
        *(v190 + 2) = v51;
        WORD3(v190[0]) = 1024;
        DWORD2(v190[0]) = v13;
        _os_log_impl(&dword_1DB56E000, v92, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Big jump in sequence Number! LastSeq:%d CurrentSeq:%d", buf, 0x28u);
      }
    }

    v45 = 0;
    v46 = 0;
    v41 = v169;
    v39 = v172;
    v42 = v166;
    goto LABEL_63;
  }

  v9 = 2147549195;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTPTransport_ParseMediaPacket_cold_22();
      return 2147549195;
    }
  }

  return v9;
}

unint64_t _RTPTransport_PacketExtensionLength(unint64_t result, unint64_t a2, _WORD *a3, uint64_t *a4)
{
  if (a4)
  {
    *a4 = 0;
    if ((*a3 & 0x10) != 0)
    {
      v5 = 4 * (*a3 & 0xFLL) + 12;
      if (v5 >= a2)
      {
        v4 = 2147549191;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTPTransport_PacketExtensionLength_cold_1();
          }
        }
      }

      else if (4 * (*a3 & 0xFuLL) + 16 <= a2)
      {
        v6 = (result + v5 + 2);
        if (v6 >= result + a2 || v6 < result)
        {
          __break(0x5519u);
          return result;
        }

        v8 = 4 * (bswap32(*v6) >> 16) + 4;
        if (v8 + v5 <= a2)
        {
          v4 = 0;
          *a4 = v8;
        }

        else
        {
          v4 = 2147549191;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _RTPTransport_PacketExtensionLength_cold_2();
            }
          }
        }
      }

      else
      {
        v4 = 2147549191;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTPTransport_PacketExtensionLength_cold_3();
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = 2147549188;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPTransport_PacketExtensionLength_cold_4();
      }
    }
  }

  return v4;
}