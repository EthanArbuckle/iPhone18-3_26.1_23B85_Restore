@interface CarMapsSuggestionsController
- (BOOL)monitorLowFuel;
- (CarMapsSuggestionsController)init;
- (NSString)uniqueName;
- (unint64_t)suggestionCount;
- (void)_notifyObservers;
- (void)_verifyHaveObservers;
- (void)dealloc;
- (void)hintRefreshOfType:(int64_t)type;
- (void)refreshSuggestions;
- (void)registerObserver:(id)observer;
- (void)setAllowLowFuelAlert:(BOOL)alert;
- (void)setHoldProcessAssertion:(BOOL)assertion;
- (void)setMonitorLowFuel:(BOOL)fuel;
- (void)setSinkAttached:(BOOL)attached;
- (void)unregisterObserver:(id)observer;
@end

@implementation CarMapsSuggestionsController

- (void)setAllowLowFuelAlert:(BOOL)alert
{
  if (self->_allowLowFuelAlert != alert)
  {
    alertCopy = alert;
    self->_allowLowFuelAlert = alert;
    obj = [(CarMapsSuggestionsController *)self observers];
    objc_sync_enter(obj);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    observers = [(CarMapsSuggestionsController *)self observers];
    v6 = [observers countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(observers);
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

            [v9 setAllowLowFuelSuggestion:alertCopy];
          }
        }

        v6 = [observers countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v6);
    }

    objc_sync_exit(obj);
  }
}

- (unint64_t)suggestionCount
{
  suggestions = [(CarMapsSuggestionsController *)self suggestions];
  v3 = [suggestions count];

  return v3;
}

- (void)setSinkAttached:(BOOL)attached
{
  if (self->_sinkAttached != attached)
  {
    attachedCopy = attached;
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
      if (attachedCopy)
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

    self->_sinkAttached = attachedCopy;
    if (attachedCopy)
    {
      v10 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_10164F808];
      suggestionsEngine = [(CarMapsSuggestionsController *)self suggestionsEngine];
      [suggestionsEngine addAdditionalFilter:v10 forSink:self];

      suggestionsEngine2 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      v13 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_10164F828];
      [suggestionsEngine2 addAdditionalFilter:v13 forSink:self];

      suggestionsEngine3 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      myAdditionalFilter = [(CarMapsSuggestionsController *)self myAdditionalFilter];
      [suggestionsEngine3 addAdditionalFilter:myAdditionalFilter forSink:self];

      suggestionsEngine4 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      [suggestionsEngine4 attachSink:self];

      [(CarMapsSuggestionsController *)self refreshSuggestions];
    }

    else
    {
      suggestionsEngine5 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      [suggestionsEngine5 detachSink:self];

      suggestionsEngine6 = [(CarMapsSuggestionsController *)self suggestionsEngine];
      myAdditionalFilter2 = [(CarMapsSuggestionsController *)self myAdditionalFilter];
      [suggestionsEngine6 removeAdditionalFilter:myAdditionalFilter2 forSink:self];

      [(CarMapsSuggestionsController *)self setSuggestions:0];
    }
  }
}

- (BOOL)monitorLowFuel
{
  lowFuelObserver = [(CarMapsSuggestionsController *)self lowFuelObserver];
  active = [lowFuelObserver active];

  return active;
}

- (void)setMonitorLowFuel:(BOOL)fuel
{
  fuelCopy = fuel;
  lowFuelObserver = [(CarMapsSuggestionsController *)self lowFuelObserver];
  [lowFuelObserver setActive:fuelCopy];
}

- (void)setHoldProcessAssertion:(BOOL)assertion
{
  if (self->_holdProcessAssertion != assertion)
  {
    assertionCopy = assertion;
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
      if (assertionCopy)
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

    self->_holdProcessAssertion = assertionCopy;
    processAssertion = [(CarMapsSuggestionsController *)self processAssertion];
    [processAssertion invalidate];

    processAssertionTimer = [(CarMapsSuggestionsController *)self processAssertionTimer];
    [processAssertionTimer invalidate];

    [(CarMapsSuggestionsController *)self setProcessAssertion:0];
    [(CarMapsSuggestionsController *)self setProcessAssertionTimer:0];
    if (assertionCopy)
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
  observers = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(observers);
  observers2 = [(CarMapsSuggestionsController *)self observers];
  allObjects = [observers2 allObjects];
  if ([allObjects count] || -[CarMapsSuggestionsController sinkDetaching](self, "sinkDetaching"))
  {
  }

  else
  {
    sinkAttached = [(CarMapsSuggestionsController *)self sinkAttached];

    if (sinkAttached)
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

  objc_sync_exit(observers);
}

- (void)_notifyObservers
{
  observers = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(observers);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  observers2 = [(CarMapsSuggestionsController *)self observers];
  v5 = [observers2 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(observers2);
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

      v5 = [observers2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  objc_sync_exit(observers);
  [(CarMapsSuggestionsController *)self _verifyHaveObservers];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(observers);
  observers2 = [(CarMapsSuggestionsController *)self observers];
  v6 = [observers2 containsObject:observerCopy];

  if (v6)
  {
    observers3 = [(CarMapsSuggestionsController *)self observers];
    [observers3 removeObject:observerCopy];

    [(CarMapsSuggestionsController *)self _verifyHaveObservers];
  }

  objc_sync_exit(observers);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CarMapsSuggestionsController *)self observers];
  objc_sync_enter(observers);
  observers2 = [(CarMapsSuggestionsController *)self observers];
  v6 = [observers2 containsObject:observerCopy];

  if ((v6 & 1) == 0)
  {
    observers3 = [(CarMapsSuggestionsController *)self observers];
    [observers3 addObject:observerCopy];

    if (![(CarMapsSuggestionsController *)self sinkAttached])
    {
      [(CarMapsSuggestionsController *)self setSinkAttached:1];
    }
  }

  objc_sync_exit(observers);
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

    suggestionsEngine = [(CarMapsSuggestionsController *)self suggestionsEngine];
    if (qword_10195ED98 != -1)
    {
      dispatch_once(&qword_10195ED98, &stru_10164F7A8);
    }

    v11 = qword_10195ED90;
    v12 = dispatch_get_global_queue(2, 0);
    [suggestionsEngine topSuggestionsForSink:self count:v11 transportType:0 callback:v8 onQueue:v12];

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

- (void)hintRefreshOfType:(int64_t)type
{
  suggestionsEngine = [(CarMapsSuggestionsController *)self suggestionsEngine];
  [suggestionsEngine hintRefreshOfType:type];

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