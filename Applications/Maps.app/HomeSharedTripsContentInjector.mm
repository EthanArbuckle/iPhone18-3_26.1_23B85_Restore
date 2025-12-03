@interface HomeSharedTripsContentInjector
- (BaseModeController)baseModeController;
- (HomeSharedTripsContentInjector)initWithSharedTrip:(id)trip;
- (void)addContentToMapView;
- (void)removeContentFromMapView;
@end

@implementation HomeSharedTripsContentInjector

- (BaseModeController)baseModeController
{
  WeakRetained = objc_loadWeakRetained(&self->_baseModeController);

  return WeakRetained;
}

- (void)removeContentFromMapView
{
  baseModeController = [(HomeSharedTripsContentInjector *)self baseModeController];
  sharedTrip = [(HomeSharedTripsContentInjector *)self sharedTrip];
  v5 = [baseModeController isShowingSharedTrip:sharedTrip];

  if (v5)
  {
    baseModeController2 = [(HomeSharedTripsContentInjector *)self baseModeController];
    [baseModeController2 showSharedTrip:0];
  }
}

- (void)addContentToMapView
{
  baseModeController = [(HomeSharedTripsContentInjector *)self baseModeController];
  sharedTrip = [(HomeSharedTripsContentInjector *)self sharedTrip];
  [baseModeController showSharedTrip:sharedTrip];
}

- (HomeSharedTripsContentInjector)initWithSharedTrip:(id)trip
{
  tripCopy = trip;
  v9.receiver = self;
  v9.super_class = HomeSharedTripsContentInjector;
  v6 = [(HomeSharedTripsContentInjector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedTrip, trip);
  }

  return v7;
}

@end