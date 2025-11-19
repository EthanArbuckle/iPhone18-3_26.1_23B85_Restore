@interface ParkedCarHeaderSectionController
- (ParkedCarHeaderSectionController)initWithParkedCar:(id)a3;
- (id)_headerSubtitle;
- (void)_commonInit;
- (void)setActive:(BOOL)a3;
- (void)updateFromParkedCar;
@end

@implementation ParkedCarHeaderSectionController

- (void)setActive:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ParkedCarHeaderSectionController;
  [(ParkedCarHeaderSectionController *)&v4 setActive:a3];
  if ([(ParkedCarHeaderSectionController *)self isActive])
  {
    [(ParkedCarHeaderSectionController *)self updateFromParkedCar];
  }
}

- (id)_headerSubtitle
{
  v3 = [(ParkedCarSectionController *)self parkedCar];
  v4 = [v3 locationName];

  v5 = +[MKLocationManager sharedLocationManager];
  v6 = [v5 lastLocation];

  if (!v6)
  {
    goto LABEL_9;
  }

  [v6 coordinate];
  v8 = 0;
  if (fabs(v9) > 180.0 || v7 < -90.0 || v7 > 90.0)
  {
    goto LABEL_10;
  }

  v10 = +[MKLocationManager sharedLocationManager];
  v11 = [v10 isAuthorizedForPreciseLocation];

  if (!v11)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  [v6 coordinate];
  v12 = [(ParkedCarSectionController *)self parkedCar];
  [v12 coordinate];
  GEOCalculateDistance();
  v14 = v13;

  distanceFormatter = self->_distanceFormatter;
  if (!distanceFormatter)
  {
    v16 = objc_alloc_init(MKDistanceFormatter);
    v17 = self->_distanceFormatter;
    self->_distanceFormatter = v16;

    [(MKDistanceFormatter *)self->_distanceFormatter setUnitStyle:1];
    distanceFormatter = self->_distanceFormatter;
  }

  v8 = [(MKDistanceFormatter *)distanceFormatter stringFromDistance:v14];
LABEL_10:
  if ([v4 length])
  {
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"Near %@ [ParkedCar Place Card]" value:@"localized string not found" table:0];
    v20 = [NSString stringWithFormat:v19, v4];

    if (!v8)
    {
      goto LABEL_17;
    }

    if (v20)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"PARKED_CAR_PLACE_CARD_LOCATION_AND_DISTANCE" value:@"localized string not found" table:0];
      v23 = [NSString stringWithFormat:v22, v20, v8];

      v20 = v23;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v8)
  {
LABEL_15:
    v20 = v8;
    goto LABEL_17;
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (void)updateFromParkedCar
{
  v3 = [ParkedCarHeaderViewModel alloc];
  v6 = [(ParkedCarSectionController *)self parkedCar];
  v4 = [(ParkedCarHeaderSectionController *)self _headerSubtitle];
  v5 = [(ParkedCarHeaderViewModel *)v3 initWithParkedCar:v6 subtitleText:v4];
  [(MUPlaceHeaderView *)self->_headerView setViewModel:v5];
}

- (void)_commonInit
{
  v3 = [ParkedCarHeaderViewModel alloc];
  v4 = [(ParkedCarSectionController *)self parkedCar];
  v5 = [(ParkedCarHeaderSectionController *)self _headerSubtitle];
  v8 = [(ParkedCarHeaderViewModel *)v3 initWithParkedCar:v4 subtitleText:v5];

  v6 = [[MUPlaceHeaderView alloc] initWithViewModel:v8 trailingConstraintProvider:&stru_101631620 paddingConstraintProvider:&stru_101631640];
  headerView = self->_headerView;
  self->_headerView = v6;
}

- (ParkedCarHeaderSectionController)initWithParkedCar:(id)a3
{
  v6.receiver = self;
  v6.super_class = ParkedCarHeaderSectionController;
  v3 = [(ParkedCarSectionController *)&v6 initWithParkedCar:a3];
  v4 = v3;
  if (v3)
  {
    [(ParkedCarHeaderSectionController *)v3 _commonInit];
  }

  return v4;
}

@end