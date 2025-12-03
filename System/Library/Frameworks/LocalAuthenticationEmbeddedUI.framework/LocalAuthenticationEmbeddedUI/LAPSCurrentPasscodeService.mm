@interface LAPSCurrentPasscodeService
- (BOOL)canChangePasscodeWithError:(id *)error;
- (BOOL)hasPasscode;
- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence;
- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence options:(id)options;
- (id)passcodeType;
- (int64_t)backoffTimeout;
- (int64_t)failedPasscodeAttempts;
- (void)_reportPasscodeChangedTo:(id)to;
- (void)verifyPasscode:(id)passcode completion:(id)completion;
@end

@implementation LAPSCurrentPasscodeService

- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v5 = objc_alloc_init(LAPSCurrentPasscodeServiceOptions);
  v6 = [(LAPSCurrentPasscodeService *)self initWithPersistence:persistenceCopy options:v5];

  return v6;
}

- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence options:(id)options
{
  persistenceCopy = persistence;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = LAPSCurrentPasscodeService;
  v9 = [(LAPSCurrentPasscodeService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistence, persistence);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

- (BOOL)hasPasscode
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  hasPasscode = [persistence hasPasscode];

  return hasPasscode;
}

- (int64_t)backoffTimeout
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  backoffTimeout = [persistence backoffTimeout];
  v4 = backoffTimeout;
  if (!backoffTimeout)
  {
    backoffTimeout = &unk_284B87678;
  }

  integerValue = [backoffTimeout integerValue];

  return integerValue;
}

- (id)passcodeType
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  passcodeType = [persistence passcodeType];

  return passcodeType;
}

- (int64_t)failedPasscodeAttempts
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  failedPasscodeAttempts = [persistence failedPasscodeAttempts];
  v4 = failedPasscodeAttempts;
  if (!failedPasscodeAttempts)
  {
    failedPasscodeAttempts = &unk_284B87678;
  }

  integerValue = [failedPasscodeAttempts integerValue];

  return integerValue;
}

- (void)verifyPasscode:(id)passcode completion:(id)completion
{
  completionCopy = completion;
  passcodeCopy = passcode;
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  v8 = [persistence verifyPasscode:passcodeCopy];

  if (v8)
  {
    if ([(LAPSCurrentPasscodeService *)self backoffTimeout]< 1)
    {
      if ([LAPSErrorBuilder checkError:v8 hasCode:4])
      {
        [LAPSErrorBuilder invalidPasscodeErrorWithFailedAttemptsCount:[(LAPSCurrentPasscodeService *)self failedPasscodeAttempts]];
      }

      else
      {
        [LAPSErrorBuilder genericErrorWithUnderlyingError:v8];
      }
      v9 = ;
    }

    else
    {
      v9 = [LAPSErrorBuilder invalidPasscodeErrorWithFailedAttemptsCount:[(LAPSCurrentPasscodeService *)self failedPasscodeAttempts] backoffTimeout:[(LAPSCurrentPasscodeService *)self backoffTimeout]];
    }

    v10 = v9;
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)canChangePasscodeWithError:(id *)error
{
  canChangePasscode = [(LAPSPasscodePersistence *)self->_persistence canChangePasscode];
  v5 = canChangePasscode;
  if (error && (canChangePasscode & 1) == 0)
  {
    *error = [LAPSErrorBuilder genericErrorWithDebugDescription:@"Passcode change is not allowed"];
  }

  return v5;
}

- (void)_reportPasscodeChangedTo:(id)to
{
  toCopy = to;
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "CDP update will start", v7, 2u);
  }

  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  [persistence reportPasscodeDidChangeTo:toCopy completion:&__block_literal_global_1];
}

void __55__LAPSCurrentPasscodeService__reportPasscodeChangedTo___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = LACLogPasscodeService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_238BCD000, v3, OS_LOG_TYPE_DEFAULT, "CDP update did finish (error: %@)", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)changePasscode:(uint64_t)a1 to:(NSObject *)a2 enableRecovery:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end