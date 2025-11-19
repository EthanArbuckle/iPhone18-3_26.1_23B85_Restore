@interface PlaceCardSynchronizationNotificationInfo
- (PlaceCardSynchronizationNotificationInfo)initWithPlaceCardItem:(id)a3 platformController:(id)a4;
- (PlatformController)platformController;
@end

@implementation PlaceCardSynchronizationNotificationInfo

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (PlaceCardSynchronizationNotificationInfo)initWithPlaceCardItem:(id)a3 platformController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PlaceCardSynchronizationNotificationInfo;
  v9 = [(PlaceCardSynchronizationNotificationInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeCardItem, a3);
    objc_storeWeak(&v10->_platformController, v8);
  }

  return v10;
}

@end