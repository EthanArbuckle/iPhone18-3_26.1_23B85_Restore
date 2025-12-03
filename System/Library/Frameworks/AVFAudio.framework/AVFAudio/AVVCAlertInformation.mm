@interface AVVCAlertInformation
- (AVVCAlertInformation)initWithAlertType:(int)type mode:(int64_t)mode endTime:(unint64_t)time;
@end

@implementation AVVCAlertInformation

- (AVVCAlertInformation)initWithAlertType:(int)type mode:(int64_t)mode endTime:(unint64_t)time
{
  v9.receiver = self;
  v9.super_class = AVVCAlertInformation;
  result = [(AVVCAlertInformation *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_mode = mode;
    result->_alertEndTime = time;
  }

  return result;
}

@end