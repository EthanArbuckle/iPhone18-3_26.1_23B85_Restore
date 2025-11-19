@interface PHCarPlayPhoneCallViewCell
- (PHCarPlayPhoneCallViewCell)initWithFrame:(CGRect)a3;
- (int64_t)numberOfLinesInSubtitleLabel;
- (void)_updateBadgeViewForLocalizedSenderIdentityTitle:(id)a3;
- (void)layoutSubviews;
- (void)setAvatarViewController:(id)a3;
- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setFontsForLayout:(BOOL)a3;
- (void)setTitle:(id)a3 subtitle:(id)a4 source:(id)a5 subtitleColor:(id)a6 localizedSenderIdentityTitle:(id)a7 animated:(BOOL)a8;
- (void)setTitle:(id)a3 subtitle:(id)a4 subtitleColor:(id)a5 overrideBadgeColor:(id)a6 localizedSenderIdentityTitle:(id)a7 animated:(BOOL)a8;
@end

@implementation PHCarPlayPhoneCallViewCell

- (PHCarPlayPhoneCallViewCell)initWithFrame:(CGRect)a3
{
  v89.receiver = self;
  v89.super_class = PHCarPlayPhoneCallViewCell;
  v3 = [(PHCarPlayPhoneCallViewCell *)&v89 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, 62.5];
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
    v86 = [(UILabel *)v4->_mainLabel leftAnchor];
    v85 = [(PHCarPlayPhoneCallViewCell *)v4 leftAnchor];
    v84 = [v86 constraintGreaterThanOrEqualToAnchor:v85];
    v91[0] = v84;
    v83 = [(UILabel *)v4->_mainLabel rightAnchor];
    v82 = [(PHCarPlayPhoneCallViewCell *)v4 rightAnchor];
    v81 = [v83 constraintLessThanOrEqualToAnchor:v82];
    v91[1] = v81;
    v80 = [(UILabel *)v4->_mainLabel centerXAnchor];
    v79 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v91[2] = v78;
    v77 = [(UIStackView *)v4->_subtitleStackView topAnchor];
    v76 = [(UILabel *)v4->_mainLabel bottomAnchor];
    v75 = [v77 constraintEqualToAnchor:v76 constant:0.0];
    v91[3] = v75;
    v74 = [(UIStackView *)v4->_subtitleStackView leftAnchor];
    v73 = [(PHCarPlayPhoneCallViewCell *)v4 leftAnchor];
    v72 = [v74 constraintGreaterThanOrEqualToAnchor:v73 constant:0.0];
    v91[4] = v72;
    v71 = [(UIStackView *)v4->_subtitleStackView rightAnchor];
    v70 = [(PHCarPlayPhoneCallViewCell *)v4 rightAnchor];
    v69 = [v71 constraintLessThanOrEqualToAnchor:v70 constant:0.0];
    v91[5] = v69;
    v68 = [(UIStackView *)v4->_subtitleStackView centerXAnchor];
    v67 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v91[6] = v66;
    v65 = [(UIStackView *)v4->_subtitleStackView heightAnchor];
    v64 = [(UILabel *)v4->_subtitleLabel heightAnchor];
    v63 = [v65 constraintGreaterThanOrEqualToAnchor:v64];
    v91[7] = v63;
    v62 = [(UILabel *)v4->_sourceLabel topAnchor];
    v61 = [(UIStackView *)v4->_subtitleStackView bottomAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:0.0];
    v91[8] = v60;
    v59 = [(UILabel *)v4->_sourceLabel leftAnchor];
    v58 = [(PHCarPlayPhoneCallViewCell *)v4 leftAnchor];
    v57 = [v59 constraintGreaterThanOrEqualToAnchor:v58 constant:0.0];
    v91[9] = v57;
    v56 = [(UILabel *)v4->_sourceLabel rightAnchor];
    v55 = [(PHCarPlayPhoneCallViewCell *)v4 rightAnchor];
    v54 = [v56 constraintLessThanOrEqualToAnchor:v55 constant:0.0];
    v91[10] = v54;
    v53 = [(UILabel *)v4->_sourceLabel centerXAnchor];
    v52 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v91[11] = v51;
    v50 = [(UIView *)v4->_avatarContentView widthAnchor];
    v49 = [v50 constraintEqualToConstant:72.0];
    v91[12] = v49;
    v25 = [(UIView *)v4->_avatarContentView heightAnchor];
    v26 = [v25 constraintEqualToConstant:72.0];
    v91[13] = v26;
    v27 = [(UIView *)v4->_avatarContentView centerXAnchor];
    v28 = [(PHCarPlayPhoneCallViewCell *)v4 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v91[14] = v29;
    v30 = [(UIView *)v4->_avatarContentView bottomAnchor];
    v31 = [(UILabel *)v4->_mainLabel topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:-6.0];
    v91[15] = v32;
    v33 = [NSArray arrayWithObjects:v91 count:16];
    [v88 addObjectsFromArray:v33];

    v34 = [(PHCarPlayPhoneCallViewCell *)v4 topAnchor];
    v35 = [(UILabel *)v4->_mainLabel topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    topMainLabelConstraint = v4->_topMainLabelConstraint;
    v4->_topMainLabelConstraint = v36;

    v38 = [(PHCarPlayPhoneCallViewCell *)v4 topAnchor];
    v39 = [(UIView *)v4->_avatarContentView topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    topAvatarConstraint = v4->_topAvatarConstraint;
    v4->_topAvatarConstraint = v40;

    v90[0] = v4->_topMainLabelConstraint;
    v42 = [(PHCarPlayPhoneCallViewCell *)v4 bottomAnchor];
    v43 = [(UIStackView *)v4->_subtitleStackView bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
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
  v6 = [(PHCarPlayPhoneCallViewCell *)self superview];
  [v6 frame];
  v8 = v7;
  if (v5 > v7)
  {
    v9 = 1;
  }

  else
  {
    v2 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    v9 = [v2 numberOfLines];
  }

  v10 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
  [v10 setNumberOfLines:v9];

  if (v5 <= v8)
  {
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PHCarPlayPhoneCallViewCell;
  [(PHCarPlayPhoneCallViewCell *)&v5 setEnabled:?];
  [(PHCarPlayPhoneCallViewCell *)self setDimmed:v3 animated:0];
}

- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
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
    if (v4)
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

- (void)setTitle:(id)a3 subtitle:(id)a4 subtitleColor:(id)a5 overrideBadgeColor:(id)a6 localizedSenderIdentityTitle:(id)a7 animated:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v8)
  {
    v17 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __119__PHCarPlayPhoneCallViewCell_setTitle_subtitle_subtitleColor_overrideBadgeColor_localizedSenderIdentityTitle_animated___block_invoke;
    v26[3] = &unk_1002852E0;
    v26[4] = self;
    v27 = v13;
    [UIView transitionWithView:v17 duration:5243012 options:v26 animations:0 completion:0.550000012];

    v18 = [(PHCarPlayPhoneCallViewCell *)self subtitleStackView];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __119__PHCarPlayPhoneCallViewCell_setTitle_subtitle_subtitleColor_overrideBadgeColor_localizedSenderIdentityTitle_animated___block_invoke_2;
    v22[3] = &unk_100285308;
    v22[4] = self;
    v23 = v16;
    v24 = v14;
    v25 = v15;
    [UIView transitionWithView:v18 duration:5243012 options:v22 animations:0 completion:0.550000012];
  }

  else
  {
    [(PHCarPlayPhoneCallViewCell *)self _updateBadgeViewForLocalizedSenderIdentityTitle:v16];
    v19 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [v19 setText:v13];

    v20 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [v20 setText:v14];

    v21 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [v21 setColor:v15];
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

- (void)setFontsForLayout:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [UIFont monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
    v6 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [v6 setFont:v5];

    [UIFont systemFontOfSize:28.0];
  }

  else
  {
    v7 = [UIFont systemFontOfSize:28.0];
    v8 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [v8 setFont:v7];

    [UIFont monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
  }
  v9 = ;
  v10 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  [v10 setFont:v9];

  v11 = [(PHCarPlayPhoneCallViewCell *)self sourceLabel];
  [v11 setHidden:!v3];
}

- (void)setTitle:(id)a3 subtitle:(id)a4 source:(id)a5 subtitleColor:(id)a6 localizedSenderIdentityTitle:(id)a7 animated:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v8)
  {
    [(PHCarPlayPhoneCallViewCell *)self _updateBadgeViewForLocalizedSenderIdentityTitle:v18];
    v21 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
    [v21 setText:v14];

    v22 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [v22 setText:v15];

    v23 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
    [v23 setColor:v17];

    v24 = [(PHCarPlayPhoneCallViewCell *)self sourceLabel];
    [v24 setText:v16];

    -[PHCarPlayPhoneCallViewCell setFontsForLayout:](self, "setFontsForLayout:", [v16 length] != 0);
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_10028F310 table:@"Localizable-Stewie"];
    if ([v15 isEqualToString:v26])
    {
      v27 = [(PHCarPlayPhoneCallViewCell *)self numberOfLinesInSubtitleLabel];

      if (v27 < 3)
      {
        goto LABEL_7;
      }

      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_10028F310 table:@"Localizable-Stewie"];
      v28 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
      [v28 setText:v26];
    }

    goto LABEL_7;
  }

  v19 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __107__PHCarPlayPhoneCallViewCell_setTitle_subtitle_source_subtitleColor_localizedSenderIdentityTitle_animated___block_invoke;
  v34[3] = &unk_1002852E0;
  v34[4] = self;
  v35 = v14;
  [UIView transitionWithView:v19 duration:5243012 options:v34 animations:0 completion:0.550000012];

  v20 = [(PHCarPlayPhoneCallViewCell *)self subtitleStackView];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __107__PHCarPlayPhoneCallViewCell_setTitle_subtitle_source_subtitleColor_localizedSenderIdentityTitle_animated___block_invoke_2;
  v29[3] = &unk_100285330;
  v29[4] = self;
  v30 = v18;
  v31 = v15;
  v32 = v17;
  v33 = v16;
  [UIView transitionWithView:v20 duration:5243012 options:v29 animations:0 completion:0.550000012];

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

- (void)_updateBadgeViewForLocalizedSenderIdentityTitle:(id)a3
{
  v9 = a3;
  if (v9 && [v9 length])
  {
    v4 = [(PHCarPlayPhoneCallViewCell *)self badgeView];

    if (v4)
    {
      v5 = [(PHCarPlayPhoneCallViewCell *)self badgeView];
      [v5 setTitle:v9];
    }

    else
    {
      v7 = [[TPBadgeView alloc] initWithTitle:v9 theme:6];
      [v7 setSizeCategory:5];
      v8 = [(PHCarPlayPhoneCallViewCell *)self subtitleStackView];
      [v8 insertArrangedSubview:v7 atIndex:0];

      [(PHCarPlayPhoneCallViewCell *)self setBadgeView:v7];
    }
  }

  else
  {
    v6 = [(PHCarPlayPhoneCallViewCell *)self badgeView];
    [v6 removeFromSuperview];

    [(PHCarPlayPhoneCallViewCell *)self setBadgeView:0];
  }
}

- (void)setAvatarViewController:(id)a3
{
  v5 = a3;
  if (self->_avatarViewController != v5)
  {
    v10 = v5;
    if (v5)
    {
      v6 = [(CNAvatarViewController *)v5 view];
      [v6 setAutoresizingMask:18];
      v7 = [(PHCarPlayPhoneCallViewCell *)self avatarContentView];
      [v7 bounds];
      [v6 setFrame:?];

      v8 = [(PHCarPlayPhoneCallViewCell *)self avatarContentView];
      [v8 addSubview:v6];

      [(NSLayoutConstraint *)self->_topMainLabelConstraint setActive:0];
      [(NSLayoutConstraint *)self->_topAvatarConstraint setActive:1];
    }

    else
    {
      [(NSLayoutConstraint *)self->_topAvatarConstraint setActive:0];
      [(NSLayoutConstraint *)self->_topMainLabelConstraint setActive:1];
      v6 = [(PHCarPlayPhoneCallViewCell *)self mainLabel];
      [v6 setNumberOfLines:2];
    }

    v9 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v9 removeFromSuperview];

    objc_storeStrong(&self->_avatarViewController, a3);
    v5 = v10;
  }
}

- (int64_t)numberOfLinesInSubtitleLabel
{
  [(PHCarPlayPhoneCallViewCell *)self frame];
  v4 = v3;
  v5 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  v6 = [v5 font];
  [v6 lineHeight];
  v8 = v7;

  v9 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  v10 = [v9 text];

  v17 = NSFontAttributeName;
  v11 = [(PHCarPlayPhoneCallViewCell *)self subtitleLabel];
  v12 = [v11 font];
  v18 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v10 boundingRectWithSize:1 options:v13 attributes:0 context:{v4, 1.79769313e308}];
  v15 = v14;

  return (v15 / v8);
}

@end