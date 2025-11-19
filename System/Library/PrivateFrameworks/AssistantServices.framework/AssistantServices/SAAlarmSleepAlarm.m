@interface SAAlarmSleepAlarm
- (id)_ad_alarm;
- (void)_ad_setAlarm:(id)a3;
@end

@implementation SAAlarmSleepAlarm

- (void)_ad_setAlarm:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = sub_10024AE44(v5);
  [(SAAlarmSleepAlarm *)self setIdentifier:v6];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isEnabled]);
  [(SAAlarmSleepAlarm *)self setEnabled:v7];

  v8 = sub_10024B83C([v4 daysOfWeek]);
  [(SAAlarmSleepAlarm *)self setFrequency:v8];

  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 hourOfDay]);
  [(SAAlarmSleepAlarm *)self setHour:v9];

  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 minuteOfHour]);
  [(SAAlarmSleepAlarm *)self setMinute:v10];

  v11 = [v4 label];
  [(SAAlarmSleepAlarm *)self setLabel:v11];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isOverrideAlarm]);
  [(SAAlarmSleepAlarm *)self setIsOverride:v12];

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 bedtimeHour]);
  [(SAAlarmSleepAlarm *)self setBedtimeHour:v13];

  v14 = [v4 bedtimeMinute];
  v15 = [NSNumber numberWithInteger:v14];
  [(SAAlarmSleepAlarm *)self setBedtimeMinute:v15];

  [(SAAlarmSleepAlarm *)self setIsFiringNext:&__kCFBooleanFalse];
}

- (id)_ad_alarm
{
  v4.receiver = self;
  v4.super_class = SAAlarmSleepAlarm;
  v2 = [(SAAlarmSleepAlarm *)&v4 _ad_alarm];

  return v2;
}

@end