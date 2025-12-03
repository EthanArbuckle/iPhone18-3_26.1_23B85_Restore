@interface SUSUIRemoteEmergencyCallViewController
- (SUSUIRemoteEmergencyCallViewControllerDelegate)delegate;
- (void)dismiss;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SUSUIRemoteEmergencyCallViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  oslog = SUSUILogEmergencyCallUI();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001A74(v8, selfCopy, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, type, "View Service terminated with error: %@ -> %@", v8, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  if (WeakRetained)
  {
    [WeakRetained emergencyCallViewController:selfCopy didExitWithError:location[0]];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

- (void)dismiss
{
  selfCopy = self;
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
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  if (WeakRetained)
  {
    [WeakRetained dismissEmergencyCallViewController:selfCopy];
  }

  objc_storeStrong(&WeakRetained, 0);
}

- (SUSUIRemoteEmergencyCallViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end