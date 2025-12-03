@interface LAPasscodeHelperPasscodeStateManagedSettings
- (BOOL)isPasscodeSet;
- (int64_t)passcodeType;
@end

@implementation LAPasscodeHelperPasscodeStateManagedSettings

- (BOOL)isPasscodeSet
{
  _managedConfiguration = [(LAPasscodeHelperPasscodeStateManagedSettings *)self _managedConfiguration];
  isPasscodeSet = [_managedConfiguration isPasscodeSet];

  return isPasscodeSet;
}

- (int64_t)passcodeType
{
  _managedConfiguration = [(LAPasscodeHelperPasscodeStateManagedSettings *)self _managedConfiguration];
  passcodeType = [_managedConfiguration passcodeType];

  return passcodeType;
}

@end