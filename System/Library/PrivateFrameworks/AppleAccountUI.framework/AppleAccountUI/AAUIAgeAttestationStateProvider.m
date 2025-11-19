@interface AAUIAgeAttestationStateProvider
- (AAUIAgeAttestationStateProvider)init;
- (void)init;
@end

@implementation AAUIAgeAttestationStateProvider

- (AAUIAgeAttestationStateProvider)init
{
  v19.receiver = self;
  v19.super_class = AAUIAgeAttestationStateProvider;
  v2 = [(AAUIAgeAttestationStateProvider *)&v19 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E698DD70] sharedManager];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [MEMORY[0x1E698DD70] sharedManager];
      v2->_ageAttestationPhase1Enabled = [v5 isAgeAttestationPhase1Enabled];
    }

    v6 = [MEMORY[0x1E698DC80] sharedInstance];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [MEMORY[0x1E698DC80] sharedInstance];
      v2->_shieldSignInOrCreateFlows = [v8 shieldSignInOrCreateFlows];
    }

    v9 = [MEMORY[0x1E698DD70] sharedManager];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [MEMORY[0x1E698DD70] sharedManager];
      v2->_ageBasedAccountSupportEnabled = [v11 isAgeBasedAccountSupportEnabled];
    }

    v12 = [MEMORY[0x1E698DC80] sharedInstance];
    v13 = [v12 protoAccount];
    v14 = [v13 proto_ageRange];

    v15 = _AALogSystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14 == 2)
    {
      if (v16)
      {
        [(AAUIAgeAttestationStateProvider *)v15 init];
      }

      v17 = 1;
    }

    else
    {
      if (v16)
      {
        [(AAUIAgeAttestationStateProvider *)v14 init];
      }

      v17 = 0;
    }

    v2->_shieldSignInOrCreateFlowsForTeen = v17;
  }

  return v2;
}

- (void)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Not shielding sign in / create flows for non-teen age range: %lu", &v2, 0xCu);
}

@end