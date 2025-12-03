@interface NavShareETACell
- (NavShareETACell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NavShareETACellDelegate)delegate;
- (double)heightForWidth:(double)width;
- (void)_updateCapabilityContent;
- (void)_updateContactContent;
- (void)_updateFonts;
- (void)_updateSharingContent;
- (void)_updateSharingRingAnimated:(BOOL)animated;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutSubviews;
- (void)setCapabilityType:(unint64_t)type serviceName:(id)name;
- (void)setContact:(id)contact;
- (void)setIsStandaloneSharingSuggestion:(BOOL)suggestion;
- (void)setSharingState:(unint64_t)state animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation NavShareETACell

- (NavShareETACellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    delegate = [(NavShareETACell *)self delegate];
    [delegate cellDidFinishRingAnimation:self];
  }

  circleLayer = self->_circleLayer;

  [(CAShapeLayer *)circleLayer setDelegate:0];
}

- (void)_updateSharingRingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  sharingState = [(NavShareETACell *)self sharingState];
  if (sharingState - 2 < 2)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CAShapeLayer *)self->_circleLayer setStrokeEnd:1.0];
    LODWORD(v7) = 1.0;
    [(CAShapeLayer *)self->_circleLayer setOpacity:v7];
    +[CATransaction commit];
    circleLayer = self->_circleLayer;
LABEL_6:

    [(CAShapeLayer *)circleLayer removeAnimationForKey:@"drawCircleAnimation"];
    return;
  }

  if (sharingState != 1)
  {
    if (sharingState)
    {
      return;
    }

    [(CAShapeLayer *)self->_circleLayer setOpacity:0.0];
    circleLayer = self->_circleLayer;
    goto LABEL_6;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CAShapeLayer *)self->_circleLayer setStrokeEnd:0.0];
  LODWORD(v8) = 1.0;
  [(CAShapeLayer *)self->_circleLayer setOpacity:v8];
  +[CATransaction commit];
  v9 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
  v12 = v9;
  v10 = 1.5;
  if (!animatedCopy)
  {
    v10 = 0.0;
  }

  [v9 setDuration:v10];
  [v12 setToValue:&off_1016EADF0];
  v11 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v12 setTimingFunction:v11];

  [v12 setDelegate:self];
  [v12 setFillMode:kCAFillModeBoth];
  [v12 setRemovedOnCompletion:0];
  [(CAShapeLayer *)self->_circleLayer addAnimation:v12 forKey:@"drawCircleAnimation"];
}

- (double)heightForWidth:(double)width
{
  text = [(UILabel *)self->_smsLabel text];
  v6 = [text length];

  if (v6)
  {
    [(UILabel *)self->_smsLabel sizeThatFits:width, 78.0];
    v8 = v7 + 32.0;
  }

  else
  {
    v8 = 16.0;
  }

  v9 = width + -76.0 - v8;
  [(UILabel *)self->_titleLabel sizeThatFits:v9, 78.0];
  v11 = v10;
  text2 = [(UILabel *)self->_subtitleLabel text];
  if ([text2 length])
  {
    [(UILabel *)self->_subtitleLabel sizeThatFits:v9, 78.0];
    v14 = ceil(v13);
  }

  else
  {
    v14 = 0.0;
  }

  return fmax(ceil(v11) + v14 + 32.0, 78.0);
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  backgroundConfiguration = [(NavShareETACell *)self backgroundConfiguration];
  v5 = [backgroundConfiguration updatedConfigurationForState:stateCopy];

  traitCollection = [(NavShareETACell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (([stateCopy isHighlighted] & 1) != 0 || objc_msgSend(stateCopy, "isSelected"))
  {
    if (userInterfaceStyle == 2)
    {
      +[UIColor tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      +[UIColor systemLightMidGrayColor];
    }
    v8 = ;
  }

  else
  {
    v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  }

  v9 = v8;
  [v5 setBackgroundColor:v8];

  [(NavShareETACell *)self setBackgroundConfiguration:v5];
}

- (void)_updateSharingContent
{
  sharingState = [(NavShareETACell *)self sharingState];
  if (sharingState - 2 < 2)
  {
    [(NSLayoutConstraint *)self->_titleCenterConstraint setActive:0];
    [(NSLayoutConstraint *)self->_textCenterConstraint setActive:1];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[Shared Trip] Already Sharing" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v8];

    v6 = +[UIColor systemRedColor];
    goto LABEL_8;
  }

  if (sharingState == 1)
  {
    [(NSLayoutConstraint *)self->_titleCenterConstraint setActive:0];
    [(NSLayoutConstraint *)self->_textCenterConstraint setActive:1];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Shared Trip] Just Started" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v10];

    v6 = +[UIColor secondaryLabelColor];
    goto LABEL_8;
  }

  if (sharingState)
  {
    return;
  }

  if (self->_isStandaloneSharingSuggestion)
  {
    [(NSLayoutConstraint *)self->_titleCenterConstraint setActive:0];
    [(NSLayoutConstraint *)self->_textCenterConstraint setActive:1];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[Shared Trip] Start Sharing" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v5];

    v6 = +[UIColor systemBlueColor];
LABEL_8:
    v12 = v6;
    [(UILabel *)self->_subtitleLabel setTextColor:v6];

    return;
  }

  [(NSLayoutConstraint *)self->_textCenterConstraint setActive:0];
  [(NSLayoutConstraint *)self->_titleCenterConstraint setActive:1];
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setText:0];
}

- (void)_updateCapabilityContent
{
  capabilityType = self->_capabilityType;
  if (capabilityType - 2 >= 2)
  {
    if (capabilityType == 4)
    {
      v6 = MapsAppBundleId;
      traitCollection = [(NavShareETACell *)self traitCollection];
      [traitCollection displayScale];
      v8 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];
      [(UIImageView *)self->_badgeImageView setImage:v8];
    }

    else
    {
      [(UIImageView *)self->_badgeImageView setImage:0];
    }
  }

  else
  {
    traitCollection2 = [(NavShareETACell *)self traitCollection];
    [traitCollection2 displayScale];
    v5 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.MobileSMS" format:0 scale:?];
    [(UIImageView *)self->_badgeImageView setImage:v5];
  }

  if (self->_capabilityType == 2 && self->_serviceName)
  {
    [(UILabel *)self->_smsLabel setText:?];
    v9 = -16.0;
  }

  else
  {
    [(UILabel *)self->_smsLabel setText:0];
    v9 = 0.0;
  }

  textTrailingConstrant = self->_textTrailingConstrant;

  [(NSLayoutConstraint *)textTrailingConstrant setConstant:v9];
}

- (void)_updateContactContent
{
  contact = [(NavShareETACell *)self contact];
  v4 = contact;
  if (contact)
  {
    displayName = [contact displayName];
    [(UILabel *)self->_titleLabel setText:displayName];

    v6 = +[UIColor labelColor];
    [(UILabel *)self->_titleLabel setTextColor:v6];

    objc_initWeak(&location, self);
    v7 = +[MapsUIImageCache sharedCache];
    contact2 = [v4 contact];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100FF2CA0;
    v15[3] = &unk_1016612F0;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    [v7 getImageForContact:contact2 size:v15 completion:54.0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[SharedETA] Open Contacts" value:@"localized string not found" table:0];
    [(UILabel *)self->_titleLabel setText:v10];

    v11 = +[UIColor systemBlueColor];
    [(UILabel *)self->_titleLabel setTextColor:v11];

    v12 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v13 = [UIImage systemImageNamed:@"person.crop.circle.fill" withConfiguration:v12];
    v14 = [v13 imageWithRenderingMode:2];
    [(UIImageView *)self->_leadingImageView setImage:v14];

    [(UIImageView *)self->_leadingImageView setContentMode:4];
  }
}

- (void)_updateFonts
{
  traitCollection = [(NavShareETACell *)self traitCollection];
  v4 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:v4];
  [(UILabel *)self->_titleLabel setFont:v5];

  traitCollection2 = [(NavShareETACell *)self traitCollection];
  v7 = [traitCollection2 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v7];
  [(UILabel *)self->_subtitleLabel setFont:v8];

  traitCollection3 = [(NavShareETACell *)self traitCollection];
  v9 = [traitCollection3 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:v9];
  [(UILabel *)self->_smsLabel setFont:v10];
}

- (void)setIsStandaloneSharingSuggestion:(BOOL)suggestion
{
  if (self->_isStandaloneSharingSuggestion != suggestion)
  {
    self->_isStandaloneSharingSuggestion = suggestion;
    [(NavShareETACell *)self _updateSharingContent];
  }
}

- (void)setSharingState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_sharingState != state)
  {
    animatedCopy = animated;
    self->_sharingState = state;
    [(NavShareETACell *)self _updateSharingContent];

    [(NavShareETACell *)self _updateSharingRingAnimated:animatedCopy];
  }
}

- (void)setCapabilityType:(unint64_t)type serviceName:(id)name
{
  nameCopy = name;
  if (self->_capabilityType != type || (v6 = self->_serviceName, v7 = nameCopy, v8 = nameCopy, v7 | v6) && (v9 = [v6 isEqual:v7], v7, v6, v8 = nameCopy, (v9 & 1) == 0))
  {
    self->_capabilityType = type;
    v10 = sub_100D12CE0();
    serviceName = self->_serviceName;
    self->_serviceName = v10;

    [(NavShareETACell *)self _updateCapabilityContent];
    v8 = nameCopy;
  }
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  v6 = self->_contact;
  v7 = contactCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_contact, contact);
      [(NavShareETACell *)self _updateContactContent];
      v7 = v9;
    }
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NavShareETACell;
  [(NavShareETACell *)&v6 layoutSubviews];
  [(UIView *)self->_imageBackgroundView frame];
  v4 = v3 + -3.0;
  [(UIView *)self->_imageBackgroundView frame];
  [(CAShapeLayer *)self->_circleLayer setPosition:v4, v5 + -3.0];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NavShareETACell;
  changeCopy = change;
  [(NavShareETACell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NavShareETACell *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(NavShareETACell *)self _updateFonts];
    [(NavShareETACell *)self setNeedsUpdateConfiguration];
  }
}

- (NavShareETACell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v127.receiver = self;
  v127.super_class = NavShareETACell;
  v4 = [(NavShareETACell *)&v127 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(NavShareETACell *)v4 setAccessibilityIdentifier:v6];

    v126 = +[UIBackgroundConfiguration listCellConfiguration];
    [v126 setCornerRadius:10.0];
    [(NavShareETACell *)v4 setBackgroundConfiguration:v126];
    contentView = [(NavShareETACell *)v4 contentView];
    [contentView setAccessibilityIdentifier:@"NavShareETACellContent"];

    v8 = +[CAShapeLayer layer];
    circleLayer = v4->_circleLayer;
    v4->_circleLayer = v8;

    v10 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, 60.0, 60.0, 60.0];
    -[CAShapeLayer setPath:](v4->_circleLayer, "setPath:", [v10 CGPath]);

    v11 = +[UIColor clearColor];
    -[CAShapeLayer setFillColor:](v4->_circleLayer, "setFillColor:", [v11 CGColor]);

    v12 = +[UIColor systemBlueColor];
    -[CAShapeLayer setStrokeColor:](v4->_circleLayer, "setStrokeColor:", [v12 CGColor]);

    [(CAShapeLayer *)v4->_circleLayer setLineWidth:2.0];
    contentView2 = [(NavShareETACell *)v4 contentView];
    layer = [contentView2 layer];
    [layer insertSublayer:v4->_circleLayer atIndex:0];

    [(CAShapeLayer *)v4->_circleLayer setOpacity:0.0];
    [(CAShapeLayer *)v4->_circleLayer setStrokeEnd:0.0];
    v15 = objc_opt_new();
    imageBackgroundView = v4->_imageBackgroundView;
    v4->_imageBackgroundView = v15;

    [(UIView *)v4->_imageBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [(UIView *)v4->_imageBackgroundView layer];
    [layer2 setCornerRadius:27.0];

    layer3 = [(UIView *)v4->_imageBackgroundView layer];
    [layer3 setMasksToBounds:1];

    v19 = +[UIColor tertiarySystemFillColor];
    [(UIView *)v4->_imageBackgroundView setBackgroundColor:v19];

    [(UIView *)v4->_imageBackgroundView setAccessibilityIdentifier:@"ImageBackgroundView"];
    contentView3 = [(NavShareETACell *)v4 contentView];
    [contentView3 addSubview:v4->_imageBackgroundView];

    v21 = objc_opt_new();
    leadingImageView = v4->_leadingImageView;
    v4->_leadingImageView = v21;

    [(UIImageView *)v4->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer4 = [(UIImageView *)v4->_leadingImageView layer];
    [layer4 setCornerRadius:27.0];

    v24 = +[UIColor systemBlueColor];
    [(UIImageView *)v4->_leadingImageView setTintColor:v24];

    [(UIImageView *)v4->_leadingImageView setAccessibilityIdentifier:@"LeadingImageView"];
    [(UIImageView *)v4->_leadingImageView setAccessibilityIgnoresInvertColors:1];
    [(UIView *)v4->_imageBackgroundView addSubview:v4->_leadingImageView];
    v25 = objc_opt_new();
    badgeImageView = v4->_badgeImageView;
    v4->_badgeImageView = v25;

    [(UIImageView *)v4->_badgeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_badgeImageView setContentMode:1];
    [(UIImageView *)v4->_badgeImageView setAccessibilityIdentifier:@"BadgeImageView"];
    contentView4 = [(NavShareETACell *)v4 contentView];
    [contentView4 addSubview:v4->_badgeImageView];

    v28 = objc_opt_new();
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setAccessibilityIdentifier:@"TextContainer"];
    contentView5 = [(NavShareETACell *)v4 contentView];
    [contentView5 addSubview:v28];

    v30 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v30;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [v28 addSubview:v4->_titleLabel];
    v32 = objc_opt_new();
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v32;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [v28 addSubview:v4->_subtitleLabel];
    v34 = objc_opt_new();
    smsLabel = v4->_smsLabel;
    v4->_smsLabel = v34;

    [(UILabel *)v4->_smsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = +[UIColor systemGreenColor];
    [(UILabel *)v4->_smsLabel setTextColor:v36];

    LODWORD(v37) = 1148846080;
    [(UILabel *)v4->_smsLabel setContentCompressionResistancePriority:1 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [(UILabel *)v4->_smsLabel setContentCompressionResistancePriority:0 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [(UILabel *)v4->_smsLabel setContentHuggingPriority:1 forAxis:v39];
    LODWORD(v40) = 1148846080;
    [(UILabel *)v4->_smsLabel setContentHuggingPriority:0 forAxis:v40];
    [(UILabel *)v4->_smsLabel setAccessibilityIdentifier:@"SMSLabel"];
    contentView6 = [(NavShareETACell *)v4 contentView];
    [contentView6 addSubview:v4->_smsLabel];

    centerYAnchor = [v28 centerYAnchor];
    contentView7 = [(NavShareETACell *)v4 contentView];
    centerYAnchor2 = [contentView7 centerYAnchor];
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    textCenterConstraint = v4->_textCenterConstraint;
    v4->_textCenterConstraint = v45;

    centerYAnchor3 = [(UILabel *)v4->_titleLabel centerYAnchor];
    contentView8 = [(NavShareETACell *)v4 contentView];
    centerYAnchor4 = [contentView8 centerYAnchor];
    v50 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    titleCenterConstraint = v4->_titleCenterConstraint;
    v4->_titleCenterConstraint = v50;

    trailingAnchor = [v28 trailingAnchor];
    leadingAnchor = [(UILabel *)v4->_smsLabel leadingAnchor];
    v54 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-16.0];
    textTrailingConstrant = v4->_textTrailingConstrant;
    v4->_textTrailingConstrant = v54;

    leadingAnchor2 = [(UIView *)v4->_imageBackgroundView leadingAnchor];
    contentView9 = [(NavShareETACell *)v4 contentView];
    leadingAnchor3 = [contentView9 leadingAnchor];
    v122 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:12.0];
    v128[0] = v122;
    widthAnchor = [(UIView *)v4->_imageBackgroundView widthAnchor];
    v120 = [widthAnchor constraintEqualToConstant:54.0];
    v128[1] = v120;
    centerYAnchor5 = [(UIView *)v4->_imageBackgroundView centerYAnchor];
    contentView10 = [(NavShareETACell *)v4 contentView];
    centerYAnchor6 = [contentView10 centerYAnchor];
    v116 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v128[2] = v116;
    heightAnchor = [(UIView *)v4->_imageBackgroundView heightAnchor];
    v114 = [heightAnchor constraintEqualToConstant:54.0];
    v128[3] = v114;
    leadingAnchor4 = [(UIImageView *)v4->_leadingImageView leadingAnchor];
    leadingAnchor5 = [(UIView *)v4->_imageBackgroundView leadingAnchor];
    v111 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v128[4] = v111;
    trailingAnchor2 = [(UIImageView *)v4->_leadingImageView trailingAnchor];
    trailingAnchor3 = [(UIView *)v4->_imageBackgroundView trailingAnchor];
    v108 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v128[5] = v108;
    topAnchor = [(UIImageView *)v4->_leadingImageView topAnchor];
    topAnchor2 = [(UIView *)v4->_imageBackgroundView topAnchor];
    v105 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v128[6] = v105;
    bottomAnchor = [(UIImageView *)v4->_leadingImageView bottomAnchor];
    bottomAnchor2 = [(UIView *)v4->_imageBackgroundView bottomAnchor];
    v102 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v128[7] = v102;
    trailingAnchor4 = [(UIImageView *)v4->_badgeImageView trailingAnchor];
    trailingAnchor5 = [(UIView *)v4->_imageBackgroundView trailingAnchor];
    v99 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:2.0];
    v128[8] = v99;
    bottomAnchor3 = [(UIImageView *)v4->_badgeImageView bottomAnchor];
    bottomAnchor4 = [(UIView *)v4->_imageBackgroundView bottomAnchor];
    v95 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:2.0];
    v128[9] = v95;
    widthAnchor2 = [(UIImageView *)v4->_badgeImageView widthAnchor];
    v93 = [widthAnchor2 constraintEqualToConstant:20.0];
    v128[10] = v93;
    heightAnchor2 = [(UIImageView *)v4->_badgeImageView heightAnchor];
    v91 = [heightAnchor2 constraintEqualToConstant:20.0];
    v128[11] = v91;
    trailingAnchor6 = [(UILabel *)v4->_smsLabel trailingAnchor];
    contentView11 = [(NavShareETACell *)v4 contentView];
    trailingAnchor7 = [contentView11 trailingAnchor];
    v86 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-16.0];
    v128[12] = v86;
    centerYAnchor7 = [(UILabel *)v4->_smsLabel centerYAnchor];
    contentView12 = [(NavShareETACell *)v4 contentView];
    centerYAnchor8 = [contentView12 centerYAnchor];
    v82 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v128[13] = v82;
    leadingAnchor6 = [v28 leadingAnchor];
    trailingAnchor8 = [(UIView *)v4->_imageBackgroundView trailingAnchor];
    v79 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor8 constant:10.0];
    v128[14] = v79;
    v128[15] = v4->_textTrailingConstrant;
    leadingAnchor7 = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor8 = [v28 leadingAnchor];
    v76 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v128[16] = v76;
    trailingAnchor9 = [(UILabel *)v4->_titleLabel trailingAnchor];
    trailingAnchor10 = [v28 trailingAnchor];
    v73 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v128[17] = v73;
    topAnchor3 = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor4 = [v28 topAnchor];
    v70 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v128[18] = v70;
    v128[19] = v4->_titleCenterConstraint;
    leadingAnchor9 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor10 = [v28 leadingAnchor];
    v68 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v128[20] = v68;
    trailingAnchor11 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    v56 = v28;
    v87 = v28;
    trailingAnchor12 = [v28 trailingAnchor];
    v58 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v128[21] = v58;
    topAnchor5 = [(UILabel *)v4->_subtitleLabel topAnchor];
    bottomAnchor5 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v61 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
    v128[22] = v61;
    bottomAnchor6 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    bottomAnchor7 = [v56 bottomAnchor];
    v64 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v128[23] = v64;
    v65 = [NSArray arrayWithObjects:v128 count:24];
    [NSLayoutConstraint activateConstraints:v65];

    [(NavShareETACell *)v4 _updateFonts];
    [(NavShareETACell *)v4 _updateContactContent];
    [(NavShareETACell *)v4 _updateCapabilityContent];
    [(NavShareETACell *)v4 setSharingState:0 animated:0];
  }

  return v4;
}

@end