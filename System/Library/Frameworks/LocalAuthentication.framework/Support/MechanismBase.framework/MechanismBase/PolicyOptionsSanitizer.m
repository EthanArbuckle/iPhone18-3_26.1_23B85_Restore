@interface PolicyOptionsSanitizer
- (BOOL)_fallbackTextShouldBeDefaultForMechanismUIWithState:(id)a3;
- (BOOL)_fallbackTextShouldBeVisibleForMechanismUIWithState:(id)a3;
- (BOOL)_needsAdditionalDTOOptionsForMechanismUIWithState:(id)a3;
- (BOOL)_needsAdditionalPolicyOptionsForMechanismUIWithState:(id)a3;
- (id)additionalInternalInfoForMechanismUIWithState:(id)a3;
@end

@implementation PolicyOptionsSanitizer

- (id)additionalInternalInfoForMechanismUIWithState:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([(PolicyOptionsSanitizer *)self _needsAdditionalPolicyOptionsForMechanismUIWithState:v4])
  {
    v6 = objc_opt_new();
    v7 = [v4 policyOptions];
    v8 = *MEMORY[0x277D23F88];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F88]];
    v10 = [v7 objectForKeyedSubscript:v9];

    if (!v10 && [(PolicyOptionsSanitizer *)self _fallbackTextShouldBeVisibleForMechanismUIWithState:v4])
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v6 setObject:MEMORY[0x277CBEC38] forKey:v11];
    }

    v12 = [v4 policyOptions];
    v13 = *MEMORY[0x277D23FC0];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FC0]];
    v15 = [v12 objectForKeyedSubscript:v14];

    if (!v15 && [(PolicyOptionsSanitizer *)self _fallbackTextShouldBeDefaultForMechanismUIWithState:v4])
    {
      v16 = [v4 defaultFallbackText];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      [v6 setObject:v16 forKey:v17];
    }

    if ([v6 count])
    {
      [v5 setObject:v6 forKey:@"Options"];
    }
  }

  if ([(PolicyOptionsSanitizer *)self _needsAdditionalDTOOptionsForMechanismUIWithState:v4])
  {
    v18 = objc_opt_new();
    v19 = [v4 backgroundMechanism];
    [v19 coolOffDuration];
    if (v20 > 0.0)
    {
      v21 = MEMORY[0x277CCABB0];
      [v19 coolOffDuration];
      v22 = [v21 numberWithDouble:?];
      [v18 setObject:v22 forKey:@"CoolOffDuration"];
    }

    [v19 gracePeriodDuration];
    if (v23 > 0.0)
    {
      v24 = MEMORY[0x277CCABB0];
      [v19 gracePeriodDuration];
      v25 = [v24 numberWithDouble:?];
      [v18 setObject:v25 forKey:@"GracePeriodDuration"];
    }

    if ([v18 count])
    {
      [v5 setObject:v18 forKey:@"DTOOptions"];
    }
  }

  return v5;
}

- (BOOL)_needsAdditionalPolicyOptionsForMechanismUIWithState:(id)a3
{
  v3 = [a3 backgroundMechanism];
  v4 = [v3 eventIdentifier];

  return v4 == 1 || v4 == 7;
}

- (BOOL)_needsAdditionalDTOOptionsForMechanismUIWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 backgroundMechanism];
  v5 = [v4 eventIdentifier];

  if (v5 == 12)
  {
    v6 = [v3 backgroundMechanism];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_fallbackTextShouldBeVisibleForMechanismUIWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 policyOptions];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F88]];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    LOBYTE(v7) = [v6 BOOLValue];
  }

  else if ([v3 policy])
  {
    v9 = [v3 policy];
    if (v9 == *MEMORY[0x277D23F28])
    {
      v7 = [v3 clientIsUsingCAPI] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    v10 = [v3 policyOptions];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FC0]];
    v12 = [v10 objectForKeyedSubscript:v11];

    v13 = [v3 fallbackMechanism];
    if (v13)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = [v12 length] != 0;
    }
  }

  return v7;
}

- (BOOL)_fallbackTextShouldBeDefaultForMechanismUIWithState:(id)a3
{
  v4 = a3;
  if ([(PolicyOptionsSanitizer *)self _fallbackTextShouldBeVisibleForMechanismUIWithState:v4])
  {
    v5 = [v4 policy];
    v6 = v5 != *MEMORY[0x277D23F28];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end