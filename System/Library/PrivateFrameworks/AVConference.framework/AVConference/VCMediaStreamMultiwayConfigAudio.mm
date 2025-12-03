@interface VCMediaStreamMultiwayConfigAudio
- (VCMediaStreamMultiwayConfigAudio)init;
- (void)addV2CodecConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation VCMediaStreamMultiwayConfigAudio

- (VCMediaStreamMultiwayConfigAudio)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaStreamMultiwayConfigAudio;
  v2 = [(VCMediaStreamMultiwayConfig *)&v4 init];
  if (v2)
  {
    v2->_v2CodecConfigurations = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)addV2CodecConfiguration:(id)configuration
{
  if (configuration)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_v2CodecConfigurations, "setObject:forKeyedSubscript:", configuration, [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(configuration, "codecType")}]);
    v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [configuration codecType]);
    -[VCMediaStreamMultiwayConfig addRxPayloadType:networkPayload:](self, "addRxPayloadType:networkPayload:", v5, [configuration networkPayload]);
    networkPayload = [configuration networkPayload];

    [(VCMediaStreamMultiwayConfig *)self addTxPayloadType:v5 networkPayload:networkPayload];
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaStreamMultiwayConfigAudio;
  [(VCMediaStreamMultiwayConfig *)&v3 dealloc];
}

@end