@interface MKPlaceSectionHeaderView
- (BOOL)shouldStack;
- (CGSize)iconDisplaySize;
- (MKPlaceSectionHeaderView)initWithFrame:(CGRect)frame;
- (NSString)seeMoreButtonText;
- (SEL)action;
- (id)target;
- (void)_updateConstraints;
- (void)createConstraints;
- (void)setAction:(SEL)action;
- (void)setIcon:(id)icon;
- (void)setIconDisplaySize:(CGSize)size;
- (void)setProviderName:(id)name;
- (void)setSeeMoreButtonFont:(id)font;
- (void)setSeeMoreButtonText:(id)text;
- (void)setShowSeeMoreButton:(BOOL)button;
- (void)setTarget:(id)target action:(SEL)action;
- (void)updateConstraints;
- (void)updateContent;
@end

@implementation MKPlaceSectionHeaderView

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (CGSize)iconDisplaySize
{
  width = self->_iconDisplaySize.width;
  height = self->_iconDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSeeMoreButtonFont:(id)font
{
  objc_storeStrong(&self->_seeMoreButtonFont, font);
  fontCopy = font;
  titleLabel = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
  [titleLabel setFont:fontCopy];
}

- (void)setProviderName:(id)name
{
  nameCopy = name;
  objc_storeStrong(&self->_providerName, name);
  if ([(NSString *)self->_providerName length])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _MKLocalizedStringFromThisBundle(@"PlaceCardSectionHeader");
    v7 = [v5 stringWithFormat:v6, self->_providerName];
    [(MKPlaceSectionHeaderView *)self setSeeMoreButtonText:v7];
  }

  else
  {
    v6 = _MKLocalizedStringFromThisBundle(@"PlaceCardSectionHeaderNoProvider");
    [(MKPlaceSectionHeaderView *)self setSeeMoreButtonText:v6];
  }
}

- (void)setTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  [(MKPlaceSectionHeaderView *)self setTarget:targetCopy];
  [(MKPlaceSectionHeaderView *)self setAction:action];
  [(_MKRightImageButton *)self->_seeMoreButton setTarget:targetCopy action:action];
}

- (void)setShowSeeMoreButton:(BOOL)button
{
  if (self->_showSeeMoreButton != button)
  {
    self->_showSeeMoreButton = button;
    v4 = !button;
    [(_MKRightImageButton *)self->_seeMoreButton setHidden:!button];
    seeMoreButton = self->_seeMoreButton;
    if (v4)
    {
      v6 = self->_seeMoreButton;

      [(_MKRightImageButton *)v6 removeFromSuperview];
    }

    else
    {

      [(MKPlaceSectionHeaderView *)self addSubview:seeMoreButton];
    }
  }
}

- (void)setIconDisplaySize:(CGSize)size
{
  p_iconDisplaySize = &self->_iconDisplaySize;
  if (size.width != self->_iconDisplaySize.width || size.height != self->_iconDisplaySize.height)
  {
    p_iconDisplaySize->width = size.width;
    self->_iconDisplaySize.height = size.height;
    if (size.width <= 0.0)
    {
      iconWidthConstraint = self->_iconWidthConstraint;
      if (iconWidthConstraint)
      {
        [(NSLayoutConstraint *)iconWidthConstraint setActive:0];
        v11 = self->_iconWidthConstraint;
        self->_iconWidthConstraint = 0;
      }
    }

    else
    {
      v6 = self->_iconWidthConstraint;
      if (!v6)
      {
        widthAnchor = [(_MKRightImageButton *)self->_seeMoreButton widthAnchor];
        v8 = [widthAnchor constraintEqualToConstant:0.0];
        v9 = self->_iconWidthConstraint;
        self->_iconWidthConstraint = v8;

        size.width = p_iconDisplaySize->width;
        v6 = self->_iconWidthConstraint;
      }

      [(NSLayoutConstraint *)v6 setConstant:size.width];
    }

    height = p_iconDisplaySize->height;
    if (height <= 0.0)
    {
      iconHeightConstraint = self->_iconHeightConstraint;
      if (iconHeightConstraint)
      {
        [(NSLayoutConstraint *)iconHeightConstraint setActive:0];
        v18 = self->_iconHeightConstraint;
        self->_iconHeightConstraint = 0;
      }
    }

    else
    {
      v13 = self->_iconHeightConstraint;
      if (!v13)
      {
        heightAnchor = [(_MKRightImageButton *)self->_seeMoreButton heightAnchor];
        v15 = [heightAnchor constraintEqualToConstant:0.0];
        v16 = self->_iconHeightConstraint;
        self->_iconHeightConstraint = v15;

        height = p_iconDisplaySize->height;
        v13 = self->_iconHeightConstraint;
      }

      [(NSLayoutConstraint *)v13 setConstant:height];
    }

    [(NSLayoutConstraint *)self->_iconWidthConstraint setActive:1];
    v19 = self->_iconHeightConstraint;

    [(NSLayoutConstraint *)v19 setActive:1];
  }
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  icon = [(MKPlaceSectionHeaderView *)self icon];

  if (icon != iconCopy)
  {
    [(_MKRightImageButton *)self->_seeMoreButton setImage:iconCopy];
    seeMoreButtonText = self->_seeMoreButtonText;
    self->_seeMoreButtonText = &stru_1F15B23C0;

    self->_contentChanged = 1;
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)setSeeMoreButtonText:(id)text
{
  textCopy = text;
  if (self->_seeMoreButtonText != textCopy)
  {
    objc_storeStrong(&self->_seeMoreButtonText, text);
    seeMoreButtonText = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    [(_MKRightImageButton *)self->_seeMoreButton setTitle:seeMoreButtonText];

    seeMoreButtonText2 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    [(_MKRightImageButton *)self->_seeMoreButton setAccessibilityLabel:seeMoreButtonText2];

    seeMoreButtonText3 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    titleLabel = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
    [titleLabel setAccessibilityLabel:seeMoreButtonText3];

    self->_contentChanged = 1;
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (NSString)seeMoreButtonText
{
  seeMoreButtonText = self->_seeMoreButtonText;
  if (seeMoreButtonText)
  {
    v3 = seeMoreButtonText;
  }

  else
  {
    v3 = _MKLocalizedStringFromThisBundle(@"See More");
  }

  return v3;
}

- (void)updateConstraints
{
  [(MKPlaceSectionHeaderView *)self updateContent];
  v3.receiver = self;
  v3.super_class = MKPlaceSectionHeaderView;
  [(MKPlaceSectionHeaderView *)&v3 updateConstraints];
}

- (void)updateContent
{
  [(MKPlaceSectionHeaderView *)self bounds];
  Width = CGRectGetWidth(v4);
  if (fabs(Width) > 2.22044605e-16 && self->_width != Width || self->_contentChanged)
  {
    [(MKPlaceSectionHeaderView *)self createConstraints];
    self->_contentChanged = 0;
  }
}

- (void)createConstraints
{
  v98[7] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  v95 = [MEMORY[0x1E695E0F0] mutableCopy];
  p_sectionHeaderLabel = &self->_sectionHeaderLabel;
  firstBaselineAnchor = [(MKVibrantLabel *)self->_sectionHeaderLabel firstBaselineAnchor];
  topAnchor = [(MKPlaceSectionHeaderView *)self topAnchor];
  v6 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  baselineToTopConstraint = self->_baselineToTopConstraint;
  self->_baselineToTopConstraint = v6;

  if (![(MKPlaceSectionHeaderView *)self showSeeMoreButton])
  {
    goto LABEL_8;
  }

  seeMoreButtonText = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
  if ([seeMoreButtonText length])
  {

    goto LABEL_5;
  }

  icon = [(MKPlaceSectionHeaderView *)self icon];

  if (!icon)
  {
LABEL_8:
    bottomAnchor = [(MKPlaceSectionHeaderView *)self bottomAnchor];
    lastBaselineAnchor = [(MKVibrantLabel *)*p_sectionHeaderLabel lastBaselineAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
    baselineToBottomConstraint = self->_baselineToBottomConstraint;
    self->_baselineToBottomConstraint = v21;

    leadingAnchor = [(MKVibrantLabel *)self->_sectionHeaderLabel leadingAnchor];
    layoutMarginsGuide = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    firstBaselineAnchor4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v96[0] = firstBaselineAnchor4;
    trailingAnchor = [(MKVibrantLabel *)self->_sectionHeaderLabel trailingAnchor];
    layoutMarginsGuide2 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30 = self->_baselineToTopConstraint;
    v96[1] = v29;
    v96[2] = v30;
    v96[3] = self->_baselineToBottomConstraint;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
    v32 = v95;
    [(NSArray *)v95 addObjectsFromArray:v31];

    v33 = trailingAnchor;
    v34 = leadingAnchor;
    goto LABEL_24;
  }

LABEL_5:
  if ([(MKPlaceSectionHeaderView *)self shouldStack])
  {
    titleLabel = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
    [titleLabel setTextAlignment:4];

    seeMoreButtonText2 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    v12 = [seeMoreButtonText2 length];

    bottomAnchor2 = [(MKPlaceSectionHeaderView *)self bottomAnchor];
    seeMoreButton = self->_seeMoreButton;
    if (v12)
    {
      lastBaselineAnchor2 = [(_MKRightImageButton *)seeMoreButton lastBaselineAnchor];
      v16 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor2];
      v17 = self->_baselineToBottomConstraint;
      self->_baselineToBottomConstraint = v16;

      firstBaselineAnchor2 = [(_MKRightImageButton *)self->_seeMoreButton firstBaselineAnchor];
      [(MKVibrantLabel *)*p_sectionHeaderLabel lastBaselineAnchor];
    }

    else
    {
      bottomAnchor3 = [(_MKRightImageButton *)seeMoreButton bottomAnchor];
      v62 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v63 = self->_baselineToBottomConstraint;
      self->_baselineToBottomConstraint = v62;

      firstBaselineAnchor2 = [(_MKRightImageButton *)self->_seeMoreButton topAnchor];
      [(MKVibrantLabel *)*p_sectionHeaderLabel bottomAnchor];
    }
    v64 = ;
    v65 = [firstBaselineAnchor2 constraintEqualToAnchor:v64];
    baselineToBaselineConstraint = self->_baselineToBaselineConstraint;
    self->_baselineToBaselineConstraint = v65;

    leadingAnchor3 = [(MKVibrantLabel *)*p_sectionHeaderLabel leadingAnchor];
    layoutMarginsGuide3 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    firstBaselineAnchor4 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v98[0] = firstBaselineAnchor4;
    trailingAnchor3 = [(MKVibrantLabel *)*p_sectionHeaderLabel trailingAnchor];
    layoutMarginsGuide4 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
    v86 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v98[1] = v86;
    leadingAnchor5 = [(_MKRightImageButton *)self->_seeMoreButton leadingAnchor];
    layoutMarginsGuide5 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide5 leadingAnchor];
    v78 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v98[2] = v78;
    trailingAnchor5 = [(_MKRightImageButton *)self->_seeMoreButton trailingAnchor];
    layoutMarginsGuide6 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide6 trailingAnchor];
    v72 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
    v73 = self->_baselineToTopConstraint;
    v98[3] = v72;
    v98[4] = v73;
    v74 = self->_baselineToBottomConstraint;
    v98[5] = self->_baselineToBaselineConstraint;
    v98[6] = v74;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:7];
    [(NSArray *)v95 addObjectsFromArray:v75];

    v32 = v95;
    leadingAnchor2 = leadingAnchor4;
    layoutMarginsGuide = layoutMarginsGuide3;
    v34 = leadingAnchor3;

    v33 = trailingAnchor3;
  }

  else
  {
    if (MKApplicationLayoutDirectionIsRightToLeft())
    {
      v35 = 0;
    }

    else
    {
      v35 = 2;
    }

    p_seeMoreButton = &self->_seeMoreButton;
    titleLabel2 = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
    [titleLabel2 setTextAlignment:v35];

    text = [(MKVibrantLabel *)*p_sectionHeaderLabel text];
    if ([text length])
    {
      v39 = &self->_sectionHeaderLabel;
    }

    else
    {
      v39 = &self->_seeMoreButton;
    }

    firstBaselineAnchor3 = [*v39 firstBaselineAnchor];

    text2 = [(MKVibrantLabel *)*p_sectionHeaderLabel text];
    if ([text2 length])
    {
      v42 = &self->_sectionHeaderLabel;
    }

    else
    {
      v42 = &self->_seeMoreButton;
    }

    lastBaselineAnchor3 = [*v42 lastBaselineAnchor];

    topAnchor2 = [(MKPlaceSectionHeaderView *)self topAnchor];
    v93 = firstBaselineAnchor3;
    v45 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor2];
    v46 = self->_baselineToTopConstraint;
    self->_baselineToTopConstraint = v45;

    bottomAnchor4 = [(MKPlaceSectionHeaderView *)self bottomAnchor];
    v90 = lastBaselineAnchor3;
    v48 = [bottomAnchor4 constraintEqualToAnchor:lastBaselineAnchor3];
    v49 = self->_baselineToBottomConstraint;
    self->_baselineToBottomConstraint = v48;

    leadingAnchor7 = [(MKVibrantLabel *)*p_sectionHeaderLabel leadingAnchor];
    layoutMarginsGuide7 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    leadingAnchor8 = [layoutMarginsGuide7 leadingAnchor];
    v82 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v97[0] = v82;
    leadingAnchor9 = [(_MKRightImageButton *)*p_seeMoreButton leadingAnchor];
    trailingAnchor7 = [(MKVibrantLabel *)*p_sectionHeaderLabel trailingAnchor];
    v51 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:4.0];
    v97[1] = v51;
    trailingAnchor8 = [(_MKRightImageButton *)*p_seeMoreButton trailingAnchor];
    layoutMarginsGuide8 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    trailingAnchor9 = [layoutMarginsGuide8 trailingAnchor];
    v55 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v56 = self->_baselineToTopConstraint;
    v97[2] = v55;
    v97[3] = v56;
    v97[4] = self->_baselineToBottomConstraint;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:5];
    v32 = v95;
    [(NSArray *)v95 addObjectsFromArray:v57];

    seeMoreButtonText3 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    v59 = [seeMoreButtonText3 length];

    v60 = self->_seeMoreButton;
    if (v59)
    {
      leadingAnchor2 = [(_MKRightImageButton *)v60 firstBaselineAnchor];
      firstBaselineAnchor4 = [(MKVibrantLabel *)*p_sectionHeaderLabel firstBaselineAnchor];
      [leadingAnchor2 constraintEqualToAnchor:firstBaselineAnchor4];
    }

    else
    {
      leadingAnchor2 = [(_MKRightImageButton *)v60 centerYAnchor];
      firstBaselineAnchor4 = [(MKVibrantLabel *)*p_sectionHeaderLabel centerYAnchor];
      [leadingAnchor2 constraintEqualToAnchor:firstBaselineAnchor4 constant:1.0];
    }
    v33 = ;
    [(NSArray *)v95 addObject:v33];
    layoutMarginsGuide = v90;
    v34 = v93;
  }

LABEL_24:

  constraints = self->_constraints;
  self->_constraints = v32;
  v77 = v32;

  [(MKPlaceSectionHeaderView *)self _updateConstraints];
  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (BOOL)shouldStack
{
  v30[1] = *MEMORY[0x1E69E9840];
  if ([(MKPlaceSectionHeaderView *)self seeMoreButtonAlwaysOnNewLine])
  {
    LOBYTE(showSeeMoreButton) = 1;
  }

  else
  {
    showSeeMoreButton = [(MKPlaceSectionHeaderView *)self showSeeMoreButton];
    if (!showSeeMoreButton)
    {
      return showSeeMoreButton;
    }

    seeMoreButtonText = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    if ([seeMoreButtonText length])
    {
    }

    else
    {
      icon = [(MKPlaceSectionHeaderView *)self icon];

      if (!icon)
      {
        LOBYTE(showSeeMoreButton) = 0;
        return showSeeMoreButton;
      }
    }

    [(MKPlaceSectionHeaderView *)self frame];
    v7 = v6;
    [(MKPlaceSectionHeaderView *)self layoutMargins];
    v10 = v7 - (v8 + v9);
    text = [(MKVibrantLabel *)self->_sectionHeaderLabel text];
    v12 = *MEMORY[0x1E69DB648];
    v29 = *MEMORY[0x1E69DB648];
    v13 = +[MKFontManager sharedManager];
    sectionHeaderFont = [v13 sectionHeaderFont];
    v30[0] = sectionHeaderFont;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [text sizeWithAttributes:v15];
    v17 = v16;

    icon2 = [(MKPlaceSectionHeaderView *)self icon];

    if (icon2)
    {
      width = self->_iconDisplaySize.width;
    }

    else
    {
      titleLabel = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
      text2 = [titleLabel text];
      v27 = v12;
      v22 = +[MKFontManager sharedManager];
      sectionHeaderFont2 = [v22 sectionHeaderFont];
      v28 = sectionHeaderFont2;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [text2 sizeWithAttributes:v24];
      width = v25;
    }

    LOBYTE(showSeeMoreButton) = v10 < v17 + width;
  }

  return showSeeMoreButton;
}

- (void)_updateConstraints
{
  v3 = +[MKFontManager sharedManager];
  smallAttributionFont = [v3 smallAttributionFont];

  [smallAttributionFont _mapkit_scaledValueForValue:self->_iconDisplaySize.height];
  [(NSLayoutConstraint *)self->_iconHeightConstraint setConstant:?];
  [smallAttributionFont _mapkit_scaledValueForValue:self->_iconDisplaySize.width];
  [(NSLayoutConstraint *)self->_iconWidthConstraint setConstant:?];
  height = self->_iconDisplaySize.height;
  if (self->_iconDisplaySize.width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    [(NSLayoutConstraint *)self->_iconWidthConstraint constant:self->_iconDisplaySize.width];
    v7 = v6;
    [(NSLayoutConstraint *)self->_iconHeightConstraint constant];
    v9 = v8;
    imageView = [(_MKRightImageButton *)self->_seeMoreButton imageView];
    [imageView setFrame:{0.0, 0.0, v7, v9}];
  }

  v11 = +[MKFontManager sharedManager];
  sectionHeaderFont = [v11 sectionHeaderFont];
  [(MKVibrantLabel *)self->_sectionHeaderLabel setFont:sectionHeaderFont];

  seeMoreButtonFont = [(MKPlaceSectionHeaderView *)self seeMoreButtonFont];
  sectionHeaderButtonFont = seeMoreButtonFont;
  if (!seeMoreButtonFont)
  {
    sectionHeaderFont = +[MKFontManager sharedManager];
    sectionHeaderButtonFont = [sectionHeaderFont sectionHeaderButtonFont];
  }

  titleLabel = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
  [titleLabel setFont:sectionHeaderButtonFont];

  if (!seeMoreButtonFont)
  {
  }

  v16 = +[MKFontManager sharedManager];
  attributionFont = [v16 attributionFont];

  [attributionFont _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_baselineToTopConstraint setConstant:?];
  seeMoreButtonText = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
  v19 = [seeMoreButtonText length];

  if (v19)
  {
    [attributionFont _mapkit_scaledValueForValue:22.0];
    [(NSLayoutConstraint *)self->_baselineToBaselineConstraint setConstant:?];
  }

  [attributionFont _mapkit_scaledValueForValue:14.0];
  [(NSLayoutConstraint *)self->_baselineToBottomConstraint setConstant:?];
}

- (MKPlaceSectionHeaderView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = MKPlaceSectionHeaderView;
  v3 = [(MKPlaceSectionItemView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKPlaceSectionHeaderView *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = [[MKVibrantLabel alloc] initWithStyle:1];
    sectionHeaderLabel = v4->_sectionHeaderLabel;
    v4->_sectionHeaderLabel = v5;

    v7 = +[MKFontManager sharedManager];
    sectionHeaderFont = [v7 sectionHeaderFont];
    [(MKVibrantLabel *)v4->_sectionHeaderLabel setFont:sectionHeaderFont];

    [(MKVibrantLabel *)v4->_sectionHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKVibrantLabel *)v4->_sectionHeaderLabel setNumberOfLines:3];
    [(MKPlaceSectionHeaderView *)v4 addSubview:v4->_sectionHeaderLabel];
    v9 = [_MKRightImageButton alloc];
    v10 = [(_MKRightImageButton *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    seeMoreButton = v4->_seeMoreButton;
    v4->_seeMoreButton = v10;

    [(_MKRightImageButton *)v4->_seeMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    seeMoreButtonText = [(MKPlaceSectionHeaderView *)v4 seeMoreButtonText];
    [(_MKRightImageButton *)v4->_seeMoreButton setTitle:seeMoreButtonText];

    v13 = +[MKFontManager sharedManager];
    sectionHeaderButtonFont = [v13 sectionHeaderButtonFont];
    titleLabel = [(_MKRightImageButton *)v4->_seeMoreButton titleLabel];
    [titleLabel setFont:sectionHeaderButtonFont];

    [(_MKRightImageButton *)v4->_seeMoreButton setHidden:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

    [(MKViewWithHairline *)v4 setTopHairlineHidden:1];
    [(MKViewWithHairline *)v4 setBottomHairlineHidden:0];
    v4->_contentChanged = 1;
  }

  return v4;
}

@end