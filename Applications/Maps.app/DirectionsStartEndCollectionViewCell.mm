@interface DirectionsStartEndCollectionViewCell
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom;
+ (id)reuseIdentifier;
- (DirectionsStartEndCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning;
- (void)prepareForReuse;
@end

@implementation DirectionsStartEndCollectionViewCell

- (void)configureForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning
{
  planningCopy = planning;
  startEndView = self->_startEndView;
  vehicleCopy = vehicle;
  routeCopy = route;
  waypointCopy = waypoint;
  [(DirectionsStartEndContentView *)startEndView bounds];
  [(DirectionsStartEndCollectionViewCell *)self heightForWaypoint:waypointCopy route:routeCopy selectedVehicle:vehicleCopy displayedInRoutePlanning:planningCopy width:CGRectGetWidth(v15)];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
  [(DirectionsStartEndContentView *)self->_startEndView configureForWaypoint:waypointCopy route:routeCopy selectedVehicle:vehicleCopy displayedInRoutePlanning:planningCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = DirectionsStartEndCollectionViewCell;
  [(DirectionsStartEndCollectionViewCell *)&v3 prepareForReuse];
  [(DirectionsStartEndContentView *)self->_startEndView prepareForReuse];
}

- (DirectionsStartEndCollectionViewCell)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = DirectionsStartEndCollectionViewCell;
  v3 = [(DirectionsStartEndCollectionViewCell *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DirectionsStartEndCollectionViewCell *)v3 setAccessibilityIdentifier:@"DirectionsStartEndCell"];
    v5 = objc_alloc([objc_opt_class() startEndViewClass]);
    contentView = [(DirectionsStartEndCollectionViewCell *)v4 contentView];
    [contentView bounds];
    v7 = [v5 initWithFrame:?];
    startEndView = v4->_startEndView;
    v4->_startEndView = v7;

    [(DirectionsStartEndContentView *)v4->_startEndView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(DirectionsStartEndCollectionViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_startEndView];

    v10 = v4->_startEndView;
    contentView3 = [(DirectionsStartEndCollectionViewCell *)v4 contentView];
    LODWORD(v12) = 1148846080;
    v13 = [(DirectionsStartEndContentView *)v10 _maps_constraintsEqualToEdgesOfView:contentView3 priority:v12];
    allConstraints = [v13 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    heightAnchor = [(DirectionsStartEndContentView *)v4->_startEndView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:0.0];
    heightConstraint = v4->_heightConstraint;
    v4->_heightConstraint = v16;

    [RoutingAppearanceManager configureBackgroundViewForStepCell:v4];
  }

  return v4;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom
{
  result = [a2 startEndViewClass];
  if (result)
  {

    return [($8452678F12DBC466148836A9D382CAFC *)result cellMetricsForIdiom:a4];
  }

  else
  {
    retstr->var8 = 0.0;
    *&retstr->var4 = 0u;
    *&retstr->var6 = 0u;
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

@end