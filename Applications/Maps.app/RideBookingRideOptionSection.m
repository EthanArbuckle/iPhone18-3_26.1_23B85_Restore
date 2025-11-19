@interface RideBookingRideOptionSection
- (BOOL)isLastRideOptionInSection;
- (RideBookingOutlineController)parentDataSource;
- (RideBookingRideOption)rideBookingRideOption;
- (RideBookingRideOptionSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4;
- (RideBookingRideOptionSectionDelegate)delegate;
- (double)estimatedItemHeight;
- (id)cellForItemAtIndexPath:(id)a3;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (void)didSelectItemAtIndexPath:(id)a3;
- (void)ridesharingAppActionCollectionViewCellDidPerformAction:(id)a3;
- (void)ridesharingAppLargeIconTableViewCell:(id)a3 didSelectActionButton:(id)a4;
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
  v3 = [(RideBookingRideOptionSection *)self rideBookingRideOptionIndex];
  v4 = [(RideBookingRideOptionSection *)self rideBookingRideOptions];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(RideBookingRideOptionSection *)self rideBookingRideOptions];
    v7 = [v6 objectAtIndex:{-[RideBookingRideOptionSection rideBookingRideOptionIndex](self, "rideBookingRideOptionIndex")}];
  }

  return v7;
}

- (BOOL)isLastRideOptionInSection
{
  v3 = [(RideBookingRideOptionSection *)self applicationSectionIsExpanded];
  adjustedSectionOffset = self->_adjustedSectionOffset;
  if ((v3 & 1) == 0 && adjustedSectionOffset == 2)
  {
    return 1;
  }

  v6 = [(RideBookingRideOptionStatus *)self->_rideBookingRideOptionStatus rideOptions];
  v5 = adjustedSectionOffset == [v6 count] - 1;

  return v5;
}

- (void)ridesharingAppActionCollectionViewCellDidPerformAction:(id)a3
{
  v4 = a3;
  v17 = [v4 status];
  v5 = [v4 titleType];

  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    v9 = [(RideBookingRideOptionSection *)self delegate];
    v10 = [v17 application];
    v11 = [v10 identifier];
    [v9 didExpandSection:v11];

    v12 = +[MKMapService sharedService];
    v13 = [v17 application];
    v14 = [v13 name];
    [v12 captureUserAction:14008 onTarget:1401 eventValue:v14];

    v8 = [(RideBookingRideOptionSection *)self parentDataSource];
    v15 = [v8 delegate];
    v16 = [(RideBookingRideOptionSection *)self parentDataSource];
    [v15 dataSourceRequiresReload:v16];
  }

  else
  {
    v6 = [v17 application];
    v7 = [v17 userActivity];
    [RideBookingDataCoordinator openRideBookingApplication:v6 withUserActivity:v7];

    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:6020 onTarget:304 eventValue:0];
  }

LABEL_6:
}

- (void)ridesharingAppLargeIconTableViewCell:(id)a3 didSelectActionButton:(id)a4
{
  v9 = [(RideBookingRideOptionSection *)self parentDataSource:a3];
  v5 = [v9 delegate];
  v6 = [(RideBookingRideOptionSection *)self rideBookingRideOptionStatus];
  v7 = [v6 application];
  v8 = [v7 identifier];
  [v5 didSelectFeedbackWithAppIdentifier:v8];
}

- (void)didSelectItemAtIndexPath:(id)a3
{
  v4 = [(RideBookingRideOptionSection *)self rideBookingRideOption];

  if (v4)
  {
    v10 = [(RideBookingRideOptionSection *)self parentDataSource];
    v5 = [v10 delegate];
    v6 = [(RideBookingRideOptionSection *)self rideBookingRideOption];
    [v5 didSelectRideOption:v6];
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

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RideBookingRideOptionSection;
  v7 = [(RoutePlanningOutlineSection *)&v12 listLayoutSectionConfigurationAtIndex:a3 layoutEnvironment:v6];
  [v7 setSeparatorStyle:{-[RideBookingRideOptionSection isLastRideOptionInSection](self, "isLastRideOptionInSection")}];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EA9CA0;
  v10[3] = &unk_101657728;
  v11 = v6;
  v8 = v6;
  [v7 setSeparatorInsetProvider:v10];

  return v7;
}

- (double)estimatedItemHeight
{
  v3 = [(RideBookingRideOptionSection *)self rideBookingRideOption];

  if (v3)
  {
    v4 = [[RouteOverviewCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(UICollectionView *)self->super._collectionView bounds];
    Width = CGRectGetWidth(v14);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100EA9E48;
    v10[3] = &unk_101661A90;
    v11 = v4;
    v12 = self;
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

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(RideBookingRideOptionSection *)self rideBookingRideOption];

  if (!v4)
  {
    return 0;
  }

  if ([(RideBookingRideOptionSection *)self isLastRideOptionInSection])
  {
    return 2;
  }

  return 1;
}

- (id)cellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 row])
  {
    collectionView = self->super._collectionView;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v4];

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

    v14 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v4];

    v15 = [(RideBookingRideOptionSection *)self parentDataSource];
    v16 = [v15 delegate];
    [v14 setDelegate:v16];

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

- (RideBookingRideOptionSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = RideBookingRideOptionSection;
  return [(RoutePlanningOutlineSection *)&v5 initWithCollectionView:a3 sectionIdentifier:a4];
}

@end