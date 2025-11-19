@interface AVAssetWriterClientInitiatedTerminalHelper
- (AVAssetWriterClientInitiatedTerminalHelper)initWithConfigurationState:(id)a3 terminalStatus:(int64_t)a4;
@end

@implementation AVAssetWriterClientInitiatedTerminalHelper

- (AVAssetWriterClientInitiatedTerminalHelper)initWithConfigurationState:(id)a3 terminalStatus:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = AVAssetWriterClientInitiatedTerminalHelper;
  result = [(AVAssetWriterTerminalHelper *)&v15 initWithConfigurationState:a3];
  if (a4 != 2 && a4 != 4)
  {
    v7 = result;
    v8 = result;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "(terminalStatus == AVAssetWriterStatusCompleted) || (terminalStatus == AVAssetWriterStatusCancelled)"), 0}];
    objc_exception_throw(v14);
  }

  if (result)
  {
    result->_terminalStatus = a4;
  }

  return result;
}

@end