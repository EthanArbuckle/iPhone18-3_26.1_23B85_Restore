@interface MechanismBiometry
- (BOOL)canRecoverFromAvailabilityError:(id)a3 request:(id)a4;
- (BOOL)checkLockoutState:(int64_t)a3 isEffectiveLockoutForMatchWithPurpose:(int64_t)a4;
- (BOOL)isBiometryRequiredForPolicy;
- (BOOL)isFallbackVisible;
- (BOOL)willTryToRecover;
- (MechanismBiometry)initWithEventIdentifier:(int64_t)a3 remoteViewController:(int64_t)a4 acmContextRecord:(id)a5 request:(id)a6 evaluationMode:(int64_t)a7 userId:(id)a8;
- (id)failuresInfoDictionaryWithError:(id)a3 unboundMatch:(BOOL)a4;
@end

@implementation MechanismBiometry

- (MechanismBiometry)initWithEventIdentifier:(int64_t)a3 remoteViewController:(int64_t)a4 acmContextRecord:(id)a5 request:(id)a6 evaluationMode:(int64_t)a7 userId:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = MechanismBiometry;
  v16 = [(MechanismACM *)&v19 initWithEventIdentifier:a3 remoteViewController:a4 acmContextRecord:a5 request:a6];
  v17 = v16;
  if (v16)
  {
    v16->_evaluationMode = a7;
    objc_storeStrong(&v16->_userId, a8);
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
    v4 = [(MechanismBase *)self policyOptions];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F60]];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 BOOLValue];

    v8 = [(MechanismBase *)self policyOptions];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F68]];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 integerValue] > 0;
    }

    else
    {
      v11 = 1;
    }

    v3 = (v7 & v11) == 1 && self->_biolockout;
  }

  return v3;
}

- (BOOL)canRecoverFromAvailabilityError:(id)a3 request:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x277CD47F0] error:v5 hasCode:-8] && (objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:subcode:", v5, -8, 15) & 1) == 0)
  {
    v8 = [v6 options];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F60]];
    v10 = [v8 objectForKeyedSubscript:v9];
    v7 = [v10 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)checkLockoutState:(int64_t)a3 isEffectiveLockoutForMatchWithPurpose:(int64_t)a4
{
  if (a4 == 4 || a4 == 2)
  {
    v4 = a3 != 1;
  }

  else if (a3 <= 8)
  {
    v4 = 0xDDu >> a3;
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
  v4 = [(MechanismBase *)self policy];
  v5 = [(MechanismBase *)self policyOptions];
  LOBYTE(v3) = [v3 isDTOPolicy:v4 options:v5];

  return v3;
}

- (BOOL)isFallbackVisible
{
  v2 = [(MechanismBase *)self policyOptions];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F88]];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)failuresInfoDictionaryWithError:(id)a3 unboundMatch:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = MechanismBiometry;
  v5 = [(MechanismBase *)&v9 failuresInfoDictionaryWithError:a3];
  v6 = v5;
  if (a4)
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