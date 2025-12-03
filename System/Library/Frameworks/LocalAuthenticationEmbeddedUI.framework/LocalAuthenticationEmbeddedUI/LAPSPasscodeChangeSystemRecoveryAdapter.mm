@interface LAPSPasscodeChangeSystemRecoveryAdapter
- (LAPSPasscodeChangeSystemRecoveryAdapter)initWithPersistence:(id)persistence;
- (id)newPasscodeRequest;
- (id)oldPasscodeRequest;
- (void)changePasscode:(id)passcode to:(id)to completion:(id)completion;
@end

@implementation LAPSPasscodeChangeSystemRecoveryAdapter

- (LAPSPasscodeChangeSystemRecoveryAdapter)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v13.receiver = self;
  v13.super_class = LAPSPasscodeChangeSystemRecoveryAdapter;
  v5 = [(LAPSPasscodeChangeSystemRecoveryAdapter *)&v13 init];
  if (v5)
  {
    v6 = [[LAPSRecoveryPasscodeService alloc] initWithPersistence:persistenceCopy];
    passcodeRecoveryService = v5->_passcodeRecoveryService;
    v5->_passcodeRecoveryService = v6;

    v8 = [[LAPSNewPasscodeService alloc] initWithPersistence:persistenceCopy];
    newPasscodeService = v5->_newPasscodeService;
    v5->_newPasscodeService = v8;

    v10 = [[LAPSCurrentPasscodeService alloc] initWithPersistence:persistenceCopy];
    currentPasscodeService = v5->_currentPasscodeService;
    v5->_currentPasscodeService = v10;
  }

  return v5;
}

- (id)oldPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchOldPasscodeRequest);
  [(LAPSFetchOldPasscodeRequest *)v3 setFailedAttempts:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService failedPasscodeAttempts]];
  passcodeType = [(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService passcodeType];
  [(LAPSFetchOldPasscodeRequest *)v3 setPasscodeType:passcodeType];

  [(LAPSFetchOldPasscodeRequest *)v3 setBackoffTimeout:0];

  return v3;
}

- (id)newPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchNewPasscodeRequest);
  allowedPasscodeTypes = [(LAPSNewPasscodeService *)self->_newPasscodeService allowedPasscodeTypes];
  [(LAPSFetchNewPasscodeRequest *)v3 setAllowedPasscodeTypes:allowedPasscodeTypes];

  passcodeType = [(LAPSNewPasscodeService *)self->_newPasscodeService passcodeType];
  [(LAPSFetchNewPasscodeRequest *)v3 setPasscodeType:passcodeType];

  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeSet:1];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoverySupported:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService isPasscodeRecoverySupported]];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryRestricted:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService isPasscodeRecoveryRestricted]];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryEnabled:[(LAPSRecoveryPasscodeService *)self->_passcodeRecoveryService isPasscodeRecoveryEnabled]];
  return v3;
}

- (void)changePasscode:(id)passcode to:(id)to completion:(id)completion
{
  passcodeRecoveryService = self->_passcodeRecoveryService;
  completionCopy = completion;
  toCopy = to;
  passcode = [passcode passcode];
  passcode2 = [toCopy passcode];
  isPasscodeRecoveryEnabled = [toCopy isPasscodeRecoveryEnabled];

  [(LAPSRecoveryPasscodeService *)passcodeRecoveryService changePasscode:passcode to:passcode2 enableRecovery:isPasscodeRecoveryEnabled completion:completionCopy];
}

@end