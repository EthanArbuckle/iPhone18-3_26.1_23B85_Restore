@interface PolicyOptionsSanitizer
- (BOOL)_fallbackTextShouldBeDefaultForMechanismUIWithState:(id)state;
- (BOOL)_fallbackTextShouldBeVisibleForMechanismUIWithState:(id)state;
- (BOOL)_needsAdditionalDTOOptionsForMechanismUIWithState:(id)state;
- (BOOL)_needsAdditionalPolicyOptionsForMechanismUIWithState:(id)state;
- (id)additionalInternalInfoForMechanismUIWithState:(id)state;
@end

@implementation PolicyOptionsSanitizer

- (id)additionalInternalInfoForMechanismUIWithState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_new();
  if ([(PolicyOptionsSanitizer *)self _needsAdditionalPolicyOptionsForMechanismUIWithState:stateCopy])
  {
    v6 = objc_opt_new();
    policyOptions = [stateCopy policyOptions];
    v8 = *MEMORY[0x277D23F88];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F88]];
    v10 = [policyOptions objectForKeyedSubscript:v9];

    if (!v10 && [(PolicyOptionsSanitizer *)self _fallbackTextShouldBeVisibleForMechanismUIWithState:stateCopy])
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v6 setObject:MEMORY[0x277CBEC38] forKey:v11];
    }

    policyOptions2 = [stateCopy policyOptions];
    v13 = *MEMORY[0x277D23FC0];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FC0]];
    v15 = [policyOptions2 objectForKeyedSubscript:v14];

    if (!v15 && [(PolicyOptionsSanitizer *)self _fallbackTextShouldBeDefaultForMechanismUIWithState:stateCopy])
    {
      defaultFallbackText = [stateCopy defaultFallbackText];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      [v6 setObject:defaultFallbackText forKey:v17];
    }

    if ([v6 count])
    {
      [v5 setObject:v6 forKey:@"Options"];
    }
  }

  if ([(PolicyOptionsSanitizer *)self _needsAdditionalDTOOptionsForMechanismUIWithState:stateCopy])
  {
    v18 = objc_opt_new();
    backgroundMechanism = [stateCopy backgroundMechanism];
    [backgroundMechanism coolOffDuration];
    if (v20 > 0.0)
    {
      v21 = MEMORY[0x277CCABB0];
      [backgroundMechanism coolOffDuration];
      v22 = [v21 numberWithDouble:?];
      [v18 setObject:v22 forKey:@"CoolOffDuration"];
    }

    [backgroundMechanism gracePeriodDuration];
    if (v23 > 0.0)
    {
      v24 = MEMORY[0x277CCABB0];
      [backgroundMechanism gracePeriodDuration];
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

- (BOOL)_needsAdditionalPolicyOptionsForMechanismUIWithState:(id)state
{
  backgroundMechanism = [state backgroundMechanism];
  eventIdentifier = [backgroundMechanism eventIdentifier];

  return eventIdentifier == 1 || eventIdentifier == 7;
}

- (BOOL)_needsAdditionalDTOOptionsForMechanismUIWithState:(id)state
{
  stateCopy = state;
  backgroundMechanism = [stateCopy backgroundMechanism];
  eventIdentifier = [backgroundMechanism eventIdentifier];

  if (eventIdentifier == 12)
  {
    backgroundMechanism2 = [stateCopy backgroundMechanism];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_fallbackTextShouldBeVisibleForMechanismUIWithState:(id)state
{
  stateCopy = state;
  policyOptions = [stateCopy policyOptions];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F88]];
  v6 = [policyOptions objectForKeyedSubscript:v5];

  if (v6)
  {
    LOBYTE(v7) = [v6 BOOLValue];
  }

  else if ([stateCopy policy])
  {
    policy = [stateCopy policy];
    if (policy == *MEMORY[0x277D23F28])
    {
      v7 = [stateCopy clientIsUsingCAPI] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    policyOptions2 = [stateCopy policyOptions];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FC0]];
    v12 = [policyOptions2 objectForKeyedSubscript:v11];

    fallbackMechanism = [stateCopy fallbackMechanism];
    if (fallbackMechanism)
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

- (BOOL)_fallbackTextShouldBeDefaultForMechanismUIWithState:(id)state
{
  stateCopy = state;
  if ([(PolicyOptionsSanitizer *)self _fallbackTextShouldBeVisibleForMechanismUIWithState:stateCopy])
  {
    policy = [stateCopy policy];
    v6 = policy != *MEMORY[0x277D23F28];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end