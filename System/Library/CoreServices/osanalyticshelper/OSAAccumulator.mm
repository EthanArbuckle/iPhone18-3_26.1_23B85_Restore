@interface OSAAccumulator
- (OSAAccumulator)init;
- (id)aggregatedTotalsAsDouble;
- (id)aggregatedTotalsAsUnsignedInteger;
- (id)keyForDate:(id)date;
- (id)numberForKey:(id)key onDate:(id)date;
- (void)addDouble:(double)double forKey:(id)key onDate:(id)date;
- (void)addUnsignedInteger:(unint64_t)integer forKey:(id)key onDate:(id)date;
- (void)setNumber:(id)number forKey:(id)key onDate:(id)date;
@end

@implementation OSAAccumulator

- (OSAAccumulator)init
{
  v9.receiver = self;
  v9.super_class = OSAAccumulator;
  v2 = [(OSAAccumulator *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    totals = v2->_totals;
    v2->_totals = v3;

    v5 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    calendar = v2->_calendar;
    v2->_calendar = v5;

    v7 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    [(NSCalendar *)v2->_calendar setTimeZone:v7];
  }

  return v2;
}

- (id)aggregatedTotalsAsUnsignedInteger
{
  v19 = +[NSMutableDictionary dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_totals;
  v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v5 = [(NSMutableDictionary *)self->_totals objectForKeyedSubscript:v4];
        v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = *v22;
          do
          {
            for (j = 0; j != v7; j = j + 1)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v5);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = [(NSMutableDictionary *)self->_totals objectForKeyedSubscript:v4];
              v13 = [v12 objectForKeyedSubscript:v11];
              v8 += [v13 unsignedIntegerValue];
            }

            v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        v14 = [NSNumber numberWithUnsignedInteger:v8];
        [v19 setObject:v14 forKeyedSubscript:v4];
      }

      v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v15 = [NSDictionary dictionaryWithDictionary:v19];

  return v15;
}

- (id)aggregatedTotalsAsDouble
{
  v22 = +[NSMutableDictionary dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_totals;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v21 = *v28;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = [(NSMutableDictionary *)self->_totals objectForKeyedSubscript:v6];
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          v11 = 0.0;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              v14 = [(NSMutableDictionary *)self->_totals objectForKeyedSubscript:v6];
              v15 = [v14 objectForKeyedSubscript:v13];
              [v15 doubleValue];
              v11 = v11 + v16;
            }

            v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v9);
        }

        else
        {
          v11 = 0.0;
        }

        v17 = [NSNumber numberWithDouble:v11];
        [v22 setObject:v17 forKeyedSubscript:v6];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v4);
  }

  v18 = [NSDictionary dictionaryWithDictionary:v22];

  return v18;
}

- (id)keyForDate:(id)date
{
  dateCopy = date;
  calendar = [(OSAAccumulator *)self calendar];
  v6 = [calendar startOfDayForDate:dateCopy];

  return v6;
}

- (id)numberForKey:(id)key onDate:(id)date
{
  keyCopy = key;
  v7 = [(OSAAccumulator *)self keyForDate:date];
  v8 = [(NSMutableDictionary *)self->_totals objectForKeyedSubscript:keyCopy];

  v9 = [v8 objectForKeyedSubscript:v7];

  return v9;
}

- (void)setNumber:(id)number forKey:(id)key onDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  totals = self->_totals;
  numberCopy = number;
  v11 = [(NSMutableDictionary *)totals objectForKeyedSubscript:keyCopy];

  if (!v11)
  {
    v12 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_totals setObject:v12 forKeyedSubscript:keyCopy];
  }

  v13 = [(OSAAccumulator *)self keyForDate:dateCopy];
  v14 = [(NSMutableDictionary *)self->_totals objectForKeyedSubscript:keyCopy];
  [v14 setObject:numberCopy forKeyedSubscript:v13];
}

- (void)addUnsignedInteger:(unint64_t)integer forKey:(id)key onDate:(id)date
{
  dateCopy = date;
  keyCopy = key;
  v10 = [(OSAAccumulator *)self numberForKey:keyCopy onDate:dateCopy];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = [NSNumber numberWithUnsignedInteger:&unsignedIntegerValue[integer]];
  [(OSAAccumulator *)self setNumber:v12 forKey:keyCopy onDate:dateCopy];
}

- (void)addDouble:(double)double forKey:(id)key onDate:(id)date
{
  dateCopy = date;
  keyCopy = key;
  v10 = [(OSAAccumulator *)self numberForKey:keyCopy onDate:dateCopy];
  [v10 doubleValue];
  v12 = v11 + double;

  v13 = [NSNumber numberWithDouble:v12];
  [(OSAAccumulator *)self setNumber:v13 forKey:keyCopy onDate:dateCopy];
}

@end