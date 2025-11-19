@interface RideBookingRideOptionStateObserverProxy
- (RideBookingRideOptionStateObserverProxy)initWithDelegate:(id)a3;
- (RideBookingRideOptionStateObserverProxyDelegate)delegate;
- (void)_updateAnalyticsWithRideOptionStatus:(id)a3;
- (void)rideOptionStateDidChange:(id)a3;
- (void)startRequestRideForRideOption:(id)a3;
- (void)updateRideOptionStateForOrigin:(id)a3 destination:(id)a4;
@end

@implementation RideBookingRideOptionStateObserverProxy

- (RideBookingRideOptionStateObserverProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAnalyticsWithRideOptionStatus:(id)a3
{
  v4 = a3;
  v8 = objc_opt_new();
  [v8 setIntent:1];
  [v8 setFailure:0];
  v5 = [v4 rideOptionStatusError];

  v6 = v5 - 1;
  if (v5 - 1) <= 0xA && ((0x7FDu >> v6))
  {
    [v8 setFailure:dword_10121368C[v6]];
  }

  if ([v8 failure])
  {
    v7 = [(RideBookingRideOptionStateObserverProxy *)self analyticsBookingSession];
    [v7 captureIntent:objc_msgSend(v8 withFailure:{"intent"), objc_msgSend(v8, "failure")}];
  }
}

- (void)rideOptionStateDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100863BBC;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)startRequestRideForRideOption:(id)a3
{
  v3 = a3;
  v4 = +[RideBookingAccessProxy coordinator];
  [v4 startRequestRideForRideOption:v3];
}

- (void)updateRideOptionStateForOrigin:(id)a3 destination:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 placemark];
  v9 = [v8 location];
  v10 = [(RideBookingRideOptionStateObserverProxy *)self analyticsBookingSession];
  [v10 setOrigin:v9];

  v11 = [v6 placemark];
  v12 = [v11 location];
  v13 = [(RideBookingRideOptionStateObserverProxy *)self analyticsBookingSession];
  [v13 setDestination:v12];

  v18 = +[RideBookingAccessProxy coordinator];
  v14 = [v7 _geoMapItem];

  v15 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v14];
  v16 = [v6 _geoMapItem];

  v17 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v16];
  [v18 updateRideOptionStateForOrigin:v15 destination:v17];
}

- (RideBookingRideOptionStateObserverProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RideBookingRideOptionStateObserverProxy;
  v5 = [(RideBookingRideOptionStateObserverProxy *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(RideBookingRideOptionStateObserverProxy *)v5 setDelegate:v4];
    v7 = [RideBookingAccessProxy rideBookingCurrentRideBookingSessionCreateIfNecessary:1];
    analyticsBookingSession = v6->_analyticsBookingSession;
    v6->_analyticsBookingSession = v7;

    v9 = +[RideBookingAccessProxy coordinator];
    [v9 addRideBookingDataCoordinatorRideOptionStateObserver:v6];
  }

  return v6;
}

@end