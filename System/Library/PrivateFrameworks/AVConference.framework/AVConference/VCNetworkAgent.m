@interface VCNetworkAgent
+ (id)sharedInstance;
- (VCNetworkAgent)init;
- (int)getNetworkAgentRefCount;
- (void)addAssertion;
- (void)dealloc;
- (void)removeAssertion;
@end

@implementation VCNetworkAgent

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[VCNetworkAgent sharedInstance];
  }

  return sharedInstance_sharedInstance_0;
}

VCNetworkAgent *__32__VCNetworkAgent_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCNetworkAgent);
  sharedInstance_sharedInstance_0 = result;
  return result;
}

- (VCNetworkAgent)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCNetworkAgent;
  v2 = [(VCNetworkAgent *)&v4 init];
  if (v2)
  {
    v2->agentUUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A2CB4344-1CC7-47EF-8D25-FB68B047620F"];
  }

  return v2;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_assertionRefCount >= 1)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v4 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v12 = v5;
        v13 = 2080;
        v14 = "[VCNetworkAgent dealloc]";
        v15 = 1024;
        v16 = 92;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Un-asserting NetworkAgent", buf, 0x1Cu);
      }
    }

    v7 = [MEMORY[0x1E6977E38] removeActiveAssertionFromNetworkAgent:self];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCNetworkAgent dealloc]";
        v15 = 1024;
        v16 = 94;
        v17 = 1024;
        v18 = v7;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent has been un-asserted, result=%d", buf, 0x22u);
      }
    }
  }

  v10.receiver = self;
  v10.super_class = VCNetworkAgent;
  [(VCNetworkAgent *)&v10 dealloc];
}

- (void)addAssertion
{
  v19 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_assertionRefCount)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v3;
        v13 = 2080;
        v14 = "[VCNetworkAgent addAssertion]";
        v15 = 1024;
        v16 = 107;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Creating an instance of NetworkAgent and asserting it", &v11, 0x1Cu);
      }
    }

    v5 = [MEMORY[0x1E6977E38] addActiveAssertionToNetworkAgent:self];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCNetworkAgent addAssertion]";
        v15 = 1024;
        v16 = 109;
        v17 = 1024;
        v18 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent has been asserted, result=%d", &v11, 0x22u);
      }
    }
  }

  ++self->_assertionRefCount;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      assertionRefCount = self->_assertionRefCount;
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCNetworkAgent addAssertion]";
      v15 = 1024;
      v16 = 112;
      v17 = 1024;
      v18 = assertionRefCount;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent refcount is '%d'", &v11, 0x22u);
    }
  }

  objc_sync_exit(self);
}

- (void)removeAssertion
{
  v22 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  assertionRefCount = self->_assertionRefCount;
  v4 = __OFSUB__(assertionRefCount, 1);
  v5 = assertionRefCount - 1;
  if (v5 < 0 == v4)
  {
    self->_assertionRefCount = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_assertionRefCount;
        v14 = 136315906;
        v15 = v6;
        v16 = 2080;
        v17 = "[VCNetworkAgent removeAssertion]";
        v18 = 1024;
        v19 = 122;
        v20 = 1024;
        v21 = v8;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent refcount is '%d'", &v14, 0x22u);
      }
    }

    if (!self->_assertionRefCount)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v9;
          v16 = 2080;
          v17 = "[VCNetworkAgent removeAssertion]";
          v18 = 1024;
          v19 = 127;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Un-asserting NetworkAgent", &v14, 0x1Cu);
        }
      }

      v11 = [MEMORY[0x1E6977E38] removeActiveAssertionFromNetworkAgent:self];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315906;
          v15 = v12;
          v16 = 2080;
          v17 = "[VCNetworkAgent removeAssertion]";
          v18 = 1024;
          v19 = 129;
          v20 = 1024;
          v21 = v11;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent has been un-asserted, result=%d", &v14, 0x22u);
        }
      }
    }
  }

  objc_sync_exit(self);
}

- (int)getNetworkAgentRefCount
{
  v16 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      assertionRefCount = self->_assertionRefCount;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCNetworkAgent getNetworkAgentRefCount]";
      v12 = 1024;
      v13 = 259;
      v14 = 1024;
      v15 = assertionRefCount;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent refcount is=%d", &v8, 0x22u);
    }
  }

  v6 = self->_assertionRefCount;
  objc_sync_exit(self);
  return v6;
}

@end