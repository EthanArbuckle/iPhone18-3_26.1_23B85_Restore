@interface SAAlarmSearch
- (id)_ad_alarmResponseForResponse:(id)response;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler;
@end

@implementation SAAlarmSearch

- (id)_ad_alarmResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_alloc_init(SAAlarmSearchCompleted);
    results = [responseCopy results];
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(results, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = results;
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

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v21 = objc_alloc_init(AFSearchAlarmsRequest);
  v5 = objc_alloc_init(STAlarm);
  enabled = [(SAAlarmSearch *)self enabled];
  v7 = enabled;
  if (enabled)
  {
    [v5 setEnabled:{objc_msgSend(enabled, "BOOLValue")}];
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  hour = [(SAAlarmSearch *)self hour];
  v10 = hour;
  if (hour)
  {
    v8 |= 8uLL;
    [v5 setHourOfDay:{objc_msgSend(hour, "integerValue")}];
  }

  minute = [(SAAlarmSearch *)self minute];
  v12 = minute;
  if (minute)
  {
    v8 |= 0x10uLL;
    [v5 setMinuteOfHour:{objc_msgSend(minute, "integerValue")}];
  }

  identifier = [(SAAlarmSearch *)self identifier];
  v14 = identifier;
  if (identifier)
  {
    v8 |= 1uLL;
    v15 = sub_10024B22C(identifier);
    [v5 setIdentifier:v15];
  }

  frequency = [(SAAlarmSearch *)self frequency];
  v17 = frequency;
  if (frequency)
  {
    v8 |= 4uLL;
    [v5 setDaysOfWeek:sub_10024AB14(frequency)];
  }

  label = [(SAAlarmSearch *)self label];
  if (label)
  {
    v8 |= 0x20uLL;
    [v5 setLabel:label];
  }

  includesSleepAlarms = [(SAAlarmSearch *)self includesSleepAlarms];
  v20 = includesSleepAlarms;
  if (includesSleepAlarms && [includesSleepAlarms BOOLValue])
  {
    v8 |= 0x40uLL;
    [v5 setSleepAlarm:{objc_msgSend(v20, "BOOLValue")}];
  }

  [v21 setOptions:v8];
  [v21 setCriteria:v5];
  handlerCopy[2](handlerCopy, v21);
}

@end