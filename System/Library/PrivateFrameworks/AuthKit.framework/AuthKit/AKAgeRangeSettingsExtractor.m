@interface AKAgeRangeSettingsExtractor
+ (id)defaultConfigDictionary;
+ (id)extractAgeRangeConfigFromGlobalConfig:(id)a3;
@end

@implementation AKAgeRangeSettingsExtractor

+ (id)defaultConfigDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v18[2] = a1;
  v18[1] = a2;
  context = objc_autoreleasePoolPush();
  v18[0] = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v18[0] URLForResource:@"AKAgeRangeDefaults" withExtension:@"json"];
  v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17];
  if (v16)
  {
    v11 = 0;
    obj = 0;
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v16 options:0 error:&obj];
    objc_storeStrong(&v11, obj);
    v10 = v4;
    if (v11)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v20, v11);
        _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to parse AKAgeRangeDefaults.json: %@", v20, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v19 = MEMORY[0x1E69E5928](&unk_1F07B52C8);
      v12 = 1;
    }

    else
    {
      v19 = MEMORY[0x1E69E5928](v10);
      v12 = 1;
    }

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    location = _AKLogSystem();
    v14 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_193225000, log, type, "Failed to load AKAgeRangeDefaults.json", v13, 2u);
    }

    objc_storeStrong(&location, 0);
    v19 = MEMORY[0x1E69E5928](&unk_1F07B5250);
    v12 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  v2 = v19;

  return v2;
}

+ (id)extractAgeRangeConfigFromGlobalConfig:(id)a3
{
  v38 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = [MEMORY[0x1E695DF58] currentLocale];
  v22 = [v23 objectForKey:*MEMORY[0x1E695D978]];
  v36 = [v22 uppercaseString];
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v23);
  v35 = [location[0] objectForKeyedSubscript:@"countries"];
  v33 = 0;
  v24 = 1;
  if (v35)
  {
    v34 = [v35 objectForKeyedSubscript:v36];
    v33 = 1;
    v24 = v34 == 0;
  }

  if (v33)
  {
    MEMORY[0x1E69E5920](v34);
  }

  if (v24)
  {
    v32 = _AKLogSystem();
    v31 = 16;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      log = v32;
      type = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_error_impl(&dword_193225000, log, type, "Global config has no countries or target country. Defaulting to use local values.", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v19 = [v38 defaultConfigDictionary];
    v3 = [v19 objectForKeyedSubscript:@"countries"];
    v4 = v35;
    v35 = v3;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v19);
  }

  v17 = objc_opt_class();
  v18 = [v35 objectForKeyedSubscript:v36];
  v29 = _AKSafeCast_10(v17, v18);
  MEMORY[0x1E69E5920](v18);
  if (!v29)
  {
    v28 = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v15 = v28;
      v16 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_error_impl(&dword_193225000, v15, v16, "No entry found for account country. Defaulting to US", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v13 = objc_opt_class();
    v14 = [v35 objectForKeyedSubscript:@"US"];
    v5 = _AKSafeCast_10(v13, v14);
    v6 = v29;
    v29 = v5;
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v14);
  }

  v9 = [AKAgeRangeSettings alloc];
  v11 = [v29 objectForKeyedSubscript:@"U13"];
  v8 = [v11 intValue];
  v10 = [v29 objectForKeyedSubscript:@"U18"];
  v25 = -[AKAgeRangeSettings initWithU13Limit:u18Limit:](v9, "initWithU13Limit:u18Limit:", v8, [v10 intValue]);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  v12 = MEMORY[0x1E69E5928](v25);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);

  return v12;
}

@end