@interface MKTransitItemReferenceDateUpdater
+ (BOOL)_needsUpdateReferenceDate;
+ (NSDate)referenceDate;
+ (double)referenceDateAsTimeInterval;
+ (id)_currentTimeWithRoundedSeconds;
+ (unint64_t)_updaterCount;
+ (void)_addUpdater:(id)a3;
+ (void)_cancelReferenceDateUpdate;
+ (void)_referenceDateUpdateTimerFired;
+ (void)_removeUpdater:(id)a3;
+ (void)_scheduleReferenceDateUpdate;
+ (void)_updateReferenceDate;
+ (void)initialize;
- (MKTransitItemReferenceDateUpdater)initWithDelegate:(id)a3;
- (MKTransitItemReferenceDateUpdaterDelegate)delegate;
- (void)setActive:(BOOL)a3;
@end

@implementation MKTransitItemReferenceDateUpdater

+ (void)_updateReferenceDate
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&_lock);
  v3 = [a1 _currentTimeWithRoundedSeconds];
  if (([_referenceDate isEqualToDate:v3] & 1) == 0)
  {
    v4 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = _referenceDate;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Updating current reference date %@ to date: %@", buf, 0x16u);
    }

    objc_storeStrong(&_referenceDate, v3);
    [v3 timeIntervalSinceReferenceDate];
    _referenceDateAsTimeInterval = v5;
    v6 = [_referenceDateUpdaters allObjects];
    v7 = _referenceDate;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__MKTransitItemReferenceDateUpdater__updateReferenceDate__block_invoke;
    v10[3] = &unk_1E76CD810;
    v11 = v6;
    v12 = v7;
    v8 = v7;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

+ (id)_currentTimeWithRoundedSeconds
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [v3 components:224 fromDate:v2];
  v5 = [v3 dateBySettingHour:objc_msgSend(v4 minute:"hour") second:objc_msgSend(v4 ofDate:"minute") options:{30 * (objc_msgSend(v4, "second") / 30), v2, 2}];

  return v5;
}

void __57__MKTransitItemReferenceDateUpdater__updateReferenceDate__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 138412546;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 delegate];
        v10 = MKGetTransitItemUpdaterLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = v13;
          v19 = v12;
          v20 = 2048;
          v21 = v9;
          _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "Notifying %@<%p> of reference date update", buf, 0x16u);
        }

        [v9 transitItemReferenceDateUpdater:v8 didUpdateToReferenceDate:*(a1 + 40)];
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }
}

+ (double)referenceDateAsTimeInterval
{
  os_unfair_lock_lock(&_lock);
  if ([a1 _needsUpdateReferenceDate])
  {
    [a1 _updateReferenceDate];
  }

  v3 = *&_referenceDateAsTimeInterval;
  os_unfair_lock_unlock(&_lock);
  return v3;
}

+ (BOOL)_needsUpdateReferenceDate
{
  os_unfair_lock_assert_owner(&_lock);
  if (!_referenceDate)
  {
    return 1;
  }

  if ([_referenceDateUpdateTimer isValid])
  {
    return 0;
  }

  v3 = _referenceDate;
  v4 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  v7 = _referenceDate;
  v8 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v6 >= 0.0)
  {
    v2 = v10 >= 30.0;
  }

  else
  {
    v2 = v10 <= -30.0;
  }

  return v2;
}

- (MKTransitItemReferenceDateUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_active == v3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_active = v3;
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_opt_class();
    if (v3)
    {

      [v5 _addUpdater:self];
    }

    else
    {

      [v5 _removeUpdater:self];
    }
  }
}

- (MKTransitItemReferenceDateUpdater)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKTransitItemReferenceDateUpdater;
  v5 = [(MKTransitItemReferenceDateUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

+ (unint64_t)_updaterCount
{
  os_unfair_lock_assert_owner(&_lock);
  v2 = [_referenceDateUpdaters allObjects];
  v3 = [v2 count];

  return v3;
}

+ (void)_removeUpdater:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&_lock);
  if (_referenceDateUpdaters)
  {
    [_referenceDateUpdaters removeObject:v4];
    if (![a1 _updaterCount])
    {
      [a1 _cancelReferenceDateUpdate];
    }
  }

  os_unfair_lock_unlock(&_lock);
}

+ (void)_addUpdater:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&_lock);
  v4 = _referenceDateUpdaters;
  if (!_referenceDateUpdaters)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = _referenceDateUpdaters;
    _referenceDateUpdaters = v5;

    v4 = _referenceDateUpdaters;
  }

  [v4 addObject:v7];
  if ([a1 _updaterCount])
  {
    if ([a1 _needsUpdateReferenceDate])
    {
      [a1 _updateReferenceDate];
    }

    [a1 _scheduleReferenceDateUpdate];
  }

  os_unfair_lock_unlock(&_lock);
}

+ (void)_referenceDateUpdateTimerFired
{
  os_unfair_lock_lock(&_lock);
  v3 = MKGetTransitItemUpdaterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Reference date timer fired", v4, 2u);
  }

  [_referenceDateUpdateTimer invalidate];
  [a1 _updateReferenceDate];
  [a1 _scheduleReferenceDateUpdate];
  os_unfair_lock_unlock(&_lock);
}

+ (void)_cancelReferenceDateUpdate
{
  os_unfair_lock_assert_owner(&_lock);
  if (_referenceDateUpdateTimer)
  {
    v2 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_DEBUG, "Cancelling scheduled reference date update", v4, 2u);
    }

    [_referenceDateUpdateTimer invalidate];
    v3 = _referenceDateUpdateTimer;
    _referenceDateUpdateTimer = 0;
  }
}

+ (void)_scheduleReferenceDateUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  if (GEOConfigGetBOOL())
  {
    v3 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Suppressing update timer due to debug setting", &v16, 2u);
    }
  }

  else
  {
    os_unfair_lock_assert_owner(&_lock);
    if ([a1 _updaterCount])
    {
      [_referenceDateUpdateTimer invalidate];
      v4 = [MEMORY[0x1E695DF00] date];
      v5 = [MEMORY[0x1E695DEE8] currentCalendar];
      v6 = [v5 components:224 fromDate:v4];
      v7 = [v6 second];
      if (30 * (v7 / 30) + 30 <= 59)
      {
        v8 = 30 * (v7 / 30) + 30;
      }

      else
      {
        v8 = 0;
      }

      v9 = [v5 nextDateAfterDate:v4 matchingUnit:128 value:v8 options:2];
      [v9 timeIntervalSinceDate:v4];
      v11 = ceil(v10);
      v12 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134217984;
        v17 = v11;
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_DEBUG, "Scheduling reference date update in %#.1lfs", &v16, 0xCu);
      }

      v13 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:a1 target:sel__referenceDateUpdateTimerFired selector:0 userInfo:0 repeats:v11];
      v14 = _referenceDateUpdateTimer;
      _referenceDateUpdateTimer = v13;
    }

    else
    {
      v15 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_DEBUG, "Reference date was scheduled but there are no subscribers. Abandoning scheduling the update (cancel if needed)", &v16, 2u);
      }

      [a1 _cancelReferenceDateUpdate];
    }
  }
}

+ (NSDate)referenceDate
{
  os_unfair_lock_lock(&_lock);
  if ([a1 _needsUpdateReferenceDate])
  {
    [a1 _updateReferenceDate];
  }

  v3 = _referenceDate;
  os_unfair_lock_unlock(&_lock);

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _lock = 0;
  }
}

@end