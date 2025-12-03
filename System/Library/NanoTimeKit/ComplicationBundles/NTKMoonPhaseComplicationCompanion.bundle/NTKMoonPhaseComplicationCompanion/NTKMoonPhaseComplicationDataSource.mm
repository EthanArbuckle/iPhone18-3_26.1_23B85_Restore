@interface NTKMoonPhaseComplicationDataSource
+ (id)appIdentifier;
- (NTKMoonPhaseComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_animationGroupForDate:(id)date event:(int64_t)event haveLocation:(BOOL)location;
- (id)_currentTimelineEntry:(BOOL)entry;
- (id)_entryModelsForDate:(id)date nextEvaluationDate:(id *)evaluationDate;
- (id)_timelineEntryFromModel:(id)model;
- (id)currentSwitcherTemplate;
- (id)loadEntryModelsForDay:(id)day;
- (unint64_t)timelineAnimationBehavior;
- (void)_invalidate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)getTimelineEndDateWithHandler:(id)handler;
- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler;
@end

@implementation NTKMoonPhaseComplicationDataSource

- (NTKMoonPhaseComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v12.receiver = self;
  v12.super_class = NTKMoonPhaseComplicationDataSource;
  v5 = [(NTKMoonPhaseComplicationDataSource *)&v12 initWithComplication:complication family:family forDevice:device];
  v6 = v5;
  if (v5)
  {
    [(NTKMoonPhaseComplicationDataSource *)v5 _startObserving];
    v7 = +[NTKLocationManager sharedLocationManager];
    anyLocation = [v7 anyLocation];
    [(NTKMoonPhaseComplicationDataSource *)v6 setLocation:anyLocation];

    v9 = objc_opt_new();
    entryModelCache = v6->_entryModelCache;
    v6->_entryModelCache = v9;

    [(NTKTimelineEntryModelCache *)v6->_entryModelCache setDataSource:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(NTKMoonPhaseComplicationDataSource *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NTKMoonPhaseComplicationDataSource;
  [(NTKMoonPhaseComplicationDataSource *)&v3 dealloc];
}

- (void)_startObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_invalidate" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v3 addObserver:self selector:"_invalidate" name:NSCalendarDayChangedNotification object:0];
  [v3 addObserver:self selector:"_invalidate" name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)_stopObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  [v3 removeObserver:self name:NSCalendarDayChangedNotification object:0];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)becomeActive
{
  v3 = +[NTKLocationManager sharedLocationManager];
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_19E0;
  v8 = &unk_8280;
  objc_copyWeak(&v9, &location);
  v4 = [v3 startLocationUpdatesWithIdentifier:@"ntk.moonPhaseComplicationDataSource" handler:&v5];
  [(NTKMoonPhaseComplicationDataSource *)self setToken:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)becomeInactive
{
  if (self->_token)
  {
    v3 = +[NTKLocationManager sharedLocationManager];
    [v3 stopLocationUpdatesForToken:self->_token];

    token = self->_token;
    self->_token = 0;
  }
}

- (id)_currentTimelineEntry:(BOOL)entry
{
  entryCopy = entry;
  v5 = +[NTKDate complicationDate];
  if (entryCopy && ![(NTKTimelineEntryModelCache *)self->_entryModelCache hasEntryModelForDate:v5])
  {
    v7 = [(NTKMoonPhaseComplicationDataSource *)self _entryModelsForDate:v5 nextEvaluationDate:0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v6 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (v6)
          {
            entryDate = [*(*(&v18 + 1) + 8 * i) entryDate];
            v14 = [entryDate compare:v5];

            if (v14 != -1)
            {
              continue;
            }
          }

          v15 = v12;

          v6 = v15;
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(NTKTimelineEntryModelCache *)self->_entryModelCache entryModelForDate:v5];
  }

  v16 = [(NTKMoonPhaseComplicationDataSource *)self _timelineEntryFromModel:v6];

  return v16;
}

- (id)currentSwitcherTemplate
{
  v2 = [(NTKMoonPhaseComplicationDataSource *)self _currentTimelineEntry:1];
  complicationTemplate = [v2 complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(NTKMoonPhaseComplicationDataSource *)self _currentTimelineEntry:0];
  (*(handler + 2))(handlerCopy, v6);
}

- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [(NTKTimelineEntryModelCache *)self->_entryModelCache entryModelsAfterDate:date limit:limit];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(NTKMoonPhaseComplicationDataSource *)self _timelineEntryFromModel:*(*(&v17 + 1) + 8 * v15), v17];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  handlerCopy[2](handlerCopy, v10);
}

- (void)getTimelineEndDateWithHandler:(id)handler
{
  if (self->_location)
  {
    handlerCopy = handler;
    handlerCopy2 = +[NSDate distantFuture];
    (*(handler + 2))(handlerCopy);
  }

  else
  {
    v5 = *(handler + 2);
    handlerCopy2 = handler;
    v5();
  }
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v6 = [NSURL nwcCurrentLocationURLForLocation:self->_location];
  }

  else
  {
    v6 = 0;
  }

  handlerCopy[2](handlerCopy, v6);
}

+ (id)appIdentifier
{
  if (_os_feature_enabled_impl())
  {
    v2 = NTKWorldClockApplicationBundleIdentifier;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)timelineAnimationBehavior
{
  result = [(NTKMoonPhaseComplicationDataSource *)self family];
  if (result != 1)
  {
    v4.receiver = self;
    v4.super_class = NTKMoonPhaseComplicationDataSource;
    return [(NTKMoonPhaseComplicationDataSource *)&v4 timelineAnimationBehavior];
  }

  return result;
}

- (id)_timelineEntryFromModel:(id)model
{
  modelCopy = model;
  v5 = [modelCopy entryForComplicationFamily:{-[NTKMoonPhaseComplicationDataSource family](self, "family")}];
  animationGroup = [modelCopy animationGroup];

  [v5 setTimelineAnimationGroup:animationGroup];

  return v5;
}

- (id)loadEntryModelsForDay:(id)day
{
  dayCopy = day;
  v5 = 3;
  v6 = [NSMutableArray arrayWithCapacity:3];
  v7 = dayCopy;
  v8 = 0;
  v9 = v7;
  while (1)
  {
    v13 = v8;
    v10 = [(NTKMoonPhaseComplicationDataSource *)self _entryModelsForDate:v9 nextEvaluationDate:&v13];
    v11 = v13;

    if ([v10 count])
    {
      [v6 addObjectsFromArray:v10];
    }

    if (!v11)
    {
      break;
    }

    v8 = v11;

    v9 = v8;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  v8 = v9;
LABEL_8:

  return v6;
}

- (void)_invalidate
{
  delegate = [(NTKMoonPhaseComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
}

- (id)_entryModelsForDate:(id)date nextEvaluationDate:(id *)evaluationDate
{
  dateCopy = date;
  v6 = objc_opt_new();
  [v6 setEntryDate:dateCopy];
  v26 = dateCopy;
  v7 = [[NUNIMoonPhaseModel alloc] initWithDate:dateCopy location:self->_location];
  phaseNumber = [v7 phaseNumber];
  hemisphere = [v7 hemisphere];
  eventDate = [v7 eventDate];
  phaseName = [v7 phaseName];
  event = [v7 event];
  [v6 setPhaseNumber:phaseNumber];
  [v6 setHemisphere:hemisphere];
  [v6 setPhaseName:phaseName];
  [v6 setEvent:event];
  [v6 setEventDate:eventDate];
  v13 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    location = self->_location;
    *buf = 138478851;
    v29 = location;
    v30 = 2048;
    v31 = hemisphere;
    v32 = 2112;
    v33 = phaseName;
    v34 = 2048;
    v35 = event;
    v36 = 2112;
    v37 = eventDate;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "NTKMoonPhaseComplicationDataSource creating timeline entry model with location: %{private}@ hemisphere:%ld phase:%@ event:%ld date:%@", buf, 0x34u);
  }

  if (self->_location)
  {
    _animationGroupForNoLocation = [(NTKMoonPhaseComplicationDataSource *)self _animationForDate:eventDate event:event];
    [v6 setAnimationGroup:_animationGroupForNoLocation];
    v16 = v26;
    if (eventDate)
    {
      v17 = objc_opt_new();
      [v17 setEntryDate:eventDate];
      [v17 setEvent:event];
      [v17 setEventDate:eventDate];
      [v17 setPhaseName:phaseName];
      [v17 setPhaseNumber:phaseNumber];
      [v17 setHemisphere:hemisphere];
      [v17 setCurrentEvent:1];
      [v17 setAnimationGroup:_animationGroupForNoLocation];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    _animationGroupForNoLocation = [(NTKMoonPhaseComplicationDataSource *)self _animationGroupForNoLocation];
    [v6 setAnimationGroup:_animationGroupForNoLocation];
    v17 = 0;
    v16 = v26;
  }

  if (evaluationDate)
  {
    v18 = +[NSCalendar currentCalendar];
    eventDate2 = [v6 eventDate];
    if (eventDate2 && (v20 = eventDate2, [v6 eventDate], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v18, "isDate:inSameDayAsDate:", v21, v16), v21, v20, v22))
    {
      eventDate3 = [v6 eventDate];
      *evaluationDate = [v18 dateByAddingUnit:64 value:1 toDate:eventDate3 options:0];
    }

    else
    {
      *evaluationDate = 0;
    }
  }

  v24 = objc_opt_new();
  [v24 addObject:v6];
  if (v17)
  {
    [v24 addObject:v17];
  }

  return v24;
}

- (id)_animationGroupForDate:(id)date event:(int64_t)event haveLocation:(BOOL)location
{
  locationCopy = location;
  dateCopy = date;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = dateCopy;
    v14 = 2048;
    eventCopy = event;
    v16 = 2048;
    v17 = locationCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "NTKMoonPhaseComplicationDataSource animationGroupForDate with date:%@ NTKMoonPhaseEvent:%ld haveLocation?%ld", buf, 0x20u);
  }

  dateCopy = @"no.event";
  if (event != -1 && dateCopy && locationCopy)
  {
    v10 = @"set";
    if (event != 2)
    {
      v10 = 0;
    }

    if (!event)
    {
      v10 = @"rise";
    }

    dateCopy = [NSString stringWithFormat:@"%@.%@", v10, dateCopy];
  }

  return dateCopy;
}

@end