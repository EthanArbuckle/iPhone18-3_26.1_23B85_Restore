@interface ShortcutsRowCollectionViewCell
+ (CGSize)cellSizeWithTraitCollection:(id)collection;
+ (NSString)cellReuseIdentifier;
+ (id)_effectiveTraitCollectionWithTraitCollection:(id)collection;
- (BOOL)shortcutsRowCellModelShouldFetchMissingImage:(id)image;
- (ShortcutsRowCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateFromModel;
- (void)_updateHighlight;
- (void)_updateTextAlignment;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setModel:(id)model;
- (void)setVibrant:(BOOL)vibrant;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ShortcutsRowCollectionViewCell

- (void)_updateFromModel
{
  title = [(ShortcutsRowCellModel *)self->_model title];
  [(UILabel *)self->_titleLabel setText:title];

  subtitle = [(ShortcutsRowCellModel *)self->_model subtitle];
  [(UILabel *)self->_subtitleLabel setText:subtitle];

  subtitleColor = [(ShortcutsRowCellModel *)self->_model subtitleColor];
  [(UILabel *)self->_subtitleLabel setTextColor:subtitleColor];

  [(UIImageView *)self->_imageView setContentMode:[(ShortcutsRowCellModel *)self->_model contentMode]];
  image = [(ShortcutsRowCellModel *)self->_model image];
  [(UIImageView *)self->_imageView setImage:image];

  vibrantBackground = [(ShortcutsRowCellModel *)self->_model vibrantBackground];

  [(ShortcutsRowCollectionViewCell *)self setVibrant:vibrantBackground];
}

- (BOOL)shortcutsRowCellModelShouldFetchMissingImage:(id)image
{
  window = [(ShortcutsRowCollectionViewCell *)self window];

  if (window)
  {
    selfCopy = self;
    if (selfCopy)
    {
      v6 = selfCopy;
      do
      {
        isHidden = [v6 isHidden];
        if (isHidden)
        {
          break;
        }

        superview = [v6 superview];

        v6 = superview;
      }

      while (superview);
      LOBYTE(window) = isHidden ^ 1;
    }

    else
    {
      LOBYTE(window) = 1;
    }
  }

  return window;
}

- (void)_updateConstraints
{
  if (!self->_imageSizeLayout)
  {
    v3 = [MUSizeLayout alloc];
    imageView = self->_imageView;
    [objc_opt_class() imageSize];
    v6 = v5;
    [objc_opt_class() imageSize];
    v8 = [v3 initWithItem:imageView size:{v6, v7}];
    imageSizeLayout = self->_imageSizeLayout;
    self->_imageSizeLayout = v8;
  }

  v10 = [[MUCompositionalStackLayoutGroup alloc] initWithIdentifier:@"labelGroup" axis:1];
  if ([objc_opt_class() isSubtitleHidden])
  {
    titleLabel = self->_titleLabel;
    p_titleLabel = &titleLabel;
    v12 = 1;
  }

  else
  {
    subtitleLabel = self->_subtitleLabel;
    v43[0] = self->_titleLabel;
    v43[1] = subtitleLabel;
    p_titleLabel = v43;
    v12 = 2;
  }

  v14 = [NSArray arrayWithObjects:p_titleLabel count:v12];
  [v10 setArrangedLayoutItems:v14];

  traitCollection = [(ShortcutsRowCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v18 = [MUCompositionalStackLayoutGroup alloc];
  if (IsAccessibilityCategory)
  {
    v19 = [v18 initWithIdentifier:@"contentGroup" axis:0];
    v42[0] = self->_imageView;
    v42[1] = v10;
    v20 = [NSArray arrayWithObjects:v42 count:2];
    [v19 setArrangedLayoutItems:v20];

    [v19 setAlignment:2];
    LODWORD(v21) = 1132003328;
    [v19 setAlignmentFittingSizePriority:v10 forArrangedLayoutItem:v21];
    v22 = 0.0;
    v23 = 12.0;
    v24 = 10.0;
    v25 = v19;
  }

  else
  {
    v19 = [v18 initWithIdentifier:@"contentGroup" axis:1];
    v41[0] = self->_imageView;
    v41[1] = v10;
    v26 = [NSArray arrayWithObjects:v41 count:2];
    [v19 setArrangedLayoutItems:v26];

    [v19 setDistribution:2];
    LODWORD(v27) = 1132003328;
    [v19 setDistributionFittingSizePriority:v27];
    [v19 setAlignment:2 forArrangedLayoutItem:self->_imageView];
    [objc_opt_class() imageTopMargin];
    [v19 setPadding:self->_imageView forArrangedLayoutItem:?];
    [objc_opt_class() titleTopMargin];
    v29 = v28;
    [objc_opt_class() textHorizontalMargin];
    v31 = v30;
    [objc_opt_class() textHorizontalMargin];
    v24 = v32;
    v25 = v19;
    v22 = v29;
    v23 = v31;
  }

  [v25 setPadding:v10 forArrangedLayoutItem:{v22, v23, 0.0, v24}];
  contentStackLayout = self->_contentStackLayout;
  if (contentStackLayout)
  {
    [(MUCompositionalStackLayout *)contentStackLayout setGroup:v19];
  }

  else
  {
    v34 = [MUCompositionalStackLayout alloc];
    contentView = [(ShortcutsRowCollectionViewCell *)self contentView];
    v36 = [v34 initWithContainer:contentView group:v19];
    v37 = self->_contentStackLayout;
    self->_contentStackLayout = v36;
  }

  v38 = self->_contentStackLayout;
  v40[0] = self->_imageSizeLayout;
  v40[1] = v38;
  v39 = [NSArray arrayWithObjects:v40 count:2];
  [NSLayoutConstraint _mapsui_activateLayouts:v39];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = ShortcutsRowCollectionViewCell;
  [(ShortcutsRowCollectionViewCell *)&v13 layoutSubviews];
  traitCollection = [(ShortcutsRowCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  highlightLayer = self->_highlightLayer;
  if (IsAccessibilityCategory)
  {
    [(CAShapeLayer *)highlightLayer setAnchorPoint:0.0, 0.5];
    contentView = [(ShortcutsRowCollectionViewCell *)self contentView];
    [contentView bounds];
    MidY = CGRectGetMidY(v14);
    v9 = self->_highlightLayer;
    v10 = 0.0;
  }

  else
  {
    [(CAShapeLayer *)highlightLayer setAnchorPoint:0.5, 0.0];
    contentView = [(ShortcutsRowCollectionViewCell *)self contentView];
    [contentView bounds];
    MidX = CGRectGetMidX(v15);
    [objc_opt_class() imageTopMargin];
    MidY = v12;
    v9 = self->_highlightLayer;
    v10 = MidX;
  }

  [(CAShapeLayer *)v9 setPosition:v10, MidY];
}

- (void)_updateFonts
{
  v3 = objc_opt_class();
  traitCollection = [(ShortcutsRowCollectionViewCell *)self traitCollection];
  v7 = [v3 _effectiveTraitCollectionWithTraitCollection:traitCollection];

  v5 = [objc_opt_class() titleFontWithTraitCollection:v7];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = [objc_opt_class() subtitleFontWithTraitCollection:v7];
  [(UILabel *)self->_subtitleLabel setFont:v6];
}

- (void)_updateTextAlignment
{
  traitCollection = [(ShortcutsRowCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v6];
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setTextAlignment:v6];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = ShortcutsRowCollectionViewCell;
  [(ShortcutsRowCollectionViewCell *)&v14 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  traitCollection = [(ShortcutsRowCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v9 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (IsAccessibilityCategory != v9)
  {
    [(ShortcutsRowCollectionViewCell *)self _updateConstraints];
    [(ShortcutsRowCollectionViewCell *)self _updateTextAlignment];
  }

  traitCollection2 = [(ShortcutsRowCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory3 = [traitCollection2 preferredContentSizeCategory];
  preferredContentSizeCategory4 = [changeCopy preferredContentSizeCategory];
  v13 = sub_10008FB5C(preferredContentSizeCategory3, preferredContentSizeCategory4);

  if (v13)
  {
    [(ShortcutsRowCollectionViewCell *)self _updateFonts];
  }
}

- (void)setVibrant:(BOOL)vibrant
{
  if (self->_vibrant != vibrant)
  {
    self->_vibrant = vibrant;
    if (vibrant)
    {
      v4 = [[MKVibrantView alloc] initWithFrame:{0.0, 0.0, 60.0, 60.0}];
      [v4 _setCornerRadius:30.0];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(ShortcutsRowCollectionViewCell *)self contentView];
      [contentView insertSubview:v4 belowSubview:self->_imageView];

      vibrantView = self->_vibrantView;
      self->_vibrantView = v4;
      v7 = v4;

      centerXAnchor = [v7 centerXAnchor];
      centerXAnchor2 = [(UIImageView *)self->_imageView centerXAnchor];
      v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v21[0] = v18;
      centerYAnchor = [v7 centerYAnchor];
      centerYAnchor2 = [(UIImageView *)self->_imageView centerYAnchor];
      v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v21[1] = v10;
      widthAnchor = [v7 widthAnchor];
      v12 = [widthAnchor constraintEqualToConstant:60.0];
      v21[2] = v12;
      heightAnchor = [v7 heightAnchor];
      widthAnchor2 = [v7 widthAnchor];
      v15 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
      v21[3] = v15;
      v16 = [NSArray arrayWithObjects:v21 count:4];
      [NSLayoutConstraint activateConstraints:v16];
    }

    else
    {
      [(MKVibrantView *)self->_vibrantView removeFromSuperview];
      v17 = self->_vibrantView;
      self->_vibrantView = 0;
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = ShortcutsRowCollectionViewCell;
  [(ShortcutsRowCollectionViewCell *)&v4 setHighlighted:highlighted];
  [(ShortcutsRowCollectionViewCell *)self _updateHighlight];
}

- (void)_updateHighlight
{
  v3 = [(ShortcutsRowCollectionViewCell *)self isHighlighted]^ 1;
  highlightLayer = self->_highlightLayer;

  [(CAShapeLayer *)highlightLayer setHidden:v3];
}

- (void)setModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_model != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(ShortcutsRowCellModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(ShortcutsRowCellModel *)self->_model removeObserver:self];
      objc_storeStrong(&self->_model, model);
      [(ShortcutsRowCellModel *)self->_model addObserver:self];
      [(ShortcutsRowCollectionViewCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (ShortcutsRowCollectionViewCell)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = ShortcutsRowCollectionViewCell;
  v3 = [(ShortcutsRowCollectionViewCell *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    v6 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:25.0];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v6];

    v7 = +[UIColor clearColor];
    [(UIImageView *)v3->_imageView setBackgroundColor:v7];

    theme = [(ShortcutsRowCollectionViewCell *)v3 theme];
    keyColor = [theme keyColor];
    [(UIImageView *)v3->_imageView setTintColor:keyColor];

    [objc_opt_class() imageSize];
    v11 = v10 * 0.5;
    layer = [(UIImageView *)v3->_imageView layer];
    [layer setCornerRadius:v11];

    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    [(UIImageView *)v3->_imageView setAccessibilityIdentifier:@"ShortcutImage"];
    contentView = [(ShortcutsRowCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_imageView];

    v14 = +[CAShapeLayer layer];
    highlightLayer = v3->_highlightLayer;
    v3->_highlightLayer = v14;

    v16 = [UIColor colorWithWhite:0.0 alpha:0.1];
    -[CAShapeLayer setFillColor:](v3->_highlightLayer, "setFillColor:", [v16 CGColor]);

    [objc_opt_class() imageSize];
    v18 = v17;
    [objc_opt_class() imageSize];
    [(CAShapeLayer *)v3->_highlightLayer setFrame:0.0, 0.0, v18, v19];
    [(CAShapeLayer *)v3->_highlightLayer bounds];
    v20 = [UIBezierPath bezierPathWithOvalInRect:?];
    -[CAShapeLayer setPath:](v3->_highlightLayer, "setPath:", [v20 CGPath]);

    contentView2 = [(ShortcutsRowCollectionViewCell *)v3 contentView];
    layer2 = [contentView2 layer];
    [layer2 addSublayer:v3->_highlightLayer];

    v23 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v23;

    v25 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v25];

    [(UILabel *)v3->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"ShortcutTitle"];
    -[UILabel setAdjustsFontForContentSizeCategory:](v3->_titleLabel, "setAdjustsFontForContentSizeCategory:", [objc_opt_class() supportsSizeCategory]);
    contentView3 = [(ShortcutsRowCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_titleLabel];

    if (([objc_opt_class() isSubtitleHidden] & 1) == 0)
    {
      v27 = objc_alloc_init(UILabel);
      subtitleLabel = v3->_subtitleLabel;
      v3->_subtitleLabel = v27;

      v29 = +[UIColor secondaryLabelColor];
      [(UILabel *)v3->_subtitleLabel setTextColor:v29];

      [(UILabel *)v3->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)v3->_subtitleLabel setMinimumScaleFactor:0.7];
      [(UILabel *)v3->_subtitleLabel setAccessibilityIdentifier:@"ShortcutSubtitle"];
      -[UILabel setAdjustsFontForContentSizeCategory:](v3->_subtitleLabel, "setAdjustsFontForContentSizeCategory:", [objc_opt_class() supportsSizeCategory]);
      contentView4 = [(ShortcutsRowCollectionViewCell *)v3 contentView];
      [contentView4 addSubview:v3->_subtitleLabel];
    }

    [(ShortcutsRowCollectionViewCell *)v3 _updateConstraints];
    [(ShortcutsRowCollectionViewCell *)v3 _updateTextAlignment];
    [(ShortcutsRowCollectionViewCell *)v3 _updateFonts];
    [(ShortcutsRowCollectionViewCell *)v3 _updateHighlight];
  }

  return v3;
}

+ (CGSize)cellSizeWithTraitCollection:(id)collection
{
  v4 = [self _effectiveTraitCollectionWithTraitCollection:collection];
  [v4 _maps_displayScaleOrMainScreenScale];
  v6 = v5;
  v7 = [self titleFontWithTraitCollection:v4];
  [UILabel _maps_maximumHeightWithFont:v7 numberOfLines:1 displayScale:v6];
  v9 = v8;
  if (([self isSubtitleHidden] & 1) == 0)
  {
    v10 = [self subtitleFontWithTraitCollection:v4];
    [UILabel _maps_maximumHeightWithFont:v10 numberOfLines:1 displayScale:v6];
    v9 = v11 + v9;
  }

  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    [UIFont _maps_bodyScaledValueForValue:v4 compatibleWithTraitCollection:142.350006];
    v15 = v14;
    v16 = v9 + 20.0;
  }

  else
  {
    [self imageSize];
    [UIFont _maps_bodyScaledValueForValue:v4 compatibleWithTraitCollection:v17 + 26.0];
    v15 = v18;
    [self imageTopMargin];
    v20 = v19;
    [self imageSize];
    v22 = v21;
    [self titleTopMargin];
    v24 = v23;
    [self bottomMargin];
    v16 = v20 + v22 + v9 + v24 + v25;
  }

  v26 = v15;
  v27 = v16;
  result.height = v27;
  result.width = v26;
  return result;
}

+ (id)_effectiveTraitCollectionWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  maximumContentSizeCategory = [self maximumContentSizeCategory];
  v6 = [collectionCopy _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:maximumContentSizeCategory];

  return v6;
}

+ (NSString)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end