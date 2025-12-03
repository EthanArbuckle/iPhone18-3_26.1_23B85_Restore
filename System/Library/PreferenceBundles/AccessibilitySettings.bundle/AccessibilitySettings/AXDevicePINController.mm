@interface AXDevicePINController
- (BOOL)_deviceHasBiometrics;
- (id)stringsTable;
- (int)passcodeLength;
- (void)setPIN:(id)n;
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
    _deviceHasBiometrics = [(AXDevicePINController *)self _deviceHasBiometrics];
  }

  else
  {
    _deviceHasBiometrics = v8 == 1;
  }

  if (_deviceHasBiometrics)
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
  stringsTable = [(AXDevicePINController *)&v5 stringsTable];

  return stringsTable;
}

- (void)setPIN:(id)n
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end