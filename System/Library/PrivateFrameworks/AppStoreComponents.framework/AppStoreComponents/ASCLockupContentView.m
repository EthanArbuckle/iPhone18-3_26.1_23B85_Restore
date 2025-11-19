@interface ASCLockupContentView
+ (BOOL)isOfferButtonFixedHeightForSize:(id)a3;
+ (BOOL)offerButtonShouldTopAlignForSize:(id)a3;
- (ASCLockupContentView)initWithCoder:(id)a3;
- (ASCLockupContentView)initWithFrame:(CGRect)a3;
- (BOOL)isMiniLockup;
- (BOOL)isOfferButtonOnlyLockup;
- (BOOL)isSmallOfferButtonOnlyLockup;
- (BOOL)shouldHideHeading;
- (BOOL)shouldHideOfferStatus;
- (BOOL)shouldHideSubtitle;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredIconSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (UIColor)loadingColor;
- (UILabel)headingLabel;
- (UILabel)offerStatusLabel;
- (double)minimumLockupHeight;
- (id)defaultOfferTheme;
- (id)makeLayout;
- (id)saveOfferState;
- (void)addOfferTarget:(id)a3 action:(SEL)a4;
- (void)beginOfferModalStateWithCancelBlock:(id)a3;
- (void)endOfferModalState;
- (void)headingLabel;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)offerButton:(id)a3 willTransitionToMetadata:(id)a4 usingAnimator:(id)a5;
- (void)offerStatusLabel;
- (void)removeOfferTarget:(id)a3 action:(SEL)a4;
- (void)setBadge:(id)a3;
- (void)setDataChanged;
- (void)setDisplayContext:(id)a3;
- (void)setHeading:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconImage:(id)a3 withDecoration:(id)a4;
- (void)setLoading:(BOOL)a3;
- (void)setLoadingColor:(id)a3;
- (void)setLockupSize:(id)a3;
- (void)setLockupTheme:(id)a3;
- (void)setOfferEnabled:(BOOL)a3;
- (void)setOfferInteractive:(BOOL)a3;
- (void)setOfferMetadata:(id)a3;
- (void)setOfferStatus:(id)a3;
- (void)setOfferTheme:(id)a3;
- (void)setPrefersRightToLeftLayout:(BOOL)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateLockupTheme;
- (void)updateOfferLayoutPropertiesForSize:(void *)a1;
- (void)updateOfferTheme;
- (void)updateViewsVisibility;
@end

@implementation ASCLockupContentView

- (BOOL)isOfferButtonOnlyLockup
{
  v3 = [(ASCLockupContentView *)self lockupSize];
  if (ASCLockupViewSizeIsSmallOfferButton(v3, v4))
  {
    IsMediumOfferButton = 1;
  }

  else
  {
    v6 = [(ASCLockupContentView *)self lockupSize];
    IsMediumOfferButton = ASCLockupViewSizeIsMediumOfferButton(v6, v7);
  }

  return IsMediumOfferButton;
}

- (BOOL)isSmallOfferButtonOnlyLockup
{
  v2 = [(ASCLockupContentView *)self lockupSize];
  v3 = [ASCLockupContentView isSmallOfferButtonLockupForSize:v2];

  return v3;
}

- (BOOL)isMiniLockup
{
  v2 = [(ASCLockupContentView *)self lockupSize];
  IsMini = ASCLockupViewSizeIsMini(v2, v3);

  return IsMini;
}

+ (BOOL)isOfferButtonFixedHeightForSize:(id)a3
{
  v3 = a3;
  if (ASCLockupViewSizeIsLargeAppShowcase(v3, v4))
  {
    IsLargeAppAd = 1;
  }

  else
  {
    IsLargeAppAd = ASCLockupViewSizeIsLargeAppAd(v3, v5);
  }

  return IsLargeAppAd;
}

+ (BOOL)offerButtonShouldTopAlignForSize:(id)a3
{
  v4 = a3;
  if (([a1 isOfferButtonFixedHeightForSize:v4] & 1) != 0 || (objc_msgSend(a1, "offerButtonTopPaddingForSize:", v4), v6 > 0.0))
  {
    IsMediumOfferButton = 1;
  }

  else
  {
    IsMediumOfferButton = ASCLockupViewSizeIsMediumOfferButton(v4, v5);
  }

  return IsMediumOfferButton;
}

- (BOOL)shouldHideHeading
{
  v3 = [(ASCLockupContentView *)self isOfferButtonOnlyLockup];
  if (!v3)
  {
    [(ASCLockupContentView *)self isMiniLockup];
  }

  return v3;
}

- (BOOL)shouldHideSubtitle
{
  if ([(ASCLockupContentView *)self isOfferButtonOnlyLockup])
  {
    return 1;
  }

  if ([(ASCLockupContentView *)self isMiniLockup])
  {
    v4 = [(ASCLockupContentView *)self headingLabelIfLoaded];
    v5 = [v4 text];
    v6 = [v5 length];
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

- (ASCLockupContentView)initWithFrame:(CGRect)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = ASCLockupContentView;
  v3 = [(ASCLockupContentView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (ASCLockupContentView)initWithCoder:(id)a3
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
  v2 = [(ASCLockupContentView *)self iconArtworkView];
  [v2 preferredSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setLockupSize:(id)a3
{
  obj = a3;
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
  v2 = [(ASCLockupContentView *)self titleLabel];
  v3 = [v2 skeletonColor];

  return v3;
}

- (void)setLoadingColor:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [(ASCLockupContentView *)self iconArtworkView];
    [v6 setPlaceholderColor:v5];

    v7 = v5;
    v8 = v7;
  }

  else
  {
    v8 = +[ASCSemanticColor artworkPlaceholder];
    v9 = [(ASCLockupContentView *)self iconArtworkView];
    [v9 setPlaceholderColor:v8];

    v7 = +[ASCSemanticColor loading];
  }

  v10 = [(ASCLockupContentView *)self titleLabel];
  [v10 setSkeletonColor:v7];

  v11 = [(ASCLockupContentView *)self subtitleLabel];
  [v11 setSkeletonColor:v7];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = ASCLockupContentView;
  [(ASCLockupContentView *)&v6 setHighlighted:?];
  v5 = [(ASCLockupContentView *)self iconArtworkView];
  [v5 setHighlighted:v3];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = ASCLockupContentView;
  [(ASCLockupContentView *)&v11 setSemanticContentAttribute:?];
  v5 = [(ASCLockupContentView *)self headingLabelIfLoaded];
  [v5 setSemanticContentAttribute:a3];

  v6 = [(ASCLockupContentView *)self iconArtworkView];
  [v6 setSemanticContentAttribute:a3];

  v7 = [(ASCLockupContentView *)self titleLabel];
  [v7 setSemanticContentAttribute:a3];

  v8 = [(ASCLockupContentView *)self subtitleLabel];
  [v8 setSemanticContentAttribute:a3];

  v9 = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
  [v9 setSemanticContentAttribute:a3];

  v10 = [(ASCLockupContentView *)self offerButton];
  [v10 setSemanticContentAttribute:a3];
}

- (id)makeLayout
{
  v3 = [(ASCLockupContentView *)self lockupSize];
  v4 = [(ASCLockupContentView *)self traitCollection];
  v5 = [(ASCLockupContentView *)self iconArtworkView];
  v6 = [(ASCLockupContentView *)self headingLabelIfLoaded];
  v7 = [(ASCLockupContentView *)self titleLabel];
  v8 = [(ASCLockupContentView *)self subtitleLabel];
  v9 = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
  v10 = [(ASCLockupContentView *)self offerButton];
  v11 = [(ASCLockupContentView *)self badgeView];
  v12 = [__ASCLayoutProxy lockupLayoutOfSize:v3 traitCollection:v4 artworkView:v5 headingText:v6 titleText:v7 subtitleText:v8 offerText:v9 offerButton:v10 badge:v11];

  return v12;
}

- (double)minimumLockupHeight
{
  v2 = [(ASCLockupContentView *)self iconArtworkView];
  [v2 preferredSize];
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
    v3 = [(ASCLockupContentView *)self superview];
    [v3 invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCLockupContentView *)self sizeThatFits:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v14 = [(ASCLockupContentView *)self makeLayout];
  v15 = [(UIView *)self asc_layoutTraitEnvironment];
  [v14 measuredSizeFittingSize:v15 inTraitEnvironment:{v12, v13}];
  v17 = v16;
  v19 = v18;

  if ([(ASCLockupContentView *)self isSmallOfferButtonOnlyLockup])
  {
    v20 = [(ASCLockupContentView *)self offerButton];
    v21 = [v20 size];
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
  v19 = [(ASCLockupContentView *)self makeLayout];
  v20 = [(UIView *)self asc_layoutTraitEnvironment];
  [v19 placeChildrenRelativeToRect:v20 inTraitEnvironment:{v12, v14, v16, v18}];
}

- (void)addOfferTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(ASCLockupContentView *)self offerButton];
  [v7 addTarget:v6 action:a4 forControlEvents:64];
}

- (void)removeOfferTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(ASCLockupContentView *)self offerButton];
  [v7 removeTarget:v6 action:a4 forControlEvents:64];
}

- (void)setLockupTheme:(id)a3
{
  v9 = a3;
  v5 = self->_lockupTheme;
  v6 = v5;
  if (v9 && v5)
  {
    v7 = [(ASCLockupTheme *)v5 isEqual:v9];

    v8 = v9;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v8 = v9;
  if (v6 != v9)
  {
LABEL_4:
    objc_storeStrong(&self->_lockupTheme, a3);
    [(ASCLockupContentView *)self updateLockupTheme];
    v8 = v9;
  }

LABEL_6:
}

- (void)setDisplayContext:(id)a3
{
  v4 = a3;
  displayContext = self->_displayContext;
  if (v4 && displayContext)
  {
    v9 = v4;
    v6 = [(ASCLockupDisplayContext *)displayContext isEqual:v4];
    v4 = v9;
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (displayContext != v4)
  {
LABEL_4:
    v7 = [(ASCLockupDisplayContext *)v4 copy];
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
  v4 = [(ASCLockupContentView *)self offerButton];
  v5 = [v4 metadata];
  v6 = [(ASCLockupContentView *)self offerTheme];
  v7 = [(ASCOfferPresenterViewState *)v3 initWithMetadata:v5 theme:v6];

  return v7;
}

- (void)setOfferTheme:(id)a3
{
  v4 = a3;
  offerTheme = self->_offerTheme;
  if (v4 && offerTheme)
  {
    v9 = v4;
    v6 = [(ASCOfferTheme *)offerTheme isEqual:v4];
    v4 = v9;
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (offerTheme != v4)
  {
LABEL_4:
    v7 = [(ASCOfferTheme *)v4 copy];
    v8 = self->_offerTheme;
    self->_offerTheme = v7;

    [(ASCLockupContentView *)self updateOfferTheme];
  }

LABEL_6:

  MEMORY[0x2821F96F8]();
}

- (void)setOfferEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCLockupContentView *)self offerButton];
  [v4 setEnabled:v3];
}

- (void)setOfferInteractive:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCLockupContentView *)self offerButton];
  [v4 setUserInteractionEnabled:v3];
}

- (void)beginOfferModalStateWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupContentView *)self offerButton];
  [v5 beginModalStateWithCancelBlock:v4];
}

- (void)endOfferModalState
{
  v2 = [(ASCLockupContentView *)self offerButton];
  [v2 endModalState];
}

- (void)offerButton:(id)a3 willTransitionToMetadata:(id)a4 usingAnimator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ASCLockupContentView_offerButton_willTransitionToMetadata_usingAnimator___block_invoke;
  v11[3] = &unk_2781CBD28;
  objc_copyWeak(&v12, &location);
  [v10 addAnimations:v11];
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
  v4 = [(ASCLockupContentView *)self headingLabelIfLoaded];
  v5 = [v4 text];
  [(ASCDescriber *)v3 addObject:v5 withName:@"heading"];

  v6 = [(ASCLockupContentView *)self titleLabel];
  v7 = [v6 text];
  [(ASCDescriber *)v3 addObject:v7 withName:@"title"];

  v8 = [(ASCLockupContentView *)self subtitleLabel];
  v9 = [v8 text];
  [(ASCDescriber *)v3 addObject:v9 withName:@"subtitle"];

  v10 = [(ASCLockupContentView *)self lockupTheme];
  [(ASCDescriber *)v3 addObject:v10 withName:@"lockupTheme"];

  v11 = [(ASCLockupContentView *)self displayContext];
  [(ASCDescriber *)v3 addObject:v11 withName:@"displayContext"];

  v12 = [(ASCLockupContentView *)self offerButton];
  v13 = [v12 size];
  [(ASCDescriber *)v3 addObject:v13 withName:@"offerSize"];

  v14 = [(ASCLockupContentView *)self offerButton];
  v15 = [v14 theme];
  [(ASCDescriber *)v3 addObject:v15 withName:@"offerTheme"];

  v16 = [(ASCLockupContentView *)self offerButton];
  v17 = [v16 metadata];
  [(ASCDescriber *)v3 addObject:v17 withName:@"offerMetadata"];

  v18 = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
  v19 = [v18 text];
  [(ASCDescriber *)v3 addObject:v19 withName:@"offerStatus"];

  v20 = [(ASCDescriber *)v3 finalizeDescription];

  return v20;
}

- (void)updateLockupTheme
{
  if (a1)
  {
    +[ASCDefaultLockupTheme sharedTheme];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_0_3() traitCollection];
    [v1 applyToLockupContentView:a1 compatibleWithTraitCollection:v3];

    v5 = [a1 lockupTheme];
    v4 = [a1 traitCollection];
    [v5 applyToLockupContentView:a1 compatibleWithTraitCollection:v4];
  }
}

- (void)updateOfferLayoutPropertiesForSize:(void *)a1
{
  if (a1)
  {
    v4 = a2;
    ASCLockupViewSizeGetOfferButtonSize(v4);
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_4() offerButton];
    [v5 setSize:v2];

    ASCLockupViewSizeOfferButtonSubtitlePosition(v4);
    v6 = [OUTLINED_FUNCTION_4() offerButton];
    [v6 setSubtitlePosition:v2];

    [OUTLINED_FUNCTION_5() isOfferButtonFixedHeightForSize:?];
    v7 = [OUTLINED_FUNCTION_4() offerButton];
    [v7 setFixedHeight:v2];

    [OUTLINED_FUNCTION_5() offerButtonShouldTopAlignForSize:?];
    v8 = [OUTLINED_FUNCTION_4() offerButton];
    [v8 setShouldTopAlign:v2];

    [OUTLINED_FUNCTION_5() offerButtonTopPaddingForSize:?];
    v10 = v9;
    v11 = [a1 offerButton];
    [v11 setTopPadding:v10];

    v12 = [OUTLINED_FUNCTION_5() offerButtonShouldExpandBackgroundForSize:?];
    v13 = [a1 offerButton];
    [v13 setShouldExpandBackground:v12];
  }
}

- (void)updateOfferTheme
{
  if (!a1)
  {
    return;
  }

  v3 = [a1 offerTheme];

  if (!v3)
  {
    v5 = [a1 titleLabel];
    [v5 skeleton];
    if (objc_claimAutoreleasedReturnValue())
    {
      v6 = [OUTLINED_FUNCTION_4() subtitleLabel];
      v7 = [v6 skeleton];

      if (v7)
      {
        v4 = +[ASCOfferTheme loadingTheme];
        goto LABEL_7;
      }
    }

    else
    {
    }

    v4 = [(ASCLockupContentView *)a1 defaultOfferTheme];
    goto LABEL_7;
  }

  v4 = [a1 offerTheme];
LABEL_7:
  v9 = v4;
  v8 = [a1 offerButton];
  [v8 setTheme:v9];
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
  if (a1)
  {
    [a1 shouldHideIconArtwork];
    v4 = [OUTLINED_FUNCTION_0_3() iconArtworkView];
    OUTLINED_FUNCTION_2_0(v4, v5);

    [a1 shouldHideTitle];
    v6 = [OUTLINED_FUNCTION_0_3() titleLabel];
    OUTLINED_FUNCTION_2_0(v6, v7);

    [a1 shouldHideSubtitle];
    v8 = [OUTLINED_FUNCTION_0_3() subtitleLabel];
    OUTLINED_FUNCTION_2_0(v8, v9);

    [a1 shouldHideHeading];
    v10 = [OUTLINED_FUNCTION_0_3() headingLabelIfLoaded];
    OUTLINED_FUNCTION_2_0(v10, v11);

    [a1 shouldHideOfferStatus];
    v12 = [OUTLINED_FUNCTION_0_3() offerStatusLabelIfLoaded];
    [v12 setHidden:v1];
  }
}

- (id)defaultOfferTheme
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 offerButton];
    v3 = [v2 metadata];
    v4 = ASCOfferMetadataGetOfferTheme(v3);
    v5 = v4;
    if (v4)
    {
      v1 = v4;
    }

    else
    {
      v6 = [v1 lockupSize];
      v1 = ASCLockupViewSizeGetOfferTheme(v6);
    }
  }

  return v1;
}

- (void)setIconImage:(id)a3 withDecoration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCLockupContentView *)self iconArtworkView];
  [v8 setImage:v7];

  v9 = [(ASCLockupContentView *)self iconArtworkView];
  [v9 setDecoration:v6];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setHeading:(id)a3
{
  v5 = MEMORY[0x277CCA898];
  v6 = a3;
  v7 = [OUTLINED_FUNCTION_4() traitCollection];
  v13 = [v5 asc_attributedStringWithLockupHeading:v3 compatibleWithTraitCollection:v7];

  if (v13 && [v13 length])
  {
    v12 = [(ASCLockupContentView *)self headingLabel];
    [v12 setAttributedText:v13];

    [(ASCLockupContentView *)self shouldHideHeading];
    v9 = [OUTLINED_FUNCTION_4() headingLabel];
    v10 = v9;
    v11 = v3;
  }

  else
  {
    [(ASCLockupContentView *)self headingLabelIfLoaded];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 setAttributedText:?];

    v9 = [(ASCLockupContentView *)self headingLabelIfLoaded];
    v10 = v9;
    v11 = 1;
  }

  [v9 setHidden:v11];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  [OUTLINED_FUNCTION_0_3() titleLabel];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [v7 setText:?];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setSubtitle:(id)a3
{
  v6 = a3;
  [OUTLINED_FUNCTION_0_3() subtitleLabel];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [v7 setText:?];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setBadge:(id)a3
{
  v5 = a3;
  v6 = [OUTLINED_FUNCTION_0_3() badgeView];
  [v6 removeFromSuperview];

  [(ASCLockupContentView *)self setBadgeView:v3];
  v7 = [(ASCLockupContentView *)self badgeView];

  if (v7)
  {
    [(ASCLockupContentView *)self badgeView];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_3() addSubview:v7];
  }

  [(ASCLockupContentView *)self shouldHideBadge];
  v8 = [OUTLINED_FUNCTION_0_3() badgeView];
  OUTLINED_FUNCTION_2_0(v8, v9);

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setPrefersRightToLeftLayout:(BOOL)a3
{
  if (a3)
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

- (void)setLoading:(BOOL)a3
{
  if (a3)
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

- (void)setOfferMetadata:(id)a3
{
  v6 = a3;
  [OUTLINED_FUNCTION_0_3() offerButton];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [v7 transitionToMetadata:? withCompletion:?];

  [(ASCLockupContentView *)self updateOfferTheme];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)setOfferStatus:(id)a3
{
  v6 = a3;
  v12 = v6;
  if (v6 && [v6 length])
  {
    v11 = [(ASCLockupContentView *)self offerStatusLabel];
    [v11 setText:v12];

    [(ASCLockupContentView *)self shouldHideOfferStatus];
    v8 = [OUTLINED_FUNCTION_4() offerStatusLabel];
    v9 = v8;
    v10 = v4;
  }

  else
  {
    [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v7 setText:?];

    v8 = [(ASCLockupContentView *)self offerStatusLabelIfLoaded];
    v9 = v8;
    v10 = 1;
  }

  [v8 setHidden:v10];

  [(ASCLockupContentView *)self setDataChanged];
}

- (void)offerStatusLabel
{
  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  *a3 = v7;
  [v7 setSemanticContentAttribute:{objc_msgSend(a1, "semanticContentAttribute")}];
  [a1 addSubview:v7];
  objc_storeStrong(a2, v7);
  v8 = ASCAXIdentifierWithSuffix(@"Lockup.offerStatus");
  [*a2 setAccessibilityIdentifier:v8];

  [(ASCLockupContentView *)a1 updateLockupTheme];
}

- (void)headingLabel
{
  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  *a3 = v7;
  [v7 setSemanticContentAttribute:{objc_msgSend(a1, "semanticContentAttribute")}];
  [a1 addSubview:v7];
  objc_storeStrong(a2, v7);
  v8 = ASCAXIdentifierWithSuffix(@"Lockup.heading");
  [*a2 setAccessibilityIdentifier:v8];

  [(ASCLockupContentView *)a1 updateLockupTheme];
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