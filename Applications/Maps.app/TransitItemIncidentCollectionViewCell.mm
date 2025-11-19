@interface TransitItemIncidentCollectionViewCell
- (TransitItemIncidentCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureWithIncidents:(id)a3 referenceDate:(id)a4;
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

- (void)configureWithIncidents:(id)a3 referenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] < 2)
  {
    v10 = [v6 firstObject];
    [(MKTransitItemIncidentView *)self->_incidentView configureWithIncident:v10 referenceDate:v7 shouldShowImage:1 inSiri:0];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100F9DD84;
    v16 = sub_100F9DD94;
    v17 = [v6 firstObject];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100F9DD9C;
    v11[3] = &unk_10165F9A0;
    v11[4] = &v12;
    [v6 enumerateObjectsUsingBlock:v11];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Transit Schedules] Multiple incidents" value:@"localized string not found" table:0];

    [(MKTransitItemIncidentView *)self->_incidentView configureWithMessage:v9 incident:v13[5] referenceDate:v7 shouldShowImage:1 inSiri:0];
    _Block_object_dispose(&v12, 8);
  }

  [(MKTransitItemIncidentView *)self->_incidentView setCellPosition:0];
  [(TransitItemIncidentCollectionViewCell *)self invalidateIntrinsicContentSize];
}

- (TransitItemIncidentCollectionViewCell)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = TransitItemIncidentCollectionViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitItemIncidentCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MKTransitItemIncidentView);
    incidentView = v3->_incidentView;
    v3->_incidentView = v5;

    v7 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_incidentView];

    [(MKTransitItemIncidentView *)v3->_incidentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKTransitItemIncidentView *)v3->_incidentView setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v24 = [(MKTransitItemIncidentView *)v3->_incidentView leadingAnchor];
    v25 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    v23 = [v25 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v27[0] = v22;
    v20 = [(MKTransitItemIncidentView *)v3->_incidentView trailingAnchor];
    v21 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    v19 = [v21 trailingAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v27[1] = v18;
    v8 = [(MKTransitItemIncidentView *)v3->_incidentView topAnchor];
    v9 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    v10 = [v9 topAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v27[2] = v11;
    v12 = [(MKTransitItemIncidentView *)v3->_incidentView bottomAnchor];
    v13 = [(TransitItemIncidentCollectionViewCell *)v3 contentView];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v27[3] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

@end