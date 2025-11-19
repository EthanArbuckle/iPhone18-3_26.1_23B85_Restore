@interface STKDeviceInfo
+ (BOOL)hasANE;
@end

@implementation STKDeviceInfo

+ (BOOL)hasANE
{
  if (qword_1000B4B20[0] != -1)
  {
    sub_10007C2AC();
  }

  return byte_1000B4B18;
}

@end