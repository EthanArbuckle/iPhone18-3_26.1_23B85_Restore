@interface AVConferenceServerDownloadTrial
@end

@implementation AVConferenceServerDownloadTrial

void ___AVConferenceServerDownloadTrial_block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a3 || !a2)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = 136316162;
        v11 = v8;
        v12 = 2080;
        v13 = "_AVConferenceServerDownloadTrial_block_invoke";
        v14 = 1024;
        v15 = 220;
        v16 = 1024;
        v17 = a2;
        v18 = 2112;
        v19 = [a3 description];
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Trial download request failed with succes=%d error=%@", &v10, 0x2Cu);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "_AVConferenceServerDownloadTrial_block_invoke";
      v14 = 1024;
      v15 = 218;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Trial download request successful", &v10, 0x1Cu);
    }
  }
}

@end