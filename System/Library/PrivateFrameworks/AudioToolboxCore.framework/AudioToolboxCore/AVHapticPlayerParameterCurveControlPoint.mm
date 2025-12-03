@interface AVHapticPlayerParameterCurveControlPoint
- (AVHapticPlayerParameterCurveControlPoint)initWithCoder:(id)coder;
- (AVHapticPlayerParameterCurveControlPoint)initWithTime:(double)time value:(float)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVHapticPlayerParameterCurveControlPoint

- (AVHapticPlayerParameterCurveControlPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"time"];
  self->_time = v5;
  [coderCopy decodeFloatForKey:@"value"];
  self->_value = v6;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"time" forKey:self->_time];
  *&v4 = self->_value;
  [coderCopy encodeFloat:@"value" forKey:v4];
}

- (AVHapticPlayerParameterCurveControlPoint)initWithTime:(double)time value:(float)value
{
  v10.receiver = self;
  v10.super_class = AVHapticPlayerParameterCurveControlPoint;
  v6 = [(AVHapticPlayerParameterCurveControlPoint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(AVHapticPlayerParameterCurveControlPoint *)v6 setTime:time];
    *&v8 = value;
    [(AVHapticPlayerParameterCurveControlPoint *)v7 setValue:v8];
  }

  return v7;
}

@end