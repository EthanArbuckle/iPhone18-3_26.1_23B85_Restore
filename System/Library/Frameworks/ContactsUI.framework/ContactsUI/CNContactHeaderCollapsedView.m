@interface CNContactHeaderCollapsedView
+ (id)collapsedContactHeaderViewWithContact:(id)a3 showingNavBar:(BOOL)a4 monogramOnly:(BOOL)a5 delegate:(id)a6;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5;
+ (id)sizeAttributesShowingNavBar:(BOOL)a3;
- (CNContactHeaderCollapsedView)initWithContact:(id)a3 frame:(CGRect)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 delegate:(id)a7;
- (double)height;
- (id)_headerStringForContacts:(id)a3;
- (unint64_t)avatarStyle;
- (void)_updatePhotoView;
- (void)assignImageColorsToAvatarBackgroundView:(id)a3 horizontal:(BOOL)a4;
- (void)calculateLabelSizes;
- (void)calculateLabelSizesIfNeeded;
- (void)copy:(id)a3;
- (void)didFinishUsing;
- (void)disablePhotoTapGesture;
- (void)layoutSubviews;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)setActionsWrapperView:(id)a3;
- (void)setAvatarStyle:(unint64_t)a3;
- (void)setDefaultLabelColors;
- (void)setNameTextAttributes:(id)a3;
- (void)setUpNameLabel;
- (void)setupBackgroundGradientLayer;
- (void)showLabelAndAvatar:(BOOL)a3 animated:(BOOL)a4;
- (void)updateBackgroundWithGradientColors:(id)a3 horizontal:(BOOL)a4;
- (void)updateBackgroundWithPosterSnapshotImage:(id)a3;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateLabelColorsForImageColors:(id)a3;
- (void)updateSizeDependentAttributes;
@end

@implementation CNContactHeaderCollapsedView

- (id)_headerStringForContacts:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    if ([(CNContactHeaderCollapsedView *)self usesBrandedCallFormat])
    {
      v5 = *MEMORY[0x1E6996530];
      v6 = [v4 firstObject];
      v7 = [v6 phoneNumbers];
      LOBYTE(v5) = (*(v5 + 16))(v5, v7);

      if ((v5 & 1) == 0)
      {
        v8 = [v4 firstObject];
        v9 = [v8 phoneNumbers];
        v10 = [v9 firstObject];

        v11 = [v10 value];
        v12 = [v11 formattedStringValue];

        if ((*(*MEMORY[0x1E6996570] + 16))())
        {
          v13 = v12;

          goto LABEL_12;
        }
      }
    }

    v15 = [(CNContactHeaderCollapsedView *)self contactFormatter];
    v16 = [v4 firstObject];
    v14 = [v15 stringFromContact:v16];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    v17 = [(CNContactHeaderCollapsedView *)self alternateName];

    v14 = v17;
  }

  v13 = v14;
LABEL_12:

  return v13;
}

- (void)copy:(id)a3
{
  v3 = [(CNContactHeaderView *)self nameLabel];
  v4 = [v3 text];
  v6 = [v4 mutableCopy];

  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v5 setString:v6];
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:29];

  if ((v7 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = CNContactHeaderCollapsedView;
    [(CNContactHeaderView *)&v13 reloadDataPreservingChanges:v3];
    v8 = [(CNContactHeaderView *)self contacts];
    v9 = [(CNContactHeaderCollapsedView *)self _headerStringForContacts:v8];

    if (v9)
    {
      v10 = [(CNContactHeaderView *)self nameLabel];
      v11 = [v10 text];

      if (!v11)
      {
        [(CNContactHeaderCollapsedView *)self setNeedsUpdateConstraints];
      }
    }

    v12 = [(CNContactHeaderView *)self nameLabel];
    [v12 setAb_text:v9];

    [(CNContactHeaderCollapsedView *)self _updatePhotoView];
    [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
    [(CNContactHeaderCollapsedView *)self calculateLabelSizes];
    [(CNContactHeaderCollapsedView *)self setNeedsLayout];
  }
}

- (void)_updatePhotoView
{
  v8 = [(CNContactHeaderView *)self photoView];
  v3 = [v8 isHidden];
  v4 = [(CNContactHeaderView *)self contacts];
  if ([v4 count] > 1)
  {
    [v8 setHidden:0];
  }

  else
  {
    v5 = [(CNContactHeaderView *)self contacts];
    v6 = [v5 firstObject];
    if ([v6 imageDataAvailable])
    {
      v7 = 0;
    }

    else
    {
      v7 = [(CNContactHeaderView *)self alwaysShowsMonogram]^ 1;
    }

    [v8 setHidden:v7];
  }

  if (v3 != [v8 isHidden])
  {
    [(CNContactHeaderCollapsedView *)self setNeedsUpdateConstraints];
  }
}

- (void)setNameTextAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNContactHeaderCollapsedView;
  v4 = a3;
  [(CNContactHeaderView *)&v6 setNameTextAttributes:v4];
  v5 = [(CNContactHeaderView *)self nameLabel:v6.receiver];
  [v5 setAb_textAttributes:v4];
}

- (void)updateSizeDependentAttributes
{
  [(CNContactHeaderCollapsedView *)self bounds];
  if (v3 > 0.0)
  {
    v4 = 0.0;
    if ([(CNContactHeaderView *)self shouldShowBelowNavigationTitle])
    {
      v5 = [(CNContactHeaderView *)self sizeAttributes];
      [v5 minNavbarTitleOffset];
      v4 = v6;
    }

    [(CNContactHeaderView *)self safeAreaPhotoOffset];
    v8 = v4 + v7;
    v12 = [(CNContactHeaderView *)self sizeAttributes];
    [v12 photoMinTopMargin];
    v10 = v8 + v9;
    v11 = [(CNContactHeaderView *)self photoTopConstraint];
    [v11 setConstant:v10];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CNContactHeaderCollapsedView;
  [(CNContactHeaderView *)&v12 layoutSubviews];
  [(CNContactHeaderCollapsedView *)self calculateLabelSizes];
  [(CNContactHeaderCollapsedView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)calculateLabelSizes
{
  if ([(CNContactHeaderView *)self needsLabelSizeCalculation])
  {
    [(CNContactHeaderCollapsedView *)self frame];
    v4 = v3;
    if (v3 == 0.0)
    {
      v5 = [(CNContactHeaderCollapsedView *)self superview];

      if (v5)
      {
        v6 = [(CNContactHeaderCollapsedView *)self superview];
        [v6 frame];
        v4 = v7;
      }
    }

    if (v4 != 0.0)
    {
      [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:0];
      [(CNContactHeaderCollapsedView *)self layoutMargins];
      v9 = v8;
      [(CNContactHeaderCollapsedView *)self layoutMargins];
      v11 = v4 - (v9 + v10);
      [(CNContactHeaderCollapsedView *)self updateFontSizes];
      v12 = [(CNContactHeaderView *)self nameLabel];
      [v12 sizeThatFits:{v11, 1000.0}];
      v14 = v13;

      v15 = [(CNContactHeaderCollapsedView *)self _screen];
      [v15 scale];
      if (v16 == 0.0)
      {
        if (RoundToScale_onceToken != -1)
        {
          dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
        }

        v16 = *&RoundToScale___s;
      }

      v17 = v16 == 1.0;
      v18 = round(v16 * v14) / v16;
      v19 = round(v14);
      if (v17)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      [(CNContactHeaderCollapsedView *)self setLabelsHeight:v20];
      v21 = [(CNContactHeaderView *)self delegate];
      [v21 headerViewDidUpdateLabelSizes];
    }
  }
}

- (void)calculateLabelSizesIfNeeded
{
  v3.receiver = self;
  v3.super_class = CNContactHeaderCollapsedView;
  [(CNContactHeaderView *)&v3 calculateLabelSizesIfNeeded];
  [(CNContactHeaderCollapsedView *)self calculateLabelSizes];
}

- (void)disablePhotoTapGesture
{
  v2 = [(CNContactHeaderView *)self photoView];
  [v2 disablePhotoTapGesture];
}

- (void)showLabelAndAvatar:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CNContactHeaderCollapsedView_showLabelAndAvatar_animated___block_invoke;
  aBlock[3] = &unk_1E74E4768;
  v11 = a3;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v4)
  {
    v7 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__CNContactHeaderCollapsedView_showLabelAndAvatar_animated___block_invoke_2;
    v8[3] = &unk_1E74E6F88;
    v9 = v5;
    [v7 animateWithDuration:v8 animations:0.3];
  }

  else
  {
    v5[2](v5);
  }
}

void __60__CNContactHeaderCollapsedView_showLabelAndAvatar_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) photoView];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) nameLabel];
  [v4 setAlpha:v2];
}

- (void)updateFontSizes
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  v4 = sCurrentNameFont;
  sCurrentNameFont = v3;

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  v6 = sCurrentTaglineFont;
  sCurrentTaglineFont = v5;

  v13 = *MEMORY[0x1E69DB648];
  v7 = sCurrentNameFont;
  [sCurrentNameFont _scaledValueForValue:16.0];
  v8 = [v7 fontWithSize:?];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v9];

  LODWORD(v8) = [(CNContactHeaderView *)self isAXSize];
  v10 = [(CNContactHeaderView *)self nameLabel];
  [v10 setAdjustsFontSizeToFitWidth:v8 ^ 1];

  if (v8)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 0.7;
  }

  v12 = [(CNContactHeaderView *)self nameLabel];
  [v12 setMinimumScaleFactor:v11];
}

- (unint64_t)avatarStyle
{
  v2 = [(CNContactHeaderView *)self photoView];
  v3 = [v2 avatarView];
  v4 = [v3 style];

  return v4;
}

- (void)setAvatarStyle:(unint64_t)a3
{
  v5 = [(CNContactHeaderView *)self photoView];
  v4 = [v5 avatarView];
  [v4 setStyle:a3];
}

- (void)setActionsWrapperView:(id)a3
{
  v5 = a3;
  if (self->_actionsWrapperView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_actionsWrapperView, a3);
    [(CNContactHeaderCollapsedView *)self addSubview:v6];
    [(CNContactHeaderCollapsedView *)self setNeedsUpdateConstraints];
    v5 = v6;
  }
}

- (void)updateConstraints
{
  v51.receiver = self;
  v51.super_class = CNContactHeaderCollapsedView;
  [(CNContactHeaderView *)&v51 updateConstraints];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CNContactHeaderView *)self activatedConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNContactHeaderView *)self photoView];
  v7 = [v6 centerXAnchor];
  v8 = [(CNContactHeaderCollapsedView *)self centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v5 addObject:v9];

  v10 = [(CNContactHeaderView *)self nameLabel];
  v11 = [v10 topAnchor];
  v12 = [(CNContactHeaderView *)self photoView];
  v13 = [v12 bottomAnchor];
  v14 = [(CNContactHeaderView *)self sizeAttributes];
  [v14 photoMinBottomMargin];
  v15 = [v11 constraintEqualToAnchor:v13 constant:?];
  [v5 addObject:v15];

  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = __49__CNContactHeaderCollapsedView_updateConstraints__block_invoke;
  v48 = &unk_1E74E2570;
  v16 = v5;
  v49 = v16;
  v50 = self;
  v17 = _Block_copy(&v45);
  v18 = [(CNContactHeaderView *)self nameLabel:v45];
  v17[2](v17, v18);

  v19 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];

  if (v19)
  {
    v20 = [(CNContactHeaderCollapsedView *)self leadingAnchor];
    v21 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    v22 = [v21 leadingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v16 addObject:v23];

    v24 = [(CNContactHeaderCollapsedView *)self trailingAnchor];
    v25 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    v26 = [v25 trailingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v16 addObject:v27];

    v28 = [(CNContactHeaderCollapsedView *)self bottomAnchor];
    v29 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    v30 = [v29 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v16 addObject:v31];

    v32 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    v33 = [v32 topAnchor];
    v34 = [(CNContactHeaderView *)self nameLabel];
    v35 = [v34 bottomAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [v16 addObject:v36];

    v37 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    LODWORD(v38) = 1148846080;
    [v37 setContentHuggingPriority:1 forAxis:v38];

    v39 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    LODWORD(v40) = 1148846080;
    [v39 setContentCompressionResistancePriority:1 forAxis:v40];
  }

  else
  {
    v39 = [(CNContactHeaderCollapsedView *)self bottomAnchor];
    v41 = [(CNContactHeaderView *)self nameLabel];
    v42 = [v41 bottomAnchor];
    v43 = [(CNContactHeaderView *)self sizeAttributes];
    [v43 headerBottomMargin];
    v44 = [v39 constraintEqualToAnchor:v42 constant:?];
    [v16 addObject:v44];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v16];
  [(CNContactHeaderView *)self setActivatedConstraints:v16];
}

void __49__CNContactHeaderCollapsedView_updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 centerXAnchor];
  v6 = [*(a1 + 40) centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [v4 leadingAnchor];
  v9 = [*(a1 + 40) layoutMarginsGuide];
  v10 = [v9 leadingAnchor];
  v18 = [v8 constraintEqualToAnchor:v10];

  LODWORD(v11) = 1148829696;
  [v18 setPriority:v11];
  [*(a1 + 32) addObject:v18];
  v12 = [v4 trailingAnchor];
  v13 = [*(a1 + 40) layoutMarginsGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];

  LODWORD(v16) = 1148829696;
  [v15 setPriority:v16];
  [*(a1 + 32) addObject:v15];
  LODWORD(v17) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v17];
}

- (double)height
{
  v3 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    [v6 frame];
    v5 = v7;
  }

  v8 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
  if (!v8)
  {
    v9 = [(CNContactHeaderView *)self sizeAttributes];
    [v9 headerBottomMargin];
    v4 = v10;
  }

  v15.receiver = self;
  v15.super_class = CNContactHeaderCollapsedView;
  [(CNContactHeaderView *)&v15 minHeight];
  v12 = v11;
  [(CNContactHeaderCollapsedView *)self labelsHeight];
  return v4 + v5 + v12 + v13;
}

- (void)didFinishUsing
{
  if (sCollapsedContactHeaderView == self)
  {
    sCollapsedContactHeaderView = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUpNameLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(CNContactHeaderView *)self setNameLabel:v4];

  v5 = [(CNContactHeaderView *)self nameLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(CNContactHeaderView *)self nameLabel];
  [v6 setTextAlignment:1];

  v7 = [(CNContactHeaderView *)self nameLabel];
  [v7 setNumberOfLines:2];

  v8 = [(CNContactHeaderView *)self nameLabel];
  [v8 _cnui_applyContactStyle];

  v9 = [(CNContactHeaderView *)self nameLabel];
  [(CNContactHeaderCollapsedView *)self addSubview:v9];
}

- (void)updateLabelColorsForImageColors:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([CNImageDerivedColorBackgroundUtilities backgroundColorsPreferWhiteForegroundText:a3])
  {
    +[CNUIColorRepository contactCardStaticAvatarHeaderDefaultTextColor];
  }

  else
  {
    +[CNUIColorRepository contactCardStaticAvatarHeaderDefaultDarkTextColor];
  }
  v4 = ;
  v9 = *MEMORY[0x1E69DB650];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v5];

  v6 = [(CNContactHeaderView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactHeaderView *)self delegate];
    [v8 headerView:self didSetNameLabelColor:v4];
  }
}

- (void)updateBackgroundWithGradientColors:(id)a3 horizontal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CNContactHeaderCollapsedView *)self assignImageColorsToAvatarBackgroundView:v6 horizontal:v4];
  [(CNContactHeaderCollapsedView *)self updateLabelColorsForImageColors:v6];
}

- (void)updateBackgroundWithPosterSnapshotImage:(id)a3
{
  v4 = [(CNContactHeaderView *)self contacts];
  v5 = [v4 firstObject];
  v6 = [v5 backgroundColors];
  v7 = [v6 contactPoster];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [(CNContactHeaderCollapsedView *)self assignImageColorsToAvatarBackgroundView:v7 horizontal:0];
    [(CNContactHeaderCollapsedView *)self updateLabelColorsForImageColors:v7];
  }
}

- (void)assignImageColorsToAvatarBackgroundView:(id)a3 horizontal:(BOOL)a4
{
  v4 = a4;
  v25 = a3;
  if ([v25 count] == 1)
  {
    v6 = [v25 firstObject];
    [(CNContactHeaderCollapsedView *)self setBackgroundColor:v6];

    v7 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    [v7 setColors:0];
  }

  else
  {
    [(CNContactHeaderCollapsedView *)self setBackgroundColor:0];
    [(CNContactHeaderCollapsedView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [v25 _cn_map:&__block_literal_global_820];
    v18 = [v17 _cn_reversed];
    v19 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    [v19 setColors:v18];

    v20 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    v21 = v20;
    if (v4)
    {
      [v20 setStartPoint:{0.0, 0.5}];

      v22 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
      v7 = v22;
      v23 = 1.0;
      v24 = 0.5;
    }

    else
    {
      [v20 setStartPoint:{0.5, 0.0}];

      v22 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
      v7 = v22;
      v23 = 0.5;
      v24 = 1.0;
    }

    [v22 setEndPoint:{v23, v24}];
  }
}

uint64_t __83__CNContactHeaderCollapsedView_assignImageColorsToAvatarBackgroundView_horizontal___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (void)setupBackgroundGradientLayer
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  gradientLayerContainerView = self->_gradientLayerContainerView;
  self->_gradientLayerContainerView = v4;

  [(UIView *)self->_gradientLayerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactHeaderCollapsedView *)self insertSubview:self->_gradientLayerContainerView atIndex:0];
  v8 = [MEMORY[0x1E6979380] layer];
  v6 = [(UIView *)self->_gradientLayerContainerView layer];
  [v6 addSublayer:v8];

  [(CNContactHeaderCollapsedView *)self setBackgroundGradientLayer:v8];
  v7 = [(CNContactHeaderView *)self backgroundGradientDefaultGrayColors];
  [(CNContactHeaderCollapsedView *)self assignImageColorsToAvatarBackgroundView:v7 horizontal:0];
  [(CNContactHeaderCollapsedView *)self updateLabelColorsForImageColors:v7];
}

- (void)setDefaultLabelColors
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = +[CNUIColorRepository contactCardStaticAvatarHeaderDefaultTextColor];
  v5 = *MEMORY[0x1E69DB650];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v4];
}

- (CNContactHeaderCollapsedView)initWithContact:(id)a3 frame:(CGRect)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 delegate:(id)a7
{
  v11.receiver = self;
  v11.super_class = CNContactHeaderCollapsedView;
  v7 = [(CNContactHeaderView *)&v11 initWithContact:a3 frame:0 shouldAllowTakePhotoAction:0 shouldAllowImageDrops:a5 showingNavBar:a6 monogramOnly:a7 delegate:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v8 = v7;
  if (v7)
  {
    [(CNContactHeaderCollapsedView *)v7 setUpNameLabel];
    [(CNContactHeaderCollapsedView *)v8 updateFontSizes];
    [(CNContactHeaderCollapsedView *)v8 setupBackgroundGradientLayer];
    [(CNContactHeaderCollapsedView *)v8 setDefaultLabelColors];
    v9 = v8;
  }

  return v8;
}

+ (id)collapsedContactHeaderViewWithContact:(id)a3 showingNavBar:(BOOL)a4 monogramOnly:(BOOL)a5 delegate:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [sCollapsedContactHeaderView delegate];
  if (v12)
  {

LABEL_4:
    v13 = [a1 alloc];
    v14 = [v13 initWithContact:v10 frame:v8 showingNavBar:v7 monogramOnly:v11 delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  if ([sCollapsedContactHeaderView showMonogramsOnly] != v7)
  {
    goto LABEL_4;
  }

  if (!sCollapsedContactHeaderView)
  {
    v17 = [a1 alloc];
    v18 = [v17 initWithContact:v10 frame:v8 showingNavBar:v7 monogramOnly:v11 delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v19 = sCollapsedContactHeaderView;
    sCollapsedContactHeaderView = v18;

    v14 = sCollapsedContactHeaderView;
    goto LABEL_5;
  }

  v15 = sCollapsedContactHeaderView;
  [v15 setDelegate:v11];
  [v15 prepareForReuse];
  [v15 updateForShowingNavBar:v8];
  [v15 updateWithNewContact:v10];
LABEL_6:

  return v15;
}

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = [v8 inProcessContactStore];

  v10 = +[CNUIContactsEnvironment currentEnvironment];
  v11 = v10;
  if (v5)
  {
    [v10 cachingMonogramRenderer];
  }

  else
  {
    [v10 cachingLikenessRenderer];
  }
  v12 = ;

  v13 = [CNContactPhotoView alloc];
  v14 = [(CNContactPhotoView *)v13 initWithFrame:v7 shouldAllowTakePhotoAction:1 threeDTouchEnabled:v9 contactStore:v6 allowsImageDrops:v12 imageRenderer:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v14;
}

+ (id)sizeAttributesShowingNavBar:(BOOL)a3
{
  if (a3)
  {
    +[CNContactHeaderViewSizeAttributes staticCollapsedDisplayAttributesWithNavBar];
  }

  else
  {
    +[CNContactHeaderViewSizeAttributes staticCollapsedDisplayAttributes];
  }
  v3 = ;

  return v3;
}

@end