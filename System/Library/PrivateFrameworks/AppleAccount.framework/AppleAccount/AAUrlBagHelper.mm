@interface AAUrlBagHelper
+ (BOOL)canRepairBeneficiary;
+ (BOOL)canRepairCustodian;
+ (BOOL)isLCInviteAcceptanceEnabled;
+ (int64_t)maxRepairCount;
+ (int64_t)maxRepairCountForBeneficiaries;
@end

@implementation AAUrlBagHelper

+ (BOOL)canRepairCustodian
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"custodianCfgsV2"];

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "custodianCfgsV2 from urlbag: %@", &v13, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"canRepairCustodianV2"];
  if (v5)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Returning canRepairCustodianV2 from urlbag: %@", &v13, 0xCu);
    }

    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v8 = _os_feature_enabled_impl();
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = v8;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Returning canRepairCustodian based on feature flag: %d", &v13, 8u);
    }

    bOOLValue = _os_feature_enabled_impl();
  }

  v10 = bOOLValue;

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)canRepairBeneficiary
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"inheritanceCfgs"];

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "inheritanceCfgs from urlbag: %@", &v10, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"canRepairBeneficiaries"];
  if (v5)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Returning canRepairBeneficiary from urlbag: %@", &v10, 0xCu);
    }

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    LODWORD(v6) = _os_feature_enabled_impl();
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = v6;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Returning canRepairCustodian based on feature flag: %d", &v10, 8u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (int64_t)maxRepairCount
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"custodianCfgsV2"];

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "custodianCfgsV2 from urlbag: %@", &v11, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"maxRepairCountV2"];
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCountV2 from urlbag: %@", &v11, 0xCu);
    }

    integerValue = [v5 integerValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCount default value: 1", &v11, 2u);
    }

    integerValue = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return integerValue;
}

+ (int64_t)maxRepairCountForBeneficiaries
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"inheritanceCfgs"];

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "beneficiaryCfgs from urlbag: %@", &v11, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"maxRepairCount"];
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCount from urlbag: %@", &v11, 0xCu);
    }

    integerValue = [v5 integerValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCount default value: 1", &v11, 2u);
    }

    integerValue = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return integerValue;
}

+ (BOOL)isLCInviteAcceptanceEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"inheritanceCfgs"];

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "LCInvite: inheritanceCfgs from urlbag: %@", &v12, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"inviteAcceptanceV2"];
  v6 = +[AAPreferences isLCInviteAcceptanceEnabled];
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109120;
    LODWORD(v13) = v6;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "LCInvite: isEnabled in Defaults: %{BOOL}d", &v12, 8u);
  }

  if (v6)
  {
    LOBYTE(v8) = 1;
  }

  else if (v5)
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "LCInvite: Returning LCInviteAcceptance from urlbag: %@", &v12, 0xCu);
    }

    LOBYTE(v8) = [v5 BOOLValue];
  }

  else
  {
    LODWORD(v8) = _os_feature_enabled_impl();
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      LODWORD(v13) = v8;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "LCInvite: No IdMS feature flag found. is OS FeatureFlag Enabled %d", &v12, 8u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

@end