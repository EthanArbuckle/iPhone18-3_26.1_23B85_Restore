@interface _NearbyDevicesNavigationController
- (_NearbyDevicesNavigationControllerDelegate)dismissObserver;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation _NearbyDevicesNavigationController

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(_NearbyDevicesNavigationController *)self dismissObserver];
  [v3 _nearbyDevicesNavigationControllerDidDismiss];
}

- (_NearbyDevicesNavigationControllerDelegate)dismissObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissObserver);

  return WeakRetained;
}

@end