@interface DSAnalytics
+ (void)sendAnalyticsWithEvent:(unint64_t)a3 error:(id)a4;
+ (void)sendAnalyticsWithEvent:(unint64_t)a3 payloadDict:(id)a4;
@end

@implementation DSAnalytics

+ (void)sendAnalyticsWithEvent:(unint64_t)a3 error:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [v5 domain];
    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 code]);
    v8 = [v5 localizedDescription];
  }

  else
  {
    v7 = &off_1EDE8;
    v8 = &stru_1C970;
    v6 = &stru_1C970;
  }

  v10[0] = @"errorDomain";
  v10[1] = @"errorCode";
  v11[0] = v6;
  v11[1] = v7;
  v10[2] = @"errorMessage";
  v11[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  [DSAnalytics sendAnalyticsWithEvent:a3 payloadDict:v9];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)a3 payloadDict:(id)a4
{
  if (a3 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_181F8[a3];
    v5 = off_18260[a3];
  }

  v6 = [NSMutableDictionary dictionaryWithDictionary:a4];
  [v6 setObject:v4 forKeyedSubscript:@"type"];
  AnalyticsSendEvent();
}

@end