@interface ASCLockupContentView
+ (BOOL)isOfferButtonFixedHeightForSize:(id)size;
+ (BOOL)offerButtonShouldTopAlignForSize:(id)size;
- (ASCLockupContentView)initWithCoder:(id)coder;
- (ASCLockupContentView)initWithFrame:(CGRect)frame;
- (BOOL)isMiniLockup;
- (BOOL)isOfferButtonOnlyLockup;
- (BOOL)isSmallOfferButtonOnlyLockup;
- (BOOL)shouldHideHeading;
- (BOOL)shouldHideOfferStatus;
- (BOOL)shouldHideSubtitle;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredIconSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (UIColor)loadingColor;
- (UILabel)headingLabel;
- (UILabel)offerStatusLabel;
- (double)minimumLockupHeight;
- (id)defaultOfferTheme;
- (id)makeLayout;
- (id)saveOfferState;
- (void)addOfferTarget:(id)target action:(SEL)action;
- (void)beginOfferModalStateWithCancelBlock:(id)block;
- (void)endOfferModalState;
- (void)headingLabel;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)offerButton:(id)button willTransitionToMetadata:(id)metadata usingAnimator:(id)animator;
- (void)offerStatusLabel;
- (void)removeOfferTarget:(id)target action:(SEL)action;
- (void)setBadge:(id)badge;
- (void)setDataChanged;
- (void)setDisplayContext:(id)context;
- (void)setHeading:(id)heading;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIconImage:(id)image withDecoration:(id)decoration;
- (void)setLoading:(BOOL)loading;
- (void)setLoadingColor:(id)color;
- (void)setLockupSize:(id)size;
- (void)setLockupTheme:(id)theme;
- (void)setOfferEnabled:(BOOL)enabled;
- (void)setOfferInteractive:(BOOL)interactive;
- (void)setOfferMetadata:(id)metadata;
- (void)setOfferStatus:(id)status;
- (void)setOfferTheme:(id)theme;
- (void)setPrefersRightToLeftLayout:(BOOL)layout;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)updateLockupTheme;
- (void)updateOfferLayoutPropertiesForSize:(void *)size;
- (void)updateOfferTheme;
- (void)updateViewsVisibility;
@end

@implementation ASCLockupContentView

- (BOOL)isOfferButtonOnlyLockup
{
  lockupSize = [(ASCLockupContentView *)self lockupSize];
  if (ASCLockupViewSizeIsSmallOfferButton(lockupSize, v4))
  {
    IsMediumOfferButton = 1;
  }

  else
  {
    lockupSize2 = [(ASCLockupContentView *)self lockupSize];
    IsMediumOfferButton = ASCLockupViewSizeIsMediumOfferButton(lockupSize2, v7);
  }

  return IsMediumOfferButton;
}

- (BOOL)isSmallOfferButtonOnlyLockup
{
  lockupSize = [(ASCLockupContentView *)self lockupSize];
  v3 = [ASCLockupContentView isSmallOfferButtonLockupForSize:lockupSize];

  return v3;
}

- (BOOL)isMiniLockup
{
  lockupSize = [(ASCLockupContentView *)self lockupSize];
  IsMini = ASCLockupViewSizeIsMini(lockupSize, v3);

  return IsMini;
}

+ (BOOL)isOfferButtonFixedHeightForSize:(id)size
{
  sizeCopy = size;
  if (ASCLockupViewSizeIsLargeAppShowcase(sizeCopy, v4))
  {
    IsLargeAppAd = 1;
  }

  else
  {
    IsLargeAppAd = ASCLockupViewSizeIsLargeAppAd(sizeCopy, v5);
  }

  return IsLargeAppAd;
}

+ (BOOL)offerButtonShouldTopAlignForSize:(id)size
{
  sizeCopy = size;
  if (([self isOfferButtonFixedHeightForSize:sizeCopy] & 1) != 0 || (objc_msgSend(self, "offerButtonTopPaddingForSize:", sizeCopy), v6 > 0.0))
  {
    IsMediumOfferButton = 1;
  }

  else
  {
    IsMediumOfferButton = ASCLockupViewSizeIsMediumOfferButton(sizeCopy, v5);
  }

  return IsMediumOfferButton;
}

- (BOOL)shouldHideHeading
{
  isOfferButtonOnlyLockup = [(ASCLockupContentView *)self isOfferButtonOnlyLockup];
  if (!isOfferButtonOnlyLockup)
  {
    [(ASCLockupContentView *)self isMiniLockup];
  }

  return isOfferButtonOnlyLockup;
}

- (BOOL)shouldHideSubtitle
{
  if ([(ASCLockupContentView *)self isOfferButtonOnlyLockup])
  {
    return 1;
  }

  if ([(ASCLockupContentView *)self isMiniLockup])
  {
    headingLabelIfLoaded = [(ASCLockupContentView *)self headingLabelIfLoaded];
    text = [headingLabelIfLoaded text];
    v6 = [text length];
    v3 = v6 != 0;
    if (!v6)
    {
      [(ASCLockupContentView *)self isMiniLockup];
    }
  }

  else
  {
    [(ASCLockupContentView *)self isMiniLockup];
    return 0;
  }

  return v3;
}

- (BOOL)shouldHideOfferStatus
{
  if ([(ASCLockupContentView *)self isOfferButtonOnlyLockup])
  {
    return 1;
  }

  return [(ASCLockupContentView *)self isMiniLockup];
}

- (ASCLockupContentView)initWithFrame:(CGRect)frame
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = ASCLockupContentView;
  v3 = [(ASCLockupContentView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_lockupSize, @"small");
    v6 = [ASCArtworkView alloc];
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [(ASCArtworkView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], v8, v9, v10];
    iconArtworkView = v4->_iconArtworkView;
    v4->_iconArtworkView = v11;

    v13 = [[ASCSkeletonLabel alloc] initWithFrame:v7, v8, v9, v10];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v13;

    v15 = [[ASCSkeletonLabel alloc] initWithFrame:v7, v8, v9, v10];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v15;

    v17 = [[ASCOfferButton alloc] initWithFrame:v7, v8, v9, v10];
    offerButton = v4->_offerButton;
    v4->_offerButton = v17;

    [(ASCLockupContentView *)v4 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCLockupContentView *)v4 setInsetsLayoutMarginsFromSafeArea:0];
    [(ASCLockupContentView *)v4 addSubview:v4->_iconArtworkView];
    [(ASCLockupContentView *)v4 addSubview:v4->_titleLabel];
    [(ASCLockupContentView *)v4 addSubview:v4->_subtitleLabel];
    [(ASCLockupContentView *)v4 updateLockupTheme];
    [(ASCOfferButton *)v4->_offerButton setDelegate:v4];
    [(ASCLockupContentView *)v4 addSubview:v4->_offerButton];
    [(ASCLockupContentView *)v4 updateOfferLayoutPropertiesForSize:?];
    [(ASCLockupContentView *)v4 updateOfferTheme];
    v19 = ASCAXIdentifierWithSuffix(@"Lockup.icon");
    [(ASCArtworkView *)v4->_iconArtworkView setAccessibilityIdentifier:v19];

    v20 = ASCAXIdentifierWithSuffix(@"Lockup.title");
    [(ASCSkeletonLabel *)v4->_titleLabel setAccessibilityIdentifier:v20];

    v21 = ASCAXIdentifierWithSuffix(@"Lockup.subtitle");
    [(ASCSkeletonLabel *)v4->_subtitleLabel setAccessibilityIdentifier:v21];

    v22 = objc_opt_self();
    v26[0] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v24 = [(ASCLockupContentView *)v4 registerForTraitChanges:v23 withAction:sel_onPreferredContentSizeCategoryChange];
  }

  return v4;
}

- (ASCLockupContentView)initWithCoder:(id)coder
{
  [(ASCLockupContentView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UILabel)offerStatusLabel
{
  offerStatusLabelIfLoaded = self->_offerStatusLabelIfLoaded;
  if (offerStatusLabelIfLoaded)
  {
    v3 = offerStatusLabelIfLoaded;
  }

  else
  {
    [(ASCLockupContentView *)self offerStatusLabel];
    v3 = v5;
  }

  return v3;
}

- (UILabel)headingLabel
{
  headingLabelIfLoaded = self->_headingLabelIfLoaded;
  if (headingLabelIfLoaded)
  {
    v3 = headingLabelIfLoaded;
  }

  else
  {
    [(ASCLockupContentView *)self headingLabel];
    v3 = v5;
  }

  return v3;
}

- (CGSize)preferredIconSize
{
  iconArtworkView = [(ASCLockupContentView *)self iconArtworkView];
  [iconArtworkView preferredSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setLockupSize:(id)size
{
  obj = size;
  v4 = self->_lockupSize;
  v5 = v4;
  if (obj && v4)
  {
    v6 = [(NSString *)v4 isEqual:obj];

    v7 = obj;
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v7 = obj;
  if (v5 != obj)
  {
LABEL_4:
    [(ASCLockupContentView *)v7 setLockupSize:self];
    v7 = obj;
  }

LABEL_6:
}

- (UIColor)loadingColor
{
  titleLabel = [(ASCLockupContentView *)self titleLabel];
  skeletonColor = [titleLabel skeletonColor];

  return skeletonColor;
}

- (void)setLoadingColor:(id)color
{
  colorCopy = color;
  v12 = colorCopy;
  if (colorCopy)
  {
    v5 = colorCopy;
    iconArtworkView = [(ASCLockupContentView *)self iconArtworkView];
    [iconArtworkView setPlaceholderColor:v5];

    v7 = v5;
    v8 = v7;
  }

  else
  {
    v8 = +[ASCSemanticColor artworkPlaceholder];
    iconArtworkView2 = [(ASCLockupContentView *)self iconArtworkView];
    [iconArtworkView2 setPlaceholderColor:v8];

    v7 = +[ASCSemanticColor loading];
  }

  titleLabel = [(ASCLockupContentView *)self titleLabel];
  [titleLabel setSkeletonColor:v7];

  subtitleLabel = [(ASCLockupContentView *)self subtitleLabel];
  [subtitleLabel setSkeletonColor:v7];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = ASCLockupContentView;
  [(ASCLockupContentView *)&v6 setHighlighted:?];
  iconArtworkView = [(ASCLockupContentView *)self iconArtworkView];
  [iconArtworkView setHighlighted:highlightedCopy];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v11.receiver = self;
  v11.super_class = ASCLockupContentView;
  [(ASCLockupContentView *)&v11 setSemanticContentAttribute:?];
  headingLabelIfLoaded = [(ASCLockupContentView *)self headingLabelIfLoaded];
  [headingLabelIfLoaded setSemanticContentAttribute:attribute];

  iconArtworkView = [(ASCLockupContentView *)self iconArtworkView];
  [iconArtworkView setSemanticContentAttribute:attribute];

  titleLabel = [(ASCLockupContentView *)self titleLabel];
  [titleLabel setSemanticContentAttribute:attribute];

  subtitleLabel = [(ASCLockupContentView *)self subtitleLabel];
  [subtitleLabel setSemanticContentAttribute:attribute];

  offerStatusLabelIfLoaded = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
  [offerStatusLabelIfLoaded setSemanticContentAttribute:attribute];

  offerButton = [(ASCLockupContentView *)self offerButton];
  [offerButton setSemanticContentAttribute:attribute];
}

- (id)makeLayout
{
  lockupSize = [(ASCLockupContentView *)self lockupSize];
  traitCollection = [(ASCLockupContentView *)self traitCollection];
  iconArtworkView = [(ASCLockupContentView *)self iconArtworkView];
  headingLabelIfLoaded = [(ASCLockupContentView *)self headingLabelIfLoaded];
  titleLabel = [(ASCLockupContentView *)self titleLabel];
  subtitleLabel = [(ASCLockupContentView *)self subtitleLabel];
  offerStatusLabelIfLoaded = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
  offerButton = [(ASCLockupContentView *)self offerButton];
  badgeView = [(ASCLockupContentView *)self badgeView];
  v12 = [__ASCLayoutProxy lockupLayoutOfSize:lockupSize traitCollection:traitCollection artworkView:iconArtworkView headingText:headingLabelIfLoaded titleText:titleLabel subtitleText:subtitleLabel offerText:offerStatusLabelIfLoaded offerButton:offerButton badge:badgeView];

  return v12;
}

- (double)minimumLockupHeight
{
  iconArtworkView = [(ASCLockupContentView *)self iconArtworkView];
  [iconArtworkView preferredSize];
  v4 = v3;

  return v4;
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = ASCLockupContentView;
  [(ASCLockupContentView *)&v4 invalidateIntrinsicContentSize];
  if ([(ASCLockupContentView *)self translatesAutoresizingMaskIntoConstraints])
  {
    superview = [(ASCLockupContentView *)self superview];
    [superview invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCLockupContentView *)self sizeThatFits:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(ASCLockupContentView *)self layoutMargins];
  v10 = v6;
  v11 = v8;
  if (width - v7 - v9 >= 0.0)
  {
    v12 = width - v7 - v9;
  }

  else
  {
    v12 = 0.0;
  }

  if (height - v6 - v8 >= 0.0)
  {
    v13 = height - v6 - v8;
  }

  else
  {
    v13 = 0.0;
  }

  makeLayout = [(ASCLockupContentView *)self makeLayout];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout measuredSizeFittingSize:asc_layoutTraitEnvironment inTraitEnvironment:{v12, v13}];
  v17 = v16;
  v19 = v18;

  if ([(ASCLockupContentView *)self isSmallOfferButtonOnlyLockup])
  {
    offerButton = [(ASCLockupContentView *)self offerButton];
    v21 = [offerButton size];
    [__ASCLayoutProxy offerButtonRegularWidthForSize:v21];
    width = v22;

    if (width < v17)
    {
      width = v17;
    }
  }

  v23 = v10 + v11 + v19;
  [(ASCLockupContentView *)self minimumLockupHeight];
  if (v23 < v24)
  {
    [(ASCLockupContentView *)self minimumLockupHeight];
    v23 = v25;
  }

  v26 = width;
  v27 = v23;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = ASCLockupContentView;
  [(ASCLockupContentView *)&v21 layoutSubviews];
  [(ASCLockupContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(ASCLockupContentView *)self layoutMargins];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  makeLayout = [(ASCLockupContentView *)self makeLayout];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout placeChildrenRelativeToRect:asc_layoutTraitEnvironment inTraitEnvironment:{v12, v14, v16, v18}];
}

- (void)addOfferTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  offerButton = [(ASCLockupContentView *)self offerButton];
  [offerButton addTarget:targetCopy action:action forControlEvents:64];
}

- (void)removeOfferTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  offerButton = [(ASCLockupContentView *)self offerButton];
  [offerButton removeTarget:targetCopy action:action forControlEvents:64];
}

- (void)setLockupTheme:(id)theme
{
  themeCopy = theme;
  v5 = self->_lockupTheme;
  v6 = v5;
  if (themeCopy && v5)
  {
    v7 = [(ASCLockupTheme *)v5 isEqual:themeCopy];

    v8 = themeCopy;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v8 = themeCopy;
  if (v6 != themeCopy)
  {
LABEL_4:
    objc_storeStrong(&self->_lockupTheme, theme);
    [(ASCLockupContentView *)self updateLockupTheme];
    v8 = themeCopy;
  }

LABEL_6:
}

- (void)setDisplayContext:(id)context
{
  contextCopy = context;
  displayContext = self->_displayContext;
  if (contextCopy && displayContext)
  {
    v9 = contextCopy;
    v6 = [(ASCLockupDisplayContext *)displayContext isEqual:contextCopy];
    contextCopy = v9;
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (displayContext != contextCopy)
  {
LABEL_4:
    v7 = [(ASCLockupDisplayContext *)contextCopy copy];
    v8 = self->_displayContext;
    self->_displayContext = v7;

    [(ASCLockupContentView *)self setDataChanged];
  }

LABEL_6:

  MEMORY[0x2821F96F8]();
}

- (id)saveOfferState
{
  v3 = [ASCOfferPresenterViewState alloc];
  offerButton = [(ASCLockupContentView *)self offerButton];
  metadata = [offerButton metadata];
  offerTheme = [(ASCLockupContentView *)self offerTheme];
  v7 = [(ASCOfferPresenterViewState *)v3 initWithMetadata:metadata theme:offerTheme];

  return v7;
}

- (void)setOfferTheme:(id)theme
{
  themeCopy = theme;
  offerTheme = self->_offerTheme;
  if (themeCopy && offerTheme)
  {
    v9 = themeCopy;
    v6 = [(ASCOfferTheme *)offerTheme isEqual:themeCopy];
    themeCopy = v9;
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (offerTheme != themeCopy)
  {
LABEL_4:
    v7 = [(ASCOfferTheme *)themeCopy copy];
    v8 = self->_offerTheme;
    self->_offerTheme = v7;

    [(ASCLockupContentView *)self updateOfferTheme];
  }

LABEL_6:

  MEMORY[0x2821F96F8]();
}

- (void)setOfferEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  offerButton = [(ASCLockupContentView *)self offerButton];
  [offerButton setEnabled:enabledCopy];
}

- (void)setOfferInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  offerButton = [(ASCLockupContentView *)self offerButton];
  [offerButton setUserInteractionEnabled:interactiveCopy];
}

- (void)beginOfferModalStateWithCancelBlock:(id)block
{
  blockCopy = block;
  offerButton = [(ASCLockupContentView *)self offerButton];
  [offerButton beginModalStateWithCancelBlock:blockCopy];
}

- (void)endOfferModalState
{
  offerButton = [(ASCLockupContentView *)self offerButton];
  [offerButton endModalState];
}

- (void)offerButton:(id)button willTransitionToMetadata:(id)metadata usingAnimator:(id)animator
{
  buttonCopy = button;
  metadataCopy = metadata;
  animatorCopy = animator;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ASCLockupContentView_offerButton_willTransitionToMetadata_usingAnimator___block_invoke;
  v11[3] = &unk_2781CBD28;
  objc_copyWeak(&v12, &location);
  [animatorCopy addAnimations:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __75__ASCLockupContentView_offerButton_willTransitionToMetadata_usingAnimator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 layoutIfNeeded];
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  headingLabelIfLoaded = [(ASCLockupContentView *)self headingLabelIfLoaded];
  text = [headingLabelIfLoaded text];
  [(ASCDescriber *)v3 addObject:text withName:@"heading"];

  titleLabel = [(ASCLockupContentView *)self titleLabel];
  text2 = [titleLabel text];
  [(ASCDescriber *)v3 addObject:text2 withName:@"title"];

  subtitleLabel = [(ASCLockupContentView *)self subtitleLabel];
  text3 = [subtitleLabel text];
  [(ASCDescriber *)v3 addObject:text3 withName:@"subtitle"];

  lockupTheme = [(ASCLockupContentView *)self lockupTheme];
  [(ASCDescriber *)v3 addObject:lockupTheme withName:@"lockupTheme"];

  displayContext = [(ASCLockupContentView *)self displayContext];
  [(ASCDescriber *)v3 addObject:displayContext withName:@"displayContext"];

  offerButton = [(ASCLockupContentView *)self offerButton];
  v13 = [offerButton size];
  [(ASCDescriber *)v3 addObject:v13 withName:@"offerSize"];

  offerButton2 = [(ASCLockupContentView *)self offerButton];
  theme = [offerButton2 theme];
  [(ASCDescriber *)v3 addObject:theme withName:@"offerTheme"];

  offerButton3 = [(ASCLockupContentView *)self offerButton];
  metadata = [offerButton3 metadata];
  [(ASCDescriber *)v3 addObject:metadata withName:@"offerMetadata"];

  offerStatusLabelIfLoaded = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
  text4 = [offerStatusLabelIfLoaded text];
  [(ASCDescriber *)v3 addObject:text4 withName:@"offerStatus"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (void)updateLockupTheme
{
  if (self)
  {
    +[ASCDefaultLockupTheme sharedTheme];
    objc_claimAutoreleasedReturnValue();
    traitCollection = [OUTLINED_FUNCTION_0_3() traitCollection];
    [v1 applyToLockupContentView:self compatibleWithTraitCollection:traitCollection];

    lockupTheme = [self lockupTheme];
    traitCollection2 = [self traitCollection];
    [lockupTheme applyToLockupContentView:self compatibleWithTraitCollection:traitCollection2];
  }
}

- (void)updateOfferLayoutPropertiesForSize:(void *)size
{
  if (size)
  {
    v4 = a2;
    ASCLockupViewSizeGetOfferButtonSize(v4);
    objc_claimAutoreleasedReturnValue();
    offerButton = [OUTLINED_FUNCTION_4() offerButton];
    [offerButton setSize:v2];

    ASCLockupViewSizeOfferButtonSubtitlePosition(v4);
    offerButton2 = [OUTLINED_FUNCTION_4() offerButton];
    [offerButton2 setSubtitlePosition:v2];

    [OUTLINED_FUNCTION_5() isOfferButtonFixedHeightForSize:?];
    offerButton3 = [OUTLINED_FUNCTION_4() offerButton];
    [offerButton3 setFixedHeight:v2];

    [OUTLINED_FUNCTION_5() offerButtonShouldTopAlignForSize:?];
    offerButton4 = [OUTLINED_FUNCTION_4() offerButton];
    [offerButton4 setShouldTopAlign:v2];

    [OUTLINED_FUNCTION_5() offerButtonTopPaddingForSize:?];
    v10 = v9;
    offerButton5 = [size offerButton];
    [offerButton5 setTopPadding:v10];

    v12 = [OUTLINED_FUNCTION_5() offerButtonShouldExpandBackgroundForSize:?];
    offerButton6 = [size offerButton];
    [offerButton6 setShouldExpandBackground:v12];
  }
}

- (void)updateOfferTheme
{
  if (!self)
  {
    return;
  }

  offerTheme = [self offerTheme];

  if (!offerTheme)
  {
    titleLabel = [self titleLabel];
    [titleLabel skeleton];
    if (objc_claimAutoreleasedReturnValue())
    {
      subtitleLabel = [OUTLINED_FUNCTION_4() subtitleLabel];
      skeleton = [subtitleLabel skeleton];

      if (skeleton)
      {
        defaultOfferTheme = +[ASCOfferTheme loadingTheme];
        goto LABEL_7;
      }
    }

    else
    {
    }

    defaultOfferTheme = [(ASCLockupContentView *)self defaultOfferTheme];
    goto LABEL_7;
  }

  defaultOfferTheme = [self offerTheme];
LABEL_7:
  v9 = defaultOfferTheme;
  offerButton = [self offerButton];
  [offerButton setTheme:v9];
}

- (void)setDataChanged
{
  if (result)
  {
    v1 = result;
    [(ASCLockupContentView *)result updateViewsVisibility];
    [(ASCLockupContentView *)v1 updateLockupTheme];
    [v1 setNeedsLayout];

    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

- (void)updateViewsVisibility
{
  if (self)
  {
    [self shouldHideIconArtwork];
    iconArtworkView = [OUTLINED_FUNCTION_0_3() iconArtworkView];
    OUTLINED_FUNCTION_2_0(iconArtworkView, v5);

    [self shouldHideTitle];
    titleLabel = [OUTLINED_FUNCTION_0_3() titleLabel];
    OUTLINED_FUNCTION_2_0(titleLabel, v7);

    [self shouldHideSubtitle];
    subtitleLabel = [OUTLINED_FUNCTION_0_3() subtitleLabel];
    OUTLINED_FUNCTION_2_0(subtitleLabel, v9);

    [self shouldHideHeading];
    headingLabelIfLoaded = [OUTLINED_FUNCTION_0_3() headingLabelIfLoaded];
    OUTLINED_FUNCTION_2_0(headingLabelIfLoaded, v11);

    [self shouldHideOfferStatus];
    offerStatusLabelIfLoaded = [OUTLINED_FUNCTION_0_3() offerStatusLabelIfLoaded];
    [offerStatusLabelIfLoaded setHidden:v1];
  }
}

- (id)defaultOfferTheme
{
  selfCopy = self;
  if (self)
  {
    offerButton = [self offerButton];
    metadata = [offerButton metadata];
    v4 = ASCOfferMetadataGetOfferTheme(metadata);
    v5 = v4;
    if (v4)
    {
      selfCopy = v4;
    }

    else
    {
      lockupSize = [selfCopy lockupSize];
      selfCopy = ASCLockupViewSizeGetOfferTheme(lockupSize);
    }
  }

  return selfCopy;
}

- (void)setIconImage:(id)image withDecoration:(id)decoration
{
  decorationCopy = decoration;
  imageCopy = image;
  iconArtworkView = [(ASCLockupContentView *)self iconArtworkView];
  [iconArtworkView setImage:imageCopy];

  iconArtworkView2 = [(ASCLockupContentView *)self iconArtworkView];
  [iconArtworkView2 setDecoration:decorationCopy];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setHeading:(id)heading
{
  v5 = MEMORY[0x277CCA898];
  headingCopy = heading;
  traitCollection = [OUTLINED_FUNCTION_4() traitCollection];
  v13 = [v5 asc_attributedStringWithLockupHeading:v3 compatibleWithTraitCollection:traitCollection];

  if (v13 && [v13 length])
  {
    headingLabel = [(ASCLockupContentView *)self headingLabel];
    [headingLabel setAttributedText:v13];

    [(ASCLockupContentView *)self shouldHideHeading];
    headingLabel2 = [OUTLINED_FUNCTION_4() headingLabel];
    v10 = headingLabel2;
    v11 = v3;
  }

  else
  {
    [(ASCLockupContentView *)self headingLabelIfLoaded];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 setAttributedText:?];

    headingLabel2 = [(ASCLockupContentView *)self headingLabelIfLoaded];
    v10 = headingLabel2;
    v11 = 1;
  }

  [headingLabel2 setHidden:v11];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  [OUTLINED_FUNCTION_0_3() titleLabel];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [v7 setText:?];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  [OUTLINED_FUNCTION_0_3() subtitleLabel];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [v7 setText:?];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setBadge:(id)badge
{
  badgeCopy = badge;
  badgeView = [OUTLINED_FUNCTION_0_3() badgeView];
  [badgeView removeFromSuperview];

  [(ASCLockupContentView *)self setBadgeView:v3];
  badgeView2 = [(ASCLockupContentView *)self badgeView];

  if (badgeView2)
  {
    [(ASCLockupContentView *)self badgeView];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_3() addSubview:badgeView2];
  }

  [(ASCLockupContentView *)self shouldHideBadge];
  badgeView3 = [OUTLINED_FUNCTION_0_3() badgeView];
  OUTLINED_FUNCTION_2_0(badgeView3, v9);

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setPrefersRightToLeftLayout:(BOOL)layout
{
  if (layout)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [(ASCLockupContentView *)self setSemanticContentAttribute:v4];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setLoading:(BOOL)loading
{
  if (loading)
  {
    [ASCContentSkeleton fractionalSkeleton:0.76];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_3() titleLabel];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    [v6 setSkeleton:?];

    [ASCContentSkeleton fractionalSkeleton:0.47];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_3() subtitleLabel];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    [v7 setSkeleton:?];
  }

  else
  {
    [(ASCLockupContentView *)self titleLabel];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 setSkeleton:?];

    [(ASCLockupContentView *)self subtitleLabel];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v9 setSkeleton:?];
  }

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setOfferMetadata:(id)metadata
{
  metadataCopy = metadata;
  [OUTLINED_FUNCTION_0_3() offerButton];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [v7 transitionToMetadata:? withCompletion:?];

  [(ASCLockupContentView *)self updateOfferTheme];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setOfferStatus:(id)status
{
  statusCopy = status;
  v12 = statusCopy;
  if (statusCopy && [statusCopy length])
  {
    offerStatusLabel = [(ASCLockupContentView *)self offerStatusLabel];
    [offerStatusLabel setText:v12];

    [(ASCLockupContentView *)self shouldHideOfferStatus];
    offerStatusLabel2 = [OUTLINED_FUNCTION_4() offerStatusLabel];
    v9 = offerStatusLabel2;
    v10 = v4;
  }

  else
  {
    [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v7 setText:?];

    offerStatusLabel2 = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
    v9 = offerStatusLabel2;
    v10 = 1;
  }

  [offerStatusLabel2 setHidden:v10];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)offerStatusLabel
{
  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  *a3 = v7;
  [v7 setSemanticContentAttribute:{objc_msgSend(self, "semanticContentAttribute")}];
  [self addSubview:v7];
  objc_storeStrong(a2, v7);
  v8 = ASCAXIdentifierWithSuffix(@"Lockup.offerStatus");
  [*a2 setAccessibilityIdentifier:v8];

  [(ASCLockupContentView *)self updateLockupTheme];
}

- (void)headingLabel
{
  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  *a3 = v7;
  [v7 setSemanticContentAttribute:{objc_msgSend(self, "semanticContentAttribute")}];
  [self addSubview:v7];
  objc_storeStrong(a2, v7);
  v8 = ASCAXIdentifierWithSuffix(@"Lockup.heading");
  [*a2 setAccessibilityIdentifier:v8];

  [(ASCLockupContentView *)self updateLockupTheme];
}

- (uint64_t)setLockupSize:(void *)a3 .cold.1(id obj, id *location, void *a3)
{
  objc_storeStrong(location, obj);
  [(ASCLockupContentView *)a3 updateLockupTheme];
  [(ASCLockupContentView *)a3 updateOfferLayoutPropertiesForSize:?];
  [(ASCLockupContentView *)a3 updateOfferTheme];
  [a3 shouldHideIconArtwork];
  v6 = [OUTLINED_FUNCTION_0_3() iconArtworkView];
  OUTLINED_FUNCTION_2_0(v6, v7);

  [a3 shouldHideTitle];
  v8 = [OUTLINED_FUNCTION_0_3() titleLabel];
  OUTLINED_FUNCTION_2_0(v8, v9);

  [a3 shouldHideSubtitle];
  v10 = [OUTLINED_FUNCTION_0_3() subtitleLabel];
  OUTLINED_FUNCTION_2_0(v10, v11);

  [a3 shouldHideHeading];
  v12 = [OUTLINED_FUNCTION_0_3() headingLabelIfLoaded];
  OUTLINED_FUNCTION_2_0(v12, v13);

  [a3 shouldHideOfferStatus];
  v14 = [OUTLINED_FUNCTION_0_3() offerStatusLabelIfLoaded];
  OUTLINED_FUNCTION_2_0(v14, v15);

  [a3 invalidateIntrinsicContentSize];

  return [a3 setNeedsLayout];
}

@end