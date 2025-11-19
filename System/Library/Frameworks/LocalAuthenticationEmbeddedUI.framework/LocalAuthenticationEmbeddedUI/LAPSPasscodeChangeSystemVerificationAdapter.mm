@interface LAPSPasscodeChangeSystemVerificationAdapter
- (LAPSPasscodeChangeSystemVerificationAdapter)initWithPersistence:(id)a3;
- (id)oldPasscodeRequest;
@end

@implementation LAPSPasscodeChangeSystemVerificationAdapter

- (LAPSPasscodeChangeSystemVerificationAdapter)initWithPersistence:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangeSystemVerificationAdapter;
  v5 = [(LAPSPasscodeChangeSystemVerificationAdapter *)&v9 init];
  if (v5)
  {
    v6 = [[LAPSCurrentPasscodeService alloc] initWithPersistence:v4];
    currentPasscodeService = v5->_currentPasscodeService;
    v5->_currentPasscodeService = v6;
  }

  return v5;
}

- (id)oldPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchOldPasscodeRequest);
  [(LAPSFetchOldPasscodeRequest *)v3 setFailedAttempts:[(LAPSCurrentPasscodeService *)self->_currentPasscodeService failedPasscodeAttempts]];
  v4 = [(LAPSCurrentPasscodeService *)self->_currentPasscodeService passcodeType];
  [(LAPSFetchOldPasscodeRequest *)v3 setPasscodeType:v4];

  [(LAPSFetchOldPasscodeRequest *)v3 setBackoffTimeout:[(LAPSCurrentPasscodeService *)self->_currentPasscodeService backoffTimeout]];

  return v3;
}

@end