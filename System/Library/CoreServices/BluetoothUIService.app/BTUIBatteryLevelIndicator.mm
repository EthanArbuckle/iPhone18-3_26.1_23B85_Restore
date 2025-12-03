@interface BTUIBatteryLevelIndicator
- (BTUIBatteryLevelIndicator)initWithFrame:(CGRect)frame;
- (id)localizePercentageLevel;
- (void)_setupLayersAndLayerStates;
- (void)layoutSubviews;
- (void)setShowsPercentageLabel:(BOOL)label;
@end

@implementation BTUIBatteryLevelIndicator

- (BTUIBatteryLevelIndicator)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BTUIBatteryLevelIndicator;
  v3 = [(BTUIBatteryLevelIndicator *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BTUIBatteryLevelIndicator *)v3 _setupLayersAndLayerStates];
  }

  return v4;
}

- (void)setShowsPercentageLabel:(BOOL)label
{
  if (self->_showsPercentageLabel != label)
  {
    self->_showsPercentageLabel = label;
    [(BTUIBatteryLevelIndicator *)self setNeedsLayout];

    [(BTUIBatteryLevelIndicator *)self layoutIfNeeded];
  }
}

- (void)_setupLayersAndLayerStates
{
  v3 = [BSUICAPackageView alloc];
  v4 = +[NSBundle mainBundle];
  v40 = [v3 initWithPackageName:@"batteryLevel" inBundle:v4];

  [(BTUIBatteryLevelIndicator *)self setMicaRootLayer:v40];
  if (v40)
  {
    [v40 setState:@"compact"];
    [(BTUIBatteryLevelIndicator *)self setMicaRootLayer:v40];
    micaRootLayer = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    [(BTUIBatteryLevelIndicator *)self addSubview:micaRootLayer];

    micaRootLayer2 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    [micaRootLayer2 setTranslatesAutoresizingMaskIntoConstraints:0];

    micaRootLayer3 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    widthAnchor = [micaRootLayer3 widthAnchor];
    widthAnchor2 = [(BTUIBatteryLevelIndicator *)self widthAnchor];
    v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v10 setActive:1];

    micaRootLayer4 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    heightAnchor = [micaRootLayer4 heightAnchor];
    heightAnchor2 = [(BTUIBatteryLevelIndicator *)self heightAnchor];
    v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v14 setActive:1];

    micaRootLayer5 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    centerXAnchor = [micaRootLayer5 centerXAnchor];
    centerXAnchor2 = [(BTUIBatteryLevelIndicator *)self centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v18 setActive:1];

    micaRootLayer6 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    centerYAnchor = [micaRootLayer6 centerYAnchor];
    centerYAnchor2 = [(BTUIBatteryLevelIndicator *)self centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v22 setActive:1];

    micaRootLayer7 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    [micaRootLayer7 setTranslatesAutoresizingMaskIntoConstraints:0];

    micaRootLayer8 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    widthAnchor3 = [micaRootLayer8 widthAnchor];
    widthAnchor4 = [(BTUIBatteryLevelIndicator *)self widthAnchor];
    v27 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v27 setActive:1];

    micaRootLayer9 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    heightAnchor3 = [micaRootLayer9 heightAnchor];
    heightAnchor4 = [(BTUIBatteryLevelIndicator *)self heightAnchor];
    v31 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    [v31 setActive:1];

    micaRootLayer10 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    centerXAnchor3 = [micaRootLayer10 centerXAnchor];
    centerXAnchor4 = [(BTUIBatteryLevelIndicator *)self centerXAnchor];
    v35 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v35 setActive:1];

    micaRootLayer11 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    centerYAnchor3 = [micaRootLayer11 centerYAnchor];
    centerYAnchor4 = [(BTUIBatteryLevelIndicator *)self centerYAnchor];
    v39 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v39 setActive:1];
  }

  else if (dword_10001EA10 <= 90 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D654();
  }

  _objc_release_x1();
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = BTUIBatteryLevelIndicator;
  [(BTUIBatteryLevelIndicator *)&v28 layoutSubviews];
  showsPercentageLabel = [(BTUIBatteryLevelIndicator *)self showsPercentageLabel];
  percentageLabel = [(BTUIBatteryLevelIndicator *)self percentageLabel];
  v5 = percentageLabel;
  if (showsPercentageLabel)
  {

    if (!v5)
    {
      v6 = objc_alloc_init(UILabel);
      [(BTUIBatteryLevelIndicator *)self setPercentageLabel:v6];

      percentageLabel2 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [(BTUIBatteryLevelIndicator *)self addSubview:percentageLabel2];

      percentageLabelColor = self->_percentageLabelColor;
      percentageLabel3 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [percentageLabel3 setTextColor:percentageLabelColor];
    }

    percentageLabel4 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [(BTUIBatteryLevelIndicator *)self bringSubviewToFront:percentageLabel4];

    localizePercentageLevel = [(BTUIBatteryLevelIndicator *)self localizePercentageLevel];
    percentageLabel5 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [percentageLabel5 setText:localizePercentageLevel];

    v13 = 16.0;
    if ([(BTUIBatteryLevelIndicator *)self SBUISA_layoutMode]== 3)
    {
      v13 = 12.0;
      v14 = [UIFont systemFontOfSize:12.0 weight:UIFontWeightMedium];
      percentageLabel6 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [percentageLabel6 setFont:v14];
    }

    percentageLabel7 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    font = [percentageLabel7 font];
    [font pointSize];
    v19 = v18;

    if (v19 != v13)
    {
      v20 = [UIFont systemFontOfSize:v13 weight:UIFontWeightBold];
      percentageLabel8 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [percentageLabel8 setFont:v20];
    }

    percentageLabel9 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [percentageLabel9 sizeToFit];

    [(BTUIBatteryLevelIndicator *)self bounds];
    UIRectGetCenter();
    v24 = v23;
    v26 = v25;
    percentageLabel10 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [percentageLabel10 setCenter:{v24, v26}];
  }

  else
  {
    [percentageLabel removeFromSuperview];

    [(BTUIBatteryLevelIndicator *)self setPercentageLabel:0];
  }
}

- (id)localizePercentageLevel
{
  v3 = objc_alloc_init(NSNumberFormatter);
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  [(BTUIBatteryLevelIndicator *)self percentageLevel];
  v6 = v5 * 100.0;
  *&v6 = v6;
  v7 = [NSNumber numberWithFloat:v6];
  v8 = [v3 stringFromNumber:v7];

  return v8;
}

@end