@interface AKAppleIDServerUIDataHarvester
- (AKAppleIDServerUIDataHarvester)init;
- (NSDictionary)harvestedData;
- (void)_clearPendingDOBFromPrimaryAppleAccount;
- (void)_harvestIDMSRecoveryHeadersInfo:(id)a3;
- (void)harvestDataFromClientInfo:(id)a3 withExtractor:(id)a4;
- (void)harvestDataFromCompanionResponse:(id)a3;
- (void)harvestDataFromServerHTTPResponse:(id)a3;
- (void)harvestDataFromServerUIObjectModel:(id)a3;
- (void)harvestIDMSRecoveryInfoFromClientInfo:(id)a3;
- (void)harvestIDMSRecoveryInfoFromHeaders:(id)a3;
@end

@implementation AKAppleIDServerUIDataHarvester

- (AKAppleIDServerUIDataHarvester)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKAppleIDServerUIDataHarvester;
  v8 = [(AKAppleIDServerUIDataHarvester *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = objc_opt_new();
    harvestedData = v8->_harvestedData;
    v8->_harvestedData = v2;
    MEMORY[0x277D82BD8](harvestedData);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (NSDictionary)harvestedData
{
  v2 = [(NSMutableDictionary *)self->_harvestedData copy:a2];

  return v2;
}

- (void)harvestDataFromServerUIObjectModel:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_3_1_8_65(v11, location[0]);
    _os_log_impl(&dword_222379000, v8, v7, "Harvesting data from object model: %{private}@", v11, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v3 = [AKAppleIDObjectModelFieldExtractor alloc];
  v6 = [(AKAppleIDObjectModelFieldExtractor *)v3 initWithObjectModel:location[0]];
  v4 = v10;
  v5 = [location[0] clientInfo];
  [AKAppleIDServerUIDataHarvester harvestDataFromClientInfo:v4 withExtractor:"harvestDataFromClientInfo:withExtractor:"];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)harvestDataFromCompanionResponse:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)harvestDataFromClientInfo:(id)a3 withExtractor:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = _AKLogSystem();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_3_1_8_65(v39, v34);
    _os_log_impl(&dword_222379000, v33, v32, "Harvesting data with extractor: %{private}@", v39, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  v31 = [location[0] objectForKeyedSubscript:@"appleIdRowId"];
  v30 = [v34 valueForFieldWithID:v31];
  if (!v30)
  {
    v29 = [location[0] objectForKeyedSubscript:@"appleIdRowPrefixId"];
    v28 = [v34 valueForFieldWithID:v29];
    if (v28)
    {
      v27 = [location[0] objectForKeyedSubscript:@"appleIdRowSuffixId"];
      v26 = [v34 valueForFieldWithID:v27];
      if (!v26)
      {
        v25 = [location[0] objectForKeyedSubscript:@"appleIdServerInfoSuffixId"];
        v4 = [v34 valueForFieldWithID:v25];
        v5 = v26;
        v26 = v4;
        MEMORY[0x277D82BD8](v5);
        objc_storeStrong(&v25, 0);
      }

      if (v26)
      {
        v6 = [v28 stringByAppendingString:v26];
        v7 = v30;
        v30 = v6;
        MEMORY[0x277D82BD8](v7);
      }

      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  if (!v30)
  {
    v24 = [location[0] objectForKeyedSubscript:@"appleIdServerInfoId"];
    v8 = [v34 valueForFieldWithID:v24];
    v9 = v30;
    v30 = v8;
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v24, 0);
  }

  if (v30)
  {
    oslog = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_3_2_8_65_8_65(v38, v30, v34);
      _os_log_impl(&dword_222379000, oslog, v22, "Found an Apple ID (%{private}@) with extractor %{private}@", v38, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(NSMutableDictionary *)v36->_harvestedData setObject:v30 forKeyedSubscript:*MEMORY[0x277CEFFD8]];
  }

  v15 = [location[0] objectForKeyedSubscript:@"passwordRowId"];
  v19 = 0;
  if (v15)
  {
    v10 = MEMORY[0x277D82BE0](v15);
  }

  else
  {
    v20 = [location[0] objectForKeyedSubscript:@"newPasswordRowId"];
    v19 = 1;
    v10 = MEMORY[0x277D82BE0](v20);
  }

  v21 = v10;
  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  v18 = [v34 valueForFieldWithID:{v21, MEMORY[0x277D82BD8](v15).n128_f64[0]}];
  if (v18)
  {
    v17 = _AKLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v14 = v34;
      v11 = [v18 length];
      v12 = @"(empty)";
      if (v11)
      {
        v12 = @"(******)";
      }

      __os_log_helper_16_3_2_8_65_8_65(v37, v14, v12);
      _os_log_debug_impl(&dword_222379000, v17, OS_LOG_TYPE_DEBUG, "Found a password with extractor %{private}@ - %{private}@", v37, 0x16u);
    }

    objc_storeStrong(&v17, 0);
    [(NSMutableDictionary *)v36->_harvestedData setObject:v18 forKeyedSubscript:*MEMORY[0x277CEFFC8]];
  }

  [(AKAppleIDServerUIDataHarvester *)v36 harvestIDMSRecoveryInfoFromClientInfo:location[0], location];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v13, 0);
  *MEMORY[0x277D85DE8];
}

- (void)harvestDataFromServerHTTPResponse:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_3_1_8_65(v34, location[0]);
    _os_log_debug_impl(&dword_222379000, v27, v26, "Harvesting data from response: %{private}@", v34, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v10 = [location[0] allHeaderFields];
  v25 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF0000]];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v25)
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v24;
      v9 = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_impl(&dword_222379000, v8, v9, "Found continuation data header in HTTP response", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    [(NSMutableDictionary *)v29->_harvestedData setObject:v25 forKeyedSubscript:*MEMORY[0x277CEFFC0]];
  }

  v7 = [location[0] allHeaderFields];
  v21 = [v7 objectForKeyedSubscript:*MEMORY[0x277CEFEB0]];
  if ([v21 length])
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_3_1_8_65(v33, v21);
      _os_log_impl(&dword_222379000, v20, v19, "Found Apple ID (%{private}@) in HTTP response", v33, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    [(NSMutableDictionary *)v29->_harvestedData setObject:v21 forKeyedSubscript:*MEMORY[0x277CEFFD8]];
  }

  v6 = [location[0] allHeaderFields];
  v18 = [v6 objectForKeyedSubscript:@"X-Apple-I-Birthday-Updated"];
  if ([v18 length])
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v32, v18);
      _os_log_impl(&dword_222379000, v17, v16, "Found birthday updated header: %@.", v32, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    if ([v18 isEqualToString:@"1"])
    {
      [(AKAppleIDServerUIDataHarvester *)v29 _clearPendingDOBFromPrimaryAppleAccount];
    }
  }

  v5 = [location[0] allHeaderFields];
  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF0048]];
  if ([v15 length])
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_3_1_8_65(v31, v15);
      _os_log_impl(&dword_222379000, v14, v13, "Found HME email address  (%{private}@) in HTTP response", v31, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    [(NSMutableDictionary *)v29->_harvestedData setObject:v15 forKeyedSubscript:*MEMORY[0x277CF0050]];
  }

  v4 = [location[0] allHeaderFields];
  v12 = [v4 objectForKeyedSubscript:@"X-Apple-I-Private-Email-Client-Bundle"];
  if ([v12 length])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_3_1_8_65(v30, v12);
      _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "Found HME email bundle (%{private}@) in HTTP response", v30, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(NSMutableDictionary *)v29->_harvestedData setObject:v12 forKeyedSubscript:@"X-Apple-I-Private-Email-Client-Bundle"];
  }

  [(AKAppleIDServerUIDataHarvester *)v29 _harvestIDMSRecoveryHeadersInfo:location[0]];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_harvestIDMSRecoveryHeadersInfo:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] allHeaderFields];
  [(AKAppleIDServerUIDataHarvester *)v5 harvestIDMSRecoveryInfoFromHeaders:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)harvestIDMSRecoveryInfoFromClientInfo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  if (v17)
  {
    [(NSMutableDictionary *)v19->_harvestedData setObject:v17 forKeyedSubscript:*MEMORY[0x277CEFFD8]];
  }

  v7 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CF0078]];
  v14 = 0;
  if (v7)
  {
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v15 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CF0320]];
    v14 = 1;
    v3 = MEMORY[0x277D82BE0](v15);
  }

  v16 = v3;
  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v16)
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_impl(&dword_222379000, log, type, "Harvested recovery continuation endpoint", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [(NSMutableDictionary *)v19->_harvestedData setObject:v16 forKeyedSubscript:*MEMORY[0x277CF0078]];
  }

  v10 = [location[0] objectForKeyedSubscript:{*MEMORY[0x277CF0320], v4}];
  if (v10)
  {
    [(NSMutableDictionary *)v19->_harvestedData setObject:v10 forKeyedSubscript:*MEMORY[0x277CF0320]];
  }

  v9 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CF0068]];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v20, v9);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "harvestIDMSRecoveryInfoFromClientInfo: RKMandate is %@", v20, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NSMutableDictionary *)v19->_harvestedData setObject:v9 forKeyedSubscript:*MEMORY[0x277CF0068]];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)harvestIDMSRecoveryInfoFromHeaders:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CEFEE0]];
  if (v27)
  {
    [(NSMutableDictionary *)v29->_harvestedData setObject:v27 forKeyedSubscript:*MEMORY[0x277CEFEE0]];
    if ([v27 isEqualToString:*MEMORY[0x277CEFEF8]] & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277CEFF00]))
    {
      v26 = _AKLogSystem();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v30, v27);
        _os_log_impl(&dword_222379000, v26, v25, "Harvested native recovery action: %@", v30, 0xCu);
      }

      objc_storeStrong(&v26, 0);
      v10 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CF0318]];
      v22 = 0;
      if (v10)
      {
        v3 = MEMORY[0x277D82BE0](v10);
      }

      else
      {
        v23 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CF0070]];
        v22 = 1;
        v3 = MEMORY[0x277D82BE0](v23);
      }

      v24 = v3;
      if (v22)
      {
        MEMORY[0x277D82BD8](v23);
      }

      *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      if (v24)
      {
        [(NSMutableDictionary *)v29->_harvestedData setObject:v24 forKeyedSubscript:*MEMORY[0x277CF0070], v4];
      }

      v9 = [location[0] objectForKeyedSubscript:{*MEMORY[0x277CF0310], v4}];
      v19 = 0;
      if (v9)
      {
        v5 = MEMORY[0x277D82BE0](v9);
      }

      else
      {
        v20 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CF0060]];
        v19 = 1;
        v5 = MEMORY[0x277D82BE0](v20);
      }

      v21 = v5;
      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v21)
      {
        [(NSMutableDictionary *)v29->_harvestedData setObject:v21 forKeyedSubscript:*MEMORY[0x277CF0060], v6];
      }

      v18 = [location[0] objectForKeyedSubscript:{*MEMORY[0x277CEFF10], v6}];
      if (v18)
      {
        [(NSMutableDictionary *)v29->_harvestedData setObject:v18 forKeyedSubscript:*MEMORY[0x277CEFF10]];
      }

      v17 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CF0008]];
      if (v17)
      {
        [(NSMutableDictionary *)v29->_harvestedData setObject:v17 forKeyedSubscript:*MEMORY[0x277CF0008]];
      }

      v16 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CEFEB0]];
      if (v16)
      {
        [(NSMutableDictionary *)v29->_harvestedData setObject:v16 forKeyedSubscript:*MEMORY[0x277CEFFD8]];
      }

      v15 = [location[0] objectForKeyedSubscript:@"X-Apple-AK-Recovery-URL-Key"];
      if (v15)
      {
        oslog = _AKLogSystem();
        v13 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = oslog;
          v8 = v13;
          __os_log_helper_16_0_0(v12);
          _os_log_impl(&dword_222379000, v7, v8, "Harvested recovery continuation endpoint", v12, 2u);
        }

        objc_storeStrong(&oslog, 0);
        [(NSMutableDictionary *)v29->_harvestedData setObject:v15 forKeyedSubscript:*MEMORY[0x277CF0078]];
      }

      v11 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CEFE98]];
      if (v11)
      {
        [(NSMutableDictionary *)v29->_harvestedData setObject:v11 forKeyedSubscript:*MEMORY[0x277CEFE98]];
      }

      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v24, 0);
    }
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_clearPendingDOBFromPrimaryAppleAccount
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = self;
  v22[1] = a2;
  v10 = [MEMORY[0x277CF0130] sharedInstance];
  v22[0] = [v10 primaryiCloudAccount];
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v22[0])
  {
    v5 = [MEMORY[0x277CF0130] sharedInstance];
    [v5 setPendingDOB:0 forAccount:v22[0]];
    v17 = 0;
    v6 = [MEMORY[0x277CF0130] sharedInstance];
    v16 = v17;
    v7 = [v6 saveAccount:v22[0] error:&v16];
    objc_storeStrong(&v17, v16);
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      oslog = _AKLogSystem();
      v12 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v3 = oslog;
        v4 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_debug_impl(&dword_222379000, v3, v4, "Successfully cleared pending DOB from Apple Account", v11, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v18 = 0;
    }

    else
    {
      v15 = _AKLogSystem();
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v23, v17);
        _os_log_error_impl(&dword_222379000, v15, v14, "Failed to save Apple Account after clearing pending DOB: %@", v23, 0xCu);
      }

      objc_storeStrong(&v15, 0);
      v18 = 1;
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    location = _AKLogSystem();
    v20 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_debug_impl(&dword_222379000, log, type, "No primary Apple Account found, skipping pendingDOB clear", v19, 2u);
    }

    objc_storeStrong(&location, 0);
    v18 = 1;
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

@end