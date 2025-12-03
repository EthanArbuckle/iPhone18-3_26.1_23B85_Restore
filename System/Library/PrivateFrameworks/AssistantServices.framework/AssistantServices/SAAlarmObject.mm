@interface SAAlarmObject
- (id)_ad_alarm;
- (void)_ad_setAlarm:(id)alarm;
@end

@implementation SAAlarmObject

- (void)_ad_setAlarm:(id)alarm
{
  alarmCopy = alarm;
  identifier = [alarmCopy identifier];
  v6 = sub_10024AE44(identifier);
  [(SAAlarmObject *)self setIdentifier:v6];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [alarmCopy isEnabled]);
  [(SAAlarmObject *)self setEnabled:v7];

  v8 = sub_10024B83C([alarmCopy daysOfWeek]);
  [(SAAlarmObject *)self setFrequency:v8];

  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [alarmCopy hourOfDay]);
  [(SAAlarmObject *)self setHour:v9];

  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [alarmCopy minuteOfHour]);
  [(SAAlarmObject *)self setMinute:v10];

  label = [alarmCopy label];

  [(SAAlarmObject *)self setLabel:label];
}

- (id)_ad_alarm
{
  v3 = objc_alloc_init(STAlarm);
  identifier = [(SAAlarmObject *)self identifier];
  v5 = sub_10024B22C(identifier);
  [v3 setIdentifier:v5];

  enabled = [(SAAlarmObject *)self enabled];
  [v3 setEnabled:{objc_msgSend(enabled, "BOOLValue")}];

  frequency = [(SAAlarmObject *)self frequency];
  [v3 setDaysOfWeek:sub_10024AB14(frequency)];

  hour = [(SAAlarmObject *)self hour];
  [v3 setHourOfDay:{objc_msgSend(hour, "integerValue")}];

  minute = [(SAAlarmObject *)self minute];
  [v3 setMinuteOfHour:{objc_msgSend(minute, "integerValue")}];

  label = [(SAAlarmObject *)self label];
  [v3 setLabel:label];

  return v3;
}

@end