@interface LAPasscodeHelperPasscodeStateManagedSettings
- (BOOL)isPasscodeSet;
- (int64_t)passcodeType;
@end

@implementation LAPasscodeHelperPasscodeStateManagedSettings

- (BOOL)isPasscodeSet
{
  v2 = [(LAPasscodeHelperPasscodeStateManagedSettings *)self _managedConfiguration];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (int64_t)passcodeType
{
  v2 = [(LAPasscodeHelperPasscodeStateManagedSettings *)self _managedConfiguration];
  v3 = [v2 passcodeType];

  return v3;
}

@end