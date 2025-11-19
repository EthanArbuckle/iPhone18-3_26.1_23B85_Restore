@interface ATXBirthdaysDataSource
- (ATXBirthdaysDataSource)initWithDevice:(id)a3;
- (void)birthdaysWithCallback:(id)a3;
@end

@implementation ATXBirthdaysDataSource

- (ATXBirthdaysDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXBirthdaysDataSource;
  v6 = [(ATXBirthdaysDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)birthdaysWithCallback:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA2A8))
  {
    v40 = v4;
    context = objc_autoreleasePoolPush();
    v5 = [(ATXHeuristicDevice *)self->_device now];
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v38 = v5;
    v7 = [v6 startOfDayForDate:v5];

    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v43 = v7;
    v42 = [v8 dateByAddingUnit:16 value:1 toDate:v7 options:0];

    v45 = self;
    v9 = [(ATXHeuristicDevice *)self->_device eventStore];
    v10 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = v9;
    v11 = [v9 sources];
    v12 = [v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v56;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v56 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v55 + 1) + 8 * i);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v17 = [v16 calendarsForEntityType:0];
          v18 = [v17 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v52;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v52 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v51 + 1) + 8 * j);
                if ([v22 type] == 4)
                {
                  [v10 addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v19);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v23 = [v41 predicateForEventsWithStartDate:v43 endDate:v42 calendars:v10];
      v44 = objc_opt_new();
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v37 = v23;
      obj = [v41 eventsMatchingPredicate:v23];
      v24 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
      v25 = v45;
      if (v24)
      {
        v26 = v24;
        v27 = *v48;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = [(ATXHeuristicDevice *)v25->_device dictForEvent:*(*(&v47 + 1) + 8 * k)];
            v30 = v29;
            if (v29)
            {
              v31 = [v29 objectForKeyedSubscript:@"birthdayContact"];
              if (v31)
              {
                v32 = v31;
                v33 = [v30 objectForKeyedSubscript:@"birthdayContact"];
                v34 = [v33 objectForKeyedSubscript:@"isMeContact"];
                v35 = [v34 BOOLValue];

                v25 = v45;
                if ((v35 & 1) == 0)
                {
                  [v44 addObject:v30];
                }
              }
            }
          }

          v26 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v26);
      }

      v4 = v40;
      (*(v40 + 2))(v40, v44, 0);
    }

    else
    {
      v4 = v40;
      (*(v40 + 2))(v40, MEMORY[0x277CBEBF8], 0);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], 0);
  }

  v36 = *MEMORY[0x277D85DE8];
}

@end