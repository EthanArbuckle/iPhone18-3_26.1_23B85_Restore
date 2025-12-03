@interface RideBookingRideOptionSection
- (BOOL)isLastRideOptionInSection;
- (RideBookingOutlineController)parentDataSource;
- (RideBookingRideOption)rideBookingRideOption;
- (RideBookingRideOptionSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier;
- (RideBookingRideOptionSectionDelegate)delegate;
- (double)estimatedItemHeight;
- (id)cellForItemAtIndexPath:(id)path;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (void)didSelectItemAtIndexPath:(id)path;
- (void)ridesharingAppActionCollectionViewCellDidPerformAction:(id)action;
- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button;
@end

@implementation RideBookingRideOptionSection

- (RideBookingRideOptionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RideBookingOutlineController)parentDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);

  return WeakRetained;
}

- (RideBookingRideOption)rideBookingRideOption
{
  rideBookingRideOptionIndex = [(RideBookingRideOptionSection *)self rideBookingRideOptionIndex];
  rideBookingRideOptions = [(RideBookingRideOptionSection *)self rideBookingRideOptions];
  v5 = [rideBookingRideOptions count];

  if (rideBookingRideOptionIndex >= v5)
  {
    v7 = 0;
  }

  else
  {
    rideBookingRideOptions2 = [(RideBookingRideOptionSection *)self rideBookingRideOptions];
    v7 = [rideBookingRideOptions2 objectAtIndex:{-[RideBookingRideOptionSection rideBookingRideOptionIndex](self, "rideBookingRideOptionIndex")}];
  }

  return v7;
}

- (BOOL)isLastRideOptionInSection
{
  applicationSectionIsExpanded = [(RideBookingRideOptionSection *)self applicationSectionIsExpanded];
  adjustedSectionOffset = self->_adjustedSectionOffset;
  if ((applicationSectionIsExpanded & 1) == 0 && adjustedSectionOffset == 2)
  {
    return 1;
  }

  rideOptions = [(RideBookingRideOptionStatus *)self->_rideBookingRideOptionStatus rideOptions];
  v5 = adjustedSectionOffset == [rideOptions count] - 1;

  return v5;
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

    delegate = [(RideBookingRideOptionSection *)self delegate];
    application = [status application];
    identifier = [application identifier];
    [delegate didExpandSection:identifier];

    v12 = +[MKMapService sharedService];
    application2 = [status application];
    name = [application2 name];
    [v12 captureUserAction:14008 onTarget:1401 eventValue:name];

    parentDataSource = [(RideBookingRideOptionSection *)self parentDataSource];
    delegate2 = [parentDataSource delegate];
    parentDataSource2 = [(RideBookingRideOptionSection *)self parentDataSource];
    [delegate2 dataSourceRequiresReload:parentDataSource2];
  }

  else
  {
    application3 = [status application];
    userActivity = [status userActivity];
    [RideBookingDataCoordinator openRideBookingApplication:application3 withUserActivity:userActivity];

    parentDataSource = +[MKMapService sharedService];
    [parentDataSource captureUserAction:6020 onTarget:304 eventValue:0];
  }

LABEL_6:
}

- (void)ridesharingAppLargeIconTableViewCell:(id)cell didSelectActionButton:(id)button
{
  v9 = [(RideBookingRideOptionSection *)self parentDataSource:cell];
  delegate = [v9 delegate];
  rideBookingRideOptionStatus = [(RideBookingRideOptionSection *)self rideBookingRideOptionStatus];
  application = [rideBookingRideOptionStatus application];
  identifier = [application identifier];
  [delegate didSelectFeedbackWithAppIdentifier:identifier];
}

- (void)didSelectItemAtIndexPath:(id)path
{
  rideBookingRideOption = [(RideBookingRideOptionSection *)self rideBookingRideOption];

  if (rideBookingRideOption)
  {
    parentDataSource = [(RideBookingRideOptionSection *)self parentDataSource];
    delegate = [parentDataSource delegate];
    rideBookingRideOption2 = [(RideBookingRideOptionSection *)self rideBookingRideOption];
    [delegate didSelectRideOption:rideBookingRideOption2];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/TableViewDataSources/RideBookingRideOptionSection.m");
      v9 = [[NSString alloc] initWithFormat:@"No ride option found"];
      *buf = 136315394;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }
  }
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v12.receiver = self;
  v12.super_class = RideBookingRideOptionSection;
  v7 = [(RoutePlanningOutlineSection *)&v12 listLayoutSectionConfigurationAtIndex:index layoutEnvironment:environmentCopy];
  [v7 setSeparatorStyle:{-[RideBookingRideOptionSection isLastRideOptionInSection](self, "isLastRideOptionInSection")}];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EA9CA0;
  v10[3] = &unk_101657728;
  v11 = environmentCopy;
  v8 = environmentCopy;
  [v7 setSeparatorInsetProvider:v10];

  return v7;
}

- (double)estimatedItemHeight
{
  rideBookingRideOption = [(RideBookingRideOptionSection *)self rideBookingRideOption];

  if (rideBookingRideOption)
  {
    v4 = [[RouteOverviewCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(UICollectionView *)self->super._collectionView bounds];
    Width = CGRectGetWidth(v14);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100EA9E48;
    v10[3] = &unk_101661A90;
    v11 = v4;
    selfCopy = self;
    v6 = v4;
    [(RouteOverviewCell *)v6 _maps_compressedSizeForWidth:v10 withBlock:Width];
    v8 = v7;

    return v8;
  }

  else
  {

    +[RouteOverviewCell minimumRidesharingHeight];
  }

  return result;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  rideBookingRideOption = [(RideBookingRideOptionSection *)self rideBookingRideOption];

  if (!rideBookingRideOption)
  {
    return 0;
  }

  if ([(RideBookingRideOptionSection *)self isLastRideOptionInSection])
  {
    return 2;
  }

  return 1;
}

- (id)cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row])
  {
    collectionView = self->super._collectionView;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

    [v8 setDelegate:self];
    if ([(RideBookingRideOptionSection *)self applicationSectionIsExpanded])
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100EAA1F8;
    v19[3] = &unk_10165E668;
    v10 = v20;
    v11 = v8;
    v20[0] = v11;
    v20[1] = self;
    v20[2] = v9;
    v12 = v19;
  }

  else
  {
    if (+[UIFont accessibilityTextEnabled])
    {
      v13 = @"RideBookingAX";
    }

    else
    {
      v13 = @"RideBooking";
    }

    v14 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];

    parentDataSource = [(RideBookingRideOptionSection *)self parentDataSource];
    delegate = [parentDataSource delegate];
    [v14 setDelegate:delegate];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100EAA0F8;
    v21[3] = &unk_101661A90;
    v10 = v22;
    v11 = v14;
    v22[0] = v11;
    v22[1] = self;
    v12 = v21;
  }

  [UIView performWithoutAnimation:v12];
  v17 = v11;

  return v11;
}

- (RideBookingRideOptionSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = RideBookingRideOptionSection;
  return [(RoutePlanningOutlineSection *)&v5 initWithCollectionView:view sectionIdentifier:identifier];
}

@end