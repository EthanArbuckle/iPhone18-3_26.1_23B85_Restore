@interface AVAssetWriterTerminalHelper
- (AVAssetWriterTerminalHelper)initWithConfigurationState:(id)state;
@end

@implementation AVAssetWriterTerminalHelper

- (AVAssetWriterTerminalHelper)initWithConfigurationState:(id)state
{
  v7.receiver = self;
  v7.super_class = AVAssetWriterTerminalHelper;
  v4 = [(AVAssetWriterHelper *)&v7 initWithConfigurationState:state];
  v5 = objc_opt_class();
  AVRequireConcreteObject(v4, a2, v5);
  return v4;
}

@end