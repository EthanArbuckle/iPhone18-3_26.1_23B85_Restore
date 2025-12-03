@interface SharedTripsDataProvider
- (GEOObserverHashTable)observers;
- (SharedTripsDataProvider)initWithCombineAllTrips:(BOOL)trips;
- (void)_updateAndNotifyObservers:(BOOL)observers;
- (void)setActive:(BOOL)active;
@end

@implementation SharedTripsDataProvider

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)_updateAndNotifyObservers:(BOOL)observers
{
  if (self->_active)
  {
    observersCopy = observers;
    self->_hasInitialData = 1;
    v6 = +[MSPSharedTripService sharedInstance];
    receivedTrips = [v6 receivedTrips];
    sharedTrips = self->_sharedTrips;
    self->_sharedTrips = receivedTrips;

    v9 = objc_alloc_init(NSMutableArray);
    if ([(NSArray *)self->_sharedTrips count])
    {
      if ([(SharedTripsDataProvider *)self combineAllTrips])
      {
        v10 = [SharedTripSummary summaryWithSharedTrips:self->_sharedTrips];
        [v9 addObject:v10];
      }

      else
      {
        v26 = a2;
        v27 = observersCopy;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = self->_sharedTrips;
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            v15 = 0;
            do
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v38 = *(*(&v28 + 1) + 8 * v15);
              v16 = [NSArray arrayWithObjects:&v38 count:1, v26];
              v17 = [SharedTripSummary summaryWithSharedTrips:v16];
              [v9 addObject:v17];

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v39 count:16];
          }

          while (v13);
        }

        observersCopy = v27;
        a2 = v26;
      }
    }

    v18 = [v9 copy];
    sharedTripSummaries = self->_sharedTripSummaries;
    self->_sharedTripSummaries = v18;

    v20 = sub_1000410AC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      v24 = @"NO";
      if (observersCopy)
      {
        v24 = @"YES";
      }

      v25 = v24;
      *buf = 138412802;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@ %@%@", buf, 0x20u);
    }

    if (observersCopy)
    {
      [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
    }
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    v5 = +[MSPSharedTripService sharedInstance];
    v6 = v5;
    if (activeCopy)
    {
      [v5 addReceivingObserver:self];

      [(SharedTripsDataProvider *)self _updateAndNotifyObservers:0];
    }

    else
    {
      [v5 removeReceivingObserver:self];
    }
  }
}

- (SharedTripsDataProvider)initWithCombineAllTrips:(BOOL)trips
{
  v8.receiver = self;
  v8.super_class = SharedTripsDataProvider;
  v4 = [(SharedTripsDataProvider *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_combineAllTrips = trips;
    sharedTripSummaries = v4->_sharedTripSummaries;
    v4->_sharedTripSummaries = &__NSArray0__struct;
  }

  return v5;
}

@end