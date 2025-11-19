@interface SAAlarmObject
- (id)_ad_alarm;
- (void)_ad_setAlarm:(id)a3;
@end

@implementation SAAlarmObject

- (void)_ad_setAlarm:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = sub_10024AE44(v5);
  [(SAAlarmObject *)self setIdentifier:v6];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isEnabled]);
  [(SAAlarmObject *)self setEnabled:v7];

  v8 = sub_10024B83C([v4 daysOfWeek]);
  [(SAAlarmObject *)self setFrequency:v8];

  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 hourOfDay]);
  [(SAAlarmObject *)self setHour:v9];

  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 minuteOfHour]);
  [(SAAlarmObject *)self setMinute:v10];

  v11 = [v4 label];

  [(SAAlarmObject *)self setLabel:v11];
}

- (id)_ad_alarm
{
  v3 = objc_alloc_init(STAlarm);
  v4 = [(SAAlarmObject *)self identifier];
  v5 = sub_10024B22C(v4);
  [v3 setIdentifier:v5];

  v6 = [(SAAlarmObject *)self enabled];
  [v3 setEnabled:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [(SAAlarmObject *)self frequency];
  [v3 setDaysOfWeek:sub_10024AB14(v7)];

  v8 = [(SAAlarmObject *)self hour];
  [v3 setHourOfDay:{objc_msgSend(v8, "integerValue")}];

  v9 = [(SAAlarmObject *)self minute];
  [v3 setMinuteOfHour:{objc_msgSend(v9, "integerValue")}];

  v10 = [(SAAlarmObject *)self label];
  [v3 setLabel:v10];

  return v3;
}

@end