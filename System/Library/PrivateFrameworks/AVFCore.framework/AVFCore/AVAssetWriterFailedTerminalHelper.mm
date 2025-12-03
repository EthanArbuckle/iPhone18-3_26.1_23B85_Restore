@interface AVAssetWriterFailedTerminalHelper
- (AVAssetWriterFailedTerminalHelper)initWithConfigurationState:(id)state terminalError:(id)error;
- (void)dealloc;
@end

@implementation AVAssetWriterFailedTerminalHelper

- (AVAssetWriterFailedTerminalHelper)initWithConfigurationState:(id)state terminalError:(id)error
{
  v15.receiver = self;
  v15.super_class = AVAssetWriterFailedTerminalHelper;
  v6 = [(AVAssetWriterTerminalHelper *)&v15 initWithConfigurationState:state];
  v12 = v6;
  if (!error)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v6 userInfo:{a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "terminalError != nil"), 0}];
    objc_exception_throw(v14);
  }

  if (v6)
  {
    v6->_terminalError = [error copyWithZone:{-[AVAssetWriterFailedTerminalHelper zone](v6, "zone")}];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterFailedTerminalHelper;
  [(AVAssetWriterHelper *)&v3 dealloc];
}

@end