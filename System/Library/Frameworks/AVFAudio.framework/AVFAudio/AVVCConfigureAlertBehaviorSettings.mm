@interface AVVCConfigureAlertBehaviorSettings
- (AVVCConfigureAlertBehaviorSettings)initWithStreamID:(unint64_t)a3;
@end

@implementation AVVCConfigureAlertBehaviorSettings

- (AVVCConfigureAlertBehaviorSettings)initWithStreamID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = AVVCConfigureAlertBehaviorSettings;
  result = [(AVVCConfigureAlertBehaviorSettings *)&v5 init];
  if (result)
  {
    result->_streamID = a3;
    result->_startAlert = -1;
    result->_stopAlert = -1;
    result->_stopOnErrorAlert = -1;
  }

  return result;
}

@end