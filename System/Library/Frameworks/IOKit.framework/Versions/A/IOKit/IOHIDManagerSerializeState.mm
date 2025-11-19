@interface IOHIDManagerSerializeState
@end

@implementation IOHIDManagerSerializeState

void ____IOHIDManagerSerializeState_block_invoke(uint64_t a1, IOHIDDeviceRef device)
{
  entryID = 0;
  Service = IOHIDDeviceGetService(device);
  if (Service)
  {
    IORegistryEntryGetRegistryEntryID(Service, &entryID);
    _IOHIDArrayAppendSInt64(*(a1 + 32), entryID);
  }
}

@end