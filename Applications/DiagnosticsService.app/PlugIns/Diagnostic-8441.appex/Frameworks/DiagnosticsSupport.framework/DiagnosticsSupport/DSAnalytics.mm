@interface DSAnalytics
+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error;
+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict;
@end

@implementation DSAnalytics

+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error
{
  if (error)
  {
    errorCopy = error;
    domain = [errorCopy domain];
    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    localizedDescription = [errorCopy localizedDescription];
  }

  else
  {
    v7 = &off_1EDE8;
    localizedDescription = &stru_1C970;
    domain = &stru_1C970;
  }

  v10[0] = @"errorDomain";
  v10[1] = @"errorCode";
  v11[0] = domain;
  v11[1] = v7;
  v10[2] = @"errorMessage";
  v11[2] = localizedDescription;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  [DSAnalytics sendAnalyticsWithEvent:event payloadDict:v9];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict
{
  if (event > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_181F8[event];
    v5 = off_18260[event];
  }

  v6 = [NSMutableDictionary dictionaryWithDictionary:dict];
  [v6 setObject:v4 forKeyedSubscript:@"type"];
  AnalyticsSendEvent();
}

@end