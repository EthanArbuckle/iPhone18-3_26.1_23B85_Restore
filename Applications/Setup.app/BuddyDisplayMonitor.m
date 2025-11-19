@interface BuddyDisplayMonitor
- (BuddyDisplayMonitor)init;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)dealloc;
- (void)wakeDisplay:(id)a3;
@end

@implementation BuddyDisplayMonitor

- (BuddyDisplayMonitor)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyDisplayMonitor;
  location = [(BuddyDisplayMonitor *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[BLSBacklight sharedBacklight];
    [v2 addObserver:location];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[BLSBacklight sharedBacklight];
  [v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddyDisplayMonitor;
  [(BuddyDisplayMonitor *)&v3 dealloc];
}

- (void)wakeDisplay:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  v4 = +[BLSBacklight sharedBacklight];
  v5 = [v4 backlightState];

  if (v5 == 2)
  {
    if (location[0])
    {
      (*(location[0] + 2))();
    }
  }

  else
  {
    oslog = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v14;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Waking the screen...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyDisplayMonitor *)v17 setCompletionBlock:location[0]];
    v12 = @"post-migration/restore wake for reboot";
    v11 = [[BLSBacklightChangeRequest alloc] initWithRequestedActivityState:1 explanation:v12 timestamp:mach_continuous_time() sourceEvent:10 sourceEventMetadata:0];
    v8 = +[BLSBacklight sharedBacklight];
    v10 = [v8 performChangeRequest:v11];

    if (v10)
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(v18, v10);
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to wake the screen: %{public}@", v18, 0xCu);
      }

      objc_storeStrong(&v9, 0);
      if (location[0])
      {
        (*(location[0] + 2))();
      }
    }

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v7 = [(BuddyDisplayMonitor *)v12 completionBlock];
  LOBYTE(a5) = v7 == 0;

  if ((a5 & 1) == 0 && v10 == 2)
  {
    v8 = [(BuddyDisplayMonitor *)v12 completionBlock];
    v8[2](v8);

    [(BuddyDisplayMonitor *)v12 setCompletionBlock:0];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end