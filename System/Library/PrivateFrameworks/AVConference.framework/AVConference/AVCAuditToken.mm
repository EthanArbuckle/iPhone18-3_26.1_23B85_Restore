@interface AVCAuditToken
+ (id)deserializeAuditTokens:(id)tokens;
+ (id)processIdentifiersFromAuditTokens:(id)tokens;
+ (id)serializeAuditTokens:(id)tokens;
- ($115C4C562B26FF47E01F9F4EA65B5887)token;
- (AVCAuditToken)initWithAuditToken:(id *)token;
- (AVCAuditToken)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCAuditToken

- (AVCAuditToken)initWithAuditToken:(id *)token
{
  v23 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AVCAuditToken;
  v4 = [(AVCAuditToken *)&v12 init];
  if (!v4)
  {
    [AVCAuditToken initWithAuditToken:];
LABEL_22:

    return 0;
  }

  if (!VCUtil_AuditTokenValid(token))
  {
    if (objc_opt_class() == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCAuditToken initWithAuditToken:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCAuditToken initWithAuditToken:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [v4 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v10 = *MEMORY[0x1E6986650];
        log = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v14 = v8;
            v15 = 2080;
            v16 = "[AVCAuditToken initWithAuditToken:]";
            v17 = 1024;
            v18 = 26;
            v19 = 2112;
            v20 = v7;
            v21 = 2048;
            v22 = v4;
            _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid audit token", buf, 0x30u);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 136316162;
          v14 = v8;
          v15 = 2080;
          v16 = "[AVCAuditToken initWithAuditToken:]";
          v17 = 1024;
          v18 = 26;
          v19 = 2112;
          v20 = v7;
          v21 = 2048;
          v22 = v4;
          _os_log_fault_impl(&dword_1DB56E000, log, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Invalid audit token", buf, 0x30u);
        }
      }
    }

    goto LABEL_22;
  }

  v5 = *token->var0;
  *(v4 + 24) = *&token->var0[4];
  *(v4 + 8) = v5;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&self->_token length:32];
  [coder encodeObject:v4 forKey:@"auditToken"];
}

- (AVCAuditToken)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AVCAuditToken;
  v4 = [(AVCAuditToken *)&v12 init];
  if (!v4)
  {
    [AVCAuditToken initWithCoder:];
LABEL_22:

    return 0;
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  if (!v5)
  {
    if (objc_opt_class() == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCAuditToken initWithCoder:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCAuditToken initWithCoder:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(AVCAuditToken *)v4 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v10 = *MEMORY[0x1E6986650];
        log = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v14 = v8;
            v15 = 2080;
            v16 = "[AVCAuditToken initWithCoder:]";
            v17 = 1024;
            v18 = 58;
            v19 = 2112;
            v20 = v7;
            v21 = 2048;
            v22 = v4;
            _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to decode token data", buf, 0x30u);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 136316162;
          v14 = v8;
          v15 = 2080;
          v16 = "[AVCAuditToken initWithCoder:]";
          v17 = 1024;
          v18 = 58;
          v19 = 2112;
          v20 = v7;
          v21 = 2048;
          v22 = v4;
          _os_log_fault_impl(&dword_1DB56E000, log, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Failed to decode token data", buf, 0x30u);
        }
      }
    }

    goto LABEL_22;
  }

  [v5 getBytes:&v4->_token length:32];
  return v4;
}

+ (id)serializeAuditTokens:(id)tokens
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v3 = [tokens copy];
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v6];

  if (v6[0])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[AVCAuditToken serializeAuditTokens:];
      }
    }
  }

  return v4;
}

+ (id)deserializeAuditTokens:(id)tokens
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v5 = [v4 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 2)}];
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v5 fromData:tokens error:&v8];
  if (v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[AVCAuditToken deserializeAuditTokens:];
      }
    }
  }

  return v6;
}

+ (id)processIdentifiersFromAuditTokens:(id)tokens
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [tokens countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(tokens);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          [v9 token];
        }

        else
        {
          memset(&v11, 0, sizeof(v11));
        }

        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", audit_token_to_pid(&v11))}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [tokens countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  return array;
}

- (BOOL)isEqual:(id)equal
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v5;
  v8 = v5;
  if (equal)
  {
    [equal token];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  return VCUtil_AuditTokenEqual(self->_token.val, &v7);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)token
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)initWithAuditToken:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 26;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Invalid audit token", v1, 0x1Cu);
}

- (void)initWithAuditToken:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 26;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid audit token", v1, 0x1Cu);
}

- (void)initWithAuditToken:.cold.3()
{
  if (objc_opt_class())
  {
    if (objc_opt_respondsToSelector())
    {
      [0 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 2)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_28();
        OUTLINED_FUNCTION_9_0();
        v5 = 48;
        goto LABEL_12;
      }

      return;
    }

    if (!OUTLINED_FUNCTION_37_7())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_28();
    OUTLINED_FUNCTION_20_6();
    v11 = 48;
LABEL_18:
    _os_log_fault_impl(v6, v7, v8, v9, v10, v11);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 2)
  {
    return;
  }

  VRTraceErrorLogLevelToCSTR();
  if (!VRTraceIsOSFaultDisabled())
  {
    if (!OUTLINED_FUNCTION_37_7())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_20_6();
    v11 = 28;
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v5 = 28;
LABEL_12:
    _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  }
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 58;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Failed to decode token data", v1, 0x1Cu);
}

- (void)initWithCoder:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 58;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to decode token data", v1, 0x1Cu);
}

- (void)initWithCoder:.cold.3()
{
  if (objc_opt_class())
  {
    if (objc_opt_respondsToSelector())
    {
      [0 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 2)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_28();
        OUTLINED_FUNCTION_9_0();
        v5 = 48;
        goto LABEL_12;
      }

      return;
    }

    if (!OUTLINED_FUNCTION_37_7())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_28();
    OUTLINED_FUNCTION_20_6();
    v11 = 48;
LABEL_18:
    _os_log_fault_impl(v6, v7, v8, v9, v10, v11);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 2)
  {
    return;
  }

  VRTraceErrorLogLevelToCSTR();
  if (!VRTraceIsOSFaultDisabled())
  {
    if (!OUTLINED_FUNCTION_37_7())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_20_6();
    v11 = 28;
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v5 = 28;
LABEL_12:
    _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  }
}

+ (void)serializeAuditTokens:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to serialize. error=%@");
}

+ (void)deserializeAuditTokens:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to deserialize. error=%@");
}

@end