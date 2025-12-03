@interface ASCMiniProductPageView
- (ASCLockup)lockup;
- (ASCLockupRequest)request;
- (ASCLockupViewGroup)group;
- (ASCMiniProductPageView)initWithCoder:(id)coder;
- (ASCMiniProductPageView)initWithFrame:(CGRect)frame;
- (ASCMiniProductPageViewDelegate)delegate;
- (BOOL)showsPlaceholderContent;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredIconSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)loadingColor;
- (UIViewController)presentingViewController;
- (id)makeLayout;
- (void)didSelectMediaView:(id)view forEvent:(id)event;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)lockupPresenterDidBeginRequest;
- (void)lockupPresenterDidFailRequestWithError:(id)error;
- (void)lockupPresenterDidFinishRequest;
- (void)presentDescriptionViewController;
- (void)presentScreenshotsViewControllerWithSelectedIndex:(unint64_t)index;
- (void)presentingViewController;
- (void)setAgeRating:(id)rating;
- (void)setBackgroundColor:(id)color;
- (void)setDataChanged;
- (void)setDelegate:(id)delegate;
- (void)setDescription:(id)description;
- (void)setGroup:(id)group;
- (void)setIconImage:(id)image withDecoration:(id)decoration;
- (void)setLoading:(BOOL)loading;
- (void)setLoadingColor:(id)color;
- (void)setLockup:(id)lockup;
- (void)setMetadata:(id)metadata;
- (void)setNumberOfLines;
- (void)setPrefersRightToLeftLayout:(BOOL)layout;
- (void)setRequest:(id)request;
- (void)setShowsPlaceholderContent:(BOOL)content;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation ASCMiniProductPageView

- (ASCMiniProductPageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v61[1] = *MEMORY[0x277D85DE8];
  +[ASCEligibility assertCurrentProcessEligibility];
  v60.receiver = self;
  v60.super_class = ASCMiniProductPageView;
  height = [(ASCMiniProductPageView *)&v60 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(ASCMiniProductPageView *)height setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCMiniProductPageView *)v9 setInsetsLayoutMarginsFromSafeArea:0];
    [(ASCMiniProductPageView *)v9 setClipsToBounds:1];
    v10 = [ASCArtworkView alloc];
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    v15 = [(ASCArtworkView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
    iconArtworkView = v9->_iconArtworkView;
    v9->_iconArtworkView = v15;

    v17 = [[ASCMiniProductPageTitleView alloc] initWithFrame:v11, v12, v13, v14];
    titleView = v9->_titleView;
    v9->_titleView = v17;

    v19 = [[ASCSkeletonLabel alloc] initWithFrame:v11, v12, v13, v14];
    subtitleLabel = v9->_subtitleLabel;
    v9->_subtitleLabel = v19;

    v21 = [[ASCSkeletonLabel alloc] initWithFrame:v11, v12, v13, v14];
    metadataLabel = v9->_metadataLabel;
    v9->_metadataLabel = v21;

    v23 = [[ASCExpandableLabel alloc] initWithFrame:v11, v12, v13, v14];
    descriptionLabel = v9->_descriptionLabel;
    v9->_descriptionLabel = v23;

    v25 = [[ASCMiniProductPageMediaView alloc] initWithFrame:v11, v12, v13, v14];
    mediaView = v9->_mediaView;
    v9->_mediaView = v25;

    [(ASCMiniProductPageMediaView *)v9->_mediaView setScreenshotSpacing:8.0];
    v27 = [[ASCAppearMetricsPresenter alloc] initWithView:v9];
    metricsPresenter = v9->_metricsPresenter;
    v9->_metricsPresenter = v27;

    v29 = [[ASCLockupPresenter alloc] initWithView:v9 metricsPresenter:v9->_metricsPresenter];
    lockupPresenter = v9->_lockupPresenter;
    v9->_lockupPresenter = v29;

    v31 = [[ASCMiniProductPagePresenter alloc] initWithView:v9 lockupPresenter:v9->_lockupPresenter];
    miniProductPagePresenter = v9->_miniProductPagePresenter;
    v9->_miniProductPagePresenter = v31;

    v33 = [[ASCLockupMediaPresenter alloc] initWithView:v9->_mediaView lockupPresenter:v9->_lockupPresenter];
    mediaPresenter = v9->_mediaPresenter;
    v9->_mediaPresenter = v33;

    [(ASCLockupPresenter *)v9->_lockupPresenter setObserver:v9];
    v35 = [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*MEMORY[0x277D76A28] withTraits:2];
    [(ASCMiniProductPageTitleView *)v9->_titleView setFont:v35];

    v36 = [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*MEMORY[0x277D76920] withTraits:2];
    [(ASCSkeletonLabel *)v9->_subtitleLabel setFont:v36];

    v37 = *MEMORY[0x277D76968];
    v38 = [MEMORY[0x277D74300] asc_fontDerivedFromTextStyle:*MEMORY[0x277D76968] byApplyingFontWeight:*MEMORY[0x277D74410]];
    [(ASCSkeletonLabel *)v9->_metadataLabel setFont:v38];

    v39 = [MEMORY[0x277D74300] asc_fontDerivedFromTextStyle:v37 byApplyingFontWeight:*MEMORY[0x277D74418]];
    [(ASCExpandableLabel *)v9->_descriptionLabel setFont:v39];

    [(ASCMiniProductPageTitleView *)v9->_titleView setAdjustsFontForContentSizeCategory:1];
    [(ASCSkeletonLabel *)v9->_metadataLabel setAdjustsFontForContentSizeCategory:1];
    [(ASCSkeletonLabel *)v9->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(ASCExpandableLabel *)v9->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(ASCMiniProductPageTitleView *)v9->_titleView setTextColor:labelColor];

    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(ASCSkeletonLabel *)v9->_subtitleLabel setTextColor:labelColor2];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(ASCSkeletonLabel *)v9->_metadataLabel setTextColor:secondaryLabelColor];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(ASCExpandableLabel *)v9->_descriptionLabel setTextColor:secondaryLabelColor2];

    [(ASCMiniProductPageView *)v9 setNumberOfLines];
    v44 = +[ASCSemanticColor loading];
    [(ASCMiniProductPageView *)v9 setLoadingColor:v44];

    [(ASCSkeletonLabel *)v9->_descriptionLabel setSkeletonNumberOfLines:2];
    objc_initWeak(&location, v9);
    v54 = MEMORY[0x277D85DD0];
    v55 = 3221225472;
    v56 = __40__ASCMiniProductPageView_initWithFrame___block_invoke;
    v57 = &unk_2781CCE20;
    objc_copyWeak(&v58, &location);
    [(ASCArtworkView *)v9->_iconArtworkView setAccessibilityLabelBlock:&v54];
    [(ASCArtworkView *)v9->_iconArtworkView setIsAccessibilityElement:1, v54, v55, v56, v57];
    [(ASCArtworkView *)v9->_iconArtworkView setAccessibilityTraits:*MEMORY[0x277D76560]];
    v45 = ASCAXIdentifierWithSuffix(@"Lockup.icon");
    [(ASCArtworkView *)v9->_iconArtworkView setAccessibilityIdentifier:v45];

    v46 = ASCAXIdentifierWithSuffix(@"Lockup.title");
    [(ASCMiniProductPageTitleView *)v9->_titleView setAccessibilityIdentifier:v46];

    v47 = ASCAXIdentifierWithSuffix(@"Lockup.subtitle");
    [(ASCSkeletonLabel *)v9->_subtitleLabel setAccessibilityIdentifier:v47];

    v48 = ASCAXIdentifierWithSuffix(@"Lockup.metadata");
    [(ASCSkeletonLabel *)v9->_metadataLabel setAccessibilityIdentifier:v48];

    v49 = ASCAXIdentifierWithSuffix(@"Lockup.description");
    [(ASCExpandableLabel *)v9->_descriptionLabel setAccessibilityIdentifier:v49];

    [(ASCMiniProductPageView *)v9 addSubview:v9->_iconArtworkView];
    [(ASCMiniProductPageView *)v9 addSubview:v9->_titleView];
    [(ASCMiniProductPageView *)v9 addSubview:v9->_subtitleLabel];
    [(ASCMiniProductPageView *)v9 addSubview:v9->_metadataLabel];
    [(ASCMiniProductPageView *)v9 addSubview:v9->_descriptionLabel];
    [(ASCMiniProductPageView *)v9 addSubview:v9->_mediaView];
    [(ASCExpandableLabel *)v9->_descriptionLabel setUserInteractionEnabled:1];
    moreButton = [(ASCExpandableLabel *)v9->_descriptionLabel moreButton];
    [moreButton addTarget:v9 action:sel_didSelectDescriptionLabel forControlEvents:64];

    [(ASCMiniProductPageMediaView *)v9->_mediaView setUserInteractionEnabled:1];
    [(ASCMiniProductPageMediaView *)v9->_mediaView addTarget:v9 action:sel_didSelectMediaView_forEvent_ forControlEvents:64];
    v61[0] = objc_opt_class();
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
    v52 = [(ASCMiniProductPageView *)v9 registerForTraitChanges:v51 withAction:sel_setDataChanged];

    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __40__ASCMiniProductPageView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained lockup];
  v3 = [v2 title];

  if (v3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = ASCLocalizedFormatString(@"AX_APP_ICON");
    v7 = [v5 localizedStringWithFormat:v6, v3];
  }

  else
  {
    v7 = ASCLocalizedString(@"AX_APP_ICON_PLACEHOLDER", v4);
  }

  return v7;
}

- (ASCMiniProductPageView)initWithCoder:(id)coder
{
  [(ASCMiniProductPageView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = ASCMiniProductPageView;
  [(ASCMiniProductPageView *)&v4 invalidateIntrinsicContentSize];
  if ((*&self->_delegateRespondsTo & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained miniProductPageViewDidInvalidateIntrinsicContentSize:self];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCMiniProductPageView *)self bounds];

  [(ASCMiniProductPageView *)self sizeThatFits:v3, 1.79769313e308];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(ASCMiniProductPageView *)self layoutMargins];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (width - v7 - v9 >= 0.0)
  {
    v14 = width - v7 - v9;
  }

  else
  {
    v14 = 0.0;
  }

  if (height - v6 - v8 >= 0.0)
  {
    v15 = height - v6 - v8;
  }

  else
  {
    v15 = 0.0;
  }

  makeLayout = [(ASCMiniProductPageView *)self makeLayout];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout measuredSizeFittingSize:asc_layoutTraitEnvironment inTraitEnvironment:{v14, v15}];
  v19 = v18;
  v21 = v20;

  v22 = v11 + v13 + v19;
  v23 = v10 + v12 + v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = ASCMiniProductPageView;
  [(ASCMiniProductPageView *)&v22 layoutSubviews];
  [(ASCMiniProductPageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(ASCMiniProductPageView *)self layoutMargins];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  makeLayout = [(ASCMiniProductPageView *)self makeLayout];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout placeChildrenRelativeToRect:asc_layoutTraitEnvironment inTraitEnvironment:{v12, v14, v16, v18}];

  mediaPresenter = [(ASCMiniProductPageView *)self mediaPresenter];
  [mediaPresenter viewDidLayoutSubviews];
}

- (id)makeLayout
{
  traitCollection = [(ASCMiniProductPageView *)self traitCollection];
  iconArtworkView = [(ASCMiniProductPageView *)self iconArtworkView];
  titleView = [(ASCMiniProductPageView *)self titleView];
  subtitleLabel = [(ASCMiniProductPageView *)self subtitleLabel];
  metadataLabel = [(ASCMiniProductPageView *)self metadataLabel];
  descriptionLabel = [(ASCMiniProductPageView *)self descriptionLabel];
  mediaView = [(ASCMiniProductPageView *)self mediaView];
  v10 = [__ASCLayoutProxy miniProductPageLayoutWithTraitCollection:traitCollection iconArtwork:iconArtworkView title:titleView subtitle:subtitleLabel metadata:metadataLabel description:descriptionLabel screenshots:mediaView];

  return v10;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ASCMiniProductPageView;
  [(ASCMiniProductPageView *)&v3 layoutMarginsDidChange];
  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setDataChanged
{
  [(ASCMiniProductPageView *)self setNumberOfLines];
  [(ASCMiniProductPageView *)self setNeedsLayout];

  [(ASCMiniProductPageView *)self invalidateIntrinsicContentSize];
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = ASCMiniProductPageView;
  colorCopy = color;
  [(ASCMiniProductPageView *)&v7 setBackgroundColor:colorCopy];
  v5 = [(ASCMiniProductPageView *)self titleView:v7.receiver];
  [v5 setBackgroundColor:colorCopy];

  descriptionLabel = [(ASCMiniProductPageView *)self descriptionLabel];
  [descriptionLabel setBackgroundColor:colorCopy];
}

- (void)setNumberOfLines
{
  traitCollection = [(ASCMiniProductPageView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  titleView = [(ASCMiniProductPageView *)self titleView];
  textContainer = [titleView textContainer];
  v8 = textContainer;
  v9 = !IsAccessibilityCategory;
  if (IsAccessibilityCategory)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  v11 = !IsAccessibilityCategory;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v9)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  [textContainer setMaximumNumberOfLines:v10];

  subtitleLabel = [(ASCMiniProductPageView *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:v11];

  metadataLabel = [(ASCMiniProductPageView *)self metadataLabel];
  [metadataLabel setNumberOfLines:v12];

  descriptionLabel = [(ASCMiniProductPageView *)self descriptionLabel];
  [descriptionLabel setNumberOfLines:v13];
}

- (ASCLockup)lockup
{
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  lockup = [lockupPresenter lockup];

  return lockup;
}

- (void)setLockup:(id)lockup
{
  lockupCopy = lockup;
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  [lockupPresenter setLockup:lockupCopy];
}

- (ASCLockupViewGroup)group
{
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  group = [lockupPresenter group];

  return group;
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  [lockupPresenter setGroup:groupCopy];
}

- (ASCLockupRequest)request
{
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  request = [lockupPresenter request];

  return request;
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  [lockupPresenter setRequest:requestCopy];
}

- (void)lockupPresenterDidBeginRequest
{
  if (*&self->_delegateRespondsTo)
  {
    delegate = [(ASCMiniProductPageView *)self delegate];
    [delegate miniProductPageViewDidBeginRequest:self];
  }
}

- (void)lockupPresenterDidFinishRequest
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    delegate = [(ASCMiniProductPageView *)self delegate];
    [delegate miniProductPageViewDidFinishRequest:self];
  }
}

- (void)lockupPresenterDidFailRequestWithError:(id)error
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    errorCopy = error;
    delegate = [(ASCMiniProductPageView *)self delegate];
    [delegate miniProductPageView:self didFailRequestWithError:errorCopy];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v4 = delegateCopy;
  if (delegateCopy)
  {
    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xDF | v9;
    v10 = (objc_opt_respondsToSelector() & 1) == 0;
    v4 = delegateCopy;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 64;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xBF | v11;
  }

  else
  {
    *&self->_delegateRespondsTo &= 0x80u;
  }
}

- (void)setShowsPlaceholderContent:(BOOL)content
{
  contentCopy = content;
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  [lockupPresenter setShowsPlaceholderContent:contentCopy];
}

- (BOOL)showsPlaceholderContent
{
  lockupPresenter = [(ASCMiniProductPageView *)self lockupPresenter];
  showsPlaceholderContent = [lockupPresenter showsPlaceholderContent];

  return showsPlaceholderContent;
}

- (UIColor)loadingColor
{
  titleView = [(ASCMiniProductPageView *)self titleView];
  skeletonColor = [titleView skeletonColor];

  return skeletonColor;
}

- (void)setLoadingColor:(id)color
{
  colorCopy = color;
  v13 = colorCopy;
  if (colorCopy)
  {
    v5 = colorCopy;
  }

  else
  {
    v5 = +[ASCSemanticColor loading];
  }

  v6 = v5;
  titleView = [(ASCMiniProductPageView *)self titleView];
  [titleView setSkeletonColor:v6];

  subtitleLabel = [(ASCMiniProductPageView *)self subtitleLabel];
  [subtitleLabel setSkeletonColor:v6];

  metadataLabel = [(ASCMiniProductPageView *)self metadataLabel];
  [metadataLabel setSkeletonColor:v6];

  descriptionLabel = [(ASCMiniProductPageView *)self descriptionLabel];
  [descriptionLabel setSkeletonColor:v6];

  iconArtworkView = [(ASCMiniProductPageView *)self iconArtworkView];
  [iconArtworkView setPlaceholderColor:v6];

  mediaView = [(ASCMiniProductPageView *)self mediaView];
  [mediaView setPlaceholderColor:v6];
}

- (void)setIconImage:(id)image withDecoration:(id)decoration
{
  decorationCopy = decoration;
  imageCopy = image;
  iconArtworkView = [(ASCMiniProductPageView *)self iconArtworkView];
  [iconArtworkView setImage:imageCopy];

  iconArtworkView2 = [(ASCMiniProductPageView *)self iconArtworkView];
  [iconArtworkView2 setDecoration:decorationCopy];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleView = [(ASCMiniProductPageView *)self titleView];
  [titleView setText:titleCopy];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(ASCMiniProductPageView *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadataLabel = [(ASCMiniProductPageView *)self metadataLabel];
  [metadataLabel setText:metadataCopy];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setDescription:(id)description
{
  descriptionCopy = description;
  descriptionLabel = [(ASCMiniProductPageView *)self descriptionLabel];
  [descriptionLabel setText:descriptionCopy];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setAgeRating:(id)rating
{
  ratingCopy = rating;
  titleView = [(ASCMiniProductPageView *)self titleView];
  ageRatingView = [titleView ageRatingView];
  [ageRatingView setText:ratingCopy];

  [(ASCMiniProductPageView *)self setDataChanged];
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

  [(ASCMiniProductPageView *)self setSemanticContentAttribute:v4];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  if (loading)
  {
    v5 = [ASCContentSkeleton fractionalSkeleton:0.76];
    titleView = [(ASCMiniProductPageView *)self titleView];
    [titleView setSkeleton:v5];

    v7 = [ASCContentSkeleton fractionalSkeleton:0.24];
    subtitleLabel = [(ASCMiniProductPageView *)self subtitleLabel];
    [subtitleLabel setSkeleton:v7];

    v9 = [ASCContentSkeleton fractionalSkeleton:0.24];
    metadataLabel = [(ASCMiniProductPageView *)self metadataLabel];
    [metadataLabel setSkeleton:v9];

    descriptionLabel2 = [ASCContentSkeleton fractionalSkeleton:1.0];
    descriptionLabel = [(ASCMiniProductPageView *)self descriptionLabel];
    [descriptionLabel setSkeleton:descriptionLabel2];
  }

  else
  {
    titleView2 = [(ASCMiniProductPageView *)self titleView];
    [titleView2 setSkeleton:0];

    subtitleLabel2 = [(ASCMiniProductPageView *)self subtitleLabel];
    [subtitleLabel2 setSkeleton:0];

    metadataLabel2 = [(ASCMiniProductPageView *)self metadataLabel];
    [metadataLabel2 setSkeleton:0];

    descriptionLabel2 = [(ASCMiniProductPageView *)self descriptionLabel];
    [descriptionLabel2 setSkeleton:0];
  }

  mediaView = [(ASCMiniProductPageView *)self mediaView];
  [mediaView setShowsPlaceholderContent:loadingCopy];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (CGSize)preferredIconSize
{
  +[__ASCLayoutProxy miniProductPagePreferredArtworkSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIViewController)presentingViewController
{
  v11 = *MEMORY[0x277D85DE8];
  delegate = [(ASCMiniProductPageView *)self delegate];
  v4 = [delegate presentingViewControllerForMiniProductPageView:self];

  if (v4)
  {
    rootViewController = v4;
  }

  else
  {
    window = [(ASCMiniProductPageView *)self window];
    rootViewController = [window rootViewController];

    if (rootViewController)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Mini Product Page view %@ is presenting from root view controller", &v9, 0xCu);
      }

      v7 = rootViewController;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(ASCMiniProductPageView *)self presentingViewController];
    }
  }

  return rootViewController;
}

- (void)presentScreenshotsViewControllerWithSelectedIndex:(unint64_t)index
{
  v5 = [ASCMiniProductPageMediaViewController alloc];
  mediaView = [(ASCMiniProductPageView *)self mediaView];
  screenshots = [mediaView screenshots];
  v8 = [(ASCMiniProductPageMediaViewController *)v5 initWithScreenshots:screenshots selectedIndex:index];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  presentingViewController = [(ASCMiniProductPageView *)self presentingViewController];
  if (presentingViewController)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__ASCMiniProductPageView_presentScreenshotsViewControllerWithSelectedIndex___block_invoke;
    v11[3] = &unk_2781CCE48;
    objc_copyWeak(v12, &location);
    v12[1] = index;
    [presentingViewController presentViewController:v9 animated:1 completion:v11];
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __76__ASCMiniProductPageView_presentScreenshotsViewControllerWithSelectedIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((WeakRetained[408] & 0x20) != 0)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 miniProductPageViewDidPresentScreenshots:v4 atIndex:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)presentDescriptionViewController
{
  v3 = [ASCMiniProductPageDescriptionViewController alloc];
  miniProductPagePresenter = [(ASCMiniProductPageView *)self miniProductPagePresenter];
  v5 = [miniProductPagePresenter description];
  v6 = [(ASCMiniProductPageDescriptionViewController *)v3 initWithText:v5];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  presentingViewController = [(ASCMiniProductPageView *)self presentingViewController];
  if (presentingViewController)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ASCMiniProductPageView_presentDescriptionViewController__block_invoke;
    v9[3] = &unk_2781CBD28;
    objc_copyWeak(&v10, &location);
    [presentingViewController presentViewController:v7 animated:1 completion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __58__ASCMiniProductPageView_presentDescriptionViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((WeakRetained[408] & 0x10) != 0)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 miniProductPageViewDidPresentDescription:v3];

    WeakRetained = v3;
  }
}

- (void)didSelectMediaView:(id)view forEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  allTouches = [event allTouches];
  anyObject = [allTouches anyObject];

  [anyObject locationInView:viewCopy];
  v10 = v9;
  v12 = v11;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  imageViews = [viewCopy imageViews];
  v14 = [imageViews countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v21;
    while (2)
    {
      v18 = 0;
      v19 = v16;
      v16 += v15;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(imageViews);
        }

        [*(*(&v20 + 1) + 8 * v18) frame];
        v26.x = v10;
        v26.y = v12;
        if (CGRectContainsPoint(v27, v26))
        {
          v16 = v19;
          goto LABEL_12;
        }

        ++v19;
        ++v18;
      }

      while (v15 != v18);
      v15 = [imageViews countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_12:

  [(ASCMiniProductPageView *)self presentScreenshotsViewControllerWithSelectedIndex:v16];
}

- (ASCMiniProductPageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentingViewController
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Mini Product Page view %@ could not find view controller to present from.", &v1, 0xCu);
}

@end