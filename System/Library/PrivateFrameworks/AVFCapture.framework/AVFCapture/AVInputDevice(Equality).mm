@interface AVInputDevice(Equality)
- (uint64_t)isEqualToInputDevice:()Equality;
@end

@implementation AVInputDevice(Equality)

- (uint64_t)isEqualToInputDevice:()Equality
{
  result = [objc_msgSend(a1 "deviceName")];
  if (result)
  {
    v6 = [a1 deviceType];
    if (v6 == [a3 deviceType] && (v7 = objc_msgSend(a1, "deviceSubType"), v7 == objc_msgSend(a3, "deviceSubType")))
    {
      v8 = [a1 supportsHighQualityContentCapture];
      return v8 ^ [a3 supportsHighQualityContentCapture] ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end