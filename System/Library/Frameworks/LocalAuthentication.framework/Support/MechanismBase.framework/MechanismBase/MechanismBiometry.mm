@interface MechanismBiometry
- (BOOL)canRecoverFromAvailabilityError:(id)error request:(id)request;
- (BOOL)checkLockoutState:(int64_t)state isEffectiveLockoutForMatchWithPurpose:(int64_t)purpose;
- (BOOL)isBiometryRequiredForPolicy;
- (BOOL)isFallbackVisible;
- (BOOL)willTryToRecover;
- (MechanismBiometry)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller acmContextRecord:(id)record request:(id)request evaluationMode:(int64_t)mode userId:(id)id;
- (id)failuresInfoDictionaryWithError:(id)error unboundMatch:(BOOL)match;
@end

@implementation MechanismBiometry

- (MechanismBiometry)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller acmContextRecord:(id)record request:(id)request evaluationMode:(int64_t)mode userId:(id)id
{
  idCopy = id;
  v19.receiver = self;
  v19.super_class = MechanismBiometry;
  v16 = [(MechanismACM *)&v19 initWithEventIdentifier:identifier remoteViewController:controller acmContextRecord:record request:request];
  v17 = v16;
  if (v16)
  {
    v16->_evaluationMode = mode;
    objc_storeStrong(&v16->_userId, id);
  }

  return v17;
}

- (BOOL)willTryToRecover
{
  if ([(MechanismBiometry *)self isFallbackVisible])
  {
    return 1;
  }

  else
  {
    policyOptions = [(MechanismBase *)self policyOptions];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F60]];
    v6 = [policyOptions objectForKeyedSubscript:v5];
    bOOLValue = [v6 BOOLValue];

    policyOptions2 = [(MechanismBase *)self policyOptions];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F68]];
    v10 = [policyOptions2 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 integerValue] > 0;
    }

    else
    {
      v11 = 1;
    }

    v3 = (bOOLValue & v11) == 1 && self->_biolockout;
  }

  return v3;
}

- (BOOL)canRecoverFromAvailabilityError:(id)error request:(id)request
{
  errorCopy = error;
  requestCopy = request;
  if ([MEMORY[0x277CD47F0] error:errorCopy hasCode:-8] && (objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:subcode:", errorCopy, -8, 15) & 1) == 0)
  {
    options = [requestCopy options];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F60]];
    v10 = [options objectForKeyedSubscript:v9];
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)checkLockoutState:(int64_t)state isEffectiveLockoutForMatchWithPurpose:(int64_t)purpose
{
  if (purpose == 4 || purpose == 2)
  {
    v4 = state != 1;
  }

  else if (state <= 8)
  {
    v4 = 0xDDu >> state;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (BOOL)isBiometryRequiredForPolicy
{
  v3 = MEMORY[0x277D240C0];
  policy = [(MechanismBase *)self policy];
  policyOptions = [(MechanismBase *)self policyOptions];
  LOBYTE(v3) = [v3 isDTOPolicy:policy options:policyOptions];

  return v3;
}

- (BOOL)isFallbackVisible
{
  policyOptions = [(MechanismBase *)self policyOptions];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F88]];
  v4 = [policyOptions objectForKeyedSubscript:v3];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)failuresInfoDictionaryWithError:(id)error unboundMatch:(BOOL)match
{
  v9.receiver = self;
  v9.super_class = MechanismBiometry;
  v5 = [(MechanismBase *)&v9 failuresInfoDictionaryWithError:error];
  v6 = v5;
  if (match)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    [v7 setObject:MEMORY[0x277CBEC38] forKey:&unk_284B78A68];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end