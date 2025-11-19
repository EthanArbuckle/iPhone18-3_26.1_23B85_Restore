@interface NanoRoutePlanningSession
+ (id)_defaultClassesBySessionState;
+ (void)processRequest:(id)a3 withCompletion:(id)a4;
+ (void)setDefaultClass:(Class)a3 forSessionState:(int64_t)a4;
- (BOOL)_hasReceivedAllExpectedRoutes;
- (BOOL)hasReceivedAllExpectedRoutes;
- (BOOL)isLoading;
- (BOOL)shouldBroadcast;
- (Class)_classForState:(int64_t)a3;
- (GEOCompanionRouteDetails)selectedCompanionRoute;
- (GEOComposedRoute)selectedRoute;
- (GEOObserverHashTable)observers;
- (NSString)description;
- (NanoRoutePlanningRequest)request;
- (NanoRoutePlanningResponse)response;
- (NanoRoutePlanningSession)init;
- (NanoRoutePlanningSession)initWithOrigin:(unint64_t)a3;
- (id)_description;
- (id)valueForUserInfoKey:(id)a3;
- (int64_t)state;
- (unint64_t)origin;
- (void)_anticipateRoutesWithRequest:(id)a3;
- (void)_broadcastIfNeeded;
- (void)_cancelRequestIfNeeded;
- (void)_endTransaction;
- (void)_notifyDidChangeFromState:(int64_t)a3 toState:(int64_t)a4;
- (void)_notifyDidInvalidate;
- (void)_notifySessionDidFail;
- (void)_notifySessionDidStartLoading;
- (void)_notifySessionDidUpdateResponse;
- (void)_prepareForRequest:(id)a3;
- (void)_processRequest:(id)a3;
- (void)_setResponse:(id)a3;
- (void)_setSelectedRouteWithRouteID:(id)a3;
- (void)_startTransaction;
- (void)_transitionToState:(int64_t)a3;
- (void)_transitionToState:(int64_t)a3 withClass:(Class)a4;
- (void)_updateWithRequest:(id)a3 response:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)processRequest:(id)a3;
- (void)registerObserver:(id)a3;
- (void)replaceWithStateOfClass:(Class)a3;
- (void)setNextClass:(Class)a3 forSessionState:(int64_t)a4;
- (void)setRequest:(id)a3;
- (void)setResponse:(id)a3;
- (void)setSelectedCompanionRoute:(id)a3;
- (void)setSelectedRoute:(id)a3;
- (void)setSelectedRouteWithRouteID:(id)a3;
- (void)setShouldBroadcast:(BOOL)a3;
- (void)setUserInfoKey:(id)a3 andValue:(id)a4;
- (void)unregisterObserver:(id)a3;
- (void)updateWithBlock:(id)a3;
- (void)updateWithRequest:(id)a3 response:(id)a4;
@end

@implementation NanoRoutePlanningSession

- (void)_endTransaction
{
  if (self->_transaction)
  {
    v3 = sub_100F051C4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%p] Ending transaction", &v5, 0xCu);
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)_startTransaction
{
  if (!self->_transaction)
  {
    v3 = sub_100F051C4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%p] Starting transaction", buf, 0xCu);
    }

    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [NSString stringWithFormat:@"%@.%@.%p", v5, objc_opt_class(), self];
    [v6 UTF8String];
    v7 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v7;
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100F051C4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134218242;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] Removing observer: %@", &v7, 0x16u);
    }

    v6 = [(NanoRoutePlanningSession *)self observers];
    [v6 unregisterObserver:v4];
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  [(NanoRoutePlanningSession *)self _assertNotInvalidated];
  if (v4)
  {
    v5 = sub_100F051C4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134218242;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] Adding observer: %@", &v7, 0x16u);
    }

    v6 = [(NanoRoutePlanningSession *)self observers];
    [v6 registerObserver:v4];
  }
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___NanoRoutePlanningSessionObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (BOOL)_hasReceivedAllExpectedRoutes
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  response = self->_response;
  if (response)
  {
    v4 = [(NanoRoutePlanningResponse *)response expectedNumberOfRoutes];
    v5 = [(NanoRoutePlanningResponse *)self->_response routes];
    v6 = [v5 count];

    if (v4)
    {
      v7 = v6 == v4;
    }

    else
    {
      v7 = 0;
    }

    LOBYTE(response) = v7;
  }

  return response;
}

- (BOOL)hasReceivedAllExpectedRoutes
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F05708;
  block[3] = &unk_10165DE50;
  block[4] = &v8;
  objc_copyWeak(&v6, &location);
  dispatch_sync(isolationQueue, block);
  LOBYTE(isolationQueue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return isolationQueue;
}

- (void)_setSelectedRouteWithRouteID:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v4 = [(NanoRoutePlanningResponse *)self->_response selectedRouteID];
  if (([MNComparison isValue:v4 equalTo:v5]& 1) == 0)
  {
    [(NanoRoutePlanningResponse *)self->_response setSelectedRouteID:v5];
    [(NanoRoutePlanningSession *)self _notifySessionDidUpdateResponse];
  }
}

- (void)setSelectedRouteWithRouteID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    isolationQueue = self->_isolationQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100F05894;
    v7[3] = &unk_101661A90;
    v7[4] = self;
    v8 = v4;
    dispatch_async(isolationQueue, v7);
  }
}

- (void)setSelectedCompanionRoute:(id)a3
{
  if (a3)
  {
    v4 = [a3 routeID];
    v5 = [NSUUID _maps_UUIDWithData:v4];

    [(NanoRoutePlanningSession *)self setSelectedRouteWithRouteID:v5];
  }
}

- (void)setSelectedRoute:(id)a3
{
  if (a3)
  {
    v4 = [a3 uniqueRouteID];
    [(NanoRoutePlanningSession *)self setSelectedRouteWithRouteID:v4];
  }
}

- (GEOCompanionRouteDetails)selectedCompanionRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100F05A78;
  v10 = sub_100F05A88;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F05A90;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (GEOComposedRoute)selectedRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100F05A78;
  v10 = sub_100F05A88;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F05BD0;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_notifyDidChangeFromState:(int64_t)a3 toState:(int64_t)a4
{
  v7 = sub_100F051C4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (a3 > 4)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_10164F5A8[a3];
    }

    v9 = v8;
    if (a4 > 4)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_10164F5A8[a4];
    }

    v11 = v10;
    v13 = 134218498;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%p] State changed from '%@' to '%@'", &v13, 0x20u);
  }

  if (!a3)
  {
    [(NanoRoutePlanningSession *)self _notifySessionDidStartLoading];
  }

  if (a4 == 4)
  {
    v12 = [(NanoRoutePlanningResponse *)self->_response lastError];

    if (v12)
    {
      [(NanoRoutePlanningSession *)self _notifySessionDidFail];
    }

    else
    {
      [(NanoRoutePlanningSession *)self _notifySessionDidUpdateResponse];
    }
  }
}

- (void)replaceWithStateOfClass:(Class)a3
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F05E34;
  v6[3] = &unk_10165CC58;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  v7[1] = a3;
  dispatch_async(isolationQueue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_transitionToState:(int64_t)a3 withClass:(Class)a4
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (a4)
  {
    state = self->_state;
    [(NanoRoutePlanningState *)self->_stateObject leaveToState:a3];
    if (a3 < 1)
    {
      [(NanoRoutePlanningSession *)self _endTransaction];
    }

    else
    {
      [(NanoRoutePlanningSession *)self _startTransaction];
    }

    self->_state = a3;
    v10 = [[a4 alloc] initWithStateManager:self isolationQueue:self->_stateIsolationQueue];
    stateObject = self->_stateObject;
    self->_stateObject = v10;

    v12 = sub_100F051C4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if (a3 > 4)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_10164F5A8[a3];
      }

      v14 = v13;
      v15 = NSStringFromClass(a4);
      v17 = 134218498;
      v18 = self;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%p] Will transition to state %@ with class %@", &v17, 0x20u);
    }

    [(NanoRoutePlanningState *)self->_stateObject enterToState:a3 fromState:state];
    [(NanoRoutePlanningSession *)self _notifyDidChangeFromState:state toState:self->_state];
  }

  else
  {
    v8 = sub_100F051C4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (a3 > 4)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_10164F5A8[a3];
      }

      v16 = v9;
      v17 = 134218242;
      v18 = self;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%p] No class found for state %@", &v17, 0x16u);
    }

    [(NanoRoutePlanningSession *)self _notifySessionDidFail];
  }
}

- (void)_transitionToState:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_state != a3)
  {
    v5 = [(NanoRoutePlanningSession *)self _classForState:a3];

    [(NanoRoutePlanningSession *)self _transitionToState:a3 withClass:v5];
  }
}

- (void)updateWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F061FC;
    block[3] = &unk_101660648;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(isolationQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (Class)_classForState:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)self->_classesBySessionState objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    [(NSMutableDictionary *)self->_classesBySessionState setObject:0 forKeyedSubscript:v4];
    v7 = v6;
  }

  else
  {
    v8 = [objc_opt_class() _defaultClassesBySessionState];
    v7 = [v8 objectForKeyedSubscript:v4];
  }

  return v7;
}

- (void)setNextClass:(Class)a3 forSessionState:(int64_t)a4
{
  classesBySessionState = self->_classesBySessionState;
  v6 = [NSNumber numberWithInteger:a4];
  [(NSMutableDictionary *)classesBySessionState setObject:a3 forKeyedSubscript:v6];
}

- (void)_notifyDidInvalidate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F067A0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifySessionDidFail
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F06928;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifySessionDidUpdateResponse
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F06AD0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifySessionDidStartLoading
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F06C78;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_broadcastIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_shouldBroadcast)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F06E2C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setUserInfoKey:(id)a3 andValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  specific = dispatch_get_specific(&off_10165CC28);
  stateIsolationQueue = self->_stateIsolationQueue;
  if (specific == &off_10165CC28)
  {
    dispatch_assert_queue_V2(stateIsolationQueue);
    [(NSMutableDictionary *)self->_userInfo setObject:v7 forKeyedSubscript:v6];
  }

  else
  {
    dispatch_assert_queue_not_V2(stateIsolationQueue);
    v10 = self->_stateIsolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F0705C;
    block[3] = &unk_101661A40;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_sync(v10, block);
  }
}

- (id)valueForUserInfoKey:(id)a3
{
  v4 = a3;
  specific = dispatch_get_specific(&off_10165CC28);
  stateIsolationQueue = self->_stateIsolationQueue;
  if (specific == &off_10165CC28)
  {
    dispatch_assert_queue_V2(stateIsolationQueue);
    v8 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:v4];
  }

  else
  {
    dispatch_assert_queue_not_V2(stateIsolationQueue);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100F05A78;
    v17 = sub_100F05A88;
    v18 = 0;
    v7 = self->_stateIsolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F071C8;
    block[3] = &unk_101660778;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v7, block);
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return v8;
}

- (void)_setResponse:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  response = self->_response;
  p_response = &self->_response;
  if (response != v5)
  {
    v8 = sub_100F051C4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *p_response;
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Changing response from %{public}@ to %{public}@", &v10, 0x16u);
    }

    objc_storeStrong(p_response, a3);
  }
}

- (void)setResponse:(id)a3
{
  v4 = [a3 mutableCopy];
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F073A0;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

- (void)setRequest:(id)a3
{
  v4 = [a3 mutableCopy];
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F07448;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

- (BOOL)isLoading
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F07500;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldBroadcast:(BOOL)a3
{
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F07598;
  v4[3] = &unk_101661AE0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(isolationQueue, v4);
}

- (BOOL)shouldBroadcast
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = v2->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F0765C;
  v5[3] = &unk_101661600;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (NanoRoutePlanningResponse)response
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100F05A78;
  v11 = sub_100F05A88;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F07768;
  v6[3] = &unk_101661600;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NanoRoutePlanningRequest)request
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100F05A78;
  v11 = sub_100F05A88;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F078AC;
  v6[3] = &unk_101661600;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (int64_t)state
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F079AC;
  v6[3] = &unk_101661600;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)origin
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F07A74;
  v6[3] = &unk_101661600;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_cancelRequestIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);

  [(NanoRoutePlanningSession *)self _transitionToState:0];
}

- (void)_prepareForRequest:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  dispatch_assert_queue_not_V2(self->_stateIsolationQueue);
  self->_state = 0;
  v6 = [v5 mutableCopy];

  request = self->_request;
  self->_request = v6;

  v8 = objc_alloc_init(NanoRoutePlanningMutableResponse);
  [(NanoRoutePlanningSession *)self _setResponse:v8];

  stateIsolationQueue = self->_stateIsolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F07BA8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(stateIsolationQueue, block);
}

- (void)_processRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(NanoRoutePlanningSession *)self _cancelRequestIfNeeded];
  [(NanoRoutePlanningSession *)self _prepareForRequest:v4];
  [(NanoRoutePlanningSession *)self _broadcastIfNeeded];
  v5 = sub_100F051C4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%p] Will process request: %@", &v6, 0x16u);
  }

  [(NanoRoutePlanningSession *)self _transitionToState:[(objc_class *)[(NanoRoutePlanningSession *)self _classForState:3] requiredInitialStateForRequest:v4]];
}

- (void)processRequest:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F07D90;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

- (void)invalidate
{
  if (![(NanoRoutePlanningSession *)self isInvalidated])
  {
    self->_invalidated = 1;
    v3 = sub_100F051C4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%p] is being invalidated", buf, 0xCu);
    }

    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F07EA4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(isolationQueue, block);
  }
}

- (id)_description
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v9.receiver = self;
  v9.super_class = NanoRoutePlanningSession;
  v3 = [(NanoRoutePlanningSession *)&v9 description];
  v4 = self->_origin - 1;
  if (v4 > 3)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_10164F588[v4];
  }

  v6 = v5;
  v7 = [NSString stringWithFormat:@"%@ (origin:%@)", v3, v6];

  return v7;
}

- (NSString)description
{
  if (dispatch_get_specific(&unk_101216028) == &unk_101216028)
  {
    v4 = [(NanoRoutePlanningSession *)self _description];
  }

  else
  {
    dispatch_assert_queue_not_V2(self->_isolationQueue);
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_100F05A78;
    v11 = sub_100F05A88;
    v12 = 0;
    isolationQueue = self->_isolationQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100F080D0;
    v6[3] = &unk_101661600;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(isolationQueue, v6);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

- (NanoRoutePlanningSession)initWithOrigin:(unint64_t)a3
{
  v20.receiver = self;
  v20.super_class = NanoRoutePlanningSession;
  v4 = [(NanoRoutePlanningSession *)&v20 init];
  if (v4)
  {
    v5 = sub_100F051C4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v22 = v4;
      v23 = 2080;
      v24 = "[NanoRoutePlanningSession initWithOrigin:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%p] %s", buf, 0x16u);
    }

    v6 = MapsAppBundleId;
    v7 = [NSString stringWithFormat:@"%@.%@.%p", MapsAppBundleId, objc_opt_class(), v4];
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    v11 = *(v4 + 2);
    *(v4 + 2) = v10;

    dispatch_queue_set_specific(*(v4 + 2), &unk_101216028, &unk_101216028, 0);
    v12 = [NSString stringWithFormat:@"%@.%@.%p", v6, objc_opt_class(), v4];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    v16 = *(v4 + 3);
    *(v4 + 3) = v15;

    dispatch_queue_set_specific(*(v4 + 3), &off_10165CC28, &off_10165CC28, 0);
    *(v4 + 4) = a3;
    v17 = [NSMutableDictionary dictionaryWithCapacity:1];
    v18 = *(v4 + 11);
    *(v4 + 11) = v17;
  }

  return v4;
}

- (NanoRoutePlanningSession)init
{
  v3 = [objc_opt_class() defaultOrigin];

  return [(NanoRoutePlanningSession *)self initWithOrigin:v3];
}

- (void)dealloc
{
  [(NanoRoutePlanningState *)self->_stateObject leaveToState:0];
  v3 = sub_100F051C4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v6 = self;
    v7 = 2080;
    v8 = "[NanoRoutePlanningSession dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%p] %s", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = NanoRoutePlanningSession;
  [(NanoRoutePlanningSession *)&v4 dealloc];
}

+ (void)setDefaultClass:(Class)a3 forSessionState:(int64_t)a4
{
  v7 = [a1 _defaultClassesBySessionState];
  v6 = [NSNumber numberWithInteger:a4];
  [v7 setObject:a3 forKeyedSubscript:v6];
}

+ (id)_defaultClassesBySessionState
{
  if (qword_10195F670 != -1)
  {
    dispatch_once(&qword_10195F670, &stru_10165CC30);
  }

  v3 = qword_10195F668;

  return v3;
}

- (void)_updateWithRequest:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100F08BCC;
  v29[3] = &unk_101661A40;
  v29[4] = self;
  v8 = v6;
  v30 = v8;
  v9 = v7;
  v31 = v9;
  v10 = objc_retainBlock(v29);
  v11 = v10;
  state = self->_state;
  if (state != 3)
  {
    if (state == 4)
    {
      (v10[2])(v10);
      v13 = sub_100F051C4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
        v15 = [v14 simpleDescription];
        *buf = 134218242;
        v33 = self;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%p] Updating completed session with context %@, notify observers", buf, 0x16u);
      }

      [(NanoRoutePlanningSession *)self _notifySessionDidUpdateResponse];
      goto LABEL_20;
    }

    v16 = sub_100F051C4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
      v18 = [v17 simpleDescription];
      *buf = 134218242;
      v33 = self;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%p] Force anticipate request before updating request/response with context %@", buf, 0x16u);
    }

    [(NanoRoutePlanningSession *)self _anticipateRoutesWithRequest:v8];
  }

  v11[2](v11);
  v19 = [v9 hasReceivedAllExpectedRoutes];
  v20 = [v9 lastError];

  if (v20 || v19)
  {
    v21 = sub_100F051C4();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v28 = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
      v22 = [v28 simpleDescription];
      if (v19)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = v23;
      v25 = [v9 lastError];
      if (v25)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = v26;
      *buf = 134218754;
      v33 = self;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v24;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%p] Updating request with context %@ (hasReceivedAllRoutes: %@, error: %@)", buf, 0x2Au);
    }

    [(NanoRoutePlanningSession *)self _transitionToState:4];
  }

LABEL_20:
}

- (void)updateWithRequest:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F08D20;
  block[3] = &unk_101661A40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(isolationQueue, block);
}

- (void)_anticipateRoutesWithRequest:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  [(NanoRoutePlanningSession *)self _prepareForRequest:v5];

  [(NanoRoutePlanningSession *)self _broadcastIfNeeded];
  v6 = sub_100F051C4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
    v8 = [v7 simpleDescription];
    v9 = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%p] Anticipate request with context %@", &v9, 0x16u);
  }

  [(NanoRoutePlanningSession *)self _transitionToState:3];
}

+ (void)processRequest:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100F05A78;
  v16 = sub_100F05A88;
  v17 = objc_alloc_init(_NanoRoutePlanningSingleRequester);
  v7 = v13[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F08F74;
  v9[3] = &unk_10165CC80;
  v8 = v6;
  v10 = v8;
  v11 = &v12;
  [v7 processRequest:v5 withCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

@end