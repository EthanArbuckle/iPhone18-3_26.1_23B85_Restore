@interface UGCUserInformationCell
- (UGCUserInformationCell)initWithEmphasis:(int64_t)emphasis;
- (UGCUserInformationCellDelegate)delegate;
- (UIColor)secondaryColor;
- (UIFont)secondaryFont;
- (id)_createPrimaryLabelWithEmail:(id)email location:(id)location;
- (id)_createUserInfoLabelWithEmail:(id)email location:(id)location;
- (id)_inlineRatingsDisclosureStringWithFont:(id)font attributes:(id)attributes;
- (void)_didTapLegalAttribution;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updatePrimaryLabel;
- (void)_updateSecondaryLabel;
- (void)setOverallFont:(id)font overallColor:(id)color;
- (void)setSecondaryColor:(id)color;
- (void)setSecondaryFont:(id)font;
- (void)setViewModel:(id)model;
- (void)setWantsButtonShapes:(BOOL)shapes;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutMarginsForIsInsetGrouped:(BOOL)grouped;
@end

@implementation UGCUserInformationCell

- (UGCUserInformationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = UGCUserInformationCell;
  changeCopy = change;
  [(UGCUserInformationCell *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(UGCUserInformationCell *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(UGCUserInformationCell *)self _updateFonts];
  }
}

- (id)_inlineRatingsDisclosureStringWithFont:(id)font attributes:(id)attributes
{
  fontCopy = font;
  attributesCopy = attributes;
  legalDisclosureString = [(UGCUserInformationViewModel *)self->_viewModel legalDisclosureString];
  v9 = [legalDisclosureString length];

  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    v24 = [v10 localizedStringForKey:@"%@ %@ [Legal attribution badge format]" value:@"localized string not found" table:0];

    v11 = [[NSAttributedString alloc] initWithString:v24 attributes:attributesCopy];
    v12 = [NSAttributedString alloc];
    legalDisclosureString2 = [(UGCUserInformationViewModel *)self->_viewModel legalDisclosureString];
    v14 = [v12 initWithString:legalDisclosureString2 attributes:attributesCopy];

    v15 = objc_alloc_init(NSTextAttachment);
    v16 = [UIImageSymbolConfiguration configurationWithFont:fontCopy scale:1];
    v17 = [UIImage systemImageNamed:@"chevron.forward"];
    [v17 imageWithConfiguration:v16];
    v19 = v18 = fontCopy;
    v20 = [v19 imageWithRenderingMode:2];
    [v15 setImage:v20];

    v21 = [NSAttributedString attributedStringWithAttachment:v15];
    v22 = [NSAttributedString localizedAttributedStringWithFormat:v11 options:2, v14, v21];

    fontCopy = v18;
  }

  else
  {
    v22 = objc_opt_new();
  }

  return v22;
}

- (id)_createPrimaryLabelWithEmail:(id)email location:(id)location
{
  emailCopy = email;
  locationCopy = location;
  v7 = objc_opt_new();
  if ([emailCopy length])
  {
    [v7 addObject:emailCopy];
  }

  if ([locationCopy length])
  {
    [v7 addObject:locationCopy];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@" • " value:@"localized string not found" table:0];
  v10 = [v7 componentsJoinedByString:v9];

  return v10;
}

- (id)_createUserInfoLabelWithEmail:(id)email location:(id)location
{
  emailCopy = email;
  locationCopy = location;
  v7 = objc_opt_new();
  if ([locationCopy length])
  {
    [v7 addObject:locationCopy];
  }

  if ([emailCopy length])
  {
    [v7 addObject:emailCopy];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@" • " value:@"localized string not found" table:0];
  v10 = [v7 componentsJoinedByString:v9];

  return v10;
}

- (void)setWantsButtonShapes:(BOOL)shapes
{
  if (self->_wantsButtonShapes != shapes)
  {
    self->_wantsButtonShapes = shapes;
    [(UGCUserInformationCell *)self _updateSecondaryLabel];
  }
}

- (void)setSecondaryColor:(id)color
{
  colorCopy = color;
  if (self->_secondaryColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_secondaryColor, color);
    [(UGCUserInformationCell *)self _updateSecondaryLabel];
    colorCopy = v6;
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

- (void)setSecondaryFont:(id)font
{
  fontCopy = font;
  if (self->_secondaryFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_secondaryFont, font);
    [(UGCUserInformationCell *)self _updateSecondaryLabel];
    fontCopy = v6;
  }
}

- (void)_didTapLegalAttribution
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userInformationCellDidSelectLegalAttribution:self];
}

- (void)_updateSecondaryLabel
{
  secondaryFont = [(UGCUserInformationCell *)self secondaryFont];
  [(UILabel *)self->_userInfoLabel setFont:secondaryFont];

  secondaryFont2 = [(UGCUserInformationCell *)self secondaryFont];
  secondaryColor = [(UGCUserInformationCell *)self secondaryColor];
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = v6;
  if (secondaryFont2)
  {
    [v6 setObject:secondaryFont2 forKeyedSubscript:NSFontAttributeName];
  }

  if ([(UGCUserInformationCell *)self wantsButtonShapes]&& UIAccessibilityButtonShapesEnabled())
  {
    [v7 setObject:&off_1016E8540 forKeyedSubscript:NSUnderlineStyleAttributeName];
  }

  if (secondaryColor)
  {
    [v7 setObject:secondaryColor forKeyedSubscript:NSForegroundColorAttributeName];
  }

  emphasis = self->_emphasis;
  if (emphasis == 1)
  {
    v14 = [(UGCUserInformationCell *)self _inlineRatingsDisclosureStringWithFont:secondaryFont2 attributes:v7];
  }

  else if (emphasis)
  {
    v14 = 0;
  }

  else
  {
    userEmail = [(UGCUserInformationViewModel *)self->_viewModel userEmail];
    userCurrentLocation = [(UGCUserInformationViewModel *)self->_viewModel userCurrentLocation];
    v11 = [(UGCUserInformationCell *)self _createUserInfoLabelWithEmail:userEmail location:userCurrentLocation];

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
    userEmail = [(UGCUserInformationViewModel *)self->_viewModel userEmail];
    userCurrentLocation = [(UGCUserInformationViewModel *)self->_viewModel userCurrentLocation];
    v5 = [(UGCUserInformationCell *)self _createPrimaryLabelWithEmail:userEmail location:userCurrentLocation];
    [(UILabel *)self->_userNameLabel setText:v5];
  }

  else
  {
    if (emphasis)
    {
      return;
    }

    userEmail = [(UGCUserInformationViewModel *)self->_viewModel userName];
    [(UILabel *)self->_userNameLabel setText:?];
  }
}

- (void)_updateAppearance
{
  userIcon = [(UGCUserInformationViewModel *)self->_viewModel userIcon];
  [(UIImageView *)self->_userImageView setImage:userIcon];

  [(UGCUserInformationCell *)self _updatePrimaryLabel];

  [(UGCUserInformationCell *)self _updateSecondaryLabel];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(UGCUserInformationViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
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
    layoutMarginsGuide = [(UGCUserInformationCell *)self layoutMarginsGuide];
    v11 = [v9 initWithContainer:layoutMarginsGuide group:v6];

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
    layoutMarginsGuide2 = [(UGCUserInformationCell *)self layoutMarginsGuide];
    v12 = [v14 initWithContainer:layoutMarginsGuide2 group:v6];

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

- (UGCUserInformationCell)initWithEmphasis:(int64_t)emphasis
{
  v8.receiver = self;
  v8.super_class = UGCUserInformationCell;
  v4 = [(UGCPOIEnrichmentEditorCell *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(UGCUserInformationCell *)v4 setAccessibilityIdentifier:v6];

    v4->_emphasis = emphasis;
    [(UGCUserInformationCell *)v4 _setupSubviews];
    [(UGCUserInformationCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)updateLayoutMarginsForIsInsetGrouped:(BOOL)grouped
{
  if (grouped)
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

- (void)setOverallFont:(id)font overallColor:(id)color
{
  colorCopy = color;
  fontCopy = font;
  [(UGCUserInformationCell *)self setPrimaryFont:fontCopy];
  [(UGCUserInformationCell *)self setSecondaryFont:fontCopy];

  [(UGCUserInformationCell *)self setPrimaryColor:colorCopy];
  [(UGCUserInformationCell *)self setSecondaryColor:colorCopy];
}

@end