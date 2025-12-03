@interface RideBookingDisabledApplicationsOutlineSection
- (RideBookingOutlineController)parentDataSource;
- (id)cellForItemAtIndexPath:(id)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)configureWithRideBookingRideOptionState:(id)state;
- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button;
- (void)ridesharingEnableAllAppsTableViewCellDidPerformEnableCommand:(id)command;
@end

@implementation RideBookingDisabledApplicationsOutlineSection

- (RideBookingOutlineController)parentDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);

  return WeakRetained;
}

- (void)ridesharingEnableAllAppsTableViewCellDidPerformEnableCommand:(id)command
{
  GEOConfigSetBOOL();
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:14007 onTarget:1401 eventValue:0];

  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  disabledApplicationsStatuses = [(RideBookingDisabledApplicationsOutlineSection *)self disabledApplicationsStatuses];
  v7 = [disabledApplicationsStatuses countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(disabledApplicationsStatuses);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        application = [v11 application];

        if (application)
        {
          application2 = [v11 application];
          [v5 addObject:application2];
        }
      }

      v8 = [disabledApplicationsStatuses countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = +[RideBookingAccessProxy coordinator];
  [v14 enableRideBookingApplications:v5];
}

- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button
{
  applicationIdentifer = [cell applicationIdentifer];
  if (applicationIdentifer)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    disabledApplicationsStatuses = [(RideBookingDisabledApplicationsOutlineSection *)self disabledApplicationsStatuses];
    v7 = [disabledApplicationsStatuses countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(disabledApplicationsStatuses);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          application = [v11 application];
          identifier = [application identifier];
          v14 = [identifier isEqualToString:applicationIdentifer];

          if (v14)
          {
            v15 = +[MKMapService sharedService];
            [v15 captureUserAction:14002 onTarget:304 eventValue:0];

            v16 = +[RideBookingAccessProxy coordinator];
            application2 = [v11 application];
            v23 = application2;
            v18 = [NSArray arrayWithObjects:&v23 count:1];
            [v16 enableRideBookingApplications:v18];

            goto LABEL_12;
          }
        }

        v8 = [disabledApplicationsStatuses countByEnumeratingWithState:&v19 objects:v24 count:16];
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
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  rideOptionStatusMap = [stateCopy rideOptionStatusMap];
  allValues = [rideOptionStatusMap allValues];

  v7 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        application = [v12 application];
        enabled = [application enabled];

        if (enabled)
        {
          v9 = 1;
        }

        else
        {
          [v4 addObject:v12];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  installedSuggestions = [stateCopy installedSuggestions];
  v16 = [RidesharingAppPreferenceManager sortedRideOptionStatuses:v4 withStoreOrdering:installedSuggestions];
  [(RideBookingDisabledApplicationsOutlineSection *)self setDisabledApplicationsStatuses:v16];

  BOOL = GEOConfigGetBOOL();
  if (v9)
  {
    [(RideBookingDisabledApplicationsOutlineSection *)self setShouldShowEnableAppsCell:0];
  }

  else
  {
    v18 = BOOL;
    disabledApplicationsStatuses = [(RideBookingDisabledApplicationsOutlineSection *)self disabledApplicationsStatuses];
    -[RideBookingDisabledApplicationsOutlineSection setShouldShowEnableAppsCell:](self, "setShouldShowEnableAppsCell:", ([disabledApplicationsStatuses count] != 0) & (v18 ^ 1u));
  }
}

- (int64_t)numberOfSections
{
  disabledApplicationsStatuses = [(RideBookingDisabledApplicationsOutlineSection *)self disabledApplicationsStatuses];
  v3 = [disabledApplicationsStatuses count] != 0;

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  disabledApplicationsStatuses = [(RideBookingDisabledApplicationsOutlineSection *)self disabledApplicationsStatuses];
  v5 = [disabledApplicationsStatuses count];
  v6 = v5 + [(RideBookingDisabledApplicationsOutlineSection *)self shouldShowEnableAppsCell];

  return v6;
}

- (id)cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if (![(RideBookingDisabledApplicationsOutlineSection *)self shouldShowEnableAppsCell])
  {
    goto LABEL_4;
  }

  if (v5)
  {
    --v5;
LABEL_4:
    disabledApplicationsStatuses = [(RideBookingDisabledApplicationsOutlineSection *)self disabledApplicationsStatuses];
    v7 = [disabledApplicationsStatuses objectAtIndex:v5];

    collectionView = self->super._collectionView;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

    [v11 setDelegate:self];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1009C4364;
    v20[3] = &unk_101661A40;
    v12 = v11;
    v21 = v12;
    v22 = v7;
    selfCopy = self;
    v13 = v7;
    [UIView performWithoutAnimation:v20];
    v14 = v12;

    goto LABEL_5;
  }

  v16 = self->super._collectionView;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [(UICollectionView *)v16 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:pathCopy];

  [v19 setDelegate:self];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1009C4358;
  v24[3] = &unk_101661B18;
  v14 = v19;
  v25 = v14;
  [UIView performWithoutAnimation:v24];
  v13 = v25;
LABEL_5:

  return v14;
}

@end