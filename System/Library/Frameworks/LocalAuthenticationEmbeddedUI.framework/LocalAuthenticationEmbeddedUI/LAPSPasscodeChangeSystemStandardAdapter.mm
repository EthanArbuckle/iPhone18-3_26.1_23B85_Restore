@interface LAPSPasscodeChangeSystemStandardAdapter
- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)persistence;
- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)persistence options:(id)options;
- (id)newPasscodeRequest;
- (id)oldPasscodeRequest;
- (void)changePasscode:(id)passcode to:(id)to completion:(id)completion;
@end

@implementation LAPSPasscodeChangeSystemStandardAdapter

- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v5 = objc_alloc_init(LAPSPasscodeChangeSystemOptions);
  v6 = [(LAPSPasscodeChangeSystemStandardAdapter *)self initWithPersistence:persistenceCopy options:v5];

  return v6;
}

- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)persistence options:(id)options
{
  persistenceCopy = persistence;
  optionsCopy = options;
  v21.receiver = self;
  v21.super_class = LAPSPasscodeChangeSystemStandardAdapter;
  v8 = [(LAPSPasscodeChangeSystemStandardAdapter *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_options, options);
    v10 = [LAPSCurrentPasscodeService alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__LAPSPasscodeChangeSystemStandardAdapter_initWithPersistence_options___block_invoke;
    v19[3] = &unk_278A65430;
    v20 = optionsCopy;
    v11 = __71__LAPSPasscodeChangeSystemStandardAdapter_initWithPersistence_options___block_invoke(v19);
    v12 = [(LAPSCurrentPasscodeService *)v10 initWithPersistence:persistenceCopy options:v11];
    currentPasscodeService = v9->_currentPasscodeService;
    v9->_currentPasscodeService = v12;

    v14 = [[LAPSNewPasscodeService alloc] initWithPersistence:persistenceCopy];
    newPasscodeService = v9->_newPasscodeService;
    v9->_newPasscodeService = v14;

    v16 = [[LAPSRecoveryPasscodeService alloc] initWithPersistence:persistenceCopy];
    recoveryPasscodeService = v9->_recoveryPasscodeService;
    v9->_recoveryPasscodeService = v16;
  }

  return v9;
}

LAPSCurrentPasscodeServiceOptions *__71__LAPSPasscodeChangeSystemStandardAdapter_initWithPersistence_options___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSCurrentPasscodeServiceOptions);
  -[LAPSCurrentPasscodeServiceOptions setSkipSuccessNotification:](v2, "setSkipSuccessNotification:", [*(a1 + 32) skipSuccessNotification]);

  return v2;
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

- (id)newPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchNewPasscodeRequest);
  allowedPasscodeTypes = [(LAPSNewPasscodeService *)self->_newPasscodeService allowedPasscodeTypes];
  [(LAPSFetchNewPasscodeRequest *)v3 setAllowedPasscodeTypes:allowedPasscodeTypes];

  passcodeType = [(LAPSNewPasscodeService *)self->_newPasscodeService passcodeType];
  [(LAPSFetchNewPasscodeRequest *)v3 setPasscodeType:passcodeType];

  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeSet:[(LAPSPasscodeChangeSystemStandardAdapter *)self hasPasscode]];
  if ([(LAPSRecoveryPasscodeService *)self->_recoveryPasscodeService isPasscodeRecoverySupported])
  {
    hasPasscode = [(LAPSPasscodeChangeSystemStandardAdapter *)self hasPasscode];
  }

  else
  {
    hasPasscode = 0;
  }

  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoverySupported:hasPasscode];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryRestricted:[(LAPSRecoveryPasscodeService *)self->_recoveryPasscodeService isPasscodeRecoveryRestricted]];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryEnabled:[(LAPSRecoveryPasscodeService *)self->_recoveryPasscodeService isPasscodeRecoveryEnabled]];
  return v3;
}

- (void)changePasscode:(id)passcode to:(id)to completion:(id)completion
{
  currentPasscodeService = self->_currentPasscodeService;
  completionCopy = completion;
  toCopy = to;
  passcode = [passcode passcode];
  passcode2 = [toCopy passcode];
  isPasscodeRecoveryEnabled = [toCopy isPasscodeRecoveryEnabled];

  [(LAPSCurrentPasscodeService *)currentPasscodeService changePasscode:passcode to:passcode2 enableRecovery:isPasscodeRecoveryEnabled completion:completionCopy];
}

@end