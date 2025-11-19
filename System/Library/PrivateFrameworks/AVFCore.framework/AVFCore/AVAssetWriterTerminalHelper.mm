@interface AVAssetWriterTerminalHelper
- (AVAssetWriterTerminalHelper)initWithConfigurationState:(id)a3;
@end

@implementation AVAssetWriterTerminalHelper

- (AVAssetWriterTerminalHelper)initWithConfigurationState:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVAssetWriterTerminalHelper;
  v4 = [(AVAssetWriterHelper *)&v7 initWithConfigurationState:a3];
  v5 = objc_opt_class();
  AVRequireConcreteObject(v4, a2, v5);
  return v4;
}

@end