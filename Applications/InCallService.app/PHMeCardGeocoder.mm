@interface PHMeCardGeocoder
- (BOOL)_isNetworkAvailable;
- (BOOL)_unschedulePerformGeocodesWakeTaskIfEarlierThan:(id)than;
- (BOOL)isActivelyUsing;
- (NSArray)currentValidLocations;
- (PHMeCardGeocoder)initWithCall:(id)call;
- (id)_dateOfOldestAddress;
- (void)_doWork;
- (void)_networkPreferencesLoaded;
- (void)_rebuildAddressArray;
- (void)_saveGeoCache;
- (void)_scheduleLongTermRebuild;
- (void)_scheduleNextGeocode;
- (void)_schedulePerformGeocodesTaskWithStartWakeTime:(id)time dropDeadDelay:(int64_t)delay;
- (void)dealloc;
- (void)handleCNContactStoreDidChangeNotification:(id)notification;
- (void)scheduleImmediateGeocode;
- (void)scheduleNextGeocode;
- (void)setActivelyUsing:(BOOL)using;
@end

@implementation PHMeCardGeocoder

- (PHMeCardGeocoder)initWithCall:(id)call
{
  callCopy = call;
  if ((+[EKAlarm areLocationsAvailable]& 1) != 0)
  {
    v30.receiver = self;
    v30.super_class = PHMeCardGeocoder;
    v5 = [(PHMeCardGeocoder *)&v30 init];
    if (!v5)
    {
LABEL_15:
      self = v5;
      selfCopy = self;
      goto LABEL_16;
    }

    v6 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:callCopy];
    v7 = [[CNContactStore alloc] initWithConfiguration:v6];
    contactStore = v5->_contactStore;
    v5->_contactStore = v7;

    v9 = dispatch_queue_create("MPTelephonyManager.MeCardCacheQueue", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v9;

    v11 = [[NSData alloc] initWithContentsOfFile:@"/var/mobile/Library/Phone/MeCard.geocache"];
    if (!v11)
    {
LABEL_14:
      v24 = +[NSNotificationCenter defaultCenter];
      [v24 addObserver:v5 selector:"handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
      objc_initWeak(buf, v5);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B51F4;
      block[3] = &unk_100356FB0;
      objc_copyWeak(&v28, buf);
      v27 = v5;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);

      goto LABEL_15;
    }

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v29 = 0;
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v11 error:&v29];
    v15 = v29;
    addresses = v5->_addresses;
    v5->_addresses = v14;

    v17 = v5->_addresses;
    v18 = sub_100004F84();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = v5->_addresses;
        *buf = 138412290;
        v32 = v20;
        v21 = "Unarchived addresses: %@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }
    }

    else if (v19)
    {
      *buf = 138412290;
      v32 = v15;
      v21 = "[WARN] Error unarchiving addresses: %@";
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v22 = sub_100004F84();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Device type doesn't allow location-based reminders, so +[PHMeCardGeocoder sharedMeCardGeocoder] will return nil", buf, 2u);
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (void)_networkPreferencesLoaded
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5454;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [(PCPersistentTimer *)self->_networkPreferencesTimeoutTimer invalidate];
  [(PHMeCardGeocoder *)self _unschedulePerformGeocodesWakeTaskIfEarlierThan:0];
  [(PHMeCardGeocoder *)self _unscheduleLongTermRebuild];
  workQueue = self->_workQueue;
  if (workQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5650;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_sync(workQueue, block);
  }

  v6.receiver = self;
  v6.super_class = PHMeCardGeocoder;
  [(PHMeCardGeocoder *)&v6 dealloc];
}

- (BOOL)_isNetworkAvailable
{
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
  if (v2)
  {
    v3 = v2;
    flags = 0;
    if (SCNetworkReachabilityGetFlags(v2, &flags))
    {
      v4 = sub_100004F84();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v9 = flags;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reachability flags: %d", buf, 8u);
      }

      v5 = (flags >> 1) & 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    CFRelease(v3);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)scheduleImmediateGeocode
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "-scheduleImmediateGeocode", buf, 2u);
  }

  _isNetworkAvailable = [(PHMeCardGeocoder *)self _isNetworkAvailable];
  v5 = sub_100004F84();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (_isNetworkAvailable)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network is available...doing work", buf, 2u);
    }

    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5998;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network is not available, deferring work until it is...", buf, 2u);
    }

    [(PHMeCardGeocoder *)self scheduleNextGeocode];
  }
}

- (void)scheduleNextGeocode
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "-scheduleNextGeocode", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5A60;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_saveGeoCache
{
  v3 = +[NSFileManager defaultManager];
  [v3 makeDirectoriesInPath:@"/var/mobile/Library/Phone/" mode:509];

  addresses = self->_addresses;
  v8 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:addresses requiringSecureCoding:1 error:&v8];
  v6 = v8;
  if (v5)
  {
    [v5 writeToFile:@"/var/mobile/Library/Phone/MeCard.geocache" atomically:1];
  }

  else
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100256120(v6, v7);
    }
  }
}

- (void)_doWork
{
  if (![(PHMeCardGeocoder *)self _isNetworkAvailable])
  {
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No network was availble.  Scheduling wake timer.", buf, 2u);
    }

LABEL_22:
    [(PHMeCardGeocoder *)self _scheduleNextGeocode];
    goto LABEL_24;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_addresses;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v4)
  {

    goto LABEL_24;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v19;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      if ([v9 state] == 2 || (objc_msgSend(v9, "nextGeocodeAttempt"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceNow"), v12 = v11, v10, v12 > 0.0))
      {
        v13 = sub_100004F84();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deferring geocode...", buf, 2u);
        }

        v6 = 1;
      }

      else
      {
        v14 = sub_100004F84();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting geocode...", buf, 2u);
        }

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000B5DD0;
        v16[3] = &unk_100358C48;
        v16[4] = self;
        [v9 attemptGeocodeWithCompletionBlock:v16];
      }
    }

    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v5);

  if (v6)
  {
    goto LABEL_22;
  }

LABEL_24:
  [(PHMeCardGeocoder *)self _saveGeoCache];
}

- (BOOL)_unschedulePerformGeocodesWakeTaskIfEarlierThan:(id)than
{
  thanCopy = than;
  lastScheduledTime = [(PHMeCardGeocoder *)self lastScheduledTime];

  if (!lastScheduledTime)
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No existing job, so nothing to unschedule", &v15, 2u);
    }

    goto LABEL_12;
  }

  if (!thanCopy)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unscheduling previous job since nil date was passed in", &v15, 2u);
    }

    goto LABEL_11;
  }

  lastScheduledTime2 = [(PHMeCardGeocoder *)self lastScheduledTime];
  v7 = [lastScheduledTime2 compare:thanCopy];

  v8 = sub_100004F84();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      lastScheduledTime3 = [(PHMeCardGeocoder *)self lastScheduledTime];
      v15 = 138412546;
      v16 = lastScheduledTime3;
      v17 = 2112;
      v18 = thanCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unscheduling previous job with date %@ since we need to fire at %@ which is earlier", &v15, 0x16u);
    }

LABEL_11:

    xpc_activity_unregister("com.apple.MobilePhone.PHMeCardGeocoder.WakeAndDoWork");
LABEL_12:
    [(PHMeCardGeocoder *)self setLastScheduledTime:0];
    v12 = 1;
    goto LABEL_13;
  }

  if (v9)
  {
    lastScheduledTime4 = [(PHMeCardGeocoder *)self lastScheduledTime];
    v15 = 138412546;
    v16 = lastScheduledTime4;
    v17 = 2112;
    v18 = thanCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Won't unschedule previous job with date %@ since we need to fire at %@ which is later", &v15, 0x16u);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)_schedulePerformGeocodesTaskWithStartWakeTime:(id)time dropDeadDelay:(int64_t)delay
{
  timeCopy = time;
  [(PHMeCardGeocoder *)self setLastScheduledTime:timeCopy];
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  [timeCopy timeIntervalSinceNow];
  v9 = v8;

  xpc_dictionary_set_int64(v7, XPC_ACTIVITY_DELAY, v9);
  xpc_dictionary_set_int64(v7, XPC_ACTIVITY_GRACE_PERIOD, delay);
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "com.apple.MobilePhone.PHMeCardGeocoder.WakeAndDoWork";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Got background task agent callback for job: %s", buf, 0xCu);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B62F4;
  handler[3] = &unk_100358C70;
  handler[4] = self;
  xpc_activity_register("com.apple.MobilePhone.PHMeCardGeocoder.WakeAndDoWork", v7, handler);
}

- (void)_scheduleNextGeocode
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_addresses;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (!v4)
  {

LABEL_22:
    [(PHMeCardGeocoder *)self _unschedulePerformGeocodesWakeTaskIfEarlierThan:0, v23];
    v7 = 0;
    goto LABEL_32;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v24;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v23 + 1) + 8 * i);
      checkGeocodeAfterDateForSanity = [v10 checkGeocodeAfterDateForSanity];
      nextGeocodeAttempt = [v10 nextGeocodeAttempt];
      v13 = nextGeocodeAttempt;
      if (nextGeocodeAttempt)
      {
        if (v7)
        {
          v14 = [v7 earlierDate:nextGeocodeAttempt];

          v7 = v14;
        }

        else
        {
          v7 = nextGeocodeAttempt;
        }
      }

      v6 |= checkGeocodeAfterDateForSanity;
    }

    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  }

  while (v5);

  if (v6)
  {
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updated geocode-after date on one or more addresses, saving", buf, 2u);
    }

    [(PHMeCardGeocoder *)self _saveGeoCache];
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  v16 = sub_100004F84();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [v7 timeIntervalSinceNow];
    *buf = 138412546;
    v28 = v7;
    v29 = 2048;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Next wake time %@ has time interval since now: %f", buf, 0x16u);
  }

  [v7 timeIntervalSinceNow];
  if (v18 <= 3600.0)
  {
    [v7 timeIntervalSinceNow];
    if (v20 <= 0.0)
    {
      if ([(PHMeCardGeocoder *)self _isNetworkAvailable])
      {
        v21 = +[NSDate date];

        v19 = 1800;
        v7 = v21;
      }

      else
      {
        v19 = 21600;
      }
    }

    else
    {
      v19 = 300;
    }
  }

  else
  {
    v19 = 3600;
  }

  v22 = sub_100004F84();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v7;
    v29 = 2048;
    v30 = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Scheduling next wake time between %@ and %lld seconds laster", buf, 0x16u);
  }

  if ([(PHMeCardGeocoder *)self _unschedulePerformGeocodesWakeTaskIfEarlierThan:v7])
  {
    [(PHMeCardGeocoder *)self _schedulePerformGeocodesTaskWithStartWakeTime:v7 dropDeadDelay:v19];
  }

LABEL_32:
}

- (id)_dateOfOldestAddress
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_addresses;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {

LABEL_14:
    v5 = +[NSDate date];
    goto LABEL_15;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v13;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v2);
      }

      lastGeocodeAttempt = [*(*(&v12 + 1) + 8 * i) lastGeocodeAttempt];
      v9 = lastGeocodeAttempt;
      if (v5)
      {
        v10 = [lastGeocodeAttempt earlierDate:v5];

        v5 = v10;
      }

      else
      {
        v5 = lastGeocodeAttempt;
      }
    }

    v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v4);

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (void)_scheduleLongTermRebuild
{
  [(PHMeCardGeocoder *)self _unscheduleLongTermRebuild];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  _dateOfOldestAddress = [(PHMeCardGeocoder *)self _dateOfOldestAddress];
  v5 = [_dateOfOldestAddress dateByAddingTimeInterval:2592000.0];

  v6 = +[NSDate date];
  if ([v5 compare:v6] == -1)
  {
    v7 = [v6 dateByAddingTimeInterval:86400.0];

    v5 = v7;
  }

  [v5 timeIntervalSinceNow];
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v8);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 147600);
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scheduling a wake-and-rebuild for at %@ with a one day grace period", buf, 0xCu);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B6A3C;
  handler[3] = &unk_100358C70;
  handler[4] = self;
  xpc_activity_register("com.apple.MobilePhone.PHMeCardGeocoder.RebuildEverything", v3, handler);
}

- (void)_rebuildAddressArray
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Rebuilding me card cache...", buf, 2u);
  }

  if (!self->_addresses)
  {
    v4 = objc_alloc_init(NSMutableArray);
    addresses = self->_addresses;
    self->_addresses = v4;
  }

  v41 = [[NSMutableArray alloc] initWithArray:self->_addresses];
  contactStore = [(PHMeCardGeocoder *)self contactStore];
  v7 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v66[0] = v7;
  v66[1] = CNContactPostalAddressesKey;
  v66[2] = CNContactTypeKey;
  v8 = [NSArray arrayWithObjects:v66 count:3];
  v60 = 0;
  v9 = [contactStore _ios_meContactWithKeysToFetch:v8 error:&v60];
  v10 = v60;

  obj = sub_100004F84();
  v11 = os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT);
  v12 = "ontroller";
  v43 = v9;
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v65 = v9;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "Found Me contact card %@.", buf, 0xCu);
    }

    [(_PHMeCardGeocoderAddress *)v9 postalAddresses];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v59 = 0u;
    v46 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v46)
    {
      v40 = v10;
      v45 = *v57;
      selfCopy = self;
      do
      {
        v13 = 0;
        do
        {
          if (*v57 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v56 + 1) + 8 * v13);
          v15 = sub_100004F84();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Considering postal address labeled value %@.", buf, 0xCu);
          }

          label = [(_PHMeCardGeocoderAddress *)v14 label];
          if (([label isEqualToString:CNLabelHome] & 1) != 0 || objc_msgSend(label, "isEqualToString:", CNLabelWork))
          {
            v47 = label;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v17 = self->_addresses;
            v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v53;
LABEL_19:
              v21 = 0;
              while (1)
              {
                if (*v53 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v52 + 1) + 8 * v21);
                labeledValue = [(_PHMeCardGeocoderAddress *)v22 labeledValue];
                value = [labeledValue value];

                value2 = [(_PHMeCardGeocoderAddress *)v14 value];
                v26 = [value isEqual:value2];

                if (v26)
                {
                  break;
                }

                if (v19 == ++v21)
                {
                  v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
                  if (v19)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_30;
                }
              }

              if ([(_PHMeCardGeocoderAddress *)v22 expired])
              {
                v27 = sub_100004F84();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v65 = v22;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Existing address is expired, ignoring: %@", buf, 0xCu);
                }

                goto LABEL_30;
              }

              v28 = v22;

              if (!v28)
              {
                goto LABEL_31;
              }

              v31 = sub_100004F84();
              label = v47;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v65 = v28;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found existing address, repurposing: %@", buf, 0xCu);
              }

              [(_PHMeCardGeocoderAddress *)v41 removeObject:v28];
              self = selfCopy;
            }

            else
            {
LABEL_30:

LABEL_31:
              label = v47;
              v28 = EKUILabeledDisplayStringForContact();
              v29 = [[_PHMeCardGeocoderAddress alloc] initWithLabeledValue:v14 entityID:v28];
              v30 = sub_100004F84();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v65 = v29;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Totally new address encountered, adding: %@", buf, 0xCu);
              }

              self = selfCopy;
              [(NSMutableArray *)selfCopy->_addresses addObject:v29];
            }
          }

          v13 = v13 + 1;
        }

        while (v13 != v46);
        v32 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
        v46 = v32;
      }

      while (v32);
      v10 = v40;
      v12 = "@PHPIPController" + 8;
    }
  }

  else if (v11)
  {
    contactStore2 = [(PHMeCardGeocoder *)self contactStore];
    *buf = 138412290;
    v65 = contactStore2;
    _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "Could not retrieve a Me card using contact store %@.", buf, 0xCu);
  }

  v34 = sub_100004F84();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v12 + 441);
    v65 = v41;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Removing unused addresses: %@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_addresses removeObjectsInArray:v41];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v35 = v41;
  v36 = [(_PHMeCardGeocoderAddress *)v35 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v49;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [*(*(&v48 + 1) + 8 * i) cancelGeocode];
      }

      v37 = [(_PHMeCardGeocoderAddress *)v35 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v37);
  }

  [(PHMeCardGeocoder *)self _doWork];
  [(PHMeCardGeocoder *)self _scheduleLongTermRebuild];
}

- (NSArray)currentValidLocations
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_addresses;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        locationDictionary = [*(*(&v12 + 1) + 8 * i) locationDictionary];
        if (locationDictionary)
        {
          [v3 addObject:locationDictionary];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [NSArray arrayWithArray:v3];

  return v10;
}

- (BOOL)isActivelyUsing
{
  v2 = +[_PHMeCardGeocoderPreferences sharedPreferences];
  isActivelyUsing = [v2 isActivelyUsing];

  return isActivelyUsing;
}

- (void)setActivelyUsing:(BOOL)using
{
  usingCopy = using;
  if ([(PHMeCardGeocoder *)self isActivelyUsing]!= using)
  {
    v5 = +[_PHMeCardGeocoderPreferences sharedPreferences];
    [v5 setActivelyUsing:usingCopy];

    if (usingCopy)
    {
      v6 = sub_100004F84();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Since we're actively using geocoder, scheduling quicker start times for geocoding", buf, 2u);
      }

      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B7438;
      block[3] = &unk_100356988;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }
}

- (void)handleCNContactStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  workQueue = [(PHMeCardGeocoder *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B773C;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(workQueue, block);
}

@end