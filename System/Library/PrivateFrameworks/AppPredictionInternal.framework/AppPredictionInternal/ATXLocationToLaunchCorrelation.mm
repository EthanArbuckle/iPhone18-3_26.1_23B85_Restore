@interface ATXLocationToLaunchCorrelation
+ (double)_launchProbabilityForEvent:(id)event atLocation:(id)location correlationMatrix:(id)matrix locationTotals:(id)totals;
+ (double)_totalLaunchesAtLocation:(id)location locationTotals:(id)totals;
+ (double)_totalLaunchesForEvent:(id)event atLocation:(id)location correlationMatrix:(id)matrix;
- (ATXLocationToLaunchCorrelation)init;
- (ATXLocationToLaunchCorrelation)initWithCoder:(id)coder;
- (ATXLocationToLaunchCorrelation)initWithCorrelationMatrix:(id)matrix locationTotals:(id)totals;
- (double)launchProbabilityForEvent:(id)event atLocation:(id)location;
- (double)launchProbabilityForEvent:(id)event atLocationsWithProbabilities:(id)probabilities;
- (double)totalLaunches;
- (double)totalLaunchesAtLocation:(id)location;
- (double)totalLaunchesForEvent:(id)event atLocation:(id)location;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addVisitForLocation:(id)location event:(id)event value:(double)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXLocationToLaunchCorrelation

- (ATXLocationToLaunchCorrelation)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXLocationToLaunchCorrelation *)self initWithCorrelationMatrix:v3 locationTotals:v4];

  return v5;
}

- (ATXLocationToLaunchCorrelation)initWithCorrelationMatrix:(id)matrix locationTotals:(id)totals
{
  matrixCopy = matrix;
  totalsCopy = totals;
  v13.receiver = self;
  v13.super_class = ATXLocationToLaunchCorrelation;
  v8 = [(ATXLocationToLaunchCorrelation *)&v13 init];
  if (v8)
  {
    v9 = [[ATXCorrelationMatrixGuardedData alloc] initWithCorrelationMatrix:matrixCopy locationTotals:totalsCopy];
    v10 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v9];
    lock = v8->_lock;
    v8->_lock = v10;
  }

  return v8;
}

- (void)addVisitForLocation:(id)location event:(id)event value:(double)value
{
  locationCopy = location;
  eventCopy = event;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__ATXLocationToLaunchCorrelation_addVisitForLocation_event_value___block_invoke;
  v13[3] = &unk_278599C00;
  v14 = locationCopy;
  v15 = eventCopy;
  valueCopy = value;
  v11 = eventCopy;
  v12 = locationCopy;
  [(_PASLock *)lock runWithLockAcquired:v13];
}

void __66__ATXLocationToLaunchCorrelation_addVisitForLocation_event_value___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15[1] objectForKeyedSubscript:*(a1 + 32)];

  if (!v3)
  {
    v4 = objc_opt_new();
    [v15[1] setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }

  v5 = MEMORY[0x277CCABB0];
  v6 = [v15[1] objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  [v7 doubleValue];
  v9 = [v5 numberWithDouble:v8 + *(a1 + 48)];
  v10 = [v15[1] objectForKeyedSubscript:*(a1 + 32)];
  [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v15[2] objectForKeyedSubscript:*(a1 + 32)];
  [v12 doubleValue];
  v14 = [v11 numberWithDouble:v13 + *(a1 + 48)];
  [v15[2] setObject:v14 forKeyedSubscript:*(a1 + 32)];
}

- (double)launchProbabilityForEvent:(id)event atLocation:(id)location
{
  eventCopy = event;
  locationCopy = location;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__ATXLocationToLaunchCorrelation_launchProbabilityForEvent_atLocation___block_invoke;
  v13[3] = &unk_278599C28;
  v16 = &v17;
  v9 = eventCopy;
  v14 = v9;
  v10 = locationCopy;
  v15 = v10;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __71__ATXLocationToLaunchCorrelation_launchProbabilityForEvent_atLocation___block_invoke(void *a1, uint64_t a2)
{
  result = [ATXLocationToLaunchCorrelation _launchProbabilityForEvent:a1[4] atLocation:a1[5] correlationMatrix:*(a2 + 8) locationTotals:*(a2 + 16)];
  *(*(a1[6] + 8) + 24) = v4;
  return result;
}

- (double)totalLaunchesForEvent:(id)event atLocation:(id)location
{
  eventCopy = event;
  locationCopy = location;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__ATXLocationToLaunchCorrelation_totalLaunchesForEvent_atLocation___block_invoke;
  v13[3] = &unk_278599C28;
  v16 = &v17;
  v9 = eventCopy;
  v14 = v9;
  v10 = locationCopy;
  v15 = v10;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __67__ATXLocationToLaunchCorrelation_totalLaunchesForEvent_atLocation___block_invoke(void *a1, uint64_t a2)
{
  result = [ATXLocationToLaunchCorrelation _totalLaunchesForEvent:a1[4] atLocation:a1[5] correlationMatrix:*(a2 + 8)];
  *(*(a1[6] + 8) + 24) = v4;
  return result;
}

- (double)totalLaunchesAtLocation:(id)location
{
  locationCopy = location;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ATXLocationToLaunchCorrelation_totalLaunchesAtLocation___block_invoke;
  v9[3] = &unk_278599C50;
  v11 = &v12;
  v6 = locationCopy;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __58__ATXLocationToLaunchCorrelation_totalLaunchesAtLocation___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [ATXLocationToLaunchCorrelation _totalLaunchesAtLocation:*(a1 + 32) locationTotals:*(a2 + 16)];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (double)totalLaunches
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ATXLocationToLaunchCorrelation_totalLaunches__block_invoke;
  v5[3] = &unk_278599C78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__ATXLocationToLaunchCorrelation_totalLaunches__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3[2];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3[2] objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v8), v12}];
        [v9 doubleValue];
        *(*(*(a1 + 32) + 8) + 24) = v10 + *(*(*(a1 + 32) + 8) + 24);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (double)launchProbabilityForEvent:(id)event atLocationsWithProbabilities:(id)probabilities
{
  eventCopy = event;
  probabilitiesCopy = probabilities;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__ATXLocationToLaunchCorrelation_launchProbabilityForEvent_atLocationsWithProbabilities___block_invoke;
  v13[3] = &unk_278599CA0;
  v9 = probabilitiesCopy;
  v14 = v9;
  v10 = eventCopy;
  v15 = v10;
  v16 = &v17;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __89__ATXLocationToLaunchCorrelation_launchProbabilityForEvent_atLocationsWithProbabilities___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKeyedSubscript:{v9, v15}];
        [v10 doubleValue];
        v12 = v11;

        if (v12 != 0.0)
        {
          [ATXLocationToLaunchCorrelation _launchProbabilityForEvent:*(a1 + 40) atLocation:v9 correlationMatrix:v3[1] locationTotals:v3[2]];
          *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v12 * v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (ATXLocationToLaunchCorrelation)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v9 forKey:@"correlationMatrix"];
  v15 = [coderCopy decodeObjectOfClasses:v13 forKey:@"locationTotals"];

  v16 = [(ATXLocationToLaunchCorrelation *)self initWithCorrelationMatrix:v14 locationTotals:v15];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATXLocationToLaunchCorrelation_encodeWithCoder___block_invoke;
  v7[3] = &unk_278599CC8;
  v8 = coderCopy;
  v6 = coderCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __50__ATXLocationToLaunchCorrelation_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v5 = a2;
  [v3 encodeObject:v4 forKey:@"correlationMatrix"];
  v6 = *(a1 + 32);
  v7 = v5[2];

  return [v6 encodeObject:v7 forKey:@"locationTotals"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__30;
  v11 = __Block_byref_object_dispose__30;
  v12 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ATXLocationToLaunchCorrelation_copyWithZone___block_invoke;
  v6[3] = &unk_278599CF0;
  v6[4] = &v7;
  v6[5] = zone;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__ATXLocationToLaunchCorrelation_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3[1];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v3[1] objectForKeyedSubscript:{v10, v19}];
        v12 = [v11 mutableCopy];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [ATXLocationToLaunchCorrelation allocWithZone:*(a1 + 40)];
  v14 = [v3[2] mutableCopy];
  v15 = [(ATXLocationToLaunchCorrelation *)v13 initWithCorrelationMatrix:v4 locationTotals:v14];
  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x277D85DE8];
}

+ (double)_launchProbabilityForEvent:(id)event atLocation:(id)location correlationMatrix:(id)matrix locationTotals:(id)totals
{
  totalsCopy = totals;
  locationCopy = location;
  eventCopy = event;
  v12 = [matrix objectForKeyedSubscript:locationCopy];
  v13 = [v12 objectForKeyedSubscript:eventCopy];

  [v13 doubleValue];
  v15 = v14;

  v16 = [totalsCopy objectForKeyedSubscript:locationCopy];

  [v16 doubleValue];
  v18 = v17;

  if (v15 <= v18)
  {
    result = 0.0;
    if (v18 > 0.0)
    {
      return v15 / v18;
    }
  }

  else
  {
    v19 = __atxlog_handle_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXLocationToLaunchCorrelation _launchProbabilityForEvent:v19 atLocation:? correlationMatrix:? locationTotals:?];
    }

    return 0.0;
  }

  return result;
}

+ (double)_totalLaunchesForEvent:(id)event atLocation:(id)location correlationMatrix:(id)matrix
{
  eventCopy = event;
  v8 = [matrix objectForKeyedSubscript:location];
  v9 = [v8 objectForKeyedSubscript:eventCopy];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

+ (double)_totalLaunchesAtLocation:(id)location locationTotals:(id)totals
{
  v4 = [totals objectForKeyedSubscript:location];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end