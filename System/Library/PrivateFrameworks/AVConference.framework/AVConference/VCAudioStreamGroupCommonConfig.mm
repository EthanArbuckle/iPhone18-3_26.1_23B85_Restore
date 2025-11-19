@interface VCAudioStreamGroupCommonConfig
- (void)dealloc;
@end

@implementation VCAudioStreamGroupCommonConfig

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioStreamGroupCommonConfig;
  [(VCAudioStreamGroupCommonConfig *)&v3 dealloc];
}

@end