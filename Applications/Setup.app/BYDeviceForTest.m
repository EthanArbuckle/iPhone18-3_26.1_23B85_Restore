@interface BYDeviceForTest
- (BYDeviceForTest)init;
@end

@implementation BYDeviceForTest

- (BYDeviceForTest)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BYDeviceForTest;
  location = [(BYDevice *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = MGGetSInt32Answer() == 1;
    *(location + 72) = v2;
    v5 = MGGetProductType();
    *(location + 73) = v5 == 3242623367 || v5 == 2311900306 || v5 == 502329937 || v5 == 2270970153 || v5 == 3402870384 || v5 == 896202454 || [location size] == 3 || objc_msgSend(location, "size") == 6 || objc_msgSend(location, "size") == 5 || objc_msgSend(location, "size") == 4;
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

@end