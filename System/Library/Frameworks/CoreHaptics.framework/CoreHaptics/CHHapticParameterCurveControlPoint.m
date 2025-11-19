@interface CHHapticParameterCurveControlPoint
- (CHHapticParameterCurveControlPoint)initWithRelativeTime:(NSTimeInterval)time value:(float)value;
@end

@implementation CHHapticParameterCurveControlPoint

- (CHHapticParameterCurveControlPoint)initWithRelativeTime:(NSTimeInterval)time value:(float)value
{
  v7.receiver = self;
  v7.super_class = CHHapticParameterCurveControlPoint;
  result = [(CHHapticParameterCurveControlPoint *)&v7 init];
  if (result)
  {
    result->_time = time;
    result->_value = value;
  }

  return result;
}

@end