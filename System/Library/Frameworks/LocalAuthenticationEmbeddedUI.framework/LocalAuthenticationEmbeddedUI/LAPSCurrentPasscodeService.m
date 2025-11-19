@interface LAPSCurrentPasscodeService
- (BOOL)canChangePasscodeWithError:(id *)a3;
- (BOOL)hasPasscode;
- (LAPSCurrentPasscodeService)initWithPersistence:(id)a3;
- (LAPSCurrentPasscodeService)initWithPersistence:(id)a3 options:(id)a4;
- (id)passcodeType;
- (int64_t)backoffTimeout;
- (int64_t)failedPasscodeAttempts;
- (void)_reportPasscodeChangedTo:(id)a3;
- (void)verifyPasscode:(id)a3 completion:(id)a4;
@end

@implementation LAPSCurrentPasscodeService

- (LAPSCurrentPasscodeService)initWithPersistence:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LAPSCurrentPasscodeServiceOptions);
  v6 = [(LAPSCurrentPasscodeService *)self initWithPersistence:v4 options:v5];

  return v6;
}

- (LAPSCurrentPasscodeService)initWithPersistence:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LAPSCurrentPasscodeService;
  v9 = [(LAPSCurrentPasscodeService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistence, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

- (BOOL)hasPasscode
{
  v2 = [(LAPSCurrentPasscodeService *)self persistence];
  v3 = [v2 hasPasscode];

  return v3;
}

- (int64_t)backoffTimeout
{
  v2 = [(LAPSCurrentPasscodeService *)self persistence];
  v3 = [v2 backoffTimeout];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_284B87678;
  }

  v5 = [v3 integerValue];

  return v5;
}

- (id)passcodeType
{
  v2 = [(LAPSCurrentPasscodeService *)self persistence];
  v3 = [v2 passcodeType];

  return v3;
}

- (int64_t)failedPasscodeAttempts
{
  v2 = [(LAPSCurrentPasscodeService *)self persistence];
  v3 = [v2 failedPasscodeAttempts];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_284B87678;
  }

  v5 = [v3 integerValue];

  return v5;
}

- (void)verifyPasscode:(id)a3 completion:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(LAPSCurrentPasscodeService *)self persistence];
  v8 = [v7 verifyPasscode:v6];

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
    v11[2](v11, v9);
  }

  else
  {
    v11[2](v11, 0);
  }
}

- (BOOL)canChangePasscodeWithError:(id *)a3
{
  v4 = [(LAPSPasscodePersistence *)self->_persistence canChangePasscode];
  v5 = v4;
  if (a3 && (v4 & 1) == 0)
  {
    *a3 = [LAPSErrorBuilder genericErrorWithDebugDescription:@"Passcode change is not allowed"];
  }

  return v5;
}

- (void)_reportPasscodeChangedTo:(id)a3
{
  v4 = a3;
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "CDP update will start", v7, 2u);
  }

  v6 = [(LAPSCurrentPasscodeService *)self persistence];
  [v6 reportPasscodeDidChangeTo:v4 completion:&__block_literal_global_1];
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