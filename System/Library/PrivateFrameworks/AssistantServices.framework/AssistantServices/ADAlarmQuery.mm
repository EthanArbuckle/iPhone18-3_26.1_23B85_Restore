@interface ADAlarmQuery
- (ADAlarmQuery)initWithCriteria:(id)criteria searchOptions:(int64_t)options;
- (BOOL)matchesAlarm:(id)alarm;
@end

@implementation ADAlarmQuery

- (ADAlarmQuery)initWithCriteria:(id)criteria searchOptions:(int64_t)options
{
  criteriaCopy = criteria;
  v11.receiver = self;
  v11.super_class = ADAlarmQuery;
  v7 = [(ADAlarmQuery *)&v11 init];
  if (v7)
  {
    v8 = [criteriaCopy copy];
    criteria = v7->_criteria;
    v7->_criteria = v8;

    v7->_searchOptions = options;
  }

  return v7;
}

- (BOOL)matchesAlarm:(id)alarm
{
  alarmCopy = alarm;
  criteria = [(ADAlarmQuery *)self criteria];
  searchOptions = [(ADAlarmQuery *)self searchOptions];
  v7 = searchOptions;
  if (searchOptions)
  {
    identifier = [criteria identifier];
    if (identifier)
    {
      identifier2 = [alarmCopy identifier];
      identifier3 = [criteria identifier];
      v8 = [identifier2 isEqualToString:identifier3];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
    if ((searchOptions & 0x40) == 0 || ([alarmCopy isSleepAlarm] & 1) == 0)
    {
      if (([alarmCopy isSleepAlarm] & 1) != 0 || (v7 & 0x20) != 0 && (objc_msgSend(criteria, "label"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(alarmCopy, "label"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(criteria, "label"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v13, !v16) || (v7 & 4) != 0 && (v17 = objc_msgSend(alarmCopy, "daysOfWeek"), v17 != objc_msgSend(criteria, "daysOfWeek")) || (v7 & 8) != 0 && (v18 = objc_msgSend(alarmCopy, "hourOfDay"), v18 != objc_msgSend(criteria, "hourOfDay")) || (v7 & 0x10) != 0 && (v19 = objc_msgSend(alarmCopy, "minuteOfHour"), v19 != objc_msgSend(criteria, "minuteOfHour")) || (v7 & 2) != 0 && (v20 = objc_msgSend(alarmCopy, "isEnabled"), v20 != objc_msgSend(criteria, "isEnabled")))
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

@end