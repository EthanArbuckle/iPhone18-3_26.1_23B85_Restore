@interface BKSHIDEventClearRemoteTimestamp
@end

@implementation BKSHIDEventClearRemoteTimestamp

uint64_t ___BKSHIDEventClearRemoteTimestamp_block_invoke(uint64_t a1, uint64_t a2)
{
  Type = IOHIDEventGetType();
  IntegerValue = IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  if (Type == 1)
  {
    v7 = IntegerValue == 65308 || IntegerValue == 65280;
    if (v7 && result == 258)
    {
      v8 = *(a1 + 32);

      return [v8 addObject:a2];
    }
  }

  return result;
}

@end