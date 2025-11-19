@interface VCMediaNegotiationBlobV2StreamGroup(Utils)
@end

@implementation VCMediaNegotiationBlobV2StreamGroup(Utils)

- (void)initWithStreamGroupConfig:()Utils defaultConfig:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([a1 groupID]);
      FourccToCStr([a1 mediaType]);
      FourccToCStr([a1 mediaSubtype]);
      FourccToCStr([a1 syncGroupID]);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x44u);
    }
  }
}

- (void)initWithStreamGroupConfig:()Utils defaultConfig:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([a1 groupID]);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

- (void)initWithStreamGroupConfig:()Utils defaultConfig:.cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([a1 groupID]);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

- (void)initWithStreamGroupConfig:()Utils defaultConfig:.cold.4(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([a1 groupID]);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

- (void)initWithStreamGroupConfig:()Utils defaultConfig:.cold.5(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([a1 groupID]);
      FourccToCStr([a1 mediaType]);
      FourccToCStr([a1 mediaSubtype]);
      FourccToCStr([a1 syncGroupID]);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x44u);
    }
  }
}

- (void)initWithStreamGroupConfig:()Utils .cold.1(uint64_t a1, void *a2)
{
  FourccToCStr([a2 groupID]);
  FourccToCStr([a2 mediaType]);
  FourccToCStr([a2 mediaSubtype]);
  FourccToCStr([a2 syncGroupID]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x44u);
}

- (void)getStreamGroupConfig:()Utils .cold.1()
{
  OUTLINED_FUNCTION_1_13();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FourccToCStr(v3);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_14_17(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to read the payload configurations for streamGroupID=%s", v6, v7, v8, v9, 2u);
    }
  }

  *v1 = -2142961633;
  *v0 = v2;
}

- (void)getStreamGroupConfig:()Utils .cold.2()
{
  OUTLINED_FUNCTION_1_13();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FourccToCStr(v3);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_14_17(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to add streams to stream group (streamGroupID=%s)", v6, v7, v8, v9, 2u);
    }
  }

  *v1 = -2142961633;
  *v0 = v2;
}

- (void)getStreamGroupConfig:()Utils .cold.3(void *a1, void *a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 streamGroup];
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
    }
  }

  *a3 = -2142961648;
  *a2 = 0;
}

- (void)getStreamGroupConfig:()Utils .cold.4(void *a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = -2142961633;
  *a1 = 0;
}

- (void)codecIndexForType:()Utils inPayloadConfigurations:.cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Invalid argument. defaultPayloadConfigs is nil", v4, v5, v6, v7, v8);
    }
  }

  *a1 = -1;
}

- (void)appendV2PayloadsToStreamConfig:()Utils streamGroupConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)appendV2PayloadsToStreamConfig:()Utils streamGroupConfig:.cold.2()
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

- (void)appendV2PayloadsToStreamConfig:()Utils streamGroupConfig:.cold.3()
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

- (void)appendStreamsToStreamGroupConfig:()Utils streamGroupID:rtpSampleRates:.cold.1(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

+ (void)defaultsForStreamGroupCustom:()Utils .cold.1(uint64_t a1, int a2)
{
  FourccToCStr(a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

- (void)setupStreamsWithGroupConfig:()Utils .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the stream config", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupPayloadsWithGroupConfig:()Utils .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupPayloadsWithGroupConfig:()Utils .cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the payload config", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)updatePayloadConfigsWithStreamGroupConfig:()Utils rtpSampleRates:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create the payload spec", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

@end