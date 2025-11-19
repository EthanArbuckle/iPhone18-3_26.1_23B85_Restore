@interface AAAgeAttestationStateProvider
- (AAAgeAttestationStateProvider)init;
- (void)init;
@end

@implementation AAAgeAttestationStateProvider

- (AAAgeAttestationStateProvider)init
{
  v47.receiver = self;
  v47.super_class = AAAgeAttestationStateProvider;
  v2 = [(AAAgeAttestationStateProvider *)&v47 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E698DD70] sharedManager];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [MEMORY[0x1E698DD70] sharedManager];
      v6 = [v5 isAgeAttestationPhase1Enabled];

      v7 = _AALogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(AAAgeAttestationStateProvider *)v6 init:v7];
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    v14 = [MEMORY[0x1E698DC80] sharedInstance];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      if (v6)
      {
        v16 = [MEMORY[0x1E698DC80] sharedInstance];
        v2->_shieldSignInOrCreateFlows = [v16 shieldSignInOrCreateFlows];
        p_shieldSignInOrCreateFlows = &v2->_shieldSignInOrCreateFlows;
      }

      else
      {
        v2->_shieldSignInOrCreateFlows = 0;
        p_shieldSignInOrCreateFlows = &v2->_shieldSignInOrCreateFlows;
      }

      v18 = _AALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(AAAgeAttestationStateProvider *)p_shieldSignInOrCreateFlows init:v18];
      }
    }

    v25 = [MEMORY[0x1E698DD70] sharedManager];
    v26 = [v25 isAgeBasedAccountSupportEnabled];

    v27 = _AALogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [(AAAgeAttestationStateProvider *)v26 init:v27];
    }

    if (v26)
    {
      v34 = [MEMORY[0x1E698DC80] sharedInstance];
      v35 = [v34 protoAccount];
      v36 = [v35 proto_ageRange];

      v37 = _AALogSystem();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
      if (v36 == 2)
      {
        if (v38)
        {
          [(AAAgeAttestationStateProvider *)v37 init];
        }

        v45 = 1;
      }

      else
      {
        if (v38)
        {
          [(AAAgeAttestationStateProvider *)v36 init:v37];
        }

        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
    }

    v2->_shieldSignInOrCreateFlowsForTeen = v45;
  }

  return v2;
}

- (void)init
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a2, a3, "Not shielding sign in / create flows for non-teen age range: %lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end