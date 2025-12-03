@interface ATXBirthdaysDataSource
- (ATXBirthdaysDataSource)initWithDevice:(id)device;
- (void)birthdaysWithCallback:(id)callback;
@end

@implementation ATXBirthdaysDataSource

- (ATXBirthdaysDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXBirthdaysDataSource;
  v6 = [(ATXBirthdaysDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)birthdaysWithCallback:(id)callback
{
  v62 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA2A8))
  {
    v40 = callbackCopy;
    context = objc_autoreleasePoolPush();
    v5 = [(ATXHeuristicDevice *)self->_device now];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v38 = v5;
    v7 = [currentCalendar startOfDayForDate:v5];

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v43 = v7;
    v42 = [currentCalendar2 dateByAddingUnit:16 value:1 toDate:v7 options:0];

    selfCopy = self;
    eventStore = [(ATXHeuristicDevice *)self->_device eventStore];
    v10 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = eventStore;
    sources = [eventStore sources];
    v12 = [sources countByEnumeratingWithState:&v55 objects:v61 count:16];
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
            objc_enumerationMutation(sources);
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

        v13 = [sources countByEnumeratingWithState:&v55 objects:v61 count:16];
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
      v25 = selfCopy;
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
                bOOLValue = [v34 BOOLValue];

                v25 = selfCopy;
                if ((bOOLValue & 1) == 0)
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

      callbackCopy = v40;
      (*(v40 + 2))(v40, v44, 0);
    }

    else
    {
      callbackCopy = v40;
      (*(v40 + 2))(v40, MEMORY[0x277CBEBF8], 0);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, MEMORY[0x277CBEBF8], 0);
  }

  v36 = *MEMORY[0x277D85DE8];
}

@end