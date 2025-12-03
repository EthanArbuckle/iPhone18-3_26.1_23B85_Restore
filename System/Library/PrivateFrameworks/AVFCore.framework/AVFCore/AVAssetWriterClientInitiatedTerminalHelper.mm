@interface AVAssetWriterClientInitiatedTerminalHelper
- (AVAssetWriterClientInitiatedTerminalHelper)initWithConfigurationState:(id)state terminalStatus:(int64_t)status;
@end

@implementation AVAssetWriterClientInitiatedTerminalHelper

- (AVAssetWriterClientInitiatedTerminalHelper)initWithConfigurationState:(id)state terminalStatus:(int64_t)status
{
  v15.receiver = self;
  v15.super_class = AVAssetWriterClientInitiatedTerminalHelper;
  result = [(AVAssetWriterTerminalHelper *)&v15 initWithConfigurationState:state];
  if (status != 2 && status != 4)
  {
    v7 = result;
    v8 = result;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "(terminalStatus == AVAssetWriterStatusCompleted) || (terminalStatus == AVAssetWriterStatusCancelled)"), 0}];
    objc_exception_throw(v14);
  }

  if (result)
  {
    result->_terminalStatus = status;
  }

  return result;
}

@end