@interface VCImageAttributeRules
- (VCImageAttributeRules)init;
- (id)description;
- (id)extractDimensionsForInterface:(int)a3 direction:(int)a4;
- (void)addRuleForVideoPayload:(int)a3 withDirection:(int)a4 width:(int)a5 height:(int)a6 frameRate:(int)a7 priority:(int)a8 interface:(int)a9;
- (void)dealloc;
- (void)interfaceKey:(id *)a3 forInterface:(int)a4 directionKey:(id *)a5 forDirection:(int)a6;
- (void)swapSendAndReceiveRules;
@end

@implementation VCImageAttributeRules

- (VCImageAttributeRules)init
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCImageAttributeRules;
  v2 = [(VCImageAttributeRules *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v3, @"send", v4, @"recv", 0}];
    v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"send", v6, @"recv", 0}];
    v2->_imageAttributeRules = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v7, @"wifiRules", v8, @"cellRules", 0}];
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCImageAttributeRules;
  [(VCImageAttributeRules *)&v3 dealloc];
}

- (id)description
{
  v2 = [(VCImageAttributeRules *)self imageAttributeRules];

  return [(NSMutableDictionary *)v2 description];
}

- (void)addRuleForVideoPayload:(int)a3 withDirection:(int)a4 width:(int)a5 height:(int)a6 frameRate:(int)a7 priority:(int)a8 interface:(int)a9
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (a5 && (v9 = *&a6, a6) && (v10 = *&a7, a7) && a9)
  {
    v11 = *&a8;
    v12 = *&a4;
    v13 = *&a3;
    v21[0] = @"width";
    v22[0] = [MEMORY[0x1E696AD98] numberWithInt:*&a5];
    v21[1] = @"height";
    v22[1] = [MEMORY[0x1E696AD98] numberWithInt:v9];
    v21[2] = @"frameRate";
    v22[2] = [MEMORY[0x1E696AD98] numberWithInt:v10];
    v21[3] = @"priority";
    v22[3] = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    [(VCImageAttributeRules *)self interfaceKey:&v20 forInterface:a9 directionKey:&v19 forDirection:v12];
    v16 = [(VCImageAttributeRules *)self imageAttributeRules];
    v17 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v20];
    v18 = [v17 objectForKey:v19];
    [v18 setObject:v15 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v13)}];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCImageAttributeRules addRuleForVideoPayload:withDirection:width:height:frameRate:priority:interface:];
    }
  }
}

- (id)extractDimensionsForInterface:(int)a3 direction:(int)a4
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *&a4;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    [(VCImageAttributeRules *)self interfaceKey:&v20 forInterface:*&a3 directionKey:&v19 forDirection:*&a4];
    v7 = [(VCImageAttributeRules *)self imageAttributeRules];
    v8 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v20];
    v9 = [v8 objectForKey:v19];
    v10 = [v9 count];
    if (a3 == 1 && !v10)
    {
      LODWORD(v18) = 1;
      [(VCImageAttributeRules *)self addRuleForVideoPayload:123 withDirection:v4 width:320 height:240 frameRate:15 priority:0 interface:v18];
      v11 = [(VCImageAttributeRules *)self imageAttributeRules];
      v12 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v20];
      v9 = [v12 objectForKey:v19];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (v9)
        {
          v15 = [objc_msgSend(v9 "description")];
        }

        else
        {
          v15 = "<nil>";
        }

        if ([(VCImageAttributeRules *)self imageAttributeRules])
        {
          v16 = [-[NSMutableDictionary description](-[VCImageAttributeRules imageAttributeRules](self "imageAttributeRules")];
        }

        else
        {
          v16 = "<nil>";
        }

        *buf = 136316674;
        v22 = v13;
        v23 = 2080;
        v24 = "[VCImageAttributeRules extractDimensionsForInterface:direction:]";
        v25 = 1024;
        v26 = 106;
        v27 = 1024;
        v28 = a3;
        v29 = 1024;
        v30 = v4;
        v31 = 2080;
        v32 = v15;
        v33 = 2080;
        v34 = v16;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCImageAttributeRules: extract dimensions for interface %d direction %d: %s, from %s", buf, 0x3Cu);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCImageAttributeRules extractDimensionsForInterface:direction:];
      }
    }

    return 0;
  }

  return v9;
}

- (void)swapSendAndReceiveRules
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  [(VCImageAttributeRules *)self interfaceKey:v12 forInterface:2 directionKey:0 forDirection:0];
  [(VCImageAttributeRules *)self interfaceKey:&v11 forInterface:1 directionKey:0 forDirection:0];
  v3 = [(VCImageAttributeRules *)self imageAttributeRules];
  v4 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:v12[0]];
  v5 = [v4 objectForKeyedSubscript:@"send"];
  v6 = [v4 objectForKeyedSubscript:@"recv"];
  [v4 setObject:v5 forKeyedSubscript:@"recv"];
  [v4 setObject:v6 forKeyedSubscript:@"send"];

  v7 = [(VCImageAttributeRules *)self imageAttributeRules];
  v8 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v11];
  v9 = [v8 objectForKeyedSubscript:@"send"];
  v10 = [v8 objectForKeyedSubscript:@"recv"];
  [v8 setObject:v9 forKeyedSubscript:@"recv"];
  [v8 setObject:v10 forKeyedSubscript:@"send"];
}

- (void)interfaceKey:(id *)a3 forInterface:(int)a4 directionKey:(id *)a5 forDirection:(int)a6
{
  if (a3)
  {
    v6 = @"wifiRules";
    if (a4 != 2)
    {
      v6 = 0;
    }

    if (a4 == 1)
    {
      v6 = @"cellRules";
    }

    *a3 = v6;
  }

  if (a5)
  {
    v7 = @"recv";
    if (a6 != 1)
    {
      v7 = 0;
    }

    if (!a6)
    {
      v7 = @"send";
    }

    *a5 = v7;
  }
}

- (void)addRuleForVideoPayload:withDirection:width:height:frameRate:priority:interface:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "[VCImageAttributeRules addRuleForVideoPayload:withDirection:width:height:frameRate:priority:interface:]";
  v4 = 1024;
  v5 = 57;
  v6 = v0;
  v7 = "[VCImageAttributeRules addRuleForVideoPayload:withDirection:width:height:frameRate:priority:interface:]";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCImageAttrbuteRules: %s received invalid arguments ", v2, 0x26u);
}

- (void)extractDimensionsForInterface:direction:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "[VCImageAttributeRules extractDimensionsForInterface:direction:]";
  v4 = 1024;
  v5 = 79;
  v6 = v0;
  v7 = "[VCImageAttributeRules extractDimensionsForInterface:direction:]";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCImageAttrbuteRules: %s received unknown wireless interface", v2, 0x26u);
}

@end