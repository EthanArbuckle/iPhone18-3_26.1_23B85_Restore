@interface PlaceCardSynchronizationNotificationInfo
- (PlaceCardSynchronizationNotificationInfo)initWithPlaceCardItem:(id)item platformController:(id)controller;
- (PlatformController)platformController;
@end

@implementation PlaceCardSynchronizationNotificationInfo

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (PlaceCardSynchronizationNotificationInfo)initWithPlaceCardItem:(id)item platformController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PlaceCardSynchronizationNotificationInfo;
  v9 = [(PlaceCardSynchronizationNotificationInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeCardItem, item);
    objc_storeWeak(&v10->_platformController, controllerCopy);
  }

  return v10;
}

@end