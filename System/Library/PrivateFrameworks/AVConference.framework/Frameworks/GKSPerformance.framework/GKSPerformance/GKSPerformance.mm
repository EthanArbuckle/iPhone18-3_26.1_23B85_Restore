void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

double machTimeScale()
{
  if ((_MergedGlobals & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_27E2DC668;
}

uint64_t GKSFacetimeSubmitMetric(int a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "GKSFacetimeSubmitMetric";
      v10 = 1024;
      v11 = 2330;
      v12 = 1024;
      v13 = a1;
      _os_log_impl(&dword_23D482000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AWDFTLog: Metric Id:0x%x ignored", &v6, 0x22u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27E2DC668 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}