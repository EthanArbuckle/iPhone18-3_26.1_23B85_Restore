@interface VCAudioStream(Telephony)
@end

@implementation VCAudioStream(Telephony)

- (void)setJitterBufferMode:()Telephony .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)handleCodecModeChangeEvent:()Telephony .cold.1(uint64_t a1, id *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [objc_msgSend(*a2 "config")];
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x32u);
    }
  }
}

- (void)handleCodecModeChangeEvent:()Telephony .cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

- (void)handleCodecModeChangeEvent:()Telephony .cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }
}

- (void)getCodecModeChangeEvent:()Telephony forCodecBitrate:payload:.cold.1(uint64_t a1, int a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [objc_msgSend(*(a1 + 1232) "currentAudioPayloadConfig")];
      v9 = 136316162;
      v10 = v6;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      v11 = v8;
      v12 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Input parameter error payload=%d, codecBitrate=%u", &v9, 0x28u);
    }
  }

  *a3 = 0;
}

- (void)getCodecModeChangeEvent:()Telephony forCodecBitrate:payload:.cold.2(_BYTE *a1)
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

- (void)handleBasebandRateTrendSuggestion:()Telephony .cold.1(id *a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [objc_msgSend(*a1 "currentAudioPayloadConfig")];
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
    }
  }

  *a2 = 0;
}

- (void)handleANBR:()Telephony forDirection:.cold.1(id *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [objc_msgSend(*a1 "currentAudioPayloadConfig")];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }
}

- (void)handleANBR:()Telephony forDirection:.cold.2(id *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [objc_msgSend(*a1 "currentAudioPayloadConfig")];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }
}

- (void)handleANBR:()Telephony forDirection:.cold.3(id *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [objc_msgSend(*a1 "currentAudioPayloadConfig")];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

- (void)rateAdaptation:()Telephony targetBitrateDidChange:rateChangeCounter:.cold.1(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    v17 = 362;
    v18 = v5;
    LODWORD(v19) = a2;
    OUTLINED_FUNCTION_2();
    v11 = 34;
LABEL_12:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = 136316418;
      v16 = v12;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      v17 = 362;
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = a1;
      v22 = v14;
      v23 = a2;
      v6 = &dword_1DB56E000;
      v9 = " [%s] %s:%d %@(%p) Bitrate adaptation not supported payload=%d";
      v10 = &v15;
      v7 = v13;
      v8 = OS_LOG_TYPE_ERROR;
      v11 = 54;
      goto LABEL_12;
    }
  }
}

- (void)rateAdaptation:()Telephony targetBitrateDidChange:rateChangeCounter:.cold.2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  v6 = 363;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Target bitrate change not supported targetBitrate=%d", &v4, 0x22u);
}

- (void)rateAdaptation:()Telephony targetBitrateDidChange:rateChangeCounter:.cold.3(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_7_1();
    v18 = 2080;
    OUTLINED_FUNCTION_5_24();
    v19 = v4;
    v20 = v5;
    LODWORD(v21) = v6;
    v7 = " [%s] %s:%d Received unexpected bitrate change _rateAdaptation=%@, anbrEnabled=%d";
    v8 = v3;
    v9 = 44;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v7, &v16, v9);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v16 = 136316674;
      v17 = v10;
      v18 = 2080;
      OUTLINED_FUNCTION_5_24();
      v19 = v2;
      v20 = 2048;
      v21 = a1;
      v22 = v12;
      v23 = v13;
      v24 = v14;
      v25 = v15;
      v7 = " [%s] %s:%d %@(%p) Received unexpected bitrate change _rateAdaptation=%@, anbrEnabled=%d";
      v8 = v11;
      v9 = 64;
      goto LABEL_12;
    }
  }
}

@end