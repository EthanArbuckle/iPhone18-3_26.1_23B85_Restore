@interface VLFDeviceInfo
+ (BOOL)isIslandDevice;
+ (BOOL)isNotchDevice;
@end

@implementation VLFDeviceInfo

+ (BOOL)isIslandDevice
{
  if (qword_10195EA10 != -1)
  {
    dispatch_once(&qword_10195EA10, &stru_10164CF20);
  }

  return byte_10195EA08;
}

+ (BOOL)isNotchDevice
{
  if (qword_10195EA00 != -1)
  {
    dispatch_once(&qword_10195EA00, &stru_10164CF00);
  }

  return byte_10195E9F8;
}

@end