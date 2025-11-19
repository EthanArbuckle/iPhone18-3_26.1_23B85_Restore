@interface LAPSPasscodeChangeSystemRecoveryAdapter
- (LAPSPasscodeChangeSystemRecoveryAdapter)initWithPersistence:(id)a3;
- (id)newPasscodeRequest;
- (id)oldPasscodeRequest;
- (void)changePasscode:(id)a3 to:(id)a4 completion:(id)a5;
@end

@implementation LAPSPasscodeChangeSystemRecoveryAdapter

- (LAPSPasscodeChangeSystemRecoveryAdapter)initWithPersistence:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LAPSPasscodeChangeSystemRecoveryAdapter;
  v5 = [(LAPSPasscodeChangeSystemRecoveryAdapter *)&v13 init];
  if (v5)
  {
    v6 = [[LAPSRecoveryPasscodeService alloc] initWithPersistence:v4];
    passcodeRecoveryService = v5->_passcodeRecoveryService;
    v5->_passcodeRecoveryService = v6;

    v8 = [[LAPSNewPasscodeService alloc] initWithPersistence:v4];
    newPasscodeService = v5->_newPasscodeService;
    v5->_newPasscodeService = v8;

    v10 = [[LAPSCurrentPasscodeService alloc] initWithPersistence:v4];
    currentPasscodeService = v5->_currentPasscodeService;
    v5->_currentPasscodeService = v10;
  }

  return v5;
}

- (id)oldPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchOldPasscodeRequest);
  [(LAPSFetchOldPasscodeRequest *)v3 setFailedAttempts:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService failedPasscodeAttempts]];
  v4 = [(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService passcodeType];
  [(LAPSFetchOldPasscodeRequest *)v3 setPasscodeType:v4];

  [(LAPSFetchOldPasscodeRequest *)v3 setBackoffTimeout:0];

  return v3;
}

- (id)newPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchNewPasscodeRequest);
  v4 = [(LAPSNewPasscodeService *)self->_newPasscodeService allowedPasscodeTypes];
  [(LAPSFetchNewPasscodeRequest *)v3 setAllowedPasscodeTypes:v4];

  v5 = [(LAPSNewPasscodeService *)self->_newPasscodeService passcodeType];
  [(LAPSFetchNewPasscodeRequest *)v3 setPasscodeType:v5];

  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeSet:1];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoverySupported:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService isPasscodeRecoverySupported]];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryRestricted:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService isPasscodeRecoveryRestricted]];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryEnabled:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService isPasscodeRecoveryEnabled]];
  return v3;
}

- (void)changePasscode:(id)a3 to:(id)a4 completion:(id)a5
{
  passcodeRecoveryService = self->_passcodeRecoveryService;
  v8 = a5;
  v9 = a4;
  v12 = [a3 passcode];
  v10 = [v9 passcode];
  v11 = [v9 isPasscodeRecoveryEnabled];

  [(LAPSRecoveryPasscodeService *)passcodeRecoveryService changePasscode:v12 to:v10 enableRecovery:v11 completion:v8];
}

@end