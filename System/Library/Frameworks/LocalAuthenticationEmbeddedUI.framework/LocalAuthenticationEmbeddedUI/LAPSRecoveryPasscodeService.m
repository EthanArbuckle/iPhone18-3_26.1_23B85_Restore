@interface LAPSRecoveryPasscodeService
- (BOOL)isPasscodeRecoveryAvailableWithError:(id *)a3;
- (BOOL)isPasscodeRecoveryEnabled;
- (BOOL)isPasscodeRecoveryRestricted;
- (BOOL)isPasscodeRecoverySupported;
- (LAPSRecoveryPasscodeService)initWithPersistence:(id)a3;
- (id)passcodeType;
- (int64_t)_failedPasscodeAttempts;
- (int64_t)_failedPasscodeRecoveryAttempts;
- (int64_t)_maxPasscodeRecoveryAttempts;
- (void)_clearRecoveryPasscode;
- (void)_reportPasscodeChangedTo:(id)a3;
- (void)verifyPasscode:(id)a3 completion:(id)a4;
@end

@implementation LAPSRecoveryPasscodeService

- (LAPSRecoveryPasscodeService)initWithPersistence:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPSRecoveryPasscodeService;
  v6 = [(LAPSRecoveryPasscodeService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistence, a3);
  }

  return v7;
}

- (BOOL)isPasscodeRecoverySupported
{
  v2 = [(LAPSRecoveryPasscodeService *)self persistence];
  v3 = [v2 isPasscodeRecoverySupported];

  return v3;
}

- (BOOL)isPasscodeRecoveryRestricted
{
  v2 = [(LAPSRecoveryPasscodeService *)self persistence];
  v3 = [v2 isPasscodeRecoveryRestricted];

  return v3;
}

- (BOOL)isPasscodeRecoveryEnabled
{
  v2 = [(LAPSRecoveryPasscodeService *)self persistence];
  v3 = [v2 isPasscodeRecoveryEnabled];

  return v3;
}

- (BOOL)isPasscodeRecoveryAvailableWithError:(id *)a3
{
  v5 = [(LAPSRecoveryPasscodeService *)self persistence];
  v6 = [v5 hasPasscode];

  if ((v6 & 1) == 0)
  {
    if (!a3)
    {
      return 0;
    }

    v12 = @"Passcode is not set";
LABEL_13:
    v13 = [LAPSErrorBuilder genericErrorWithDebugDescription:v12];
LABEL_14:
    v14 = v13;
    v15 = v13;
    result = 0;
    *a3 = v14;
    return result;
  }

  v7 = [(LAPSRecoveryPasscodeService *)self persistence];
  v8 = [v7 isPasscodeLockedOut];

  if ((v8 & 1) == 0)
  {
    if (!a3)
    {
      return 0;
    }

    v12 = @"Key bag is not ready for recovery";
    goto LABEL_13;
  }

  v9 = [(LAPSRecoveryPasscodeService *)self persistence];
  v10 = [v9 isPasscodeRecoveryAvailable];

  if ((v10 & 1) == 0)
  {
    if (!a3)
    {
      return 0;
    }

    v12 = @"Passcode recovery is not available";
    goto LABEL_13;
  }

  if ([(LAPSRecoveryPasscodeService *)self _hasPasscodeRecoveryAttemptsLeft])
  {
    if ([(LAPSRecoveryPasscodeService *)self _hasAttemptedPasscodeEnoughTimes])
    {
      return 1;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Passcode reset is only available after %d failures", -[LAPSRecoveryPasscodeService _minRequiredPasscodeFailures](self, "_minRequiredPasscodeFailures")];
    if (a3)
    {
      *a3 = [LAPSErrorBuilder genericErrorWithDebugDescription:v16];
    }

    return 0;
  }

  if (a3)
  {
    v13 = +[LAPSErrorBuilder tooManyAttemptsError];
    goto LABEL_14;
  }

  return 0;
}

- (id)passcodeType
{
  v2 = [(LAPSRecoveryPasscodeService *)self persistence];
  v3 = [v2 recoveryPasscodeType];

  return v3;
}

- (void)verifyPasscode:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(LAPSRecoveryPasscodeService *)self persistence];
  v8 = [v7 verifyRecoveryPasscode:v6];

  if (v8)
  {
    if ([(LAPSRecoveryPasscodeService *)self _hasPasscodeRecoveryAttemptsLeft])
    {
      if ([LAPSErrorBuilder checkError:v8 hasCode:4])
      {
        [LAPSErrorBuilder invalidPasscodeErrorWithFailedAttemptsCount:[(LAPSRecoveryPasscodeService *)self failedPasscodeAttempts]];
      }

      else
      {
        [LAPSErrorBuilder genericErrorWithUnderlyingError:v8];
      }
      v9 = ;
      v10[2](v10, v9);
    }

    else
    {
      [(LAPSRecoveryPasscodeService *)self _clearRecoveryPasscode];
      v9 = +[LAPSErrorBuilder tooManyAttemptsError];
      v10[2](v10, v9);
    }
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (int64_t)_failedPasscodeAttempts
{
  v2 = [(LAPSRecoveryPasscodeService *)self persistence];
  v3 = [v2 failedPasscodeAttempts];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_284B87690;
  }

  v5 = [v3 integerValue];

  return v5;
}

- (int64_t)_maxPasscodeRecoveryAttempts
{
  v2 = [(LAPSRecoveryPasscodeService *)self persistence];
  v3 = [v2 maxPasscodeRecoveryAttempts];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_284B87690;
  }

  v5 = [v3 integerValue];

  return v5;
}

- (int64_t)_failedPasscodeRecoveryAttempts
{
  v2 = [(LAPSRecoveryPasscodeService *)self persistence];
  v3 = [v2 failedPasscodeRecoveryAttempts];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_284B876A8;
  }

  v5 = [v3 integerValue];

  return v5;
}

- (void)_clearRecoveryPasscode
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "Could not clear recovery blob (error: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
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

  v6 = [(LAPSRecoveryPasscodeService *)self persistence];
  [v6 reportPasscodeDidChangeTo:v4 completion:&__block_literal_global_2];
}

void __56__LAPSRecoveryPasscodeService__reportPasscodeChangedTo___block_invoke(uint64_t a1, void *a2)
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

- (void)_setPasscodeRecoveryEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "Passcode recovery intent storage failed (error: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end