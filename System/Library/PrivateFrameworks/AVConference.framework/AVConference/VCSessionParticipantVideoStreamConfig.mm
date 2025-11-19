@interface VCSessionParticipantVideoStreamConfig
- (void)setupRxPayloads:(id)a3 featureStrings:(id)a4;
- (void)setupTxPayloads:(id)a3 featureStrings:(id)a4;
@end

@implementation VCSessionParticipantVideoStreamConfig

- (void)setupRxPayloads:(id)a3 featureStrings:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 unsignedIntValue];
        [(VCMediaStreamConfig *)self addRxPayloadType:v12 networkPayload:v12];
        if (a4)
        {
          -[VCVideoStreamConfig addRxCodecFeatureListString:codecType:](self, "addRxCodecFeatureListString:codecType:", [a4 objectForKeyedSubscript:v11], +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", v12));
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }
}

- (void)setupTxPayloads:(id)a3 featureStrings:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 unsignedIntValue];
        [(VCMediaStreamConfig *)self addTxPayloadType:v12 networkPayload:v12];
        if (a4)
        {
          -[VCVideoStreamConfig addTxCodecFeatureListString:codecType:](self, "addTxCodecFeatureListString:codecType:", [a4 objectForKeyedSubscript:v11], +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", v12));
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }
}

@end