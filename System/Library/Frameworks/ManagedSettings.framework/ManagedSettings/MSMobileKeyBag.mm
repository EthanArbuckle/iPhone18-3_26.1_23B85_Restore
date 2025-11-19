@interface MSMobileKeyBag
+ (BOOL)isAfterFirstUnlock;
@end

@implementation MSMobileKeyBag

+ (BOOL)isAfterFirstUnlock
{
  if (byte_10007BB20)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = MKBDeviceUnlockedSinceBoot();
    if (v2 == 1)
    {
      byte_10007BB20 = 1;
    }

    else
    {
      LOBYTE(v2) = byte_10007BB20;
    }
  }

  return v2;
}

@end