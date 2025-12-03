@interface VCMediaNegotiatorAudioConfiguration
- (BOOL)addAudioPayload:(int)payload isSecondary:(BOOL)secondary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSecondaryPayload:(int)payload;
- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioRecording:(BOOL)recording ssrc:(unsigned int)ssrc audioUnitNumber:(unsigned int)number audioRuleCollection:(id)collection;
- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioSwitching:(BOOL)switching allowAudioRecording:(BOOL)recording useSBR:(BOOL)r ssrc:(unsigned int)ssrc audioUnitNumber:(unsigned int)number audioRuleCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorAudioConfiguration

- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioRecording:(BOOL)recording ssrc:(unsigned int)ssrc audioUnitNumber:(unsigned int)number audioRuleCollection:(id)collection
{
  v7 = *&number;
  v8 = *&ssrc;
  recordingCopy = recording;
  allowAudioSwitching = [collection allowAudioSwitching];
  usesSBR = [collection usesSBR];

  return [(VCMediaNegotiatorAudioConfiguration *)self initWithAllowAudioSwitching:allowAudioSwitching allowAudioRecording:recordingCopy useSBR:usesSBR ssrc:v8 audioUnitNumber:v7 audioRuleCollection:collection];
}

- (VCMediaNegotiatorAudioConfiguration)initWithAllowAudioSwitching:(BOOL)switching allowAudioRecording:(BOOL)recording useSBR:(BOOL)r ssrc:(unsigned int)ssrc audioUnitNumber:(unsigned int)number audioRuleCollection:(id)collection
{
  v10 = *&ssrc;
  v30 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCMediaNegotiatorAudioConfiguration;
  v14 = [(VCMediaNegotiatorAudioConfiguration *)&v24 init];
  if (v14)
  {
    v14->_audioPayloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14->_secondaryPayloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(VCMediaNegotiatorCommonConfiguration *)v14 setSsrc:v10];
    v14->_allowAudioSwitching = switching;
    v14->_allowAudioRecording = recording;
    v14->_useSBR = r;
    v14->_audioUnitNumber = number;
    if (collection)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = [collection rules];
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
            payload = [v19 payload];
            secondaryPayloads = [collection secondaryPayloads];
            -[VCMediaNegotiatorAudioConfiguration addAudioPayload:isSecondary:](v14, "addAudioPayload:isSecondary:", payload, [secondaryPayloads containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v19, "payload"))}]);
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

- (BOOL)addAudioPayload:(int)payload isSecondary:(BOOL)secondary
{
  secondaryCopy = secondary;
  v5 = *&payload;
  v19 = *MEMORY[0x1E69E9840];
  v7 = [VCMediaNegotiationBlobAudioSettings isAudioPayloadSupported:?];
  if (v7)
  {
    -[NSMutableSet addObject:](self->_audioPayloads, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]);
    if (secondaryCopy)
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

- (BOOL)isSecondaryPayload:(int)payload
{
  secondaryPayloads = self->_secondaryPayloads;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];

  return [(NSMutableSet *)secondaryPayloads containsObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAllowAudioSwitching:allowAudioRecording:useSBR:ssrc:audioUnitNumber:", self->_allowAudioSwitching, self->_allowAudioRecording, self->_useSBR, -[VCMediaNegotiatorCommonConfiguration ssrc](self, "ssrc"), self->_audioUnitNumber}];
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

          intValue = [*(*(&v13 + 1) + 8 * i) intValue];
          [v4 addAudioPayload:intValue isSecondary:{-[VCMediaNegotiatorAudioConfiguration isSecondaryPayload:](self, "isSecondaryPayload:", intValue)}];
        }

        v7 = [(NSMutableSet *)audioPayloads countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v26 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = VCMediaNegotiatorAudioConfiguration;
  v5 = [(VCMediaNegotiatorCommonConfiguration *)&v20 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (allowAudioSwitching = self->_allowAudioSwitching, allowAudioSwitching == [equal allowAudioSwitching]) && (allowAudioRecording = self->_allowAudioRecording, allowAudioRecording == objc_msgSend(equal, "allowAudioRecording")) && (useSBR = self->_useSBR, useSBR == objc_msgSend(equal, "useSBR")) && (audioUnitNumber = self->_audioUnitNumber, audioUnitNumber == objc_msgSend(equal, "audioUnitNumber")) && (v10 = -[NSMutableSet count](self->_audioPayloads, "count"), v10 == objc_msgSend(objc_msgSend(equal, "audioPayloads"), "count")))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      audioPayloads = [equal audioPayloads];
      v12 = [audioPayloads countByEnumeratingWithState:&v22 objects:v21 count:16];
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
            objc_enumerationMutation(audioPayloads);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          intValue = [v16 intValue];
          v5 = [(NSMutableSet *)self->_audioPayloads containsObject:v16];
          if (!v5)
          {
            break;
          }

          v18 = [(VCMediaNegotiatorAudioConfiguration *)self isSecondaryPayload:intValue];
          if (v18 != [equal isSecondaryPayload:intValue])
          {
            goto LABEL_18;
          }

          if (v13 == ++v15)
          {
            v13 = [audioPayloads countByEnumeratingWithState:&v22 objects:v21 count:16];
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