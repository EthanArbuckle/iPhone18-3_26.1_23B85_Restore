@interface VCVideoHardwareDumpWriter
+ (id)sharedInstance;
- (VCVideoHardwareDumpWriter)init;
- (void)dealloc;
- (void)init;
@end

@implementation VCVideoHardwareDumpWriter

+ (id)sharedInstance
{
  if (sharedInstance_token != -1)
  {
    +[VCVideoHardwareDumpWriter sharedInstance];
  }

  return sharedInstance__vcVideoHardwareDumpWriterSingleton;
}

void __43__VCVideoHardwareDumpWriter_sharedInstance__block_invoke()
{
  if (!sharedInstance__vcVideoHardwareDumpWriterSingleton)
  {
    sharedInstance__vcVideoHardwareDumpWriterSingleton = objc_alloc_init(VCVideoHardwareDumpWriter);
  }
}

- (VCVideoHardwareDumpWriter)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCVideoHardwareDumpWriter;
  v2 = [(VCVideoHardwareDumpWriter *)&v5 init];
  if (!v2)
  {
    [VCVideoHardwareDumpWriter init];
    goto LABEL_8;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v2->_sources = Mutable;
  if (!Mutable)
  {
    [VCVideoHardwareDumpWriter init];
    goto LABEL_8;
  }

  if (!VCVideoHardwareDumpWriter_OpenDumpFile(v2))
  {
LABEL_8:

    return 0;
  }

  v2->_registrationLock._os_unfair_lock_opaque = 0;
  return v2;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  sources = self->_sources;
  if (sources)
  {
    CFRelease(sources);
  }

  VCVideoHardwareDumpWriter_CloseDumpFile(self, a2, v2, v3, v4, v5, v6, v7);
  v10.receiver = self;
  v10.super_class = VCVideoHardwareDumpWriter;
  [(VCVideoHardwareDumpWriter *)&v10 dealloc];
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate dump writer", v2, v3, v4, v5, v6);
    }
  }
}

@end