@interface SharedTripsContext
- (BOOL)shouldShowRoute;
- (GEOSharedNavState)selectedTrip;
- (SharedTripsContext)init;
- (SharedTripsContext)initWithInitialSelectedSharedTrip:(id)trip;
- (void)_updateEverything;
- (void)_updateSharedTrips;
- (void)becomeCurrent:(BOOL)current;
- (void)dealloc;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)recenterOnRouteAnimated:(BOOL)animated;
- (void)resignCurrent:(BOOL)current;
- (void)setSelectedTrip:(id)trip;
- (void)sharedTripService:(id)service didRemoveSharedTrip:(id)trip;
@end

@implementation SharedTripsContext

- (void)sharedTripService:(id)service didRemoveSharedTrip:(id)trip
{
  tripCopy = trip;
  [(SharedTripsContext *)self _updateSharedTrips];
  if ([(NSArray *)self->_sharedTrips count])
  {
    groupIdentifier = [tripCopy groupIdentifier];
    v6 = [groupIdentifier isEqualToString:self->_selectedTripID];

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

- (void)setSelectedTrip:(id)trip
{
  tripCopy = trip;
  v5 = sub_100CF74C4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SharedTripsContext *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    groupIdentifier = [tripCopy groupIdentifier];
    *buf = 138544386;
    v44 = selfCopy;
    v45 = 2112;
    v46 = groupIdentifier;
    v47 = 2048;
    transportType = [tripCopy transportType];
    v49 = 2048;
    protocolVersion = [tripCopy protocolVersion];
    v51 = 1024;
    referenceFrame = [tripCopy referenceFrame];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Selecting trip: %@, transportType: %lu, protocolVersion: %lu, referenceFrame: %d", buf, 0x30u);
  }

  groupIdentifier2 = [tripCopy groupIdentifier];
  selectedTripID = self->_selectedTripID;
  self->_selectedTripID = groupIdentifier2;

  selectedTrip = [(SharedTripsContext *)self selectedTrip];

  if (!selectedTrip)
  {
    goto LABEL_38;
  }

  if (![(__CFString *)selectedTrip disallowDetailsForChina])
  {
    if ([(__CFString *)selectedTrip disallowDetailsForTransportType])
    {
      v23 = sub_100CF74C4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        selfCopy2 = self;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        if (objc_opt_respondsToSelector())
        {
          v27 = [(SharedTripsContext *)selfCopy2 performSelector:"accessibilityIdentifier"];
          v28 = v27;
          if (v27 && ![v27 isEqualToString:v26])
          {
            selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy2, v28];

            goto LABEL_28;
          }
        }

        selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy2];
LABEL_28:

        v30 = selfCopy2;
        transportType2 = [(__CFString *)selectedTrip transportType];
        if (transportType2 >= 7)
        {
          v32 = [NSString stringWithFormat:@"(unknown: %i)", transportType2];
        }

        else
        {
          v32 = off_101650E40[transportType2];
        }

        UInteger = GEOConfigGetUInteger();
        *buf = 138544130;
        v44 = v30;
        v45 = 2112;
        v46 = v32;
        v47 = 2048;
        transportType = UInteger;
        v49 = 2112;
        protocolVersion = selectedTrip;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Selected trip is not allowed for transport type: %@. Allowed transport type bitmask: %lu. Trip: %@", buf, 0x2Au);
      }

LABEL_42:

      [(SharedTripsContext *)self presentErrorForUnsupportedProtocolOrTransportWithTrip:selectedTrip];
      goto LABEL_43;
    }

    if ([(__CFString *)selectedTrip disallowDetailsForProtocolVersion])
    {
      v23 = sub_100CF74C4();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      selfCopy3 = self;
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      if (objc_opt_respondsToSelector())
      {
        v36 = [(SharedTripsContext *)selfCopy3 performSelector:"accessibilityIdentifier"];
        v37 = v36;
        if (v36 && ![v36 isEqualToString:v35])
        {
          selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v35, selfCopy3, v37];

          goto LABEL_37;
        }
      }

      selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v35, selfCopy3];
LABEL_37:

      protocolVersion2 = [(__CFString *)selectedTrip protocolVersion];
      v40 = GEOConfigGetUInteger();
      *buf = 138544130;
      v44 = selfCopy3;
      v45 = 2048;
      v46 = protocolVersion2;
      v47 = 2048;
      transportType = v40;
      v49 = 2112;
      protocolVersion = selectedTrip;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Selected trip protocol (%lu) is greater than ours (%lu). Trip: %@", buf, 0x2Au);

      goto LABEL_42;
    }

LABEL_38:
    sharedTripsAnnotationsController = [(SharedTripsContext *)self sharedTripsAnnotationsController];
    [sharedTripsAnnotationsController setSharedTrip:selectedTrip];

    [(SharedTripsContext *)self presentDetailsForSelectedTrip];
    goto LABEL_43;
  }

  v16 = sub_100CF74C4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    selfCopy4 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(SharedTripsContext *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy4, v21];

        goto LABEL_19;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy4];
LABEL_19:

    *buf = 138543618;
    v44 = selfCopy4;
    v45 = 2112;
    v46 = selectedTrip;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Selected trip is not allowed for China: %@", buf, 0x16u);
  }

  [(SharedTripsContext *)self presentErrorForChinaTrip:selectedTrip];
LABEL_43:
}

- (void)_updateSharedTrips
{
  v5 = +[MSPSharedTripService sharedInstance];
  receivedTrips = [v5 receivedTrips];
  sharedTrips = self->_sharedTrips;
  self->_sharedTrips = receivedTrips;
}

- (void)_updateEverything
{
  [(SharedTripsContext *)self _updateSharedTrips];
  sharedTripsAnnotationsController = [(SharedTripsContext *)self sharedTripsAnnotationsController];
  [sharedTripsAnnotationsController reload];

  if (![(NSArray *)self->_sharedTrips count])
  {

    [(SharedTripsContext *)self dismiss];
  }
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  v5 = [(SharedTripsContext *)self sharedTripsAnnotationsController:view];
  [v5 setAutomaticallyRecenter:0];
}

- (void)resignCurrent:(BOOL)current
{
  v4 = +[MSPSharedTripService sharedInstance];
  [v4 removeReceivingObserver:self];

  sharedTripsAnnotationsController = [(SharedTripsContext *)self sharedTripsAnnotationsController];
  [sharedTripsAnnotationsController setSharedTrip:0];
}

- (void)becomeCurrent:(BOOL)current
{
  [(SharedTripsContext *)self _updateSharedTrips];
  selectedTrip = [(SharedTripsContext *)self selectedTrip];
  if (!selectedTrip)
  {
    sharedTrips = [(SharedTripsContext *)self sharedTrips];
    v6 = [sharedTrips count];

    if (v6 != 1)
    {
      goto LABEL_5;
    }

    sharedTrips2 = [(SharedTripsContext *)self sharedTrips];
    selectedTrip = [sharedTrips2 firstObject];

    groupIdentifier = [selectedTrip groupIdentifier];
    selectedTripID = self->_selectedTripID;
    self->_selectedTripID = groupIdentifier;
  }

LABEL_5:
  selectedTrip2 = [(SharedTripsContext *)self selectedTrip];
  if (selectedTrip2)
  {
    sharedTripsAnnotationsController = [(SharedTripsContext *)self sharedTripsAnnotationsController];
    [sharedTripsAnnotationsController setSharedTrip:selectedTrip2];
  }

  v11 = +[MSPSharedTripService sharedInstance];
  [v11 addReceivingObserver:self];
}

- (void)recenterOnRouteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  sharedTripsAnnotationsController = [(SharedTripsContext *)self sharedTripsAnnotationsController];
  [sharedTripsAnnotationsController recenterOnRouteAnimated:animatedCopy];
}

- (BOOL)shouldShowRoute
{
  mapView = [(SharedTripsContext *)self mapView];
  traitCollection = [mapView traitCollection];
  v4 = [traitCollection userInterfaceIdiom] != 3;

  return v4;
}

- (void)dealloc
{
  v3 = sub_100CF74C4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SharedTripsContext;
  [(SharedTripsContext *)&v4 dealloc];
}

- (SharedTripsContext)initWithInitialSelectedSharedTrip:(id)trip
{
  tripCopy = trip;
  v5 = [(SharedTripsContext *)self init];
  if (v5)
  {
    v6 = sub_100CF74C4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      groupIdentifier = [tripCopy groupIdentifier];
      v11 = 134349314;
      v12 = v5;
      v13 = 2112;
      v14 = groupIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with shared trip: %@", &v11, 0x16u);
    }

    groupIdentifier2 = [tripCopy groupIdentifier];
    selectedTripID = v5->_selectedTripID;
    v5->_selectedTripID = groupIdentifier2;
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