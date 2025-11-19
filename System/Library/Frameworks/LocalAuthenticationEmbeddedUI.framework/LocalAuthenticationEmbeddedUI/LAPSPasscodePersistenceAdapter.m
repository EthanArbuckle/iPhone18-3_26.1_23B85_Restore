@interface LAPSPasscodePersistenceAdapter
- (BOOL)canRemovePasscode:(id *)a3;
- (BOOL)verifyFixedLengthNumericPasscodeIsStrong:(id)a3;
- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)a3 error:(id *)a4;
- (BOOL)verifyVariableLengthAlphanumericPasscodeIsStrong:(id)a3;
- (LAPSPasscodePersistenceAdapter)init;
- (id)verifyPasscode:(id)a3;
- (id)verifyRecoveryPasscode:(id)a3;
- (void)reportPasscodeDidChangeTo:(id)a3 completion:(id)a4;
@end

@implementation LAPSPasscodePersistenceAdapter

- (LAPSPasscodePersistenceAdapter)init
{
  v14.receiver = self;
  v14.super_class = LAPSPasscodePersistenceAdapter;
  v2 = [(LAPSPasscodePersistenceAdapter *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(LAPSPasscodePersistenceLAAdapter);
    laAdapter = v2->_laAdapter;
    v2->_laAdapter = v3;

    v5 = objc_alloc_init(LAPSPasscodePersistenceMCAdapter);
    mcAdapter = v2->_mcAdapter;
    v2->_mcAdapter = v5;

    v7 = objc_alloc_init(LAPSPasscodePersistenceCDPAdapter);
    cdpAdapter = v2->_cdpAdapter;
    v2->_cdpAdapter = v7;

    v9 = objc_alloc_init(LAPSPasscodePersistenceMKBAdapter);
    mkbAdapter = v2->_mkbAdapter;
    v2->_mkbAdapter = v9;

    v11 = objc_alloc_init(LAPSPasscodePersistenceSecAdapter);
    secAdapter = v2->_secAdapter;
    v2->_secAdapter = v11;
  }

  return v2;
}

- (BOOL)canRemovePasscode:(id *)a3
{
  v5 = [(LAPSPasscodePersistenceMCAdapter *)self->_mcAdapter canRemovePasscode:?];
  if (v5)
  {
    laAdapter = self->_laAdapter;

    LOBYTE(v5) = [(LAPSPasscodePersistenceLAAdapter *)laAdapter canRemovePasscode:a3];
  }

  return v5;
}

- (id)verifyPasscode:(id)a3
{
  mkbAdapter = self->_mkbAdapter;
  v4 = [a3 data];
  v5 = [(LAPSPasscodePersistenceMKBAdapter *)mkbAdapter verifyPasscode:v4];

  return v5;
}

- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)a3 error:(id *)a4
{
  mcAdapter = self->_mcAdapter;
  v6 = [a3 passcode];
  LOBYTE(a4) = [(LAPSPasscodePersistenceMCAdapter *)mcAdapter verifyNewPasscodeMeetsPlatformRequirements:v6 error:a4];

  return a4;
}

- (BOOL)verifyFixedLengthNumericPasscodeIsStrong:(id)a3
{
  secAdapter = self->_secAdapter;
  v4 = [a3 passcode];
  LOBYTE(secAdapter) = [(LAPSPasscodePersistenceSecAdapter *)secAdapter verifyFixedLengthNumericPasscodeIsStrong:v4];

  return secAdapter;
}

- (BOOL)verifyVariableLengthAlphanumericPasscodeIsStrong:(id)a3
{
  secAdapter = self->_secAdapter;
  v4 = [a3 passcode];
  LOBYTE(secAdapter) = [(LAPSPasscodePersistenceSecAdapter *)secAdapter verifyVariableLengthAlphanumericPasscodeIsStrong:v4];

  return secAdapter;
}

- (void)reportPasscodeDidChangeTo:(id)a3 completion:(id)a4
{
  cdpAdapter = self->_cdpAdapter;
  v6 = a4;
  v7 = a3;
  v9 = [v7 passcode];
  v8 = [v7 type];

  [(LAPSPasscodePersistenceCDPAdapter *)cdpAdapter reportPasscodeDidChangeTo:v9 passcodeType:v8 completion:v6];
}

- (id)verifyRecoveryPasscode:(id)a3
{
  mkbAdapter = self->_mkbAdapter;
  v4 = [a3 data];
  v5 = [(LAPSPasscodePersistenceMKBAdapter *)mkbAdapter verifyRecoveryPasscode:v4];

  return v5;
}

@end