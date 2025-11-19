@interface CMOdometryManagerInternal
- (CMOdometryManagerInternal)init;
@end

@implementation CMOdometryManagerInternal

- (CMOdometryManagerInternal)init
{
  v3.receiver = self;
  v3.super_class = CMOdometryManagerInternal;
  result = [(CMOdometryManagerInternal *)&v3 init];
  if (result)
  {
    result->_odometryHandler = 0;
    result->_odometryQueue = 0;
    result->_odometryDispatcher = 0;
    result->_odometryUpdateInterval = 0.1;
    result->_hasFirstSample = 0;
    result->_referenceFrame = 1;
  }

  return result;
}

@end