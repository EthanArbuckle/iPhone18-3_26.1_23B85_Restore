@interface FBADevicePickingNavigationController
- (id)initForPlatform:(id)platform completion:(id)completion;
- (void)deviceChoicesController:(id)controller didChooseDevices:(id)devices;
- (void)deviceChoicesControllerDidCancelWithController:(id)controller;
- (void)pairedDevicesDidChangeWithAddedDevice:(id)device removed:(id)removed;
- (void)pairingViewDidCancel;
- (void)pairingViewDidClose;
@end

@implementation FBADevicePickingNavigationController

- (id)initForPlatform:(id)platform completion:(id)completion
{
  completionCopy = completion;
  platformCopy = platform;
  v8 = +[UIStoryboard fbaMainStoryboard];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 instantiateViewControllerWithIdentifier:v10];

  [v11 setContext:4];
  [v11 setFilterPlatform:platformCopy];

  [v11 setDelegate:self];
  v15.receiver = self;
  v15.super_class = FBADevicePickingNavigationController;
  v12 = [(FBADevicePickingNavigationController *)&v15 initWithRootViewController:v11];
  v13 = v12;
  if (v12)
  {
    [(FBADevicePickingNavigationController *)v12 setCompletion:completionCopy];
  }

  return v13;
}

- (void)pairedDevicesDidChangeWithAddedDevice:(id)device removed:(id)removed
{
  deviceCopy = device;
  removedCopy = removed;
  if (deviceCopy)
  {
    v8 = +[FBALog ded];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [deviceCopy description];
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "device picker paired new device [%{public}@]", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000324E8;
    v13[3] = &unk_1000DE4D0;
    v13[4] = self;
    v14 = deviceCopy;
    [(FBADevicePickingNavigationController *)self dismissViewControllerAnimated:1 completion:v13];
  }

  else
  {
    v10 = +[FBALog ded];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (removedCopy)
    {
      if (v11)
      {
        v12 = [removedCopy description];
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "removed device [%{public}@] while being asked to pair with new one, noop", buf, 0xCu);
      }
    }

    else if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "how did we get here?", buf, 2u);
    }
  }
}

- (void)pairingViewDidClose
{
  v2 = +[FBALog ded];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100093FCC(v2);
  }
}

- (void)pairingViewDidCancel
{
  v3 = +[FBALog ded];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "device picker paired no device", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000326A4;
  v4[3] = &unk_1000DE430;
  v4[4] = self;
  [(FBADevicePickingNavigationController *)self dismissViewControllerAnimated:1 completion:v4];
}

- (void)deviceChoicesController:(id)controller didChooseDevices:(id)devices
{
  devicesCopy = devices;
  v6 = +[FBALog ded];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [devicesCopy valueForKeyPath:@"publicLogDescription"];
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device picker chose devices [%{public}@]", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100032888;
  v9[3] = &unk_1000DE4D0;
  v9[4] = self;
  v10 = devicesCopy;
  v8 = devicesCopy;
  [(FBADevicePickingNavigationController *)self dismissViewControllerAnimated:1 completion:v9];
}

- (void)deviceChoicesControllerDidCancelWithController:(id)controller
{
  v4 = +[FBALog ded];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "device picker chose no device", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032A08;
  v5[3] = &unk_1000DE430;
  v5[4] = self;
  [(FBADevicePickingNavigationController *)self dismissViewControllerAnimated:1 completion:v5];
}

@end