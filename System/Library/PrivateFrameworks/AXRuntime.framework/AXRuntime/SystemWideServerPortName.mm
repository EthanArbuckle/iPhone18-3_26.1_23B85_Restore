@interface SystemWideServerPortName
@end

@implementation SystemWideServerPortName

uint64_t ___SystemWideServerPortName_block_invoke()
{
  result = AXDeviceIsAudioAccessory();
  v1 = "com.apple.iphone.axserver-systemwide";
  if (result)
  {
    v1 = "com.apple.homepod.axserver-systemwide";
  }

  _SystemWideServerPortName___portName = v1;
  return result;
}

@end