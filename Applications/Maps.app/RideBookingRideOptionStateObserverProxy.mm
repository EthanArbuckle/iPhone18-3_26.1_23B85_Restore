@interface RideBookingRideOptionStateObserverProxy
- (RideBookingRideOptionStateObserverProxy)initWithDelegate:(id)delegate;
- (RideBookingRideOptionStateObserverProxyDelegate)delegate;
- (void)_updateAnalyticsWithRideOptionStatus:(id)status;
- (void)rideOptionStateDidChange:(id)change;
- (void)startRequestRideForRideOption:(id)option;
- (void)updateRideOptionStateForOrigin:(id)origin destination:(id)destination;
@end

@implementation RideBookingRideOptionStateObserverProxy

- (RideBookingRideOptionStateObserverProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAnalyticsWithRideOptionStatus:(id)status
{
  statusCopy = status;
  v8 = objc_opt_new();
  [v8 setIntent:1];
  [v8 setFailure:0];
  rideOptionStatusError = [statusCopy rideOptionStatusError];

  v6 = rideOptionStatusError - 1;
  if (rideOptionStatusError - 1) <= 0xA && ((0x7FDu >> v6))
  {
    [v8 setFailure:dword_10121368C[v6]];
  }

  if ([v8 failure])
  {
    analyticsBookingSession = [(RideBookingRideOptionStateObserverProxy *)self analyticsBookingSession];
    [analyticsBookingSession captureIntent:objc_msgSend(v8 withFailure:{"intent"), objc_msgSend(v8, "failure")}];
  }
}

- (void)rideOptionStateDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100863BBC;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)startRequestRideForRideOption:(id)option
{
  optionCopy = option;
  v4 = +[RideBookingAccessProxy coordinator];
  [v4 startRequestRideForRideOption:optionCopy];
}

- (void)updateRideOptionStateForOrigin:(id)origin destination:(id)destination
{
  destinationCopy = destination;
  originCopy = origin;
  placemark = [originCopy placemark];
  location = [placemark location];
  analyticsBookingSession = [(RideBookingRideOptionStateObserverProxy *)self analyticsBookingSession];
  [analyticsBookingSession setOrigin:location];

  placemark2 = [destinationCopy placemark];
  location2 = [placemark2 location];
  analyticsBookingSession2 = [(RideBookingRideOptionStateObserverProxy *)self analyticsBookingSession];
  [analyticsBookingSession2 setDestination:location2];

  v18 = +[RideBookingAccessProxy coordinator];
  _geoMapItem = [originCopy _geoMapItem];

  v15 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItem];
  _geoMapItem2 = [destinationCopy _geoMapItem];

  v17 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItem2];
  [v18 updateRideOptionStateForOrigin:v15 destination:v17];
}

- (RideBookingRideOptionStateObserverProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = RideBookingRideOptionStateObserverProxy;
  v5 = [(RideBookingRideOptionStateObserverProxy *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(RideBookingRideOptionStateObserverProxy *)v5 setDelegate:delegateCopy];
    v7 = [RideBookingAccessProxy rideBookingCurrentRideBookingSessionCreateIfNecessary:1];
    analyticsBookingSession = v6->_analyticsBookingSession;
    v6->_analyticsBookingSession = v7;

    v9 = +[RideBookingAccessProxy coordinator];
    [v9 addRideBookingDataCoordinatorRideOptionStateObserver:v6];
  }

  return v6;
}

@end