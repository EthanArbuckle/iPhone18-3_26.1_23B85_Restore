@interface VCMediaNegotiationBlobV2StreamGroupStream(Utils)
- (unsigned)payloadsVersion;
@end

@implementation VCMediaNegotiationBlobV2StreamGroupStream(Utils)

- (unsigned)payloadsVersion
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_payloadsVersion;
  }

  else
  {
    return 1;
  }
}

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:defaultConfig:.cold.1()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:defaultConfig:.cold.2()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:defaultConfig:.cold.3()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:defaultConfig:.cold.4()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:defaultConfig:.cold.5()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:.cold.1(int a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr(a1);
      [a2 qualityIndex];
      [a2 payloads];
      [a2 codecs];
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x40u);
    }
  }
}

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:.cold.2()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:.cold.3()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:.cold.4()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:.cold.5()
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

- (void)initWithStreamConfig:()Utils payloadConfigs:streamGroupID:.cold.6()
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

- (void)initSSRC:()Utils .cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      [v0 v2StreamID];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
}

- (void)initSSRC:()Utils .cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      [v0 repairedStreamID];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
}

- (void)streamConfigWithPayloadConfigs:()Utils payloadConfigSampleRates:streamGroupID:.cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_20();
}

- (void)streamConfigWithPayloadConfigs:()Utils payloadConfigSampleRates:streamGroupID:.cold.2(int a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      v9 = 516;
      v10 = v5;
      v11 = v6;
      v12 = v7;
      v13 = a2;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to determine the quality index. streamGroupID=%s streamIndex=%d", v8, 0x2Cu);
    }
  }
}

- (void)streamConfigWithPayloadConfigs:()Utils payloadConfigSampleRates:streamGroupID:.cold.6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  a14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315906;
      *(&a9 + 4) = v26;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      *(&a12 + 2) = v25;
      _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported metadata flag (0x%x)", &a9, 0x22u);
    }
  }

  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_36();
}

- (void)streamConfigWithPayloadConfigs:()Utils payloadConfigSampleRates:streamGroupID:.cold.7()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      FourccToCStr(v3);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  *v1 = 0;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

+ (void)payloadsWithStreamConfig:()Utils payloadBitmap:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)payloadsWithStreamConfig:()Utils payloadBitmap:.cold.2()
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
      v4 = 981;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid payload bitmap", &v2, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)payloadSpecWithStreamConfig:()Utils payloadConfigs:payloadSpecs:.cold.1()
{
  OUTLINED_FUNCTION_17_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      [v1 count];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  *v0 = 0;
}

+ (void)payloadsWithPayloadBit:()Utils .cold.1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid payload: 0x%x", v3, *(&v3 + 1), v4, v5);
}

- (void)updatePayloadSpecsForConfig:()Utils defaultConfig:.cold.1(uint64_t a1, void *a2)
{
  [a2 payloadSpecOrPayloads];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

- (void)updatePayloadSpecsForConfig:()Utils defaultConfig:payloadConfigs:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid codec index (%d)!", v3, *(&v3 + 1), v4, v5);
}

- (void)updatePayloadSpecsForConfig:()Utils defaultConfig:payloadConfigs:.cold.2(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid codec index (%d)!", v3, *(&v3 + 1), v4, v5);
}

- (void)updatePayloadSpecsForConfig:()Utils defaultConfig:payloadConfigs:.cold.3(uint64_t a1, void *a2)
{
  [a2 payloadSpecOrPayloads];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

- (void)optionalPackedPayloaWithDefaultConfig:()Utils .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_12_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d The audioChannelCount field doesn't fit in a uint8. audioChannelCount=%x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)optionalPackedPayloaWithDefaultConfig:()Utils .cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_12_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d The maxNetworkBitrate field doesn't fit in a uint16. maxNetworkBitrate=%x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)optionalPackedPayloaWithDefaultConfig:()Utils .cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_12_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d The metadata field doesn't fit in a uint16. metadata=%x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

@end