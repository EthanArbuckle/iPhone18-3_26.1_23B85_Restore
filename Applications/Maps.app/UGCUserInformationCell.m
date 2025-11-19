@interface UGCUserInformationCell
- (UGCUserInformationCell)initWithEmphasis:(int64_t)a3;
- (UGCUserInformationCellDelegate)delegate;
- (UIColor)secondaryColor;
- (UIFont)secondaryFont;
- (id)_createPrimaryLabelWithEmail:(id)a3 location:(id)a4;
- (id)_createUserInfoLabelWithEmail:(id)a3 location:(id)a4;
- (id)_inlineRatingsDisclosureStringWithFont:(id)a3 attributes:(id)a4;
- (void)_didTapLegalAttribution;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updatePrimaryLabel;
- (void)_updateSecondaryLabel;
- (void)setOverallFont:(id)a3 overallColor:(id)a4;
- (void)setSecondaryColor:(id)a3;
- (void)setSecondaryFont:(id)a3;
- (void)setViewModel:(id)a3;
- (void)setWantsButtonShapes:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutMarginsForIsInsetGrouped:(BOOL)a3;
@end

@implementation UGCUserInformationCell

- (UGCUserInformationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = UGCUserInformationCell;
  v4 = a3;
  [(UGCUserInformationCell *)&v9 traitCollectionDidChange:v4];
  v5 = [(UGCUserInformationCell *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
  if (v8)
  {
    [(UGCUserInformationCell *)self _updateFonts];
  }
}

- (id)_inlineRatingsDisclosureStringWithFont:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UGCUserInformationViewModel *)self->_viewModel legalDisclosureString];
  v9 = [v8 length];

  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    v24 = [v10 localizedStringForKey:@"%@ %@ [Legal attribution badge format]" value:@"localized string not found" table:0];

    v11 = [[NSAttributedString alloc] initWithString:v24 attributes:v7];
    v12 = [NSAttributedString alloc];
    v13 = [(UGCUserInformationViewModel *)self->_viewModel legalDisclosureString];
    v14 = [v12 initWithString:v13 attributes:v7];

    v15 = objc_alloc_init(NSTextAttachment);
    v16 = [UIImageSymbolConfiguration configurationWithFont:v6 scale:1];
    v17 = [UIImage systemImageNamed:@"chevron.forward"];
    [v17 imageWithConfiguration:v16];
    v19 = v18 = v6;
    v20 = [v19 imageWithRenderingMode:2];
    [v15 setImage:v20];

    v21 = [NSAttributedString attributedStringWithAttachment:v15];
    v22 = [NSAttributedString localizedAttributedStringWithFormat:v11 options:2, v14, v21];

    v6 = v18;
  }

  else
  {
    v22 = objc_opt_new();
  }

  return v22;
}

- (id)_createPrimaryLabelWithEmail:(id)a3 location:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v5 length])
  {
    [v7 addObject:v5];
  }

  if ([v6 length])
  {
    [v7 addObject:v6];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@" • " value:@"localized string not found" table:0];
  v10 = [v7 componentsJoinedByString:v9];

  return v10;
}

- (id)_createUserInfoLabelWithEmail:(id)a3 location:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v6 length])
  {
    [v7 addObject:v6];
  }

  if ([v5 length])
  {
    [v7 addObject:v5];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@" • " value:@"localized string not found" table:0];
  v10 = [v7 componentsJoinedByString:v9];

  return v10;
}

- (void)setWantsButtonShapes:(BOOL)a3
{
  if (self->_wantsButtonShapes != a3)
  {
    self->_wantsButtonShapes = a3;
    [(UGCUserInformationCell *)self _updateSecondaryLabel];
  }
}

- (void)setSecondaryColor:(id)a3
{
  v5 = a3;
  if (self->_secondaryColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_secondaryColor, a3);
    [(UGCUserInformationCell *)self _updateSecondaryLabel];
    v5 = v6;
  }
}

- (UIColor)secondaryColor
{
  secondaryColor = self->_secondaryColor;
  if (secondaryColor)
  {
    v3 = secondaryColor;
  }

  else
  {
    v3 = +[UIColor secondaryLabelColor];
  }

  return v3;
}

- (UIFont)secondaryFont
{
  secondaryFont = self->_secondaryFont;
  if (secondaryFont)
  {
    v3 = secondaryFont;
  }

  else
  {
    v3 = +[UGCFontManager userInfoSecondaryLabelFont];
  }

  return v3;
}

- (void)setSecondaryFont:(id)a3
{
  v5 = a3;
  if (self->_secondaryFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_secondaryFont, a3);
    [(UGCUserInformationCell *)self _updateSecondaryLabel];
    v5 = v6;
  }
}

- (void)_didTapLegalAttribution
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userInformationCellDidSelectLegalAttribution:self];
}

- (void)_updateSecondaryLabel
{
  v3 = [(UGCUserInformationCell *)self secondaryFont];
  [(UILabel *)self->_userInfoLabel setFont:v3];

  v4 = [(UGCUserInformationCell *)self secondaryFont];
  v5 = [(UGCUserInformationCell *)self secondaryColor];
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = v6;
  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:NSFontAttributeName];
  }

  if ([(UGCUserInformationCell *)self wantsButtonShapes]&& UIAccessibilityButtonShapesEnabled())
  {
    [v7 setObject:&off_1016E8540 forKeyedSubscript:NSUnderlineStyleAttributeName];
  }

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:NSForegroundColorAttributeName];
  }

  emphasis = self->_emphasis;
  if (emphasis == 1)
  {
    v14 = [(UGCUserInformationCell *)self _inlineRatingsDisclosureStringWithFont:v4 attributes:v7];
  }

  else if (emphasis)
  {
    v14 = 0;
  }

  else
  {
    v9 = [(UGCUserInformationViewModel *)self->_viewModel userEmail];
    v10 = [(UGCUserInformationViewModel *)self->_viewModel userCurrentLocation];
    v11 = [(UGCUserInformationCell *)self _createUserInfoLabelWithEmail:v9 location:v10];

    if ([v11 length])
    {
      v12 = [NSAttributedString alloc];
      v13 = [v7 copy];
      v15 = [v12 initWithString:v11 attributes:v13];
    }

    else
    {
      v15 = 0;
    }

    v14 = v15;
  }

  v16 = v14;
  [(UILabel *)self->_userInfoLabel setAttributedText:v14];
}

- (void)_updatePrimaryLabel
{
  emphasis = self->_emphasis;
  if (emphasis == 1)
  {
    v6 = [(UGCUserInformationViewModel *)self->_viewModel userEmail];
    v4 = [(UGCUserInformationViewModel *)self->_viewModel userCurrentLocation];
    v5 = [(UGCUserInformationCell *)self _createPrimaryLabelWithEmail:v6 location:v4];
    [(UILabel *)self->_userNameLabel setText:v5];
  }

  else
  {
    if (emphasis)
    {
      return;
    }

    v6 = [(UGCUserInformationViewModel *)self->_viewModel userName];
    [(UILabel *)self->_userNameLabel setText:?];
  }
}

- (void)_updateAppearance
{
  v3 = [(UGCUserInformationViewModel *)self->_viewModel userIcon];
  [(UIImageView *)self->_userImageView setImage:v3];

  [(UGCUserInformationCell *)self _updatePrimaryLabel];

  [(UGCUserInformationCell *)self _updateSecondaryLabel];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(UGCUserInformationViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(UGCUserInformationCell *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v3 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:1];
  userInfoLabel = self->_userInfoLabel;
  v21[0] = self->_userNameLabel;
  v21[1] = userInfoLabel;
  v5 = [NSArray arrayWithObjects:v21 count:2];
  [v3 setArrangedLayoutItems:v5];

  [v3 setSpacing:1.0];
  v6 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:0];
  [v6 setAlignment:2];
  [v6 setAlignmentBoundsContent:1];
  LODWORD(v7) = 1112276992;
  [v6 setAlignmentFittingSizePriority:v7];
  [v6 setSpacing:16.0];
  if (self->_emphasis == 1 && MapsFeature_IsEnabled_ARPCommunityID())
  {
    v20 = v3;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
    [v6 setArrangedLayoutItems:v8];

    v9 = [MUCompositionalStackLayout alloc];
    v10 = [(UGCUserInformationCell *)self layoutMarginsGuide];
    v11 = [v9 initWithContainer:v10 group:v6];

    v19 = v11;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    [NSLayoutConstraint _mapsui_activateLayouts:v12];
  }

  else
  {
    v11 = [[MUSizeLayout alloc] initWithItem:self->_userImageView size:{34.0, 34.0}];
    v18[0] = self->_userImageView;
    v18[1] = v3;
    v13 = [NSArray arrayWithObjects:v18 count:2];
    [v6 setArrangedLayoutItems:v13];

    v14 = [MUCompositionalStackLayout alloc];
    v15 = [(UGCUserInformationCell *)self layoutMarginsGuide];
    v12 = [v14 initWithContainer:v15 group:v6];

    v17[0] = v11;
    v17[1] = v12;
    v16 = [NSArray arrayWithObjects:v17 count:2];
    [NSLayoutConstraint _mapsui_activateLayouts:v16];
  }
}

- (void)_setupSubviews
{
  [(UGCUserInformationCell *)self setPreservesSuperviewLayoutMargins:1];
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  userImageView = self->_userImageView;
  self->_userImageView = v7;

  [(UIImageView *)self->_userImageView setAccessibilityIdentifier:@"UserImageView"];
  [(UGCUserInformationCell *)self addSubview:self->_userImageView];
  v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  userNameLabel = self->_userNameLabel;
  self->_userNameLabel = v9;

  [(UILabel *)self->_userNameLabel setNumberOfLines:0];
  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    +[UGCFontManager userInfoPrimaryLabelFontCommunityID];
  }

  else
  {
    +[UGCFontManager userInfoPrimaryLabelFont];
  }
  v11 = ;
  [(UILabel *)self->_userNameLabel setFont:v11];

  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v12 = ;
  [(UILabel *)self->_userNameLabel setTextColor:v12];

  [(UILabel *)self->_userNameLabel setAccessibilityIdentifier:@"UserNameLabel"];
  [(UILabel *)self->_userNameLabel setAdjustsFontForContentSizeCategory:1];
  [(UGCUserInformationCell *)self addSubview:self->_userNameLabel];
  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  userInfoLabel = self->_userInfoLabel;
  self->_userInfoLabel = v13;

  [(UILabel *)self->_userInfoLabel setNumberOfLines:0];
  v15 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_userInfoLabel setTextColor:v15];

  [(UILabel *)self->_userInfoLabel setAccessibilityIdentifier:@"UserInfoLabel"];
  [(UGCUserInformationCell *)self addSubview:self->_userInfoLabel];
  if (self->_emphasis == 1)
  {
    v16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapLegalAttribution"];
    [(UGCUserInformationCell *)self addGestureRecognizer:v16];
    MURegisterForButtonShapeEnablementChanges();
  }

  [(UGCUserInformationCell *)self updateLayoutMarginsForIsInsetGrouped:0];
}

- (UGCUserInformationCell)initWithEmphasis:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = UGCUserInformationCell;
  v4 = [(UGCPOIEnrichmentEditorCell *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(UGCUserInformationCell *)v4 setAccessibilityIdentifier:v6];

    v4->_emphasis = a3;
    [(UGCUserInformationCell *)v4 _setupSubviews];
    [(UGCUserInformationCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)updateLayoutMarginsForIsInsetGrouped:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.0;
    v5 = 16.0;
    v6 = 16.0;
  }

  else
  {
    if (MapsFeature_IsEnabled_ARPCommunityID())
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 12.0;
    }

    if (MapsFeature_IsEnabled_ARPCommunityID())
    {
      v4 = 32.0;
    }

    else
    {
      v4 = 0.0;
    }

    v6 = 4.0;
  }

  [(UGCUserInformationCell *)self setDirectionalLayoutMargins:v5, v4, v6, 0.0];
}

- (void)setOverallFont:(id)a3 overallColor:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(UGCUserInformationCell *)self setPrimaryFont:v6];
  [(UGCUserInformationCell *)self setSecondaryFont:v6];

  [(UGCUserInformationCell *)self setPrimaryColor:v7];
  [(UGCUserInformationCell *)self setSecondaryColor:v7];
}

@end