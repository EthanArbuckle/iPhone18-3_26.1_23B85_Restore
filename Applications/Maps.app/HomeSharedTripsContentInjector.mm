@interface HomeSharedTripsContentInjector
- (BaseModeController)baseModeController;
- (HomeSharedTripsContentInjector)initWithSharedTrip:(id)a3;
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
  v3 = [(HomeSharedTripsContentInjector *)self baseModeController];
  v4 = [(HomeSharedTripsContentInjector *)self sharedTrip];
  v5 = [v3 isShowingSharedTrip:v4];

  if (v5)
  {
    v6 = [(HomeSharedTripsContentInjector *)self baseModeController];
    [v6 showSharedTrip:0];
  }
}

- (void)addContentToMapView
{
  v4 = [(HomeSharedTripsContentInjector *)self baseModeController];
  v3 = [(HomeSharedTripsContentInjector *)self sharedTrip];
  [v4 showSharedTrip:v3];
}

- (HomeSharedTripsContentInjector)initWithSharedTrip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HomeSharedTripsContentInjector;
  v6 = [(HomeSharedTripsContentInjector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedTrip, a3);
  }

  return v7;
}

@end