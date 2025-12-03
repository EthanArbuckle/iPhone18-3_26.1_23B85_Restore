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
    mEMORY[0x1E698DD70] = [MEMORY[0x1E698DD70] sharedManager];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      mEMORY[0x1E698DD70]2 = [MEMORY[0x1E698DD70] sharedManager];
      v2->_ageAttestationPhase1Enabled = [mEMORY[0x1E698DD70]2 isAgeAttestationPhase1Enabled];
    }

    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
      v2->_shieldSignInOrCreateFlows = [mEMORY[0x1E698DC80]2 shieldSignInOrCreateFlows];
    }

    mEMORY[0x1E698DD70]3 = [MEMORY[0x1E698DD70] sharedManager];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      mEMORY[0x1E698DD70]4 = [MEMORY[0x1E698DD70] sharedManager];
      v2->_ageBasedAccountSupportEnabled = [mEMORY[0x1E698DD70]4 isAgeBasedAccountSupportEnabled];
    }

    mEMORY[0x1E698DC80]3 = [MEMORY[0x1E698DC80] sharedInstance];
    protoAccount = [mEMORY[0x1E698DC80]3 protoAccount];
    proto_ageRange = [protoAccount proto_ageRange];

    v15 = _AALogSystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (proto_ageRange == 2)
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
        [(AAUIAgeAttestationStateProvider *)proto_ageRange init];
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
  selfCopy = self;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Not shielding sign in / create flows for non-teen age range: %lu", &v2, 0xCu);
}

@end