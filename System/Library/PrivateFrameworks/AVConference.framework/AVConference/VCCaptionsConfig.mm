@interface VCCaptionsConfig
+ (id)deserializeConfiguration:(id)configuration;
+ (id)serializeConfiguration:(id)configuration;
+ (unsigned)callTypeFromClientCallType:(unsigned __int8)type;
+ (unsigned)taskHintFromClientTaskHint:(unsigned __int8)hint;
+ (unsigned)usageFromClientUsage:(unsigned __int8)usage;
- (BOOL)isEqualToCaptionsConfig:(id)config;
- (VCCaptionsConfig)initWithClientConfig:(id)config;
- (VCCaptionsConfig)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCCaptionsConfig

- (VCCaptionsConfig)initWithClientConfig:(id)config
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!config)
  {
    [(VCCaptionsConfig *)self initWithClientConfig:v7];
LABEL_7:

    return 0;
  }

  v4 = [(VCCaptionsConfig *)self init];
  if (!v4)
  {
    [VCCaptionsConfig initWithClientConfig:v7];
    goto LABEL_7;
  }

  v5 = v4;
  v4->_locale = [objc_msgSend(config "locale")];
  v5->_taskHint = +[VCCaptionsConfig taskHintFromClientTaskHint:](VCCaptionsConfig, "taskHintFromClientTaskHint:", [config taskHint]);
  v5->_usage = +[VCCaptionsConfig usageFromClientUsage:](VCCaptionsConfig, "usageFromClientUsage:", [config usage]);
  v5->_languageDetectorEnabled = [config languageDetectorEnabled];
  v5->_languageDetectorReportingFrequency = [config languageDetectorReportingFrequency];
  v5->_explicitLanguageFilterEnabled = [config isExplicitLanguageFilterEnabled];
  v5->_callType = +[VCCaptionsConfig callTypeFromClientCallType:](VCCaptionsConfig, "callTypeFromClientCallType:", [config callType]);
  v5->_formatForNewLinesEnabled = [config isFormatForNewLinesEnabled];
  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionsConfig;
  [(VCCaptionsConfig *)&v3 dealloc];
}

- (BOOL)isEqualToCaptionsConfig:(id)config
{
  result = 0;
  if (config)
  {
    if (-[NSString isEqualToString:](-[NSLocale localeIdentifier](self->_locale, "localeIdentifier"), "isEqualToString:", [objc_msgSend(config "locale")]))
    {
      taskHint = self->_taskHint;
      if (taskHint == [config taskHint])
      {
        usage = self->_usage;
        if (usage == [config usage])
        {
          languageDetectorEnabled = self->_languageDetectorEnabled;
          if (languageDetectorEnabled == [config languageDetectorEnabled])
          {
            languageDetectorReportingFrequency = self->_languageDetectorReportingFrequency;
            if (languageDetectorReportingFrequency == [config languageDetectorReportingFrequency])
            {
              explicitLanguageFilterEnabled = self->_explicitLanguageFilterEnabled;
              if (explicitLanguageFilterEnabled == [config isExplicitLanguageFilterEnabled])
              {
                callType = self->_callType;
                if (callType == [config callType])
                {
                  formatForNewLinesEnabled = self->_formatForNewLinesEnabled;
                  if (formatForNewLinesEnabled == [config isFormatForNewLinesEnabled])
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

+ (unsigned)usageFromClientUsage:(unsigned __int8)usage
{
  v3 = 0x6050403020101uLL >> (8 * usage);
  if (usage >= 7u)
  {
    LOBYTE(v3) = 1;
  }

  return v3 & 7;
}

+ (unsigned)taskHintFromClientTaskHint:(unsigned __int8)hint
{
  if (hint == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unsigned)callTypeFromClientCallType:(unsigned __int8)type
{
  typeCopy = type;
  v15 = *MEMORY[0x1E69E9840];
  if ((type - 1) >= 4)
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
        v10 = "+[VCCaptionsConfig callTypeFromClientCallType:]";
        v11 = 1024;
        v12 = 111;
        v13 = 1024;
        v14 = typeCopy;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client call type is not one of supported types, callType=%d", &v7, 0x22u);
      }
    }

    LOBYTE(typeCopy) = 1;
  }

  return typeCopy;
}

+ (id)serializeConfiguration:(id)configuration
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  if (v5)
  {
    +[VCCaptionsConfig serializeConfiguration:];
  }

  return v3;
}

+ (id)deserializeConfiguration:(id)configuration
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:configuration error:v5];
  if (v5[0])
  {
    +[VCCaptionsConfig deserializeConfiguration:];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_locale)
  {
    if ([VCCaptionsConfig isValidUsage:self->_usage])
    {
      [coder encodeObject:self->_locale forKey:@"vcCaptionsLocale"];
      [coder encodeInt32:self->_usage forKey:@"vcCaptionUsage"];
      [coder encodeInt32:self->_taskHint forKey:@"vcCaptionsTaskHint"];
      [coder encodeBool:self->_languageDetectorEnabled forKey:@"vcCaptionsLanguageDetectorEnabled"];
      [coder encodeInteger:self->_languageDetectorReportingFrequency forKey:@"vcCaptionsLanguageDetectorReportingFrequency"];
      [coder encodeBool:self->_explicitLanguageFilterEnabled forKey:@"vcCaptionsExplicitLanguageFilterEnabled"];
      [coder encodeInt32:self->_callType forKey:@"vcCaptionsCallType"];
      formatForNewLinesEnabled = self->_formatForNewLinesEnabled;

      [coder encodeBool:formatForNewLinesEnabled forKey:@"vcCaptionsFormatForNewLinesEnabled"];
    }

    else
    {
      [VCCaptionsConfig encodeWithCoder:?];
    }
  }

  else
  {
    [VCCaptionsConfig encodeWithCoder:?];
  }
}

- (VCCaptionsConfig)initWithCoder:(id)coder
{
  v4 = [(VCCaptionsConfig *)self init];
  if (!v4)
  {
    [VCCaptionsConfig initWithCoder:];
LABEL_21:
    [coder failWithError:{+[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 10, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCaptionsConfig.m", 199), 18)}];

    return 0;
  }

  if (([coder containsValueForKey:@"vcCaptionsLocale"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  if (([coder containsValueForKey:@"vcCaptionsTaskHint"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  if (([coder containsValueForKey:@"vcCaptionUsage"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  if (([coder containsValueForKey:@"vcCaptionsLanguageDetectorEnabled"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  if (([coder containsValueForKey:@"vcCaptionsLanguageDetectorReportingFrequency"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  if (([coder containsValueForKey:@"vcCaptionsExplicitLanguageFilterEnabled"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  if (([coder containsValueForKey:@"vcCaptionsCallType"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  if (([coder containsValueForKey:@"vcCaptionsFormatForNewLinesEnabled"] & 1) == 0)
  {
    [VCCaptionsConfig initWithCoder:v4];
    goto LABEL_21;
  }

  v4->_locale = [coder decodeObjectOfClass:objc_opt_class() forKey:@"vcCaptionsLocale"];
  v4->_taskHint = [coder decodeInt32ForKey:@"vcCaptionsTaskHint"];
  v4->_usage = [coder decodeInt32ForKey:@"vcCaptionUsage"];
  v4->_languageDetectorEnabled = [coder decodeBoolForKey:@"vcCaptionsLanguageDetectorEnabled"];
  v4->_languageDetectorReportingFrequency = [coder decodeIntegerForKey:@"vcCaptionsLanguageDetectorReportingFrequency"];
  v4->_explicitLanguageFilterEnabled = [coder decodeBoolForKey:@"vcCaptionsExplicitLanguageFilterEnabled"];
  v4->_callType = [coder decodeInt32ForKey:@"vcCaptionsCallType"];
  v4->_formatForNewLinesEnabled = [coder decodeBoolForKey:@"vcCaptionsFormatForNewLinesEnabled"];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLocale:{-[VCCaptionsConfig locale](self, "locale")}];
  [v4 setTaskHint:{-[VCCaptionsConfig taskHint](self, "taskHint")}];
  [v4 setUsage:{-[VCCaptionsConfig usage](self, "usage")}];
  [v4 setLanguageDetectorEnabled:{-[VCCaptionsConfig languageDetectorEnabled](self, "languageDetectorEnabled")}];
  [v4 setLanguageDetectorReportingFrequency:{-[VCCaptionsConfig languageDetectorReportingFrequency](self, "languageDetectorReportingFrequency")}];
  [v4 setExplicitLanguageFilterEnabled:{-[VCCaptionsConfig isExplicitLanguageFilterEnabled](self, "isExplicitLanguageFilterEnabled")}];
  [v4 setCallType:{-[VCCaptionsConfig callType](self, "callType")}];
  [v4 setFormatForNewLinesEnabled:{-[VCCaptionsConfig isFormatForNewLinesEnabled](self, "isFormatForNewLinesEnabled")}];
  return v4;
}

- (void)initWithClientConfig:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)initWithClientConfig:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      v6 = 24;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Nil client config", v5, 0x1Cu);
    }
  }

  *a2 = a1;
}

+ (void)serializeConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

+ (void)deserializeConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v2 = VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    v14 = 136315906;
    v15 = v2;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7();
    v16 = 158;
    v17 = v3;
    v18 = v4;
    OUTLINED_FUNCTION_2();
    v10 = 34;
LABEL_11:
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v14 = 136316418;
      v15 = v11;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      v16 = 158;
      v17 = 2112;
      OUTLINED_FUNCTION_14_7();
      v19 = v13;
      v5 = &dword_1DB56E000;
      v8 = " [%s] %s:%d %@(%p) Invalid usage=%d";
      v9 = &v14;
      v6 = v12;
      v7 = OS_LOG_TYPE_ERROR;
      v10 = 54;
      goto LABEL_11;
    }
  }
}

- (void)encodeWithCoder:(void *)a1 .cold.2(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v2 = VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    v13 = 136315906;
    v14 = v2;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9_9();
    v15 = v3;
    OUTLINED_FUNCTION_2();
    v9 = 38;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = 136316418;
      v14 = v10;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_14_7();
      v16 = v12;
      v4 = &dword_1DB56E000;
      v7 = " [%s] %s:%d %@(%p) Invalid locale=%@";
      v8 = &v13;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 58;
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.3(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.4(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.5(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.6(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.7(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.8(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:.cold.9()
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