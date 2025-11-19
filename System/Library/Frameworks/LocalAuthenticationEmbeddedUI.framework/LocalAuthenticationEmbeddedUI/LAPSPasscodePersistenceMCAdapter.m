@interface LAPSPasscodePersistenceMCAdapter
- (BOOL)canChangePasscode;
- (BOOL)canRemovePasscode:(id *)a3;
- (BOOL)changePasscode:(id)a3 to:(id)a4 enableRecovery:(BOOL)a5 error:(id *)a6;
- (BOOL)hasPasscode;
- (BOOL)isPasscodeRecoveryAvailable;
- (BOOL)isPasscodeRecoveryEnabled;
- (BOOL)isPasscodeRecoveryRestricted;
- (BOOL)isPasscodeRecoverySupported;
- (BOOL)performRecovery:(id)a3 newPasscode:(id)a4 enableRecovery:(BOOL)a5 error:(id *)a6;
- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)a3 error:(id *)a4;
- (id)_passcodeTypeForQuery:(id)a3;
- (id)clearRecoveryPasscode;
- (id)defaultNewPasscodeType;
- (id)localizedPasscodeRequirements;
- (id)passcodeCreationDate;
- (id)passcodeType;
- (id)recoveryPasscodeType;
- (id)setPasscodeRecoveryEnabled:(BOOL)a3;
- (id)simplestAllowedNewPasscodeType;
@end

@implementation LAPSPasscodePersistenceMCAdapter

- (BOOL)hasPasscode
{
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (id)passcodeCreationDate
{
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 passcodeCreationDate];

  return v3;
}

- (BOOL)canChangePasscode
{
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 isPasscodeModificationAllowed];

  return v3;
}

- (BOOL)canRemovePasscode:(id *)a3
{
  if ([(LAPSPasscodePersistenceMCAdapter *)self canChangePasscode])
  {
    v5 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
    v6 = [v5 isPasscodeRequired] ^ 1;

    if (!a3)
    {
      return v6;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    if (!a3)
    {
      return v6;
    }
  }

  if ((v6 & 1) == 0)
  {
    *a3 = +[LAPSErrorBuilder deniedByMDMError];
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

- (BOOL)changePasscode:(id)a3 to:(id)a4 enableRecovery:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  LOBYTE(a6) = [v12 changePasscodeFrom:v11 to:v10 skipRecovery:!v7 outError:a6];

  return a6;
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
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 localizedDescriptionOfDefaultNewPasscodeConstraints];

  return v3;
}

- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  LOBYTE(a4) = [v7 passcode:v6 meetsCurrentConstraintsOutError:a4];

  return a4;
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
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 recoveryPasscodeAvailable];

  return v3;
}

- (BOOL)isPasscodeRecoveryEnabled
{
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 isPasscodeRecoveryAllowed];

  return v3;
}

- (id)setPasscodeRecoveryEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v4 = LACLogPasscodeService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (v3)
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
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 isPasscodeRecoverySupported];

  return v3;
}

- (BOOL)isPasscodeRecoveryRestricted
{
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 isPasscodeRecoveryRestricted];

  return v3;
}

- (BOOL)performRecovery:(id)a3 newPasscode:(id)a4 enableRecovery:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  LOBYTE(a6) = [v12 changePasscodeWithRecoveryPasscode:v11 to:v10 skipRecovery:!v7 outError:a6];

  return a6;
}

- (id)clearRecoveryPasscode
{
  v2 = [(LAPSPasscodePersistenceMCAdapter *)self _mcProfileConnection];
  v3 = [v2 clearRecoveryPasscode];

  return v3;
}

- (id)_passcodeTypeForQuery:(id)a3
{
  v6 = -1;
  v3 = (*(a3 + 2))(a3, &v6);
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