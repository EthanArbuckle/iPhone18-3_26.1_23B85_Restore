@interface AVVCStartRecordSettings
- (AVVCStartRecordSettings)initWithStreamID:(unint64_t)a3 atStartHostTime:(unint64_t)a4;
@end

@implementation AVVCStartRecordSettings

- (AVVCStartRecordSettings)initWithStreamID:(unint64_t)a3 atStartHostTime:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = AVVCStartRecordSettings;
  result = [(AVVCStartRecordSettings *)&v7 init];
  if (result)
  {
    result->_streamID = a3;
    result->_startHostTime = a4;
    result->_startAlert = -1;
    result->_stopAlert = -1;
    result->_stopOnErrorAlert = -1;
    result->_skipAlert = 0;
    result->_startAnchorPoint = 0;
  }

  return result;
}

@end