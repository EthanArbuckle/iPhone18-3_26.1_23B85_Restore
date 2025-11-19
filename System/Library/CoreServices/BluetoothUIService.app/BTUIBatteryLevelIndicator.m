@interface BTUIBatteryLevelIndicator
- (BTUIBatteryLevelIndicator)initWithFrame:(CGRect)a3;
- (id)localizePercentageLevel;
- (void)_setupLayersAndLayerStates;
- (void)layoutSubviews;
- (void)setShowsPercentageLabel:(BOOL)a3;
@end

@implementation BTUIBatteryLevelIndicator

- (BTUIBatteryLevelIndicator)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BTUIBatteryLevelIndicator;
  v3 = [(BTUIBatteryLevelIndicator *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BTUIBatteryLevelIndicator *)v3 _setupLayersAndLayerStates];
  }

  return v4;
}

- (void)setShowsPercentageLabel:(BOOL)a3
{
  if (self->_showsPercentageLabel != a3)
  {
    self->_showsPercentageLabel = a3;
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
    v5 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    [(BTUIBatteryLevelIndicator *)self addSubview:v5];

    v6 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v8 = [v7 widthAnchor];
    v9 = [(BTUIBatteryLevelIndicator *)self widthAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v12 = [v11 heightAnchor];
    v13 = [(BTUIBatteryLevelIndicator *)self heightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v16 = [v15 centerXAnchor];
    v17 = [(BTUIBatteryLevelIndicator *)self centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v20 = [v19 centerYAnchor];
    v21 = [(BTUIBatteryLevelIndicator *)self centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v25 = [v24 widthAnchor];
    v26 = [(BTUIBatteryLevelIndicator *)self widthAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v29 = [v28 heightAnchor];
    v30 = [(BTUIBatteryLevelIndicator *)self heightAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v33 = [v32 centerXAnchor];
    v34 = [(BTUIBatteryLevelIndicator *)self centerXAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(BTUIBatteryLevelIndicator *)self micaRootLayer];
    v37 = [v36 centerYAnchor];
    v38 = [(BTUIBatteryLevelIndicator *)self centerYAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
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
  v3 = [(BTUIBatteryLevelIndicator *)self showsPercentageLabel];
  v4 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
  v5 = v4;
  if (v3)
  {

    if (!v5)
    {
      v6 = objc_alloc_init(UILabel);
      [(BTUIBatteryLevelIndicator *)self setPercentageLabel:v6];

      v7 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [(BTUIBatteryLevelIndicator *)self addSubview:v7];

      percentageLabelColor = self->_percentageLabelColor;
      v9 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [v9 setTextColor:percentageLabelColor];
    }

    v10 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [(BTUIBatteryLevelIndicator *)self bringSubviewToFront:v10];

    v11 = [(BTUIBatteryLevelIndicator *)self localizePercentageLevel];
    v12 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [v12 setText:v11];

    v13 = 16.0;
    if ([(BTUIBatteryLevelIndicator *)self SBUISA_layoutMode]== 3)
    {
      v13 = 12.0;
      v14 = [UIFont systemFontOfSize:12.0 weight:UIFontWeightMedium];
      v15 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [v15 setFont:v14];
    }

    v16 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    v17 = [v16 font];
    [v17 pointSize];
    v19 = v18;

    if (v19 != v13)
    {
      v20 = [UIFont systemFontOfSize:v13 weight:UIFontWeightBold];
      v21 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
      [v21 setFont:v20];
    }

    v22 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [v22 sizeToFit];

    [(BTUIBatteryLevelIndicator *)self bounds];
    UIRectGetCenter();
    v24 = v23;
    v26 = v25;
    v27 = [(BTUIBatteryLevelIndicator *)self percentageLabel];
    [v27 setCenter:{v24, v26}];
  }

  else
  {
    [v4 removeFromSuperview];

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