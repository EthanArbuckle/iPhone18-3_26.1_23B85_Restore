@interface AMDFrameworkMetrics
+ (id)getValueForKey:(id)key;
+ (void)flush;
+ (void)log:(id)log withKey:(id)key atVerbosity:(char)verbosity;
+ (void)provisionInstanceAtVerbosity:(char)verbosity andAction:(id)action andVersion:(id)version andBuild:(id)build andStorefrontId:(id)id withLoggingProbability:(id)probability;
@end

@implementation AMDFrameworkMetrics

+ (void)provisionInstanceAtVerbosity:(char)verbosity andAction:(id)action andVersion:(id)version andBuild:(id)build andStorefrontId:(id)id withLoggingProbability:(id)probability
{
  selfCopy = self;
  v22 = a2;
  verbosityCopy = verbosity;
  location = 0;
  objc_storeStrong(&location, action);
  v19 = 0;
  objc_storeStrong(&v19, version);
  v18 = 0;
  objc_storeStrong(&v18, build);
  v17 = 0;
  objc_storeStrong(&v17, id);
  v16 = 0;
  objc_storeStrong(&v16, probability);
  v8 = [AMDMetricsContainer alloc];
  v15 = [(AMDMetricsContainer *)v8 initWithLevel:verbosityCopy andAction:location andVersion:v19 andBuild:v18 andStorefrontId:v17 withLoggingProbability:v16];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:v15 forKey:@"__AMDMetricsContainer"];
  MEMORY[0x277D82BD8](threadDictionary);
  MEMORY[0x277D82BD8](currentThread);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

+ (void)log:(id)log withKey:(id)key atVerbosity:(char)verbosity
{
  v42 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, log);
  v35 = 0;
  objc_storeStrong(&v35, key);
  verbosityCopy = verbosity;
  if (v35)
  {
    if (location[0])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v25 = 1;
        v12 = MEMORY[0x277CCAAA0];
        v38 = v35;
        v39 = location[0];
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v14 = [v12 isValidJSONObject:?];
        MEMORY[0x277D82BD8](v13);
        if ((v14 & 1) == 0)
        {
          v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v23 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v37, v35);
            _os_log_error_impl(&dword_240CB9000, v24, v23, "Unserializable info passed to Figaro logger for key: %@", v37, 0xCu);
          }

          objc_storeStrong(&v24, 0);
          v25 = 0;
        }

        currentThread = [MEMORY[0x277CCACC8] currentThread];
        threadDictionary = [currentThread threadDictionary];
        v22 = [threadDictionary objectForKey:@"__AMDMetricsContainer"];
        MEMORY[0x277D82BD8](threadDictionary);
        MEMORY[0x277D82BD8](currentThread);
        if (v22)
        {
          verbosity = [v22 verbosity];
          if (verbosity >= verbosityCopy)
          {
            if (v25)
            {
              logData = [v22 logData];
              [logData setObject:location[0] forKey:v35];
              MEMORY[0x277D82BD8](logData);
              v30 = 0;
            }

            else
            {
              logData2 = [v22 logData];
              [logData2 setObject:@"Unserializable info passed" forKey:v35];
              MEMORY[0x277D82BD8](logData2);
              v30 = 1;
            }
          }

          else
          {
            v30 = 1;
          }
        }

        else
        {
          v21 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v20 = 1;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v8 = v21;
            v9 = v20;
            __os_log_helper_16_0_0(v19);
            _os_log_impl(&dword_240CB9000, v8, v9, "No metrics container currently defined. Skipping log", v19, 2u);
          }

          objc_storeStrong(&v21, 0);
          v30 = 1;
        }

        objc_storeStrong(&v22, 0);
      }

      else
      {
        v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v26 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v40, v35);
          _os_log_error_impl(&dword_240CB9000, v27, v26, "Unsupported data type being logged for key : %@", v40, 0xCu);
        }

        objc_storeStrong(&v27, 0);
        v30 = 1;
      }
    }

    else
    {
      v29 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v41, v35);
        _os_log_error_impl(&dword_240CB9000, v29, v28, "Attempting to log nil info to Figaro logger for key : %@", v41, 0xCu);
      }

      objc_storeStrong(&v29, 0);
      v30 = 1;
    }
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_error_impl(&dword_240CB9000, log, type, "Attempting to log nil key to Figaro logger", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)getValueForKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v11 = [threadDictionary objectForKey:@"__AMDMetricsContainer"];
  MEMORY[0x277D82BD8](threadDictionary);
  MEMORY[0x277D82BD8](currentThread);
  v9 = 0;
  v8 = 1;
  if (v11)
  {
    logData = [v11 logData];
    v9 = 1;
    v8 = logData == 0;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](logData);
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    logData2 = [v11 logData];
    v13 = [logData2 objectForKey:location[0]];
    MEMORY[0x277D82BD8](logData2);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v3 = v13;

  return v3;
}

+ (void)flush
{
  v40 = *MEMORY[0x277D85DE8];
  v37[2] = self;
  v37[1] = a2;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v37[0] = [threadDictionary objectForKey:@"__AMDMetricsContainer"];
  MEMORY[0x277D82BD8](threadDictionary);
  MEMORY[0x277D82BD8](currentThread);
  if (v37[0])
  {
    v32 = arc4random() / 4294967300.0;
    loggingProbability = [v37[0] loggingProbability];
    [loggingProbability doubleValue];
    v17 = v2;
    MEMORY[0x277D82BD8](loggingProbability);
    if (v32 <= v17)
    {
      v11 = MEMORY[0x277CCAAA0];
      logData = [v37[0] logData];
      v13 = [v11 isValidJSONObject:?];
      MEMORY[0x277D82BD8](logData);
      if (v13)
      {
        v28 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v27 = 1;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v9 = v28;
          v10 = v27;
          __os_log_helper_16_0_0(v26);
          _os_log_impl(&dword_240CB9000, v9, v10, "Flushing logs", v26, 2u);
        }

        objc_storeStrong(&v28, 0);
        v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v24 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          logData2 = [v37[0] logData];
          __os_log_helper_16_2_1_8_64(v39, logData2);
          _os_log_debug_impl(&dword_240CB9000, v25, v24, "Log data: %@", v39, 0xCu);
          MEMORY[0x277D82BD8](logData2);
        }

        objc_storeStrong(&v25, 0);
        metricEvent = [v37[0] metricEvent];
        logData3 = [v37[0] logData];
        [metricEvent setProperty:? forBodyKey:?];
        MEMORY[0x277D82BD8](logData3);
        MEMORY[0x277D82BD8](metricEvent);
        v23 = [objc_alloc(MEMORY[0x277CEE598]) initWithContainerID:@"com.apple.AppleMediaServices" bag:0];
        v6 = v23;
        metricEvent2 = [v37[0] metricEvent];
        [v6 enqueueEvent:?];
        MEMORY[0x277D82BD8](metricEvent2);
        objc_storeStrong(&v23, 0);
      }

      else
      {
        v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          logData4 = [v37[0] logData];
          __os_log_helper_16_2_1_8_64(v38, logData4);
          _os_log_error_impl(&dword_240CB9000, v22, OS_LOG_TYPE_ERROR, "Cannot flush unserializable log data: %@", v38, 0xCu);
          MEMORY[0x277D82BD8](logData4);
        }

        objc_storeStrong(&v22, 0);
      }

      v33 = 0;
    }

    else
    {
      v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v30 = 1;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v14 = v31;
        v15 = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_impl(&dword_240CB9000, v14, v15, "Skipping logging for this event invocation", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      v33 = 1;
    }
  }

  else
  {
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v35 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v35;
      __os_log_helper_16_0_0(v34);
      _os_log_error_impl(&dword_240CB9000, log, type, "Programmer error: no metrics container!", v34, 2u);
    }

    objc_storeStrong(&location, 0);
    v33 = 1;
  }

  objc_storeStrong(v37, 0);
  *MEMORY[0x277D85DE8];
}

@end