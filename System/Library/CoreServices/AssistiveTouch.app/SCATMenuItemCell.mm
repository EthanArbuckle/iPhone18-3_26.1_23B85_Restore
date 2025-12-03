@interface SCATMenuItemCell
+ (CGSize)cellSizeForTitle:(id)title;
+ (CGSize)maxCellSize;
+ (id)measuringCell;
+ (id)titleToSizeCache;
- (BOOL)_useHighVisibilityImage;
- (BOOL)allowsDwellScanningToAbortAfterTimeout;
- (BOOL)scatPerformAction:(int)action;
- (NSLayoutConstraint)titleHiddenConstraint;
- (SCATMenuItemCell)initWithFrame:(CGRect)frame;
- (SCATModernMenuItem)menuItem;
- (UIImage)dimmedBorderImage;
- (double)_iconImageCornerRadiusForImageSize:(CGSize)size;
- (id)accessibilityLabel;
- (id)description;
- (id)scatSpeakableDescription;
- (void)_setBorderDimmed:(BOOL)dimmed focused:(BOOL)focused hidden:(BOOL)hidden;
- (void)_setIconDimmed:(BOOL)dimmed asDimAsBorder:(BOOL)border focused:(BOOL)focused;
- (void)_setupConstraints;
- (void)didUpdateScatMenuItemStyle;
- (void)flash;
- (void)prepareForReuse;
- (void)setIconImage:(id)image;
- (void)setIconImageAngle:(double)angle;
- (void)setPressedBackgroundImage:(id)image;
- (void)setShouldIncludeTextLabels:(BOOL)labels;
- (void)setShouldUseActivityIndicator:(BOOL)indicator;
- (void)update;
@end

@implementation SCATMenuItemCell

+ (id)titleToSizeCache
{
  if (qword_100218BA0 != -1)
  {
    sub_10012AD98();
  }

  v2 = qword_100218B98;
  if (!qword_100218B98)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_100218B98;
    qword_100218B98 = v3;

    v2 = qword_100218B98;
  }

  return v2;
}

+ (id)measuringCell
{
  if (qword_100218BB0 != -1)
  {
    sub_10012ADAC();
  }

  v3 = qword_100218BA8;

  return v3;
}

+ (CGSize)maxCellSize
{
  v2 = objc_opt_class();

  [v2 cellSizeForTitle:@"a\nb"];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)cellSizeForTitle:(id)title
{
  titleCopy = &stru_1001DB590;
  if (title)
  {
    titleCopy = title;
  }

  v4 = titleCopy;
  titleToSizeCache = [objc_opt_class() titleToSizeCache];
  v6 = [titleToSizeCache objectForKey:v4];
  if (!v6)
  {
    measuringCell = [objc_opt_class() measuringCell];
    titleLabel = [measuringCell titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:0];

    titleLabel2 = [measuringCell titleLabel];
    [titleLabel2 setText:v4];

    [measuringCell systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v18[0] = v10;
    v18[1] = v11;
    v6 = [NSValue valueWithBytes:v18 objCType:"{CGSize=dd}"];
    [titleToSizeCache setObject:v6 forKeyedSubscript:v4];
  }

  [v6 CGSizeValue];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (SCATMenuItemCell)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = SCATMenuItemCell;
  v3 = [(SCATMenuItemCell *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIBlurEffect effectWithStyle:9];
    v5 = [UIVibrancyEffect effectForBlurEffect:v4 style:0];
    iconEffect = v3->_iconEffect;
    v3->_iconEffect = v5;

    if (_UISolariumEnabled())
    {
      v7 = v3->_iconEffect;
      v3->_iconEffect = 0;
    }

    v8 = [[UIVisualEffectView alloc] initWithEffect:v3->_iconEffect];
    iconContainerView = v3->_iconContainerView;
    v3->_iconContainerView = v8;

    [(UIVisualEffectView *)v3->_iconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(SCATMenuItemCell *)v3 contentView];
    iconContainerView = [(SCATMenuItemCell *)v3 iconContainerView];
    [contentView addSubview:iconContainerView];

    v12 = objc_alloc_init(SCATMenuLabel);
    [(SCATMenuLabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATMenuItemCell *)v3 setTitleLabel:v12];
    v13 = +[UIColor whiteColor];
    titleLabel = [(SCATMenuItemCell *)v3 titleLabel];
    [titleLabel setTextColor:v13];

    iconContainerView2 = [(SCATMenuItemCell *)v3 iconContainerView];
    contentView2 = [iconContainerView2 contentView];
    [contentView2 addSubview:v12];

    v17 = [UIVisualEffectView alloc];
    iconEffect = [(SCATMenuItemCell *)v3 iconEffect];
    v19 = [v17 initWithEffect:iconEffect];
    borderContainerView = v3->_borderContainerView;
    v3->_borderContainerView = v19;

    [(UIVisualEffectView *)v3->_borderContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = objc_alloc_init(UIImageView);
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATMenuItemCell *)v3 setBackgroundBorderImageView:v21];
    contentView3 = [(SCATMenuItemCell *)v3 contentView];
    [contentView3 addSubview:v3->_borderContainerView];

    contentView4 = [(UIVisualEffectView *)v3->_borderContainerView contentView];
    backgroundBorderImageView = [(SCATMenuItemCell *)v3 backgroundBorderImageView];
    [contentView4 addSubview:backgroundBorderImageView];

    v25 = objc_alloc_init(UIImageView);
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setAlpha:0.0];
    [(SCATMenuItemCell *)v3 setPressedBackgroundBorderImageView:v25];
    contentView5 = [(UIVisualEffectView *)v3->_borderContainerView contentView];
    pressedBackgroundBorderImageView = [(SCATMenuItemCell *)v3 pressedBackgroundBorderImageView];
    [contentView5 addSubview:pressedBackgroundBorderImageView];

    v28 = objc_alloc_init(UIImageView);
    [v28 setContentMode:1];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATMenuItemCell *)v3 setIconImageView:v28];
    iconContainerView3 = [(SCATMenuItemCell *)v3 iconContainerView];
    contentView6 = [iconContainerView3 contentView];
    [contentView6 addSubview:v28];

    v31 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setHidden:1];
    [(SCATMenuItemCell *)v3 setActivityIndicatorView:v31];
    iconContainerView4 = [(SCATMenuItemCell *)v3 iconContainerView];
    contentView7 = [iconContainerView4 contentView];
    [contentView7 addSubview:v31];

    [(SCATMenuItemCell *)v3 _setupConstraints];
    [(SCATMenuItemCell *)v3 didUpdateScatMenuItemStyle];
  }

  return v3;
}

- (void)_setupConstraints
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v8 >= 375.0)
  {
    v9 = 10.0;
  }

  else
  {
    v9 = 5.0;
  }

  +[SCATModernMenuItem imageSize];
  v11 = v10;
  v13 = v12;
  contentView = [(SCATMenuItemCell *)self contentView];
  leadingAnchor = [contentView leadingAnchor];
  iconContainerView = [(SCATMenuItemCell *)self iconContainerView];
  leadingAnchor2 = [iconContainerView leadingAnchor];
  v152 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v157[0] = v152;
  contentView2 = [(SCATMenuItemCell *)self contentView];
  trailingAnchor = [contentView2 trailingAnchor];
  iconContainerView2 = [(SCATMenuItemCell *)self iconContainerView];
  trailingAnchor2 = [iconContainerView2 trailingAnchor];
  v147 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v157[1] = v147;
  contentView3 = [(SCATMenuItemCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  iconContainerView3 = [(SCATMenuItemCell *)self iconContainerView];
  topAnchor2 = [iconContainerView3 topAnchor];
  v142 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v157[2] = v142;
  contentView4 = [(SCATMenuItemCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  iconContainerView4 = [(SCATMenuItemCell *)self iconContainerView];
  bottomAnchor2 = [iconContainerView4 bottomAnchor];
  v137 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v157[3] = v137;
  borderContainerView = [(SCATMenuItemCell *)self borderContainerView];
  centerXAnchor = [borderContainerView centerXAnchor];
  iconContainerView5 = [(SCATMenuItemCell *)self iconContainerView];
  centerXAnchor2 = [iconContainerView5 centerXAnchor];
  v132 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v157[4] = v132;
  borderContainerView2 = [(SCATMenuItemCell *)self borderContainerView];
  topAnchor3 = [borderContainerView2 topAnchor];
  iconContainerView6 = [(SCATMenuItemCell *)self iconContainerView];
  topAnchor4 = [iconContainerView6 topAnchor];
  v127 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v157[5] = v127;
  borderContainerView3 = [(SCATMenuItemCell *)self borderContainerView];
  bottomAnchor3 = [borderContainerView3 bottomAnchor];
  iconContainerView7 = [(SCATMenuItemCell *)self iconContainerView];
  bottomAnchor4 = [iconContainerView7 bottomAnchor];
  v122 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v157[6] = v122;
  backgroundBorderImageView = [(SCATMenuItemCell *)self backgroundBorderImageView];
  heightAnchor = [backgroundBorderImageView heightAnchor];
  v119 = [heightAnchor constraintEqualToConstant:v13];
  v157[7] = v119;
  backgroundBorderImageView2 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  widthAnchor = [backgroundBorderImageView2 widthAnchor];
  v116 = [widthAnchor constraintEqualToConstant:v11];
  v157[8] = v116;
  backgroundBorderImageView3 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  topAnchor5 = [backgroundBorderImageView3 topAnchor];
  borderContainerView4 = [(SCATMenuItemCell *)self borderContainerView];
  contentView5 = [borderContainerView4 contentView];
  topAnchor6 = [contentView5 topAnchor];
  v110 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v157[9] = v110;
  pressedBackgroundBorderImageView = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  centerXAnchor3 = [pressedBackgroundBorderImageView centerXAnchor];
  backgroundBorderImageView4 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  centerXAnchor4 = [backgroundBorderImageView4 centerXAnchor];
  v105 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v157[10] = v105;
  pressedBackgroundBorderImageView2 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  centerYAnchor = [pressedBackgroundBorderImageView2 centerYAnchor];
  backgroundBorderImageView5 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  centerYAnchor2 = [backgroundBorderImageView5 centerYAnchor];
  v100 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v157[11] = v100;
  pressedBackgroundBorderImageView3 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  heightAnchor2 = [pressedBackgroundBorderImageView3 heightAnchor];
  backgroundBorderImageView6 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  heightAnchor3 = [backgroundBorderImageView6 heightAnchor];
  v95 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v157[12] = v95;
  pressedBackgroundBorderImageView4 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  widthAnchor2 = [pressedBackgroundBorderImageView4 widthAnchor];
  backgroundBorderImageView7 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  widthAnchor3 = [backgroundBorderImageView7 widthAnchor];
  v90 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v157[13] = v90;
  backgroundBorderImageView8 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  trailingAnchor3 = [backgroundBorderImageView8 trailingAnchor];
  borderContainerView5 = [(SCATMenuItemCell *)self borderContainerView];
  contentView6 = [borderContainerView5 contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v84 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v157[14] = v84;
  backgroundBorderImageView9 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  leadingAnchor3 = [backgroundBorderImageView9 leadingAnchor];
  borderContainerView6 = [(SCATMenuItemCell *)self borderContainerView];
  contentView7 = [borderContainerView6 contentView];
  leadingAnchor4 = [contentView7 leadingAnchor];
  v78 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v157[15] = v78;
  iconImageView = [(SCATMenuItemCell *)self iconImageView];
  heightAnchor4 = [iconImageView heightAnchor];
  v75 = [heightAnchor4 constraintEqualToConstant:v13];
  v157[16] = v75;
  iconImageView2 = [(SCATMenuItemCell *)self iconImageView];
  widthAnchor4 = [iconImageView2 widthAnchor];
  v72 = [widthAnchor4 constraintEqualToConstant:v11];
  v157[17] = v72;
  iconImageView3 = [(SCATMenuItemCell *)self iconImageView];
  leadingAnchor5 = [iconImageView3 leadingAnchor];
  iconContainerView8 = [(SCATMenuItemCell *)self iconContainerView];
  contentView8 = [iconContainerView8 contentView];
  leadingAnchor6 = [contentView8 leadingAnchor];
  v66 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v9];
  v157[18] = v66;
  iconImageView4 = [(SCATMenuItemCell *)self iconImageView];
  topAnchor7 = [iconImageView4 topAnchor];
  iconContainerView9 = [(SCATMenuItemCell *)self iconContainerView];
  contentView9 = [iconContainerView9 contentView];
  topAnchor8 = [contentView9 topAnchor];
  v60 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v157[19] = v60;
  iconImageView5 = [(SCATMenuItemCell *)self iconImageView];
  trailingAnchor5 = [iconImageView5 trailingAnchor];
  iconContainerView10 = [(SCATMenuItemCell *)self iconContainerView];
  contentView10 = [iconContainerView10 contentView];
  trailingAnchor6 = [contentView10 trailingAnchor];
  v54 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v9];
  v157[20] = v54;
  titleLabel = [(SCATMenuItemCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  iconImageView6 = [(SCATMenuItemCell *)self iconImageView];
  bottomAnchor5 = [iconImageView6 bottomAnchor];
  v49 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor5 multiplier:0.8];
  v157[21] = v49;
  titleLabel2 = [(SCATMenuItemCell *)self titleLabel];
  trailingAnchor7 = [titleLabel2 trailingAnchor];
  iconContainerView11 = [(SCATMenuItemCell *)self iconContainerView];
  contentView11 = [iconContainerView11 contentView];
  trailingAnchor8 = [contentView11 trailingAnchor];
  v43 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  v157[22] = v43;
  titleLabel3 = [(SCATMenuItemCell *)self titleLabel];
  leadingAnchor7 = [titleLabel3 leadingAnchor];
  iconContainerView12 = [(SCATMenuItemCell *)self iconContainerView];
  contentView12 = [iconContainerView12 contentView];
  leadingAnchor8 = [contentView12 leadingAnchor];
  v37 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
  v157[23] = v37;
  titleLabel4 = [(SCATMenuItemCell *)self titleLabel];
  centerXAnchor5 = [titleLabel4 centerXAnchor];
  iconContainerView13 = [(SCATMenuItemCell *)self iconContainerView];
  contentView13 = [iconContainerView13 contentView];
  centerXAnchor6 = [contentView13 centerXAnchor];
  v31 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v157[24] = v31;
  titleLabel5 = [(SCATMenuItemCell *)self titleLabel];
  bottomAnchor6 = [titleLabel5 bottomAnchor];
  iconContainerView14 = [(SCATMenuItemCell *)self iconContainerView];
  contentView14 = [iconContainerView14 contentView];
  bottomAnchor7 = [contentView14 bottomAnchor];
  v25 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v157[25] = v25;
  activityIndicatorView = [(SCATMenuItemCell *)self activityIndicatorView];
  centerXAnchor7 = [activityIndicatorView centerXAnchor];
  iconContainerView15 = [(SCATMenuItemCell *)self iconContainerView];
  centerXAnchor8 = [iconContainerView15 centerXAnchor];
  v17 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v157[26] = v17;
  activityIndicatorView2 = [(SCATMenuItemCell *)self activityIndicatorView];
  centerYAnchor3 = [activityIndicatorView2 centerYAnchor];
  iconContainerView16 = [(SCATMenuItemCell *)self iconContainerView];
  centerYAnchor4 = [iconContainerView16 centerYAnchor];
  v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v157[27] = v22;
  v23 = [NSArray arrayWithObjects:v157 count:28];
  [NSLayoutConstraint activateConstraints:v23];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  menuItem = [(SCATMenuItemCell *)self menuItem];
  title = [menuItem title];
  [(SCATMenuItemCell *)self frame];
  v7 = NSStringFromCGRect(v11);
  v8 = [NSString stringWithFormat:@"%@<%p>. title:%@. frame:%@", v4, self, title, v7];

  return v8;
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  if (self->_iconImage != imageCopy)
  {
    v9 = imageCopy;
    objc_storeStrong(&self->_iconImage, image);
    v6 = +[SCATStyleProvider sharedStyleProvider];
    menuKnockoutColor = [v6 menuKnockoutColor];
    v8 = [(UIImage *)v9 imageWithTintColor:menuKnockoutColor renderingMode:1];
    [(SCATMenuItemCell *)self setDimmedIconImage:v8];

    [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:0];
    [(SCATMenuItemCell *)self didUpdateScatMenuItemStyle];
    imageCopy = v9;
  }
}

- (void)setShouldUseActivityIndicator:(BOOL)indicator
{
  if (self->_shouldUseActivityIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_shouldUseActivityIndicator = indicator;
    activityIndicatorView = [(SCATMenuItemCell *)self activityIndicatorView];
    v7 = activityIndicatorView;
    if (indicatorCopy)
    {
      [activityIndicatorView startAnimating];
    }

    else
    {
      [activityIndicatorView stopAnimating];
    }

    activityIndicatorView2 = [(SCATMenuItemCell *)self activityIndicatorView];
    [activityIndicatorView2 setHidden:!indicatorCopy];

    [(SCATMenuItemCell *)self didUpdateScatMenuItemStyle];
  }
}

- (void)setIconImageAngle:(double)angle
{
  if (self->_iconImageAngle != angle)
  {
    v10 = v3;
    v11 = v4;
    self->_iconImageAngle = angle;
    CGAffineTransformMakeRotation(&v9, angle);
    iconImageView = [(SCATMenuItemCell *)self iconImageView];
    v8 = v9;
    [iconImageView setTransform:&v8];

    highVisBackgroundAndIconImage = [(SCATMenuItemCell *)self highVisBackgroundAndIconImage];

    if (highVisBackgroundAndIconImage)
    {
      [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:0];
      [(SCATMenuItemCell *)self didUpdateScatMenuItemStyle];
    }
  }
}

- (void)setPressedBackgroundImage:(id)image
{
  imageCopy = image;
  if (self->_pressedBackgroundImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_pressedBackgroundImage, image);
    pressedBackgroundBorderImageView = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
    [pressedBackgroundBorderImageView setImage:v7];

    imageCopy = v7;
  }
}

- (void)setShouldIncludeTextLabels:(BOOL)labels
{
  labelsCopy = labels;
  self->_shouldIncludeTextLabels = labels;
  titleHiddenConstraint = [(SCATMenuItemCell *)self titleHiddenConstraint];
  [titleHiddenConstraint setActive:!labelsCopy];
}

- (NSLayoutConstraint)titleHiddenConstraint
{
  titleHiddenConstraint = self->_titleHiddenConstraint;
  if (!titleHiddenConstraint)
  {
    titleLabel = [(SCATMenuItemCell *)self titleLabel];
    heightAnchor = [titleLabel heightAnchor];
    v6 = [heightAnchor constraintEqualToConstant:0.0];
    v7 = self->_titleHiddenConstraint;
    self->_titleHiddenConstraint = v6;

    titleHiddenConstraint = self->_titleHiddenConstraint;
  }

  return titleHiddenConstraint;
}

- (BOOL)_useHighVisibilityImage
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchScannerCursorHighVisibilityEnabled = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  return assistiveTouchScannerCursorHighVisibilityEnabled;
}

- (void)_setBorderDimmed:(BOOL)dimmed focused:(BOOL)focused hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  focusedCopy = focused;
  dimmedCopy = dimmed;
  if ([(SCATMenuItemCell *)self _useHighVisibilityImage]&& focusedCopy)
  {
    highVisBackgroundAndIconImage = [(SCATMenuItemCell *)self highVisBackgroundAndIconImage];

    if (!highVisBackgroundAndIconImage)
    {
      +[SCATModernMenuItem imageSize];
      v11 = v10;
      v13 = v12;
      y = CGRectZero.origin.y;
      v15 = +[UIScreen mainScreen];
      [v15 scale];
      v17 = v16;
      v56.width = v11;
      v56.height = v13;
      UIGraphicsBeginImageContextWithOptions(v56, 0, v17);

      [(SCATMenuItemCell *)self _iconImageCornerRadiusForImageSize:v11, v13];
      v19 = [UIBezierPath bezierPathWithRoundedRect:CGRectZero.origin.x cornerRadius:y, v11, v13, v18];
      v20 = +[UIColor whiteColor];
      [v20 set];

      [v19 fill];
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextTranslateCTM(CurrentContext, v11 * 0.5, v13 * 0.5);
      v22 = UIGraphicsGetCurrentContext();
      [(SCATMenuItemCell *)self iconImageAngle];
      CGContextRotateCTM(v22, v23);
      v24 = UIGraphicsGetCurrentContext();
      CGContextTranslateCTM(v24, -(v11 * 0.5), -(v13 * 0.5));
      iconImage = [(SCATMenuItemCell *)self iconImage];
      [iconImage size];
      v27 = v26;
      iconImage2 = [(SCATMenuItemCell *)self iconImage];
      [iconImage2 size];
      v30 = v29;

      if (v27 == v30)
      {
        v40 = 0.0;
        v41 = 0.0;
      }

      else
      {
        iconImage3 = [(SCATMenuItemCell *)self iconImage];
        [iconImage3 size];
        v33 = v32;

        iconImage4 = [(SCATMenuItemCell *)self iconImage];
        [iconImage4 size];
        v36 = v35;

        v37 = v13 / v36;
        if (v33 > v36)
        {
          v37 = v11 / v33;
        }

        v38 = v33 * v37;
        v39 = v36 * v37;
        v40 = (v11 - v38) * 0.5;
        v41 = (v13 - v39) * 0.5;
        v11 = v38;
        v13 = v39;
      }

      iconImage5 = [(SCATMenuItemCell *)self iconImage];
      [iconImage5 drawInRect:23 blendMode:v40 alpha:{v41, v11, v13, 1.0}];

      v51 = UIGraphicsGetImageFromCurrentImageContext();
      [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:v51];

      UIGraphicsEndImageContext();
    }

    highVisBackgroundAndIconImage2 = [(SCATMenuItemCell *)self highVisBackgroundAndIconImage];
    goto LABEL_21;
  }

  if (dimmedCopy)
  {
    if (_UISolariumEnabled())
    {
      [(SCATMenuItemCell *)self dimmedBorderImage];
    }

    else
    {
      [(SCATMenuItemCell *)self dimmedBackgroundImage];
    }
    v44 = ;
    backgroundBorderImageView = [(SCATMenuItemCell *)self backgroundBorderImageView];
    [backgroundBorderImageView setImage:v44];

    v54 = +[SCATStyleProvider sharedStyleProvider];
    [v54 menuKnockoutBorderOpacity];
    v47 = v46;
    backgroundBorderImageView2 = [(SCATMenuItemCell *)self backgroundBorderImageView];
    [backgroundBorderImageView2 setAlpha:v47];

    goto LABEL_23;
  }

  if (!hiddenCopy)
  {
    if (_UISolariumEnabled())
    {
      [(SCATMenuItemCell *)self dimmedBorderImage];
    }

    else
    {
      [(SCATMenuItemCell *)self defaultBackgroundImage];
    }
    highVisBackgroundAndIconImage2 = ;
LABEL_21:
    v52 = highVisBackgroundAndIconImage2;
    backgroundBorderImageView3 = [(SCATMenuItemCell *)self backgroundBorderImageView];
    [backgroundBorderImageView3 setImage:v52];

    backgroundBorderImageView4 = [(SCATMenuItemCell *)self backgroundBorderImageView];
    v43 = 1.0;
    goto LABEL_22;
  }

  backgroundBorderImageView4 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v43 = 0.0;
LABEL_22:
  v54 = backgroundBorderImageView4;
  [backgroundBorderImageView4 setAlpha:v43];
LABEL_23:
}

- (void)_setIconDimmed:(BOOL)dimmed asDimAsBorder:(BOOL)border focused:(BOOL)focused
{
  focusedCopy = focused;
  borderCopy = border;
  dimmedCopy = dimmed;
  if ([(SCATMenuItemCell *)self _useHighVisibilityImage]&& focusedCopy)
  {
    iconImageView = [(SCATMenuItemCell *)self iconImageView];
    iconImageView4 = iconImageView;
LABEL_5:
    [iconImageView setHidden:1];
LABEL_6:
    v11 = iconImageView4;
LABEL_7:

    return;
  }

  shouldUseActivityIndicator = [(SCATMenuItemCell *)self shouldUseActivityIndicator];
  iconImageView = [(SCATMenuItemCell *)self iconImageView];
  iconImageView4 = iconImageView;
  if (shouldUseActivityIndicator)
  {
    goto LABEL_5;
  }

  [iconImageView setHidden:0];

  if (!dimmedCopy)
  {
    iconImage = [(SCATMenuItemCell *)self iconImage];
    iconImageView2 = [(SCATMenuItemCell *)self iconImageView];
    [iconImageView2 setImage:iconImage];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      iconImageView3 = [(SCATMenuItemCell *)self iconImageView];
      [iconImageView3 _setDrawsAsBackdropOverlayWithBlendMode:0];
    }

    iconImageView4 = [(SCATMenuItemCell *)self iconImageView];
    [iconImageView4 setAlpha:1.0];
    goto LABEL_6;
  }

  dimmedIconImage = [(SCATMenuItemCell *)self dimmedIconImage];
  iconImageView5 = [(SCATMenuItemCell *)self iconImageView];
  [iconImageView5 setImage:dimmedIconImage];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    iconImageView6 = [(SCATMenuItemCell *)self iconImageView];
    v15 = +[SCATStyleProvider sharedStyleProvider];
    [iconImageView6 _setDrawsAsBackdropOverlayWithBlendMode:{objc_msgSend(v15, "menuKnockoutBorderOverlayBlendMode")}];
  }

  if (borderCopy)
  {
    iconImageView4 = +[SCATStyleProvider sharedStyleProvider];
    [iconImageView4 menuKnockoutBorderOpacity];
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  iconImageView7 = [(SCATMenuItemCell *)self iconImageView];
  [iconImageView7 setAlpha:v17];

  v11 = iconImageView4;
  if (borderCopy)
  {
    goto LABEL_7;
  }
}

- (void)didUpdateScatMenuItemStyle
{
  scatMenuItemStyle = [(SCATMenuItemCell *)self scatMenuItemStyle];
  v4 = scatMenuItemStyle;
  if (scatMenuItemStyle <= 1)
  {
    if (!scatMenuItemStyle)
    {
      selfCopy5 = self;
      v6 = 1;
      v7 = 0;
LABEL_13:
      [(SCATMenuItemCell *)selfCopy5 _setBorderDimmed:v6 focused:0 hidden:v7];
      selfCopy7 = self;
      v12 = 0;
      v13 = 0;
      goto LABEL_14;
    }

    if (scatMenuItemStyle != 1)
    {
      goto LABEL_16;
    }

    selfCopy6 = self;
    v9 = 1;
    v10 = 0;
LABEL_11:
    [(SCATMenuItemCell *)selfCopy6 _setBorderDimmed:v9 focused:0 hidden:v10];
    selfCopy7 = self;
    v12 = 1;
    v13 = 1;
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (scatMenuItemStyle != 2)
  {
    if (scatMenuItemStyle != 3)
    {
      if (scatMenuItemStyle != 4)
      {
        goto LABEL_16;
      }

      selfCopy5 = self;
      v6 = 0;
      v7 = 1;
      goto LABEL_13;
    }

    selfCopy6 = self;
    v9 = 0;
    v10 = 1;
    goto LABEL_11;
  }

  [(SCATMenuItemCell *)self _setBorderDimmed:0 focused:1 hidden:0];
  selfCopy7 = self;
  v12 = 0;
  v13 = 0;
  v14 = 1;
LABEL_15:
  [(SCATMenuItemCell *)selfCopy7 _setIconDimmed:v12 asDimAsBorder:v13 focused:v14];
LABEL_16:
  titleLabel = [(SCATMenuItemCell *)self titleLabel];
  [titleLabel setScatMenuItemStyle:v4];

  titleLabel2 = [(SCATMenuItemCell *)self titleLabel];
  [titleLabel2 didUpdateScatMenuItemStyle];
}

- (UIImage)dimmedBorderImage
{
  dimmedBorderImage = self->_dimmedBorderImage;
  if (!dimmedBorderImage)
  {
    +[SCATModernMenuItem imageSize];
    v5 = v4;
    v7 = v6;
    y = CGRectZero.origin.y;
    v9 = +[UIScreen mainScreen];
    [v9 scale];
    v11 = v10;
    v23.width = v5;
    v23.height = v7;
    UIGraphicsBeginImageContextWithOptions(v23, 0, v11);

    v24.origin.x = CGRectZero.origin.x;
    v24.origin.y = y;
    v24.size.width = v5;
    v24.size.height = v7;
    v25 = CGRectInset(v24, 0.5, 0.5);
    x = v25.origin.x;
    v13 = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    [(SCATMenuItemCell *)self _iconImageCornerRadiusForImageSize:v5, v7];
    v17 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:v13, width, height, v16];
    [v17 setLineWidth:1.0];
    v18 = +[UIColor whiteColor];
    [v18 set];

    [v17 stroke];
    v19 = UIGraphicsGetImageFromCurrentImageContext();
    v20 = self->_dimmedBorderImage;
    self->_dimmedBorderImage = v19;

    UIGraphicsEndImageContext();
    dimmedBorderImage = self->_dimmedBorderImage;
  }

  return dimmedBorderImage;
}

- (void)prepareForReuse
{
  [(SCATMenuItemCell *)self setIconImageAngle:0.0];
  [(SCATMenuItemCell *)self setShouldUseActivityIndicator:0];
  [(SCATMenuItemCell *)self setIconImage:0];
  [(SCATMenuItemCell *)self setDimmedIconImage:0];
  [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:0];
  iconImageView = [(SCATMenuItemCell *)self iconImageView];
  [iconImageView setImage:0];

  [(SCATMenuItemCell *)self setDefaultBackgroundImage:0];
  [(SCATMenuItemCell *)self setPressedBackgroundImage:0];
  [(SCATMenuItemCell *)self setDimmedBackgroundImage:0];
  backgroundBorderImageView = [(SCATMenuItemCell *)self backgroundBorderImageView];
  [backgroundBorderImageView setImage:0];

  pressedBackgroundBorderImageView = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  [pressedBackgroundBorderImageView setImage:0];

  [(SCATMenuItemCell *)self setMenuItem:0];
  titleLabel = [(SCATMenuItemCell *)self titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:0];

  titleLabel2 = [(SCATMenuItemCell *)self titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  v8.receiver = self;
  v8.super_class = SCATMenuItemCell;
  [(SCATMenuItemCell *)&v8 prepareForReuse];
}

- (double)_iconImageCornerRadiusForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!_UISolariumEnabled())
  {
    return 15.0;
  }

  v5 = +[SCATStyleProvider sharedStyleProvider];
  [v5 cornerRadiusForSize:{width, height}];
  v7 = v6;

  return v7;
}

- (BOOL)scatPerformAction:(int)action
{
  if (action != 2010)
  {
    return 0;
  }

  selfCopy = self;
  menuItem = [(SCATMenuItemCell *)self menuItem];
  LOBYTE(selfCopy) = [menuItem handleActivateWithElement:selfCopy];

  return selfCopy;
}

- (id)scatSpeakableDescription
{
  menuItem = [(SCATMenuItemCell *)self menuItem];
  accessibilityLabel = [menuItem accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityLabel
{
  menuItem = [(SCATMenuItemCell *)self menuItem];
  accessibilityLabel = [menuItem accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)allowsDwellScanningToAbortAfterTimeout
{
  menuItem = [(SCATMenuItemCell *)self menuItem];
  allowsDwellScanningToAbortAfterTimeout = [menuItem allowsDwellScanningToAbortAfterTimeout];

  return allowsDwellScanningToAbortAfterTimeout;
}

- (void)update
{
  iconImage = [(SCATMenuItemCell *)self iconImage];
  isSymbolImage = [iconImage isSymbolImage];

  if (isSymbolImage)
  {
    iconImageView = [(SCATMenuItemCell *)self iconImageView];
    [iconImageView setContentMode:4];
  }

  if (![(SCATMenuItemCell *)self isFlashing])
  {
    menuItem = [(SCATMenuItemCell *)self menuItem];
    -[SCATMenuItemCell setShouldUseActivityIndicator:](self, "setShouldUseActivityIndicator:", [menuItem shouldUseActivityIndicator]);

    menuItem2 = [(SCATMenuItemCell *)self menuItem];
    resolvedImage = [menuItem2 resolvedImage];
    [(SCATMenuItemCell *)self setIconImage:resolvedImage];

    titleLabel = [(SCATMenuItemCell *)self titleLabel];
    menuItem3 = [(SCATMenuItemCell *)self menuItem];
    title = [menuItem3 title];
    [titleLabel setText:title];

    menuItem4 = [(SCATMenuItemCell *)self menuItem];
    -[SCATMenuItemCell setScatMenuItemStyle:](self, "setScatMenuItemStyle:", [menuItem4 style]);

    menuItem5 = [(SCATMenuItemCell *)self menuItem];
    [menuItem5 iconImageAngle];
    [(SCATMenuItemCell *)self setIconImageAngle:?];

    [(SCATMenuItemCell *)self setNeedsDisplay];
  }
}

- (void)flash
{
  [(SCATMenuItemCell *)self setIsFlashing:1];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C2990;
  v5[3] = &unk_1001D3460;
  objc_copyWeak(&v6, &location);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C29EC;
  v3[3] = &unk_1001D4458;
  objc_copyWeak(&v4, &location);
  [UIView animateWithDuration:v5 animations:v3 completion:0.1];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (SCATModernMenuItem)menuItem
{
  WeakRetained = objc_loadWeakRetained(&self->_menuItem);

  return WeakRetained;
}

@end