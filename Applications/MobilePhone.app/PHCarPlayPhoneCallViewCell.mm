@interface PHCarPlayPhoneCallViewCell
- (PHCarPlayPhoneCallViewCell)initWithFrame:(CGRect)frame;
- (int64_t)numberOfLinesInSubtitleLabel;
- (void)_updateBadgeViewForLocalizedSenderIdentityTitle:(id)title;
- (void)layoutSubviews;
- (void)setAvatarViewController:(id)controller;
- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated;
- (void)setEnabled:(BOOL)enabled;
- (void)setFontsForLayout:(BOOL)layout;
- (void)setTitle:(id)title subtitle:(id)subtitle source:(id)source subtitleColor:(id)color localizedSenderIdentityTitle:(id)identityTitle animated:(BOOL)animated;
- (void)setTitle:(id)title subtitle:(id)subtitle subtitleColor:(id)color overrideBadgeColor:(id)badgeColor localizedSenderIdentityTitle:(id)identityTitle animated:(BOOL)animated;
@end

@implementation PHCarPlayPhoneCallViewCell

- (PHCarPlayPhoneCallViewCell)initWithFrame:(CGRect)frame
{
  v89.receiver = self;
  v89.super_class = PHCarPlayPhoneCallViewCell;
  v3 = [(PHCarPlayPhoneCallViewCell *)&v89 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, 62.5];
  v4 = v3;
  if (v3)
  {
    [(PHCarPlayPhoneCallViewCell *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(UILabel);
    mainLabel = v4->_mainLabel;
    v4->_mainLabel = v5;

    [(UILabel *)v4->_mainLabel setNumberOfLines:2];
    [(UILabel *)v4->_mainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_mainLabel setTextAlignment:1];
    v7 = [UIFont systemFontOfSize:28.0];
    [(UILabel *)v4->_mainLabel setFont:v7];

    v8 = +[UIColor dynamicLabelColor];
    [(UILabel *)v4->_mainLabel setTextColor:v8];

    v9 = +[UIColor clearColor];
    [(UILabel *)v4->_mainLabel setBackgroundColor:v9];

    [(UILabel *)v4->_mainLabel setOpaque:0];
    [(UILabel *)v4->_mainLabel setText:&stru_10028F310];
    [(UILabel *)v4->_mainLabel setLineBreakMode:4];
    [(UILabel *)v4->_mainLabel setAccessibilityIdentifier:@"PHCarPlayPhoneCallViewCellTitle"];
    [(PHCarPlayPhoneCallViewCell *)v4 addSubview:v4->_mainLabel];
    v10 = objc_alloc_init(UILabel);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v10;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v4->_subtitleLabel setLineBreakMode:3];
    v12 = [UIFont monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_subtitleLabel setFont:v12];

    v13 = +[UIColor dynamicLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v13];

    v14 = +[UIColor clearColor];
    [(UILabel *)v4->_subtitleLabel setBackgroundColor:v14];

    [(UILabel *)v4->_subtitleLabel setOpaque:0];
    [(UILabel *)v4->_subtitleLabel setText:&stru_10028F310];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:@"PHCarPlayPhoneCallViewCellSubtitle"];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
    v15 = objc_alloc_init(UIStackView);
    subtitleStackView = v4->_subtitleStackView;
    v4->_subtitleStackView = v15;

    [(UIStackView *)v4->_subtitleStackView setAxis:0];
    [(UIStackView *)v4->_subtitleStackView setDistribution:0];
    [(UIStackView *)v4->_subtitleStackView setAlignment:5];
    [(UIStackView *)v4->_subtitleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_subtitleStackView setSpacing:4.0];
    [(UIStackView *)v4->_subtitleStackView addArrangedSubview:v4->_subtitleLabel];
    [(PHCarPlayPhoneCallViewCell *)v4 addSubview:v4->_subtitleStackView];
    v17 = objc_alloc_init(UILabel);
    sourceLabel = v4->_sourceLabel;
    v4->_sourceLabel = v17;

    [(UILabel *)v4->_sourceLabel setNumberOfLines:1];
    [(UILabel *)v4->_sourceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_sourceLabel setTextAlignment:1];
    v19 = [UIFont monospacedDigitSystemFontOfSize:14.0 weight:UIFontWeightLight];
    [(UILabel *)v4->_sourceLabel setFont:v19];

    v20 = +[UIColor dynamicLabelColor];
    [(UILabel *)v4->_sourceLabel setTextColor:v20];

    [(UILabel *)v4->_sourceLabel setOpaque:0];
    [(UILabel *)v4->_sourceLabel setText:&stru_10028F310];
    [(UILabel *)v4->_sourceLabel setLineBreakMode:4];
    [(UILabel *)v4->_sourceLabel setAccessibilityIdentifier:@"PHCarPlayPhoneCallViewCellIdentitySource"];
    v87 = [[NSTextEncapsulation alloc] initWithShape:2];
    v21 = +[UIColor whiteColor];
    v22 = [v21 colorWithAlphaComponent:0.1];
    [v87 setColor:v22];

    [v87 setStyle:1];
    [(UILabel *)v4->_sourceLabel _setTextEncapsulation:v87];
    [(PHCarPlayPhoneCallViewCell *)v4 addSubview:v4->_sourceLabel];
    v23 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    avatarContentView = v4->_avatarContentView;
    v4->_avatarContentView = v23;

    [(UIView *)v4->_avatarContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHCarPlayPhoneCallViewCell *)v4 addSubview:v4->_avatarContentView];
    v88 = +[NSMutableArray array];
    leftAnchor = [(UILabel *)v4->_mainLabel leftAnchor];
    leftAnchor2 = [(PHCarPlayPhoneCallViewCell *)v4 leftAnchor];
    v84 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
    v91[0] = v84;
    rightAnchor = [(UILabel *)v4->_mainLabel rightAnchor];
    rightAnchor2 = [(PHCarPlayPhoneCallViewCell *)v4 rightAnchor];
    v81 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2];
    v91[1] = v81;
    centerXAnchor = [(UILabel *)v4->_mainLabel centerXAnchor];
    centerXAnchor2 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v78 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v91[2] = v78;
    topAnchor = [(UIStackView *)v4->_subtitleStackView topAnchor];
    bottomAnchor = [(UILabel *)v4->_mainLabel bottomAnchor];
    v75 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
    v91[3] = v75;
    leftAnchor3 = [(UIStackView *)v4->_subtitleStackView leftAnchor];
    leftAnchor4 = [(PHCarPlayPhoneCallViewCell *)v4 leftAnchor];
    v72 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:leftAnchor4 constant:0.0];
    v91[4] = v72;
    rightAnchor3 = [(UIStackView *)v4->_subtitleStackView rightAnchor];
    rightAnchor4 = [(PHCarPlayPhoneCallViewCell *)v4 rightAnchor];
    v69 = [rightAnchor3 constraintLessThanOrEqualToAnchor:rightAnchor4 constant:0.0];
    v91[5] = v69;
    centerXAnchor3 = [(UIStackView *)v4->_subtitleStackView centerXAnchor];
    centerXAnchor4 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v66 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v91[6] = v66;
    heightAnchor = [(UIStackView *)v4->_subtitleStackView heightAnchor];
    heightAnchor2 = [(UILabel *)v4->_subtitleLabel heightAnchor];
    v63 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    v91[7] = v63;
    topAnchor2 = [(UILabel *)v4->_sourceLabel topAnchor];
    bottomAnchor2 = [(UIStackView *)v4->_subtitleStackView bottomAnchor];
    v60 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v91[8] = v60;
    leftAnchor5 = [(UILabel *)v4->_sourceLabel leftAnchor];
    leftAnchor6 = [(PHCarPlayPhoneCallViewCell *)v4 leftAnchor];
    v57 = [leftAnchor5 constraintGreaterThanOrEqualToAnchor:leftAnchor6 constant:0.0];
    v91[9] = v57;
    rightAnchor5 = [(UILabel *)v4->_sourceLabel rightAnchor];
    rightAnchor6 = [(PHCarPlayPhoneCallViewCell *)v4 rightAnchor];
    v54 = [rightAnchor5 constraintLessThanOrEqualToAnchor:rightAnchor6 constant:0.0];
    v91[10] = v54;
    centerXAnchor5 = [(UILabel *)v4->_sourceLabel centerXAnchor];
    centerXAnchor6 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v51 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v91[11] = v51;
    widthAnchor = [(UIView *)v4->_avatarContentView widthAnchor];
    v49 = [widthAnchor constraintEqualToConstant:72.0];
    v91[12] = v49;
    heightAnchor3 = [(UIView *)v4->_avatarContentView heightAnchor];
    v26 = [heightAnchor3 constraintEqualToConstant:72.0];
    v91[13] = v26;
    centerXAnchor7 = [(UIView *)v4->_avatarContentView centerXAnchor];
    centerXAnchor8 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v29 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v91[14] = v29;
    bottomAnchor3 = [(UIView *)v4->_avatarContentView bottomAnchor];
    topAnchor3 = [(UILabel *)v4->_mainLabel topAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-6.0];
    v91[15] = v32;
    v33 = [NSArray arrayWithObjects:v91 count:16];
    [v88 addObjectsFromArray:v33];

    topAnchor4 = [(PHCarPlayPhoneCallViewCell *)v4 topAnchor];
    topAnchor5 = [(UILabel *)v4->_mainLabel topAnchor];
    v36 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    topMainLabelConstraint = v4->_topMainLabelConstraint;
    v4->_topMainLabelConstraint = v36;

    topAnchor6 = [(PHCarPlayPhoneCallViewCell *)v4 topAnchor];
    topAnchor7 = [(UIView *)v4->_avatarContentView topAnchor];
    v40 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    topAvatarConstraint = v4->_topAvatarConstraint;
    v4->_topAvatarConstraint = v40;

    v90[0] = v4->_topMainLabelConstraint;
    bottomAnchor4 = [(PHCarPlayPhoneCallViewCell *)v4 bottomAnchor];
    bottomAnchor5 = [(UIStackView *)v4->_subtitleStackView bottomAnchor];
    v44 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v90[1] = v44;
    v45 = [NSArray arrayWithObjects:v90 count:2];
    [v88 addObjectsFromArray:v45];

    [(PHCarPlayPhoneCallViewCell *)v4 addConstraints:v88];
    [(PHCarPlayPhoneCallViewCell *)v4 layoutIfNeeded];
    containerSpecificLeftConstraint = v4->_containerSpecificLeftConstraint;
    v4->_containerSpecificLeftConstraint = 0;

    containerSpecificRightConstraint = v4->_containerSpecificRightConstraint;
    v4->_containerSpecificRightConstraint = 0;
  }

  return v4;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PHCarPlayPhoneCallViewCell;
  [(PHCarPlayPhoneCallViewCell *)&v11 layoutSubviews];
  [(PHCarPlayPhoneCallViewCell *)self frame];
  v5 = v4;
  superview = [(PHCarPlayPhoneCallViewCell *)self superview];
  [superview frame];
  v8 = v7;
  if (v5 > v7)
  {
    numberOfLines = 1;
  }

  else
  {
    mainLabel = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    numberOfLines = [mainLabel numberOfLines];
  }

  mainLabel2 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
  [mainLabel2 setNumberOfLines:numberOfLines];

  if (v5 <= v8)
  {
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PHCarPlayPhoneCallViewCell;
  [(PHCarPlayPhoneCallViewCell *)&v5 setEnabled:?];
  [(PHCarPlayPhoneCallViewCell *)self setDimmed:enabledCopy animated:0];
}

- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated
{
  animatedCopy = animated;
  if (dimmed)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 1.0;
  }

  [(PHCarPlayPhoneCallViewCell *)self alpha];
  if (v7 != v6)
  {
    if (animatedCopy)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = __49__PHCarPlayPhoneCallViewCell_setDimmed_animated___block_invoke;
      v8[3] = &unk_1002852B8;
      v8[4] = self;
      *&v8[5] = v6;
      [UIView transitionWithView:self duration:5243012 options:v8 animations:0 completion:0.550000012];
    }

    else
    {

      [(PHCarPlayPhoneCallViewCell *)self setAlpha:v6];
    }
  }
}

- (void)setTitle:(id)title subtitle:(id)subtitle subtitleColor:(id)color overrideBadgeColor:(id)badgeColor localizedSenderIdentityTitle:(id)identityTitle animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  subtitleCopy = subtitle;
  colorCopy = color;
  identityTitleCopy = identityTitle;
  if (animatedCopy)
  {
    mainLabel = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __119__PHCarPlayPhoneCallViewCell_setTitle_subtitle_subtitleColor_overrideBadgeColor_localizedSenderIdentityTitle_animated___block_invoke;
    v26[3] = &unk_1002852E0;
    v26[4] = self;
    v27 = titleCopy;
    [UIView transitionWithView:mainLabel duration:5243012 options:v26 animations:0 completion:0.550000012];

    subtitleStackView = [(PHCarPlayPhoneCallViewCell *)self subtitleStackView];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __119__PHCarPlayPhoneCallViewCell_setTitle_subtitle_subtitleColor_overrideBadgeColor_localizedSenderIdentityTitle_animated___block_invoke_2;
    v22[3] = &unk_100285308;
    v22[4] = self;
    v23 = identityTitleCopy;
    v24 = subtitleCopy;
    v25 = colorCopy;
    [UIView transitionWithView:subtitleStackView duration:5243012 options:v22 animations:0 completion:0.550000012];
  }

  else
  {
    [(PHCarPlayPhoneCallViewCell *)self _updateBadgeViewForLocalizedSenderIdentityTitle:identityTitleCopy];
    mainLabel2 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [mainLabel2 setText:titleCopy];

    subtitleLabel = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [subtitleLabel setText:subtitleCopy];

    subtitleLabel2 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [subtitleLabel2 setColor:colorCopy];
  }
}

void __119__PHCarPlayPhoneCallViewCell_setTitle_subtitle_subtitleColor_overrideBadgeColor_localizedSenderIdentityTitle_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mainLabel];
  [v2 setText:v1];
}

void __119__PHCarPlayPhoneCallViewCell_setTitle_subtitle_subtitleColor_overrideBadgeColor_localizedSenderIdentityTitle_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateBadgeViewForLocalizedSenderIdentityTitle:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) subtitleLabel];
  [v3 setText:v2];

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) subtitleLabel];
  [v5 setColor:v4];

  v6 = [*(a1 + 32) subtitleLabel];
  [v6 sizeToFit];
}

- (void)setFontsForLayout:(BOOL)layout
{
  layoutCopy = layout;
  if (layout)
  {
    v5 = [UIFont monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
    mainLabel = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [mainLabel setFont:v5];

    [UIFont systemFontOfSize:28.0];
  }

  else
  {
    v7 = [UIFont systemFontOfSize:28.0];
    mainLabel2 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [mainLabel2 setFont:v7];

    [UIFont monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
  }
  v9 = ;
  subtitleLabel = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  [subtitleLabel setFont:v9];

  sourceLabel = [(PHCarPlayPhoneCallViewCell *)self sourceLabel];
  [sourceLabel setHidden:!layoutCopy];
}

- (void)setTitle:(id)title subtitle:(id)subtitle source:(id)source subtitleColor:(id)color localizedSenderIdentityTitle:(id)identityTitle animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  subtitleCopy = subtitle;
  sourceCopy = source;
  colorCopy = color;
  identityTitleCopy = identityTitle;
  if (!animatedCopy)
  {
    [(PHCarPlayPhoneCallViewCell *)self _updateBadgeViewForLocalizedSenderIdentityTitle:identityTitleCopy];
    mainLabel = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [mainLabel setText:titleCopy];

    subtitleLabel = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [subtitleLabel setText:subtitleCopy];

    subtitleLabel2 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [subtitleLabel2 setColor:colorCopy];

    sourceLabel = [(PHCarPlayPhoneCallViewCell *)self sourceLabel];
    [sourceLabel setText:sourceCopy];

    -[PHCarPlayPhoneCallViewCell setFontsForLayout:](self, "setFontsForLayout:", [sourceCopy length] != 0);
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_10028F310 table:@"Localizable-Stewie"];
    if ([subtitleCopy isEqualToString:v26])
    {
      numberOfLinesInSubtitleLabel = [(PHCarPlayPhoneCallViewCell *)self numberOfLinesInSubtitleLabel];

      if (numberOfLinesInSubtitleLabel < 3)
      {
        goto LABEL_7;
      }

      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_10028F310 table:@"Localizable-Stewie"];
      subtitleLabel3 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
      [subtitleLabel3 setText:v26];
    }

    goto LABEL_7;
  }

  mainLabel2 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __107__PHCarPlayPhoneCallViewCell_setTitle_subtitle_source_subtitleColor_localizedSenderIdentityTitle_animated___block_invoke;
  v34[3] = &unk_1002852E0;
  v34[4] = self;
  v35 = titleCopy;
  [UIView transitionWithView:mainLabel2 duration:5243012 options:v34 animations:0 completion:0.550000012];

  subtitleStackView = [(PHCarPlayPhoneCallViewCell *)self subtitleStackView];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __107__PHCarPlayPhoneCallViewCell_setTitle_subtitle_source_subtitleColor_localizedSenderIdentityTitle_animated___block_invoke_2;
  v29[3] = &unk_100285330;
  v29[4] = self;
  v30 = identityTitleCopy;
  v31 = subtitleCopy;
  v32 = colorCopy;
  v33 = sourceCopy;
  [UIView transitionWithView:subtitleStackView duration:5243012 options:v29 animations:0 completion:0.550000012];

LABEL_7:
}

void __107__PHCarPlayPhoneCallViewCell_setTitle_subtitle_source_subtitleColor_localizedSenderIdentityTitle_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mainLabel];
  [v2 setText:v1];
}

void __107__PHCarPlayPhoneCallViewCell_setTitle_subtitle_source_subtitleColor_localizedSenderIdentityTitle_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateBadgeViewForLocalizedSenderIdentityTitle:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) subtitleLabel];
  [v3 setText:v2];

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) subtitleLabel];
  [v5 setColor:v4];

  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) sourceLabel];
  [v7 setText:v6];

  [*(a1 + 32) setFontsForLayout:{objc_msgSend(*(a1 + 64), "length") != 0}];
  v8 = [*(a1 + 32) subtitleLabel];
  [v8 sizeToFit];
}

- (void)_updateBadgeViewForLocalizedSenderIdentityTitle:(id)title
{
  titleCopy = title;
  if (titleCopy && [titleCopy length])
  {
    badgeView = [(PHCarPlayPhoneCallViewCell *)self badgeView];

    if (badgeView)
    {
      badgeView2 = [(PHCarPlayPhoneCallViewCell *)self badgeView];
      [badgeView2 setTitle:titleCopy];
    }

    else
    {
      v7 = [[TPBadgeView alloc] initWithTitle:titleCopy theme:6];
      [v7 setSizeCategory:5];
      subtitleStackView = [(PHCarPlayPhoneCallViewCell *)self subtitleStackView];
      [subtitleStackView insertArrangedSubview:v7 atIndex:0];

      [(PHCarPlayPhoneCallViewCell *)self setBadgeView:v7];
    }
  }

  else
  {
    badgeView3 = [(PHCarPlayPhoneCallViewCell *)self badgeView];
    [badgeView3 removeFromSuperview];

    [(PHCarPlayPhoneCallViewCell *)self setBadgeView:0];
  }
}

- (void)setAvatarViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_avatarViewController != controllerCopy)
  {
    v10 = controllerCopy;
    if (controllerCopy)
    {
      view = [(CNAvatarViewController *)controllerCopy view];
      [view setAutoresizingMask:18];
      avatarContentView = [(PHCarPlayPhoneCallViewCell *)self avatarContentView];
      [avatarContentView bounds];
      [view setFrame:?];

      avatarContentView2 = [(PHCarPlayPhoneCallViewCell *)self avatarContentView];
      [avatarContentView2 addSubview:view];

      [(NSLayoutConstraint *)self->_topMainLabelConstraint setActive:0];
      [(NSLayoutConstraint *)self->_topAvatarConstraint setActive:1];
    }

    else
    {
      [(NSLayoutConstraint *)self->_topAvatarConstraint setActive:0];
      [(NSLayoutConstraint *)self->_topMainLabelConstraint setActive:1];
      view = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
      [view setNumberOfLines:2];
    }

    view2 = [(CNAvatarViewController *)self->_avatarViewController view];
    [view2 removeFromSuperview];

    objc_storeStrong(&self->_avatarViewController, controller);
    controllerCopy = v10;
  }
}

- (int64_t)numberOfLinesInSubtitleLabel
{
  [(PHCarPlayPhoneCallViewCell *)self frame];
  v4 = v3;
  subtitleLabel = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  font = [subtitleLabel font];
  [font lineHeight];
  v8 = v7;

  subtitleLabel2 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  text = [subtitleLabel2 text];

  v17 = NSFontAttributeName;
  subtitleLabel3 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  font2 = [subtitleLabel3 font];
  v18 = font2;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [text boundingRectWithSize:1 options:v13 attributes:0 context:{v4, 1.79769313e308}];
  v15 = v14;

  return (v15 / v8);
}

@end