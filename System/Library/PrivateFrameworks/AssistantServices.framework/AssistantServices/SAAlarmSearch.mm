@interface SAAlarmSearch
- (id)_ad_alarmResponseForResponse:(id)a3;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3;
@end

@implementation SAAlarmSearch

- (id)_ad_alarmResponseForResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_alloc_init(SAAlarmSearchCompleted);
    v4 = [v3 results];
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 isSleepAlarm])
          {
            v12 = SAAlarmSleepAlarm_ptr;
          }

          else
          {
            v12 = SAAlarmObject_ptr;
          }

          v13 = objc_alloc_init(*v12);
          [v13 _ad_setAlarm:v11];
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = v16;
    [v16 setResults:v5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v21 = objc_alloc_init(AFSearchAlarmsRequest);
  v5 = objc_alloc_init(STAlarm);
  v6 = [(SAAlarmSearch *)self enabled];
  v7 = v6;
  if (v6)
  {
    [v5 setEnabled:{objc_msgSend(v6, "BOOLValue")}];
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SAAlarmSearch *)self hour];
  v10 = v9;
  if (v9)
  {
    v8 |= 8uLL;
    [v5 setHourOfDay:{objc_msgSend(v9, "integerValue")}];
  }

  v11 = [(SAAlarmSearch *)self minute];
  v12 = v11;
  if (v11)
  {
    v8 |= 0x10uLL;
    [v5 setMinuteOfHour:{objc_msgSend(v11, "integerValue")}];
  }

  v13 = [(SAAlarmSearch *)self identifier];
  v14 = v13;
  if (v13)
  {
    v8 |= 1uLL;
    v15 = sub_10024B22C(v13);
    [v5 setIdentifier:v15];
  }

  v16 = [(SAAlarmSearch *)self frequency];
  v17 = v16;
  if (v16)
  {
    v8 |= 4uLL;
    [v5 setDaysOfWeek:sub_10024AB14(v16)];
  }

  v18 = [(SAAlarmSearch *)self label];
  if (v18)
  {
    v8 |= 0x20uLL;
    [v5 setLabel:v18];
  }

  v19 = [(SAAlarmSearch *)self includesSleepAlarms];
  v20 = v19;
  if (v19 && [v19 BOOLValue])
  {
    v8 |= 0x40uLL;
    [v5 setSleepAlarm:{objc_msgSend(v20, "BOOLValue")}];
  }

  [v21 setOptions:v8];
  [v21 setCriteria:v5];
  v4[2](v4, v21);
}

@end