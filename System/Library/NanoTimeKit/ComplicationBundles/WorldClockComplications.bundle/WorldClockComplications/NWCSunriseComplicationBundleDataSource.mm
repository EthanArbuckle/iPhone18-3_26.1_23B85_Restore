@interface NWCSunriseComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
- (BOOL)_needsCurrentEventEntry;
- (BOOL)_needsToSendGeocodingRequest;
- (NWCSunriseComplicationBundleDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_animationGroupForDate:(id)a3 showingSunrise:(BOOL)a4 constantSun:(int64_t)a5 haveLocation:(BOOL)a6;
- (id)_entryModelsForDate:(id)a3 nextEvaluationDate:(id *)a4;
- (id)_timelineEntryFromEntry:(id)a3;
- (id)currentSwitcherTemplate;
- (void)_chinaLocationShiftRequest:(id)a3;
- (void)_geocodeRequestDelayTimerTriggerred;
- (void)_handleLocation:(id)a3 error:(id)a4;
- (void)_invalidate;
- (void)_scheduleReverseGeocodeTimer:(double)a3;
- (void)_startObserving;
- (void)_stopObserving;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getTimelineEndDateWithHandler:(id)a3;
- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5;
@end

@implementation NWCSunriseComplicationBundleDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if (a3 < 7 && ((0x57u >> a3) & 1) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    LOBYTE(v7) = 1;
    if (a3 != 3)
    {
      v8 = *MEMORY[0x277CBB668];
      v6 = sub_23BDD908C(v6);
      v10 = **(v9 + 3760);
      if (v11 != a3 && v10 != a3)
      {
        if (a3 <= 0xC)
        {
          v7 = 0x1580u >> a3;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }
    }

    if (a3 == 10)
    {
      LOBYTE(v7) = v7 & sub_23BDD903C(v6);
    }

    else if (a3 == 11)
    {
      v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2C1C2266-9A61-4756-8AFD-9DFE14C54864"];
      v14 = [v5 supportsCapability:v13];

      LOBYTE(v7) = v14 | v7;
    }
  }

  return v7 & 1;
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a4;
  v6 = [[v4 alloc] initWithUUIDString:@"CB0D11F9-5EA4-4B0F-B640-0D6D61FC7116"];
  v7 = [v5 supportsCapability:v6];

  return v7;
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5
{
  v5 = a5;
  v6 = NTALogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23BDCF000, v6, OS_LOG_TYPE_DEFAULT, "Providing sunrise/sunset widget migration", v8, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.NanoWorldClock.WorldClockWidgetExtension" containerBundleIdentifier:@"com.apple.NanoWorldClock" kind:@"SunriseSunsetWidget" intent:0];
  v5[2](v5, v7);
}

- (NWCSunriseComplicationBundleDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v21.receiver = self;
  v21.super_class = NWCSunriseComplicationBundleDataSource;
  v5 = [(CLKCComplicationDataSource *)&v21 initWithComplication:a3 family:a4 forDevice:a5];
  v6 = v5;
  if (v5)
  {
    [(NWCSunriseComplicationBundleDataSource *)v5 _startObserving];
    v8 = sub_23BDD90F8(v7);
    v10 = [*(v9 + 112) sharedLocationManager];
    v11 = [v10 currentLocation];

    v12 = +[NWCComplicationGeocoder sharedGeocoder];
    v13 = [v12 cachedPlacemarkForLocation:v11];

    v14 = NWCComplicationLocationNameForPlacemark(v11, v13);
    locationName = v6->_locationName;
    v6->_locationName = v14;

    displayedLocation = v6->_displayedLocation;
    v6->_displayedLocation = v11;
    v17 = v11;

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
  v7 = [*(v6 + 112) sharedLocationManager];
  v8 = [v7 startLocationUpdatesWithIdentifier:@"ntk.sunriseComplicationDataSource" handler:v3];
  [(NWCSunriseComplicationBundleDataSource *)self setToken:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)becomeInactive
{
  v3 = [(NWCSunriseComplicationBundleDataSource *)self token];

  if (v3)
  {
    v5 = sub_23BDD90F8(v4);
    v7 = [*(v6 + 112) sharedLocationManager];
    v8 = [(NWCSunriseComplicationBundleDataSource *)self token];
    [v7 stopLocationUpdatesForToken:v8];

    [(NWCSunriseComplicationBundleDataSource *)self setToken:0];
  }

  [(NWCSunriseComplicationBundleDataSource *)self setGeocodeDelayedLocation:0];
  v9 = [(NWCSunriseComplicationBundleDataSource *)self geocodeRequestDelayTimer];
  [v9 invalidate];

  [(NWCSunriseComplicationBundleDataSource *)self setGeocodeRequestDelayTimer:0];
  [(NWCSunriseComplicationBundleDataSource *)self setWaitingForGeocodeRequest:0];

  [(NWCSunriseComplicationBundleDataSource *)self setWaitingForChinaShiftingRequest:0];
}

- (id)currentSwitcherTemplate
{
  v2 = [(NWCSunriseComplicationBundleDataSource *)self _currentEntry:1];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NWCSunriseComplicationBundleDataSource *)self _currentEntry:0];
  (*(a3 + 2))(v5, v6);
}

- (void)getTimelineEndDateWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    v6 = 0;
  }

  v4[2](v4, v6);
}

- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(NWCSunriseComplicationBundleDataSource *)self cache];
  v11 = [v10 entryModelsAfterDate:v8 limit:a4];

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

  v9[2](v9, v12);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v3 = [(NWCSunriseComplicationBundleDataSource *)self cache];
  [v3 invalidate];

  v4 = [(CLKCComplicationDataSource *)self delegate];
  [v4 invalidateEntries];
}

- (id)_animationGroupForDate:(id)a3 showingSunrise:(BOOL)a4 constantSun:(int64_t)a5 haveLocation:(BOOL)a6
{
  if (a6)
  {
    v7 = @"sunset";
    if (a4)
    {
      v7 = @"sunrise";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, a3];
    if (a5)
    {
      v9 = [@"constant." stringByAppendingString:v8];

      v8 = v9;
    }
  }

  else
  {
    v8 = @"no.event";
  }

  return v8;
}

- (void)_startObserving
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__invalidate name:*MEMORY[0x277CBE620] object:0];
}

- (void)_stopObserving
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];
}

- (void)_geocodeRequestDelayTimerTriggerred
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_geocodeDelayedLocation)
  {
    if (![(NWCSunriseComplicationBundleDataSource *)self isWaitingForGeocodeRequest])
    {
      [(NWCSunriseComplicationBundleDataSource *)self setWaitingForGeocodeRequest:1];
      v5 = [(NWCSunriseComplicationBundleDataSource *)self geocodeDelayedLocation];
      objc_initWeak(buf, self);
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = sub_23BDD5D20;
      v11 = &unk_278B99AE8;
      objc_copyWeak(&v13, buf);
      v3 = v5;
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

- (void)_handleLocation:(id)a3 error:(id)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v5)
  {
    v6 = NTALogForCategory(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BDCF000, v6, OS_LOG_TYPE_DEFAULT, "Received new location", buf, 2u);
    }

    if ([(NWCSunriseComplicationBundleDataSource *)self _needsToSendGeocodingRequest])
    {
      [(NWCSunriseComplicationBundleDataSource *)self setGeocodeDelayedLocation:v5];
      v7 = NTALogForCategory(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_23BDCF000, v7, OS_LOG_TYPE_DEFAULT, "For new location, check if we should start a geocode delay timer.", v14, 2u);
      }

      v8 = [(NWCSunriseComplicationBundleDataSource *)self geocodeRequestDelayTimer];
      if (!v8 || (v9 = v8, -[NWCSunriseComplicationBundleDataSource geocodeRequestDelayTimer](self, "geocodeRequestDelayTimer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isValid], v10, v9, (v11 & 1) == 0))
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

      [(NWCSunriseComplicationBundleDataSource *)self _chinaLocationShiftRequest:v5];
    }
  }

  [(NWCSunriseComplicationBundleDataSource *)self setDisplayedLocation:v5];
  [(NWCSunriseComplicationBundleDataSource *)self _invalidate];
}

- (BOOL)_needsToSendGeocodingRequest
{
  v3 = [(CLKCComplicationDataSource *)self family];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(CLKCComplicationDataSource *)self family]== 11;
  }

  return v3;
}

- (void)_scheduleReverseGeocodeTimer:(double)a3
{
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__geocodeRequestDelayTimerTriggerred selector:0 userInfo:0 repeats:a3];
  [(NWCSunriseComplicationBundleDataSource *)self setGeocodeRequestDelayTimer:v4];
}

- (void)_chinaLocationShiftRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    [v4 coordinate];
    v7 = v6;
    [v4 coordinate];
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
        v27 = v4;
        _os_log_impl(&dword_23BDCF000, v10, OS_LOG_TYPE_DEFAULT, "Kicking off asynchronous China location shift request for %@", buf, 0xCu);
      }

      self->_waitingForChinaShiftingRequest = 1;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_23BDD63DC;
      v22[3] = &unk_278B99B10;
      objc_copyWeak(&v24, &location);
      v11 = v4;
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

- (id)_entryModelsForDate:(id)a3 nextEvaluationDate:(id *)a4
{
  v84 = a3;
  v6 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];

  if (v6)
  {
    v81 = a4;
    [(CLLocation *)self->_displayedLocation coordinate];
    v8 = v7;
    [(CLLocation *)self->_displayedLocation coordinate];
    v10 = v9;
    v11 = [MEMORY[0x277CFA738] transitInfoForDate:v84 location:v8];
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [v11 day];
    v14 = [v11 rise];
    if (v14)
    {
      v16 = v14;
      v17 = sub_23BDD9010(v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = [v11 set];
    if (v21)
    {
      v23 = v21;
      v24 = sub_23BDD9010(v22);
    }

    else
    {
      v24 = 0;
    }

    v25 = [v11 constantSun];
    if (v25)
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
      v28 = v25;
      v29 = v12;
      if (v25 == 2)
      {
        v30 = off_278B99710;
      }

      else
      {
        v30 = off_278B99718;
      }

      v31 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v13 showingSunrise:v25 == 2 constantSun:v25];
      v32 = *v30;
      v33 = objc_opt_class();
      v34 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
      v35 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
      v36 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
      v37 = [(CLKCComplicationDataSource *)self device];
      v83 = v31;
      v19 = [v33 entryModelWithEntryDate:v13 eventDate:0 atLocation:v34 withDisplayName:v35 chinaShiftedLocation:v36 constantSun:v28 animationGroup:v31 device:v37];

      v20 = 0;
      if (v81)
      {
        *v81 = 0;
      }
    }

    else
    {
      [v84 timeIntervalSinceDate:v17];
      v39 = v38;
      [v84 timeIntervalSinceDate:v24];
      v78 = v12;
      if (v39 >= 0.0)
      {
        if (v40 < 0.0)
        {
          v51 = [v12 dateByAddingUnit:64 value:1 toDate:v17 options:0];
          v52 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v24 showingSunrise:0 constantSun:0];
          v53 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
          v54 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
          [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
          v56 = v55 = v24;
          v57 = [(CLKCComplicationDataSource *)self device];
          v83 = v51;
          v19 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunsetTimelineEntryModel entryModelWithEntryDate:v51 eventDate:v55 atLocation:v53 withDisplayName:v54 chinaShiftedLocation:v56 constantSun:0 animationGroup:v52 device:v57];

          v20 = 0;
          if ([(NWCSunriseComplicationBundleDataSource *)self _needsCurrentEventEntry])
          {
            v58 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
            v59 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
            v60 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
            v61 = [(CLKCComplicationDataSource *)self device];
            v20 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunsetTimelineEntryModel currentEventEntryModelWithEntryAndEventDate:v82 atLocation:v58 withDisplayName:v59 chinaShiftedLocation:v60 constantSun:0 animationGroup:v52 device:v61];
          }

          v62 = v82;
          if (v81)
          {
            v63 = v82;
            *v81 = v82;
          }

          v29 = v78;
          goto LABEL_40;
        }

        v64 = [v12 dateByAddingUnit:64 value:1 toDate:v24 options:0];
        v65 = [v12 dateByAddingUnit:16 value:1 toDate:v84 options:0];
        v66 = [MEMORY[0x277CFA738] transitInfoForDate:v65 location:{v8, v10}];
        v67 = [v66 rise];

        v69 = sub_23BDD9010(v68);

        v70 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v69 showingSunrise:1 constantSun:0];
        v71 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
        v72 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
        v73 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
        v74 = [(CLKCComplicationDataSource *)self device];
        v83 = v64;
        v19 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunriseTimelineEntryModel entryModelWithEntryDate:v64 eventDate:v69 atLocation:v71 withDisplayName:v72 chinaShiftedLocation:v73 constantSun:0 animationGroup:v70 device:v74];

        if (v81)
        {
          *v81 = 0;
        }

        v20 = 0;
      }

      else
      {
        v41 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForDate:v17 showingSunrise:1 constantSun:0];
        v42 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
        v43 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
        v44 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
        v45 = [(CLKCComplicationDataSource *)self device];
        v83 = v41;
        v19 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunriseTimelineEntryModel entryModelWithEntryDate:v13 eventDate:v17 atLocation:v42 withDisplayName:v43 chinaShiftedLocation:v44 constantSun:0 animationGroup:v41 device:v45];

        v20 = 0;
        if ([(NWCSunriseComplicationBundleDataSource *)self _needsCurrentEventEntry])
        {
          v46 = [(NWCSunriseComplicationBundleDataSource *)self displayedLocation];
          v47 = [(NWCSunriseComplicationBundleDataSource *)self locationName];
          v48 = [(NWCSunriseComplicationBundleDataSource *)self chinaShiftedLocation];
          v49 = [(CLKCComplicationDataSource *)self device];
          v20 = [(NWCSunriseComplicationTimelineEntryModel *)NWCSunriseComplicationSunriseTimelineEntryModel currentEventEntryModelWithEntryAndEventDate:v17 atLocation:v46 withDisplayName:v47 chinaShiftedLocation:v48 constantSun:0 animationGroup:v41 device:v49];
        }

        if (v81)
        {
          v50 = v17;
          *v81 = v17;
        }
      }

      v29 = v78;
    }

    v62 = v82;
LABEL_40:

    goto LABEL_41;
  }

  v11 = [(NWCSunriseComplicationBundleDataSource *)self _animationGroupForNoLocation];
  v18 = [(CLKCComplicationDataSource *)self device];
  v19 = [NWCSunriseComplicationTimelineEntryModel placeholderEntryModelWithEntryDate:v84 animationGroup:v11 device:v18];

  v20 = 0;
  if (a4)
  {
    *a4 = 0;
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
  v3 = [(CLKCComplicationDataSource *)self family];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(CLKCComplicationDataSource *)self family]== 3 || [(CLKCComplicationDataSource *)self family]== 11;
  }

  return v3;
}

- (id)_timelineEntryFromEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 timelineEntryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  v6 = [v4 animationGroup];

  [v5 setTimelineAnimationGroup:v6];

  return v5;
}

@end