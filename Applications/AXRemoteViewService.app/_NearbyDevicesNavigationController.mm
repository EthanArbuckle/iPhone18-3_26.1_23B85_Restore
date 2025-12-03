@interface _NearbyDevicesNavigationController
- (_NearbyDevicesNavigationControllerDelegate)dismissObserver;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation _NearbyDevicesNavigationController

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissObserver = [(_NearbyDevicesNavigationController *)self dismissObserver];
  [dismissObserver _nearbyDevicesNavigationControllerDidDismiss];
}

- (_NearbyDevicesNavigationControllerDelegate)dismissObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissObserver);

  return WeakRetained;
}

@end