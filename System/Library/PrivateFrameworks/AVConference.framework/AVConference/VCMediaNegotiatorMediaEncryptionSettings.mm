@interface VCMediaNegotiatorMediaEncryptionSettings
- (BOOL)isEqualToEncryptionSettings:(id)settings;
- (VCMediaNegotiatorMediaEncryptionSettings)initWithSendMediaKey:(id)key;
- (void)addMediaCipherSuite:(int64_t)suite;
- (void)addSRTCPCipherSuite:(int64_t)suite;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorMediaEncryptionSettings

- (VCMediaNegotiatorMediaEncryptionSettings)initWithSendMediaKey:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCMediaNegotiatorMediaEncryptionSettings;
  v4 = [(VCMediaNegotiatorMediaEncryptionSettings *)&v9 init];
  v5 = v4;
  if (!v4)
  {
    [VCMediaNegotiatorMediaEncryptionSettings initWithSendMediaKey:];
LABEL_11:

    return 0;
  }

  if (!key)
  {
    [VCMediaNegotiatorMediaEncryptionSettings initWithSendMediaKey:v4];
    goto LABEL_11;
  }

  v6 = objc_opt_new();
  v5->_mediaCipherSuites = v6;
  if (!v6)
  {
    [VCMediaNegotiatorMediaEncryptionSettings initWithSendMediaKey:v5];
    goto LABEL_11;
  }

  v7 = objc_opt_new();
  v5->_srtcpCipherSuites = v7;
  if (!v7)
  {
    [VCMediaNegotiatorMediaEncryptionSettings initWithSendMediaKey:v5];
    goto LABEL_11;
  }

  v5->_sendMediaKey = key;
  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorMediaEncryptionSettings;
  [(VCMediaNegotiatorMediaEncryptionSettings *)&v3 dealloc];
}

- (void)addMediaCipherSuite:(int64_t)suite
{
  mediaCipherSuites = self->_mediaCipherSuites;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:suite];

  [(NSMutableSet *)mediaCipherSuites addObject:v4];
}

- (void)addSRTCPCipherSuite:(int64_t)suite
{
  srtcpCipherSuites = self->_srtcpCipherSuites;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:suite];

  [(NSMutableSet *)srtcpCipherSuites addObject:v4];
}

- (BOOL)isEqualToEncryptionSettings:(id)settings
{
  if (settings == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = -[NSData isEqualToData:](self->_sendMediaKey, "isEqualToData:", [settings sendMediaKey]);
    if (v5)
    {
      v5 = -[NSMutableSet isEqualToSet:](self->_mediaCipherSuites, "isEqualToSet:", [settings mediaCipherSuites]);
      if (v5)
      {
        srtcpCipherSuites = self->_srtcpCipherSuites;
        srtcpCipherSuites = [settings srtcpCipherSuites];

        LOBYTE(v5) = [(NSMutableSet *)srtcpCipherSuites isEqualToSet:srtcpCipherSuites];
      }
    }
  }

  return v5;
}

- (void)initWithSendMediaKey:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithSendMediaKey:(void *)a1 .cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithSendMediaKey:(void *)a1 .cold.3(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithSendMediaKey:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end