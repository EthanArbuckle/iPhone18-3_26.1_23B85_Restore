@interface SAAlarmCreate
- (id)_ad_alarmResponseForResponse:(id)response;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler;
@end

@implementation SAAlarmCreate

- (id)_ad_alarmResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(SAAlarmCreateCompleted);
    alarmIdentifier = [responseCopy alarmIdentifier];
    v6 = sub_10024AE44(alarmIdentifier);
    [v4 setAlarmId:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_alloc_init(AFCreateAlarmRequest);
  alarmToCreate = [(SAAlarmCreate *)self alarmToCreate];
  _ad_alarm = [alarmToCreate _ad_alarm];
  [v7 setAlarm:_ad_alarm];

  handlerCopy[2](handlerCopy, v7);
}

@end