@interface CNContactHeaderCollapsedView
+ (id)collapsedContactHeaderViewWithContact:(id)contact showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only;
+ (id)sizeAttributesShowingNavBar:(BOOL)bar;
- (CNContactHeaderCollapsedView)initWithContact:(id)contact frame:(CGRect)frame showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate;
- (double)height;
- (id)_headerStringForContacts:(id)contacts;
- (unint64_t)avatarStyle;
- (void)_updatePhotoView;
- (void)assignImageColorsToAvatarBackgroundView:(id)view horizontal:(BOOL)horizontal;
- (void)calculateLabelSizes;
- (void)calculateLabelSizesIfNeeded;
- (void)copy:(id)copy;
- (void)didFinishUsing;
- (void)disablePhotoTapGesture;
- (void)layoutSubviews;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)setActionsWrapperView:(id)view;
- (void)setAvatarStyle:(unint64_t)style;
- (void)setDefaultLabelColors;
- (void)setNameTextAttributes:(id)attributes;
- (void)setUpNameLabel;
- (void)setupBackgroundGradientLayer;
- (void)showLabelAndAvatar:(BOOL)avatar animated:(BOOL)animated;
- (void)updateBackgroundWithGradientColors:(id)colors horizontal:(BOOL)horizontal;
- (void)updateBackgroundWithPosterSnapshotImage:(id)image;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateLabelColorsForImageColors:(id)colors;
- (void)updateSizeDependentAttributes;
@end

@implementation CNContactHeaderCollapsedView

- (id)_headerStringForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    if ([(CNContactHeaderCollapsedView *)self usesBrandedCallFormat])
    {
      v5 = *MEMORY[0x1E6996530];
      firstObject = [contactsCopy firstObject];
      phoneNumbers = [firstObject phoneNumbers];
      LOBYTE(v5) = (*(v5 + 16))(v5, phoneNumbers);

      if ((v5 & 1) == 0)
      {
        firstObject2 = [contactsCopy firstObject];
        phoneNumbers2 = [firstObject2 phoneNumbers];
        firstObject3 = [phoneNumbers2 firstObject];

        value = [firstObject3 value];
        formattedStringValue = [value formattedStringValue];

        if ((*(*MEMORY[0x1E6996570] + 16))())
        {
          v13 = formattedStringValue;

          goto LABEL_12;
        }
      }
    }

    contactFormatter = [(CNContactHeaderCollapsedView *)self contactFormatter];
    firstObject4 = [contactsCopy firstObject];
    v14 = [contactFormatter stringFromContact:firstObject4];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    alternateName = [(CNContactHeaderCollapsedView *)self alternateName];

    v14 = alternateName;
  }

  v13 = v14;
LABEL_12:

  return v13;
}

- (void)copy:(id)copy
{
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  text = [nameLabel text];
  v6 = [text mutableCopy];

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setString:v6];
}

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v7 = [featureFlags isFeatureEnabled:29];

  if ((v7 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = CNContactHeaderCollapsedView;
    [(CNContactHeaderView *)&v13 reloadDataPreservingChanges:changesCopy];
    contacts = [(CNContactHeaderView *)self contacts];
    v9 = [(CNContactHeaderCollapsedView *)self _headerStringForContacts:contacts];

    if (v9)
    {
      nameLabel = [(CNContactHeaderView *)self nameLabel];
      text = [nameLabel text];

      if (!text)
      {
        [(CNContactHeaderCollapsedView *)self setNeedsUpdateConstraints];
      }
    }

    nameLabel2 = [(CNContactHeaderView *)self nameLabel];
    [nameLabel2 setAb_text:v9];

    [(CNContactHeaderCollapsedView *)self _updatePhotoView];
    [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
    [(CNContactHeaderCollapsedView *)self calculateLabelSizes];
    [(CNContactHeaderCollapsedView *)self setNeedsLayout];
  }
}

- (void)_updatePhotoView
{
  photoView = [(CNContactHeaderView *)self photoView];
  isHidden = [photoView isHidden];
  contacts = [(CNContactHeaderView *)self contacts];
  if ([contacts count] > 1)
  {
    [photoView setHidden:0];
  }

  else
  {
    contacts2 = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts2 firstObject];
    if ([firstObject imageDataAvailable])
    {
      v7 = 0;
    }

    else
    {
      v7 = [(CNContactHeaderView *)self alwaysShowsMonogram]^ 1;
    }

    [photoView setHidden:v7];
  }

  if (isHidden != [photoView isHidden])
  {
    [(CNContactHeaderCollapsedView *)self setNeedsUpdateConstraints];
  }
}

- (void)setNameTextAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = CNContactHeaderCollapsedView;
  attributesCopy = attributes;
  [(CNContactHeaderView *)&v6 setNameTextAttributes:attributesCopy];
  v5 = [(CNContactHeaderView *)self nameLabel:v6.receiver];
  [v5 setAb_textAttributes:attributesCopy];
}

- (void)updateSizeDependentAttributes
{
  [(CNContactHeaderCollapsedView *)self bounds];
  if (v3 > 0.0)
  {
    v4 = 0.0;
    if ([(CNContactHeaderView *)self shouldShowBelowNavigationTitle])
    {
      sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
      [sizeAttributes minNavbarTitleOffset];
      v4 = v6;
    }

    [(CNContactHeaderView *)self safeAreaPhotoOffset];
    v8 = v4 + v7;
    sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes2 photoMinTopMargin];
    v10 = v8 + v9;
    photoTopConstraint = [(CNContactHeaderView *)self photoTopConstraint];
    [photoTopConstraint setConstant:v10];
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
  backgroundGradientLayer = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
  [backgroundGradientLayer setFrame:{v4, v6, v8, v10}];
}

- (void)calculateLabelSizes
{
  if ([(CNContactHeaderView *)self needsLabelSizeCalculation])
  {
    [(CNContactHeaderCollapsedView *)self frame];
    v4 = v3;
    if (v3 == 0.0)
    {
      superview = [(CNContactHeaderCollapsedView *)self superview];

      if (superview)
      {
        superview2 = [(CNContactHeaderCollapsedView *)self superview];
        [superview2 frame];
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
      nameLabel = [(CNContactHeaderView *)self nameLabel];
      [nameLabel sizeThatFits:{v11, 1000.0}];
      v14 = v13;

      _screen = [(CNContactHeaderCollapsedView *)self _screen];
      [_screen scale];
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
      delegate = [(CNContactHeaderView *)self delegate];
      [delegate headerViewDidUpdateLabelSizes];
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
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView disablePhotoTapGesture];
}

- (void)showLabelAndAvatar:(BOOL)avatar animated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CNContactHeaderCollapsedView_showLabelAndAvatar_animated___block_invoke;
  aBlock[3] = &unk_1E74E4768;
  avatarCopy = avatar;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (animatedCopy)
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
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [nameLabel setAdjustsFontSizeToFitWidth:v8 ^ 1];

  if (v8)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 0.7;
  }

  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  [nameLabel2 setMinimumScaleFactor:v11];
}

- (unint64_t)avatarStyle
{
  photoView = [(CNContactHeaderView *)self photoView];
  avatarView = [photoView avatarView];
  style = [avatarView style];

  return style;
}

- (void)setAvatarStyle:(unint64_t)style
{
  photoView = [(CNContactHeaderView *)self photoView];
  avatarView = [photoView avatarView];
  [avatarView setStyle:style];
}

- (void)setActionsWrapperView:(id)view
{
  viewCopy = view;
  if (self->_actionsWrapperView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_actionsWrapperView, view);
    [(CNContactHeaderCollapsedView *)self addSubview:v6];
    [(CNContactHeaderCollapsedView *)self setNeedsUpdateConstraints];
    viewCopy = v6;
  }
}

- (void)updateConstraints
{
  v51.receiver = self;
  v51.super_class = CNContactHeaderCollapsedView;
  [(CNContactHeaderView *)&v51 updateConstraints];
  v3 = MEMORY[0x1E695DF70];
  activatedConstraints = [(CNContactHeaderView *)self activatedConstraints];
  v5 = [v3 arrayWithArray:activatedConstraints];

  photoView = [(CNContactHeaderView *)self photoView];
  centerXAnchor = [photoView centerXAnchor];
  centerXAnchor2 = [(CNContactHeaderCollapsedView *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v5 addObject:v9];

  nameLabel = [(CNContactHeaderView *)self nameLabel];
  topAnchor = [nameLabel topAnchor];
  photoView2 = [(CNContactHeaderView *)self photoView];
  bottomAnchor = [photoView2 bottomAnchor];
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes photoMinBottomMargin];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [v5 addObject:v15];

  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = __49__CNContactHeaderCollapsedView_updateConstraints__block_invoke;
  v48 = &unk_1E74E2570;
  v16 = v5;
  v49 = v16;
  selfCopy = self;
  v17 = _Block_copy(&v45);
  v18 = [(CNContactHeaderView *)self nameLabel:v45];
  v17[2](v17, v18);

  actionsWrapperView = [(CNContactHeaderCollapsedView *)self actionsWrapperView];

  if (actionsWrapperView)
  {
    leadingAnchor = [(CNContactHeaderCollapsedView *)self leadingAnchor];
    actionsWrapperView2 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    leadingAnchor2 = [actionsWrapperView2 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v16 addObject:v23];

    trailingAnchor = [(CNContactHeaderCollapsedView *)self trailingAnchor];
    actionsWrapperView3 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    trailingAnchor2 = [actionsWrapperView3 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v16 addObject:v27];

    bottomAnchor2 = [(CNContactHeaderCollapsedView *)self bottomAnchor];
    actionsWrapperView4 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    bottomAnchor3 = [actionsWrapperView4 bottomAnchor];
    v31 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v16 addObject:v31];

    actionsWrapperView5 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    topAnchor2 = [actionsWrapperView5 topAnchor];
    nameLabel2 = [(CNContactHeaderView *)self nameLabel];
    bottomAnchor4 = [nameLabel2 bottomAnchor];
    v36 = [topAnchor2 constraintEqualToAnchor:bottomAnchor4];
    [v16 addObject:v36];

    actionsWrapperView6 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    LODWORD(v38) = 1148846080;
    [actionsWrapperView6 setContentHuggingPriority:1 forAxis:v38];

    actionsWrapperView7 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    LODWORD(v40) = 1148846080;
    [actionsWrapperView7 setContentCompressionResistancePriority:1 forAxis:v40];
  }

  else
  {
    actionsWrapperView7 = [(CNContactHeaderCollapsedView *)self bottomAnchor];
    nameLabel3 = [(CNContactHeaderView *)self nameLabel];
    bottomAnchor5 = [nameLabel3 bottomAnchor];
    sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes2 headerBottomMargin];
    v44 = [actionsWrapperView7 constraintEqualToAnchor:bottomAnchor5 constant:?];
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
  actionsWrapperView = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
  v4 = 0.0;
  v5 = 0.0;
  if (actionsWrapperView)
  {
    actionsWrapperView2 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
    [actionsWrapperView2 frame];
    v5 = v7;
  }

  actionsWrapperView3 = [(CNContactHeaderCollapsedView *)self actionsWrapperView];
  if (!actionsWrapperView3)
  {
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes headerBottomMargin];
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

  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  [nameLabel2 setTextAlignment:1];

  nameLabel3 = [(CNContactHeaderView *)self nameLabel];
  [nameLabel3 setNumberOfLines:2];

  nameLabel4 = [(CNContactHeaderView *)self nameLabel];
  [nameLabel4 _cnui_applyContactStyle];

  nameLabel5 = [(CNContactHeaderView *)self nameLabel];
  [(CNContactHeaderCollapsedView *)self addSubview:nameLabel5];
}

- (void)updateLabelColorsForImageColors:(id)colors
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([CNImageDerivedColorBackgroundUtilities backgroundColorsPreferWhiteForegroundText:colors])
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

  delegate = [(CNContactHeaderView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNContactHeaderView *)self delegate];
    [delegate2 headerView:self didSetNameLabelColor:v4];
  }
}

- (void)updateBackgroundWithGradientColors:(id)colors horizontal:(BOOL)horizontal
{
  horizontalCopy = horizontal;
  colorsCopy = colors;
  [(CNContactHeaderCollapsedView *)self assignImageColorsToAvatarBackgroundView:colorsCopy horizontal:horizontalCopy];
  [(CNContactHeaderCollapsedView *)self updateLabelColorsForImageColors:colorsCopy];
}

- (void)updateBackgroundWithPosterSnapshotImage:(id)image
{
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject = [contacts firstObject];
  backgroundColors = [firstObject backgroundColors];
  contactPoster = [backgroundColors contactPoster];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [(CNContactHeaderCollapsedView *)self assignImageColorsToAvatarBackgroundView:contactPoster horizontal:0];
    [(CNContactHeaderCollapsedView *)self updateLabelColorsForImageColors:contactPoster];
  }
}

- (void)assignImageColorsToAvatarBackgroundView:(id)view horizontal:(BOOL)horizontal
{
  horizontalCopy = horizontal;
  viewCopy = view;
  if ([viewCopy count] == 1)
  {
    firstObject = [viewCopy firstObject];
    [(CNContactHeaderCollapsedView *)self setBackgroundColor:firstObject];

    backgroundGradientLayer = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    [backgroundGradientLayer setColors:0];
  }

  else
  {
    [(CNContactHeaderCollapsedView *)self setBackgroundColor:0];
    [(CNContactHeaderCollapsedView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    backgroundGradientLayer2 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    [backgroundGradientLayer2 setFrame:{v9, v11, v13, v15}];

    v17 = [viewCopy _cn_map:&__block_literal_global_820];
    _cn_reversed = [v17 _cn_reversed];
    backgroundGradientLayer3 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    [backgroundGradientLayer3 setColors:_cn_reversed];

    backgroundGradientLayer4 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
    v21 = backgroundGradientLayer4;
    if (horizontalCopy)
    {
      [backgroundGradientLayer4 setStartPoint:{0.0, 0.5}];

      backgroundGradientLayer5 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
      backgroundGradientLayer = backgroundGradientLayer5;
      v23 = 1.0;
      v24 = 0.5;
    }

    else
    {
      [backgroundGradientLayer4 setStartPoint:{0.5, 0.0}];

      backgroundGradientLayer5 = [(CNContactHeaderCollapsedView *)self backgroundGradientLayer];
      backgroundGradientLayer = backgroundGradientLayer5;
      v23 = 0.5;
      v24 = 1.0;
    }

    [backgroundGradientLayer5 setEndPoint:{v23, v24}];
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
  layer = [MEMORY[0x1E6979380] layer];
  layer2 = [(UIView *)self->_gradientLayerContainerView layer];
  [layer2 addSublayer:layer];

  [(CNContactHeaderCollapsedView *)self setBackgroundGradientLayer:layer];
  backgroundGradientDefaultGrayColors = [(CNContactHeaderView *)self backgroundGradientDefaultGrayColors];
  [(CNContactHeaderCollapsedView *)self assignImageColorsToAvatarBackgroundView:backgroundGradientDefaultGrayColors horizontal:0];
  [(CNContactHeaderCollapsedView *)self updateLabelColorsForImageColors:backgroundGradientDefaultGrayColors];
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

- (CNContactHeaderCollapsedView)initWithContact:(id)contact frame:(CGRect)frame showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = CNContactHeaderCollapsedView;
  v7 = [(CNContactHeaderView *)&v11 initWithContact:contact frame:0 shouldAllowTakePhotoAction:0 shouldAllowImageDrops:bar showingNavBar:only monogramOnly:delegate delegate:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

+ (id)collapsedContactHeaderViewWithContact:(id)contact showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate
{
  onlyCopy = only;
  barCopy = bar;
  contactCopy = contact;
  delegateCopy = delegate;
  delegate = [sCollapsedContactHeaderView delegate];
  if (delegate)
  {

LABEL_4:
    v13 = [self alloc];
    v14 = [v13 initWithContact:contactCopy frame:barCopy showingNavBar:onlyCopy monogramOnly:delegateCopy delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  if ([sCollapsedContactHeaderView showMonogramsOnly] != onlyCopy)
  {
    goto LABEL_4;
  }

  if (!sCollapsedContactHeaderView)
  {
    v17 = [self alloc];
    v18 = [v17 initWithContact:contactCopy frame:barCopy showingNavBar:onlyCopy monogramOnly:delegateCopy delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v19 = sCollapsedContactHeaderView;
    sCollapsedContactHeaderView = v18;

    v14 = sCollapsedContactHeaderView;
    goto LABEL_5;
  }

  v15 = sCollapsedContactHeaderView;
  [v15 setDelegate:delegateCopy];
  [v15 prepareForReuse];
  [v15 updateForShowingNavBar:barCopy];
  [v15 updateWithNewContact:contactCopy];
LABEL_6:

  return v15;
}

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only
{
  onlyCopy = only;
  dropsCopy = drops;
  actionCopy = action;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  inProcessContactStore = [v8 inProcessContactStore];

  v10 = +[CNUIContactsEnvironment currentEnvironment];
  v11 = v10;
  if (onlyCopy)
  {
    [v10 cachingMonogramRenderer];
  }

  else
  {
    [v10 cachingLikenessRenderer];
  }
  v12 = ;

  v13 = [CNContactPhotoView alloc];
  v14 = [(CNContactPhotoView *)v13 initWithFrame:actionCopy shouldAllowTakePhotoAction:1 threeDTouchEnabled:inProcessContactStore contactStore:dropsCopy allowsImageDrops:v12 imageRenderer:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v14;
}

+ (id)sizeAttributesShowingNavBar:(BOOL)bar
{
  if (bar)
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