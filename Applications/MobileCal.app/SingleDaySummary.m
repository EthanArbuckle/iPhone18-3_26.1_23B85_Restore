@interface SingleDaySummary
- (CGRect)frameForEventID:(id)a3;
- (CompactMonthWeekViewDelegate)weekDelegate;
- (SingleDaySummary)init;
- (double)_actualEventsWidth;
- (double)_totalEventsWidth;
- (id)dataForEventID:(id)a3;
- (unint64_t)backGroundCornerMaskforEventID:(id)a3;
- (void)_processEventData;
- (void)drawRect:(CGRect)a3;
- (void)setData:(id)a3 date:(id)a4 calendar:(id)a5 delegate:(id)a6;
@end

@implementation SingleDaySummary

- (SingleDaySummary)init
{
  v5.receiver = self;
  v5.super_class = SingleDaySummary;
  v2 = [(SingleDaySummary *)&v5 init];
  if (v2)
  {
    v3 = +[UIColor clearColor];
    [(SingleDaySummary *)v2 setBackgroundColor:v3];
  }

  return v2;
}

- (void)setData:(id)a3 date:(id)a4 calendar:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [(SingleDaySummary *)self setInputEventData:a3];
  [(SingleDaySummary *)self setCalendar:v11];
  v13 = [v11 startOfDayForDate:v12];

  [(SingleDaySummary *)self setDate:v13];
  [(SingleDaySummary *)self setWeekDelegate:v10];

  [(SingleDaySummary *)self _processEventData];

  [(SingleDaySummary *)self setNeedsDisplay];
}

- (void)_processEventData
{
  v3 = [CalPreferences alloc];
  v34 = [v3 initWithDomain:kPreferenceDomain];
  v4 = [(SingleDaySummary *)self inputEventData];
  v5 = [NSMutableArray arrayWithArray:v4];

  v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *v38;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v37 + 1) + 8 * i);
      v12 = [(SingleDaySummary *)self date];
      v13 = [(SingleDaySummary *)self calendar];
      v14 = [v13 timeZone];
      v15 = [EKCalendarDate calendarDateWithDate:v12 timeZone:v14];

      v16 = [v15 calendarDateForDay];
      v17 = [v16 date];
      [v17 timeIntervalSinceReferenceDate];
      v19 = v18;

      v20 = [v15 calendarDateForEndOfDay];
      v21 = [v20 date];
      [v21 timeIntervalSinceReferenceDate];
      v23 = v22;

      v24 = [v11 startDate];
      [v24 timeIntervalSinceReferenceDate];
      if (v25 > v23)
      {

LABEL_10:
        [v35 addObject:v11];
        goto LABEL_11;
      }

      v26 = [v11 endDate];
      [v26 timeIntervalSinceReferenceDate];
      v28 = v27;

      if (v28 < v19)
      {
        goto LABEL_10;
      }

LABEL_11:
    }

    v8 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v8);
LABEL_13:

  [v6 removeObjectsInArray:v35];
  if ([v34 getBooleanPreference:kCompactMonthSortSummaryWithTime defaultValue:1])
  {
    v29 = &stru_100211230;
  }

  else
  {
    v29 = v36;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000D4F00;
    v36[3] = &unk_100211250;
    v36[4] = 0x3FC5604180000000;
  }

  [v6 sortUsingComparator:v29];
  [(SingleDaySummary *)self frame];
  if (v30 <= 0.01 || [v6 count] < 0x13)
  {
    v31 = v6;
  }

  else
  {
    v31 = [NSMutableArray arrayWithCapacity:18];
    for (j = 0; j != 18; ++j)
    {
      v33 = [v6 objectAtIndex:j];
      [v31 addObject:v33];
    }
  }

  -[SingleDaySummary setTotalEventUnits:](self, "setTotalEventUnits:", [v31 count]);
  [(SingleDaySummary *)self setProcessedEventData:v31];
}

- (id)dataForEventID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SingleDaySummary *)self processedEventData];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 eventIdentifier];
        v11 = [v4 isEqualToString:v10];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CGRect)frameForEventID:(id)a3
{
  v4 = a3;
  v5 = [(SingleDaySummary *)self processedEventData];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(SingleDaySummary *)self processedEventData];
      v9 = [v8 objectAtIndex:v7];

      v10 = [v9 eventIdentifier];
      v11 = [v10 isEqualToString:v4];

      if (v11)
      {
        break;
      }

      ++v7;
      v12 = [(SingleDaySummary *)self processedEventData];
      v13 = [v12 count];
    }

    while (v7 < v13);
    v14 = v7;
  }

  else
  {
    v14 = 0.0;
  }

  [(SingleDaySummary *)self _actualEventsWidth];
  [(SingleDaySummary *)self frame];
  CalFloorToScreenScale();
  v16 = v15;
  [(SingleDaySummary *)self frame];
  v18 = v17;
  [(SingleDaySummary *)self totalEventUnits];
  [(SingleDaySummary *)self _totalEventsWidth];
  CalCeilToScreenScale();
  v20 = v19;
  v21 = v16 + v14 * v19;

  v22 = 0.0;
  v23 = v21;
  v24 = v20;
  v25 = v18;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

- (unint64_t)backGroundCornerMaskforEventID:(id)a3
{
  v4 = a3;
  v5 = [(SingleDaySummary *)self processedEventData];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(SingleDaySummary *)self processedEventData];
      v9 = [v8 objectAtIndex:v7];

      v10 = [v9 eventIdentifier];
      v11 = [v10 isEqualToString:v4];

      if (v11)
      {
        break;
      }

      ++v7;
      v12 = [(SingleDaySummary *)self processedEventData];
      v13 = [v12 count];

      if (v7 >= v13)
      {
        goto LABEL_5;
      }
    }

    if (v7)
    {
      v15 = 0;
    }

    else
    {
      v15 = 5;
    }

    v16 = [(SingleDaySummary *)self processedEventData];
    v17 = [v16 count] - 1;

    if (v17 == v7)
    {
      v14 = v15 | 0xA;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (double)_totalEventsWidth
{
  [(SingleDaySummary *)self frame];
  v4 = v3;
  [(SingleDaySummary *)self totalEventUnits];
  v6 = 36.0;
  if (v5 * 6.0 < 36.0)
  {
    [(SingleDaySummary *)self totalEventUnits];
    v6 = 6.0;
    if (v7 >= 1.0)
    {
      [(SingleDaySummary *)self totalEventUnits];
      v6 = v8 * 6.0;
    }
  }

  v9 = [(SingleDaySummary *)self weekDelegate];
  [v9 monthWeekScale];
  v11 = v10;

  if (v11 <= 1.0)
  {
    return v6;
  }

  +[CompactMonthWeekView narrowScale];
  return v6 + (v4 * 0.9 - v6) * ((v11 + -1.0) / (v12 + -1.0));
}

- (double)_actualEventsWidth
{
  v3 = [(SingleDaySummary *)self processedEventData];
  v4 = [v3 count];
  [(SingleDaySummary *)self _totalEventsWidth];
  [(SingleDaySummary *)self totalEventUnits];
  CalFloorToScreenScale();
  v6 = v5 * v4;

  return v6;
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(SingleDaySummary *)self backgroundColor:a3.origin.x];
  [v4 setFill];

  [(SingleDaySummary *)self bounds];
  UIRectFill(v36);
  v5 = [CalPreferences alloc];
  v34 = [v5 initWithDomain:kPreferenceDomain];
  v6 = [v34 getBooleanPreference:kCompactMonthShowEventsSummaryDividers defaultValue:0];
  [(SingleDaySummary *)self frame];
  if (v7 > 10.0)
  {
    [(SingleDaySummary *)self frame];
    if (v8 >= 0.1)
    {
      v9 = [(SingleDaySummary *)self processedEventData];
      if ([v9 count])
      {
        [(SingleDaySummary *)self totalEventUnits];
        v11 = v10;

        if (v11 == 0.0)
        {
          goto LABEL_14;
        }

        [(SingleDaySummary *)self _actualEventsWidth];
        v13 = v12;
        [(SingleDaySummary *)self frame];
        CalFloorToScreenScale();
        v15 = v14;
        [(SingleDaySummary *)self frame];
        v17 = v16;
        [(SingleDaySummary *)self totalEventUnits];
        [(SingleDaySummary *)self _totalEventsWidth];
        CalCeilToScreenScale();
        v19 = v18;
        v9 = [UIBezierPath bezierPathWithRoundedRect:v15 cornerRadius:0.0, v13, v17, v17 * 0.5];
        [v9 addClip];
        v20 = [(SingleDaySummary *)self processedEventData];
        v21 = [v20 count];

        if (v21)
        {
          v22 = 0;
          do
          {
            v23 = [(SingleDaySummary *)self processedEventData];
            v24 = [v23 objectAtIndex:v22];

            if (([v24 animating] & 1) == 0)
            {
              v25 = 0.0;
              if (v6)
              {
                v26 = [(SingleDaySummary *)self processedEventData];
                v27 = [v26 count] - 1;

                if (v22 < v27)
                {
                  EKUISeparatorLineThickness();
                  v25 = v28;
                }
              }

              v29 = [v24 color];
              v30 = [(SingleDaySummary *)self traitCollection];
              [v30 userInterfaceStyle];
              v31 = CUIKSummaryColorForColor();

              [v31 setFill];
              v37.size.width = v19 - v25;
              v37.origin.y = 0.0;
              v37.origin.x = v15;
              v37.size.height = v17;
              UIRectFill(v37);
            }

            v15 = v19 + v15;

            ++v22;
            v32 = [(SingleDaySummary *)self processedEventData];
            v33 = [v32 count];
          }

          while (v22 < v33);
        }
      }
    }
  }

LABEL_14:
}

- (CompactMonthWeekViewDelegate)weekDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weekDelegate);

  return WeakRetained;
}

@end