@interface ATXInformationHeuristicRefreshLocationTrigger
+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now;
- (ATXInformationHeuristicRefreshLocationTrigger)initWithCoder:(id)coder;
- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocationManager:(id)manager regionToMonitor:(id)monitor;
- (void)_run;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInformationHeuristicRefreshLocationTrigger

- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocationManager:(id)manager regionToMonitor:(id)monitor
{
  managerCopy = manager;
  monitorCopy = monitor;
  v12.receiver = self;
  v12.super_class = ATXInformationHeuristicRefreshLocationTrigger;
  v9 = [(ATXInformationHeuristicRefreshTrigger *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationManager, manager);
    objc_storeStrong(&v10->_regionToMonitor, monitor);
  }

  return v10;
}

- (void)_run
{
  v17 = *MEMORY[0x277D85DE8];
  getCurrentLocation = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
  v4 = __atxlog_handle_gi();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (getCurrentLocation)
  {
    if (v5)
    {
      v6 = [getCurrentLocation description];
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "[Location] Received %@", &v15, 0xCu);
    }

    v7 = objc_opt_class();
    v8 = [MEMORY[0x277CBEAA8] now];
    LOBYTE(v7) = [v7 _locationIsStaleOrNotAccurateEnough:getCurrentLocation now:v8];

    if ((v7 & 1) == 0)
    {
      regionToMonitor = self->_regionToMonitor;
      [getCurrentLocation coordinate];
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

      delegate = [(ATXInformationHeuristicRefreshTrigger *)self delegate];
      registeredHeuristics = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
      [delegate informationHeuristicRefreshTrigger:self didTriggerRefreshForHeuristics:registeredHeuristics];

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

+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now
{
  v19 = *MEMORY[0x277D85DE8];
  enoughCopy = enough;
  nowCopy = now;
  timestamp = [enoughCopy timestamp];
  [nowCopy timeIntervalSinceDate:timestamp];
  v9 = v8;

  if (v9 <= 900.0)
  {
    [enoughCopy horizontalAccuracy];
    if (v12 <= 200.0)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v10 = __atxlog_handle_gi();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [enoughCopy horizontalAccuracy];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshLocationTrigger;
  coderCopy = coder;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_regionToMonitor forKey:{@"regionToMonitor", v5.receiver, v5.super_class}];
}

- (ATXInformationHeuristicRefreshLocationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionToMonitor"];
  error = [coderCopy error];

  selfCopy = 0;
  if (!error && v5)
  {
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    self = [(ATXInformationHeuristicRefreshLocationTrigger *)self initWithLocationManager:mEMORY[0x277D41BF8] regionToMonitor:v5];

    selfCopy = self;
  }

  return selfCopy;
}

@end