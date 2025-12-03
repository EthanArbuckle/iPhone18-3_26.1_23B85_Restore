@interface STStorageController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)specifiers;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)_updateApps:(id)apps;
- (void)completionHandlerAction:(id)action;
- (void)confirmDeleteApp:(id)app completionHandler:(id)handler;
- (void)confirmDemoteApp:(id)app completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteAppAfterConfirmation:(id)confirmation;
- (void)demoteAppAfterConfirmation:(id)confirmation;
- (void)logSplunkData;
- (void)reloadSpecifiers;
- (void)reloadTips:(id)tips;
- (void)removeSpecifier:(id)specifier;
- (void)resumeApp:(id)app;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)showAllPressed;
- (void)showFilterView;
- (void)startMonitor;
- (void)stopMonitor;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)updateApps:(id)apps;
- (void)updateCategories:(id)categories;
- (void)updateMedia:(id)media;
- (void)updateOtherDataSize;
- (void)updateShowAllButton;
- (void)updateTips:(id)tips;
- (void)viewDidLoad;
- (void)whackObsoletePrefs;
@end

@implementation STStorageController

- (void)whackObsoletePrefs
{
  v2 = CFPreferencesCopyValue(@"CacheVersion", @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v2 integerValue] != &dword_4 + 1)
  {
    v10 = CFPreferencesCopyMultiple(0, @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    allKeys = [(__CFDictionary *)v10 allKeys];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (([(__CFString *)v8 isEqualToString:@"StatsTime"]& 1) == 0)
          {
            CFPreferencesSetValue(v8, 0, @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
          }
        }

        v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = [NSNumber numberWithInt:5];
    CFPreferencesSetValue(@"CacheVersion", v9, @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  }
}

- (void)viewDidLoad
{
  qword_39FF0 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = +[STStorageAnalytics sharedInstance];
  [v3 trackDisplayStart];

  v4 = objc_alloc_init(PSCapacityBarData);
  barData = self->_barData;
  self->_barData = v4;

  [(STStorageController *)self whackObsoletePrefs];
  v6 = +[STStorageCacheDelete sharedMonitor];
  v7 = +[NSCalendar currentCalendar];
  v8 = +[NSDate date];
  v9 = [v7 startOfDayForDate:v8];
  [v9 timeIntervalSinceReferenceDate];
  v11 = rint(v10);

  v12 = CFPreferencesCopyValue(@"StatsTime", @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v13 = [v12 longLongValue] > v11;
  self->_splunkUpdateUploaded = v13;
  self->_splunkUploaded = v13;
  v27.receiver = self;
  v27.super_class = STStorageController;
  [(STStorageController *)&v27 viewDidLoad];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);
  v16 = dispatch_queue_create("com.apple.storage.queue.storagecontroller", v15);
  qUpdate = self->_qUpdate;
  self->_qUpdate = v16;

  v18 = [UIBarButtonItem alloc];
  v19 = STStorageLocStr(@"BACK_BUTTON");
  v20 = [v18 initWithTitle:v19 style:0 target:0 action:0];
  navigationItem = [(STStorageController *)self navigationItem];
  [navigationItem setBackBarButtonItem:v20];

  v22 = [UIImage systemImageNamed:@"magnifyingglass"];
  v23 = [[UIBarButtonItem alloc] initWithImage:v22 style:0 target:self action:"showFilterView"];
  [v23 setEnabled:0];
  [v23 setAccessibilityIdentifier:@"AppSearch"];
  navigationItem2 = [(STStorageController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v23];

  v25 = +[STStoragePluginManager sharedManager];
  [v25 setShowAllTips:0];
  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"resumeApp:" name:@"com.apple.PreferencesApp.willBecomeActive" object:0];
  [v26 addObserver:self selector:"suspendApp:" name:@"com.apple.PreferencesApp.willResignActive" object:0];
  [v26 addObserver:self selector:"dayChanged:" name:NSCalendarDayChangedNotification object:0];
}

- (void)reloadSpecifiers
{
  if ([(STStorageController *)self cellIsSwiped])
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];

    [(STStorageController *)self performSelector:a2 withObject:0 afterDelay:0.5];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = STStorageController;
    [(STStorageController *)&v4 reloadSpecifiers];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.PreferencesApp.willBecomeActive" object:0];
  [v3 removeObserver:self name:@"com.apple.PreferencesApp.willResignActive" object:0];
  [v3 removeObserver:self name:NSCalendarDayChangedNotification object:0];

  v4.receiver = self;
  v4.super_class = STStorageController;
  [(STStorageController *)&v4 dealloc];
}

- (void)updateOtherDataSize
{
  categories = [(PSCapacityBarData *)self->_barData categories];
  if ([categories count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v4 = categories;
    v5 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v40;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 += [*(*(&v39 + 1) + 8 * i) bytes];
        }

        v6 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v11 = +[STStorageDiskMonitor sharedMonitor];
    storageSpace = [v11 storageSpace];

    totalBytes = [storageSpace totalBytes];
    v10 = totalBytes - ([storageSpace availableBytes] + v7);
    STLog();
    [storageSpace totalBytes];
    v14 = STFormattedSize();
    [storageSpace usedBytes];
    v15 = STFormattedSize();
    [storageSpace availableBytes];
    v16 = STFormattedSize();
    [storageSpace purgeableBytes];
    v34 = STFormattedSize();
    STLog();

    [storageSpace totalBytes];
    STLogSize();
    [storageSpace usedBytes];
    STLogSize();
    [storageSpace availableBytes];
    STLogSize();
    [storageSpace purgeableBytes];
    STLogSize();
    STLog();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v4;
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v35 + 1) + 8 * j);
          [v22 bytes];
          title = [v22 title];
          STTokenLogSize();
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v19);
    }

    STTokenLogSize();
    if (v10 < 0 && !STStorageIsInternalInstall())
    {
      v10 = 0;
    }

    v24 = CFPreferencesCopyValue(@"LogAppSizes", @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    if (([v24 BOOLValue] & 1) != 0 || v10 > 10000000000 || !v10)
    {
      v25 = +[STStorageAppsMonitor sharedMonitor];
      [v25 logAppSizes];
    }
  }

  else
  {
    v10 = 0;
  }

  if (self->_otherSize != v10)
  {
    self->_otherSize = v10;
    v26 = +[STStorageMediaMonitor sharedMonitor];
    isAsynchronouslyLoaded = [v26 isAsynchronouslyLoaded];

    if (isAsynchronouslyLoaded)
    {
      otherSpec = self->_otherSpec;
      v29 = [NSNumber numberWithLongLong:self->_otherSize];
      [(PSSpecifier *)otherSpec setProperty:v29 forKey:PSValueKey];
    }

    if (STStorageIsInternalInstall())
    {
      v30 = +[NSNotificationCenter defaultCenter];
      v31 = STStorageOtherDataSizeChangedNotification;
      v43 = STStorageOtherDataSizeKey;
      v32 = [NSNumber numberWithLongLong:v10];
      v44 = v32;
      v33 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      [v30 postNotificationName:v31 object:0 userInfo:v33];
    }
  }
}

- (void)updateCategories:(id)categories
{
  v43 = +[STStorageDiskMonitor sharedMonitor];
  storageSpace = [v43 storageSpace];
  v4 = +[STStorageAppsMonitor sharedMonitor];
  categorySizes = [v4 categorySizes];
  dictionary = [categorySizes dictionary];

  v44 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictionary count]);
  v42 = +[UIColor systemRedColor];
  v53[0] = v42;
  v41 = +[UIColor systemOrangeColor];
  v53[1] = v41;
  v6 = +[UIColor systemYellowColor];
  v53[2] = v6;
  v7 = +[UIColor systemGreenColor];
  v53[3] = v7;
  v8 = +[UIColor systemMintColor];
  v53[4] = v8;
  v9 = +[UIColor systemTealColor];
  v53[5] = v9;
  v10 = +[UIColor systemCyanColor];
  v53[6] = v10;
  v11 = +[UIColor systemBlueColor];
  v53[7] = v11;
  v12 = +[UIColor systemIndigoColor];
  v53[8] = v12;
  v13 = +[UIColor systemPurpleColor];
  v53[9] = v13;
  v14 = +[UIColor systemPinkColor];
  v53[10] = v14;
  v40 = [NSArray arrayWithObjects:v53 count:11];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_7A04;
  v51[3] = &unk_2CC58;
  v15 = v44;
  v52 = v15;
  [dictionary enumerateKeysAndObjectsUsingBlock:v51];
  [v15 sortUsingComparator:&stru_2CC98];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_7BA0;
  v49[3] = &unk_2CCC0;
  v16 = v40;
  v50 = v16;
  [v15 enumerateObjectsUsingBlock:v49];
  deviceSize = [v43 deviceSize];
  usedBytes = [storageSpace usedBytes];
  if (usedBytes >= deviceSize)
  {
    v19 = deviceSize;
  }

  else
  {
    v19 = usedBytes;
  }

  if (usedBytes >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [(PSCapacityBarData *)self->_barData setCapacity:deviceSize, v40];
  [(PSCapacityBarData *)self->_barData setBytesUsed:v20];
  [(PSCapacityBarData *)self->_barData setCategories:v15];
  [(PSSpecifier *)self->_diskSpec setProperty:self->_barData forKey:PSCapacityBarDataKey];
  v21 = +[STStorageMediaMonitor sharedMonitor];
  isAsynchronouslyLoaded = [v21 isAsynchronouslyLoaded];

  diskSpec = self->_diskSpec;
  if (isAsynchronouslyLoaded)
  {
    v24 = STStorageLocStr(@"OTHER");
    [(PSSpecifier *)diskSpec setProperty:v24 forKey:PSCapacityBarOtherDataLegendTextKey];

    otherSpec = self->_otherSpec;
    v26 = STStorageLocStr(@"OTHER");
    [(PSSpecifier *)otherSpec setProperty:v26 forKey:PSTitleKey];

    v27 = self->_otherSpec;
    v28 = [NSNumber numberWithBool:1];
    [(PSSpecifier *)v27 setProperty:v28 forKey:PSEnabledKey];

    v29 = +[STStorageAnalytics sharedInstance];
    [v29 trackDisplayEnd];

    v30 = +[STStorageAnalytics sharedInstance];
    barData = self->_barData;
    otherSize = self->_otherSize;
    apps = [(STStorageAppsController *)self->_appsController apps];
    [v30 sendAnalyticsEventLaunchWithBarData:barData otherSize:otherSize andAppsCount:{objc_msgSend(apps, "count")}];
  }

  else
  {
    v34 = STStorageLocStr(@"CALCULATING");
    [(PSSpecifier *)diskSpec setProperty:v34 forKey:PSCapacityBarOtherDataLegendTextKey];

    [(PSSpecifier *)self->_otherSpec setProperty:&off_2FEE0 forKey:PSValueKey];
    v35 = self->_otherSpec;
    v30 = [NSNumber numberWithBool:0];
    [(PSSpecifier *)v35 setProperty:v30 forKey:PSEnabledKey];
  }

  v36 = [v15 count];
  v37 = self->_diskSpec;
  if (v36)
  {
    [(PSSpecifier *)self->_diskSpec removePropertyForKey:@"psCapBarForceLoading"];
    [(PSSpecifier *)self->_diskSpec setProperty:&stru_2D2D0 forKey:PSCapacityBarLoadingKey];
  }

  else
  {
    v38 = [NSNumber numberWithBool:1];
    [(PSSpecifier *)v37 setProperty:v38 forKey:@"psCapBarForceLoading"];
  }

  [(STStorageController *)self updateOtherDataSize];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7C3C;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  if (!self->_splunkUploaded || !self->_splunkUpdateUploaded)
  {
    v39 = dispatch_get_global_queue(17, 0);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_7CAC;
    v47[3] = &unk_2CAA0;
    v47[4] = self;
    dispatch_async(v39, v47);
  }
}

- (void)logSplunkData
{
  os_unfair_lock_lock(&self->_splunkLock);
  if (__PAIR64__(self->_splunkUpdateUploaded, self->_splunkUploaded) != 0x100000001)
  {
    v3 = [NSMutableDictionary dictionaryWithCapacity:20];
    v122 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    v4 = [v122 objectForKeyedSubscript:@"ProductBuildVersion"];
    [v3 setObject:v4 forKeyedSubscript:@"buildVersion"];

    if (STStorageIsInternalInstall())
    {
      v5 = @"Internal";
    }

    else
    {
      v5 = @"Release";
    }

    [v3 setObject:v5 forKeyedSubscript:@"buildVariant"];
    v128 = v3;
    [v3 setObject:MGGetStringAnswer() forKeyedSubscript:@"deviceType"];
    v6 = +[STStorageDiskMonitor sharedMonitor];
    storageSpace = [v6 storageSpace];

    totalBytes = [storageSpace totalBytes];
    v9 = (totalBytes + 500) / 1000;
    v10 = 1000;
    if (totalBytes > 1000499)
    {
      v11 = (totalBytes + 500) / 1000;
      do
      {
        v9 = (v11 + 5) / 0xA;
        v10 *= 10;
        v12 = v11 > 0x2714;
        v11 = v9;
      }

      while (v12);
    }

    v13 = [NSNumber numberWithLongLong:v10 * v9];
    [v3 setObject:v13 forKeyedSubscript:@"deviceSize"];

    availableBytes = [storageSpace availableBytes];
    v15 = (availableBytes + 500) / 1000;
    if (availableBytes <= 1000499)
    {
      v16 = 1000;
    }

    else
    {
      v16 = 1000;
      v17 = (availableBytes + 500) / 1000;
      do
      {
        v15 = (v17 + 5) / 0xA;
        v16 *= 10;
        v12 = v17 > 0x2714;
        v17 = v15;
      }

      while (v12);
    }

    v18 = [NSNumber numberWithLongLong:v16 * v15];
    [v3 setObject:v18 forKeyedSubscript:@"availableSpace"];

    purgeableBytes = [storageSpace purgeableBytes];
    v20 = (purgeableBytes + 500) / 1000;
    v21 = 1000;
    if (purgeableBytes > 1000499)
    {
      v22 = (purgeableBytes + 500) / 1000;
      do
      {
        v20 = (v22 + 5) / 0xA;
        v21 *= 10;
        v12 = v22 > 0x2714;
        v22 = v20;
      }

      while (v12);
    }

    v23 = [NSNumber numberWithLongLong:v21 * v20];
    [v3 setObject:v23 forKeyedSubscript:@"purgeableSpace"];

    if ([storageSpace isVeryLowSpace])
    {
      v24 = &off_2FEF8;
    }

    else
    {
      v24 = &off_2FF10;
    }

    [v3 setObject:v24 forKeyedSubscript:@"isLowSpace"];
    [v3 setObject:&off_2FEF8 forKeyedSubscript:@"mediaUpdated"];
    selfCopy = self;
    categories = [(PSCapacityBarData *)self->_barData categories];
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v26 = [categories countByEnumeratingWithState:&v135 objects:v140 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v136;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v136 != v28)
          {
            objc_enumerationMutation(categories);
          }

          v30 = *(*(&v135 + 1) + 8 * i);
          identifier = [v30 identifier];
          [0 setObject:v30 forKey:identifier];
        }

        v27 = [categories countByEnumeratingWithState:&v135 objects:v140 count:16];
      }

      while (v27);
    }

    v120 = categories;
    usedBytes = [storageSpace usedBytes];
    v33 = [0 objectForKeyedSubscript:STCategoryAppsKey];
    bytes = [v33 bytes];
    if (bytes >= 1)
    {
      v35 = bytes;
      v36 = (bytes + 500) / 0x3E8;
      if (bytes <= 0xF4433)
      {
        v37 = 1000;
      }

      else
      {
        v37 = 1000;
        v38 = (bytes + 500) / 0x3E8;
        do
        {
          v36 = (v38 + 5) / 0xA;
          v37 *= 10;
          v12 = v38 > 0x2714;
          v38 = v36;
        }

        while (v12);
      }

      v39 = [NSNumber numberWithLongLong:v37 * v36];
      [v128 setObject:v39 forKeyedSubscript:@"appsSize"];

      usedBytes -= v35;
    }

    v40 = [0 objectForKeyedSubscript:STCategoryPhotosKey];

    bytes2 = [v40 bytes];
    if (bytes2 >= 1)
    {
      v42 = bytes2;
      v43 = (bytes2 + 500) / 0x3E8;
      if (bytes2 <= 0xF4433)
      {
        v44 = 1000;
      }

      else
      {
        v44 = 1000;
        v45 = (bytes2 + 500) / 0x3E8;
        do
        {
          v43 = (v45 + 5) / 0xA;
          v44 *= 10;
          v12 = v45 > 0x2714;
          v45 = v43;
        }

        while (v12);
      }

      v46 = [NSNumber numberWithLongLong:v44 * v43];
      [v128 setObject:v46 forKeyedSubscript:@"photosSize"];

      usedBytes -= v42;
    }

    v47 = [0 objectForKeyedSubscript:STCategoryMessagesKey];

    bytes3 = [v47 bytes];
    if (bytes3 >= 1)
    {
      v49 = bytes3;
      v50 = (bytes3 + 500) / 0x3E8;
      if (bytes3 <= 0xF4433)
      {
        v51 = 1000;
      }

      else
      {
        v51 = 1000;
        v52 = (bytes3 + 500) / 0x3E8;
        do
        {
          v50 = (v52 + 5) / 0xA;
          v51 *= 10;
          v12 = v52 > 0x2714;
          v52 = v50;
        }

        while (v12);
      }

      v53 = [NSNumber numberWithLongLong:v51 * v50];
      [v128 setObject:v53 forKeyedSubscript:@"messagesSize"];

      usedBytes -= v49;
    }

    v54 = [0 objectForKeyedSubscript:STCategoryBooksKey];

    bytes4 = [v54 bytes];
    if (bytes4 >= 1)
    {
      v56 = bytes4;
      v57 = (bytes4 + 500) / 0x3E8;
      if (bytes4 <= 0xF4433)
      {
        v58 = 1000;
      }

      else
      {
        v58 = 1000;
        v59 = (bytes4 + 500) / 0x3E8;
        do
        {
          v57 = (v59 + 5) / 0xA;
          v58 *= 10;
          v12 = v59 > 0x2714;
          v59 = v57;
        }

        while (v12);
      }

      v60 = [NSNumber numberWithLongLong:v58 * v57];
      [v128 setObject:v60 forKeyedSubscript:@"booksSize"];

      usedBytes -= v56;
    }

    v61 = [0 objectForKeyedSubscript:STCategoryMediaKey];

    bytes5 = [v61 bytes];
    if (bytes5 >= 1)
    {
      v63 = bytes5;
      v64 = (bytes5 + 500) / 0x3E8;
      if (bytes5 <= 0xF4433)
      {
        v65 = 1000;
      }

      else
      {
        v65 = 1000;
        v66 = (bytes5 + 500) / 0x3E8;
        do
        {
          v64 = (v66 + 5) / 0xA;
          v65 *= 10;
          v12 = v66 > 0x2714;
          v66 = v64;
        }

        while (v12);
      }

      v67 = [NSNumber numberWithLongLong:v65 * v64];
      [v128 setObject:v67 forKeyedSubscript:@"mediaSize"];

      usedBytes -= v63;
    }

    v68 = [0 objectForKeyedSubscript:STCategoryMailKey];

    bytes6 = [v68 bytes];
    if (bytes6 >= 1)
    {
      v70 = bytes6;
      v71 = (bytes6 + 500) / 0x3E8;
      if (bytes6 <= 0xF4433)
      {
        v72 = 1000;
      }

      else
      {
        v72 = 1000;
        v73 = (bytes6 + 500) / 0x3E8;
        do
        {
          v71 = (v73 + 5) / 0xA;
          v72 *= 10;
          v12 = v73 > 0x2714;
          v73 = v71;
        }

        while (v12);
      }

      v74 = [NSNumber numberWithLongLong:v72 * v71];
      [v128 setObject:v74 forKeyedSubscript:@"mailSize"];

      usedBytes -= v70;
    }

    v75 = [0 objectForKeyedSubscript:STCategoryCloudDriveKey];

    bytes7 = [v75 bytes];
    if (bytes7 >= 1)
    {
      v77 = bytes7;
      v78 = (bytes7 + 500) / 0x3E8;
      if (bytes7 <= 0xF4433)
      {
        v79 = 1000;
      }

      else
      {
        v79 = 1000;
        v80 = (bytes7 + 500) / 0x3E8;
        do
        {
          v78 = (v80 + 5) / 0xA;
          v79 *= 10;
          v12 = v80 > 0x2714;
          v80 = v78;
        }

        while (v12);
      }

      v81 = [NSNumber numberWithLongLong:v79 * v78];
      [v128 setObject:v81 forKeyedSubscript:@"cloudDriveSize"];

      usedBytes -= v77;
    }

    v82 = [0 objectForKeyedSubscript:STCategorySystemKey];

    v119 = v82;
    bytes8 = [v82 bytes];
    if (bytes8 >= 1)
    {
      v84 = bytes8;
      v85 = (bytes8 + 500) / 0x3E8;
      if (bytes8 <= 0xF4433)
      {
        v86 = 1000;
      }

      else
      {
        v86 = 1000;
        v87 = (bytes8 + 500) / 0x3E8;
        do
        {
          v85 = (v87 + 5) / 0xA;
          v86 *= 10;
          v12 = v87 > 0x2714;
          v87 = v85;
        }

        while (v12);
      }

      v88 = [NSNumber numberWithLongLong:v86 * v85];
      [v128 setObject:v88 forKeyedSubscript:@"systemSize"];

      usedBytes -= v84;
    }

    v121 = storageSpace;
    v89 = (usedBytes + 500) / 1000;
    if (usedBytes <= 1000499)
    {
      v90 = 1000;
    }

    else
    {
      v90 = 1000;
      v91 = (usedBytes + 500) / 1000;
      do
      {
        v89 = (v91 + 5) / 0xA;
        v90 *= 10;
        v12 = v91 > 0x2714;
        v91 = v89;
      }

      while (v12);
    }

    v92 = [NSNumber numberWithLongLong:v90 * v89];
    [v128 setObject:v92 forKeyedSubscript:@"otherSize"];

    v93 = +[STStoragePluginManager sharedManager];
    topTips = [v93 topTips];

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    obj = topTips;
    v126 = [obj countByEnumeratingWithState:&v131 objects:v139 count:16];
    if (!v126)
    {
LABEL_117:

      v115 = objc_alloc_init(SplunkLogger);
      [(SplunkLogger *)v115 logEventNamed:@"iosStorageEntered" value:v128 unique:0];
      [(SplunkLogger *)v115 flush];
      v116 = +[NSDate date];
      [v116 timeIntervalSinceReferenceDate];
      v118 = rint(v117);

      CFPreferencesSetValue(@"StatsTime", [NSNumber numberWithLongLong:v118], @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
      selfCopy->_splunkUploaded = 1;
      selfCopy->_splunkUpdateUploaded = 1;
      os_unfair_lock_unlock(&selfCopy->_splunkLock);

      return;
    }

    v95 = 0;
    v125 = *v132;
LABEL_92:
    v96 = 0;
    v97 = v95;
    if (v95 <= 3)
    {
      v98 = 3;
    }

    else
    {
      v98 = v95;
    }

    v127 = (v98 - v95);
    while (1)
    {
      if (*v132 != v125)
      {
        objc_enumerationMutation(obj);
      }

      if (v96 == v127)
      {
        goto LABEL_117;
      }

      v99 = *(*(&v131 + 1) + 8 * v96);
      v100 = [v99 propertyForKey:@"_stPluginID"];
      v101 = [v99 propertyForKey:@"_stTipID"];
      v130 = v97 + 1;
      v102 = [NSNumber numberWithInteger:v97 + 1];
      stringValue = [v102 stringValue];
      v129 = v100;
      if (![(__CFString *)v100 length])
      {
        v100 = @"????";
      }

      if ([(__CFString *)v101 length])
      {
        v104 = v101;
      }

      else
      {
        v104 = @"????";
      }

      v104 = [NSMutableString stringWithFormat:@"tip_%@_%@_%@", stringValue, v100, v104];

      [v104 replaceOccurrencesOfString:@" " withString:&stru_2D2D0 options:0 range:{0, objc_msgSend(v104, "length")}];
      [v104 replaceOccurrencesOfString:@"." withString:@"_" options:0 range:{0, objc_msgSend(v104, "length")}];
      immediateGain = [v99 size];
      if (immediateGain <= 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v108 = (immediateGain + 500) / 1000;
          goto LABEL_114;
        }

        v107 = v99;
        immediateGain = [v107 immediateGain];
        if (immediateGain < 0)
        {
          immediateGain = [v107 eventualGain];
        }
      }

      v108 = (immediateGain + 500) / 1000;
      if (immediateGain > 1000499)
      {
        v109 = 1000;
        v110 = v129;
        v97 = v130;
        v111 = v101;
        do
        {
          v112 = v108;
          v108 = (v108 + 5) / 0xA;
          v109 *= 10;
        }

        while (v112 > 0x2714);
        goto LABEL_115;
      }

LABEL_114:
      v109 = 1000;
      v110 = v129;
      v97 = v130;
      v111 = v101;
LABEL_115:
      v108 = [NSNumber numberWithLongLong:v109 * v108];
      [v128 setObject:v108 forKeyedSubscript:v104];

      if (++v96 == v126)
      {
        v114 = [obj countByEnumeratingWithState:&v131 objects:v139 count:16];
        v95 = v97;
        v126 = v114;
        if (v114)
        {
          goto LABEL_92;
        }

        goto LABEL_117;
      }
    }
  }

  os_unfair_lock_unlock(&self->_splunkLock);
}

- (void)updateTips:(id)tips
{
  qUpdate = self->_qUpdate;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8D7C;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(qUpdate, block);
}

- (void)_updateApps:(id)apps
{
  qUpdate = self->_qUpdate;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_90C0;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(qUpdate, block);
}

- (void)updateApps:(id)apps
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9278;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateMedia:(id)media
{
  mediaCopy = media;
  v4 = +[STMediaCache sharedCache];
  [v4 reload];

  [(STStorageController *)self updateApps:mediaCopy];
}

- (void)reloadTips:(id)tips
{
  tipsCopy = tips;
  v5 = +[STStoragePluginManager sharedManager];
  object = [tipsCopy object];

  [v5 reloadTipsForPlugin:object];
}

- (void)updateShowAllButton
{
  v4 = +[STStorageAnalytics sharedInstance];
  [v4 trackDisplayCalculating];

  v14 = +[STStoragePluginManager sharedManager];
  v5 = [(PSSpecifier *)self->_tipsGroup propertyForKey:PSHeaderViewKey];
  headerButton = [v5 headerButton];
  isHidden = [headerButton isHidden];

  showAllTips = [v14 showAllTips];
  if (showAllTips)
  {
    v9 = 1;
  }

  else
  {
    allTips = [v14 allTips];
    v10 = [allTips count];
    v9 = v10 <= [v14 tipsToShow];
  }

  headerButton2 = [v5 headerButton];
  [headerButton2 setHidden:v9];

  if ((showAllTips & 1) == 0)
  {
  }

  headerButton3 = [v5 headerButton];
  isHidden2 = [headerButton3 isHidden];

  if (isHidden != isHidden2)
  {
    [v5 setNeedsUpdateConstraints];
  }
}

- (void)resumeApp:(id)app
{
  v4 = +[STStoragePluginManager sharedManager];
  [v4 reloadAllTips];

  [(STStorageController *)self startMonitor];
  v5 = +[STMediaCache sharedCache];
  [v5 reload];
}

- (void)startMonitor
{
  if (!self->_isMonitoring)
  {
    self->_isMonitoring = 1;
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"updateTips:" name:STNotifyTipsChanged object:0];
    [v6 addObserver:self selector:"updateApps:" name:STNotifyAppSizesChanged object:0];
    [v6 addObserver:self selector:"reloadTips:" name:STStoragePluginReloadTipsNotification object:0];
    [v6 addObserver:self selector:"updateApps:" name:STStoragePurgeableChangedNotification object:0];
    v4 = +[STStorageDiskMonitor sharedMonitor];
    [v4 startMonitor];

    v5 = +[STStorageAppsMonitor sharedMonitor];
    [v5 startMonitor];
  }
}

- (void)stopMonitor
{
  if (self->_isMonitoring)
  {
    self->_isMonitoring = 0;
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:STNotifyTipsChanged object:0];
    [v7 removeObserver:self name:STNotifyAppSizesChanged object:0];
    [v7 removeObserver:self name:STStoragePluginReloadTipsNotification object:0];
    [v7 removeObserver:self name:STStoragePurgeableChangedNotification object:0];
    v4 = +[STStorageDiskMonitor sharedMonitor];
    [v4 stopMonitor];

    v5 = +[STStorageAppsMonitor sharedMonitor];
    [v5 stopMonitor];

    v6 = +[STStorageAnalytics sharedInstance];
    [v6 sendAnalyticsEventExitWithOtherSize:self->_otherSize];
  }
}

- (void)showAllPressed
{
  v3 = +[STStoragePluginManager sharedManager];
  [v3 setShowAllTips:1];
  [(STStorageController *)self updateTips:0];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_34;
  }

  v5 = +[NSMutableArray array];
  v65 = v5;
  v66 = v3;
  if (selfCopy->_usageLoaded)
  {
    v6 = v5;
  }

  else
  {
    v7 = [NSURL fileURLWithPath:@"/System/Library/PreferenceBundles/StoragePlugins/UsagePlugin.bundle"];
    v8 = [NSBundle bundleWithURL:v7];
    usageBundle = selfCopy->_usageBundle;
    selfCopy->_usageBundle = v8;

    if (!selfCopy->_usageBundle)
    {
      STLog();
    }

    v10 = objc_alloc_init(STStorageAppsController);
    appsController = selfCopy->_appsController;
    selfCopy->_appsController = v10;

    v12 = [PSSpecifier preferenceSpecifierNamed:@"  " target:0 set:0 get:0 detail:0 cell:0 edit:0];
    topGroup = selfCopy->_topGroup;
    selfCopy->_topGroup = v12;

    v14 = STStorageLocStr(STFreeUpSpaceKey);
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    tipsGroup = selfCopy->_tipsGroup;
    selfCopy->_tipsGroup = v15;

    [(PSSpecifier *)selfCopy->_tipsGroup setProperty:@"STStorageButtonHeader" forKey:PSHeaderCellClassGroupKey];
    v17 = selfCopy->_tipsGroup;
    v18 = STStorageLocStr(@"SHOW_ALL");
    [(PSSpecifier *)v17 setProperty:v18 forKey:@"stButtonTitle"];

    [(PSSpecifier *)selfCopy->_tipsGroup setTarget:selfCopy];
    [(PSSpecifier *)selfCopy->_tipsGroup setButtonAction:"showAllPressed"];
    v19 = +[PSSpecifier emptyGroupSpecifier];
    usageGroup = selfCopy->_usageGroup;
    selfCopy->_usageGroup = v19;

    v21 = +[UIDevice currentDevice];
    localizedModel = [v21 localizedModel];
    v23 = [PSCapacityBarCell specifierWithTitle:localizedModel];
    diskSpec = selfCopy->_diskSpec;
    selfCopy->_diskSpec = v23;

    [(PSSpecifier *)selfCopy->_diskSpec setProperty:&__kCFBooleanTrue forKey:PSCapacityBarShowOtherDataLegendKey];
    v25 = +[STStorageSystemCell specifierForSystem];
    systemSpec = selfCopy->_systemSpec;
    selfCopy->_systemSpec = v25;

    v27 = +[STStorageOtherCell specifierForOther];
    otherSpec = selfCopy->_otherSpec;
    selfCopy->_otherSpec = v27;

    v29 = +[STStorageCalcCell specifierForCalc];
    calculatingSpec = selfCopy->_calculatingSpec;
    selfCopy->_calculatingSpec = v29;

    selfCopy->_usageLoaded = 1;
    v6 = v65;
  }

  [v6 addObject:selfCopy->_topGroup];
  [v6 addObject:selfCopy->_diskSpec];
  tipSpecs = [(STStorageController *)selfCopy tipSpecs];
  v32 = tipSpecs;
  if (tipSpecs)
  {
    if ([tipSpecs count])
    {
      [v6 addObjectsFromArray:v32];
    }
  }

  else
  {
    v33 = +[PSSpecifier emptyGroupSpecifier];
    [v6 addObject:v33];

    v34 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    [v6 addObject:v34];
  }

  specifiers = [(STStorageAppsController *)selfCopy->_appsController specifiers];
  appSpecs = selfCopy->_appSpecs;
  selfCopy->_appSpecs = specifiers;

  if (![(NSArray *)selfCopy->_appSpecs count])
  {
    v52 = +[PSSpecifier emptyGroupSpecifier];
    [v6 addObject:v52];

    v53 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    [v6 addObject:v53];

    listSpecs = selfCopy->_listSpecs;
    selfCopy->_listSpecs = &__NSArray0__struct;

    goto LABEL_33;
  }

  [v6 addObject:selfCopy->_usageGroup];
  v37 = [NSMutableArray arrayWithCapacity:[(NSArray *)selfCopy->_appSpecs count]];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v64 = selfCopy;
  v38 = selfCopy->_appSpecs;
  v39 = [(NSArray *)v38 countByEnumeratingWithState:&v69 objects:v73 count:16];
  v63 = v32;
  if (!v39)
  {
    v67 = 1;
    goto LABEL_30;
  }

  v40 = v39;
  v41 = *v70;
  v42 = PSValueKey;
  v68 = STStorageAppKey;
  v67 = 1;
  do
  {
    v43 = 0;
    do
    {
      if (*v70 != v41)
      {
        objc_enumerationMutation(v38);
      }

      v44 = *(*(&v69 + 1) + 8 * v43);
      v45 = [v44 propertyForKey:v42];

      if (v45)
      {
        goto LABEL_22;
      }

      v46 = [v44 propertyForKey:v68];
      v47 = v46;
      if (v46)
      {
        usageBundle = [v46 usageBundle];

        if (!usageBundle || ([v47 mediaTypes], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "count"), v49, v50))
        {

          v67 = 0;
LABEL_22:
          [v37 addObject:v44];
          goto LABEL_23;
        }
      }

LABEL_23:
      v43 = v43 + 1;
    }

    while (v40 != v43);
    v51 = [(NSArray *)v38 countByEnumeratingWithState:&v69 objects:v73 count:16];
    v40 = v51;
  }

  while (v51);
LABEL_30:

  v55 = [(NSArray *)v64->_appSpecs count]!= 0;
  navigationItem = [(STStorageController *)v64 navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v55];

  selfCopy = v64;
  objc_storeStrong(&v64->_listSpecs, v37);
  v6 = v65;
  [v65 addObjectsFromArray:v37];
  v64->_appListShown = 1;
  v64->_allAppsSized = v67 & 1;
  v58 = +[PSSpecifier emptyGroupSpecifier];
  [v65 addObject:v58];

  [v65 addObject:v64->_systemSpec];
  [v65 addObject:v64->_otherSpec];
  if (qword_39FF0)
  {
    v62 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - qword_39FF0) / 1000000000.0;
    STLog();
    qword_39FF0 = 0;
    v59 = +[STStorageDataNotifier sharedNotifier];
    [v59 postLoadingComplete];
  }

  v3 = v66;
  v32 = v63;
LABEL_33:
  v60 = *&selfCopy->PSListController_opaque[v3];
  *&selfCopy->PSListController_opaque[v3] = v6;

  v4 = *&selfCopy->PSListController_opaque[v3];
LABEL_34:

  return v4;
}

- (void)removeSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([(NSArray *)self->_appSpecs containsObject:specifierCopy])
  {
    appSpecs = [(STStorageController *)self appSpecs];
    v6 = [appSpecs mutableCopy];

    [v6 removeObject:specifierCopy];
    [(STStorageController *)self setAppSpecs:v6];
  }

  v7.receiver = self;
  v7.super_class = STStorageController;
  [(STStorageController *)&v7 removeSpecifier:specifierCopy];
}

- (void)showFilterView
{
  if ([(NSArray *)self->_listSpecs count])
  {
    v3 = objc_alloc_init(STSearchListController);
    rootController = [(STStorageController *)self rootController];
    [(STSearchListController *)v3 setRootController:rootController];

    [(STSearchListController *)v3 setParentController:self];
    [(STSearchListController *)v3 setTitle:&stru_2D2D0];
    v5 = [(NSArray *)self->_listSpecs sortedArrayUsingComparator:&stru_2CCE0];
    [(STSearchListController *)v3 setSpecifiers:v5];

    view = [(STSearchListController *)v3 view];
    if (view)
    {
      v7 = [[UISearchBar alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v7 sizeToFit];
      [v7 setAutocorrectionType:1];
      [v7 setAutocapitalizationType:1];
      [v7 setAccessibilityIdentifier:@"AppSearchBar"];
      v8 = STStorageLocStr(@"SEARCH");
      [v7 setPlaceholder:v8];

      [v7 setSearchBarStyle:2];
      [v7 setShowsCancelButton:1];
      [v7 setReturnKeyType:9];
      [v7 setEnablesReturnKeyAutomatically:0];
      [v7 setDelegate:self];
      v9 = [[UINavigationController alloc] initWithRootViewController:v3];
      navigationBar = [v9 navigationBar];
      topItem = [navigationBar topItem];
      [topItem setTitleView:v7];

      table = [(STSearchListController *)v3 table];
      [table setTableHeaderView:0];

      table2 = [(STSearchListController *)v3 table];
      [table2 setAccessibilityIdentifier:@"AppSearchTable"];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_A50C;
      v15[3] = &unk_2CA10;
      v15[4] = self;
      v16 = v3;
      v17 = v7;
      v14 = v7;
      [(STStorageController *)self presentViewController:v9 animated:1 completion:v15];
    }
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_A5C4;
  v3[3] = &unk_2CAA0;
  v3[4] = self;
  [(STStorageController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);
  [WeakRetained searchButtonPressed];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  v6 = self->_listSpecs;
  if ([changeCopy length])
  {
    selfCopy = self;
    v24 = changeCopy;
    localizedLowercaseString = [changeCopy localizedLowercaseString];
    v25 = +[NSCharacterSet letterCharacterSet];
    v26 = [NSMutableArray arrayWithCapacity:[(NSArray *)v6 count]];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v6;
    v8 = v6;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      v12 = STStorageAppKey;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [v14 propertyForKey:v12];
          name = [v15 name];
          localizedLowercaseString2 = [name localizedLowercaseString];

          v18 = [localizedLowercaseString2 localizedStandardRangeOfString:localizedLowercaseString];
          if (v19 && (!v18 || v18 == [localizedLowercaseString2 rangeOfCharacterFromSet:v25]))
          {
            [v26 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v6 = v23;
    changeCopy = v24;
    self = selfCopy;
    v20 = v26;
  }

  else
  {
    v20 = [NSMutableArray arrayWithArray:v6];
  }

  [v20 sortUsingComparator:&stru_2CD00];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A980;
  block[3] = &unk_2CA38;
  block[4] = self;
  v28 = v20;
  v21 = v20;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)completionHandlerAction:(id)action
{
  v3 = [action propertyForKey:@"STCompletionHandler"];
  v3[2](v3, 0);
}

- (void)deleteAppAfterConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v5 = [confirmationCopy propertyForKey:STStorageAppKey];
    [(STStorageController *)self completionHandlerAction:confirmationCopy];
    if ([v5 isDeletable])
    {
      name = [v5 name];
      STLog();

      v16 = NSLocalizedDescriptionKey;
      v17 = @"Canceling existing install coord because user has requested delete";
      v6 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1, name];
      v7 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v6];

      bundleIdentifier = [v5 bundleIdentifier];
      v15 = 0;
      v9 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:bundleIdentifier withReason:v7 client:26 error:&v15];
      v10 = v15;
      if (v9)
      {
        STLog();
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_AC50;
      v12[3] = &unk_2CD28;
      v13 = v5;
      selfCopy = self;
      [IXAppInstallCoordinator uninstallAppWithBundleID:bundleIdentifier requestUserConfirmation:0 waitForDeletion:1 completion:v12];
    }
  }
}

- (void)confirmDeleteApp:(id)app completionHandler:(id)handler
{
  v5 = STStorageAppKey;
  v21 = STStorageAppKey;
  handlerCopy = handler;
  v7 = [app propertyForKey:v5];
  isAppClip = [v7 isAppClip];
  v9 = @"DELETE_APP";
  if (isAppClip)
  {
    v9 = @"DELETE_APPCLIP";
  }

  v10 = v9;
  v20 = [(__CFString *)v10 stringByAppendingString:@"_EXPLANATION"];
  v11 = objc_alloc_init(PSConfirmationSpecifier);
  v23[0] = PSConfirmationOKKey;
  v12 = STStorageLocStr(v10);
  v24[0] = v12;
  v23[1] = PSConfirmationCancelKey;
  v13 = STStorageLocStr(@"CANCEL");
  v24[1] = v13;
  v23[2] = PSConfirmationPromptKey;
  v14 = STStorageLocStr(v20);
  name = [v7 name];
  v16 = [NSString stringWithFormat:v14, name];
  v24[2] = v16;
  v23[3] = PSConfirmationTitleKey;
  v17 = STStorageLocStr(v10);

  v24[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  [v11 setupWithDictionary:v18];

  [v11 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  v19 = objc_retainBlock(handlerCopy);

  [v11 setProperty:v19 forKey:@"STCompletionHandler"];
  [v11 setProperty:v7 forKey:v21];
  [v11 setTarget:self];
  [v11 setConfirmationAction:"deleteAppAfterConfirmation:"];
  [v11 setConfirmationCancelAction:"completionHandlerAction:"];
  [(STStorageController *)self showConfirmationViewForSpecifier:v11];
}

- (void)demoteAppAfterConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v5 = [confirmationCopy propertyForKey:STStorageAppKey];
    [(STStorageController *)self completionHandlerAction:confirmationCopy];
    if ([v5 isDemotable])
    {
      appRecord = [v5 appRecord];
      applicationState = [appRecord applicationState];
      isValid = [applicationState isValid];

      if (isValid)
      {
        name = [v5 name];
        STLog();

        v18 = NSLocalizedDescriptionKey;
        v19 = @"Canceling existing install coord because user has requested offload";
        v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1, name];
        v10 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v9];

        bundleIdentifier = [v5 bundleIdentifier];
        v17 = 0;
        v12 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:bundleIdentifier withReason:v10 client:26 error:&v17];
        v13 = v17;
        if (v12)
        {
          STLog();
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_B248;
        v15[3] = &unk_2CD50;
        v16 = v5;
        [IXAppInstallCoordinator demoteAppToPlaceholderWithBundleID:bundleIdentifier forReason:2 waitForDeletion:1 completion:v15];
      }
    }
  }
}

- (void)confirmDemoteApp:(id)app completionHandler:(id)handler
{
  v5 = STStorageAppKey;
  v17 = STStorageAppKey;
  handlerCopy = handler;
  v7 = [app propertyForKey:v5];
  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v19[0] = PSConfirmationOKKey;
  v9 = STStorageLocStr(@"UNINSTALL");
  v20[0] = v9;
  v19[1] = PSConfirmationCancelKey;
  v10 = STStorageLocStr(@"CANCEL");
  v20[1] = v10;
  v19[2] = PSConfirmationPromptKey;
  v11 = STStorageLocStr(@"UNINSTALL_APP_EXPLANATION");
  name = [v7 name];
  v13 = [NSString stringWithFormat:v11, name];
  v20[2] = v13;
  v19[3] = PSConfirmationTitleKey;
  v14 = STStorageLocStr(@"UNINSTALL_APP");
  v20[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  [v8 setupWithDictionary:v15];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  v16 = objc_retainBlock(handlerCopy);

  [v8 setProperty:v16 forKey:@"STCompletionHandler"];
  [v8 setProperty:v7 forKey:v17];
  [v8 setTarget:self];
  [v8 setConfirmationAction:"demoteAppAfterConfirmation:"];
  [v8 setConfirmationCancelAction:"completionHandlerAction:"];
  [(STStorageController *)self showConfirmationViewForSpecifier:v8];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(STStorageController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:STStorageAppKey];
  v6 = v5;
  if (v5 && ([v5 isDeleted] & 1) == 0)
  {
    if ([v6 isDeletable])
    {
      isDemotable = 1;
    }

    else
    {
      isDemotable = [v6 isDemotable];
    }
  }

  else
  {
    isDemotable = 0;
  }

  return isDemotable;
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  configurationState = [v5 configurationState];
  isSwiped = [configurationState isSwiped];

  if (isSwiped)
  {

    [(STStorageController *)self setCellIsSwiped:1];
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(STStorageController *)self specifierAtIndexPath:pathCopy];
  v7 = [v6 propertyForKey:STStorageAppKey];
  v8 = STStorageLocStr(@"DELETE_APP");
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_B958;
  v28[3] = &unk_2CDA0;
  v9 = pathCopy;
  v29 = v9;
  selfCopy = self;
  v10 = v6;
  v31 = v10;
  v11 = [UIContextualAction contextualActionWithStyle:1 title:v8 handler:v28];

  v12 = +[UIColor systemRedColor];
  [v11 setBackgroundColor:v12];

  v13 = STStorageLocStr(@"UNINSTALL");
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_BA28;
  v24 = &unk_2CDA0;
  v14 = v9;
  v25 = v14;
  selfCopy2 = self;
  v15 = v10;
  v27 = v15;
  v16 = [UIContextualAction contextualActionWithStyle:1 title:v13 handler:&v21];

  v17 = [UIColor systemBlueColor:v21];
  [v16 setBackgroundColor:v17];

  v18 = [NSMutableArray arrayWithCapacity:2];
  if ([v7 isDeletable])
  {
    [v18 addObject:v11];
  }

  if ([v7 isDemotable] && (objc_msgSend(v7, "isDemoted") & 1) == 0)
  {
    [v18 addObject:v16];
  }

  v19 = [UISwipeActionsConfiguration configurationWithActions:v18];
  [v19 setPerformsFirstActionWithFullSwipe:0];

  return v19;
}

@end