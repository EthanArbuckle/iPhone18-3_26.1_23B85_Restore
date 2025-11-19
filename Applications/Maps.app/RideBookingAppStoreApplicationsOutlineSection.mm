@interface RideBookingAppStoreApplicationsOutlineSection
- (RideBookingOutlineController)parentDataSource;
- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4;
- (id)cellForItemAtIndexPath:(id)a3;
- (id)viewForHeaderInSection:(int64_t)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)configureWithRideBookingRideOptionState:(id)a3;
- (void)didSelectItemAtIndexPath:(id)a3;
- (void)ridesharingAppLargeIconTableViewCell:(id)a3 didSelectActionButton:(id)a4;
- (void)ridesharingEnableAllAppsTableViewCellDidPerformEnableCommand:(id)a3;
@end

@implementation RideBookingAppStoreApplicationsOutlineSection

- (RideBookingOutlineController)parentDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);

  return WeakRetained;
}

- (void)configureWithRideBookingRideOptionState:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 rideOptionStatusMap];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [*(*(&v21 + 1) + 8 * v12) application];
        v14 = [v13 enabled];

        v9 += v14 ^ 1;
        v10 += v14;
        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
    v15 = v10 == 0;
  }

  else
  {
    v9 = 0;
    v15 = 1;
  }

  if (v9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (!v9)
  {
    v15 = 0;
  }

  [(RideBookingAppStoreApplicationsOutlineSection *)self setOnlyAppStoreSuggestionsSection:v16];
  v17 = [v4 appStoreSuggestions];
  [(RideBookingAppStoreApplicationsOutlineSection *)self setAppStoreSuggestions:v17];

  BOOL = GEOConfigGetBOOL();
  LOBYTE(v17) = BOOL;
  [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldHideAppStoreSuggestionsSection:v15 & (BOOL ^ 1u)];
  if (v17)
  {
    [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldShowEnableAppsCell:0];
  }

  else
  {
    v19 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
    if ([v19 count])
    {
      v20 = [(RideBookingAppStoreApplicationsOutlineSection *)self onlyAppStoreSuggestionsSection];
    }

    else
    {
      v20 = 0;
    }

    [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldShowEnableAppsCell:v20];
  }
}

- (void)ridesharingAppLargeIconTableViewCell:(id)a3 didSelectActionButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:14001 onTarget:304 eventValue:0];

  v9 = [v6 applicationIdentifer];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100674524;
  v26 = sub_100674534;
  v27 = 0;
  v10 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10067453C;
  v19 = &unk_101625570;
  v11 = v9;
  v20 = v11;
  v21 = &v22;
  [v10 enumerateObjectsUsingBlock:&v16];

  v12 = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource:v16];
  v13 = [v12 delegate];
  v14 = [v23[5] identifier];
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue]);
  [v13 didSelectAppStoreSuggestionWithIdentifier:v15];

  _Block_object_dispose(&v22, 8);
}

- (void)ridesharingEnableAllAppsTableViewCellDidPerformEnableCommand:(id)a3
{
  GEOConfigSetBOOL();
  [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldShowEnableAppsCell:0];
  v6 = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource];
  v4 = [v6 delegate];
  v5 = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource];
  [v4 dataSourceRequiresReload:v5];
}

- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4
{
  v5 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions:a3];
  if (![v5 count] || -[RideBookingAppStoreApplicationsOutlineSection shouldHideAppStoreSuggestionsSection](self, "shouldHideAppStoreSuggestionsSection"))
  {

    return 0.0;
  }

  v7 = [(RideBookingAppStoreApplicationsOutlineSection *)self onlyAppStoreSuggestionsSection];

  result = 10.0;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

- (id)viewForHeaderInSection:(int64_t)a3
{
  v5 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  if (![v5 count] || -[RideBookingAppStoreApplicationsOutlineSection shouldHideAppStoreSuggestionsSection](self, "shouldHideAppStoreSuggestionsSection"))
  {
    v6 = 0;
LABEL_4:

    goto LABEL_5;
  }

  v8 = [(RideBookingAppStoreApplicationsOutlineSection *)self onlyAppStoreSuggestionsSection];

  if ((v8 & 1) == 0)
  {
    collectionView = self->super._collectionView;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [NSIndexPath indexPathForItem:0 inSection:a3];
    v6 = [(UICollectionView *)collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v11 forIndexPath:v12];

    v5 = +[NSBundle mainBundle];
    v13 = [v5 localizedStringForKey:@"App Store [Ridesharing]" value:@"localized string not found" table:0];
    [RidesharingAppSelectionSectionHeaderViewComposer configureHeader:v6 withPrimaryText:v13];

    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (void)didSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  v6 = [v4 row];

  v11 = [v5 objectAtIndex:v6];

  v7 = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource];
  v8 = [v7 delegate];
  v9 = [v11 identifier];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue]);
  [v8 didSelectAppStoreSuggestionWithIdentifier:v10];
}

- (int64_t)numberOfSections
{
  v3 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  if ([v3 count])
  {
    v4 = [(RideBookingAppStoreApplicationsOutlineSection *)self shouldHideAppStoreSuggestionsSection];

    return v4 ^ 1;
  }

  else
  {

    return 0;
  }
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if ([(RideBookingAppStoreApplicationsOutlineSection *)self shouldShowEnableAppsCell])
  {
    return 1;
  }

  v5 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  v6 = [v5 count];

  return v6;
}

- (id)cellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (-[RideBookingAppStoreApplicationsOutlineSection shouldShowEnableAppsCell](self, "shouldShowEnableAppsCell") && ![v4 row])
  {
    collectionView = self->super._collectionView;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:v4];

    [v19 setDelegate:self];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100674BCC;
    v23[3] = &unk_101661B18;
    v14 = v19;
    v24 = v14;
    [UIView performWithoutAnimation:v23];
    v12 = v24;
  }

  else
  {
    v5 = self->super._collectionView;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(UICollectionView *)v5 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v4];

    [v8 setDelegate:self];
    v9 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
    v10 = [v9 objectAtIndex:{objc_msgSend(v4, "row")}];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100674BD8;
    v20[3] = &unk_101661A90;
    v11 = v8;
    v21 = v11;
    v22 = v10;
    v12 = v10;
    [UIView performWithoutAnimation:v20];
    v13 = v22;
    v14 = v11;
  }

  return v14;
}

@end