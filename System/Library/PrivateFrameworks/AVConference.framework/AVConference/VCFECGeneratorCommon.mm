@interface VCFECGeneratorCommon
@end

@implementation VCFECGeneratorCommon

void ___VCFECGeneratorCommon_RegisterPeriodicReportingTask_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = selectDestinationForRTMetrics();
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = v5;
          v17 = 2080;
          v18 = "_VCFECGeneratorCommon_PeriodicReportingTask";
          v19 = 1024;
          v20 = 68;
          v21 = 2112;
          v22 = v4;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFECGenerator's payload='%@'", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        ___VCFECGeneratorCommon_RegisterPeriodicReportingTask_block_invoke_cold_1(v5);
      }
    }

    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    pthread_mutex_lock((DerivedStorage + 12331656));
    if (*(DerivedStorage + 12331136))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (DerivedStorage + 12331144 + 2 * v10);
        v13 = CFStringCreateWithFormat(v8, 0, @"%d", *v12);
        *buf = v12[1];
        v14 = CFNumberCreate(v8, kCFNumberIntType, buf);
        CFDictionaryAddValue(Mutable, v13, v14);
        CFRelease(v13);
        CFRelease(v14);
        v10 = ++v11;
      }

      while (*(DerivedStorage + 12331136) > v11);
    }

    pthread_mutex_unlock((DerivedStorage + 12331656));
    CFDictionaryAddValue(v4, @"VCFECGenVector", Mutable);
    CFRelease(Mutable);
  }
}

void ___VCFECGeneratorCommon_RegisterPeriodicReportingTask_block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "_VCFECGeneratorCommon_PeriodicReportingTask";
  OUTLINED_FUNCTION_4_2();
  v7 = 68;
  v8 = 2112;
  v9 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCFECGenerator's payload='%@'", &v3, 0x26u);
}

@end