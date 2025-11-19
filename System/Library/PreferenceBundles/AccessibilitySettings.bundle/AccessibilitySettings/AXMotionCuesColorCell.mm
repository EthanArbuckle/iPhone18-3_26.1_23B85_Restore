@interface AXMotionCuesColorCell
+ (id)nameForColor:(int)a3;
- (AXMotionCuesColorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_configureWithSelectedColor:(int)a3;
- (void)_setupViews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXMotionCuesColorCell

- (AXMotionCuesColorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = AXMotionCuesColorCell;
  v4 = [(AXMotionCuesColorCell *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  [(AXMotionCuesColorCell *)v4 _setupViews];
  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AXMotionCuesColorCell;
  [(AXMotionCuesColorCell *)&v18 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"AXMotionCuesTintColor"];
  v6 = [v5 intValue];

  [(AXMotionCuesColorCell *)self _configureWithSelectedColor:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(AXMotionCuesColorCell *)self _colorViews];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [v4 propertyForKey:@"AXMotionCuesTintColorDelegate"];
        [v12 setDelegate:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXMotionCuesColorCell;
  [(AXMotionCuesColorCell *)&v3 prepareForReuse];
  [(AXMotionCuesColorCell *)self setSelectionStyle:0];
}

- (void)_setupViews
{
  v3 = +[NSMutableArray array];
  [(AXMotionCuesColorCell *)self set_colorViews:v3];

  v4 = objc_alloc_init(UIStackView);
  [(AXMotionCuesColorCell *)self set_colorStackView:v4];

  v5 = [(AXMotionCuesColorCell *)self _colorStackView];
  [v5 setAxis:0];

  v6 = [(AXMotionCuesColorCell *)self _colorStackView];
  [v6 setDistribution:1];

  v7 = [(AXMotionCuesColorCell *)self _colorStackView];
  [v7 setSpacing:2.0];

  v8 = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  do
  {
    v12 = [[AXMotionCuesColorView alloc] initWithFrame:v8 color:CGRectZero.origin.x, y, width, height];
    v13 = [(AXMotionCuesColorCell *)self _colorViews];
    [v13 addObject:v12];

    v14 = [(AXMotionCuesColorCell *)self _colorStackView];
    [v14 addArrangedSubview:v12];

    v8 = (v8 + 1);
  }

  while (v8 != 7);
  v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXMotionCuesColorCell *)self set_colorNameLabel:v15];

  v16 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [v16 setAdjustsFontForContentSizeCategory:1];

  v17 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightSemibold];
  v18 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [v18 setFont:v17];

  v19 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  v20 = +[UIColor secondaryLabelColor];
  [v19 setTextColor:v20];

  v21 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [v21 setTextAlignment:1];

  v22 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [v22 setIsAccessibilityElement:0];

  v23 = [UIStackView alloc];
  v24 = [(AXMotionCuesColorCell *)self _colorStackView];
  v56[0] = v24;
  v25 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  v56[1] = v25;
  v26 = [NSArray arrayWithObjects:v56 count:2];
  v27 = [v23 initWithArrangedSubviews:v26];
  [(AXMotionCuesColorCell *)self set_mainStackView:v27];

  v28 = [(AXMotionCuesColorCell *)self _mainStackView];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = [(AXMotionCuesColorCell *)self _mainStackView];
  [v29 setAxis:1];

  v30 = [(AXMotionCuesColorCell *)self _mainStackView];
  [v30 setDistribution:0];

  v31 = [(AXMotionCuesColorCell *)self _mainStackView];
  [v31 setSpacing:8.0];

  v32 = [(AXMotionCuesColorCell *)self contentView];
  v33 = [(AXMotionCuesColorCell *)self _mainStackView];
  [v32 addSubview:v33];

  v54 = [(AXMotionCuesColorCell *)self _mainStackView];
  v52 = [v54 leadingAnchor];
  v53 = [(AXMotionCuesColorCell *)self contentView];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintEqualToSystemSpacingAfterAnchor:v51 multiplier:1.5];
  v55[0] = v50;
  v49 = [(AXMotionCuesColorCell *)self contentView];
  v47 = [v49 trailingAnchor];
  v48 = [(AXMotionCuesColorCell *)self _mainStackView];
  v46 = [v48 trailingAnchor];
  v45 = [v47 constraintEqualToSystemSpacingAfterAnchor:v46 multiplier:1.5];
  v55[1] = v45;
  v44 = [(AXMotionCuesColorCell *)self _mainStackView];
  v34 = [v44 topAnchor];
  v35 = [(AXMotionCuesColorCell *)self contentView];
  v36 = [v35 topAnchor];
  v37 = [v34 constraintEqualToSystemSpacingBelowAnchor:v36 multiplier:1.5];
  v55[2] = v37;
  v38 = [(AXMotionCuesColorCell *)self contentView];
  v39 = [v38 bottomAnchor];
  v40 = [(AXMotionCuesColorCell *)self _mainStackView];
  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToSystemSpacingBelowAnchor:v41 multiplier:1.5];
  v55[3] = v42;
  v43 = [NSArray arrayWithObjects:v55 count:4];
  [NSLayoutConstraint activateConstraints:v43];
}

- (void)_configureWithSelectedColor:(int)a3
{
  v3 = *&a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AXMotionCuesColorCell *)self _colorViews];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9) setSelected:{objc_msgSend(*(*(&v12 + 1) + 8 * v9), "color") == v3}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  v11 = [AXMotionCuesColorCell nameForColor:v3];
  [v10 setText:v11];
}

+ (id)nameForColor:(int)a3
{
  if ((a3 - 1) > 5)
  {
    v4 = @"MotionCuesColorGrayscale";
  }

  else
  {
    v4 = off_2582A8[a3 - 1];
  }

  v5 = settingsLocString(v4, @"Accessibility-MotionCues");

  return v5;
}

@end