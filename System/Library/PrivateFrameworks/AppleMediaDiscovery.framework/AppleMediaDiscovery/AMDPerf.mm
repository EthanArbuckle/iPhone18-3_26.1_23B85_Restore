@interface AMDPerf
+ (id)generatePerformanceDict;
+ (id)getContainer;
+ (void)enable:(BOOL)a3;
+ (void)endMonitoringEvent:(id)a3;
+ (void)log:(id)a3 atLevel:(int)a4;
+ (void)provision;
+ (void)sampleForKey:(id)a3;
+ (void)setVerbosity:(char)a3;
+ (void)startMonitoringEvent:(id)a3;
@end

@implementation AMDPerf

+ (void)provision
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = [[AMDPerfContainer alloc] initWithSwitch:1 atLevel:0];
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v3 threadDictionary];
  [v2 setObject:v4[0] forKey:@"__AMDPerfContainer"];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v4, 0);
}

+ (id)getContainer
{
  v11[2] = a1;
  v11[1] = a2;
  v7 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [v7 threadDictionary];
  v11[0] = [v6 objectForKey:@"__AMDPerfContainer"];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  if (v11[0])
  {
    if ([v11[0] isEnabled])
    {
      v12 = MEMORY[0x277D82BE0](v11[0]);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v9 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_240CB9000, log, type, "Programmer error: no perf container!", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  v2 = v12;

  return v2;
}

+ (void)enable:(BOOL)a3
{
  v6 = a1;
  v5 = a2;
  v4 = a3;
  location = +[AMDPerf getContainer];
  if (location)
  {
    [location setIsEnabled:v4];
  }

  objc_storeStrong(&location, 0);
}

+ (void)setVerbosity:(char)a3
{
  v6 = a1;
  v5 = a2;
  v4 = a3;
  location = +[AMDPerf getContainer];
  if (location)
  {
    [location setLevel:v4];
  }

  objc_storeStrong(&location, 0);
}

+ (void)startMonitoringEvent:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = +[AMDPerf getContainer];
  if (v17)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v17 getTime];
    v13 = v3;
    [AMDPerfContainer getMemoryUsage:location[0] logType:0.0 timeDelta:?];
    v12 = v4;
    v6 = v15;
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    [v6 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v7);
    v8 = v14;
    LODWORD(v5) = v12;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v8 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v9);
    v10 = [v17 timeUsage];
    [v10 setObject:v15 forKey:location[0]];
    MEMORY[0x277D82BD8](v10);
    v11 = [v17 memoryUsage];
    [v11 setObject:v14 forKey:location[0]];
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

+ (void)endMonitoringEvent:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = +[AMDPerf getContainer];
  if (v22)
  {
    v14 = [v22 timeUsage];
    v20 = [v14 objectForKey:location[0]];
    MEMORY[0x277D82BD8](v14);
    v15 = [v22 memoryUsage];
    v19 = [v15 objectForKey:location[0]];
    MEMORY[0x277D82BD8](v15);
    if (v20 && v19)
    {
      [v22 getTime];
      v17 = v3;
      v8 = v3;
      v7 = [v20 objectForKey:@"start"];
      [v7 doubleValue];
      v9 = v8 - v4;
      MEMORY[0x277D82BD8](v7);
      [AMDPerfContainer getMemoryUsage:location[0] logType:v9 timeDelta:?];
      v16 = v5;
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
      [v20 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v10);
      LODWORD(v6) = v16;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      [v19 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v11);
      v12 = [v22 timeUsage];
      [v12 setObject:v20 forKey:location[0]];
      MEMORY[0x277D82BD8](v12);
      v13 = [v22 memoryUsage];
      [v13 setObject:v19 forKey:location[0]];
      MEMORY[0x277D82BD8](v13);
      v21 = 0;
    }

    else
    {
      v18 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v24, location[0]);
        _os_log_error_impl(&dword_240CB9000, v18, OS_LOG_TYPE_ERROR, "Programmer error: Ending monitoring event '%@' without starting it", v24, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      v21 = 1;
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v21 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)generatePerformanceDict
{
  v42 = *MEMORY[0x277D85DE8];
  v39[2] = a1;
  v39[1] = a2;
  v39[0] = +[AMDPerf getContainer];
  if (v39[0])
  {
    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    v24 = [v39[0] timeUsage];
    v37 = [v23 initWithCapacity:{objc_msgSend(v24, "count")}];
    MEMORY[0x277D82BD8](v24);
    memset(__b, 0, sizeof(__b));
    obj = [v39[0] timeUsage];
    v26 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
    if (v26)
    {
      v20 = *__b[2];
      v21 = 0;
      v22 = v26;
      while (1)
      {
        v19 = v21;
        if (*__b[2] != v20)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(__b[1] + 8 * v21);
        v17 = [v39[0] memoryUsage];
        v34 = [v17 objectForKey:v36];
        MEMORY[0x277D82BD8](v17);
        v18 = [v39[0] timeUsage];
        v33 = [v18 objectForKey:v36];
        MEMORY[0x277D82BD8](v18);
        v32 = [v33 objectForKey:@"end"];
        v31 = [v33 objectForKey:@"start"];
        v30 = -1.0;
        if (v32 && v31)
        {
          [v32 doubleValue];
          v16 = v2;
          [v31 doubleValue];
          v30 = v16 - v3;
        }

        v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v28 = [v34 objectForKey:@"start"];
        location = [v34 objectForKey:@"end"];
        if (v28)
        {
          v14 = v29;
          v13 = MEMORY[0x277CCABB0];
          [v28 floatValue];
          v15 = [v13 numberWithFloat:?];
          [v14 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v15);
        }

        if (location)
        {
          v11 = v29;
          v10 = MEMORY[0x277CCABB0];
          [location floatValue];
          v12 = [v10 numberWithFloat:?];
          [v11 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v12);
        }

        v8 = v29;
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
        [v8 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v9);
        [v37 setObject:v29 forKey:v36];
        objc_storeStrong(&location, 0);
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v34, 0);
        ++v21;
        if (v19 + 1 >= v22)
        {
          v21 = 0;
          v22 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
          if (!v22)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v6 = v37;
    v7 = [v39[0] samples];
    [v6 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v7);
    v40 = MEMORY[0x277D82BE0](v37);
    v38 = 1;
    objc_storeStrong(&v37, 0);
  }

  else
  {
    v40 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
    v38 = 1;
  }

  objc_storeStrong(v39, 0);
  *MEMORY[0x277D85DE8];
  v4 = v40;

  return v4;
}

+ (void)sampleForKey:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = +[AMDPerf getContainer];
  if (v13)
  {
    v10 = [v13 samples];
    v11 = [v10 objectForKey:location[0]];
    MEMORY[0x277D82BD8](v10);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      MEMORY[0x277D82BD8](0);
    }

    v5 = v11;
    v3 = MEMORY[0x277CCABB0];
    [v13 getTime];
    v8 = [v3 numberWithDouble:?];
    v15[0] = v8;
    v4 = MEMORY[0x277CCABB0];
    [AMDPerfContainer getMemoryUsage:location[0] logType:@"sample" timeDelta:0.0];
    v7 = [v4 numberWithFloat:?];
    v15[1] = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [v5 addObject:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v9 = [v13 samples];
    [v9 setObject:v11 forKey:location[0]];
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)log:(id)a3 atLevel:(int)a4
{
  v11 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = +[AMDPerf getContainer];
  if (v7)
  {
    if ([v7 level] < v8)
    {
      v6 = 1;
    }

    else
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v10, location[0]);
        _os_log_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_INFO, "%@", v10, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end