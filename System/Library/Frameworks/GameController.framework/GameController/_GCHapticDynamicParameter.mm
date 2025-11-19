@interface _GCHapticDynamicParameter
- (_GCHapticDynamicParameter)initWithType:(unsigned int)a3 value:(double)a4;
@end

@implementation _GCHapticDynamicParameter

- (_GCHapticDynamicParameter)initWithType:(unsigned int)a3 value:(double)a4
{
  v7.receiver = self;
  v7.super_class = _GCHapticDynamicParameter;
  result = [(_GCHapticDynamicParameter *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_value = a4;
  }

  return result;
}

@end