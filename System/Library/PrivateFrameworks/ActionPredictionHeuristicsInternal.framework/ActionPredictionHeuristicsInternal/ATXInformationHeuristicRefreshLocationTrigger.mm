@interface ATXInformationHeuristicRefreshLocationTrigger
+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)a3 now:(id)a4;
- (ATXInformationHeuristicRefreshLocationTrigger)initWithCoder:(id)a3;
- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocationManager:(id)a3 regionToMonitor:(id)a4;
- (void)_run;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInformationHeuristicRefreshLocationTrigger

- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocationManager:(id)a3 regionToMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXInformationHeuristicRefreshLocationTrigger;
  v9 = [(ATXInformationHeuristicRefreshTrigger *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationManager, a3);
    objc_storeStrong(&v10->_regionToMonitor, a4);
  }

  return v10;
}

- (void)_run
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
  v4 = __atxlog_handle_gi();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 description];
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "[Location] Received %@", &v15, 0xCu);
    }

    v7 = objc_opt_class();
    v8 = [MEMORY[0x277CBEAA8] now];
    LOBYTE(v7) = [v7 _locationIsStaleOrNotAccurateEnough:v3 now:v8];

    if ((v7 & 1) == 0)
    {
      regionToMonitor = self->_regionToMonitor;
      [v3 coordinate];
      v10 = [(CLCircularRegion *)regionToMonitor containsCoordinate:?];
      if ([(CLCircularRegion *)self->_regionToMonitor notifyOnEntry]&& self->_previouslyOutsideRegion && v10)
      {
        v11 = __atxlog_handle_gi();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshLocationTrigger: Entering monitored region. Triggering heuristics refresh.", &v15, 2u);
        }
      }

      else
      {
        if (![(CLCircularRegion *)self->_regionToMonitor notifyOnExit]|| !self->_previouslyInsideRegion || v10)
        {
          goto LABEL_20;
        }

        v11 = __atxlog_handle_gi();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshLocationTrigger: Leaving monitored region. Triggering heuristics refresh.", &v15, 2u);
        }
      }

      v12 = [(ATXInformationHeuristicRefreshTrigger *)self delegate];
      v13 = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
      [v12 informationHeuristicRefreshTrigger:self didTriggerRefreshForHeuristics:v13];

LABEL_20:
      self->_previouslyInsideRegion = v10;
      self->_previouslyOutsideRegion = !v10;
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "[Location] Nil location received. Ignoring trigger.", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_start
{
  self->_previouslyInsideRegion = 0;
  self->_previouslyOutsideRegion = 0;
  if (!self->_token)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D77BA8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__ATXInformationHeuristicRefreshLocationTrigger__start__block_invoke;
    v6[3] = &unk_278C3D008;
    objc_copyWeak(&v7, &location);
    v4 = [v3 registerForSuggestedActionNudgeOfType:5 withOptions:0 block:v6];
    token = self->_token;
    self->_token = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __55__ATXInformationHeuristicRefreshLocationTrigger__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _run];
  }

  else
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__ATXInformationHeuristicRefreshLocationTrigger__start__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)a3 now:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 timestamp];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 900.0)
  {
    [v5 horizontalAccuracy];
    if (v12 <= 200.0)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v10 = __atxlog_handle_gi();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v5 horizontalAccuracy];
      v17 = 134217984;
      v18 = v13;
      v11 = "[Location] Uncertainty too large, horizontalAccuracy, %f. Ignoring trigger.";
      goto LABEL_7;
    }
  }

  else
  {
    v10 = __atxlog_handle_gi();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v9;
      v11 = "[Location] Location is stale. Age: %f. Ignoring trigger.";
LABEL_7:
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, 0xCu);
    }
  }

  v14 = 1;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_stop
{
  if (self->_token)
  {
    [MEMORY[0x277D77BA8] unregisterForSuggestedActionNudgeOfType:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshLocationTrigger;
  v4 = a3;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_regionToMonitor forKey:{@"regionToMonitor", v5.receiver, v5.super_class}];
}

- (ATXInformationHeuristicRefreshLocationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regionToMonitor"];
  v6 = [v4 error];

  v7 = 0;
  if (!v6 && v5)
  {
    v8 = [MEMORY[0x277D41BF8] sharedInstance];
    self = [(ATXInformationHeuristicRefreshLocationTrigger *)self initWithLocationManager:v8 regionToMonitor:v5];

    v7 = self;
  }

  return v7;
}

@end