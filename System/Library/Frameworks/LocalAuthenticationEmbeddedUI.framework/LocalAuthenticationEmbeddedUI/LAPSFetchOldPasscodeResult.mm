@interface LAPSFetchOldPasscodeResult
- (LAPSFetchOldPasscodeResult)initWithPasscode:(id)passcode;
- (LAPSFetchOldPasscodeResult)initWithRawPasscode:(id)passcode;
@end

@implementation LAPSFetchOldPasscodeResult

- (LAPSFetchOldPasscodeResult)initWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v9.receiver = self;
  v9.super_class = LAPSFetchOldPasscodeResult;
  v6 = [(LAPSFetchOldPasscodeResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passcode, passcode);
  }

  return v7;
}

- (LAPSFetchOldPasscodeResult)initWithRawPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [[LAPSPasscode alloc] initWithPasscode:passcodeCopy];

  v6 = [(LAPSFetchOldPasscodeResult *)self initWithPasscode:v5];
  return v6;
}

@end