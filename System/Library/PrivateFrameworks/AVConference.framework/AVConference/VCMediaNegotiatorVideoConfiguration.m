@interface VCMediaNegotiatorVideoConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualFeatureStrings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorVideoConfiguration

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorVideoConfiguration;
  [(VCMediaNegotiatorVideoConfiguration *)&v3 dealloc];
}

- (BOOL)isEqualFeatureStrings:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v5 addObjectsFromArray:{-[VCVideoRuleCollections supportedPayloads](self->_videoRuleCollections, "supportedPayloads")}];
      [v6 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "videoRuleCollections"), "supportedPayloads")}];
      v7 = [v6 count];
      if (v7 == [v5 count])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = [v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v5);
              }

              v12 = *(*(&v21 + 1) + 8 * i);
              if (([v6 containsObject:v12] & 1) == 0)
              {
                [VCMediaNegotiatorVideoConfiguration isEqualFeatureStrings:];
                goto LABEL_21;
              }

              v13 = [(NSDictionary *)self->_videoFeatureStrings objectForKeyedSubscript:v12];
              if (!v13)
              {
                [VCMediaNegotiatorVideoConfiguration isEqualFeatureStrings:];
                goto LABEL_21;
              }

              v14 = v13;
              v15 = [objc_msgSend(a3 "videoFeatureStrings")];
              if (!v15)
              {
                [VCMediaNegotiatorVideoConfiguration isEqualFeatureStrings:];
                goto LABEL_21;
              }

              if (([v14 isEqualToString:v15] & 1) == 0)
              {
                [VCMediaNegotiatorVideoConfiguration isEqualFeatureStrings:];
                goto LABEL_21;
              }
            }

            v9 = [v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v16 = 1;
        goto LABEL_22;
      }

      [VCMediaNegotiatorVideoConfiguration isEqualFeatureStrings:];
    }

    else
    {
      [(VCMediaNegotiatorVideoConfiguration *)&v18 isEqualFeatureStrings:?];
    }

LABEL_21:
    v6 = v18;
    v16 = v19;
LABEL_22:

    return v16;
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaNegotiatorVideoConfiguration;
  v5 = [(VCMediaNegotiatorCommonConfiguration *)&v7 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[VCVideoRuleCollections isEqual:](self->_videoRuleCollections, "isEqual:", [a3 videoRuleCollections]);
      if (v5)
      {
        LOBYTE(v5) = [(VCMediaNegotiatorVideoConfiguration *)self isEqualFeatureStrings:a3];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCMediaNegotiatorVideoConfiguration;
  v5 = [(VCMediaNegotiatorCommonConfiguration *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(VCVideoRuleCollections *)self->_videoRuleCollections copyWithZone:a3];
    [v5 setVideoRuleCollections:v6];

    v7 = [(NSDictionary *)self->_videoFeatureStrings mutableCopyWithZone:a3];
    [v5 setVideoFeatureStrings:v7];

    v8 = [(NSDictionary *)self->_videoFeatureStringsFixedPosition mutableCopyWithZone:a3];
    [v5 setVideoFeatureStringsFixedPosition:v8];
  }

  else
  {
    [VCMediaNegotiatorVideoConfiguration copyWithZone:?];
  }

  return v5;
}

- (void)isEqualFeatureStrings:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_3_22();
}

- (void)isEqualFeatureStrings:.cold.2()
{
  OUTLINED_FUNCTION_1_13();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      [v0 intValue];
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_3_22();
}

- (void)isEqualFeatureStrings:.cold.3()
{
  OUTLINED_FUNCTION_1_13();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      [v0 intValue];
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_3_22();
}

- (void)isEqualFeatureStrings:.cold.4()
{
  OUTLINED_FUNCTION_1_13();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      [v0 intValue];
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_3_22();
}

- (void)isEqualFeatureStrings:.cold.5()
{
  OUTLINED_FUNCTION_1_13();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      [v0 intValue];
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_3_22();
}

- (void)isEqualFeatureStrings:(void *)a1 .cold.6(void *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 33;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate payload set", &v6, 0x1Cu);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)copyWithZone:(void *)a1 .cold.1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0();
    v12 = 82;
    v5 = " [%s] %s:%d Failed to copy self";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      v12 = 82;
      v13 = 2112;
      v14 = v2;
      v15 = 2048;
      v16 = a1;
      v5 = " [%s] %s:%d %@(%p) Failed to copy self";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

@end