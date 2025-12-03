@interface BSRelativeDateTimer
+ (void)initialize;
- (BSRelativeDateTimer)init;
- (BSRelativeDateTimerDelegate)delegate;
- (double)nextFireInterval;
- (id)_computeDifferenceCurrentAndNextFireInfoForDate:(uint64_t *)date newTimerResolution:(uint64_t *)resolution currentResolution:(uint64_t *)currentResolution currentValue:(uint64_t *)value comparedToNow:;
- (id)date;
- (id)nextFireAfterDate:(id)date;
- (void)_fireAndUpdateTimerIfNecessary;
- (void)_fireForLocaleEvent:(id)event;
- (void)_invalidateTimer;
- (void)dealloc;
- (void)fireAndSchedule;
- (void)powerMonitorSystemDidWakeFromSleep:(id)sleep;
- (void)setDate:(id)date;
@end

@implementation BSRelativeDateTimer

- (void)_invalidateTimer
{
  if (self)
  {
    v2 = *(self + 16);
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      [qword_1ED44FE78 removeObject:v3];

      [*(self + 16) invalidate];
      v4 = *(self + 16);
      *(self + 16) = 0;
    }
  }
}

- (BSRelativeDateTimer)init
{
  v12.receiver = self;
  v12.super_class = BSRelativeDateTimer;
  v2 = [(BSRelativeDateTimer *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695DEE8]);
    v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    gregorian = v2->_gregorian;
    v2->_gregorian = v4;

    v6 = v2->_gregorian;
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [(NSCalendar *)v6 setLocale:currentLocale];

    v8 = +[BSPowerMonitor sharedInstance];
    [v8 addObserver:v2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__fireForLocaleEvent_ name:*MEMORY[0x1E695D8F0] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _BSHandleSignificantTimeChange_0, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)_fireAndUpdateTimerIfNecessary
{
  v30 = 0;
  v31 = 0;
  date = [MEMORY[0x1E695DF00] date];
  v4 = [(BSRelativeDateTimer *)self _computeDifferenceCurrentAndNextFireInfoForDate:date newTimerResolution:&v31 currentResolution:&self->_currResolution currentValue:&self->_currValue comparedToNow:&v30];

  [(NSTimer *)self->_timer timeInterval];
  if (v5 != 1.0 || self->_currResolution)
  {
    [(BSRelativeDateTimer *)self _invalidateTimer];
    v6 = v30;
    v7 = v31;
    v8 = v4;
    v9 = v8;
    v10 = 1.0;
    if (v7 && v6)
    {
      hour = [v8 hour];
      if (hour >= 0)
      {
        v12 = hour;
      }

      else
      {
        v12 = -hour;
      }

      minute = [v9 minute];
      if (minute >= 0)
      {
        v14 = minute;
      }

      else
      {
        v14 = -minute;
      }

      second = [v9 second];
      if (second >= 0)
      {
        v16 = second;
      }

      else
      {
        v16 = -second;
      }

      switch(v7)
      {
        case 1:
          v17 = v16;
          v18 = 60.0;
          break;
        case 2:
          v17 = (v16 + 60 * v14);
          v18 = 3600.0;
          break;
        case 3:
          v17 = (3600 * v12 + 60 * v14 + v16);
          v18 = 86400.0;
          break;
        default:
          v17 = 0.0;
          [MEMORY[0x1E695DF30] raise:@"UnsupportedDateResolutionException" format:{@"Unknown resolution: %lu", v7}];
          v18 = 0.0;
          break;
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v21 = v18 - v17;
      if (v6 == 1)
      {
        v21 = v17;
      }

      if (v17 == 0.0)
      {
        v21 = v18;
      }

      *v20.i64 = *v19.i64 - trunc(*v19.i64);
      v22.f64[0] = NAN;
      v22.f64[1] = NAN;
      v10 = fabs(v21) - *vbslq_s8(vnegq_f64(v22), v20, v19).i64;
    }

    v23 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__fireAndUpdateTimerIfNecessary selector:0 userInfo:1 repeats:v10];
    timer = self->_timer;
    self->_timer = v23;

    v25 = self->_timer;
    objc_opt_self();
    if (v25)
    {
      if ((_MergedGlobals_19 & 1) == 0)
      {
        _MergedGlobals_19 = 1;
        Main = CFRunLoopGetMain();
        CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8E0], &__block_literal_global_20);
      }

      [qword_1ED44FE78 addObject:v25];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    currValue = self->_currValue;
    if (currValue >= 0)
    {
      v29 = currValue;
    }

    else
    {
      v29 = -currValue;
    }

    [WeakRetained timerFiredWithValue:v29 forResolution:self->_currResolution comparedToNow:v30];
  }
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = qword_1ED44FE78;
    qword_1ED44FE78 = v3;
  }
}

uint64_t __45__BSRelativeDateTimer_addTimerToMainRunLoop___block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v0 = qword_1ED44FE78;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = *v9;
    v3 = *MEMORY[0x1E695DA28];
    do
    {
      v4 = 0;
      do
      {
        if (*v9 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * v4);
        v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
        [v6 addTimer:v5 forMode:v3];

        ++v4;
      }

      while (v1 != v4);
      v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v1);
  }

  result = [qword_1ED44FE78 removeAllObjects];
  _MergedGlobals_19 = 0;
  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5 = +[BSPowerMonitor sharedInstance];
  [v5 removeObserver:self];

  [(BSRelativeDateTimer *)self invalidate];
  objc_storeWeak(&self->_delegate, 0);
  v6.receiver = self;
  v6.super_class = BSRelativeDateTimer;
  [(BSRelativeDateTimer *)&v6 dealloc];
}

- (void)_fireForLocaleEvent:(id)event
{
  gregorian = self->_gregorian;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [(NSCalendar *)gregorian setLocale:currentLocale];

  if (self->_date)
  {

    [(BSRelativeDateTimer *)self fireAndSchedule];
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = self->_date;
  v13 = dateCopy;
  if (date != dateCopy)
  {
    self->_date = 0;

    if (v13)
    {
      [(NSDate *)v13 timeIntervalSinceReferenceDate];
      v12 = v6;
      v7 = objc_alloc(MEMORY[0x1E695DF00]);
      *v8.i64 = *v12.i64 - trunc(*v12.i64);
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      v10 = [v7 initWithTimeIntervalSinceReferenceDate:{*v12.i64 - *vbslq_s8(vnegq_f64(v9), v8, v12).i64}];
      v11 = self->_date;
      self->_date = v10;

      [(BSRelativeDateTimer *)self _fireAndUpdateTimerIfNecessary];
    }

    else
    {
      [(BSRelativeDateTimer *)self invalidate];
    }
  }
}

- (id)date
{
  v2 = [(NSDate *)self->_date copy];

  return v2;
}

- (double)nextFireInterval
{
  timer = self->_timer;
  if (!timer)
  {
    return 0.0;
  }

  [(NSTimer *)timer timeInterval];
  return result;
}

- (id)_computeDifferenceCurrentAndNextFireInfoForDate:(uint64_t *)date newTimerResolution:(uint64_t *)resolution currentResolution:(uint64_t *)currentResolution currentValue:(uint64_t *)value comparedToNow:
{
  v11 = a2;
  v52 = v11;
  if (!self)
  {
    v17 = 0;
    goto LABEL_39;
  }

  [v11 timeIntervalSinceReferenceDate];
  *v13.i64 = *v12.i64 - trunc(*v12.i64);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{*v12.i64 - *vbslq_s8(vnegq_f64(v14), v13, v12).i64}];
  v51 = [*(self + 24) compare:v15];
  v16 = v15;
  v17 = [*(self + 8) components:240 fromDate:v16 toDate:*(self + 24) options:0];

  v18 = [v17 day];
  hour = [v17 hour];
  minute = [v17 minute];
  second = [v17 second];
  if (v18)
  {
    v22 = 2;
    if (hour <= 0 && minute <= 0 && second <= 0)
    {
      v25 = v18;
    }

    else
    {
      v25 = v18 + 1;
    }

    if (v18 == 1 && hour == 0 && minute == 0 && second == 0)
    {
      v25 = 1;
    }

    else
    {
      v22 = 3;
    }

    if (v18 >= 1)
    {
      v29 = v22;
    }

    else
    {
      v29 = 3;
    }

    v30 = 3;
    if (v18 >= 1)
    {
      v31 = v25;
    }

    else
    {
      v31 = v18;
    }

    if (!date)
    {
      goto LABEL_32;
    }
  }

  else if (hour)
  {
    v30 = 2;
    v33 = 2;
    v34 = 2;
    if (hour == 23)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v36 = 1;
    if (hour != 23)
    {
      v36 = hour + 1;
    }

    v37 = minute <= 0 && second < 1;
    if (v37)
    {
      v34 = 2;
    }

    else
    {
      v33 = v35;
    }

    if (v37)
    {
      v38 = hour;
    }

    else
    {
      v38 = v36;
    }

    v40 = hour == 1 && minute == 0 && second == 0;
    if (v40)
    {
      v34 = 1;
    }

    else
    {
      v30 = v33;
    }

    if (v40)
    {
      v41 = 1;
    }

    else
    {
      v41 = v38;
    }

    if (hour >= 1)
    {
      v29 = v34;
    }

    else
    {
      v29 = 2;
    }

    if (hour >= 1)
    {
      v31 = v41;
    }

    else
    {
      v30 = 2;
      v31 = hour;
    }

    if (!date)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    if (minute == 59)
    {
      v46 = 2;
    }

    else
    {
      v46 = 1;
    }

    if (minute == 59)
    {
      v47 = 1;
    }

    else
    {
      v47 = minute + 1;
    }

    if (second >= 1)
    {
      v44 = v46;
      v48 = v47;
    }

    else
    {
      v45 = 1;
      v48 = minute;
    }

    if (minute == 1 && second == 0)
    {
      v45 = 0;
      v44 = 1;
    }

    else
    {
      v43 = v48;
    }

    if (minute >= 1)
    {
      v42 = v44;
      v50 = v43;
    }

    else
    {
      v45 = 1;
      v50 = minute;
    }

    if (minute)
    {
      v29 = v45;
    }

    else
    {
      v29 = 0;
    }

    if (minute)
    {
      v30 = v42;
    }

    else
    {
      v30 = 0;
    }

    if (minute)
    {
      v31 = v50;
    }

    else
    {
      v31 = second;
    }

    if (!date)
    {
      goto LABEL_32;
    }
  }

  *date = v29;
LABEL_32:
  if (resolution)
  {
    *resolution = v30;
  }

  if (currentResolution)
  {
    *currentResolution = v31;
  }

  if (value)
  {
    *value = v51;
  }

LABEL_39:

  return v17;
}

- (id)nextFireAfterDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (self)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    *v7.i64 = *v6.i64 - trunc(*v6.i64);
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{*v6.i64 - *vbslq_s8(vnegq_f64(v8), v7, v6).i64}];
    v26 = 0;
    v10 = [(BSRelativeDateTimer *)self _computeDifferenceCurrentAndNextFireInfoForDate:v9 newTimerResolution:&v26 currentResolution:0 currentValue:0 comparedToNow:0];
    v11 = v26;
    v12 = v5;
    v13 = v12;
    if ((v11 - 1) > 2)
    {
      v17 = v12;
      v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v16 setSecond:1];
      [(NSCalendar *)self->_gregorian dateByAddingComponents:v16 toDate:v17 options:0];
    }

    else
    {
      v14 = qword_18FFA2FD0[v11 - 1];
      v15 = v12;
      v16 = [(NSCalendar *)self->_gregorian components:v14 fromDate:self->_date];
      [(NSCalendar *)self->_gregorian nextDateAfterDate:v15 matchingComponents:v16 options:5120];
    }
    v18 = ;
  }

  else
  {
    v18 = 0;
  }

  v25 = 0;
  v26 = 0;
  v24 = 0;
  v19 = [(BSRelativeDateTimer *)self _computeDifferenceCurrentAndNextFireInfoForDate:v18 newTimerResolution:0 currentResolution:&v25 currentValue:&v26 comparedToNow:&v24];
  v20 = [BSRelativeDateTimerFireInfo alloc];
  if (v26 >= 0)
  {
    v21 = v26;
  }

  else
  {
    v21 = -v26;
  }

  v22 = [(BSRelativeDateTimerFireInfo *)v20 initWithValue:v21 resolution:v25 comparedToNow:v24 fireDate:v18];

  return v22;
}

- (void)fireAndSchedule
{
  [(BSRelativeDateTimer *)self invalidate];
  if (self->_date)
  {

    [(BSRelativeDateTimer *)self _fireAndUpdateTimerIfNecessary];
  }
}

- (void)powerMonitorSystemDidWakeFromSleep:(id)sleep
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__BSRelativeDateTimer_powerMonitorSystemDidWakeFromSleep___block_invoke;
  v3[3] = &unk_1E72CB830;
  objc_copyWeak(&v4, &location);
  BSDispatchMain(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __58__BSRelativeDateTimer_powerMonitorSystemDidWakeFromSleep___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[3])
  {
    [WeakRetained fireAndSchedule];
  }
}

- (BSRelativeDateTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end