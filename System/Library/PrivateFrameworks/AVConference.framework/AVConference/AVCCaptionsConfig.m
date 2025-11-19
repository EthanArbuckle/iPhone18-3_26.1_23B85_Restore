@interface AVCCaptionsConfig
+ (const)cStringFromUsage:(unsigned __int8)a3;
+ (id)deserializeLocale:(id)a3;
+ (id)serializeConfiguration:(id)a3;
+ (id)serializeLocale:(id)a3;
+ (id)stringFromUsage:(unsigned __int8)a3;
+ (unsigned)callTypeFromServerCallType:(unsigned __int8)a3;
+ (unsigned)taskHintFromServerTaskHint:(unsigned __int8)a3;
+ (unsigned)usageFromServerUsage:(unsigned __int8)a3;
- (AVCCaptionsConfig)initWithServerConfig:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AVCCaptionsConfig

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCCaptionsConfig;
  [(AVCCaptionsConfig *)&v3 dealloc];
}

+ (const)cStringFromUsage:(unsigned __int8)a3
{
  if ((a3 - 1) < 6)
  {
    return off_1E85F5630[(a3 - 1)];
  }

  v4 = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(AVCCaptionsConfig *)v5 cStringFromUsage:v4, v6];
    }
  }

  return "Unknown";
}

+ (id)stringFromUsage:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [a1 cStringFromUsage:?];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s(%hhu)", v4, v3];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AVCCaptionsConfig;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{ %@ locale=%@ usage=%@ }", -[AVCCaptionsConfig description](&v3, sel_description), -[NSLocale localeIdentifier](self->_locale, "localeIdentifier"), +[AVCCaptionsConfig stringFromUsage:](AVCCaptionsConfig, "stringFromUsage:", self->_usage)];
}

- (AVCCaptionsConfig)initWithServerConfig:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [(AVCCaptionsConfig(Internal) *)self initWithServerConfig:v7];
LABEL_7:

    return 0;
  }

  v4 = [(AVCCaptionsConfig *)self init];
  if (!v4)
  {
    [AVCCaptionsConfig(Internal) initWithServerConfig:v7];
    goto LABEL_7;
  }

  v5 = v4;
  v4->_locale = [objc_msgSend(a3 "locale")];
  v5->_taskHint = +[AVCCaptionsConfig taskHintFromServerTaskHint:](AVCCaptionsConfig, "taskHintFromServerTaskHint:", [a3 taskHint]);
  v5->_usage = +[AVCCaptionsConfig usageFromServerUsage:](AVCCaptionsConfig, "usageFromServerUsage:", [a3 usage]);
  v5->_languageDetectorEnabled = [a3 languageDetectorEnabled];
  v5->_languageDetectorReportingFrequency = [a3 languageDetectorReportingFrequency];
  v5->_explicitLanguageFilterEnabled = [a3 isExplicitLanguageFilterEnabled];
  v5->_callType = +[AVCCaptionsConfig callTypeFromServerCallType:](AVCCaptionsConfig, "callTypeFromServerCallType:", [a3 callType]);
  v5->_formatForNewLinesEnabled = [a3 isFormatForNewLinesEnabled];
  return v5;
}

+ (unsigned)usageFromServerUsage:(unsigned __int8)a3
{
  v3 = 0x6050403020101uLL >> (8 * a3);
  if (a3 >= 7u)
  {
    LOBYTE(v3) = 1;
  }

  return v3 & 7;
}

+ (unsigned)taskHintFromServerTaskHint:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unsigned)callTypeFromServerCallType:(unsigned __int8)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) >= 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "+[AVCCaptionsConfig(Internal) callTypeFromServerCallType:]";
        v11 = 1024;
        v12 = 126;
        v13 = 1024;
        v14 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sever call type is not one of supported types, callType=%d", &v7, 0x22u);
      }
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

+ (id)serializeLocale:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:v6];
  if (v3)
  {
    v4 = v6[0] == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    +[AVCCaptionsConfig(Internal) serializeLocale:];
  }

  return v3;
}

+ (id)deserializeLocale:(id)a3
{
  if (a3)
  {
    result = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:objc_msgSend(a3 error:{"mutableCopy"), 0}];
    if (result)
    {
      return result;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(AVCCaptionsConfig(Internal) *)v4 deserializeLocale:v5];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCCaptionsConfig(Internal) deserializeLocale:v6];
    }
  }

  return 0;
}

+ (id)serializeConfiguration:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [[VCCaptionsConfig alloc] initWithClientConfig:a3];
  if (!v3)
  {
    [AVCCaptionsConfig(Internal) serializeConfiguration:?];
LABEL_7:
    v5 = v7;
    goto LABEL_4;
  }

  v4 = [VCCaptionsConfig serializeConfiguration:v3];
  if (!v4)
  {
    [AVCCaptionsConfig(Internal) serializeConfiguration:?];
    goto LABEL_7;
  }

  v8 = @"vcCaptionsConfig";
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
LABEL_4:

  return v5;
}

+ (void)cStringFromUsage:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "+[AVCCaptionsConfig cStringFromUsage:]";
  v7 = 1024;
  v8 = 41;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unknown captions usage=%hhu", &v3, 0x22u);
}

@end