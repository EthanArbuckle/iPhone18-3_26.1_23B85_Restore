@interface AKPasswordGeneratorHook
- (AKPasswordGeneratorHook)init;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (id)_fetchAndPopulatePasswordRows:(id)a3 objectModel:(id)a4 password:(id)a5;
- (id)_generatePasswordForAppWithAppID:(id)a3 passwordRules:(id)a4;
- (id)_tableViewRowWithID:(id)a3 inObjectModel:(id)a4;
- (void)_autogeneratePasswordForObjectModel:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AKPasswordGeneratorHook

- (AKPasswordGeneratorHook)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKPasswordGeneratorHook;
  v6 = [(AKPasswordGeneratorHook *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_alloc_init(getSFStrongPasswordGeneratorClass());
    passwordGenerator = v9->_passwordGenerator;
    v9->_passwordGenerator = v2;
    MEMORY[0x277D82BD8](passwordGenerator);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  v23 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = 0;
  objc_storeStrong(&v19, a6);
  v18 = _AKLogSystem();
  v17 = 2;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    log = v18;
    type = v17;
    v6 = objc_opt_class();
    v11 = NSStringFromClass(v6);
    v7 = MEMORY[0x277D82BE0](v11);
    v16 = v7;
    v10 = NSStringFromSelector(v23);
    v15 = MEMORY[0x277D82BE0](v10);
    __os_log_helper_16_2_2_8_64_8_64(v25, v7, v15);
    _os_log_debug_impl(&dword_222379000, log, type, "%@: %@ is not supported.", v25, 0x16u);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v18, 0);
  (*(v19 + 2))(v19, 0, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKPasswordGeneratorHook *)v7 _autogeneratePasswordForObjectModel:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldMatchElement:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (BOOL)shouldMatchModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] clientInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ([@"password:generate" isEqualToString:?])
  {
    v10 = [location[0] clientInfo];
    v9 = 1;
    v8 = [v10 objectForKeyedSubscript:@"passwordFieldId"];
    v7 = 1;
    v6 = v8 != 0;
  }

  v12 = v6;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v12;
}

- (void)_autogeneratePasswordForObjectModel:(id)a3 completion:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v48 = 0;
  objc_storeStrong(&v48, a4);
  v26 = [location[0] clientInfo];
  v25 = [v26 objectForKeyedSubscript:@"passwordFieldId"];
  v47 = [v25 componentsSeparatedByString:{@", "}];
  MEMORY[0x277D82BD8](v25);
  if ([v47 count])
  {
    v21 = [location[0] clientInfo];
    v42 = [v21 objectForKeyedSubscript:@"passwordRules"];
    *&v4 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    if (!v42)
    {
      objc_storeStrong(&v42, @"minlength: 8; maxlength: 63; required: lower; required: upper; required: digit; allowed: ascii-printable;");
    }

    v18 = v50;
    v20 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v20 bundleIdentifier];
    v41 = [AKPasswordGeneratorHook _generatePasswordForAppWithAppID:v18 passwordRules:"_generatePasswordForAppWithAppID:passwordRules:"];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    if (v41)
    {
      oslog = _AKLogSystem();
      v36 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v14 = oslog;
        v15 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_debug_impl(&dword_222379000, v14, v15, "Successfully generated strong password", v35, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v34 = [(AKPasswordGeneratorHook *)v50 _fetchAndPopulatePasswordRows:v47 objectModel:location[0] password:v41];
      if (![v34 count])
      {
        v33 = _AKLogSystem();
        v32 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v12 = v33;
          v13 = v32;
          __os_log_helper_16_0_0(v31);
          _os_log_debug_impl(&dword_222379000, v12, v13, "Failed to find any rowIDs returned from client info, postBack to server for silent auth", v31, 2u);
        }

        objc_storeStrong(&v33, 0);
        v30 = objc_alloc_init(MEMORY[0x277D46208]);
        v29 = objc_opt_new();
        memset(__b, 0, sizeof(__b));
        v10 = MEMORY[0x277D82BE0](v47);
        v11 = [v10 countByEnumeratingWithState:__b objects:v51 count:16];
        if (v11)
        {
          v7 = *__b[2];
          v8 = 0;
          v9 = v11;
          while (1)
          {
            v6 = v8;
            if (*__b[2] != v7)
            {
              objc_enumerationMutation(v10);
            }

            v28 = *(__b[1] + 8 * v8);
            [v29 setObject:v41 forKey:v28];
            ++v8;
            if (v6 + 1 >= v9)
            {
              v8 = 0;
              v9 = [v10 countByEnumeratingWithState:__b objects:v51 count:16];
              if (!v9)
              {
                break;
              }
            }
          }
        }

        *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
        [v30 setAdditionalPayload:{v29, v5}];
        [(AKPasswordGeneratorHook *)v50 setServerHookResponse:v30];
        (*(v48 + 2))(v48, 1);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
      }

      objc_storeStrong(&v34, 0);
      v43 = 0;
    }

    else
    {
      v40 = _AKLogSystem();
      v39 = 16;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v16 = v40;
        v17 = v39;
        __os_log_helper_16_0_0(v38);
        _os_log_error_impl(&dword_222379000, v16, v17, "Failed to generate strong password", v38, 2u);
      }

      objc_storeStrong(&v40, 0);
      v43 = 1;
    }

    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
  }

  else
  {
    v46 = _AKLogSystem();
    v45 = 16;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      log = v46;
      type = v45;
      __os_log_helper_16_0_0(v44);
      _os_log_error_impl(&dword_222379000, log, type, "Failed to parse password row ids from server response", v44, 2u);
    }

    objc_storeStrong(&v46, 0);
    v43 = 1;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_fetchAndPopulatePasswordRows:(id)a3 objectModel:(id)a4 password:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = [MEMORY[0x277CBEB18] array];
  v17 = [v27 updateInfo];
  v24 = [v17 mutableCopy];
  MEMORY[0x277D82BD8](v17);
  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    MEMORY[0x277D82BD8](0);
  }

  memset(__b, 0, sizeof(__b));
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = [v13 countByEnumeratingWithState:__b objects:v32 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(v13);
      }

      v23 = *(__b[1] + 8 * v11);
      v21 = [(AKPasswordGeneratorHook *)v29 _tableViewRowWithID:v23 inObjectModel:v27];
      if (v21)
      {
        [v21 setValueFromString:v26];
        [v25 addObject:v21];
      }

      else
      {
        oslog = _AKLogSystem();
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          log = oslog;
          __os_log_helper_16_2_1_8_64(v31, v23);
          _os_log_debug_impl(&dword_222379000, log, type, "Row with row id: %@ does not exist, adding it to updateInfo", v31, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [v24 setObject:v26 forKey:v23];
      }

      objc_storeStrong(&v21, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v13 countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [v27 setUpdateInfo:{v24, v5}];
  v18 = _AKLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v30, v24);
    _os_log_debug_impl(&dword_222379000, v18, OS_LOG_TYPE_DEBUG, "Object model updateInfo: %@", v30, 0xCu);
  }

  objc_storeStrong(&v18, 0);
  v7 = MEMORY[0x277D82BE0](v25);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_generatePasswordForAppWithAppID:(id)a3 passwordRules:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(SFStrongPasswordGenerator *)v9->_passwordGenerator generatedPasswordForAppWithAppID:location[0] associatedDomains:0 passwordRules:v7 confirmPasswordRules:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_tableViewRowWithID:(id)a3 inObjectModel:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  memset(__b, 0, sizeof(__b));
  v11 = [v17 allPages];
  v12 = [v11 countByEnumeratingWithState:__b objects:v20 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(__b[1] + 8 * v8);
      if ([v16 hasTableView] == 1)
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v11 countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_9;
        }
      }
    }

    v14 = [v16 tableViewOM];
    v19 = [v14 rowWithIdentifier:location[0]];
    v13 = 1;
    objc_storeStrong(&v14, 0);
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  MEMORY[0x277D82BD8](v11);
  if (!v13)
  {
    v19 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v19;

  return v4;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end