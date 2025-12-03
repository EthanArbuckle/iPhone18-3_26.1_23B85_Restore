@interface ATXNLEventsDataSource
- (ATXNLEventsDataSource)initWithDevice:(id)device;
- (void)nlEventsWithCallback:(id)callback;
@end

@implementation ATXNLEventsDataSource

- (ATXNLEventsDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXNLEventsDataSource;
  v6 = [(ATXNLEventsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)nlEventsWithCallback:(id)callback
{
  v27 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA3F8))
  {
    eventStore = [(ATXHeuristicDevice *)self->_device eventStore];
    v6 = [eventStore predicateForNaturalLanguageSuggestedEventsWithSearchString:0];
    v7 = [eventStore eventsMatchingPredicate:v6];
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_14];
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v26 = [v8 count];
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_INFO, "Got %tu events from NL Events", buf, 0xCu);
    }

    if ([v8 count])
    {
      v18 = v7;
      v19 = v6;
      v10 = objc_opt_new();
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(ATXHeuristicDevice *)self->_device dictForEvent:*(*(&v20 + 1) + 8 * v15), v18, v19, v20];
            if (v16)
            {
              [v10 addObject:v16];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      callbackCopy[2](callbackCopy, v10, 0);
      v7 = v18;
      v6 = v19;
    }

    else
    {
      callbackCopy[2](callbackCopy, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    callbackCopy[2](callbackCopy, MEMORY[0x277CBEBF8], 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __46__ATXNLEventsDataSource_nlEventsWithCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 localCustomObjectForKey:@"EKEventNaturalLanguageSuggestedEventExpirationDate"];
  v7 = [v5 localCustomObjectForKey:@"EKEventNaturalLanguageSuggestedEventExpirationDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6 != 0;
    v9 = v7 != 0;
    if (v6 && v7)
    {
      v10 = [v7 compare:v6];
      goto LABEL_20;
    }
  }

  else
  {

    v9 = 0;
    v7 = 0;
    v8 = v6 != 0;
  }

  if (v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (!v8 && !v9)
  {
    v11 = [v4 creationDate];
    v12 = [v5 creationDate];
    v13 = v12;
    if (v11 && v12)
    {
      v10 = [v12 compare:v11];
    }

    else if (v11)
    {
      v10 = -1;
    }

    else
    {
      v10 = v12 != 0;
    }
  }

LABEL_20:

  return v10;
}

@end