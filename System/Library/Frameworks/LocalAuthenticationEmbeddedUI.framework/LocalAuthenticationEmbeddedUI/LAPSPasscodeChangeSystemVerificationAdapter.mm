@interface LAPSPasscodeChangeSystemVerificationAdapter
- (LAPSPasscodeChangeSystemVerificationAdapter)initWithPersistence:(id)persistence;
- (id)oldPasscodeRequest;
@end

@implementation LAPSPasscodeChangeSystemVerificationAdapter

- (LAPSPasscodeChangeSystemVerificationAdapter)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangeSystemVerificationAdapter;
  v5 = [(LAPSPasscodeChangeSystemVerificationAdapter *)&v9 init];
  if (v5)
  {
    v6 = [[LAPSCurrentPasscodeService alloc] initWithPersistence:persistenceCopy];
    currentPasscodeService = v5->_currentPasscodeService;
    v5->_currentPasscodeService = v6;
  }

  return v5;
}

- (id)oldPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchOldPasscodeRequest);
  [(LAPSFetchOldPasscodeRequest *)v3 setFailedAttempts:[(LAPSCurrentPasscodeService *)self->_currentPasscodeService failedPasscodeAttempts]];
  passcodeType = [(LAPSCurrentPasscodeService *)self->_currentPasscodeService passcodeType];
  [(LAPSFetchOldPasscodeRequest *)v3 setPasscodeType:passcodeType];

  [(LAPSFetchOldPasscodeRequest *)v3 setBackoffTimeout:[(LAPSCurrentPasscodeService *)self->_currentPasscodeService backoffTimeout]];

  return v3;
}

@end