@interface VCViewpointCorrection
- (VCViewpointCorrection)init;
- (void)dealloc;
- (void)init;
@end

@implementation VCViewpointCorrection

- (VCViewpointCorrection)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCViewpointCorrection;
  v2 = [(VCViewpointCorrection *)&v8 init];
  if (v2)
  {
    if (loadAppleCVAViewpointCorrectionSymbols_onceToken != -1)
    {
      [VCViewpointCorrection init];
    }

    if (loadAppleCVAViewpointCorrectionSymbols_loaded != 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCViewpointCorrection *)v5 init];
        }
      }

      goto LABEL_12;
    }

    v7 = 0;
    v2->_viewpointCorrectionRef = sVC_CVAViewpointCorrectionCreateFunc(*MEMORY[0x1E695E480], 0, &v7);
    if (v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCViewpointCorrection *)v3 init];
        }
      }

LABEL_12:

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  viewpointCorrectionRef = self->_viewpointCorrectionRef;
  if (viewpointCorrectionRef)
  {
    CFRelease(viewpointCorrectionRef);
  }

  v4.receiver = self;
  v4.super_class = VCViewpointCorrection;
  [(VCViewpointCorrection *)&v4 dealloc];
}

intptr_t __VCViewpointCorrection_CorrectViewpoint_block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)init
{
  *v3 = 136315906;
  *&v3[4] = self;
  *&v3[12] = 2080;
  *&v3[14] = "[VCViewpointCorrection init]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d Could not create CVAViewpointCorrection Ref: %d", *v3, *&v3[8], "[VCViewpointCorrection init]" >> 16, 112);
}

@end