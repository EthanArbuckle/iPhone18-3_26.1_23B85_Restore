@interface CHHapticDynamicParameter
- (CHHapticDynamicParameter)initWithParameterID:(CHHapticDynamicParameterID)parameterID value:(float)value relativeTime:(NSTimeInterval)time;
@end

@implementation CHHapticDynamicParameter

- (CHHapticDynamicParameter)initWithParameterID:(CHHapticDynamicParameterID)parameterID value:(float)value relativeTime:(NSTimeInterval)time
{
  v9 = parameterID;
  v13.receiver = self;
  v13.super_class = CHHapticDynamicParameter;
  v10 = [(CHHapticDynamicParameter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_param, parameterID);
    v11->_value = value;
    v11->_time = time;
  }

  return v11;
}

@end