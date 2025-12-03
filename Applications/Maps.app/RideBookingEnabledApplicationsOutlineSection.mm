@interface RideBookingEnabledApplicationsOutlineSection
- (RideBookingEnabledApplicationsOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier;
- (RideBookingOutlineController)parentDataSource;
- (id)cellForItemAtIndexPath:(id)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)configureWithRideBookingRideOptionState:(id)state;
- (void)ridesharingAppActionCollectionViewCellDidPerformAction:(id)action;
- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button;
@end

@implementation RideBookingEnabledApplicationsOutlineSection

- (RideBookingOutlineController)parentDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);

  return WeakRetained;
}

- (void)ridesharingAppActionCollectionViewCellDidPerformAction:(id)action
{
  actionCopy = action;
  status = [actionCopy status];
  titleType = [actionCopy titleType];

  if (titleType >= 2)
  {
    if (titleType != 2)
    {
      goto LABEL_6;
    }

    v9 = +[MKMapService sharedService];
    application = [status application];
    name = [application name];
    [v9 captureUserAction:14008 onTarget:1401 eventValue:name];

    parentDataSource = [(RideBookingEnabledApplicationsOutlineSection *)self parentDataSource];
    delegate = [parentDataSource delegate];
    parentDataSource2 = [(RideBookingEnabledApplicationsOutlineSection *)self parentDataSource];
    [delegate dataSourceRequiresReload:parentDataSource2];
  }

  else
  {
    application2 = [status application];
    userActivity = [status userActivity];
    [RideBookingDataCoordinator openRideBookingApplication:application2 withUserActivity:userActivity];

    parentDataSource = +[MKMapService sharedService];
    [parentDataSource captureUserAction:6020 onTarget:304 eventValue:0];
  }

LABEL_6:
}

- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button
{
  applicationIdentifer = [cell applicationIdentifer];
  if (applicationIdentifer)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    enabledApplicationsStatuses = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
    v7 = [enabledApplicationsStatuses countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(enabledApplicationsStatuses);
          }

          application = [*(*(&v16 + 1) + 8 * i) application];
          identifier = [application identifier];
          v13 = [identifier isEqualToString:applicationIdentifer];

          if (v13)
          {
            parentDataSource = [(RideBookingEnabledApplicationsOutlineSection *)self parentDataSource];
            delegate = [parentDataSource delegate];
            [delegate didSelectFeedbackWithAppIdentifier:applicationIdentifer];

            goto LABEL_12;
          }
        }

        v8 = [enabledApplicationsStatuses countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)configureWithRideBookingRideOptionState:(id)state
{
  stateCopy = state;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  rideOptionStatusMap = [stateCopy rideOptionStatusMap];
  allValues = [rideOptionStatusMap allValues];

  v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        application = [v11 application];
        if ([application enabled])
        {
          rideOptions = [v11 rideOptions];
          v14 = [rideOptions count];

          if (!v14)
          {
            [v4 addObject:v11];
          }
        }

        else
        {
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  installedSuggestions = [stateCopy installedSuggestions];
  v16 = [RidesharingAppPreferenceManager sortedRideOptionStatuses:v4 withStoreOrdering:installedSuggestions];
  [(RideBookingEnabledApplicationsOutlineSection *)self setEnabledApplicationsStatuses:v16];
}

- (int64_t)numberOfSections
{
  enabledApplicationsStatuses = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v3 = [enabledApplicationsStatuses count];

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  enabledApplicationsStatuses = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v6 = [enabledApplicationsStatuses count];

  if (v6 <= section)
  {
    return 0;
  }

  enabledApplicationsStatuses2 = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v8 = [enabledApplicationsStatuses2 objectAtIndex:section];

  if ([v8 loadingRideOptions])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * ([v8 rideOptionStatusError] != 0);
  }

  return v9;
}

- (id)cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  enabledApplicationsStatuses = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v6 = [enabledApplicationsStatuses objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v6 loadingRideOptions])
  {
    collectionView = self->super._collectionView;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100790228;
    v38[3] = &unk_101661A90;
    v11 = v10;
    v39 = v11;
    v40 = v6;
    [UIView performWithoutAnimation:v38];
    v12 = v40;
    v13 = v11;

    v14 = v39;
LABEL_11:

    goto LABEL_12;
  }

  if ([v6 rideOptionStatusError] && !objc_msgSend(pathCopy, "row"))
  {
    v24 = self->super._collectionView;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [(UICollectionView *)v24 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:pathCopy];

    [v27 setDelegate:self];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10079027C;
    v35[3] = &unk_101661A90;
    v28 = v27;
    v36 = v28;
    v37 = v6;
    [UIView performWithoutAnimation:v35];
    v29 = v37;
    v13 = v28;

    v14 = v36;
    goto LABEL_11;
  }

  if ([pathCopy row] == 1)
  {
    v15 = self->super._collectionView;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [(UICollectionView *)v15 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:pathCopy];

    [v18 setDelegate:self];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100790288;
    v31[3] = &unk_10165E668;
    v19 = v18;
    v32 = v19;
    v33 = v6;
    v34 = 0;
    [UIView performWithoutAnimation:v31];
    v20 = v33;
    v13 = v19;

    v14 = v32;
    goto LABEL_11;
  }

  v21 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/TableViewDataSources/RideBookingEnabledApplicationsOutlineSection.m");
    v23 = [[NSString alloc] initWithFormat:@"We shouldn't get here. Row: %lu, Section: %lu, Status: %@", objc_msgSend(pathCopy, "row"), objc_msgSend(pathCopy, "section"), v6];
    *buf = 136315394;
    v42 = v22;
    v43 = 2112;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
  }

  v13 = [[UICollectionViewCell alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
LABEL_12:

  return v13;
}

- (RideBookingEnabledApplicationsOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = RideBookingEnabledApplicationsOutlineSection;
  return [(RoutePlanningOutlineSection *)&v5 initWithCollectionView:view sectionIdentifier:identifier];
}

@end