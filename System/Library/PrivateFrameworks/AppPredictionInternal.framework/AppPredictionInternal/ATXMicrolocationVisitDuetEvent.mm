@interface ATXMicrolocationVisitDuetEvent
+ (id)mapVisitProbabilitiesByUUID:(id)d;
- (ATXMicrolocationVisitDuetEvent)initWithATXEvent:(id)event;
- (ATXMicrolocationVisitDuetEvent)initWithCurrentContextStoreValuesWithTwoHourLimit:(BOOL)limit;
- (ATXMicrolocationVisitDuetEvent)initWithDominantMicrolocationUUID:(id)d microlocationProbabilities:(id)probabilities startDate:(id)date endDate:(id)endDate;
- (id)description;
- (id)identifier;
@end

@implementation ATXMicrolocationVisitDuetEvent

- (ATXMicrolocationVisitDuetEvent)initWithDominantMicrolocationUUID:(id)d microlocationProbabilities:(id)probabilities startDate:(id)date endDate:(id)endDate
{
  dCopy = d;
  probabilitiesCopy = probabilities;
  v16.receiver = self;
  v16.super_class = ATXMicrolocationVisitDuetEvent;
  v13 = [(ATXDuetEvent *)&v16 initWithStartDate:date endDate:endDate];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_dominantMicrolocationUUID, d);
    objc_storeStrong(&v14->_microlocationUUIDProbabilities, probabilities);
  }

  return v14;
}

- (ATXMicrolocationVisitDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    maxProbabilityMicroLocationIdentifier = [v5 maxProbabilityMicroLocationIdentifier];
    v8 = [v6 initWithUUIDString:maxProbabilityMicroLocationIdentifier];

    probabilityVector = [v5 probabilityVector];
    v10 = [ATXMicrolocationVisitDuetEvent mapVisitProbabilitiesByUUID:probabilityVector];

    if (v8 && v10)
    {
      timestamp = [v5 timestamp];
      timestamp2 = [v5 timestamp];
      self = [(ATXMicrolocationVisitDuetEvent *)self initWithDominantMicrolocationUUID:v8 microlocationProbabilities:v10 startDate:timestamp endDate:timestamp2];

      selfCopy = self;
    }

    else
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ATXMicrolocationVisitDuetEvent *)v8 initWithATXEvent:v10, v14];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXMicrolocationVisitDuetEvent *)eventCopy initWithATXEvent:v5];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXMicrolocationVisitDuetEvent)initWithCurrentContextStoreValuesWithTwoHourLimit:(BOOL)limit
{
  limitCopy = limit;
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CEBCA0]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__102;
  v21 = __Block_byref_object_dispose__102;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__ATXMicrolocationVisitDuetEvent_initWithCurrentContextStoreValuesWithTwoHourLimit___block_invoke_2;
  v16[3] = &unk_2785A1990;
  v16[4] = &v17;
  [v5 enumerateMicroLocationVisitEventsFromStartDate:0 endDate:0 filterBlock:&__block_literal_global_246 limit:1 ascending:0 block:v16];
  if (v18[5])
  {
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = [v18[5] timestamp];
    [date timeIntervalSinceDate:timestamp];
    v9 = v8;

    if (!limitCopy || v9 <= 7200.0)
    {
      self = [(ATXMicrolocationVisitDuetEvent *)self initWithATXEvent:v18[5]];
      selfCopy = self;
      goto LABEL_11;
    }

    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v9;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Skipping microlocation event because it’s too old (%.0f seconds ago)", buf, 0xCu);
    }
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412290;
      v24 = *&v12;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - No microlocation event found.", buf, 0xCu);
    }
  }

  selfCopy = 0;
LABEL_11:
  _Block_object_dispose(&v17, 8);

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

BOOL __84__ATXMicrolocationVisitDuetEvent_initWithCurrentContextStoreValuesWithTwoHourLimit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 maxProbability];
  [v2 doubleValue];
  v4 = v3 >= 0.7;

  return v4;
}

+ (id)mapVisitProbabilitiesByUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(dCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = dCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          microLocationIdentifier = [v10 microLocationIdentifier];
          probability = [v10 probability];
          if ([microLocationIdentifier length])
          {
            v13 = probability == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:microLocationIdentifier];
            if (v14)
            {
              [v4 setObject:probability forKeyedSubscript:v14];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v15 = [v4 copy];
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)identifier
{
  startDate = [(ATXDuetEvent *)self startDate];
  v4 = [_ATXActionUtils localHourOfDayFromDate:startDate];

  v5 = @"6_to_12";
  v6 = @"18_to_24";
  if (v4 < 0x12)
  {
    v6 = @"12_to_18";
  }

  if (v4 >= 0xC)
  {
    v5 = v6;
  }

  if (v4 >= 6)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"0_to_6";
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Microlocation_%@_%@", self->_dominantMicrolocationUUID, v7];

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  dominantMicrolocationUUID = self->_dominantMicrolocationUUID;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v7 = [v3 initWithFormat:@"Dominant microlocation: %@, start date: %@, end date: %@", dominantMicrolocationUUID, startDate, endDate];

  return v7;
}

- (void)initWithATXEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value of event was %@, not %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithATXEvent:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "While fetching microlocations, dominantMicrolocationUUID (%@) or microlocationUUIDProbabilities (%@) was nil.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end