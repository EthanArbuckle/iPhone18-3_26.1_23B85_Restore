@interface VCMediaNegotiatorAudioConfiguration
- (BOOL)addAudioPayload:(int)a3 isSecondary:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSecondaryPayload:(int)a3;
- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioRecording:(BOOL)a3 ssrc:(unsigned int)a4 audioUnitNumber:(unsigned int)a5 audioRuleCollection:(id)a6;
- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioSwitching:(BOOL)a3 allowAudioRecording:(BOOL)a4 useSBR:(BOOL)a5 ssrc:(unsigned int)a6 audioUnitNumber:(unsigned int)a7 audioRuleCollection:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorAudioConfiguration

- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioRecording:(BOOL)a3 ssrc:(unsigned int)a4 audioUnitNumber:(unsigned int)a5 audioRuleCollection:(id)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v9 = a3;
  v11 = [a6 allowAudioSwitching];
  v12 = [a6 usesSBR];

  return [(VCMediaNegotiatorAudioConfiguration *)self initWithAllowAudioSwitching:v11 allowAudioRecording:v9 useSBR:v12 ssrc:v8 audioUnitNumber:v7 audioRuleCollection:a6];
}

- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioSwitching:(BOOL)a3 allowAudioRecording:(BOOL)a4 useSBR:(BOOL)a5 ssrc:(unsigned int)a6 audioUnitNumber:(unsigned int)a7 audioRuleCollection:(id)a8
{
  v10 = *&a6;
  v30 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCMediaNegotiatorAudioConfiguration;
  v14 = [(VCMediaNegotiatorAudioConfiguration *)&v24 init];
  if (v14)
  {
    v14->_audioPayloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14->_secondaryPayloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(VCMediaNegotiatorCommonConfiguration *)v14 setSsrc:v10];
    v14->_allowAudioSwitching = a3;
    v14->_allowAudioRecording = a4;
    v14->_useSBR = a5;
    v14->_audioUnitNumber = a7;
    if (a8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = [a8 rules];
      v15 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v26 + 1) + 8 * i);
            v20 = [v19 payload];
            v21 = [a8 secondaryPayloads];
            -[VCMediaNegotiatorAudioConfiguration addAudioPayload:isSecondary:](v14, "addAudioPayload:isSecondary:", v20, [v21 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v19, "payload"))}]);
          }

          v16 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
        }

        while (v16);
      }
    }
  }

  return v14;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorAudioConfiguration;
  [(VCMediaNegotiatorAudioConfiguration *)&v3 dealloc];
}

- (BOOL)addAudioPayload:(int)a3 isSecondary:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  v7 = [VCMediaNegotiationBlobAudioSettings isAudioPayloadSupported:?];
  if (v7)
  {
    -[NSMutableSet addObject:](self->_audioPayloads, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]);
    if (v4)
    {
      -[NSMutableSet addObject:](self->_secondaryPayloads, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCMediaNegotiatorAudioConfiguration addAudioPayload:isSecondary:]";
      v15 = 1024;
      v16 = 90;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Payload cannot be negotiated: %d", &v11, 0x22u);
    }
  }

  return v7;
}

- (BOOL)isSecondaryPayload:(int)a3
{
  secondaryPayloads = self->_secondaryPayloads;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

  return [(NSMutableSet *)secondaryPayloads containsObject:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAllowAudioSwitching:allowAudioRecording:useSBR:ssrc:audioUnitNumber:", self->_allowAudioSwitching, self->_allowAudioRecording, self->_useSBR, -[VCMediaNegotiatorCommonConfiguration ssrc](self, "ssrc"), self->_audioUnitNumber}];
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    audioPayloads = self->_audioPayloads;
    v6 = [(NSMutableSet *)audioPayloads countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(audioPayloads);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) intValue];
          [v4 addAudioPayload:v10 isSecondary:{-[VCMediaNegotiatorAudioConfiguration isSecondaryPayload:](self, "isSecondaryPayload:", v10)}];
        }

        v7 = [(NSMutableSet *)audioPayloads countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = VCMediaNegotiatorAudioConfiguration;
  v5 = [(VCMediaNegotiatorCommonConfiguration *)&v20 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (allowAudioSwitching = self->_allowAudioSwitching, allowAudioSwitching == [a3 allowAudioSwitching]) && (allowAudioRecording = self->_allowAudioRecording, allowAudioRecording == objc_msgSend(a3, "allowAudioRecording")) && (useSBR = self->_useSBR, useSBR == objc_msgSend(a3, "useSBR")) && (audioUnitNumber = self->_audioUnitNumber, audioUnitNumber == objc_msgSend(a3, "audioUnitNumber")) && (v10 = -[NSMutableSet count](self->_audioPayloads, "count"), v10 == objc_msgSend(objc_msgSend(a3, "audioPayloads"), "count")))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [a3 audioPayloads];
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
LABEL_10:
        v15 = 0;
        while (1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          v17 = [v16 intValue];
          v5 = [(NSMutableSet *)self->_audioPayloads containsObject:v16];
          if (!v5)
          {
            break;
          }

          v18 = [(VCMediaNegotiatorAudioConfiguration *)self isSecondaryPayload:v17];
          if (v18 != [a3 isSecondaryPayload:v17])
          {
            goto LABEL_18;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v22 objects:v21 count:16];
            LOBYTE(v5) = 1;
            if (v13)
            {
              goto LABEL_10;
            }

            return v5;
          }
        }
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
LABEL_18:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end