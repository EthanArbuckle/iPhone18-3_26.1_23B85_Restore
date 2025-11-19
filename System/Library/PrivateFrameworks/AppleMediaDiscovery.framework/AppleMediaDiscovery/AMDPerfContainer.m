@interface AMDPerfContainer
+ (float)getMemoryUsage:(id)a3 logType:(id)a4 timeDelta:(double)a5;
- (AMDPerfContainer)initWithSwitch:(BOOL)a3 atLevel:(char)a4;
- (double)getTime;
@end

@implementation AMDPerfContainer

- (AMDPerfContainer)initWithSwitch:(BOOL)a3 atLevel:(char)a4
{
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v16 = 0;
  v12.receiver = self;
  v12.super_class = AMDPerfContainer;
  v16 = [(AMDPerfContainer *)&v12 init];
  objc_storeStrong(&v16, v16);
  [(AMDPerfContainer *)v16 setIsEnabled:v14];
  [(AMDPerfContainer *)v16 setLevel:v13];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AMDPerfContainer *)v16 setMemoryUsage:?];
  MEMORY[0x277D82BD8](v7);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AMDPerfContainer *)v16 setTimeUsage:?];
  MEMORY[0x277D82BD8](v8);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AMDPerfContainer *)v16 setSamples:?];
  MEMORY[0x277D82BD8](v9);
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v5) = info.denom;
  LODWORD(v4) = info.numer;
  [(AMDPerfContainer *)v16 setTimeConversionFactor:v4 / (1000000000.0 * v5)];
  v10 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  return v10;
}

- (double)getTime
{
  v4 = mach_absolute_time();
  [(AMDPerfContainer *)self timeConversionFactor];
  return v4 * v2;
}

+ (float)getMemoryUsage:(id)a3 logType:(id)a4 timeDelta:(double)a5
{
  v26 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = *&a5;
  bzero(v17, 0x174uLL);
  task_info_outCnt = 93;
  error_value = task_info(*MEMORY[0x277D85F48], 0x16u, v17, &task_info_outCnt);
  if (error_value)
  {
    v10 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v6 = mach_error_string(error_value);
      __os_log_helper_16_2_1_8_32(v24, v6);
      _os_log_error_impl(&dword_240CB9000, v10, OS_LOG_TYPE_ERROR, "Error retrieving task_info: %s", v24, 0xCu);
    }

    objc_storeStrong(&v10, 0);
    v23 = 0.0;
    v11 = 1;
  }

  else
  {
    v14 = v18 + v19;
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_4_8_64_8_64_8_0_8_0(v25, location[0], v21, COERCE__INT64(v14 / 1048576.0), v20);
      _os_log_impl(&dword_240CB9000, oslog, type, "%@ %@: memory usage: %f MB, timeDelta: %.3f", v25, 0x2Au);
    }

    objc_storeStrong(&oslog, 0);
    v5 = v14 / 1048576.0;
    v23 = v5;
    v11 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v23;
}

@end