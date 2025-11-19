@interface VCVideoStreamSendGroupConfig
- (void)dealloc;
@end

@implementation VCVideoStreamSendGroupConfig

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCVideoStreamSendGroupConfig;
  [(VCMediaStreamSendGroupConfig *)&v3 dealloc];
}

@end