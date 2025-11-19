@interface VCMediaStreamSendGroupConfig
- (void)dealloc;
@end

@implementation VCMediaStreamSendGroupConfig

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaStreamSendGroupConfig;
  [(VCMediaStreamGroupConfig *)&v3 dealloc];
}

@end