@interface LAPSFetchNewPasscodeResult
- (LAPSFetchNewPasscodeResult)initWithPasscode:(id)passcode isPasscodeRecoveryEnabled:(BOOL)enabled;
- (LAPSFetchNewPasscodeResult)initWithRawPasscode:(id)passcode;
@end

@implementation LAPSFetchNewPasscodeResult

- (LAPSFetchNewPasscodeResult)initWithPasscode:(id)passcode isPasscodeRecoveryEnabled:(BOOL)enabled
{
  passcodeCopy = passcode;
  v11.receiver = self;
  v11.super_class = LAPSFetchNewPasscodeResult;
  v8 = [(LAPSFetchNewPasscodeResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_passcode, passcode);
    v9->_isPasscodeRecoveryEnabled = enabled;
  }

  return v9;
}

- (LAPSFetchNewPasscodeResult)initWithRawPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [[LAPSPasscode alloc] initWithPasscode:passcodeCopy];

  v6 = [(LAPSFetchNewPasscodeResult *)self initWithPasscode:v5 isPasscodeRecoveryEnabled:0];
  return v6;
}

@end