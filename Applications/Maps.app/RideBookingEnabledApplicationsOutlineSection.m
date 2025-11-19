@interface RideBookingEnabledApplicationsOutlineSection
- (RideBookingEnabledApplicationsOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4;
- (RideBookingOutlineController)parentDataSource;
- (id)cellForItemAtIndexPath:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)configureWithRideBookingRideOptionState:(id)a3;
- (void)ridesharingAppActionCollectionViewCellDidPerformAction:(id)a3;
- (void)ridesharingAppLargeIconTableViewCell:(id)a3 didSelectActionButton:(id)a4;
@end

@implementation RideBookingEnabledApplicationsOutlineSection

- (RideBookingOutlineController)parentDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);

  return WeakRetained;
}

- (void)ridesharingAppActionCollectionViewCellDidPerformAction:(id)a3
{
  v4 = a3;
  v14 = [v4 status];
  v5 = [v4 titleType];

  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    v9 = +[MKMapService sharedService];
    v10 = [v14 application];
    v11 = [v10 name];
    [v9 captureUserAction:14008 onTarget:1401 eventValue:v11];

    v8 = [(RideBookingEnabledApplicationsOutlineSection *)self parentDataSource];
    v12 = [v8 delegate];
    v13 = [(RideBookingEnabledApplicationsOutlineSection *)self parentDataSource];
    [v12 dataSourceRequiresReload:v13];
  }

  else
  {
    v6 = [v14 application];
    v7 = [v14 userActivity];
    [RideBookingDataCoordinator openRideBookingApplication:v6 withUserActivity:v7];

    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:6020 onTarget:304 eventValue:0];
  }

LABEL_6:
}

- (void)ridesharingAppLargeIconTableViewCell:(id)a3 didSelectActionButton:(id)a4
{
  v5 = [a3 applicationIdentifer];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) application];
          v12 = [v11 identifier];
          v13 = [v12 isEqualToString:v5];

          if (v13)
          {
            v14 = [(RideBookingEnabledApplicationsOutlineSection *)self parentDataSource];
            v15 = [v14 delegate];
            [v15 didSelectFeedbackWithAppIdentifier:v5];

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)configureWithRideBookingRideOptionState:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 rideOptionStatusMap];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 application];
        if ([v12 enabled])
        {
          v13 = [v11 rideOptions];
          v14 = [v13 count];

          if (!v14)
          {
            [v4 addObject:v11];
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v3 installedSuggestions];
  v16 = [RidesharingAppPreferenceManager sortedRideOptionStatuses:v4 withStoreOrdering:v15];
  [(RideBookingEnabledApplicationsOutlineSection *)self setEnabledApplicationsStatuses:v16];
}

- (int64_t)numberOfSections
{
  v2 = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v3 = [v2 count];

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v5 = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v8 = [v7 objectAtIndex:a3];

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

- (id)cellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RideBookingEnabledApplicationsOutlineSection *)self enabledApplicationsStatuses];
  v6 = [v5 objectAtIndex:{objc_msgSend(v4, "section")}];

  if ([v6 loadingRideOptions])
  {
    collectionView = self->super._collectionView;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v4];

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

  if ([v6 rideOptionStatusError] && !objc_msgSend(v4, "row"))
  {
    v24 = self->super._collectionView;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [(UICollectionView *)v24 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v4];

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

  if ([v4 row] == 1)
  {
    v15 = self->super._collectionView;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [(UICollectionView *)v15 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v4];

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
    v23 = [[NSString alloc] initWithFormat:@"We shouldn't get here. Row: %lu, Section: %lu, Status: %@", objc_msgSend(v4, "row"), objc_msgSend(v4, "section"), v6];
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

- (RideBookingEnabledApplicationsOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = RideBookingEnabledApplicationsOutlineSection;
  return [(RoutePlanningOutlineSection *)&v5 initWithCollectionView:a3 sectionIdentifier:a4];
}

@end