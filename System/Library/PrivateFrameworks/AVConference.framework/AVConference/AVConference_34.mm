void _VCRateControlAlgorithmLowLatencyContinuousTier_DoRateControl_cold_1(uint64_t a1, int *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "_VCRateControlAlgorithmLowLatencyContinuousTier_DoRateControl";
  v8 = 1024;
  v9 = 112;
  v10 = 1024;
  v11 = v3;
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, a3, a3, "VCRC [%s] %s:%d This algorithm does not support statistics type=%d to do rate control", &v4);
}

void VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithNWConnectionStatistics_cold_1(int *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithNWConnectionStatistics";
      v10 = 1024;
      v11 = 405;
      v12 = 1024;
      v13 = v5;
      OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v3, v4, "VCRC [%s] %s:%d wrong type=%d of statistics message is processed by VCRateControl", &v6);
    }
  }
}

void VCRateControlSmartBrake_ResetState_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void VCRateControlSmartBrake_ResetState_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 464;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d smartBrake is NULL", v1, 0x1Cu);
}

void VCMediaStreamSynchronizer_updateDestinationNTPTime_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaStreamSynchronizer [%s] %s:%d synchronizer=nil", v2, v3, v4, v5, v6);
}

void VCMediaStreamSynchronizer_scheduleDestinationPlaybackWithRTPTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaStreamSynchronizer [%s] %s:%d synchronizer=nil", v2, v3, v4, v5, v6);
}

void VCMediaStreamSynchronizer_resetDestinationState_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaStreamSynchronizer [%s] %s:%d synchronizer=nil", v2, v3, v4, v5, v6);
}

void VCMediaStreamSynchronizer_setDestinationAlarmHandler_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaStreamSynchronizer [%s] %s:%d synchronizer=nil", v2, v3, v4, v5, v6);
}

void _VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal_cold_1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v1, v2, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: destination info not ready", v3, *v4, "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal" >> 16, v5);
}

void _VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal_cold_2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v1, v2, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: source info not ready", v3, *v4, "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal" >> 16, v5);
}

void VCMediaStreamSynchronizer_setSourcePlayoutTimeUpdatedHandler_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCMediaStreamSynchronizer [%s] %s:%d synchronizer is nil", v2, v3, v4, v5, v6);
}

uint64_t VCPacketInitialize(void *a1)
{
  if (!a1)
  {
    return 2150957057;
  }

  bzero(a1, 0xA8uLL);
  return 0;
}

uint64_t VCPacketInvalidate(uint64_t *a1)
{
  result = 2150957057;
  if (a1)
  {
    if (a1[20])
    {
      return 2150957118;
    }

    else
    {
      result = *a1;
      if (*a1)
      {
        CFRelease(result);
        result = 0;
        *a1 = 0;
      }
    }
  }

  return result;
}

void VCRealTimeThread_Initialize_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  v5 = 86;
  v6 = v1;
  v7 = 86;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRealTimeThread.c:%d: Failed to start the thread", v3, 0x22u);
}

void VCRealTimeThread_Initialize_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate real time thread", v2, v3, v4, v5, v6);
}

void VCRealTimeThread_ChangeState_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void VCRealTimeThread_Finalize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d called with NULL context!", v2, v3, v4, v5, v6);
}

void VCRealTimeThread_Start_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d called with NULL context!", v2, v3, v4, v5, v6);
}

void VCRealTimeThread_Stop_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d called with NULL context!", v2, v3, v4, v5, v6);
}

void VCRealTimeThread_ThreadProc_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

BOOL _VCStreamInputUtil_EncodeSampleBufferAttachments(CMAttachmentBearerRef target, void *a2)
{
  v3 = 1;
  v4 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], target, 1u);
  if (v4)
  {
    v5 = v4;
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    v3 = v6 != 0;
    if (v6)
    {
      v7 = v6;
      xpc_dictionary_set_value(a2, "VCStreamInputSampleBufferAttachments", v6);
      xpc_release(v7);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24();
        _os_log_error_impl(v9, v10, v11, v12, v13, 0x1Cu);
      }
    }

    CFRelease(v5);
  }

  return v3;
}

uint64_t _VCStreamInputUtil_DecodeSampleBufferAttachments(void *a1)
{
  result = xpc_dictionary_get_value(a1, "VCStreamInputSampleBufferAttachments");
  if (result)
  {
    result = _CFXPCCreateCFObjectFromXPCObject();
    if (!result)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_34())
        {
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_9_0();
          _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
        }
      }

      return 0;
    }
  }

  return result;
}

void VCStreamInputUtil_EncodeFormatDescription_cold_1(void *a1)
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

  xpc_release(a1);
}

void VCStreamInputUtil_EncodeFormatDescription_cold_2()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_AddFormatDescription_cold_1(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddFormatDescription_cold_2(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddFormatDescription_cold_3()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddFormatDescription_cold_4()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddFormatDescription_cold_5()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddFormatDescription_cold_6()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddFormatDescription_cold_7(uint64_t a1, int a2)
{
  FourccToCStr(a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_1()
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

  OUTLINED_FUNCTION_6_27();
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_2()
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

  OUTLINED_FUNCTION_6_27();
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_3()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_4()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_5()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_6()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_7()
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

  OUTLINED_FUNCTION_6_27();
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_8()
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

  OUTLINED_FUNCTION_6_27();
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_9()
{
  OUTLINED_FUNCTION_11_0();
  *v2 = v1;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  CFRelease(v0);
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_10()
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
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_11()
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
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_13()
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

  OUTLINED_FUNCTION_6_27();
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_14()
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

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_EncodeSampleBuffer_cold_15()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_16()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_17()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_18()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_19()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_20()
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

void VCStreamInputUtil_EncodeSampleBuffer_cold_21()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_1()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_2()
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

  OUTLINED_FUNCTION_6_27();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_3()
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

  OUTLINED_FUNCTION_6_27();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_4()
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

  OUTLINED_FUNCTION_6_27();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_5()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_6()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_7()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_8()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_9()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_EncodeDataSampleBuffer_cold_10()
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

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeFormatDescription_cold_1()
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

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeFormatDescription_cold_2()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_3()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCStreamInputUtil_DecodeFormatDescription_cold_5()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCStreamInputUtil_DecodeFormatDescription_cold_7()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_8()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCStreamInputUtil_DecodeFormatDescription_cold_10()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_11()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_12()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_13()
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

void VCStreamInputUtil_DecodeFormatDescription_cold_14()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCStreamInputUtil_ReadUint32Value_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_ReadUint32Value_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_1()
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

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve the time", v2, v3, v4, v5, v6);
    }
  }
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve the time", v2, v3, v4, v5, v6);
    }
  }
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_4()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_5()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_6()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_8()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_9()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_12_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not recreate sample buffer from xpcDictionary. status=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_10()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create the tagged buffer group", v2, v3, v4, v5, v6);
    }
  }
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_12()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_13()
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

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_14()
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

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_15()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_16()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_12_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not recreate sample buffer from xpcDictionary. status=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

void VCStreamInputUtil_DecodeSampleBuffer_cold_17()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_18()
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

void VCStreamInputUtil_DecodeSampleBuffer_cold_19(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 853;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Incompatible media type", &v2, 0x1Cu);
}

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_1(int a1, const __CFAllocator *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error creating CMBlockBufferRef from CFData. status=%d", &v8, 0x22u);
    }
  }

  CFAllocatorDeallocate(a2, a3);
}

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_2()
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

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_3()
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

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_4()
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

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_12_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not recreate sample buffer from xpcDictionary: %d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_6(const void *a1)
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

  CFRelease(a1);
}

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_7()
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

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_8()
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

void _VCStreamInputUtil_DecodeDataSampleBuffer_cold_9()
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

void _VCStreamInputUtil_AddUint32Value_cold_1()
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

void _VCStreamInputUtil_AddUint32Value_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddExtensions_cold_1()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_EncodePixelBuffer_cold_1()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_EncodePixelBuffer_cold_2()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_EncodePixelBuffer_cold_3()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_EncodePixelBuffer_cold_4()
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

  OUTLINED_FUNCTION_18();
}

void _VCStreamInputUtil_AddTime_cold_1()
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

void _VCStreamInputUtil_AddTime_cold_2()
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

  OUTLINED_FUNCTION_18();
}

void VCRateControlBandwidthEstimator_SetRadioAccessTechnology_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimator=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimator_SetEstimatedBandwidth_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimator=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimator_SetFastSuddenBandwidthDetectionEnabled_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimator=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimator_SetL4SHighDataRateEnabled_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimator=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimator_CalculateBandwidthEstimationWithSendTime_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimator=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimator_CalculateBandwidthEstimation_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimator=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimator_CalculateBandwidthEstimationForBandwidthSample_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimator=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_BandwidthEstimator_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_DeregisterBandwidthEstimator_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_EstimatedBandwidthWithArrivalTime_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_EstimatedBandwidthUncappedWithArrivalTime_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_SetEstimatedBandwidth_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_SetRadioAccessTechnology_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_SetFastSuddenBandwidthDetectionEnabled_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_SetL4SHighDataRateEnabled_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCRateControlBandwidthEstimatorMap_EnableBWELogDump_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. estimatorMap=%p", v2, v3, v4, v5, v6);
}

void VCFECHeader_GetIsParityPacket_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Invalid FEC header version=%d", v2, v3, v4, v5, v6);
}

void VCFECHeader_GetIsParityPacket_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetIsParityPacket_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Invalid FEC header version=%d", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetIsParityPacket_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetStartPosition_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCFECHeader_SetStartPosition_cold_2()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Invalid FEC header version=%d", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetStartPosition_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetPosition_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCFECHeader_SetPosition_cold_2()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Invalid FEC header version=%d", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetPosition_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetNumberOfParityPackets_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCFECHeader_SetNumberOfParityPackets_cold_2()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Invalid FEC header version=%d", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetNumberOfParityPackets_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetRedundantBitsForPayloadSize_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCFECHeader_SetRedundantBitsForPayloadSize_cold_2()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCFECHeader_SetRedundantBitsForPayloadSize_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetParitySequenceNum_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCFECHeader_SetParitySequenceNum_cold_2()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCFECHeader_SetParitySequenceNum_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetFecLevel_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] FEC header version=%d does not support FEC Level field", v2, v3, v4, v5, v6);
}

void VCFECHeader_SetFecLevel_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_GetIsLastGroup_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Invalid FEC header version=%d", v2, v3, v4, v5, v6);
}

void VCFECHeader_GetIsLastGroup_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void VCFECHeader_GetFecLevelWithTotalPackets_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCFECHeader_GetFecLevelWithTotalPackets_cold_2()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_10_23(&dword_1DB56E000, v0, v1, " [%s] %s:%d [%p] Invalid FEC header version=%d", v2, v3, v4, v5, v6);
}

void VCFECHeader_GetFecLevelWithTotalPackets_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fecHeader pointer is nil!", v2, v3, v4, v5, v6);
}

void _VCFECHeader_WriteToBuffer_V0_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_23_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V0_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_12_9();
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

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V0_cold_3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_12_9();
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

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V0_cold_4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_12_9();
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

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V1_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_23_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V1_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_12_9();
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

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V1_cold_3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_12_9();
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

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V2_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_23_8();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V2_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_12_9();
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

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

void _VCFECHeader_WriteToBuffer_V2_cold_3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_12_9();
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

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

void VCFECHeader_WriteToBuffer_cold_1()
{
  OUTLINED_FUNCTION_17_15(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCFECHeader_WriteToBuffer_cold_2()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_27_8();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  *v0 = 21;
}

void VCFECHeader_WriteToBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d size pointer NULL", v2, v3, v4, v5, 2u);
    }
  }
}

void VCFECHeader_WriteToBuffer_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d output buffer pointer NULL", v2, v3, v4, v5, 2u);
    }
  }
}

void VCTimescalePSOLA_PreEmptiveExpand_cold_1(int a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "VCTimescalePSOLA_PreEmptiveExpand";
      v10 = 1024;
      v11 = 147;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Signal Correlation check failed", &v6, 0x1Cu);
    }
  }

  *a2 = a1;
}

void VCAudioBufferAllocatorCreate_cold_1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v10 = a1;
      v11 = v6;
      v12 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to compute the size. Requested buffer size=%zu allocator size=%zu!", &v7, 0x30u);
    }
  }
}

void VCAudioBufferAllocatorCreate_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 48;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate the context!", &v2, 0x1Cu);
    }
  }
}

void VCAudioBufferAllocatorCreate_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315906;
      v3 = v0;
      v4 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v5 = 0;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d After byte-alignment, bufferSize=%zu is zero!", &v2, 0x26u);
    }
  }
}

void VCAudioBufferAllocatorCreate_cold_4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 146;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create the allocator info!", &v2, 0x1Cu);
}

void VCAudioBufferAllocatorCreate_cold_5(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      v5 = 132;
      v6 = v3;
      v7 = 0;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid buffer count=%u!", v4, 0x22u);
    }
  }

  *a1 = 0;
}

void VCAudioBufferAllocatorCreate_cold_6(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v4 = 0;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid buffer size=%zu!", v3, 0x26u);
    }
  }

  *a1 = 0;
}

void VCAudioBufferAllocatorCleanupBuffer_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 63;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Audio buffer corruption!", &v2, 0x1Cu);
}

double VCFECFeedbackAnalyzer_GetVPLR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 64);
    if (v9)
    {
      VRLogfilePrintWithTimestamp(v9, "Aggregate PLR:\t%.2f%%\tEnvelope PLR:\t%.2f%%\n", a3, a4, a5, a6, a7, a8, *(a1 + 112));
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = v11;
        v15 = 2080;
        v16 = "VCFECFeedbackAnalyzer_GetVPLR";
        v17 = 1024;
        v18 = 534;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d NULL fecAnalyzer", buf, 0x1Cu);
      }
    }

    return NAN;
  }

  return v8;
}

void _VCFECFeedbackAnalyzer_Configure_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = -2144141311;
}

void _VCFECFeedbackAnalyzer_Configure_cold_2(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2144141311;
}

void VCFECFeedbackAnalyzer_Create_cold_2()
{
  OUTLINED_FUNCTION_3_0();
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

void VCFECFeedbackAnalyzer_Create_cold_3()
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

void VCFECFeedbackAnalyzer_Create_cold_4()
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

void VCFECFeedbackAnalyzer_Create_cold_5()
{
  OUTLINED_FUNCTION_3_0();
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

void VCFECFeedbackAnalyzer_Create_cold_6()
{
  OUTLINED_FUNCTION_3_0();
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

void VCFECFeedbackAnalyzer_ProcessFeedback_cold_1()
{
  OUTLINED_FUNCTION_3_0();
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

void VCFECFeedbackAnalyzer_GetFECLevelVector_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 519;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d output not ready", &v2, 0x1Cu);
}

void VCFECFeedbackAnalyzer_GetFECLevelVector_cold_2()
{
  OUTLINED_FUNCTION_3_0();
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

void VCFECFeedbackAnalyzer_GetFECLevelVector_cold_3()
{
  OUTLINED_FUNCTION_3_0();
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

void VCFECFeedbackAnalyzer_CleanHistory_cold_1()
{
  OUTLINED_FUNCTION_3_0();
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

void VCFECFeedbackAnalyzer_UpdateTargetBitrate_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 560;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d NULL fecAnalyzer", &v2, 0x1Cu);
    }
  }
}

void RTPProcessHEVCFragmentationHeader_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received decoding order is %hu", v2, v3, v4, v5);
}

void RTPProcessHEVCFragmentationHeader_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  LOWORD(v8) = v0;
  HIWORD(v8) = v1;
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPLRP.c:%d: Invalid fragmentation unit length (%d)", v4, v5, v6, v7, v8);
}

void RTPProcessHEVCFragmentationHeader_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  LOWORD(v8) = v0;
  HIWORD(v8) = v1;
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPLRP.c:%d: Invalid fragmentation unit length (%d)", v4, v5, v6, v7, v8);
}

void RTPProcessHEVCPacket_cold_1()
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
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  *v0 = 0;
}

void RTPProcessHEVCPacket_cold_2()
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

void RTPProcessHEVCPacket_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received decoding order is %hu", v2, v3, v4, v5);
}

void RTPProcessHEVCPacket_cold_4()
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

void RTPProcessHEVCPacket_cold_5()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  LOWORD(v6) = 0;
  HIWORD(v6) = v0;
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPLRP.c:%d: Invalid fragmentation unit length (%d)", v3, v4, v5, 243, v6);
}

void RTPProcessHEVCPacket_cold_6()
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
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  *v0 = 0;
}

void RTPProcessHEVCPacket_cold_7()
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

void RTPProcessHEVCPacket_cold_8()
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

void RTPProcessHEVCPacket_cold_9()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_14();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }

  *v0 = v1;
}

void RTPProcessHEVCPacket_cold_10()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_14();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

void RTPProcessHEVCPacket_cold_11()
{
  OUTLINED_FUNCTION_16_20();
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

  OUTLINED_FUNCTION_7_0();
}

void RTPProcessHEVCPacket_cold_12()
{
  OUTLINED_FUNCTION_16_20();
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

  OUTLINED_FUNCTION_7_0();
}

void RTPProcessHEVCPacket_cold_13()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received decoding order is %hu", v2, v3, v4, v5);
}

void RTPProcessHEVCPacket_cold_14()
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
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  *v0 = 0;
}

void RTPProcessHEVCPacket_cold_15()
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

void RTPProcessHEVCPacket_cold_16()
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

void RTPProcessHEVCPacket_cold_17()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_14();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

void RTPProcessHEVCPacket_cold_18()
{
  OUTLINED_FUNCTION_16_20();
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

  OUTLINED_FUNCTION_7_0();
}

uint64_t VCRateControlMachineLearningInference_Query(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2;
  }

  v5 = *(a1 + 184);
  if (v5 == 1)
  {
    **(a1 + 216) = *a2;
    v7 = *(a1 + 216);
    v7[1] = a2[1];
    v7[2] = a2[2];
    v7[3] = a2[3];
    v7[4] = a2[4];
    v7[5] = a2[5];
    v7[6] = a2[6];
    v7[7] = a2[7];
    v7[8] = a2[8];
    v7[9] = a2[9];
    v7[10] = a2[10];
    v7[11] = a2[11];
    v7[12] = a2[12];
    v7[13] = a2[13];
    v7[14] = a2[14];
    v7[15] = a2[15];
    v7[16] = a2[16];
    v7[17] = a2[17];
    **(a1 + 224) = **(a1 + 224) + 1.0;
    v8 = e5rt_execution_stream_execute_sync();
    last_error_message = e5rt_get_last_error_message();
    if (v8)
    {
      v24 = last_error_message;
      v6 = 2147483656;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v27 = 136316162;
          v28 = v25;
          v29 = 2080;
          v30 = "VCRateControlMachineLearningInference_Query";
          v31 = 1024;
          OUTLINED_FUNCTION_4_24();
          v32 = v24;
          _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRateControlMachineLearningInference.m:%d: %s\n", &v27, 0x2Cu);
        }
      }
    }

    else
    {
      v10 = *(a1 + 232);
      *(a1 + 2800) = 0;
      v11 = 0.0;
      v12 = 638;
      v13 = a1;
      do
      {
        v14 = *v10++;
        *(v13 + 248) = expf(v14);
        v11 = v11 + *(v13 + 248);
        v13 += 4;
        --v12;
      }

      while (v12);
      v15 = 638;
      v16 = a1;
      do
      {
        v17 = *(v16 + 248) / v11;
        *(v16 + 248) = v17;
        v18 = *(v16 + 248);
        *(a1 + 2800) = *(a1 + 2800) - (v18 * logf(v18));
        v16 += 4;
        --v15;
      }

      while (v15);
      v19 = arc4random();
      v20 = 0;
      v21 = a1 + 248;
      v22 = 0.0;
      do
      {
        v22 = v22 + *(v21 + 4 * v20);
        if (v19 / 4294967300.0 <= v22)
        {
          break;
        }

        ++v20;
      }

      while (v20 != 638);
      *(a3 + 4) = (10000 * v20);
      v6 = 0;
      *(a3 + 8) = logf(*(v21 + 4 * v20));
      *(a3 + 12) = *(a1 + 2800);
      *a3 = **(a1 + 240);
    }
  }

  else if (v5 == 2)
  {
    return 4;
  }

  else
  {
    *(a3 + 4) = *a2;
    *a3 = -8388608;
    *(a3 + 8) = 4286578688;
    return 17;
  }

  return v6;
}

void VCAudioBufferList_Allocate_cold_1(uint64_t *a1)
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

  VCAudioBufferList_Destroy(a1);
}

void VCAudioBufferList_Allocate_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate buffer list", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioBufferList_Allocate_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_ZeroMemory_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_InvalidateStats_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_ApplyGain_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No support for interleaved audio channels", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_ApplyGain_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_Mix_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_Mix_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Formats don't match", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_Mix_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No support for interleaved audio channels", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_MixToMono_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_MixToMono_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "VCAudioBufferList_MixToMono";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d Invalid number of source buffers, mNumberBuffers=%u", *v3, *&v3[8], "VCAudioBufferList_MixToMono" >> 16, 333);
}

void VCAudioBufferList_MixToMono_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No support for non Float formats", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_MixToMono_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No support for interleaved audio channels", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_MonoToMultiChannel_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_MonoToMultiChannel_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid format, source and destination do not match with the exception of mChannelsPerFrame", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_MonoToMultiChannel_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No support for interleaved audio channels", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetSampleFormat_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_AppendSamples_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_AppendSamples_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 428;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Unable to append all the source samples!", v1, 0x1Cu);
}

void VCAudioBufferList_AppendSilence_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 468;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Unable to append all the source samples!", v1, 0x1Cu);
}

void VCAudioBufferList_AppendSilence_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_ReplaceSamples_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_Shift_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_Convert_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_Convert_cold_2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "VCAudioBufferList_Convert";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d failed with %d", v3, *v4, "VCAudioBufferList_Convert" >> 16, v5);
}

void VCAudioBufferListConverterCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d One of the pointers passed to AudioConverterInput callback is NULL", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetAudioBufferList_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetSizedBufferAtIndex_cold_1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "VCAudioBufferList_GetSizedBufferAtIndex";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d invalid input parameter. Index=%u", v3, *v4, "VCAudioBufferList_GetSizedBufferAtIndex" >> 16, v5);
}

void VCAudioBufferList_Reset_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_ResetDataPointers_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_ResampleAppend_cold_1(uint64_t a1, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v3;
      OUTLINED_FUNCTION_0();
      v7 = 767;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d converter failed", &v5, 0x1Cu);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_18();
}

void VCAudioBufferList_InvalidateAveragePower_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetAudioTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetHostTimeJumpSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetHostTime_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetVoiceActivity_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_SetVoiceActivity_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetSampleCount_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetSampleCapacity_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetChannelCount_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_SetSilenceInQueue_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_IsSilenceInQueue_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetAveragePower_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_SetAveragePower_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetSerializedSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_CreateSampleBufferWithFormatWithAllocator_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioBufferList_CreateSampleBufferWithFormatWithAllocator_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioBufferList_GetPriority_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_SetPriority_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_InvalidateNetworkTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_SetNetworkTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetNetworkTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_SetSamplesAreLate_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetSamplesAreLate_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_GetVoiceProbability_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCAudioBufferList_SetVoiceProbability_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid input parameter", v2, v3, v4, v5, v6);
}

void VCNetworkAgentCell_AddCellularAssertion_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to overwrite network status bar icon", v2, v3, v4, v5, v6);
}

void VCNetworkAgentCell_RemoveCellularAssertion_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to remove overwrite network status bar icon", v2, v3, v4, v5, v6);
}

void VCAudioUnitMockMicThreadProc_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "VCAudioUnitMockMicThreadProc";
  v4 = 1024;
  v5 = 211;
  v6 = v0;
  v7 = "com.apple.VideoConference.VCAudioUnitMock.MicThread";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d AudioUnitMock Mic thread=%s terminated", v2, 0x26u);
}

void AUIOCreateHandle_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOCreateHandle_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOCreateHandle_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOCreateHandle_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOCreateHandle_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _AUIOMicProc()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AUIO [%s] %s:%d Corrupted metadata!", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AUIO [%s] %s:%d getting called with no inRefCon!", v2, v3, v4, v5, v6);
}

void AUIOSetupSystemAudioTap()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_2(&dword_1DB56E000, v0, v1, "AUIO [%s] %s:%d AUIO=%p failed to allocate the audio tap", v2, v3, v4, v5, 2u);
    }
  }
}

{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_2(&dword_1DB56E000, v0, v1, "AUIO [%s] %s:%d AUIO=%p failed to allocate the audio tap description", v2, v3, v4, v5, 2u);
    }
  }
}

void AUIOSetupRendererCallback()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOSuspend_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AUIOSuspend_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AUIOSuspend_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AUIO [%s] %s:%d AUIO Unit is not found during reinitialization", v2, v3, v4, v5, v6);
}

void AUIOResume_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOResume_cold_2(int a1, _DWORD *a2)
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
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      v9 = 1804;
      v10 = v6;
      v11 = 1804;
      v12 = v6;
      v13 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AUIO/AUIO.mm:%d: Failed to restart the packet thread result=%x", &v7, 0x28u);
    }
  }

  *a2 = a1;
}

void _AUIOStartPacketThread()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void AUIOSetupFormats_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void AUIOSetupFormats_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void AUIOSetupFormats_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void AUIOSetupFormats_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOSetupFormats_cold_5()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOSetupFormats_cold_6()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AUIOSetupFormats_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AUIOSetupFormats_cold_8(uint64_t a1, int *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  FourccToCStr(*a2);
  v9 = 136316162;
  v10 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7();
  v11 = 1699;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AudioUnitInitialize failed. err=%d (%s)", &v9, 0x2Cu);
}

void AUIOSetupFormats_cold_9(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 354;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d Failed to allocate the audio injector", &v6, 0x1Cu);
    }
  }

  *a2 = a1;
}

void AUIOSetupFormats_cold_10(void *a1)
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
      v6 = 333;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d Failed to allocate the canned audio injector config", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

void AUIOStart_cold_1(uint64_t a1, int a2, _DWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316418;
      v10 = v6;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      v11 = 2038;
      v12 = v8;
      v13 = 2038;
      v14 = 2048;
      v15 = a1;
      v16 = v8;
      v17 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AUIO/AUIO.mm:%d: AUIO=%p Failed to start the packet thread result=%x", &v9, 0x32u);
    }
  }

  *a3 = a2;
}

void AUIOStop_cold_1(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 48) && *(a1 + 233))
  {
    VCAudioUnit_AudioOutputUnitStop();
    *(a1 + 233) = 0;
  }

  v4 = *(a1 + 576);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 576);
    if (v5)
    {
      dispatch_release(v5);
      *(a1 + 576) = 0;
    }
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    PacketThread_Destroy(v6);
    *(a1 + 480) = 0;
  }

  *a2 = 0;
}

void AUIOSetSpatialMetadata_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AUIORegisterMutedTalkerNotificationEventListener_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AUIOSetDynamicDuckerVolume_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _AUIOSpkrProc()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AUIO [%s] %s:%d getting called with no inRefCon!", v2, v3, v4, v5, v6);
}

void _AUIOSpkrProcGKS()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AUIO [%s] %s:%d getting called with no inRefCon!", v2, v3, v4, v5, v6);
}

void VCCVOExtensionUtils_GetCVOFromPixelBuffer_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 209;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d pixelBuffer is NULL", &v2, 0x1Cu);
}

void VCCVOExtensionUtils_AttachCVOToPixelBuffer_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 224;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d pixelBuffer is NULL", &v2, 0x1Cu);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d input sample count = %d", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d input timestamp %d", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d input audio bytes %d", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d append sample count %d", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_5(uint64_t a1, uint64_t a2)
{
  VCAudioBufferList_GetTimestamp(*(a2 + 384));
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x22u);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d append sample count %d", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_7()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 442;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d stopped processing audio packets", v1, 0x1Cu);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_8()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 437;
  OUTLINED_FUNCTION_30_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d nil context", v2);
}

void _VCSystemAudioCapture_handleInputBuffer_cold_9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void _VCSystemAudioCapture_CopyOutputBuffer_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_38_5(&dword_1DB56E000, v0, v1, " [%s] %s:%d can not copy %d audio samples", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_CopyOutputBuffer_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d can not copy %d audio samples", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_CopyOutputBuffer_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_38_5(&dword_1DB56E000, v0, v1, " [%s] %s:%d can not copy %d audio samples", v2, v3, v4, v5);
}

void _VCSystemAudioCapture_CopyOutputBuffer_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d can not copy %d audio samples", v2, v3, v4, v5);
}

void VCVideoStream_DidReceiveSampleBuffer_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v4 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d VCVideoStream[%p] Failed to enqueue remote frame!", v3, 0x26u);
    }
  }
}

void VCVideoStream_DidReceiveSampleBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCVideoStream_DidReceiveSampleBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCVideoStream_DidReceiveRemoteFrame_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCVideoStream_DidReceiveRemoteFrame_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d VCVideoStream: no image queue/layer to draw to... This should be reported!", v2, v3, v4, v5, v6);
}

void _VCVideoStream_DidReceiveRemoteFrame_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCVideoStreamNWConnectionNotificationCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d Callback executed with context being nil", v2, v3, v4, v5, v6);
}

void _VCVideoStreamNWConnectionPacketEventCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d Callback executed with context being nil", v2, v3, v4, v5, v6);
}

void _VCVideoStreamVTPNotificationCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d No callID provided for stream!", v2, v3, v4, v5, v6);
}

void VCVideoStream_SetExternalOutputVideoLatency_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d videoStream is NULL", v2, v3, v4, v5, v6);
}

void VCMediaStreamGroup_ExternalRenderLatency_cold_1(void *a1)
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

void VCNACKGenerator_GetStatistics(uint64_t a1, __CFDictionary *a2)
{
  v170 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v117 = a1 + 368640;
    v13 = 17396;
    v14 = 0.0;
    v15 = 64;
    v16 = 5696;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    do
    {
      _X4 = a1 + v4;
      v21 = a1 + v16;
      __asm { PRFM            #0, [X4,#0x5A20] }

      v26 = *(a1 + v4 + 5704);
      v27 = *(a1 + v16 + 48);
      if (v26)
      {
        v28 = v27 / v26;
        if (v28 >= v18)
        {
          v18 = v28;
        }
      }

      else if (v18 <= 0.0)
      {
        v18 = 0.0;
      }

      v29 = *(_X4 + 5712);
      v30 = *(_X4 + 5720);
      v31 = *(_X4 + 5752);
      v32 = *(_X4 + 5728);
      if (v26 == v29)
      {
        if (v19 <= 0.0)
        {
          v19 = 0.0;
        }
      }

      else
      {
        v33 = v31 / (v26 - v29);
        if (v33 >= v19)
        {
          v19 = v33;
        }
      }

      _X6 = _X4 + 23136;
      _X5 = a1 + v13;
      v36 = a1 + v4;
      __asm { PRFM            #0, [X5] }

      v38 = *(a1 + v4 + 20);
      __asm { PRFM            #0, [X6] }

      v40 = *(a1 + v4 + 5760);
      if (v40)
      {
        v41 = *(v36 + 5776);
        if ((v38 - v41) < 0x7FFFu && v38 < v41)
        {
          v41 |= 0xFFFF0000;
        }

        v9 = v9 + v38 - v41 + 1;
        v10 += v40;
        v11 += *(v36 + 5768);
      }

      v5 += *v21;
      v6 += v26;
      v7 += v29;
      v8 += v30;
      v14 = v27 + v14;
      *(v21 + 32) = 0;
      v17 = v31 + v17;
      v12 += v32;
      *v21 = 0uLL;
      *(v21 + 16) = 0uLL;
      *(a1 + v16 + 48) = 0uLL;
      *(a1 + v16 + 64) = 0uLL;
      *(v36 + 5776) = v38;
      v4 += 5792;
      v13 += 5792;
      v16 += 5792;
      --v15;
    }

    while (v15);
    *(v117 + 2460) = v18;
    *(v117 + 2464) = v19;
    if (v10)
    {
      HIDWORD(v113) = v9;
      valuePtr = *&v8;
      allocator = *MEMORY[0x1E695E480];
      v43 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(a2, @"UniqueNacksSent", v43);
      CFRelease(v43);
      valuePtr = *&v5;
      v44 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(a2, @"NacksSent", v44);
      CFRelease(v44);
      valuePtr = *&v6;
      v45 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(a2, @"NacksFulfilled", v45);
      CFRelease(v45);
      valuePtr = *&v7;
      v46 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(a2, @"NacksFulfilledOnTime", v46);
      CFRelease(v46);
      v47 = 0.0;
      v48 = 0.0;
      if (v5)
      {
        v48 = v14 / v5;
      }

      HIDWORD(v109) = v10;
      LODWORD(v113) = v11;
      valuePtr = v48;
      v49 = CFNumberCreate(allocator, kCFNumberFloat32Type, &valuePtr);
      OUTLINED_FUNCTION_14_23(v49, @"NacksAvgResponseTime");
      CFRelease(v49);
      valuePtr = *(v117 + 2460);
      v50 = CFNumberCreate(allocator, kCFNumberFloat32Type, &valuePtr);
      OUTLINED_FUNCTION_14_23(v50, @"NacksMaxResponseTime");
      CFRelease(v50);
      if (v6 != v7)
      {
        v47 = v17 / (v6 - v7);
      }

      valuePtr = v47;
      v51 = CFNumberCreate(allocator, kCFNumberFloat32Type, &valuePtr);
      OUTLINED_FUNCTION_14_23(v51, @"NacksLateTime");
      CFRelease(v51);
      valuePtr = *(v117 + 2464);
      v52 = CFNumberCreate(allocator, kCFNumberFloat32Type, &valuePtr);
      OUTLINED_FUNCTION_14_23(v52, @"NacksMaxLateTime");
      CFRelease(v52);
      *&v130 = 0.0;
      v131 = 0.0;
      Bitrate = _VCNACKGenerator_GetBitrate(a1, &v131, &v130, *(v117 + 2492));
      if ((Bitrate & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_15_16(v131 / 1000.0);
        v62 = CFNumberCreate(allocator, kCFNumberIntType, v61);
        OUTLINED_FUNCTION_14_23(v62, @"NacksMediaBitRate");
        CFRelease(v62);
        OUTLINED_FUNCTION_15_16(*&v130 / 1000.0);
        v64 = CFNumberCreate(allocator, kCFNumberIntType, v63);
        OUTLINED_FUNCTION_14_23(v64, @"NacksRTXMediaBitRate");
        CFRelease(v64);
      }

      if (v9)
      {
        v65 = v9;
        if (1.0 - v10 / v9 >= 0.0)
        {
          v66 = 1.0 - v10 / v9;
        }

        else
        {
          v66 = 0.0;
        }

        if (1.0 - (v10 + v11) / v65 >= 0.0)
        {
          v67 = 1.0 - (v10 + v11) / v65;
        }

        else
        {
          v67 = 0.0;
        }

        v68 = v12 / v65;
      }

      else
      {
        v67 = 0.0;
        v66 = 0.0;
        v68 = 0.0;
      }

      v69 = v117;
      *(v117 + 2368) = v68;
      *(v117 + 2344) = v66;
      v70 = OUTLINED_FUNCTION_6_42(Bitrate, v54, v55, v56, v57, v58, v59, v60, fmin(v66, 1.0) * 10000.0, v105, v109, v113, v117, a2, allocator, v130, *&v131, SLODWORD(valuePtr));
      CFDictionaryAddValue(theDict, @"NacksPLRWithoutRTX", v70);
      CFRelease(v70);
      v79 = OUTLINED_FUNCTION_6_42(v71, v72, v73, v74, v75, v76, v77, v78, fmin(v67, 1.0) * 10000.0, v106, v110, v114, v118, theDict, allocatora, v130, *&v131, SLODWORD(valuePtr));
      CFDictionaryAddValue(theDicta, @"NacksPLRWithRTX", v79);
      CFRelease(v79);
      v88 = OUTLINED_FUNCTION_6_42(v80, v81, v82, v83, v84, v85, v86, v87, *(v69 + 2352) * 100.0, v107, v111, v115, v119, theDicta, allocatorb, v130, *&v131, SLODWORD(valuePtr));
      CFDictionaryAddValue(theDictb, @"NacksThrottleFactor", v88);
      CFRelease(v88);
      v97 = OUTLINED_FUNCTION_6_42(v89, v90, v91, v92, v93, v94, v95, v96, *(v69 + 2368) * 10000.0, v108, v112, v116, v120, theDictb, allocatorc, v130, *&v131, SLODWORD(valuePtr));
      CFDictionaryAddValue(theDictc, @"OutOfOrderRTX", v97);
      CFRelease(v97);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v98 = VRTraceErrorLogLevelToCSTR();
        v99 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(*(v121 + 2472), 0x8000100u);
          v101 = FourccToCStr(*(v121 + 2480));
          v102 = *(v121 + 2460);
          v103 = *(v121 + 2464);
          v104 = *(v121 + 2096);
          valuePtr = 4.8171e-34;
          v133 = v98;
          v134 = 2080;
          v135 = "VCNACKGenerator_GetStatistics";
          v136 = 1024;
          v137 = 309;
          v138 = 2048;
          v139 = a1;
          v140 = 2080;
          v141 = CStringPtr;
          v142 = 2080;
          v143 = v101;
          v144 = 2048;
          v145 = v5;
          v146 = 2048;
          v147 = v8;
          v148 = 2048;
          v149 = v6;
          v150 = 2048;
          v151 = v7;
          v152 = 2048;
          v153 = v48;
          v154 = 2048;
          v155 = v102;
          v156 = 2048;
          v157 = v47;
          v158 = 2048;
          v159 = v103;
          v160 = 1024;
          v161 = (v131 / 1000.0 + 0.5);
          v162 = 1024;
          v163 = (*&v130 / 1000.0 + 0.5);
          v164 = 2048;
          v165 = v66 * 100.0;
          v166 = 2048;
          v167 = v67 * 100.0;
          v168 = 2048;
          v169 = v104;
          _os_log_impl(&dword_1DB56E000, v99, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCNACKGenerator [%p] NACK health report participantID=%s streamGroupId=%s packetsNACKed=%lld uniquePacketsNACKed=%lld packetsFulfilled=%lld packetsFulfilledOnTime=%lld averageResponseTime=%2.4fs maxAvgResponseTime=%2.4fs averageLateTime=%2.4fs maxAvgLateTime=%2.4fs mediaBitRate=%ukbps retransmittedMediaBitRate=%ukbps plrWithoutRTX=%3.2f%% plrWithRTX=%3.2f%% rtt=%2.3fs", &valuePtr, 0xB4u);
        }
      }
    }
  }
}

uint64_t VCNACKGenerator_UpdatePlayoutRTPTimestamp(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    v3 = a1 + 5792 * (a2 & 0x3F);
    if (*(v3 + 22) == 1 && *(v3 + 16) == a2)
    {
      v4 = 0;
      *(v3 + 5740) = a3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = 2152071169;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
      }
    }
  }

  return v4;
}

void _VCNACKGenerator_GetBitrate_cold_1(int a1, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      v7 = 220;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to compute summer bitrate for retransmitted media bytes", v6);
    }
  }

  *a2 = a1;
}

void _VCNACKGenerator_GetBitrate_cold_2(int a1, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      v7 = 224;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to compute summer bitrate for media frames bytes", v6);
    }
  }

  *a2 = a1;
}

void VCNACKGenerator_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCNACKGenerator_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCNACKGenerator_Create_cold_4()
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

void VCNACKGenerator_Create_cold_5()
{
  OUTLINED_FUNCTION_3_43();
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

void VCNACKGenerator_Create_cold_6()
{
  OUTLINED_FUNCTION_3_43();
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

void VCNACKGenerator_Create_cold_7()
{
  OUTLINED_FUNCTION_3_43();
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

void VCNACKGenerator_AddPacketInfo_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_8_35();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void VCNACKGenerator_AddPacketInfo_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_8_35();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

void VCNACKGenerator_AddPacketInfo_cold_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136316162;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_4();
  v5 = v1;
  OUTLINED_FUNCTION_8_35();
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCNACKGenerator[%p] Failed to get media packet count, err=%d", &v3, 0x2Cu);
}

void VCNACKGenerator_AddPacketInfo_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 660;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to get bit rate", &v3);
    }
  }
}

void VCNACKGenerator_AddPacketInfo_cold_5(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 720;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to check bit rate limits for NACK", &v3);
}

void VCNACKGenerator_AddPacketInfo_cold_6(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "_VCNACKGenerator_CheckBitrateLimits";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_4();
  v7 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Use cached canSendNACK, timeSinceLastCheck=%f", &v3, 0x26u);
}

void VCNACKGenerator_AddPacketInfo_cold_7()
{
  OUTLINED_FUNCTION_3_43();
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

void VCNACKGenerator_UpdateRTT_cold_1()
{
  OUTLINED_FUNCTION_3_43();
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

void VCNACKGenerator_SetRTXPacketDetectionEnabled_cold_1()
{
  OUTLINED_FUNCTION_3_43();
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

void _VCNACKGenerator_ShouldGenerateNACK_cold_1(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_10();
      v7 = v5;
      v8 = "_VCNACKGenerator_IsPastLateFrameRecovery";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_4();
      v9 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Dynamic NACK tuning disabled - incomplete frame buffer duration is not set", v6, 0x26u);
    }
  }

  *a2 = 0;
}

uint64_t VCSignalEncoder_EncodeFrame(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = MEMORY[0x1E6986650];
    if (*(a1 + 52) == 1)
    {
      CFDictionaryAddValue(Mutable, @"ForceKeyFrame", *MEMORY[0x1E695E4D0]);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        v6 = *v4;
        ErrorLogLevelForModule = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
        if (ErrorLogLevelForModule)
        {
          OUTLINED_FUNCTION_3_12();
          OUTLINED_FUNCTION_5_13();
          OUTLINED_FUNCTION_10_24();
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SignalEncoder[%p] Requesting kMSCEncoderSessionFramePropertyKey_ForceKeyFrame", buf, 0x26u);
        }
      }

      v7 = OUTLINED_FUNCTION_8_36(ErrorLogLevelForModule);
      if ((v7 & 0x80000000) == 0)
      {
        v8 = 0;
        *(a1 + 52) = 0;
LABEL_14:
        CFRelease(v3);
        return v8;
      }
    }

    else
    {
      v7 = OUTLINED_FUNCTION_8_36(Mutable);
      if ((v7 & 0x80000000) == 0)
      {
        v8 = 0;
        goto LABEL_14;
      }
    }

    v9 = v7;
    v8 = 2152595460;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v10 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v18 = 142;
        v19 = 2048;
        v20 = a1;
        v21 = v12;
        v22 = v9;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d SignalEncoder[%p] Failed to encode frame status=%d", buf, 0x2Cu);
      }
    }

    goto LABEL_14;
  }

  v8 = 2152529923;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      *buf = 136315906;
      v16 = v13;
      v17 = 2080;
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_10_24();
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d SignalEncoder[%p] Failed to create frameProperties", buf, 0x26u);
    }
  }

  return v8;
}

void VCSignalEncoder_Create_cold_2(int a1, CFTypeRef cf, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "VCSignalEncoder_Create";
      v11 = 1024;
      v12 = 105;
      v13 = 2048;
      v14 = cf;
      v15 = 1024;
      v16 = a3;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d SignalEncoder[%p] MSCEncoderSessionCreate failed with error=%i", &v7, 0x2Cu);
    }
  }

  CFRelease(cf);
}

void VCSignalEncoder_Create_cold_3(uint64_t a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "VCSignalEncoder_Create";
      v12 = 1024;
      v13 = 102;
      v14 = 2048;
      v15 = a1;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d SignalEncoder[%p] Failed to create encoder options dictionary", &v8, 0x26u);
    }
  }

  *a3 = -2142371837;
  *a2 = a1;
}

void VCSignalEncoder_Create_cold_4(const void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  CFRelease(a1);
}

void VCSignalEncoder_Create_cold_5()
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

void VCSignalEncoder_Create_cold_6()
{
  OUTLINED_FUNCTION_4_38();
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

void VCSignalEncoder_Create_cold_7()
{
  OUTLINED_FUNCTION_4_38();
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

void VCSignalEncoder_Create_cold_8()
{
  OUTLINED_FUNCTION_4_38();
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

void VCSignalEncoder_Create_cold_9()
{
  OUTLINED_FUNCTION_4_38();
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

void VCMemoryPool_Alloc_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCMemoryPool_Alloc";
  v6 = 1024;
  v7 = 194;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d parameter memory pool is NULL!", &v2, 0x1Cu);
}

void VideoScaler_FixedAspectRatioScaleAndPadPixelBuffer_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 95;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d CVPixelBufferPoolCreatePixelBuffer failed", &v2, 0x1Cu);
}

void VCVirtualAVCaptureDevice_OnVideoFrame_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "VCVirtualAVCaptureDevice_OnVideoFrame";
      v8 = 1024;
      v9 = 397;
      v10 = 2048;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create samplebuffer from pixelBuffer[%p]", &v4, 0x26u);
    }
  }
}

void VCVideoStreamSendGroup_OnVideoFrame_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 971;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d video no-op no MKM", v1, 0x1Cu);
}

void VCNAT64ResolverRegisterForPrefixUpdate_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: failed on creating listeners array", v2, v3, v4, v5, v6);
    }
  }
}

void VCNAT64ResolverRegisterForPrefixUpdate_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: failed on creating interfaceName", v2, v3, v4, v5, v6);
    }
  }
}

void VCNAT64ResolverRegisterForPrefixUpdate_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: failed on creating NAT64CallBackContext", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_5_38();
}

void VCNAT64ResolverRegisterForPrefixUpdate_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: failed on creating VCNAT64ListenerContext", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_5_38();
}

void VCNAT64ResolverRegisterForPrefixUpdate_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: could not create a shared instance of NAT64Resolver", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_5_38();
}

void VCNAT64ResolverGetSharedInstance_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverGetSharedInstance: failed to create retry queue for shared instance", v2, v3, v4, v5, v6);
    }
  }
}

void VCNAT64ResolverGetSharedInstance_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverGetSharedInstance: failed to create dispatch queue for shared instance", v2, v3, v4, v5, v6);
    }
  }
}

void VCNAT64ResolverGetSharedInstance_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverGetSharedInstance: failed to create interface dictionary for shared instance", v2, v3, v4, v5, v6);
    }
  }
}

void VCNAT64ResolverGetSharedInstance_cold_4(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d VCNAT64ResolverGetSharedInstance: failed to create VCNAT64Resolver", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VCNAT64ResolveNAT64Prefix_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 174;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCNAT64ResolveNAT64Prefix: callbackContext should not be NULL", &v2, 0x1Cu);
}

void VCNAT64ResolverGetPrefix_cold_1(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "VCNAT64ResolverGetPrefix";
      v10 = 1024;
      v11 = 355;
      v12 = 2080;
      v13 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCNAT64ResolverGetPrefix: can not fetch NAT64 prefix as '%s' has not been registered on NAT64Resolver", &v6, 0x26u);
    }
  }

  *a2 = 22;
}

void VCNAT64ResolverGetPrefix_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCNAT64ResolverGetPrefix: could not create a shared instance of NAT64Resolver", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_5_38();
}

void __VCNAT64ResolveNAT64Prefix_block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "VCNAT64ResolveNAT64Prefix_block_invoke_2";
  v7 = 1024;
  v8 = 210;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCNAT64ResolveNAT64Prefix: NAT64 prefix resolution failed with error %d", &v3, 0x22u);
}

void VCSDInfoConstructWithSocket_cold_1(uint64_t a1, int a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  __error();
  v8 = 136316162;
  v9 = a1;
  v10 = 2080;
  OUTLINED_FUNCTION_7();
  v11 = 73;
  v12 = v6;
  v13 = a2;
  v14 = v6;
  v15 = v7;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d destinationIPPort is NULL for socket %d with getpeername errno %d", &v8, 0x28u);
}

void VCSDInfoIsPacketFromKnownRemote_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid VCSourceDestinationInfoMode:%d!", v2, v3, v4, v5);
}

void VCSDInfoIsPacketFromKnownRemote_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid VCSourceDestinationInfoMode:%d!", v2, v3, v4, v5);
}

void VCSDInfoIsSrcDstInfoMatchedWithIP_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid VCSourceDestinationInfoMode:%d!", v2, v3, v4, v5);
}

void VCSDInfoIsSrcDstInfoMatchedWithIP_cold_2(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = 136316162;
  v3 = a1;
  v4 = 2080;
  v5 = "VCSDInfoIsSrcDstInfoMatchedWithIP";
  v6 = 1024;
  v7 = 106;
  v8 = 1024;
  v9 = 0;
  v10 = 1024;
  v11 = 1;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameters! cachedSrcDstInfo isValid:%d, IPPort isValid:%d!", &v2, 0x28u);
}

void VCCaptionsReceiver_ProcessCaptionsData_cold_1(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "VCCaptionsReceiver_ProcessCaptionsData";
      v8 = 1024;
      v9 = 51;
      v10 = 1024;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to decode captions blob. Error=%d", &v4, 0x22u);
    }
  }
}

void VCCaptionsReceiver_ProcessCaptionsData_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "VCCaptionsReceiver_ProcessCaptionsData";
      v6 = 1024;
      v7 = 49;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Receiver must not be NULL", &v2, 0x1Cu);
    }
  }
}

CMSampleBufferRef FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(uint64_t a1, int32_t a2)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v37 = 0;
  formatDescriptionOut = 0;
  theBuffer = 0;
  if ((*(a1 + 12) & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *MEMORY[0x1E69629E0];
  v5 = *MEMORY[0x1E6960338];
  v49[0] = *MEMORY[0x1E6960348];
  v49[1] = v5;
  v6 = *MEMORY[0x1E6960288];
  v50[0] = v4;
  v50[1] = v6;
  v51[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v8 = *MEMORY[0x1E695E480];
  v9 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v7, &formatDescriptionOut);
  if (v9)
  {
    v23 = v9;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_15;
    }

    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_16_22("FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer");
    OUTLINED_FUNCTION_24_12();
    LODWORD(value) = v23;
    v25 = " [%s] %s:%d CMMetadataFormatDescriptionCreateWithMetadataSpecifications failed with err=%d";
LABEL_32:
    v28 = v24;
LABEL_33:
    _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v25, &time, 0x22u);
    goto LABEL_15;
  }

  LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
  if (!LocalIDForMetadataIdentifyingFactors)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_15;
    }

    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_16_22("FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer");
    OUTLINED_FUNCTION_24_12();
    LODWORD(value) = 0;
    v25 = " [%s] %s:%d localID_BE=%u";
    goto LABEL_32;
  }

  v11 = LocalIDForMetadataIdentifyingFactors;
  v12 = CMBlockBufferCreateWithMemoryBlock(v8, 0, 9uLL, v8, 0, 0, 9uLL, 1u, &theBuffer);
  if (v12)
  {
    v26 = v12;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_15;
    }

    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_16_22("FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer");
    OUTLINED_FUNCTION_24_12();
    LODWORD(value) = v26;
    v25 = " [%s] %s:%d CMBlockBufferCreateWithMemoryBlock failed with err=%d";
    goto LABEL_32;
  }

  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    v27 = DataPointer;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_15;
    }

    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_16_22("FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer");
    OUTLINED_FUNCTION_24_12();
    LODWORD(value) = v27;
    v25 = " [%s] %s:%d CMBlockBufferGetDataPointer failed with err=%d";
    goto LABEL_32;
  }

  v14 = dataPointerOut;
  *dataPointerOut = 150994944;
  v14[8] = -1;
  dataPointerOut = v14 + 8;
  *(v14 + 1) = bswap32(v11);
  if (!a2)
  {
    a2 = 600;
  }

  memset(&v34, 170, sizeof(v34));
  CMTimeMake(&time, 1, a2);
  CMTimeConvertScale(&v34, &time, *(a1 + 8), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time.value) = 136316418;
      *(&time.value + 4) = v15;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer";
      HIWORD(time.epoch) = 1024;
      v40 = 647;
      v41 = 2048;
      value = v34.value;
      v43 = 1024;
      timescale = v34.timescale;
      v45 = 1024;
      LODWORD(v46) = a2;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d calculated still image time sample duration=%lld/%d (track time scale=%d)", &time, 0x32u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      LODWORD(time.value) = 136316674;
      *(&time.value + 4) = v17;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer";
      HIWORD(time.epoch) = 1024;
      v40 = 648;
      v41 = 2048;
      value = v19;
      v43 = 1024;
      timescale = v20;
      v45 = 2048;
      v46 = v34.value;
      v47 = 1024;
      v48 = v34.timescale;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d adding still image time metadata sample=%lld/%d (duration=%lld/%d)", &time, 0x3Cu);
    }
  }

  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  __dst.presentationTimeStamp = *a1;
  __dst.duration = v34;
  sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
  v21 = CMSampleBufferCreate(v8, theBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &__dst, 1, &sampleSizeArray, &v37);
  if (v21)
  {
    v29 = v21;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_28())
      {
        LODWORD(time.value) = 136315906;
        *(&time.value + 4) = v30;
        LOWORD(time.flags) = 2080;
        OUTLINED_FUNCTION_16_22("FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer");
        OUTLINED_FUNCTION_24_12();
        LODWORD(value) = v29;
        v25 = " [%s] %s:%d CMSampleBufferCreate failed with err=%d";
        v28 = v31;
        goto LABEL_33;
      }
    }
  }

LABEL_15:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v37;
}

void VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_1(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "VCImageRotationConverterBase_CreateRotatedPixelBuffer";
      v8 = 1024;
      v9 = 56;
      v10 = 1024;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d CVPixelBufferPoolCreatePixelBuffer failed: %d", &v4, 0x22u);
    }
  }
}

void VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_2(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "VCImageRotationConverterBase_CreateRotatedPixelBuffer";
  v8 = 1024;
  v9 = 77;
  v10 = 1024;
  v11 = v3;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d CVO=0x%02x", &v4, 0x22u);
}

void VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _rotationSession is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _bufferPool is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCImageRotationConverterBase pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d pixelBuffer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCBitrateArbiter_ModeFromOperatingMode_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected operatingMode=%u", v2, v3, v4, v5);
}

void rangeCheck_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCBitrateArbiter: value %d failed bitrate range check, ignored", v2, v3, v4, v5);
}

void IsValidAudioBitrateRange_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCBitrateArbiter: value %d failed audio only bitrate range check, ignored", v2, v3, v4, v5);
}

void VCCaptionsDecoder_Decode_cold_1(void *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      v10 = 231;
      v11 = v6;
      v12 = 0;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Expired frame received. Error=%d", &v7, 0x22u);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

void VCCaptionsDecoder_Decode_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  v6 = 245;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to decode payload. Error=%d", v4, 0x22u);
}

void VCCaptionsDecoder_Decode_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  v5 = 242;
  v6 = v1;
  v7 = -5;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to parse segment header. Error=%d", v3, 0x22u);
}

void VCCaptionsDecoder_Decode_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 226;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid input parameter", v1, 0x1Cu);
}

void VCStatisticsHistory_AddStatsHistory_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 367;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Statistics history receives out of order statistics for totalByteReceived!", &v2, 0x1Cu);
}

void _VCStatisticsHistory_GetStatsHistoryElementIndex_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 341;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Statistics history cannot match, because elementIndex is NULL!", &v2, 0x1Cu);
}

void VCStatisticsHistory_GetBurstyLoss_cold_1(uint64_t a1, NSObject *a2, double a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "VCStatisticsHistory_GetBurstyLoss";
  v7 = 1024;
  v8 = 196;
  v9 = 2048;
  v10 = a3;
  _os_log_debug_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_DEBUG, "AVCRC [%s] %s:%d Statistics history does not have enough history for the stats within the most recent %f seconds", &v3, 0x26u);
}

void openLogDump_cold_1()
{
  __error();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VRLogfileAlloc_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VRLogfileAlloc_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VRLogfileAlloc_cold_3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate context", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VRLogfileZip_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      __error();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1_38();
      OUTLINED_FUNCTION_37_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d open new zip %@ failed with %d", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 1;
}

void VRLogfileZip_cold_2(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      __error();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1_38();
      OUTLINED_FUNCTION_37_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d open original %@ failed with %d", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 1;
}

void VRLogfileZipOnly_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate space for the fileName", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 3;
}

void VRLogfileZipOnly_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate context", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 3;
}

void VRLogfileZipOnly_cold_3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d sourceFilePath must not be NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 1;
}

void VCTransportStreamRunLoopCreateWithTransportStreams_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 82;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unknown transport stream type", &v2, 0x1Cu);
}

void VCTransportStreamRunLoopCreateWithTransportStreams_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL transportStream", v4, v5, v6, v7, v8);
    }
  }

  *a1 = -2144206847;
}

void VCTransportStreamRunLoopCreateWithTransportStreams_cold_3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Empty transportStreams array", v4, v5, v6, v7, v8);
    }
  }

  *a1 = -2143944703;
}

void VCTransportStreamRunLoopCreateWithTransportStreams_cold_4(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d NULL runLoop", v4, v5, v6, v7, v8);
    }
  }

  *a1 = -2143944703;
}

uint64_t VCTransportStreamRunLoopCreateWithTransportStreams_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d NULL transportStreams", v5, v6, v7, v8, v9);
  }

  result = 0;
  *a1 = -2143944703;
  return result;
}

BOOL VCAudioReceiver_ProcessCellularNetworkNotification(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
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

      *buf = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "VCAudioReceiver_ProcessCellularNetworkNotification";
      v16 = 1024;
      v17 = 2562;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", buf, 0x1Cu);
    }

    return 0;
  }

  if (*(a2 + 2) != 2)
  {
    return 0;
  }

  RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification(a2);
  if ((*(a1 + 10441) & 1) == 0 && VCNWConnectionMonitorUtils_IsBasebandRAT5G(RATFromNWNotification))
  {
    *(a1 + 9360) = 6;
    *(a1 + 388) = 6;
    VCAudioIssueDetector_UpdateConnectionType(*(a1 + 9352), 6);
    *(a1 + 10441) = 1;
  }

  v10 = 0u;
  v11 = 0u;
  LODWORD(v10) = *(a2 + 4);
  switch(v10)
  {
    case 0:
      *(&v10 + 1) = *(a2 + 16);
      LOBYTE(v11) = *(a2 + 60);
      BYTE1(v11) = *(a2 + 65);
      BYTE2(v11) = *(a2 + 67);
      BYTE3(v11) = *(a2 + 69);
      DWORD1(v11) = *(a2 + 70);
      v5 = *(a2 + 74);
      goto LABEL_11;
    case 2:
      LOBYTE(v11) = *(a2 + 8);
      BYTE1(v11) = *(a2 + 16);
      BYTE2(v11) = *(a2 + 18);
      break;
    case 4:
      WORD2(v11) = *(a2 + 10);
      BYTE3(v11) = *(a2 + 8);
      break;
    case 5:
      LOBYTE(v11) = *(a2 + 8);
      WORD3(v11) = *(a2 + 12);
      v5 = *(a2 + 14);
LABEL_11:
      BYTE8(v11) = v5;
      break;
    default:
      break;
  }

  VCJitterBuffer_ProcessCellularNetworkNotification(*(a1 + 448), &v10);
  v6 = *(a1 + 9352);
  if (v6)
  {
    VCAudioIssueDetector_ProcessCellularNetworkNotification(v6, a2);
  }

  return 1;
}

void _VCAudioReceiver_DetectStreamReset(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 427) == 1 && (*(a1 + 532) & 1) != 0 && (*(a1 + 556) & 1) != 0)
  {
    v4 = (a1 + 520);
    v5 = (a1 + 544);
    v13 = *(a1 + 544);
    Seconds = CMTimeGetSeconds(&v13);
    *&v13.value = *v4;
    v13.epoch = *(a1 + 536);
    if (Seconds - CMTimeGetSeconds(&v13) <= 3.0)
    {
      *(a1 + 568) = 0;
    }

    else
    {
      v7 = *(a1 + 568) + 1;
      *(a1 + 568) = v7;
      if (v7 >= 3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a2 + 1824);
            v11 = *(a1 + 544);
            v12 = *(a1 + 520);
            LODWORD(v13.value) = 136316930;
            *(&v13.value + 4) = v8;
            LOWORD(v13.flags) = 2080;
            *(&v13.flags + 2) = "_VCAudioReceiver_DetectStreamReset";
            HIWORD(v13.epoch) = 1024;
            v14 = 1841;
            v15 = 2048;
            v16 = a1;
            v17 = 2048;
            v18 = a1 + 448;
            v19 = 2048;
            v20 = v10;
            v21 = 1024;
            v22 = v11;
            v23 = 1024;
            v24 = v12;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Detected backwards TS Jump in stream, resetting. AudioReceiver=%p JB=%p time=%f maxReceivedTimestamp=%u audioReceiver->lastReceivedTimestamp=%u", &v13, 0x46u);
          }
        }

        *(a2 + 4) = 1;
        *(a1 + 568) = 0;
        *v5 = *v4;
        *(a1 + 560) = *(a1 + 536);
      }
    }
  }
}

void VCAudioReceiver_CreateReceiver_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioReceiver_CreateReceiver_cold_2()
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

void VCAudioReceiver_CreateReceiver_cold_3()
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

void VCAudioReceiver_CreateReceiver_cold_4()
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

void VCAudioReceiver_CreateReceiver_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d Failed to allocate the audio receiver", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_Finalize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d Invalid audio receiver (nil)", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_Start_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d Playback was not initialized before start", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_Start_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCAudioReceiver_Start_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCAudioReceiver_Start_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d Invalid audio receiver (nil)", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_Stop_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d Invalid audio receiver (nil)", v2, v3, v4, v5, v6);
}

void _VCAudioReceiver_UnregisterReportingTask_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCAudioReceiver_GetLatestAudioTimestamp_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_SetupDecoders_cold_1()
{
  v0 = *MEMORY[0x1E6986650];
  if (os_signpost_id_generate(*MEMORY[0x1E6986650]) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v0))
  {
    OUTLINED_FUNCTION_14_25(&dword_1DB56E000, v1, v2, v3, "AudioReceiverSetUpDecodersStart", &unk_1DBDF5B7E, v4, v5, 0);
  }
}

void VCAudioReceiver_SetupDecoders_cold_2()
{
  v0 = *MEMORY[0x1E6986650];
  if (os_signpost_id_generate(*MEMORY[0x1E6986650]) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v0))
  {
    OUTLINED_FUNCTION_14_25(&dword_1DB56E000, v1, v2, v3, "AudioReceiverSetUpDecodersEnd", &unk_1DBDF5B7E, v4, v5, 0);
  }
}

void VCAudioReceiver_SetupDecoders_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_RegisterCodecRateModeRequestCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_RegisterActiveAudioStreamRequestCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_ResetLagReference_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_UpdateCellTech_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_GetActiveStreamId_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_GetActiveStreamId_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d ActiveReceiver Stream is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_GetPercentPacketsLateAndMissing_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_PullAudioSamples_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCAudioReceiver_PullAudioSamples_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d error bad handle", v2, v3, v4, v5, v6);
}

void _VCAudioReceiver_UpdateStatisticsCollectorWithAudioErasure_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCAudioReceiver_DiscardQueueExcess_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void _VCAudioReceiver_SplitRedPacket_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d Ignoring audio packet carrying bad red payload!", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_UpdateWrmMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d WRMInfo is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_UpdateWrmMetrics_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_GetJitterBufferMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d wrmMetrics is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_GetJitterBufferMetrics_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_SetMagicCookieForPayload_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_SetTargetStreamID_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_SetOverlayToken_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d AudioReceiver is NULL", v2, v3, v4, v5, v6);
}

void VCAudioReceiver_ProcessConnectionType_cold_1()
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

void VCAudioReceiver_SetAudioPlayoutDelay_cold_1()
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

void VCAudioReceiver_SetVADFiltering_cold_1()
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

void _VCAudioReceiver_HandleRTPPacket_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2081;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d received VTP_PKT_BBNOTE", v1, 0x1Cu);
}

void _VCAudioReceiver_HandleRTPPacket_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2003;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d Ignoring invalid incoming RTP media packet.", v1, 0x1Cu);
}

void _VCAudioReceiver_HandleRTPPacket_cold_3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d received packet time[%f]", v1, 0x26u);
}

void _VCAudioReceiver_HandleRTPPacket_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCAudioReceiver_HandleRTPPacket_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCAudioReceiver_HandleRTPPacket_cold_6(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void _VCAudioReceiver_HandleRTPPacket_cold_7(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
    }
  }

  *a3 = 0;
}

void _VCAudioReceiver_HandleRTPPacket_cold_8(int a1, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      v10 = 1884;
      v11 = v6;
      v12 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d CMBlockBufferCreateEmpty failed with error %d", &v7, 0x22u);
    }
  }

  *a2 = 0;
}

void _VCAudioReceiver_HandleRTPPacket_cold_9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d RTPMediaPacketToAudioPacket failed", v2, v3, v4, v5, v6);
}

void _VCAudioReceiver_HandleRTPPacket_cold_10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioReceiver [%s] %s:%d Could not allocate memory for Audio Packet", v2, v3, v4, v5, v6);
}

void _VCAudioReceiver_HandleRTPPacket_cold_11()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCAudioReceiver_HandleRTPPacket_cold_12()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _VCAudioReceiver_HandleRTPPacket_cold_13()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCAudioReceiver_ShouldProcessAudioPacket_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void JitterPreloadQueue_AudioFrameAlloc_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d JitterPreloadQueue: Allocation failed as the Queue is not valid", v2, v3, v4, v5, v6);
}

void JitterPreloadQueue_AudioPacketAlloc_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d JitterPreloadQueue: Allocation failed as the Queue is not valid", v2, v3, v4, v5, v6);
}

void JitterPreloadQueue_Create_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d JitterPreloadQueue: Failed to created Audio Frame Pool", v2, v3, v4, v5, v6);
}

void JitterPreloadQueue_Create_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d JitterPreloadQueue: Failed to created Audio Packet Pool", v2, v3, v4, v5, v6);
}

void JitterPreloadQueue_Create_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d JitterPreloadQueue: Create Failed", v2, v3, v4, v5, v6);
}

void JitterPreloadQueue_Enqueue_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "JitterPreloadQueue_Enqueue";
  v6 = 1024;
  v7 = 119;
  v8 = 2048;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Queue=%p is full", v3, 0x26u);
}

void VCAudioTransmitter_SetAllowedPayloads_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      v5 = v3;
      OUTLINED_FUNCTION_6();
      v6 = 780;
      v7 = 2048;
      v8 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d audioTransmitter=%p allowedAudioPayloads is nil", v4, 0x26u);
    }
  }
}

void VCAudioTransmitter_SetAllowedPayloads_cold_2()
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

void VCAudioTransmitter_ReportAWDMetrics_cold_1()
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

void VCAudioTransmitter_ReportAWDMetrics_cold_2()
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

void VCAudioTransmitter_ProcessConnectionType_cold_1()
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

void VCAudioTransmitter_UpdateWrmMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void _VCAudioTransmitter_FlushBundlers_cold_1()
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

void _VCAudioTransmitter_FlushBundlers_cold_2()
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

void _VCAudioTransmitter_FlushBundlers_cold_3(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      v6 = v3;
      OUTLINED_FUNCTION_6();
      v7 = 1326;
      v8 = v4;
      v9 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to extract bundled packets from CDRx audio packet bundler for index=%d", v5, 0x22u);
    }
  }
}

void _VCAudioTransmitter_SendAudioBundle_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void _VCAudioTransmitter_SendAudioBundle_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void _VCAudioTransmitter_SendAudioBundle_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void _VCAudioTransmitter_SendAudioBundle_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void _VCAudioTransmitter_SendAudioBundle_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void _VCAudioTransmitter_SendAudioBundle_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void _VCAudioTransmitter_SendAudioBundle_cold_7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void _VCAudioTransmitter_SendAudioBundle_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void ARPLSessionCreate_cold_1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "ARPLSessionCreate";
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v1, v2, " [%s] %s:%d ARPLSessionCreate: new session (%08X)...", v3, *v4, "ARPLSessionCreate" >> 16, 1025);
}

void ARPLSessionRelease_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d ARPLSessionRelease: enter...", v2, v3, v4, v5, v6);
}

void ARPLSessionRelease_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "ARPLSessionRelease";
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d ARPLSessionRelease: old session (%08X)...", v2, *v3, "ARPLSessionRelease" >> 16, 2044);
}

void ARPLSessionRelease_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d ARPLSessionRelease: delete...", v2, v3, v4, v5, v6);
}

void ARPLSessionRelease_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d ARPLSessionRelease: done...", v2, v3, v4, v5, v6);
}

void _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      v10 = 2048;
      v11 = a2;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Received RTCP feedback on an invalid ssrc=0x%x for rateControl algorithm=%p", &v7, 0x2Cu);
    }
  }

  *a3 = 0;
}

void _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d feedback received with ssrc not existing in linkSSRC array= 0x%x", v2, v3, v4, v5);
}

void _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_3(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "_VCRateControlAlgorithmLowLatencyContinousTierMultiLink_UpdatePoorestLinkStatistics";
  v6 = 1024;
  v7 = 77;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d No statistics arrived when rate controller proceed!", &v2, 0x1Cu);
}

void _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d This algorithm does not support statistics type=%d to do rate control", v2, v3, v4, v5);
}

size_t VCAudioPayloadConfig_GetDescription(size_t result, char *a2, size_t *a3)
{
  if (a3)
  {
    v4 = *a3;
    *a3 = 0;
    if (result)
    {
      if (a2)
      {
        strlcpy(a2, [*(result + 104) UTF8String], v4);
        result = strlen(a2);
        *a3 = result;
      }
    }
  }

  return result;
}

void JLagProcessor_Initialize_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 33;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Lag processor initialized with invalid pointer", v1, 0x1Cu);
}

void JLagProcessor_Process_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "JLagProcessor_DetectSpike";
  v5 = 1024;
  v6 = 279;
  v7 = 1024;
  v8 = 0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Samples per frame looks incorrect %d", v2, 0x22u);
}

void JLagProcessor_Process_cold_2()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "JLagProcessor_IsSpikeTimeout";
  v6 = 1024;
  v7 = 268;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bundling looks incorrect %d", v3, 0x22u);
}

void JLagProcessor_Process_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 376;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Skip lag computation", v1, 0x1Cu);
}

void _VCVideoEncoderMultiImageRateAdaptation_UpdateRecommendedBitrate(uint64_t a1, int a2, int a3)
{
  v85 = *MEMORY[0x1E69E9840];
  if (a2 - *(a1 + 1152) >= 0)
  {
    v5 = a2 - *(a1 + 1152);
  }

  else
  {
    v5 = *(a1 + 1152) - a2;
  }

  if (v5 < 0x3D090)
  {
    v9 = *(a1 + 1180);
  }

  else
  {
    v6 = (a2 * 0.85);
    if (*(a1 + 1192) == 1)
    {
      *(a1 + 1193) = 0;
      v7 = a2;
    }

    else if ((*(a1 + 1193) & 1) != 0 || *(a1 + 1191) == 1)
    {
      v6 = (a2 * 0.825);
      *(a1 + 1193) = 1;
      v7 = v6;
    }

    else
    {
      if (*(a1 + 1188))
      {
        v8 = 0;
      }

      else
      {
        v8 = a2 - *(a1 + 1152);
      }

      v7 = v8 + a2;
    }

    v9 = 250000 * (fmax(v6, fmin((a2 * 1.05), v7)) / 250000);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_39();
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_7_32();
        v49 = 2048;
        v50 = a1;
        v51 = 2048;
        v52 = v12;
        v53 = 2048;
        v54 = v13;
        v55 = 2048;
        v56 = v14;
        v57 = v15;
        v58 = v16;
        v59 = v15;
        v60 = v17;
        v61 = v15;
        v62 = v18;
        v63 = v15;
        v64 = v19;
        v65 = v15;
        v66 = v20;
        v67 = 2048;
        v68 = v21;
        v69 = 2048;
        v70 = v22;
        v71 = v15;
        v72 = a3;
        v73 = 2048;
        v74 = v23;
        v75 = 2048;
        v76 = v24;
        v77 = 2048;
        v78 = v25;
        v79 = 2048;
        v80 = v27 / v26;
        v81 = 2048;
        v82 = v28 / v26;
        v83 = 2048;
        v84 = v29 / v26;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Updating recommended bitrate: bitrateAtMaxFrameSize(Mbps)=%.f, bitrateAtCurrentFrameSize(Mbps)=%.f, trendCoefficient(Mbps)=%.2f, isLargeFrameInWindow=%d, consecutiveLargeFrames=%d, isIDR=%d, inBitrateSpike=%d, lowBitrateWithRespectToTarget=%d, frameInterval=%.3f, elapsedTime(s)=%.2f, encIndex=%d, currentTargetBitrate(Mbps)=%.2f, longTermAverageBitrate(Mbps)=%.2f, predictedBitrate(Mbps)=%.2f, delta=%.2f, newRecommendedBitrate(Mbps)=%.2f, appliedBitrate(Mbps)=%.2f", v48, 0xB8u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_6_45();
      OUTLINED_FUNCTION_7_32();
      v49 = 2048;
      v50 = a1;
      v51 = 2048;
      v52 = v30;
      v53 = 2048;
      v54 = v31;
      v55 = 2048;
      v56 = v32;
      v57 = v33;
      v58 = v34;
      v59 = v33;
      v60 = v35;
      v61 = v33;
      v62 = v36;
      v63 = v33;
      v64 = v37;
      v65 = v33;
      v66 = v38;
      v67 = 2048;
      v68 = v39;
      v69 = 2048;
      v70 = v40;
      v71 = v33;
      v72 = a3;
      v73 = 2048;
      v74 = v41;
      v75 = 2048;
      v76 = v42;
      v77 = 2048;
      v78 = v43;
      v79 = 2048;
      v80 = v45 / v44;
      v81 = 2048;
      v82 = v46 / v44;
      v83 = 2048;
      v84 = v47 / v44;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Updating recommended bitrate: bitrateAtMaxFrameSize(Mbps)=%.f, bitrateAtCurrentFrameSize(Mbps)=%.f, trendCoefficient(Mbps)=%.2f, isLargeFrameInWindow=%d, consecutiveLargeFrames=%d, isIDR=%d, inBitrateSpike=%d, lowBitrateWithRespectToTarget=%d, frameInterval=%.3f, elapsedTime(s)=%.2f, encIndex=%d, currentTargetBitrate(Mbps)=%.2f, longTermAverageBitrate(Mbps)=%.2f, predictedBitrate(Mbps)=%.2f, delta=%.2f, newRecommendedBitrate(Mbps)=%.2f, appliedBitrate(Mbps)=%.2f", v48, 0xB8u);
    }
  }

  *(a1 + 1180) = v9;
}

uint64_t VCVideoEncoderMultiImageRateAdaptation_GetRecommendedBitrate(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 1176);
      if (*(a1 + 1190) != 1)
      {
        return 2148007953;
      }

      v2 = 0;
      *a2 = *(a1 + 1180);
      return v2;
    }

    v2 = 2148007937;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        v10 = " [%s] %s:%d Pointer passed for the recommended bitrate is NULL";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v2 = 2148007937;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        v10 = " [%s] %s:%d Pointer passed for the bitrate adaptation module is NULL";
LABEL_12:
        OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v4, v5, v10, v6, v7, v8, v9, v11);
      }
    }
  }

  return v2;
}

void VCVideoEncoderMultiImageRateAdaptation_Create_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate memory for the bitrate adaptation module", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VCVideoEncoderMultiImageRateAdaptation_Create_cold_2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Frame rate is not configured!", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VCVideoEncoderMultiImageRateAdaptation_Finalize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Pointer passed for the bitrate adaptation module is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCVideoEncoderMultiImageRateAdaptation_Finalize_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid pointer", v2, v3, v4, v5, v6);
    }
  }
}

void VCVideoEncoderMultiImageRateAdaptation_ProcessFrameInfo_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Pointer passed for the bitrate adaptation module is NULL", v2, v3, v4, v5, v6);
    }
  }
}

uint64_t VCVideoEncoderMultiImageRateAdaptation_ProcessFrameInfo_cold_2(uint64_t result, int a2, char a3, int a4)
{
  v4 = a3 | (3 * *(result + 1132) < a2);
  *(result + 1129) = v4;
  if (v4)
  {
    *(result + 1144) = a4;
    ++*(result + 1136);
    v5 = a4;
  }

  else
  {
    *(result + 1136) = 0;
    v5 = *(result + 1144);
  }

  *(result + 1140) = a4 - v5 < 6;
  return result;
}

void VCVideoEncoderMultiImageRateAdaptation_UpdateEncoderBitrates_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Pointer passed for the bitrate adaptation module is NULL", v2, v3, v4, v5, v6);
    }
  }
}

uint64_t JTargetJBEstimator_GetMinJBSize(uint64_t result)
{
  v1 = *(result + 80632);
  if (*(result + 80776) == 1)
  {
    v1 = fmax(*(result + 16) * *(result + 12), fmax(*(result + 16) + *(result + 16), v1));
  }

  *(result + 24) = v1;
  return result;
}

unint64_t JTargetJBEstimator_Process(uint64_t a1, uint64_t a2, double a3)
{
  v6 = a1;
  v266 = *MEMORY[0x1E69E9840];
  v7 = a1 + 78208;
  v8 = (a1 + 66072);
  v9 = *(a1 + 66072);
  v10 = *(a1 + 66080);
  v11 = micro();
  v12 = *(a2 + 8);
  *(v7 + 2416) = v12;
  *(v6 + 12) = *(a2 + 20);
  v13 = *(v6 + 48);
  if (v13)
  {
    *(v6 + 16) = *(a2 + 16) / v13;
  }

  v14 = (v6 + 78176);
  v255 = v6 + 72136;
  v15 = v6 + 66056;
  v16 = *(a2 + 24);
  v17 = *(v7 + 1444);
  v18 = v16 >= v17;
  v19 = v16 - v17;
  v20 = v18 || v19 > 0x7FFFFFFE;
  if (!v20)
  {
    *(v8 + 24) = 257;
  }

  v21 = MEMORY[0x1E6986650];
  v22 = &unk_1DBD51000;
  v256 = v6 + 66056;
  if (*(v7 + 2522) == 1)
  {
    if (*(a2 + 40))
    {
LABEL_10:
      v12 = *(a2 + 8);
      *(v7 + 2936) = v12;
      *(v7 + 2932) = v16;
      goto LABEL_11;
    }

    v58 = v6 + 81018;
    *(v6 + 81018 + *(v7 + 2809)) = 0;
    IsPacketBundled = _JTargetJBEstimator_IsPacketBundled(v6 + 81120, a2);
    v61 = *(v7 + 2809);
    if (IsPacketBundled)
    {
      *(v58 + v61) = 2;
    }

    *(v7 + 2809) = (v61 + 1) % 0x64u;
    v62 = *(v7 + 2808);
    if (v62 <= 0x63)
    {
      *(v7 + 2808) = v62 + 1;
      v20 = v62 > 0x31;
      LOBYTE(v62) = v62 + 1;
      if (!v20)
      {
        v16 = *(a2 + 24);
        v15 = v6 + 66056;
        goto LABEL_10;
      }
    }

    v63 = 0;
    v64 = 0;
    do
    {
      v64 += *(v58 + v63++);
    }

    while (v63 != 100);
    v65 = v64 / v62;
    v16 = *(a2 + 24);
    v15 = v6 + 66056;
    if (v65 <= 0.8)
    {
      goto LABEL_10;
    }

    if (v16 == *(v7 + 2932) + 2 * *(a2 + 16))
    {
      *(v7 + 2936) = *(a2 + 8);
      *(v7 + 2932) = v16;
LABEL_69:
      v3 = 0;
      *(v7 + 1444) = v16;
      goto LABEL_240;
    }

    v239 = _JTargetJBEstimator_IsPacketBundled(v6 + 81136, a2);
    v15 = v6 + 66056;
    v12 = *(a2 + 8);
    *(v7 + 2936) = v12;
    v16 = *(a2 + 24);
    *(v7 + 2932) = v16;
    if (v239)
    {
      goto LABEL_69;
    }
  }

LABEL_11:
  if (*(v7 + 1432) != 0.0)
  {
    *(v7 + 1432) = 0;
  }

  v254 = a2;
  a2 = *a2;
  *(v7 + 1272) = a2;
  v23 = a3;
  if (*(v7 + 2520) == 1)
  {
    if (*(v7 + 1348) == 1)
    {
      *(v7 + 1344) = 0;
    }

    v24 = *(v7 + 16);
    v25 = a3 * 0.1 + *v7 * 0.9;
    *v7 = v25;
    v23 = a3;
    v26 = a3;
    if (*(v7 + 2521) == 1)
    {
      v23 = a3;
      v26 = a3;
      if (*(v7 + 1232) == 1)
      {
        v26 = fmin(a3, *(v7 + 1240));
        v23 = fmin(a3, *(v7 + 1248));
      }
    }

    v3 = *(v7 + 1224);
    v27 = *(v7 + 1228);
    if (v27)
    {
      if (!*(v7 + 1232))
      {
        v28 = *(v7 + 8) * 0.9801 + v26 * 0.0198;
        *(v7 + 8) = v28;
        *(v7 + 16) = v24 * 0.9801 + vabdd_f64(v26, v28) * 0.0198;
      }

      if (v27 > 74)
      {
        v29 = v3;
        v3 = ((v3 + 1) % 75);
        *(v7 + 1224) = v3;
        OUTLINED_FUNCTION_1_40(v6 + 8 * v29, v25);
        goto LABEL_26;
      }
    }

    else
    {
      *(v7 + 8) = v26;
      *(v7 + 16) = 0;
    }

    OUTLINED_FUNCTION_1_40(v6 + 8 * ((v27 + v3) % 75), v25);
    *(v7 + 1228) = ++v27;
LABEL_26:
    v36 = a3 - _JTargetJBEstimator_GetNewMinLag(v6, v23);
    if (*(v7 + 1384))
    {
      v15 = v6 + 66056;
      if (*(v6 + 79440))
      {
        v37 = v254;
      }

      else
      {
        v37 = v254;
        if (v36 > *(v6 + 24))
        {
          _JTargetJBEstimator_AddCandidateSpikeToHistory(v6, v256, v30, v31, v32, v33, v34, v35);
          v15 = v6 + 66056;
          if (*(v7 + 2521) == 1)
          {
            v23 = fmin(a3, *(v6 + 79456));
          }
        }
      }

      v44 = *(v6 + 79496);
      v45 = v44 + 1;
      *(v6 + 79496) = v44 + 1;
      v46 = *(v6 + 79576);
      if (v46 < a3)
      {
        *(v6 + 79576) = a3;
        *(v6 + 79584) = v12;
        v46 = a3;
      }

      if (a3 - *v8 > *(v6 + 80744))
      {
        *(v6 + 80876) = 1;
      }

      v47 = *(v7 + 2416);
      if (v47 - *(v6 + 79536) > 0.1 && v45 - *(v6 + 79528) >= 5 && !*(v6 + 79552))
      {
        v48 = *(v6 + 79512);
        if (v48 < a3)
        {
          if (*(v6 + 79544) == 0.0)
          {
            v49 = fmax(*(v6 + 79448), *(v6 + 79504) + fmin((v48 - *(v6 + 79504)) * 0.5, 0.25));
            *(v6 + 79448) = v49;
            *(v6 + 79544) = 0x3FF0000000000000;
          }

          else
          {
            v49 = *(v6 + 79448);
          }

          if (a3 - v49 > 0.3)
          {
            *(v6 + 79448) = v49 + (*(v6 + 80672) + *(v6 + 80672)) * 0.001;
          }

          *(v6 + 79536) = v47;
          *(v6 + 79528) = v45;
        }
      }

      if (v44 >= 30)
      {
        v66 = (v3 + v27 - 30) % 75;
        v67 = (v3 + v27 - 15) % 75;
        v68 = v6 + 78232;
        v69 = 0.0;
        v70 = 15;
        v71 = 0.0;
        do
        {
          v71 = v71 + *(v68 + 8 * (v66 % 75));
          v69 = v69 + *(v68 + 8 * (v67 % 75));
          ++v67;
          ++v66;
          --v70;
        }

        while (v70);
        if (*(v6 + 79552))
        {
          v72 = *(v6 + 79560);
        }

        else
        {
          OUTLINED_FUNCTION_6_46();
          if (!v197)
          {
            goto LABEL_90;
          }

          *(v6 + 79552) = 1;
          *(v6 + 79560) = v12;
          *(v6 + 79496) = 0;
          v72 = v12;
        }

        if (v12 - v72 > 3.0)
        {
          OUTLINED_FUNCTION_6_46();
          if (v197)
          {
            *(v7 + 1348) = 1;
            goto LABEL_91;
          }
        }
      }

LABEL_90:
      if (!*(v7 + 1348) && (v12 - *(v6 + 79464) <= 0.5 || *(v6 + 79448) + fabs(*(v6 + 79448) * 0.05) <= a3))
      {
        goto LABEL_106;
      }

LABEL_91:
      *(v7 + 1384) = 0;
      *(v6 + 79448) = *(v6 + 32);
      *(v6 + 79472) = v12;
      if (*(v6 + 79440))
      {
        v73 = v46 - *(v6 + 79520);
        if (v73 > 0.04)
        {
          v74 = *(v6 + 79584);
          v75 = v6 + 79672;
          v76 = *(v6 + 80476);
          v77 = *(v6 + 80472);
          if (v76 > 49)
          {
            *(v75 + 8 * v77) = v73;
            *(v6 + 8 * v77 + 80072) = v74;
            *(v6 + 80472) = (v77 + 1) % 50;
          }

          else
          {
            v78 = (v77 + v76) % 50;
            *(v75 + 8 * v78) = v73;
            *(v6 + 8 * v78 + 80072) = v74;
            *(v6 + 80476) = v76 + 1;
          }
        }

        *(v6 + 79440) = 0;
      }

      if (*(v6 + 80872) == 1)
      {
        ++*(v6 + 81160);
      }

      else
      {
        ++*(v6 + 81164);
      }

      v79 = *(v6 + 79576) - *(v6 + 79520);
      *(v6 + 80880) = v79;
      v80 = *(v6 + 80976);
      if (v79 > v80)
      {
        *(v6 + 81168) = v79 - v80 + *(v6 + 81168);
      }

      *(v6 + 80872) = 0;
      VRLogfilePrint(*(v6 + 80696), "Leaving SPIKE, SpikeSize = %f \n", v30, v31, v32, v33, v34, v35, SLOBYTE(v79));
      v15 = v6 + 66056;
      goto LABEL_106;
    }

    *(v7 + 2668) = 0;
    v38 = *(v7 + 1228);
    v15 = v6 + 66056;
    if (v38 < 11)
    {
      v37 = v254;
LABEL_106:
      *(v15 + 32) = v23;
      a2 = *v37;
      goto LABEL_107;
    }

    v39 = *(v7 + 1224);
    v40 = v6 + 78232;
    if ((a2 - *(v7 + 1272)) >= 0x7FFFu)
    {
      v42 = v24 * 4.0 + 0.0500000007;
    }

    else
    {
      v41 = *(v40 + 8 * ((v39 + v38 - 2) % 75));
      v42 = v24 * 4.0 + 0.0500000007;
      if (a3 - v41 > v42)
      {
        v43 = 1;
        v37 = v254;
LABEL_71:
        *(v7 + 1384) = v43;
        *(v6 + 79600) = a3;
        *(v6 + 79616) = v41;
        *(v6 + 79624) = v12;
        *(v6 + 79632) = v24;
        *(v6 + 79608) = *v8;
        if (v36 > *(v6 + 24))
        {
          _JTargetJBEstimator_AddCandidateSpikeToHistory(v6, v256, v30, v31, v32, v33, v34, v35);
          v15 = v6 + 66056;
          if (*(v7 + 2521) == 1)
          {
            v23 = fmin(a3, *(v6 + 79456));
          }
        }

        goto LABEL_106;
      }
    }

    v50 = 2 - v38;
    v51 = v39 + v38;
    if (v42 > 0.5)
    {
      v42 = 0.5;
    }

    v52 = v51 - 2;
    v53 = 1;
    v54 = 3;
    do
    {
      v41 = *(v40 + 8 * (v52 % 75));
      v55 = v12 - *(v6 + 78832 + 8 * (v52 % 75));
      v20 = v55 <= 0.5;
      v56 = (a3 - v41) / v55;
      if (!v20 && v56 > v42)
      {
        v43 = 2;
        goto LABEL_70;
      }

      v53 = v54 < v38;
      --v52;
      ++v54;
      v18 = __CFADD__(v50++, 1);
    }

    while (!v18);
    v43 = 0;
LABEL_70:
    v37 = v254;
    if (!v53)
    {
      goto LABEL_106;
    }

    goto LABEL_71;
  }

LABEL_107:
  v81 = v6 + 56;
  v82 = *(v15 + 66);
  if ((a2 - v82) <= 0x7FFEu)
  {
    v83 = (a2 - v82);
LABEL_110:
    if (v83 <= 0x5DB)
    {
      v84 = (*(v15 + 4) + v83) % 1500;
      v85 = v254;
      if (!*(v6 + 24056 + 4 * v84))
      {
        *(v81 + 8 * v84) = v23;
        v86 = v6 + 8 * v84;
        *(v6 + 24056 + 4 * v84) = 1;
        *(v86 + 12056) = a3;
        *(v6 + 4 * v84 + 36056) = *(v254 + 24);
        *(v86 + 42056) = *(v254 + 8);
        *(v86 + 54056) = *(v254 + 32);
        ++*v15;
      }

      if (!*(v6 + 30056 + 4 * v84))
      {
        *(v6 + 30056 + 4 * v84) = *(v15 + 40);
      }

      if (v83 >= *(v15 + 8))
      {
        *(v15 + 8) = v83 + 1;
      }

LABEL_126:
      v253 = v6 + 56;
      if (*(v6 + 4) && *v15 >= 16)
      {
        *(v6 + 4) = 0;
      }

      NewMinLag = _JTargetJBEstimator_GetNewMinLag(v6, v23);
      *v8 = NewMinLag;
      v8[1] = fmax(v23, v10);
      v102 = v85[4];
      v101 = v85[5];
      v103 = v85[6];
      v246 = v7;
      v248 = v8;
      if (!v102 && (!v103 || *(v6 + 80688) != 1))
      {
        v115 = 0;
        v106 = v6 + 66056;
        goto LABEL_221;
      }

      if (!v101)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v104 = VRTraceErrorLogLevelToCSTR();
          v105 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 4.8152e-34;
            v259 = v104;
            OUTLINED_FUNCTION_1_21();
            v263 = 930;
            _os_log_error_impl(&dword_1DB56E000, v105, OS_LOG_TYPE_ERROR, " [%s] %s:%d Incorrect bundling, it should never be zero", buf, 0x1Cu);
          }
        }

        v101 = 1;
      }

      v106 = v6 + 66056;
      v107 = *(v6 + 66112);
      v108 = *(v6 + 79556);
      if (v108 == 1)
      {
        v107 = 2;
      }

      v109 = *(v6 + 48);
      v110 = v107 * v109;
      if (v102)
      {
        if (v108 == 1)
        {
          v111 = 2;
        }

        else
        {
          v111 = *(v6 + 66104);
        }

        v112 = v101 * v102;
        v113 = v110 / (v101 * v102);
        v114 = v111 * v109 / v112;
      }

      else
      {
        v114 = 0;
        v113 = 0;
      }

      v116 = v6 + 56;
      v117 = *(v6 + 66064);
      v118 = *(v6 + 66096);
      v119 = v117 - v114;
      if (*(v6 + 66096))
      {
        v120 = v119;
      }

      else
      {
        v120 = 0;
      }

      v244 = v84;
      if (*(v6 + 80688) != 1)
      {
        v122 = v117 - v113;
        if ((v117 - v113) <= 0 && v120 < 1)
        {
          LOBYTE(v126) = 0;
          v7 = v246;
          v85 = v254;
LABEL_203:
          if (v14[345] == 1)
          {
            v155 = *(v106 + 8);
            if (v155 >= 1)
            {
              v156 = *(v106 + 4);
              do
              {
                if (*(v6 + 24056 + 4 * (v156 % 1500)))
                {
                  *(v116 + 8 * (v156 % 1500)) = *(v6 + 12056 + 8 * (v156 % 1500));
                }

                ++v156;
                --v155;
              }

              while (v155);
            }
          }

          if (v126)
          {
            *v248 = xmmword_1DBD512A0;
            v157 = *(v106 + 8);
            if (v157 >= 1)
            {
              v158 = 0;
              NewMinLag = 30.0;
              v84 = v244;
              do
              {
                v159 = (v158 + *(v106 + 4)) % 1500;
                if (*(v6 + 24056 + 4 * v159))
                {
                  v160 = _JTargetJBEstimator_GetNewMinLag(v6, *(v116 + 8 * v159));
                  v106 = v256;
                  v161 = v160;
                  NewMinLag = *v248;
                  if (v161 < *v248)
                  {
                    *v248 = v161;
                    *(v256 + 68) = v159;
                    v14[368] = *(v6 + 36056 + 4 * v159);
                    NewMinLag = v161;
                  }

                  v116 = v253;
                  v248[1] = fmax(*(v253 + 8 * v159), v248[1]);
                  v157 = *(v256 + 8);
                }

                ++v158;
              }

              while (v158 < v157);
              v115 = 1;
              v85 = v254;
              goto LABEL_221;
            }

            v115 = 1;
            NewMinLag = 30.0;
          }

          else
          {
            v115 = 0;
            NewMinLag = *v248;
          }

          v84 = v244;
LABEL_221:
          if (NewMinLag == v9)
          {
            _JTargetJBEstimator_AddLagToCdf(v6, v6 + 66128, v84, 0);
            if (*(v256 + 40) == 1)
            {
              _JTargetJBEstimator_AddLagToCdf(v6, v6 + 72168, v84, 0);
            }
          }

          else
          {
            *(v7 + 1432) = NewMinLag - v9;
            if ((v115 & 1) == 0)
            {
              v14[368] = v85[6];
              *(v106 + 68) = v84;
            }

            v162 = v106 + 72;
            bzero(*(v106 + 72), 4 * *(v255 + 24));
            bzero((v6 + 66136), 0x1770uLL);
            *v255 = 0;
            bzero(*(v255 + 32), 4 * v14[6]);
            bzero((v6 + 72176), 0x1770uLL);
            v163 = v256;
            *v14 = 0;
            if (*(v162 - 64) >= 1)
            {
              v164 = 0;
              do
              {
                v165 = (v164 + *(v163 + 4)) % 1500;
                if (*(v6 + 24056 + 4 * v165))
                {
                  _JTargetJBEstimator_AddLagToCdf(v6, v162, v165, 1);
                  v163 = v256;
                }

                if (*(v163 + 40) == 1 && *(v6 + 30056 + 4 * v165))
                {
                  _JTargetJBEstimator_AddLagToCdf(v6, v255 + 32, v165, 1);
                  v163 = v256;
                }

                ++v164;
              }

              while (v164 < *(v163 + 8));
            }
          }

          v166 = micro() - v11;
          v21 = MEMORY[0x1E6986650];
          if (v166 > 0.005 && VRTraceGetErrorLogLevelForModule() >= 7)
          {
            VRTraceErrorLogLevelToCSTR();
            v167 = *v21;
            if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_14_14();
              v260 = v168;
              v261 = "_JTargetJBEstimator_AddLagToHistory";
              v262 = 1024;
              v263 = 1251;
              v264 = 2048;
              v265 = v166;
              _os_log_impl(&dword_1DB56E000, v167, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Noted jump in AddLagToHistory %f", buf, 0x26u);
            }
          }

          a2 = v254;
          v7 = v246;
          v8 = v248;
          *(v246 + 1444) = *(v254 + 24);
          *(v14 + 1480) = 0;
          v3 = 1;
          v15 = v256;
          v22 = &unk_1DBD51000;
          goto LABEL_240;
        }

        v124 = *(v6 + 66060);
        v7 = v246;
        if (v122 < 1)
        {
          LOBYTE(v126) = 0;
          v122 = 0;
        }

        else
        {
          v125 = 0;
          v126 = 0;
          do
          {
            v127 = v124 + v125;
            v124 = (v124 + v125) % 1500;
            v126 |= _JTargetJBEstimator_RemoveElementFromHistory(v6, v127 % 1500);
            ++v125;
          }

          while (v122 != v125);
          v116 = v6 + 56;
        }

        if (v120 < 1)
        {
          v106 = v6 + 66056;
        }

        else
        {
          v150 = 0;
          v151 = v6 + 30056;
          v106 = v6 + 66056;
          do
          {
            v124 = (v124 + v150) % 1500;
            if (*(v151 + 4 * v124))
            {
              v152 = *(v6 + 72176 + 4 * v124);
              --*(*(v6 + 72168) + 4 * v152);
              --*v14;
            }

            *(v151 + 4 * v124) = 0;
            ++v150;
          }

          while (v120 != v150);
        }

LABEL_199:
        v85 = v254;
        if (v122)
        {
          v153 = (*(v106 + 4) + v122) % 1500;
          v154 = *(v106 + 8) - v122;
          *(v106 + 4) = v153;
          *(v106 + 8) = v154;
          *(v106 + 66) += v122;
          if (*(v7 + 1432) != 0.0 && (v14[368] - *(v6 + 4 * v153 + 36056)) >= 0x7FFFFFFF)
          {
            *(v7 + 1432) = 0;
          }
        }

        goto LABEL_203;
      }

      v121 = v103 - v110;
      if (v103 <= v110)
      {
        v136 = v103 + ~v110;
        if (*(v6 + 66121))
        {
          v121 = v136;
        }

        else
        {
          v121 = 0;
        }
      }

      else
      {
        *(v6 + 66121) = 0;
      }

      v137 = *(v6 + 66060);
      if (_JTargetJBEstimator_ShouldContinueDiscardingFrames(v6, 0, v137, v137, v121))
      {
        v250 = v103;
        v122 = 0;
        v126 = 0;
        v138 = v137;
        v139 = v6 + 66056;
        do
        {
          v126 |= _JTargetJBEstimator_RemoveElementFromHistory(v6, v138);
          v138 = (++v122 + *(v6 + 66060)) % 1500;
        }

        while ((_JTargetJBEstimator_ShouldContinueDiscardingFrames(v6, 0, v137, v138, v121) & 1) != 0);
        if (*(v6 + 66096))
        {
          v108 = *(v6 + 79556);
          v109 = *(v6 + 48);
LABEL_175:
          v140 = *(v139 + 48);
          if (v108 == 1)
          {
            v140 = 2;
          }

          v141 = v140 * v109;
          v142 = v250 - v141;
          if (v250 <= v141)
          {
            v143 = v250 + ~v141;
            if (*(v139 + 64))
            {
              v142 = v143;
            }

            else
            {
              v142 = 0;
            }
          }

          else
          {
            *(v139 + 64) = 0;
          }

          goto LABEL_184;
        }

        v142 = 0;
      }

      else
      {
        v122 = 0;
        if (v118)
        {
          v250 = v103;
          LOBYTE(v126) = 0;
          v138 = v137;
          v139 = v6 + 66056;
          goto LABEL_175;
        }

        LOBYTE(v126) = 0;
        v138 = v137;
        v142 = 0;
      }

LABEL_184:
      if (_JTargetJBEstimator_ShouldContinueDiscardingFrames(v6, 1, v138, v138, v142))
      {
        v251 = (v6 + 78176);
        v144 = v6 + 30056;
        v145 = v6;
        v146 = v6 + 72176;
        v147 = v122 + 1;
        v148 = v138;
        do
        {
          if (*(v144 + 4 * v148))
          {
            v149 = *(v146 + 4 * v148);
            --*(*(v255 + 32) + 4 * v149);
            --*v251;
          }

          *(v144 + 4 * v148) = 0;
          v148 = (v147 + *(v256 + 4)) % 1500;
          ++v147;
        }

        while ((_JTargetJBEstimator_ShouldContinueDiscardingFrames(v145, 1, v138, v148, v142) & 1) != 0);
        v6 = v145;
        v14 = v251;
      }

      v106 = v256;
      v7 = v246;
      v116 = v253;
      goto LABEL_199;
    }

    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 3)
    {
      a2 = VRTraceErrorLogLevelToCSTR();
      v3 = *v21;
      ErrorLogLevelForModule = os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR);
      if (ErrorLogLevelForModule)
      {
        OUTLINED_FUNCTION_5_39();
        OUTLINED_FUNCTION_7_33();
        v261 = "_JTargetJBEstimator_AddLagToHistory";
        v262 = 1024;
        OUTLINED_FUNCTION_3_48();
        OUTLINED_FUNCTION_9_31(&dword_1DB56E000, v227, v228, " [%s] %s:%d Large Jump seen in sequence number %u startSeq=%u", v229, v230, v231, v232, v242, v243, v245, v247, v249, v252, v254, v255, v256, v257, buf[0]);
      }
    }

    OUTLINED_FUNCTION_4_41(ErrorLogLevelForModule, v88, v89, v90, v91, v92, v93, v94, v242, v243, v245, v247, v249, v252, v254);
    *(v7 + 1444) = *(a2 + 24);
    v15 = v256;
    goto LABEL_240;
  }

  v83 = a2 - v82;
  if (v83 >= 0)
  {
    goto LABEL_110;
  }

  if (*(v15 + 8) - v83 <= 1499)
  {
    v95 = *(v15 + 4);
    v96 = __OFADD__(v95, v83);
    v97 = v95 + v83;
    if (v97 < 0 != v96)
    {
      v84 = v97 + 1500;
    }

    else
    {
      v84 = v97;
    }

    *(v81 + 8 * v84) = v23;
    v98 = v6 + 8 * v84;
    *(v98 + 12056) = a3;
    v99 = (v6 + 4 * v84);
    v99[6014] = 1;
    v99[7514] = *(v15 + 40);
    ++*v15;
    *(v15 + 4) = v84;
    *(v15 + 8) -= v83;
    *(v15 + 66) = a2;
    v85 = v254;
    v99[9014] = *(v254 + 24);
    *(v98 + 42056) = *(v254 + 8);
    *(v98 + 54056) = *(v254 + 32);
    goto LABEL_126;
  }

  v128 = VRTraceGetErrorLogLevelForModule();
  if (v128 >= 3)
  {
    a2 = VRTraceErrorLogLevelToCSTR();
    v3 = *v21;
    v128 = os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR);
    if (v128)
    {
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_7_33();
      v261 = "_JTargetJBEstimator_AddLagToHistory";
      v262 = 1024;
      OUTLINED_FUNCTION_3_48();
      OUTLINED_FUNCTION_9_31(&dword_1DB56E000, v233, v234, " [%s] %s:%d Large Jump seen in sequence number %u startSeq=%u", v235, v236, v237, v238, v242, v243, v245, v247, v249, v252, v254, v255, v256, v257, buf[0]);
    }
  }

  OUTLINED_FUNCTION_4_41(v128, v129, v130, v131, v132, v133, v134, v135, v242, v243, v245, v247, v249, v252, v254);
  *(v7 + 1444) = *(a2 + 24);
  v15 = v256;
  v22 = &unk_1DBD51000;
LABEL_240:
  v169 = *(v14 + 307);
  if (*(v14 + 2600) == 1)
  {
    v169 = fmax(*(v6 + 16) * *(v6 + 12), fmax(*(v6 + 16) + *(v6 + 16), v169));
  }

  v170 = *(a2 + 8);
  *(v6 + 24) = v169;
  v171 = v14[575];
  if (v171 < 1)
  {
    v173 = 0;
    v171 = 0;
  }

  else
  {
    v172 = v14[574];
    v173 = v172 % 50;
    if (v170 - *(v6 + 80072 + 8 * (v172 % 50)) >= 21.0)
    {
      v174 = v172 + 1;
      while (--v171)
      {
        v173 = v174 % 50;
        v175 = v170 - *(v6 + 80072 + 8 * (v174 % 50));
        ++v174;
        if (v175 < 21.0)
        {
          goto LABEL_250;
        }
      }

      v173 = 0;
    }
  }

LABEL_250:
  v14[574] = v173;
  v14[575] = v171;
  v176 = *(v14 + 1490);
  if (v176 & 1) != 0 || (v14[372])
  {
    v177 = v176 == 0;
    v178 = *(v14 + 1490) ? 2 : 3;
    v179 = 0.5;
    v180 = 5.0;
    if (v177)
    {
      v179 = 0.15;
    }

    else
    {
      v180 = 0.5;
    }

    v14[592] = v178;
    *(v14 + 297) = v180;
    *(v14 + 299) = v179;
    *(v14 + 298) = 0x3F947AE147AE147BLL;
    if (v171 >= v178 && *(v14 + 2344) == 1)
    {
      v181 = 0;
      v182 = *(v14 + 167) - *v8;
      v183 = *(v6 + 80072 + 8 * v173);
      *(v14 + 2344) = 0;
      *(v14 + 294) = v170;
      v184 = v171;
      while (1)
      {
        v60 = *(v6 + 80072 + 8 * (v173 % 50));
        if (vabdd_f64(v183, v60) >= v180)
        {
          if (++v181 >= v178)
          {
            v185 = fmin(v182 + 0.02, v179);
            *(v14 + 295) = v185;
            goto LABEL_268;
          }
        }

        else
        {
          v60 = v183;
        }

        ++v173;
        v183 = v60;
        if (!--v184)
        {
          v185 = v169;
          goto LABEL_268;
        }
      }
    }
  }

  v185 = v169;
  if (v170 - *(v14 + 294) < 10.0)
  {
    v185 = fmax(*(v14 + 295), v169);
  }

LABEL_268:
  v186 = v169;
  if (*(v14 + 1489) == 1)
  {
    v186 = *(v14 + 308);
  }

  v187 = fmax(v186, v185);
  v14[608] = 0;
  if (*(v6 + 8))
  {
    if (*v15 >= 51)
    {
      *(v6 + 8) = 0;
    }

    v187 = fmax(v187, *(v6 + 40));
  }

  v188 = *(v14 + 300);
  v189 = v188;
  if (!*(v6 + 4))
  {
    v194 = *v255;
    if (*(v15 + 40) == 1)
    {
      LODWORD(v188) = *v14;
      v195 = *&v188;
      v196 = v14[6] - 1;
    }

    else
    {
      v196 = 0;
      v195 = 0.0;
    }

    v200 = v15 + 72;
    v201 = v194;
    if (*(v255 + 24) == 1)
    {
      v203 = 0;
      v202 = v194;
    }

    else
    {
      if (!v194)
      {
        v202 = 0;
        v203 = *(v255 + 24) - 1;
        if (v196)
        {
LABEL_306:
          if (*v14)
          {
            v205 = *(v14 + 2);
            v206 = v205 * *v14;
            do
            {
              if (v195 < v206)
              {
                break;
              }

              if (v196 > v14[6] - 1)
              {
                break;
              }

              LODWORD(v205) = *(*(v255 + 32) + 4 * v196);
              v205 = *&v205;
              v195 = v195 - v205;
              --v196;
            }

            while (v196);
          }
        }

LABEL_313:
        if (v194)
        {
          v207 = *(v255 + 16) * v201;
          v208 = v202 < v207;
          if (*(v15 + 40) && v196 > v203)
          {
            v200 = v6 + 72168;
            LODWORD(v207) = *v14;
            v202 = *(v14 + 2);
            v208 = v195 < v202 * *&v207;
            v203 = v196;
          }

          v209 = v203 + 2;
          if (!v208)
          {
            v209 = 1;
          }

          if (*(v14 + 2513))
          {
            v210 = v209;
          }

          else
          {
            v210 = v203 + 1;
          }

          LODWORD(v202) = *(v200 + 6032);
          v211 = *(v200 + 6016) / *&v202 * v210;
          v212 = v211;
          if (*(v14 + 2553) == 1)
          {
            if (v14[316] == 1 || *(v7 + 2416) - *(v14 + 162) < *(v15 + 56))
            {
              v213 = 0.2;
              if (v212 >= 0.2)
              {
                if (v212 < 0.35)
                {
                  v213 = 0.1;
                }

                v214 = v212 + v213;
              }

              else
              {
                v214 = v212 * 1.3;
              }

              *(v14 + 305) = v214 - v212;
              v14[608] = 2;
              v215 = v214;
              v212 = v215;
            }

            v189 = fmin(*(v14 + 303), v212);
            v216 = v189;
            *(v14 + 174) = v189;
            v217 = v6 + 80480;
            *(v6 + 80480) = 0u;
            *(v6 + 80496) = 0u;
            *(v6 + 80512) = 0;
            if (v171 >= 1)
            {
              v218 = 0;
              for (i = 0; i < v171; ++i)
              {
                v220 = *(v6 + 79672 + 8 * ((i + v14[574]) % 50)) - v216;
                if (v220 > 0.0)
                {
                  v221 = (v220 / dbl_1DBD512B0[*v6 == 0]);
                  if (v221 <= 9)
                  {
                    ++v218;
                    ++*(v217 + 4 * v221);
                    v171 = v14[575];
                  }
                }
              }

              if (v218 >= 4)
              {
                v222 = 0;
                v223 = 0;
                v224 = 0;
                v225 = 100 * v218;
                v226 = v225;
                do
                {
                  v223 += *(v217 + 4 * v222++);
                  if (100 * v223 > (v226 / 0xA))
                  {
                    v224 = v222;
                  }

                  v226 += v225;
                }

                while (v222 != 10);
                *(v14 + 174) = v216 + v224 * dbl_1DBD512B0[*v6 == 0];
              }
            }
          }

          else
          {
            v189 = fmin(*(v14 + 303), v212);
          }
        }

        goto LABEL_275;
      }

      v202 = v194;
      v203 = *(v255 + 24) - 1;
      do
      {
        if (v202 < *(v255 + 16) * v201 || v203 > *(v255 + 24) - 1)
        {
          break;
        }

        LODWORD(v60) = *(*v200 + 4 * v203);
        v60 = *&v60;
        v202 = v202 - v60;
        --v203;
      }

      while (v203);
    }

    if (v196)
    {
      goto LABEL_306;
    }

    goto LABEL_313;
  }

LABEL_275:
  *(v14 + 300) = v189;
  if (*(v14 + 320))
  {
    v190 = *(v14 + 323);
    if (*(v14 + 324) && v190 && (v190() & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      VRTraceErrorLogLevelToCSTR();
      v240 = *v21;
      v241 = *v21;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_14_14();
          OUTLINED_FUNCTION_1_21();
          v263 = 1387;
          _os_log_impl(&dword_1DB56E000, v240, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to update the target size estimated prior to synchronization", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v241, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_14_14();
        OUTLINED_FUNCTION_1_21();
        v263 = 1387;
        _os_log_debug_impl(&dword_1DB56E000, v240, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Failed to update the target size estimated prior to synchronization", buf, 0x1Cu);
      }
    }

    *(v14 + 300) = v189;
    v191 = *(v14 + 301);
    *buf = v191;
    v192 = *(v14 + 300);
    v193 = v170;
    VCJBTargetEstimatorSynchronizer_GetSyncTarget(*(v14 + 320), *(v14 + 2976), buf, v192, v193);
    *(v14 + 301) = *buf;
    if (*(v14 + 300) != *(v14 + 301))
    {
      v14[608] = 3;
      *(v14 + 305) = *(v14 + 301) - *(v14 + 300);
    }

    v15 = v256;
  }

  else
  {
    *(v14 + 301) = *(v14 + 300);
  }

  *(v14 + 302) = v187;
  v197 = v169 < v187 && v189 < v187;
  if (v197)
  {
    v14[608] = 1;
    *(v14 + 305) = (v187 - v189);
  }

  v14[680] = *v6;
  *(v14 + 341) = *(v14 + 4);
  *(v14 + 171) = *v8;
  v198 = v22[79] + *(v14 + 6) * 4.0;
  *(v14 + 344) = v198;
  if (v198 > 0.5)
  {
    v198 = 0.5;
  }

  *(v14 + 345) = v198;
  v14[692] = v14[345];
  *(v14 + 347) = *(v15 + 32);
  *(v14 + 348) = *(v14 + 183);
  *(v14 + 349) = *(v14 + 174);
  *(v14 + 350) = *(v14 + 301);
  *(v14 + 351) = *(v14 + 300);
  *(v14 + 352) = *(v14 + 302);
  *(v14 + 353) = *(v14 + 303);
  return v3;
}

BOOL _JTargetJBEstimator_IsPacketBundled(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 0.0)
  {
    goto LABEL_11;
  }

  if (v3 - v2 > 0.003)
  {
    v4 = 0;
    *a1 = 0;
    goto LABEL_12;
  }

  v5 = (*a1)++;
  if (v5)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v6 = *(a2 + 24);
  v7 = *(a1 + 4);
  v8 = *(a2 + 16);
  v9 = v8 + v7;
  v10 = v7 - v8;
  v4 = v6 == v9 || v6 == v10;
LABEL_12:
  *(a1 + 8) = v3;
  *(a1 + 4) = *(a2 + 24);
  return v4;
}

void JTargetJBEstimator_GetSharedSettings_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 172;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Shared parameters struct is NULL", &v2, 0x1Cu);
    }
  }
}

void _JTargetJBEstimator_AddLagToCdf_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 795;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Attempting to add lag value to cdf with an index out of range", &v2, 0x1Cu);
}

uint64_t VCEffectsManager_IsEffectsOn(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCEffectsManager_IsEffectsOn_block_invoke;
    block[3] = &unk_1E85F3868;
    block[4] = a1;
    block[5] = &v5;
    dispatch_sync(v1, block);
    v2 = *(v6 + 24);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2 & 1;
}

void VCEffectsManager_CapturedPixelBuffer_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d Sending video frame to client to be processed", v2, v3, v4, v5, v6);
}

void VCEffectsManager_CapturedPixelBuffer_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d Sending video frame to AVC to process", v2, v3, v4, v5, v6);
}

void VCEffectsManager_CapturedPixelBuffer_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d Sending video frame to extension to process", v2, v3, v4, v5, v6);
}

void VCEffectsManager_CapturedPixelBuffer_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d Dropping video frame due to effects being disabled", v2, v3, v4, v5, v6);
}

void VCAudioPlayer_SetTargetBoostMode(uint64_t a1, int a2, double a3)
{
  if (a1)
  {
    if (*(a1 + 12) == 1)
    {
      *(a1 + 35984) = a2;
      *(a1 + 35968) = a2 != 0;
      *(a1 + 35976) = a3;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v3, v4, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v5, v6, v7, v8, v9);
    }
  }
}

void _VCAudioPlayer_InitializeBuffers_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Failed to allocate last Decoded playback buffer", v2, v3, v4, v5, v6);
}

void _VCAudioPlayer_InitializeBuffers_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Failed to allocate Output playback buffer", v2, v3, v4, v5, v6);
}

void _VCAudioPlayer_InitializeBuffers_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Failed to allocate Input playback buffer", v2, v3, v4, v5, v6);
}

void VCAudioPlayer_Initialize_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x22u);
}

void VCAudioPlayer_Initialize_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_25_5(v0, v1, v2, v3, v4);
}

void VCAudioPlayer_Initialize_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCAudioPlayer_Initialize_cold_4()
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

void VCAudioPlayer_Initialize_cold_5()
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

void VCAudioPlayer_Initialize_cold_6()
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

void VCAudioPlayer_Initialize_cold_7(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v7 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d AudioPlayer[%p] Failed initializing DTMF", &v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCAudioPlayer_Initialize_cold_8()
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

void VCAudioPlayer_Initialize_cold_9()
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

void VCAudioPlayer_Initialize_cold_10()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v5 = -2143092733;
  OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v1, v2, "VCAudioPlayer [%s] %s:%d Failed to initialize playback settings with result=%X.", v3);
}

void VCAudioPlayer_Initialize_cold_11()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCAudioPlayer_Initialize_cold_12(_DWORD *a1)
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

  *a1 = 1;
}

void _VCAudioPlayer_InitializeQueueSteeringAlgo_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2143092733;
}

void VCAudioPlayer_Finalize_cold_1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v3, v4, v5, v6, v7);
    }
  }
}

void VCAudioPlayer_NewStream_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_IsUnderrunQueueBoostEnabled_cold_1(_BYTE *a1)
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

void VCAudioPlayer_ForceDecoderReset_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetAverageInterarrivalTimeForWindow_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_GetStatistics_cold_1(void *a1)
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

void VCAudioPlayer_GetLeftOverSamples_cold_1(_DWORD *a1)
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

void VCAudioPlayer_ResetReportingMetrics_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetFrameErasureRate_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_GetSpeechErasureRate_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_SuspendAudioErasureMeasurement_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_ResumeAudioErasureMeasurement_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetTimescaleMetrics_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetRedErasureMetrics_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetAverageLossRate_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_GetLastAverageMissingPercentOverWindow_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_GetAverageJitterSizeForWindow_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_GetAverageJitterSizeForSession_cold_1(void *a1)
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

  *a1 = 0x7FF8000000000000;
}

void VCAudioPlayer_GetAverageJitterSizeForSession_cold_2(void *a1)
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

  *a1 = 0x7FF8000000000000;
}

void VCAudioPlayer_MaxInterArrivalTimeForWindow_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_GetDTMFEventCount_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_UpdateLastEnqueuedFrameInformation_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Input variables are invalid", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetWrmMetrics_cold_1(void *a1)
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

void VCAudioPlayer_GetPercentPacketsLateAndMissing_cold_1()
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

  OUTLINED_FUNCTION_7_34();
}

void VCAudioPlayer_GetPlaybackFormat_cold_1(void *a1)
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

void VCAudioPlayer_SetMaxHoleSize_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetBurstMetrics_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void _VCAudioPlayer_UpdateBurstInfo_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_25_5(v0, v1, v2, v3, v4);
}

void VCAudioPlayer_AdjustmentDisabled_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetSilenceSamples_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCAudioPlayer_GetSilenceSamples_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d jitterInfo pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetSilenceSamples_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d samplesInfo pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_GetSilenceSamples_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

uint64_t VCAudioPlayer_GetSamples_cold_1(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1[35837] & 1) != 0 && (a1[35840] & 1) == 0 || (a1[35827])
  {
    v3 = 1;
  }

  else if (*a2)
  {
    v3 = a1[35833] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  if (a1[35855] & 1) != 0 || (a1[35838])
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = a1[35841] ^ 1;
    if (v3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    if (a1[35841])
    {
      v5 = 1;
    }

    else
    {
      v5 = v6;
    }
  }

  *a3 = v5;
  return (v3 | v4) & 1;
}

void VCAudioPlayer_GetSamples_cold_2(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    v3 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        v7 = v4;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        v8 = a1;
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Not able to store the last two played samples for crossfade. sampleCount=%d", v6, 0x22u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      v7 = v5;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v8 = a1;
      _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Not able to store the last two played samples for crossfade. sampleCount=%d", v6, 0x22u);
    }
  }
}

void VCAudioPlayer_GetSamples_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

void VCAudioPlayer_GetSamples_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCAudioPlayer_GetSamples_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Audio player pointer is NULL", v2, v3, v4, v5, v6);
    }
  }
}

void VCAudioPlayer_IsTimestampValid_cold_1(_BYTE *a1)
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

void _VCAudioPlayer_CalcAdjustment_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2885;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Queue Steering: Resetting queue growth state", v1, 0x1Cu);
}

void _VCAudioPlayer_CalcAdjustment_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCAudioPlayer [%s] %s:%d Queue Steering: Algorithm provided ambiguous output, skipping this instance", v2, v3, v4, v5, v6);
    }
  }
}

void _VCAudioPlayer_CalcAdjustment_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2982;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Queue Steering: Growing queue to protect against low packet lifetime and erasures", v1, 0x1Cu);
}

void _VCAudioPlayer_SteerQueueCommand_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_25_5(v0, v1, v2, v3, v4);
}

void PacketThread_Create_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "PacketThread_Create";
  v5 = 1024;
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d packetThread=%p Failed to create dispatch_semaphore", v2, 0x26u);
}

void PacketThread_Create_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 187;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate packetThread struct", v1, 0x1Cu);
}

void PacketThread_Create_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 181;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Send callback is null", v1, 0x1Cu);
}

void PacketThread_AllocatePacketBuffer_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v4 = 157;
  v5 = 2048;
  v6 = v0;
  v7 = v1;
  v8 = 32;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d packetThread=%p Failed to allocate buffers of %u", v3, 0x2Cu);
}

void SendPacketsProc_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "SendPacketsProc";
  v5 = 1024;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d packetThread=%p SendPacketsProc starting", v2, 0x26u);
}

uint64_t _VCTransportStreamVTPSetPacketFilter(uint64_t a1, const void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    OUTLINED_FUNCTION_19_16();
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v2;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return v2;
    }

    OUTLINED_FUNCTION_5_32();
    OUTLINED_FUNCTION_0_5();
    v69 = 569;
    goto LABEL_70;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_19_16();
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v2;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return v2;
    }

    OUTLINED_FUNCTION_5_32();
    OUTLINED_FUNCTION_0_5();
    v69 = 570;
    goto LABEL_70;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) == 1)
  {
    v5 = DerivedStorage;
    if (VCPacketFilterIsOfKindRTP(a2))
    {
      if (VTP_SetPktType(*(v5 + 48), 48) != -1)
      {
        v6 = _VCTransportStreamVTPSetRemoteSSRCOnVFD(*(v5 + 48), a2, @"RTPRemoteSSRC");
        if ((v6 & 0x80000000) == 0)
        {
          v8 = *(v5 + 48);
          theArray = 0;
          if (v8 == -1)
          {
            OUTLINED_FUNCTION_19_16();
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_92;
            }

            VRTraceErrorLogLevelToCSTR();
            if (!OUTLINED_FUNCTION_31())
            {
              goto LABEL_92;
            }

            OUTLINED_FUNCTION_12_19();
            OUTLINED_FUNCTION_0_5();
            v69 = 658;
          }

          else
          {
            CMBaseObject = VCPacketFilterGetCMBaseObject(a2, v7);
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v10 || (v11 = v10(CMBaseObject, @"RTPPayloadList", *MEMORY[0x1E695E480], &theArray), (v11 & 0x80000000) != 0) || (v2 = v11, !theArray))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                VRTraceErrorLogLevelToCSTR();
                v31 = *MEMORY[0x1E6986650];
                if (OUTLINED_FUNCTION_35())
                {
                  OUTLINED_FUNCTION_28_8();
                  OUTLINED_FUNCTION_0_5();
                  v69 = 661;
                  OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v31, v32, " [%s] %s:%d Payload list not set on filter", buf);
                }
              }

              v15 = 0;
              v2 = 0;
              goto LABEL_35;
            }

            Count = CFArrayGetCount(theArray);
            v13 = Count;
            if (Count)
            {
              v14 = malloc_type_malloc(4 * Count, 0x100004052888210uLL);
              if (v14)
              {
                v15 = v14;
                if (v13 >= 1)
                {
                  v16 = 0;
                  v17 = v14;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
                    CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v17);
                    ++v16;
                    v17 += 4;
                  }

                  while ((v13 & 0x7FFFFFFF) != v16);
                }

                if (VTP_SetPayloadList(v8, v13, v15) == -1)
                {
                  __error();
                  OUTLINED_FUNCTION_15_18();
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v19 = VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      __error();
                      *buf = 136315906;
                      v65 = v19;
                      v66 = 2080;
                      OUTLINED_FUNCTION_31_8();
                      OUTLINED_FUNCTION_35_5();
                      OUTLINED_FUNCTION_40_5();
                      _os_log_error_impl(v20, v21, v22, v23, v24, v25);
                    }
                  }
                }

                goto LABEL_35;
              }

              OUTLINED_FUNCTION_19_16();
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                v15 = 0;
                v2 = v2 | 2;
                goto LABEL_35;
              }

              VRTraceErrorLogLevelToCSTR();
              v2 = (v2 + 2);
              if (!OUTLINED_FUNCTION_31())
              {
LABEL_92:
                v15 = 0;
LABEL_35:
                free(v15);
                goto LABEL_55;
              }

              OUTLINED_FUNCTION_12_19();
              OUTLINED_FUNCTION_0_5();
              v69 = 667;
            }

            else
            {
              OUTLINED_FUNCTION_19_16();
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_92;
              }

              VRTraceErrorLogLevelToCSTR();
              if (!OUTLINED_FUNCTION_31())
              {
                goto LABEL_92;
              }

              OUTLINED_FUNCTION_12_19();
              OUTLINED_FUNCTION_0_5();
              v69 = 664;
            }
          }

          OUTLINED_FUNCTION_16_0();
          _os_log_error_impl(v56, v57, v58, v59, v60, v61);
          goto LABEL_92;
        }

        return v6;
      }

      __error();
      OUTLINED_FUNCTION_15_18();
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v2;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return v2;
      }

      goto LABEL_95;
    }

    if (VCPacketFilterIsOfKindRTCP(a2))
    {
      if (VTP_SetPktType(*(v5 + 48), 192) != -1)
      {
        v6 = _VCTransportStreamVTPSetRemoteSSRCOnVFD(*(v5 + 48), a2, @"RTCPRemoteSSRC");
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        v27 = *(v5 + 48);
        theArray = 0;
        if (v27 != -1)
        {
          v28 = VCPacketFilterGetCMBaseObject(a2, v26);
          v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v29 || (v30 = v29(v28, @"RTCPLocalSSRC", *MEMORY[0x1E695E480], &theArray), (v30 & 0x80000000) != 0) || (v2 = v30, !theArray))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              VRTraceErrorLogLevelToCSTR();
              v43 = *MEMORY[0x1E6986650];
              if (OUTLINED_FUNCTION_35())
              {
                OUTLINED_FUNCTION_28_8();
                OUTLINED_FUNCTION_0_5();
                v69 = 640;
                OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v43, v44, " [%s] %s:%d Local SSRC not set on filter", buf);
              }
            }

            v2 = 0;
            goto LABEL_55;
          }

          valuePtr = 0;
          CFNumberGetValue(theArray, kCFNumberSInt32Type, &valuePtr);
          if (VTP_SetLocalSSRC(v27, valuePtr) == -1)
          {
            __error();
            OUTLINED_FUNCTION_15_18();
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_31())
              {
LABEL_45:
                __error();
                OUTLINED_FUNCTION_8_33();
                OUTLINED_FUNCTION_31_8();
                OUTLINED_FUNCTION_35_5();
                OUTLINED_FUNCTION_40_5();
LABEL_104:
                _os_log_error_impl(v37, v38, v39, v40, v41, v42);
              }
            }
          }

LABEL_55:
          if (theArray)
          {
            CFRelease(theArray);
          }

          if ((v2 & 0x80000000) == 0)
          {
            v53 = *(v5 + 40);
            *(v5 + 40) = a2;
            CFRetain(a2);
            if (v53)
            {
              CFRelease(v53);
            }
          }

          return v2;
        }

        VRTraceGetErrorLogLevelForModule();
        OUTLINED_FUNCTION_19_16();
        if (v55 <= 2)
        {
          return v2;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31())
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_12_19();
        OUTLINED_FUNCTION_0_5();
        v69 = 637;
LABEL_103:
        OUTLINED_FUNCTION_16_0();
        goto LABEL_104;
      }

      __error();
      OUTLINED_FUNCTION_15_18();
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v2;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return v2;
      }

      goto LABEL_95;
    }

    if (VCPacketFilterIsOfKindBasebandNotification(a2))
    {
      if (VTP_SetPktType(*(v5 + 48), 256) != -1)
      {
        v34 = *(v5 + 48);
        theArray = 0;
        if (v34 == -1)
        {
          OUTLINED_FUNCTION_19_16();
          if (VRTraceGetErrorLogLevelForModule() <= 2)
          {
            return v2;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!OUTLINED_FUNCTION_31())
          {
            goto LABEL_55;
          }

          OUTLINED_FUNCTION_12_19();
          OUTLINED_FUNCTION_0_5();
          v69 = 687;
        }

        else
        {
          v35 = VCPacketFilterGetCMBaseObject(a2, v33);
          v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v36)
          {
            v2 = 4294954514;
            goto LABEL_55;
          }

          v2 = v36(v35, @"CellularUniqueTag", *MEMORY[0x1E695E480], &theArray);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_55;
          }

          if (theArray)
          {
            valuePtr = 0;
            CFNumberGetValue(theArray, kCFNumberSInt32Type, &valuePtr);
            if (VTP_SetCellularUniqueTag(v34, valuePtr) != -1)
            {
              goto LABEL_55;
            }

            __error();
            OUTLINED_FUNCTION_15_18();
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_55;
            }

            VRTraceErrorLogLevelToCSTR();
            if (!OUTLINED_FUNCTION_31())
            {
              goto LABEL_55;
            }

            goto LABEL_45;
          }

          OUTLINED_FUNCTION_19_16();
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_55;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!OUTLINED_FUNCTION_31())
          {
            goto LABEL_55;
          }

          OUTLINED_FUNCTION_12_19();
          OUTLINED_FUNCTION_0_5();
          v69 = 691;
        }

        goto LABEL_103;
      }

      __error();
      OUTLINED_FUNCTION_15_18();
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v2;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return v2;
      }

LABEL_95:
      __error();
      OUTLINED_FUNCTION_32_5();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_35_5();
      OUTLINED_FUNCTION_40_5();
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_19_16();
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v2;
    }

    VRTraceErrorLogLevelToCSTR();
    v45 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v2;
    }

    OUTLINED_FUNCTION_28_8();
    v66 = v46;
    v67 = "_VCTransportStreamVTPSetPacketFilter";
    v68 = 1024;
    v69 = 600;
    v70 = 2112;
    v71 = a2;
    v47 = &dword_1DB56E000;
    v48 = " [%s] %s:%d Unsupported packet filter type %@";
    v49 = buf;
    v50 = v45;
    v51 = OS_LOG_TYPE_ERROR;
    v52 = 38;
LABEL_53:
    _os_log_error_impl(v47, v50, v51, v48, v49, v52);
    return v2;
  }

  OUTLINED_FUNCTION_19_16();
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return v2 | 0x3C;
  }

  VRTraceErrorLogLevelToCSTR();
  v2 = (v2 + 60);
  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_5_32();
    OUTLINED_FUNCTION_0_5();
    v69 = 573;
LABEL_70:
    OUTLINED_FUNCTION_16_0();
    goto LABEL_53;
  }

  return v2;
}

void VCTransportStreamVTPCreate_cold_1()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

void VCTransportStreamVTPCreate_cold_2()
{
  __error();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_40_5();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCTransportStreamVTPCreate_cold_3()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_40_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCTransportStreamVTPCreate_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_40_5();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCTransportStreamVTPCreate_cold_5()
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

uint64_t VCTransportStreamVTPCreate_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  }

  return OUTLINED_FUNCTION_35_6();
}

void _VCTransportStreamVTPCopyProperty_cold_1()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyProperty_cold_2()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyProperty_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v4, v5, " [%s] %s:%d Property name '%@' and property value out '%@' must not be NULL", v6, v7, v8, v9, v10);
    }
  }

  *a3 = -2144206847;
}

void _VCTransportStreamVTPCopyProperty_cold_4()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSetProperty_cold_1()
{
  __error();
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

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamVTPSetProperty_cold_2(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x22u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_5_1();
      _os_log_debug_impl(v9, v10, OS_LOG_TYPE_DEBUG, v11, v12, 0x22u);
    }
  }

  *a2 = a1;
}

void _VCTransportStreamVTPSetProperty_cold_3()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSetProperty_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x26u);
}

void _VCTransportStreamVTPSetProperty_cold_5(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_8_23(&dword_1DB56E000, v4, v5, " [%s] %s:%d propertyKey=%@ and propertyValue=%@ must not be NULL", v6, v7, v8, v9, v10);
    }
  }

  *a3 = -2144206847;
}

void _VCTransportStreamVTPSetProperty_cold_6()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyReceiveBufferSize_cold_1()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyReceiveBufferSize_cold_2()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyIsIPv6_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

void _VCTransportStreamVTPCopyIsIPv6_cold_2()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyIsIPv6_cold_3()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyReceiveHopLimitEnabled_cold_1()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyReceiveHopLimitEnabled_cold_2()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSetSendFailedHandler_cold_1()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSend_cold_1()
{
  OUTLINED_FUNCTION_9_32();
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

void _VCTransportStreamVTPSend_cold_2(int a1, unsigned int *a2)
{
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  v4 = v3 | 0xD0320000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_40_5();
      _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  *a2 = v4;
}

void _VCTransportStreamVTPSend_cold_3(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_1();
      _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x26u);
    }
  }

  *a2 = -2144206847;
}

void _VCTransportStreamVTPSend_cold_4(uint64_t a1, _DWORD *a2)
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
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
    }
  }

  *a2 = -2144206847;
}

void _VCTransportStreamVTPSend_cold_5()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSend_cold_6()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSend_cold_7()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyPacketFilter_cold_1()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPCopyPacketFilter_cold_2()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSetReceivedHandler_cold_1()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPPerformReceive_cold_1()
{
  OUTLINED_FUNCTION_9_32();
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

void _VCTransportStreamVTPPerformReceive_cold_2()
{
  OUTLINED_FUNCTION_9_32();
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

void _VCTransportStreamVTPPerformReceive_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_40_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void _VCTransportStreamVTPPerformReceive_cold_4(int a1)
{
  if (a1 >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamVTPPerformReceive_cold_5()
{
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

void _VCTransportStreamVTPActivate_cold_1()
{
  OUTLINED_FUNCTION_9_32();
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

void _VCTransportStreamVTPActivate_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCTransportStreamVTPActivate_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

void _VCTransportStreamVTPActivate_cold_4()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPDeactivate_cold_1()
{
  OUTLINED_FUNCTION_9_32();
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

void _VCTransportStreamVTPDeactivate_cold_2()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_1()
{
  __error();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      __error();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_2(_DWORD *a1)
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

  *a1 = 0;
}

void _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_3()
{
  OUTLINED_FUNCTION_4_42();
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

void _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_4()
{
  OUTLINED_FUNCTION_4_42();
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

uint64_t _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  }

  return OUTLINED_FUNCTION_35_6();
}

void _VCTransportStreamVTPHandlePacketReceived_cold_1()
{
  OUTLINED_FUNCTION_9_32();
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

void _VCTransportStreamVTPHandlePacketReceived_cold_2()
{
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

void _VCTransportStreamVTPHandlePacketReceived_cold_3()
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

void VCMediaControlInfo_SerializedSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d MediaControlInfo is nil", v2, v3, v4, v5, v6);
}

void VCMediaControlInfo_SetVersion_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d MediaControlInfo is nil", v2, v3, v4, v5, v6);
}

void VCMediaControlInfoIPCamera_SerializedSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d MediaControlInfo is nil", v2, v3, v4, v5, v6);
}

void VCMediaControlInfoIPCamera_SerializeBuffer_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing CVO info", v2, v3, v4, v5, v6);
}

void VCMediaControlInfoIPCamera_SerializeBuffer_cold_2()
{
  OUTLINED_FUNCTION_28_9();
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

void VCMediaControlInfoIPCamera_SerializeBuffer_cold_3()
{
  OUTLINED_FUNCTION_11_20();
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

void VCMediaControlInfoIPCamera_SerializeBuffer_cold_4()
{
  OUTLINED_FUNCTION_11_20();
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

void VCMediaControlInfoSerializeWithData_cold_1()
{
  OUTLINED_FUNCTION_21_9();
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

void VCMediaControlInfoSerializeWithData_cold_2()
{
  OUTLINED_FUNCTION_21_9();
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

void VCMediaControlInfoSerializeWithData_cold_3()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_14_26();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
    }
  }

  *v0 = -2144403442;
}

void VCMediaControlInfoSerializeWithData_cold_4()
{
  OUTLINED_FUNCTION_37();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCMediaControlInfoSerializeWithData_cold_5()
{
  OUTLINED_FUNCTION_28_9();
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

void VCMediaControlInfoSerializeWithData_cold_6()
{
  OUTLINED_FUNCTION_11_20();
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

void VCMediaControlInfoUnserializeWithData_cold_1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_27_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_36();
}

void VCMediaControlInfoUnserializeWithData_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_27_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_36();
}

void VCMediaControlInfoUnserializeWithData_cold_3()
{
  OUTLINED_FUNCTION_10_27();
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

void VCMediaControlInfoUnserializeWithData_cold_4()
{
  OUTLINED_FUNCTION_10_27();
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

void VCMediaControlInfoUnserializeWithData_cold_5()
{
  OUTLINED_FUNCTION_10_27();
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

void VCMediaControlInfoUnserializeWithData_cold_6()
{
  OUTLINED_FUNCTION_37();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

void VCMediaControlInfoUnserializeWithData_cold_7()
{
  OUTLINED_FUNCTION_11_20();
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

void VCMediaControlInfoFaceTimeAudio_SerializedSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d MediaControlInfo is nil", v2, v3, v4, v5, v6);
}

void VCMediaControlInfoFaceTimeAudio_SerializeBuffer_cold_1(uint64_t a1, void *a2)
{
  [a2 description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v2, v3, " [%s] %s:%d %@", v4, v5, v6, v7, v8);
}

void VCMediaControlInfoFaceTimeAudio_SerializeBuffer_cold_2()
{
  OUTLINED_FUNCTION_11_20();
  if (v0 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCMediaControlInfoFaceTimeAudio_SetVideoEnabled_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid mediaControlInfo.", v2, v3, v4, v5, v6);
}

void VCMediaControlInfoFaceTimeVideo_SerializedSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d MediaControlInfo is nil", v2, v3, v4, v5, v6);
}

void VCMediaControlInfoFaceTimeVideo_SerializeBuffer_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_14_26();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
    }
  }

  *v0 = -2144403442;
}

void VCMediaControlInfoFaceTimeVideo_SerializeBuffer_cold_2()
{
  OUTLINED_FUNCTION_11_20();
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

void VCMediaControlInfoFaceTimeVideo_SerializeBuffer_cold_3()
{
  OUTLINED_FUNCTION_11_20();
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

void VCMediaControlInfoMultiwayAudio_SerializedSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d MediaControlInfo is nil", v2, v3, v4, v5, v6);
}

void VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_1()
{
  OUTLINED_FUNCTION_21_9();
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

void VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_2()
{
  OUTLINED_FUNCTION_21_9();
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

void VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_3()
{
  OUTLINED_FUNCTION_28_9();
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

void VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_4()
{
  OUTLINED_FUNCTION_11_20();
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

void VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_5()
{
  OUTLINED_FUNCTION_11_20();
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

void _VCStreamInputCaptureSource_OnCaptureVideoFrame_cold_1()
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

void AVCPacketRelayDriverThreadStart_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCPacketRelayDriverThread.m:%d: AVCPacketRelayDriverThread: AVCPacketRelayDriverProc start failed (%d)", v4, 0x28u);
}

void AVCPacketRelayDriverThreadStart_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  v6 = v3;
  v7 = v4;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCPacketRelayDriverThread.m:%d: AVCPacketRelayDriverThread: CreateHandle failed (%d)", v5, 0x28u);
}

void AVCPacketRelayDriverThreadStart_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  v5 = v1;
  v6 = 224;
  _os_log_fault_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_FAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCPacketRelayDriverThread.m:%d: AVCPacketRelayDriverThread: calloc(%d) failed", v3, 0x28u);
}

void AVCPacketRelayDriverThreadStart_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AVCPacketRelayDriverProc_cold_1()
{
  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  v6 = 326;
  v7 = v1;
  v8 = 50;
  v9 = v1;
  v10 = 20;
  v11 = v1;
  v12 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelayDriverProc: Failed to set CPU limit (%d, %d) (error=%d), move back to timeshare.", v4, 0x2Eu);
}

void AVCPacketRelayDriverProc_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  v6 = 266;
  v7 = v3;
  v8 = v4;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelayDriverProc: select failed with errno %d", v5, 0x22u);
}

void AVCPacketRelayDriverProc_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AVCPacketRelayDriverThreadStop_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void AVCPacketRelayDriverThreadAddFileDescriptorWithConnection_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void AVCPacketRelayDriverThreadAddFileDescriptorWithConnection_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void AVCPacketRelayDriverThreadRemoveFileDescriptor_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _VCTimescaleWSOLA_SearchMinimumCostPosition()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Candidate length=%d", v2, v3, v4, v5);
}

void _VCTimescaleWSOLA_PerformAdaptation()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_VCTimescaleWSOLA_PerformAdaptation";
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v1, v2, " [%s] %s:%d Nin:%d", v3, *v4, "_VCTimescaleWSOLA_PerformAdaptation" >> 16, 296);
}

{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Wsola output size: %d =========", v2, v3, v4, v5);
}

void VCTimescaleWSOLA_Initialize_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 445;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Unsupported warp frame size", v1, 0x1Cu);
}

void VCTimescaleWSOLA_Initialize_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 445;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported warp frame size", v1, 0x1Cu);
}

void VCTimescaleWSOLA_Initialize_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize the float converter", v2, v3, v4, v5, v6);
    }
  }
}

void VCTimescaleWSOLA_Initialize_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize the int converter", v2, v3, v4, v5, v6);
    }
  }
}

void VCTimescaleWSOLA_Initialize_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 458;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to initialize the warp converters", v1, 0x1Cu);
}

void VCTimescaleWSOLA_Initialize_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the extended buffer", v2, v3, v4, v5, v6);
    }
  }
}

void VCTimescaleWSOLA_Adapt_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Output buffer size %d is insufficient to hold data", v1, 0x22u);
}

void VCTimescaleWSOLA_Adapt_cold_2()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Copied Output: %d", v2, v3, v4, v5);
}

void HandleWCMEvent_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = a1;
  v4 = 2080;
  v5 = "ProcessErrorEvent";
  v6 = 1024;
  v7 = 73;
  v8 = 1024;
  v9 = 73;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCWCMClient.m:%d: WCM: errro event.", &v2, 0x22u);
}

void VideoPacketDump_OpenRTPLog_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VideoPacketDump_OpenRTPLog";
  v6 = 1024;
  v7 = 22;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoPacketDump: failed to open log file", &v2, 0x1Cu);
}

void VideoPacketDump_OpenRTPLog_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VideoPacketDump_OpenRTPLog";
      v8 = 1024;
      v9 = 16;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d dumpID is null", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCVoiceDetector_Create_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 102;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Vad Library functions invalid", v1, 0x1Cu);
}

void VCVoiceDetector_Create_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "VCVoiceDetector_Create";
  v5 = 1024;
  OUTLINED_FUNCTION_21();
  v6 = "/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can not open library (AUDIODSP_COMPONENT_DYLIB=%s), VAD API may not be supported", v2, 0x26u);
}

void VCVoiceDetector_Create_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 64;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can not allocate memory for VCVoiceDetector", v1, 0x1Cu);
}

void VCVoiceDetector_Start_cold_1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v1, v2, " [%s] %s:%d Vad_EnableLegacyVAD error=%d", v3, v4, v5, v6, v7);
    }
  }
}

void VCVoiceDetector_Start_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Vad_Initialize error=%d", v2, v3, v4, v5, v6);
    }
  }
}

void VCVoiceDetector_ProcessSampleBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_11_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Vad_GetSpeechProbabilityHardValue failed! error=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_7_35();
}

void VCVoiceDetector_ProcessSampleBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_11_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Vad_GetSpeechProbabilitySoftValue failed! error=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_7_35();
}

void VCVoiceDetector_ProcessSampleBuffer_cold_3(float a1, uint64_t a2, float *a3, _BYTE *a4)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_11_15(&dword_1DB56E000, v7, v8, " [%s] %s:%d Vad_GetSoundActivityValue failed! error=%d", v9, v10, v11, v12, v13);
    }
  }

  *a4 = 0;
  *a3 = a1;
}

void _VCJitterBuffer_GetJBTargetFromEstimatedTarget_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Invalid parameters in callback", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 4;
}

void VCJitterBuffer_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize the lag processor", v2, v3, v4, v5, v6);
    }
  }
}

void VCJitterBuffer_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize the target estimator", v2, v3, v4, v5, v6);
    }
  }
}

void VCJitterBuffer_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create jitter queue", v2, v3, v4, v5, v6);
    }
  }
}

void VCJitterBuffer_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create pre-load queue", v2, v3, v4, v5, v6);
    }
  }
}

void VCJitterBuffer_Create_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the JitterBuffer memory", v2, v3, v4, v5, v6);
    }
  }
}

void VCJitterBuffer_Create_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the JitterBuffer", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_Create_cold_7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Config (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_Finalize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_QueueSteeringCallback_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Could not retrieve VCJitterBuffer", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 4;
}

void VCJitterBuffer_InitializePlayback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_Reset_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_ResetPlaybackReportingMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_ResetJitterQueueUnderflowRate_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_DiscardQueueExcess_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_SetRedAudioDelayInSamples_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_Flush_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_EnqueuePacket_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_AudioPacketFree_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_PlaybackGetSamples_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "VCJitterBuffer_PlaybackGetSamples";
  v6 = 1024;
  v7 = 1192;
  v8 = 2048;
  v9 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Playback get samples", v3, 0x26u);
}

void VCJitterBuffer_PlaybackGetSamples_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_GetAWDReportingMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_GetWRMReportingMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_GetPlaybackReportingMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_GetReportingMetrics_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_SetMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_SetNetworkType_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_ProcessWiFiNetworkNotification_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_ProcessCellularNetworkNotification_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_SetSkipDecodeOnSilence_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_AudioPacketAlloc_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCJitterBuffer_AudioFrameAlloc_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = MEMORY[0x1EEDBBB28](*&category, value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSSize NSSizeFromString(NSString *aString)
{
  MEMORY[0x1EEDC7108](aString);
  result.height = v2;
  result.width = v1;
  return result;
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

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}