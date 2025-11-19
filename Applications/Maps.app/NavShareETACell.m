@interface NavShareETACell
- (NavShareETACell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NavShareETACellDelegate)delegate;
- (double)heightForWidth:(double)a3;
- (void)_updateCapabilityContent;
- (void)_updateContactContent;
- (void)_updateFonts;
- (void)_updateSharingContent;
- (void)_updateSharingRingAnimated:(BOOL)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutSubviews;
- (void)setCapabilityType:(unint64_t)a3 serviceName:(id)a4;
- (void)setContact:(id)a3;
- (void)setIsStandaloneSharingSuggestion:(BOOL)a3;
- (void)setSharingState:(unint64_t)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation NavShareETACell

- (NavShareETACellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    v5 = [(NavShareETACell *)self delegate];
    [v5 cellDidFinishRingAnimation:self];
  }

  circleLayer = self->_circleLayer;

  [(CAShapeLayer *)circleLayer setDelegate:0];
}

- (void)_updateSharingRingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NavShareETACell *)self sharingState];
  if (v5 - 2 < 2)
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

  if (v5 != 1)
  {
    if (v5)
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
  if (!v3)
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

- (double)heightForWidth:(double)a3
{
  v5 = [(UILabel *)self->_smsLabel text];
  v6 = [v5 length];

  if (v6)
  {
    [(UILabel *)self->_smsLabel sizeThatFits:a3, 78.0];
    v8 = v7 + 32.0;
  }

  else
  {
    v8 = 16.0;
  }

  v9 = a3 + -76.0 - v8;
  [(UILabel *)self->_titleLabel sizeThatFits:v9, 78.0];
  v11 = v10;
  v12 = [(UILabel *)self->_subtitleLabel text];
  if ([v12 length])
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

- (void)updateConfigurationUsingState:(id)a3
{
  v10 = a3;
  v4 = [(NavShareETACell *)self backgroundConfiguration];
  v5 = [v4 updatedConfigurationForState:v10];

  v6 = [(NavShareETACell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (([v10 isHighlighted] & 1) != 0 || objc_msgSend(v10, "isSelected"))
  {
    if (v7 == 2)
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
  v3 = [(NavShareETACell *)self sharingState];
  if (v3 - 2 < 2)
  {
    [(NSLayoutConstraint *)self->_titleCenterConstraint setActive:0];
    [(NSLayoutConstraint *)self->_textCenterConstraint setActive:1];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[Shared Trip] Already Sharing" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v8];

    v6 = +[UIColor systemRedColor];
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    [(NSLayoutConstraint *)self->_titleCenterConstraint setActive:0];
    [(NSLayoutConstraint *)self->_textCenterConstraint setActive:1];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Shared Trip] Just Started" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v10];

    v6 = +[UIColor secondaryLabelColor];
    goto LABEL_8;
  }

  if (v3)
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
      v7 = [(NavShareETACell *)self traitCollection];
      [v7 displayScale];
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
    v4 = [(NavShareETACell *)self traitCollection];
    [v4 displayScale];
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
  v3 = [(NavShareETACell *)self contact];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    [(UILabel *)self->_titleLabel setText:v5];

    v6 = +[UIColor labelColor];
    [(UILabel *)self->_titleLabel setTextColor:v6];

    objc_initWeak(&location, self);
    v7 = +[MapsUIImageCache sharedCache];
    v8 = [v4 contact];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100FF2CA0;
    v15[3] = &unk_1016612F0;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    [v7 getImageForContact:v8 size:v15 completion:54.0];

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
  v3 = [(NavShareETACell *)self traitCollection];
  v4 = [v3 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:v4];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = [(NavShareETACell *)self traitCollection];
  v7 = [v6 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v7];
  [(UILabel *)self->_subtitleLabel setFont:v8];

  v11 = [(NavShareETACell *)self traitCollection];
  v9 = [v11 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:v9];
  [(UILabel *)self->_smsLabel setFont:v10];
}

- (void)setIsStandaloneSharingSuggestion:(BOOL)a3
{
  if (self->_isStandaloneSharingSuggestion != a3)
  {
    self->_isStandaloneSharingSuggestion = a3;
    [(NavShareETACell *)self _updateSharingContent];
  }
}

- (void)setSharingState:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_sharingState != a3)
  {
    v5 = a4;
    self->_sharingState = a3;
    [(NavShareETACell *)self _updateSharingContent];

    [(NavShareETACell *)self _updateSharingRingAnimated:v5];
  }
}

- (void)setCapabilityType:(unint64_t)a3 serviceName:(id)a4
{
  v12 = a4;
  if (self->_capabilityType != a3 || (v6 = self->_serviceName, v7 = v12, v8 = v12, v7 | v6) && (v9 = [v6 isEqual:v7], v7, v6, v8 = v12, (v9 & 1) == 0))
  {
    self->_capabilityType = a3;
    v10 = sub_100D12CE0();
    serviceName = self->_serviceName;
    self->_serviceName = v10;

    [(NavShareETACell *)self _updateCapabilityContent];
    v8 = v12;
  }
}

- (void)setContact:(id)a3
{
  v5 = a3;
  v6 = self->_contact;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_contact, a3);
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NavShareETACell;
  v4 = a3;
  [(NavShareETACell *)&v8 traitCollectionDidChange:v4];
  v5 = [(NavShareETACell *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(NavShareETACell *)self _updateFonts];
    [(NavShareETACell *)self setNeedsUpdateConfiguration];
  }
}

- (NavShareETACell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v127.receiver = self;
  v127.super_class = NavShareETACell;
  v4 = [(NavShareETACell *)&v127 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(NavShareETACell *)v4 setAccessibilityIdentifier:v6];

    v126 = +[UIBackgroundConfiguration listCellConfiguration];
    [v126 setCornerRadius:10.0];
    [(NavShareETACell *)v4 setBackgroundConfiguration:v126];
    v7 = [(NavShareETACell *)v4 contentView];
    [v7 setAccessibilityIdentifier:@"NavShareETACellContent"];

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
    v13 = [(NavShareETACell *)v4 contentView];
    v14 = [v13 layer];
    [v14 insertSublayer:v4->_circleLayer atIndex:0];

    [(CAShapeLayer *)v4->_circleLayer setOpacity:0.0];
    [(CAShapeLayer *)v4->_circleLayer setStrokeEnd:0.0];
    v15 = objc_opt_new();
    imageBackgroundView = v4->_imageBackgroundView;
    v4->_imageBackgroundView = v15;

    [(UIView *)v4->_imageBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(UIView *)v4->_imageBackgroundView layer];
    [v17 setCornerRadius:27.0];

    v18 = [(UIView *)v4->_imageBackgroundView layer];
    [v18 setMasksToBounds:1];

    v19 = +[UIColor tertiarySystemFillColor];
    [(UIView *)v4->_imageBackgroundView setBackgroundColor:v19];

    [(UIView *)v4->_imageBackgroundView setAccessibilityIdentifier:@"ImageBackgroundView"];
    v20 = [(NavShareETACell *)v4 contentView];
    [v20 addSubview:v4->_imageBackgroundView];

    v21 = objc_opt_new();
    leadingImageView = v4->_leadingImageView;
    v4->_leadingImageView = v21;

    [(UIImageView *)v4->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(UIImageView *)v4->_leadingImageView layer];
    [v23 setCornerRadius:27.0];

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
    v27 = [(NavShareETACell *)v4 contentView];
    [v27 addSubview:v4->_badgeImageView];

    v28 = objc_opt_new();
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setAccessibilityIdentifier:@"TextContainer"];
    v29 = [(NavShareETACell *)v4 contentView];
    [v29 addSubview:v28];

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
    v41 = [(NavShareETACell *)v4 contentView];
    [v41 addSubview:v4->_smsLabel];

    v42 = [v28 centerYAnchor];
    v43 = [(NavShareETACell *)v4 contentView];
    v44 = [v43 centerYAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    textCenterConstraint = v4->_textCenterConstraint;
    v4->_textCenterConstraint = v45;

    v47 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v48 = [(NavShareETACell *)v4 contentView];
    v49 = [v48 centerYAnchor];
    v50 = [v47 constraintEqualToAnchor:v49];
    titleCenterConstraint = v4->_titleCenterConstraint;
    v4->_titleCenterConstraint = v50;

    v52 = [v28 trailingAnchor];
    v53 = [(UILabel *)v4->_smsLabel leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-16.0];
    textTrailingConstrant = v4->_textTrailingConstrant;
    v4->_textTrailingConstrant = v54;

    v124 = [(UIView *)v4->_imageBackgroundView leadingAnchor];
    v125 = [(NavShareETACell *)v4 contentView];
    v123 = [v125 leadingAnchor];
    v122 = [v124 constraintEqualToAnchor:v123 constant:12.0];
    v128[0] = v122;
    v121 = [(UIView *)v4->_imageBackgroundView widthAnchor];
    v120 = [v121 constraintEqualToConstant:54.0];
    v128[1] = v120;
    v118 = [(UIView *)v4->_imageBackgroundView centerYAnchor];
    v119 = [(NavShareETACell *)v4 contentView];
    v117 = [v119 centerYAnchor];
    v116 = [v118 constraintEqualToAnchor:v117];
    v128[2] = v116;
    v115 = [(UIView *)v4->_imageBackgroundView heightAnchor];
    v114 = [v115 constraintEqualToConstant:54.0];
    v128[3] = v114;
    v113 = [(UIImageView *)v4->_leadingImageView leadingAnchor];
    v112 = [(UIView *)v4->_imageBackgroundView leadingAnchor];
    v111 = [v113 constraintEqualToAnchor:v112];
    v128[4] = v111;
    v110 = [(UIImageView *)v4->_leadingImageView trailingAnchor];
    v109 = [(UIView *)v4->_imageBackgroundView trailingAnchor];
    v108 = [v110 constraintEqualToAnchor:v109];
    v128[5] = v108;
    v107 = [(UIImageView *)v4->_leadingImageView topAnchor];
    v106 = [(UIView *)v4->_imageBackgroundView topAnchor];
    v105 = [v107 constraintEqualToAnchor:v106];
    v128[6] = v105;
    v104 = [(UIImageView *)v4->_leadingImageView bottomAnchor];
    v103 = [(UIView *)v4->_imageBackgroundView bottomAnchor];
    v102 = [v104 constraintEqualToAnchor:v103];
    v128[7] = v102;
    v101 = [(UIImageView *)v4->_badgeImageView trailingAnchor];
    v100 = [(UIView *)v4->_imageBackgroundView trailingAnchor];
    v99 = [v101 constraintEqualToAnchor:v100 constant:2.0];
    v128[8] = v99;
    v98 = [(UIImageView *)v4->_badgeImageView bottomAnchor];
    v97 = [(UIView *)v4->_imageBackgroundView bottomAnchor];
    v95 = [v98 constraintEqualToAnchor:v97 constant:2.0];
    v128[9] = v95;
    v94 = [(UIImageView *)v4->_badgeImageView widthAnchor];
    v93 = [v94 constraintEqualToConstant:20.0];
    v128[10] = v93;
    v92 = [(UIImageView *)v4->_badgeImageView heightAnchor];
    v91 = [v92 constraintEqualToConstant:20.0];
    v128[11] = v91;
    v89 = [(UILabel *)v4->_smsLabel trailingAnchor];
    v90 = [(NavShareETACell *)v4 contentView];
    v88 = [v90 trailingAnchor];
    v86 = [v89 constraintEqualToAnchor:v88 constant:-16.0];
    v128[12] = v86;
    v84 = [(UILabel *)v4->_smsLabel centerYAnchor];
    v85 = [(NavShareETACell *)v4 contentView];
    v83 = [v85 centerYAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v128[13] = v82;
    v81 = [v28 leadingAnchor];
    v80 = [(UIView *)v4->_imageBackgroundView trailingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80 constant:10.0];
    v128[14] = v79;
    v128[15] = v4->_textTrailingConstrant;
    v78 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v77 = [v28 leadingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v128[16] = v76;
    v75 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v74 = [v28 trailingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v128[17] = v73;
    v72 = [(UILabel *)v4->_titleLabel topAnchor];
    v71 = [v28 topAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v128[18] = v70;
    v128[19] = v4->_titleCenterConstraint;
    v96 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    v69 = [v28 leadingAnchor];
    v68 = [v96 constraintEqualToAnchor:v69];
    v128[20] = v68;
    v67 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    v56 = v28;
    v87 = v28;
    v57 = [v28 trailingAnchor];
    v58 = [v67 constraintEqualToAnchor:v57];
    v128[21] = v58;
    v59 = [(UILabel *)v4->_subtitleLabel topAnchor];
    v60 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    v128[22] = v61;
    v62 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    v63 = [v56 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
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