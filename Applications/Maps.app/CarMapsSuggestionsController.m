@interface CarMapsSuggestionsController
- (BOOL)monitorLowFuel;
- (CarMapsSuggestionsController)init;
- (NSString)uniqueName;
- (unint64_t)suggestionCount;
- (void)_notifyObservers;
- (void)_verifyHaveObservers;
- (void)dealloc;
- (void)hintRefreshOfType:(int64_t)a3;
- (void)refreshSuggestions;
- (void)registerObserver:(id)a3;
- (void)setAllowLowFuelAlert:(BOOL)a3;
- (void)setHoldProcessAssertion:(BOOL)a3;
- (void)setMonitorLowFuel:(BOOL)a3;
- (void)setSinkAttached:(BOOL)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CarMapsSuggestionsController

- (void)setAllowLowFuelAlert:(BOOL)a3
{
  if (self->_allowLowFuelAlert != a3)
  {
    v3 = a3;
    self->_allowLowFuelAlert = a3;
    obj = [(CarMapsSuggestionsController *)self observers];
    objc_sync_enter(obj);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(CarMapsSuggestionsController *)self observers];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v10 = sub_100006E1C();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              allowLowFuelAlert = self->_allowLowFuelAlert;
              *buf = 138412546;
              v18 = v9;
              v19 = 2048;
              v20 = allowLowFuelAlert;
            }

            [v9 setAllowLowFuelSuggestion:v3];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v6);
    }

    objc_sync_exit(obj);
  }
}

- (unint64_t)suggestionCount
{
  v2 = [(CarMapsSuggestionsController *)self suggestions];
  v3 = [v2 count];

  return v3;
}

- (void)setSinkAttached:(BOOL)a3
{
  if (self->_sinkAttached != a3)
  {
    v3 = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (self->_sinkAttached)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if (v3)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      v20 = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] _sinkAttached=%@ sinkAttached=%@", &v20, 0x16u);
    }

    self->_sinkAttached = v3;
    if (v3)
    {
      v10 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_10164F808];
      v11 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      [v11 addAdditionalFilter:v10 forSink:self];

      v12 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      v13 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_10164F828];
      [v12 addAdditionalFilter:v13 forSink:self];

      v14 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      v15 = [(CarMapsSuggestionsController *)self myAdditionalFilter];
      [v14 addAdditionalFilter:v15 forSink:self];

      v16 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      [v16 attachSink:self];

      [(CarMapsSuggestionsController *)self refreshSuggestions];
    }

    else
    {
      v17 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      [v17 detachSink:self];

      v18 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      v19 = [(CarMapsSuggestionsController *)self myAdditionalFilter];
      [v18 removeAdditionalFilter:v19 forSink:self];

      [(CarMapsSuggestionsController *)self setSuggestions:0];
    }
  }
}

- (BOOL)monitorLowFuel
{
  v2 = [(CarMapsSuggestionsController *)self lowFuelObserver];
  v3 = [v2 active];

  return v3;
}

- (void)setMonitorLowFuel:(BOOL)a3
{
  v3 = a3;
  v4 = [(CarMapsSuggestionsController *)self lowFuelObserver];
  [v4 setActive:v3];
}

- (void)setHoldProcessAssertion:(BOOL)a3
{
  if (self->_holdProcessAssertion != a3)
  {
    v3 = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (self->_holdProcessAssertion)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if (v3)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] _holdProcessAssertion=%{public}@ holdProcessAssertion=%{public}@", buf, 0x16u);
    }

    self->_holdProcessAssertion = v3;
    v10 = [(CarMapsSuggestionsController *)self processAssertion];
    [v10 invalidate];

    v11 = [(CarMapsSuggestionsController *)self processAssertionTimer];
    [v11 invalidate];

    [(CarMapsSuggestionsController *)self setProcessAssertion:0];
    [(CarMapsSuggestionsController *)self setProcessAssertionTimer:0];
    if (v3)
    {
      v12 = [[BKSProcessAssertion alloc] initWithBundleIdentifier:@"com.apple.Maps" flags:3 reason:3 name:@"com.apple.Maps.LowFuelAlert" withHandler:&stru_10164F7E8];
      [(CarMapsSuggestionsController *)self setProcessAssertion:v12];

      [(CarMapsSuggestionsController *)self refreshSuggestions];
      objc_initWeak(buf, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100C7ED90;
      v14[3] = &unk_101661BC8;
      objc_copyWeak(&v15, buf);
      v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v14 block:60.0];
      [(CarMapsSuggestionsController *)self setProcessAssertionTimer:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_verifyHaveObservers
{
  v3 = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(v3);
  v4 = [(CarMapsSuggestionsController *)self observers];
  v5 = [v4 allObjects];
  if ([v5 count] || -[CarMapsSuggestionsController sinkDetaching](self, "sinkDetaching"))
  {
  }

  else
  {
    v6 = [(CarMapsSuggestionsController *)self sinkAttached];

    if (v6)
    {
      v7 = sub_100006E1C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] No observers, detaching from suggestions", buf, 2u);
      }

      [(CarMapsSuggestionsController *)self setSinkDetaching:1];
      objc_initWeak(buf, self);
      v8 = dispatch_time(0, 5000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100C7F080;
      block[3] = &unk_101661B98;
      objc_copyWeak(&v10, buf);
      dispatch_after(v8, &_dispatch_main_q, block);
      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }
  }

  objc_sync_exit(v3);
}

- (void)_notifyObservers
{
  v3 = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CarMapsSuggestionsController *)self observers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v7 = *v13;
    *&v6 = 138412290;
    v11 = v6;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 carMapsSuggestionControllerDidRefresh:{self, v11}];
        v10 = sub_100006E1C();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = v11;
          v17 = v9;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
  [(CarMapsSuggestionsController *)self _verifyHaveObservers];
}

- (void)unregisterObserver:(id)a3
{
  v8 = a3;
  v4 = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(v4);
  v5 = [(CarMapsSuggestionsController *)self observers];
  v6 = [v5 containsObject:v8];

  if (v6)
  {
    v7 = [(CarMapsSuggestionsController *)self observers];
    [v7 removeObject:v8];

    [(CarMapsSuggestionsController *)self _verifyHaveObservers];
  }

  objc_sync_exit(v4);
}

- (void)registerObserver:(id)a3
{
  v8 = a3;
  v4 = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(v4);
  v5 = [(CarMapsSuggestionsController *)self observers];
  v6 = [v5 containsObject:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(CarMapsSuggestionsController *)self observers];
    [v7 addObject:v8];

    if (![(CarMapsSuggestionsController *)self sinkAttached])
    {
      [(CarMapsSuggestionsController *)self setSinkAttached:1];
    }
  }

  objc_sync_exit(v4);
}

- (void)refreshSuggestions
{
  [(CarMapsSuggestionsController *)self _verifyHaveObservers];
  if ([(CarMapsSuggestionsController *)self sinkAttached]&& ![(CarMapsSuggestionsController *)self sinkDetaching])
  {
    objc_initWeak(buf, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100C7F71C;
    v14[3] = &unk_10165F290;
    objc_copyWeak(&v15, buf);
    v8 = objc_retainBlock(v14);
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] Requesting topSuggestions from suggestions engine", v13, 2u);
    }

    v10 = [(CarMapsSuggestionsController *)self suggestionsEngine];
    if (qword_10195ED98 != -1)
    {
      dispatch_once(&qword_10195ED98, &stru_10164F7A8);
    }

    v11 = qword_10195ED90;
    v12 = dispatch_get_global_queue(2, 0);
    [v10 topSuggestionsForSink:self count:v11 transportType:0 callback:v8 onQueue:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if ([(CarMapsSuggestionsController *)self sinkAttached])
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = v4;
      if ([(CarMapsSuggestionsController *)self sinkDetaching])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      *buf = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] skipping suggestions refresh sinkAttached=%{public}@ sinkDetaching=%{public}@", buf, 0x16u);
    }
  }
}

- (void)hintRefreshOfType:(int64_t)a3
{
  v5 = [(CarMapsSuggestionsController *)self suggestionsEngine];
  [v5 hintRefreshOfType:a3];

  [(CarMapsSuggestionsController *)self refreshSuggestions];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)dealloc
{
  [(CarMapsSuggestionsController *)self setSinkAttached:0];
  v3.receiver = self;
  v3.super_class = CarMapsSuggestionsController;
  [(CarMapsSuggestionsController *)&v3 dealloc];
}

- (CarMapsSuggestionsController)init
{
  v13.receiver = self;
  v13.super_class = CarMapsSuggestionsController;
  v2 = [(CarMapsSuggestionsController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_sinkDetaching = 0;
    v2->_allowLowFuelAlert = 1;
    v4 = [[NSHashTable alloc] initWithOptions:517 capacity:0];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = MapsSuggestionsEngineForMapsProcess();
    suggestionsEngine = v3->_suggestionsEngine;
    v3->_suggestionsEngine = v6;

    v8 = objc_opt_new();
    lowFuelObserver = v3->_lowFuelObserver;
    v3->_lowFuelObserver = v8;

    v10 = [MapsSuggestionsBlockFilter filterWithBlock:&stru_10164F7C8];
    myAdditionalFilter = v3->_myAdditionalFilter;
    v3->_myAdditionalFilter = v10;
  }

  return v3;
}

@end