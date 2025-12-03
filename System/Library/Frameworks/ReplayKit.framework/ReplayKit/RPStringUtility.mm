@interface RPStringUtility
+ (BOOL)isInvalidBundleId:(id)id;
+ (id)numberFromString:(id)string;
+ (unint64_t)rotatingDeviceUniqueID;
+ (void)rotatingDeviceUniqueID;
@end

@implementation RPStringUtility

+ (id)numberFromString:(id)string
{
  v3 = MEMORY[0x277CCABB8];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = [v5 numberFromString:stringCopy];

  return v6;
}

+ (unint64_t)rotatingDeviceUniqueID
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = standardUserDefaults;
  if (standardUserDefaults)
  {
    uUIDString = [standardUserDefaults objectForKey:@"kSCDeviceUniqueID"];
    if (!uUIDString)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [v3 setObject:uUIDString forKey:@"kSCDeviceUniqueID"];
      [v3 synchronize];
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [currentCalendar components:8196 fromDate:date];

    weekOfYear = [v8 weekOfYear];
    yearForWeekOfYear = [v8 yearForWeekOfYear];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%lu", uUIDString, yearForWeekOfYear, weekOfYear];
    v12 = [v11 hash];
  }

  else
  {
    +[(RPStringUtility *)&v14];
    v12 = v14;
  }

  return v12;
}

+ (BOOL)isInvalidBundleId:(id)id
{
  idCopy = id;
  if ([idCopy length] && objc_msgSend(idCopy, "caseInsensitiveCompare:", @"(null)") && objc_msgSend(idCopy, "caseInsensitiveCompare:", @"Unknown"))
  {
    v4 = 0;
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPStringUtility isInvalidBundleId:idCopy];
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

  *self = 0;
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