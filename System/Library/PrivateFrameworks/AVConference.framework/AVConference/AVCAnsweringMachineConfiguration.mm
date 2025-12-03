@interface AVCAnsweringMachineConfiguration
+ (const)cStringFromCallSource:(unsigned __int8)source;
+ (id)stringFromCallSource:(unsigned __int8)source;
- (AVCAnsweringMachineConfiguration)init;
- (AVCAnsweringMachineConfiguration)initWithClientDictionary:(id)dictionary clientPid:(int)pid;
- (NSURL)announcementAsset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionary;
- (void)dealloc;
- (void)dictionary;
- (void)init;
- (void)setAnnouncementAsset:(id)asset;
@end

@implementation AVCAnsweringMachineConfiguration

- (AVCAnsweringMachineConfiguration)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCAnsweringMachineConfiguration;
  v2 = [(AVCAnsweringMachineConfiguration *)&v4 init];
  if (v2)
  {
    v2->_announcementAssetMilliSecondDelay = VCDefaults_GetIntValueForKey(@"answeringMachineAnnouncementAssetDelay", 200);
  }

  else
  {
    [AVCAnsweringMachineConfiguration init];
  }

  return v2;
}

- (void)setAnnouncementAsset:(id)asset
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [asset copy];
  }

  else if (asset)
  {
    v5 = [[VCSandboxedURL alloc] initWithURL:asset accessType:1];
  }

  else
  {
    v5 = 0;
  }

  self->_announcementAsset = v5;
}

- (NSURL)announcementAsset
{
  v2 = self->_announcementAsset;

  return v2;
}

+ (const)cStringFromCallSource:(unsigned __int8)source
{
  sourceCopy = source;
  if (source < 7u)
  {
    return off_1E85F6F30[source];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(AVCAnsweringMachineConfiguration *)v5 cStringFromCallSource:sourceCopy, v6];
    }
  }

  return "Unknown";
}

+ (id)stringFromCallSource:(unsigned __int8)source
{
  sourceCopy = source;
  v4 = [self cStringFromCallSource:?];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s(%hhu)", v4, sourceCopy];
}

- (id)description
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AVCAnsweringMachineConfiguration;
  v4 = [(AVCAnsweringMachineConfiguration *)&v10 description];
  v5 = [AVCAnsweringMachineConfiguration stringFromCallSource:self->_source];
  v6 = "NO";
  if (self->_isMessageRecordingEnabled)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_isMessageCaptioningEnabled)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if (self->_isMessagePlaybackEnabled)
  {
    v6 = "YES";
  }

  return [v3 stringWithFormat:@"{ %@ source=%@, isMessageRecordingEnabled=%s, isMessageCaptioningEnabled=%s isMessagePlaybackEnabled=%s, announcementAssetMilliSecondDelay=%u, clientPid=%d, announcementAsset=%@ usage=%hhu _reportingSamplingUUID=%@ }", v4, v5, v7, v8, v6, self->_announcementAssetMilliSecondDelay, self->_clientPid, self->_announcementAsset, self->_usage, self->_reportingSamplingUUID];
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[AVCAnsweringMachineConfiguration dealloc]";
        v16 = 1024;
        v17 = 103;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCAnsweringMachineConfiguration *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[AVCAnsweringMachineConfiguration dealloc]";
        v16 = 1024;
        v17 = 103;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = AVCAnsweringMachineConfiguration;
  [(AVCAnsweringMachineConfiguration *)&v11 dealloc];
}

- (id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", self->_source), @"vcAnsweringMachineCallSource"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_isMessageRecordingEnabled), @"vcAnsweringMachineRecordingEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_isMessageCaptioningEnabled), @"vcAnsweringMachineCaptioningEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_isMessagePlaybackEnabled), @"vcAnsweringMachinePlaybackEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", self->_usage), @"vcAnsweringMachineUsage"}];
  [dictionary setObject:-[NSUUID UUIDString](self->_reportingSamplingUUID forKeyedSubscript:{"UUIDString"), @"vcAnsweringMachineReportingSamplingUUID"}];
  p_announcementAsset = &self->_announcementAsset;
  announcementAsset = self->_announcementAsset;
  if (announcementAsset)
  {
    serialize = [(VCSandboxedURL *)announcementAsset serialize];
    if (serialize)
    {
      [dictionary setObject:serialize forKeyedSubscript:@"vcAnsweringMachineAnnouncementAssetURL"];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_announcementAssetMilliSecondDelay), @"vcAnsweringMachineAnnouncementAssetDelay"}];
    }

    else
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(AVCAnsweringMachineConfiguration *)v8 dictionary];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(AVCAnsweringMachineConfiguration *)self performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v13 = self->_announcementAsset;
            v14 = 136316418;
            v15 = v10;
            v16 = 2080;
            v17 = "[AVCAnsweringMachineConfiguration dictionary]";
            v18 = 1024;
            v19 = 123;
            v20 = 2112;
            v21 = v7;
            v22 = 2048;
            selfCopy = self;
            v24 = 2112;
            v25 = v13;
            _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to serialize announcementAsset=%@", &v14, 0x3Au);
          }
        }
      }

      return 0;
    }
  }

  return dictionary;
}

- (AVCAnsweringMachineConfiguration)initWithClientDictionary:(id)dictionary clientPid:(int)pid
{
  v27 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = AVCAnsweringMachineConfiguration;
  v6 = [(AVCAnsweringMachineConfiguration *)&v16 init];
  if (v6)
  {
    v6->_source = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcAnsweringMachineCallSource", "integerValue"}];
    v6->_isMessageRecordingEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcAnsweringMachineRecordingEnabled", "BOOLValue"}];
    v6->_isMessageCaptioningEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcAnsweringMachineCaptioningEnabled", "BOOLValue"}];
    v6->_isMessagePlaybackEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcAnsweringMachinePlaybackEnabled", "BOOLValue"}];
    v6->_announcementAsset = [+[VCSandboxedURL deserialize:](VCSandboxedURL deserialize:{objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcAnsweringMachineAnnouncementAssetURL", "consumeToken"}];
    v6->_announcementAssetMilliSecondDelay = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcAnsweringMachineAnnouncementAssetDelay", "unsignedLongValue"}];
    v6->_usage = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcAnsweringMachineUsage", "integerValue"}];
    v6->_clientPid = pid;
    v6->_reportingSamplingUUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcAnsweringMachineReportingSamplingUUID"}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v7 = [-[AVCAnsweringMachineConfiguration description](v6 "description")];
      v8 = dictionary ? [objc_msgSend(dictionary "description")] : "<nil>";
      asprintf(&__str, "self=%s succeeded with clientDict=%s clientPid=%d", v7, v8, pid);
      if (__str)
      {
        __lasts = 0;
        v9 = strtok_r(__str, "\n", &__lasts);
        v10 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v18 = v11;
              v19 = 2080;
              v20 = "[AVCAnsweringMachineConfiguration initWithClientDictionary:clientPid:]";
              v21 = 1024;
              v22 = 145;
              v23 = 2080;
              v24 = "";
              v25 = 2080;
              v26 = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v9 = strtok_r(0, "\n", &__lasts);
        }

        while (v9);
        free(__str);
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AVCAnsweringMachineConfiguration);
  [(AVCAnsweringMachineConfiguration *)v5 setSource:[(AVCAnsweringMachineConfiguration *)self source]];
  [(AVCAnsweringMachineConfiguration *)v5 setIsMessageRecordingEnabled:[(AVCAnsweringMachineConfiguration *)self isMessageRecordingEnabled]];
  [(AVCAnsweringMachineConfiguration *)v5 setIsMessageCaptioningEnabled:[(AVCAnsweringMachineConfiguration *)self isMessageCaptioningEnabled]];
  [(AVCAnsweringMachineConfiguration *)v5 setIsMessagePlaybackEnabled:[(AVCAnsweringMachineConfiguration *)self isMessagePlaybackEnabled]];
  v6 = [(VCSandboxedURL *)self->_announcementAsset copyWithZone:zone];
  [(AVCAnsweringMachineConfiguration *)v5 setAnnouncementAsset:v6];

  [(AVCAnsweringMachineConfiguration *)v5 setAnnouncementAssetMilliSecondDelay:[(AVCAnsweringMachineConfiguration *)self announcementAssetMilliSecondDelay]];
  v5->_clientPid = [(AVCAnsweringMachineConfiguration *)self clientPid];
  [(AVCAnsweringMachineConfiguration *)v5 setUsage:[(AVCAnsweringMachineConfiguration *)self usage]];
  [(AVCAnsweringMachineConfiguration *)v5 setReportingSamplingUUID:[(AVCAnsweringMachineConfiguration *)self reportingSamplingUUID]];
  return v5;
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "[AVCAnsweringMachineConfiguration init]";
      v6 = 1024;
      v7 = 44;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to super init", &v2, 0x1Cu);
    }
  }
}

+ (void)cStringFromCallSource:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "+[AVCAnsweringMachineConfiguration cStringFromCallSource:]";
  v7 = 1024;
  v8 = 84;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unknown call source=%hhu", &v3, 0x22u);
}

- (void)dictionary
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  selfCopy = self;
  v6 = 2080;
  v7 = "[AVCAnsweringMachineConfiguration dictionary]";
  v8 = 1024;
  v9 = 123;
  v10 = 2112;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to serialize announcementAsset=%@", &v4, 0x26u);
}

@end