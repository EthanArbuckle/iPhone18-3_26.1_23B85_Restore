@interface AKBiometricRatchetUtility
+ (id)ratchetIdentifier;
+ (id)resultForNonArmingFromError:(id)error;
+ (id)resultForSuccessfulArmingFromResponse:(id)response;
+ (id)stateFromLARatchetState:(id)state;
+ (unint64_t)armingMethodFromRatchetResult:(id)result;
+ (void)setRatchetIdentifier:(id)identifier;
@end

@implementation AKBiometricRatchetUtility

+ (id)stateFromLARatchetState:(id)state
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v30 = 0;
  v29 = 0.0;
  rawValue = [location[0] rawValue];
  if (rawValue)
  {
    if (rawValue != 1)
    {
      switch(rawValue)
      {
        case 2:
          v30 = 2;
          value = [location[0] value];
          v22 = objc_opt_respondsToSelector();
          *&v5 = MEMORY[0x277D82BD8](value).n128_u64[0];
          if (v22)
          {
            value2 = [location[0] value];
            [value2 duration];
            v29 = v6;
            MEMORY[0x277D82BD8](value2);
          }

          break;
        case 3:
          v30 = 3;
          value3 = [location[0] value];
          v19 = objc_opt_respondsToSelector();
          *&v7 = MEMORY[0x277D82BD8](value3).n128_u64[0];
          if (v19)
          {
            value4 = [location[0] value];
            [value4 duration];
            v29 = v8;
            MEMORY[0x277D82BD8](value4);
          }

          break;
        case 4:
          v30 = 4;
          value5 = [location[0] value];
          v16 = objc_opt_respondsToSelector();
          *&v9 = MEMORY[0x277D82BD8](value5).n128_u64[0];
          if (v16)
          {
            value6 = [location[0] value];
            [value6 duration];
            v29 = v10;
            MEMORY[0x277D82BD8](value6);
          }

          break;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v30 = 0;
  }

  v30 = 1;
  value7 = [location[0] value];
  v25 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](value7).n128_u64[0];
  if (v25)
  {
    value8 = [location[0] value];
    [value8 duration];
    v29 = v4;
    MEMORY[0x277D82BD8](value8);
  }

LABEL_19:
  v28 = [objc_alloc(MEMORY[0x277CF02C0]) initWithDuration:v29];
  v11 = objc_alloc(MEMORY[0x277CF02B8]);
  v27 = [v11 initWithRawState:v30 data:v28];
  v13 = MEMORY[0x277D82BE0](v27);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);

  return v13;
}

+ (unint64_t)armingMethodFromRatchetResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v4 = objc_opt_class();
  v5 = [location[0] objectForKeyedSubscript:&unk_2835AADF8];
  v10 = _AKSafeCast_0(v4, v5);
  MEMORY[0x277D82BD8](v5);
  v6 = objc_opt_class();
  v7 = [location[0] objectForKeyedSubscript:&unk_2835AAE10];
  v9 = _AKSafeCast_0(v6, v7);
  if ([v10 BOOLValue] == 1)
  {
    v8 = 3;
  }

  else if ([v9 BOOLValue] == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

+ (id)ratchetIdentifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [standardUserDefaults objectForKey:@"AKBiometricRatchetIdentifierKey"];
  *&v2 = MEMORY[0x277D82BD8](standardUserDefaults).n128_u64[0];
  if (v8)
  {
    objc_storeStrong(location, v8);
  }

  else
  {
    bundleIdentifier = [MEMORY[0x277CE4560] bundleIdentifier];
    v4 = location[0];
    location[0] = bundleIdentifier;
    MEMORY[0x277D82BD8](v4);
  }

  v6 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (void)setRatchetIdentifier:(id)identifier
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v6, "+[AKBiometricRatchetUtility setRatchetIdentifier:]", 107);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = MEMORY[0x277CBF008];
  CFPreferencesSetAppValue(@"AKBiometricRatchetIdentifierKey", location[0], *MEMORY[0x277CBF008]);
  CFPreferencesSynchronize(*v3, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)resultForSuccessfulArmingFromResponse:(id)response
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v11 = [location[0] objectForKeyedSubscript:&unk_2835AAE28];
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v13, v11);
    _os_log_debug_impl(&dword_222379000, v10, v9, "Ratchet is armed with state: %@", v13, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  v8 = [AKBiometricRatchetUtility armingMethodFromRatchetResult:location[0]];
  v7 = [AKBiometricRatchetUtility stateFromLARatchetState:v11];
  v3 = objc_alloc(MEMORY[0x277CF01D8]);
  v6 = [v3 initWithRatchetState:v7 armingMethod:v8];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)resultForNonArmingFromError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  userInfo = [location[0] userInfo];
  v17 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CD4788]];
  MEMORY[0x277D82BD8](userInfo);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v20, location[0], v17);
    _os_log_debug_impl(&dword_222379000, v16, v15, "Ratchet is not armed - error: %@, ratchet state: %@", v20, 0x16u);
  }

  objc_storeStrong(&v16, 0);
  if ([location[0] code] || !v17)
  {
    if ([location[0] code] == 3)
    {
      oslog = _AKLogSystem();
      v10 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v6 = oslog;
        v7 = v10;
        __os_log_helper_16_0_0(v9);
        _os_log_debug_impl(&dword_222379000, v6, v7, "User selected Quick Exit, calling exit(0) on purpose", v9, 2u);
      }

      objc_storeStrong(&oslog, 0);
      exit(0);
    }

    v19 = 0;
    v12 = 1;
  }

  else
  {
    v14 = [AKBiometricRatchetUtility stateFromLARatchetState:v17];
    v3 = objc_alloc(MEMORY[0x277CF01D8]);
    v13 = [v3 initWithRatchetState:v14 armingMethod:1];
    v19 = MEMORY[0x277D82BE0](v13);
    v12 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v19;

  return v4;
}

@end