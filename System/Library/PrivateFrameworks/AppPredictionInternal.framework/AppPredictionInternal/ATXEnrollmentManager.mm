@interface ATXEnrollmentManager
+ (id)getUserIdForScheme:(id)scheme enrollmentPeriod:(double)period enrollmentRate:(double)rate;
+ (id)getUserIdForScheme:(id)scheme enrollmentPeriod:(double)period enrollmentRate:(double)rate currentDate:(id)date defaultsDomain:(id)domain;
+ (id)readCurrentEnrollmentUserIdFromDefaults:(id)defaults scheme:(id)scheme;
+ (id)readLastEnrollmentDateFromDefaults:(id)defaults scheme:(id)scheme;
+ (void)setCurrentEnrollmentUserId:(id)id forUserDefaults:(id)defaults scheme:(id)scheme;
+ (void)setLastEnrollmentToDate:(id)date forUserDefaults:(id)defaults scheme:(id)scheme;
@end

@implementation ATXEnrollmentManager

+ (id)getUserIdForScheme:(id)scheme enrollmentPeriod:(double)period enrollmentRate:(double)rate
{
  v7 = MEMORY[0x277CBEAA8];
  schemeCopy = scheme;
  v9 = objc_alloc_init(v7);
  v10 = [ATXEnrollmentManager getUserIdForScheme:schemeCopy enrollmentPeriod:v9 enrollmentRate:*MEMORY[0x277CEBD00] currentDate:period defaultsDomain:rate];

  return v10;
}

+ (id)getUserIdForScheme:(id)scheme enrollmentPeriod:(double)period enrollmentRate:(double)rate currentDate:(id)date defaultsDomain:(id)domain
{
  schemeCopy = scheme;
  dateCopy = date;
  domainCopy = domain;
  v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:domainCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = [ATXEnrollmentManager readLastEnrollmentDateFromDefaults:v15 scheme:schemeCopy];
  if (v17 && ([dateCopy timeIntervalSinceDate:v17], v18 < period))
  {
    uUIDString = [ATXEnrollmentManager readCurrentEnrollmentUserIdFromDefaults:v15 scheme:schemeCopy];
  }

  else
  {
    if ([_ATXAggregateLogger yesWithProbability:rate])
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [ATXEnrollmentManager setCurrentEnrollmentUserId:uUIDString forUserDefaults:v15 scheme:schemeCopy];
    }

    else
    {
      [ATXEnrollmentManager setCurrentEnrollmentUserId:&stru_2839A6058 forUserDefaults:v15 scheme:schemeCopy];
      uUIDString = 0;
    }

    [ATXEnrollmentManager setLastEnrollmentToDate:dateCopy forUserDefaults:v15 scheme:schemeCopy];
  }

  objc_sync_exit(selfCopy);
  if ([uUIDString length])
  {
    v21 = uUIDString;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

+ (void)setCurrentEnrollmentUserId:(id)id forUserDefaults:(id)defaults scheme:(id)scheme
{
  v7 = MEMORY[0x277CCACA8];
  defaultsCopy = defaults;
  idCopy = id;
  v10 = [v7 stringWithFormat:@"%@::%@", scheme, @"currentEnrollmentUserId"];
  [defaultsCopy setObject:idCopy forKey:v10];
}

+ (id)readCurrentEnrollmentUserIdFromDefaults:(id)defaults scheme:(id)scheme
{
  v5 = MEMORY[0x277CCACA8];
  defaultsCopy = defaults;
  v7 = [v5 stringWithFormat:@"%@::%@", scheme, @"currentEnrollmentUserId"];
  v8 = [defaultsCopy stringForKey:v7];

  return v8;
}

+ (void)setLastEnrollmentToDate:(id)date forUserDefaults:(id)defaults scheme:(id)scheme
{
  v7 = MEMORY[0x277CCACA8];
  defaultsCopy = defaults;
  dateCopy = date;
  v12 = [v7 stringWithFormat:@"%@::%@", scheme, @"lastEnrolled"];
  [dateCopy timeIntervalSince1970];
  v11 = v10;

  [defaultsCopy setDouble:v12 forKey:v11];
}

+ (id)readLastEnrollmentDateFromDefaults:(id)defaults scheme:(id)scheme
{
  v5 = MEMORY[0x277CCACA8];
  defaultsCopy = defaults;
  v7 = [v5 stringWithFormat:@"%@::%@", scheme, @"lastEnrolled"];
  [defaultsCopy doubleForKey:v7];
  v9 = v8;

  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v9];
  }

  return v10;
}

@end