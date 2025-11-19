@interface VCSessionConfiguration
- (BOOL)applyConfigurationUsingClientDict:(id)a3;
- (BOOL)updateWithClientDictionary:(id)a3;
- (VCSessionConfiguration)init;
- (VCSessionConfiguration)initWithClientDictionary:(id)a3;
- (int64_t)vcSessionModeForAVCSessionMode:(int64_t)a3;
- (void)applyDefaultsConfigurationOverrides;
- (void)cleanupNwActivity;
- (void)dealloc;
- (void)setParentNWActivity:(id)a3;
- (void)setSessionMode:(int64_t)a3;
@end

@implementation VCSessionConfiguration

- (VCSessionConfiguration)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCSessionConfiguration;
  v2 = [(VCSessionConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_sessionMode = 0;
    [(VCSessionConfiguration *)v2 applyDefaultsConfigurationOverrides];
  }

  return v3;
}

- (VCSessionConfiguration)initWithClientDictionary:(id)a3
{
  v4 = [(VCSessionConfiguration *)self init];
  v5 = v4;
  if (a3 && v4)
  {
    [(VCSessionConfiguration *)v4 applyConfigurationUsingClientDict:a3];
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  [(VCSessionConfiguration *)self cleanupNwActivity];
  v3.receiver = self;
  v3.super_class = VCSessionConfiguration;
  [(VCSessionConfiguration *)&v3 dealloc];
}

- (void)setSessionMode:(int64_t)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  if (a3 > 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "[VCSessionConfiguration setSessionMode:]";
        v10 = 1024;
        v11 = 82;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid value for sessionMode=%d", &v6, 0x22u);
      }
    }
  }

  else
  {
    self->_sessionMode = a3;
  }
}

- (void)setParentNWActivity:(id)a3
{
  parentNWActivity = self->_parentNWActivity;
  if (parentNWActivity)
  {
    nw_release(parentNWActivity);
  }

  self->_parentNWActivity = a3;
  if (a3)
  {

    nw_retain(a3);
  }
}

- (BOOL)updateWithClientDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {

    return [(VCSessionConfiguration *)self applyConfigurationUsingClientDict:?];
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionConfiguration updateWithClientDictionary:v6];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSessionConfiguration *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v9 = 136316162;
          v10 = v7;
          v11 = 2080;
          v12 = "[VCSessionConfiguration updateWithClientDictionary:]";
          v13 = 1024;
          v14 = 105;
          v15 = 2112;
          v16 = v5;
          v17 = 2048;
          v18 = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid client dictionary!", &v9, 0x30u);
        }
      }
    }

    return 0;
  }
}

- (int64_t)vcSessionModeForAVCSessionMode:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (BOOL)applyConfigurationUsingClientDict:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = objc_alloc_init(AVCSessionConfiguration);
    [(AVCSessionConfiguration *)v5 setUpWithDictionary:a3];
    [(VCSessionConfiguration *)self setSessionMode:[(VCSessionConfiguration *)self vcSessionModeForAVCSessionMode:[(AVCSessionConfiguration *)v5 sessionMode]]];
    [(VCSessionConfiguration *)self setReportingHierarchyToken:[(AVCSessionConfiguration *)v5 reportingHierarchyToken]];
    [(VCSessionConfiguration *)self setConversationID:[(AVCSessionConfiguration *)v5 conversationID]];
    [(VCSessionConfiguration *)self setConversationTimeBase:[(AVCSessionConfiguration *)v5 conversationTimeBase]];
    [(VCSessionConfiguration *)self setConversationTimeBaseTruncated:[(AVCSessionConfiguration *)v5 conversationTimeBaseTruncated]];
    [(VCSessionConfiguration *)self setParentNWActivity:[(AVCSessionConfiguration *)v5 parentNWActivity]];
    [(VCSessionConfiguration *)self setServiceName:[(AVCSessionConfiguration *)v5 serviceName]];
    [(VCSessionConfiguration *)self setOutOfProcessCodecsEnabled:[(AVCSessionConfiguration *)v5 outOfProcessCodecsEnabled]];
    v6 = [(AVCSessionConfiguration *)v5 abTestConfiguration];
    [(VCSessionConfiguration *)self setOneToOneAuthenticationTagEnabled:[(AVCSessionABTestConfiguration *)v6 isOneToOneAuthenticationTagEnabled]];
    [(VCSessionConfiguration *)self setGftTLEEnabled:[(AVCSessionABTestConfiguration *)v6 isGftTLEEnabled]];
    [(VCSessionConfiguration *)self setP2pEncryptionEnabled:[(AVCSessionABTestConfiguration *)v6 isP2PEncryptionEnabled]];
    if ([+[VCDefaults supportsOneToOneMode] sharedInstance]
    {
      if ([+[VCDefaults forceOneToOneMode] sharedInstance]
      {
        self->_oneToOneModeEnabled = 1;
      }

      else
      {
        self->_oneToOneModeEnabled = [(AVCSessionConfiguration *)v5 isOneToOneModeEnabled];
      }
    }

    else if ([(AVCSessionConfiguration *)v5 isOneToOneModeEnabled])
    {
      [VCSessionConfiguration applyConfigurationUsingClientDict:?];
      v7 = v9;
LABEL_10:

      return v7;
    }

    [(VCSessionConfiguration *)self applyDefaultsConfigurationOverrides];
    v7 = 1;
    goto LABEL_10;
  }

  return 0;
}

- (void)cleanupNwActivity
{
  parentNWActivity = self->_parentNWActivity;
  if (parentNWActivity)
  {
    nw_release(parentNWActivity);
  }
}

- (void)applyDefaultsConfigurationOverrides
{
  self->_oneToOneAuthenticationTagEnabled = VCDefaults_GetBoolValueForKey(@"forceEnableOneToOneAuthenticationTag", self->_oneToOneAuthenticationTagEnabled);
  self->_gftTLEEnabled = VCDefaults_GetBoolValueForKey(@"forceEnabledGFTTLE", self->_gftTLEEnabled);
  self->_p2pEncryptionEnabled = VCDefaults_GetBoolValueForKey(@"forceEnabledP2PEncryption", self->_p2pEncryptionEnabled);
}

- (void)updateWithClientDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 105;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid client dictionary!", &v2, 0x1Cu);
}

- (void)applyConfigurationUsingClientDict:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 157;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Does not support oneToOne mode, but session configuration supports oneToOne Mode", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

@end