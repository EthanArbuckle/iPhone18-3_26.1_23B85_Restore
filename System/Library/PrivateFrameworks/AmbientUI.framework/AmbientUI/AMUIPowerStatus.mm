@interface AMUIPowerStatus
- (AMUIPowerStatus)init;
- (void)setPowerStatus:(unint64_t)a3;
@end

@implementation AMUIPowerStatus

- (AMUIPowerStatus)init
{
  v3.receiver = self;
  v3.super_class = AMUIPowerStatus;
  result = [(AMUIPowerStatus *)&v3 init];
  if (result)
  {
    result->_chargeState = 0;
    result->_powerStatus = 0;
    result->_powerPercent = 0.0;
  }

  return result;
}

- (void)setPowerStatus:(unint64_t)a3
{
  if (self->_powerStatus != a3)
  {
    self->_powerStatus = a3;
  }
}

@end