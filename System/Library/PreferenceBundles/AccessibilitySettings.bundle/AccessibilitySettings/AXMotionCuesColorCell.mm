@interface AXMotionCuesColorCell
+ (id)nameForColor:(int)color;
- (AXMotionCuesColorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureWithSelectedColor:(int)color;
- (void)_setupViews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXMotionCuesColorCell

- (AXMotionCuesColorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = AXMotionCuesColorCell;
  v4 = [(AXMotionCuesColorCell *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(AXMotionCuesColorCell *)v4 _setupViews];
  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = AXMotionCuesColorCell;
  [(AXMotionCuesColorCell *)&v18 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"AXMotionCuesTintColor"];
  intValue = [v5 intValue];

  [(AXMotionCuesColorCell *)self _configureWithSelectedColor:intValue];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _colorViews = [(AXMotionCuesColorCell *)self _colorViews];
  v8 = [_colorViews countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(_colorViews);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [specifierCopy propertyForKey:@"AXMotionCuesTintColorDelegate"];
        [v12 setDelegate:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [_colorViews countByEnumeratingWithState:&v14 objects:v19 count:16];
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

  _colorStackView = [(AXMotionCuesColorCell *)self _colorStackView];
  [_colorStackView setAxis:0];

  _colorStackView2 = [(AXMotionCuesColorCell *)self _colorStackView];
  [_colorStackView2 setDistribution:1];

  _colorStackView3 = [(AXMotionCuesColorCell *)self _colorStackView];
  [_colorStackView3 setSpacing:2.0];

  v8 = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  do
  {
    height = [[AXMotionCuesColorView alloc] initWithFrame:v8 color:CGRectZero.origin.x, y, width, height];
    _colorViews = [(AXMotionCuesColorCell *)self _colorViews];
    [_colorViews addObject:height];

    _colorStackView4 = [(AXMotionCuesColorCell *)self _colorStackView];
    [_colorStackView4 addArrangedSubview:height];

    v8 = (v8 + 1);
  }

  while (v8 != 7);
  v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXMotionCuesColorCell *)self set_colorNameLabel:v15];

  _colorNameLabel = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [_colorNameLabel setAdjustsFontForContentSizeCategory:1];

  v17 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightSemibold];
  _colorNameLabel2 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [_colorNameLabel2 setFont:v17];

  _colorNameLabel3 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  v20 = +[UIColor secondaryLabelColor];
  [_colorNameLabel3 setTextColor:v20];

  _colorNameLabel4 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [_colorNameLabel4 setTextAlignment:1];

  _colorNameLabel5 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  [_colorNameLabel5 setIsAccessibilityElement:0];

  v23 = [UIStackView alloc];
  _colorStackView5 = [(AXMotionCuesColorCell *)self _colorStackView];
  v56[0] = _colorStackView5;
  _colorNameLabel6 = [(AXMotionCuesColorCell *)self _colorNameLabel];
  v56[1] = _colorNameLabel6;
  v26 = [NSArray arrayWithObjects:v56 count:2];
  v27 = [v23 initWithArrangedSubviews:v26];
  [(AXMotionCuesColorCell *)self set_mainStackView:v27];

  _mainStackView = [(AXMotionCuesColorCell *)self _mainStackView];
  [_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  _mainStackView2 = [(AXMotionCuesColorCell *)self _mainStackView];
  [_mainStackView2 setAxis:1];

  _mainStackView3 = [(AXMotionCuesColorCell *)self _mainStackView];
  [_mainStackView3 setDistribution:0];

  _mainStackView4 = [(AXMotionCuesColorCell *)self _mainStackView];
  [_mainStackView4 setSpacing:8.0];

  contentView = [(AXMotionCuesColorCell *)self contentView];
  _mainStackView5 = [(AXMotionCuesColorCell *)self _mainStackView];
  [contentView addSubview:_mainStackView5];

  _mainStackView6 = [(AXMotionCuesColorCell *)self _mainStackView];
  leadingAnchor = [_mainStackView6 leadingAnchor];
  contentView2 = [(AXMotionCuesColorCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.5];
  v55[0] = v50;
  contentView3 = [(AXMotionCuesColorCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  _mainStackView7 = [(AXMotionCuesColorCell *)self _mainStackView];
  trailingAnchor2 = [_mainStackView7 trailingAnchor];
  v45 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.5];
  v55[1] = v45;
  _mainStackView8 = [(AXMotionCuesColorCell *)self _mainStackView];
  topAnchor = [_mainStackView8 topAnchor];
  contentView4 = [(AXMotionCuesColorCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v37 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.5];
  v55[2] = v37;
  contentView5 = [(AXMotionCuesColorCell *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  _mainStackView9 = [(AXMotionCuesColorCell *)self _mainStackView];
  bottomAnchor2 = [_mainStackView9 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.5];
  v55[3] = v42;
  v43 = [NSArray arrayWithObjects:v55 count:4];
  [NSLayoutConstraint activateConstraints:v43];
}

- (void)_configureWithSelectedColor:(int)color
{
  v3 = *&color;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _colorViews = [(AXMotionCuesColorCell *)self _colorViews];
  v6 = [_colorViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_colorViews);
        }

        [*(*(&v12 + 1) + 8 * v9) setSelected:{objc_msgSend(*(*(&v12 + 1) + 8 * v9), "color") == v3}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [_colorViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  _colorNameLabel = [(AXMotionCuesColorCell *)self _colorNameLabel];
  v11 = [AXMotionCuesColorCell nameForColor:v3];
  [_colorNameLabel setText:v11];
}

+ (id)nameForColor:(int)color
{
  if ((color - 1) > 5)
  {
    v4 = @"MotionCuesColorGrayscale";
  }

  else
  {
    v4 = off_2582A8[color - 1];
  }

  v5 = settingsLocString(v4, @"Accessibility-MotionCues");

  return v5;
}

@end