@interface PersonalHotspotDataUsageDetails
- (BOOL)_isUnknownDevice:(id)a3;
- (PersonalHotspotDataUsageDetails)init;
- (id)specifiers;
- (void)dealloc;
- (void)fetchHotspotClientsUsage;
- (void)viewDidLoad;
@end

@implementation PersonalHotspotDataUsageDetails

- (PersonalHotspotDataUsageDetails)init
{
  v9.receiver = self;
  v9.super_class = PersonalHotspotDataUsageDetails;
  v2 = [(PersonalHotspotDataUsageDetails *)&v9 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"reloadSpecifiers" name:@"PSWirelessDataUsageChangedNotification" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"reloadSpecifiers" name:@"PSWirelessDataUsageCacheRefreshedNotification" object:0];

    v5 = +[PersonalHotspotDataUsageCache sharedInstance];
    [v5 fetchHotspotClientsUsage];
    v6 = objc_alloc_init(UIRefreshControl);
    refreshControl = v2->_refreshControl;
    v2->_refreshControl = v6;

    [(UIRefreshControl *)v2->_refreshControl addTarget:v2 action:"fetchHotspotClientsUsage" forControlEvents:4096];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PersonalHotspotDataUsageDetails;
  [(PersonalHotspotDataUsageDetails *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PersonalHotspotDataUsageDetails;
  [(PersonalHotspotDataUsageDetails *)&v4 viewDidLoad];
  v3 = [(PersonalHotspotDataUsageDetails *)self refreshControl];
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setRefreshControl:v3];
}

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v52 = objc_opt_new();
    v6 = +[PersonalHotspotDataUsageCache sharedInstance];
    v7 = objc_opt_new();
    v71 = v7;
    v66 = v6;
    v8 = [v6 hotspotClientIDsForPeriod:0 mruMap:&v71];
    v65 = v71;

    v9 = &WiFiManagerClientCopyProperty_ptr;
    v10 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v10];
    v57 = objc_alloc_init(NSRelativeDateTimeFormatter);
    v64 = objc_alloc_init(NSDateFormatter);
    [v64 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v56 = +[NSDate date];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v67 objects:v72 count:16];
    v51 = v5;
    obj = v11;
    if (v12)
    {
      v49 = v10;
      v50 = v3;
      v61 = 0;
      v62 = v2;
      v53 = 0;
      v59 = *v68;
      v60 = 0;
      v55 = kWiFiSettingDataUsageDateKey;
      v58 = kWiFiDataUsageInterfacePeerIDKey;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v68 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v67 + 1) + 8 * i);
          v15 = [v66 phClientInfoForID:v14];
          v16 = [v15 mutableCopy];

          v17 = [v65 objectForKeyedSubscript:v14];
          v18 = [v64 dateFromString:v17];
          if (v18)
          {
            v19 = +[NSDate date];
            v20 = [v57 localizedStringForDate:v18 relativeToDate:v19];

            [v56 timeIntervalSinceDate:v18];
            if (v27 <= 5.0)
            {
              v28 = PHocalizedStringWithFormat(@"JUST_NOW", @"%@", v21, v22, v23, v24, v25, v26, &stru_C668);

              v20 = v28;
            }

            [v16 setObject:v20 forKeyedSubscript:v55];
          }

          v29 = [v16 copy];
          v30 = [v29 objectForKeyedSubscript:v58];
          v31 = [v30 isEqualToString:@"Others"];

          v32 = [(PersonalHotspotDataUsageDetails *)v62 _isUnknownDevice:v29];
          if (v31)
          {
            v33 = v14;

            v34 = v29;
            v60 = v33;
            v61 = v34;
          }

          else if (v32)
          {
            v53 += [v66 usageForHotspotClientID:v14 inPeriod:0];
          }

          else if ([v29 count])
          {
            v35 = [[PersonalHotspotDataUsageSpecifier alloc] initWithDeviceID:v14 info:v29];
            if (v35)
            {
              [v52 addObject:v35];
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v12);

      v36 = 0;
      v12 = v60;
      if (v60)
      {
        v37 = v61;
        v2 = v62;
        v3 = v50;
        v5 = v51;
        v9 = &WiFiManagerClientCopyProperty_ptr;
        if (v61)
        {
          v36 = [[PersonalHotspotDataUsageSpecifier alloc] initWithDeviceID:v60 info:v61 unknownDevicesDataUsage:v53];
        }

        v10 = v49;
      }

      else
      {
        v37 = v61;
        v2 = v62;
        v3 = v50;
        v5 = v51;
        v10 = v49;
        v9 = &WiFiManagerClientCopyProperty_ptr;
      }
    }

    else
    {

      v37 = 0;
      v36 = 0;
    }

    v38 = [(PersonalHotspotDataUsageDetails *)v2 usageComparator];
    [v52 sortUsingComparator:v38];

    [v5 addObjectsFromArray:v52];
    if (v36)
    {
      v39 = [v9[126] emptyGroupSpecifier];
      [v5 addObject:v39];
      [v5 addObject:v36];
      v63 = v36;
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      SFLocalizableWAPIStringKeyForKey();
      v41 = v10;
      v42 = v12;
      v44 = v43 = v37;
      v45 = [v40 localizedStringForKey:v44 value:&stru_C668 table:@"PersonalHotspotDataUsage"];
      [v39 setProperty:v45 forKey:PSFooterTextGroupKey];

      v37 = v43;
      v12 = v42;
      v10 = v41;
      v5 = v51;

      v36 = v63;
    }

    v46 = [v5 copy];
    v47 = *&v2->PSListController_opaque[v3];
    *&v2->PSListController_opaque[v3] = v46;

    v4 = *&v2->PSListController_opaque[v3];
  }

  return v4;
}

- (void)fetchHotspotClientsUsage
{
  v3 = +[PersonalHotspotDataUsageCache sharedInstance];
  [v3 fetchHotspotClientsUsage];

  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 1000000000);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1B84;
  v8 = &unk_C4B8;
  objc_copyWeak(&v9, &location);
  dispatch_after(v4, &_dispatch_main_q, &v5);
  [(PersonalHotspotDataUsageDetails *)self reloadSpecifiers:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_isUnknownDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:kWiFiSettingDataUsageProductMarketingNameKey];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:kWiFiSettingDataUsageInterfacePeerDisplayNameKey];
    v5 = v6 == 0;
  }

  return v5;
}

@end