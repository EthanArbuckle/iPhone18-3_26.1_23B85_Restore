@interface STAlarm
- (void)_ad_updateWithModification:(id)a3;
@end

@implementation STAlarm

- (void)_ad_updateWithModification:(id)a3
{
  v14 = a3;
  v4 = self;
  v5 = [v14 enabled];
  v6 = v5;
  if (v5)
  {
    -[STAlarm setEnabled:](v4, "setEnabled:", [v5 BOOLValue]);
  }

  v7 = [v14 hour];
  v8 = v7;
  if (v7)
  {
    -[STAlarm setHourOfDay:](v4, "setHourOfDay:", [v7 integerValue]);
  }

  v9 = [v14 minute];
  v10 = v9;
  if (v9)
  {
    -[STAlarm setMinuteOfHour:](v4, "setMinuteOfHour:", [v9 integerValue]);
  }

  v11 = [v14 label];
  if (v11)
  {
    [(STAlarm *)v4 setLabel:v11];
  }

  v12 = [v14 addedFrequency];
  if ([v12 count])
  {
    [(STAlarm *)v4 setDaysOfWeek:[(STAlarm *)v4 daysOfWeek]& sub_10024AB14(v12)];
  }

  v13 = [v14 removedFrequency];
  if ([v13 count])
  {
    [(STAlarm *)v4 setDaysOfWeek:[(STAlarm *)v4 daysOfWeek]& ~sub_10024AB14(v13)];
  }
}

@end