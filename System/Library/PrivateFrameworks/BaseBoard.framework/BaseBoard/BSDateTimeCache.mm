@interface BSDateTimeCache
+ (id)sharedInstance;
- (BOOL)isWithinPrevWeek:(double)a3 includeToday:(BOOL)a4;
- (BSDateTimeCache)init;
- (id)description;
- (void)_resetAndConfigureAndPostNotification:(uint64_t)a1;
- (void)_resetAndConfigureIfNecessary;
- (void)dealloc;
@end

@implementation BSDateTimeCache

- (BSDateTimeCache)init
{
  v7.receiver = self;
  v7.super_class = BSDateTimeCache;
  v2 = [(BSDateTimeCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(BSDateTimeCache *)v2 _resetAndConfigureAndPostNotification:?];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__resetAndConfigure name:*MEMORY[0x1E695D8F0] object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _BSHandleSignificantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)_resetAndConfigureAndPostNotification:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 80) & 1) == 0)
  {
    *(a1 + 80) = 1;
    v4 = CFCalendarCopyCurrent();
    Current = CFAbsoluteTimeGetCurrent();
    v6 = Current;
    if (v4)
    {
      *(a1 + 16) = 0;
      CFCalendarGetTimeRangeOfUnit(v4, 0x10uLL, Current, (a1 + 16), 0);
      *(a1 + 8) = *(a1 + 16);
      CFCalendarAddComponents(v4, (a1 + 8), 0, "d", 0xFFFFFFFFLL);
      *(a1 + 24) = *(a1 + 16);
      CFCalendarAddComponents(v4, (a1 + 24), 0, "d", 1);
      *(a1 + 32) = *(a1 + 16);
      CFCalendarAddComponents(v4, (a1 + 32), 0, "d", 2);
      *(a1 + 48) = *(a1 + 16);
      CFCalendarAddComponents(v4, (a1 + 48), 0, "d", 4294967289);
      *(a1 + 40) = *(a1 + 16);
      CFCalendarAddComponents(v4, (a1 + 40), 0, "d", 4294967290);
      *(a1 + 56) = *(a1 + 16);
      CFCalendarAddComponents(v4, (a1 + 56), 0, "d", 7);
      if (a2)
      {
        v7 = [MEMORY[0x1E696AD88] defaultCenter];
        [v7 postNotificationName:@"BSDateTimeCacheChangedNotification" object:a1];
      }

      CFRelease(v4);
      *(a1 + 72) = v6;
      v8 = BSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        v10 = *(a1 + 16);
        v11 = *(a1 + 24);
        *buf = 138544130;
        v15 = v9;
        v16 = 2048;
        v17 = v6;
        v18 = 2048;
        v19 = v10;
        v20 = 2048;
        v21 = v11;
        v12 = v9;
        _os_log_debug_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_DEBUG, "Updated %{public}@ now=%f 'today'=%f 'tomorrow'=%f", buf, 0x2Au);
      }
    }

    else
    {
      v8 = BSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = 0.0;
        v13 = v15;
        _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "Couldn't update %{public}@ because we don't have a current calendar -> %@", buf, 0x16u);
      }
    }

    *(a1 + 64) = v6;
    *(a1 + 80) = 0;
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = BSDateTimeCache;
  [(BSDateTimeCache *)&v5 dealloc];
}

+ (id)sharedInstance
{
  if (qword_1ED44FE68 != -1)
  {
    dispatch_once(&qword_1ED44FE68, &__block_literal_global_19);
  }

  v3 = _MergedGlobals_18;

  return v3;
}

void __33__BSDateTimeCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BSDateTimeCache);
  v1 = _MergedGlobals_18;
  _MergedGlobals_18 = v0;
}

- (void)_resetAndConfigureIfNecessary
{
  if (a1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (a1[2] > Current || a1[3] <= Current)
    {

      [a1 _resetAndConfigure];
    }
  }
}

- (BOOL)isWithinPrevWeek:(double)a3 includeToday:(BOOL)a4
{
  v4 = a4;
  [(BSDateTimeCache *)self _resetAndConfigureIfNecessary];
  if (v4)
  {
    if (self->_tomorrow > a3)
    {
      v7 = 40;
      return *(&self->super.isa + v7) <= a3;
    }
  }

  else if (self->_today > a3)
  {
    v7 = 48;
    return *(&self->super.isa + v7) <= a3;
  }

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_lastAttemptedResetTime=%f", *&self->_lastAttemptedResetTime];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_lastSuccessfulResetTime=%f", *&self->_lastSuccessfulResetTime];
  [v3 addObject:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_yesterday=%f", *&self->_yesterday];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_today=%f", *&self->_today];
  [v3 addObject:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_tomorrow=%f", *&self->_tomorrow];
  [v3 addObject:v8];

  v9 = [v3 description];

  return v9;
}

@end