@interface HIDEvent
+ (id)proximityEvent:(unint64_t)event mask:(unsigned int)mask probability:(float)probability options:(unsigned int)options;
- (float)probability;
@end

@implementation HIDEvent

- (float)probability
{
  IntegerValue = IOHIDEventGetIntegerValue();
  result = vcvtd_n_f64_u32(IntegerValue, 0x10uLL);
  if (IntegerValue == 0x80000000)
  {
    return NAN;
  }

  return result;
}

+ (id)proximityEvent:(unint64_t)event mask:(unsigned int)mask probability:(float)probability options:(unsigned int)options
{
  ProximtyProbabilityEvent = IOHIDEventCreateProximtyProbabilityEvent();

  return ProximtyProbabilityEvent;
}

@end