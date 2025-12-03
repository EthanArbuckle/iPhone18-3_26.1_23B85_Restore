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
  userDefaults = [self userDefaults];
  enableCoreAnalyticEventKey = [self enableCoreAnalyticEventKey];
  v5 = [userDefaults objectForKey:enableCoreAnalyticEventKey];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)isSurveyEnabled
{
  userDefaults = [self userDefaults];
  internalSurveyEnabledKey = [self internalSurveyEnabledKey];
  v5 = [userDefaults objectForKey:internalSurveyEnabledKey];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = [self shouldAllowSurveyByDefault];
  }

  v7 = bOOLValue;

  return v7;
}

+ (void)disableInternalUIDSurveyNotifications
{
  userDefaults = [self userDefaults];
  internalSurveyEnabledKey = [self internalSurveyEnabledKey];
  [userDefaults setObject:&__kCFBooleanFalse forKey:internalSurveyEnabledKey];
}

+ (void)recordDateOfSurveyInteraction
{
  userDefaults = [self userDefaults];
  v3 = +[NSDate date];
  lastSurveyReportKey = [self lastSurveyReportKey];
  [userDefaults setObject:v3 forKey:lastSurveyReportKey];
}

+ (BOOL)meetsThresholdForPresenting
{
  if (arc4random_uniform([self _sampleRate]))
  {
    return 0;
  }

  return [self minimumTimeBetweenLastReportHasElapsed];
}

+ (BOOL)minimumTimeBetweenLastReportHasElapsed
{
  _dateOfLastReport = [self _dateOfLastReport];
  v3 = [_dateOfLastReport dateByAddingTimeInterval:2419200.0];
  if (_dateOfLastReport)
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
  userDefaults = [self userDefaults];
  lastSurveyReportKey = [self lastSurveyReportKey];
  v5 = [userDefaults objectForKey:lastSurveyReportKey];

  return v5;
}

+ (unsigned)_sampleRate
{
  userDefaults = [self userDefaults];
  surveySampleRateKey = [self surveySampleRateKey];
  v5 = [userDefaults objectForKey:surveySampleRateKey];

  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 10;
  }

  return intValue;
}

@end