@interface AVCSessionConfiguration
+ (const)cStringFromSessionMode:(int64_t)mode;
+ (int64_t)clientSessionModeWithSessionMode:(int64_t)mode;
+ (int64_t)sessionModeWithClientSessionMode:(int64_t)mode;
- (AVCSessionConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deserializeNwActivity:(id)activity;
- (id)dictionary;
- (id)serializeNwActivity:(id)activity;
- (void)cleanupNwActivity;
- (void)dealloc;
- (void)setParentNWActivity:(id)activity;
- (void)setSessionMode:(int64_t)mode;
- (void)setUpWithDictionary:(id)dictionary;
@end

@implementation AVCSessionConfiguration

+ (const)cStringFromSessionMode:(int64_t)mode
{
  if (mode < 4)
  {
    return off_1E85F9AB0[mode];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(AVCSessionConfiguration *)v5 cStringFromSessionMode:mode, v6];
    }
  }

  return "Unknown";
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AVCSessionConfiguration;
  v4 = [(AVCSessionConfiguration *)&v9 description];
  v5 = [AVCSessionConfiguration stringFromSessionMode:self->_sessionMode];
  v6 = "NO";
  if (self->_oneToOneModeEnabled)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_outOfProcessCodecsEnabled)
  {
    v6 = "YES";
  }

  return [v3 stringWithFormat:@"{ %@ sessionMode=%@, oneToOneModeEnabled=%s, serviceName=%@, outOfProcessCodecsEnabled=%s, abTestConfiguration=%@ }", v4, v5, v7, self->_serviceName, v6, self->_abTestConfiguration];
}

- (AVCSessionConfiguration)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCSessionConfiguration;
  v2 = [(AVCSessionConfiguration *)&v4 init];
  if (v2)
  {
    v2->_abTestConfiguration = objc_alloc_init(AVCSessionABTestConfiguration);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  [(AVCSessionConfiguration *)self cleanupNwActivity];
  v3.receiver = self;
  v3.super_class = AVCSessionConfiguration;
  [(AVCSessionConfiguration *)&v3 dealloc];
}

- (void)setSessionMode:(int64_t)mode
{
  v16 = *MEMORY[0x1E69E9840];
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAVCSessionMode", mode);
  v5 = IntValueForKey;
  if (IntValueForKey > 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315906;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCSessionConfiguration setSessionMode:]";
        v12 = 1024;
        v13 = 92;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid value for sessionMode=%d", &v8, 0x22u);
      }
    }
  }

  else
  {
    self->_sessionMode = IntValueForKey;
  }
}

- (void)setUpWithDictionary:(id)dictionary
{
  -[AVCSessionConfiguration setSessionMode:](self, "setSessionMode:", +[AVCSessionConfiguration clientSessionModeWithSessionMode:](AVCSessionConfiguration, "clientSessionModeWithSessionMode:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcSessionType", "integerValue"}]));
  -[AVCSessionConfiguration setReportingHierarchyToken:](self, "setReportingHierarchyToken:", [dictionary objectForKeyedSubscript:@"vcSessionParentHierarchyToken"]);
  self->_oneToOneModeEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcSessionOneOnOneModeEnabled", "BOOLValue"}];
  if ([dictionary objectForKeyedSubscript:@"vcSessionConversationID"])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcSessionConversationID"}];
    [(AVCSessionConfiguration *)self setConversationID:v5];
  }

  -[AVCSessionConfiguration setConversationTimeBase:](self, "setConversationTimeBase:", [dictionary objectForKeyedSubscript:@"vcSessionConversationTimeBase"]);
  -[AVCSessionConfiguration setConversationTimeBaseTruncated:](self, "setConversationTimeBaseTruncated:", [dictionary objectForKeyedSubscript:@"vcSessionConversationTimeBaseTruncated"]);
  -[AVCSessionConfiguration setServiceName:](self, "setServiceName:", [dictionary objectForKeyedSubscript:@"vcSessionServiceName"]);
  -[AVCSessionConfiguration setOutOfProcessCodecsEnabled:](self, "setOutOfProcessCodecsEnabled:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcSessionOutOfProcessCodecsEnabled", "BOOLValue"}]);
  if ([dictionary objectForKeyedSubscript:@"vcSessionParentNWActivity"])
  {
    -[AVCSessionConfiguration setParentNWActivity:](self, "setParentNWActivity:", -[AVCSessionConfiguration deserializeNwActivity:](self, "deserializeNwActivity:", [dictionary objectForKeyedSubscript:@"vcSessionParentNWActivity"]));
  }

  v6 = +[AVCSessionABTestConfiguration createWithDictionary:](AVCSessionABTestConfiguration, "createWithDictionary:", [dictionary objectForKeyedSubscript:@"vcSessionABTestsConfiguration"]);

  [(AVCSessionConfiguration *)self setAbTestConfiguration:v6];
}

- (id)dictionary
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  reportingHierarchyToken = self->_reportingHierarchyToken;
  if (reportingHierarchyToken)
  {
    [v3 setObject:reportingHierarchyToken forKeyedSubscript:@"vcSessionParentHierarchyToken"];
  }

  conversationID = self->_conversationID;
  if (conversationID)
  {
    [v4 setObject:-[NSUUID UUIDString](conversationID forKeyedSubscript:{"UUIDString"), @"vcSessionConversationID"}];
  }

  conversationTimeBase = self->_conversationTimeBase;
  if (conversationTimeBase)
  {
    [v4 setObject:conversationTimeBase forKeyedSubscript:@"vcSessionConversationTimeBase"];
  }

  conversationTimeBaseTruncated = self->_conversationTimeBaseTruncated;
  if (conversationTimeBaseTruncated)
  {
    [v4 setObject:conversationTimeBaseTruncated forKeyedSubscript:@"vcSessionConversationTimeBaseTruncated"];
  }

  if (self->_parentNWActivity && nw_activity_is_activated())
  {
    [v4 setObject:-[AVCSessionConfiguration serializeNwActivity:](self forKeyedSubscript:{"serializeNwActivity:", self->_parentNWActivity), @"vcSessionParentNWActivity"}];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v4 setObject:serviceName forKeyedSubscript:@"vcSessionServiceName"];
  }

  abTestConfiguration = self->_abTestConfiguration;
  if (abTestConfiguration)
  {
    [v4 setObject:-[AVCSessionABTestConfiguration dictionary](abTestConfiguration forKeyedSubscript:{"dictionary"), @"vcSessionABTestsConfiguration"}];
  }

  v12[0] = @"vcSessionType";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCSessionConfiguration sessionModeWithClientSessionMode:](AVCSessionConfiguration, "sessionModeWithClientSessionMode:", self->_sessionMode)}];
  v12[1] = @"vcSessionOneOnOneModeEnabled";
  v13[1] = [MEMORY[0x1E696AD98] numberWithBool:self->_oneToOneModeEnabled];
  v12[2] = @"vcSessionParameterParticipantScreenControlEnabled";
  v13[2] = [MEMORY[0x1E696AD98] numberWithBool:self->_remoteScreenControlEnabled];
  v12[3] = @"vcSessionOutOfProcessCodecsEnabled";
  v13[3] = [MEMORY[0x1E696AD98] numberWithBool:self->_outOfProcessCodecsEnabled];
  [v4 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, v12, 4)}];
  return v4;
}

- (void)setParentNWActivity:(id)activity
{
  parentNWActivity = self->_parentNWActivity;
  if (parentNWActivity)
  {
    nw_release(parentNWActivity);
  }

  self->_parentNWActivity = activity;
  if (activity)
  {

    nw_retain(activity);
  }
}

+ (int64_t)clientSessionModeWithSessionMode:(int64_t)mode
{
  if ((mode - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return mode;
  }
}

+ (int64_t)sessionModeWithClientSessionMode:(int64_t)mode
{
  if ((mode - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return mode;
  }
}

- (id)serializeNwActivity:(id)activity
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = nw_activity_copy_xpc_token();
  if (v3)
  {
    v4 = v3;
    if (MEMORY[0x1E128D960]() == MEMORY[0x1E69E9F20] && (bytes = xpc_uuid_get_bytes(v4)) != 0)
    {
      memset(v8, 0, sizeof(v8));
      uuid_unparse(bytes, v8);
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v8 encoding:4];
    }

    else
    {
      v5 = 0;
    }

    xpc_release(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)deserializeNwActivity:(id)activity
{
  v10 = *MEMORY[0x1E69E9840];
  if (activity)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:activity];
    v4 = v3;
    if (v3)
    {
      *uuid = 0;
      v9 = 0;
      [v3 getUUIDBytes:uuid];
      v5 = xpc_uuid_create(uuid);
      v6 = nw_activity_create_from_xpc_token();
      xpc_release(v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cleanupNwActivity
{
  parentNWActivity = self->_parentNWActivity;
  if (parentNWActivity)
  {
    nw_release(parentNWActivity);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setSessionMode:{-[AVCSessionConfiguration sessionMode](self, "sessionMode")}];
  [v5 setOneToOneModeEnabled:{-[AVCSessionConfiguration isOneToOneModeEnabled](self, "isOneToOneModeEnabled")}];
  [v5 setAbTestConfiguration:{-[AVCSessionConfiguration abTestConfiguration](self, "abTestConfiguration")}];
  [v5 setRemoteScreenControlEnabled:{-[AVCSessionConfiguration isRemoteScreenControlEnabled](self, "isRemoteScreenControlEnabled")}];
  [v5 setParentNWActivity:{-[AVCSessionConfiguration parentNWActivity](self, "parentNWActivity")}];
  [v5 setOutOfProcessCodecsEnabled:{-[AVCSessionConfiguration outOfProcessCodecsEnabled](self, "outOfProcessCodecsEnabled")}];
  v6 = [(NSCopying *)[(AVCSessionConfiguration *)self reportingHierarchyToken] copyWithZone:zone];
  [v5 setReportingHierarchyToken:v6];

  v7 = [(NSUUID *)[(AVCSessionConfiguration *)self conversationID] copyWithZone:zone];
  [v5 setConversationID:v7];

  v8 = [(NSDate *)[(AVCSessionConfiguration *)self conversationTimeBase] copyWithZone:zone];
  [v5 setConversationTimeBase:v8];

  v9 = [(NSDate *)[(AVCSessionConfiguration *)self conversationTimeBaseTruncated] copyWithZone:zone];
  [v5 setConversationTimeBaseTruncated:v9];

  v10 = [(NSString *)[(AVCSessionConfiguration *)self serviceName] copyWithZone:zone];
  [v5 setServiceName:v10];

  return v5;
}

+ (void)cStringFromSessionMode:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "+[AVCSessionConfiguration cStringFromSessionMode:]";
  v7 = 1024;
  v8 = 43;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unknown sessionMode=%ld", &v3, 0x26u);
}

@end