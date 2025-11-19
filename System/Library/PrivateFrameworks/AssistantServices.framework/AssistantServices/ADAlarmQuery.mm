@interface ADAlarmQuery
- (ADAlarmQuery)initWithCriteria:(id)a3 searchOptions:(int64_t)a4;
- (BOOL)matchesAlarm:(id)a3;
@end

@implementation ADAlarmQuery

- (ADAlarmQuery)initWithCriteria:(id)a3 searchOptions:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ADAlarmQuery;
  v7 = [(ADAlarmQuery *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    criteria = v7->_criteria;
    v7->_criteria = v8;

    v7->_searchOptions = a4;
  }

  return v7;
}

- (BOOL)matchesAlarm:(id)a3
{
  v4 = a3;
  v5 = [(ADAlarmQuery *)self criteria];
  v6 = [(ADAlarmQuery *)self searchOptions];
  v7 = v6;
  if (v6)
  {
    v9 = [v5 identifier];
    if (v9)
    {
      v10 = [v4 identifier];
      v11 = [v5 identifier];
      v8 = [v10 isEqualToString:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
    if ((v6 & 0x40) == 0 || ([v4 isSleepAlarm] & 1) == 0)
    {
      if (([v4 isSleepAlarm] & 1) != 0 || (v7 & 0x20) != 0 && (objc_msgSend(v5, "label"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v4, "label"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "label"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v13, !v16) || (v7 & 4) != 0 && (v17 = objc_msgSend(v4, "daysOfWeek"), v17 != objc_msgSend(v5, "daysOfWeek")) || (v7 & 8) != 0 && (v18 = objc_msgSend(v4, "hourOfDay"), v18 != objc_msgSend(v5, "hourOfDay")) || (v7 & 0x10) != 0 && (v19 = objc_msgSend(v4, "minuteOfHour"), v19 != objc_msgSend(v5, "minuteOfHour")) || (v7 & 2) != 0 && (v20 = objc_msgSend(v4, "isEnabled"), v20 != objc_msgSend(v5, "isEnabled")))
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

@end