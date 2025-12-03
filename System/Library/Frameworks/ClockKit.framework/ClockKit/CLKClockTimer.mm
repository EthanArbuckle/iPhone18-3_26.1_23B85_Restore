@interface CLKClockTimer
+ (CLKClockTimer)sharedInstance;
+ (id)now;
- (CLKClockTimer)initWithIdentifier:(id)identifier;
- (double)_timeUntilNextHighAccuracyEventFromHour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second nanosecond:(int64_t)nanosecond;
- (double)_timeUntilNextHighAccuracyEventFromNow;
- (id)_nextTokenWithUpdateFrequency:(int64_t)frequency wantsCommit:(BOOL)commit wantsHighAccuracy:(BOOL)accuracy identificationLog:(id)log handler:(id)handler;
- (id)start15fpsUpdatesWithHandler:(id)handler identificationLog:(id)log;
- (id)start30fpsUpdatesWithHandler:(id)handler identificationLog:(id)log;
- (id)start60fpsUpdatesWithHandler:(id)handler identificationLog:(id)log;
- (id)startMinuteUpdatesWithHandler:(id)handler identificationLog:(id)log;
- (id)startSecondUpdatesWithHandler:(id)handler identificationLog:(id)log;
- (id)startUpdatesWithUpdateFrequency:(int64_t)frequency withHandler:(id)handler identificationLog:(id)log;
- (int64_t)_minimumPossibleUpdateFrequency;
- (void)_cancelWaitTimer;
- (void)_createDisplayLinkIfNeeded;
- (void)_handleTimePassed;
- (void)_maybeClearLastSeenTimeComponents;
- (void)_setDisplayLinkFrameInterval:(int64_t)interval;
- (void)_updateDisplayLink;
- (void)_updateDisplayLinkWithTimeUntilNextHighAccuracyEvent:(double)event withMinimumUpdateFrequency:(int64_t)frequency;
- (void)_updateIsPermittedToRun;
- (void)dealloc;
- (void)stopUpdatesForToken:(id)token;
@end

@implementation CLKClockTimer

+ (CLKClockTimer)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CLKClockTimer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __31__CLKClockTimer_sharedInstance__block_invoke()
{
  v0 = [[CLKClockTimer alloc] initWithIdentifier:@"sharedInstance"];
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)now
{
  v2 = CLKForcedTime();
  v3 = v2;
  if (v2)
  {
    date = v2;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v5 = date;

  v6 = [v5 dateByAddingTimeInterval:0.05];

  return v6;
}

- (CLKClockTimer)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CLKClockTimer;
  v5 = [(CLKClockTimer *)&v19 init];
  if (v5)
  {
    for (i = 16; i != 56; i += 8)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = *&v5[i];
      *&v5[i] = weakObjectsHashTable;
    }

    v9 = [identifierCopy copy];
    v10 = *(v5 + 21);
    *(v5 + 21) = v9;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v12 = *(v5 + 7);
    *(v5 + 7) = weakObjectsHashTable2;

    *(v5 + 15) = 0x7FFFFFFFFFFFFFFFLL;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vnegq_f64(v13);
    *(v5 + 104) = v14;
    *(v5 + 88) = v14;
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v16 = *(v5 + 19);
    *(v5 + 19) = autoupdatingCurrentCalendar;

    v5[160] = 0;
    *(v5 + 32) = 16843008;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleTimePassed name:*MEMORY[0x277D766F0] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLKClockTimer;
  [(CLKClockTimer *)&v2 dealloc];
}

- (id)startUpdatesWithUpdateFrequency:(int64_t)frequency withHandler:(id)handler identificationLog:(id)log
{
  v21 = *MEMORY[0x277D85DE8];
  if (frequency >= 2)
  {
    if (frequency == 5)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(CLKClockTimer *)self _nextTokenWithUpdateFrequency:frequency wantsCommit:0 wantsHighAccuracy:v8 identificationLog:log handler:handler];
  v10 = self->_handlersByUpdateFrequency[frequency];
  [(NSHashTable *)v10 addObject:v9];
  [(NSHashTable *)self->_allHandlers addObject:v9];
  v11 = CLKLoggingObjectForDomain(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CLKClockTimer *)self identifier];
    v13 = [(NSHashTable *)self->_allHandlers count];
    v15 = 138412802;
    v16 = identifier;
    v17 = 2080;
    v18 = "[CLKClockTimer startUpdatesWithUpdateFrequency:withHandler:identificationLog:]";
    v19 = 2048;
    v20 = v13;
    _os_log_impl(&dword_23702D000, v11, OS_LOG_TYPE_DEFAULT, "%@ - %s, _allHandlers.count = %lu", &v15, 0x20u);
  }

  [(CLKClockTimer *)self _updateDisplayLink];
LABEL_9:

  return v9;
}

- (void)stopUpdatesForToken:(id)token
{
  v14 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  [tokenCopy setIsActive:0];
  [tokenCopy setHandler:0];
  [tokenCopy setLog:0];
  -[NSHashTable removeObject:](self->_handlersByUpdateFrequency[[tokenCopy updateFrequency]], "removeObject:", tokenCopy);
  [(NSHashTable *)self->_allHandlers removeObject:tokenCopy];

  v5 = CLKLoggingObjectForDomain(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CLKClockTimer *)self identifier];
    v7 = [(NSHashTable *)self->_allHandlers count];
    v8 = 138412802;
    v9 = identifier;
    v10 = 2080;
    v11 = "[CLKClockTimer stopUpdatesForToken:]";
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "%@ - %s, _allHandlers.count = %lu", &v8, 0x20u);
  }

  [(CLKClockTimer *)self _updateDisplayLink];
  [(CLKClockTimer *)self _maybeClearLastSeenTimeComponents];
}

- (id)_nextTokenWithUpdateFrequency:(int64_t)frequency wantsCommit:(BOOL)commit wantsHighAccuracy:(BOOL)accuracy identificationLog:(id)log handler:(id)handler
{
  accuracyCopy = accuracy;
  commitCopy = commit;
  logCopy = log;
  handlerCopy = handler;
  v14 = [[CLKClockTimerToken alloc] initWithID:self->_nextToken++];
  if (!logCopy)
  {
    logCopy = [&__block_literal_global_90 copy];
  }

  [(CLKClockTimerToken *)v14 setWantsCommit:commitCopy];
  [(CLKClockTimerToken *)v14 setWantsHighAccuracy:accuracyCopy];
  [(CLKClockTimerToken *)v14 setUpdateFrequency:frequency];
  [(CLKClockTimerToken *)v14 setLog:logCopy];
  [(CLKClockTimerToken *)v14 setHandler:handlerCopy];

  [(CLKClockTimerToken *)v14 setIsActive:1];
  [(CLKClockTimerToken *)v14 setOwner:self];

  return v14;
}

- (id)startMinuteUpdatesWithHandler:(id)handler identificationLog:(id)log
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CLKClockTimer_startMinuteUpdatesWithHandler_identificationLog___block_invoke;
  v10[3] = &unk_278A1F600;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(CLKClockTimer *)self startUpdatesWithUpdateFrequency:0 withHandler:v10 identificationLog:log];

  return v8;
}

void __65__CLKClockTimer_startMinuteUpdatesWithHandler_identificationLog___block_invoke(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)startSecondUpdatesWithHandler:(id)handler identificationLog:(id)log
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CLKClockTimer_startSecondUpdatesWithHandler_identificationLog___block_invoke;
  v10[3] = &unk_278A1F600;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(CLKClockTimer *)self startUpdatesWithUpdateFrequency:1 withHandler:v10 identificationLog:log];

  return v8;
}

void __65__CLKClockTimer_startSecondUpdatesWithHandler_identificationLog___block_invoke(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)start15fpsUpdatesWithHandler:(id)handler identificationLog:(id)log
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CLKClockTimer_start15fpsUpdatesWithHandler_identificationLog___block_invoke;
  v10[3] = &unk_278A1F600;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(CLKClockTimer *)self startUpdatesWithUpdateFrequency:2 withHandler:v10 identificationLog:log];

  return v8;
}

void __64__CLKClockTimer_start15fpsUpdatesWithHandler_identificationLog___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  (*(*(a1 + 32) + 16))(*(a3 + 32));
}

- (id)start30fpsUpdatesWithHandler:(id)handler identificationLog:(id)log
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CLKClockTimer_start30fpsUpdatesWithHandler_identificationLog___block_invoke;
  v10[3] = &unk_278A1F600;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(CLKClockTimer *)self startUpdatesWithUpdateFrequency:3 withHandler:v10 identificationLog:log];

  return v8;
}

void __64__CLKClockTimer_start30fpsUpdatesWithHandler_identificationLog___block_invoke(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)start60fpsUpdatesWithHandler:(id)handler identificationLog:(id)log
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CLKClockTimer_start60fpsUpdatesWithHandler_identificationLog___block_invoke;
  v10[3] = &unk_278A1F600;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(CLKClockTimer *)self startUpdatesWithUpdateFrequency:4 withHandler:v10 identificationLog:log];

  return v8;
}

void __64__CLKClockTimer_start60fpsUpdatesWithHandler_identificationLog___block_invoke(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  (*(*(a1 + 32) + 16))();
}

- (int64_t)_minimumPossibleUpdateFrequency
{
  if ([(NSHashTable *)self->_handlersByUpdateFrequency[4] count])
  {
    return 4;
  }

  if ([(NSHashTable *)self->_handlersByUpdateFrequency[3] count])
  {
    return 3;
  }

  if ([(NSHashTable *)self->_handlersByUpdateFrequency[2] count])
  {
    return 2;
  }

  if (![(NSHashTable *)self->_handlersByUpdateFrequency[1] count])
  {
    [(NSHashTable *)self->_handlersByUpdateFrequency[0] count];
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (double)_timeUntilNextHighAccuracyEventFromHour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second nanosecond:(int64_t)nanosecond
{
  v8 = nanosecond / -1000000000.0 + 1.0;
  if (![(NSHashTable *)self->_handlersByUpdateFrequency[1] count:hour])
  {
    if ([(NSHashTable *)self->_handlersByUpdateFrequency[0] count])
    {
      return v8 + (59 - second);
    }

    else
    {
      return INFINITY;
    }
  }

  return v8;
}

- (double)_timeUntilNextHighAccuracyEventFromNow
{
  v3 = +[CLKClockTimer now];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  [(NSCalendar *)self->_calendar getHour:&v10 minute:&v9 second:&v8 nanosecond:&v7 fromDate:v3];
  [(CLKClockTimer *)self _timeUntilNextHighAccuracyEventFromHour:v10 minute:v9 second:v8 nanosecond:v7];
  v5 = v4;

  return v5;
}

- (void)_cancelWaitTimer
{
  waitForNextEventTimer = self->_waitForNextEventTimer;
  if (waitForNextEventTimer)
  {
    dispatch_source_cancel(waitForNextEventTimer);
    v4 = self->_waitForNextEventTimer;
    self->_waitForNextEventTimer = 0;

    waitTimerScheduledFireTime = self->_waitTimerScheduledFireTime;
    self->_waitTimerScheduledFireTime = 0;
  }
}

- (void)_createDisplayLinkIfNeeded
{
  if (!self->_displayLink)
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__onDisplayLink_];
    displayLink = self->_displayLink;
    self->_displayLink = v4;

    v6 = self->_displayLink;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)_setDisplayLinkFrameInterval:(int64_t)interval
{
  [(CLKClockTimer *)self _createDisplayLinkIfNeeded];
  if ([(CADisplayLink *)self->_displayLink frameInterval]!= interval)
  {
    [(CADisplayLink *)self->_displayLink setFrameInterval:interval];

    kdebug_trace();
  }
}

- (void)_updateDisplayLinkWithTimeUntilNextHighAccuracyEvent:(double)event withMinimumUpdateFrequency:(int64_t)frequency
{
  if (self->_permittedToRun && [(CLKClockTimer *)self _hasHandlers])
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (frequency != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = CLKClockTimerFrameIntervalForUpdateFrequency[frequency];
    }

    if (event <= 0.0833333333)
    {
      [(CLKClockTimer *)self _cancelWaitTimer];
      v7 = 1;
    }

    else
    {
      if (event != INFINITY && v7 != 1)
      {
        v8 = +[CLKClockTimer now];
        v9 = event + -0.05 + -0.0166666667;
        v10 = [v8 dateByAddingTimeInterval:v9];
        v11 = v10;
        if (!self->_waitTimerScheduledFireTime || ([v10 timeIntervalSinceDate:?], fabs(v12) > 0.0166666667))
        {
          [(CLKClockTimer *)self _cancelWaitTimer];
          objc_storeStrong(&self->_waitTimerScheduledFireTime, v11);
          objc_initWeak(&location, self);
          v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, MEMORY[0x277D85CD0]);
          waitForNextEventTimer = self->_waitForNextEventTimer;
          self->_waitForNextEventTimer = v13;

          v15 = self->_waitForNextEventTimer;
          v19 = MEMORY[0x277D85DD0];
          v20 = 3221225472;
          v21 = __97__CLKClockTimer__updateDisplayLinkWithTimeUntilNextHighAccuracyEvent_withMinimumUpdateFrequency___block_invoke;
          v22 = &unk_278A1E700;
          objc_copyWeak(&v23, &location);
          dispatch_source_set_event_handler(v15, &v19);
          v16 = dispatch_time(0, (v9 * 1000000000.0));
          dispatch_source_set_timer(self->_waitForNextEventTimer, v16, 0xFFFFFFFFFFFFFFFFLL, 0xFE502AuLL);
          dispatch_resume(self->_waitForNextEventTimer);
          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        displayLink = self->_displayLink;
        v18 = 1;
LABEL_19:
        [(CADisplayLink *)displayLink setPaused:v18, v19, v20, v21, v22];
        return;
      }
    }

    [(CLKClockTimer *)self _setDisplayLinkFrameInterval:v7, v19, v20, v21, v22];
    displayLink = self->_displayLink;
    v18 = 0;
    goto LABEL_19;
  }

  [(CADisplayLink *)self->_displayLink setPaused:1];

  [(CLKClockTimer *)self _cancelWaitTimer];
}

void __97__CLKClockTimer__updateDisplayLinkWithTimeUntilNextHighAccuracyEvent_withMinimumUpdateFrequency___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[17];
    WeakRetained[17] = 0;
    v3 = WeakRetained;

    [v3 _updateDisplayLink];
    WeakRetained = v3;
  }
}

- (void)_updateDisplayLink
{
  [(CLKClockTimer *)self _timeUntilNextHighAccuracyEventFromNow];
  v4 = v3;
  _minimumPossibleUpdateFrequency = [(CLKClockTimer *)self _minimumPossibleUpdateFrequency];

  [(CLKClockTimer *)self _updateDisplayLinkWithTimeUntilNextHighAccuracyEvent:_minimumPossibleUpdateFrequency withMinimumUpdateFrequency:v4];
}

- (void)_maybeClearLastSeenTimeComponents
{
  if (!self->_permittedToRun)
  {
    self->_last60fps = 0x7FFFFFFFFFFFFFFFLL;
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    v5 = vnegq_f64(v4);
    *&self->_last15fps = v5;
    *&self->_lastMinute = v5;
    v3 = 80;
    goto LABEL_13;
  }

  if (![(NSHashTable *)self->_handlersByUpdateFrequency[0] count])
  {
    self->_lastMinute = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(NSHashTable *)self->_handlersByUpdateFrequency[1] count])
  {
    self->_lastSecond = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(NSHashTable *)self->_handlersByUpdateFrequency[2] count])
  {
    self->_last15fps = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(NSHashTable *)self->_handlersByUpdateFrequency[3] count])
  {
    self->_last30fps = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(NSHashTable *)self->_handlersByUpdateFrequency[4] count])
  {
    v3 = 120;
LABEL_13:
    *(&self->super.isa + v3) = 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)_handleTimePassed
{
  v73 = *MEMORY[0x277D85DE8];
  obj = +[CLKClockTimer now];
  v69 = 0x7FFFFFFFFFFFFFFFLL;
  v70 = 0x7FFFFFFFFFFFFFFFLL;
  v67 = 0x7FFFFFFFFFFFFFFFLL;
  v68 = 0x7FFFFFFFFFFFFFFFLL;
  selfCopy3 = self;
  [(NSDate *)self->_lastNow timeIntervalSinceReferenceDate];
  v4 = v3;
  [obj timeIntervalSinceReferenceDate];
  if (!self->_lastNow || (lastHour = self->_lastHour, lastHour == 0x7FFFFFFFFFFFFFFFLL) || (lastMinute = self->_lastMinute, lastMinute == 0x7FFFFFFFFFFFFFFFLL) || (lastSecond = self->_lastSecond, lastSecond == 0x7FFFFFFFFFFFFFFFLL) || *&v4 != *&v5)
  {
    [(NSCalendar *)self->_calendar getHour:&v70 minute:&v69 second:&v68 nanosecond:&v67 fromDate:obj];
    v8 = v67;
    v9 = v68;
    v11 = v69;
    v10 = v70;
    selfCopy3 = self;
    lastHour = self->_lastHour;
    lastMinute = self->_lastMinute;
    lastSecond = self->_lastSecond;
  }

  else
  {
    v69 = self->_lastMinute;
    v70 = lastHour;
    v8 = ((v5 - v4) * 1000000000.0);
    v67 = v8;
    v68 = lastSecond;
    v9 = lastSecond;
    v11 = lastMinute;
    v10 = lastHour;
  }

  v13 = 0;
  v14 = 0;
  v47 = v8 / 1000000000.0;
  v42 = v9;
  v43 = lastSecond;
  v15 = (v47 / 0.0166666667);
  v16 = vcvtq_s64_f64(vdivq_f64(vdupq_lane_s64(*&v47, 0), xmmword_2370A4AE0));
  v17 = v11 == lastMinute && v10 == lastHour;
  v18 = !v17;
  v19 = !v17 || v9 != lastSecond;
  v49 = v16;
  v20 = vmovn_s64(vmvnq_s8(vceqq_s64(*&selfCopy3->_last15fps, v16)));
  v17 = selfCopy3->_last60fps == v15;
  v66[2] = (v20.i8[0] | v19) & 1;
  v41 = __PAIR64__(v18, v19);
  v66[0] = v18;
  v66[3] = (v20.i8[4] | v19) & 1;
  v21 = !v17 || v19;
  v66[1] = v19;
  v66[4] = v21;
  do
  {
    if (v66[v14] == 1)
    {
      v22 = [(NSHashTable *)selfCopy3->_handlersByUpdateFrequency[v14] count]!= 0;
      selfCopy3 = self;
    }

    else
    {
      v22 = 0;
    }

    v13 = v22 | v13 & 1;
    ++v14;
  }

  while (v14 != 5);
  objc_storeStrong(&self->_lastNow, obj);
  v23 = v69;
  selfCopy5 = self;
  self->_lastHour = v70;
  self->_lastMinute = v23;
  self->_lastSecond = v68;
  *&self->_last15fps = v49;
  self->_last60fps = v15;
  if (v13)
  {
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0;
    v26 = 0;
    do
    {
      v26 |= v66[v25] << v25;
      ++v25;
    }

    while (v25 != 5);
    v50 = obj;
    v27 = v69;
    v46 = v70;
    v28 = v68;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v45 = self->_allHandlers;
    v29 = 0;
    v30 = [(NSHashTable *)v45 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v30)
    {
      v31 = *v63;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(v45);
          }

          v33 = *(*(&v62 + 1) + 8 * i);
          if ((v26 & (1 << [v33 updateFrequency])) != 0)
          {
            wantsCommit = [v33 wantsCommit];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3254779904;
            v56[2] = __34__CLKClockTimer__handleTimePassed__block_invoke;
            v56[3] = &unk_284A1EE58;
            v56[4] = v33;
            v56[5] = self;
            v57 = v50;
            v58 = v46;
            v59 = v27;
            v60 = v28;
            v61 = v47;
            v35 = MEMORY[0x2383C4AF0](v56);
            [v48 addObject:v35];

            v29 |= wantsCommit;
          }
        }

        v30 = [(NSHashTable *)v45 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v30);
    }

    if (BYTE4(v41) & 1 | (v42 != v43))
    {
      [v50 timeIntervalSinceReferenceDate];
      kdebug_trace();
    }

    if (HIDWORD(v41) && [(NSHashTable *)self->_handlersByUpdateFrequency[0] count])
    {
      kdebug_trace();
    }

    if (v41 && [(NSHashTable *)self->_handlersByUpdateFrequency[1] count])
    {
      kdebug_trace();
    }

    if (v29)
    {
      [MEMORY[0x277CD9FF0] begin];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = v48;
    v37 = [v36 countByEnumeratingWithState:&v52 objects:v71 count:16];
    if (v37)
    {
      v38 = *v53;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v53 != v38)
          {
            objc_enumerationMutation(v36);
          }

          (*(*(*(&v52 + 1) + 8 * j) + 16))();
        }

        v37 = [v36 countByEnumeratingWithState:&v52 objects:v71 count:16];
      }

      while (v37);
    }

    if (v29)
    {
      [MEMORY[0x277CD9FF0] commit];
    }

    selfCopy5 = self;
  }

  [CLKClockTimer _timeUntilNextHighAccuracyEventFromHour:selfCopy5 minute:"_timeUntilNextHighAccuracyEventFromHour:minute:second:nanosecond:" second:v41 nanosecond:?];
  [(CLKClockTimer *)self _updateDisplayLinkWithTimeUntilNextHighAccuracyEvent:[(CLKClockTimer *)self _minimumPossibleUpdateFrequency] withMinimumUpdateFrequency:v40];
}

void __34__CLKClockTimer__handleTimePassed__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isActive])
  {
    v2 = [*(a1 + 32) handler];
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v4 = *(a1 + 72);
    v6 = *(a1 + 56);
    v7 = v4;
    (v2)[2](v2, v3, &v5);
  }
}

- (void)_updateIsPermittedToRun
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = !self->_paused;
  if (!self->_ignoreScreenState)
  {
    v4 = self->_isForeground && self->_backlightOn;
    v3 &= v4;
  }

  permittedToRun = self->_permittedToRun;
  if (!permittedToRun || (v3 & 1) != 0)
  {
    if (permittedToRun || ((v3 ^ 1) & 1) != 0)
    {
      v18 = CLKLoggingObjectForDomain(2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(CLKClockTimer *)self identifier];
        v20 = [(NSHashTable *)self->_allHandlers count];
        isForeground = self->_isForeground;
        backlightOn = self->_backlightOn;
        ignoreScreenState = self->_ignoreScreenState;
        v24 = 138413826;
        v25 = identifier;
        v26 = 2080;
        v27 = "[CLKClockTimer _updateIsPermittedToRun]";
        v28 = 2048;
        v29 = v20;
        v30 = 1024;
        v31 = v3 & 1;
        v32 = 1024;
        v33 = isForeground;
        v34 = 1024;
        v35 = backlightOn;
        v36 = 1024;
        v37 = ignoreScreenState;
        _os_log_impl(&dword_23702D000, v18, OS_LOG_TYPE_DEFAULT, "No update %@ - %s, _allHandlers.count = %lu, shouldPermitToRun = %d, _isForeground = %d, _backlightOn = %d, _ignoreScreenState = %d", &v24, 0x38u);
      }
    }

    else
    {
      kdebug_trace();
      [(CLKClockTimer *)self _maybeClearLastSeenTimeComponents];
      self->_permittedToRun = 1;
      v12 = CLKLoggingObjectForDomain(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [(CLKClockTimer *)self identifier];
        v14 = [(NSHashTable *)self->_allHandlers count];
        v15 = self->_isForeground;
        v16 = self->_backlightOn;
        v17 = self->_ignoreScreenState;
        v24 = 138413826;
        v25 = identifier2;
        v26 = 2080;
        v27 = "[CLKClockTimer _updateIsPermittedToRun]";
        v28 = 2048;
        v29 = v14;
        v30 = 1024;
        v31 = 1;
        v32 = 1024;
        v33 = v15;
        v34 = 1024;
        v35 = v16;
        v36 = 1024;
        v37 = v17;
        _os_log_impl(&dword_23702D000, v12, OS_LOG_TYPE_DEFAULT, "Resuming %@ - %s, _allHandlers.count = %lu, shouldPermitToRun = %d, _isForeground = %d, _backlightOn = %d, _ignoreScreenState = %d", &v24, 0x38u);
      }

      [(CLKClockTimer *)self _updateDisplayLink];
      [(CLKClockTimer *)self _handleTimePassed];
    }
  }

  else
  {
    kdebug_trace();
    self->_permittedToRun = 0;
    v6 = CLKLoggingObjectForDomain(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [(CLKClockTimer *)self identifier];
      v8 = [(NSHashTable *)self->_allHandlers count];
      v9 = self->_isForeground;
      v10 = self->_backlightOn;
      v11 = self->_ignoreScreenState;
      v24 = 138413826;
      v25 = identifier3;
      v26 = 2080;
      v27 = "[CLKClockTimer _updateIsPermittedToRun]";
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = 0;
      v32 = 1024;
      v33 = v9;
      v34 = 1024;
      v35 = v10;
      v36 = 1024;
      v37 = v11;
      _os_log_impl(&dword_23702D000, v6, OS_LOG_TYPE_DEFAULT, "Pausing %@ - %s, _allHandlers.count = %lu, shouldPermitToRun = %d, _isForeground = %d, _backlightOn = %d, _ignoreScreenState = %d", &v24, 0x38u);
    }

    [(CLKClockTimer *)self _updateDisplayLink];
  }
}

@end