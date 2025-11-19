@interface VCMemoryUtil
@end

@implementation VCMemoryUtil

void __VCMemoryUtil_IsProbabilisticGuardMallocEnabled_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  zone_name = malloc_get_zone_name(**MEMORY[0x1E69E9B68]);
  if (zone_name)
  {
    v1 = strcmp(zone_name, "ProbGuardMallocZone") == 0;
  }

  else
  {
    v1 = 0;
  }

  VCMemoryUtil_IsProbabilisticGuardMallocEnabled_isProbabilisticGuardMallocEnabled = v1;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"forceProbabilisticGuardMallocMode", v1);
  VCMemoryUtil_IsProbabilisticGuardMallocEnabled_isProbabilisticGuardMallocEnabled = BoolValueForKey;
  if (BoolValueForKey && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "VCMemoryUtil_IsProbabilisticGuardMallocEnabled_block_invoke";
      v9 = 1024;
      v10 = 26;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Probabilistic Guard Malloc enabled", &v5, 0x1Cu);
    }
  }
}

void __VCMemoryUtil_IsAddressSanitizerEnabled_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  zone_name = malloc_get_zone_name(**MEMORY[0x1E69E9B68]);
  if (zone_name)
  {
    v1 = strstr(zone_name, "asan") != 0;
  }

  else
  {
    v1 = 0;
  }

  VCMemoryUtil_IsAddressSanitizerEnabled_isASANEnabled = v1;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"forceASANMode", v1);
  VCMemoryUtil_IsAddressSanitizerEnabled_isASANEnabled = BoolValueForKey;
  if (BoolValueForKey && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "VCMemoryUtil_IsAddressSanitizerEnabled_block_invoke";
      v9 = 1024;
      v10 = 40;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ASAN mode detected", &v5, 0x1Cu);
    }
  }
}

@end