@interface TransitItemIncidentCollectionViewCell
- (TransitItemIncidentCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureWithIncidents:(id)incidents referenceDate:(id)date;
- (void)updateTheme;
@end

@implementation TransitItemIncidentCollectionViewCell

- (void)updateTheme
{
  v3.receiver = self;
  v3.super_class = TransitItemIncidentCollectionViewCell;
  [(MapsThemeCollectionViewCell *)&v3 updateTheme];
  [(MKTransitItemIncidentView *)self->_incidentView infoCardThemeChanged];
}

- (void)configureWithIncidents:(id)incidents referenceDate:(id)date
{
  incidentsCopy = incidents;
  dateCopy = date;
  if ([incidentsCopy count] < 2)
  {
    firstObject = [incidentsCopy firstObject];
    [(MKTransitItemIncidentView *)self->_incidentView configureWithIncident:firstObject referenceDate:dateCopy shouldShowImage:1 inSiri:0];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100F9DD84;
    v16 = sub_100F9DD94;
    firstObject2 = [incidentsCopy firstObject];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100F9DD9C;
    v11[3] = &unk_10165F9A0;
    v11[4] = &v12;
    [incidentsCopy enumerateObjectsUsingBlock:v11];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Transit Schedules] Multiple incidents" value:@"localized string not found" table:0];

    [(MKTransitItemIncidentView *)self->_incidentView configureWithMessage:v9 incident:v13[5] referenceDate:dateCopy shouldShowImage:1 inSiri:0];
    _Block_object_dispose(&v12, 8);
  }

  [(MKTransitItemIncidentView *)self->_incidentView setCellPosition:0];
  [(TransitItemIncidentCollectionViewCell *)self invalidateIntrinsicContentSize];
}

- (TransitItemIncidentCollectionViewCell)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = TransitItemIncidentCollectionViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitItemIncidentCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MKTransitItemIncidentView);
    incidentView = v3->_incidentView;
    v3->_incidentView = v5;

    contentView = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_incidentView];

    [(MKTransitItemIncidentView *)v3->_incidentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKTransitItemIncidentView *)v3->_incidentView setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    leadingAnchor = [(MKTransitItemIncidentView *)v3->_incidentView leadingAnchor];
    contentView2 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v27[0] = v22;
    trailingAnchor = [(MKTransitItemIncidentView *)v3->_incidentView trailingAnchor];
    contentView3 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[1] = v18;
    topAnchor = [(MKTransitItemIncidentView *)v3->_incidentView topAnchor];
    contentView4 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[2] = v11;
    bottomAnchor = [(MKTransitItemIncidentView *)v3->_incidentView bottomAnchor];
    contentView5 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[3] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

@end