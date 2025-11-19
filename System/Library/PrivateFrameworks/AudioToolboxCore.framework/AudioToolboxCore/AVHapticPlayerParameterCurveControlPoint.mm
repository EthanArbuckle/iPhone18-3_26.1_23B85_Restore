@interface AVHapticPlayerParameterCurveControlPoint
- (AVHapticPlayerParameterCurveControlPoint)initWithCoder:(id)a3;
- (AVHapticPlayerParameterCurveControlPoint)initWithTime:(double)a3 value:(float)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVHapticPlayerParameterCurveControlPoint

- (AVHapticPlayerParameterCurveControlPoint)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"time"];
  self->_time = v5;
  [v4 decodeFloatForKey:@"value"];
  self->_value = v6;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeDouble:@"time" forKey:self->_time];
  *&v4 = self->_value;
  [v5 encodeFloat:@"value" forKey:v4];
}

- (AVHapticPlayerParameterCurveControlPoint)initWithTime:(double)a3 value:(float)a4
{
  v10.receiver = self;
  v10.super_class = AVHapticPlayerParameterCurveControlPoint;
  v6 = [(AVHapticPlayerParameterCurveControlPoint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(AVHapticPlayerParameterCurveControlPoint *)v6 setTime:a3];
    *&v8 = a4;
    [(AVHapticPlayerParameterCurveControlPoint *)v7 setValue:v8];
  }

  return v7;
}

@end