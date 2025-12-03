@interface VCAudioTierPickerPlistEntry
- (BOOL)configure:(id)configure;
- (VCAudioTierPickerPlistEntry)initWithDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation VCAudioTierPickerPlistEntry

- (VCAudioTierPickerPlistEntry)initWithDictionary:(id)dictionary
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCAudioTierPickerPlistEntry;
  v4 = [(VCAudioTierPickerPlistEntry *)&v7 init];
  v5 = v4;
  if (v4 && ![(VCAudioTierPickerPlistEntry *)v4 configure:dictionary])
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioTierPickerPlistEntry;
  [(VCAudioTierPickerPlistEntry *)&v3 dealloc];
}

- (BOOL)configure:(id)configure
{
  v5 = [configure objectForKeyedSubscript:@"payload"];
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [VCAudioTierPickerPlistEntry configure:];
    }

LABEL_18:
    LOBYTE(v9) = 0;
    return v9;
  }

  self->_payload = [v5 integerValue];
  v6 = [configure objectForKeyedSubscript:@"codecBitrate"];
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [VCAudioTierPickerPlistEntry configure:];
    }

    goto LABEL_18;
  }

  self->_codecBitrate = [v6 unsignedIntegerValue];
  v7 = [configure objectForKeyedSubscript:@"packetsPerBundle"];
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [VCAudioTierPickerPlistEntry configure:];
    }

    goto LABEL_18;
  }

  self->_packetsPerBundle = [v7 unsignedIntegerValue];
  v8 = [configure objectForKeyedSubscript:@"redNumPayloads"];
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [VCAudioTierPickerPlistEntry configure:];
    }

    goto LABEL_18;
  }

  self->_redNumPayloads = [v8 unsignedIntegerValue];
  self->_featureFlag = [configure objectForKeyedSubscript:@"featureFlag"];
  LOBYTE(v9) = 1;
  return v9;
}

- (void)configure:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing %@", v2, v3, v4, v5, v6);
}

- (void)configure:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing %@", v2, v3, v4, v5, v6);
}

- (void)configure:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing %@", v2, v3, v4, v5, v6);
}

- (void)configure:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_18(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing %@", v2, v3, v4, v5, v6);
}

@end