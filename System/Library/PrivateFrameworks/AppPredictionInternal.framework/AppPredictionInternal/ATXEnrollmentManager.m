@interface ATXEnrollmentManager
+ (id)getUserIdForScheme:(id)a3 enrollmentPeriod:(double)a4 enrollmentRate:(double)a5;
+ (id)getUserIdForScheme:(id)a3 enrollmentPeriod:(double)a4 enrollmentRate:(double)a5 currentDate:(id)a6 defaultsDomain:(id)a7;
+ (id)readCurrentEnrollmentUserIdFromDefaults:(id)a3 scheme:(id)a4;
+ (id)readLastEnrollmentDateFromDefaults:(id)a3 scheme:(id)a4;
+ (void)setCurrentEnrollmentUserId:(id)a3 forUserDefaults:(id)a4 scheme:(id)a5;
+ (void)setLastEnrollmentToDate:(id)a3 forUserDefaults:(id)a4 scheme:(id)a5;
@end

@implementation ATXEnrollmentManager

+ (id)getUserIdForScheme:(id)a3 enrollmentPeriod:(double)a4 enrollmentRate:(double)a5
{
  v7 = MEMORY[0x277CBEAA8];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [ATXEnrollmentManager getUserIdForScheme:v8 enrollmentPeriod:v9 enrollmentRate:*MEMORY[0x277CEBD00] currentDate:a4 defaultsDomain:a5];

  return v10;
}

+ (id)getUserIdForScheme:(id)a3 enrollmentPeriod:(double)a4 enrollmentRate:(double)a5 currentDate:(id)a6 defaultsDomain:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v14];
  v16 = a1;
  objc_sync_enter(v16);
  v17 = [ATXEnrollmentManager readLastEnrollmentDateFromDefaults:v15 scheme:v12];
  if (v17 && ([v13 timeIntervalSinceDate:v17], v18 < a4))
  {
    v19 = [ATXEnrollmentManager readCurrentEnrollmentUserIdFromDefaults:v15 scheme:v12];
  }

  else
  {
    if ([_ATXAggregateLogger yesWithProbability:a5])
    {
      v20 = [MEMORY[0x277CCAD78] UUID];
      v19 = [v20 UUIDString];

      [ATXEnrollmentManager setCurrentEnrollmentUserId:v19 forUserDefaults:v15 scheme:v12];
    }

    else
    {
      [ATXEnrollmentManager setCurrentEnrollmentUserId:&stru_2839A6058 forUserDefaults:v15 scheme:v12];
      v19 = 0;
    }

    [ATXEnrollmentManager setLastEnrollmentToDate:v13 forUserDefaults:v15 scheme:v12];
  }

  objc_sync_exit(v16);
  if ([v19 length])
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

+ (void)setCurrentEnrollmentUserId:(id)a3 forUserDefaults:(id)a4 scheme:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 stringWithFormat:@"%@::%@", a5, @"currentEnrollmentUserId"];
  [v8 setObject:v9 forKey:v10];
}

+ (id)readCurrentEnrollmentUserIdFromDefaults:(id)a3 scheme:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@::%@", a4, @"currentEnrollmentUserId"];
  v8 = [v6 stringForKey:v7];

  return v8;
}

+ (void)setLastEnrollmentToDate:(id)a3 forUserDefaults:(id)a4 scheme:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = a3;
  v12 = [v7 stringWithFormat:@"%@::%@", a5, @"lastEnrolled"];
  [v9 timeIntervalSince1970];
  v11 = v10;

  [v8 setDouble:v12 forKey:v11];
}

+ (id)readLastEnrollmentDateFromDefaults:(id)a3 scheme:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@::%@", a4, @"lastEnrolled"];
  [v6 doubleForKey:v7];
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