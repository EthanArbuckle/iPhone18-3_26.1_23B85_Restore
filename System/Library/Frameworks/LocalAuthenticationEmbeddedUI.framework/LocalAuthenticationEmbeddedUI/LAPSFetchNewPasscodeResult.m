@interface LAPSFetchNewPasscodeResult
- (LAPSFetchNewPasscodeResult)initWithPasscode:(id)a3 isPasscodeRecoveryEnabled:(BOOL)a4;
- (LAPSFetchNewPasscodeResult)initWithRawPasscode:(id)a3;
@end

@implementation LAPSFetchNewPasscodeResult

- (LAPSFetchNewPasscodeResult)initWithPasscode:(id)a3 isPasscodeRecoveryEnabled:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = LAPSFetchNewPasscodeResult;
  v8 = [(LAPSFetchNewPasscodeResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_passcode, a3);
    v9->_isPasscodeRecoveryEnabled = a4;
  }

  return v9;
}

- (LAPSFetchNewPasscodeResult)initWithRawPasscode:(id)a3
{
  v4 = a3;
  v5 = [[LAPSPasscode alloc] initWithPasscode:v4];

  v6 = [(LAPSFetchNewPasscodeResult *)self initWithPasscode:v5 isPasscodeRecoveryEnabled:0];
  return v6;
}

@end