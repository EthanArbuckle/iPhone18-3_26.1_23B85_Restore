@interface SIPClientDataDictionary
- (SIPClientDataDictionary)init;
- (id)copyObjectForKey:(id)a3 p2pID:(unsigned int)a4;
- (void)dealloc;
- (void)setObject:(id)a3 forKey:(id)a4 forP2PID:(unsigned int)a5;
@end

@implementation SIPClientDataDictionary

- (SIPClientDataDictionary)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = SIPClientDataDictionary;
  v2 = [(SIPClientDataDictionary *)&v4 init];
  if (v2)
  {
    v2->allCalls = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  }

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[SIPClientDataDictionary dealloc]";
      v10 = 1024;
      v11 = 25;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SIPClientDataDictionary dealloc", buf, 0x1Cu);
    }
  }

  [(NSMutableDictionary *)self->allCalls removeAllObjects];

  v5.receiver = self;
  v5.super_class = SIPClientDataDictionary;
  [(SIPClientDataDictionary *)&v5 dealloc];
}

- (id)copyObjectForKey:(id)a3 p2pID:(unsigned int)a4
{
  v4 = *&a4;
  objc_sync_enter(self);
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v4];
  v8 = [-[NSMutableDictionary objectForKeyedSubscript:](self->allCalls objectForKeyedSubscript:{v7), "objectForKeyedSubscript:", a3}];

  v9 = v8;
  objc_sync_exit(self);
  return v8;
}

- (void)setObject:(id)a3 forKey:(id)a4 forP2PID:(unsigned int)a5
{
  v5 = *&a5;
  objc_sync_enter(self);
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v5];
  v10 = [(NSMutableDictionary *)self->allCalls objectForKeyedSubscript:v9];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    [(NSMutableDictionary *)self->allCalls setObject:v10 forKeyedSubscript:v9];
  }

  if (a3)
  {
    [v10 setObject:a3 forKeyedSubscript:a4];
  }

  else
  {
    [v10 removeObjectForKey:a4];
  }

  objc_sync_exit(self);
}

@end