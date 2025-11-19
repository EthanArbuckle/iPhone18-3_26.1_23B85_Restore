@interface IOHIDManagerDeviceRemoved
@end

@implementation IOHIDManagerDeviceRemoved

uint64_t ____IOHIDManagerDeviceRemoved_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    result = IOHIDDeviceGetRegistryEntryID(a2);
    if (*(v3 + 40) == result)
    {
      *(*(*(v3 + 32) + 8) + 24) = a2;
    }
  }

  return result;
}

@end