@interface AVVCAlertInformation
- (AVVCAlertInformation)initWithAlertType:(int)a3 mode:(int64_t)a4 endTime:(unint64_t)a5;
@end

@implementation AVVCAlertInformation

- (AVVCAlertInformation)initWithAlertType:(int)a3 mode:(int64_t)a4 endTime:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = AVVCAlertInformation;
  result = [(AVVCAlertInformation *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_mode = a4;
    result->_alertEndTime = a5;
  }

  return result;
}

@end