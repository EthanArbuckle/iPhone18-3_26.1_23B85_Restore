@interface MapViewCell
- (MapViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)updateLastLocationSent;
- (void)updateLastLocationSentWithLocation:(id)location;
- (void)updateMap;
@end

@implementation MapViewCell

- (MapViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v26.receiver = self;
  v26.super_class = MapViewCell;
  v5 = [(MapViewCell *)&v26 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [MKMapView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    mapView = v5->_mapView;
    v5->_mapView = v10;

    [(MKMapView *)v5->_mapView setUserInteractionEnabled:1];
    [(MKMapView *)v5->_mapView setDelegate:v5];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    locationNotAvailableLabel = v5->_locationNotAvailableLabel;
    v5->_locationNotAvailableLabel = v12;

    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v5->_locationNotAvailableLabel setFont:v14];

    v15 = +[UIColor grayColor];
    [(UILabel *)v5->_locationNotAvailableLabel setTextColor:v15];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"LOCATION_NOT_AVAILABLE" value:&stru_216E8 table:@"SOSSettings"];
    [(UILabel *)v5->_locationNotAvailableLabel setText:v17];

    [(UILabel *)v5->_locationNotAvailableLabel setAlpha:0.0];
    [(UILabel *)v5->_locationNotAvailableLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_locationNotAvailableLabel sizeToFit];
    [(MapViewCell *)v5 addSubview:v5->_locationNotAvailableLabel];
    centerXAnchor = [(UILabel *)v5->_locationNotAvailableLabel centerXAnchor];
    centerXAnchor2 = [(MapViewCell *)v5 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v20 setActive:1];

    centerYAnchor = [(UILabel *)v5->_locationNotAvailableLabel centerYAnchor];
    centerYAnchor2 = [(MapViewCell *)v5 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v23 setActive:1];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_37A0, @"SOSMostRecentLocationSentChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(MapViewCell *)v5 updateLastLocationSent];
    [(MapViewCell *)v5 setBackgroundView:v5->_mapView];
    [(MapViewCell *)v5 setUserInteractionEnabled:1];
  }

  return v5;
}

- (void)updateLastLocationSent
{
  v3 = +[SOSManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3838;
  v4[3] = &unk_20E80;
  v4[4] = self;
  [v3 mostRecentLocationSentWithCompletion:v4];
}

- (void)updateLastLocationSentWithLocation:(id)location
{
  objc_storeStrong(&self->_lastLocationSent, location);

  [(MapViewCell *)self updateMap];
}

- (void)updateMap
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3900;
  block[3] = &unk_20E08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end