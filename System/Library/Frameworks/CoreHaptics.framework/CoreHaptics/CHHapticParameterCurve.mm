@interface CHHapticParameterCurve
- (CHHapticParameterCurve)initWithParameterID:(CHHapticDynamicParameterID)parameterID controlPoints:(NSArray *)controlPoints relativeTime:(NSTimeInterval)relativeTime;
@end

@implementation CHHapticParameterCurve

- (CHHapticParameterCurve)initWithParameterID:(CHHapticDynamicParameterID)parameterID controlPoints:(NSArray *)controlPoints relativeTime:(NSTimeInterval)relativeTime
{
  v9 = parameterID;
  v10 = controlPoints;
  v16.receiver = self;
  v16.super_class = CHHapticParameterCurve;
  v11 = [(CHHapticParameterCurve *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_param, parameterID);
    v13 = [(NSArray *)v10 copy];
    v14 = v12->_controlPoints;
    v12->_controlPoints = v13;

    v12->_time = relativeTime;
  }

  return v12;
}

@end