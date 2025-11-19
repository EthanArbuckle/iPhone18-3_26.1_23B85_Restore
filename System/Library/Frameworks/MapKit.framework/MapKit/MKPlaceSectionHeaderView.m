@interface MKPlaceSectionHeaderView
- (BOOL)shouldStack;
- (CGSize)iconDisplaySize;
- (MKPlaceSectionHeaderView)initWithFrame:(CGRect)a3;
- (NSString)seeMoreButtonText;
- (SEL)action;
- (id)target;
- (void)_updateConstraints;
- (void)createConstraints;
- (void)setAction:(SEL)a3;
- (void)setIcon:(id)a3;
- (void)setIconDisplaySize:(CGSize)a3;
- (void)setProviderName:(id)a3;
- (void)setSeeMoreButtonFont:(id)a3;
- (void)setSeeMoreButtonText:(id)a3;
- (void)setShowSeeMoreButton:(BOOL)a3;
- (void)setTarget:(id)a3 action:(SEL)a4;
- (void)updateConstraints;
- (void)updateContent;
@end

@implementation MKPlaceSectionHeaderView

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
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

- (void)setSeeMoreButtonFont:(id)a3
{
  objc_storeStrong(&self->_seeMoreButtonFont, a3);
  v5 = a3;
  v6 = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
  [v6 setFont:v5];
}

- (void)setProviderName:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_providerName, a3);
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

- (void)setTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  [(MKPlaceSectionHeaderView *)self setTarget:v6];
  [(MKPlaceSectionHeaderView *)self setAction:a4];
  [(_MKRightImageButton *)self->_seeMoreButton setTarget:v6 action:a4];
}

- (void)setShowSeeMoreButton:(BOOL)a3
{
  if (self->_showSeeMoreButton != a3)
  {
    self->_showSeeMoreButton = a3;
    v4 = !a3;
    [(_MKRightImageButton *)self->_seeMoreButton setHidden:!a3];
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

- (void)setIconDisplaySize:(CGSize)a3
{
  p_iconDisplaySize = &self->_iconDisplaySize;
  if (a3.width != self->_iconDisplaySize.width || a3.height != self->_iconDisplaySize.height)
  {
    p_iconDisplaySize->width = a3.width;
    self->_iconDisplaySize.height = a3.height;
    if (a3.width <= 0.0)
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
        v7 = [(_MKRightImageButton *)self->_seeMoreButton widthAnchor];
        v8 = [v7 constraintEqualToConstant:0.0];
        v9 = self->_iconWidthConstraint;
        self->_iconWidthConstraint = v8;

        a3.width = p_iconDisplaySize->width;
        v6 = self->_iconWidthConstraint;
      }

      [(NSLayoutConstraint *)v6 setConstant:a3.width];
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
        v14 = [(_MKRightImageButton *)self->_seeMoreButton heightAnchor];
        v15 = [v14 constraintEqualToConstant:0.0];
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

- (void)setIcon:(id)a3
{
  v6 = a3;
  v4 = [(MKPlaceSectionHeaderView *)self icon];

  if (v4 != v6)
  {
    [(_MKRightImageButton *)self->_seeMoreButton setImage:v6];
    seeMoreButtonText = self->_seeMoreButtonText;
    self->_seeMoreButtonText = &stru_1F15B23C0;

    self->_contentChanged = 1;
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)setSeeMoreButtonText:(id)a3
{
  v9 = a3;
  if (self->_seeMoreButtonText != v9)
  {
    objc_storeStrong(&self->_seeMoreButtonText, a3);
    v5 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    [(_MKRightImageButton *)self->_seeMoreButton setTitle:v5];

    v6 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    [(_MKRightImageButton *)self->_seeMoreButton setAccessibilityLabel:v6];

    v7 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    v8 = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
    [v8 setAccessibilityLabel:v7];

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
  v4 = [(MKVibrantLabel *)self->_sectionHeaderLabel firstBaselineAnchor];
  v5 = [(MKPlaceSectionHeaderView *)self topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  baselineToTopConstraint = self->_baselineToTopConstraint;
  self->_baselineToTopConstraint = v6;

  if (![(MKPlaceSectionHeaderView *)self showSeeMoreButton])
  {
    goto LABEL_8;
  }

  v8 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
  if ([v8 length])
  {

    goto LABEL_5;
  }

  v9 = [(MKPlaceSectionHeaderView *)self icon];

  if (!v9)
  {
LABEL_8:
    v19 = [(MKPlaceSectionHeaderView *)self bottomAnchor];
    v20 = [(MKVibrantLabel *)*p_sectionHeaderLabel lastBaselineAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    baselineToBottomConstraint = self->_baselineToBottomConstraint;
    self->_baselineToBottomConstraint = v21;

    v92 = [(MKVibrantLabel *)self->_sectionHeaderLabel leadingAnchor];
    v23 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v24 = [v23 leadingAnchor];
    v25 = [v92 constraintEqualToAnchor:v24];
    v96[0] = v25;
    v26 = [(MKVibrantLabel *)self->_sectionHeaderLabel trailingAnchor];
    v27 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v30 = self->_baselineToTopConstraint;
    v96[1] = v29;
    v96[2] = v30;
    v96[3] = self->_baselineToBottomConstraint;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
    v32 = v95;
    [(NSArray *)v95 addObjectsFromArray:v31];

    v33 = v26;
    v34 = v92;
    goto LABEL_24;
  }

LABEL_5:
  if ([(MKPlaceSectionHeaderView *)self shouldStack])
  {
    v10 = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
    [v10 setTextAlignment:4];

    v11 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    v12 = [v11 length];

    v13 = [(MKPlaceSectionHeaderView *)self bottomAnchor];
    seeMoreButton = self->_seeMoreButton;
    if (v12)
    {
      v15 = [(_MKRightImageButton *)seeMoreButton lastBaselineAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      v17 = self->_baselineToBottomConstraint;
      self->_baselineToBottomConstraint = v16;

      v18 = [(_MKRightImageButton *)self->_seeMoreButton firstBaselineAnchor];
      [(MKVibrantLabel *)*p_sectionHeaderLabel lastBaselineAnchor];
    }

    else
    {
      v61 = [(_MKRightImageButton *)seeMoreButton bottomAnchor];
      v62 = [v13 constraintEqualToAnchor:v61];
      v63 = self->_baselineToBottomConstraint;
      self->_baselineToBottomConstraint = v62;

      v18 = [(_MKRightImageButton *)self->_seeMoreButton topAnchor];
      [(MKVibrantLabel *)*p_sectionHeaderLabel bottomAnchor];
    }
    v64 = ;
    v65 = [v18 constraintEqualToAnchor:v64];
    baselineToBaselineConstraint = self->_baselineToBaselineConstraint;
    self->_baselineToBaselineConstraint = v65;

    v94 = [(MKVibrantLabel *)*p_sectionHeaderLabel leadingAnchor];
    v67 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v68 = [v67 leadingAnchor];
    v25 = [v94 constraintEqualToAnchor:v68];
    v98[0] = v25;
    v84 = [(MKVibrantLabel *)*p_sectionHeaderLabel trailingAnchor];
    v91 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v89 = [v91 trailingAnchor];
    v86 = [v84 constraintEqualToAnchor:v89];
    v98[1] = v86;
    v81 = [(_MKRightImageButton *)self->_seeMoreButton leadingAnchor];
    v83 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v79 = [v83 leadingAnchor];
    v78 = [v81 constraintEqualToAnchor:v79];
    v98[2] = v78;
    v69 = [(_MKRightImageButton *)self->_seeMoreButton trailingAnchor];
    v70 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v71 = [v70 trailingAnchor];
    v72 = [v69 constraintLessThanOrEqualToAnchor:v71];
    v73 = self->_baselineToTopConstraint;
    v98[3] = v72;
    v98[4] = v73;
    v74 = self->_baselineToBottomConstraint;
    v98[5] = self->_baselineToBaselineConstraint;
    v98[6] = v74;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:7];
    [(NSArray *)v95 addObjectsFromArray:v75];

    v32 = v95;
    v24 = v68;
    v23 = v67;
    v34 = v94;

    v33 = v84;
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
    v37 = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
    [v37 setTextAlignment:v35];

    v38 = [(MKVibrantLabel *)*p_sectionHeaderLabel text];
    if ([v38 length])
    {
      v39 = &self->_sectionHeaderLabel;
    }

    else
    {
      v39 = &self->_seeMoreButton;
    }

    v40 = [*v39 firstBaselineAnchor];

    v41 = [(MKVibrantLabel *)*p_sectionHeaderLabel text];
    if ([v41 length])
    {
      v42 = &self->_sectionHeaderLabel;
    }

    else
    {
      v42 = &self->_seeMoreButton;
    }

    v43 = [*v42 lastBaselineAnchor];

    v44 = [(MKPlaceSectionHeaderView *)self topAnchor];
    v93 = v40;
    v45 = [v40 constraintEqualToAnchor:v44];
    v46 = self->_baselineToTopConstraint;
    self->_baselineToTopConstraint = v45;

    v47 = [(MKPlaceSectionHeaderView *)self bottomAnchor];
    v90 = v43;
    v48 = [v47 constraintEqualToAnchor:v43];
    v49 = self->_baselineToBottomConstraint;
    self->_baselineToBottomConstraint = v48;

    v87 = [(MKVibrantLabel *)*p_sectionHeaderLabel leadingAnchor];
    v88 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v85 = [v88 leadingAnchor];
    v82 = [v87 constraintEqualToAnchor:v85];
    v97[0] = v82;
    v80 = [(_MKRightImageButton *)*p_seeMoreButton leadingAnchor];
    v50 = [(MKVibrantLabel *)*p_sectionHeaderLabel trailingAnchor];
    v51 = [v80 constraintGreaterThanOrEqualToAnchor:v50 constant:4.0];
    v97[1] = v51;
    v52 = [(_MKRightImageButton *)*p_seeMoreButton trailingAnchor];
    v53 = [(MKPlaceSectionHeaderView *)self layoutMarginsGuide];
    v54 = [v53 trailingAnchor];
    v55 = [v52 constraintEqualToAnchor:v54];
    v56 = self->_baselineToTopConstraint;
    v97[2] = v55;
    v97[3] = v56;
    v97[4] = self->_baselineToBottomConstraint;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:5];
    v32 = v95;
    [(NSArray *)v95 addObjectsFromArray:v57];

    v58 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    v59 = [v58 length];

    v60 = self->_seeMoreButton;
    if (v59)
    {
      v24 = [(_MKRightImageButton *)v60 firstBaselineAnchor];
      v25 = [(MKVibrantLabel *)*p_sectionHeaderLabel firstBaselineAnchor];
      [v24 constraintEqualToAnchor:v25];
    }

    else
    {
      v24 = [(_MKRightImageButton *)v60 centerYAnchor];
      v25 = [(MKVibrantLabel *)*p_sectionHeaderLabel centerYAnchor];
      [v24 constraintEqualToAnchor:v25 constant:1.0];
    }
    v33 = ;
    [(NSArray *)v95 addObject:v33];
    v23 = v90;
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
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(MKPlaceSectionHeaderView *)self showSeeMoreButton];
    if (!v3)
    {
      return v3;
    }

    v4 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
    if ([v4 length])
    {
    }

    else
    {
      v5 = [(MKPlaceSectionHeaderView *)self icon];

      if (!v5)
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    [(MKPlaceSectionHeaderView *)self frame];
    v7 = v6;
    [(MKPlaceSectionHeaderView *)self layoutMargins];
    v10 = v7 - (v8 + v9);
    v11 = [(MKVibrantLabel *)self->_sectionHeaderLabel text];
    v12 = *MEMORY[0x1E69DB648];
    v29 = *MEMORY[0x1E69DB648];
    v13 = +[MKFontManager sharedManager];
    v14 = [v13 sectionHeaderFont];
    v30[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [v11 sizeWithAttributes:v15];
    v17 = v16;

    v18 = [(MKPlaceSectionHeaderView *)self icon];

    if (v18)
    {
      width = self->_iconDisplaySize.width;
    }

    else
    {
      v20 = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
      v21 = [v20 text];
      v27 = v12;
      v22 = +[MKFontManager sharedManager];
      v23 = [v22 sectionHeaderFont];
      v28 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v21 sizeWithAttributes:v24];
      width = v25;
    }

    LOBYTE(v3) = v10 < v17 + width;
  }

  return v3;
}

- (void)_updateConstraints
{
  v3 = +[MKFontManager sharedManager];
  v20 = [v3 smallAttributionFont];

  [v20 _mapkit_scaledValueForValue:self->_iconDisplaySize.height];
  [(NSLayoutConstraint *)self->_iconHeightConstraint setConstant:?];
  [v20 _mapkit_scaledValueForValue:self->_iconDisplaySize.width];
  [(NSLayoutConstraint *)self->_iconWidthConstraint setConstant:?];
  height = self->_iconDisplaySize.height;
  if (self->_iconDisplaySize.width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    [(NSLayoutConstraint *)self->_iconWidthConstraint constant:self->_iconDisplaySize.width];
    v7 = v6;
    [(NSLayoutConstraint *)self->_iconHeightConstraint constant];
    v9 = v8;
    v10 = [(_MKRightImageButton *)self->_seeMoreButton imageView];
    [v10 setFrame:{0.0, 0.0, v7, v9}];
  }

  v11 = +[MKFontManager sharedManager];
  v12 = [v11 sectionHeaderFont];
  [(MKVibrantLabel *)self->_sectionHeaderLabel setFont:v12];

  v13 = [(MKPlaceSectionHeaderView *)self seeMoreButtonFont];
  v14 = v13;
  if (!v13)
  {
    v12 = +[MKFontManager sharedManager];
    v14 = [v12 sectionHeaderButtonFont];
  }

  v15 = [(_MKRightImageButton *)self->_seeMoreButton titleLabel];
  [v15 setFont:v14];

  if (!v13)
  {
  }

  v16 = +[MKFontManager sharedManager];
  v17 = [v16 attributionFont];

  [v17 _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_baselineToTopConstraint setConstant:?];
  v18 = [(MKPlaceSectionHeaderView *)self seeMoreButtonText];
  v19 = [v18 length];

  if (v19)
  {
    [v17 _mapkit_scaledValueForValue:22.0];
    [(NSLayoutConstraint *)self->_baselineToBaselineConstraint setConstant:?];
  }

  [v17 _mapkit_scaledValueForValue:14.0];
  [(NSLayoutConstraint *)self->_baselineToBottomConstraint setConstant:?];
}

- (MKPlaceSectionHeaderView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = MKPlaceSectionHeaderView;
  v3 = [(MKPlaceSectionItemView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKPlaceSectionHeaderView *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = [[MKVibrantLabel alloc] initWithStyle:1];
    sectionHeaderLabel = v4->_sectionHeaderLabel;
    v4->_sectionHeaderLabel = v5;

    v7 = +[MKFontManager sharedManager];
    v8 = [v7 sectionHeaderFont];
    [(MKVibrantLabel *)v4->_sectionHeaderLabel setFont:v8];

    [(MKVibrantLabel *)v4->_sectionHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKVibrantLabel *)v4->_sectionHeaderLabel setNumberOfLines:3];
    [(MKPlaceSectionHeaderView *)v4 addSubview:v4->_sectionHeaderLabel];
    v9 = [_MKRightImageButton alloc];
    v10 = [(_MKRightImageButton *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    seeMoreButton = v4->_seeMoreButton;
    v4->_seeMoreButton = v10;

    [(_MKRightImageButton *)v4->_seeMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(MKPlaceSectionHeaderView *)v4 seeMoreButtonText];
    [(_MKRightImageButton *)v4->_seeMoreButton setTitle:v12];

    v13 = +[MKFontManager sharedManager];
    v14 = [v13 sectionHeaderButtonFont];
    v15 = [(_MKRightImageButton *)v4->_seeMoreButton titleLabel];
    [v15 setFont:v14];

    [(_MKRightImageButton *)v4->_seeMoreButton setHidden:1];
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v4 selector:sel_contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

    [(MKViewWithHairline *)v4 setTopHairlineHidden:1];
    [(MKViewWithHairline *)v4 setBottomHairlineHidden:0];
    v4->_contentChanged = 1;
  }

  return v4;
}

@end