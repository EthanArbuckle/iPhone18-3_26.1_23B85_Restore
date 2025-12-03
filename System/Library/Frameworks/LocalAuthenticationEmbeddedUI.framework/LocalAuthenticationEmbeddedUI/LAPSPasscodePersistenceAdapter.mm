@interface LAPSPasscodePersistenceAdapter
- (BOOL)canRemovePasscode:(id *)passcode;
- (BOOL)verifyFixedLengthNumericPasscodeIsStrong:(id)strong;
- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)requirements error:(id *)error;
- (BOOL)verifyVariableLengthAlphanumericPasscodeIsStrong:(id)strong;
- (LAPSPasscodePersistenceAdapter)init;
- (id)verifyPasscode:(id)passcode;
- (id)verifyRecoveryPasscode:(id)passcode;
- (void)reportPasscodeDidChangeTo:(id)to completion:(id)completion;
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

- (BOOL)canRemovePasscode:(id *)passcode
{
  v5 = [(LAPSPasscodePersistenceMCAdapter *)self->_mcAdapter canRemovePasscode:?];
  if (v5)
  {
    laAdapter = self->_laAdapter;

    LOBYTE(v5) = [(LAPSPasscodePersistenceLAAdapter *)laAdapter canRemovePasscode:passcode];
  }

  return v5;
}

- (id)verifyPasscode:(id)passcode
{
  mkbAdapter = self->_mkbAdapter;
  data = [passcode data];
  v5 = [(LAPSPasscodePersistenceMKBAdapter *)mkbAdapter verifyPasscode:data];

  return v5;
}

- (BOOL)verifyNewPasscodeMeetsPlatformRequirements:(id)requirements error:(id *)error
{
  mcAdapter = self->_mcAdapter;
  passcode = [requirements passcode];
  LOBYTE(error) = [(LAPSPasscodePersistenceMCAdapter *)mcAdapter verifyNewPasscodeMeetsPlatformRequirements:passcode error:error];

  return error;
}

- (BOOL)verifyFixedLengthNumericPasscodeIsStrong:(id)strong
{
  secAdapter = self->_secAdapter;
  passcode = [strong passcode];
  LOBYTE(secAdapter) = [(LAPSPasscodePersistenceSecAdapter *)secAdapter verifyFixedLengthNumericPasscodeIsStrong:passcode];

  return secAdapter;
}

- (BOOL)verifyVariableLengthAlphanumericPasscodeIsStrong:(id)strong
{
  secAdapter = self->_secAdapter;
  passcode = [strong passcode];
  LOBYTE(secAdapter) = [(LAPSPasscodePersistenceSecAdapter *)secAdapter verifyVariableLengthAlphanumericPasscodeIsStrong:passcode];

  return secAdapter;
}

- (void)reportPasscodeDidChangeTo:(id)to completion:(id)completion
{
  cdpAdapter = self->_cdpAdapter;
  completionCopy = completion;
  toCopy = to;
  passcode = [toCopy passcode];
  type = [toCopy type];

  [(LAPSPasscodePersistenceCDPAdapter *)cdpAdapter reportPasscodeDidChangeTo:passcode passcodeType:type completion:completionCopy];
}

- (id)verifyRecoveryPasscode:(id)passcode
{
  mkbAdapter = self->_mkbAdapter;
  data = [passcode data];
  v5 = [(LAPSPasscodePersistenceMKBAdapter *)mkbAdapter verifyRecoveryPasscode:data];

  return v5;
}

@end