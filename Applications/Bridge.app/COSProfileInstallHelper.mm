@interface COSProfileInstallHelper
- (COSProfileInstallHelper)init;
- (id)_lastActiveTraditionallyPairedDevices;
- (void)_didEnterBackground:(id)a3;
- (void)selectDeviceIfNecessaryWithCompletionBlock:(id)a3;
@end

@implementation COSProfileInstallHelper

- (COSProfileInstallHelper)init
{
  v5.receiver = self;
  v5.super_class = COSProfileInstallHelper;
  v2 = [(COSProfileInstallHelper *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

  return v2;
}

- (void)selectDeviceIfNecessaryWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[COSProfileInstallHelper selectDeviceIfNecessaryWithCompletionBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(COSProfileInstallHelper *)self _lastActiveTraditionallyPairedDevices];
  currentActiveDevice = self->_currentActiveDevice;
  self->_currentActiveDevice = v6;

  v8 = sub_10002E3D0();
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_currentActiveDevice)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v8 count];
    *buf = 136315650;
    v18 = "[COSProfileInstallHelper selectDeviceIfNecessaryWithCompletionBlock:]";
    v19 = 2114;
    v20 = v10;
    v21 = 2050;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: hasActiveDevice %{public}@; numberOfSatelliteDevices %{public}lu", buf, 0x20u);
  }

  if ([v8 count])
  {
    [(COSProfileInstallHelper *)self setCompletionBlock:v4];
    objc_initWeak(buf, self);
    v12 = [[COSProfileTargetDeviceListViewController alloc] initWithActiveDevice:self->_currentActiveDevice otherDevices:v8];
    deviceSelectorController = self->_deviceSelectorController;
    self->_deviceSelectorController = v12;

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A1110;
    v15[3] = &unk_100268260;
    objc_copyWeak(&v16, buf);
    [(COSProfileTargetDeviceListViewController *)self->_deviceSelectorController setCompletionBlock:v15];
    v14 = [[COSNavigationController alloc] initWithRootViewController:self->_deviceSelectorController];
    [(UIViewController *)self->_presentFromController presentViewController:v14 animated:1 completion:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    v4[2](v4, 1);
  }
}

- (id)_lastActiveTraditionallyPairedDevices
{
  v2 = sub_100009350();
  v3 = [v2 sortedArrayUsingComparator:&stru_10026A7C0];

  v4 = [v3 lastObject];

  return v4;
}

- (void)_didEnterBackground:(id)a3
{
  v4 = [(COSProfileInstallHelper *)self deviceSelectorController];

  if (v4)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing profile device selector because Bridge was backgrounded.", v7, 2u);
    }

    v6 = [(COSProfileInstallHelper *)self deviceSelectorController];
    [v6 dismissViewControllerAnimated:1 completion:0];

    [(COSProfileInstallHelper *)self setDeviceSelectorController:0];
    [(COSProfileInstallHelper *)self setCompletionBlock:0];
  }
}

@end