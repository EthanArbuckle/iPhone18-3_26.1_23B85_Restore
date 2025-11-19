@interface MKPlaceCompactCollectionCell
- (BOOL)canBecomeFirstResponder;
- (MKPlaceCompactCollectionCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setTextMetadata;
- (void)setUpCellUsingModel:(id)a3;
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
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation MKPlaceCompactCollectionCell

- (void)setupBorderHighlight
{
  v3 = [(MKPlaceCompactCollectionCell *)self contentView];
  v4 = [v3 layer];
  [v4 setBorderWidth:3.0];

  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  v5 = v9;
  v6 = [v9 CGColor];
  v7 = [(MKPlaceCompactCollectionCell *)self contentView];
  v8 = [v7 layer];
  [v8 setBorderColor:v6];
}

- (void)setupCornerRadius
{
  v3 = [(MKPlaceCompactCollectionCell *)self contentView];
  v4 = [v3 layer];
  [v4 setCornerRadius:10.0];

  v6 = [(MKPlaceCompactCollectionCell *)self contentView];
  v5 = [v6 layer];
  [v5 setMasksToBounds:1];
}

- (void)setupConstraints
{
  v64[12] = *MEMORY[0x1E69E9840];
  v3 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:60.0];
  [(MKPlaceCompactCollectionCell *)self setOverlayHeightConstraint:v5];

  v39 = MEMORY[0x1E696ACD8];
  v63 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  v61 = [v63 leadingAnchor];
  v62 = [(MKPlaceCompactCollectionCell *)self contentView];
  v60 = [v62 leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v64[0] = v59;
  v58 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  v56 = [v58 trailingAnchor];
  v57 = [(MKPlaceCompactCollectionCell *)self contentView];
  v55 = [v57 trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v64[1] = v54;
  v53 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  v51 = [v53 topAnchor];
  v52 = [(MKPlaceCompactCollectionCell *)self contentView];
  v50 = [v52 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v64[2] = v49;
  v48 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  v46 = [v48 bottomAnchor];
  v47 = [(MKPlaceCompactCollectionCell *)self contentView];
  v45 = [v47 bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v64[3] = v44;
  v43 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  v41 = [v43 leadingAnchor];
  v42 = [(MKPlaceCompactCollectionCell *)self contentView];
  v40 = [v42 leadingAnchor];
  v38 = [v41 constraintEqualToAnchor:v40];
  v64[4] = v38;
  v37 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  v35 = [v37 trailingAnchor];
  v36 = [(MKPlaceCompactCollectionCell *)self contentView];
  v34 = [v36 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v64[5] = v33;
  v32 = [(MKPlaceCompactCollectionCell *)self overlayHeightConstraint];
  v64[6] = v32;
  v31 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  v29 = [v31 bottomAnchor];
  v30 = [(MKPlaceCompactCollectionCell *)self contentView];
  v28 = [v30 bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v64[7] = v27;
  v26 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  v24 = [v26 leadingAnchor];
  v25 = [(MKPlaceCompactCollectionCell *)self contentView];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:12.0];
  v64[8] = v22;
  v21 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  v19 = [v21 trailingAnchor];
  v20 = [(MKPlaceCompactCollectionCell *)self contentView];
  v18 = [v20 trailingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:-12.0];
  v64[9] = v17;
  v16 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  v6 = [v16 topAnchor];
  v7 = [(MKPlaceCompactCollectionCell *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintGreaterThanOrEqualToAnchor:v8];
  v64[10] = v9;
  v10 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  v11 = [v10 bottomAnchor];
  v12 = [(MKPlaceCompactCollectionCell *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-12.0];
  v64[11] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:12];
  [v39 activateConstraints:v15];
}

- (void)setupAccessibility
{
  [(MKPlaceCompactCollectionCell *)self setAccessibilityIdentifier:@"CompactCollectionCell"];
  v3 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v3 setIsAccessibilityElement:1];

  v4 = *MEMORY[0x1E69DD9B8];
  v5 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v5 setAccessibilityTraits:v4];
}

- (void)setupShadows
{
  v3 = [MEMORY[0x1E69DC888] systemBlackColor];
  v4 = [v3 CGColor];
  v5 = [(MKPlaceCompactCollectionCell *)self layer];
  [v5 setShadowColor:v4];

  v6 = [(MKPlaceCompactCollectionCell *)self layer];
  LODWORD(v7) = 1028443341;
  [v6 setShadowOpacity:v7];

  v8 = [(MKPlaceCompactCollectionCell *)self layer];
  [v8 setShadowOffset:{0.0, 2.0}];

  v9 = [(MKPlaceCompactCollectionCell *)self layer];
  [v9 setShadowRadius:12.0];

  v10 = [(MKPlaceCompactCollectionCell *)self layer];
  [v10 setShadowPathIsBounds:1];
}

- (void)setupSubTitle
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setSubTitleLabel:v4];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.9];
  v7 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [v7 setTextColor:v6];

  v8 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [v8 setNumberOfLines:3];

  v9 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [v9 setAccessibilityIdentifier:@"CompactCollectionSubtitle"];

  v11 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  v10 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [v11 addArrangedSubview:v10];
}

- (void)setupTitle
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setTitleLabel:v4];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [v6 setTextColor:v5];

  v7 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [v7 setNumberOfLines:3];

  v8 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [v8 setAccessibilityIdentifier:@"CompactCollectionTitle"];

  v10 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  v9 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [v10 addArrangedSubview:v9];
}

- (void)setupCompactCollectionData
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setMetadataStackView:v4];

  v5 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v6 setAxis:1];

  v7 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v7 setDistribution:0];

  v8 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v8 setAlignment:1];

  v9 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v9 setSpacing:0.0];

  v10 = [(MKPlaceCompactCollectionCell *)self contentView];
  v11 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v10 addSubview:v11];

  [(MKPlaceCompactCollectionCell *)self setupTitle];

  [(MKPlaceCompactCollectionCell *)self setupSubTitle];
}

- (void)setupCompactCollectionImageOverlay
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = [MKPlaceCompactCollectionOverlayView alloc];
  v4 = [(MKPlaceCompactCollectionOverlayView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKPlaceCompactCollectionCell *)self setImageOverlayView:v4];

  v5 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  v7 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  [v7 setBackgroundColor:v6];

  v8 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  v9 = [v8 gradientLayer];
  [v9 setStartPoint:{0.5, 0.0}];

  v10 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  v11 = [v10 gradientLayer];
  [v11 setEndPoint:{0.5, 1.0}];

  v12 = [MEMORY[0x1E69DC888] blackColor];
  v13 = [v12 colorWithAlphaComponent:0.0];

  v21[0] = [v13 CGColor];
  v14 = [MEMORY[0x1E69DC888] blackColor];
  v15 = [v14 colorWithAlphaComponent:0.38];
  v21[1] = [v15 CGColor];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  v18 = [v17 gradientLayer];
  [v18 setColors:v16];

  v19 = [(MKPlaceCompactCollectionCell *)self contentView];
  v20 = [(MKPlaceCompactCollectionCell *)self imageOverlayView];
  [v19 addSubview:v20];
}

- (void)setupCompactCollectionImage
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCompactCollectionCell *)self setCollectionImageView:v4];

  v5 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [v6 setAccessibilityIgnoresInvertColors:1];

  v7 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [v7 setAccessibilityIdentifier:@"CompactCollectionImageView"];

  v8 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [v8 setContentMode:2];

  v10 = [(MKPlaceCompactCollectionCell *)self contentView];
  v9 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [v10 addSubview:v9];
}

- (void)setupSubviews
{
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(MKPlaceCompactCollectionCell *)self setBackgroundColor:v3];

  [(MKPlaceCompactCollectionCell *)self setupCompactCollectionImage];
  [(MKPlaceCompactCollectionCell *)self setupCompactCollectionImageOverlay];

  [(MKPlaceCompactCollectionCell *)self setupCompactCollectionData];
}

- (void)setUpCellUsingModel:(id)a3
{
  v4 = a3;
  [(MKPlaceCompactCollectionCell *)self setItem:v4];
  [(MKPlaceCompactCollectionCell *)self setTextMetadata];
  v5 = [v4 backgroundColor];
  v6 = [(MKPlaceCompactCollectionCell *)self contentView];
  [v6 setBackgroundColor:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  v9 = [v8 text];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F15B23C0;
  }

  v12 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  v13 = [v12 text];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F15B23C0;
  }

  v16 = [v7 stringWithFormat:@"%@ %@", v11, v15];
  v17 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v17 setAccessibilityLabel:v16];

  if ([v4 useBorderHighlight])
  {
    [(MKPlaceCompactCollectionCell *)self setupBorderHighlight];
  }

  if ([v4 isWorldwide])
  {
    v18 = [(MKPlaceCompactCollectionCell *)self overlayHeightConstraint];
    [v18 setConstant:40.0];
  }

  v19 = [MEMORY[0x1E696AFB0] UUID];
  [(MKPlaceCompactCollectionCell *)self setUpdateIdentifier:v19];
  objc_initWeak(&location, self);
  v20 = [(MKPlaceCompactCollectionCell *)self item];
  v21 = [(MKPlaceCompactCollectionCell *)self contentView];
  [v21 frame];
  v23 = v22;
  v25 = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__MKPlaceCompactCollectionCell_setUpCellUsingModel___block_invoke;
  v27[3] = &unk_1E76CD2D0;
  objc_copyWeak(&v29, &location);
  v26 = v19;
  v28 = v26;
  [v20 compactCollectionImageForSize:v27 onCompletion:{v23, v25}];

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
  v3 = [(MKPlaceCompactCollectionCell *)self item];
  v4 = [v3 title];
  v5 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [v5 setAttributedText:v4];

  v6 = [(MKPlaceCompactCollectionCell *)self item];
  v7 = [(MKPlaceCompactCollectionCell *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = [v6 shouldShowSubtitleForCategory:v8];

  if (v9)
  {
    v10 = [(MKPlaceCompactCollectionCell *)self item];
    v11 = [v10 subTitle];
    v12 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
    [v12 setAttributedText:v11];
  }

  v13 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [v13 setHidden:v9 ^ 1u];
}

- (void)prepareForReuse
{
  v13.receiver = self;
  v13.super_class = MKPlaceCompactCollectionCell;
  [(MKPlaceCompactCollectionCell *)&v13 prepareForReuse];
  v3 = [(MKPlaceCompactCollectionCell *)self titleLabel];
  [v3 setAttributedText:0];

  v4 = [(MKPlaceCompactCollectionCell *)self subTitleLabel];
  [v4 setAttributedText:0];

  v5 = [(MKPlaceCompactCollectionCell *)self collectionImageView];
  [v5 setImage:0];

  v6 = [(MKPlaceCompactCollectionCell *)self overlayHeightConstraint];
  [v6 setConstant:60.0];

  v7 = [(MKPlaceCompactCollectionCell *)self contentView];
  [v7 setBackgroundColor:0];

  v8 = [(MKPlaceCompactCollectionCell *)self contentView];
  v9 = [v8 layer];
  [v9 setBorderWidth:0.0];

  v10 = [(MKPlaceCompactCollectionCell *)self contentView];
  v11 = [v10 layer];
  [v11 setBorderColor:0];

  v12 = [(MKPlaceCompactCollectionCell *)self metadataStackView];
  [v12 setAccessibilityLabel:0];

  [(MKPlaceCompactCollectionCell *)self setItem:0];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 preferredContentSizeCategory];
  v6 = [(MKPlaceCompactCollectionCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    v8 = [(MKPlaceCompactCollectionCell *)self item];
    v9 = [(MKPlaceCompactCollectionCell *)self traitCollection];
    v10 = [v9 preferredContentSizeCategory];
    [v8 contentCategorySizeDidChange:v10];

    [(MKPlaceCompactCollectionCell *)self setTextMetadata];
  }
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(MKPlaceCompactCollectionCell *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 5;

  return v3;
}

- (MKPlaceCompactCollectionCell)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKPlaceCompactCollectionCell;
  v3 = [(MKPlaceCompactCollectionCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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