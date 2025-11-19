@interface AAUIDeviceInfo
+ (BOOL)deviceIsiPad;
@end

@implementation AAUIDeviceInfo

+ (BOOL)deviceIsiPad
{
  if (deviceIsiPad_onceToken != -1)
  {
    +[AAUIDeviceInfo deviceIsiPad];
  }

  return deviceIsiPad_result;
}

uint64_t __30__AAUIDeviceInfo_deviceIsiPad__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceIsiPad_result = result == 3;
  return result;
}

@end