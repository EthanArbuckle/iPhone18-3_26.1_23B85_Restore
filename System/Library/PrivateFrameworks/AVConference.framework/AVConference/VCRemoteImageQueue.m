@interface VCRemoteImageQueue
@end

@implementation VCRemoteImageQueue

uint64_t ___VCRemoteImageQueue_Enqueue_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a4 + 16);
      v11 = 136316162;
      v12 = v6;
      v13 = 2080;
      v14 = "_VCRemoteImageQueue_Enqueue_block_invoke";
      v15 = 1024;
      v16 = 130;
      v17 = 2048;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteImageQueue=%p msgType=%d Queue is full. Resetting....", &v11, 0x2Cu);
    }
  }

  return 0;
}

@end