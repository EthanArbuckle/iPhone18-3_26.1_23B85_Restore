@interface ATXTransitionPredictorCR
- (ATXTransitionPredictorCR)initWithLocationManager:(id)a3 locationPredictionsManager:(id)a4;
- (BOOL)isCacheValidForDate:(id)a3 location:(id)a4;
- (BOOL)updateCacheOnActivity:(id)a3;
- (NSDate)now;
- (id)getNextTransitionOnActivity:(id)a3;
- (id)getNextTransitionOnActivity:(id)a3 date:(id)a4 location:(id)a5;
- (id)nextExitDate;
- (id)nextLoi;
- (void)invalidateCache;
@end

@implementation ATXTransitionPredictorCR

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (ATXTransitionPredictorCR)initWithLocationManager:(id)a3 locationPredictionsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXTransitionPredictorCR;
  v9 = [(ATXTransitionPredictorCR *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationManager, a3);
    objc_storeStrong(&v10->_predictionsManager, a4);
    [(ATXTransitionPredictorCR *)v10 invalidateCache];
  }

  return v10;
}

- (id)getNextTransitionOnActivity:(id)a3
{
  v4 = a3;
  if ([v4 shouldDefer])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ATXTransitionPredictorCR *)self now];
    v7 = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
    v5 = [(ATXTransitionPredictorCR *)self getNextTransitionOnActivity:v4 date:v6 location:v7];
  }

  return v5;
}

- (id)getNextTransitionOnActivity:(id)a3 date:(id)a4 location:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5)
  {
    if (![(ATXTransitionPredictorCR *)self isCacheValidForDate:a4 location:a5])
    {
      v9 = [(ATXTransitionPredictorCR *)self updateCacheOnActivity:v8];
      v10 = __atxlog_handle_dailyroutines();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"failure";
        if (v9)
        {
          v11 = @"success";
        }

        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Cache update %@", &v15, 0xCu);
      }
    }

    v12 = self->_upcomingTransition;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isCacheValidForDate:(id)a3 location:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_locationAtLastPrediction && self->_upcomingTransition)
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [(ATXPredictedTransition *)self->_upcomingTransition date];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11 + 60.0;

    [v7 distanceFromLocation:self->_locationAtLastPrediction];
    v14 = v13;
    v15 = @"No";
    if (v13 < 200.0)
    {
      v15 = @"Yes";
    }

    v16 = v15;
    v17 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(ATXPredictedTransition *)self->_upcomingTransition date];
      v22 = 138412802;
      v23 = v6;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Cache status -- time: %@ <? %@ + grace period, location valid: %@", &v22, 0x20u);
    }

    v19 = v14 < 200.0 && v9 < v12;
  }

  else
  {
    v16 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Cache not set", &v22, 2u);
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)invalidateCache
{
  locationAtLastPrediction = self->_locationAtLastPrediction;
  self->_locationAtLastPrediction = 0;

  upcomingTransition = self->_upcomingTransition;
  self->_upcomingTransition = 0;
}

- (BOOL)updateCacheOnActivity:(id)a3
{
  v4 = a3;
  v5 = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
  if (v5 && ![v4 shouldDefer])
  {
    v7 = [(ATXTransitionPredictorCR *)self nextExitDate];
    if ([v4 shouldDefer])
    {
      [(ATXTransitionPredictorCR *)self invalidateCache];
      v6 = 0;
    }

    else
    {
      v8 = [(ATXTransitionPredictorCR *)self nextLoi];
      objc_storeStrong(&self->_locationAtLastPrediction, v5);
      v9 = [[ATXPredictedTransition alloc] initWithDate:v7 loi:v8];
      upcomingTransition = self->_upcomingTransition;
      self->_upcomingTransition = v9;

      v6 = self->_upcomingTransition != 0;
    }
  }

  else
  {
    [(ATXTransitionPredictorCR *)self invalidateCache];
    v6 = 0;
  }

  return v6;
}

- (id)nextExitDate
{
  v3 = [(ATXPredictedLocationsManagerProtocol *)self->_predictionsManager predictedExitTimes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ATXTransitionPredictorCR_nextExitDate__block_invoke;
  v8[3] = &unk_278597FA8;
  v8[4] = self;
  v4 = [v3 _pas_filteredArrayWithTest:v8];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];
  v6 = [v5 firstObject];

  return v6;
}

BOOL __40__ATXTransitionPredictorCR_nextExitDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) now];
  [v3 timeIntervalSinceDate:v4];
  if (v5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) now];
    [v3 timeIntervalSinceDate:v6];
    v8 = v7 < 7200.0;
  }

  return v8;
}

- (id)nextLoi
{
  v2 = [(ATXPredictedLocationsManagerProtocol *)self->_predictionsManager predictedLocationsOfInterest];
  v3 = [v2 _pas_filteredArrayWithTest:&__block_literal_global_133];
  if ([v3 count] > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 firstObject];
  }

  return v4;
}

BOOL __35__ATXTransitionPredictorCR_nextLoi__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 1 || objc_msgSend(v2, "type") == 0;

  return v3;
}

@end