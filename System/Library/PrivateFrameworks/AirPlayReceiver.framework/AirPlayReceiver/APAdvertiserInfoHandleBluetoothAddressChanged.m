@interface APAdvertiserInfoHandleBluetoothAddressChanged
@end

@implementation APAdvertiserInfoHandleBluetoothAddressChanged

void ___APAdvertiserInfoHandleBluetoothAddressChanged_block_invoke(uint64_t a1, uint64_t a2)
{
  _APAdvertiserUpdateNIRangingSession(*(a1 + 32), a2);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

@end