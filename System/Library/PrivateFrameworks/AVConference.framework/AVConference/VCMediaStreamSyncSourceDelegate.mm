@interface VCMediaStreamSyncSourceDelegate
@end

@implementation VCMediaStreamSyncSourceDelegate

void __VCMediaStreamSyncSourceDelegate_updateSourceState_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 100))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 40) == 0;
        v7 = 136316162;
        v8 = v2;
        v9 = 2080;
        v10 = "VCMediaStreamSyncSourceDelegate_updateSourceState_block_invoke";
        v11 = 1024;
        v12 = 310;
        v13 = 2048;
        v14 = v4;
        v15 = 1024;
        v16 = v5;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: isSourceActive:%d", &v7, 0x2Cu);
      }
    }

    v6 = *(a1 + 40);
    if (v6 == 1)
    {
      *(*(a1 + 32) + 64) = 0;
      *(*(a1 + 32) + 96) = 0;
      v6 = *(a1 + 40);
    }

    *(*(a1 + 32) + 100) = v6;
  }
}

void __VCMediaStreamSyncSourceDelegate_resetSourceState_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "VCMediaStreamSyncSourceDelegate_resetSourceState_block_invoke";
      v9 = 1024;
      v10 = 327;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: resetting source state", &v5, 0x26u);
    }
  }

  *(*(a1 + 32) + 64) = 0;
  *(*(a1 + 32) + 96) = 0;
}

double __VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  _VCMediaStreamSynchronizer_updateSourcePlayoutSampleRTPTimestampInternal(*(a1 + 32), *(a1 + 56), &v3, *(a1 + 48));
  result = *&v3.value;
  *(*(*(a1 + 40) + 8) + 32) = v3;
  return result;
}

double __VCMediaStreamSyncSourceDelegate_updateSourceNTPTimeWithRTPTimeStamp_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 48) = result;
  *(*(a1 + 32) + 64) = *(a1 + 48);
  return result;
}

@end