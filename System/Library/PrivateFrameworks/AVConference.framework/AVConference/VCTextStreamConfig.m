@interface VCTextStreamConfig
- (BOOL)setupCodecWithClientDictionary:(id)a3;
- (VCTextStreamConfig)initWithClientDictionary:(id)a3;
@end

@implementation VCTextStreamConfig

- (VCTextStreamConfig)initWithClientDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v5 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
    asprintf(&__str, "%s[%p] %s", v5, self, [objc_msgSend(a3 "description")]);
    if (__str)
    {
      __lasts = 0;
      v6 = strtok_r(__str, "\n", &__lasts);
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v17 = v8;
            v18 = 2080;
            v19 = "[VCTextStreamConfig initWithClientDictionary:]";
            v20 = 1024;
            v21 = 20;
            v22 = 2080;
            v23 = "[VCTextStreamConfig initWithClientDictionary:]";
            v24 = 2080;
            v25 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v6 = strtok_r(0, "\n", &__lasts);
      }

      while (v6);
      free(__str);
    }
  }

  v13.receiver = self;
  v13.super_class = VCTextStreamConfig;
  v10 = [(VCMediaStreamConfig *)&v13 initWithClientDictionary:a3];
  v11 = v10;
  if (v10 && ![(VCTextStreamConfig *)v10 setupCodecWithClientDictionary:a3])
  {

    return 0;
  }

  return v11;
}

- (BOOL)setupCodecWithClientDictionary:(id)a3
{
  v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextCodecType", "integerValue"}]);
  -[VCMediaStreamConfig addRxPayloadType:networkPayload:](self, "addRxPayloadType:networkPayload:", v5, [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRxPayloadType", "integerValue"}]);
  -[VCMediaStreamConfig addTxPayloadType:networkPayload:](self, "addTxPayloadType:networkPayload:", v5, [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTxPayloadType", "integerValue"}]);
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextNumRedundantPayloads", "integerValue"}];
  self->_numRedundantPayloads = v6;
  if (v6)
  {
    self->_redEnabled = 1;
    -[VCMediaStreamConfig addTxPayloadType:networkPayload:](self, "addTxPayloadType:networkPayload:", 20, [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextTxRedPayloadType", "integerValue"}]);
  }

  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextRxRedPayloadType", "integerValue"}])
  {
    [(VCMediaStreamConfig *)self addRxPayloadType:20 networkPayload:?];
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextTxIntervalMin", "floatValue"}];
  self->_txIntervalMin = v7;
  return 1;
}

@end