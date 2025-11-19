@interface VCConnectionTimeBooster
- (VCConnectionTimeBooster)init;
- (void)dealloc;
- (void)init;
- (void)initiateBoost;
- (void)setUpAudioCaptionsSpeechRecognizer;
@end

@implementation VCConnectionTimeBooster

- (VCConnectionTimeBooster)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCConnectionTimeBooster;
  v2 = [(VCConnectionTimeBooster *)&v6 init];
  if (!v2)
  {
    [VCConnectionTimeBooster init];
LABEL_8:

    return 0;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCConnectionTimeBooster.connectionTimeBoosterQueue", 0, CustomRootQueue);
  v2->_dispatchQueue = v4;
  if (!v4)
  {
    [(VCConnectionTimeBooster *)v2 init];
    goto LABEL_8;
  }

  [(VCConnectionTimeBooster *)v2 setUpAudioCaptionsSpeechRecognizer];
  if (![(VCConnectionTimeBooster *)v2 audioCaptions])
  {
    [(VCConnectionTimeBooster *)v2 init];
    goto LABEL_8;
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = VCConnectionTimeBooster;
  [(VCConnectionTimeBooster *)&v4 dealloc];
}

- (void)setUpAudioCaptionsSpeechRecognizer
{
  v3 = [[VCAudioCaptionsSpeechRecognizer alloc] initWithDelegate:self isLocal:0 taskIdentifier:@"facetimeconnectionbooster" reportingAgent:0];
  [(VCConnectionTimeBooster *)self setAudioCaptions:v3];
  -[VCAudioCaptions setLocale:](-[VCConnectionTimeBooster audioCaptions](self, "audioCaptions"), "setLocale:", [MEMORY[0x1E695DF58] currentLocale]);
  [(VCAudioCaptions *)[(VCConnectionTimeBooster *)self audioCaptions] setTaskHint:1];
}

- (void)initiateBoost
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__VCConnectionTimeBooster_initiateBoost__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __40__VCConnectionTimeBooster_initiateBoost__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136315650;
        *&v12[4] = v3;
        *&v12[12] = 2080;
        *&v12[14] = "[VCConnectionTimeBooster initiateBoost]_block_invoke";
        *&v12[22] = 1024;
        LODWORD(v13) = 81;
        v5 = " [%s] %s:%d Prewarming captions for a connection time boost.";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v12, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *v12 = 136316162;
        *&v12[4] = v8;
        *&v12[12] = 2080;
        *&v12[14] = "[VCConnectionTimeBooster initiateBoost]_block_invoke";
        *&v12[22] = 1024;
        LODWORD(v13) = 81;
        WORD2(v13) = 2112;
        *(&v13 + 6) = v2;
        HIWORD(v13) = 2048;
        v14 = v10;
        v5 = " [%s] %s:%d %@(%p) Prewarming captions for a connection time boost.";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  return [objc_msgSend(*(a1 + 32) audioCaptions];
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end