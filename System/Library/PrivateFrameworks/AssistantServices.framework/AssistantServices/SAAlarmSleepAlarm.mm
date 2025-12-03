@interface SAAlarmSleepAlarm
- (id)_ad_alarm;
- (void)_ad_setAlarm:(id)alarm;
@end

@implementation SAAlarmSleepAlarm

- (void)_ad_setAlarm:(id)alarm
{
  alarmCopy = alarm;
  identifier = [alarmCopy identifier];
  v6 = sub_10024AE44(identifier);
  [(SAAlarmSleepAlarm *)self setIdentifier:v6];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [alarmCopy isEnabled]);
  [(SAAlarmSleepAlarm *)self setEnabled:v7];

  v8 = sub_10024B83C([alarmCopy daysOfWeek]);
  [(SAAlarmSleepAlarm *)self setFrequency:v8];

  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [alarmCopy hourOfDay]);
  [(SAAlarmSleepAlarm *)self setHour:v9];

  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [alarmCopy minuteOfHour]);
  [(SAAlarmSleepAlarm *)self setMinute:v10];

  label = [alarmCopy label];
  [(SAAlarmSleepAlarm *)self setLabel:label];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [alarmCopy isOverrideAlarm]);
  [(SAAlarmSleepAlarm *)self setIsOverride:v12];

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [alarmCopy bedtimeHour]);
  [(SAAlarmSleepAlarm *)self setBedtimeHour:v13];

  bedtimeMinute = [alarmCopy bedtimeMinute];
  v15 = [NSNumber numberWithInteger:bedtimeMinute];
  [(SAAlarmSleepAlarm *)self setBedtimeMinute:v15];

  [(SAAlarmSleepAlarm *)self setIsFiringNext:&__kCFBooleanFalse];
}

- (id)_ad_alarm
{
  v4.receiver = self;
  v4.super_class = SAAlarmSleepAlarm;
  _ad_alarm = [(SAAlarmSleepAlarm *)&v4 _ad_alarm];

  return _ad_alarm;
}

@end