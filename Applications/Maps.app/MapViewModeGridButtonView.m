@interface MapViewModeGridButtonView
- (MapViewModeGridButtonView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_primaryButtonTapped:(id)a3;
- (void)_updateBorder;
- (void)_updateFonts;
- (void)_updateFromModel;
- (void)_updateImage;
- (void)layoutSubviews;
- (void)setViewModel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapViewModeGridButtonView

- (void)_primaryButtonTapped:(id)a3
{
  v4 = [(MapViewModeGridButtonViewModel *)self->_viewModel delegate];
  [v4 mapViewModeButtonViewTapped:self];
}

- (void)_updateBorder
{
  if ([(MapViewModeGridButtonViewModel *)self->_viewModel selected])
  {
    v3 = [(MapViewModeGridButtonView *)self layer];
    [v3 setBorderWidth:2.0];

    v18 = +[UIColor systemBlueColor];
    v4 = [v18 CGColor];
    v5 = [(MapViewModeGridButtonView *)self layer];
    [v5 setBorderColor:v4];
  }

  else
  {
    v6 = self;
    v7 = [(MapViewModeGridButtonView *)v6 window];
    v8 = [v7 screen];
    if (v8)
    {
      v9 = [(MapViewModeGridButtonView *)v6 window];
      v10 = [v9 screen];
      [v10 nativeScale];
      v12 = v11;
    }

    else
    {
      v9 = +[UIScreen mainScreen];
      [v9 nativeScale];
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

    v15 = [(MapViewModeGridButtonView *)v6 layer];
    [v15 setBorderWidth:v14];

    v18 = +[UIColor blackColor];
    v5 = [v18 colorWithAlphaComponent:0.05];
    v16 = [v5 CGColor];
    v17 = [(MapViewModeGridButtonView *)v6 layer];
    [v17 setBorderColor:v16];
  }
}

- (void)_updateFonts
{
  v3 = [(MapViewModeGridButtonView *)self traitCollection];
  v4 = [objc_opt_class() _maximumContentSizeCategory];
  v8 = [v3 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:UIContentSizeCategoryLarge maximumContentSizeCategory:v4];

  v5 = [UIFont system15CompatibleWithTraitCollection:v8];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = [UIFont system17CompatibleWithTraitCollection:v8];
  [v6 pointSize];
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:?];
  [(UIButton *)self->_overflowButton setPreferredSymbolConfiguration:v7 forImageInState:0];
}

- (void)_updateImage
{
  v27 = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
  v3 = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
  [v5 size];
  if (v6 == 0.0)
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
  [v7 size];
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
    v15 = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
    [v15 size];
    v17 = v16;
    v18 = [(MapViewModeGridButtonViewModel *)self->_viewModel image];
    [v18 size];
    v20 = v17 / v19;

    v21 = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
    [v21 size];
    v23 = v22;
    v24 = [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
    [v24 size];
    v26 = v23 / v25;

    if (vabdd_f64(v26, v14) < vabdd_f64(v20, v14))
    {
      [(MapViewModeGridButtonViewModel *)self->_viewModel wideImage];
      v27 = v4 = v27;
LABEL_9:
    }
  }

LABEL_10:
  [(UIButton *)self->_primaryButton setBackgroundImage:v27 forState:0];
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

  v4 = [(UIButton *)self->_primaryButton layer];
  *&v5 = v3;
  [v4 setOpacity:v5];

  [(UIButton *)self->_primaryButton setEnabled:[(MapViewModeGridButtonViewModel *)self->_viewModel enabled]];
  [(UIButton *)self->_primaryButton setSelected:[(MapViewModeGridButtonViewModel *)self->_viewModel selected]];
  v6 = [(UILabel *)self->_titleLabel layer];
  *&v7 = v3;
  [v6 setOpacity:v7];

  v8 = [(MapViewModeGridButtonViewModel *)self->_viewModel title];
  [(UILabel *)self->_titleLabel setText:v8];

  [(MapViewModeGridButtonView *)self _updateImage];
  [(MapViewModeGridButtonView *)self _updateBorder];
  v9 = [(MapViewModeGridButtonViewModel *)self->_viewModel axIdentifierForView];
  v10 = [v9 stringByAppendingString:@"Button"];
  [(MapViewModeGridButtonView *)self setAccessibilityIdentifier:v10];

  v11 = [(MapViewModeGridButtonViewModel *)self->_viewModel overflowMenu];

  overflowButton = self->_overflowButton;
  if (v11)
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

    v20 = [(MapViewModeGridButtonViewModel *)self->_viewModel overflowMenu];
    [(UIButton *)self->_overflowButton setMenu:v20];
    v19 = v20;
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

- (void)setViewModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_viewModel != v5)
  {
    v8 = v5;
    v7 = [(MapViewModeGridButtonViewModel *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModel, a3);
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MapViewModeGridButtonView;
  [(MapViewModeGridButtonView *)&v16 traitCollectionDidChange:v4];
  v5 = [(MapViewModeGridButtonView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = sub_10008FB5C(v6, v7);

  if (v8)
  {
    [(MapViewModeGridButtonView *)self _updateFonts];
  }

  v9 = [(MapViewModeGridButtonView *)self traitCollection];
  [v9 displayScale];
  v11 = v10;
  [v4 displayScale];
  if (v11 == v12)
  {
    v13 = [(MapViewModeGridButtonView *)self traitCollection];
    v14 = [v13 userInterfaceStyle];
    v15 = [v4 userInterfaceStyle];

    if (v14 == v15)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = MapViewModeGridButtonView;
  v5 = [(MapViewModeGridButtonView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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

- (MapViewModeGridButtonView)initWithFrame:(CGRect)a3
{
  v64.receiver = self;
  v64.super_class = MapViewModeGridButtonView;
  v3 = [(MapViewModeGridButtonView *)&v64 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MapViewModeGridButtonView *)v3 layer];
    [v5 setCornerRadius:10.0];

    v6 = [(MapViewModeGridButtonView *)v4 layer];
    [v6 setMasksToBounds:1];

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
    v17 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    [v17 addSubview:v4->_titleStackView];

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
    v62 = [(UIButton *)v4->_primaryButton topAnchor];
    v61 = [(MapViewModeGridButtonView *)v4 topAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v65[0] = v60;
    v59 = [(UIButton *)v4->_primaryButton leadingAnchor];
    v58 = [(MapViewModeGridButtonView *)v4 leadingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v65[1] = v57;
    v56 = [(UIButton *)v4->_primaryButton trailingAnchor];
    v55 = [(MapViewModeGridButtonView *)v4 trailingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v65[2] = v54;
    v53 = [(UIButton *)v4->_primaryButton bottomAnchor];
    v52 = [(MapViewModeGridButtonView *)v4 bottomAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v65[3] = v51;
    v50 = [(UIVisualEffectView *)v4->_titleBlurView topAnchor];
    v49 = [(MapViewModeGridButtonView *)v4 topAnchor];
    v48 = [v50 constraintGreaterThanOrEqualToAnchor:v49];
    v65[4] = v48;
    v47 = [(UIVisualEffectView *)v4->_titleBlurView leadingAnchor];
    v46 = [(MapViewModeGridButtonView *)v4 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v65[5] = v45;
    v44 = [(UIVisualEffectView *)v4->_titleBlurView trailingAnchor];
    v43 = [(MapViewModeGridButtonView *)v4 trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v65[6] = v42;
    v41 = [(UIVisualEffectView *)v4->_titleBlurView bottomAnchor];
    v40 = [(MapViewModeGridButtonView *)v4 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v65[7] = v39;
    v37 = [(UIStackView *)v4->_titleStackView topAnchor];
    v38 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v65[8] = v35;
    v33 = [(UIStackView *)v4->_titleStackView leadingAnchor];
    v34 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    v32 = [v34 leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v65[9] = v31;
    v21 = [(UIStackView *)v4->_titleStackView trailingAnchor];
    v22 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v65[10] = v24;
    v25 = [(UIStackView *)v4->_titleStackView bottomAnchor];
    v26 = [(UIVisualEffectView *)v4->_titleBlurView contentView];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v65[11] = v28;
    v29 = [NSArray arrayWithObjects:v65 count:12];
    [NSLayoutConstraint activateConstraints:v29];

    [(MapViewModeGridButtonView *)v4 _updateFonts];
    [(MapViewModeGridButtonView *)v4 _updateBorder];
  }

  return v4;
}

@end