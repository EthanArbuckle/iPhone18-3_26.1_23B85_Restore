@interface SharedTripsContext
- (BOOL)shouldShowRoute;
- (GEOSharedNavState)selectedTrip;
- (SharedTripsContext)init;
- (SharedTripsContext)initWithInitialSelectedSharedTrip:(id)a3;
- (void)_updateEverything;
- (void)_updateSharedTrips;
- (void)becomeCurrent:(BOOL)a3;
- (void)dealloc;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)recenterOnRouteAnimated:(BOOL)a3;
- (void)resignCurrent:(BOOL)a3;
- (void)setSelectedTrip:(id)a3;
- (void)sharedTripService:(id)a3 didRemoveSharedTrip:(id)a4;
@end

@implementation SharedTripsContext

- (void)sharedTripService:(id)a3 didRemoveSharedTrip:(id)a4
{
  v7 = a4;
  [(SharedTripsContext *)self _updateSharedTrips];
  if ([(NSArray *)self->_sharedTrips count])
  {
    v5 = [v7 groupIdentifier];
    v6 = [v5 isEqualToString:self->_selectedTripID];

    if (v6)
    {
      [(SharedTripsContext *)self setSelectedTrip:0];
    }
  }

  else
  {
    [(SharedTripsContext *)self dismiss];
  }
}

- (GEOSharedNavState)selectedTrip
{
  sharedTrips = self->_sharedTrips;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CF6E04;
  v7[3] = &unk_101650E00;
  v7[4] = self;
  v4 = [(NSArray *)sharedTrips indexOfObjectPassingTest:v7];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_sharedTrips objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)setSelectedTrip:(id)a3
{
  v4 = a3;
  v5 = sub_100CF74C4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SharedTripsContext *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = [v4 groupIdentifier];
    *buf = 138544386;
    v44 = v11;
    v45 = 2112;
    v46 = v12;
    v47 = 2048;
    v48 = [v4 transportType];
    v49 = 2048;
    v50 = [v4 protocolVersion];
    v51 = 1024;
    v52 = [v4 referenceFrame];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Selecting trip: %@, transportType: %lu, protocolVersion: %lu, referenceFrame: %d", buf, 0x30u);
  }

  v13 = [v4 groupIdentifier];
  selectedTripID = self->_selectedTripID;
  self->_selectedTripID = v13;

  v15 = [(SharedTripsContext *)self selectedTrip];

  if (!v15)
  {
    goto LABEL_38;
  }

  if (![(__CFString *)v15 disallowDetailsForChina])
  {
    if ([(__CFString *)v15 disallowDetailsForTransportType])
    {
      v23 = sub_100CF74C4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = self;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        if (objc_opt_respondsToSelector())
        {
          v27 = [(SharedTripsContext *)v24 performSelector:"accessibilityIdentifier"];
          v28 = v27;
          if (v27 && ![v27 isEqualToString:v26])
          {
            v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

            goto LABEL_28;
          }
        }

        v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_28:

        v30 = v29;
        v31 = [(__CFString *)v15 transportType];
        if (v31 >= 7)
        {
          v32 = [NSString stringWithFormat:@"(unknown: %i)", v31];
        }

        else
        {
          v32 = off_101650E40[v31];
        }

        UInteger = GEOConfigGetUInteger();
        *buf = 138544130;
        v44 = v30;
        v45 = 2112;
        v46 = v32;
        v47 = 2048;
        v48 = UInteger;
        v49 = 2112;
        v50 = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Selected trip is not allowed for transport type: %@. Allowed transport type bitmask: %lu. Trip: %@", buf, 0x2Au);
      }

LABEL_42:

      [(SharedTripsContext *)self presentErrorForUnsupportedProtocolOrTransportWithTrip:v15];
      goto LABEL_43;
    }

    if ([(__CFString *)v15 disallowDetailsForProtocolVersion])
    {
      v23 = sub_100CF74C4();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      v33 = self;
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      if (objc_opt_respondsToSelector())
      {
        v36 = [(SharedTripsContext *)v33 performSelector:"accessibilityIdentifier"];
        v37 = v36;
        if (v36 && ![v36 isEqualToString:v35])
        {
          v38 = [NSString stringWithFormat:@"%@<%p, %@>", v35, v33, v37];

          goto LABEL_37;
        }
      }

      v38 = [NSString stringWithFormat:@"%@<%p>", v35, v33];
LABEL_37:

      v39 = [(__CFString *)v15 protocolVersion];
      v40 = GEOConfigGetUInteger();
      *buf = 138544130;
      v44 = v38;
      v45 = 2048;
      v46 = v39;
      v47 = 2048;
      v48 = v40;
      v49 = 2112;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Selected trip protocol (%lu) is greater than ours (%lu). Trip: %@", buf, 0x2Au);

      goto LABEL_42;
    }

LABEL_38:
    v41 = [(SharedTripsContext *)self sharedTripsAnnotationsController];
    [v41 setSharedTrip:v15];

    [(SharedTripsContext *)self presentDetailsForSelectedTrip];
    goto LABEL_43;
  }

  v16 = sub_100CF74C4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(SharedTripsContext *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_19;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_19:

    *buf = 138543618;
    v44 = v22;
    v45 = 2112;
    v46 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Selected trip is not allowed for China: %@", buf, 0x16u);
  }

  [(SharedTripsContext *)self presentErrorForChinaTrip:v15];
LABEL_43:
}

- (void)_updateSharedTrips
{
  v5 = +[MSPSharedTripService sharedInstance];
  v3 = [v5 receivedTrips];
  sharedTrips = self->_sharedTrips;
  self->_sharedTrips = v3;
}

- (void)_updateEverything
{
  [(SharedTripsContext *)self _updateSharedTrips];
  v3 = [(SharedTripsContext *)self sharedTripsAnnotationsController];
  [v3 reload];

  if (![(NSArray *)self->_sharedTrips count])
  {

    [(SharedTripsContext *)self dismiss];
  }
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v5 = [(SharedTripsContext *)self sharedTripsAnnotationsController:a3];
  [v5 setAutomaticallyRecenter:0];
}

- (void)resignCurrent:(BOOL)a3
{
  v4 = +[MSPSharedTripService sharedInstance];
  [v4 removeReceivingObserver:self];

  v5 = [(SharedTripsContext *)self sharedTripsAnnotationsController];
  [v5 setSharedTrip:0];
}

- (void)becomeCurrent:(BOOL)a3
{
  [(SharedTripsContext *)self _updateSharedTrips];
  v4 = [(SharedTripsContext *)self selectedTrip];
  if (!v4)
  {
    v5 = [(SharedTripsContext *)self sharedTrips];
    v6 = [v5 count];

    if (v6 != 1)
    {
      goto LABEL_5;
    }

    v7 = [(SharedTripsContext *)self sharedTrips];
    v4 = [v7 firstObject];

    v8 = [v4 groupIdentifier];
    selectedTripID = self->_selectedTripID;
    self->_selectedTripID = v8;
  }

LABEL_5:
  v12 = [(SharedTripsContext *)self selectedTrip];
  if (v12)
  {
    v10 = [(SharedTripsContext *)self sharedTripsAnnotationsController];
    [v10 setSharedTrip:v12];
  }

  v11 = +[MSPSharedTripService sharedInstance];
  [v11 addReceivingObserver:self];
}

- (void)recenterOnRouteAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SharedTripsContext *)self sharedTripsAnnotationsController];
  [v4 recenterOnRouteAnimated:v3];
}

- (BOOL)shouldShowRoute
{
  v2 = [(SharedTripsContext *)self mapView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom] != 3;

  return v4;
}

- (void)dealloc
{
  v3 = sub_100CF74C4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SharedTripsContext;
  [(SharedTripsContext *)&v4 dealloc];
}

- (SharedTripsContext)initWithInitialSelectedSharedTrip:(id)a3
{
  v4 = a3;
  v5 = [(SharedTripsContext *)self init];
  if (v5)
  {
    v6 = sub_100CF74C4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 groupIdentifier];
      v11 = 134349314;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with shared trip: %@", &v11, 0x16u);
    }

    v8 = [v4 groupIdentifier];
    selectedTripID = v5->_selectedTripID;
    v5->_selectedTripID = v8;
  }

  return v5;
}

- (SharedTripsContext)init
{
  v5.receiver = self;
  v5.super_class = SharedTripsContext;
  v2 = [(SharedTripsContext *)&v5 init];
  if (v2)
  {
    v3 = sub_100CF74C4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    [(SharedTripsContext *)v2 _updateSharedTrips];
  }

  return v2;
}

@end