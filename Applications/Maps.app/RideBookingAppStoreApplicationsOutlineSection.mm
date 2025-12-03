@interface RideBookingAppStoreApplicationsOutlineSection
- (RideBookingOutlineController)parentDataSource;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (id)cellForItemAtIndexPath:(id)path;
- (id)viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)configureWithRideBookingRideOptionState:(id)state;
- (void)didSelectItemAtIndexPath:(id)path;
- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button;
- (void)ridesharingEnableAllAppsTableViewCellDidPerformEnableCommand:(id)command;
@end

@implementation RideBookingAppStoreApplicationsOutlineSection

- (RideBookingOutlineController)parentDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);

  return WeakRetained;
}

- (void)configureWithRideBookingRideOptionState:(id)state
{
  stateCopy = state;
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
    v10 = 0;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        application = [*(*(&v21 + 1) + 8 * v12) application];
        enabled = [application enabled];

        v9 += enabled ^ 1;
        v10 += enabled;
        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  appStoreSuggestions = [stateCopy appStoreSuggestions];
  [(RideBookingAppStoreApplicationsOutlineSection *)self setAppStoreSuggestions:appStoreSuggestions];

  BOOL = GEOConfigGetBOOL();
  LOBYTE(appStoreSuggestions) = BOOL;
  [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldHideAppStoreSuggestionsSection:v15 & (BOOL ^ 1u)];
  if (appStoreSuggestions)
  {
    [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldShowEnableAppsCell:0];
  }

  else
  {
    appStoreSuggestions2 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
    if ([appStoreSuggestions2 count])
    {
      onlyAppStoreSuggestionsSection = [(RideBookingAppStoreApplicationsOutlineSection *)self onlyAppStoreSuggestionsSection];
    }

    else
    {
      onlyAppStoreSuggestionsSection = 0;
    }

    [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldShowEnableAppsCell:onlyAppStoreSuggestionsSection];
  }
}

- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button
{
  cellCopy = cell;
  buttonCopy = button;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:14001 onTarget:304 eventValue:0];

  applicationIdentifer = [cellCopy applicationIdentifer];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100674524;
  v26 = sub_100674534;
  v27 = 0;
  appStoreSuggestions = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10067453C;
  v19 = &unk_101625570;
  v11 = applicationIdentifer;
  v20 = v11;
  v21 = &v22;
  [appStoreSuggestions enumerateObjectsUsingBlock:&v16];

  v12 = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource:v16];
  delegate = [v12 delegate];
  identifier = [v23[5] identifier];
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [identifier integerValue]);
  [delegate didSelectAppStoreSuggestionWithIdentifier:v15];

  _Block_object_dispose(&v22, 8);
}

- (void)ridesharingEnableAllAppsTableViewCellDidPerformEnableCommand:(id)command
{
  GEOConfigSetBOOL();
  [(RideBookingAppStoreApplicationsOutlineSection *)self setShouldShowEnableAppsCell:0];
  parentDataSource = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource];
  delegate = [parentDataSource delegate];
  parentDataSource2 = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource];
  [delegate dataSourceRequiresReload:parentDataSource2];
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  v5 = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions:view];
  if (![v5 count] || -[RideBookingAppStoreApplicationsOutlineSection shouldHideAppStoreSuggestionsSection](self, "shouldHideAppStoreSuggestionsSection"))
  {

    return 0.0;
  }

  onlyAppStoreSuggestionsSection = [(RideBookingAppStoreApplicationsOutlineSection *)self onlyAppStoreSuggestionsSection];

  result = 10.0;
  if (onlyAppStoreSuggestionsSection)
  {
    return 0.0;
  }

  return result;
}

- (id)viewForHeaderInSection:(int64_t)section
{
  appStoreSuggestions = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  if (![appStoreSuggestions count] || -[RideBookingAppStoreApplicationsOutlineSection shouldHideAppStoreSuggestionsSection](self, "shouldHideAppStoreSuggestionsSection"))
  {
    v6 = 0;
LABEL_4:

    goto LABEL_5;
  }

  onlyAppStoreSuggestionsSection = [(RideBookingAppStoreApplicationsOutlineSection *)self onlyAppStoreSuggestionsSection];

  if ((onlyAppStoreSuggestionsSection & 1) == 0)
  {
    collectionView = self->super._collectionView;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [NSIndexPath indexPathForItem:0 inSection:section];
    v6 = [(UICollectionView *)collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v11 forIndexPath:v12];

    appStoreSuggestions = +[NSBundle mainBundle];
    v13 = [appStoreSuggestions localizedStringForKey:@"App Store [Ridesharing]" value:@"localized string not found" table:0];
    [RidesharingAppSelectionSectionHeaderViewComposer configureHeader:v6 withPrimaryText:v13];

    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (void)didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  appStoreSuggestions = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  v6 = [pathCopy row];

  v11 = [appStoreSuggestions objectAtIndex:v6];

  parentDataSource = [(RideBookingAppStoreApplicationsOutlineSection *)self parentDataSource];
  delegate = [parentDataSource delegate];
  identifier = [v11 identifier];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [identifier integerValue]);
  [delegate didSelectAppStoreSuggestionWithIdentifier:v10];
}

- (int64_t)numberOfSections
{
  appStoreSuggestions = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  if ([appStoreSuggestions count])
  {
    shouldHideAppStoreSuggestionsSection = [(RideBookingAppStoreApplicationsOutlineSection *)self shouldHideAppStoreSuggestionsSection];

    return shouldHideAppStoreSuggestionsSection ^ 1;
  }

  else
  {

    return 0;
  }
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if ([(RideBookingAppStoreApplicationsOutlineSection *)self shouldShowEnableAppsCell])
  {
    return 1;
  }

  appStoreSuggestions = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
  v6 = [appStoreSuggestions count];

  return v6;
}

- (id)cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[RideBookingAppStoreApplicationsOutlineSection shouldShowEnableAppsCell](self, "shouldShowEnableAppsCell") && ![pathCopy row])
  {
    collectionView = self->super._collectionView;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:pathCopy];

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
    v8 = [(UICollectionView *)v5 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

    [v8 setDelegate:self];
    appStoreSuggestions = [(RideBookingAppStoreApplicationsOutlineSection *)self appStoreSuggestions];
    v10 = [appStoreSuggestions objectAtIndex:{objc_msgSend(pathCopy, "row")}];

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