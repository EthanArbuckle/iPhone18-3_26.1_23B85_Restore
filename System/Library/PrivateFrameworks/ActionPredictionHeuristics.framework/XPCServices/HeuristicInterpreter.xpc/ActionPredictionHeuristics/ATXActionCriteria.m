@interface ATXActionCriteria
+ (id)atx_criteriaWithDictionary:(id)a3;
@end

@implementation ATXActionCriteria

+ (id)atx_criteriaWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"startDate"];
  v5 = sub_1000173CC(v4);

  v6 = [v3 objectForKeyedSubscript:@"endDate"];
  v7 = sub_1000173CC(v6);

  if (v5 && v7 && [v5 compare:v7] == 1)
  {
    v8 = sub_100001940();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [v5 timeIntervalSinceReferenceDate];
      v10 = v9;
      [v7 timeIntervalSinceReferenceDate];
      v16 = 134218240;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start date %f must be before end date %f", &v16, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v13 = [v3 objectForKeyedSubscript:@"lockScreenEligible"];
    v14 = [v13 BOOLValue];

    v12 = [[ATXActionCriteria alloc] initWithStartDate:v5 endDate:v7 lockScreenEligible:v14 predicate:0];
  }

  return v12;
}

@end