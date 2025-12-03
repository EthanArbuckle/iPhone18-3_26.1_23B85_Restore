@interface MKPlaceCompactCollectionCell
- (BOOL)canBecomeFirstResponder;
- (MKPlaceCompactCollectionCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setTextMetadata;
- (void)setUpCellUsingModel:(id)model;
- (void)setupAccessibility;
- (void)setupBorderHighlight;
- (void)setupCompactCollectionData;
- (void)setupCompactCollectionImage;
- (void)setupCompactCollectionImageOverlay;
- (void)setupConstraints;
- (void)setupCornerRadius;
- (void)setupShadows;
- (void)setupSubTitle;
- (void)setupSubviews;
- (void)setupTitle;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
@end

@implementation MKPlaceCompactCollectionCell

- (void)setupBorderHighlight
{
  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  layer = [contentView layer];
  [layer setBorderWidth:3.0];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v5 = systemBlueColor;
  cGColor = [systemBlueColor CGColor];
  contentView2 = [(MKPlaceCompactCollectionCell *)self contentView];
  layer2 = [contentView2 layer];
  [layer2 setBorderColor:cGColor];
}

- (void)setupCornerRadius
{
  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  layer = [contentView layer];
  [layer setCornerRadius:10.0];

  contentView2 = [(MKPlaceCompactCollectionCell *)self contentView];
  layer2 = [contentView2 layer];
  [layer2 setMasksToBounds:1];
}

- (void)setupConstraints
{
  v64[12] = *MEMORY[0x1E69E9840];
  imageOverlayView = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  heightAnchor = [imageOverlayView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:60.0];
  [(MKPlaceCompactCollectionCell *)self setOverlayHeightConstraint:v5];

  v39 = MEMORY[0x1E696ACD8];
  collectionImageView = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  leadingAnchor = [collectionImageView leadingAnchor];
  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v64[0] = v59;
  collectionImageView2 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  trailingAnchor = [collectionImageView2 trailingAnchor];
  contentView2 = [(MKPlaceCompactCollectionCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v64[1] = v54;
  collectionImageView3 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  topAnchor = [collectionImageView3 topAnchor];
  contentView3 = [(MKPlaceCompactCollectionCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v64[2] = v49;
  collectionImageView4 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  bottomAnchor = [collectionImageView4 bottomAnchor];
  contentView4 = [(MKPlaceCompactCollectionCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v64[3] = v44;
  imageOverlayView2 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  leadingAnchor3 = [imageOverlayView2 leadingAnchor];
  contentView5 = [(MKPlaceCompactCollectionCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v64[4] = v38;
  imageOverlayView3 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  trailingAnchor3 = [imageOverlayView3 trailingAnchor];
  contentView6 = [(MKPlaceCompactCollectionCell *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v64[5] = v33;
  overlayHeightConstraint = [(MKPlaceCompactCollectionCell *)self overlayHeightConstraint];
  v64[6] = overlayHeightConstraint;
  imageOverlayView4 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  bottomAnchor3 = [imageOverlayView4 bottomAnchor];
  contentView7 = [(MKPlaceCompactCollectionCell *)self contentView];
  bottomAnchor4 = [contentView7 bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v64[7] = v27;
  metadataStackView = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  leadingAnchor5 = [metadataStackView leadingAnchor];
  contentView8 = [(MKPlaceCompactCollectionCell *)self contentView];
  leadingAnchor6 = [contentView8 leadingAnchor];
  v22 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:12.0];
  v64[8] = v22;
  metadataStackView2 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  trailingAnchor5 = [metadataStackView2 trailingAnchor];
  contentView9 = [(MKPlaceCompactCollectionCell *)self contentView];
  trailingAnchor6 = [contentView9 trailingAnchor];
  v17 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-12.0];
  v64[9] = v17;
  metadataStackView3 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  topAnchor3 = [metadataStackView3 topAnchor];
  contentView10 = [(MKPlaceCompactCollectionCell *)self contentView];
  topAnchor4 = [contentView10 topAnchor];
  v9 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v64[10] = v9;
  metadataStackView4 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  bottomAnchor5 = [metadataStackView4 bottomAnchor];
  contentView11 = [(MKPlaceCompactCollectionCell *)self contentView];
  bottomAnchor6 = [contentView11 bottomAnchor];
  v14 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-12.0];
  v64[11] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:12];
  [v39 activateConstraints:v15];
}

- (void)setupAccessibility
{
  [(MKPlaceCompactCollectionCell *)self setAccessibilityIdentifier:@"CompactCollectionCell"];
  metadataStackView = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView setIsAccessibilityElement:1];

  v4 = *MEMORY[0x1E69DD9B8];
  metadataStackView2 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView2 setAccessibilityTraits:v4];
}

- (void)setupShadows
{
  systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
  cGColor = [systemBlackColor CGColor];
  layer = [(MKPlaceCompactCollectionCell *)self layer];
  [layer setShadowColor:cGColor];

  layer2 = [(MKPlaceCompactCollectionCell *)self layer];
  LODWORD(v7) = 1028443341;
  [layer2 setShadowOpacity:v7];

  layer3 = [(MKPlaceCompactCollectionCell *)self layer];
  [layer3 setShadowOffset:{0.0, 2.0}];

  layer4 = [(MKPlaceCompactCollectionCell *)self layer];
  [layer4 setShadowRadius:12.0];

  layer5 = [(MKPlaceCompactCollectionCell *)self layer];
  [layer5 setShadowPathIsBounds:1];
}

- (void)setupSubTitle
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setSubTitleLabel:v4];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [whiteColor colorWithAlphaComponent:0.9];
  subTitleLabel = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [subTitleLabel setTextColor:v6];

  subTitleLabel2 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [subTitleLabel2 setNumberOfLines:3];

  subTitleLabel3 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [subTitleLabel3 setAccessibilityIdentifier:@"CompactCollectionSubtitle"];

  metadataStackView = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  subTitleLabel4 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [metadataStackView addArrangedSubview:subTitleLabel4];
}

- (void)setupTitle
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setTitleLabel:v4];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  titleLabel = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [titleLabel setTextColor:whiteColor];

  titleLabel2 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [titleLabel2 setNumberOfLines:3];

  titleLabel3 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [titleLabel3 setAccessibilityIdentifier:@"CompactCollectionTitle"];

  metadataStackView = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  titleLabel4 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [metadataStackView addArrangedSubview:titleLabel4];
}

- (void)setupCompactCollectionData
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setMetadataStackView:v4];

  metadataStackView = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  metadataStackView2 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView2 setAxis:1];

  metadataStackView3 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView3 setDistribution:0];

  metadataStackView4 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView4 setAlignment:1];

  metadataStackView5 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView5 setSpacing:0.0];

  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  metadataStackView6 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [contentView addSubview:metadataStackView6];

  [(MKPlaceCompactCollectionCell *)self setupTitle];

  [(MKPlaceCompactCollectionCell *)self setupSubTitle];
}

- (void)setupCompactCollectionImageOverlay
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = [MKPlaceCompactCollectionOverlayView alloc];
  v4 = [(MKPlaceCompactCollectionOverlayView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKPlaceCompactCollectionCell *)self setImageOverlayView:v4];

  imageOverlayView = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  [imageOverlayView setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  imageOverlayView2 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  [imageOverlayView2 setBackgroundColor:clearColor];

  imageOverlayView3 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  gradientLayer = [imageOverlayView3 gradientLayer];
  [gradientLayer setStartPoint:{0.5, 0.0}];

  imageOverlayView4 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  gradientLayer2 = [imageOverlayView4 gradientLayer];
  [gradientLayer2 setEndPoint:{0.5, 1.0}];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v13 = [blackColor colorWithAlphaComponent:0.0];

  v21[0] = [v13 CGColor];
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  v15 = [blackColor2 colorWithAlphaComponent:0.38];
  v21[1] = [v15 CGColor];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  imageOverlayView5 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  gradientLayer3 = [imageOverlayView5 gradientLayer];
  [gradientLayer3 setColors:v16];

  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  imageOverlayView6 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  [contentView addSubview:imageOverlayView6];
}

- (void)setupCompactCollectionImage
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setCollectionImageView:v4];

  collectionImageView = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [collectionImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionImageView2 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [collectionImageView2 setAccessibilityIgnoresInvertColors:1];

  collectionImageView3 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [collectionImageView3 setAccessibilityIdentifier:@"CompactCollectionImageView"];

  collectionImageView4 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [collectionImageView4 setContentMode:2];

  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  collectionImageView5 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [contentView addSubview:collectionImageView5];
}

- (void)setupSubviews
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(MKPlaceCompactCollectionCell *)self setBackgroundColor:clearColor];

  [(MKPlaceCompactCollectionCell *)self setupCompactCollectionImage];
  [(MKPlaceCompactCollectionCell *)self setupCompactCollectionImageOverlay];

  [(MKPlaceCompactCollectionCell *)self setupCompactCollectionData];
}

- (void)setUpCellUsingModel:(id)model
{
  modelCopy = model;
  [(MKPlaceCompactCollectionCell *)self setItem:modelCopy];
  [(MKPlaceCompactCollectionCell *)self setTextMetadata];
  backgroundColor = [modelCopy backgroundColor];
  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  [contentView setBackgroundColor:backgroundColor];

  v7 = MEMORY[0x1E696AEC0];
  titleLabel = [(MKPlaceCompactCollectionCell *)self titleLabel];
  text = [titleLabel text];
  v10 = text;
  if (text)
  {
    v11 = text;
  }

  else
  {
    v11 = &stru_1F15B23C0;
  }

  subTitleLabel = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  text2 = [subTitleLabel text];
  v14 = text2;
  if (text2)
  {
    v15 = text2;
  }

  else
  {
    v15 = &stru_1F15B23C0;
  }

  v16 = [v7 stringWithFormat:@"%@ %@", v11, v15];
  metadataStackView = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView setAccessibilityLabel:v16];

  if ([modelCopy useBorderHighlight])
  {
    [(MKPlaceCompactCollectionCell *)self setupBorderHighlight];
  }

  if ([modelCopy isWorldwide])
  {
    overlayHeightConstraint = [(MKPlaceCompactCollectionCell *)self overlayHeightConstraint];
    [overlayHeightConstraint setConstant:40.0];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(MKPlaceCompactCollectionCell *)self setUpdateIdentifier:uUID];
  objc_initWeak(&location, self);
  item = [(MKPlaceCompactCollectionCell *)self item];
  contentView2 = [(MKPlaceCompactCollectionCell *)self contentView];
  [contentView2 frame];
  v23 = v22;
  v25 = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__MKPlaceCompactCollectionCell_setUpCellUsingModel___block_invoke;
  v27[3] = &unk_1E76CD2D0;
  objc_copyWeak(&v29, &location);
  v26 = uUID;
  v28 = v26;
  [item compactCollectionImageForSize:v27 onCompletion:{v23, v25}];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __52__MKPlaceCompactCollectionCell_setUpCellUsingModel___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v10 = [WeakRetained updateIdentifier];
  if (([v10 isEqual:*(a1 + 32)] & 1) == 0)
  {

    goto LABEL_10;
  }

  v11 = [v9 item];

  if (!v11)
  {
LABEL_10:
    v16 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_INFO, "Cell doesn't exist OR identifier mistach", buf, 2u);
    }

    goto LABEL_13;
  }

  if (v7 && !a3)
  {
    v12 = MKGetCuratedCollectionsLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (a4)
    {
      v14 = 0.0;
      if (v13)
      {
        *buf = 0;
        v15 = "Received cached image. Displaying without animation.";
LABEL_16:
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_INFO, v15, buf, 2u);
      }
    }

    else
    {
      v14 = 0.100000001;
      if (v13)
      {
        *buf = 0;
        v15 = "Received non-cached image. Displaying with animation.";
        goto LABEL_16;
      }
    }

    v17 = MEMORY[0x1E69DD250];
    v18 = [v9 collectionImageView];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__MKPlaceCompactCollectionCell_setUpCellUsingModel___block_invoke_17;
    v19[3] = &unk_1E76CD810;
    v19[4] = v9;
    v20 = v7;
    [v17 transitionWithView:v18 duration:5242882 options:v19 animations:0 completion:v14];
  }

LABEL_13:
}

void __52__MKPlaceCompactCollectionCell_setUpCellUsingModel___block_invoke_17(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) collectionImageView];
  [v2 setImage:v1];
}

- (void)setTextMetadata
{
  item = [(MKPlaceCompactCollectionCell *)self item];
  title = [item title];
  titleLabel = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [titleLabel setAttributedText:title];

  item2 = [(MKPlaceCompactCollectionCell *)self item];
  traitCollection = [(MKPlaceCompactCollectionCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v9 = [item2 shouldShowSubtitleForCategory:preferredContentSizeCategory];

  if (v9)
  {
    item3 = [(MKPlaceCompactCollectionCell *)self item];
    subTitle = [item3 subTitle];
    subTitleLabel = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
    [subTitleLabel setAttributedText:subTitle];
  }

  subTitleLabel2 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [subTitleLabel2 setHidden:v9 ^ 1u];
}

- (void)prepareForReuse
{
  v13.receiver = self;
  v13.super_class = MKPlaceCompactCollectionCell;
  [(MKPlaceCompactCollectionCell *)&v13 prepareForReuse];
  titleLabel = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [titleLabel setAttributedText:0];

  subTitleLabel = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [subTitleLabel setAttributedText:0];

  collectionImageView = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [collectionImageView setImage:0];

  overlayHeightConstraint = [(MKPlaceCompactCollectionCell *)self overlayHeightConstraint];
  [overlayHeightConstraint setConstant:60.0];

  contentView = [(MKPlaceCompactCollectionCell *)self contentView];
  [contentView setBackgroundColor:0];

  contentView2 = [(MKPlaceCompactCollectionCell *)self contentView];
  layer = [contentView2 layer];
  [layer setBorderWidth:0.0];

  contentView3 = [(MKPlaceCompactCollectionCell *)self contentView];
  layer2 = [contentView3 layer];
  [layer2 setBorderColor:0];

  metadataStackView = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [metadataStackView setAccessibilityLabel:0];

  [(MKPlaceCompactCollectionCell *)self setItem:0];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  traitCollection = [(MKPlaceCompactCollectionCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    item = [(MKPlaceCompactCollectionCell *)self item];
    traitCollection2 = [(MKPlaceCompactCollectionCell *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection2 preferredContentSizeCategory];
    [item contentCategorySizeDidChange:preferredContentSizeCategory3];

    [(MKPlaceCompactCollectionCell *)self setTextMetadata];
  }
}

- (BOOL)canBecomeFirstResponder
{
  traitCollection = [(MKPlaceCompactCollectionCell *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 5;

  return v3;
}

- (MKPlaceCompactCollectionCell)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKPlaceCompactCollectionCell;
  v3 = [(MKPlaceCompactCollectionCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKPlaceCompactCollectionCell *)v3 setupSubviews];
    [(MKPlaceCompactCollectionCell *)v4 setupCornerRadius];
    [(MKPlaceCompactCollectionCell *)v4 setupConstraints];
    [(MKPlaceCompactCollectionCell *)v4 setupShadows];
    [(MKPlaceCompactCollectionCell *)v4 setupAccessibility];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(MKPlaceCompactCollectionCell *)v4 registerForTraitChanges:v5 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v4;
}

@end