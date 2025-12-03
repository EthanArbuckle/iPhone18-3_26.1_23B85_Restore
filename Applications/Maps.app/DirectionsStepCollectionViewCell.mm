@interface DirectionsStepCollectionViewCell
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom;
+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom;
+ (id)reuseIdentifier;
+ (unint64_t)signViewIconSize;
- (DirectionsStepCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setRoute:(id)route step:(id)step stepIndex:(unint64_t)index alignToLeftEdgeIfNoManeuverSign:(BOOL)sign size:(int64_t)size;
- (void)updateTheme;
@end

@implementation DirectionsStepCollectionViewCell

- (void)setRoute:(id)route step:(id)step stepIndex:(unint64_t)index alignToLeftEdgeIfNoManeuverSign:(BOOL)sign size:(int64_t)size
{
  signCopy = sign;
  stepCopy = step;
  routeCopy = route;
  v13 = objc_opt_class();
  [(DirectionsStepView *)self->_stepView bounds];
  Width = CGRectGetWidth(v18);
  traitCollection = [(DirectionsStepCollectionViewCell *)self traitCollection];
  [v13 heightForWidth:routeCopy route:stepCopy step:objc_msgSend(traitCollection idiom:{"userInterfaceIdiom"), Width}];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];

  [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
  [(DirectionsStepView *)self->_stepView setRoute:routeCopy step:stepCopy stepIndex:index alignToLeftEdgeIfNoManeuverSign:signCopy size:size];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = DirectionsStepCollectionViewCell;
  [(MapsThemeCollectionViewListCell *)&v9 updateTheme];
  if (sub_10000FA08(self) != 5)
  {
    backgroundView = [(DirectionsStepCollectionViewCell *)self backgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      backgroundView2 = [(DirectionsStepCollectionViewCell *)self backgroundView];
      [backgroundView2 setHighlightedColor:{-[DirectionsStepCollectionViewCell isSelectedRow](self, "isSelectedRow")}];
    }

    theme = [(DirectionsStepCollectionViewCell *)self theme];
    tableViewCellHighlightedOverlayColor = [theme tableViewCellHighlightedOverlayColor];
    selectedBackgroundView = [(DirectionsStepCollectionViewCell *)self selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:tableViewCellHighlightedOverlayColor];
  }
}

- (DirectionsStepCollectionViewCell)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = DirectionsStepCollectionViewCell;
  v3 = [(DirectionsStepCollectionViewCell *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DirectionsStepCollectionViewCell *)v3 setAccessibilityIdentifier:@"DirectionsStepCell"];
    v5 = objc_alloc([objc_opt_class() stepViewClass]);
    contentView = [(DirectionsStepCollectionViewCell *)v4 contentView];
    [contentView bounds];
    v7 = [v5 initWithFrame:?];
    stepView = v4->_stepView;
    v4->_stepView = v7;

    [(DirectionsStepView *)v4->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DirectionsStepView *)v4->_stepView setAccessibilityIdentifier:@"DirectionsStep"];
    contentView2 = [(DirectionsStepCollectionViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_stepView];

    v10 = v4->_stepView;
    contentView3 = [(DirectionsStepCollectionViewCell *)v4 contentView];
    LODWORD(v12) = 1148846080;
    v13 = [(DirectionsStepView *)v10 _maps_constraintsEqualToEdgesOfView:contentView3 priority:v12];
    allConstraints = [v13 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    heightAnchor = [(DirectionsStepView *)v4->_stepView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:0.0];
    heightConstraint = v4->_heightConstraint;
    v4->_heightConstraint = v16;

    [RoutingAppearanceManager configureBackgroundViewForStepCell:v4];
  }

  return v4;
}

+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom
{
  stepCopy = step;
  routeCopy = route;
  [objc_msgSend(self "stepViewClass")];
  v13 = v12;

  return v13;
}

+ (unint64_t)signViewIconSize
{
  stepViewClass = [self stepViewClass];

  return [stepViewClass signViewIconSize];
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom
{
  result = [a2 stepViewClass];
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

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end