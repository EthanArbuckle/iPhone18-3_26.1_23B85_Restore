@interface BKSWatchdogAssertionGetTypeID
@end

@implementation BKSWatchdogAssertionGetTypeID

uint64_t ___BKSWatchdogAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _BKSWatchdogAssertionGetTypeID_typeID = result;
  return result;
}

@end