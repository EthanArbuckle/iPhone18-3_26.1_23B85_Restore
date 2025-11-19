@interface SUSUIRemoteEmergencyCallViewController
- (SUSUIRemoteEmergencyCallViewControllerDelegate)delegate;
- (void)dismiss;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SUSUIRemoteEmergencyCallViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = SUSUILogEmergencyCallUI();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001A74(v8, v7, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, type, "View Service terminated with error: %@ -> %@", v8, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  WeakRetained = objc_loadWeakRetained(&v7->_delegate);
  if (WeakRetained)
  {
    [WeakRetained emergencyCallViewController:v7 didExitWithError:location[0]];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

- (void)dismiss
{
  v8 = self;
  location[1] = a2;
  location[0] = SUSUILogEmergencyCallUI();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_100001BA4(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Dismissing SUSUIRemoteEmergencyCallViewController", v5, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained(&v8->_delegate);
  if (WeakRetained)
  {
    [WeakRetained dismissEmergencyCallViewController:v8];
  }

  objc_storeStrong(&WeakRetained, 0);
}

- (SUSUIRemoteEmergencyCallViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end