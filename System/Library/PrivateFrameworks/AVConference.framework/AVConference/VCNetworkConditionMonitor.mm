@interface VCNetworkConditionMonitor
@end

@implementation VCNetworkConditionMonitor

void __VCNetworkConditionMonitor_SetBrokenNetworkStatus_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 41);
  v3 = *(a1 + 41);
  v4 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    if (*(v4 + 122) == v3)
    {
      return;
    }
  }

  else
  {
    if (*(v4 + 123) == v3)
    {
      return;
    }

    LOBYTE(v3) = *(v4 + 122);
  }

  *(v4 + 122) = v3;
  if (*(a1 + 40))
  {
    v2 = (v4 + 123);
  }

  *(v4 + 123) = *v2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 32);
      v9 = *(v8 + 122);
      LODWORD(v8) = *(v8 + 123);
      v11 = 136316674;
      v12 = v5;
      v13 = 2080;
      v14 = "VCNetworkConditionMonitor_SetBrokenNetworkStatus_block_invoke";
      v15 = 1024;
      v16 = 207;
      v17 = 1024;
      v18 = 207;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v8;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/ConnectionManager/VCNetworkConditionMonitor.c:%d: NetworkConditionMonitor: isLocal=%d isLocalNetworkBroken=%d isRemoteNetworkBroken=%d", &v11, 0x34u);
    }
  }

  v10 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    _VCNetworkConditionMonitor_RunLocalNetworkDetectionAlgorithm(v10);
  }

  else
  {
    _VCNetworkConditionMonitor_triggerNetworkConditionCallback(v10, 0);
  }
}

void __VCNetworkConditionMonitor_SetWiFiChannelQualityScore_block_invoke(uint64_t a1, double a2)
{
  v28 = *MEMORY[0x1E69E9840];
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  v5 = 72;
  if (v4 < v2)
  {
    v5 = 80;
  }

  v6 = v4 * (1.0 - *(v3 + v5)) + v2 * *(v3 + v5);
  *(v3 + 104) = v6;
  v7 = *(v3 + 120);
  v8 = v6 <= *(v3 + 40);
  *(v3 + 120) = v8;
  if (v7 != v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = "recovered";
        v14 = *(a1 + 40);
        if (*(v12 + 120))
        {
          v13 = "degraded";
        }

        v15 = *(v12 + 104);
        v16 = 136316418;
        v17 = v10;
        v18 = 2080;
        v19 = "VCNetworkConditionMonitor_SetWiFiChannelQualityScore_block_invoke";
        v20 = 1024;
        v21 = 228;
        v22 = 2080;
        v23 = v13;
        v24 = 1024;
        v25 = v14;
        v26 = 2048;
        v27 = v15;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkConditionMonitor: LocalWiFiQuality=%s. latestWiFiChannelQualityScore=%d WifiChannelQualityScoreEnvelopeValue=%.2f", &v16, 0x36u);
      }
    }

    _VCNetworkConditionMonitor_RunLocalNetworkDetectionAlgorithm(*(a1 + 32));
  }
}

void __VCNetworkConditionMonitor_SetCellSignalStrengthBars_block_invoke(uint64_t a1, double a2)
{
  v34 = *MEMORY[0x1E69E9840];
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  v5 = 88;
  if (v4 < v2)
  {
    v5 = 96;
  }

  v6 = *(v3 + v5);
  *&v7 = v4 * (1.0 - v6);
  v8 = *&v7 + v2 * v6;
  *(v3 + 112) = v8;
  LOBYTE(v7) = *(a1 + 41);
  v9 = v7;
  *(v3 + 56) = v9;
  v10 = *(v3 + 121);
  v11 = v8 <= *(v3 + 64) + *(v3 + 48) * v9;
  *(v3 + 121) = v11;
  if (v10 != v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = "recovered";
        v17 = *(a1 + 40);
        if (*(v15 + 121))
        {
          v16 = "degraded";
        }

        v18 = *(a1 + 41);
        v19 = *(v15 + 112);
        v20 = 136316674;
        v21 = v13;
        v22 = 2080;
        v23 = "VCNetworkConditionMonitor_SetCellSignalStrengthBars_block_invoke";
        v24 = 1024;
        v25 = 251;
        v26 = 2080;
        v27 = v16;
        v28 = 1024;
        v29 = v17;
        v30 = 1024;
        v31 = v18;
        v32 = 2048;
        v33 = v19;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkConditionMonitor: LocalCellQuality=%s. latestCellSignalStrengthBars=%d latestMaxCellSignalStrengthBars=%d cellSignalStrengthBarsEnvelopeValue=%.2f", &v20, 0x3Cu);
      }
    }

    _VCNetworkConditionMonitor_RunLocalNetworkDetectionAlgorithm(*(a1 + 32));
  }
}

void __VCNetworkConditionMonitor_SetRemoteNetworkQuality_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 125) != v2)
  {
    *(v1 + 125) = v2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 125);
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "VCNetworkConditionMonitor_SetRemoteNetworkQuality_block_invoke";
        v11 = 1024;
        v12 = 267;
        v13 = 1024;
        v14 = 267;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/ConnectionManager/VCNetworkConditionMonitor.c:%d: NetworkConditionMonitor: isRemoteNetworkQualityBad=%d", &v7, 0x28u);
      }
    }

    _VCNetworkConditionMonitor_triggerNetworkConditionCallback(*(a1 + 32), 0);
  }
}

void __VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 126) != v2)
  {
    *(v1 + 126) = v2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 126);
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_block_invoke";
        v11 = 1024;
        v12 = 281;
        v13 = 1024;
        v14 = 281;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/ConnectionManager/VCNetworkConditionMonitor.c:%d: NetworkConditionMonitor: isLocalActiveOnCellular=%d", &v7, 0x28u);
      }
    }

    _VCNetworkConditionMonitor_RunLocalNetworkDetectionAlgorithm(*(a1 + 32));
  }
}

@end