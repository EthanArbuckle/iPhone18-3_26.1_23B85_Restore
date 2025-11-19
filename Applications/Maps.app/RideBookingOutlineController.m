@interface RideBookingOutlineController
+ (id)cellClasses;
+ (id)headerFooterViewClasses;
- (RideBookingOutlineController)initWithCollectionView:(id)a3;
- (RideBookingRoutePlanningTableViewDataSourceDelegate)delegate;
- (void)_configureRideOptionsSources:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)configureWithRideBookingRideOptionState:(id)a3;
- (void)dealloc;
- (void)didExpandSection:(id)a3;
- (void)prepareOutlineSections;
- (void)tableViewDismissed;
@end

@implementation RideBookingOutlineController

- (RideBookingRoutePlanningTableViewDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didExpandSection:(id)a3
{
  v4 = a3;
  v5 = [(RideBookingOutlineController *)self applicationSectionIsExpanded];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:v4];

  [(RideBookingOutlineController *)self prepareOutlineSections];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = sub_100FB2D54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Applications did uninstall; reloading", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB2DA8;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v6, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = sub_100FB2D54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Applications did install; reloading", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FB2F6C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v6, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)tableViewDismissed
{
  v3 = sub_100FB2D54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Table view dismissed", &v5, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  [(RideBookingOutlineController *)self setApplicationSectionIsExpanded:v4];
}

- (void)_configureRideOptionsSources:(id)a3
{
  v45 = a3;
  v46 = objc_alloc_init(NSMutableArray);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v4 = [v45 rideOptionStatusMap];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v59;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        v11 = [v10 application];
        if ([v11 enabled])
        {
          v12 = [v10 rideOptions];
          v13 = [v12 count];

          if (v13)
          {
            [v46 addObject:v10];
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v7);
  }

  v14 = [v45 installedSuggestions];
  v15 = [RidesharingAppPreferenceManager sortedRideOptionStatuses:v46 withStoreOrdering:v14];
  [(RideBookingOutlineController *)self setRideOptionsStatuses:v15];

  v16 = objc_alloc_init(NSMutableDictionary);
  rideOptionsSourcesDictionary = self->_rideOptionsSourcesDictionary;
  self->_rideOptionsSourcesDictionary = v16;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(RideBookingOutlineController *)self rideOptionsStatuses];
  v49 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v49)
  {
    v48 = *v55;
    p_info = GuidanceObserver.info;
    v19 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v20 = @"%@";
    do
    {
      v21 = 0;
      do
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v21;
        v22 = *(*(&v54 + 1) + 8 * v21);
        v23 = [v22 application];
        v24 = [v23 identifier];

        v25 = [(RideBookingOutlineController *)self applicationSectionIsExpanded];
        v26 = [v25 objectForKey:v24];

        v50 = v26;
        if (!v26)
        {
          v27 = [(RideBookingOutlineController *)self applicationSectionIsExpanded];
          [v27 setObject:&__kCFBooleanFalse forKeyedSubscript:v24];
        }

        v51 = v24;
        v28 = objc_alloc_init(NSMutableArray);
        v29 = [v22 rideOptions];
        v30 = [v29 count];

        if (v30)
        {
          v31 = 0;
          v53 = v28;
          do
          {
            v32 = [v22 rideOptions];
            v33 = [v32 objectAtIndex:v31];

            v34 = objc_alloc((p_info + 86));
            [(RoutePlanningOutlineController *)self collectionView];
            v36 = v35 = p_info;
            [v19[459] stringWithFormat:v20, v33];
            v37 = self;
            v38 = v20;
            v40 = v39 = v19;
            v41 = [v34 initWithCollectionView:v36 sectionIdentifier:v40];

            v19 = v39;
            v20 = v38;
            self = v37;

            [v41 setParentDataSource:v37];
            [v41 setDelegate:v37];
            v42 = [v22 rideOptions];
            [v41 setRideBookingRideOptions:v42];

            p_info = v35;
            v28 = v53;
            [v41 setRideBookingRideOptionIndex:v31];
            [v41 setRideBookingRideOptionStatus:v22];
            [v53 addObject:v41];

            ++v31;
            v43 = [v22 rideOptions];
            v44 = [v43 count];
          }

          while (v31 < v44);
        }

        [(NSMutableDictionary *)self->_rideOptionsSourcesDictionary setObject:v28 forKey:v51];

        v21 = v52 + 1;
      }

      while ((v52 + 1) != v49);
      v49 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v49);
  }
}

- (void)configureWithRideBookingRideOptionState:(id)a3
{
  v4 = a3;
  [(RideBookingOutlineController *)self _configureRideOptionsSources:v4];
  v5 = [(RideBookingOutlineController *)self enabledApplicationsSource];
  [v5 configureWithRideBookingRideOptionState:v4];

  v6 = [(RideBookingOutlineController *)self disabledApplicationsSource];
  [v6 configureWithRideBookingRideOptionState:v4];

  v7 = [(RideBookingOutlineController *)self appStoreApplicationsSource];
  [v7 configureWithRideBookingRideOptionState:v4];

  [(RideBookingOutlineController *)self prepareOutlineSections];
  v8 = [(RideBookingOutlineController *)self delegate];
  [v8 dataSourceRequiresReload:self];
}

- (void)prepareOutlineSections
{
  v2 = self;
  v3 = [(RoutePlanningOutlineController *)self collectionView];

  if (v3)
  {
    if (!v2->_enabledApplicationsSource)
    {
      v4 = [RideBookingEnabledApplicationsOutlineSection alloc];
      v5 = [(RoutePlanningOutlineController *)v2 collectionView];
      v6 = [(RideBookingEnabledApplicationsOutlineSection *)v4 initWithCollectionView:v5 sectionIdentifier:@"EnabledApplications"];
      enabledApplicationsSource = v2->_enabledApplicationsSource;
      v2->_enabledApplicationsSource = v6;

      [(RideBookingEnabledApplicationsOutlineSection *)v2->_enabledApplicationsSource setParentDataSource:v2];
      v8 = [RideBookingDisabledApplicationsOutlineSection alloc];
      v9 = [(RoutePlanningOutlineController *)v2 collectionView];
      v10 = [(RoutePlanningOutlineSection *)v8 initWithCollectionView:v9 sectionIdentifier:@"DisabledApps"];
      disabledApplicationsSource = v2->_disabledApplicationsSource;
      v2->_disabledApplicationsSource = v10;

      [(RideBookingDisabledApplicationsOutlineSection *)v2->_disabledApplicationsSource setParentDataSource:v2];
      v12 = [RideBookingAppStoreApplicationsOutlineSection alloc];
      v13 = [(RoutePlanningOutlineController *)v2 collectionView];
      v14 = [(RoutePlanningOutlineSection *)v12 initWithCollectionView:v13 sectionIdentifier:@"AppStoreApps"];
      appStoreApplicationsSource = v2->_appStoreApplicationsSource;
      v2->_appStoreApplicationsSource = v14;

      [(RideBookingAppStoreApplicationsOutlineSection *)v2->_appStoreApplicationsSource setParentDataSource:v2];
    }

    v39 = objc_alloc_init(NSMutableArray);
    [v39 addObject:v2->_enabledApplicationsSource];
    if ([(NSMutableDictionary *)v2->_rideOptionsSourcesDictionary count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v2->_rideOptionsSourcesDictionary;
      v40 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v40)
      {
        v38 = *v47;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v47 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            v18 = [(NSMutableDictionary *)v2->_rideOptionsSourcesDictionary objectForKey:v17];
            v19 = v2;
            v20 = [(RideBookingOutlineController *)v2 applicationSectionIsExpanded];
            v21 = [v20 objectForKeyedSubscript:v17];
            v22 = [v21 BOOLValue];

            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v23 = v18;
            v24 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = 0;
              v27 = *v43;
              do
              {
                v28 = 0;
                v29 = v26;
                do
                {
                  if (*v43 != v27)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v30 = *(*(&v42 + 1) + 8 * v28);
                  [v30 setApplicationSectionIsExpanded:v22];
                  v26 = v29 + 1;
                  [v30 setAdjustedSectionOffset:v29];
                  v28 = v28 + 1;
                  ++v29;
                }

                while (v25 != v28);
                v25 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
              }

              while (v25);
            }

            if (v22)
            {
              [v39 addObjectsFromArray:v23];
              v2 = v19;
            }

            else
            {
              if ([v23 count] <= 3)
              {
                v31 = [v23 count];
              }

              else
              {
                v31 = 3;
              }

              v2 = v19;
              v32 = [v23 subarrayWithRange:{0, v31}];
              v33 = [v32 mutableCopy];
              [v39 addObjectsFromArray:v33];
            }
          }

          v40 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v40);
      }
    }

    [v39 addObject:v2->_disabledApplicationsSource];
    [v39 addObject:v2->_appStoreApplicationsSource];
    v34 = [v39 copy];
    outlineSections = v2->super._outlineSections;
    v2->super._outlineSections = v34;

    v41.receiver = v2;
    v41.super_class = RideBookingOutlineController;
    [(RoutePlanningOutlineController *)&v41 prepareOutlineSections];
  }

  else
  {
    v36 = v2->super._outlineSections;
    v2->super._outlineSections = &__NSArray0__struct;

    v50.receiver = v2;
    v50.super_class = RideBookingOutlineController;
    [(RoutePlanningOutlineController *)&v50 prepareOutlineSections];
  }
}

- (void)dealloc
{
  v3 = sub_100FB2D54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = RideBookingOutlineController;
  [(RoutePlanningOutlineController *)&v5 dealloc];
}

- (RideBookingOutlineController)initWithCollectionView:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RideBookingOutlineController;
  v5 = [(RoutePlanningOutlineController *)&v25 initWithCollectionView:v4];
  if (v5)
  {
    v6 = sub_100FB2D54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v7 = [objc_opt_class() cellClasses];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100FB3DD4;
    v23[3] = &unk_10165FF20;
    v8 = v4;
    v24 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v23];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [objc_opt_class() headerFooterViewClasses];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = NSStringFromClass(v14);
          [v8 registerClass:v14 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v11);
    }

    v16 = +[LSApplicationWorkspace defaultWorkspace];
    [v16 addObserver:v5];

    v17 = objc_alloc_init(NSMutableDictionary);
    [(RideBookingOutlineController *)v5 setApplicationSectionIsExpanded:v17];
  }

  return v5;
}

+ (id)headerFooterViewClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)cellClasses
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10[0] = v3;
  v11[0] = objc_opt_class();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10[1] = v5;
  v11[1] = objc_opt_class();
  v10[2] = @"RideBooking";
  v11[2] = objc_opt_class();
  v10[3] = @"RideBookingAX";
  v11[3] = objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10[4] = v7;
  v11[4] = objc_opt_class();
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end