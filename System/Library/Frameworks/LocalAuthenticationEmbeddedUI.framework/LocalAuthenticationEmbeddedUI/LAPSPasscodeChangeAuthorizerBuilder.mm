@interface LAPSPasscodeChangeAuthorizerBuilder
+ (id)authorizerWithOptions:(id)options;
@end

@implementation LAPSPasscodeChangeAuthorizerBuilder

+ (id)authorizerWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc(MEMORY[0x277D240A8]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__LAPSPasscodeChangeAuthorizerBuilder_authorizerWithOptions___block_invoke;
  v9[3] = &unk_278A658E0;
  v10 = optionsCopy;
  v5 = optionsCopy;
  v6 = __61__LAPSPasscodeChangeAuthorizerBuilder_authorizerWithOptions___block_invoke(v9);
  v7 = [v4 initWithAuthorizer:v6];

  return v7;
}

id __61__LAPSPasscodeChangeAuthorizerBuilder_authorizerWithOptions___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D240A0]);
  v3 = objc_alloc(MEMORY[0x277D240B0]);
  v4 = __61__LAPSPasscodeChangeAuthorizerBuilder_authorizerWithOptions___block_invoke_2();
  v5 = [v3 initWithRequiredEntitlements:v4];
  v11[0] = v5;
  v6 = [[LAPSPasscodeChangeAuthorizerDTOAdapter alloc] initWithOptions:*(a1 + 32)];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 initWithAuthorizers:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __61__LAPSPasscodeChangeAuthorizerBuilder_authorizerWithOptions___block_invoke_2()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D24068] sharedInstance];
  v1 = [v0 featureFlagPasscodeServicesProtectionEnabled];

  if (v1)
  {
    v2 = *MEMORY[0x277D23E60];
    v8[0] = *MEMORY[0x277D23E68];
    v8[1] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  }

  else
  {
    v4 = LACLogPasscodeService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_238BCD000, v4, OS_LOG_TYPE_DEFAULT, "Skipping entitlement checks while ff is disabled", v7, 2u);
    }

    v3 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

@end