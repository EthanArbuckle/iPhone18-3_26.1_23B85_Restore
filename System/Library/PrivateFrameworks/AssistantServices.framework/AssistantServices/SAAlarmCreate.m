@interface SAAlarmCreate
- (id)_ad_alarmResponseForResponse:(id)a3;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3;
@end

@implementation SAAlarmCreate

- (id)_ad_alarmResponseForResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(SAAlarmCreateCompleted);
    v5 = [v3 alarmIdentifier];
    v6 = sub_10024AE44(v5);
    [v4 setAlarmId:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(AFCreateAlarmRequest);
  v5 = [(SAAlarmCreate *)self alarmToCreate];
  v6 = [v5 _ad_alarm];
  [v7 setAlarm:v6];

  v4[2](v4, v7);
}

@end