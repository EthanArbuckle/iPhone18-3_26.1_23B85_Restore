@interface VCCannedVideoPacketSource
+ (BOOL)createFileAtPath:(id)path;
+ (BOOL)overwriteFileAtPath:(id)path;
+ (BOOL)removeFileAtPath:(id)path;
- (BOOL)setUpSourceFileWithMode:(unsigned __int8)mode;
- (VCCannedVideoPacketSource)initWithMode:(unsigned __int8)mode filePath:(id)path;
- (int)startCannedInjection;
- (int)stopCannedInjection;
- (void)dealloc;
- (void)startCannedInjection;
@end

@implementation VCCannedVideoPacketSource

- (VCCannedVideoPacketSource)initWithMode:(unsigned __int8)mode filePath:(id)path
{
  modeCopy = mode;
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCCannedVideoPacketSource;
  v6 = [(VCCannedVideoPacketSource *)&v14 init];
  if (!v6)
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
LABEL_19:

    return 0;
  }

  v7 = [path copy];
  v6->_filePath = v7;
  if (!v7)
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
    goto LABEL_19;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6->_rtpCallbacks = v8;
  if (!v8)
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
    goto LABEL_19;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6->_rtcpCallbacks = v9;
  if (!v9)
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
    goto LABEL_19;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(58);
  v11 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCCannedVideoPacketSource.writequeue", 0, CustomRootQueue);
  v6->_writeQueue = v11;
  if (!v11)
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
    goto LABEL_19;
  }

  v12 = *MEMORY[0x1E695E480];
  if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "com.apple.AVConference.VCCannedVideoPacketSource.CannedVideoPacketBlockBufferHeaderAllocator", &v6->_blockBufferHeaderAllocator))
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
    goto LABEL_19;
  }

  if (VCAllocatorFirstCome_Create(v12, "com.apple.AVConference.VCCannedVideoPacketSource.CannedRTCPPacketAllocator", &v6->_rtcpPacketAllocator))
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
    goto LABEL_19;
  }

  if (![(VCCannedVideoPacketSource *)v6 setUpSourceFileWithMode:modeCopy])
  {
    [VCCannedVideoPacketSource initWithMode:filePath:];
    goto LABEL_19;
  }

  pthread_mutex_init(&v6->_replayMutex, 0);
  pthread_cond_init(&v6->_replayCondition, 0);
  v6->_stateLock._os_unfair_lock_opaque = 0;
  return v6;
}

- (BOOL)setUpSourceFileWithMode:(unsigned __int8)mode
{
  self->_mode = mode;
  if (mode == 2)
  {
    if (![VCCannedVideoPacketSource overwriteFileAtPath:self->_filePath])
    {
      [VCCannedVideoPacketSource setUpSourceFileWithMode:];
      return v7;
    }

    v6 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:self->_filePath];
    self->_fileHandle = v6;
    if (!v6)
    {
      [VCCannedVideoPacketSource setUpSourceFileWithMode:];
      return v8;
    }
  }

  else if (mode == 1)
  {
    if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
    {
      [VCCannedVideoPacketSource setUpSourceFileWithMode:];
      return v9;
    }

    v4 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:self->_filePath];
    self->_fileHandle = v4;
    if (!v4)
    {
      [VCCannedVideoPacketSource setUpSourceFileWithMode:];
      return v10;
    }
  }

  return 1;
}

- (void)dealloc
{
  block[5] = *MEMORY[0x1E69E9840];
  [(VCCannedVideoPacketSource *)self stopCannedInjection];
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCCannedVideoPacketSource_dealloc__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_sync(writeQueue, block);

  blockBufferHeaderAllocator = self->_blockBufferHeaderAllocator;
  if (blockBufferHeaderAllocator)
  {
    CFRelease(blockBufferHeaderAllocator);
  }

  rtcpPacketAllocator = self->_rtcpPacketAllocator;
  if (rtcpPacketAllocator)
  {
    CFRelease(rtcpPacketAllocator);
  }

  v6 = self->_writeQueue;
  if (v6)
  {
    dispatch_release(v6);
    self->_writeQueue = 0;
  }

  pthread_mutex_destroy(&self->_replayMutex);
  pthread_cond_destroy(&self->_replayCondition);
  v7.receiver = self;
  v7.super_class = VCCannedVideoPacketSource;
  [(VCCannedVideoPacketSource *)&v7 dealloc];
}

- (int)startCannedInjection
{
  values[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_mode != 1)
  {
    [(VCCannedVideoPacketSource *)&self->_mode startCannedInjection];
    v3 = values[0];
    goto LABEL_6;
  }

  if (self->_cannedReplayThread)
  {
    v3 = 0;
LABEL_6:
    os_unfair_lock_unlock(&self->_stateLock);
    return v3;
  }

  self->_cannedReplayThreadCanceled = 0;
  values[0] = @"com.apple.AVConference.VCCannedVideoPacketSource.CannedVideoPacketInjectionThread";
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v4)
  {
    [(VCCannedVideoPacketSource *)values startCannedInjection];
    return 4;
  }

  v5 = v4;
  v3 = FigThreadCreate();
  CFRelease(v5);
  if (!v3)
  {
    goto LABEL_6;
  }

  v3 |= 0xA01D0000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCannedVideoPacketSource startCannedInjection];
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  [(VCCannedVideoPacketSource *)self stopCannedInjection];
  return v3;
}

- (int)stopCannedInjection
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  pthread_mutex_lock(&self->_replayMutex);
  self->_cannedReplayThreadCanceled = 1;
  pthread_cond_signal(&self->_replayCondition);
  pthread_mutex_unlock(&self->_replayMutex);
  if (self->_cannedReplayThread)
  {
    FigThreadJoin();
    self->_cannedReplayThread = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCCannedVideoPacketSource stopCannedInjection]";
        v10 = 1024;
        v11 = 204;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Canned video packet injection thread stopped", &v6, 0x1Cu);
      }
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return 0;
}

+ (BOOL)createFileAtPath:(id)path
{
  v7[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:path] & 1) == 0)
  {
    v7[0] = 0;
    if ([defaultManager createDirectoryAtPath:objc_msgSend(path withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, v7}])
    {
      v5 = v7[0] == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      +[VCCannedVideoPacketSource createFileAtPath:];
      return 0;
    }

    if (([defaultManager createFileAtPath:path contents:0 attributes:0] & 1) == 0)
    {
      +[VCCannedVideoPacketSource createFileAtPath:];
      return 0;
    }
  }

  return 1;
}

+ (BOOL)removeFileAtPath:(id)path
{
  v7[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (![defaultManager fileExistsAtPath:path])
  {
    return 1;
  }

  v7[0] = 0;
  if ([defaultManager removeItemAtPath:path error:v7] && v7[0] == 0)
  {
    return 1;
  }

  +[VCCannedVideoPacketSource removeFileAtPath:];
  return 0;
}

uint64_t ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 8) == 2)
    {
      v7 = 1;
      _VCCannedVideoPacketSource_WriteBytes(v5, &v7, 1);
      _VCCannedVideoPacketSource_WriteBytes(v5, a3, 6064);
      if (!*a3)
      {
        _VCCannedVideoPacketSource_WriteBlockBuffer(v5, (a3 + 32));
        _VCCannedVideoPacketSource_WriteBlockBuffer(v5, (a3 + 38));
        _VCCannedVideoPacketSource_WriteBlockBuffer(v5, (a3 + 44));
      }
    }

    else
    {
      ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_cold_1();
    }
  }

  else
  {
    ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_cold_2();
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_49(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 8) == 2)
    {
      v12 = *(*(a1 + 32) + 8);
      _VCCannedVideoPacketSource_WriteBytes(v5, &v12, 1);
      _VCCannedVideoPacketSource_WriteBytes(v5, a3, 1640);
      if (*(a3 + 8))
      {
        v6 = 0;
        do
        {
          _VCCannedVideoPacketSource_WriteBytes(v5, *(a3 + 16 + 8 * v6++), 1036);
        }

        while (v6 < *(a3 + 8));
      }

      v7 = *(a3 + 96);
      v10 = 0;
      v11 = 0;
      v9 = v7;
      CMBlockBufferGetDataPointer(v7, 0, 0, &v10, &v11);
      _VCCannedVideoPacketSource_WriteBlockBuffer(v5, &v9);
    }

    else
    {
      ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_49_cold_1();
    }
  }

  else
  {
    ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_49_cold_2();
  }

  return (*(*(a1 + 40) + 16))();
}

void ___VCCannedVideoPacketSource_WriteBytes_block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if ([*(*(a1 + 32) + 16) writeData:*(a1 + 40) error:v3])
  {
    v2 = v3[0] == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCCannedVideoPacketSource_WriteBytes_block_invoke_cold_1();
    }
  }
}

+ (BOOL)overwriteFileAtPath:(id)path
{
  v4 = [VCCannedVideoPacketSource removeFileAtPath:?];
  if (v4)
  {

    LOBYTE(v4) = [VCCannedVideoPacketSource createFileAtPath:path];
  }

  return v4;
}

- (void)initWithMode:filePath:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)initWithMode:filePath:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)initWithMode:filePath:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithMode:filePath:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithMode:filePath:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithMode:filePath:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithMode:filePath:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithMode:filePath:.cold.8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setUpSourceFileWithMode:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setUpSourceFileWithMode:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setUpSourceFileWithMode:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setUpSourceFileWithMode:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)startCannedInjection
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  os_unfair_lock_unlock(a2);
}

+ (void)createFileAtPath:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

+ (void)createFileAtPath:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

+ (void)removeFileAtPath:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_49_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_49_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void ___VCCannedVideoPacketSource_WriteBytes_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end