@interface AXDevicePINController
- (BOOL)_deviceHasBiometrics;
- (id)stringsTable;
- (int)passcodeLength;
- (void)setPIN:(id)a3;
@end

@implementation AXDevicePINController

- (BOOL)_deviceHasBiometrics
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return AXDeviceHasPearl();
}

- (int)passcodeLength
{
  v8 = 0;
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 unlockScreenTypeWithOutSimplePasscodeType:&v8];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v8 == -1;
  }

  if (v5)
  {
    v6 = [(AXDevicePINController *)self _deviceHasBiometrics];
  }

  else
  {
    v6 = v8 == 1;
  }

  if (v6)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

- (id)stringsTable
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v5.receiver = self;
  v5.super_class = AXDevicePINController;
  v3 = [(AXDevicePINController *)&v5 stringsTable];

  return v3;
}

- (void)setPIN:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end