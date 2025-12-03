@interface ATThreadSafeHeadTracker
- (ATThreadSafeHeadTracker)initWithRateLimit:(float)limit detectPredictionAnchor:(BOOL)anchor userContext:(void *)context factory:(void *)factory execution:(void *)execution finalizer:(void *)finalizer useSleepWakeDetector:(BOOL)detector;
- (id).cxx_construct;
- (void)dealloc;
- (void)handleSystemSleepMonitorDidWakeFromSleep;
@end

@implementation ATThreadSafeHeadTracker

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)handleSystemSleepMonitorDidWakeFromSleep
{
  v3 = ATThreadSafeHeadTrackerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "re-creating predictor after system did wake from sleep", v9, 2u);
  }

  ptr = self->_impl.__ptr_;
  v5 = (*(ptr + 4))(*(ptr + 5));
  if (v5)
  {
    v6 = v5;
    os_unfair_lock_lock(ptr + 5);
    v7 = atomic_load(ptr + 3);
    atomic_store(v6, ptr + 3);
    os_unfair_lock_unlock(ptr + 5);
    if (v7)
    {
      (*(ptr + 7))(v7);
    }

    v8 = ATThreadSafeHeadTrackerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEFAULT, "swapped in recreated predictor and destroyed old predictor", buf, 2u);
    }
  }

  else
  {
    v8 = ATThreadSafeHeadTrackerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_ERROR, "ATTSHT failed to recreate predictor", v11, 2u);
    }
  }
}

- (void)dealloc
{
  [(SWSystemSleepMonitor *)self->_sleepMonitor removeObserver:self];
  [(SWSystemSleepMonitor *)self->_sleepMonitor invalidate];
  v3.receiver = self;
  v3.super_class = ATThreadSafeHeadTracker;
  [(ATThreadSafeHeadTracker *)&v3 dealloc];
}

- (ATThreadSafeHeadTracker)initWithRateLimit:(float)limit detectPredictionAnchor:(BOOL)anchor userContext:(void *)context factory:(void *)factory execution:(void *)execution finalizer:(void *)finalizer useSleepWakeDetector:(BOOL)detector
{
  v13.receiver = self;
  v13.super_class = ATThreadSafeHeadTracker;
  if ([(ATThreadSafeHeadTracker *)&v13 init])
  {
    if (factory && execution)
    {
      if (finalizer)
      {
        operator new();
      }
    }

    operator new();
  }

  return 0;
}

@end