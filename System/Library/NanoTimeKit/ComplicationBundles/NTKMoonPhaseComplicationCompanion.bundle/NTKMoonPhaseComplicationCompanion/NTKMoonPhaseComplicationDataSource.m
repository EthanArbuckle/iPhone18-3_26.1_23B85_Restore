@interface NTKMoonPhaseComplicationDataSource
+ (id)appIdentifier;
- (NTKMoonPhaseComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_animationGroupForDate:(id)a3 event:(int64_t)a4 haveLocation:(BOOL)a5;
- (id)_currentTimelineEntry:(BOOL)a3;
- (id)_entryModelsForDate:(id)a3 nextEvaluationDate:(id *)a4;
- (id)_timelineEntryFromModel:(id)a3;
- (id)currentSwitcherTemplate;
- (id)loadEntryModelsForDay:(id)a3;
- (unint64_t)timelineAnimationBehavior;
- (void)_invalidate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
- (void)getTimelineEndDateWithHandler:(id)a3;
- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5;
@end

@implementation NTKMoonPhaseComplicationDataSource

- (NTKMoonPhaseComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKMoonPhaseComplicationDataSource;
  v5 = [(NTKMoonPhaseComplicationDataSource *)&v12 initWithComplication:a3 family:a4 forDevice:a5];
  v6 = v5;
  if (v5)
  {
    [(NTKMoonPhaseComplicationDataSource *)v5 _startObserving];
    v7 = +[NTKLocationManager sharedLocationManager];
    v8 = [v7 anyLocation];
    [(NTKMoonPhaseComplicationDataSource *)v6 setLocation:v8];

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

- (id)_currentTimelineEntry:(BOOL)a3
{
  v3 = a3;
  v5 = +[NTKDate complicationDate];
  if (v3 && ![(NTKTimelineEntryModelCache *)self->_entryModelCache hasEntryModelForDate:v5])
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
            v13 = [*(*(&v18 + 1) + 8 * i) entryDate];
            v14 = [v13 compare:v5];

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
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKMoonPhaseComplicationDataSource *)self _currentTimelineEntry:0];
  (*(a3 + 2))(v5, v6);
}

- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5
{
  v8 = a5;
  v9 = [(NTKTimelineEntryModelCache *)self->_entryModelCache entryModelsAfterDate:a3 limit:a4];
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

  v8[2](v8, v10);
}

- (void)getTimelineEndDateWithHandler:(id)a3
{
  if (self->_location)
  {
    v4 = a3;
    v6 = +[NSDate distantFuture];
    (*(a3 + 2))(v4);
  }

  else
  {
    v5 = *(a3 + 2);
    v6 = a3;
    v5();
  }
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  if (_os_feature_enabled_impl())
  {
    v6 = [NSURL nwcCurrentLocationURLForLocation:self->_location];
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6);
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

- (id)_timelineEntryFromModel:(id)a3
{
  v4 = a3;
  v5 = [v4 entryForComplicationFamily:{-[NTKMoonPhaseComplicationDataSource family](self, "family")}];
  v6 = [v4 animationGroup];

  [v5 setTimelineAnimationGroup:v6];

  return v5;
}

- (id)loadEntryModelsForDay:(id)a3
{
  v4 = a3;
  v5 = 3;
  v6 = [NSMutableArray arrayWithCapacity:3];
  v7 = v4;
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
  v2 = [(NTKMoonPhaseComplicationDataSource *)self delegate];
  [v2 invalidateEntries];
}

- (id)_entryModelsForDate:(id)a3 nextEvaluationDate:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setEntryDate:v5];
  v26 = v5;
  v7 = [[NUNIMoonPhaseModel alloc] initWithDate:v5 location:self->_location];
  v8 = [v7 phaseNumber];
  v9 = [v7 hemisphere];
  v10 = [v7 eventDate];
  v11 = [v7 phaseName];
  v12 = [v7 event];
  [v6 setPhaseNumber:v8];
  [v6 setHemisphere:v9];
  [v6 setPhaseName:v11];
  [v6 setEvent:v12];
  [v6 setEventDate:v10];
  v13 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    location = self->_location;
    *buf = 138478851;
    v29 = location;
    v30 = 2048;
    v31 = v9;
    v32 = 2112;
    v33 = v11;
    v34 = 2048;
    v35 = v12;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "NTKMoonPhaseComplicationDataSource creating timeline entry model with location: %{private}@ hemisphere:%ld phase:%@ event:%ld date:%@", buf, 0x34u);
  }

  if (self->_location)
  {
    v15 = [(NTKMoonPhaseComplicationDataSource *)self _animationForDate:v10 event:v12];
    [v6 setAnimationGroup:v15];
    v16 = v26;
    if (v10)
    {
      v17 = objc_opt_new();
      [v17 setEntryDate:v10];
      [v17 setEvent:v12];
      [v17 setEventDate:v10];
      [v17 setPhaseName:v11];
      [v17 setPhaseNumber:v8];
      [v17 setHemisphere:v9];
      [v17 setCurrentEvent:1];
      [v17 setAnimationGroup:v15];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v15 = [(NTKMoonPhaseComplicationDataSource *)self _animationGroupForNoLocation];
    [v6 setAnimationGroup:v15];
    v17 = 0;
    v16 = v26;
  }

  if (a4)
  {
    v18 = +[NSCalendar currentCalendar];
    v19 = [v6 eventDate];
    if (v19 && (v20 = v19, [v6 eventDate], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v18, "isDate:inSameDayAsDate:", v21, v16), v21, v20, v22))
    {
      v23 = [v6 eventDate];
      *a4 = [v18 dateByAddingUnit:64 value:1 toDate:v23 options:0];
    }

    else
    {
      *a4 = 0;
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

- (id)_animationGroupForDate:(id)a3 event:(int64_t)a4 haveLocation:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = v7;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "NTKMoonPhaseComplicationDataSource animationGroupForDate with date:%@ NTKMoonPhaseEvent:%ld haveLocation?%ld", buf, 0x20u);
  }

  v9 = @"no.event";
  if (a4 != -1 && v7 && v5)
  {
    v10 = @"set";
    if (a4 != 2)
    {
      v10 = 0;
    }

    if (!a4)
    {
      v10 = @"rise";
    }

    v9 = [NSString stringWithFormat:@"%@.%@", v10, v7];
  }

  return v9;
}

@end