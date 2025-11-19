void VCAudioStream_PullAudioSamples_cold_1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioStream_PullAudioSamples_cold_2()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCAudioStream_PullAudioSamples_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCAudioStream_PullAudioSamples_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCAudioStream_SetAllowedCodecConfigurations_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCAudioStream_SetAllowedCodecConfigurations_cold_2(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioStream_SetAllowedCodecConfigurations_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCAudioStream_SetAudioPlayoutDelay_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCAudioStream_ActiveStreamChangeCallback_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }
}

void _VCScreenCapture_setRepeatFrameAttributes_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 351;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCScreenCapture [%s] %s:%d Failed to get image buffer", v2);
    }
  }
}

void _VCScreenCapture_setRepeatFrameAttributes_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 349;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCScreenCapture [%s] %s:%d Failed to get sample buffer", v2);
    }
  }
}

void _VCScreenCapture_CreateFrameInternal_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "_VCScreenCapture_CreateFrameInternal";
  v6 = 1024;
  v7 = 627;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCScreenCapture [%s] %s:%d VCScreenCapture: could not create pixel buffer from pool %d", v3, 0x22u);
}

void _VCScreenCapture_CreateFrameInternal_cold_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      v7 = 662;
      OUTLINED_FUNCTION_7_6(&dword_1DB56E000, v4, v5, "VCScreenCapture [%s] %s:%d failed to set SIGNPOST_IOSURFACE_ID", v6);
    }
  }

  *a2 = a1;
}

void _VCScreenCapture_CreateFrameInternal_cold_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      v7 = 664;
      OUTLINED_FUNCTION_7_6(&dword_1DB56E000, v4, v5, "VCScreenCapture [%s] %s:%d failed to set ioSurfaceTimeStamp", v6);
    }
  }

  *a2 = a1;
}

void _VCScreenCapture_CreateFrameInternal_cold_4()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 637;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCScreenCapture [%s] %s:%d Rotated sample buffer is NULL", v2);
    }
  }
}

void _VCScreenCapture_CreateFrameInternal_cold_5(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2146893821;
}

void VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 537;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCScreenCapture [%s] %s:%d Failed to create dictionary representation", v2);
}

void VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2146893821;
}

void VCAudioDucker_Allocate_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate audio ducker", v2, v3, v4, v5, v6);
}

void VCAudioDucker_Start_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to start due to failing to get new instance", v2, v3, v4, v5, v6);
}

void VCAudioDucker_Start_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d AudioUnitSetProperty kAudioUnitProperty_MaximumFramesPerSlice err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_10_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d AudioUnitSetProperty kAudioUnitProperty_StreamFormat for kAudioUnitScope_Input err=%d inputNum=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_10_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d AudioUnitSetProperty kAudioUnitProperty_StreamFormat for kAudioUnitScope_Output err=%d outputNum=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Set properties failed", v2, v3, v4, v5, v6);
}

void VCAudioDucker_Start_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDOtherAudioDuckingLevel err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDPrimaryDuckingThreshold err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDPrimaryDuckingMinLevel err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDOtherAudioDuckingMinLevel err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDOtherAudioRMSLimit err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDDuckingRampTime err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDHistoryAccumulationTime err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDUnDuckingRampTime err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_14()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set kVCAudioDuckerParameterIDReleaseHoldTime err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_15()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Set tuning parameters failed", v2, v3, v4, v5, v6);
}

void VCAudioDucker_Start_cold_16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d AudioUnitInitialize err=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioDucker_Start_cold_17()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d audioDucker is nil", v2, v3, v4, v5, v6);
}

void VCAudioDucker_Stop_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d audioDucker is nil", v2, v3, v4, v5, v6);
}

void VCAudioDucker_Process_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  v6 = 191;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d processing err=%d", v4, 0x22u);
}

void RTPProcessH263Packet_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPProcessH263Packet_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VCTimescale_InitializeTimescaleAlgo_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "_VCTimescale_SetupAlgoInterfaces";
  v6 = 1024;
  v7 = 74;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate timescale Interface", &v2, 0x1Cu);
}

void RTPSendH264Packet_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPProcessH264FragmentationHeader_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPProcessH264FragmentationHeader_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void RTPProcessH264FragmentationHeader_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPProcessH264FragmentationHeader_cold_4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void RTPProcessH264FragmentationHeader_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPProcessH264FragmentationHeader_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _RTPProcessH264FragmentationHeaderStartEndBits_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  v2 = 1;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPH264.c:%d: Invalid fragmentation unit length (%d)", v1, 0x28u);
}

void RTPProcessH264Packet_cold_1()
{
  OUTLINED_FUNCTION_17_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void RTPProcessH264Packet_cold_2()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPProcessH264Packet_cold_3()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPProcessSTAPPacket_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void _RTPProcessSTAPPacket_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v2 = 1;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid data length %zu", v1, 0x26u);
}

void _RTPProcessSTAPPacket_cold_3()
{
  OUTLINED_FUNCTION_17_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void _RTPProcessSTAPPacket_cold_4()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPProcessSTAPPacket_cold_5()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPProcessSTAPPacket_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void _RTPProcessSTAPPacket_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

uint64_t _RTPProcessSTAPPacket_cold_8(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
  }

  result = 0;
  *a1 = -2147418097;
  return result;
}

void _RTPProcessFUPacket_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void _RTPProcessFUPacket_cold_2()
{
  OUTLINED_FUNCTION_17_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void _RTPProcessFUPacket_cold_3()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPProcessFUPacket_cold_4()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPProcessFUPacket_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

uint64_t _VCCannedVideoPacketSource_ReadPacketTypeFromFile(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = 0;
  result = _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 1uLL, &v4);
  if (result)
  {
    result = v4;
    if (v4 - 3 <= 0xFFFFFFFD)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v2 = VRTraceErrorLogLevelToCSTR();
        v3 = *MEMORY[0x1E6986650];
        result = OUTLINED_FUNCTION_34();
        if (!result)
        {
          return result;
        }

        *buf = 136315906;
        v6 = v2;
        v7 = 2080;
        v8 = "_VCCannedVideoPacketSource_ReadPacketTypeFromFile";
        v9 = 1024;
        v10 = 478;
        v11 = 1024;
        v12 = 0;
        _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bad packet type: %d", buf, 0x22u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _VCCannedVideoPacketSource_ReadDataFromFile(void *a1, size_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = [a1 readDataUpToLength:a2 error:&v10];
  if (v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      result = OUTLINED_FUNCTION_34();
      if (!result)
      {
        return result;
      }

      *buf = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "_VCCannedVideoPacketSource_ReadDataFromFile";
      v15 = 1024;
      v16 = 489;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d file handle read error=%@", buf, 0x26u);
    }

    return 0;
  }

  v6 = v5;
  result = [v5 length];
  if (result)
  {
    memcpy(a3, [v6 bytes], a2);
    return 1;
  }

  return result;
}

void _VCCannedVideoPacketSource_InjectionThread_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to read first media packet", v2, v3, v4, v5, v6);
}

void _VCCannedVideoPacketSource_InjectionThread_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize timing info", v2, v3, v4, v5, v6);
}

void VCCannedVideoPacketSource_RegisterForCannedReplay_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x22u);
    }
  }

  *a2 = -2147418113;
}

void VCCannedVideoPacketSource_RegisterForCannedReplay_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to register canned replay RTCP write callbacks. result=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCannedVideoPacketSource_RegisterForCannedReplay_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to register canned replay RTP write callbacks. result=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unregister RTCP packet callback. result=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unregister RTP packet callback. result=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2147418113;
}

void _VCCannedVideoPacketSource_WriteBytes_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCCannedVideoPacketSource_WriteBytes_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCCannedVideoPacketSource_WriteBlockBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCCannedVideoPacketSource_WriteBlockBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to read packet", v2, v3, v4, v5, v6);
}

void _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_5(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

void _VCStreamIOAudioController_SampleBufferCallback_cold_1(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      VCStreamInput_Identifier(*(a1 + 224));
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_30_2(&dword_1DB56E000, v2, v3, "VCStreamIOAudioController [%s] %s:%d CMSampleBufferCopyPCMDataIntoAudioBufferList failed with err=%d for controller=%p streamInputID=%ld", v4, v5, v6, v7, v8);
    }
  }
}

void _VCStreamIOAudioController_SampleBufferCallback_cold_2(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      VCStreamInput_Identifier(*(a1 + 224));
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_30_2(&dword_1DB56E000, v2, v3, "VCStreamIOAudioController [%s] %s:%d Frame size=%ld changed unexpectedly and sample buffer size=%u is not big enough for streamInputID=%ld.", v4, v5, v6, v7, v8);
    }
  }
}

void _VCStreamIOAudioController_SampleBufferCallback_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCStreamIOAudioController_PullAudioSamples_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void RTPMapResetMapping_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d RTPMap is NULL!", v2, v3, v4, v5, v6);
}

void RTPMapAddMappingForPayload_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d RTPMap is NULL!", v2, v3, v4, v5, v6);
}

void RTPMapPrintMapping_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d RTPMap is NULL!", v2, v3, v4, v5, v6);
}

void RTPMapGetInternalPayload_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d RTPMap is NULL!", v2, v3, v4, v5, v6);
}

void RTPMapGetExternalPayload_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d RTPMap is NULL!", v2, v3, v4, v5, v6);
}

void _VCRateControlAlgorithmLayeredContinuousTier_DoRateControl_cold_1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d This algorithm does not support statistics type=%d to do rate control", v3, *(&v3 + 1), v4, v5);
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate_cold_1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d Unknown VCRateControl state=%d", v3, *(&v3 + 1), v4, v5);
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 326;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d wrong type of statistics message is processed by VCRateControl", &v2, 0x1Cu);
}

uint64_t _RTPSetCellularUniqueTagOnPacketFilters(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 92))
    {
      v2 = *MEMORY[0x1E695E480];
      v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a1 + 92));
      if (!v3)
      {
        return 2147549187;
      }

      v5 = v3;
      v6 = *(a1 + 11328);
      if (!v6)
      {
        v7 = VCPacketFilterBasebandNotificationCreate(v2, (a1 + 11328));
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_9;
        }

        v6 = *(a1 + 11328);
      }

      CMBaseObject = VCPacketFilterGetCMBaseObject(v6, v4);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v9)
      {
        v10 = 4294954514;
        goto LABEL_11;
      }

      v7 = v9(CMBaseObject, @"CellularUniqueTag", v5);
LABEL_9:
      v10 = v7;
LABEL_11:
      CFRelease(v5);
      return v10;
    }

    v10 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
LABEL_18:
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v12, v13, v14, v15, v16, 0x1Cu);
      }
    }
  }

  else
  {
    v10 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        goto LABEL_18;
      }
    }
  }

  return v10;
}

uint64_t _RTPEnsureTransportStreamsActivated(uint64_t a1)
{
  if (!a1)
  {
    v13 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v20, v21, v22, v23, v24, 0x1Cu);
      }
    }

    return v13;
  }

  if (*(a1 + 11285))
  {
    return 0;
  }

  v2 = *(a1 + 11312);
  if (v2)
  {
    v3 = *(a1 + 11288);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v4)
    {
      return 4294954514;
    }

    v5 = v4(v3, v2);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }
  }

  v6 = *(a1 + 11320);
  if (v6)
  {
    v7 = *(a1 + 11296);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v8)
    {
      return 4294954514;
    }

    v5 = v8(v7, v6);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }
  }

  if (*(a1 + 11304))
  {
    v5 = _RTPSetCellularUniqueTagOnPacketFilters(a1);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    v16 = *(a1 + 11304);
    v17 = *(a1 + 11328);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v18)
    {
      return 4294954514;
    }

    v5 = v18(v16, v17);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }
  }

  v9 = *(a1 + 11288);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v10)
  {
    return 4294954514;
  }

  v5 = v10(v9);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  v11 = *(a1 + 11296);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    return 4294954514;
  }

  v13 = v12(v11);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = *(a1 + 11304);
  if (!v14)
  {
LABEL_17:
    *(a1 + 11285) = 1;
    return v13;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v15)
  {
    return 4294954514;
  }

  v13 = v15(v14);
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t _RTPEnsureTransportStreamsDeactivated(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 11285) != 1)
    {
      return 0;
    }

    v2 = *(a1 + 11288);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v3)
    {
      return 4294954514;
    }

    v4 = v3(v2);
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    v5 = *(a1 + 11296);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v6)
    {
      return 4294954514;
    }

    v7 = v6(v5);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    v8 = *(a1 + 11304);
    if (!v8)
    {
LABEL_10:
      *(a1 + 11285) = 0;
      return v7;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v9)
    {
      return 4294954514;
    }

    v7 = v9(v8);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v11, v12, v13, v14, v15, 0x1Cu);
      }
    }
  }

  return v7;
}

void RTPCreateHandle_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void RTPCreateHandle_cold_2()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPCreateHandle_cold_3()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPCreateHandle_cold_4()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPCreateHandle_cold_5()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPCreateHandle_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPCreateHandle_cold_7()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPCreateHandle_cold_8()
{
  OUTLINED_FUNCTION_11_0();
  __error();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPCreateHandle_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPSetTxPayloadList_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  *v0 = -2147418109;
}

void RTPSetRxPayloadList_cold_1()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetRxPayloadList_cold_2()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetRxPayloadList_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  *v0 = -2147418109;
}

void RTPGetInternalPayload_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid RTP handle", v2, v3, v4, v5, v6);
}

void RTPGetExternalPayload_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid RTP handle", v2, v3, v4, v5, v6);
}

void SendRTP_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void SendRTP_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *v1 = v3;
  *v0 = -2147418109;
  OUTLINED_FUNCTION_36();
}

uint64_t SendRTP_cold_3(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to add RTP header extension", v6, v7, v8, v9, v11);
  return a3 & 1;
}

uint64_t SendRTP_cold_4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to copy header to the RTP buffer", v6, v7, v8, v9, v11);
  return a3 & 1;
}

uint64_t SendRTP_cold_5(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to copy padding bytes to the RTP buffer", v6, v7, v8, v9, v11);
  return a3 & 1;
}

void SendRTP_cold_6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void SendRTP_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

uint64_t SendRTP_cold_8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v4, v5, " [%s] %s:%d IDS channel data is not setup correctly!", v6, v7, v8, v9, v11);
  return a3 & 1;
}

void SendRTP_cold_9()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *v1 = v3;
  *v0 = 0;
  OUTLINED_FUNCTION_36();
}

uint64_t SendRTP_cold_10(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v4, v5, " [%s] %s:%d Unknown packet passing to the VCMediaQueue!", v6, v7, v8, v9, v11);
  return a3 & 1;
}

void SendRTP_cold_11()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *v1 = v3;
  *v0 = 0;
  OUTLINED_FUNCTION_36();
}

void SendRTP_cold_12()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_36();
}

void SendRTP_cold_13()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void SendRTP_cold_14()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_36();
}

uint64_t SendRTP_cold_15(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to copy data to the RTP buffer", v6, v7, v8, v9, v11);
  return a3 & 1;
}

void SendRTP_cold_16()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void SendRTP_cold_17()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void RTPMediaQueueSecurityCallback_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPMediaQueueSecurityCallback_cold_2(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Cu);
    }
  }

  *a4 = a3;
}

void RTPMediaQueueSecurityCallback_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void RTPMediaQueueSecurityCallback_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void RTPMediaQueueSecurityCallback_cold_5()
{
  OUTLINED_FUNCTION_27_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPMediaQueueSecurityCallback_cold_6()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPMediaQueueSecurityCallback_cold_7()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPMediaQueueSecurityCallback_cold_8()
{
  OUTLINED_FUNCTION_46();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPSendTimestampWithMediaSampleTime_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPSendTimestampWithMediaSampleTime_cold_2()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPGetRTPSocketForMediaQueue_cold_1(uint64_t a1, void *a2, int *a3)
{
  number[1] = *MEMORY[0x1E69E9840];
  number[0] = 0;
  CMBaseObject = VCPacketFilterGetCMBaseObject(a1, a2);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(CMBaseObject, @"UnderlyingVFD", *MEMORY[0x1E695E480], number);
    if ((v7 & 0x80000000) == 0)
    {
      CFNumberGetValue(number[0], kCFNumberIntType, a2);
      CFRelease(number[0]);
    }
  }

  else
  {
    v7 = -12782;
  }

  *a3 = v7;
}

void _RTPGetRTPSocketForMediaQueue_cold_2()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPGetRTPSocketForMediaQueue_cold_3()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPTransportUpdateMediaPacketHistory_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  CFAllocatorDeallocate(*v1, v0);
}

void RTPTransportResendRTP_cold_1()
{
  OUTLINED_FUNCTION_47();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPTransportResendRTP_cold_2()
{
  OUTLINED_FUNCTION_47();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPTransportResendRTP_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void RTPTransportResendRTP_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void RTPTransportResendRTP_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void RTPTransportResendRTP_cold_6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void RTPTransportResendRTP_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void RTPTransportResendRTP_cold_8()
{
  OUTLINED_FUNCTION_37();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void RTPTransportResendRTP_cold_9()
{
  OUTLINED_FUNCTION_47();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPTransportResendRTP_cold_10()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 1971;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Couldn't retrieve media packet from cache for retransmission", v1, 0x1Cu);
}

void _RTPMediaSampleTimeWithReceiveTimestamp_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPMediaSampleTimeWithReceiveTimestamp_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPProcessDecryptionStatusChange_cold_1()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTPRecvRTP_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x22u);
    }
  }
}

void _RTPTransport_ParseMediaPacket_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _RTPTransport_ParseMediaPacket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseMediaPacket_cold_3()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void _RTPTransport_ParseMediaPacket_cold_4()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _RTPTransport_ParseMediaPacket_cold_5()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _RTPTransport_ParseMediaPacket_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseMediaPacket_cold_7(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }
}

void _RTPTransport_ParseMediaPacket_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _RTPTransport_ParseMediaPacket_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _RTPTransport_ParseMediaPacket_cold_10(void **a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      VCMediaKeyIndex_Description(*a1);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

void _RTPTransport_ParseMediaPacket_cold_11(void **a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      VCMediaKeyIndex_Description(*a1);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

void _RTPTransport_ParseMediaPacket_cold_12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseMediaPacket_cold_13()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseMediaPacket_cold_14()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _RTPTransport_ParseMediaPacket_cold_15()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *v1 = -2145255361;
  *v0 = v3;
  OUTLINED_FUNCTION_36();
}

void _RTPTransport_ParseMediaPacket_cold_16()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseMediaPacket_cold_17()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  OUTLINED_FUNCTION_36();
}

void _RTPTransport_ParseMediaPacket_cold_18()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), OUTLINED_FUNCTION_40()))
  {
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_24();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
  }

  else
  {
    *v1 = v3;
  }

  OUTLINED_FUNCTION_36();
}

void _RTPTransport_ParseMediaPacket_cold_19()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), OUTLINED_FUNCTION_28()))
  {
    OUTLINED_FUNCTION_39_4();
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
  }

  else
  {
    *v1 = -2147418097;
  }

  OUTLINED_FUNCTION_36();
}

void _RTPTransport_ParseMediaPacket_cold_20()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseMediaPacket_cold_21()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseMediaPacket_cold_22()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_PacketExtensionLength_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Extension offset is larger than the packet size", v2, v3, v4, v5, v6);
}

void _RTPTransport_PacketExtensionLength_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Overflow while reading packet extension data", v2, v3, v4, v5, v6);
}

void _RTPTransport_PacketExtensionLength_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Overflow while reading packet extension header", v2, v3, v4, v5, v6);
}

void _RTPTransport_PacketExtensionLength_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Extension length pointer is NULL", v2, v3, v4, v5, v6);
}

void _RTPRecvWithSocket_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    v1 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP packet parsing failed: %d", v3, 0x22u);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_21_1(&dword_1DB56E000, v0, v2, " [%s] %s:%d RTP packet parsing failed: %d", v3);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _RTPRecvWithSocket_cold_2()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPGetUplinkReportingStats_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void RTPGetUplinkReportingStats_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void RTPGetDownlinkReportingStats_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void RTPGetDownlinkReportingStats_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _RTPSocketRTPAndBBNoteCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPSocketRTPAndBBNoteCallback_cold_2()
{
  OUTLINED_FUNCTION_27_3();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPSocketRTPAndBBNoteCallback_cold_3()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPSocketRTPAndBBNoteCallback_cold_4()
{
  OUTLINED_FUNCTION_27_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetRemoteSSRC_cold_1(uint64_t a1, const void *a2, uint64_t a3, int *a4)
{
  v8 = *(a1 + 11312);
  if (!v8)
  {
    v9 = VCPacketFilterRTPCreate(a3, (a1 + 11312));
    if (v9 < 0)
    {
      goto LABEL_12;
    }

    v8 = *(a1 + 11312);
  }

  CMBaseObject = VCPacketFilterGetCMBaseObject(v8, a2);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    goto LABEL_11;
  }

  v9 = v11(CMBaseObject, @"RTPRemoteSSRC", a2);
  if (v9 < 0)
  {
    goto LABEL_12;
  }

  v13 = *(a1 + 11320);
  if (!v13)
  {
    v9 = VCPacketFilterRTCPCreate(a3, (a1 + 11320));
    if (v9 < 0)
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 11320);
  }

  v14 = VCPacketFilterGetCMBaseObject(v13, v12);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    v9 = v15(v14, @"RTCPRemoteSSRC", a2);
  }

  else
  {
LABEL_11:
    v9 = -12782;
  }

LABEL_12:
  *a4 = v9;

  CFRelease(a2);
}

void RTPSetRemoteSSRC_cold_2()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPConfigureVirtualSockets_cold_1()
{
  __error();
  OUTLINED_FUNCTION_37_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPConfigureVirtualSockets_cold_2()
{
  __error();
  OUTLINED_FUNCTION_37_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPMapPacketMultiplexModeToVTPMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid RTP packet multiplex mode", v2, v3, v4, v5, v6);
}

uint64_t RTPSetSockets_cold_1(int a1, _DWORD *a2)
{
  __error();
  OUTLINED_FUNCTION_37_2();
  *a2 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
    }
  }

  return VTP_Close(a1);
}

void RTPSetSockets_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

uint64_t RTPSetNWConnections_cold_1(int a1, _DWORD *a2)
{
  __error();
  OUTLINED_FUNCTION_37_2();
  *a2 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
    }
  }

  return VTP_Close(a1);
}

void RTPSetNWConnections_cold_2()
{
  __error();
  OUTLINED_FUNCTION_37_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetNWConnections_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d RTPSetSockets: Invalid nwConnection passed", v2, v3, v4, v5, v6);
}

void RTPCreateSocketsForIDSInternal_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPCreateSocketsForIDSInternal_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPCreateSocketsRetryBind_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void CreateSocket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void CreateSocket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPCreateSockets_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPCreateSockets_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPSetOWRD_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPGetIsIPv6_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPGetIsIPv6_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL isIPv6", v2, v3, v4, v5, v6);
}

void RTPFlushBaseband_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 28) == 1)
  {
    v8 = "PT_VIDEO";
  }

  else
  {
    v8 = "PT_AUDIO";
  }

  StallModeTracePrint_(5, "", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c", 4623, "RTPFlushBaseband flush from non-MQ sources for %s ", a6, a7, a8, v8);
}

void RTPFlushBaseband_cold_2()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void RTPFlushBaseband_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPGetAFRCProbeSeqId_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPGetAFRCProbeSeqId_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPRegisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTPRegisterPacketCallback_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void RTPRegisterPacketCallback_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTPRegisterPacketCallback_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void RTPUnregisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTPSetTransportStreams_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void RTPSetTransportStreams_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetTransportStreams_cold_3()
{
  OUTLINED_FUNCTION_27_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetTransportStreams_cold_4()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetTransportStreams_cold_5()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

uint64_t _RTPTransportStreamRTPAndBBNoteCallback_cold_1(char a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
    }
  }

  return a1 & 1;
}

void _RTPTransportStreamRTPAndBBNoteCallback_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _RTPTransportStreamRTPAndBBNoteCallback_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void RTPClearTransportStreams_cold_1()
{
  OUTLINED_FUNCTION_27_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPGetReceiveStatusWithRunLoop_cold_1()
{
  OUTLINED_FUNCTION_7_7();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPGetReceiveStatusWithRunLoop_cold_2()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPGetReceiveStatusWithRunLoop_cold_3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void RTPGetReceiveStatusWithRunLoop_cold_4()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPGetReceiveStatusWithRunLoop_cold_5()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPSetReceiveStatusFlags_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void _RTPSetReceiveStatusFlags_cold_2()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPSetReceiveStatusFlags_cold_3()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPSetReceiveStatusFlags_cold_4()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetConnectionManager_cold_1()
{
  OUTLINED_FUNCTION_27_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTPSetConnectionManager_cold_2()
{
  OUTLINED_FUNCTION_18_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPTransport_ParseBasebandNotification_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseBasebandNotification_cold_2()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_21_1(v0, v1, v2, v3, v4);
}

void _RTPTransport_ParseBasebandNotification_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTPTransport_ParseBasebandNotification_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Error Parsing Baseband Notification", v2, v3, v4, v5, v6);
}

void SoundDec_Create_cold_1(uint64_t a1, int a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = 136316162;
  v5 = a1;
  v6 = 2080;
  v7 = "SoundDec_Create";
  v8 = 1024;
  v9 = 735;
  v10 = 1024;
  v11 = a2;
  v12 = 2080;
  v13 = FourccToCStr(a2);
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterNew returned %d '%s'", &v4, 0x2Cu);
}

void SoundDec_Create_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SoundDec_Create_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SoundDec_Create_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SoundDec_Create_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void SoundDec_Create_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TranslateASBDToPayloadFormat_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCSoundDec [%s] %s:%d SoundDec didn't understand the asbd sent to it", v2, v3, v4, v5, v6);
}

void SoundDec_AudioConverterInstantiate_cold_1(uint64_t a1, int a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = 136316418;
  v6 = a1;
  v7 = 2080;
  v8 = "SoundDec_AudioConverterInstantiate";
  v9 = 1024;
  v10 = 2043;
  v11 = 2080;
  v12 = FourccToCStr(1970103906);
  v13 = 1024;
  v14 = a2;
  v15 = 1024;
  v16 = a2;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set kAudioConverterPropertyUseMessengerForBundleData=%s with error=%d (0x%x)", &v5, 0x32u);
}

void _SoundDec_ConfigureRamStadSRC_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _SoundDec_ConfigureRamStadSRC_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void DecodeNilPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SoundDec_Encode_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SoundDec_Encode_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCSoundDec [%s] %s:%d Failed to set pending EVS CMRData", v2, v3, v4, v5, v6);
}

void SoundDec_Encode_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCSoundDec [%s] %s:%d Failed to set pending AMR CMR", v2, v3, v4, v5, v6);
}

void SoundDec_Encode_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCSoundDec [%s] %s:%d Failed to stop AMR CMR", v2, v3, v4, v5, v6);
}

void _SoundDec_SetLocalQualityWithBitrate_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SoundDec_SetDTX_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCSoundDec_SetOpusApplication_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCSoundDec [%s] %s:%d Attempting a call on a NULL instance.", v2, v3, v4, v5, v6);
}

void SoundDec_GetOpusDecodeFECStatus_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void SoundDec_SetEVSAudioCodecBandwidth_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _SoundDec_SetAMRCMRInternal_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCDatagramChannelIDS_Token_cold_1(_DWORD *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  ++VCDatagramChannelIDS_Token_nilInstanceCounter;
  if (micro() - *&VCDatagramChannelIDS_Token_lastReportedTime > 5.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315906;
        v5 = v2;
        v6 = 2080;
        v7 = "VCDatagramChannelIDS_Token";
        v8 = 1024;
        v9 = 52;
        v10 = 1024;
        v11 = VCDatagramChannelIDS_Token_nilInstanceCounter;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed counter=%u", &v4, 0x22u);
      }
    }

    VCDatagramChannelIDS_Token_nilInstanceCounter = 0;
    VCDatagramChannelIDS_Token_lastReportedTime = micro();
  }

  *a1 = 0;
}

void _VCVideoPlayer_CalculateRealtimeParametersUsingDisplayLink(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double *a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 816) + *(a2 + 48) + *(a2 + 256);
  *(a2 + 56) = v12;
  DisplayTimestamp = _VCVideoPlayer_GetDisplayTimestamp(a1);
  *a5 = DisplayTimestamp;
  PresentationTime = _VCVideoPlayer_GetPresentationTime(a1, a2, a3, DisplayTimestamp, v12, v14);
  *a4 = PresentationTime;
  if (*(a1 + 825) == 1 && !*(a3 + 32))
  {
    IsExternalClockSourceWithNTPSyncAcquired = _VCVideoPlayer_IsExternalClockSourceWithNTPSyncAcquired(a1, a3);
    v18 = IsExternalClockSourceWithNTPSyncAcquired;
    if (IsExternalClockSourceWithNTPSyncAcquired && (*(a2 + 433) & 1) == 0)
    {
      v19 = *(a3 + 24);
      LODWORD(v17) = *(a1 + 584);
      v20 = (v19 - *(a2 + 168)) / v17;
      v21 = *(a2 + 160);
      *(a2 + 176) = *a3;
      *(a2 + 168) = v19;
      *a4 = v21 + v20;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a3 + 32);
          v25 = *(a2 + 160);
          v26 = *a4;
          v27 = *a5;
          v28 = 136317698;
          v29 = v22;
          v30 = 2080;
          v31 = "_VCVideoPlayer_CheckNTPClockSyncStatusForExternalSyncSource";
          v32 = 1024;
          v33 = 478;
          v34 = 2048;
          v35 = a1;
          v36 = 1024;
          v37 = v24;
          v38 = 2048;
          v39 = v20;
          v40 = 2048;
          v41 = v25;
          v42 = 2048;
          v43 = v26;
          v44 = 2048;
          v45 = v27;
          v46 = 2048;
          v47 = v12;
          v48 = 1024;
          v49 = 1;
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Sync Source handoff performed: alarmType=%d elapsedTimeSiceLastFrame=%f previousPresentationTime=%f newPresentationTime=%f displayTimestamp=%f delayOffsetInSeconds=%f ntpClockSyncAcquired=%d", &v28, 0x64u);
        }
      }
    }

    *(a2 + 433) = v18;
    PresentationTime = *a4;
  }

  *a6 = PresentationTime - *a5;
}

void _VCVideoPlayer_CheckAndProcessAlarm_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "_VCVideoPlayer_ProcessAlarmForDisplay";
  v7 = 1024;
  v8 = 691;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] trying to process display alarm when it's not allowed!", &v3, 0x26u);
}

void SummerCreateHandle_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 193;
  v4 = v0;
  v5 = 193;
  v6 = v0;
  v7 = -2146238459;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/Util.c:%d: CreateHandle failed(%08X)", v2, 0x28u);
}

void SummerCreateHandle_cold_2(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  __error();
  v6 = 136316162;
  v7 = a1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  v8 = 179;
  v9 = v4;
  v10 = 179;
  v11 = v4;
  v12 = v5;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/Util.c:%d: calloc failed(%d)", &v6, 0x28u);
}

void HasMulticore_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 528;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d sysctlbyname on hw.activecpu failed", v1, 0x1Cu);
}

void ReadFirstMBAndSliceType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ReadFirstMBAndSliceType_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void hwrandom_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void hwrandom16_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ReadFrameSliceHeader_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RetrieveMBSliceTypeFromFrameInfoDict_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCUtil_AuditTokenForCurrentProcess_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCUtil_AuditTokenForCurrentProcess_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCUtil_GenerateTailspin_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCUtil_GenerateTailspin_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 1490;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty tailspin path!", v1, 0x1Cu);
}

void _VCUtil_GenerateStackshot_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

uint64_t _VCNACKConsumer_ComputeSummerBitrate(uint64_t a1, double *a2, double a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  *a2 = 0.0;
  if (a1 == 0xFFFFFFFFLL)
  {
    return 2149515266;
  }

  v5[0] = NAN;
  result = SummerSumPred(a3, 0.0, a1, SummerGreaterThan, SummerIdentity, v5, a2);
  if ((result & 0x80000000) == 0 && v5[0] >= 0.5)
  {
    *a2 = *a2 * 8.0 / v5[0];
  }

  return result;
}

void VCNACKConsumer_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCNACKConsumer_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCNACKConsumer_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNACKConsumer_Create_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNACKConsumer_Create_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    v1 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v3 = 255;
        _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cannot retransmit - retransmission bitrate exceeded allotted quota", v2, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 255;
      _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Cannot retransmit - retransmission bitrate exceeded allotted quota", v2, 0x1Cu);
    }
  }
}

void VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_2(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "VCNACKConsumer_GetRetransmissionRequestInfoFromNACK";
  v8 = 1024;
  v9 = 278;
  v10 = 1024;
  v11 = v3;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Retransmission packet count exceeded allotted budget. retransmissionBudget=%d", &v4, 0x22u);
}

void VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL retransmissionRequestInfo", v2, v3, v4, v5, v6);
    }
  }
}

void VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL nackInfo", v2, v3, v4, v5, v6);
    }
  }
}

void VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL nackConsumer", v2, v3, v4, v5, v6);
    }
  }
}

void _VCNACKConsumer_CheckBitrateLimits_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = 136316162;
  v5 = a1;
  OUTLINED_FUNCTION_0();
  v6 = 345;
  v7 = 2048;
  v8 = v1;
  v9 = v2;
  v10 = -2142896124;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCNACKConsumer[%p] Failed to get media packet count, err=%d", &v4, 0x2Cu);
}

void _VCNACKConsumer_CheckBitrateLimits_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCNACKConsumer_CheckBitrateLimits_cold_3(_DWORD *a1, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        v9 = v6;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_4_4();
        v10 = a2;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Use cached canSendNACK, timeSinceLastCheck=%f", v8, 0x26u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      v9 = v7;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v10 = a2;
      _os_log_debug_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Use cached canSendNACK, timeSinceLastCheck=%f", v8, 0x26u);
    }
  }

  *a1 = 0;
}

void _VCNACKConsumer_GetBitrate_cold_1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      _os_log_debug_impl(v9, v10, OS_LOG_TYPE_DEBUG, v11, v12, 0x1Cu);
    }
  }

  *a2 = a1;
}

void _VCNACKConsumer_GetBitrate_cold_2(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      _os_log_debug_impl(v9, v10, OS_LOG_TYPE_DEBUG, v11, v12, 0x1Cu);
    }
  }

  *a2 = a1;
}

void VCNACKConsumer_UpdateRetransmissionStatus_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_5_1();
      _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x2Cu);
    }
  }

  *a2 = -2142896124;
}

void VCNACKConsumer_UpdateRetransmissionStatus_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCNACKConsumer_UpdateTransmissionStatus_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_5_1();
      _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x2Cu);
    }
  }

  *a2 = -2142896124;
}

void VCNACKConsumer_UpdateTransmissionStatus_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCNACKConsumer_UpdatePacketCacheStatus_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_5_1();
      _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x26u);
    }
  }

  *a2 = -2142896127;
}

void FECUtil_SetupFECHeader_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "_FECHeader_UnpackV0ParitySubHeaderFromBuffer";
  v4 = 1024;
  v5 = 217;
  v6 = 1024;
  v7 = v0;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Unpack legacy parity subheader wNumPkt=%d", v2, 0x22u);
}

void _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unpack legacy parity sub header to buffer.", v2, v3, v4, v5, v6);
}

void _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid number of symbols!", v2, v3, v4, v5, v6);
}

void _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unpack parity sub header to buffer.", v2, v3, v4, v5, v6);
}

void _FECHeader_UnpackV2ParitySubHeaderFromBuffer_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_UnpackV2ParitySubHeaderFromBuffer_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_UnpackV2ParitySubHeaderFromBuffer_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unpack parity sub header to buffer.", v2, v3, v4, v5, v6);
}

void FECHeader_UnpackHeaderFromBuffer_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 326;
  v4 = v0;
  v5 = 3;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported FEC Header Version: %d", v2, 0x22u);
}

void FECHeader_UnpackHeaderFromBuffer_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void FECHeader_UnpackHeaderFromBuffer_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unpack FEC header to buffer.", v2, v3, v4, v5, v6);
}

void _FECHeader_PackV0ParitySubHeaderToBuffer_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_PackV0ParitySubHeaderToBuffer_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_PackV0ParitySubHeaderToBuffer_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to pack legacy parity sub header to buffer.", v2, v3, v4, v5, v6);
}

void _FECHeader_PackV1ParitySubHeaderToBuffer_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_PackV1ParitySubHeaderToBuffer_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _FECHeader_PackV1ParitySubHeaderToBuffer_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to pack parity sub header to buffer.", v2, v3, v4, v5, v6);
}

void FECHeader_PackHeaderToBuffer_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void FECHeader_PackHeaderToBuffer_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to pack FEC header to buffer.", v2, v3, v4, v5, v6);
}

void FECUtil_GetRealNumParity_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void FECUtil_GetRealNumParity_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void FECUtil_GetRealNumParity_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void FECUtil_GetExpectedParityPacketCount_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Expected parity packet count is only supported with FEC Header V1.", v2, v3, v4, v5, v6);
}

void FECUtil_UpdateParitySequenceNumberHistory_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid parity sequence number arguments.", v2, v3, v4, v5, v6);
}

void FECUtil_ConvertNumberOfSymbolsToPackets_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Number of symbols per packet must be non-zero.", v2, v3, v4, v5, v6);
}

void FECUtil_PackFrameLoss_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void FECUtil_PackFrameLoss_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid parameter. Field cannot be null.", v2, v3, v4, v5, v6);
}

void FECUtil_UnpackFrameLoss_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid parameters. Size and loss cannot be null.", v2, v3, v4, v5, v6);
}

void FECUtil_UnpackFrameLoss_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

CFIndex VCMediaRecorderHistoryBuffer_DequeueOneFrame(CFIndex result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    result = CFArrayGetCount(v2);
    if (result)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
      CFRetain(ValueAtIndex);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      CFArrayRemoveValueAtIndex(v2, 0);
      Value = CFDictionaryGetValue(v1[4], ValueAtIndex);
      if (!Value && VRTraceGetErrorLogLevelForModule() >= 8)
      {
        VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_6_14();
            OUTLINED_FUNCTION_3_10();
            v10 = "_Bool VCMediaRecorderHistoryBuffer_DequeueOneFrame(VCMediaRecorderHistoryBuffer *const)";
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaRecorderHistoryBuffer %s the old frame does not in buffer, something is wrong", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_6_14();
          OUTLINED_FUNCTION_3_10();
          v10 = "_Bool VCMediaRecorderHistoryBuffer_DequeueOneFrame(VCMediaRecorderHistoryBuffer *const)";
          _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCMediaRecorderHistoryBuffer %s the old frame does not in buffer, something is wrong", buf, 0x26u);
        }
      }

      v7 = [(CFDictionaryRef *)v1 delegate];
      [v7 historyBuffer:v1 didDequeueSample:Value timestamp:valuePtr];
      CFDictionaryRemoveValue(v1[4], ValueAtIndex);
      CFRelease(ValueAtIndex);
      return 1;
    }
  }

  return result;
}

void VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_1(int a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136316162;
      v7 = v4;
      v8 = 2080;
      v9 = "VCMediaRecorderHistoryBuffer_UpdateBufferWithSample";
      v10 = 1024;
      v11 = 68;
      v12 = 1024;
      v13 = a1;
      v14 = 1024;
      v15 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d timestampQueue length=%u != sampleMap length=%u, sizes are inconsistent", &v6, 0x28u);
    }
  }
}

void VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

uint64_t _VCCarrierBundle_GetValueforKeyHierarchy(uint64_t a1, uint64_t *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_14;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    v18 = v10;
    OUTLINED_FUNCTION_0_5();
    v22 = 50;
    v12 = " [%s] %s:%d Passed an invalid value";
    goto LABEL_20;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69650A0]);
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_14;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    v18 = v13;
    OUTLINED_FUNCTION_0_5();
    v22 = 53;
    v12 = " [%s] %s:%d Failed to initialize CoreTelephonyClient";
LABEL_20:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x1Cu);
LABEL_14:
    v5 = 0;
LABEL_15:
    v8 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v16 = 0;
  v6 = [v4 getCurrentDataSubscriptionContextSync:&v16];
  if (!v6 || v16)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = v14;
        v19 = 2080;
        v20 = "_VCCarrierBundle_GetValueforKeyHierarchy";
        v21 = 1024;
        v22 = 57;
        v23 = 2112;
        v24 = v16;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to initialize CTXPCServiceSubscriptionContext, error=%@", buf, 0x26u);
      }
    }

    goto LABEL_15;
  }

  v7 = [v5 context:v6 getCarrierBundleValue:a1 error:&v16];
  v8 = 0;
  if (v7 && !v16)
  {
    *a2 = v7;
    v8 = 1;
  }

LABEL_8:

  return v8;
}

uint64_t VCCarrierBundle_GetForceJBLatencySensitiveModeForVoWiFi()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E695E110];
  result = _VCCarrierBundle_GetValueforKeyHierarchy(&unk_1F579CB10, v1);
  if (result)
  {
    return [v1[0] BOOLValue];
  }

  return result;
}

void RTPPackGenericDataPacket_cold_1(int a1, int a2, _DWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "RTPPackGenericDataPacket";
      v12 = 1024;
      v13 = 60;
      v14 = 1024;
      v15 = a1;
      v16 = 1024;
      v17 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Data buffer is too small. currentSize=%u needed=%u", &v8, 0x28u);
    }
  }

  *a3 = -2147418098;
}

void RTPUnpackGenericDataPacket_cold_1(_DWORD *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 91;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to append the uncompressed video data", &v4, 0x1Cu);
    }
  }

  *a1 = -2147418109;
}

void RTPUnpackGenericDataPacket_cold_2(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 84;
      v10 = v6;
      v11 = 8;
      v12 = 2048;
      v13 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Data header size (%d) is larger than the received packet size (%zu)", &v7, 0x2Cu);
    }
  }

  *a2 = -2147418104;
}

void _VideoPacketBuffer_UpdatePreviousFrameSequenceNumber(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      *(v3 + 152) = *(a1 + 150);
      *(v3 + 156) = *(a1 + 149);
    }
  }

  if (a2)
  {
    *(a1 + 152) = *(a2 + 150);
    *(a1 + 156) = *(a1 + 149);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_17_3();
        v7 = 2080;
        OUTLINED_FUNCTION_21_3();
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d isNewFrameOufOfOrder=%d, newFrame->seq=%d, newFrame->prevSeq=%d, newFrame->nextSeq=%d, newFrame->next->prevSeq=%d", v6, 0x3Au);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_17_3();
      v7 = 2080;
      OUTLINED_FUNCTION_21_3();
      _os_log_debug_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d isNewFrameOufOfOrder=%d, newFrame->seq=%d, newFrame->prevSeq=%d, newFrame->nextSeq=%d, newFrame->next->prevSeq=%d", v6, 0x3Au);
    }
  }
}

void _VideoPacketBuffer_AddFrameToBufferInOrder(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  if (*a1)
  {
    v7 = *(a2 + 16);
    v8 = *(v4 + 16);
    if (v8 == v7 || (v8 - v7) >= 0x7FFFFFFF)
    {
      do
      {
        v5 = v4;
        v4 = *(v4 + 112);
        v6 = v4 != 0;
        if (!v4)
        {
          break;
        }

        v10 = *(v4 + 16) - v7;
      }

      while (!v10 || v10 >= 0x7FFFFFFF);
      v3 = (v5 + 112);
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *(a2 + 112) = v4;
  _VideoPacketBuffer_UpdatePreviousFrameSequenceNumber(a2, v5, v6);
  *v3 = a2;
}

void _VideoPacketBuffer_IsFrameComplete_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d BEGIN", v2, v3, v4, v5, v6);
}

void _VideoPacketBuffer_IsFrameComplete_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d END", v2, v3, v4, v5, v6);
}

void _VideoPacketBuffer_IsFrameComplete_cold_3()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VideoPacketBuffer_IsFrameComplete_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Error! Missing end of frame", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoPacketBuffer_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoPacketBuffer_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoPacketBuffer_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoPacketBuffer_Create_cold_5()
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v1 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v9 = 411;
        OUTLINED_FUNCTION_17(&dword_1DB56E000, v2, v3, "VideoPacketBuffer [%s] %s:%d Failed to get allocator from figMemoryPool", v4, v5, v6, v7, v8[0]);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v9 = 411;
      _os_log_fault_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_FAULT, "VideoPacketBuffer [%s] %s:%d Failed to get allocator from figMemoryPool", v8, 0x1Cu);
    }
  }
}

void VideoPacketBuffer_Create_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v1 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      _os_log_fault_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_FAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to create figMemoryPool", v7, 0x26u);
    }
  }
}

void VideoPacketBuffer_Create_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoPacketBuffer_Create_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoPacketBuffer_Destroy_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_NeedRefreshFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_GetCachedBurstLossStatistics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Invalid arguments to get frame loss stats.", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Received more video packets than expected.", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Received more parity packets than expected.", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_14();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Invalid videoPacketBuffer for updating max frame burst loss.", v2, v3, v4, v5, v6);
    }
  }
}

void VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Lost more video symbols than expected.", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Invalid arguments for updating max group burst loss.", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_GetStatistics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_ResetStatistics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_AddPacket_cold_1()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VideoPacketBuffer_AddPacket_cold_2()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VideoPacketBuffer_AddPacket_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoPacketBuffer_StartTrackingEvictedFrameStats_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Received NULL frame", v2, v3, v4, v5, v6);
    }
  }
}

void VideoPacketBuffer_ScheduleFutureFrame_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoPacketBuffer_ScheduleFutureFrame_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoPacketBuffer_ScheduleFutureFrame_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void _VideoPacketBuffer_ScheduleSingleFrame_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoPacketBuffer_ScheduleSingleFrame_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoPacketBuffer_ScheduleSingleFrame_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoPacketBuffer_ScheduleSingleFrame_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RecoverOneFrame_cold_1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_27_5();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

void RecoverOneFrame_cold_2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_27_5();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

void RecoverOneFrame_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2144141298;
}

void RecoverOneFrame_cold_6(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2144141290;
}

void VideoPacketBuffer_SchedulePastIncompleteFrame_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoPacketBuffer_GetFrameDecodingOrder_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoPacketBuffer_GetFrameDecodingOrder_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_GetFrameStreamIDs_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_FirstIDRReceived_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_SetFrameSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void VideoPacketBuffer_GetNextFrame_cold_1(uint64_t a1, uint64_t a2, int a3)
{
  VRTraceGetErrorLogLevelForModule();
  v6 = VRTraceErrorLogLevelToCSTR();
  v7 = *MEMORY[0x1E6986650];
  os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  *a1 = 136316162;
  *(a1 + 4) = v6;
  *(a1 + 12) = 2080;
  *(a1 + 14) = "VideoPacketBuffer_GetNextFrame";
  *(a1 + 22) = 1024;
  *(a1 + 24) = 3456;
  *(a1 + 28) = 2048;
  *(a1 + 30) = a2;
  *(a1 + 38) = 1024;
  *(a1 + 40) = a3;
  _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] scheduled frame timestamp=%u not in any buffer", a1, 0x2Cu);
  __break(1u);
}

void VideoPacketBuffer_GetNextFrame_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    v1 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v3 = 1160;
        _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d No FEC status for frame", v2, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 1160;
      _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d No FEC status for frame", v2, 0x1Cu);
    }
  }
}

void VideoPacketBuffer_GetNextFrame_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void _VCVideoPacketBuffer_AssembleFrame_cold_1(_DWORD *a1)
{
  *a1 = 7;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_14();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  *v0 = 8;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_14();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCVideoPacketBuffer_AssembleFrame_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCVideoPacketBuffer_AssembleFrame_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void _VCVideoPacketBuffer_AssembleFrame_cold_6()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_33_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      CMBlockBufferGetDataLength(v0);
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x36u);
    }
  }

  OUTLINED_FUNCTION_39_0();
}

void _VCVideoPacketBuffer_AssembleFrame_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_8()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_33_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
    }
  }

  OUTLINED_FUNCTION_39_0();
}

void _VCVideoPacketBuffer_AssembleFrame_cold_9()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_14();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_10()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_14();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_11()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_14();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_12(_DWORD *a1)
{
  *a1 = 2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_13(_DWORD *a1)
{
  *a1 = 16;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void _VCVideoPacketBuffer_AssembleFrame_cold_14()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCVideoPacketBuffer_AssembleFrame_cold_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, __int128 a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_0();
  a22 = v23;
  a23 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  a15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 4)
  {
    VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_11_4();
      *(&a12 + 6) = v30;
      HIWORD(a12) = v32;
      a13 = v28;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] *** BAD FRAME -- %d: iSlices >= MAX_SLICES  Stop!", &a9, 0x2Cu);
    }
  }

  *v26 = 15;
  OUTLINED_FUNCTION_39_0();
}

double _VCVideoPacketBuffer_AssembleFrame_cold_16(uint64_t a1)
{
  *&result = 0x100000001;
  *(a1 + 155012) = 0x100000001;
  ++*(a1 + 51724);
  return result;
}

void VideoPacketBuffer_SetRoundTripTime_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null", v2, v3, v4, v5, v6);
}

void _VideoPacketBuffer_CreateNewOnePacket_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Failed to allocate buffer for packet", v2, v3, v4, v5, v6);
    }
  }
}

void _VideoPacketBuffer_CreateNewOnePacket_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VideoPacketBuffer [%s] %s:%d Failed to allocate memory", v2, v3, v4, v5, v6);
    }
  }
}

BOOL _VideoDecoder_ShouldSkipReleasingDecodingArgs(__CVBuffer *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = CVBufferCopyAttachment(a1, @"MLEnhancedStats", 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CFDictionaryGetTypeID())
  {
    goto LABEL_11;
  }

  if (!CFDictionaryContainsKey(v2, @"MLEnhancedMode"))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = "_VideoDecoder_ShouldSkipReleasingDecodingArgs";
        v14 = 1024;
        v15 = 253;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MLEnhancedStats dictionary attached without an enhancement mode", buf, 0x1Cu);
      }
    }

LABEL_11:
    v5 = 0;
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(v2, @"MLEnhancedMode");
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v5 = valuePtr == 3;
LABEL_5:
  CFRelease(v2);
  return v5;
}

void VideoDecoder_Create_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init VideoDecoder with NULL frame callback", v2, v3, v4, v5, v6);
}

void VideoDecoder_Create_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init VideoDecoder with NULL config", v2, v3, v4, v5, v6);
}

void VideoDecoder_NewFormat_InitDecoder_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VideoDecoder_NewFormat_InitDecoder_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VideoDecoder_NewFormat_InitDecoder_cold_3()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v3 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoDecoder.c:%d: Can't allocate imageDescDataBE", v2, 0x22u);
}

void VideoDecoder_NewFormat_InitDecoder_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VideoDecoder_NewFormat_InitDecoder_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VideoDecoder_NewFormat_InitDecoder_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get MVHEVC video layer IDs!", v2, v3, v4, v5, v6);
    }
  }
}

void VideoDecoder_NewFormat_InitDecoder_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VideoDecoder_VTDecompressionCallback_cold_1()
{
  OUTLINED_FUNCTION_26_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x42u);
}

void VideoDecoder_VTDecompressionCallback_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VideoDecoder is NULL", v2, v3, v4, v5, v6);
}

void VideoDecoder_DecodeFrame_cold_1()
{
  OUTLINED_FUNCTION_26_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x4Eu);
}

void VideoDecoder_DecodeFrame_cold_2()
{
  OUTLINED_FUNCTION_10_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VideoDecoder_DecodeFrame_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoDecoder_DecodeFrame_cold_4(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v4 = 1078;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d The frame contains only ImgDesc, no data", v3, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VideoDecoder_DecodeFrame_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d New block buffer creation failed", v2, v3, v4, v5, v6);
    }
  }
}

void VideoDecoder_DecodeFrame_cold_6()
{
  OUTLINED_FUNCTION_10_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VideoDecoder_DecodeFrame_cold_7()
{
  OUTLINED_FUNCTION_10_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VideoDecoder_DecodeFrame_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not get sample attachments array for output sample buffer", v2, v3, v4, v5, v6);
    }
  }
}

void VideoDecoder_DecodeFrame_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not get sample attachments array from input sample buffer", v2, v3, v4, v5, v6);
    }
  }
}

void VideoDecoder_DecodeFrame_cold_10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not copy buffer attachments from input sample bufer to output sample buffer", v2, v3, v4, v5, v6);
}

void VideoDecoder_DecodeFrame_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Block buffer creation failed", v2, v3, v4, v5, v6);
    }
  }
}

void VideoDecoder_DecodeFrame_cold_12()
{
  OUTLINED_FUNCTION_10_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VideoDecoder_DecodeFrame_cold_13()
{
  OUTLINED_FUNCTION_10_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VideoDecoder_DecodeFrame_cold_14()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v3 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoDecoder.c:%d: Could not remove imgDesc from compressed frame buffer", v2, 0x22u);
}

void VideoDecoder_IsLastSubframe_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = -2147221487;
}

void VideoDecoder_IsLastSubframe_cold_2(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = -2147221503;
}

void VideoDecoder_IsLastSubframe_cold_3(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = -2147221503;
}

void VideoDecoder_VTDecompressionMultiImageCallback_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VideoDecoder_VTDecompressionMultiImageCallback_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VideoDecoder is NULL", v2, v3, v4, v5, v6);
}

void _VCAnsweringMachine_PullAudioSamples_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 296);
  v4 = 136316674;
  v5 = a1;
  v6 = 2080;
  v7 = "_VCAnsweringMachine_ShouldInject";
  v8 = 1024;
  v9 = 125;
  v10 = 1024;
  v11 = 0;
  v12 = 1024;
  v13 = 0;
  v14 = 1024;
  v15 = 0;
  v16 = 1024;
  v17 = v3;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Stop audio injection! shouldInject={BOOL}%d initialAnnouncementInjection={BOOL}%d subsequentAnnouncementInjection={BOOL}%d hasPendingAnnouncementAsset={BOOL}%d", &v4, 0x34u);
}

void _VCAnsweringMachine_PullAudioSamples_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  v5 = 170;
  v6 = v1;
  v7 = 0;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Stopping injection and zero the buffer! shouldInject={BOOL}%d", v3, 0x22u);
}

void VCAudioDecoderList_SetMagicCookieForPayload_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 47;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d AudioDecoder is NULL", v1, 0x1Cu);
}

void VCAudioDecoderList_GetEVSHeaderFormat_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCAudioDecoderList_Setup_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCAudioDecoderList_GetSpeechCodecBundleData_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCAudioDecoderList_GetSpeechCodecBundleData_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCAudioDecoderList_GetSpeechCodecBundleData_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 189;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d AudioDecoder is NULL", v1, 0x1Cu);
}

void VCAudioDecoderList_IsDTXFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCAudioDecoderList_IsDTXFrame_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCAudioDecoderList_IsDTXFrame_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCAudioDecoderList_IsDTXFrame_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCAudioDecoderList_IsDTXFrame_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void _VCConnectionLegacy_IsOnSameInterfacesWithConnection_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: NO", v2, v3, v4, v5, v6);
}

void VCConnectionLegacy_IsRemoteIPPort_cold_1()
{
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCConnectionLegacy_IsRemoteIPPort_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: isRemoteIPPort: NO", v2, v3, v4, v5, v6);
}

uint64_t _VideoReceiver_GetAssemblyRTPTimestamp(uint64_t a1)
{
  v1 = *(a1 + 42436);
  v2 = *(a1 + 42424);
  if (v2 - 1 < v1 && *(a1 + 1222) == 1)
  {
    v3 = v1 - (*(a1 + 1224) * *(a1 + 1180));
    if (v3 <= v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = v3;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_27_6();
          OUTLINED_FUNCTION_4_0();
          _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x42u);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_27_6();
        OUTLINED_FUNCTION_4_0();
        _os_log_debug_impl(v11, v12, OS_LOG_TYPE_DEBUG, v13, v14, 0x42u);
      }
    }

    return v4;
  }

  return v1;
}

uint64_t _VideoReceiver_SendFIR(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v104 = *MEMORY[0x1E69E9840];
  v9 = a1 + 40960;
  if (a3)
  {
    v10 = *(a1 + 42872);
    if (v10 == 0.0 || a5 - v10 <= 15.0)
    {
      v61 = 2;
      v12 = 1;
    }

    else
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v56 = *(a2 + 128);
          *buf = 136316418;
          v76 = v19;
          v77 = 2080;
          v78 = "_VideoReceiver_SendFIR";
          v79 = 1024;
          v80 = 2089;
          v81 = 2048;
          *v82 = a1;
          *&v82[8] = 2048;
          v83 = v56;
          v84 = 1024;
          v85 = 15;
          _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] Forcing Full IDR request since video quality has been bad for more than %d secs", buf, 0x36u);
        }
      }

      v21 = *(v9 + 2456);
      if (v21)
      {
        VRDump_AddEvent(v21, 7u, 0, v14, v15, v16, v17, v18, v59);
      }

      v12 = 0;
      v61 = 0;
      *(v9 + 2464) = 1;
    }
  }

  else
  {
    v12 = 0;
    v61 = 0;
  }

  v22 = 4;
  if (!*(a2 + 70))
  {
    v22 = 0;
  }

  v23 = *(a2 + v22);
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a2 + 128);
      v32 = *(v9 + 1588);
      v33 = *(v9 + 1592);
      v34 = *(a2 + 4344);
      v35 = kVCKeyFrameRequestReasonStrings_0[a4];
      v36 = *(a2 + 70);
      v37 = *(a2 + 152);
      *buf = 136318466;
      v76 = v29;
      v77 = 2080;
      v78 = "_VideoReceiver_SendFIR";
      v79 = 1024;
      v80 = 2101;
      v81 = 2048;
      *v82 = a1;
      *&v82[8] = 2048;
      v83 = v31;
      v84 = 1024;
      v85 = v61;
      v86 = 1024;
      v87 = v32;
      v88 = 1024;
      v89 = v33;
      v90 = 2048;
      v91 = a2;
      v92 = 1024;
      v93 = v34;
      v94 = 1024;
      v95 = v23;
      v96 = 2080;
      v97 = v35;
      v98 = 1024;
      v99 = v36;
      v100 = 1024;
      v101 = v37;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] Sending FIR(%d) %dx%d stream[%p] streamIndex=%d streamID=%d reason=%s isTemporalScalingEnabled=%d ssrc=%u", buf, 0x6Eu);
    }
  }

  v38 = *(v9 + 2456);
  if (v38)
  {
    VRDump_AddEvent(v38, 4u, 0, v24, v25, v26, v27, v28, v59);
  }

  *(a2 + 4328) = a5;
  if (*(a1 + 1336))
  {
    bzero(buf, 0xA8uLL);
    memset(v74, 170, 20);
    if (*(a1 + 1337) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(a2 + 128);
          *v62 = 136316418;
          v63 = v39;
          v64 = 2080;
          v65 = "_VideoReceiver_SendFIR";
          v66 = 1024;
          v67 = 2122;
          v68 = 2048;
          v69 = a1;
          v70 = 2048;
          v71 = v41;
          v72 = 2048;
          v73 = a2;
          _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] stream[%p] Sending PSFB FIR", v62, 0x3Au);
        }
      }

      *buf = 64;
      v42 = *(v9 + 2360) + 1;
      *(v9 + 2360) = v42;
      LOBYTE(v80) = v42;
      v103 = *(a1 + 1296);
      v102 = 1;
      goto LABEL_56;
    }

    *buf = 8;
    if (a3)
    {
      LOWORD(v74[0]) = *(v9 + 1588);
      WORD1(v74[0]) = *(v9 + 1592);
      *&v82[2] = v74;
      LODWORD(v83) = v61;
      v47 = *(v9 + 1984);
      v48 = *(v9 + 1984) ? 7 : 8;
      if (v48 <= VRTraceGetErrorLogLevelForModule())
      {
        VRTraceErrorLogLevelToCSTR();
        if (v47)
        {
          v49 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
LABEL_53:
            OUTLINED_FUNCTION_41_0();
            OUTLINED_FUNCTION_33_2();
            OUTLINED_FUNCTION_10_9();
            _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] %dx%d %d", v62, 0x42u);
          }
        }

        else
        {
          v49 = *MEMORY[0x1E6986650];
          v54 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] != 1)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              OUTLINED_FUNCTION_41_0();
              OUTLINED_FUNCTION_33_2();
              OUTLINED_FUNCTION_10_9();
              _os_log_debug_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] %dx%d %d", v62, 0x42u);
            }

            goto LABEL_56;
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_53;
          }
        }
      }
    }

LABEL_56:
    _VideoReceiver_SendRTCP(a1, a2, buf, 0, a5);
    return kdebug_trace();
  }

  v43 = *(a1 + 1648);
  if (v43 && *(a2 + 64) == 1)
  {
    if (v12 && *(a2 + 69) == 1)
    {
      v44 = *(a1 + 1624);
      v45 = v23;
      v46 = 2;
LABEL_50:
      v43(v44, v45, v46);
      return kdebug_trace();
    }

    v44 = *(a1 + 1624);
    v45 = v23;
    if (a4 != 28)
    {
      v46 = 0;
      goto LABEL_50;
    }

    v43(v44, v23, 3);
    if (*(v9 + 2514) == 1)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v51 = Mutable;
        v52 = *(a1 + 1384);
        if (v52)
        {
          CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeySessionID", v52);
        }

        v53 = *(a1 + 1376);
        if (v53)
        {
          CFDictionarySetValue(v51, @"SymptomReporterOptionalKeyParticipantID", v53);
        }

        reportingSymptom();
        CFRelease(v51);
        *(v9 + 2514) = 0;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v57 = VRTraceErrorLogLevelToCSTR();
        v58 = *MEMORY[0x1E6986650];
        if (OUTLINED_FUNCTION_40())
        {
          *buf = 136315650;
          v76 = v57;
          v77 = 2080;
          v78 = "_VideoReceiver_SendReportingSymptomForNoVideoDisplayedFailSafeFIR";
          v79 = 1024;
          v80 = 2069;
          _os_log_error_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d Optional dictionary for reporting NoVideoDisplayedFailSafeFIR ABC symptom is NULL", buf, 0x1Cu);
        }
      }
    }
  }

  return kdebug_trace();
}

void _VideoReceiver_SendNACK(unsigned int *a1, int a2, int a3, __int16 a4, double a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return;
  }

  v7 = a3;
  v10 = *(a1 + 42946);
  if (*(a1 + 42946))
  {
    v11 = 7;
  }

  else
  {
    v11 = 8;
  }

  if (v11 <= VRTraceGetErrorLogLevelForModule())
  {
    VRTraceErrorLogLevelToCSTR();
    if (v10)
    {
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_32_2(4.8156e-34);
        OUTLINED_FUNCTION_13_6("_VideoReceiver_SendNACK");
        _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Sending NACK for ssrc=%u with highestSeqNum=%u bitMask_hex=%x", buf, 0x38u);
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      OUTLINED_FUNCTION_32_2(4.8156e-34);
      OUTLINED_FUNCTION_13_6("_VideoReceiver_SendNACK");
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Sending NACK for ssrc=%u with highestSeqNum=%u bitMask_hex=%x", buf, 0x38u);
    }
  }

LABEL_14:
  bzero(v17, 0xA8uLL);
  LODWORD(v17[0]) = 2048;
  v19 = v7;
  v18 = a4;
  v20 = 1;
  v14 = *a1;
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 424;
    do
    {
      if (v16[38] == a2)
      {
        v15 = v16;
      }

      v16 += 1088;
      --v14;
    }

    while (v14);
    if (v15)
    {
      _VideoReceiver_SendRTCP(a1, v15, v17, 0, a5);
    }
  }
}

void _VideoReceiver_UpdateVideoStallStatus(uint64_t a1, int a2)
{
  v2 = a1 + 40960;
  if ((*(a1 + 42904) & 1) == 0)
  {
    if (!a2 || *(a1 + 42680) == 0.0)
    {
      if (*(a1 + 42872) > 0.0)
      {
        VideoStallLength = _VideoReceiver_GetVideoStallLength(a1);
        v16 = micro();
        _VideoReceiver_UpdateVideoStallTime(a1, VideoStallLength, v16);
        _VideoReceiver_ReportDegradedEvent(a1, a2);
        v22 = *(v2 + 2456);
        if (v22)
        {
          VRDump_AddEvent(v22, 6u, 0, v17, v18, v19, v20, v21, v33);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_35())
          {
            OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_24_0();
            _os_log_impl(v28, v29, OS_LOG_TYPE_DEFAULT, v30, v31, 0x40u);
          }
        }

        if (*(v2 + 2464) == 1)
        {
          v32 = *(v2 + 2456);
          if (v32)
          {
            VRDump_AddEvent(v32, 8u, 0, v23, v24, v25, v26, v27, v33);
          }
        }
      }
    }

    else if (*(a1 + 42872) == 0.0)
    {
      *(a1 + 42872) = micro();
      *(v2 + 1920) = 0;
      ++*(v2 + 1904);
      _VideoReceiver_ReportDegradedEvent(a1, 1);
      v10 = *(v2 + 2456);
      if (v10)
      {
        VRDump_AddEvent(v10, 5u, 0, v5, v6, v7, v8, v9, v33);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_35())
        {
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_3_14();
          OUTLINED_FUNCTION_24_0();
          _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0x2Cu);
        }
      }
    }
  }
}

void _VideoReceiver_DecoderNeedsRefresh(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  _VideoReceiver_SendFIR(a1, a2, a3, a4, a5);
  if (a4 != 28)
  {
    _VideoReceiver_UpdateVideoStallStatus(a1, 1);
  }

  _VideoReceiver_ResetExpectedDecodingOrder(a1);
}

uint64_t _VideoReceiver_UpdateVideoStallTime(uint64_t result, double a2, double a3)
{
  v4 = result + 40960;
  v5 = *(result + 42840) + a2 - *(result + 42880);
  *(result + 42840) = v5;
  v6 = *(result + 42888);
  if (v6 < a2)
  {
    v6 = a2;
  }

  *(result + 42888) = v6;
  *(result + 42872) = 0u;
  if ((*(result + 43472) & 1) == 0)
  {
    v7 = *(result + 1536);
    if (v7)
    {
      v8 = *(result + 43464);
      v9 = a3 - v8;
      v10 = v8 == 0.0 || v9 < 5.0;
      if (!v10 && v7 < (v5 * 10000.0 / v9))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_35())
          {
            OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_23_0();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_16_9();
            OUTLINED_FUNCTION_24_0();
            _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0x32u);
          }
        }

        result = reportingSymptom();
        *(v4 + 2512) = 1;
      }
    }
  }

  if (a2 > 3.0)
  {
    return reportingSymptom();
  }

  return result;
}

uint64_t _VideoReceiver_ScheduleFrameAssemblyForStream(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v4 = **(a4 + 32);
  v5 = **(a4 + 24);
  if ((v4 & 1) == 0 && (v5 & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = a1 + 40960;
    v11 = **(a4 + 16);
    v12 = **(a4 + 8);
    v13 = 16 * v12;
    v14 = v12 - 7;
    while (1)
    {
      v15 = v14;
      v16 = *(a4 + 40);
      v17 = *(a2 + 128);
      if (a3)
      {
        if ((VideoPacketBuffer_SchedulePastIncompleteFrame(v17, *a4, &v26, *(v10 + 1464), *(v10 + 2292), *(v10 + 2294)) & 1) == 0)
        {
          break;
        }
      }

      else if (!VideoPacketBuffer_ScheduleFutureFrame(v17, *(a2 + 152), *a4, &v26, *(v10 + 1464), *(v10 + 2292), *(v10 + 2294), *(v10 + 2256)))
      {
        break;
      }

      v18 = v26;
      if ((v8 & (v9 == v26)) != 0)
      {
        break;
      }

      v19 = v16 + v13;
      *v19 = a2;
      *(v19 + 8) = v18;
      v20 = v11 + 1;
      LODWORD(v12) = v12 + 1;
      v4 = v15 == 0;
      v5 = v11 == 1;
      if (v11 != 1)
      {
        v13 += 16;
        v14 = v15 + 1;
        v8 = 1;
        ++v11;
        v9 = v18;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v4 = 0;
    v5 = 0;
    v20 = v11;
LABEL_13:
    v21 = *(a4 + 24);
    v22 = *(a4 + 32);
    v23 = *(a4 + 16);
    **(a4 + 8) = v12;
    *v23 = v20;
    *v22 = v4;
    *v21 = v5;
  }

  return (v5 | v4) & 1;
}

void _VideoReceiver_EnqueueFailedFrameToJitterBuffer(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (*(a1 + 1324) == 1 && *(a1 + 43272) && (*(a2 + 18) & 1) == 0)
    {
      *(a2 + 64) = _VideoReceiver_GetVideoFrameTimeInSeconds(a1, *(a2 + 8), a3);

      _VideoReceiver_EnqueueFrameToJitterBuffer(a1, a2);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }
}

void _VideoReceiver_DecoderCallback_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VideoReceiver_DecoderCallback_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }
}

void _VideoReceiver_DecoderCallback_cold_3()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_37_5();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x38u);
}

void _VideoReceiver_DecoderCallback_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_16_9();
        OUTLINED_FUNCTION_31_4();
        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_4_0();
      _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x2Cu);
    }
  }
}

void _VideoReceiver_DecoderCallback_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d VideoReceiver is null", v2, v3, v4, v5, v6);
}

void _VideoReceiver_EnqueueDecodedFrameForDisplay_cold_1(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_24_0();
        _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 0x26u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24_0();
      _os_log_debug_impl(v8, v9, OS_LOG_TYPE_DEBUG, v10, v11, 0x26u);
    }
  }

  *a2 = 0;
}

void _VideoReceiver_EnqueueDecodedFrameForDisplay_cold_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
    }
  }

  *a3 = 0;
}

void _VideoReceiver_CreateReportingEventDictionary_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VideoReceiver_HandleDataBuffer_cold_1()
{
  OUTLINED_FUNCTION_44_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VideoReceiver_HandleDataBuffer_cold_2()
{
  OUTLINED_FUNCTION_44_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VideoReceiver_HandleDataBuffer_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoReceiver_DecryptFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VideoReceiver_SetTargetStreamID_cold_1()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  *v1 = -2145452031;
  OUTLINED_FUNCTION_36();
}

void _VideoReceiver_GetVPBStats_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a1 = v1;
}

void _VideoReceiver_GetVPBStats_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a1 = v1;
}

void _VideoReceiver_GetVPBStats_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_3();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a1 = v1;
}

void VideoReceiver_CreateHandle_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoReceiver_CreateHandle_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoReceiver_CreateHandle_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VideoReceiver_CreateHandle_cold_4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_35_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_36();
}

void VideoReceiver_CreateHandle_cold_5()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_35_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_36();
}

void VideoReceiver_CreateHandle_cold_6()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_35_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_36();
}

void VideoReceiver_CreateHandle_cold_8()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_35_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_36();
}

void VideoReceiver_CreateHandle_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoReceiver_CreateHandle_cold_10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void VideoReceiver_CreateHandle_cold_11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void VideoReceiver_CreateHandle_cold_14()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_36();
}

void _VideoReceiver_NoVideoDisplayedTimeoutCallback_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VideoReceiver_NoVideoDisplayedTimeoutCallback_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VideoReceiver_DisplayLinkTick_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Invalid handle", v2, v3, v4, v5, v6);
}

void _VideoReceiver_CallAlarms_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Invalid handle", v2, v3, v4, v5, v6);
}

void VideoReceiver_GetBitrate_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VideoReceiver_GetBitrate_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VideoReceiver_GetBitrate_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VideoReceiver_GetBitrate_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VideoReceiver_GetBitrate_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VideoReceiver_GetShowFrameRTPTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Video Receiver is NULL", v2, v3, v4, v5, v6);
}

void VideoReceiver_CellTechChanged_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Video Receiver is NULL", v2, v3, v4, v5, v6);
}

void VideoReceiver_SetSynchronizer_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Video Receiver is NULL", v2, v3, v4, v5, v6);
}

void _VideoReceiver_RTPPacketCallback_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void VideoReceiver_SetExternalOutputLatency_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Video Receiver is NULL", v2, v3, v4, v5, v6);
}

void VideoReceiver_SetDeferredAssemblyEnabled_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Video Receiver is NULL", v2, v3, v4, v5, v6);
}

void VideoReceiver_SetLooseAVSyncEnabled_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Video Receiver is NULL", v2, v3, v4, v5, v6);
}

void VideoReceiver_SetForceRTCPForLTRPACK_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Video Receiver is NULL", v2, v3, v4, v5, v6);
}

void _VideoReceiver_ShowFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d decodedFrame is null", v2, v3, v4, v5, v6);
}

void _VideoReceiver_ShowFrame_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d VideoReceiver is null", v2, v3, v4, v5, v6);
}

void _VideoReceiver_VideoAlarmCommon_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoReceiver_VideoAlarmCommon_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VideoReceiver_DequeueAndDecode_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_4()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _VideoReceiver_DequeueAndDecode_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 1301;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d Attaching decryption context to sample buffer", v1, 0x1Cu);
}

void _VideoReceiver_DequeueAndDecode_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_12()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _VideoReceiver_DequeueAndDecode_cold_13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_14(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v8;
      v13 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_11_4();
      v14 = a1;
      v15 = v10;
      v16 = a2;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] _VideoReceiver_DecodeFrame failed (%08X)", &v11, 0x2Cu);
    }
  }

  *a4 = a3;
}

void _VideoReceiver_DequeueAndDecode_cold_15()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_16()
{
  OUTLINED_FUNCTION_44_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VideoReceiver_DequeueAndDecode_cold_17()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _VideoReceiver_DequeueAndDecode_cold_18()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VideoReceiver_DumpRecvSPSPPS_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _VideoReceiver_SendRTCPResiliencyInfo_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_37_5();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x34u);
}

void _VideoReceiver_DecoderCallbackMultiImage_cold_1()
{
  OUTLINED_FUNCTION_44_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VideoReceiver_DecoderCallbackMultiImage_cold_2()
{
  OUTLINED_FUNCTION_44_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void _VideoReceiver_DecoderCallbackMultiImage_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d VideoReceiver is null", v2, v3, v4, v5, v6);
}

void _VideoReceiver_AssembleAndEnqueueFrame_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1 + 40960;
  *&v2 = -1;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v3 = NAN;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  VCVideoJitterBuffer_GetReferenceFrame(*(a1 + 43272), &v2);
  if ((v4 & 1) != 0 && DWORD2(v2) != *(v1 + 2320))
  {
    VCVideoPlayer_SetReferenceRTPTimestamp(*&v2, v3, *(v1 + 16), SDWORD2(v2));
    *(v1 + 2320) = DWORD2(v2);
    *(v1 + 2324) = 1;
  }
}

void _VideoReceiver_EnqueueFrameToJitterBuffer_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VideoReceiver_ProcessVideoRTPInternal_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoReceiver [%s] %s:%d Failed to extract cameraStatusBits from Standard Rtp header extension", v2, v3, v4, v5, v6);
}

void _VideoReceiver_ProcessVideoRTPInternal_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoReceiver_ProcessVideoRTPInternal_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoReceiver_ProcessVideoRTPInternal_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VideoReceiver_ProcessVideoRTPInternal_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VideoReceiver_ProcessVideoRTPInternal_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VideoReceiver_HandleStreamSwitch_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x44u);
}

void VCAudioIssueDetectorUtil_ProcessFrame(int32x2_t *a1, unsigned __int16 *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v36 = 1611;
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
      }
    }

    return;
  }

  if (!a1->i32[0])
  {
    _VCAudioIssueDetectorUtil_StateMachine(a1, 0, 5, 0, 0.0);
  }

  if (!a2[4])
  {
    v11 = 3;
    v5 = 1;
    v4 = 4;
    goto LABEL_20;
  }

  if (a1[2247].i32[0] == 1)
  {
    v4 = *(a2 + 20);
    if (*(a2 + 18))
    {
      if (*(a2 + 20))
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      v5 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    if (a2[9])
    {
      v5 = 1;
      v4 = 2;
LABEL_17:
      v11 = 1;
      goto LABEL_20;
    }

    v4 = 0;
  }

  v5 = 0;
  v11 = 2;
LABEL_20:
  _VCAudioIssueDetectorUtil_StateMachine(a1, v11, v4, a2[2], *(a2 + 3));
  v12 = *a2;
  if (a1[22].i32[1] != v12)
  {
    a1[22].i32[1] = v12;
  }

  v13 = *(a2 + 1);
  if (v13)
  {
    v14 = a1[23].u16[1];
    if (v14 != v13 && (v13 > 0x960u || v14 <= 0x960))
    {
      a1[23].i16[1] = v13;
    }
  }

  v15 = a2[8];
  v16 = MEMORY[0x1E6986650];
  if (a2[8] && a1[23].u16[0] != v15)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315906;
        v34 = v17;
        OUTLINED_FUNCTION_6_5();
        OUTLINED_FUNCTION_6();
        v36 = 849;
        v37 = v19;
        v38 = v15;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio issue detector update codecSampleRate=%d", &v33, 0x22u);
      }
    }

    a1[23].i16[0] = v15;
    v12 = *a2;
    v13 = *(a2 + 1);
  }

  if (v13)
  {
    v20 = v5;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = a1 + 12 * a1[89].u8[4];
    v22 = *(v21 + 85);
    if (v22 && (v23 = (v21 + 332), *v23 == v12) && *(v23 + 1) == v13)
    {
      *(v23 + 2) = v22 + 1;
    }

    else
    {
      v24 = 0;
      v25 = &a1[42] + 1;
      v26 = &a1[42] + 1;
      do
      {
        v28 = *v26;
        v26 += 3;
        v27 = v28;
        if (!v28)
        {
          *(v25 - 4) = v12;
          *(v25 - 1) = v13;
          v32 = 1;
LABEL_51:
          *v25 = v32;
          a1[89].i8[4] = v24;
          return;
        }

        if (*(v25 - 4) == v12 && *(v25 - 1) == v13)
        {
          v32 = v27 + 1;
          goto LABEL_51;
        }

        ++v24;
        v25 = v26;
      }

      while (v24 != 32);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        VRTraceErrorLogLevelToCSTR();
        v29 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_11();
          v35 = v30;
          OUTLINED_FUNCTION_6();
          v36 = 1411;
          v37 = v31;
          v38 = v12;
          v39 = v31;
          v40 = v13;
          _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d BitRate counter out of entries for payload=%d, bitRate=%d", &v33, 0x28u);
        }
      }
    }
  }
}

void VCAudioIssueDetectorUtil_Create_cold_1(int a1, void *a2)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  free(a2);
}

void VCAudioIssueDetectorUtil_Create_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  v6 = 1521;
  v7 = v1;
  v8 = v2;
  _os_log_debug_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Audio issue detector created for direction=%d", v4, 0x22u);
}

void VCAudioIssueDetectorUtil_Create_cold_3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCAudioIssueDetectorUtil_Configure_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x32u);
    }
  }
}

void VCAudioIssueDetectorUtil_Configure_cold_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v9 = a1;
      v10 = v6;
      v11 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter issueDetectorUtil=%p config=%p", &v7, 0x30u);
    }
  }
}

void VCAudioIssueDetectorUtil_UpdateRATType_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCAudioIssueDetectorUtil_ProcessCellularNetworkNotification_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameters", v2, v3, v4, v5, v6);
}

void VCAudioIssueDetectorUtil_ProcessCellularNetworkNotification_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCAudioIssueDetectorUtil_StateMachine_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCAudioIssueDetectorUtil_StateMachine_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCAudioIssueDetectorUtil_StateMachine_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCAudioIssueDetectorUtil_Start_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Audio issue detector is NULL", v2, v3, v4, v5, v6);
}

void VCAudioIssueDetectorUtil_Stop_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Audio issue detector is NULL", v2, v3, v4, v5, v6);
}

void VCAudioIssueDetectorUtil_FlushLogEvents_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Audio issue detector is NULL", v2, v3, v4, v5, v6);
}

void VCAudioIssueDetectorUtil_RtpPacketIndication_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  *a1 = 4;
}

void VCAudioIssueDetectorUtil_RtpPacketTimeoutIndication_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  *a1 = 4;
}

void _VCAudioIssueDetectorUtilDeInit_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCAudioIssueDetectorUtil_EnqueueDistortion_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCAudioIssueDetectorUtil_ReportDistortionRadioHistogram_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _VCAudioIssueDetectorUtil_AddHistogramEntryToDict_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

CVPixelBufferRef _VideoTransmitter_CreateRotatedPixelBufferForTallFormatCameraCapture(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  result = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a1 && pixelBuffer)
  {
    if (*(a1 + 17227) == 1 && (Width = CVPixelBufferGetWidth(pixelBuffer), Width < CVPixelBufferGetHeight(pixelBuffer)))
    {
      pixelBufferOut = 0;
      v6 = MEMORY[0x1E695E480];
      if (!*(a1 + 17856))
      {
        VTImageRotationSessionCreate();
      }

      BufferPoolForFrameAttributes = *(a1 + 17864);
      if (!BufferPoolForFrameAttributes)
      {
        BufferPoolForFrameAttributes = VideoUtil_CreateBufferPoolForFrameAttributes(*(a1 + 24), *(a1 + 28), *(a1 + 88), 4);
        *(a1 + 17864) = BufferPoolForFrameAttributes;
      }

      if (CVPixelBufferPoolCreatePixelBuffer(*v6, BufferPoolForFrameAttributes, &pixelBufferOut) || !pixelBufferOut)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (OUTLINED_FUNCTION_34())
          {
            OUTLINED_FUNCTION_39_6();
            OUTLINED_FUNCTION_0_5();
            v14 = 2618;
            _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d CVPixelBufferPoolCreatePixelBuffer failed", buf, 0x1Cu);
          }
        }
      }

      else
      {
        MEMORY[0x1E128B1C0](*(a1 + 17856), pixelBuffer);
        CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(pixelBuffer);
        VCCVOExtensionUtils_RotateCVO(&CVOFromPixelBuffer, -1);
        VCCVOExtensionUtils_AttachCVOToPixelBuffer(pixelBufferOut, CVOFromPixelBuffer);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          v9 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_39_6();
              OUTLINED_FUNCTION_0_5();
              v14 = 2625;
              _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Rotate PixelBuffer success", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_39_6();
            OUTLINED_FUNCTION_0_5();
            v14 = 2625;
            _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Rotate PixelBuffer success", buf, 0x1Cu);
          }
        }
      }

      return pixelBufferOut;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _VideoTransmitter_CreateEncodingBufferAndSetOrientation(uint64_t a1, _BYTE *a2, CVPixelBufferRef pixelBuffer, const void **a4)
{
  v8 = 0;
  v63 = *MEMORY[0x1E69E9840];
  v9 = a1 + 17072;
  if (a1 && pixelBuffer)
  {
    if (*(a1 + 17227) == 1)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      v8 = Width < CVPixelBufferGetHeight(pixelBuffer);
    }

    else
    {
      v8 = 0;
    }
  }

  v11 = *a2;
  v12 = *(MEMORY[0x1E695F050] + 16);
  *(a1 + 17080) = *MEMORY[0x1E695F050];
  *(a1 + 17096) = v12;
  if ((v11 & 0x10) != 0)
  {
    v13 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v13 = *(v9 + 316);
    if (!a4)
    {
      goto LABEL_27;
    }
  }

  *a4 = 0;
  v30 = a2;
  if (pixelBuffer && *(v9 + 155) == 1)
  {
    v14 = CVPixelBufferGetWidth(pixelBuffer);
    v15 = v14 < CVPixelBufferGetHeight(pixelBuffer);
  }

  else
  {
    v15 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_20;
  }

  VRTraceErrorLogLevelToCSTR();
  v16 = *MEMORY[0x1E6986650];
  v17 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_35_3();
      OUTLINED_FUNCTION_32_3("_VideoTransmitter_CreateEncodingBufferForCameraRotation");
      _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d shouldRotatePixelBuffer=%d", buf, 0x22u);
      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }

LABEL_20:
    if (!v15)
    {
      goto LABEL_21;
    }

LABEL_38:
    RotatedPixelBufferForTallFormatCameraCapture = _VideoTransmitter_CreateRotatedPixelBufferForTallFormatCameraCapture(a1, pixelBuffer);
    goto LABEL_22;
  }

  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_32_3("_VideoTransmitter_CreateEncodingBufferForCameraRotation");
  _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d shouldRotatePixelBuffer=%d", buf, 0x22u);
  if (v15)
  {
    goto LABEL_38;
  }

LABEL_21:
  RotatedPixelBufferForTallFormatCameraCapture = CVPixelBufferRetain(pixelBuffer);
LABEL_22:
  *a4 = RotatedPixelBufferForTallFormatCameraCapture;
  a2 = v30;
  if (*(a1 + 23849) == 1)
  {
    VCVideoHardwareDumpCollector_RecordEncoderBuffer(*(a1 + 23856), (v11 & 2) == 0, 0, 0, 0, 0);
  }

  if (v13 && *v9)
  {
    *(a1 + 17080) = VideoUtil_CalculateVisibleRect();
    *(a1 + 17088) = v19;
    *(a1 + 17096) = v20;
    *(a1 + 17104) = v21;
  }

LABEL_27:
  if (!CGRectEqualToRect(*(a1 + 17112), *(a1 + 17080)))
  {
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v61 = v22;
    v62 = v22;
    v59 = v22;
    v60 = v22;
    v57 = v22;
    v58 = v22;
    *buf = v22;
    v56 = v22;
    v53 = v22;
    v54 = v22;
    v51 = v22;
    v52 = v22;
    v49 = v22;
    v50 = v22;
    *__str = v22;
    v48 = v22;
    VideoUtil_StringVisibleRect((a1 + 17112), buf, 0x80uLL);
    VideoUtil_StringVisibleRect((a1 + 17080), __str, 0x80uLL);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 17104);
        v26 = 0.0;
        if (v25 != 0.0)
        {
          v26 = *(a1 + 17096) / v25;
        }

        *v31 = 136316930;
        v32 = v23;
        v33 = 2080;
        v34 = "_VideoTransmitter_UpdateVisibleRect";
        v35 = 1024;
        v36 = 2575;
        v37 = 2048;
        v38 = a1;
        v39 = 2048;
        v40 = v26;
        v41 = 2080;
        v42 = buf;
        v43 = 2080;
        v44 = __str;
        v45 = 1024;
        v46 = (v11 & 2) == 0;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX][%p] AspectRatio=%.3f, visibleRect changed from %s to %s, fPortrait = %d", v31, 0x4Au);
      }
    }

    v27 = *(a1 + 17096);
    *(a1 + 17112) = *(a1 + 17080);
    *(a1 + 17128) = v27;
  }

  if (v8)
  {
    CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(*a4);
    *a2 = VCCameraStatusUtil_CameraStatusBitsFromCVO(CVOFromPixelBuffer);
  }

  return 0;
}

uint64_t _VideoTransmitter_EncodeSingleImageVideo(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, unsigned int a4, int a5, char a6, uint64_t a7, void *a8)
{
  v100 = *MEMORY[0x1E69E9840];
  v13 = a1 + 23628;
  v14 = a1 + 16892;
  v78 = a6;
  texture = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  VideoUtil_PropagateSampleBufferAttachmentsToPixelBuffer(sbuf, ImageBuffer);
  _VideoTransmitter_HandleThermalEvent(a1, a8);
  v17 = *a3;
  if (a1)
  {
    if (ImageBuffer)
    {
      if (*(v14 + 335) == 1)
      {
        Width = CVPixelBufferGetWidth(ImageBuffer);
        if (Width < CVPixelBufferGetHeight(ImageBuffer))
        {
          v19 = CVPixelBufferRetain(ImageBuffer);
          goto LABEL_58;
        }
      }
    }
  }

  pixelBufferOut = 0;
  if (*(v13 + 141))
  {
    goto LABEL_19;
  }

  v20 = CVPixelBufferGetWidth(ImageBuffer);
  if (vabds_f32(v20 / CVPixelBufferGetHeight(ImageBuffer), *(a1 + 24) / *(a1 + 28)) < 0.05)
  {
    goto LABEL_19;
  }

  v21 = MEMORY[0x1E695E480];
  if (!*(a1 + 17848))
  {
    VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (a1 + 17848));
    VTSessionSetProperty(*(a1 + 17848), *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F8]);
  }

  BufferPoolForFrameAttributes = *(a1 + 17864);
  if (!BufferPoolForFrameAttributes)
  {
    BufferPoolForFrameAttributes = VideoUtil_CreateBufferPoolForFrameAttributes(*(a1 + 24), *(a1 + 28), *(a1 + 88), 4);
    *(a1 + 17864) = BufferPoolForFrameAttributes;
  }

  CVPixelBufferPoolCreatePixelBuffer(*v21, BufferPoolForFrameAttributes, &pixelBufferOut);
  v23 = pixelBufferOut;
  if (pixelBufferOut)
  {
    VTPixelTransferSessionTransferImage(*(a1 + 17848), ImageBuffer, pixelBufferOut);
    v24 = pixelBufferOut;
    if ((*(v13 + 221) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*(v13 + 221) != 1)
    {
LABEL_19:
      v24 = CVPixelBufferRetain(ImageBuffer);
      pixelBufferOut = v24;
      goto LABEL_20;
    }

    v24 = 0;
  }

  VCVideoHardwareDumpCollector_RecordResizeForEncoder(*(a1 + 23856), v23 != 0, v24, *(a1 + 24), *(a1 + 28));
  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = pixelBufferOut;
LABEL_20:
  v81 = CVPixelBufferGetWidth(v24);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  v79 = (a1 + 104);
  if (_VideoTransmitter_RequireEncoderResolutionChange(a1, &v81, &Height, &v79, v17))
  {
    v25 = Height;
    v26 = v81;
    v27 = v79;
    v28 = *(a1 + 432);
    if (v28)
    {
      CVPixelBufferRelease(v28);
      *(a1 + 432) = 0;
    }

    if (a8 && a8[2] != 0xFFFFFFFFLL)
    {
      (*(*a8 + 8))();
      a8[2] = 0xFFFFFFFFLL;
    }

    if (*(a1 + 16) == 100)
    {
      *(v14 + 128) = 0;
    }

    v29 = *(a1 + 496);
    v30 = v29 == 3 || v29 == 5;
    if (v30 || (*(a1 + 504) - 1) <= 1)
    {
      *(v14 + 128) = 1;
    }

    ++*v13;
    if (*(v14 + 492))
    {
      v31 = 0;
    }

    else if (*(a1 + 96))
    {
      v31 = 1;
    }

    else
    {
      v31 = *(a1 + 100) != 0;
    }

    v32 = 17764;
    if (!*(v14 + 876))
    {
      v32 = 17020;
    }

    v73 = *(a1 + v32);
    Encoder = _VideoTransmitter_CreateEncoder(a1, v26, v25, v27, v73 != 0, v31, a8);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (Encoder < 0)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v42 = *(a1 + 24);
          v43 = *(a1 + 28);
          LODWORD(buf.value) = 136316674;
          *(&buf.value + 4) = v40;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "_VideoTransmitter_CreateEncoderForResolutionChange";
          HIWORD(buf.epoch) = 1024;
          v86 = 3743;
          v87 = 1024;
          *v88 = v42;
          *&v88[4] = 1024;
          *&v88[6] = v43;
          *v89 = 1024;
          *&v89[2] = v26;
          v90 = 1024;
          v91 = v25;
          _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, " [%s] %s:%d Switching encoder FAILED from %dx%d to %dx%d", &buf, 0x34u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v72 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v69 = *(a1 + 24);
          v70 = *(a1 + 28);
          v71 = *(a1 + 44);
          v36 = FourccToCStr(*(v14 + 984));
          LODWORD(buf.value) = 136317442;
          *(&buf.value + 4) = v72;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "_VideoTransmitter_CreateEncoderForResolutionChange";
          HIWORD(buf.epoch) = 1024;
          v86 = 3733;
          v87 = 1024;
          *v88 = v69;
          *&v88[4] = 1024;
          *&v88[6] = v70;
          *v89 = 1024;
          *&v89[2] = v26;
          v90 = 1024;
          v91 = v25;
          v92 = 1024;
          v93 = v71;
          v94 = 2080;
          v95 = v36;
          v96 = 2080;
          v97 = v27;
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Switching encoder from %dx%d to %dx%d %dfps (%s: %s)", &buf, 0x4Eu);
        }
      }

      *(a1 + 24) = v26;
      *(a1 + 28) = v25;
      *(v14 + 764) = v26;
      *(v14 + 768) = v25;
      if (strncmp((a1 + 104), v27, 0x96uLL))
      {
        __strlcpy_chk();
      }

      v99 = 0;
      *__str = 0;
      snprintf(__str, 0xCuLL, "%d", *(a1 + 16));
      reportingLog();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v39 = "Hardware";
          LODWORD(buf.value) = 136315906;
          *(&buf.value + 4) = v37;
          if (!v73)
          {
            v39 = "Software";
          }

          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "_VideoTransmitter_HandleEncodeCreateSuccess";
          HIWORD(buf.epoch) = 1024;
          v86 = 749;
          v87 = 2080;
          *v88 = v39;
          _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Using %s Video Encoder", &buf, 0x26u);
        }
      }
    }
  }

  v19 = pixelBufferOut;
LABEL_58:
  _VideoTransmitter_CreateEncodingBufferAndSetOrientation(a1, &v78, v19, &texture);
  LOWORD(buf.value) = 0;
  Attachment = CVBufferGetAttachment(v19, @"CaptureMediaPriorirty", 0);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberSInt16Type, &buf);
    value = buf.value;
  }

  else
  {
    value = 0;
  }

  v46 = VCMemoryPool_Alloc(*(a1 + 18112));
  if (v46)
  {
    v47 = v46;
    memcpy(__dst, &xmmword_1DBD48608, sizeof(__dst));
    LODWORD(__dst[0]) = *(a1 + 256);
    v48 = *(a3 + 16);
    *(__dst + 8) = *a3;
    *(&__dst[1] + 8) = v48;
    *(&__dst[2] + 8) = *(a3 + 32);
    *(&__dst[3] + 1) = *(a3 + 48);
    __dst[4] = texture;
    LOBYTE(__dst[5]) = v78;
    *(&__dst[5] + 4) = __PAIR64__(*(a1 + 4776), a4);
    HIDWORD(__dst[5]) = a5;
    v49 = *(a7 + 16);
    __dst[6] = *a7;
    __dst[7] = v49;
    *&__dst[8] = *(a7 + 32);
    WORD4(__dst[8]) = value;
    HIDWORD(__dst[8]) = MediaType;
    v50 = _VideoTransmitter_PrepareAndSetupEncodingArgs(a1, __dst, v47);
    if ((v50 & 0x80000000) != 0)
    {
      v59 = v50;
      VCMemoryPool_Free(*(a1 + 18112), v47);
    }

    else
    {
      _VideoTransmitter_UpdateEncoderArgsWithRTPStatus(a1, v47, *a3);
      if (*(v14 + 880) == 20)
      {
        v51 = atomic_load(v14);
        *(v47 + 292) = v51;
        *(v47 + 296) = 6000;
      }

      buf = *(v47 + 412);
      CMTimeGetSeconds(&buf);
      kdebug_trace();
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        VRTraceErrorLogLevelToCSTR();
        v52 = *MEMORY[0x1E6986650];
        v53 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.value) = 136315906;
            OUTLINED_FUNCTION_24_4();
            OUTLINED_FUNCTION_46_0(v54);
            _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encode frame with RTP timestamp=%d", &buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.value) = 136315906;
          OUTLINED_FUNCTION_24_4();
          OUTLINED_FUNCTION_46_0(v66);
          _os_log_debug_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Encode frame with RTP timestamp=%d", &buf, 0x22u);
        }
      }

      if (*(v14 + 793) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          buf = *(v47 + 40);
          CMTimeGetSeconds(&buf);
          LODWORD(buf.value) = 136316162;
          OUTLINED_FUNCTION_24_4();
          v86 = 3981;
          v87 = 2048;
          *v88 = v56;
          *&v88[8] = v57;
          *v89 = v58;
          _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timestamp Alignment: Encode Host Time = %f, RTP timestamp = %08X", &buf, 0x2Cu);
        }
      }

      v59 = 2148007957;
      ++*(v14 + 1348);
      memcpy(v84, v47, sizeof(v84));
      if (a8)
      {
        v60 = a8[2];
        if (v60 != 0xFFFFFFFFLL)
        {
          v59 = (*(*a8 + 32))(v60, v47);
        }
      }

      if (*(v13 + 221) == 1)
      {
        VCVideoHardwareDumpCollector_RecordEncodedFrame(*(a1 + 23856), v84);
      }

      if ((v59 & 0x80000000) != 0)
      {
        if (v59 == -2146959339 || v59 == -2146959358)
        {
          v62 = *(v47 + 120);
          if (v62)
          {
            free(v62);
          }

          VCMemoryPool_Free(*(a1 + 18112), v47);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v63 = VRTraceErrorLogLevelToCSTR();
          v64 = *MEMORY[0x1E6986650];
          if (OUTLINED_FUNCTION_34())
          {
            LODWORD(buf.value) = 136315906;
            *(&buf.value + 4) = v63;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "_VideoTransmitter_EncodeSingleImageVideo";
            HIWORD(buf.epoch) = 1024;
            v86 = 3998;
            v87 = 1024;
            *v88 = v59;
            _os_log_error_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VideoTransmitter_EncodeSingleImageVideo failed with restlu=%x", &buf, 0x22u);
          }
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v67 = VRTraceErrorLogLevelToCSTR();
      v68 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_34())
      {
        LODWORD(buf.value) = 136315650;
        *(&buf.value + 4) = v67;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_VideoTransmitter_EncodeSingleImageVideo";
        HIWORD(buf.epoch) = 1024;
        v86 = 3955;
        _os_log_error_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate encoding arguments", &buf, 0x1Cu);
      }
    }

    v59 = 0;
  }

  CVPixelBufferRelease(texture);
  CVPixelBufferRelease(v19);
  return v59;
}