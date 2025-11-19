@interface AKBiometricRatchetUtility
+ (id)ratchetIdentifier;
+ (id)resultForNonArmingFromError:(id)a3;
+ (id)resultForSuccessfulArmingFromResponse:(id)a3;
+ (id)stateFromLARatchetState:(id)a3;
+ (unint64_t)armingMethodFromRatchetResult:(id)a3;
+ (void)setRatchetIdentifier:(id)a3;
@end

@implementation AKBiometricRatchetUtility

+ (id)stateFromLARatchetState:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  v25 = 0.0;
  v22 = [location[0] rawValue];
  if (v22)
  {
    if (v22 != 1)
    {
      switch(v22)
      {
        case 2:
          v26 = 2;
          v17 = [location[0] value];
          v18 = objc_opt_respondsToSelector();
          MEMORY[0x1E69E5920](v17);
          if (v18)
          {
            v16 = [location[0] value];
            [v16 duration];
            v25 = v4;
            MEMORY[0x1E69E5920](v16);
          }

          break;
        case 3:
          v26 = 3;
          v14 = [location[0] value];
          v15 = objc_opt_respondsToSelector();
          MEMORY[0x1E69E5920](v14);
          if (v15)
          {
            v13 = [location[0] value];
            [v13 duration];
            v25 = v5;
            MEMORY[0x1E69E5920](v13);
          }

          break;
        case 4:
          v26 = 4;
          v11 = [location[0] value];
          v12 = objc_opt_respondsToSelector();
          MEMORY[0x1E69E5920](v11);
          if (v12)
          {
            v10 = [location[0] value];
            [v10 duration];
            v25 = v6;
            MEMORY[0x1E69E5920](v10);
          }

          break;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v26 = 0;
  }

  v26 = 1;
  v20 = [location[0] value];
  v21 = objc_opt_respondsToSelector();
  MEMORY[0x1E69E5920](v20);
  if (v21)
  {
    v19 = [location[0] value];
    [v19 duration];
    v25 = v3;
    MEMORY[0x1E69E5920](v19);
  }

LABEL_19:
  v24 = [[AKRatchetStateData alloc] initWithDuration:v25];
  v7 = [AKRatchetState alloc];
  v23 = [(AKRatchetState *)v7 initWithRawState:v26 data:v24];
  v9 = MEMORY[0x1E69E5928](v23);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v9;
}

+ (unint64_t)armingMethodFromRatchetResult:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_opt_class();
  v5 = [location[0] objectForKeyedSubscript:&unk_1F07B5060];
  v10 = _AKSafeCast_20(v4, v5);
  MEMORY[0x1E69E5920](v5);
  v6 = objc_opt_class();
  v7 = [location[0] objectForKeyedSubscript:&unk_1F07B5078];
  v9 = _AKSafeCast_20(v6, v7);
  MEMORY[0x1E69E5920](v7);
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
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 objectForKey:@"AKBiometricRatchetIdentifierKey"];
  MEMORY[0x1E69E5920](v6);
  if (v7)
  {
    objc_storeStrong(location, v7);
  }

  else
  {
    v2 = [MEMORY[0x1E6985E20] bundleIdentifier];
    v3 = location[0];
    location[0] = v2;
    MEMORY[0x1E69E5920](v3);
  }

  v5 = MEMORY[0x1E69E5928](location[0]);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

+ (void)setRatchetIdentifier:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v6, "+[AKBiometricRatchetUtility setRatchetIdentifier:]", 107);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = MEMORY[0x1E695E890];
  CFPreferencesSetAppValue(@"AKBiometricRatchetIdentifierKey", location[0], *MEMORY[0x1E695E890]);
  CFPreferencesSynchronize(*v3, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

+ (id)resultForSuccessfulArmingFromResponse:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] objectForKeyedSubscript:&unk_1F07B5090];
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v13, v11);
    _os_log_debug_impl(&dword_193225000, v10, v9, "Ratchet is armed with state: %@", v13, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  v8 = [AKBiometricRatchetUtility armingMethodFromRatchetResult:location[0]];
  v7 = [AKBiometricRatchetUtility stateFromLARatchetState:v11];
  v3 = [AKBiometricRatchetResult alloc];
  v6 = [(AKBiometricRatchetResult *)v3 initWithRatchetState:v7 armingMethod:v8];
  v5 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)resultForNonArmingFromError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] userInfo];
  v17 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696EE48]];
  MEMORY[0x1E69E5920](v8);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v20, location[0], v17);
    _os_log_debug_impl(&dword_193225000, v16, v15, "Ratchet is not armed - error: %@, ratchet state: %@", v20, 0x16u);
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
        _os_log_debug_impl(&dword_193225000, v6, v7, "User selected Quick Exit, calling exit(0) on purpose", v9, 2u);
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
    v3 = [AKBiometricRatchetResult alloc];
    v13 = [(AKBiometricRatchetResult *)v3 initWithRatchetState:v14 armingMethod:1];
    v19 = MEMORY[0x1E69E5928](v13);
    v12 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v19;

  return v4;
}

@end