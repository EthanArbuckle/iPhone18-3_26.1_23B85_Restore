@interface ATXHolidaysDataSource
- (ATXHolidaysDataSource)initWithDevice:(id)a3;
- (id)_holidayCalendarForEventStore:(id)a3;
- (void)holidaysFromStartDate:(id)a3 toEndDate:(id)a4 callback:(id)a5;
@end

@implementation ATXHolidaysDataSource

- (ATXHolidaysDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHolidaysDataSource;
  v6 = [(ATXHolidaysDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)_holidayCalendarForEventStore:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [a3 sources];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 calendarsForEntityType:{0, 0}];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v18 + 1) + 8 * j);
              if ([v14 type] == 3 && (objc_msgSend(v14, "isSubscribedHolidayCalendar") & 1) != 0)
              {
                v15 = v14;

                goto LABEL_20;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v15 = 0;
    }

    while (v5);
  }

  else
  {
    v15 = 0;
  }

LABEL_20:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)holidaysFromStartDate:(id)a3 toEndDate:(id)a4 callback:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA410))
  {
    v11 = [(ATXHeuristicDevice *)self->_device eventStore];
    v12 = [(ATXHolidaysDataSource *)self _holidayCalendarForEventStore:v11];
    v13 = v12;
    if (v12)
    {
      v26 = v12;
      v33[0] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v27 = v8;
      v15 = [v11 predicateForEventsWithStartDate:v8 endDate:v9 calendars:v14];

      v16 = [MEMORY[0x277CBEB18] array];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = v15;
      v17 = [v11 eventsMatchingPredicate:v15];
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v28 + 1) + 8 * i);
            if ([v22 isAllDay])
            {
              v23 = [(ATXHeuristicDevice *)self->_device dictForEvent:v22];
              if (v23)
              {
                [v16 addObject:v23];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }

      v10[2](v10, v16, 0);
      v13 = v26;
      v8 = v27;
    }

    else
    {
      v10[2](v10, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    v10[2](v10, MEMORY[0x277CBEBF8], 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end