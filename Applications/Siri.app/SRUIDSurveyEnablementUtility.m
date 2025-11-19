@interface SRUIDSurveyEnablementUtility
+ (BOOL)isSurveyEnabled;
+ (BOOL)meetsThresholdForPresenting;
+ (BOOL)minimumTimeBetweenLastReportHasElapsed;
+ (BOOL)shouldEnableCoreAnalyticEvent;
+ (id)_dateOfLastReport;
+ (id)userDefaults;
+ (unsigned)_sampleRate;
+ (void)disableInternalUIDSurveyNotifications;
+ (void)recordDateOfSurveyInteraction;
@end

@implementation SRUIDSurveyEnablementUtility

+ (id)userDefaults
{
  if (qword_10018F188 != -1)
  {
    sub_1000CB8F0();
  }

  v3 = qword_10018F180;

  return v3;
}

+ (BOOL)shouldEnableCoreAnalyticEvent
{
  v3 = [a1 userDefaults];
  v4 = [a1 enableCoreAnalyticEventKey];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (BOOL)isSurveyEnabled
{
  v3 = [a1 userDefaults];
  v4 = [a1 internalSurveyEnabledKey];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = [a1 shouldAllowSurveyByDefault];
  }

  v7 = v6;

  return v7;
}

+ (void)disableInternalUIDSurveyNotifications
{
  v4 = [a1 userDefaults];
  v3 = [a1 internalSurveyEnabledKey];
  [v4 setObject:&__kCFBooleanFalse forKey:v3];
}

+ (void)recordDateOfSurveyInteraction
{
  v5 = [a1 userDefaults];
  v3 = +[NSDate date];
  v4 = [a1 lastSurveyReportKey];
  [v5 setObject:v3 forKey:v4];
}

+ (BOOL)meetsThresholdForPresenting
{
  if (arc4random_uniform([a1 _sampleRate]))
  {
    return 0;
  }

  return [a1 minimumTimeBetweenLastReportHasElapsed];
}

+ (BOOL)minimumTimeBetweenLastReportHasElapsed
{
  v2 = [a1 _dateOfLastReport];
  v3 = [v2 dateByAddingTimeInterval:2419200.0];
  if (v2)
  {
    v4 = +[NSDate date];
    v5 = [v4 compare:v3] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)_dateOfLastReport
{
  v3 = [a1 userDefaults];
  v4 = [a1 lastSurveyReportKey];
  v5 = [v3 objectForKey:v4];

  return v5;
}

+ (unsigned)_sampleRate
{
  v3 = [a1 userDefaults];
  v4 = [a1 surveySampleRateKey];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = 10;
  }

  return v6;
}

@end