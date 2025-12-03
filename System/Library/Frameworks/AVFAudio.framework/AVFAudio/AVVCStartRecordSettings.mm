@interface AVVCStartRecordSettings
- (AVVCStartRecordSettings)initWithStreamID:(unint64_t)d atStartHostTime:(unint64_t)time;
@end

@implementation AVVCStartRecordSettings

- (AVVCStartRecordSettings)initWithStreamID:(unint64_t)d atStartHostTime:(unint64_t)time
{
  v7.receiver = self;
  v7.super_class = AVVCStartRecordSettings;
  result = [(AVVCStartRecordSettings *)&v7 init];
  if (result)
  {
    result->_streamID = d;
    result->_startHostTime = time;
    result->_startAlert = -1;
    result->_stopAlert = -1;
    result->_stopOnErrorAlert = -1;
    result->_skipAlert = 0;
    result->_startAnchorPoint = 0;
  }

  return result;
}

@end