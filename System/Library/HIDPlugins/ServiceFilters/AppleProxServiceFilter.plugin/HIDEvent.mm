@interface HIDEvent
+ (id)proximityEvent:(unint64_t)a3 mask:(unsigned int)a4 probability:(float)a5 options:(unsigned int)a6;
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

+ (id)proximityEvent:(unint64_t)a3 mask:(unsigned int)a4 probability:(float)a5 options:(unsigned int)a6
{
  ProximtyProbabilityEvent = IOHIDEventCreateProximtyProbabilityEvent();

  return ProximtyProbabilityEvent;
}

@end