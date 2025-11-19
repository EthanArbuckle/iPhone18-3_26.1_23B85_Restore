@interface LAPSFetchOldPasscodeResult
- (LAPSFetchOldPasscodeResult)initWithPasscode:(id)a3;
- (LAPSFetchOldPasscodeResult)initWithRawPasscode:(id)a3;
@end

@implementation LAPSFetchOldPasscodeResult

- (LAPSFetchOldPasscodeResult)initWithPasscode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPSFetchOldPasscodeResult;
  v6 = [(LAPSFetchOldPasscodeResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passcode, a3);
  }

  return v7;
}

- (LAPSFetchOldPasscodeResult)initWithRawPasscode:(id)a3
{
  v4 = a3;
  v5 = [[LAPSPasscode alloc] initWithPasscode:v4];

  v6 = [(LAPSFetchOldPasscodeResult *)self initWithPasscode:v5];
  return v6;
}

@end