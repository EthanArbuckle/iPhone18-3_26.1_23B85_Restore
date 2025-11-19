@interface DirectionsStepCollectionViewCell
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3;
+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6;
+ (id)reuseIdentifier;
+ (unint64_t)signViewIconSize;
- (DirectionsStepCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)setRoute:(id)a3 step:(id)a4 stepIndex:(unint64_t)a5 alignToLeftEdgeIfNoManeuverSign:(BOOL)a6 size:(int64_t)a7;
- (void)updateTheme;
@end

@implementation DirectionsStepCollectionViewCell

- (void)setRoute:(id)a3 step:(id)a4 stepIndex:(unint64_t)a5 alignToLeftEdgeIfNoManeuverSign:(BOOL)a6 size:(int64_t)a7
{
  v8 = a6;
  v12 = a4;
  v16 = a3;
  v13 = objc_opt_class();
  [(DirectionsStepView *)self->_stepView bounds];
  Width = CGRectGetWidth(v18);
  v15 = [(DirectionsStepCollectionViewCell *)self traitCollection];
  [v13 heightForWidth:v16 route:v12 step:objc_msgSend(v15 idiom:{"userInterfaceIdiom"), Width}];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];

  [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
  [(DirectionsStepView *)self->_stepView setRoute:v16 step:v12 stepIndex:a5 alignToLeftEdgeIfNoManeuverSign:v8 size:a7];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = DirectionsStepCollectionViewCell;
  [(MapsThemeCollectionViewListCell *)&v9 updateTheme];
  if (sub_10000FA08(self) != 5)
  {
    v3 = [(DirectionsStepCollectionViewCell *)self backgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [(DirectionsStepCollectionViewCell *)self backgroundView];
      [v5 setHighlightedColor:{-[DirectionsStepCollectionViewCell isSelectedRow](self, "isSelectedRow")}];
    }

    v6 = [(DirectionsStepCollectionViewCell *)self theme];
    v7 = [v6 tableViewCellHighlightedOverlayColor];
    v8 = [(DirectionsStepCollectionViewCell *)self selectedBackgroundView];
    [v8 setBackgroundColor:v7];
  }
}

- (DirectionsStepCollectionViewCell)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = DirectionsStepCollectionViewCell;
  v3 = [(DirectionsStepCollectionViewCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DirectionsStepCollectionViewCell *)v3 setAccessibilityIdentifier:@"DirectionsStepCell"];
    v5 = objc_alloc([objc_opt_class() stepViewClass]);
    v6 = [(DirectionsStepCollectionViewCell *)v4 contentView];
    [v6 bounds];
    v7 = [v5 initWithFrame:?];
    stepView = v4->_stepView;
    v4->_stepView = v7;

    [(DirectionsStepView *)v4->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DirectionsStepView *)v4->_stepView setAccessibilityIdentifier:@"DirectionsStep"];
    v9 = [(DirectionsStepCollectionViewCell *)v4 contentView];
    [v9 addSubview:v4->_stepView];

    v10 = v4->_stepView;
    v11 = [(DirectionsStepCollectionViewCell *)v4 contentView];
    LODWORD(v12) = 1148846080;
    v13 = [(DirectionsStepView *)v10 _maps_constraintsEqualToEdgesOfView:v11 priority:v12];
    v14 = [v13 allConstraints];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = [(DirectionsStepView *)v4->_stepView heightAnchor];
    v16 = [v15 constraintEqualToConstant:0.0];
    heightConstraint = v4->_heightConstraint;
    v4->_heightConstraint = v16;

    [RoutingAppearanceManager configureBackgroundViewForStepCell:v4];
  }

  return v4;
}

+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  [objc_msgSend(a1 "stepViewClass")];
  v13 = v12;

  return v13;
}

+ (unint64_t)signViewIconSize
{
  v2 = [a1 stepViewClass];

  return [v2 signViewIconSize];
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3
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