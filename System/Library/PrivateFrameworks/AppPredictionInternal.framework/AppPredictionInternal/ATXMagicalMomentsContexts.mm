@interface ATXMagicalMomentsContexts
+ (id)eventIdentifierPredicateForValue:(id)a3;
+ (id)getCurrentLOI;
+ (id)locationOfInterestForDate:(id)a3 dateIntervalForSearch:(id)a4;
+ (id)loiPredicateForUUIDString:(id)a3;
+ (id)partOfWeekPredicatesUsingStartDate:(BOOL)a3;
+ (id)timeOfDayPredicatesWithRequestedDurationInHours:(unint64_t)a3 shouldPredicateOnStartDate:(BOOL)a4;
+ (unint64_t)getMinTemporalDistanceFromDate:(id)a3 toVisitsToLOI:(id)a4;
+ (unint64_t)minDistanceFromDate:(id)a3 toDateRange:(_NSRange)a4;
@end

@implementation ATXMagicalMomentsContexts

+ (id)getCurrentLOI
{
  v2 = [MEMORY[0x277D41BF8] sharedInstance];
  v3 = [v2 locationOfInterestAtCurrentLocation];

  return v3;
}

+ (unint64_t)minDistanceFromDate:(id)a3 toDateRange:(_NSRange)a4
{
  location = a4.location;
  v5 = a4.location + a4.length;
  [a3 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = v6 - v5;
  if (v6 < v5)
  {
    v8 = 0;
  }

  v9 = location >= v7;
  v10 = location - v7;
  if (v10 != 0 && v9)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

+ (unint64_t)getMinTemporalDistanceFromDate:(id)a3 toVisitsToLOI:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 visits];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = -1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) rangeValue];
        v15 = [a1 minDistanceFromDate:v6 toDateRange:{v13, v14}];
        if (v15 < v11)
        {
          v11 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = -1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)locationOfInterestForDate:(id)a3 dateIntervalForSearch:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D41BF8] sharedInstance];
  v8 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__22;
  v23 = __Block_byref_object_dispose__22;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__ATXMagicalMomentsContexts_locationOfInterestForDate_dateIntervalForSearch___block_invoke;
  v15[3] = &unk_2785991D8;
  v9 = v5;
  v16 = v9;
  v18 = &v19;
  v10 = v8;
  v17 = v10;
  [v7 fetchLocationsOfInterestVisitedDuring:v6 handler:v15];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v10 timeoutSeconds:2.0])
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "LOI fetch near date timed out", &v14, 2u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v20[5];
  }

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __77__ATXMagicalMomentsContexts_locationOfInterestForDate_dateIntervalForSearch___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 900;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = [ATXMagicalMomentsContexts getMinTemporalDistanceFromDate:*(a1 + 32) toVisitsToLOI:v9, v13];
      if (v10 < v7)
      {
        v11 = v10;
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
        v7 = v11;
        if (!v11)
        {
          break;
        }
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

+ (id)timeOfDayPredicatesWithRequestedDurationInHours:(unint64_t)a3 shouldPredicateOnStartDate:(BOOL)a4
{
  if (a3)
  {
    v5 = a4;
    if (a3 >= 0x18)
    {
      v6 = 24;
    }

    else
    {
      v6 = a3;
    }

    v19 = 0x18 / v6;
    if ((v19 * v6) != 24)
    {
      v7 = __atxlog_handle_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [ATXMagicalMomentsContexts timeOfDayPredicatesWithRequestedDurationInHours:v7 shouldPredicateOnStartDate:?];
      }
    }

    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (v5)
    {
      v11 = @"startDateSecondsAfterMidnight";
    }

    else
    {
      v11 = @"endDateSecondsAfterMidnight";
    }

    v12 = 3600 * v6;
    v13 = 3600 * v6;
    v14 = v6;
    do
    {
      if (v9 % 0x18 >= v14 % 0x18)
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"%K < %lu OR %K >= %lu", v11, v13 - 86400 * (v14 / 0x18), v11, v8 - 86400 * (v9 / 0x18)];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %lu AND %K < %lu", v11, v8 - 86400 * (v9 / 0x18), v11, v13 - 86400 * (v14 / 0x18)];
      }
      v15 = ;
      ++v10;
      [v18 addObject:v15];

      v14 += v6;
      v13 += v12;
      v9 += v6;
      v8 += v12;
    }

    while (v10 < v19);
    v16 = v18;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

+ (id)partOfWeekPredicatesUsingStartDate:(BOOL)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = @"isStartDateOnWeekday";
  }

  else
  {
    v3 = @"isEndDateOnWeekday";
  }

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == YES", v3];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NO", v3];
  v9[0] = v4;
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)eventIdentifierPredicateForValue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ATXMagicalMomentsContexts *)a2 eventIdentifierPredicateForValue:a1];
  }

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %@", v5];

  return v6;
}

+ (id)loiPredicateForUUIDString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ATXMagicalMomentsContexts *)a2 loiPredicateForUUIDString:a1];
  }

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"locationIdentifierUUIDString = %@", v5];

  return v6;
}

+ (void)eventIdentifierPredicateForValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMagicalMomentsContexts.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"eventIdentifier"}];
}

+ (void)loiPredicateForUUIDString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMagicalMomentsContexts.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"uuidString"}];
}

@end