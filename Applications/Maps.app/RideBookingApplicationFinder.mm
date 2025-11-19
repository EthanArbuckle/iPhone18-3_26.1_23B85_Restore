@interface RideBookingApplicationFinder
- (RideBookingApplicationFinder)init;
- (RideBookingApplicationFinderDelegate)delegate;
- (void)_setupExtensionManager;
- (void)dealloc;
- (void)didChangeProtectionStatusForBundleId:(id)a3;
- (void)extensionManager:(id)a3 didFailWithError:(id)a4;
- (void)extensionManager:(id)a3 didUpdateAvailableExtensions:(id)a4;
@end

@implementation RideBookingApplicationFinder

- (RideBookingApplicationFinder)init
{
  v10.receiver = self;
  v10.super_class = RideBookingApplicationFinder;
  v2 = [(RideBookingApplicationFinder *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("RideBookingApplicationFinderQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    [(RideBookingApplicationFinder *)v2 _setupExtensionManager];
    v6 = MapsSuggestionsResourceDepotForMapsProcess();
    v7 = [v6 oneAppGuardian];
    appGuardian = v2->_appGuardian;
    v2->_appGuardian = v7;
  }

  return v2;
}

- (void)_setupExtensionManager
{
  v5 = [_MXExtensionManager _lookupPolicyWithBlock:&stru_101656580];
  self->_waitingForExtensionManagerToLoad = 1;
  v3 = [_MXExtensionManager managerWithLookupPolicy:v5 delegate:self];
  extensionManager = self->_extensionManager;
  self->_extensionManager = v3;
}

- (RideBookingApplicationFinderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(MapsSuggestionsAppGuardian *)self->_appGuardian unregisterAppTracker:self];
  v3.receiver = self;
  v3.super_class = RideBookingApplicationFinder;
  [(RideBookingApplicationFinder *)&v3 dealloc];
}

- (void)didChangeProtectionStatusForBundleId:(id)a3
{
  extensionManager = self->_extensionManager;
  self->_extensionManager = 0;

  [(RideBookingApplicationFinder *)self _setupExtensionManager];
}

- (void)extensionManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E6210C;
  v8[3] = &unk_101661A90;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)extensionManager:(id)a3 didUpdateAvailableExtensions:(id)a4
{
  v5 = a4;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplicationFinder.m");
    v8 = [[NSString alloc] initWithFormat:@"Updated extensions: %@", v5];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  v9 = [(RideBookingApplicationFinder *)self delegate];
  if (v9)
  {
    v10 = v9;
    v11 = [(RideBookingApplicationFinder *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100E623D4;
      block[3] = &unk_101661A90;
      block[4] = self;
      v15 = v5;
      dispatch_async(queue, block);
    }
  }
}

@end