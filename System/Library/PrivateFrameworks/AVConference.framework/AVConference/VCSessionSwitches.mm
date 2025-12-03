@interface VCSessionSwitches
+ (float)generateRandomNumberWithConversationID:(id)d featureString:(id)string;
+ (id)featureFlagAndDefaultNameForFeature:(unint64_t)feature;
- (BOOL)trialEnablementWithClient:(id)client Context:(id *)context normalizedRandom:(double)random;
- (VCSessionSwitches)initWithConversationID:(id)d;
- (void)dealloc;
- (void)setFeature:(unint64_t)feature isEnabled:(BOOL)enabled;
@end

@implementation VCSessionSwitches

- (VCSessionSwitches)initWithConversationID:(id)d
{
  v53 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = VCSessionSwitches;
  v4 = [(VCSessionSwitches *)&v36 init];
  if (!v4)
  {
    return v4;
  }

  v4->_conversationID = [objc_msgSend(d "UUIDString")];
  v5 = [MEMORY[0x1E69DB518] clientWithIdentifier:310];
  v6 = contextConfigurations;
  v7 = 6;
  *&v8 = 136315906;
  v35 = v8;
  do
  {
    [(__CFString *)v6[1] UTF8String];
    if (_os_feature_enabled_impl())
    {
      goto LABEL_14;
    }

    if (objc_opt_class() == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v6[1];
          *buf = v35;
          v38 = v16;
          v39 = 2080;
          v40 = "[VCSessionSwitches initWithConversationID:]";
          v41 = 1024;
          v42 = 76;
          v43 = 2112;
          v44 = v18;
          v13 = v17;
          v14 = " [%s] %s:%d ! featureflag=%@ is NOT enabled, examine if VCSessionSwitchContext contextConfigrations is setup properly!";
          v15 = 38;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v9 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSessionSwitches *)v4 performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = v6[1];
          *buf = 136316418;
          v38 = v10;
          v39 = 2080;
          v40 = "[VCSessionSwitches initWithConversationID:]";
          v41 = 1024;
          v42 = 76;
          v43 = 2112;
          v44 = v9;
          v45 = 2048;
          v46 = v4;
          v47 = 2112;
          v48 = v12;
          v13 = v11;
          v14 = " [%s] %s:%d %@(%p) ! featureflag=%@ is NOT enabled, examine if VCSessionSwitchContext contextConfigrations is setup properly!";
          v15 = 58;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
        }
      }
    }

LABEL_14:
    [VCSessionSwitches generateRandomNumberWithConversationID:v4->_conversationID featureString:v6[2]];
    if (*v6)
    {
      v20 = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:*v6 userDefaultKey:v6[1] featureFlagDomain:"AVConference" featureFlagName:[(__CFString *)v6[1] UTF8String] normalizedRandom:v19];
LABEL_16:
      v21 = v20;
      goto LABEL_21;
    }

    if (v5 && v6[3])
    {
      v20 = [(VCSessionSwitches *)v4 trialEnablementWithClient:v5 Context:v6 normalizedRandom:v19];
      goto LABEL_16;
    }

    v21 = 0;
LABEL_21:
    [(VCSessionSwitches *)v4 setFeature:v6[4] isEnabled:v21];
    v6 += 5;
    --v7;
  }

  while (v7);
  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        switches = v4->_switches;
        conversationID = v4->_conversationID;
        *buf = 136316418;
        v38 = v23;
        v39 = 2080;
        v40 = "[VCSessionSwitches initWithConversationID:]";
        v41 = 1024;
        v42 = 90;
        v43 = 2112;
        v44 = conversationID;
        v45 = 2048;
        v46 = switches;
        v47 = 2048;
        v48 = 6;
        v27 = " [%s] %s:%d _conversationID=%@, sessionSwitches=0x%llx, featureCount=%zu";
        v28 = v24;
        v29 = 58;
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCSessionSwitches *)v4 performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = v4->_switches;
        v32 = v4->_conversationID;
        *buf = 136316930;
        v38 = v30;
        v39 = 2080;
        v40 = "[VCSessionSwitches initWithConversationID:]";
        v41 = 1024;
        v42 = 90;
        v43 = 2112;
        v44 = v22;
        v45 = 2048;
        v46 = v4;
        v47 = 2112;
        v48 = v32;
        v49 = 2048;
        v50 = v33;
        v51 = 2048;
        v52 = 6;
        v27 = " [%s] %s:%d %@(%p) _conversationID=%@, sessionSwitches=0x%llx, featureCount=%zu";
        v28 = v31;
        v29 = 78;
LABEL_32:
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      }
    }
  }

  return v4;
}

+ (float)generateRandomNumberWithConversationID:(id)d featureString:(id)string
{
  v36 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", d, string];
  v6 = [(__CFString *)string cStringUsingEncoding:4];
  v7 = [(__CFString *)string lengthOfBytesUsingEncoding:4];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *md = v8;
  v35 = v8;
  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v8;
  *&c.wbuf[10] = v8;
  *&c.hash[6] = v8;
  *&c.wbuf[2] = v8;
  *c.count = v8;
  *&c.hash[2] = v8;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v6, v7);
  CC_SHA256_Final(md, &c);
  v9 = *md * 5.42101086e-20;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = v11;
        v21 = 2080;
        v22 = "+[VCSessionSwitches generateRandomNumberWithConversationID:featureString:]";
        v23 = 1024;
        v24 = 115;
        v25 = 2112;
        v26 = string;
        v27 = 2048;
        v28 = v9;
        v13 = " [%s] %s:%d concatenatedString=%@, randomByUUIDAndFeature=%f";
        v14 = v12;
        v15 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v20 = v16;
        v21 = 2080;
        v22 = "+[VCSessionSwitches generateRandomNumberWithConversationID:featureString:]";
        v23 = 1024;
        v24 = 115;
        v25 = 2112;
        v26 = v10;
        v27 = 2048;
        v28 = *&self;
        v29 = 2112;
        v30 = string;
        v31 = 2048;
        v32 = v9;
        v13 = " [%s] %s:%d %@(%p) concatenatedString=%@, randomByUUIDAndFeature=%f";
        v14 = v17;
        v15 = 68;
        goto LABEL_11;
      }
    }
  }

  return v9;
}

+ (id)featureFlagAndDefaultNameForFeature:(unint64_t)feature
{
  v3 = &qword_1ECC6F428;
  v4 = 6;
  while ((*v3 & feature) == 0)
  {
    v3 += 5;
    if (!--v4)
    {
      return 0;
    }
  }

  return *(v3 - 3);
}

- (void)setFeature:(unint64_t)feature isEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = self->_switches | feature;
  }

  else
  {
    v4 = self->_switches & ~feature;
  }

  self->_switches = v4;
}

- (BOOL)trialEnablementWithClient:(id)client Context:(id *)context normalizedRandom:(double)random
{
  [context->var1 UTF8String];
  v8 = _os_feature_enabled_impl();
  [objc_msgSend(client levelForFactor:@"samplingRate" withNamespaceName:{context->var3), "doubleValue"}];
  var1 = context->var1;
  if (v10 > random)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return [VCDefaults BOOLeanValueForKey:var1 defaultValue:v11];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionSwitches;
  [(VCSessionSwitches *)&v3 dealloc];
}

@end