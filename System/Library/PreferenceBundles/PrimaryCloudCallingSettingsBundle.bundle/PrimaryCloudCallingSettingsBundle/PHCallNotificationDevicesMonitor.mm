@interface PHCallNotificationDevicesMonitor
+ (PHCallNotificationDevicesMonitor)sharedInstance;
- (PHCallNotificationDevicesMonitor)init;
- (void)accountDeviceListChanged:(id)changed;
- (void)getAvailableCallNotificationDevices;
@end

@implementation PHCallNotificationDevicesMonitor

+ (PHCallNotificationDevicesMonitor)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3160;
  block[3] = &unk_C578;
  block[4] = self;
  if (qword_11438 != -1)
  {
    dispatch_once(&qword_11438, block);
  }

  v2 = qword_11430;

  return v2;
}

- (PHCallNotificationDevicesMonitor)init
{
  callNotificationEligibleDevices = self->_callNotificationEligibleDevices;
  self->_callNotificationEligibleDevices = &__NSArray0__struct;

  v8.receiver = self;
  v8.super_class = PHCallNotificationDevicesMonitor;
  v4 = [(PHCallNotificationDevicesMonitor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(PHCallNotificationDevicesMonitor *)v4 getAvailableCallNotificationDevices];
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"accountDeviceListChanged:" name:AKDeviceListChangedNotification object:0];
  }

  return v5;
}

- (void)accountDeviceListChanged:(id)changed
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_32DC;
  v3[3] = &unk_C5A0;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)getAvailableCallNotificationDevices
{
  v3 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiCloudAccount = [v3 ams_activeiCloudAccount];
  aa_altDSID = [ams_activeiCloudAccount aa_altDSID];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_343C;
  v6[3] = &unk_C5C8;
  objc_copyWeak(&v7, &location);
  [TUAvailableDevicesHelper getAvailableDevicesForAccountID:aa_altDSID operatingSystem:@"tvOS" model:@"AppleTV" minimumMajorVersion:26 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end