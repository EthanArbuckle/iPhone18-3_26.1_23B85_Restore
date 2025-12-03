@interface _GCHapticDynamicParameter
- (_GCHapticDynamicParameter)initWithType:(unsigned int)type value:(double)value;
@end

@implementation _GCHapticDynamicParameter

- (_GCHapticDynamicParameter)initWithType:(unsigned int)type value:(double)value
{
  v7.receiver = self;
  v7.super_class = _GCHapticDynamicParameter;
  result = [(_GCHapticDynamicParameter *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_value = value;
  }

  return result;
}

@end