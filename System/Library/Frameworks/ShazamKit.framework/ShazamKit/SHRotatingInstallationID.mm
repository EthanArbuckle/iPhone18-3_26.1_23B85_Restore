@interface SHRotatingInstallationID
+ (id)cachedInstallationForDays:(int64_t)days;
+ (id)cachedInstallationIDWithMaxAge:(double)age;
+ (id)creationDate;
+ (id)installationID;
+ (void)setCreationDate:(id)date;
+ (void)setInstallationID:(id)d;
@end

@implementation SHRotatingInstallationID

+ (id)cachedInstallationForDays:(int64_t)days
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setDay:-days];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [currentCalendar setTimeZone:v7];

  date = [MEMORY[0x277CBEAA8] date];
  v9 = [currentCalendar dateByAddingComponents:v5 toDate:date options:0];

  v10 = [currentCalendar startOfDayForDate:v9];
  [v10 timeIntervalSinceNow];
  v12 = [self cachedInstallationIDWithMaxAge:fabs(v11)];

  return v12;
}

+ (id)cachedInstallationIDWithMaxAge:(double)age
{
  v20 = *MEMORY[0x277D85DE8];
  installationID = [self installationID];
  creationDate = [self creationDate];
  [creationDate timeIntervalSinceNow];
  if (installationID && creationDate && ((v8 = fabs(v7), v7 < 0.0) ? (v9 = v8 > age) : (v9 = 1), !v9))
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412290;
      v19 = installationID;
      _os_log_impl(&dword_230F52000, v14, OS_LOG_TYPE_DEBUG, "Using cached installation ID: %@", &v18, 0xCu);
    }

    uUIDString = installationID;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412290;
      v19 = uUIDString;
      _os_log_impl(&dword_230F52000, v12, OS_LOG_TYPE_DEBUG, "Using new installation ID: %@", &v18, 0xCu);
    }

    [self setInstallationID:uUIDString];
    date = [MEMORY[0x277CBEAA8] date];
    [self setCreationDate:date];
  }

  v16 = *MEMORY[0x277D85DE8];

  return uUIDString;
}

+ (void)setInstallationID:(id)d
{
  v3 = MEMORY[0x277CBEBD0];
  dCopy = d;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:dCopy forKey:@"com.apple.shazamd.installation-id"];
}

+ (id)installationID
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"com.apple.shazamd.installation-id"];

  return v3;
}

+ (void)setCreationDate:(id)date
{
  v3 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:dateCopy forKey:@"com.apple.shazamd.installation-id-creation-date"];
}

+ (id)creationDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"com.apple.shazamd.installation-id-creation-date"];

  return v3;
}

@end