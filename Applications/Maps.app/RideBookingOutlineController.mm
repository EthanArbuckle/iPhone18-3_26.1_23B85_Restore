@interface RideBookingOutlineController
+ (id)cellClasses;
+ (id)headerFooterViewClasses;
- (RideBookingOutlineController)initWithCollectionView:(id)view;
- (RideBookingRoutePlanningTableViewDataSourceDelegate)delegate;
- (void)_configureRideOptionsSources:(id)sources;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)configureWithRideBookingRideOptionState:(id)state;
- (void)dealloc;
- (void)didExpandSection:(id)section;
- (void)prepareOutlineSections;
- (void)tableViewDismissed;
@end

@implementation RideBookingOutlineController

- (RideBookingRoutePlanningTableViewDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didExpandSection:(id)section
{
  sectionCopy = section;
  applicationSectionIsExpanded = [(RideBookingOutlineController *)self applicationSectionIsExpanded];
  [applicationSectionIsExpanded setObject:&__kCFBooleanTrue forKeyedSubscript:sectionCopy];

  [(RideBookingOutlineController *)self prepareOutlineSections];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v4 = sub_100FB2D54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
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

- (void)applicationsDidInstall:(id)install
{
  v4 = sub_100FB2D54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Table view dismissed", &v5, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  [(RideBookingOutlineController *)self setApplicationSectionIsExpanded:v4];
}

- (void)_configureRideOptionsSources:(id)sources
{
  sourcesCopy = sources;
  v46 = objc_alloc_init(NSMutableArray);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  rideOptionStatusMap = [sourcesCopy rideOptionStatusMap];
  allValues = [rideOptionStatusMap allValues];

  v6 = [allValues countByEnumeratingWithState:&v58 objects:v63 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        application = [v10 application];
        if ([application enabled])
        {
          rideOptions = [v10 rideOptions];
          v13 = [rideOptions count];

          if (v13)
          {
            [v46 addObject:v10];
          }
        }

        else
        {
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v7);
  }

  installedSuggestions = [sourcesCopy installedSuggestions];
  v15 = [RidesharingAppPreferenceManager sortedRideOptionStatuses:v46 withStoreOrdering:installedSuggestions];
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
        application2 = [v22 application];
        identifier = [application2 identifier];

        applicationSectionIsExpanded = [(RideBookingOutlineController *)self applicationSectionIsExpanded];
        v26 = [applicationSectionIsExpanded objectForKey:identifier];

        v50 = v26;
        if (!v26)
        {
          applicationSectionIsExpanded2 = [(RideBookingOutlineController *)self applicationSectionIsExpanded];
          [applicationSectionIsExpanded2 setObject:&__kCFBooleanFalse forKeyedSubscript:identifier];
        }

        v51 = identifier;
        v28 = objc_alloc_init(NSMutableArray);
        rideOptions2 = [v22 rideOptions];
        v30 = [rideOptions2 count];

        if (v30)
        {
          v31 = 0;
          v53 = v28;
          do
          {
            rideOptions3 = [v22 rideOptions];
            v33 = [rideOptions3 objectAtIndex:v31];

            v34 = objc_alloc((p_info + 86));
            [(RoutePlanningOutlineController *)self collectionView];
            v36 = v35 = p_info;
            [v19[459] stringWithFormat:v20, v33];
            selfCopy = self;
            v38 = v20;
            v40 = v39 = v19;
            v41 = [v34 initWithCollectionView:v36 sectionIdentifier:v40];

            v19 = v39;
            v20 = v38;
            self = selfCopy;

            [v41 setParentDataSource:selfCopy];
            [v41 setDelegate:selfCopy];
            rideOptions4 = [v22 rideOptions];
            [v41 setRideBookingRideOptions:rideOptions4];

            p_info = v35;
            v28 = v53;
            [v41 setRideBookingRideOptionIndex:v31];
            [v41 setRideBookingRideOptionStatus:v22];
            [v53 addObject:v41];

            ++v31;
            rideOptions5 = [v22 rideOptions];
            v44 = [rideOptions5 count];
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

- (void)configureWithRideBookingRideOptionState:(id)state
{
  stateCopy = state;
  [(RideBookingOutlineController *)self _configureRideOptionsSources:stateCopy];
  enabledApplicationsSource = [(RideBookingOutlineController *)self enabledApplicationsSource];
  [enabledApplicationsSource configureWithRideBookingRideOptionState:stateCopy];

  disabledApplicationsSource = [(RideBookingOutlineController *)self disabledApplicationsSource];
  [disabledApplicationsSource configureWithRideBookingRideOptionState:stateCopy];

  appStoreApplicationsSource = [(RideBookingOutlineController *)self appStoreApplicationsSource];
  [appStoreApplicationsSource configureWithRideBookingRideOptionState:stateCopy];

  [(RideBookingOutlineController *)self prepareOutlineSections];
  delegate = [(RideBookingOutlineController *)self delegate];
  [delegate dataSourceRequiresReload:self];
}

- (void)prepareOutlineSections
{
  selfCopy = self;
  collectionView = [(RoutePlanningOutlineController *)self collectionView];

  if (collectionView)
  {
    if (!selfCopy->_enabledApplicationsSource)
    {
      v4 = [RideBookingEnabledApplicationsOutlineSection alloc];
      collectionView2 = [(RoutePlanningOutlineController *)selfCopy collectionView];
      v6 = [(RideBookingEnabledApplicationsOutlineSection *)v4 initWithCollectionView:collectionView2 sectionIdentifier:@"EnabledApplications"];
      enabledApplicationsSource = selfCopy->_enabledApplicationsSource;
      selfCopy->_enabledApplicationsSource = v6;

      [(RideBookingEnabledApplicationsOutlineSection *)selfCopy->_enabledApplicationsSource setParentDataSource:selfCopy];
      v8 = [RideBookingDisabledApplicationsOutlineSection alloc];
      collectionView3 = [(RoutePlanningOutlineController *)selfCopy collectionView];
      v10 = [(RoutePlanningOutlineSection *)v8 initWithCollectionView:collectionView3 sectionIdentifier:@"DisabledApps"];
      disabledApplicationsSource = selfCopy->_disabledApplicationsSource;
      selfCopy->_disabledApplicationsSource = v10;

      [(RideBookingDisabledApplicationsOutlineSection *)selfCopy->_disabledApplicationsSource setParentDataSource:selfCopy];
      v12 = [RideBookingAppStoreApplicationsOutlineSection alloc];
      collectionView4 = [(RoutePlanningOutlineController *)selfCopy collectionView];
      v14 = [(RoutePlanningOutlineSection *)v12 initWithCollectionView:collectionView4 sectionIdentifier:@"AppStoreApps"];
      appStoreApplicationsSource = selfCopy->_appStoreApplicationsSource;
      selfCopy->_appStoreApplicationsSource = v14;

      [(RideBookingAppStoreApplicationsOutlineSection *)selfCopy->_appStoreApplicationsSource setParentDataSource:selfCopy];
    }

    v39 = objc_alloc_init(NSMutableArray);
    [v39 addObject:selfCopy->_enabledApplicationsSource];
    if ([(NSMutableDictionary *)selfCopy->_rideOptionsSourcesDictionary count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = selfCopy->_rideOptionsSourcesDictionary;
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
            v18 = [(NSMutableDictionary *)selfCopy->_rideOptionsSourcesDictionary objectForKey:v17];
            v19 = selfCopy;
            applicationSectionIsExpanded = [(RideBookingOutlineController *)selfCopy applicationSectionIsExpanded];
            v21 = [applicationSectionIsExpanded objectForKeyedSubscript:v17];
            bOOLValue = [v21 BOOLValue];

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
                  [v30 setApplicationSectionIsExpanded:bOOLValue];
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

            if (bOOLValue)
            {
              [v39 addObjectsFromArray:v23];
              selfCopy = v19;
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

              selfCopy = v19;
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

    [v39 addObject:selfCopy->_disabledApplicationsSource];
    [v39 addObject:selfCopy->_appStoreApplicationsSource];
    v34 = [v39 copy];
    outlineSections = selfCopy->super._outlineSections;
    selfCopy->super._outlineSections = v34;

    v41.receiver = selfCopy;
    v41.super_class = RideBookingOutlineController;
    [(RoutePlanningOutlineController *)&v41 prepareOutlineSections];
  }

  else
  {
    v36 = selfCopy->super._outlineSections;
    selfCopy->super._outlineSections = &__NSArray0__struct;

    v50.receiver = selfCopy;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = RideBookingOutlineController;
  [(RoutePlanningOutlineController *)&v5 dealloc];
}

- (RideBookingOutlineController)initWithCollectionView:(id)view
{
  viewCopy = view;
  v25.receiver = self;
  v25.super_class = RideBookingOutlineController;
  v5 = [(RoutePlanningOutlineController *)&v25 initWithCollectionView:viewCopy];
  if (v5)
  {
    v6 = sub_100FB2D54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    cellClasses = [objc_opt_class() cellClasses];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100FB3DD4;
    v23[3] = &unk_10165FF20;
    v8 = viewCopy;
    v24 = v8;
    [cellClasses enumerateKeysAndObjectsUsingBlock:v23];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    headerFooterViewClasses = [objc_opt_class() headerFooterViewClasses];
    v10 = [headerFooterViewClasses countByEnumeratingWithState:&v19 objects:v26 count:16];
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
            objc_enumerationMutation(headerFooterViewClasses);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = NSStringFromClass(v14);
          [v8 registerClass:v14 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v15];
        }

        v11 = [headerFooterViewClasses countByEnumeratingWithState:&v19 objects:v26 count:16];
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