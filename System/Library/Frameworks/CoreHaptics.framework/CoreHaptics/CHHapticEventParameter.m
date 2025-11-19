@interface CHHapticEventParameter
- (CHHapticEventParameter)initWithParameterID:(CHHapticEventParameterID)parameterID value:(float)value;
@end

@implementation CHHapticEventParameter

- (CHHapticEventParameter)initWithParameterID:(CHHapticEventParameterID)parameterID value:(float)value
{
  v7 = parameterID;
  v11.receiver = self;
  v11.super_class = CHHapticEventParameter;
  v8 = [(CHHapticEventParameter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_param, parameterID);
    v9->_value = value;
  }

  return v9;
}

@end