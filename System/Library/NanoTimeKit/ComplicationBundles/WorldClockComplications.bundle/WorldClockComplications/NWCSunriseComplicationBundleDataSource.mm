@interface NWCSunriseComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
- (BOOL)_needsCurrentEventEntry;
- (BOOL)_needsToSendGeocodingRequest;
- (NWCSunriseComplicationBundleDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_animationGroupForDate:(id)date showingSunrise:(BOOL)sunrise constantSun:(int64_t)sun haveLocation:(BOOL)location;
- (id)_entryModelsForDate:(id)date nextEvaluationDate:(id *)evaluationDate;
- (id)_timelineEntryFromEntry:(id)entry;
- (id)currentSwitcherTemplate;
- (void)_chinaLocationShiftRequest:(id)request;
- (void)_geocodeRequestDelayTimerTriggerred;
- (void)_handleLocation:(id)location error:(id)error;
- (void)_invalidate;
- (void)_scheduleReverseGeocodeTimer:(double)timer;
- (void)_startObserving;
- (void)_stopObserving;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getTimelineEndDateWithHandler:(id)handler;
- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler;
@end

@implementation NWCSunriseComplicationBundleDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (family < 7 && ((0x57u >> family) & 1) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    LOBYTE(v7) = 1;
    if (family != 3)
    {
      v8 = *MEMORY[0x277CBB668];
      v6 = sub_23BDD908C(v6);
      v10 = **(v9 + 3760);
      if (v11 != family && v10 != family)
      {
        if (family <= 0xC)
        {
          v7 = 0x1580u >> family;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }
    }

    if (family == 10)
    {
      LOBYTE(v7) = v7 & sub_23BDD903C(v6);
    }

    else if (family == 11)
    {
      v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2C1C2266-9A61-4756-8AFD-9DFE14C54864"];
      v14 = [deviceCopy supportsCapability:v13];

      LOBYTE(v7) = v14 | v7;
    }
  }

  return v7 & 1;
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  v4 = MEMORY[0x277CCAD78];
  deviceCopy = device;
  v6 = [[v4 alloc] initWithUUIDString:@"CB0D11F9-5EA4-4B0F-B640-0D6D61FC7116"];
  v7 = [deviceCopy supportsCapability:v6];

  return v7;
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion
{
  completionCopy = completion;
  v6 = NTALogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23BDCF000, v6, OS_LOG_TYPE_DEFAULT, "Providing sunrise/sunset widget migration", v8, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.NanoWorldClock.WorldClockWidgetExtension" containerBundleIdentifier:@"com.apple.NanoWorldClock" kind:@"SunriseSunsetWidget" intent:0];
  completionCopy[2](completionCopy, v7);
}

- (NWCSunriseComplicationBundleDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v21.receiver = self;
  v21.super_class = NWCSunriseComplicationBundleDataSource;
  v5 = [(CLKCComplicationDataSource *)&v21 initWithComplication:complication family:family forDevice:device];
  v6 = v5;
  if (v5)
  {
    [(NWCSunriseComplicationBundleDataSource *)v5 _startObserving];
    v8 = sub_23BDD90F8(v7);
    sharedLocationManager = [*(v9 + 112) sharedLocationManager];
    currentLocation = [sharedLocationManager currentLocation];

    v12 = +[NWCComplicationGeocoder sharedGeocoder];
    v13 = [v12 cachedPlacemarkForLocation:currentLocation];

    v14 = NWCComplicationLocationNameForPlacemark(currentLocation, v13);
    locationName = v6->_locationName;
    v6->_locationName = v14;

    displayedLocation = v6->_displayedLocation;
    v6->_displayedLocation = currentLocation;
    v17 = currentLocation;

    v18 = [[NWCComplicationTimelineEntryModelCache alloc] initWithDataSource:v6];
    cache = v6->_cache;
    v6->_cache = v18;
  }

  return v6;
}

- (void)dealloc
{
  [(NSTimer *)self->_geocodeRequestDelayTimer invalidate];
  [(NWCSunriseComplicationBundleDataSource *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NWCSunriseComplicationBundleDataSource;
  [(NWCSunriseComplicationBundleDataSource *)&v3 dealloc];
}

- (void)becomeActive
{
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23BDD54F4;
  v12 = &unk_278B99AC0;
  objc_copyWeak(&v13, &location);
  v3 = MEMORY[0x23EEBDCB0](&v9);
  v5 = sub_23BDD90F8(v4);
  sharedLocationManager = [*(v6 + 112) sharedLocationManager];
  v8 = [sharedLocationManager startLocationUpdatesWithIdentifier:@"ntk.sunriseComplicationDataSource" handler:v3];
  [(NWCSunriseComplicationBundleDataSource *)self setToken:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)becomeInactive
{
  token = [(NWCSunriseComplicationBundleDataSource *)self token];

  if (token)
  {
    v5 = sub_23BDD90F8(v4);
    sharedLocationManager = [*(v6 + 112) sharedLocationManager];
    token2 = [(NWCSunriseComplicationBundleDataSource *)self token];
    [sharedLocationManager stopLocationUpdatesForToken:token2];

    [(NWCSunriseComplicationBundleDataSource *)self setToken:0];
  }

  [(NWCSunriseComplicationBundleDataSource *)self setGeocodeDelayedLocation:0];
  geocodeRequestDelayTimer = [(NWCSunriseComplicationBundleDataSource *)self geocodeRequestDelayTimer];
  [geocodeRequestDelayTimer invalidate];

  [(NWCSunriseComplicationBundleDataSource *)self setGeocodeRequestDelayTimer:0];
  [(NWCSunriseComplicationBundleDataSource *)self setWaitingForGeocodeRequest:0];

  [(NWCSunriseComplicationBundleDataSource *)self setWaitingForChinaShiftingRequest:0];
}

- (id)currentSwitcherTemplate
{
  v2 = [(NWCSunriseComplicationBundleDataSource *)self _currentEntry:1];
  complicationTemplate = [v2 complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(NWCSunriseComplicationBundleDataSource *)self _currentEntry:0];
  (*(handler + 2))(handlerCopy, v6);
}

- (void)getTimelineEndDateWithHandler:(id)handler
{
  handlerCopy = handler;
  displayedLocation = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
  if (displayedLocation)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    distantFuture = 0;
  }

  handlerCopy[2](handlerCopy, distantFuture);
}

- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  handlerCopy = handler;
  cache = [(NWCSunriseComplicationBundleDataSource *)self cache];
  v11 = [cache entryModelsAfterDate:dateCopy limit:limit];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(NWCSunriseComplicationBundleDataSource *)self _timelineEntryFromEntry:*(*(&v20 + 1) + 8 * v17), v20];
        [v12 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  handlerCopy[2](handlerCopy, v12);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  cache = [(NWCSunriseComplicationBundleDataSource *)self cache];
  [cache invalidate];

  delegate = [(CLKCComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
}

- (id)_animationGroupForDate:(id)date showingSunrise:(BOOL)sunrise constantSun:(int64_t)sun haveLocation:(BOOL)location
{
  if (location)
  {
    v7 = @"sunset";
    if (sunrise)
    {
      v7 = @"sunrise";
    }

    date = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, date];
    if (sun)
    {
      v9 = [@"constant." stringByAppendingString:date];

      date = v9;
    }
  }

  else
  {
    date = @"no.event";
  }

  return date;
}

- (void)_startObserving
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__invalidate name:*MEMORY[0x277CBE620] object:0];
}

- (void)_stopObserving
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];
}

- (void)_geocodeRequestDelayTimerTriggerred
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_geocodeDelayedLocation)
  {
    if (![(NWCSunriseComplicationBundleDataSource *)self isWaitingForGeocodeRequest])
    {
      [(NWCSunriseComplicationBundleDataSource *)self setWaitingForGeocodeRequest:1];
      geocodeDelayedLocation = [(NWCSunriseComplicationBundleDataSource *)self geocodeDelayedLocation];
      objc_initWeak(buf, self);
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = sub_23BDD5D20;
      v11 = &unk_278B99AE8;
      objc_copyWeak(&v13, buf);
      v3 = geocodeDelayedLocation;
      v12 = v3;
      v6 = MEMORY[0x23EEBDCB0](&v8);
      v7 = [NWCComplicationGeocoder sharedGeocoder:v8];
      [v7 placemarkForLocation:v3 handler:v6];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
      goto LABEL_9;
    }

    v3 = NTALogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v4 = "Reverse geocode delay timer was triggered, but we are already waiting for a reverse geocode response.";
LABEL_7:
      _os_log_impl(&dword_23BDCF000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    }
  }

  else
  {
    v3 = NTALogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v4 = "Reverse geocode delay timer was triggered, but the delayed location is missing.";
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)_handleLocation:(id)location error:(id)error
{
  locationCopy = location;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (locationCopy)
  {
    v6 = NTALogForCategory(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BDCF000, v6, OS_LOG_TYPE_DEFAULT, "Received new location", buf, 2u);
    }

    if ([(NWCSunriseComplicationBundleDataSource *)self _needsToSendGeocodingRequest])
    {
      [(NWCSunriseComplicationBundleDataSource *)self setGeocodeDelayedLocation:locationCopy];
      v7 = NTALogForCategory(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_23BDCF000, v7, OS_LOG_TYPE_DEFAULT, "For new location, check if we should start a geocode delay timer.", v14, 2u);
      }

      geocodeRequestDelayTimer = [(NWCSunriseComplicationBundleDataSource *)self geocodeRequestDelayTimer];
      if (!geocodeRequestDelayTimer || (v9 = geocodeRequestDelayTimer, -[NWCSunriseComplicationBundleDataSource geocodeRequestDelayTimer](self, "geocodeRequestDelayTimer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isValid], v10, v9, (v11 & 1) == 0))
      {
        [(NWCSunriseComplicationBundleDataSource *)self _scheduleReverseGeocodeTimer:900.0];
        [(NWCSunriseComplicationBundleDataSource *)self _geocodeRequestDelayTimerTriggerred];
      }
    }

    if ([(NWCSunriseComplicationBundleDataSource *)self _needsToSendChinaLocationShiftRequest])
    {
      v12 = NTALogForCategory(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_23BDCF000, v12, OS_LOG_TYPE_DEFAULT, "For new location, send a China location shifting request.", v13, 2u);
      }

      [(NWCSunriseComplicationBundleDataSource *)self _chinaLocationShiftRequest:locationCopy];
    }
  }

  [(NWCSunriseComplicationBundleDataSource *)self setDisplayedLocation:locationCopy];
  [(NWCSunriseComplicationBundleDataSource *)self _invalidate];
}

- (BOOL)_needsToSendGeocodingRequest
{
  family = [(CLKCComplicationDataSource *)self family];
  if (family != 1)
  {
    LOBYTE(family) = [(CLKCComplicationDataSource *)self family]== 11;
  }

  return family;
}

- (void)_scheduleReverseGeocodeTimer:(double)timer
{
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__geocodeRequestDelayTimerTriggerred selector:0 userInfo:0 repeats:timer];
  [(NWCSunriseComplicationBundleDataSource *)self setGeocodeRequestDelayTimer:v4];
}

- (void)_chinaLocationShiftRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_waitingForChinaShiftingRequest)
  {
    v5 = NTALogForCategory(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BDCF000, v5, OS_LOG_TYPE_DEFAULT, "China location shift was triggered, but we are already waiting for a China location shift response.", buf, 2u);
    }
  }

  else
  {
    [requestCopy coordinate];
    v7 = v6;
    [requestCopy coordinate];
    v9 = v8;
    if ([MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:v7])
    {
      if (qword_27E1C7980 != -1)
      {
        sub_23BDD880C();
      }

      objc_initWeak(&location, self);
      v10 = NTALogForCategory(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = requestCopy;
        _os_log_impl(&dword_23BDCF000, v10, OS_LOG_TYPE_DEFAULT, "Kicking off asynchronous China location shift request for %@", buf, 0xCu);
      }

      self->_waitingForChinaShiftingRequest = 1;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_23BDD63DC;
      v22[3] = &unk_278B99B10;
      objc_copyWeak(&v24, &location);
      v11 = requestCopy;
      v23 = v11;
      v12 = MEMORY[0x23EEBDCB0](v22);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = sub_23BDD657C;
      v20 = &unk_278B99B38;
      objc_copyWeak(&v21, &location);
      v13 = MEMORY[0x23EEBDCB0](&v17);
      v14 = qword_27E1C7978;
      [v11 horizontalAccuracy];
      [v14 shiftCoordinate:v12 accuracy:0 withCompletionHandler:v13 mustGoToNetworkCallback:MEMORY[0x277D85CD0] errorHandler:v7 callbackQueue:{v9, v15}];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_entryModelsForDate:(id)date nextEvaluationDate:(id *)evaluationDate
{
  dateCopy = date;
  displayedLocation = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];

  if (displayedLocation)
  {
    evaluationDateCopy = evaluationDate;
    [(CLLocation *)self->_displayedLocation coordinate];
    v8 = v7;
    [(CLLocation *)self->_displayedLocation coordinate];
    v10 = v9;
    _animationGroupForNoLocation = [MEMORY[0x277CFA738] transitInfoForDate:dateCopy location:v8];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [_animationGroupForNoLocation day];
    rise = [_animationGroupForNoLocation rise];
    if (rise)
    {
      v16 = rise;
      v17 = sub_23BDD9010(v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = [_animationGroupForNoLocation set];
    if (v21)
    {
      v23 = v21;
      v24 = sub_23BDD9010(v22);
    }

    else
    {
      v24 = 0;
    }

    constantSun = [_animationGroupForNoLocation constantSun];
    if (constantSun)
    {
      v26 = 1;
    }

    else
    {
      v26 = v17 == 0;
    }

    v27 = v26 || v24 == 0;
    v79 = v17;
    v80 = v13;
    v82 = v24;
    if (v27)
    {
      v28 = constantSun;
      v29 = currentCalendar;
      if (constantSun == 2)
      {
        v30 = off_278B99710;
      }

      else
      {
        v30 = off_278B99718;
      }

      v31 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v13 showingSunrise:constantSun == 2 constantSun:constantSun];
      v32 = *v30;
      v33 = objc_opt_class();
      displayedLocation2 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
      locationName = [(NWCSunriseComplicationBundleDataSource *)self locationName];
      chinaShiftedLocation = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
      device = [(CLKCComplicationDataSource *)self device];
      v83 = v31;
      v19 = [v33 entryModelWithEntryDate:v13 eventDate:0 atLocation:displayedLocation2 withDisplayName:locationName chinaShiftedLocation:chinaShiftedLocation constantSun:v28 animationGroup:v31 device:device];

      v20 = 0;
      if (evaluationDateCopy)
      {
        *evaluationDateCopy = 0;
      }
    }

    else
    {
      [dateCopy timeIntervalSinceDate:v17];
      v39 = v38;
      [dateCopy timeIntervalSinceDate:v24];
      v78 = currentCalendar;
      if (v39 >= 0.0)
      {
        if (v40 < 0.0)
        {
          v51 = [currentCalendar dateByAddingUnit:64 value:1 toDate:v17 options:0];
          v52 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v24 showingSunrise:0 constantSun:0];
          displayedLocation3 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
          locationName2 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
          [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
          v56 = v55 = v24;
          device2 = [(CLKCComplicationDataSource *)self device];
          v83 = v51;
          v19 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunsetTimelineEntryModel entryModelWithEntryDate:v51 eventDate:v55 atLocation:displayedLocation3 withDisplayName:locationName2 chinaShiftedLocation:v56 constantSun:0 animationGroup:v52 device:device2];

          v20 = 0;
          if ([(NWCSunriseComplicationBundleDataSource *)self _needsCurrentEventEntry])
          {
            displayedLocation4 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
            locationName3 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
            chinaShiftedLocation2 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
            device3 = [(CLKCComplicationDataSource *)self device];
            v20 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunsetTimelineEntryModel currentEventEntryModelWithEntryAndEventDate:v82 atLocation:displayedLocation4 withDisplayName:locationName3 chinaShiftedLocation:chinaShiftedLocation2 constantSun:0 animationGroup:v52 device:device3];
          }

          v62 = v82;
          if (evaluationDateCopy)
          {
            v63 = v82;
            *evaluationDateCopy = v82;
          }

          v29 = v78;
          goto LABEL_40;
        }

        v64 = [currentCalendar dateByAddingUnit:64 value:1 toDate:v24 options:0];
        v65 = [currentCalendar dateByAddingUnit:16 value:1 toDate:dateCopy options:0];
        v66 = [MEMORY[0x277CFA738] transitInfoForDate:v65 location:{v8, v10}];
        rise2 = [v66 rise];

        v69 = sub_23BDD9010(v68);

        v70 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v69 showingSunrise:1 constantSun:0];
        displayedLocation5 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
        locationName4 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
        chinaShiftedLocation3 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
        device4 = [(CLKCComplicationDataSource *)self device];
        v83 = v64;
        v19 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunriseTimelineEntryModel entryModelWithEntryDate:v64 eventDate:v69 atLocation:displayedLocation5 withDisplayName:locationName4 chinaShiftedLocation:chinaShiftedLocation3 constantSun:0 animationGroup:v70 device:device4];

        if (evaluationDateCopy)
        {
          *evaluationDateCopy = 0;
        }

        v20 = 0;
      }

      else
      {
        v41 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v17 showingSunrise:1 constantSun:0];
        displayedLocation6 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
        locationName5 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
        chinaShiftedLocation4 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
        device5 = [(CLKCComplicationDataSource *)self device];
        v83 = v41;
        v19 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunriseTimelineEntryModel entryModelWithEntryDate:v13 eventDate:v17 atLocation:displayedLocation6 withDisplayName:locationName5 chinaShiftedLocation:chinaShiftedLocation4 constantSun:0 animationGroup:v41 device:device5];

        v20 = 0;
        if ([(NWCSunriseComplicationBundleDataSource *)self _needsCurrentEventEntry])
        {
          displayedLocation7 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
          locationName6 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
          chinaShiftedLocation5 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
          device6 = [(CLKCComplicationDataSource *)self device];
          v20 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunriseTimelineEntryModel currentEventEntryModelWithEntryAndEventDate:v17 atLocation:displayedLocation7 withDisplayName:locationName6 chinaShiftedLocation:chinaShiftedLocation5 constantSun:0 animationGroup:v41 device:device6];
        }

        if (evaluationDateCopy)
        {
          v50 = v17;
          *evaluationDateCopy = v17;
        }
      }

      v29 = v78;
    }

    v62 = v82;
LABEL_40:

    goto LABEL_41;
  }

  _animationGroupForNoLocation = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForNoLocation];
  device7 = [(CLKCComplicationDataSource *)self device];
  v19 = [NWCSunriseComplicationTimelineEntryModel placeholderEntryModelWithEntryDate:dateCopy animationGroup:_animationGroupForNoLocation device:device7];

  v20 = 0;
  if (evaluationDate)
  {
    *evaluationDate = 0;
  }

LABEL_41:

  v75 = objc_opt_new();
  [v75 addObject:v19];
  if (v20)
  {
    [v75 addObject:v20];
  }

  v76 = [v75 copy];

  return v76;
}

- (BOOL)_needsCurrentEventEntry
{
  family = [(CLKCComplicationDataSource *)self family];
  if (family != 1)
  {
    LOBYTE(family) = [(CLKCComplicationDataSource *)self family]== 3 || [(CLKCComplicationDataSource *)self family]== 11;
  }

  return family;
}

- (id)_timelineEntryFromEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy timelineEntryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  animationGroup = [entryCopy animationGroup];

  [v5 setTimelineAnimationGroup:animationGroup];

  return v5;
}

@end