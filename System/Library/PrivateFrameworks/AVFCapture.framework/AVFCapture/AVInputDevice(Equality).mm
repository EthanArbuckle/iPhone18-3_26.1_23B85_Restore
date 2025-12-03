@interface AVInputDevice(Equality)
- (uint64_t)isEqualToInputDevice:()Equality;
@end

@implementation AVInputDevice(Equality)

- (uint64_t)isEqualToInputDevice:()Equality
{
  result = [objc_msgSend(self "deviceName")];
  if (result)
  {
    deviceType = [self deviceType];
    if (deviceType == [a3 deviceType] && (v7 = objc_msgSend(self, "deviceSubType"), v7 == objc_msgSend(a3, "deviceSubType")))
    {
      supportsHighQualityContentCapture = [self supportsHighQualityContentCapture];
      return supportsHighQualityContentCapture ^ [a3 supportsHighQualityContentCapture] ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end