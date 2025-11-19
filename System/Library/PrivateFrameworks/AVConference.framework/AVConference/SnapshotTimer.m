@interface SnapshotTimer
+ (void)takeSnapshotForTask:(id)a3;
- (SnapshotTimer)init;
- (void)checkinWithTimeout:(double)a3 forTask:(id)a4;
@end

@implementation SnapshotTimer

- (SnapshotTimer)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = SnapshotTimer;
  result = [(SnapshotTimer *)&v3 init];
  if (result)
  {
    result->taskIsComplete = 0;
  }

  return result;
}

+ (void)takeSnapshotForTask:(id)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(SnapshotTimer *)v3 takeSnapshotForTask:v4];
    }
  }
}

- (void)checkinWithTimeout:(double)a3 forTask:(id)a4
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3 == 0.0)
  {

    [SnapshotTimer takeSnapshotForTask:?];
  }

  else
  {
    v6 = dispatch_time(0, (a3 * 1000000000.0));
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SnapshotTimer_checkinWithTimeout_forTask___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a4;
    dispatch_after(v6, global_queue, block);
  }
}

void __44__SnapshotTimer_checkinWithTimeout_forTask___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) taskIsComplete])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      v4 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = [*(a1 + 40) UTF8String];
          v7 = 136315906;
          v8 = v2;
          v9 = 2080;
          v10 = "[SnapshotTimer checkinWithTimeout:forTask:]_block_invoke";
          v11 = 1024;
          v12 = 44;
          v13 = 2080;
          v14 = v5;
          _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SnapshotTimer: %s complete before deadline, ignored", &v7, 0x26u);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __44__SnapshotTimer_checkinWithTimeout_forTask___block_invoke_cold_1(v2, a1, v3);
      }
    }
  }

  else
  {
    v6 = *(a1 + 40);

    [SnapshotTimer takeSnapshotForTask:v6];
  }
}

+ (void)takeSnapshotForTask:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "+[SnapshotTimer takeSnapshotForTask:]";
  v6 = 1024;
  v7 = 29;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d MarcoPerformSnapshot no longer in use", &v2, 0x1Cu);
}

void __44__SnapshotTimer_checkinWithTimeout_forTask___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [*(a2 + 40) UTF8String];
  v6 = 136315906;
  v7 = a1;
  v8 = 2080;
  v9 = "[SnapshotTimer checkinWithTimeout:forTask:]_block_invoke";
  v10 = 1024;
  v11 = 44;
  v12 = 2080;
  v13 = v5;
  _os_log_debug_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SnapshotTimer: %s complete before deadline, ignored", &v6, 0x26u);
}

@end