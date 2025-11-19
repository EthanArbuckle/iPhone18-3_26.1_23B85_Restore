@interface STStorageController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)_updateApps:(id)a3;
- (void)completionHandlerAction:(id)a3;
- (void)confirmDeleteApp:(id)a3 completionHandler:(id)a4;
- (void)confirmDemoteApp:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)deleteAppAfterConfirmation:(id)a3;
- (void)demoteAppAfterConfirmation:(id)a3;
- (void)logSplunkData;
- (void)reloadSpecifiers;
- (void)reloadTips:(id)a3;
- (void)removeSpecifier:(id)a3;
- (void)resumeApp:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)showAllPressed;
- (void)showFilterView;
- (void)startMonitor;
- (void)stopMonitor;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)updateApps:(id)a3;
- (void)updateCategories:(id)a3;
- (void)updateMedia:(id)a3;
- (void)updateOtherDataSize;
- (void)updateShowAllButton;
- (void)updateTips:(id)a3;
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
    v3 = [(__CFDictionary *)v10 allKeys];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (([(__CFString *)v8 isEqualToString:@"StatsTime"]& 1) == 0)
          {
            CFPreferencesSetValue(v8, 0, @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v21 = [(STStorageController *)self navigationItem];
  [v21 setBackBarButtonItem:v20];

  v22 = [UIImage systemImageNamed:@"magnifyingglass"];
  v23 = [[UIBarButtonItem alloc] initWithImage:v22 style:0 target:self action:"showFilterView"];
  [v23 setEnabled:0];
  [v23 setAccessibilityIdentifier:@"AppSearch"];
  v24 = [(STStorageController *)self navigationItem];
  [v24 setRightBarButtonItem:v23];

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
  v3 = [(PSCapacityBarData *)self->_barData categories];
  if ([v3 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v4 = v3;
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
    v12 = [v11 storageSpace];

    v13 = [v12 totalBytes];
    v10 = v13 - ([v12 availableBytes] + v7);
    STLog();
    [v12 totalBytes];
    v14 = STFormattedSize();
    [v12 usedBytes];
    v15 = STFormattedSize();
    [v12 availableBytes];
    v16 = STFormattedSize();
    [v12 purgeableBytes];
    v34 = STFormattedSize();
    STLog();

    [v12 totalBytes];
    STLogSize();
    [v12 usedBytes];
    STLogSize();
    [v12 availableBytes];
    STLogSize();
    [v12 purgeableBytes];
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
          v23 = [v22 title];
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
    v27 = [v26 isAsynchronouslyLoaded];

    if (v27)
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

- (void)updateCategories:(id)a3
{
  v43 = +[STStorageDiskMonitor sharedMonitor];
  v45 = [v43 storageSpace];
  v4 = +[STStorageAppsMonitor sharedMonitor];
  v5 = [v4 categorySizes];
  v46 = [v5 dictionary];

  v44 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v46 count]);
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
  [v46 enumerateKeysAndObjectsUsingBlock:v51];
  [v15 sortUsingComparator:&stru_2CC98];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_7BA0;
  v49[3] = &unk_2CCC0;
  v16 = v40;
  v50 = v16;
  [v15 enumerateObjectsUsingBlock:v49];
  v17 = [v43 deviceSize];
  v18 = [v45 usedBytes];
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v18 >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [(PSCapacityBarData *)self->_barData setCapacity:v17, v40];
  [(PSCapacityBarData *)self->_barData setBytesUsed:v20];
  [(PSCapacityBarData *)self->_barData setCategories:v15];
  [(PSSpecifier *)self->_diskSpec setProperty:self->_barData forKey:PSCapacityBarDataKey];
  v21 = +[STStorageMediaMonitor sharedMonitor];
  v22 = [v21 isAsynchronouslyLoaded];

  diskSpec = self->_diskSpec;
  if (v22)
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
    v33 = [(STStorageAppsController *)self->_appsController apps];
    [v30 sendAnalyticsEventLaunchWithBarData:barData otherSize:otherSize andAppsCount:{objc_msgSend(v33, "count")}];
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
    v7 = [v6 storageSpace];

    v8 = [v7 totalBytes];
    v9 = (v8 + 500) / 1000;
    v10 = 1000;
    if (v8 > 1000499)
    {
      v11 = (v8 + 500) / 1000;
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

    v14 = [v7 availableBytes];
    v15 = (v14 + 500) / 1000;
    if (v14 <= 1000499)
    {
      v16 = 1000;
    }

    else
    {
      v16 = 1000;
      v17 = (v14 + 500) / 1000;
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

    v19 = [v7 purgeableBytes];
    v20 = (v19 + 500) / 1000;
    v21 = 1000;
    if (v19 > 1000499)
    {
      v22 = (v19 + 500) / 1000;
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

    if ([v7 isVeryLowSpace])
    {
      v24 = &off_2FEF8;
    }

    else
    {
      v24 = &off_2FF10;
    }

    [v3 setObject:v24 forKeyedSubscript:@"isLowSpace"];
    [v3 setObject:&off_2FEF8 forKeyedSubscript:@"mediaUpdated"];
    v123 = self;
    v25 = [(PSCapacityBarData *)self->_barData categories];
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v135 objects:v140 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v135 + 1) + 8 * i);
          v31 = [v30 identifier];
          [0 setObject:v30 forKey:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v135 objects:v140 count:16];
      }

      while (v27);
    }

    v120 = v25;
    v32 = [v7 usedBytes];
    v33 = [0 objectForKeyedSubscript:STCategoryAppsKey];
    v34 = [v33 bytes];
    if (v34 >= 1)
    {
      v35 = v34;
      v36 = (v34 + 500) / 0x3E8;
      if (v34 <= 0xF4433)
      {
        v37 = 1000;
      }

      else
      {
        v37 = 1000;
        v38 = (v34 + 500) / 0x3E8;
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

      v32 -= v35;
    }

    v40 = [0 objectForKeyedSubscript:STCategoryPhotosKey];

    v41 = [v40 bytes];
    if (v41 >= 1)
    {
      v42 = v41;
      v43 = (v41 + 500) / 0x3E8;
      if (v41 <= 0xF4433)
      {
        v44 = 1000;
      }

      else
      {
        v44 = 1000;
        v45 = (v41 + 500) / 0x3E8;
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

      v32 -= v42;
    }

    v47 = [0 objectForKeyedSubscript:STCategoryMessagesKey];

    v48 = [v47 bytes];
    if (v48 >= 1)
    {
      v49 = v48;
      v50 = (v48 + 500) / 0x3E8;
      if (v48 <= 0xF4433)
      {
        v51 = 1000;
      }

      else
      {
        v51 = 1000;
        v52 = (v48 + 500) / 0x3E8;
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

      v32 -= v49;
    }

    v54 = [0 objectForKeyedSubscript:STCategoryBooksKey];

    v55 = [v54 bytes];
    if (v55 >= 1)
    {
      v56 = v55;
      v57 = (v55 + 500) / 0x3E8;
      if (v55 <= 0xF4433)
      {
        v58 = 1000;
      }

      else
      {
        v58 = 1000;
        v59 = (v55 + 500) / 0x3E8;
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

      v32 -= v56;
    }

    v61 = [0 objectForKeyedSubscript:STCategoryMediaKey];

    v62 = [v61 bytes];
    if (v62 >= 1)
    {
      v63 = v62;
      v64 = (v62 + 500) / 0x3E8;
      if (v62 <= 0xF4433)
      {
        v65 = 1000;
      }

      else
      {
        v65 = 1000;
        v66 = (v62 + 500) / 0x3E8;
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

      v32 -= v63;
    }

    v68 = [0 objectForKeyedSubscript:STCategoryMailKey];

    v69 = [v68 bytes];
    if (v69 >= 1)
    {
      v70 = v69;
      v71 = (v69 + 500) / 0x3E8;
      if (v69 <= 0xF4433)
      {
        v72 = 1000;
      }

      else
      {
        v72 = 1000;
        v73 = (v69 + 500) / 0x3E8;
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

      v32 -= v70;
    }

    v75 = [0 objectForKeyedSubscript:STCategoryCloudDriveKey];

    v76 = [v75 bytes];
    if (v76 >= 1)
    {
      v77 = v76;
      v78 = (v76 + 500) / 0x3E8;
      if (v76 <= 0xF4433)
      {
        v79 = 1000;
      }

      else
      {
        v79 = 1000;
        v80 = (v76 + 500) / 0x3E8;
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

      v32 -= v77;
    }

    v82 = [0 objectForKeyedSubscript:STCategorySystemKey];

    v119 = v82;
    v83 = [v82 bytes];
    if (v83 >= 1)
    {
      v84 = v83;
      v85 = (v83 + 500) / 0x3E8;
      if (v83 <= 0xF4433)
      {
        v86 = 1000;
      }

      else
      {
        v86 = 1000;
        v87 = (v83 + 500) / 0x3E8;
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

      v32 -= v84;
    }

    v121 = v7;
    v89 = (v32 + 500) / 1000;
    if (v32 <= 1000499)
    {
      v90 = 1000;
    }

    else
    {
      v90 = 1000;
      v91 = (v32 + 500) / 1000;
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
    v94 = [v93 topTips];

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    obj = v94;
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
      v123->_splunkUploaded = 1;
      v123->_splunkUpdateUploaded = 1;
      os_unfair_lock_unlock(&v123->_splunkLock);

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
      v103 = [v102 stringValue];
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

      v105 = [NSMutableString stringWithFormat:@"tip_%@_%@_%@", v103, v100, v104];

      [v105 replaceOccurrencesOfString:@" " withString:&stru_2D2D0 options:0 range:{0, objc_msgSend(v105, "length")}];
      [v105 replaceOccurrencesOfString:@"." withString:@"_" options:0 range:{0, objc_msgSend(v105, "length")}];
      v106 = [v99 size];
      if (v106 <= 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v108 = (v106 + 500) / 1000;
          goto LABEL_114;
        }

        v107 = v99;
        v106 = [v107 immediateGain];
        if (v106 < 0)
        {
          v106 = [v107 eventualGain];
        }
      }

      v108 = (v106 + 500) / 1000;
      if (v106 > 1000499)
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
      v113 = [NSNumber numberWithLongLong:v109 * v108];
      [v128 setObject:v113 forKeyedSubscript:v105];

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

- (void)updateTips:(id)a3
{
  qUpdate = self->_qUpdate;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8D7C;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(qUpdate, block);
}

- (void)_updateApps:(id)a3
{
  qUpdate = self->_qUpdate;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_90C0;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(qUpdate, block);
}

- (void)updateApps:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9278;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateMedia:(id)a3
{
  v5 = a3;
  v4 = +[STMediaCache sharedCache];
  [v4 reload];

  [(STStorageController *)self updateApps:v5];
}

- (void)reloadTips:(id)a3
{
  v3 = a3;
  v5 = +[STStoragePluginManager sharedManager];
  v4 = [v3 object];

  [v5 reloadTipsForPlugin:v4];
}

- (void)updateShowAllButton
{
  v4 = +[STStorageAnalytics sharedInstance];
  [v4 trackDisplayCalculating];

  v14 = +[STStoragePluginManager sharedManager];
  v5 = [(PSSpecifier *)self->_tipsGroup propertyForKey:PSHeaderViewKey];
  v6 = [v5 headerButton];
  v7 = [v6 isHidden];

  v8 = [v14 showAllTips];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v2 = [v14 allTips];
    v10 = [v2 count];
    v9 = v10 <= [v14 tipsToShow];
  }

  v11 = [v5 headerButton];
  [v11 setHidden:v9];

  if ((v8 & 1) == 0)
  {
  }

  v12 = [v5 headerButton];
  v13 = [v12 isHidden];

  if (v7 != v13)
  {
    [v5 setNeedsUpdateConstraints];
  }
}

- (void)resumeApp:(id)a3
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
  v2 = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_34;
  }

  v5 = +[NSMutableArray array];
  v65 = v5;
  v66 = v3;
  if (v2->_usageLoaded)
  {
    v6 = v5;
  }

  else
  {
    v7 = [NSURL fileURLWithPath:@"/System/Library/PreferenceBundles/StoragePlugins/UsagePlugin.bundle"];
    v8 = [NSBundle bundleWithURL:v7];
    usageBundle = v2->_usageBundle;
    v2->_usageBundle = v8;

    if (!v2->_usageBundle)
    {
      STLog();
    }

    v10 = objc_alloc_init(STStorageAppsController);
    appsController = v2->_appsController;
    v2->_appsController = v10;

    v12 = [PSSpecifier preferenceSpecifierNamed:@"  " target:0 set:0 get:0 detail:0 cell:0 edit:0];
    topGroup = v2->_topGroup;
    v2->_topGroup = v12;

    v14 = STStorageLocStr(STFreeUpSpaceKey);
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    tipsGroup = v2->_tipsGroup;
    v2->_tipsGroup = v15;

    [(PSSpecifier *)v2->_tipsGroup setProperty:@"STStorageButtonHeader" forKey:PSHeaderCellClassGroupKey];
    v17 = v2->_tipsGroup;
    v18 = STStorageLocStr(@"SHOW_ALL");
    [(PSSpecifier *)v17 setProperty:v18 forKey:@"stButtonTitle"];

    [(PSSpecifier *)v2->_tipsGroup setTarget:v2];
    [(PSSpecifier *)v2->_tipsGroup setButtonAction:"showAllPressed"];
    v19 = +[PSSpecifier emptyGroupSpecifier];
    usageGroup = v2->_usageGroup;
    v2->_usageGroup = v19;

    v21 = +[UIDevice currentDevice];
    v22 = [v21 localizedModel];
    v23 = [PSCapacityBarCell specifierWithTitle:v22];
    diskSpec = v2->_diskSpec;
    v2->_diskSpec = v23;

    [(PSSpecifier *)v2->_diskSpec setProperty:&__kCFBooleanTrue forKey:PSCapacityBarShowOtherDataLegendKey];
    v25 = +[STStorageSystemCell specifierForSystem];
    systemSpec = v2->_systemSpec;
    v2->_systemSpec = v25;

    v27 = +[STStorageOtherCell specifierForOther];
    otherSpec = v2->_otherSpec;
    v2->_otherSpec = v27;

    v29 = +[STStorageCalcCell specifierForCalc];
    calculatingSpec = v2->_calculatingSpec;
    v2->_calculatingSpec = v29;

    v2->_usageLoaded = 1;
    v6 = v65;
  }

  [v6 addObject:v2->_topGroup];
  [v6 addObject:v2->_diskSpec];
  v31 = [(STStorageController *)v2 tipSpecs];
  v32 = v31;
  if (v31)
  {
    if ([v31 count])
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

  v35 = [(STStorageAppsController *)v2->_appsController specifiers];
  appSpecs = v2->_appSpecs;
  v2->_appSpecs = v35;

  if (![(NSArray *)v2->_appSpecs count])
  {
    v52 = +[PSSpecifier emptyGroupSpecifier];
    [v6 addObject:v52];

    v53 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    [v6 addObject:v53];

    listSpecs = v2->_listSpecs;
    v2->_listSpecs = &__NSArray0__struct;

    goto LABEL_33;
  }

  [v6 addObject:v2->_usageGroup];
  v37 = [NSMutableArray arrayWithCapacity:[(NSArray *)v2->_appSpecs count]];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v64 = v2;
  v38 = v2->_appSpecs;
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
        v48 = [v46 usageBundle];

        if (!v48 || ([v47 mediaTypes], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "count"), v49, v50))
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
  v56 = [(STStorageController *)v64 navigationItem];
  v57 = [v56 rightBarButtonItem];
  [v57 setEnabled:v55];

  v2 = v64;
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
  v60 = *&v2->PSListController_opaque[v3];
  *&v2->PSListController_opaque[v3] = v6;

  v4 = *&v2->PSListController_opaque[v3];
LABEL_34:

  return v4;
}

- (void)removeSpecifier:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_appSpecs containsObject:v4])
  {
    v5 = [(STStorageController *)self appSpecs];
    v6 = [v5 mutableCopy];

    [v6 removeObject:v4];
    [(STStorageController *)self setAppSpecs:v6];
  }

  v7.receiver = self;
  v7.super_class = STStorageController;
  [(STStorageController *)&v7 removeSpecifier:v4];
}

- (void)showFilterView
{
  if ([(NSArray *)self->_listSpecs count])
  {
    v3 = objc_alloc_init(STSearchListController);
    v4 = [(STStorageController *)self rootController];
    [(STSearchListController *)v3 setRootController:v4];

    [(STSearchListController *)v3 setParentController:self];
    [(STSearchListController *)v3 setTitle:&stru_2D2D0];
    v5 = [(NSArray *)self->_listSpecs sortedArrayUsingComparator:&stru_2CCE0];
    [(STSearchListController *)v3 setSpecifiers:v5];

    v6 = [(STSearchListController *)v3 view];
    if (v6)
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
      v10 = [v9 navigationBar];
      v11 = [v10 topItem];
      [v11 setTitleView:v7];

      v12 = [(STSearchListController *)v3 table];
      [v12 setTableHeaderView:0];

      v13 = [(STSearchListController *)v3 table];
      [v13 setAccessibilityIdentifier:@"AppSearchTable"];

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

- (void)searchBarCancelButtonClicked:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_A5C4;
  v3[3] = &unk_2CAA0;
  v3[4] = self;
  [(STStorageController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);
  [WeakRetained searchButtonPressed];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = self->_listSpecs;
  if ([v5 length])
  {
    v22 = self;
    v24 = v5;
    v7 = [v5 localizedLowercaseString];
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
          v16 = [v15 name];
          v17 = [v16 localizedLowercaseString];

          v18 = [v17 localizedStandardRangeOfString:v7];
          if (v19 && (!v18 || v18 == [v17 rangeOfCharacterFromSet:v25]))
          {
            [v26 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v6 = v23;
    v5 = v24;
    self = v22;
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

- (void)completionHandlerAction:(id)a3
{
  v3 = [a3 propertyForKey:@"STCompletionHandler"];
  v3[2](v3, 0);
}

- (void)deleteAppAfterConfirmation:(id)a3
{
  v4 = a3;
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v5 = [v4 propertyForKey:STStorageAppKey];
    [(STStorageController *)self completionHandlerAction:v4];
    if ([v5 isDeletable])
    {
      v11 = [v5 name];
      STLog();

      v16 = NSLocalizedDescriptionKey;
      v17 = @"Canceling existing install coord because user has requested delete";
      v6 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1, v11];
      v7 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v6];

      v8 = [v5 bundleIdentifier];
      v15 = 0;
      v9 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:v8 withReason:v7 client:26 error:&v15];
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
      v14 = self;
      [IXAppInstallCoordinator uninstallAppWithBundleID:v8 requestUserConfirmation:0 waitForDeletion:1 completion:v12];
    }
  }
}

- (void)confirmDeleteApp:(id)a3 completionHandler:(id)a4
{
  v5 = STStorageAppKey;
  v21 = STStorageAppKey;
  v6 = a4;
  v7 = [a3 propertyForKey:v5];
  v8 = [v7 isAppClip];
  v9 = @"DELETE_APP";
  if (v8)
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
  v15 = [v7 name];
  v16 = [NSString stringWithFormat:v14, v15];
  v24[2] = v16;
  v23[3] = PSConfirmationTitleKey;
  v17 = STStorageLocStr(v10);

  v24[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  [v11 setupWithDictionary:v18];

  [v11 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  v19 = objc_retainBlock(v6);

  [v11 setProperty:v19 forKey:@"STCompletionHandler"];
  [v11 setProperty:v7 forKey:v21];
  [v11 setTarget:self];
  [v11 setConfirmationAction:"deleteAppAfterConfirmation:"];
  [v11 setConfirmationCancelAction:"completionHandlerAction:"];
  [(STStorageController *)self showConfirmationViewForSpecifier:v11];
}

- (void)demoteAppAfterConfirmation:(id)a3
{
  v4 = a3;
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v5 = [v4 propertyForKey:STStorageAppKey];
    [(STStorageController *)self completionHandlerAction:v4];
    if ([v5 isDemotable])
    {
      v6 = [v5 appRecord];
      v7 = [v6 applicationState];
      v8 = [v7 isValid];

      if (v8)
      {
        v14 = [v5 name];
        STLog();

        v18 = NSLocalizedDescriptionKey;
        v19 = @"Canceling existing install coord because user has requested offload";
        v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1, v14];
        v10 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v9];

        v11 = [v5 bundleIdentifier];
        v17 = 0;
        v12 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:v11 withReason:v10 client:26 error:&v17];
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
        [IXAppInstallCoordinator demoteAppToPlaceholderWithBundleID:v11 forReason:2 waitForDeletion:1 completion:v15];
      }
    }
  }
}

- (void)confirmDemoteApp:(id)a3 completionHandler:(id)a4
{
  v5 = STStorageAppKey;
  v17 = STStorageAppKey;
  v6 = a4;
  v7 = [a3 propertyForKey:v5];
  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v19[0] = PSConfirmationOKKey;
  v9 = STStorageLocStr(@"UNINSTALL");
  v20[0] = v9;
  v19[1] = PSConfirmationCancelKey;
  v10 = STStorageLocStr(@"CANCEL");
  v20[1] = v10;
  v19[2] = PSConfirmationPromptKey;
  v11 = STStorageLocStr(@"UNINSTALL_APP_EXPLANATION");
  v12 = [v7 name];
  v13 = [NSString stringWithFormat:v11, v12];
  v20[2] = v13;
  v19[3] = PSConfirmationTitleKey;
  v14 = STStorageLocStr(@"UNINSTALL_APP");
  v20[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  [v8 setupWithDictionary:v15];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  v16 = objc_retainBlock(v6);

  [v8 setProperty:v16 forKey:@"STCompletionHandler"];
  [v8 setProperty:v7 forKey:v17];
  [v8 setTarget:self];
  [v8 setConfirmationAction:"demoteAppAfterConfirmation:"];
  [v8 setConfirmationCancelAction:"completionHandlerAction:"];
  [(STStorageController *)self showConfirmationViewForSpecifier:v8];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(STStorageController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:STStorageAppKey];
  v6 = v5;
  if (v5 && ([v5 isDeleted] & 1) == 0)
  {
    if ([v6 isDeletable])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 isDemotable];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  v6 = [v5 configurationState];
  v7 = [v6 isSwiped];

  if (v7)
  {

    [(STStorageController *)self setCellIsSwiped:1];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(STStorageController *)self specifierAtIndexPath:v5];
  v7 = [v6 propertyForKey:STStorageAppKey];
  v8 = STStorageLocStr(@"DELETE_APP");
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_B958;
  v28[3] = &unk_2CDA0;
  v9 = v5;
  v29 = v9;
  v30 = self;
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
  v26 = self;
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