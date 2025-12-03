@interface VCSessionParticipantVideoStreamConfig
- (void)setupRxPayloads:(id)payloads featureStrings:(id)strings;
- (void)setupTxPayloads:(id)payloads featureStrings:(id)strings;
@end

@implementation VCSessionParticipantVideoStreamConfig

- (void)setupRxPayloads:(id)payloads featureStrings:(id)strings
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [payloads countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(payloads);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        unsignedIntValue = [v11 unsignedIntValue];
        [(VCMediaStreamConfig *)self addRxPayloadType:unsignedIntValue networkPayload:unsignedIntValue];
        if (strings)
        {
          -[VCVideoStreamConfig addRxCodecFeatureListString:codecType:](self, "addRxCodecFeatureListString:codecType:", [strings objectForKeyedSubscript:v11], +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", unsignedIntValue));
        }
      }

      v8 = [payloads countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }
}

- (void)setupTxPayloads:(id)payloads featureStrings:(id)strings
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [payloads countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(payloads);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        unsignedIntValue = [v11 unsignedIntValue];
        [(VCMediaStreamConfig *)self addTxPayloadType:unsignedIntValue networkPayload:unsignedIntValue];
        if (strings)
        {
          -[VCVideoStreamConfig addTxCodecFeatureListString:codecType:](self, "addTxCodecFeatureListString:codecType:", [strings objectForKeyedSubscript:v11], +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", unsignedIntValue));
        }
      }

      v8 = [payloads countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }
}

@end