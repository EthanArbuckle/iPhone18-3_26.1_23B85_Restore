@interface ASCMiniProductPageView
- (ASCLockup)lockup;
- (ASCLockupRequest)request;
- (ASCLockupViewGroup)group;
- (ASCMiniProductPageView)initWithCoder:(id)a3;
- (ASCMiniProductPageView)initWithFrame:(CGRect)a3;
- (ASCMiniProductPageViewDelegate)delegate;
- (BOOL)showsPlaceholderContent;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredIconSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)loadingColor;
- (UIViewController)presentingViewController;
- (id)makeLayout;
- (void)didSelectMediaView:(id)a3 forEvent:(id)a4;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)lockupPresenterDidBeginRequest;
- (void)lockupPresenterDidFailRequestWithError:(id)a3;
- (void)lockupPresenterDidFinishRequest;
- (void)presentDescriptionViewController;
- (void)presentScreenshotsViewControllerWithSelectedIndex:(unint64_t)a3;
- (void)presentingViewController;
- (void)setAgeRating:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setDataChanged;
- (void)setDelegate:(id)a3;
- (void)setDescription:(id)a3;
- (void)setGroup:(id)a3;
- (void)setIconImage:(id)a3 withDecoration:(id)a4;
- (void)setLoading:(BOOL)a3;
- (void)setLoadingColor:(id)a3;
- (void)setLockup:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setNumberOfLines;
- (void)setPrefersRightToLeftLayout:(BOOL)a3;
- (void)setRequest:(id)a3;
- (void)setShowsPlaceholderContent:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation ASCMiniProductPageView

- (ASCMiniProductPageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v61[1] = *MEMORY[0x277D85DE8];
  +[ASCEligibility assertCurrentProcessEligibility];
  v60.receiver = self;
  v60.super_class = ASCMiniProductPageView;
  v8 = [(ASCMiniProductPageView *)&v60 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(ASCMiniProductPageView *)v8 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
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
    v40 = [MEMORY[0x277D75348] labelColor];
    [(ASCMiniProductPageTitleView *)v9->_titleView setTextColor:v40];

    v41 = [MEMORY[0x277D75348] labelColor];
    [(ASCSkeletonLabel *)v9->_subtitleLabel setTextColor:v41];

    v42 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(ASCSkeletonLabel *)v9->_metadataLabel setTextColor:v42];

    v43 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(ASCExpandableLabel *)v9->_descriptionLabel setTextColor:v43];

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
    v50 = [(ASCExpandableLabel *)v9->_descriptionLabel moreButton];
    [v50 addTarget:v9 action:sel_didSelectDescriptionLabel forControlEvents:64];

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

- (ASCMiniProductPageView)initWithCoder:(id)a3
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v16 = [(ASCMiniProductPageView *)self makeLayout];
  v17 = [(UIView *)self asc_layoutTraitEnvironment];
  [v16 measuredSizeFittingSize:v17 inTraitEnvironment:{v14, v15}];
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
  v19 = [(ASCMiniProductPageView *)self makeLayout];
  v20 = [(UIView *)self asc_layoutTraitEnvironment];
  [v19 placeChildrenRelativeToRect:v20 inTraitEnvironment:{v12, v14, v16, v18}];

  v21 = [(ASCMiniProductPageView *)self mediaPresenter];
  [v21 viewDidLayoutSubviews];
}

- (id)makeLayout
{
  v3 = [(ASCMiniProductPageView *)self traitCollection];
  v4 = [(ASCMiniProductPageView *)self iconArtworkView];
  v5 = [(ASCMiniProductPageView *)self titleView];
  v6 = [(ASCMiniProductPageView *)self subtitleLabel];
  v7 = [(ASCMiniProductPageView *)self metadataLabel];
  v8 = [(ASCMiniProductPageView *)self descriptionLabel];
  v9 = [(ASCMiniProductPageView *)self mediaView];
  v10 = [__ASCLayoutProxy miniProductPageLayoutWithTraitCollection:v3 iconArtwork:v4 title:v5 subtitle:v6 metadata:v7 description:v8 screenshots:v9];

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

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASCMiniProductPageView;
  v4 = a3;
  [(ASCMiniProductPageView *)&v7 setBackgroundColor:v4];
  v5 = [(ASCMiniProductPageView *)self titleView:v7.receiver];
  [v5 setBackgroundColor:v4];

  v6 = [(ASCMiniProductPageView *)self descriptionLabel];
  [v6 setBackgroundColor:v4];
}

- (void)setNumberOfLines
{
  v3 = [(ASCMiniProductPageView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = [(ASCMiniProductPageView *)self titleView];
  v7 = [v6 textContainer];
  v8 = v7;
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

  [v7 setMaximumNumberOfLines:v10];

  v14 = [(ASCMiniProductPageView *)self subtitleLabel];
  [v14 setNumberOfLines:v11];

  v15 = [(ASCMiniProductPageView *)self metadataLabel];
  [v15 setNumberOfLines:v12];

  v16 = [(ASCMiniProductPageView *)self descriptionLabel];
  [v16 setNumberOfLines:v13];
}

- (ASCLockup)lockup
{
  v2 = [(ASCMiniProductPageView *)self lockupPresenter];
  v3 = [v2 lockup];

  return v3;
}

- (void)setLockup:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self lockupPresenter];
  [v5 setLockup:v4];
}

- (ASCLockupViewGroup)group
{
  v2 = [(ASCMiniProductPageView *)self lockupPresenter];
  v3 = [v2 group];

  return v3;
}

- (void)setGroup:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self lockupPresenter];
  [v5 setGroup:v4];
}

- (ASCLockupRequest)request
{
  v2 = [(ASCMiniProductPageView *)self lockupPresenter];
  v3 = [v2 request];

  return v3;
}

- (void)setRequest:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self lockupPresenter];
  [v5 setRequest:v4];
}

- (void)lockupPresenterDidBeginRequest
{
  if (*&self->_delegateRespondsTo)
  {
    v4 = [(ASCMiniProductPageView *)self delegate];
    [v4 miniProductPageViewDidBeginRequest:self];
  }
}

- (void)lockupPresenterDidFinishRequest
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    v4 = [(ASCMiniProductPageView *)self delegate];
    [v4 miniProductPageViewDidFinishRequest:self];
  }
}

- (void)lockupPresenterDidFailRequestWithError:(id)a3
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    v5 = a3;
    v6 = [(ASCMiniProductPageView *)self delegate];
    [v6 miniProductPageView:self didFailRequestWithError:v5];
  }
}

- (void)setDelegate:(id)a3
{
  v12 = a3;
  objc_storeWeak(&self->_delegate, v12);
  v4 = v12;
  if (v12)
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
    v4 = v12;
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

- (void)setShowsPlaceholderContent:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCMiniProductPageView *)self lockupPresenter];
  [v4 setShowsPlaceholderContent:v3];
}

- (BOOL)showsPlaceholderContent
{
  v2 = [(ASCMiniProductPageView *)self lockupPresenter];
  v3 = [v2 showsPlaceholderContent];

  return v3;
}

- (UIColor)loadingColor
{
  v2 = [(ASCMiniProductPageView *)self titleView];
  v3 = [v2 skeletonColor];

  return v3;
}

- (void)setLoadingColor:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[ASCSemanticColor loading];
  }

  v6 = v5;
  v7 = [(ASCMiniProductPageView *)self titleView];
  [v7 setSkeletonColor:v6];

  v8 = [(ASCMiniProductPageView *)self subtitleLabel];
  [v8 setSkeletonColor:v6];

  v9 = [(ASCMiniProductPageView *)self metadataLabel];
  [v9 setSkeletonColor:v6];

  v10 = [(ASCMiniProductPageView *)self descriptionLabel];
  [v10 setSkeletonColor:v6];

  v11 = [(ASCMiniProductPageView *)self iconArtworkView];
  [v11 setPlaceholderColor:v6];

  v12 = [(ASCMiniProductPageView *)self mediaView];
  [v12 setPlaceholderColor:v6];
}

- (void)setIconImage:(id)a3 withDecoration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCMiniProductPageView *)self iconArtworkView];
  [v8 setImage:v7];

  v9 = [(ASCMiniProductPageView *)self iconArtworkView];
  [v9 setDecoration:v6];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self titleView];
  [v5 setText:v4];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self subtitleLabel];
  [v5 setText:v4];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self metadataLabel];
  [v5 setText:v4];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setDescription:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self descriptionLabel];
  [v5 setText:v4];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setAgeRating:(id)a3
{
  v4 = a3;
  v5 = [(ASCMiniProductPageView *)self titleView];
  v6 = [v5 ageRatingView];
  [v6 setText:v4];

  [(ASCMiniProductPageView *)self setDataChanged];
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

  [(ASCMiniProductPageView *)self setSemanticContentAttribute:v4];

  [(ASCMiniProductPageView *)self setDataChanged];
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [ASCContentSkeleton fractionalSkeleton:0.76];
    v6 = [(ASCMiniProductPageView *)self titleView];
    [v6 setSkeleton:v5];

    v7 = [ASCContentSkeleton fractionalSkeleton:0.24];
    v8 = [(ASCMiniProductPageView *)self subtitleLabel];
    [v8 setSkeleton:v7];

    v9 = [ASCContentSkeleton fractionalSkeleton:0.24];
    v10 = [(ASCMiniProductPageView *)self metadataLabel];
    [v10 setSkeleton:v9];

    v11 = [ASCContentSkeleton fractionalSkeleton:1.0];
    v12 = [(ASCMiniProductPageView *)self descriptionLabel];
    [v12 setSkeleton:v11];
  }

  else
  {
    v13 = [(ASCMiniProductPageView *)self titleView];
    [v13 setSkeleton:0];

    v14 = [(ASCMiniProductPageView *)self subtitleLabel];
    [v14 setSkeleton:0];

    v15 = [(ASCMiniProductPageView *)self metadataLabel];
    [v15 setSkeleton:0];

    v11 = [(ASCMiniProductPageView *)self descriptionLabel];
    [v11 setSkeleton:0];
  }

  v16 = [(ASCMiniProductPageView *)self mediaView];
  [v16 setShowsPlaceholderContent:v3];

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
  v3 = [(ASCMiniProductPageView *)self delegate];
  v4 = [v3 presentingViewControllerForMiniProductPageView:self];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(ASCMiniProductPageView *)self window];
    v5 = [v6 rootViewController];

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Mini Product Page view %@ is presenting from root view controller", &v9, 0xCu);
      }

      v7 = v5;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(ASCMiniProductPageView *)self presentingViewController];
    }
  }

  return v5;
}

- (void)presentScreenshotsViewControllerWithSelectedIndex:(unint64_t)a3
{
  v5 = [ASCMiniProductPageMediaViewController alloc];
  v6 = [(ASCMiniProductPageView *)self mediaView];
  v7 = [v6 screenshots];
  v8 = [(ASCMiniProductPageMediaViewController *)v5 initWithScreenshots:v7 selectedIndex:a3];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  v10 = [(ASCMiniProductPageView *)self presentingViewController];
  if (v10)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__ASCMiniProductPageView_presentScreenshotsViewControllerWithSelectedIndex___block_invoke;
    v11[3] = &unk_2781CCE48;
    objc_copyWeak(v12, &location);
    v12[1] = a3;
    [v10 presentViewController:v9 animated:1 completion:v11];
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
  v4 = [(ASCMiniProductPageView *)self miniProductPagePresenter];
  v5 = [v4 description];
  v6 = [(ASCMiniProductPageDescriptionViewController *)v3 initWithText:v5];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  v8 = [(ASCMiniProductPageView *)self presentingViewController];
  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ASCMiniProductPageView_presentDescriptionViewController__block_invoke;
    v9[3] = &unk_2781CBD28;
    objc_copyWeak(&v10, &location);
    [v8 presentViewController:v7 animated:1 completion:v9];
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

- (void)didSelectMediaView:(id)a3 forEvent:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 allTouches];
  v8 = [v7 anyObject];

  [v8 locationInView:v6];
  v10 = v9;
  v12 = v11;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v6 imageViews];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v13);
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
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v2 = a1;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Mini Product Page view %@ could not find view controller to present from.", &v1, 0xCu);
}

@end