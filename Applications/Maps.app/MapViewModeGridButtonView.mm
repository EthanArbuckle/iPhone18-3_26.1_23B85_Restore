@interface MapViewModeGridButtonView
- (MapViewModeGridButtonView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_primaryButtonTapped:(id)tapped;
- (void)_updateBorder;
- (void)_updateFonts;
- (void)_updateFromModel;
- (void)_updateImage;
- (void)layoutSubviews;
- (void)setViewModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapViewModeGridButtonView

- (void)_primaryButtonTapped:(id)tapped
{
  delegate = [(MapViewModeGridButtonViewModel *)self->_viewModel delegate];
  [delegate mapViewModeButtonViewTapped:self];
}

- (void)_updateBorder
{
  if ([(MapViewModeGridButtonViewModel *)self->_viewModel selected])
  {
    layer = [(MapViewModeGridButtonView *)self layer];
    [layer setBorderWidth:2.0];

    v18 = +[UIColor systemBlueColor];
    cGColor = [v18 CGColor];
    layer2 = [(MapViewModeGridButtonView *)self layer];
    [layer2 setBorderColor:cGColor];
  }

  else
  {
    selfCopy = self;
    window = [(MapViewModeGridButtonView *)selfCopy window];
    screen = [window screen];
    if (screen)
    {
      window2 = [(MapViewModeGridButtonView *)selfCopy window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v12 = v11;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
      v12 = v13;
    }

    if (v12 <= 0.0)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 1.0 / v12;
    }

    layer3 = [(MapViewModeGridButtonView *)selfCopy layer];
    [layer3 setBorderWidth:v14];

    v18 = +[UIColor blackColor];
    layer2 = [v18 colorWithAlphaComponent:0.05];
    cGColor2 = [layer2 CGColor];
    layer4 = [(MapViewModeGridButtonView *)selfCopy layer];
    [layer4 setBorderColor:cGColor2];
  }
}

- (void)_updateFonts
{
  traitCollection = [(MapViewModeGridButtonView *)self traitCollection];
  _maximumContentSizeCategory = [objc_opt_class() _maximumContentSizeCategory];
  v8 = [traitCollection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:UIContentSizeCategoryLarge maximumContentSizeCategory:_maximumContentSizeCategory];

  v5 = [UIFont system15CompatibleWithTraitCollection:v8];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = [UIFont system17CompatibleWithTraitCollection:v8];
  [v6 pointSize];
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:?];
  [(UIButton *)self->_overflowButton setPreferredSymbolConfiguration:v7 forImageInState:0];
}

- (void)_updateImage
{
  image = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
  wideImage = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
  if (!wideImage)
  {
    goto LABEL_10;
  }

  v4 = wideImage;
  image2 = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
  [image2 size];
  if (v6 == 0.0)
  {
LABEL_8:

    goto LABEL_9;
  }

  wideImage2 = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
  [wideImage2 size];
  if (v8 == 0.0)
  {

    goto LABEL_8;
  }

  [(UIButton *)self->_primaryButton bounds];
  v10 = v9;

  if (v10 != 0.0)
  {
    [(UIButton *)self->_primaryButton bounds];
    v12 = v11;
    [(UIButton *)self->_primaryButton bounds];
    v14 = v12 / v13;
    image3 = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
    [image3 size];
    v17 = v16;
    image4 = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
    [image4 size];
    v20 = v17 / v19;

    wideImage3 = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
    [wideImage3 size];
    v23 = v22;
    wideImage4 = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
    [wideImage4 size];
    v26 = v23 / v25;

    if (vabdd_f64(v26, v14) < vabdd_f64(v20, v14))
    {
      [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
      image = v4 = image;
LABEL_9:
    }
  }

LABEL_10:
  [(UIButton *)self->_primaryButton setBackgroundImage:image forState:0];
}

- (void)_updateFromModel
{
  if ([(MapViewModeGridButtonViewModel *)self->_viewModel enabled])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.4;
  }

  layer = [(UIButton *)self->_primaryButton layer];
  *&v5 = v3;
  [layer setOpacity:v5];

  [(UIButton *)self->_primaryButton setEnabled:[(MapViewModeGridButtonViewModel *)self->_viewModel enabled]];
  [(UIButton *)self->_primaryButton setSelected:[(MapViewModeGridButtonViewModel *)self->_viewModel selected]];
  layer2 = [(UILabel *)self->_titleLabel layer];
  *&v7 = v3;
  [layer2 setOpacity:v7];

  title = [(MapViewModeGridButtonViewModel *)self->_viewModel title];
  [(UILabel *)self->_titleLabel setText:title];

  [(MapViewModeGridButtonView *)self _updateImage];
  [(MapViewModeGridButtonView *)self _updateBorder];
  axIdentifierForView = [(MapViewModeGridButtonViewModel *)self->_viewModel axIdentifierForView];
  v10 = [axIdentifierForView stringByAppendingString:@"Button"];
  [(MapViewModeGridButtonView *)self setAccessibilityIdentifier:v10];

  overflowMenu = [(MapViewModeGridButtonViewModel *)self->_viewModel overflowMenu];

  overflowButton = self->_overflowButton;
  if (overflowMenu)
  {
    if (!overflowButton)
    {
      v13 = [UIButton buttonWithType:0];
      v14 = self->_overflowButton;
      self->_overflowButton = v13;

      v15 = +[UIColor secondaryLabelColor];
      [(UIButton *)self->_overflowButton setTintColor:v15];

      [(UIButton *)self->_overflowButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
      [(UIButton *)self->_overflowButton setShowsMenuAsPrimaryAction:1];
      LODWORD(v16) = 1144750080;
      [(UIButton *)self->_overflowButton setContentHuggingPriority:0 forAxis:v16];
      v17 = self->_overflowButton;
      v18 = [UIImage systemImageNamed:@"ellipsis.circle.fill"];
      [(UIButton *)v17 setImage:v18 forState:0];

      [(UIButton *)self->_overflowButton setAccessibilityIdentifier:@"OverflowButton"];
      [(UIStackView *)self->_titleStackView addArrangedSubview:self->_overflowButton];
      [(MapViewModeGridButtonView *)self _updateFonts];
    }

    overflowMenu2 = [(MapViewModeGridButtonViewModel *)self->_viewModel overflowMenu];
    [(UIButton *)self->_overflowButton setMenu:overflowMenu2];
    v19 = overflowMenu2;
  }

  else
  {
    if (!overflowButton)
    {
      return;
    }

    [(UIButton *)overflowButton removeFromSuperview];
    v19 = self->_overflowButton;
    self->_overflowButton = 0;
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_viewModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(MapViewModeGridButtonViewModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModel, model);
      [(MapViewModeGridButtonView *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MapViewModeGridButtonView;
  [(MapViewModeGridButtonView *)&v3 layoutSubviews];
  [(MapViewModeGridButtonView *)self _updateImage];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = MapViewModeGridButtonView;
  [(MapViewModeGridButtonView *)&v16 traitCollectionDidChange:changeCopy];
  traitCollection = [(MapViewModeGridButtonView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);

  if (v8)
  {
    [(MapViewModeGridButtonView *)self _updateFonts];
  }

  traitCollection2 = [(MapViewModeGridButtonView *)self traitCollection];
  [traitCollection2 displayScale];
  v11 = v10;
  [changeCopy displayScale];
  if (v11 == v12)
  {
    traitCollection3 = [(MapViewModeGridButtonView *)self traitCollection];
    userInterfaceStyle = [traitCollection3 userInterfaceStyle];
    userInterfaceStyle2 = [changeCopy userInterfaceStyle];

    if (userInterfaceStyle == userInterfaceStyle2)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(MapViewModeGridButtonView *)self _updateBorder];
LABEL_8:
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = MapViewModeGridButtonView;
  v5 = [(MapViewModeGridButtonView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  overflowButton = self->_overflowButton;
  if (v5 == overflowButton)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    overflowButton = self->_primaryButton;
LABEL_4:
    v8 = overflowButton;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (MapViewModeGridButtonView)initWithFrame:(CGRect)frame
{
  v64.receiver = self;
  v64.super_class = MapViewModeGridButtonView;
  v3 = [(MapViewModeGridButtonView *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(MapViewModeGridButtonView *)v3 layer];
    [layer setCornerRadius:10.0];

    layer2 = [(MapViewModeGridButtonView *)v4 layer];
    [layer2 setMasksToBounds:1];

    v7 = [UIButton buttonWithType:0];
    primaryButton = v4->_primaryButton;
    v4->_primaryButton = v7;

    [(UIButton *)v4->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_primaryButton addTarget:v4 action:"_primaryButtonTapped:" forControlEvents:0x2000];
    [(MapViewModeGridButtonView *)v4 addSubview:v4->_primaryButton];
    v63 = [UIBlurEffect effectWithStyle:8];
    v9 = [[UIVisualEffectView alloc] initWithEffect:v63];
    titleBlurView = v4->_titleBlurView;
    v4->_titleBlurView = v9;

    [(UIVisualEffectView *)v4->_titleBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v4->_titleBlurView setAccessibilityIdentifier:@"TitleBlurView"];
    [(MapViewModeGridButtonView *)v4 addSubview:v4->_titleBlurView];
    v11 = [UIStackView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleStackView = v4->_titleStackView;
    v4->_titleStackView = v15;

    [(UIStackView *)v4->_titleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_titleStackView setAxis:0];
    [(UIStackView *)v4->_titleStackView setDistribution:0];
    [(UIStackView *)v4->_titleStackView setAlignment:2];
    [(UIStackView *)v4->_titleStackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_titleStackView setDirectionalLayoutMargins:10.0, 12.0, 10.0, 12.0];
    [(UIStackView *)v4->_titleStackView setSpacing:8.0];
    [(UIStackView *)v4->_titleStackView setAccessibilityIdentifier:@"TitleStackView"];
    contentView = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    [contentView addSubview:v4->_titleStackView];

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v18;

    v20 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v20];

    [(UILabel *)v4->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setMinimumScaleFactor:0.5];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UIStackView *)v4->_titleStackView addArrangedSubview:v4->_titleLabel];
    topAnchor = [(UIButton *)v4->_primaryButton topAnchor];
    topAnchor2 = [(MapViewModeGridButtonView *)v4 topAnchor];
    v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v65[0] = v60;
    leadingAnchor = [(UIButton *)v4->_primaryButton leadingAnchor];
    leadingAnchor2 = [(MapViewModeGridButtonView *)v4 leadingAnchor];
    v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[1] = v57;
    trailingAnchor = [(UIButton *)v4->_primaryButton trailingAnchor];
    trailingAnchor2 = [(MapViewModeGridButtonView *)v4 trailingAnchor];
    v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v65[2] = v54;
    bottomAnchor = [(UIButton *)v4->_primaryButton bottomAnchor];
    bottomAnchor2 = [(MapViewModeGridButtonView *)v4 bottomAnchor];
    v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v65[3] = v51;
    topAnchor3 = [(UIVisualEffectView *)v4->_titleBlurView topAnchor];
    topAnchor4 = [(MapViewModeGridButtonView *)v4 topAnchor];
    v48 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    v65[4] = v48;
    leadingAnchor3 = [(UIVisualEffectView *)v4->_titleBlurView leadingAnchor];
    leadingAnchor4 = [(MapViewModeGridButtonView *)v4 leadingAnchor];
    v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v65[5] = v45;
    trailingAnchor3 = [(UIVisualEffectView *)v4->_titleBlurView trailingAnchor];
    trailingAnchor4 = [(MapViewModeGridButtonView *)v4 trailingAnchor];
    v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v65[6] = v42;
    bottomAnchor3 = [(UIVisualEffectView *)v4->_titleBlurView bottomAnchor];
    bottomAnchor4 = [(MapViewModeGridButtonView *)v4 bottomAnchor];
    v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v65[7] = v39;
    topAnchor5 = [(UIStackView *)v4->_titleStackView topAnchor];
    contentView2 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    topAnchor6 = [contentView2 topAnchor];
    v35 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v65[8] = v35;
    leadingAnchor5 = [(UIStackView *)v4->_titleStackView leadingAnchor];
    contentView3 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    leadingAnchor6 = [contentView3 leadingAnchor];
    v31 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v65[9] = v31;
    trailingAnchor5 = [(UIStackView *)v4->_titleStackView trailingAnchor];
    contentView4 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    trailingAnchor6 = [contentView4 trailingAnchor];
    v24 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v65[10] = v24;
    bottomAnchor5 = [(UIStackView *)v4->_titleStackView bottomAnchor];
    contentView5 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    bottomAnchor6 = [contentView5 bottomAnchor];
    v28 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v65[11] = v28;
    v29 = [NSArray arrayWithObjects:v65 count:12];
    [NSLayoutConstraint activateConstraints:v29];

    [(MapViewModeGridButtonView *)v4 _updateFonts];
    [(MapViewModeGridButtonView *)v4 _updateBorder];
  }

  return v4;
}

@end