@interface RPStringUtility
+ (BOOL)isInvalidBundleId:(id)a3;
+ (id)numberFromString:(id)a3;
+ (unint64_t)rotatingDeviceUniqueID;
+ (void)rotatingDeviceUniqueID;
@end

@implementation RPStringUtility

+ (id)numberFromString:(id)a3
{
  v3 = MEMORY[0x277CCABB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v5 numberFromString:v4];

  return v6;
}

+ (unint64_t)rotatingDeviceUniqueID
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"kSCDeviceUniqueID"];
    if (!v4)
    {
      v5 = [MEMORY[0x277CCAD78] UUID];
      v4 = [v5 UUIDString];

      [v3 setObject:v4 forKey:@"kSCDeviceUniqueID"];
      [v3 synchronize];
    }

    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v6 components:8196 fromDate:v7];

    v9 = [v8 weekOfYear];
    v10 = [v8 yearForWeekOfYear];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%lu", v4, v10, v9];
    v12 = [v11 hash];
  }

  else
  {
    +[(RPStringUtility *)&v14];
    v12 = v14;
  }

  return v12;
}

+ (BOOL)isInvalidBundleId:(id)a3
{
  v3 = a3;
  if ([v3 length] && objc_msgSend(v3, "caseInsensitiveCompare:", @"(null)") && objc_msgSend(v3, "caseInsensitiveCompare:", @"Unknown"))
  {
    v4 = 0;
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPStringUtility isInvalidBundleId:v3];
    }

    v4 = 1;
  }

  return v4;
}

+ (void)rotatingDeviceUniqueID
{
  v7 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 136446466;
    v4 = "+[RPStringUtility rotatingDeviceUniqueID]";
    v5 = 1024;
    v6 = 33;
    _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Could not get NSUserDefaults shared defaults object", &v3, 0x12u);
  }

  *a1 = 0;
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isInvalidBundleId:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136446722;
  v3 = "+[RPStringUtility isInvalidBundleId:]";
  v4 = 1024;
  v5 = 54;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d bundleID=%@ is invalid", &v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

@end