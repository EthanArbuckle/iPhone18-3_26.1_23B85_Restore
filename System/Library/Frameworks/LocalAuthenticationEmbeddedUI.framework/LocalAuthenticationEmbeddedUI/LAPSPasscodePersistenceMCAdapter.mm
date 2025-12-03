@interface LAPSPasscodePersistenceMCAdapter
- (BOOL)canChangePasscode;
- (BOOL)canRemovePasscode:(id *)passcode;
- (BOOL)changePasscode:(id)passcode to:(id)to enableRecovery:(BOOL)recovery error:(id *)error;
- (BOOL)hasPasscode;
- (BOOL)isPasscodeRecoveryAvailable;
- (BOOL)isPasscodeRecoveryEnabled;
- (BOOL)isPasscodeRecoveryRestricted;
- (BOOL)isPasscodeRecoverySupported;
- (BOOL)performRecovery:(id)recovery newPasscode:(id)passcode enableRecovery:(BOOL)enableRecovery error:(id *)error;
- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)requirements error:(id *)error;
- (id)_passcodeTypeForQuery:(id)query;
- (id)clearRecoveryPasscode;
- (id)defaultNewPasscodeType;
- (id)localizedPasscodeRequirements;
- (id)passcodeCreationDate;
- (id)passcodeType;
- (id)recoveryPasscodeType;
- (id)setPasscodeRecoveryEnabled:(BOOL)enabled;
- (id)simplestAllowedNewPasscodeType;
@end

@implementation LAPSPasscodePersistenceMCAdapter

- (BOOL)hasPasscode
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  isPasscodeSet = [_mcProfileConnection isPasscodeSet];

  return isPasscodeSet;
}

- (id)passcodeCreationDate
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  passcodeCreationDate = [_mcProfileConnection passcodeCreationDate];

  return passcodeCreationDate;
}

- (BOOL)canChangePasscode
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  isPasscodeModificationAllowed = [_mcProfileConnection isPasscodeModificationAllowed];

  return isPasscodeModificationAllowed;
}

- (BOOL)canRemovePasscode:(id *)passcode
{
  if ([(LAPSPasscodePersistenceMCAdapter *)self canChangePasscode])
  {
    _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
    v6 = [_mcProfileConnection isPasscodeRequired] ^ 1;

    if (!passcode)
    {
      return v6;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    if (!passcode)
    {
      return v6;
    }
  }

  if ((v6 & 1) == 0)
  {
    *passcode = +[LAPSErrorBuilder deniedByMDMError];
  }

  return v6;
}

- (id)passcodeType
{
  if ([(LAPSPasscodePersistenceMCAdapter *)self hasPasscode])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__LAPSPasscodePersistenceMCAdapter_passcodeType__block_invoke;
    v5[3] = &unk_278A66108;
    v5[4] = self;
    v3 = [(LAPSPasscodePersistenceMCAdapter *)self _passcodeTypeForQuery:v5];
  }

  else
  {
    v3 = +[LAPSPasscodeType noneType];
  }

  return v3;
}

uint64_t __48__LAPSPasscodePersistenceMCAdapter_passcodeType__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mcProfileConnection];
  v4 = [v3 unlockScreenTypeWithOutSimplePasscodeType:a2];

  return v4;
}

- (BOOL)changePasscode:(id)passcode to:(id)to enableRecovery:(BOOL)recovery error:(id *)error
{
  recoveryCopy = recovery;
  toCopy = to;
  passcodeCopy = passcode;
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  LOBYTE(error) = [_mcProfileConnection changePasscodeFrom:passcodeCopy to:toCopy skipRecovery:!recoveryCopy outError:error];

  return error;
}

- (id)simplestAllowedNewPasscodeType
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__LAPSPasscodePersistenceMCAdapter_simplestAllowedNewPasscodeType__block_invoke;
  v4[3] = &unk_278A66108;
  v4[4] = self;
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _passcodeTypeForQuery:v4];

  return v2;
}

uint64_t __66__LAPSPasscodePersistenceMCAdapter_simplestAllowedNewPasscodeType__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mcProfileConnection];
  v4 = [v3 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:a2];

  return v4;
}

- (id)defaultNewPasscodeType
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__LAPSPasscodePersistenceMCAdapter_defaultNewPasscodeType__block_invoke;
  v4[3] = &unk_278A66108;
  v4[4] = self;
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _passcodeTypeForQuery:v4];

  return v2;
}

uint64_t __58__LAPSPasscodePersistenceMCAdapter_defaultNewPasscodeType__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mcProfileConnection];
  v4 = [v3 defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:a2];

  return v4;
}

- (id)localizedPasscodeRequirements
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  localizedDescriptionOfDefaultNewPasscodeConstraints = [_mcProfileConnection localizedDescriptionOfDefaultNewPasscodeConstraints];

  return localizedDescriptionOfDefaultNewPasscodeConstraints;
}

- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)requirements error:(id *)error
{
  requirementsCopy = requirements;
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  LOBYTE(error) = [_mcProfileConnection passcode:requirementsCopy meetsCurrentConstraintsOutError:error];

  return error;
}

- (id)recoveryPasscodeType
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__LAPSPasscodePersistenceMCAdapter_recoveryPasscodeType__block_invoke;
  v4[3] = &unk_278A66108;
  v4[4] = self;
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _passcodeTypeForQuery:v4];

  return v2;
}

uint64_t __56__LAPSPasscodePersistenceMCAdapter_recoveryPasscodeType__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mcProfileConnection];
  v4 = [v3 recoveryPasscodeUnlockScreenTypeWithOutSimplePasscodeType:a2];

  return v4;
}

- (BOOL)isPasscodeRecoveryAvailable
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  recoveryPasscodeAvailable = [_mcProfileConnection recoveryPasscodeAvailable];

  return recoveryPasscodeAvailable;
}

- (BOOL)isPasscodeRecoveryEnabled
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  isPasscodeRecoveryAllowed = [_mcProfileConnection isPasscodeRecoveryAllowed];

  return isPasscodeRecoveryAllowed;
}

- (id)setPasscodeRecoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x277D85DE8];
  v4 = LACLogPasscodeService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (enabledCopy)
    {
      v5 = "YES";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&dword_238BCD000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring request to set passcodeRecoveryEnabled = %s", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)isPasscodeRecoverySupported
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  isPasscodeRecoverySupported = [_mcProfileConnection isPasscodeRecoverySupported];

  return isPasscodeRecoverySupported;
}

- (BOOL)isPasscodeRecoveryRestricted
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  isPasscodeRecoveryRestricted = [_mcProfileConnection isPasscodeRecoveryRestricted];

  return isPasscodeRecoveryRestricted;
}

- (BOOL)performRecovery:(id)recovery newPasscode:(id)passcode enableRecovery:(BOOL)enableRecovery error:(id *)error
{
  enableRecoveryCopy = enableRecovery;
  passcodeCopy = passcode;
  recoveryCopy = recovery;
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  LOBYTE(error) = [_mcProfileConnection changePasscodeWithRecoveryPasscode:recoveryCopy to:passcodeCopy skipRecovery:!enableRecoveryCopy outError:error];

  return error;
}

- (id)clearRecoveryPasscode
{
  _mcProfileConnection = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  clearRecoveryPasscode = [_mcProfileConnection clearRecoveryPasscode];

  return clearRecoveryPasscode;
}

- (id)_passcodeTypeForQuery:(id)query
{
  v6 = -1;
  v3 = (*(query + 2))(query, &v6);
  if (v3 == 2)
  {
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = +[LAPSPasscodeType numericCustomDigitsType];
    goto LABEL_10;
  }

  if (v3)
  {
LABEL_8:
    v4 = +[LAPSPasscodeType alphanumericType];
    goto LABEL_10;
  }

  if (v6 == 1)
  {
    v4 = +[LAPSPasscodeType numericSixDigitsType];
  }

  else
  {
    if (v6)
    {
      if (v6 == -1)
      {
        v4 = +[LAPSPasscodeType noneType];
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v4 = +[LAPSPasscodeType numericFourDigitsType];
  }

LABEL_10:

  return v4;
}

@end