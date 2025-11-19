@interface VCCaptionsClientContext
- (BOOL)isEqual:(id)a3;
- (VCCaptionsClientContext)initWithStreamToken:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation VCCaptionsClientContext

- (VCCaptionsClientContext)initWithStreamToken:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCCaptionsClientContext;
  v4 = [(VCCaptionsClientContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_streamToken = a3;
    v4->_uniqueIdentifier = arc4random_uniform(0x7FFFFFFFu);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithStreamToken:", -[VCCaptionsClientContext streamToken](self, "streamToken")}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 24) = self->_uniqueIdentifier;
    *(v4 + 16) = [(NSString *)self->_localeIdentifier copy];
  }

  else
  {
    [VCCaptionsClientContext copyWithZone:?];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v15 = v6;
  v16 = v5;
  v17 = v4;
  v18 = v3;
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (self->_localeIdentifier)
  {
    goto LABEL_5;
  }

  if ([a3 localeIdentifier])
  {
    if (!self->_localeIdentifier)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_12;
    }

LABEL_5:
    if ([a3 localeIdentifier])
    {
      v11 = -[NSString isEqual:](self->_localeIdentifier, "isEqual:", [a3 localeIdentifier]);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = 1;
LABEL_12:
  v13 = [(VCCaptionsClientContext *)self streamToken:v15];
  if (v13 == [a3 streamToken])
  {
    v14 = [(VCCaptionsClientContext *)self uniqueIdentifier];
    return (v14 == [a3 uniqueIdentifier]) & v11;
  }

  return 0;
}

- (unint64_t)hash
{
  v3 = [(VCCaptionsClientContext *)self streamToken]+ 527;
  v4 = [(VCCaptionsClientContext *)self uniqueIdentifier];
  return v3 ^ [(NSString *)[(VCCaptionsClientContext *)self localeIdentifier] hash]^ v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionsClientContext;
  [(VCCaptionsClientContext *)&v3 dealloc];
}

- (void)copyWithZone:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    objc_opt_class();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_5_7();
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
      objc_opt_class();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

@end