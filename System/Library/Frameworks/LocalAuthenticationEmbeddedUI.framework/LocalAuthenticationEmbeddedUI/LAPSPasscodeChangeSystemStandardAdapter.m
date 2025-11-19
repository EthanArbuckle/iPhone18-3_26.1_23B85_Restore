@interface LAPSPasscodeChangeSystemStandardAdapter
- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)a3;
- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)a3 options:(id)a4;
- (id)newPasscodeRequest;
- (id)oldPasscodeRequest;
- (void)changePasscode:(id)a3 to:(id)a4 completion:(id)a5;
@end

@implementation LAPSPasscodeChangeSystemStandardAdapter

- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LAPSPasscodeChangeSystemOptions);
  v6 = [(LAPSPasscodeChangeSystemStandardAdapter *)self initWithPersistence:v4 options:v5];

  return v6;
}

- (LAPSPasscodeChangeSystemStandardAdapter)initWithPersistence:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = LAPSPasscodeChangeSystemStandardAdapter;
  v8 = [(LAPSPasscodeChangeSystemStandardAdapter *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_options, a4);
    v10 = [LAPSCurrentPasscodeService alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__LAPSPasscodeChangeSystemStandardAdapter_initWithPersistence_options___block_invoke;
    v19[3] = &unk_278A65430;
    v20 = v7;
    v11 = __71__LAPSPasscodeChangeSystemStandardAdapter_initWithPersistence_options___block_invoke(v19);
    v12 = [(LAPSCurrentPasscodeService *)v10 initWithPersistence:v6 options:v11];
    currentPasscodeService = v9->_currentPasscodeService;
    v9->_currentPasscodeService = v12;

    v14 = [[LAPSNewPasscodeService alloc] initWithPersistence:v6];
    newPasscodeService = v9->_newPasscodeService;
    v9->_newPasscodeService = v14;

    v16 = [[LAPSRecoveryPasscodeService alloc] initWithPersistence:v6];
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
  v4 = [(LAPSCurrentPasscodeService *)self->_currentPasscodeService passcodeType];
  [(LAPSFetchOldPasscodeRequest *)v3 setPasscodeType:v4];

  [(LAPSFetchOldPasscodeRequest *)v3 setBackoffTimeout:[(LAPSCurrentPasscodeService *)self->_currentPasscodeService backoffTimeout]];

  return v3;
}

- (id)newPasscodeRequest
{
  v3 = objc_alloc_init(LAPSFetchNewPasscodeRequest);
  v4 = [(LAPSNewPasscodeService *)self->_newPasscodeService allowedPasscodeTypes];
  [(LAPSFetchNewPasscodeRequest *)v3 setAllowedPasscodeTypes:v4];

  v5 = [(LAPSNewPasscodeService *)self->_newPasscodeService passcodeType];
  [(LAPSFetchNewPasscodeRequest *)v3 setPasscodeType:v5];

  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeSet:[(LAPSPasscodeChangeSystemStandardAdapter *)self hasPasscode]];
  if ([(LAPSRecoveryPasscodeService *)self->_recoveryPasscodeService isPasscodeRecoverySupported])
  {
    v6 = [(LAPSPasscodeChangeSystemStandardAdapter *)self hasPasscode];
  }

  else
  {
    v6 = 0;
  }

  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoverySupported:v6];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryRestricted:[(LAPSRecoveryPasscodeService *)self->_recoveryPasscodeService isPasscodeRecoveryRestricted]];
  [(LAPSFetchNewPasscodeRequest *)v3 setIsPasscodeRecoveryEnabled:[(LAPSRecoveryPasscodeService *)self->_recoveryPasscodeService isPasscodeRecoveryEnabled]];
  return v3;
}

- (void)changePasscode:(id)a3 to:(id)a4 completion:(id)a5
{
  currentPasscodeService = self->_currentPasscodeService;
  v8 = a5;
  v9 = a4;
  v12 = [a3 passcode];
  v10 = [v9 passcode];
  v11 = [v9 isPasscodeRecoveryEnabled];

  [(LAPSCurrentPasscodeService *)currentPasscodeService changePasscode:v12 to:v10 enableRecovery:v11 completion:v8];
}

@end