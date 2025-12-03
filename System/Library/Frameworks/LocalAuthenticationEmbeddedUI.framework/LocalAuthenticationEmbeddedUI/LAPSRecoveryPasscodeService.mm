@interface LAPSRecoveryPasscodeService
- (BOOL)isPasscodeRecoveryAvailableWithError:(id *)error;
- (BOOL)isPasscodeRecoveryEnabled;
- (BOOL)isPasscodeRecoveryRestricted;
- (BOOL)isPasscodeRecoverySupported;
- (LAPSRecoveryPasscodeService)initWithPersistence:(id)persistence;
- (id)passcodeType;
- (int64_t)_failedPasscodeAttempts;
- (int64_t)_failedPasscodeRecoveryAttempts;
- (int64_t)_maxPasscodeRecoveryAttempts;
- (void)_clearRecoveryPasscode;
- (void)_reportPasscodeChangedTo:(id)to;
- (void)verifyPasscode:(id)passcode completion:(id)completion;
@end

@implementation LAPSRecoveryPasscodeService

- (LAPSRecoveryPasscodeService)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v9.receiver = self;
  v9.super_class = LAPSRecoveryPasscodeService;
  v6 = [(LAPSRecoveryPasscodeService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistence, persistence);
  }

  return v7;
}

- (BOOL)isPasscodeRecoverySupported
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  isPasscodeRecoverySupported = [persistence isPasscodeRecoverySupported];

  return isPasscodeRecoverySupported;
}

- (BOOL)isPasscodeRecoveryRestricted
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  isPasscodeRecoveryRestricted = [persistence isPasscodeRecoveryRestricted];

  return isPasscodeRecoveryRestricted;
}

- (BOOL)isPasscodeRecoveryEnabled
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  isPasscodeRecoveryEnabled = [persistence isPasscodeRecoveryEnabled];

  return isPasscodeRecoveryEnabled;
}

- (BOOL)isPasscodeRecoveryAvailableWithError:(id *)error
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  hasPasscode = [persistence hasPasscode];

  if ((hasPasscode & 1) == 0)
  {
    if (!error)
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
    *error = v14;
    return result;
  }

  persistence2 = [(LAPSRecoveryPasscodeService *)self persistence];
  isPasscodeLockedOut = [persistence2 isPasscodeLockedOut];

  if ((isPasscodeLockedOut & 1) == 0)
  {
    if (!error)
    {
      return 0;
    }

    v12 = @"Key bag is not ready for recovery";
    goto LABEL_13;
  }

  persistence3 = [(LAPSRecoveryPasscodeService *)self persistence];
  isPasscodeRecoveryAvailable = [persistence3 isPasscodeRecoveryAvailable];

  if ((isPasscodeRecoveryAvailable & 1) == 0)
  {
    if (!error)
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
    if (error)
    {
      *error = [LAPSErrorBuilder genericErrorWithDebugDescription:v16];
    }

    return 0;
  }

  if (error)
  {
    v13 = +[LAPSErrorBuilder tooManyAttemptsError];
    goto LABEL_14;
  }

  return 0;
}

- (id)passcodeType
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  recoveryPasscodeType = [persistence recoveryPasscodeType];

  return recoveryPasscodeType;
}

- (void)verifyPasscode:(id)passcode completion:(id)completion
{
  completionCopy = completion;
  passcodeCopy = passcode;
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  v8 = [persistence verifyRecoveryPasscode:passcodeCopy];

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
      completionCopy[2](completionCopy, v9);
    }

    else
    {
      [(LAPSRecoveryPasscodeService *)self _clearRecoveryPasscode];
      v9 = +[LAPSErrorBuilder tooManyAttemptsError];
      completionCopy[2](completionCopy, v9);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (int64_t)_failedPasscodeAttempts
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  failedPasscodeAttempts = [persistence failedPasscodeAttempts];
  v4 = failedPasscodeAttempts;
  if (!failedPasscodeAttempts)
  {
    failedPasscodeAttempts = &unk_284B87690;
  }

  integerValue = [failedPasscodeAttempts integerValue];

  return integerValue;
}

- (int64_t)_maxPasscodeRecoveryAttempts
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  maxPasscodeRecoveryAttempts = [persistence maxPasscodeRecoveryAttempts];
  v4 = maxPasscodeRecoveryAttempts;
  if (!maxPasscodeRecoveryAttempts)
  {
    maxPasscodeRecoveryAttempts = &unk_284B87690;
  }

  integerValue = [maxPasscodeRecoveryAttempts integerValue];

  return integerValue;
}

- (int64_t)_failedPasscodeRecoveryAttempts
{
  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  failedPasscodeRecoveryAttempts = [persistence failedPasscodeRecoveryAttempts];
  v4 = failedPasscodeRecoveryAttempts;
  if (!failedPasscodeRecoveryAttempts)
  {
    failedPasscodeRecoveryAttempts = &unk_284B876A8;
  }

  integerValue = [failedPasscodeRecoveryAttempts integerValue];

  return integerValue;
}

- (void)_clearRecoveryPasscode
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "Could not clear recovery blob (error: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
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

  persistence = [(LAPSRecoveryPasscodeService *)self persistence];
  [persistence reportPasscodeDidChangeTo:toCopy completion:&__block_literal_global_2];
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